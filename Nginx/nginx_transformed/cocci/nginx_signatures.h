#ifndef NGINX_SIGNATURES_H
#define NGINX_SIGNATURES_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 42
 * Total functions: 328
 * Signature type: int
 */

#include <stdlib.h>
#include <stdbool.h>

typedef struct siginfo_t siginfo_t;
typedef struct TestContext TestContext;
typedef struct RedisModuleCtx RedisModuleCtx;
typedef struct client client;
typedef struct dictCmpCache dictCmpCache;
typedef struct redisReadTask redisReadTask;
typedef struct dict dict;
typedef struct gpointer gpointer;

// =============== abort_request ===============

// abort_request function enumeration
typedef enum {
    abort_request_ngx_http_fastcgi_abort_request = 784441,
    abort_request_ngx_http_memcached_abort_request = 40400,
    abort_request_ngx_http_proxy_abort_request = 9478,
    abort_request_ngx_http_scgi_abort_request = 930738,
    abort_request_ngx_http_uwsgi_abort_request = 234070
} abort_request_enum;

// =============== checker ===============

// checker function enumeration
typedef enum {
    checker_ngx_http_core_find_config_phase = 800039,
    checker_ngx_http_core_post_access_phase = 105008,
    checker_ngx_http_core_post_rewrite_phase = 166011
} checker_enum;

// =============== content_handler ===============

// content_handler function enumeration
typedef enum {
    content_handler_NULL = 707184
} content_handler_enum;

// =============== create_conf ===============

// create_conf function enumeration
typedef enum {
    create_conf_NULL = 758782,
    create_conf_ngx_core_module_create_conf = 438506,
    create_conf_ngx_epoll_create_conf = 194284,
    create_conf_ngx_event_core_create_conf = 875875
} create_conf_enum;

// =============== create_loc_conf ===============

// create_loc_conf function enumeration
typedef enum {
    create_loc_conf_NULL = 867498,
    create_loc_conf_ngx_http_access_create_loc_conf = 234676,
    create_loc_conf_ngx_http_auth_basic_create_loc_conf = 835694,
    create_loc_conf_ngx_http_autoindex_create_loc_conf = 324459,
    create_loc_conf_ngx_http_browser_create_conf = 40898,
    create_loc_conf_ngx_http_copy_filter_create_conf = 95957,
    create_loc_conf_ngx_http_core_create_loc_conf = 38334,
    create_loc_conf_ngx_http_fastcgi_create_loc_conf = 910568,
    create_loc_conf_ngx_http_headers_create_conf = 334541,
    create_loc_conf_ngx_http_index_create_loc_conf = 12649,
    create_loc_conf_ngx_http_limit_conn_create_conf = 777969,
    create_loc_conf_ngx_http_limit_req_create_conf = 153398,
    create_loc_conf_ngx_http_log_create_loc_conf = 446504,
    create_loc_conf_ngx_http_memcached_create_loc_conf = 480386,
    create_loc_conf_ngx_http_mirror_create_loc_conf = 254199,
    create_loc_conf_ngx_http_proxy_create_loc_conf = 371331,
    create_loc_conf_ngx_http_referer_create_conf = 786875,
    create_loc_conf_ngx_http_scgi_create_loc_conf = 292715,
    create_loc_conf_ngx_http_ssi_create_loc_conf = 406215,
    create_loc_conf_ngx_http_try_files_create_loc_conf = 33183,
    create_loc_conf_ngx_http_userid_create_conf = 162560,
    create_loc_conf_ngx_http_uwsgi_create_loc_conf = 951337
} create_loc_conf_enum;

// =============== create_main_conf ===============

// create_main_conf function enumeration
typedef enum {
    create_main_conf_NULL = 975644,
    create_main_conf_ngx_http_core_create_main_conf = 339440,
    create_main_conf_ngx_http_fastcgi_create_main_conf = 907922,
    create_main_conf_ngx_http_log_create_main_conf = 160162,
    create_main_conf_ngx_http_map_create_conf = 190149,
    create_main_conf_ngx_http_proxy_create_main_conf = 544534,
    create_main_conf_ngx_http_scgi_create_main_conf = 413384,
    create_main_conf_ngx_http_ssi_create_main_conf = 443753,
    create_main_conf_ngx_http_upstream_create_main_conf = 161137,
    create_main_conf_ngx_http_uwsgi_create_main_conf = 267622
} create_main_conf_enum;

