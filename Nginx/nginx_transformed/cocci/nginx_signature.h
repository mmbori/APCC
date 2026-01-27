#ifndef NGINX_SIGNATURE_H
#define NGINX_SIGNATURE_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 71
 * Total functions: 521
 * Signature type: int
 */

#include <stdlib.h>
#include <stdbool.h>


typedef struct ngx_event_pipe_s  ngx_event_pipe_t;
typedef struct ngx_http_request_s     ngx_http_request_t;
typedef struct ngx_http_header_val_s  ngx_http_header_val_t;
typedef struct ngx_http_phase_handler_s  ngx_http_phase_handler_t;
typedef struct ngx_http_upstream_s    ngx_http_upstream_t;
typedef struct ngx_peer_connection_s  ngx_peer_connection_t;
typedef struct ngx_http_proxy_rewrite_s  ngx_http_proxy_rewrite_t;
typedef struct ngx_http_upstream_srv_conf_s  ngx_http_upstream_srv_conf_t;


// =============== abort_request ===============

// abort_request function enumeration
typedef enum {
    abort_request_ngx_http_fastcgi_abort_request = 47004,
    abort_request_ngx_http_memcached_abort_request = 723949,
    abort_request_ngx_http_proxy_abort_request = 77304,
    abort_request_ngx_http_scgi_abort_request = 163153,
    abort_request_ngx_http_uwsgi_abort_request = 124976
} abort_request_enum;

// =============== add ===============

// add function enumeration
typedef enum {
    add_NULL = 854178,
    add_ngx_epoll_add_event = 361147,
    add_ngx_devpoll_add_event = 623661,
    add_ngx_eventport_add_event = 739829,
    add_ngx_iocp_add_event = 441853,
    add_ngx_kqueue_add_event = 167354,
    add_ngx_poll_add_event = 939297,
    add_ngx_select_add_event = 618818
} add_enum;

// =============== add_conn ===============

// add_conn function enumeration
typedef enum {
    add_conn_NULL = 24139,
    add_conn_ngx_epoll_add_connection = 591010
} add_conn_enum;

// =============== checker ===============

// checker function enumeration
typedef enum {
    checker_ngx_http_core_find_config_phase = 662410,
    checker_ngx_http_core_post_access_phase = 318005,
    checker_ngx_http_core_post_rewrite_phase = 281724,
    checker_ngx_http_core_rewrite_phase = 790356,
    checker_ngx_http_core_content_phase = 235635,
    checker_ngx_http_core_access_phas = 365565,
    checker_ngx_http_core_generic_phase = 73386
} checker_enum;

// =============== cmp ===============

// cmp function enumeration
typedef enum {
    cmp_ngx_http_cmp_conf_addrs = 843416,
    cmp_ngx_http_cmp_locations = 366964,
    cmp_ngx_resolver_cmp_srvs = 775558
} cmp_enum;

// =============== code ===============

// code function enumeration
typedef enum {
    code_ngx_http_script_copy_capture_code = 236789,
    code_ngx_http_script_copy_code = 113759,
    code_ngx_http_script_copy_var_code = 772374,
    code_ngx_http_script_full_name_code = 192891,
    code_ngx_http_script_copy_len_code = 692661,
    code_ngx_http_script_copy_var_len_code = 409275,
    code_ngx_http_script_copy_capture_len_code = 21089,
    code_ngx_http_script_full_name_len_code = 838775
} code_enum;

// =============== create_conf ===============

// create_conf function enumeration
typedef enum {
    create_conf_NULL = 494578,
    create_conf_ngx_core_module_create_conf = 244290,
    create_conf_ngx_epoll_create_conf = 769501,
    create_conf_ngx_event_core_create_conf = 415094
} create_conf_enum;

// =============== create_loc_conf ===============

// create_loc_conf function enumeration
typedef enum {
    create_loc_conf_NULL = 190892,
    create_loc_conf_ngx_http_access_create_loc_conf = 391805,
    create_loc_conf_ngx_http_auth_basic_create_loc_conf = 568934,
    create_loc_conf_ngx_http_autoindex_create_loc_conf = 954887,
    create_loc_conf_ngx_http_browser_create_conf = 428192,
    create_loc_conf_ngx_http_copy_filter_create_conf = 155994,
    create_loc_conf_ngx_http_core_create_loc_conf = 856000,
    create_loc_conf_ngx_http_fastcgi_create_loc_conf = 185838,
    create_loc_conf_ngx_http_headers_create_conf = 167330,
    create_loc_conf_ngx_http_index_create_loc_conf = 50614,
    create_loc_conf_ngx_http_limit_conn_create_conf = 565329,
    create_loc_conf_ngx_http_limit_req_create_conf = 335106,
    create_loc_conf_ngx_http_log_create_loc_conf = 553740,
    create_loc_conf_ngx_http_memcached_create_loc_conf = 607591,
    create_loc_conf_ngx_http_mirror_create_loc_conf = 124768,
    create_loc_conf_ngx_http_proxy_create_loc_conf = 519110,
    create_loc_conf_ngx_http_referer_create_conf = 593036,
    create_loc_conf_ngx_http_scgi_create_loc_conf = 646299,
    create_loc_conf_ngx_http_ssi_create_loc_conf = 385531,
    create_loc_conf_ngx_http_try_files_create_loc_conf = 794341,
    create_loc_conf_ngx_http_userid_create_conf = 221114,
    create_loc_conf_ngx_http_uwsgi_create_loc_conf = 651302
} create_loc_conf_enum;

