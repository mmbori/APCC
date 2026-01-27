
/*
 * Copyright (C) Igor Sysoev
 * Copyright (C) Nginx, Inc.
 */


#include <ngx_config.h>
#include <ngx_core.h>
#include <nginx_signature.h>

static ngx_inline void *ngx_palloc_small(ngx_pool_t *pool, size_t size,
    ngx_uint_t align);
static void *ngx_palloc_block(ngx_pool_t *pool, size_t size);
static void *ngx_palloc_large(ngx_pool_t *pool, size_t size);


ngx_pool_t *
ngx_create_pool(size_t size, ngx_log_t *log)
{
    ngx_pool_t  *p;

    p = ngx_memalign(NGX_POOL_ALIGNMENT, size, log);
    if (p == NULL) {
        return NULL;
    }

    p->d.last = (u_char *) p + sizeof(ngx_pool_t);
    p->d.end = (u_char *) p + size;
    p->d.next = NULL;
    p->d.failed = 0;

    size = size - sizeof(ngx_pool_t);
    p->max = (size < NGX_MAX_ALLOC_FROM_POOL) ? size : NGX_MAX_ALLOC_FROM_POOL;

    p->current = p;
    p->chain = NULL;
    p->large = NULL;
    p->cleanup = NULL;
    p->log = log;

    return p;
}