// =============== create_srv_conf ===============

// create_srv_conf function enumeration
typedef enum {
    create_srv_conf_NULL = 84437,
    create_srv_conf_ngx_http_core_create_srv_conf = 428098,
    create_srv_conf_ngx_http_upstream_hash_create_conf = 419196,
    create_srv_conf_ngx_http_upstream_keepalive_create_conf = 473309,
    create_srv_conf_ngx_http_upstream_random_create_conf = 729080
} create_srv_conf_enum;

// =============== enable ===============

// enable function enumeration
typedef enum {
    enable_NGX_CONF_UNSET = 96955,
    enable_NGX_CONF_UNSET_UINT = 893490
} enable_enum;

// =============== finalize_request ===============

// finalize_request function enumeration
typedef enum {
    finalize_request_ngx_http_fastcgi_finalize_request = 14868,
    finalize_request_ngx_http_memcached_finalize_request = 103982,
    finalize_request_ngx_http_proxy_finalize_request = 239375,
    finalize_request_ngx_http_scgi_finalize_request = 965393,
    finalize_request_ngx_http_uwsgi_finalize_request = 421357
} finalize_request_enum;

// =============== flush ===============

// flush function enumeration
typedef enum {
    flush_NULL = 812209,
    flush_ngx_http_log_flush = 306222
} flush_enum;

// =============== free ===============

// free function enumeration
typedef enum {
    free_NULL = 213534,
    free_cl = 143931,
    free_ln = 857140,
    free_ngx_http_upstream_free_keepalive_peer = 409598,
    free_ngx_http_upstream_free_round_robin_peer = 676340,
    free_node = 336089
} free_enum;

// =============== get ===============

// get function enumeration
typedef enum {
    get_ngx_http_upstream_get_chash_peer = 487901,
    get_ngx_http_upstream_get_hash_peer = 267014,
    get_ngx_http_upstream_get_ip_hash_peer = 172303,
    get_ngx_http_upstream_get_keepalive_peer = 652679,
    get_ngx_http_upstream_get_least_conn_peer = 194968,
    get_ngx_http_upstream_get_random2_peer = 682710,
    get_ngx_http_upstream_get_random_peer = 869865,
    get_ngx_http_upstream_get_round_robin_peer = 136418
} get_enum;

// =============== get_rr_peer ===============

// get_rr_peer function enumeration
typedef enum {
    get_rr_peer_ngx_http_upstream_get_round_robin_peer = 12178
} get_rr_peer_enum;

// =============== handler ===============