// =============== create_main_conf ===============

// create_main_conf function enumeration
typedef enum {
    create_main_conf_NULL = 857480,
    create_main_conf_ngx_http_core_create_main_conf = 969826,
    create_main_conf_ngx_http_fastcgi_create_main_conf = 708907,
    create_main_conf_ngx_http_log_create_main_conf = 133219,
    create_main_conf_ngx_http_map_create_conf = 708543,
    create_main_conf_ngx_http_proxy_create_main_conf = 947592,
    create_main_conf_ngx_http_scgi_create_main_conf = 674440,
    create_main_conf_ngx_http_ssi_create_main_conf = 433959,
    create_main_conf_ngx_http_upstream_create_main_conf = 181070,
    create_main_conf_ngx_http_uwsgi_create_main_conf = 708212
} create_main_conf_enum;

// =============== create_srv_conf ===============

// create_srv_conf function enumeration
typedef enum {
    create_srv_conf_NULL = 823095,
    create_srv_conf_ngx_http_core_create_srv_conf = 109889,
    create_srv_conf_ngx_http_upstream_hash_create_conf = 329459,
    create_srv_conf_ngx_http_upstream_keepalive_create_conf = 614162,
    create_srv_conf_ngx_http_upstream_random_create_conf = 782271
} create_srv_conf_enum;

// =============== del ===============

// del function enumeration
typedef enum {
    del_NULL = 961261,
    del_ngx_epoll_del_event = 132066,
    del_ngx_devpoll_del_event = 703679,
    del_ngx_eventport_del_event = 404144,
    del_ngx_kqueue_del_event = 570422,
    del_ngx_poll_del_event = 565570,
    del_ngx_select_del_event = 149227
} del_enum;

// =============== del_conn ===============

// del_conn function enumeration
typedef enum {
    del_conn_NULL = 523280,
    del_conn_ngx_epoll_del_connection = 366766,
    del_conn_ngx_iocp_del_connection = 581957
} del_conn_enum;

// =============== disable ===============

// disable function enumeration
typedef enum {
    disable_NULL = 870739,
    disable_ngx_epoll_del_event = 975037,
    disable_ngx_devpoll_del_event = 731668,
    disable_ngx_eventport_del_event = 956359,
    disable_ngx_kqueue_del_event = 176014,
    disable_ngx_poll_del_event = 97628,
    disable_ngx_select_del_event = 698986
} disable_enum;

// =============== done ===============

// done function enumeration
typedef enum {
    done_NULL = 446622,
    done_ngx_epoll_done = 647312,
    done_ngx_devpoll_done = 947674,
    done_ngx_eventport_done = 536813,
    done_ngx_iocp_done = 801907,
    done_ngx_kqueue_done = 516822,
    done_ngx_poll_done = 868169,
    done_ngx_select_done = 675391
} done_enum;

// =============== enable ===============

// enable function enumeration
typedef enum {
    enable_NULL = 302729,
    enable_ngx_epoll_add_event = 120059,
    enable_ngx_devpoll_add_event = 971537,
    enable_ngx_eventport_add_event = 973646,
    enable_ngx_kqueue_add_event = 562634,
    enable_ngx_poll_add_event = 94295,
    enable_ngx_select_add_event = 980691
} enable_enum;

// =============== exit_master ===============

// exit_master function enumeration
typedef enum {
    exit_master_NULL = 898537
} exit_master_enum;

// =============== exit_process ===============

// exit_process function enumeration
typedef enum {
    exit_process_NULL = 555215,
    exit_process_ngx_conf_flush_files = 860838
} exit_process_enum;

// =============== exit_thread ===============

// exit_thread function enumeration
typedef enum {
    exit_thread_NULL = 932268
} exit_thread_enum;

// =============== file_handler ===============

// file_handler function enumeration
typedef enum {
    file_handler_ngx_http_file_cache_manage_file = 215022
} file_handler_enum;

// =============== flush ===============

// flush function enumeration
typedef enum {
    flush_NULL = 829193,
    flush_ngx_http_log_flush = 654706
} flush_enum;

// =============== get ===============

// get function enumeration
typedef enum {
    get_ngx_http_upstream_get_chash_peer = 912492,
    get_ngx_http_upstream_get_hash_peer = 522295,
    get_ngx_http_upstream_get_ip_hash_peer = 505599,
    get_ngx_http_upstream_get_keepalive_peer = 318757,
    get_ngx_http_upstream_get_least_conn_peer = 921231,
    get_ngx_http_upstream_get_random2_peer = 212981,
    get_ngx_http_upstream_get_random_peer = 712143,
    get_ngx_http_upstream_get_round_robin_peer = 582932
} get_enum;