void
ngx_destroy_pool(ngx_pool_t *pool)
{
    ngx_pool_t          *p, *n;
    ngx_pool_large_t    *l;
    ngx_pool_cleanup_t  *c;

    for (c = pool->cleanup; c; c = c->next) {
        if (c->handler) {
            ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, pool->log, 0,
                           "run cleanup: %p", c);
            // c->handler(c->data);
                    if (c->handler_signature == handler_ngx_channel_handler) {
            ngx_channel_handler(c->data);
        }
        else if (c->handler_signature == handler_NULL) {
            NULL;
        }
        else if (c->handler_signature == handler_ngx_cache_loader_process_handler) {
            ngx_cache_loader_process_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_cache_manager_process_handler) {
            ngx_cache_manager_process_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_clean_old_cycles) {
            ngx_clean_old_cycles(c->data);
        }
        else if (c->handler_signature == handler_ngx_cleanup_environment) {
            ngx_cleanup_environment(c->data);
        }
        else if (c->handler_signature == handler_ngx_cleanup_environment_variable) {
            ngx_cleanup_environment_variable(c->data);
        }
        else if (c->handler_signature == handler_ngx_delete_udp_connection) {
            ngx_delete_udp_connection(c->data);
        }
        else if (c->handler_signature == handler_ngx_epoll_notify_handler) {
            ngx_epoll_notify_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_event_accept) {
            ngx_event_accept(c->data);
        }
        else if (c->handler_signature == handler_ngx_event_recvmsg) {
            ngx_event_recvmsg(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_close_connection) {
            ngx_http_close_connection(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_empty_gif_handler) {
            ngx_http_empty_gif_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_empty_handler) {
            ngx_http_empty_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_fastcgi_handler) {
            ngx_http_fastcgi_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_file_cache_cleanup) {
            ngx_http_file_cache_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_file_cache_lock_wait_handler) {
            ngx_http_file_cache_lock_wait_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_init_connection) {
            ngx_http_init_connection(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_keepalive_handler) {
            ngx_http_keepalive_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_limit_conn_cleanup) {
            ngx_http_limit_conn_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_lingering_close_handler) {
            ngx_http_lingering_close_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_log_flush_handler) {
            ngx_http_log_flush_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_memcached_handler) {
            ngx_http_memcached_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_process_request_headers) {
            ngx_http_process_request_headers(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_process_request_line) {
            ngx_http_process_request_line(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_proxy_handler) {
            ngx_http_proxy_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_request_handler) {
            ngx_http_request_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_scgi_handler) {
            ngx_http_scgi_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_set_lingering_close) {
            ngx_http_set_lingering_close(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_cleanup) {
            ngx_http_upstream_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_handler) {
            ngx_http_upstream_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_close) {
            ngx_http_upstream_keepalive_close(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_close_handler) {
            ngx_http_upstream_keepalive_close_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_dummy_handler) {
            ngx_http_upstream_keepalive_dummy_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_resolve_handler) {
            ngx_http_upstream_resolve_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_zone_resolve_handler) {
            ngx_http_upstream_zone_resolve_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_zone_resolve_timer) {
            ngx_http_upstream_zone_resolve_timer(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_uwsgi_handler) {
            ngx_http_uwsgi_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_http_wait_request_handler) {
            ngx_http_wait_request_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_open_file_cache_cleanup) {
            ngx_open_file_cache_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_open_file_cache_remove) {
            ngx_open_file_cache_remove(c->data);
        }
        else if (c->handler_signature == handler_ngx_open_file_cleanup) {
            ngx_open_file_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_pool_cleanup_file) {
            ngx_pool_cleanup_file(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_cleanup) {
            ngx_resolver_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_resend_handler) {
            ngx_resolver_resend_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_srv_names_handler) {
            ngx_resolver_srv_names_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_tcp_read) {
            ngx_resolver_tcp_read(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_tcp_write) {
            ngx_resolver_tcp_write(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_timeout_handler) {
            ngx_resolver_timeout_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_resolver_udp_read) {
            ngx_resolver_udp_read(c->data);
        }
        else if (c->handler_signature == handler_ngx_shutdown_timer_handler) {
            ngx_shutdown_timer_handler(c->data);
        }
        else if (c->handler_signature == handler_ngx_syslog_cleanup) {
            ngx_syslog_cleanup(c->data);
        }
        else if (c->handler_signature == handler_ngx_unload_module) {
            ngx_unload_module(c->data);
        }
        }
    }

#if (NGX_DEBUG)

    /*
     * we could allocate the pool->log from this pool
     * so we cannot use this log while free()ing the pool
     */

    for (l = pool->large; l; l = l->next) {
        ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, pool->log, 0, "free: %p", l->alloc);
    }

    for (p = pool, n = pool->d.next; /* void */; p = n, n = n->d.next) {
        ngx_log_debug2(NGX_LOG_DEBUG_ALLOC, pool->log, 0,
                       "free: %p, unused: %uz", p, p->d.end - p->d.last);

        if (n == NULL) {
            break;
        }
    }

#endif

    for (l = pool->large; l; l = l->next) {
        if (l->alloc) {
            ngx_free(l->alloc);
        }
    }

    for (p = pool, n = pool->d.next; /* void */; p = n, n = n->d.next) {
        ngx_free(p);

        if (n == NULL) {
            break;
        }
    }
}


void
ngx_reset_pool(ngx_pool_t *pool)
{
    ngx_pool_t        *p;
    ngx_pool_large_t  *l;

    for (l = pool->large; l; l = l->next) {
        if (l->alloc) {
            ngx_free(l->alloc);
        }
    }

    for (p = pool; p; p = p->d.next) {
        p->d.last = (u_char *) p + sizeof(ngx_pool_t);
        p->d.failed = 0;
    }

    pool->current = pool;
    pool->chain = NULL;
    pool->large = NULL;
}


void *
ngx_palloc(ngx_pool_t *pool, size_t size)
{
#if !(NGX_DEBUG_PALLOC)
    if (size <= pool->max) {
        return ngx_palloc_small(pool, size, 1);
    }
#endif

    return ngx_palloc_large(pool, size);
}


void *
ngx_pnalloc(ngx_pool_t *pool, size_t size)
{
#if !(NGX_DEBUG_PALLOC)
    if (size <= pool->max) {
        return ngx_palloc_small(pool, size, 0);
    }
#endif

    return ngx_palloc_large(pool, size);
}


static ngx_inline void *
ngx_palloc_small(ngx_pool_t *pool, size_t size, ngx_uint_t align)
{
    u_char      *m;
    ngx_pool_t  *p;

    p = pool->current;

    do {
        m = p->d.last;

        if (align) {
            m = ngx_align_ptr(m, NGX_ALIGNMENT);
        }

        if ((size_t) (p->d.end - m) >= size) {
            p->d.last = m + size;

            return m;
        }

        p = p->d.next;

    } while (p);

    return ngx_palloc_block(pool, size);
}


static void *
ngx_palloc_block(ngx_pool_t *pool, size_t size)
{
    u_char      *m;
    size_t       psize;
    ngx_pool_t  *p, *new;

    psize = (size_t) (pool->d.end - (u_char *) pool);

    m = ngx_memalign(NGX_POOL_ALIGNMENT, psize, pool->log);
    if (m == NULL) {
        return NULL;
    }

    new = (ngx_pool_t *) m;

    new->d.end = m + psize;
    new->d.next = NULL;
    new->d.failed = 0;

    m += sizeof(ngx_pool_data_t);
    m = ngx_align_ptr(m, NGX_ALIGNMENT);
    new->d.last = m + size;

    for (p = pool->current; p->d.next; p = p->d.next) {
        if (p->d.failed++ > 4) {
            pool->current = p->d.next;
        }
    }

    p->d.next = new;

    return m;
}


static void *
ngx_palloc_large(ngx_pool_t *pool, size_t size)
{
    void              *p;
    ngx_uint_t         n;
    ngx_pool_large_t  *large;

    p = ngx_alloc(size, pool->log);
    if (p == NULL) {
        return NULL;
    }

    n = 0;

    for (large = pool->large; large; large = large->next) {
        if (large->alloc == NULL) {
            large->alloc = p;
            return p;
        }

        if (n++ > 3) {
            break;
        }
    }

    large = ngx_palloc_small(pool, sizeof(ngx_pool_large_t), 1);
    if (large == NULL) {
        ngx_free(p);
        return NULL;
    }

    large->alloc = p;
    large->next = pool->large;
    pool->large = large;

    return p;
}


void *
ngx_pmemalign(ngx_pool_t *pool, size_t size, size_t alignment)
{
    void              *p;
    ngx_pool_large_t  *large;

    p = ngx_memalign(alignment, size, pool->log);
    if (p == NULL) {
        return NULL;
    }

    large = ngx_palloc_small(pool, sizeof(ngx_pool_large_t), 1);
    if (large == NULL) {
        ngx_free(p);
        return NULL;
    }

    large->alloc = p;
    large->next = pool->large;
    pool->large = large;

    return p;
}


ngx_int_t
ngx_pfree(ngx_pool_t *pool, void *p)
{
    ngx_pool_large_t  *l;

    for (l = pool->large; l; l = l->next) {
        if (p == l->alloc) {
            ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, pool->log, 0,
                           "free: %p", l->alloc);
            ngx_free(l->alloc);
            l->alloc = NULL;

            return NGX_OK;
        }
    }

    return NGX_DECLINED;
}


void *
ngx_pcalloc(ngx_pool_t *pool, size_t size)
{
    void *p;

    p = ngx_palloc(pool, size);
    if (p) {
        ngx_memzero(p, size);
    }

    return p;
}


ngx_pool_cleanup_t *
ngx_pool_cleanup_add(ngx_pool_t *p, size_t size)
{
    ngx_pool_cleanup_t  *c;

    c = ngx_palloc(p, sizeof(ngx_pool_cleanup_t));
    if (c == NULL) {
        return NULL;
    }

    if (size) {
        c->data = ngx_palloc(p, size);
        if (c->data == NULL) {
            return NULL;
        }

    } else {
        c->data = NULL;
    }

    c->handler = NULL;
    c->next = p->cleanup;

    p->cleanup = c;

    ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, p->log, 0, "add cleanup: %p", c);

    return c;
}


void
ngx_pool_run_cleanup_file(ngx_pool_t *p, ngx_fd_t fd)
{
    ngx_pool_cleanup_t       *c;
    ngx_pool_cleanup_file_t  *cf;

    for (c = p->cleanup; c; c = c->next) {
        if (c->handler == ngx_pool_cleanup_file) {

            cf = c->data;

            if (cf->fd == fd) {
                // c->handler(cf);
                        if (c->handler_signature == handler_ngx_channel_handler) {
            ngx_channel_handler(cf);
        }
        else if (c->handler_signature == handler_NULL) {
            NULL;
        }
        else if (c->handler_signature == handler_ngx_cache_loader_process_handler) {
            ngx_cache_loader_process_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_cache_manager_process_handler) {
            ngx_cache_manager_process_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_clean_old_cycles) {
            ngx_clean_old_cycles(cf);
        }
        else if (c->handler_signature == handler_ngx_cleanup_environment) {
            ngx_cleanup_environment(cf);
        }
        else if (c->handler_signature == handler_ngx_cleanup_environment_variable) {
            ngx_cleanup_environment_variable(cf);
        }
        else if (c->handler_signature == handler_ngx_delete_udp_connection) {
            ngx_delete_udp_connection(cf);
        }
        else if (c->handler_signature == handler_ngx_epoll_notify_handler) {
            ngx_epoll_notify_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_event_accept) {
            ngx_event_accept(cf);
        }
        else if (c->handler_signature == handler_ngx_event_recvmsg) {
            ngx_event_recvmsg(cf);
        }
        else if (c->handler_signature == handler_ngx_http_close_connection) {
            ngx_http_close_connection(cf);
        }
        else if (c->handler_signature == handler_ngx_http_empty_gif_handler) {
            ngx_http_empty_gif_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_empty_handler) {
            ngx_http_empty_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_fastcgi_handler) {
            ngx_http_fastcgi_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_file_cache_cleanup) {
            ngx_http_file_cache_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_http_file_cache_lock_wait_handler) {
            ngx_http_file_cache_lock_wait_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_init_connection) {
            ngx_http_init_connection(cf);
        }
        else if (c->handler_signature == handler_ngx_http_keepalive_handler) {
            ngx_http_keepalive_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_limit_conn_cleanup) {
            ngx_http_limit_conn_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_http_lingering_close_handler) {
            ngx_http_lingering_close_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_log_flush_handler) {
            ngx_http_log_flush_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_memcached_handler) {
            ngx_http_memcached_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_process_request_headers) {
            ngx_http_process_request_headers(cf);
        }
        else if (c->handler_signature == handler_ngx_http_process_request_line) {
            ngx_http_process_request_line(cf);
        }
        else if (c->handler_signature == handler_ngx_http_proxy_handler) {
            ngx_http_proxy_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_request_handler) {
            ngx_http_request_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_scgi_handler) {
            ngx_http_scgi_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_set_lingering_close) {
            ngx_http_set_lingering_close(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_cleanup) {
            ngx_http_upstream_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_handler) {
            ngx_http_upstream_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_close) {
            ngx_http_upstream_keepalive_close(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_close_handler) {
            ngx_http_upstream_keepalive_close_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_keepalive_dummy_handler) {
            ngx_http_upstream_keepalive_dummy_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_resolve_handler) {
            ngx_http_upstream_resolve_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_zone_resolve_handler) {
            ngx_http_upstream_zone_resolve_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_upstream_zone_resolve_timer) {
            ngx_http_upstream_zone_resolve_timer(cf);
        }
        else if (c->handler_signature == handler_ngx_http_uwsgi_handler) {
            ngx_http_uwsgi_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_http_wait_request_handler) {
            ngx_http_wait_request_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_open_file_cache_cleanup) {
            ngx_open_file_cache_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_open_file_cache_remove) {
            ngx_open_file_cache_remove(cf);
        }
        else if (c->handler_signature == handler_ngx_open_file_cleanup) {
            ngx_open_file_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_pool_cleanup_file) {
            ngx_pool_cleanup_file(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_cleanup) {
            ngx_resolver_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_resend_handler) {
            ngx_resolver_resend_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_srv_names_handler) {
            ngx_resolver_srv_names_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_tcp_read) {
            ngx_resolver_tcp_read(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_tcp_write) {
            ngx_resolver_tcp_write(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_timeout_handler) {
            ngx_resolver_timeout_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_resolver_udp_read) {
            ngx_resolver_udp_read(cf);
        }
        else if (c->handler_signature == handler_ngx_shutdown_timer_handler) {
            ngx_shutdown_timer_handler(cf);
        }
        else if (c->handler_signature == handler_ngx_syslog_cleanup) {
            ngx_syslog_cleanup(cf);
        }
        else if (c->handler_signature == handler_ngx_unload_module) {
            ngx_unload_module(cf);
        }
                c->handler = NULL;
                return;
            }
        }
    }
}


void
ngx_pool_cleanup_file(void *data)
{
    ngx_pool_cleanup_file_t  *c = data;

    ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, c->log, 0, "file cleanup: fd:%d",
                   c->fd);

    if (ngx_close_file(c->fd) == NGX_FILE_ERROR) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      ngx_close_file_n " \"%s\" failed", c->name);
    }
}


void
ngx_pool_delete_file(void *data)
{
    ngx_pool_cleanup_file_t  *c = data;

    ngx_err_t  err;

    ngx_log_debug2(NGX_LOG_DEBUG_ALLOC, c->log, 0, "file cleanup: fd:%d %s",
                   c->fd, c->name);

    if (ngx_delete_file(c->name) == NGX_FILE_ERROR) {
        err = ngx_errno;

        if (err != NGX_ENOENT) {
            ngx_log_error(NGX_LOG_CRIT, c->log, err,
                          ngx_delete_file_n " \"%s\" failed", c->name);
        }
    }

    if (ngx_close_file(c->fd) == NGX_FILE_ERROR) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      ngx_close_file_n " \"%s\" failed", c->name);
    }
}


#if 0

static void *
ngx_get_cached_block(size_t size)
{
    void                     *p;
    ngx_cached_block_slot_t  *slot;

    if (ngx_cycle->cache == NULL) {
        return NULL;
    }

    slot = &ngx_cycle->cache[(size + ngx_pagesize - 1) / ngx_pagesize];

    slot->tries++;

    if (slot->number) {
        p = slot->block;
        slot->block = slot->block->next;
        slot->number--;
        return p;
    }

    return NULL;
}

#endif