// handler function enumeration
typedef enum {
    handler_NULL = 154253,
    handler_ngx_accept_log_error = 370404,
    handler_ngx_acceptex_log_error = 488288,
    handler_ngx_cache_loader_process_handler = 709668,
    handler_ngx_cache_manager_process_handler = 637697,
    handler_ngx_channel_handler = 282887,
    handler_ngx_clean_old_cycles = 476717,
    handler_ngx_cleanup_environment = 785758,
    handler_ngx_cleanup_environment_variable = 833146,
    handler_ngx_delete_udp_connection = 429720,
    handler_ngx_epoll_eventfd_handler = 433065,
    handler_ngx_epoll_notify_handler = 462883,
    handler_ngx_event_accept = 762041,
    handler_ngx_event_acceptex = 937392,
    handler_ngx_event_recvmsg = 30604,
    handler_ngx_http_add_header = 695297,
    handler_ngx_http_cache_aio_event_handler = 760208,
    handler_ngx_http_cache_thread_event_handler = 485300,
    handler_ngx_http_close_connection = 104045,
    handler_ngx_http_copy_aio_event_handler = 16928,
    handler_ngx_http_copy_thread_event_handler = 847621,
    handler_ngx_http_core_type = 63366,
    handler_ngx_http_empty_gif_handler = 98407,
    handler_ngx_http_empty_handler = 286251,
    handler_ngx_http_fastcgi_handler = 151693,
    handler_ngx_http_file_cache_cleanup = 679783,
    handler_ngx_http_file_cache_lock_wait_handler = 786519,
    handler_ngx_http_geo = 119073,
    handler_ngx_http_init_connection = 27666,
    handler_ngx_http_keepalive_handler = 247934,
    handler_ngx_http_limit_conn_cleanup = 215228,
    handler_ngx_http_lingering_close_handler = 160721,
    handler_ngx_http_log_error = 193841,
    handler_ngx_http_log_flush_handler = 711277,
    handler_ngx_http_map = 883803,
    handler_ngx_http_memcached_handler = 7745,
    handler_ngx_http_process_request_headers = 555789,
    handler_ngx_http_process_request_line = 383893,
    handler_ngx_http_proxy_handler = 605978,
    handler_ngx_http_proxy_rewrite_complex_handler = 234634,
    handler_ngx_http_proxy_rewrite_domain_handler = 28163,
    handler_ngx_http_proxy_rewrite_regex_handler = 20108,
    handler_ngx_http_request_handler = 523388,
    handler_ngx_http_scgi_handler = 432557,
    handler_ngx_http_set_lingering_close = 369377,
    handler_ngx_http_split_clients = 465655,
    handler_ngx_http_ssi_set_variable = 998958,
    handler_ngx_http_ssi_stub_output = 772099,
    handler_ngx_http_ssl_handshake = 81370,
    handler_ngx_http_ssl_handshake_handler = 742583,
    handler_ngx_http_upstream_cleanup = 514854,
    handler_ngx_http_upstream_handler = 418830,
    handler_ngx_http_upstream_keepalive_close = 613042,
    handler_ngx_http_upstream_keepalive_close_handler = 600491,
    handler_ngx_http_upstream_keepalive_dummy_handler = 184702,
    handler_ngx_http_upstream_resolve_handler = 570961,
    handler_ngx_http_upstream_ssl_handshake_handler = 46621,
    handler_ngx_http_upstream_thread_event_handler = 971957,
    handler_ngx_http_upstream_zone_resolve_handler = 865359,
    handler_ngx_http_upstream_zone_resolve_timer = 589359,
    handler_ngx_http_uwsgi_handler = 395449,
    handler_ngx_http_wait_request_handler = 565725,
    handler_ngx_linux_sendfile_thread_handler = 508514,
    handler_ngx_log_memory_cleanup = 141268,
    handler_ngx_open_file_cache_cleanup = 782742,
    handler_ngx_open_file_cache_remove = 213637,
    handler_ngx_open_file_cleanup = 658992,
    handler_ngx_pool_cleanup_file = 899150,
    handler_ngx_quic_recvmsg = 90421,
    handler_ngx_resolver_cleanup = 842302,
    handler_ngx_resolver_log_error = 695271,
    handler_ngx_resolver_resend_handler = 938567,
    handler_ngx_resolver_srv_names_handler = 245343,
    handler_ngx_resolver_tcp_read = 689245,
    handler_ngx_resolver_tcp_write = 259385,
    handler_ngx_resolver_timeout_handler = 321159,
    handler_ngx_resolver_udp_read = 623493,
    handler_ngx_shutdown_timer_handler = 649865,
    handler_ngx_ssl_cleanup_ctx = 828524,
    handler_ngx_syslog_cleanup = 152981,
    handler_ngx_syslog_log_error = 168322,
    handler_ngx_thread_read_handler = 659184,
    handler_ngx_thread_write_chain_to_file_handler = 349235,
    handler_ngx_unload_module = 274003
} handler_enum;

// =============== init ===============

// init function enumeration
typedef enum {
    init_NULL = 360038,
    init_ngx_http_file_cache_init = 85583,
    init_ngx_http_limit_conn_init_zone = 265184,
    init_ngx_http_limit_req_init_zone = 75813,
    init_ngx_http_upstream_init_chash_peer = 320530,
    init_ngx_http_upstream_init_hash_peer = 798326,
    init_ngx_http_upstream_init_ip_hash_peer = 298315,
    init_ngx_http_upstream_init_keepalive_peer = 242056,
    init_ngx_http_upstream_init_least_conn_peer = 752584,
    init_ngx_http_upstream_init_random_peer = 393345,
    init_ngx_http_upstream_init_round_robin_peer = 189187,
    init_ngx_http_upstream_init_zone = 537325
} init_enum;

// =============== init_conf ===============

// init_conf function enumeration
typedef enum {
    init_conf_NULL = 876211,
    init_conf_ngx_core_module_init_conf = 145044,
    init_conf_ngx_epoll_init_conf = 202830,
    init_conf_ngx_event_core_init_conf = 480744,
    init_conf_ngx_event_init_conf = 95147
} init_conf_enum;

// =============== init_main_conf ===============