// =============== get_handler ===============

// get_handler function enumeration
typedef enum {
    get_handler_NULL = 170798,
    get_handler_ngx_http_geo_cidr_variable = 478710,
    get_handler_ngx_http_geo_range_variable = 86225,
    get_handler_ngx_http_map_variable = 626732,
    get_handler_ngx_http_referer_variable = 16211,
    get_handler_ngx_http_split_clients_variable = 859674,
    get_handler_ngx_http_userid_got_variable = 933160,
    get_handler_ngx_http_userid_reset_variable = 109739,
    get_handler_ngx_http_userid_set_variable = 615014,
    get_handler_ngx_http_variable_not_found = 497861
} get_handler_enum;

// =============== get_rr_peer ===============

// get_rr_peer function enumeration
typedef enum {
    get_rr_peer_ngx_http_upstream_get_round_robin_peer = 206021
} get_rr_peer_enum;

// =============== getlen ===============

// getlen function enumeration
typedef enum {
    getlen_NULL = 51332,
    getlen_ngx_http_log_json_variable_getlen = 351638,
    getlen_ngx_http_log_unescaped_variable_getlen = 662126,
    getlen_ngx_http_log_variable_getlen = 752826
} getlen_enum;

// =============== handler ===============

// handler function enumeration
typedef enum {
    handler_ngx_channel_handler = 745103,
    handler_NULL = 953094,
    handler_ngx_accept_log_error = 897748,
    handler_ngx_cache_loader_process_handler = 115012,
    handler_ngx_cache_manager_process_handler = 214733,
    handler_ngx_clean_old_cycles = 753401,
    handler_ngx_cleanup_environment = 766017,
    handler_ngx_cleanup_environment_variable = 61918,
    handler_ngx_delete_udp_connection = 185617,
    handler_ngx_epoll_notify_handler = 890223,
    handler_ngx_event_accept = 166590,
    handler_ngx_event_recvmsg = 770471,
    handler_ngx_http_add_header = 329528,
    handler_ngx_http_close_connection = 420667,
    handler_ngx_http_core_type = 102044,
    handler_ngx_http_empty_gif_handler = 73265,
    handler_ngx_http_empty_handler = 71231,
    handler_ngx_http_fastcgi_handler = 386242,
    handler_ngx_http_file_cache_cleanup = 622423,
    handler_ngx_http_file_cache_lock_wait_handler = 796223,
    handler_ngx_http_geo = 660317,
    handler_ngx_http_init_connection = 564024,
    handler_ngx_http_keepalive_handler = 317429,
    handler_ngx_http_limit_conn_cleanup = 791046,
    handler_ngx_http_lingering_close_handler = 135802,
    handler_ngx_http_log_error = 34928,
    handler_ngx_http_log_flush_handler = 359756,
    handler_ngx_http_map = 99880,
    handler_ngx_http_memcached_handler = 25469,
    handler_ngx_http_process_request_headers = 323309,
    handler_ngx_http_process_request_line = 789474,
    handler_ngx_http_proxy_handler = 779085,
    handler_ngx_http_proxy_rewrite_complex_handler = 81284,
    handler_ngx_http_proxy_rewrite_domain_handler = 480156,
    handler_ngx_http_request_handler = 984092,
    handler_ngx_http_scgi_handler = 231464,
    handler_ngx_http_set_lingering_close = 645677,
    handler_ngx_http_split_clients = 405247,
    handler_ngx_http_ssi_set_variable = 770690,
    handler_ngx_http_ssi_stub_output = 797904,
    handler_ngx_http_upstream_cleanup = 335034,
    handler_ngx_http_upstream_handler = 906654,
    handler_ngx_http_upstream_keepalive_close = 79224,
    handler_ngx_http_upstream_keepalive_close_handler = 660100,
    handler_ngx_http_upstream_keepalive_dummy_handler = 662815,
    handler_ngx_http_upstream_resolve_handler = 706765,
    handler_ngx_http_upstream_zone_resolve_handler = 731448,
    handler_ngx_http_upstream_zone_resolve_timer = 894482,
    handler_ngx_http_uwsgi_handler = 430369,
    handler_ngx_http_wait_request_handler = 409541,
    handler_ngx_linux_sendfile_thread_handler = 591112,
    handler_ngx_open_file_cache_cleanup = 676374,
    handler_ngx_open_file_cache_remove = 947713,
    handler_ngx_open_file_cleanup = 566469,
    handler_ngx_pool_cleanup_file = 619671,
    handler_ngx_resolver_cleanup = 491439,
    handler_ngx_resolver_log_error = 489456,
    handler_ngx_resolver_resend_handler = 815351,
    handler_ngx_resolver_srv_names_handler = 168749,
    handler_ngx_resolver_tcp_read = 932484,
    handler_ngx_resolver_tcp_write = 360657,
    handler_ngx_resolver_timeout_handler = 731493,
    handler_ngx_resolver_udp_read = 154881,
    handler_ngx_shutdown_timer_handler = 168251,
    handler_ngx_syslog_cleanup = 543373,
    handler_ngx_syslog_log_error = 166166,
    handler_ngx_thread_read_handler = 547973,
    handler_ngx_thread_write_chain_to_file_handler = 459630,
    handler_ngx_unload_module = 51272
} handler_enum;

