
/*
 * Copyright (C) Igor Sysoev
 * Copyright (C) Nginx, Inc.
 */


#include <ngx_config.h>
#include <ngx_core.h>
#include <ngx_event.h>

#include <nginx_signature.h>

ngx_queue_t  ngx_posted_accept_events;
ngx_queue_t  ngx_posted_next_events;
ngx_queue_t  ngx_posted_events;


void
ngx_event_process_posted(ngx_cycle_t *cycle, ngx_queue_t *posted)
{
    ngx_queue_t  *q;
    ngx_event_t  *ev;

    while (!ngx_queue_empty(posted)) {

        q = ngx_queue_head(posted);
        ev = ngx_queue_data(q, ngx_event_t, queue);

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                      "posted event %p", ev);

        ngx_delete_posted_event(ev);

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


void
ngx_event_move_posted_next(ngx_cycle_t *cycle)
{
    ngx_queue_t  *q;
    ngx_event_t  *ev;

    for (q = ngx_queue_head(&ngx_posted_next_events);
         q != ngx_queue_sentinel(&ngx_posted_next_events);
         q = ngx_queue_next(q))
    {
        ev = ngx_queue_data(q, ngx_event_t, queue);

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                      "posted next event %p", ev);

        ev->ready = 1;
        ev->available = -1;
    }

    ngx_queue_add(&ngx_posted_events, &ngx_posted_next_events);
    ngx_queue_init(&ngx_posted_next_events);
}
