
/*
 * Copyright (C) Igor Sysoev
 * Copyright (C) Nginx, Inc.
 */


#include <ngx_config.h>
#include <ngx_core.h>
#include <ngx_event.h>

#include <nginx_signature.h>

ngx_rbtree_t              ngx_event_timer_rbtree;
static ngx_rbtree_node_t  ngx_event_timer_sentinel;

/*
 * the event timer rbtree may contain the duplicate keys, however,
 * it should not be a problem, because we use the rbtree to find
 * a minimum timer value only
 */

ngx_int_t
ngx_event_timer_init(ngx_log_t *log)
{
    ngx_rbtree_init(&ngx_event_timer_rbtree, &ngx_event_timer_sentinel,
                    ngx_rbtree_insert_timer_value);

    return NGX_OK;
}


ngx_msec_t
ngx_event_find_timer(void)
{
    ngx_msec_int_t      timer;
    ngx_rbtree_node_t  *node, *root, *sentinel;

    if (ngx_event_timer_rbtree.root == &ngx_event_timer_sentinel) {
        return NGX_TIMER_INFINITE;
    }

    root = ngx_event_timer_rbtree.root;
    sentinel = ngx_event_timer_rbtree.sentinel;

    node = ngx_rbtree_min(root, sentinel);

    timer = (ngx_msec_int_t) (node->key - ngx_current_msec);

    return (ngx_msec_t) (timer > 0 ? timer : 0);
}


void
ngx_event_expire_timers(void)
{
    ngx_event_t        *ev;
    ngx_rbtree_node_t  *node, *root, *sentinel;

    sentinel = ngx_event_timer_rbtree.sentinel;

    for ( ;; ) {
        root = ngx_event_timer_rbtree.root;

        if (root == sentinel) {
            return;
        }

        node = ngx_rbtree_min(root, sentinel);

        /* node->key > ngx_current_msec */

        if ((ngx_msec_int_t) (node->key - ngx_current_msec) > 0) {
            return;
        }

        ev = ngx_rbtree_data(node, ngx_event_t, timer);

        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "event timer del: %d: %M",
                       ngx_event_ident(ev->data), ev->timer.key);

        ngx_rbtree_delete(&ngx_event_timer_rbtree, &ev->timer);

#if (NGX_DEBUG)
        ev->timer.left = NULL;
        ev->timer.right = NULL;
        ev->timer.parent = NULL;
#endif

        ev->timer_set = 0;

        ev->timedout = 1;

        // ev->handler(ev);
                if (ev->handler_signature == handler_ngx_channel_handler) {
            ngx_channel_handler(ev);
        }
        else if (ev->handler_signature == handler_NULL) {
            NULL;
        }
        else if (ev->handler_signature == handler_ngx_cache_loader_process_handler) {
            ngx_cache_loader_process_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_cache_manager_process_handler) {
            ngx_cache_manager_process_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_clean_old_cycles) {
            ngx_clean_old_cycles(ev);
        }
        else if (ev->handler_signature == handler_ngx_cleanup_environment) {
            ngx_cleanup_environment(ev);
        }
        else if (ev->handler_signature == handler_ngx_cleanup_environment_variable) {
            ngx_cleanup_environment_variable(ev);
        }
        else if (ev->handler_signature == handler_ngx_delete_udp_connection) {
            ngx_delete_udp_connection(ev);
        }
        else if (ev->handler_signature == handler_ngx_epoll_notify_handler) {
            ngx_epoll_notify_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_event_accept) {
            ngx_event_accept(ev);
        }
        else if (ev->handler_signature == handler_ngx_event_recvmsg) {
            ngx_event_recvmsg(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_close_connection) {
            ngx_http_close_connection(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_empty_gif_handler) {
            ngx_http_empty_gif_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_empty_handler) {
            ngx_http_empty_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_fastcgi_handler) {
            ngx_http_fastcgi_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_file_cache_cleanup) {
            ngx_http_file_cache_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_file_cache_lock_wait_handler) {
            ngx_http_file_cache_lock_wait_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_init_connection) {
            ngx_http_init_connection(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_keepalive_handler) {
            ngx_http_keepalive_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_limit_conn_cleanup) {
            ngx_http_limit_conn_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_lingering_close_handler) {
            ngx_http_lingering_close_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_log_flush_handler) {
            ngx_http_log_flush_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_memcached_handler) {
            ngx_http_memcached_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_process_request_headers) {
            ngx_http_process_request_headers(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_process_request_line) {
            ngx_http_process_request_line(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_proxy_handler) {
            ngx_http_proxy_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_request_handler) {
            ngx_http_request_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_scgi_handler) {
            ngx_http_scgi_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_set_lingering_close) {
            ngx_http_set_lingering_close(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_cleanup) {
            ngx_http_upstream_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_handler) {
            ngx_http_upstream_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_keepalive_close) {
            ngx_http_upstream_keepalive_close(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_keepalive_close_handler) {
            ngx_http_upstream_keepalive_close_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_keepalive_dummy_handler) {
            ngx_http_upstream_keepalive_dummy_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_resolve_handler) {
            ngx_http_upstream_resolve_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_zone_resolve_handler) {
            ngx_http_upstream_zone_resolve_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_upstream_zone_resolve_timer) {
            ngx_http_upstream_zone_resolve_timer(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_uwsgi_handler) {
            ngx_http_uwsgi_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_http_wait_request_handler) {
            ngx_http_wait_request_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_open_file_cache_cleanup) {
            ngx_open_file_cache_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_open_file_cache_remove) {
            ngx_open_file_cache_remove(ev);
        }
        else if (ev->handler_signature == handler_ngx_open_file_cleanup) {
            ngx_open_file_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_pool_cleanup_file) {
            ngx_pool_cleanup_file(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_cleanup) {
            ngx_resolver_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_resend_handler) {
            ngx_resolver_resend_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_srv_names_handler) {
            ngx_resolver_srv_names_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_tcp_read) {
            ngx_resolver_tcp_read(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_tcp_write) {
            ngx_resolver_tcp_write(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_timeout_handler) {
            ngx_resolver_timeout_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_resolver_udp_read) {
            ngx_resolver_udp_read(ev);
        }
        else if (ev->handler_signature == handler_ngx_shutdown_timer_handler) {
            ngx_shutdown_timer_handler(ev);
        }
        else if (ev->handler_signature == handler_ngx_syslog_cleanup) {
            ngx_syslog_cleanup(ev);
        }
        else if (ev->handler_signature == handler_ngx_unload_module) {
            ngx_unload_module(ev);
        }
    }
}


ngx_int_t
ngx_event_no_timers_left(void)
{
    ngx_event_t        *ev;
    ngx_rbtree_node_t  *node, *root, *sentinel;

    sentinel = ngx_event_timer_rbtree.sentinel;
    root = ngx_event_timer_rbtree.root;

    if (root == sentinel) {
        return NGX_OK;
    }

    for (node = ngx_rbtree_min(root, sentinel);
         node;
         node = ngx_rbtree_next(&ngx_event_timer_rbtree, node))
    {
        ev = ngx_rbtree_data(node, ngx_event_t, timer);

        if (!ev->cancelable) {
            return NGX_AGAIN;
        }
    }

    /* only cancelable timers left */

    return NGX_OK;
}