// =============== init ===============

// init function enumeration
typedef enum {
    init_NULL = 658359,
    init_ngx_epoll_init = 768219,
    init_ngx_http_file_cache_init = 467949,
    init_ngx_http_limit_conn_init_zone = 291308,
    init_ngx_http_upstream_init_zone = 121716,
    init_ngx_http_limit_req_init_zone = 392445,
    init_ngx_http_upstream_init_chash_peer = 832387,
    init_ngx_http_upstream_init_hash_peer = 904155,
    init_ngx_http_upstream_init_ip_hash_peer = 882269,
    init_ngx_http_upstream_init_keepalive_peer = 851411,
    init_ngx_http_upstream_init_least_conn_peer = 558024,
    init_ngx_http_upstream_init_random_peer = 146447,
    init_ngx_http_upstream_init_round_robin_peer = 27519
} init_enum;

// =============== init_conf ===============

// init_conf function enumeration
typedef enum {
    init_conf_NULL = 947158,
    init_conf_ngx_core_module_init_conf = 946855,
    init_conf_ngx_epoll_init_conf = 678815,
    init_conf_ngx_event_core_init_conf = 446867,
    init_conf_ngx_event_init_conf = 398011
} init_conf_enum;

// =============== init_handler ===============

// init_handler function enumeration
typedef enum {
    init_handler_NULL = 618853
} init_handler_enum;

// =============== init_main_conf ===============

// init_main_conf function enumeration
typedef enum {
    init_main_conf_NULL = 647264,
    init_main_conf_ngx_http_core_init_main_conf = 132036,
    init_main_conf_ngx_http_ssi_init_main_conf = 903160,
    init_main_conf_ngx_http_upstream_init_main_conf = 767192
} init_main_conf_enum;

// =============== init_master ===============

// init_master function enumeration
typedef enum {
    init_master_NULL = 62025
} init_master_enum;

// =============== init_module ===============

// init_module function enumeration
typedef enum {
    init_module_NULL = 835067,
    init_module_ngx_event_module_init = 964390
} init_module_enum;

// =============== init_process ===============

// init_process function enumeration
typedef enum {
    init_process_NULL = 797896,
    init_process_ngx_event_process_init = 559567,
    init_process_ngx_http_upstream_zone_init_worker = 737453,
    init_process_ngx_http_userid_init_worker = 917215
} init_process_enum;

// =============== init_thread ===============

// init_thread function enumeration
typedef enum {
    init_thread_NULL = 714791
} init_thread_enum;

// =============== init_upstream ===============

// init_upstream function enumeration
typedef enum {
    init_upstream_ngx_http_upstream_init_chash = 594269,
    init_upstream_ngx_http_upstream_init_hash = 217418,
    init_upstream_ngx_http_upstream_init_ip_hash = 426724,
    init_upstream_ngx_http_upstream_init_keepalive = 505344,
    init_upstream_ngx_http_upstream_init_least_conn = 877462,
    init_upstream_ngx_http_upstream_init_random = 336868
} init_upstream_enum;

// =============== input_filter ===============

// input_filter function enumeration
typedef enum {
    input_filter_ngx_event_pipe_copy_input_filter = 536553,
    input_filter_ngx_http_fastcgi_input_filter = 929452,
    input_filter_ngx_http_fastcgi_non_buffered_filter = 170399,
    input_filter_ngx_http_memcached_filter = 401166,
    input_filter_ngx_http_proxy_chunked_filter = 934772,
    input_filter_ngx_http_proxy_copy_filter = 322319,
    input_filter_ngx_http_proxy_non_buffered_chunked_filter = 695031,
    input_filter_ngx_http_proxy_non_buffered_copy_filter = 911273,
    input_filter_ngx_http_upstream_non_buffered_filter = 790747
} input_filter_enum;

// =============== input_filter_init ===============

// input_filter_init function enumeration
typedef enum {
    input_filter_init_ngx_http_fastcgi_input_filter_init = 74512,
    input_filter_init_ngx_http_memcached_filter_init = 134381,
    input_filter_init_ngx_http_proxy_input_filter_init = 324418,
    input_filter_init_ngx_http_scgi_input_filter_init = 301691,
    input_filter_init_ngx_http_upstream_non_buffered_filter_init = 994382,
    input_filter_init_ngx_http_uwsgi_input_filter_init = 936614
} input_filter_init_enum;

