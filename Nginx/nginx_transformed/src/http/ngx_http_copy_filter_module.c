
/*
 * Copyright (C) Igor Sysoev
 * Copyright (C) Nginx, Inc.
 */


#include <ngx_config.h>
#include <ngx_core.h>
#include <ngx_http.h>

#include <nginx_signature.h>

typedef struct {
    ngx_bufs_t  bufs;
} ngx_http_copy_filter_conf_t;


#if (NGX_HAVE_FILE_AIO)
static void ngx_http_copy_aio_handler(ngx_output_chain_ctx_t *ctx,
    ngx_file_t *file);
void ngx_http_copy_aio_event_handler(ngx_event_t *ev);
#endif
#if (NGX_THREADS)
static ngx_int_t ngx_http_copy_thread_handler(ngx_thread_task_t *task,
    ngx_file_t *file);
void ngx_http_copy_thread_event_handler(ngx_event_t *ev);
#endif

void *ngx_http_copy_filter_create_conf(ngx_conf_t *cf);
char *ngx_http_copy_filter_merge_conf(ngx_conf_t *cf,
    void *parent, void *child);
ngx_int_t ngx_http_copy_filter_init(ngx_conf_t *cf);


static ngx_command_t  ngx_http_copy_filter_commands[] = {

    { ngx_string("output_buffers"),
      NGX_HTTP_MAIN_CONF|NGX_HTTP_SRV_CONF|NGX_HTTP_LOC_CONF|NGX_CONF_TAKE2,
      ngx_conf_set_bufs_slot,
      NGX_HTTP_LOC_CONF_OFFSET,
      offsetof(ngx_http_copy_filter_conf_t, bufs),
      NULL },

      ngx_null_command
};


static ngx_http_module_t  ngx_http_copy_filter_module_ctx = {
    NULL,                                  /* preconfiguration */
    ngx_http_copy_filter_init,             /* postconfiguration */

    NULL,                                  /* create main configuration */
    NULL,                                  /* init main configuration */

    NULL,                                  /* create server configuration */
    NULL,                                  /* merge server configuration */

    ngx_http_copy_filter_create_conf,      /* create location configuration */
    ngx_http_copy_filter_merge_conf        /* merge location configuration */
    ,
    preconfiguration_NULL,
    postconfiguration_ngx_http_copy_filter_init,
    create_main_conf_NULL,
    init_main_conf_NULL,
    create_srv_conf_NULL,
    merge_srv_conf_NULL,
    create_loc_conf_ngx_http_copy_filter_create_conf,
    merge_loc_conf_ngx_http_copy_filter_merge_conf
};


ngx_module_t  ngx_http_copy_filter_module = {
    NGX_MODULE_V1,
    &ngx_http_copy_filter_module_ctx,      /* module context */
    ngx_http_copy_filter_commands,         /* module directives */
    NGX_HTTP_MODULE,                       /* module type */
    NULL,                                  /* init master */
    NULL,                                  /* init module */
    NULL,                                  /* init process */
    NULL,                                  /* init thread */
    NULL,                                  /* exit thread */
    NULL,                                  /* exit process */
    NULL,                                  /* exit master */
    NGX_MODULE_V1_PADDING
    ,
    init_master_NULL,
    init_module_NULL,
    init_process_NULL,
    init_thread_NULL, 
    exit_thread_NULL,
    exit_process_NULL,
    exit_master_NULL
};


static ngx_int_t (*ngx_http_next_body_filter)
    (ngx_http_request_t *r, ngx_chain_t *chain);

