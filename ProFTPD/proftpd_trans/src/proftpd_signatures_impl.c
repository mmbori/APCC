/*
 * Function Pointer Signatures - Implementation
 * Auto-generated - DO NOT EDIT
 */

#include "proftpd_signatures_header.h"

// =============== abort ===============

// abort signatures
int abort_signatures[2] = {0};

// Initialize abort signatures
void init_abort_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        abort_signatures[i] = (int)rand();
    }

    // [0] abort_core_netio_abort_cb = core_netio_abort_cb
    // [1] abort_tls_netio_abort_cb = tls_netio_abort_cb
}

// =============== access ===============

// access signatures
int access_signatures[3] = {0};

// Initialize access signatures
void init_access_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        access_signatures[i] = (int)rand();
    }

    // [0] access_facl_fsio_access = facl_fsio_access
    // [1] access_robots_fsio_access = robots_fsio_access
    // [2] access_sys_access = sys_access
}

// =============== action_cb ===============

// action_cb signatures
int action_cb_signatures[263] = {0};

// Initialize action_cb signatures
void init_action_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 263; i++) {
        action_cb_signatures[i] = (int)rand();
    }

    // [0] action_cb_NULL = NULL
    // [1] action_cb_array_item_fail = array_item_fail
    // [2] action_cb_array_item_ok = array_item_ok
    // [3] action_cb_auth_exit_ev = auth_exit_ev
    // [4] action_cb_auth_otp_exit_ev = auth_otp_exit_ev
    // [5] action_cb_auth_otp_mod_unload_ev = auth_otp_mod_unload_ev
    // [6] action_cb_auth_otp_sess_reinit_ev = auth_otp_sess_reinit_ev
    // [7] action_cb_auth_pam_exit_ev = auth_pam_exit_ev
    // [8] action_cb_auth_sess_reinit_ev = auth_sess_reinit_ev
    // [9] action_cb_auth_unix_exit_ev = auth_unix_exit_ev
    // [10] action_cb_auth_unix_sess_reinit_ev = auth_unix_sess_reinit_ev
    // [11] action_cb_authfile_sess_reinit_ev = authfile_sess_reinit_ev
    // [12] action_cb_ban_anonrejectpasswords_ev = ban_anonrejectpasswords_ev
    // [13] action_cb_ban_badprotocol_ev = ban_badprotocol_ev
    // [14] action_cb_ban_clientconnectrate_ev = ban_clientconnectrate_ev
    // [15] action_cb_ban_emptypassword_ev = ban_emptypassword_ev
    // [16] action_cb_ban_maxclientsperclass_ev = ban_maxclientsperclass_ev
    // [17] action_cb_ban_maxclientsperhost_ev = ban_maxclientsperhost_ev
    // [18] action_cb_ban_maxclientsperuser_ev = ban_maxclientsperuser_ev
    // [19] action_cb_ban_maxcmdrate_ev = ban_maxcmdrate_ev
    // [20] action_cb_ban_maxconnperhost_ev = ban_maxconnperhost_ev
    // [21] action_cb_ban_maxhostsperuser_ev = ban_maxhostsperuser_ev
    // [22] action_cb_ban_maxloginattempts_ev = ban_maxloginattempts_ev
    // [23] action_cb_ban_maxloginattemptsfromuser_ev = ban_maxloginattemptsfromuser_ev
    // [24] action_cb_ban_mod_unload_ev = ban_mod_unload_ev
    // [25] action_cb_ban_postparse_ev = ban_postparse_ev
    // [26] action_cb_ban_restart_ev = ban_restart_ev
    // [27] action_cb_ban_rootlogin_ev = ban_rootlogin_ev
    // [28] action_cb_ban_sess_reinit_ev = ban_sess_reinit_ev
    // [29] action_cb_ban_shutdown_ev = ban_shutdown_ev
    // [30] action_cb_ban_timeoutidle_ev = ban_timeoutidle_ev
    // [31] action_cb_ban_timeoutlogin_ev = ban_timeoutlogin_ev
    // [32] action_cb_ban_timeoutnoxfer_ev = ban_timeoutnoxfer_ev
    // [33] action_cb_ban_tlshandshake_ev = ban_tlshandshake_ev
    // [34] action_cb_ban_unhandledcmd_ev = ban_unhandledcmd_ev
    // [35] action_cb_ban_userdefined_ev = ban_userdefined_ev
    // [36] action_cb_cap_sess_reinit_ev = cap_sess_reinit_ev
    // [37] action_cb_core_chroot_ev = core_chroot_ev
    // [38] action_cb_core_connected_ev = core_connected_ev
    // [39] action_cb_core_exit_ev = core_exit_ev
    // [40] action_cb_core_postparse_ev = core_postparse_ev
    // [41] action_cb_core_restart_ev = core_restart_ev
    // [42] action_cb_core_startup_ev = core_startup_ev
    // [43] action_cb_ctrls_admin_mod_unload_ev = ctrls_admin_mod_unload_ev
    // [44] action_cb_ctrls_admin_restart_ev = ctrls_admin_restart_ev
    // [45] action_cb_ctrls_admin_startup_ev = ctrls_admin_startup_ev
    // [46] action_cb_ctrls_postparse_ev = ctrls_postparse_ev
    // [47] action_cb_ctrls_restart_ev = ctrls_restart_ev
    // [48] action_cb_ctrls_shutdown_ev = ctrls_shutdown_ev
    // [49] action_cb_ctrls_test2_cb = ctrls_test2_cb
    // [50] action_cb_ctrls_test_cb = ctrls_test_cb
    // [51] action_cb_define_restart_ev = define_restart_ev
    // [52] action_cb_deflate_sess_reinit_ev = deflate_sess_reinit_ev
    // [53] action_cb_delay_connect_ev = delay_connect_ev
    // [54] action_cb_delay_handle_delay = delay_handle_delay
    // [55] action_cb_delay_mod_unload_ev = delay_mod_unload_ev
    // [56] action_cb_delay_postparse_ev = delay_postparse_ev
    // [57] action_cb_delay_restart_ev = delay_restart_ev
    // [58] action_cb_delay_sess_reinit_ev = delay_sess_reinit_ev
    // [59] action_cb_delay_shutdown_ev = delay_shutdown_ev
    // [60] action_cb_digest_data_xfer_ev = digest_data_xfer_ev
    // [61] action_cb_digest_mod_unload_ev = digest_mod_unload_ev
    // [62] action_cb_digest_sess_reinit_ev = digest_sess_reinit_ev
    // [63] action_cb_dnsbl_sess_reinit_ev = dnsbl_sess_reinit_ev
    // [64] action_cb_do_cb = do_cb
    // [65] action_cb_do_with_remove_cb = do_with_remove_cb
    // [66] action_cb_dso_restart_ev = dso_restart_ev
    // [67] action_cb_dynmasq_handle_dynmasq = dynmasq_handle_dynmasq
    // [68] action_cb_dynmasq_mod_unload_ev = dynmasq_mod_unload_ev
    // [69] action_cb_dynmasq_postparse_ev = dynmasq_postparse_ev
    // [70] action_cb_dynmasq_restart_ev = dynmasq_restart_ev
    // [71] action_cb_event_cb = event_cb
    // [72] action_cb_event_cb2 = event_cb2
    // [73] action_cb_event_cb3 = event_cb3
    // [74] action_cb_exec_any_ev = exec_any_ev
    // [75] action_cb_exec_mod_unload_ev = exec_mod_unload_ev
    // [76] action_cb_exec_postparse_ev = exec_postparse_ev
    // [77] action_cb_exec_restart_ev = exec_restart_ev
    // [78] action_cb_exec_sess_reinit_ev = exec_sess_reinit_ev
    // [79] action_cb_facl_mod_unload_ev = facl_mod_unload_ev
    // [80] action_cb_facl_postparse_ev = facl_postparse_ev
    // [81] action_cb_facl_restart_ev = facl_restart_ev
    // [82] action_cb_facts_sess_reinit_ev = facts_sess_reinit_ev
    // [83] action_cb_filetab_mod_unload_ev = filetab_mod_unload_ev
    // [84] action_cb_forensic_exit_ev = forensic_exit_ev
    // [85] action_cb_forensic_log_ev = forensic_log_ev
    // [86] action_cb_forensic_mod_unload_ev = forensic_mod_unload_ev
    // [87] action_cb_forensic_sess_reinit_ev = forensic_sess_reinit_ev
    // [88] action_cb_fscache_mod_unload_ev = fscache_mod_unload_ev
    // [89] action_cb_fxp_handle_abort = fxp_handle_abort
    // [90] action_cb_geoip_mod_unload_ev = geoip_mod_unload_ev
    // [91] action_cb_geoip_postparse_ev = geoip_postparse_ev
    // [92] action_cb_geoip_restart_ev = geoip_restart_ev
    // [93] action_cb_ident_sess_reinit_ev = ident_sess_reinit_ev
    // [94] action_cb_ifsess_chroot_ev = ifsess_chroot_ev
    // [95] action_cb_ifsess_mod_unload_ev = ifsess_mod_unload_ev
    // [96] action_cb_ifsess_postparse_ev = ifsess_postparse_ev
    // [97] action_cb_lang_postparse_ev = lang_postparse_ev
    // [98] action_cb_lang_restart_ev = lang_restart_ev
    // [99] action_cb_ldap_mod_unload_ev = ldap_mod_unload_ev
    // [100] action_cb_ldap_postparse_ev = ldap_postparse_ev
    // [101] action_cb_ldap_sess_reinit_ev = ldap_sess_reinit_ev
    // [102] action_cb_ldap_shutdown_ev = ldap_shutdown_ev
    // [103] action_cb_ldaptab_mod_unload_ev = ldaptab_mod_unload_ev
    // [104] action_cb_log_exit_ev = log_exit_ev
    // [105] action_cb_log_fmt_extra_iter_cb = log_fmt_extra_iter_cb
    // [106] action_cb_log_postparse_ev = log_postparse_ev
    // [107] action_cb_log_restart_ev = log_restart_ev
    // [108] action_cb_log_sess_reinit_ev = log_sess_reinit_ev
    // [109] action_cb_log_xfer_stalled_ev = log_xfer_stalled_ev
    // [110] action_cb_mcache_exit_ev = mcache_exit_ev
    // [111] action_cb_mcache_restart_ev = mcache_restart_ev
    // [112] action_cb_mcache_sess_reinit_ev = mcache_sess_reinit_ev
    // [113] action_cb_object_item_fail = object_item_fail
    // [114] action_cb_object_item_ok = object_item_ok
    // [115] action_cb_pool_visitf = pool_visitf
    // [116] action_cb_qos_ctrl_listen_ev = qos_ctrl_listen_ev
    // [117] action_cb_qos_data_connect_ev = qos_data_connect_ev
    // [118] action_cb_qos_data_listen_ev = qos_data_listen_ev
    // [119] action_cb_qos_mod_unload_ev = qos_mod_unload_ev
    // [120] action_cb_qos_sess_reinit_ev = qos_sess_reinit_ev
    // [121] action_cb_quotatab_exit_ev = quotatab_exit_ev
    // [122] action_cb_quotatab_mod_unload_ev = quotatab_mod_unload_ev
    // [123] action_cb_quotatab_restart_ev = quotatab_restart_ev
    // [124] action_cb_quotatab_sess_reinit_ev = quotatab_sess_reinit_ev
    // [125] action_cb_radius_exit_ev = radius_exit_ev
    // [126] action_cb_radius_mod_unload_ev = radius_mod_unload_ev
    // [127] action_cb_radius_restart_ev = radius_restart_ev
    // [128] action_cb_radius_sess_reinit_ev = radius_sess_reinit_ev
    // [129] action_cb_radiustab_mod_unload_ev = radiustab_mod_unload_ev
    // [130] action_cb_redis_restart_ev = redis_restart_ev
    // [131] action_cb_redis_sess_reinit_ev = redis_sess_reinit_ev
    // [132] action_cb_redis_shutdown_ev = redis_shutdown_ev
    // [133] action_cb_redistab_mod_unload_ev = redistab_mod_unload_ev
    // [134] action_cb_regexp_exit_ev = regexp_exit_ev
    // [135] action_cb_regexp_restart_ev = regexp_restart_ev
    // [136] action_cb_restart_daemon = restart_daemon
    // [137] action_cb_rewrite_exit_ev = rewrite_exit_ev
    // [138] action_cb_rewrite_mod_unload_ev = rewrite_mod_unload_ev
    // [139] action_cb_rewrite_restart_ev = rewrite_restart_ev
    // [140] action_cb_rewrite_rewrite_home_ev = rewrite_rewrite_home_ev
    // [141] action_cb_rewrite_sess_reinit_ev = rewrite_sess_reinit_ev
    // [142] action_cb_rlimit_chroot_ev = rlimit_chroot_ev
    // [143] action_cb_rlimit_postparse_ev = rlimit_postparse_ev
    // [144] action_cb_schedule_cb = schedule_cb
    // [145] action_cb_sftp_ban_class_ev = sftp_ban_class_ev
    // [146] action_cb_sftp_ban_host_ev = sftp_ban_host_ev
    // [147] action_cb_sftp_ban_user_ev = sftp_ban_user_ev
    // [148] action_cb_sftp_chroot_ev = sftp_chroot_ev
    // [149] action_cb_sftp_exit_ev = sftp_exit_ev
    // [150] action_cb_sftp_max_conns_ev = sftp_max_conns_ev
    // [151] action_cb_sftp_mod_unload_ev = sftp_mod_unload_ev
    // [152] action_cb_sftp_postparse_ev = sftp_postparse_ev
    // [153] action_cb_sftp_restart_ev = sftp_restart_ev
    // [154] action_cb_sftp_shutdown_ev = sftp_shutdown_ev
    // [155] action_cb_sftp_sigusr2_ev = sftp_sigusr2_ev
    // [156] action_cb_sftp_timeoutlogin_ev = sftp_timeoutlogin_ev
    // [157] action_cb_sftp_wrap_conn_denied_ev = sftp_wrap_conn_denied_ev
    // [158] action_cb_sftppam_exit_ev = sftppam_exit_ev
    // [159] action_cb_sftppam_mod_unload_ev = sftppam_mod_unload_ev
    // [160] action_cb_sftpsql_mod_unload_ev = sftpsql_mod_unload_ev
    // [161] action_cb_shaper_handle_shaper = shaper_handle_shaper
    // [162] action_cb_shaper_mod_unload_ev = shaper_mod_unload_ev
    // [163] action_cb_shaper_postparse_ev = shaper_postparse_ev
    // [164] action_cb_shaper_restart_ev = shaper_restart_ev
    // [165] action_cb_shaper_sess_exit_ev = shaper_sess_exit_ev
    // [166] action_cb_shaper_shutdown_ev = shaper_shutdown_ev
    // [167] action_cb_shaper_sigusr2_ev = shaper_sigusr2_ev
    // [168] action_cb_shmcache_mod_unload_ev = shmcache_mod_unload_ev
    // [169] action_cb_shmcache_restart_ev = shmcache_restart_ev
    // [170] action_cb_shmcache_shutdown_ev = shmcache_shutdown_ev
    // [171] action_cb_shutdown_end_session = shutdown_end_session
    // [172] action_cb_site_misc_sess_reinit_ev = site_misc_sess_reinit_ev
    // [173] action_cb_snmp_auth_code_ev = snmp_auth_code_ev
    // [174] action_cb_snmp_ban_ban_class_ev = snmp_ban_ban_class_ev
    // [175] action_cb_snmp_ban_ban_host_ev = snmp_ban_ban_host_ev
    // [176] action_cb_snmp_ban_ban_user_ev = snmp_ban_ban_user_ev
    // [177] action_cb_snmp_ban_client_disconn_ev = snmp_ban_client_disconn_ev
    // [178] action_cb_snmp_ban_expired_ban_ev = snmp_ban_expired_ban_ev
    // [179] action_cb_snmp_cmd_invalid_ev = snmp_cmd_invalid_ev
    // [180] action_cb_snmp_exit_ev = snmp_exit_ev
    // [181] action_cb_snmp_max_inst_ev = snmp_max_inst_ev
    // [182] action_cb_snmp_mod_unload_ev = snmp_mod_unload_ev
    // [183] action_cb_snmp_postparse_ev = snmp_postparse_ev
    // [184] action_cb_snmp_restart_ev = snmp_restart_ev
    // [185] action_cb_snmp_shutdown_ev = snmp_shutdown_ev
    // [186] action_cb_snmp_ssh2_auth_hostbased_err_ev = snmp_ssh2_auth_hostbased_err_ev
    // [187] action_cb_snmp_ssh2_auth_hostbased_ev = snmp_ssh2_auth_hostbased_ev
    // [188] action_cb_snmp_ssh2_auth_kbdint_err_ev = snmp_ssh2_auth_kbdint_err_ev
    // [189] action_cb_snmp_ssh2_auth_kbdint_ev = snmp_ssh2_auth_kbdint_ev
    // [190] action_cb_snmp_ssh2_auth_passwd_err_ev = snmp_ssh2_auth_passwd_err_ev
    // [191] action_cb_snmp_ssh2_auth_passwd_ev = snmp_ssh2_auth_passwd_ev
    // [192] action_cb_snmp_ssh2_auth_publickey_err_ev = snmp_ssh2_auth_publickey_err_ev
    // [193] action_cb_snmp_ssh2_auth_publickey_ev = snmp_ssh2_auth_publickey_ev
    // [194] action_cb_snmp_ssh2_c2s_compress_ev = snmp_ssh2_c2s_compress_ev
    // [195] action_cb_snmp_ssh2_kex_err_ev = snmp_ssh2_kex_err_ev
    // [196] action_cb_snmp_ssh2_s2c_compress_ev = snmp_ssh2_s2c_compress_ev
    // [197] action_cb_snmp_ssh2_scp_sess_closed_ev = snmp_ssh2_scp_sess_closed_ev
    // [198] action_cb_snmp_ssh2_scp_sess_opened_ev = snmp_ssh2_scp_sess_opened_ev
    // [199] action_cb_snmp_ssh2_sftp_proto_version_ev = snmp_ssh2_sftp_proto_version_ev
    // [200] action_cb_snmp_ssh2_sftp_sess_closed_ev = snmp_ssh2_sftp_sess_closed_ev
    // [201] action_cb_snmp_ssh2_sftp_sess_opened_ev = snmp_ssh2_sftp_sess_opened_ev
    // [202] action_cb_snmp_startup_ev = snmp_startup_ev
    // [203] action_cb_snmp_timeout_idle_ev = snmp_timeout_idle_ev
    // [204] action_cb_snmp_timeout_login_ev = snmp_timeout_login_ev
    // [205] action_cb_snmp_timeout_noxfer_ev = snmp_timeout_noxfer_ev
    // [206] action_cb_snmp_timeout_stalled_ev = snmp_timeout_stalled_ev
    // [207] action_cb_snmp_tls_ctrl_handshake_err_ev = snmp_tls_ctrl_handshake_err_ev
    // [208] action_cb_snmp_tls_data_handshake_err_ev = snmp_tls_data_handshake_err_ev
    // [209] action_cb_snmp_tls_verify_client_err_ev = snmp_tls_verify_client_err_ev
    // [210] action_cb_snmp_tls_verify_client_ev = snmp_tls_verify_client_ev
    // [211] action_cb_sql_chroot_ev = sql_chroot_ev
    // [212] action_cb_sql_eventlog_ev = sql_eventlog_ev
    // [213] action_cb_sql_exit_ev = sql_exit_ev
    // [214] action_cb_sql_mod_unload_ev = sql_mod_unload_ev
    // [215] action_cb_sql_mysql_mod_load_ev = sql_mysql_mod_load_ev
    // [216] action_cb_sql_mysql_mod_unload_ev = sql_mysql_mod_unload_ev
    // [217] action_cb_sql_passwd_mod_unload_ev = sql_passwd_mod_unload_ev
    // [218] action_cb_sql_passwd_sess_reinit_ev = sql_passwd_sess_reinit_ev
    // [219] action_cb_sql_postgres_mod_load_ev = sql_postgres_mod_load_ev
    // [220] action_cb_sql_postgres_mod_unload_ev = sql_postgres_mod_unload_ev
    // [221] action_cb_sql_preparse_ev = sql_preparse_ev
    // [222] action_cb_sql_sess_reinit_ev = sql_sess_reinit_ev
    // [223] action_cb_sql_sqlite_mod_load_ev = sql_sqlite_mod_load_ev
    // [224] action_cb_sql_sqlite_mod_unload_ev = sql_sqlite_mod_unload_ev
    // [225] action_cb_sqlodbc_mod_unload_ev = sqlodbc_mod_unload_ev
    // [226] action_cb_sqltab_mod_unload_ev = sqltab_mod_unload_ev
    // [227] action_cb_statcache_fs_statcache_clear_ev = statcache_fs_statcache_clear_ev
    // [228] action_cb_statcache_mod_unload_ev = statcache_mod_unload_ev
    // [229] action_cb_statcache_postparse_ev = statcache_postparse_ev
    // [230] action_cb_statcache_restart_ev = statcache_restart_ev
    // [231] action_cb_statcache_sess_reinit_ev = statcache_sess_reinit_ev
    // [232] action_cb_statcache_shutdown_ev = statcache_shutdown_ev
    // [233] action_cb_systemd_mod_unload_ev = systemd_mod_unload_ev
    // [234] action_cb_systemd_postparse_ev = systemd_postparse_ev
    // [235] action_cb_systemd_restart_ev = systemd_restart_ev
    // [236] action_cb_systemd_shutdown_ev = systemd_shutdown_ev
    // [237] action_cb_systemd_startup_ev = systemd_startup_ev
    // [238] action_cb_tab_copy_cb = tab_copy_cb
    // [239] action_cb_test_visitf = test_visitf
    // [240] action_cb_tls_exit_ev = tls_exit_ev
    // [241] action_cb_tls_handle_tls = tls_handle_tls
    // [242] action_cb_tls_mcache_mod_unload_ev = tls_mcache_mod_unload_ev
    // [243] action_cb_tls_mod_unload_ev = tls_mod_unload_ev
    // [244] action_cb_tls_postparse_ev = tls_postparse_ev
    // [245] action_cb_tls_redis_mod_unload_ev = tls_redis_mod_unload_ev
    // [246] action_cb_tls_restart_ev = tls_restart_ev
    // [247] action_cb_tls_sess_reinit_ev = tls_sess_reinit_ev
    // [248] action_cb_tls_shutdown_ev = tls_shutdown_ev
    // [249] action_cb_tls_timeout_ev = tls_timeout_ev
    // [250] action_cb_trace_restart_ev = trace_restart_ev
    // [251] action_cb_uniqid_mod_unload_ev = uniqid_mod_unload_ev
    // [252] action_cb_uniqid_postparse_ev = uniqid_postparse_ev
    // [253] action_cb_wrap2_exit_ev = wrap2_exit_ev
    // [254] action_cb_wrap2_mod_unload_ev = wrap2_mod_unload_ev
    // [255] action_cb_wrap2_restart_ev = wrap2_restart_ev
    // [256] action_cb_wrap2_sess_reinit_ev = wrap2_sess_reinit_ev
    // [257] action_cb_wrap_sess_reinit_ev = wrap_sess_reinit_ev
    // [258] action_cb_xfer_exit_ev = xfer_exit_ev
    // [259] action_cb_xfer_sess_reinit_ev = xfer_sess_reinit_ev
    // [260] action_cb_xfer_sigusr2_ev = xfer_sigusr2_ev
    // [261] action_cb_xfer_timeout_session_ev = xfer_timeout_session_ev
    // [262] action_cb_xfer_timeout_stalled_ev = xfer_timeout_stalled_ev
}