// =============== loader ===============

// loader function enumeration
typedef enum {
    loader_NULL = 11182,
    loader_ngx_http_file_cache_loader = 705410
} loader_enum;

// =============== log_handler ===============

// log_handler function enumeration
typedef enum {
    log_handler_ngx_http_log_error_handler = 109122
} log_handler_enum;

// =============== manager ===============

// manager function enumeration
typedef enum {
    manager_ngx_http_file_cache_manager = 228143
} manager_enum;

// =============== merge_loc_conf ===============

// merge_loc_conf function enumeration
typedef enum {
    merge_loc_conf_NULL = 919268,
    merge_loc_conf_ngx_http_access_merge_loc_conf = 184450,
    merge_loc_conf_ngx_http_auth_basic_merge_loc_conf = 664039,
    merge_loc_conf_ngx_http_autoindex_merge_loc_conf = 188544,
    merge_loc_conf_ngx_http_browser_merge_conf = 311191,
    merge_loc_conf_ngx_http_copy_filter_merge_conf = 785948,
    merge_loc_conf_ngx_http_core_merge_loc_conf = 409129,
    merge_loc_conf_ngx_http_fastcgi_merge_loc_conf = 158501,
    merge_loc_conf_ngx_http_headers_merge_conf = 307047,
    merge_loc_conf_ngx_http_index_merge_loc_conf = 126971,
    merge_loc_conf_ngx_http_limit_conn_merge_conf = 412246,
    merge_loc_conf_ngx_http_limit_req_merge_conf = 598535,
    merge_loc_conf_ngx_http_log_merge_loc_conf = 829616,
    merge_loc_conf_ngx_http_memcached_merge_loc_conf = 856396,
    merge_loc_conf_ngx_http_mirror_merge_loc_conf = 286246,
    merge_loc_conf_ngx_http_proxy_merge_loc_conf = 789217,
    merge_loc_conf_ngx_http_referer_merge_conf = 716086,
    merge_loc_conf_ngx_http_scgi_merge_loc_conf = 895206,
    merge_loc_conf_ngx_http_ssi_merge_loc_conf = 233179,
    merge_loc_conf_ngx_http_userid_merge_conf = 89734,
    merge_loc_conf_ngx_http_uwsgi_merge_loc_conf = 171226
} merge_loc_conf_enum;

// =============== merge_srv_conf ===============

// merge_srv_conf function enumeration
typedef enum {
    merge_srv_conf_NULL = 375862,
    merge_srv_conf_ngx_http_core_merge_srv_conf = 105943
} merge_srv_conf_enum;

// =============== modules_n ===============

// modules_n function enumeration
typedef enum {
    modules_n_ngx_modules_n = 534424
} modules_n_enum;

// =============== notify ===============

// notify function enumeration
typedef enum {
    notify_NULL = 645612,
    notify_ngx_epoll_notify = 313338,
    notify_ngx_eventport_notify = 246922
} notify_enum;

// =============== output_filter ===============

// output_filter function enumeration
typedef enum {
    output_filter_ngx_chain_writer = 338313,
    output_filter_ngx_http_fastcgi_body_output_filter = 379839,
    output_filter_ngx_http_proxy_body_output_filter = 993123,
    output_filter_ngx_http_upstream_output_filter = 531479
} output_filter_enum;

// =============== post_handler ===============

// post_handler function enumeration
typedef enum {
    post_handler_ngx_http_mirror_body_handler = 88048,
    post_handler_ngx_http_upstream_init = 102022,
    post_handler_ngx_conf_check_num_bounds = 694416
} post_handler_enum;

// =============== post_tree_handler ===============

// post_tree_handler function enumeration
typedef enum {
    post_tree_handler_ngx_http_file_cache_noop = 123969
} post_tree_handler_enum;

// =============== postconfiguration ===============

// postconfiguration function enumeration
typedef enum {
    postconfiguration_NULL = 332215,
    postconfiguration_ngx_http_access_init = 677465,
    postconfiguration_ngx_http_auth_basic_init = 522151,
    postconfiguration_ngx_http_autoindex_init = 808441,
    postconfiguration_ngx_http_chunked_filter_init = 233517,
    postconfiguration_ngx_http_copy_filter_init = 154495,
    postconfiguration_ngx_http_core_postconfiguration = 640015,
    postconfiguration_ngx_http_header_filter_init = 771657,
    postconfiguration_ngx_http_headers_filter_init = 801715,
    postconfiguration_ngx_http_index_init = 75255,
    postconfiguration_ngx_http_limit_conn_init = 652784,
    postconfiguration_ngx_http_limit_req_init = 158420,
    postconfiguration_ngx_http_log_init = 80689,
    postconfiguration_ngx_http_mirror_init = 81648,
    postconfiguration_ngx_http_not_modified_filter_init = 912850,
    postconfiguration_ngx_http_postpone_filter_init = 373123,
    postconfiguration_ngx_http_range_body_filter_init = 543788,
    postconfiguration_ngx_http_range_header_filter_init = 854918,
    postconfiguration_ngx_http_ssi_filter_init = 193588,
    postconfiguration_ngx_http_static_init = 861475,
    postconfiguration_ngx_http_try_files_init = 804157,
    postconfiguration_ngx_http_userid_init = 178580,
    postconfiguration_ngx_http_write_filter_init = 784809
} postconfiguration_enum;