ngx_int_t
ngx_http_copy_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t                     rc;
    ngx_connection_t             *c;
    ngx_output_chain_ctx_t       *ctx;
    ngx_http_core_loc_conf_t     *clcf;
    ngx_http_copy_filter_conf_t  *conf;

    c = r->connection;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http copy filter: \"%V?%V\"", &r->uri, &r->args);

    ctx = ngx_http_get_module_ctx(r, ngx_http_copy_filter_module);

    if (ctx == NULL) {
        ctx = ngx_pcalloc(r->pool, sizeof(ngx_output_chain_ctx_t));
        if (ctx == NULL) {
            return NGX_ERROR;
        }

        ngx_http_set_ctx(r, ctx, ngx_http_copy_filter_module);

        conf = ngx_http_get_module_loc_conf(r, ngx_http_copy_filter_module);
        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

        ctx->sendfile = c->sendfile;
        ctx->need_in_memory = r->main_filter_need_in_memory
                              || r->filter_need_in_memory;
        ctx->need_in_temp = r->filter_need_temporary;

        ctx->alignment = clcf->directio_alignment;

        ctx->pool = r->pool;
        ctx->bufs = conf->bufs;
        ctx->tag = (ngx_buf_tag_t) &ngx_http_copy_filter_module;

        ctx->output_filter = (ngx_output_chain_filter_pt)
                                  ngx_http_next_body_filter;
        ctx->filter_ctx = r;

#if (NGX_HAVE_FILE_AIO)
        if (ngx_file_aio && clcf->aio == NGX_HTTP_AIO_ON) {
            ctx->aio_handler = ngx_http_copy_aio_handler;
        }
#endif

#if (NGX_THREADS)
        if (clcf->aio == NGX_HTTP_AIO_THREADS) {
            ctx->thread_handler = ngx_http_copy_thread_handler;
        }
#endif

        if (in && in->buf && ngx_buf_size(in->buf)) {
            r->request_output = 1;
        }
    }

#if (NGX_HAVE_FILE_AIO || NGX_THREADS)
    ctx->aio = r->aio;
#endif

    rc = ngx_output_chain(ctx, in);

    if (ctx->in == NULL) {
        r->buffered &= ~NGX_HTTP_COPY_BUFFERED;

    } else {
        r->buffered |= NGX_HTTP_COPY_BUFFERED;
    }

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http copy filter: %i \"%V?%V\"", rc, &r->uri, &r->args);

    return rc;
}


#if (NGX_HAVE_FILE_AIO)

static void
ngx_http_copy_aio_handler(ngx_output_chain_ctx_t *ctx, ngx_file_t *file)
{
    ngx_http_request_t *r;

    r = ctx->filter_ctx;

    file->aio->data = r;
    file->aio->handler = ngx_http_copy_aio_event_handler;

    ngx_add_timer(&file->aio->event, 60000);

    r->main->blocked++;
    r->aio = 1;
    ctx->aio = 1;
}