// init_main_conf function enumeration
typedef enum {
    init_main_conf_NULL = 427751,
    init_main_conf_ngx_http_core_init_main_conf = 187870,
    init_main_conf_ngx_http_ssi_init_main_conf = 923171,
    init_main_conf_ngx_http_upstream_init_main_conf = 363915
} init_main_conf_enum;

// =============== init_upstream ===============

// init_upstream function enumeration
typedef enum {
    init_upstream_ngx_http_upstream_init_chash = 279820,
    init_upstream_ngx_http_upstream_init_hash = 571985,
    init_upstream_ngx_http_upstream_init_ip_hash = 340680,
    init_upstream_ngx_http_upstream_init_keepalive = 315741,
    init_upstream_ngx_http_upstream_init_least_conn = 232001,
    init_upstream_ngx_http_upstream_init_random = 914770
} init_upstream_enum;

// =============== input_filter ===============

// input_filter function enumeration
typedef enum {
    input_filter_ngx_event_pipe_copy_input_filter = 860392,
    input_filter_ngx_http_fastcgi_input_filter = 561818,
    input_filter_ngx_http_fastcgi_non_buffered_filter = 711932,
    input_filter_ngx_http_memcached_filter = 79286,
    input_filter_ngx_http_proxy_chunked_filter = 535616,
    input_filter_ngx_http_proxy_copy_filter = 375491,
    input_filter_ngx_http_proxy_non_buffered_chunked_filter = 424336,
    input_filter_ngx_http_proxy_non_buffered_copy_filter = 971084,
    input_filter_ngx_http_upstream_non_buffered_filter = 745936
} input_filter_enum;

// =============== input_filter_init ===============

// input_filter_init function enumeration
typedef enum {
    input_filter_init_ngx_http_fastcgi_input_filter_init = 348723,
    input_filter_init_ngx_http_memcached_filter_init = 414594,
    input_filter_init_ngx_http_proxy_input_filter_init = 870875,
    input_filter_init_ngx_http_scgi_input_filter_init = 600183,
    input_filter_init_ngx_http_upstream_non_buffered_filter_init = 16187,
    input_filter_init_ngx_http_uwsgi_input_filter_init = 408789
} input_filter_init_enum;

// =============== log_handler ===============

// log_handler function enumeration
typedef enum {
    log_handler_ngx_http_log_error_handler = 10988
} log_handler_enum;

// =============== merge_loc_conf ===============

// merge_loc_conf function enumeration
typedef enum {
    merge_loc_conf_NULL = 866023,
    merge_loc_conf_ngx_http_access_merge_loc_conf = 170378,
    merge_loc_conf_ngx_http_auth_basic_merge_loc_conf = 206129,
    merge_loc_conf_ngx_http_autoindex_merge_loc_conf = 765561,
    merge_loc_conf_ngx_http_browser_merge_conf = 617764,
    merge_loc_conf_ngx_http_copy_filter_merge_conf = 531889,
    merge_loc_conf_ngx_http_core_merge_loc_conf = 373288,
    merge_loc_conf_ngx_http_fastcgi_merge_loc_conf = 44666,
    merge_loc_conf_ngx_http_headers_merge_conf = 814334,
    merge_loc_conf_ngx_http_index_merge_loc_conf = 425481,
    merge_loc_conf_ngx_http_limit_conn_merge_conf = 175930,
    merge_loc_conf_ngx_http_limit_req_merge_conf = 271652,
    merge_loc_conf_ngx_http_log_merge_loc_conf = 633901,
    merge_loc_conf_ngx_http_memcached_merge_loc_conf = 400554,
    merge_loc_conf_ngx_http_mirror_merge_loc_conf = 382199,
    merge_loc_conf_ngx_http_proxy_merge_loc_conf = 966281,
    merge_loc_conf_ngx_http_referer_merge_conf = 403020,
    merge_loc_conf_ngx_http_scgi_merge_loc_conf = 392214,
    merge_loc_conf_ngx_http_ssi_merge_loc_conf = 257001,
    merge_loc_conf_ngx_http_userid_merge_conf = 494332,
    merge_loc_conf_ngx_http_uwsgi_merge_loc_conf = 396972
} merge_loc_conf_enum;

// =============== merge_srv_conf ===============

// merge_srv_conf function enumeration
typedef enum {
    merge_srv_conf_NULL = 142318,
    merge_srv_conf_ngx_http_core_merge_srv_conf = 344343
} merge_srv_conf_enum;

// =============== notify ===============

// notify function enumeration
typedef enum {
    notify_NULL = 773471
} notify_enum;