// =============== add ===============

// add signatures
int add_signatures[2] = {0};

// Initialize add signatures
void init_add_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        add_signatures[i] = (int)rand();
    }

    // [0] add_ocsp_cache_add = ocsp_cache_add
    // [1] add_sess_cache_add = sess_cache_add
}

// =============== cb ===============

// cb signatures
int cb_signatures[264] = {0};

// Initialize cb signatures
void init_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 264; i++) {
        cb_signatures[i] = (int)rand();
    }

    // [0] cb_NULL = NULL
    // [1] cb_array_item_fail = array_item_fail
    // [2] cb_array_item_ok = array_item_ok
    // [3] cb_auth_exit_ev = auth_exit_ev
    // [4] cb_auth_otp_exit_ev = auth_otp_exit_ev
    // [5] cb_auth_otp_mod_unload_ev = auth_otp_mod_unload_ev
    // [6] cb_auth_otp_sess_reinit_ev = auth_otp_sess_reinit_ev
    // [7] cb_auth_pam_exit_ev = auth_pam_exit_ev
    // [8] cb_auth_sess_reinit_ev = auth_sess_reinit_ev
    // [9] cb_auth_unix_exit_ev = auth_unix_exit_ev
    // [10] cb_auth_unix_sess_reinit_ev = auth_unix_sess_reinit_ev
    // [11] cb_authfile_sess_reinit_ev = authfile_sess_reinit_ev
    // [12] cb_ban_anonrejectpasswords_ev = ban_anonrejectpasswords_ev
    // [13] cb_ban_badprotocol_ev = ban_badprotocol_ev
    // [14] cb_ban_clientconnectrate_ev = ban_clientconnectrate_ev
    // [15] cb_ban_emptypassword_ev = ban_emptypassword_ev
    // [16] cb_ban_maxclientsperclass_ev = ban_maxclientsperclass_ev
    // [17] cb_ban_maxclientsperhost_ev = ban_maxclientsperhost_ev
    // [18] cb_ban_maxclientsperuser_ev = ban_maxclientsperuser_ev
    // [19] cb_ban_maxcmdrate_ev = ban_maxcmdrate_ev
    // [20] cb_ban_maxconnperhost_ev = ban_maxconnperhost_ev
    // [21] cb_ban_maxhostsperuser_ev = ban_maxhostsperuser_ev
    // [22] cb_ban_maxloginattempts_ev = ban_maxloginattempts_ev
    // [23] cb_ban_maxloginattemptsfromuser_ev = ban_maxloginattemptsfromuser_ev
    // [24] cb_ban_mod_unload_ev = ban_mod_unload_ev
    // [25] cb_ban_postparse_ev = ban_postparse_ev
    // [26] cb_ban_restart_ev = ban_restart_ev
    // [27] cb_ban_rootlogin_ev = ban_rootlogin_ev
    // [28] cb_ban_sess_reinit_ev = ban_sess_reinit_ev
    // [29] cb_ban_shutdown_ev = ban_shutdown_ev
    // [30] cb_ban_timeoutidle_ev = ban_timeoutidle_ev
    // [31] cb_ban_timeoutlogin_ev = ban_timeoutlogin_ev
    // [32] cb_ban_timeoutnoxfer_ev = ban_timeoutnoxfer_ev
    // [33] cb_ban_tlshandshake_ev = ban_tlshandshake_ev
    // [34] cb_ban_unhandledcmd_ev = ban_unhandledcmd_ev
    // [35] cb_ban_userdefined_ev = ban_userdefined_ev
    // [36] cb_cap_sess_reinit_ev = cap_sess_reinit_ev
    // [37] cb_core_chroot_ev = core_chroot_ev
    // [38] cb_core_connected_ev = core_connected_ev
    // [39] cb_core_exit_ev = core_exit_ev
    // [40] cb_core_postparse_ev = core_postparse_ev
    // [41] cb_core_restart_ev = core_restart_ev
    // [42] cb_core_startup_ev = core_startup_ev
    // [43] cb_ctrls_admin_mod_unload_ev = ctrls_admin_mod_unload_ev
    // [44] cb_ctrls_admin_restart_ev = ctrls_admin_restart_ev
    // [45] cb_ctrls_admin_startup_ev = ctrls_admin_startup_ev
    // [46] cb_ctrls_postparse_ev = ctrls_postparse_ev
    // [47] cb_ctrls_restart_ev = ctrls_restart_ev
    // [48] cb_ctrls_shutdown_ev = ctrls_shutdown_ev
    // [49] cb_ctrls_test2_cb = ctrls_test2_cb
    // [50] cb_ctrls_test_cb = ctrls_test_cb
    // [51] cb_define_restart_ev = define_restart_ev
    // [52] cb_deflate_sess_reinit_ev = deflate_sess_reinit_ev
    // [53] cb_delay_connect_ev = delay_connect_ev
    // [54] cb_delay_handle_delay = delay_handle_delay
    // [55] cb_delay_mod_unload_ev = delay_mod_unload_ev
    // [56] cb_delay_postparse_ev = delay_postparse_ev
    // [57] cb_delay_restart_ev = delay_restart_ev
    // [58] cb_delay_sess_reinit_ev = delay_sess_reinit_ev
    // [59] cb_delay_shutdown_ev = delay_shutdown_ev
    // [60] cb_digest_data_xfer_ev = digest_data_xfer_ev
    // [61] cb_digest_mod_unload_ev = digest_mod_unload_ev
    // [62] cb_digest_sess_reinit_ev = digest_sess_reinit_ev
    // [63] cb_dnsbl_sess_reinit_ev = dnsbl_sess_reinit_ev
    // [64] cb_do_cb = do_cb
    // [65] cb_do_with_remove_cb = do_with_remove_cb
    // [66] cb_dso_restart_ev = dso_restart_ev
    // [67] cb_dynmasq_handle_dynmasq = dynmasq_handle_dynmasq
    // [68] cb_dynmasq_mod_unload_ev = dynmasq_mod_unload_ev
    // [69] cb_dynmasq_postparse_ev = dynmasq_postparse_ev
    // [70] cb_dynmasq_restart_ev = dynmasq_restart_ev
    // [71] cb_event_cb = event_cb
    // [72] cb_event_cb2 = event_cb2
    // [73] cb_event_cb3 = event_cb3
    // [74] cb_exec_any_ev = exec_any_ev
    // [75] cb_exec_mod_unload_ev = exec_mod_unload_ev
    // [76] cb_exec_postparse_ev = exec_postparse_ev
    // [77] cb_exec_restart_ev = exec_restart_ev
    // [78] cb_exec_sess_reinit_ev = exec_sess_reinit_ev
    // [79] cb_facl_mod_unload_ev = facl_mod_unload_ev
    // [80] cb_facl_postparse_ev = facl_postparse_ev
    // [81] cb_facl_restart_ev = facl_restart_ev
    // [82] cb_facts_sess_reinit_ev = facts_sess_reinit_ev
    // [83] cb_filetab_mod_unload_ev = filetab_mod_unload_ev
    // [84] cb_forensic_exit_ev = forensic_exit_ev
    // [85] cb_forensic_log_ev = forensic_log_ev
    // [86] cb_forensic_mod_unload_ev = forensic_mod_unload_ev
    // [87] cb_forensic_sess_reinit_ev = forensic_sess_reinit_ev
    // [88] cb_fscache_mod_unload_ev = fscache_mod_unload_ev
    // [89] cb_fxp_handle_abort = fxp_handle_abort
    // [90] cb_geoip_mod_unload_ev = geoip_mod_unload_ev
    // [91] cb_geoip_postparse_ev = geoip_postparse_ev
    // [92] cb_geoip_restart_ev = geoip_restart_ev
    // [93] cb_ident_sess_reinit_ev = ident_sess_reinit_ev
    // [94] cb_ifsess_chroot_ev = ifsess_chroot_ev
    // [95] cb_ifsess_mod_unload_ev = ifsess_mod_unload_ev
    // [96] cb_ifsess_postparse_ev = ifsess_postparse_ev
    // [97] cb_lang_postparse_ev = lang_postparse_ev
    // [98] cb_lang_restart_ev = lang_restart_ev
    // [99] cb_ldap_mod_unload_ev = ldap_mod_unload_ev
    // [100] cb_ldap_postparse_ev = ldap_postparse_ev
    // [101] cb_ldap_sess_reinit_ev = ldap_sess_reinit_ev
    // [102] cb_ldap_shutdown_ev = ldap_shutdown_ev
    // [103] cb_ldaptab_mod_unload_ev = ldaptab_mod_unload_ev
    // [104] cb_log_exit_ev = log_exit_ev
    // [105] cb_log_fmt_extra_iter_cb = log_fmt_extra_iter_cb
    // [106] cb_log_postparse_ev = log_postparse_ev
    // [107] cb_log_restart_ev = log_restart_ev
    // [108] cb_log_sess_reinit_ev = log_sess_reinit_ev
    // [109] cb_log_xfer_stalled_ev = log_xfer_stalled_ev
    // [110] cb_mcache_exit_ev = mcache_exit_ev
    // [111] cb_mcache_restart_ev = mcache_restart_ev
    // [112] cb_mcache_sess_reinit_ev = mcache_sess_reinit_ev
    // [113] cb_object_item_fail = object_item_fail
    // [114] cb_object_item_ok = object_item_ok
    // [115] cb_pool_visitf = pool_visitf
    // [116] cb_qos_ctrl_listen_ev = qos_ctrl_listen_ev
    // [117] cb_qos_data_connect_ev = qos_data_connect_ev
    // [118] cb_qos_data_listen_ev = qos_data_listen_ev
    // [119] cb_qos_mod_unload_ev = qos_mod_unload_ev
    // [120] cb_qos_sess_reinit_ev = qos_sess_reinit_ev
    // [121] cb_quotatab_exit_ev = quotatab_exit_ev
    // [122] cb_quotatab_mod_unload_ev = quotatab_mod_unload_ev
    // [123] cb_quotatab_restart_ev = quotatab_restart_ev
    // [124] cb_quotatab_sess_reinit_ev = quotatab_sess_reinit_ev
    // [125] cb_radius_exit_ev = radius_exit_ev
    // [126] cb_radius_mod_unload_ev = radius_mod_unload_ev
    // [127] cb_radius_restart_ev = radius_restart_ev
    // [128] cb_radius_sess_reinit_ev = radius_sess_reinit_ev
    // [129] cb_radiustab_mod_unload_ev = radiustab_mod_unload_ev
    // [130] cb_redis_restart_ev = redis_restart_ev
    // [131] cb_redis_sess_reinit_ev = redis_sess_reinit_ev
    // [132] cb_redis_shutdown_ev = redis_shutdown_ev
    // [133] cb_redistab_mod_unload_ev = redistab_mod_unload_ev
    // [134] cb_regexp_exit_ev = regexp_exit_ev
    // [135] cb_regexp_restart_ev = regexp_restart_ev
    // [136] cb_restart_daemon = restart_daemon
    // [137] cb_rewrite_exit_ev = rewrite_exit_ev
    // [138] cb_rewrite_mod_unload_ev = rewrite_mod_unload_ev
    // [139] cb_rewrite_restart_ev = rewrite_restart_ev
    // [140] cb_rewrite_rewrite_home_ev = rewrite_rewrite_home_ev
    // [141] cb_rewrite_sess_reinit_ev = rewrite_sess_reinit_ev
    // [142] cb_rlimit_chroot_ev = rlimit_chroot_ev
    // [143] cb_rlimit_postparse_ev = rlimit_postparse_ev
    // [144] cb_schedule_cb = schedule_cb
    // [145] cb_sftp_ban_class_ev = sftp_ban_class_ev
    // [146] cb_sftp_ban_host_ev = sftp_ban_host_ev
    // [147] cb_sftp_ban_user_ev = sftp_ban_user_ev
    // [148] cb_sftp_chroot_ev = sftp_chroot_ev
    // [149] cb_sftp_exit_ev = sftp_exit_ev
    // [150] cb_sftp_max_conns_ev = sftp_max_conns_ev
    // [151] cb_sftp_mod_unload_ev = sftp_mod_unload_ev
    // [152] cb_sftp_postparse_ev = sftp_postparse_ev
    // [153] cb_sftp_restart_ev = sftp_restart_ev
    // [154] cb_sftp_shutdown_ev = sftp_shutdown_ev
    // [155] cb_sftp_sigusr2_ev = sftp_sigusr2_ev
    // [156] cb_sftp_timeoutlogin_ev = sftp_timeoutlogin_ev
    // [157] cb_sftp_wrap_conn_denied_ev = sftp_wrap_conn_denied_ev
    // [158] cb_sftppam_exit_ev = sftppam_exit_ev
    // [159] cb_sftppam_mod_unload_ev = sftppam_mod_unload_ev
    // [160] cb_sftpsql_mod_unload_ev = sftpsql_mod_unload_ev
    // [161] cb_shaper_handle_shaper = shaper_handle_shaper
    // [162] cb_shaper_mod_unload_ev = shaper_mod_unload_ev
    // [163] cb_shaper_postparse_ev = shaper_postparse_ev
    // [164] cb_shaper_restart_ev = shaper_restart_ev
    // [165] cb_shaper_sess_exit_ev = shaper_sess_exit_ev
    // [166] cb_shaper_shutdown_ev = shaper_shutdown_ev
    // [167] cb_shaper_sigusr2_ev = shaper_sigusr2_ev
    // [168] cb_shmcache_mod_unload_ev = shmcache_mod_unload_ev
    // [169] cb_shmcache_restart_ev = shmcache_restart_ev
    // [170] cb_shmcache_shutdown_ev = shmcache_shutdown_ev
    // [171] cb_shutdown_end_session = shutdown_end_session
    // [172] cb_site_misc_sess_reinit_ev = site_misc_sess_reinit_ev
    // [173] cb_snmp_auth_code_ev = snmp_auth_code_ev
    // [174] cb_snmp_ban_ban_class_ev = snmp_ban_ban_class_ev
    // [175] cb_snmp_ban_ban_host_ev = snmp_ban_ban_host_ev
    // [176] cb_snmp_ban_ban_user_ev = snmp_ban_ban_user_ev
    // [177] cb_snmp_ban_client_disconn_ev = snmp_ban_client_disconn_ev
    // [178] cb_snmp_ban_expired_ban_ev = snmp_ban_expired_ban_ev
    // [179] cb_snmp_cmd_invalid_ev = snmp_cmd_invalid_ev
    // [180] cb_snmp_exit_ev = snmp_exit_ev
    // [181] cb_snmp_max_inst_ev = snmp_max_inst_ev
    // [182] cb_snmp_mod_unload_ev = snmp_mod_unload_ev
    // [183] cb_snmp_postparse_ev = snmp_postparse_ev
    // [184] cb_snmp_restart_ev = snmp_restart_ev
    // [185] cb_snmp_shutdown_ev = snmp_shutdown_ev
    // [186] cb_snmp_ssh2_auth_hostbased_err_ev = snmp_ssh2_auth_hostbased_err_ev
    // [187] cb_snmp_ssh2_auth_hostbased_ev = snmp_ssh2_auth_hostbased_ev
    // [188] cb_snmp_ssh2_auth_kbdint_err_ev = snmp_ssh2_auth_kbdint_err_ev
    // [189] cb_snmp_ssh2_auth_kbdint_ev = snmp_ssh2_auth_kbdint_ev
    // [190] cb_snmp_ssh2_auth_passwd_err_ev = snmp_ssh2_auth_passwd_err_ev
    // [191] cb_snmp_ssh2_auth_passwd_ev = snmp_ssh2_auth_passwd_ev
    // [192] cb_snmp_ssh2_auth_publickey_err_ev = snmp_ssh2_auth_publickey_err_ev
    // [193] cb_snmp_ssh2_auth_publickey_ev = snmp_ssh2_auth_publickey_ev
    // [194] cb_snmp_ssh2_c2s_compress_ev = snmp_ssh2_c2s_compress_ev
    // [195] cb_snmp_ssh2_kex_err_ev = snmp_ssh2_kex_err_ev
    // [196] cb_snmp_ssh2_s2c_compress_ev = snmp_ssh2_s2c_compress_ev
    // [197] cb_snmp_ssh2_scp_sess_closed_ev = snmp_ssh2_scp_sess_closed_ev
    // [198] cb_snmp_ssh2_scp_sess_opened_ev = snmp_ssh2_scp_sess_opened_ev
    // [199] cb_snmp_ssh2_sftp_proto_version_ev = snmp_ssh2_sftp_proto_version_ev
    // [200] cb_snmp_ssh2_sftp_sess_closed_ev = snmp_ssh2_sftp_sess_closed_ev
    // [201] cb_snmp_ssh2_sftp_sess_opened_ev = snmp_ssh2_sftp_sess_opened_ev
    // [202] cb_snmp_startup_ev = snmp_startup_ev
    // [203] cb_snmp_timeout_idle_ev = snmp_timeout_idle_ev
    // [204] cb_snmp_timeout_login_ev = snmp_timeout_login_ev
    // [205] cb_snmp_timeout_noxfer_ev = snmp_timeout_noxfer_ev
    // [206] cb_snmp_timeout_stalled_ev = snmp_timeout_stalled_ev
    // [207] cb_snmp_tls_ctrl_handshake_err_ev = snmp_tls_ctrl_handshake_err_ev
    // [208] cb_snmp_tls_data_handshake_err_ev = snmp_tls_data_handshake_err_ev
    // [209] cb_snmp_tls_verify_client_err_ev = snmp_tls_verify_client_err_ev
    // [210] cb_snmp_tls_verify_client_ev = snmp_tls_verify_client_ev
    // [211] cb_sql_chroot_ev = sql_chroot_ev
    // [212] cb_sql_eventlog_ev = sql_eventlog_ev
    // [213] cb_sql_exit_ev = sql_exit_ev
    // [214] cb_sql_mod_unload_ev = sql_mod_unload_ev
    // [215] cb_sql_mysql_mod_load_ev = sql_mysql_mod_load_ev
    // [216] cb_sql_mysql_mod_unload_ev = sql_mysql_mod_unload_ev
    // [217] cb_sql_passwd_mod_unload_ev = sql_passwd_mod_unload_ev
    // [218] cb_sql_passwd_sess_reinit_ev = sql_passwd_sess_reinit_ev
    // [219] cb_sql_postgres_mod_load_ev = sql_postgres_mod_load_ev
    // [220] cb_sql_postgres_mod_unload_ev = sql_postgres_mod_unload_ev
    // [221] cb_sql_preparse_ev = sql_preparse_ev
    // [222] cb_sql_sess_reinit_ev = sql_sess_reinit_ev
    // [223] cb_sql_sqlite_mod_load_ev = sql_sqlite_mod_load_ev
    // [224] cb_sql_sqlite_mod_unload_ev = sql_sqlite_mod_unload_ev
    // [225] cb_sqlodbc_mod_unload_ev = sqlodbc_mod_unload_ev
    // [226] cb_sqltab_mod_unload_ev = sqltab_mod_unload_ev
    // [227] cb_statcache_fs_statcache_clear_ev = statcache_fs_statcache_clear_ev
    // [228] cb_statcache_mod_unload_ev = statcache_mod_unload_ev
    // [229] cb_statcache_postparse_ev = statcache_postparse_ev
    // [230] cb_statcache_restart_ev = statcache_restart_ev
    // [231] cb_statcache_sess_reinit_ev = statcache_sess_reinit_ev
    // [232] cb_statcache_shutdown_ev = statcache_shutdown_ev
    // [233] cb_systemd_mod_unload_ev = systemd_mod_unload_ev
    // [234] cb_systemd_postparse_ev = systemd_postparse_ev
    // [235] cb_systemd_restart_ev = systemd_restart_ev
    // [236] cb_systemd_shutdown_ev = systemd_shutdown_ev
    // [237] cb_systemd_startup_ev = systemd_startup_ev
    // [238] cb_tab_copy_cb = tab_copy_cb
    // [239] cb_test_visitf = test_visitf
    // [240] cb_tls_exit_ev = tls_exit_ev
    // [241] cb_tls_handle_tls = tls_handle_tls
    // [242] cb_tls_mcache_mod_unload_ev = tls_mcache_mod_unload_ev
    // [243] cb_tls_mod_unload_ev = tls_mod_unload_ev
    // [244] cb_tls_postparse_ev = tls_postparse_ev
    // [245] cb_tls_redis_mod_unload_ev = tls_redis_mod_unload_ev
    // [246] cb_tls_restart_ev = tls_restart_ev
    // [247] cb_tls_sess_reinit_ev = tls_sess_reinit_ev
    // [248] cb_tls_shutdown_ev = tls_shutdown_ev
    // [249] cb_tls_timeout_ev = tls_timeout_ev
    // [250] cb_trace_restart_ev = trace_restart_ev
    // [251] cb_uniqid_mod_unload_ev = uniqid_mod_unload_ev
    // [252] cb_uniqid_postparse_ev = uniqid_postparse_ev
    // [253] cb_wrap2_exit_ev = wrap2_exit_ev
    // [254] cb_wrap2_mod_unload_ev = wrap2_mod_unload_ev
    // [255] cb_wrap2_restart_ev = wrap2_restart_ev
    // [256] cb_wrap2_sess_reinit_ev = wrap2_sess_reinit_ev
    // [257] cb_wrap_sess_reinit_ev = wrap_sess_reinit_ev
    // [258] cb_xfer_exit_ev = xfer_exit_ev
    // [259] cb_xfer_sess_reinit_ev = xfer_sess_reinit_ev
    // [260] cb_xfer_sigusr2_ev = xfer_sigusr2_ev
    // [261] cb_xfer_timeout_session_ev = xfer_timeout_session_ev
    // [262] cb_xfer_timeout_stalled_ev = xfer_timeout_stalled_ev
    // [263] cb_act_cb = act_cb
}