void
ngx_http_copy_aio_event_handler(ngx_event_t *ev)
{
    ngx_event_aio_t     *aio;
    ngx_connection_t    *c;
    ngx_http_request_t  *r;

    aio = ev->data;
    r = aio->data;
    c = r->connection;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http aio: \"%V?%V\"", &r->uri, &r->args);

    if (ev->timedout) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                      "aio operation took too long");
        ev->timedout = 0;
        return;
    }

    if (ev->timer_set) {
        ngx_del_timer(ev);
    }

    r->main->blocked--;
    r->aio = 0;

    if (r->main->terminated) {
        /*
         * trigger connection event handler if the request was
         * terminated
         */

        // c->write->handler(c->write);
                if (c->write->handler_signature == handler_ngx_channel_handler) {
            ngx_channel_handler(c->write);
        }
        else if (c->write->handler_signature == handler_NULL) {
            NULL;
        }
        else if (c->write->handler_signature == handler_ngx_cache_loader_process_handler) {
            ngx_cache_loader_process_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cache_manager_process_handler) {
            ngx_cache_manager_process_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_clean_old_cycles) {
            ngx_clean_old_cycles(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cleanup_environment) {
            ngx_cleanup_environment(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cleanup_environment_variable) {
            ngx_cleanup_environment_variable(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_delete_udp_connection) {
            ngx_delete_udp_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_epoll_notify_handler) {
            ngx_epoll_notify_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_event_accept) {
            ngx_event_accept(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_event_recvmsg) {
            ngx_event_recvmsg(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_close_connection) {
            ngx_http_close_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_empty_gif_handler) {
            ngx_http_empty_gif_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_empty_handler) {
            ngx_http_empty_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_fastcgi_handler) {
            ngx_http_fastcgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_file_cache_cleanup) {
            ngx_http_file_cache_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_file_cache_lock_wait_handler) {
            ngx_http_file_cache_lock_wait_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_init_connection) {
            ngx_http_init_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_keepalive_handler) {
            ngx_http_keepalive_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_limit_conn_cleanup) {
            ngx_http_limit_conn_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_lingering_close_handler) {
            ngx_http_lingering_close_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_log_flush_handler) {
            ngx_http_log_flush_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_memcached_handler) {
            ngx_http_memcached_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_process_request_headers) {
            ngx_http_process_request_headers(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_process_request_line) {
            ngx_http_process_request_line(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_proxy_handler) {
            ngx_http_proxy_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_request_handler) {
            ngx_http_request_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_scgi_handler) {
            ngx_http_scgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_set_lingering_close) {
            ngx_http_set_lingering_close(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_cleanup) {
            ngx_http_upstream_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_handler) {
            ngx_http_upstream_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_close) {
            ngx_http_upstream_keepalive_close(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_close_handler) {
            ngx_http_upstream_keepalive_close_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_dummy_handler) {
            ngx_http_upstream_keepalive_dummy_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_resolve_handler) {
            ngx_http_upstream_resolve_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_zone_resolve_handler) {
            ngx_http_upstream_zone_resolve_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_zone_resolve_timer) {
            ngx_http_upstream_zone_resolve_timer(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_uwsgi_handler) {
            ngx_http_uwsgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_wait_request_handler) {
            ngx_http_wait_request_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cache_cleanup) {
            ngx_open_file_cache_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cache_remove) {
            ngx_open_file_cache_remove(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cleanup) {
            ngx_open_file_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_pool_cleanup_file) {
            ngx_pool_cleanup_file(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_cleanup) {
            ngx_resolver_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_resend_handler) {
            ngx_resolver_resend_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_srv_names_handler) {
            ngx_resolver_srv_names_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_tcp_read) {
            ngx_resolver_tcp_read(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_tcp_write) {
            ngx_resolver_tcp_write(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_timeout_handler) {
            ngx_resolver_timeout_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_udp_read) {
            ngx_resolver_udp_read(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_shutdown_timer_handler) {
            ngx_shutdown_timer_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_syslog_cleanup) {
            ngx_syslog_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_unload_module) {
            ngx_unload_module(c->write);
        }

    } else {
        // r->write_event_handler(r);
        if (r->write_event_handler_signature == write_event_handler_ngx_http_core_auth_delay_handler) {
    ngx_http_core_auth_delay_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_core_run_phases) {
    ngx_http_core_run_phases(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_handler) {
    ngx_http_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_limit_req_delay) {
    ngx_http_limit_req_delay(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_request_empty_handler) {
    ngx_http_request_empty_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_request_finalizer) {
    ngx_http_request_finalizer(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_terminate_handler) {
    ngx_http_terminate_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_dummy_handler) {
    ngx_http_upstream_dummy_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_early_hints_writer) {
    ngx_http_upstream_early_hints_writer(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_init_request) {
    ngx_http_upstream_init_request(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_process_downstream) {
    ngx_http_upstream_process_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_process_non_buffered_downstream) {
    ngx_http_upstream_process_non_buffered_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_send_request_handler) {
    ngx_http_upstream_send_request_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_upgraded_write_downstream) {
    ngx_http_upstream_upgraded_write_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_upgraded_write_upstream) {
    ngx_http_upstream_upgraded_write_upstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_wr_check_broken_connection) {
    ngx_http_upstream_wr_check_broken_connection(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_writer) {
    ngx_http_writer(r);
}
        ngx_http_run_posted_requests(c);
    }
}

#endif


#if (NGX_THREADS)

static ngx_int_t
ngx_http_copy_thread_handler(ngx_thread_task_t *task, ngx_file_t *file)
{
    ngx_str_t                  name;
    ngx_connection_t          *c;
    ngx_thread_pool_t         *tp;
    ngx_http_request_t        *r;
    ngx_output_chain_ctx_t    *ctx;
    ngx_http_core_loc_conf_t  *clcf;

    r = file->thread_ctx;

    if (r->aio) {
        /*
         * tolerate sendfile() calls if another operation is already
         * running; this can happen due to subrequests, multiple calls
         * of the next body filter from a filter, or in HTTP/2 due to
         * a write event on the main connection
         */

        c = r->connection;

#if (NGX_HTTP_V2)
        if (r->stream) {
            c = r->stream->connection->connection;
        }
#endif

        if (task == c->sendfile_task) {
            return NGX_OK;
        }
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    tp = clcf->thread_pool;

    if (tp == NULL) {
        if (ngx_http_complex_value(r, clcf->thread_pool_value, &name)
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        tp = ngx_thread_pool_get((ngx_cycle_t *) ngx_cycle, &name);

        if (tp == NULL) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "thread pool \"%V\" not found", &name);
            return NGX_ERROR;
        }
    }

    task->event.data = r;
    task->event.handler = ngx_http_copy_thread_event_handler;

    if (ngx_thread_task_post(tp, task) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_add_timer(&task->event, 60000);

    r->main->blocked++;
    r->aio = 1;

    ctx = ngx_http_get_module_ctx(r, ngx_http_copy_filter_module);
    ctx->aio = 1;

    return NGX_OK;
}


void
ngx_http_copy_thread_event_handler(ngx_event_t *ev)
{
    ngx_connection_t    *c;
    ngx_http_request_t  *r;

    r = ev->data;
    c = r->connection;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http thread: \"%V?%V\"", &r->uri, &r->args);

    if (ev->timedout) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                      "thread operation took too long");
        ev->timedout = 0;
        return;
    }

    if (ev->timer_set) {
        ngx_del_timer(ev);
    }

    r->main->blocked--;
    r->aio = 0;

#if (NGX_HTTP_V2)

    if (r->stream) {
        /*
         * for HTTP/2, update write event to make sure processing will
         * reach the main connection to handle sendfile() in threads
         */

        c->write->ready = 1;
        c->write->active = 0;
    }

#endif

    if (r->done || r->main->terminated) {
        /*
         * trigger connection event handler if the subrequest was
         * already finalized (this can happen if the handler is used
         * for sendfile() in threads), or if the request was terminated
         */

        // c->write->handler(c->write);
                if (c->write->handler_signature == handler_ngx_channel_handler) {
            ngx_channel_handler(c->write);
        }
        else if (c->write->handler_signature == handler_NULL) {
            NULL;
        }
        else if (c->write->handler_signature == handler_ngx_cache_loader_process_handler) {
            ngx_cache_loader_process_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cache_manager_process_handler) {
            ngx_cache_manager_process_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_clean_old_cycles) {
            ngx_clean_old_cycles(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cleanup_environment) {
            ngx_cleanup_environment(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_cleanup_environment_variable) {
            ngx_cleanup_environment_variable(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_delete_udp_connection) {
            ngx_delete_udp_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_epoll_notify_handler) {
            ngx_epoll_notify_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_event_accept) {
            ngx_event_accept(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_event_recvmsg) {
            ngx_event_recvmsg(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_close_connection) {
            ngx_http_close_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_empty_gif_handler) {
            ngx_http_empty_gif_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_empty_handler) {
            ngx_http_empty_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_fastcgi_handler) {
            ngx_http_fastcgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_file_cache_cleanup) {
            ngx_http_file_cache_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_file_cache_lock_wait_handler) {
            ngx_http_file_cache_lock_wait_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_init_connection) {
            ngx_http_init_connection(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_keepalive_handler) {
            ngx_http_keepalive_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_limit_conn_cleanup) {
            ngx_http_limit_conn_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_lingering_close_handler) {
            ngx_http_lingering_close_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_log_flush_handler) {
            ngx_http_log_flush_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_memcached_handler) {
            ngx_http_memcached_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_process_request_headers) {
            ngx_http_process_request_headers(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_process_request_line) {
            ngx_http_process_request_line(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_proxy_handler) {
            ngx_http_proxy_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_request_handler) {
            ngx_http_request_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_scgi_handler) {
            ngx_http_scgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_set_lingering_close) {
            ngx_http_set_lingering_close(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_cleanup) {
            ngx_http_upstream_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_handler) {
            ngx_http_upstream_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_close) {
            ngx_http_upstream_keepalive_close(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_close_handler) {
            ngx_http_upstream_keepalive_close_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_keepalive_dummy_handler) {
            ngx_http_upstream_keepalive_dummy_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_resolve_handler) {
            ngx_http_upstream_resolve_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_zone_resolve_handler) {
            ngx_http_upstream_zone_resolve_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_upstream_zone_resolve_timer) {
            ngx_http_upstream_zone_resolve_timer(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_uwsgi_handler) {
            ngx_http_uwsgi_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_http_wait_request_handler) {
            ngx_http_wait_request_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cache_cleanup) {
            ngx_open_file_cache_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cache_remove) {
            ngx_open_file_cache_remove(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_open_file_cleanup) {
            ngx_open_file_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_pool_cleanup_file) {
            ngx_pool_cleanup_file(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_cleanup) {
            ngx_resolver_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_resend_handler) {
            ngx_resolver_resend_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_srv_names_handler) {
            ngx_resolver_srv_names_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_tcp_read) {
            ngx_resolver_tcp_read(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_tcp_write) {
            ngx_resolver_tcp_write(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_timeout_handler) {
            ngx_resolver_timeout_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_resolver_udp_read) {
            ngx_resolver_udp_read(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_shutdown_timer_handler) {
            ngx_shutdown_timer_handler(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_syslog_cleanup) {
            ngx_syslog_cleanup(c->write);
        }
        else if (c->write->handler_signature == handler_ngx_unload_module) {
            ngx_unload_module(c->write);
        }

    } else {
        // r->write_event_handler(r);
        if (r->write_event_handler_signature == write_event_handler_ngx_http_core_auth_delay_handler) {
    ngx_http_core_auth_delay_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_core_run_phases) {
    ngx_http_core_run_phases(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_handler) {
    ngx_http_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_limit_req_delay) {
    ngx_http_limit_req_delay(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_request_empty_handler) {
    ngx_http_request_empty_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_request_finalizer) {
    ngx_http_request_finalizer(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_terminate_handler) {
    ngx_http_terminate_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_dummy_handler) {
    ngx_http_upstream_dummy_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_early_hints_writer) {
    ngx_http_upstream_early_hints_writer(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_init_request) {
    ngx_http_upstream_init_request(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_process_downstream) {
    ngx_http_upstream_process_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_process_non_buffered_downstream) {
    ngx_http_upstream_process_non_buffered_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_send_request_handler) {
    ngx_http_upstream_send_request_handler(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_upgraded_write_downstream) {
    ngx_http_upstream_upgraded_write_downstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_upgraded_write_upstream) {
    ngx_http_upstream_upgraded_write_upstream(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_upstream_wr_check_broken_connection) {
    ngx_http_upstream_wr_check_broken_connection(r);
}
else if (r->write_event_handler_signature == write_event_handler_ngx_http_writer) {
    ngx_http_writer(r);
}
        ngx_http_run_posted_requests(c);
    }
}

#endif


void *
ngx_http_copy_filter_create_conf(ngx_conf_t *cf)
{
    ngx_http_copy_filter_conf_t *conf;

    conf = ngx_palloc(cf->pool, sizeof(ngx_http_copy_filter_conf_t));
    if (conf == NULL) {
        return NULL;
    }

    conf->bufs.num = 0;

    return conf;
}


char *
ngx_http_copy_filter_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_copy_filter_conf_t *prev = parent;
    ngx_http_copy_filter_conf_t *conf = child;

    ngx_conf_merge_bufs_value(conf->bufs, prev->bufs, 2, 32768);

    return NULL;
}


ngx_int_t
ngx_http_copy_filter_init(ngx_conf_t *cf)
{
    ngx_http_next_body_filter = ngx_http_top_body_filter;
    ngx_http_top_body_filter = ngx_http_copy_filter;

    return NGX_OK;
}