// =============== output_filter ===============

// output_filter function enumeration
typedef enum {
    output_filter_ngx_chain_writer = 169983,
    output_filter_ngx_http_fastcgi_body_output_filter = 491593,
    output_filter_ngx_http_proxy_body_output_filter = 186960,
    output_filter_ngx_http_upstream_output_filter = 82578
} output_filter_enum;

// =============== post_handler ===============

// post_handler function enumeration
typedef enum {
    post_handler_ngx_http_mirror_body_handler = 179398,
    post_handler_ngx_http_upstream_init = 305863
} post_handler_enum;

// =============== postconfiguration ===============

// postconfiguration function enumeration
typedef enum {
    postconfiguration_NULL = 541053,
    postconfiguration_ngx_http_access_init = 474505,
    postconfiguration_ngx_http_auth_basic_init = 40927,
    postconfiguration_ngx_http_autoindex_init = 144131,
    postconfiguration_ngx_http_chunked_filter_init = 586747,
    postconfiguration_ngx_http_copy_filter_init = 970910,
    postconfiguration_ngx_http_core_postconfiguration = 755494,
    postconfiguration_ngx_http_header_filter_init = 258113,
    postconfiguration_ngx_http_headers_filter_init = 406862,
    postconfiguration_ngx_http_index_init = 387071,
    postconfiguration_ngx_http_limit_conn_init = 581757,
    postconfiguration_ngx_http_limit_req_init = 847395,
    postconfiguration_ngx_http_log_init = 809927,
    postconfiguration_ngx_http_mirror_init = 219018,
    postconfiguration_ngx_http_not_modified_filter_init = 43883,
    postconfiguration_ngx_http_postpone_filter_init = 982824,
    postconfiguration_ngx_http_range_body_filter_init = 115133,
    postconfiguration_ngx_http_range_header_filter_init = 822491,
    postconfiguration_ngx_http_ssi_filter_init = 290163,
    postconfiguration_ngx_http_static_init = 607909,
    postconfiguration_ngx_http_try_files_init = 874292,
    postconfiguration_ngx_http_userid_init = 328361,
    postconfiguration_ngx_http_write_filter_init = 594234
} postconfiguration_enum;

// =============== preconfiguration ===============

// preconfiguration function enumeration
typedef enum {
    preconfiguration_NULL = 241549,
    preconfiguration_ngx_http_browser_add_variables = 384815,
    preconfiguration_ngx_http_core_preconfiguration = 654648,
    preconfiguration_ngx_http_fastcgi_add_variables = 197952,
    preconfiguration_ngx_http_limit_conn_add_variables = 821926,
    preconfiguration_ngx_http_limit_req_add_variables = 490577,
    preconfiguration_ngx_http_proxy_add_variables = 107888,
    preconfiguration_ngx_http_referer_add_variables = 863893,
    preconfiguration_ngx_http_ssi_preconfiguration = 353132,
    preconfiguration_ngx_http_upstream_add_variables = 28876,
    preconfiguration_ngx_http_userid_add_variables = 488322
} preconfiguration_enum;

// =============== process_header ===============

// process_header function enumeration
typedef enum {
    process_header_ngx_http_fastcgi_process_header = 979278,
    process_header_ngx_http_memcached_process_header = 28794,
    process_header_ngx_http_proxy_process_header = 718565,
    process_header_ngx_http_proxy_process_status_line = 410880,
    process_header_ngx_http_scgi_process_header = 932185,
    process_header_ngx_http_scgi_process_status_line = 115460,
    process_header_ngx_http_uwsgi_process_header = 112837,
    process_header_ngx_http_uwsgi_process_status_line = 420380
} process_header_enum;

// =============== read_event_handler ===============

// read_event_handler function enumeration
typedef enum {
    read_event_handler_ngx_http_block_reading = 823387,
    read_event_handler_ngx_http_discarded_request_body_handler = 640672,
    read_event_handler_ngx_http_read_client_request_body_handler = 975346,
    read_event_handler_ngx_http_request_empty_handler = 345703,
    read_event_handler_ngx_http_test_reading = 959637,
    read_event_handler_ngx_http_upstream_process_header = 786807,
    read_event_handler_ngx_http_upstream_process_non_buffered_upstream = 534805,
    read_event_handler_ngx_http_upstream_process_upstream = 270204,
    read_event_handler_ngx_http_upstream_rd_check_broken_connection = 629841,
    read_event_handler_ngx_http_upstream_read_request_handler = 624576,
    read_event_handler_ngx_http_upstream_upgraded_read_downstream = 477618,
    read_event_handler_ngx_http_upstream_upgraded_read_upstream = 586342
} read_event_handler_enum;