// =============== chdir ===============

// chdir signatures
int chdir_signatures[1] = {0};

// Initialize chdir signatures
void init_chdir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        chdir_signatures[i] = (int)rand();
    }

    // [0] chdir_sys_chdir = sys_chdir
}

// =============== child_cleanup_cb ===============

// child_cleanup_cb signatures
int child_cleanup_cb_signatures[6] = {0};

// Initialize child_cleanup_cb signatures
void init_child_cleanup_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 6; i++) {
        child_cleanup_cb_signatures[i] = (int)rand();
    }

    // [0] child_cleanup_cb_NULL = NULL
    // [1] child_cleanup_cb_conn_cleanup_cb = conn_cleanup_cb
    // [2] child_cleanup_cb_ctrls_cleanup_cb = ctrls_cleanup_cb
    // [3] child_cleanup_cb_event_cleanup_cb = event_cleanup_cb
    // [4] child_cleanup_cb_server_cleanup_cb = server_cleanup_cb
    // [5] child_cleanup_cb_sess_redis_cleanup = sess_redis_cleanup
}

// =============== chk ===============

// chk signatures
int chk_signatures[3] = {0};

// Initialize chk signatures
void init_chk_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        chk_signatures[i] = (int)rand();
    }

    // [0] chk_NULL = NULL
    // [1] chk_auth_cmd_chk_cb = auth_cmd_chk_cb
    // [2] chk_sftp_have_authenticated = sftp_have_authenticated
}