// =============== pre_tree_handler ===============

// pre_tree_handler function enumeration
typedef enum {
    pre_tree_handler_ngx_http_file_cache_manage_directory = 807568
} pre_tree_handler_enum;

// =============== preconfiguration ===============

// preconfiguration function enumeration
typedef enum {
    preconfiguration_NULL = 993516,
    preconfiguration_ngx_http_browser_add_variables = 769328,
    preconfiguration_ngx_http_core_preconfiguration = 581904,
    preconfiguration_ngx_http_fastcgi_add_variables = 935171,
    preconfiguration_ngx_http_limit_conn_add_variables = 947372,
    preconfiguration_ngx_http_limit_req_add_variables = 513962,
    preconfiguration_ngx_http_proxy_add_variables = 164927,
    preconfiguration_ngx_http_referer_add_variables = 890205,
    preconfiguration_ngx_http_ssi_preconfiguration = 831861,
    preconfiguration_ngx_http_upstream_add_variables = 891013,
    preconfiguration_ngx_http_userid_add_variables = 165680
} preconfiguration_enum;

// =============== proc ===============

// proc function enumeration
typedef enum {
    proc_ngx_cache_manager_process_cycle = 250620,
    proc_ngx_execute_proc = 808873,
    proc_ngx_worker_process_cycle = 634679
} proc_enum;

// =============== process_events ===============

// process_events function enumeration
typedef enum {
    process_events_NULL = 35281
} process_events_enum;

// =============== process_header ===============

// process_header function enumeration
typedef enum {
    process_header_ngx_http_fastcgi_process_header = 124059,
    process_header_ngx_http_memcached_process_header = 149788,
    process_header_ngx_http_proxy_process_header = 596733,
    process_header_ngx_http_proxy_process_status_line = 265319,
    process_header_ngx_http_scgi_process_header = 428817,
    process_header_ngx_http_scgi_process_status_line = 236498,
    process_header_ngx_http_uwsgi_process_header = 394249,
    process_header_ngx_http_uwsgi_process_status_line = 127708
} process_header_enum;

// =============== read_event_handler ===============

// read_event_handler function enumeration
typedef enum {
    read_event_handler_ngx_http_block_reading = 107081,
    read_event_handler_ngx_http_discarded_request_body_handler = 137881,
    read_event_handler_ngx_http_read_client_request_body_handler = 553897,
    read_event_handler_ngx_http_request_empty_handler = 290535,
    read_event_handler_ngx_http_test_reading = 323760,
    read_event_handler_ngx_http_upstream_process_header = 873998,
    read_event_handler_ngx_http_upstream_process_non_buffered_upstream = 925784,
    read_event_handler_ngx_http_upstream_process_upstream = 984514,
    read_event_handler_ngx_http_upstream_rd_check_broken_connection = 75914,
    read_event_handler_ngx_http_upstream_read_request_handler = 394189,
    read_event_handler_ngx_http_upstream_upgraded_read_downstream = 473046,
    read_event_handler_ngx_http_upstream_upgraded_read_upstream = 620237
} read_event_handler_enum;

// =============== recv ===============

// recv function enumeration
typedef enum {
    recv_ngx_recv = 60453,
    recv_ngx_udp_recv = 222864,
    recv_ngx_udp_shared_recv = 807982,
    recv_ngx_unix_recv = 240972
} recv_enum;

// =============== recv_chain ===============

// recv_chain function enumeration
typedef enum {
    recv_chain_ngx_readv_chain = 336510,
    recv_chain_ngx_recv_chain = 478913
} recv_chain_enum;

// =============== reinit_request ===============

// reinit_request function enumeration
typedef enum {
    reinit_request_ngx_http_fastcgi_reinit_request = 652095,
    reinit_request_ngx_http_memcached_reinit_request = 704470,
    reinit_request_ngx_http_proxy_reinit_request = 418297,
    reinit_request_ngx_http_scgi_reinit_request = 415366,
    reinit_request_ngx_http_uwsgi_reinit_request = 537154
} reinit_request_enum;

// =============== rewrite_cookie ===============

// rewrite_cookie function enumeration
typedef enum {
    rewrite_cookie_ngx_http_proxy_rewrite_cookie = 782750
} rewrite_cookie_enum;

// =============== rewrite_redirect ===============

// rewrite_redirect function enumeration
typedef enum {
    rewrite_redirect_ngx_http_proxy_rewrite_redirect = 685750
} rewrite_redirect_enum;

// =============== run ===============