// =============== recv ===============

// recv function enumeration
typedef enum {
    recv_ngx_recv = 659900,
    recv_ngx_udp_recv = 294628,
    recv_ngx_udp_shared_recv = 285407,
    recv_ngx_unix_recv = 950499
} recv_enum;

// =============== recv_chain ===============

// recv_chain function enumeration
typedef enum {
    recv_chain_ngx_readv_chain = 469602,
    recv_chain_ngx_recv_chain = 199964
} recv_chain_enum;

// =============== reinit_request ===============

// reinit_request function enumeration
typedef enum {
    reinit_request_ngx_http_fastcgi_reinit_request = 331751,
    reinit_request_ngx_http_memcached_reinit_request = 233062,
    reinit_request_ngx_http_proxy_reinit_request = 296870,
    reinit_request_ngx_http_scgi_reinit_request = 990192,
    reinit_request_ngx_http_uwsgi_reinit_request = 112559
} reinit_request_enum;

// =============== rewrite_cookie ===============

// rewrite_cookie function enumeration
typedef enum {
    rewrite_cookie_ngx_http_proxy_rewrite_cookie = 84020
} rewrite_cookie_enum;

// =============== rewrite_redirect ===============

// rewrite_redirect function enumeration
typedef enum {
    rewrite_redirect_ngx_http_proxy_rewrite_redirect = 810210
} rewrite_redirect_enum;

// =============== save_session ===============

// save_session function enumeration
typedef enum {
    save_session_ngx_http_upstream_empty_save_session = 140867,
    save_session_ngx_http_upstream_keepalive_save_session = 961856,
    save_session_ngx_http_upstream_save_round_robin_peer_session = 283801,
    save_session_ngx_http_upstream_ssl_save_session = 533048
} save_session_enum;

// =============== send ===============

// send function enumeration
typedef enum {
    send_ngx_send = 347306,
    send_ngx_udp_send = 734828,
    send_ngx_unix_send = 283382
} send_enum;

// =============== send_chain ===============

// send_chain function enumeration
typedef enum {
    send_chain_ngx_send_chain = 931401,
    send_chain_ngx_udp_send_chain = 346090,
    send_chain_ngx_writev_chain = 22359
} send_chain_enum;

// =============== udp_recv ===============

// udp_recv function enumeration
typedef enum {
    udp_recv_ngx_udp_unix_recv = 450075
} udp_recv_enum;

// =============== udp_send ===============

// udp_send function enumeration
typedef enum {
    udp_send_ngx_udp_unix_send = 707267
} udp_send_enum;

// =============== udp_send_chain ===============

// udp_send_chain function enumeration
typedef enum {
    udp_send_chain_ngx_udp_unix_sendmsg_chain = 759298
} udp_send_chain_enum;

// =============== write_event_handler ===============

// write_event_handler function enumeration
typedef enum {
    write_event_handler_ngx_http_core_auth_delay_handler = 853710,
    write_event_handler_ngx_http_core_run_phases = 918072,
    write_event_handler_ngx_http_handler = 274313,
    write_event_handler_ngx_http_limit_req_delay = 127838,
    write_event_handler_ngx_http_request_empty_handler = 478503,
    write_event_handler_ngx_http_request_finalizer = 104236,
    write_event_handler_ngx_http_terminate_handler = 410223,
    write_event_handler_ngx_http_upstream_dummy_handler = 526094,
    write_event_handler_ngx_http_upstream_early_hints_writer = 215223,
    write_event_handler_ngx_http_upstream_init_request = 361380,
    write_event_handler_ngx_http_upstream_process_downstream = 971359,
    write_event_handler_ngx_http_upstream_process_non_buffered_downstream = 279553,
    write_event_handler_ngx_http_upstream_send_request_handler = 818163,
    write_event_handler_ngx_http_upstream_upgraded_write_downstream = 188040,
    write_event_handler_ngx_http_upstream_upgraded_write_upstream = 300042,
    write_event_handler_ngx_http_upstream_wr_check_broken_connection = 82519,
    write_event_handler_ngx_http_writer = 512025
} write_event_handler_enum;

#endif /* NGINX_SIGNATURES_H */