// =============== chmod ===============

// chmod signatures
int chmod_signatures[2] = {0};

// Initialize chmod signatures
void init_chmod_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        chmod_signatures[i] = (int)rand();
    }

    // [0] chmod_statcache_fsio_chmod = statcache_fsio_chmod
    // [1] chmod_sys_chmod = sys_chmod
}

// =============== chown ===============

// chown signatures
int chown_signatures[2] = {0};

// Initialize chown signatures
void init_chown_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        chown_signatures[i] = (int)rand();
    }

    // [0] chown_statcache_fsio_chown = statcache_fsio_chown
    // [1] chown_sys_chown = sys_chown
}

// =============== chroot ===============

// chroot signatures
int chroot_signatures[1] = {0};

// Initialize chroot signatures
void init_chroot_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        chroot_signatures[i] = (int)rand();
    }

    // [0] chroot_sys_chroot = sys_chroot
}

// =============== ck ===============

// ck signatures
int ck_signatures[3] = {0};

// Initialize ck signatures
void init_ck_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        ck_signatures[i] = (int)rand();
    }

    // [0] ck_NULL = NULL
    // [1] ck_auth_cmd_chk_cb = auth_cmd_chk_cb
    // [2] ck_sftp_have_authenticated = sftp_have_authenticated
}