// run function enumeration
typedef enum {
    run_ngx_http_log_copy_long = 548425,
    run_ngx_http_log_copy_short = 445518,
    run_ngx_http_log_json_variable = 270790,
    run_ngx_http_log_unescaped_variable = 36650,
    run_ngx_http_log_variable = 208722
} run_enum;

// =============== save_session ===============

// save_session function enumeration
typedef enum {
    save_session_ngx_http_upstream_empty_save_session = 813901,
    save_session_ngx_http_upstream_keepalive_save_session = 243610,
    save_session_ngx_http_upstream_save_round_robin_peer_session = 337672,
    save_session_ngx_http_upstream_ssl_save_session = 880069
} save_session_enum;

// =============== saved_state ===============

// saved_state function enumeration
typedef enum {
    saved_state_ssi_double_quoted_value_state = 882945,
    saved_state_ssi_quoted_value_state = 637889
} saved_state_enum;

// =============== send ===============

// send function enumeration
typedef enum {
    send_ngx_send = 729233,
    send_ngx_udp_send = 354203,
    send_ngx_unix_send = 633888
} send_enum;

// =============== send_chain ===============

// send_chain function enumeration
typedef enum {
    send_chain_ngx_send_chain = 896307,
    send_chain_ngx_udp_send_chain = 622808,
    send_chain_ngx_writev_chain = 489322
} send_chain_enum;

// =============== set ===============

// set function enumeration
typedef enum {
    set_ngx_conf_include = 984543,
    set_ngx_conf_set_access_slot = 493731,
    set_ngx_conf_set_bitmask_slot = 109986,
    set_ngx_conf_set_bufs_slot = 800279,
    set_ngx_conf_set_enum_slot = 433563,
    set_ngx_conf_set_flag_slot = 842066,
    set_ngx_conf_set_keyval_slot = 62201,
    set_ngx_conf_set_msec_slot = 342646,
    set_ngx_conf_set_num_slot = 528290,
    set_ngx_conf_set_off_slot = 999165,
    set_ngx_conf_set_path_slot = 218219,
    set_ngx_conf_set_sec_slot = 829861,
    set_ngx_conf_set_size_slot = 288455,
    set_ngx_conf_set_str_array_slot = 656557,
    set_ngx_conf_set_str_slot = 28197,
    set_ngx_conf_split_clients_block = 843542,
    set_ngx_error_log = 638700,
    set_ngx_event_connections = 787713,
    set_ngx_event_debug_connection = 815462,
    set_ngx_event_use = 780969,
    set_ngx_events_block = 511092,
    set_ngx_http_access_rule = 827193,
    set_ngx_http_ancient_browser = 320242,
    set_ngx_http_ancient_browser_value = 24827,
    set_ngx_http_auth_basic_user_file = 938617,
    set_ngx_http_block = 577875,
    set_ngx_http_core_directio = 862447,
    set_ngx_http_core_error_log = 750970,
    set_ngx_http_core_error_page = 929197,
    set_ngx_http_core_internal = 72577,
    set_ngx_http_core_keepalive = 762368,
    set_ngx_http_core_limit_except = 518405,
    set_ngx_http_core_listen = 541028,
    set_ngx_http_core_location = 311911,
    set_ngx_http_core_open_file_cache = 100304,
    set_ngx_http_core_resolver = 284888,
    set_ngx_http_core_root = 668487,
    set_ngx_http_core_server = 475160,
    set_ngx_http_core_server_name = 672045,
    set_ngx_http_core_set_aio = 60142,
    set_ngx_http_core_types = 649240,
    set_ngx_http_disable_symlinks = 633277,
    set_ngx_http_empty_gif = 491554,
    set_ngx_http_fastcgi_cache = 466141,
    set_ngx_http_fastcgi_cache_key = 547956,
    set_ngx_http_fastcgi_pass = 372369,
    set_ngx_http_fastcgi_split_path_info = 535433,
    set_ngx_http_fastcgi_store = 785865,
    set_ngx_http_file_cache_set_slot = 249965,
    set_ngx_http_file_cache_valid_set_slot = 847636,
    set_ngx_http_geo_block = 273868,
    set_ngx_http_gzip_disable = 642791,
    set_ngx_http_headers_add = 356901,
    set_ngx_http_headers_expires = 316610,
    set_ngx_http_index_set_index = 587717,
    set_ngx_http_limit_conn = 189550,
    set_ngx_http_limit_conn_zone = 758179,
    set_ngx_http_limit_req = 379846,
    set_ngx_http_limit_req_zone = 833698,
    set_ngx_http_log_open_file_cache = 959955,
    set_ngx_http_log_set_format = 943393,
    set_ngx_http_log_set_log = 476122,
    set_ngx_http_map_block = 992418,
    set_ngx_http_memcached_pass = 48812,
    set_ngx_http_mirror = 69744,
    set_ngx_http_modern_browser = 295075,
    set_ngx_http_modern_browser_value = 368328,
    set_ngx_http_proxy_cache = 411176,
    set_ngx_http_proxy_cache_key = 995155,
    set_ngx_http_proxy_cookie_domain = 35387,
    set_ngx_http_proxy_cookie_flags = 950796,
    set_ngx_http_proxy_cookie_path = 743473,
    set_ngx_http_proxy_pass = 987828,
    set_ngx_http_proxy_redirect = 741005,
    set_ngx_http_proxy_ssl_certificate_cache = 551220,
    set_ngx_http_proxy_ssl_password_file = 538181,
    set_ngx_http_proxy_store = 579328,
    set_ngx_http_scgi_cache = 423179,
    set_ngx_http_scgi_cache_key = 725254,
    set_ngx_http_scgi_pass = 853753,
    set_ngx_http_scgi_store = 580796,
    set_ngx_http_set_complex_value_size_slot = 170516,
    set_ngx_http_set_complex_value_slot = 872332,
    set_ngx_http_set_complex_value_zero_slot = 674220,
    set_ngx_http_set_predicate_slot = 321560,
    set_ngx_http_try_files = 880479,
    set_ngx_http_types_slot = 119472,
    set_ngx_http_upstream = 242138,
    set_ngx_http_upstream_bind_set_slot = 277448,
    set_ngx_http_upstream_hash = 66986,
    set_ngx_http_upstream_ip_hash = 38435,
    set_ngx_http_upstream_keepalive = 391342,
    set_ngx_http_upstream_least_conn = 791672,
    set_ngx_http_upstream_param_set_slot = 587578,
    set_ngx_http_upstream_random = 465861,
    set_ngx_http_upstream_resolver = 156800,
    set_ngx_http_upstream_server = 39573,
    set_ngx_http_upstream_zone = 164708,
    set_ngx_http_userid_expires = 507169,
    set_ngx_http_userid_mark = 934561,
    set_ngx_http_uwsgi_cache = 312245,
    set_ngx_http_uwsgi_cache_key = 971336,
    set_ngx_http_uwsgi_pass = 115222,
    set_ngx_http_uwsgi_ssl_certificate_cache = 557699,
    set_ngx_http_uwsgi_ssl_password_file = 297302,
    set_ngx_http_uwsgi_store = 791707,
    set_ngx_http_valid_referers = 131254,
    set_ngx_load_module = 807868,
    set_ngx_set_cpu_affinity = 193418,
    set_ngx_set_env = 702780,
    set_ngx_set_priority = 846266,
    set_ngx_set_user = 842207,
    set_ngx_set_worker_processes = 116501
} set_enum;

// =============== spec_handler ===============

// spec_handler function enumeration
typedef enum {
    spec_handler_ngx_http_file_cache_delete_file = 446252
} spec_handler_enum;

// =============== udp_recv ===============

// udp_recv function enumeration
typedef enum {
    udp_recv_ngx_udp_unix_recv = 468469
} udp_recv_enum;

// =============== udp_send ===============

// udp_send function enumeration
typedef enum {
    udp_send_ngx_udp_unix_send = 772458
} udp_send_enum;

// =============== udp_send_chain ===============

// udp_send_chain function enumeration
typedef enum {
    udp_send_chain_ngx_udp_unix_sendmsg_chain = 847082
} udp_send_chain_enum;

// =============== worker_processes ===============

// worker_processes function enumeration
typedef enum {
    worker_processes_ngx_ncpu = 987323
} worker_processes_enum;

// =============== write ===============

// write function enumeration
typedef enum {
    write_ngx_syslog_dummy_event = 84999
} write_enum;

// =============== write_event_handler ===============

// write_event_handler function enumeration
typedef enum {
    write_event_handler_ngx_http_core_auth_delay_handler = 339308,
    write_event_handler_ngx_http_core_run_phases = 141098,
    write_event_handler_ngx_http_handler = 900845,
    write_event_handler_ngx_http_limit_req_delay = 35099,
    write_event_handler_ngx_http_request_empty_handler = 439107,
    write_event_handler_ngx_http_request_finalizer = 486433,
    write_event_handler_ngx_http_terminate_handler = 771914,
    write_event_handler_ngx_http_upstream_dummy_handler = 346082,
    write_event_handler_ngx_http_upstream_early_hints_writer = 150135,
    write_event_handler_ngx_http_upstream_init_request = 120819,
    write_event_handler_ngx_http_upstream_process_downstream = 520579,
    write_event_handler_ngx_http_upstream_process_non_buffered_downstream = 982583,
    write_event_handler_ngx_http_upstream_send_request_handler = 44826,
    write_event_handler_ngx_http_upstream_upgraded_write_downstream = 55917,
    write_event_handler_ngx_http_upstream_upgraded_write_upstream = 734183,
    write_event_handler_ngx_http_upstream_wr_check_broken_connection = 171852,
    write_event_handler_ngx_http_writer = 361434
} write_event_handler_enum;

#endif /* NGINX_SIGNATURE_H */