// =============== cleanup_cb ===============

// cleanup_cb signatures
int cleanup_cb_signatures[7] = {0};

// Initialize cleanup_cb signatures
void init_cleanup_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 6; i++) {
        cleanup_cb_signatures[i] = (int)rand();
    }

    // [0] cleanup_cb_NULL = NULL
    // [1] cleanup_cb_conn_cleanup_cb = conn_cleanup_cb
    // [2] cleanup_cb_ctrls_cleanup_cb = ctrls_cleanup_cb
    // [3] cleanup_cb_event_cleanup_cb = event_cleanup_cb
    // [4] cleanup_cb_server_cleanup_cb = server_cleanup_cb
    // [5] cleanup_cb_sess_redis_cleanup = sess_redis_cleanup
}

// =============== callback ===============

// callback signatures
int callback_signatures[9] = {0};

// Initialize clear signatures
void init_callback_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        callback_signatures[i] = (int)rand();
    }

    // [0] clear_ocsp_cache_clear = ocsp_cache_clear
    // [1] clear_sess_cache_clear = sess_cache_clear
}

// =============== clear ===============

// clear signatures
int clear_signatures[2] = {0};

// Initialize clear signatures
void init_clear_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        clear_signatures[i] = (int)rand();
    }

    // [0] clear_ocsp_cache_clear = ocsp_cache_clear
    // [1] clear_sess_cache_clear = sess_cache_clear
}

// =============== close ===============

// close signatures
int close_signatures[9] = {0};

// Initialize close signatures
void init_close_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 9; i++) {
        close_signatures[i] = (int)rand();
    }

    // [0] close_core_netio_close_cb = core_netio_close_cb
    // [1] close_deflate_netio_close_cb = deflate_netio_close_cb
    // [2] close_deflate_next_netio_close = deflate_next_netio_close
    // [3] close_ocsp_cache_close = ocsp_cache_close
    // [4] close_robots_fsio_close = robots_fsio_close
    // [5] close_sess_cache_close = sess_cache_close
    // [6] close_sftppam_driver_close = sftppam_driver_close
    // [7] close_sys_close = sys_close
    // [8] close_tls_netio_close_cb = tls_netio_close_cb
}

// =============== closedir ===============

// closedir signatures
int closedir_signatures[1] = {0};

// Initialize closedir signatures
void init_closedir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        closedir_signatures[i] = (int)rand();
    }

    // [0] closedir_sys_closedir = sys_closedir
}

// =============== ctrls_cb ===============

// ctrls_cb signatures
int ctrls_cb_signatures[8] = {0};

// Initialize ctrls_cb signatures
void init_ctrls_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 8; i++) {
        ctrls_cb_signatures[i] = (int)rand();
    }

    // [0] ctrls_cb_NULL = NULL
    // [1] ctrls_cb_act_cb = act_cb
    // [2] ctrls_cb_ctrls_test2_cb = ctrls_test2_cb
    // [3] ctrls_cb_ctrls_test_cb = ctrls_test_cb
    // [4] ctrls_cb_delay_handle_delay = delay_handle_delay
    // [5] ctrls_cb_dynmasq_handle_dynmasq = dynmasq_handle_dynmasq
    // [6] ctrls_cb_shaper_handle_shaper = shaper_handle_shaper
    // [7] ctrls_cb_tls_handle_tls = tls_handle_tls
}

// =============== debugf ===============

// debugf signatures
int debugf_signatures[4] = {0};

// Initialize debugf signatures
void init_debugf_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        debugf_signatures[i] = (int)rand();
    }

    // [0] debugf_NULL = NULL
    // [1] debugf_mem_printf = mem_printf
    // [2] debugf_oom_printf = oom_printf
    // [3] debugf_pool_printf = pool_printf
}

// =============== delete ===============

// delete signatures
int delete_signatures[2] = {0};

// Initialize delete signatures
void init_delete_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        delete_signatures[i] = (int)rand();
    }

    // [0] delete_ocsp_cache_delete = ocsp_cache_delete
    // [1] delete_sess_cache_delete = sess_cache_delete
}

// =============== dumpf ===============

// dumpf signatures
int dumpf_signatures[5] = {0};

// Initialize dumpf signatures
void init_dumpf_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 5; i++) {
        dumpf_signatures[i] = (int)rand();
    }

    // [0] dumpf_NULL = NULL
    // [1] dumpf_event_dump = event_dump
    // [2] dumpf_stash_dump = stash_dump
    // [3] dumpf_statcache_dumpf = statcache_dumpf
    // [4] dumpf_table_dump = table_dump
}

// =============== entinsert ===============

// entinsert signatures
int entinsert_signatures[1] = {0};

// Initialize entinsert signatures
void init_entinsert_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        entinsert_signatures[i] = (int)rand();
    }

    // [0] entinsert_entry_insert = entry_insert
}

// =============== entremove ===============

// entremove signatures
int entremove_signatures[1] = {0};

// Initialize entremove signatures
void init_entremove_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        entremove_signatures[i] = (int)rand();
    }

    // [0] entremove_entry_remove = entry_remove
}

// =============== errfunc ===============

// errfunc signatures
int errfunc_signatures[1] = {0};

// Initialize errfunc signatures
void init_errfunc_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        errfunc_signatures[i] = (int)rand();
    }

    // [0] errfunc_NULL = NULL
}

// =============== f ===============

// f signatures
int f_signatures[4] = {0};

// Initialize f signatures
void init_f_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        f_signatures[i] = (int)rand();
    }

    // [0] f_NULL = NULL
    // [1] f_restart_daemon = restart_daemon
    // [2] f_schedule_cb = schedule_cb
    // [3] f_shutdown_end_session = shutdown_end_session
}

// =============== faccess ===============

// faccess signatures
int faccess_signatures[3] = {0};

// Initialize faccess signatures
void init_faccess_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        faccess_signatures[i] = (int)rand();
    }

    // [0] faccess_facl_fsio_faccess = facl_fsio_faccess
    // [1] faccess_robots_fsio_faccess = robots_fsio_faccess
    // [2] faccess_sys_faccess = sys_faccess
}

// =============== fchmod ===============

// fchmod signatures
int fchmod_signatures[2] = {0};

// Initialize fchmod signatures
void init_fchmod_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        fchmod_signatures[i] = (int)rand();
    }

    // [0] fchmod_statcache_fsio_fchmod = statcache_fsio_fchmod
    // [1] fchmod_sys_fchmod = sys_fchmod
}

// =============== fchown ===============

// fchown signatures
int fchown_signatures[2] = {0};

// Initialize fchown signatures
void init_fchown_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        fchown_signatures[i] = (int)rand();
    }

    // [0] fchown_statcache_fsio_fchown = statcache_fsio_fchown
    // [1] fchown_sys_fchown = sys_fchown
}

// =============== fgetxattr ===============

// fgetxattr signatures
int fgetxattr_signatures[1] = {0};

// Initialize fgetxattr signatures
void init_fgetxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        fgetxattr_signatures[i] = (int)rand();
    }

    // [0] fgetxattr_sys_fgetxattr = sys_fgetxattr
}

// =============== flistxattr ===============

// flistxattr signatures
int flistxattr_signatures[1] = {0};

// Initialize flistxattr signatures
void init_flistxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        flistxattr_signatures[i] = (int)rand();
    }

    // [0] flistxattr_sys_flistxattr = sys_flistxattr
}

// =============== fremovexattr ===============

// fremovexattr signatures
int fremovexattr_signatures[1] = {0};

// Initialize fremovexattr signatures
void init_fremovexattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        fremovexattr_signatures[i] = (int)rand();
    }

    // [0] fremovexattr_sys_fremovexattr = sys_fremovexattr
}

// =============== fsetxattr ===============

// fsetxattr signatures
int fsetxattr_signatures[1] = {0};

// Initialize fsetxattr signatures
void init_fsetxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        fsetxattr_signatures[i] = (int)rand();
    }

    // [0] fsetxattr_sys_fsetxattr = sys_fsetxattr
}

// =============== fstat ===============

// fstat signatures
int fstat_signatures[3] = {0};

// Initialize fstat signatures
void init_fstat_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        fstat_signatures[i] = (int)rand();
    }

    // [0] fstat_robots_fsio_fstat = robots_fsio_fstat
    // [1] fstat_statcache_fsio_fstat = statcache_fsio_fstat
    // [2] fstat_sys_fstat = sys_fstat
}

// =============== fsync ===============

// fsync signatures
int fsync_signatures[1] = {0};

// Initialize fsync signatures
void init_fsync_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        fsync_signatures[i] = (int)rand();
    }

    // [0] fsync_sys_fsync = sys_fsync
}

// =============== ftruncate ===============

// ftruncate signatures
int ftruncate_signatures[2] = {0};

// Initialize ftruncate signatures
void init_ftruncate_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        ftruncate_signatures[i] = (int)rand();
    }

    // [0] ftruncate_statcache_fsio_ftruncate = statcache_fsio_ftruncate
    // [1] ftruncate_sys_ftruncate = sys_ftruncate
}

// =============== futimes ===============

// futimes signatures
int futimes_signatures[2] = {0};

// Initialize futimes signatures
void init_futimes_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        futimes_signatures[i] = (int)rand();
    }

    // [0] futimes_statcache_fsio_futimes = statcache_fsio_futimes
    // [1] futimes_sys_futimes = sys_futimes
}

// =============== get ===============

// get signatures
int get_signatures[2] = {0};

// Initialize get signatures
void init_get_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        get_signatures[i] = (int)rand();
    }

    // [0] get_ocsp_cache_get = ocsp_cache_get
    // [1] get_sess_cache_get = sess_cache_get
}

// =============== getxattr ===============

// getxattr signatures
int getxattr_signatures[1] = {0};

// Initialize getxattr signatures
void init_getxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        getxattr_signatures[i] = (int)rand();
    }

    // [0] getxattr_sys_getxattr = sys_getxattr
}

// =============== handler ===============

// handler signatures
int handler_signatures[3] = {0};

// Initialize handler signatures
void init_handler_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        handler_signatures[i] = (int)rand();
    }

    // [0] handler_NULL = NULL
    // [1] handler_sftp_cmd_loop = sftp_cmd_loop
    // [2] handler_setup_env = setup_env
}

// =============== keycmp ===============

// keycmp signatures
int keycmp_signatures[1] = {0};

// Initialize keycmp signatures
void init_keycmp_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        keycmp_signatures[i] = (int)rand();
    }

    // [0] keycmp_key_cmp = key_cmp
}

// =============== keyhash ===============

// keyhash signatures
int keyhash_signatures[1] = {0};

// Initialize keyhash signatures
void init_keyhash_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        keyhash_signatures[i] = (int)rand();
    }

    // [0] keyhash_key_hash = key_hash
}

// =============== lchown ===============

// lchown signatures
int lchown_signatures[2] = {0};

// Initialize lchown signatures
void init_lchown_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        lchown_signatures[i] = (int)rand();
    }

    // [0] lchown_statcache_fsio_lchown = statcache_fsio_lchown
    // [1] lchown_sys_lchown = sys_lchown
}

// =============== lgetxattr ===============

// lgetxattr signatures
int lgetxattr_signatures[1] = {0};

// Initialize lgetxattr signatures
void init_lgetxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        lgetxattr_signatures[i] = (int)rand();
    }

    // [0] lgetxattr_sys_lgetxattr = sys_lgetxattr
}

// =============== link ===============

// link signatures
int link_signatures[1] = {0};

// Initialize link signatures
void init_link_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        link_signatures[i] = (int)rand();
    }

    // [0] link_sys_link = sys_link
}

// =============== listf ===============

// listf signatures
int listf_signatures[2] = {0};

// Initialize listf signatures
void init_listf_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        listf_signatures[i] = (int)rand();
    }

    // [0] listf_NULL = NULL
    // [1] listf_module_listf = module_listf
}

// =============== listxattr ===============

// listxattr signatures
int listxattr_signatures[1] = {0};

// Initialize listxattr signatures
void init_listxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        listxattr_signatures[i] = (int)rand();
    }

    // [0] listxattr_sys_listxattr = sys_listxattr
}

// =============== llistxattr ===============

// llistxattr signatures
int llistxattr_signatures[1] = {0};

// Initialize llistxattr signatures
void init_llistxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        llistxattr_signatures[i] = (int)rand();
    }

    // [0] llistxattr_sys_llistxattr = sys_llistxattr
}

// =============== lremovexattr ===============

// lremovexattr signatures
int lremovexattr_signatures[1] = {0};

// Initialize lremovexattr signatures
void init_lremovexattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        lremovexattr_signatures[i] = (int)rand();
    }

    // [0] lremovexattr_sys_lremovexattr = sys_lremovexattr
}

// =============== lseek ===============

// lseek signatures
int lseek_signatures[1] = {0};

// Initialize lseek signatures
void init_lseek_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        lseek_signatures[i] = (int)rand();
    }

    // [0] lseek_sys_lseek = sys_lseek
}

// =============== lsetxattr ===============

// lsetxattr signatures
int lsetxattr_signatures[1] = {0};

// Initialize lsetxattr signatures
void init_lsetxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        lsetxattr_signatures[i] = (int)rand();
    }

    // [0] lsetxattr_sys_lsetxattr = sys_lsetxattr
}

// =============== lstat ===============

// lstat signatures
int lstat_signatures[3] = {0};

// Initialize lstat signatures
void init_lstat_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        lstat_signatures[i] = (int)rand();
    }

    // [0] lstat_robots_fsio_lstat = robots_fsio_lstat
    // [1] lstat_statcache_fsio_lstat = statcache_fsio_lstat
    // [2] lstat_sys_lstat = sys_lstat
}

// =============== match_token ===============

// match_token signatures
int match_token_signatures[2] = {0};

// Initialize match_token signatures
void init_match_token_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        match_token_signatures[i] = (int)rand();
    }

    // [0] match_token_wrap2_match_client = wrap2_match_client
    // [1] match_token_wrap2_match_daemon = wrap2_match_daemon
}

// =============== mkdir ===============

// mkdir signatures
int mkdir_signatures[1] = {0};

// Initialize mkdir signatures
void init_mkdir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        mkdir_signatures[i] = (int)rand();
    }

    // [0] mkdir_sys_mkdir = sys_mkdir
}

// =============== on_default ===============

// on_default signatures
int on_default_signatures[4] = {0};

// Initialize on_default signatures
void init_on_default_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        on_default_signatures[i] = (int)rand();
    }

    // [0] on_default_NULL = NULL
    // [1] on_default_resolve_on_default = resolve_on_default
    // [2] on_default_sql_resolve_on_default = sql_resolve_on_default
    // [3] on_default_resolve_id_on_default = resolve_id_on_default
}

// =============== on_meta ===============

// on_meta signatures
int on_meta_signatures[10] = {0};

// Initialize on_meta signatures
void init_on_meta_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 10; i++) {
        on_meta_signatures[i] = (int)rand();
    }

    // [0] on_meta_NULL = NULL
    // [1] on_meta_long_on_meta = long_on_meta
    // [2] on_meta_parse_on_meta = parse_on_meta
    // [3] on_meta_pr_jot_parse_on_meta = pr_jot_parse_on_meta
    // [4] on_meta_pr_jot_on_json = pr_jot_on_json
    // [5] on_meta_resolve_on_meta = resolve_on_meta
    // [6] on_meta_showinfo_on_meta = showinfo_on_meta
    // [7] on_meta_sql_resolve_on_meta = sql_resolve_on_meta
    // [8] on_meta_resolve_id_on_meta = resolve_id_on_meta
    // [9] on_meta_scan_on_meta = scan_on_meta
}

// =============== on_other ===============

// on_other signatures
int on_other_signatures[5] = {0};

// Initialize on_other signatures
void init_on_other_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 5; i++) {
        on_other_signatures[i] = (int)rand();
    }

    // [0] on_other_NULL = NULL
    // [1] on_other_parse_on_other = parse_on_other
    // [2] on_other_pr_jot_parse_on_other = pr_jot_parse_on_other
    // [3] on_other_resolve_on_other = resolve_on_other
    // [4] on_other_sql_resolve_on_other = sql_resolve_on_other
}

// =============== on_unknown ===============

// on_unknown signatures
int on_unknown_signatures[3] = {0};

// Initialize on_unknown signatures
void init_on_unknown_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        on_unknown_signatures[i] = (int)rand();
    }

    // [0] on_unknown_NULL = NULL
    // [1] on_unknown_parse_on_unknown = parse_on_unknown
    // [2] on_unknown_pr_jot_parse_on_unknown = pr_jot_parse_on_unknown
}

// =============== oom ===============

// oom signatures
int oom_signatures[2] = {0};

// Initialize oom signatures
void init_oom_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        oom_signatures[i] = (int)rand();
    }

    // [0] oom_NULL = NULL
    // [1] oom_json_oom = json_oom
}

// =============== open ===============

// open signatures
int open_signatures[10] = {0};

// Initialize open signatures
void init_open_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 10; i++) {
        open_signatures[i] = (int)rand();
    }

    // [0] open_core_netio_open_cb = core_netio_open_cb
    // [1] open_deflate_netio_open_cb = deflate_netio_open_cb
    // [2] open_deflate_next_netio_open = deflate_next_netio_open
    // [3] open_ocsp_cache_open = ocsp_cache_open
    // [4] open_robots_fsio_open = robots_fsio_open
    // [5] open_sess_cache_open = sess_cache_open
    // [6] open_sftppam_driver_open = sftppam_driver_open
    // [7] open_statcache_fsio_open = statcache_fsio_open
    // [8] open_sys_open = sys_open
    // [9] open_tls_netio_open_cb = tls_netio_open_cb
}

// =============== opendir ===============

// opendir signatures
int opendir_signatures[1] = {0};

// Initialize opendir signatures
void init_opendir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        opendir_signatures[i] = (int)rand();
    }

    // [0] opendir_sys_opendir = sys_opendir
}

// =============== plain_cleanup_cb ===============

// plain_cleanup_cb signatures
int plain_cleanup_cb_signatures[6] = {0};

// Initialize plain_cleanup_cb signatures
void init_plain_cleanup_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 6; i++) {
        plain_cleanup_cb_signatures[i] = (int)rand();
    }

    // [0] plain_cleanup_cb_NULL = NULL
    // [1] plain_cleanup_cb_conn_cleanup_cb = conn_cleanup_cb
    // [2] plain_cleanup_cb_ctrls_cleanup_cb = ctrls_cleanup_cb
    // [3] plain_cleanup_cb_event_cleanup_cb = event_cleanup_cb
    // [4] plain_cleanup_cb_server_cleanup_cb = server_cleanup_cb
    // [5] plain_cleanup_cb_sess_redis_cleanup = sess_redis_cleanup
}

// =============== poll ===============

// poll signatures
int poll_signatures[2] = {0};

// Initialize poll signatures
void init_poll_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        poll_signatures[i] = (int)rand();
    }

    // [0] poll_core_netio_poll_cb = core_netio_poll_cb
    // [1] poll_tls_netio_poll_cb = tls_netio_poll_cb
}

// =============== postopen ===============

// postopen signatures
int postopen_signatures[2] = {0};

// Initialize postopen signatures
void init_postopen_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        postopen_signatures[i] = (int)rand();
    }

    // [0] postopen_core_netio_postopen_cb = core_netio_postopen_cb
    // [1] postopen_tls_netio_postopen_cb = tls_netio_postopen_cb
}

// =============== pread ===============

// pread signatures
int pread_signatures[1] = {0};

// Initialize pread signatures
void init_pread_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        pread_signatures[i] = (int)rand();
    }

    // [0] pread_sys_pread = sys_pread
}

// =============== progress_cb ===============

// progress_cb signatures
int progress_cb_signatures[2] = {0};

// Initialize progress_cb signatures
void init_progress_cb_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        progress_cb_signatures[i] = (int)rand();
    }

    // [0] progress_cb_NULL = NULL
    // [1] progress_cb_copy_progress_cb = copy_progress_cb
}

// =============== pwrite ===============

// pwrite signatures
int pwrite_signatures[1] = {0};

// Initialize pwrite signatures
void init_pwrite_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        pwrite_signatures[i] = (int)rand();
    }

    // [0] pwrite_sys_pwrite = sys_pwrite
}

// =============== read ===============

// read signatures
int read_signatures[6] = {0};

// Initialize read signatures
void init_read_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 6; i++) {
        read_signatures[i] = (int)rand();
    }

    // [0] read_core_netio_read_cb = core_netio_read_cb
    // [1] read_deflate_netio_read_cb = deflate_netio_read_cb
    // [2] read_deflate_next_netio_read = deflate_next_netio_read
    // [3] read_robots_fsio_read = robots_fsio_read
    // [4] read_sys_read = sys_read
    // [5] read_tls_netio_read_cb = tls_netio_read_cb
}

// =============== readdir ===============

// readdir signatures
int readdir_signatures[1] = {0};

// Initialize readdir signatures
void init_readdir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        readdir_signatures[i] = (int)rand();
    }

    // [0] readdir_sys_readdir = sys_readdir
}

// =============== readlink ===============

// readlink signatures
int readlink_signatures[1] = {0};

// Initialize readlink signatures
void init_readlink_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        readlink_signatures[i] = (int)rand();
    }

    // [0] readlink_sys_readlink = sys_readlink
}

// =============== realpath ===============

// realpath signatures
int realpath_signatures[1] = {0};

// Initialize realpath signatures
void init_realpath_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        realpath_signatures[i] = (int)rand();
    }

    // [0] realpath_sys_realpath = sys_realpath
}

// =============== regtab_open ===============

// regtab_open signatures
int regtab_open_signatures[1] = {0};

// Initialize regtab_open signatures
void init_regtab_open_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        regtab_open_signatures[i] = (int)rand();
    }

    // [0] regtab_open_srcopen = srcopen
}

// =============== remove ===============

// remove signatures
int remove_signatures[3] = {0};

// Initialize remove signatures
void init_remove_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        remove_signatures[i] = (int)rand();
    }

    // [0] remove_0 = 0
    // [1] remove_ocsp_cache_remove = ocsp_cache_remove
    // [2] remove_sess_cache_remove = sess_cache_remove
}

// =============== removexattr ===============

// removexattr signatures
int removexattr_signatures[1] = {0};

// Initialize removexattr signatures
void init_removexattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        removexattr_signatures[i] = (int)rand();
    }

    // [0] removexattr_sys_removexattr = sys_removexattr
}

// =============== rename ===============

// rename signatures
int rename_signatures[2] = {0};

// Initialize rename signatures
void init_rename_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        rename_signatures[i] = (int)rand();
    }

    // [0] rename_statcache_fsio_rename = statcache_fsio_rename
    // [1] rename_sys_rename = sys_rename
}

// =============== reopen ===============

// reopen signatures
int reopen_signatures[2] = {0};

// Initialize reopen signatures
void init_reopen_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        reopen_signatures[i] = (int)rand();
    }

    // [0] reopen_core_netio_reopen_cb = core_netio_reopen_cb
    // [1] reopen_tls_netio_reopen_cb = tls_netio_reopen_cb
}

// =============== rmdir ===============

// rmdir signatures
int rmdir_signatures[1] = {0};

// Initialize rmdir signatures
void init_rmdir_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        rmdir_signatures[i] = (int)rand();
    }

    // [0] rmdir_sys_rmdir = sys_rmdir
}

// =============== setxattr ===============

// setxattr signatures
int setxattr_signatures[1] = {0};

// Initialize setxattr signatures
void init_setxattr_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        setxattr_signatures[i] = (int)rand();
    }

    // [0] setxattr_sys_setxattr = sys_setxattr
}

// =============== shutdown ===============

// shutdown signatures
int shutdown_signatures[4] = {0};

// Initialize shutdown signatures
void init_shutdown_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        shutdown_signatures[i] = (int)rand();
    }

    // [0] shutdown_core_netio_shutdown_cb = core_netio_shutdown_cb
    // [1] shutdown_deflate_netio_shutdown_cb = deflate_netio_shutdown_cb
    // [2] shutdown_deflate_next_netio_shutdown = deflate_next_netio_shutdown
    // [3] shutdown_tls_netio_shutdown_cb = tls_netio_shutdown_cb
}

// =============== stat ===============

// stat signatures
int stat_signatures[3] = {0};

// Initialize stat signatures
void init_stat_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        stat_signatures[i] = (int)rand();
    }

    // [0] stat_robots_fsio_stat = robots_fsio_stat
    // [1] stat_statcache_fsio_stat = statcache_fsio_stat
    // [2] stat_sys_stat = sys_stat
}

// =============== status ===============

// status signatures
int status_signatures[2] = {0};

// Initialize status signatures
void init_status_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        status_signatures[i] = (int)rand();
    }

    // [0] status_ocsp_cache_status = ocsp_cache_status
    // [1] status_sess_cache_status = sess_cache_status
}

// =============== symlink ===============

// symlink signatures
int symlink_signatures[1] = {0};

// Initialize symlink signatures
void init_symlink_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 1; i++) {
        symlink_signatures[i] = (int)rand();
    }

    // [0] symlink_sys_symlink = sys_symlink
}

// =============== tab_close ===============

// tab_close signatures
int tab_close_signatures[7] = {0};

// Initialize tab_close signatures
void init_tab_close_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 7; i++) {
        tab_close_signatures[i] = (int)rand();
    }

    // [0] tab_close_filetab_close = filetab_close
    // [1] tab_close_filetab_close_cb = filetab_close_cb
    // [2] tab_close_ldaptab_close = ldaptab_close
    // [3] tab_close_radiustab_close = radiustab_close
    // [4] tab_close_redistab_close_cb = redistab_close_cb
    // [5] tab_close_sqltab_close = sqltab_close
    // [6] tab_close_sqltab_close_cb = sqltab_close_cb
}

// =============== tab_create ===============

// tab_create signatures
int tab_create_signatures[2] = {0};

// Initialize tab_create signatures
void init_tab_create_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_create_signatures[i] = (int)rand();
    }

    // [0] tab_create_filetab_create = filetab_create
    // [1] tab_create_sqltab_create = sqltab_create
}

// =============== tab_lookup ===============

// tab_lookup signatures
int tab_lookup_signatures[4] = {0};

// Initialize tab_lookup signatures
void init_tab_lookup_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        tab_lookup_signatures[i] = (int)rand();
    }

    // [0] tab_lookup_filetab_lookup = filetab_lookup
    // [1] tab_lookup_ldaptab_lookup = ldaptab_lookup
    // [2] tab_lookup_radiustab_lookup = radiustab_lookup
    // [3] tab_lookup_sqltab_lookup = sqltab_lookup
}

// =============== tab_read ===============

// tab_read signatures
int tab_read_signatures[2] = {0};

// Initialize tab_read signatures
void init_tab_read_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_read_signatures[i] = (int)rand();
    }

    // [0] tab_read_filetab_read = filetab_read
    // [1] tab_read_sqltab_read = sqltab_read
}

// =============== tab_rlock ===============

// tab_rlock signatures
int tab_rlock_signatures[2] = {0};

// Initialize tab_rlock signatures
void init_tab_rlock_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_rlock_signatures[i] = (int)rand();
    }

    // [0] tab_rlock_filetab_rlock = filetab_rlock
    // [1] tab_rlock_sqltab_rlock = sqltab_rlock
}

// =============== tab_unlock ===============

// tab_unlock signatures
int tab_unlock_signatures[2] = {0};

// Initialize tab_unlock signatures
void init_tab_unlock_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_unlock_signatures[i] = (int)rand();
    }

    // [0] tab_unlock_filetab_unlock = filetab_unlock
    // [1] tab_unlock_sqltab_unlock = sqltab_unlock
}

// =============== tab_verify ===============

// tab_verify signatures
int tab_verify_signatures[4] = {0};

// Initialize tab_verify signatures
void init_tab_verify_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 4; i++) {
        tab_verify_signatures[i] = (int)rand();
    }

    // [0] tab_verify_filetab_verify = filetab_verify
    // [1] tab_verify_ldaptab_verify = ldaptab_verify
    // [2] tab_verify_radiustab_verify = radiustab_verify
    // [3] tab_verify_sqltab_verify = sqltab_verify
}

// =============== tab_wlock ===============

// tab_wlock signatures
int tab_wlock_signatures[2] = {0};

// Initialize tab_wlock signatures
void init_tab_wlock_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_wlock_signatures[i] = (int)rand();
    }

    // [0] tab_wlock_filetab_wlock = filetab_wlock
    // [1] tab_wlock_sqltab_wlock = sqltab_wlock
}

// =============== tab_write ===============

// tab_write signatures
int tab_write_signatures[2] = {0};

// Initialize tab_write signatures
void init_tab_write_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        tab_write_signatures[i] = (int)rand();
    }

    // [0] tab_write_filetab_write = filetab_write
    // [1] tab_write_sqltab_write = sqltab_write
}

// =============== truncate ===============

// truncate signatures
int truncate_signatures[2] = {0};

// Initialize truncate signatures
void init_truncate_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        truncate_signatures[i] = (int)rand();
    }

    // [0] truncate_statcache_fsio_truncate = statcache_fsio_truncate
    // [1] truncate_sys_truncate = sys_truncate
}

// =============== unlink ===============

// unlink signatures
int unlink_signatures[3] = {0};

// Initialize unlink signatures
void init_unlink_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        unlink_signatures[i] = (int)rand();
    }

    // [0] unlink_robots_fsio_unlink = robots_fsio_unlink
    // [1] unlink_statcache_fsio_unlink = statcache_fsio_unlink
    // [2] unlink_sys_unlink = sys_unlink
}

// =============== utimes ===============

// utimes signatures
int utimes_signatures[2] = {0};

// Initialize utimes signatures
void init_utimes_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 2; i++) {
        utimes_signatures[i] = (int)rand();
    }

    // [0] utimes_statcache_fsio_utimes = statcache_fsio_utimes
    // [1] utimes_sys_utimes = sys_utimes
}

// =============== visit ===============

// visit signatures
int visit_signatures[3] = {0};

// Initialize visit signatures
void init_visit_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 3; i++) {
        visit_signatures[i] = (int)rand();
    }

    // [0] visit_NULL = NULL
    // [1] visit_pool_visitf = pool_visitf
    // [2] visit_test_visitf = test_visitf
}

// =============== write ===============

// write signatures
int write_signatures[8] = {0};

// Initialize write signatures
void init_write_signatures(void) {
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    // Fill signatures with random data
    for (int i = 0; i < 8; i++) {
        write_signatures[i] = (int)rand();
    }

    // [0] write_core_netio_write_cb = core_netio_write_cb
    // [1] write_deflate_netio_write_cb = deflate_netio_write_cb
    // [2] write_deflate_next_netio_write = deflate_next_netio_write
    // [3] write_quotatab_fsio_write = quotatab_fsio_write
    // [4] write_robots_fsio_write = robots_fsio_write
    // [5] write_statcache_fsio_write = statcache_fsio_write
    // [6] write_sys_write = sys_write
    // [7] write_tls_netio_write_cb = tls_netio_write_cb
}

// Global initialization function
void init_all_fp_signatures(void) {
    static int global_initialized = 0;
    if (global_initialized) return;
    global_initialized = 1;

    srand((int)time(NULL));

    init_abort_signatures();
    init_access_signatures();
    init_action_cb_signatures();
    init_add_signatures();
    init_cb_signatures();
    init_chdir_signatures();
    init_child_cleanup_cb_signatures();
    init_chk_signatures();
    init_chmod_signatures();
    init_chown_signatures();
    init_chroot_signatures();
    init_ck_signatures();
    init_cleanup_cb_signatures();
    init_clear_signatures();
    init_close_signatures();
    init_closedir_signatures();
    init_ctrls_cb_signatures();
    init_debugf_signatures();
    init_delete_signatures();
    init_callback_signatures();
    init_dumpf_signatures();
    init_entinsert_signatures();
    init_entremove_signatures();
    init_errfunc_signatures();
    init_f_signatures();
    init_faccess_signatures();
    init_fchmod_signatures();
    init_fchown_signatures();
    init_fgetxattr_signatures();
    init_flistxattr_signatures();
    init_fremovexattr_signatures();
    init_fsetxattr_signatures();
    init_fstat_signatures();
    init_fsync_signatures();
    init_ftruncate_signatures();
    init_futimes_signatures();
    init_get_signatures();
    init_getxattr_signatures();
    init_handler_signatures();
    init_keycmp_signatures();
    init_keyhash_signatures();
    init_lchown_signatures();
    init_lgetxattr_signatures();
    init_link_signatures();
    init_listf_signatures();
    init_listxattr_signatures();
    init_llistxattr_signatures();
    init_lremovexattr_signatures();
    init_lseek_signatures();
    init_lsetxattr_signatures();
    init_lstat_signatures();
    init_match_token_signatures();
    init_mkdir_signatures();
    init_on_default_signatures();
    init_on_meta_signatures();
    init_on_other_signatures();
    init_on_unknown_signatures();
    init_oom_signatures();
    init_open_signatures();
    init_opendir_signatures();
    init_plain_cleanup_cb_signatures();
    init_poll_signatures();
    init_postopen_signatures();
    init_pread_signatures();
    init_progress_cb_signatures();
    init_pwrite_signatures();
    init_read_signatures();
    init_readdir_signatures();
    init_readlink_signatures();
    init_realpath_signatures();
    init_regtab_open_signatures();
    init_remove_signatures();
    init_removexattr_signatures();
    init_rename_signatures();
    init_reopen_signatures();
    init_rmdir_signatures();
    init_setxattr_signatures();
    init_shutdown_signatures();
    init_stat_signatures();
    init_status_signatures();
    init_symlink_signatures();
    init_tab_close_signatures();
    init_tab_create_signatures();
    init_tab_lookup_signatures();
    init_tab_read_signatures();
    init_tab_rlock_signatures();
    init_tab_unlock_signatures();
    init_tab_verify_signatures();
    init_tab_wlock_signatures();
    init_tab_write_signatures();
    init_truncate_signatures();
    init_unlink_signatures();
    init_utimes_signatures();
    init_visit_signatures();
    init_write_signatures();
}
