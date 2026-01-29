#ifndef PROFTPD_SIGNATURES_HEADER_H
#define PROFTPD_SIGNATURES_HEADER_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 94
 * Total functions: 764
 * Signature type: int
 */

#include <stdlib.h>
#include <time.h>
#include <string.h>
#include "jot.h"
typedef struct wrap2_conn_t wrap2_conn_t;
typedef struct quota_table_t quota_table_t;
typedef struct tls_ocsp_cache_t tls_ocsp_cache_t;
typedef struct OCSP_RESPONSE OCSP_RESPONSE;
typedef struct tls_sess_cache_t tls_sess_cache_t;
typedef struct SSL_SESSION SSL_SESSION;
typedef struct wrap2_table_t wrap2_table_t;
typedef struct quota_type_t quota_type_t;
typedef struct sftp_kbdint_driver_t sftp_kbdint_driver_t;

// =============== abort ===============

// abort function enumeration
typedef enum {
    abort_core_netio_abort_cb = 0,
    abort_tls_netio_abort_cb = 1
} abort_enum;

// abort signatures (int)
extern int abort_signatures[2];

// abort signature initialization
void init_abort_signatures(void);

// =============== access ===============

// access function enumeration
typedef enum {
    access_facl_fsio_access = 0,
    access_robots_fsio_access = 1,
    access_sys_access = 2
} access_enum;

// access signatures (int)
extern int access_signatures[3];

// access signature initialization
void init_access_signatures(void);

// =============== action_cb ===============

// action_cb function enumeration
typedef enum {
    action_cb_NULL = 0,
    action_cb_array_item_fail = 1,
    action_cb_array_item_ok = 2,
    action_cb_auth_exit_ev = 3,
    action_cb_auth_otp_exit_ev = 4,
    action_cb_auth_otp_mod_unload_ev = 5,
    action_cb_auth_otp_sess_reinit_ev = 6,
    action_cb_auth_pam_exit_ev = 7,
    action_cb_auth_sess_reinit_ev = 8,
    action_cb_auth_unix_exit_ev = 9,
    action_cb_auth_unix_sess_reinit_ev = 10,
    action_cb_authfile_sess_reinit_ev = 11,
    action_cb_ban_anonrejectpasswords_ev = 12,
    action_cb_ban_badprotocol_ev = 13,
    action_cb_ban_clientconnectrate_ev = 14,
    action_cb_ban_emptypassword_ev = 15,
    action_cb_ban_maxclientsperclass_ev = 16,
    action_cb_ban_maxclientsperhost_ev = 17,
    action_cb_ban_maxclientsperuser_ev = 18,
    action_cb_ban_maxcmdrate_ev = 19,
    action_cb_ban_maxconnperhost_ev = 20,
    action_cb_ban_maxhostsperuser_ev = 21,
    action_cb_ban_maxloginattempts_ev = 22,
    action_cb_ban_maxloginattemptsfromuser_ev = 23,
    action_cb_ban_mod_unload_ev = 24,
    action_cb_ban_postparse_ev = 25,
    action_cb_ban_restart_ev = 26,
    action_cb_ban_rootlogin_ev = 27,
    action_cb_ban_sess_reinit_ev = 28,
    action_cb_ban_shutdown_ev = 29,
    action_cb_ban_timeoutidle_ev = 30,
    action_cb_ban_timeoutlogin_ev = 31,
    action_cb_ban_timeoutnoxfer_ev = 32,
    action_cb_ban_tlshandshake_ev = 33,
    action_cb_ban_unhandledcmd_ev = 34,
    action_cb_ban_userdefined_ev = 35,
    action_cb_cap_sess_reinit_ev = 36,
    action_cb_core_chroot_ev = 37,
    action_cb_core_connected_ev = 38,
    action_cb_core_exit_ev = 39,
    action_cb_core_postparse_ev = 40,
    action_cb_core_restart_ev = 41,
    action_cb_core_startup_ev = 42,
    action_cb_ctrls_admin_mod_unload_ev = 43,
    action_cb_ctrls_admin_restart_ev = 44,
    action_cb_ctrls_admin_startup_ev = 45,
    action_cb_ctrls_postparse_ev = 46,
    action_cb_ctrls_restart_ev = 47,
    action_cb_ctrls_shutdown_ev = 48,
    action_cb_ctrls_test2_cb = 49,
    action_cb_ctrls_test_cb = 50,
    action_cb_define_restart_ev = 51,
    action_cb_deflate_sess_reinit_ev = 52,
    action_cb_delay_connect_ev = 53,
    action_cb_delay_handle_delay = 54,
    action_cb_delay_mod_unload_ev = 55,
    action_cb_delay_postparse_ev = 56,
    action_cb_delay_restart_ev = 57,
    action_cb_delay_sess_reinit_ev = 58,
    action_cb_delay_shutdown_ev = 59,
    action_cb_digest_data_xfer_ev = 60,
    action_cb_digest_mod_unload_ev = 61,
    action_cb_digest_sess_reinit_ev = 62,
    action_cb_dnsbl_sess_reinit_ev = 63,
    action_cb_do_cb = 64,
    action_cb_do_with_remove_cb = 65,
    action_cb_dso_restart_ev = 66,
    action_cb_dynmasq_handle_dynmasq = 67,
    action_cb_dynmasq_mod_unload_ev = 68,
    action_cb_dynmasq_postparse_ev = 69,
    action_cb_dynmasq_restart_ev = 70,
    action_cb_event_cb = 71,
    action_cb_event_cb2 = 72,
    action_cb_event_cb3 = 73,
    action_cb_exec_any_ev = 74,
    action_cb_exec_mod_unload_ev = 75,
    action_cb_exec_postparse_ev = 76,
    action_cb_exec_restart_ev = 77,
    action_cb_exec_sess_reinit_ev = 78,
    action_cb_facl_mod_unload_ev = 79,
    action_cb_facl_postparse_ev = 80,
    action_cb_facl_restart_ev = 81,
    action_cb_facts_sess_reinit_ev = 82,
    action_cb_filetab_mod_unload_ev = 83,
    action_cb_forensic_exit_ev = 84,
    action_cb_forensic_log_ev = 85,
    action_cb_forensic_mod_unload_ev = 86,
    action_cb_forensic_sess_reinit_ev = 87,
    action_cb_fscache_mod_unload_ev = 88,
    action_cb_fxp_handle_abort = 89,
    action_cb_geoip_mod_unload_ev = 90,
    action_cb_geoip_postparse_ev = 91,
    action_cb_geoip_restart_ev = 92,
    action_cb_ident_sess_reinit_ev = 93,
    action_cb_ifsess_chroot_ev = 94,
    action_cb_ifsess_mod_unload_ev = 95,
    action_cb_ifsess_postparse_ev = 96,
    action_cb_lang_postparse_ev = 97,
    action_cb_lang_restart_ev = 98,
    action_cb_ldap_mod_unload_ev = 99,
    action_cb_ldap_postparse_ev = 100,
    action_cb_ldap_sess_reinit_ev = 101,
    action_cb_ldap_shutdown_ev = 102,
    action_cb_ldaptab_mod_unload_ev = 103,
    action_cb_log_exit_ev = 104,
    action_cb_log_fmt_extra_iter_cb = 105,
    action_cb_log_postparse_ev = 106,
    action_cb_log_restart_ev = 107,
    action_cb_log_sess_reinit_ev = 108,
    action_cb_log_xfer_stalled_ev = 109,
    action_cb_mcache_exit_ev = 110,
    action_cb_mcache_restart_ev = 111,
    action_cb_mcache_sess_reinit_ev = 112,
    action_cb_object_item_fail = 113,
    action_cb_object_item_ok = 114,
    action_cb_pool_visitf = 115,
    action_cb_qos_ctrl_listen_ev = 116,
    action_cb_qos_data_connect_ev = 117,
    action_cb_qos_data_listen_ev = 118,
    action_cb_qos_mod_unload_ev = 119,
    action_cb_qos_sess_reinit_ev = 120,
    action_cb_quotatab_exit_ev = 121,
    action_cb_quotatab_mod_unload_ev = 122,
    action_cb_quotatab_restart_ev = 123,
    action_cb_quotatab_sess_reinit_ev = 124,
    action_cb_radius_exit_ev = 125,
    action_cb_radius_mod_unload_ev = 126,
    action_cb_radius_restart_ev = 127,
    action_cb_radius_sess_reinit_ev = 128,
    action_cb_radiustab_mod_unload_ev = 129,
    action_cb_redis_restart_ev = 130,
    action_cb_redis_sess_reinit_ev = 131,
    action_cb_redis_shutdown_ev = 132,
    action_cb_redistab_mod_unload_ev = 133,
    action_cb_regexp_exit_ev = 134,
    action_cb_regexp_restart_ev = 135,
    action_cb_restart_daemon = 136,
    action_cb_rewrite_exit_ev = 137,
    action_cb_rewrite_mod_unload_ev = 138,
    action_cb_rewrite_restart_ev = 139,
    action_cb_rewrite_rewrite_home_ev = 140,
    action_cb_rewrite_sess_reinit_ev = 141,
    action_cb_rlimit_chroot_ev = 142,
    action_cb_rlimit_postparse_ev = 143,
    action_cb_schedule_cb = 144,
    action_cb_sftp_ban_class_ev = 145,
    action_cb_sftp_ban_host_ev = 146,
    action_cb_sftp_ban_user_ev = 147,
    action_cb_sftp_chroot_ev = 148,
    action_cb_sftp_exit_ev = 149,
    action_cb_sftp_max_conns_ev = 150,
    action_cb_sftp_mod_unload_ev = 151,
    action_cb_sftp_postparse_ev = 152,
    action_cb_sftp_restart_ev = 153,
    action_cb_sftp_shutdown_ev = 154,
    action_cb_sftp_sigusr2_ev = 155,
    action_cb_sftp_timeoutlogin_ev = 156,
    action_cb_sftp_wrap_conn_denied_ev = 157,
    action_cb_sftppam_exit_ev = 158,
    action_cb_sftppam_mod_unload_ev = 159,
    action_cb_sftpsql_mod_unload_ev = 160,
    action_cb_shaper_handle_shaper = 161,
    action_cb_shaper_mod_unload_ev = 162,
    action_cb_shaper_postparse_ev = 163,
    action_cb_shaper_restart_ev = 164,
    action_cb_shaper_sess_exit_ev = 165,
    action_cb_shaper_shutdown_ev = 166,
    action_cb_shaper_sigusr2_ev = 167,
    action_cb_shmcache_mod_unload_ev = 168,
    action_cb_shmcache_restart_ev = 169,
    action_cb_shmcache_shutdown_ev = 170,
    action_cb_shutdown_end_session = 171,
    action_cb_site_misc_sess_reinit_ev = 172,
    action_cb_snmp_auth_code_ev = 173,
    action_cb_snmp_ban_ban_class_ev = 174,
    action_cb_snmp_ban_ban_host_ev = 175,
    action_cb_snmp_ban_ban_user_ev = 176,
    action_cb_snmp_ban_client_disconn_ev = 177,
    action_cb_snmp_ban_expired_ban_ev = 178,
    action_cb_snmp_cmd_invalid_ev = 179,
    action_cb_snmp_exit_ev = 180,
    action_cb_snmp_max_inst_ev = 181,
    action_cb_snmp_mod_unload_ev = 182,
    action_cb_snmp_postparse_ev = 183,
    action_cb_snmp_restart_ev = 184,
    action_cb_snmp_shutdown_ev = 185,
    action_cb_snmp_ssh2_auth_hostbased_err_ev = 186,
    action_cb_snmp_ssh2_auth_hostbased_ev = 187,
    action_cb_snmp_ssh2_auth_kbdint_err_ev = 188,
    action_cb_snmp_ssh2_auth_kbdint_ev = 189,
    action_cb_snmp_ssh2_auth_passwd_err_ev = 190,
    action_cb_snmp_ssh2_auth_passwd_ev = 191,
    action_cb_snmp_ssh2_auth_publickey_err_ev = 192,
    action_cb_snmp_ssh2_auth_publickey_ev = 193,
    action_cb_snmp_ssh2_c2s_compress_ev = 194,
    action_cb_snmp_ssh2_kex_err_ev = 195,
    action_cb_snmp_ssh2_s2c_compress_ev = 196,
    action_cb_snmp_ssh2_scp_sess_closed_ev = 197,
    action_cb_snmp_ssh2_scp_sess_opened_ev = 198,
    action_cb_snmp_ssh2_sftp_proto_version_ev = 199,
    action_cb_snmp_ssh2_sftp_sess_closed_ev = 200,
    action_cb_snmp_ssh2_sftp_sess_opened_ev = 201,
    action_cb_snmp_startup_ev = 202,
    action_cb_snmp_timeout_idle_ev = 203,
    action_cb_snmp_timeout_login_ev = 204,
    action_cb_snmp_timeout_noxfer_ev = 205,
    action_cb_snmp_timeout_stalled_ev = 206,
    action_cb_snmp_tls_ctrl_handshake_err_ev = 207,
    action_cb_snmp_tls_data_handshake_err_ev = 208,
    action_cb_snmp_tls_verify_client_err_ev = 209,
    action_cb_snmp_tls_verify_client_ev = 210,
    action_cb_sql_chroot_ev = 211,
    action_cb_sql_eventlog_ev = 212,
    action_cb_sql_exit_ev = 213,
    action_cb_sql_mod_unload_ev = 214,
    action_cb_sql_mysql_mod_load_ev = 215,
    action_cb_sql_mysql_mod_unload_ev = 216,
    action_cb_sql_passwd_mod_unload_ev = 217,
    action_cb_sql_passwd_sess_reinit_ev = 218,
    action_cb_sql_postgres_mod_load_ev = 219,
    action_cb_sql_postgres_mod_unload_ev = 220,
    action_cb_sql_preparse_ev = 221,
    action_cb_sql_sess_reinit_ev = 222,
    action_cb_sql_sqlite_mod_load_ev = 223,
    action_cb_sql_sqlite_mod_unload_ev = 224,
    action_cb_sqlodbc_mod_unload_ev = 225,
    action_cb_sqltab_mod_unload_ev = 226,
    action_cb_statcache_fs_statcache_clear_ev = 227,
    action_cb_statcache_mod_unload_ev = 228,
    action_cb_statcache_postparse_ev = 229,
    action_cb_statcache_restart_ev = 230,
    action_cb_statcache_sess_reinit_ev = 231,
    action_cb_statcache_shutdown_ev = 232,
    action_cb_systemd_mod_unload_ev = 233,
    action_cb_systemd_postparse_ev = 234,
    action_cb_systemd_restart_ev = 235,
    action_cb_systemd_shutdown_ev = 236,
    action_cb_systemd_startup_ev = 237,
    action_cb_tab_copy_cb = 238,
    action_cb_test_visitf = 239,
    action_cb_tls_exit_ev = 240,
    action_cb_tls_handle_tls = 241,
    action_cb_tls_mcache_mod_unload_ev = 242,
    action_cb_tls_mod_unload_ev = 243,
    action_cb_tls_postparse_ev = 244,
    action_cb_tls_redis_mod_unload_ev = 245,
    action_cb_tls_restart_ev = 246,
    action_cb_tls_sess_reinit_ev = 247,
    action_cb_tls_shutdown_ev = 248,
    action_cb_tls_timeout_ev = 249,
    action_cb_trace_restart_ev = 250,
    action_cb_uniqid_mod_unload_ev = 251,
    action_cb_uniqid_postparse_ev = 252,
    action_cb_wrap2_exit_ev = 253,
    action_cb_wrap2_mod_unload_ev = 254,
    action_cb_wrap2_restart_ev = 255,
    action_cb_wrap2_sess_reinit_ev = 256,
    action_cb_wrap_sess_reinit_ev = 257,
    action_cb_xfer_exit_ev = 258,
    action_cb_xfer_sess_reinit_ev = 259,
    action_cb_xfer_sigusr2_ev = 260,
    action_cb_xfer_timeout_session_ev = 261,
    action_cb_xfer_timeout_stalled_ev = 262
} action_cb_enum;

// action_cb signatures (int)
extern int action_cb_signatures[263];

// action_cb signature initialization
void init_action_cb_signatures(void);

// =============== add ===============

// add function enumeration
typedef enum {
    add_ocsp_cache_add = 0,
    add_sess_cache_add = 1
} add_enum;

// add signatures (int)
extern int add_signatures[2];

// add signature initialization
void init_add_signatures(void);

// =============== cb ===============

// cb function enumeration
typedef enum {
    cb_NULL = 0,
    cb_array_item_fail = 1,
    cb_array_item_ok = 2,
    cb_auth_exit_ev = 3,
    cb_auth_otp_exit_ev = 4,
    cb_auth_otp_mod_unload_ev = 5,
    cb_auth_otp_sess_reinit_ev = 6,
    cb_auth_pam_exit_ev = 7,
    cb_auth_sess_reinit_ev = 8,
    cb_auth_unix_exit_ev = 9,
    cb_auth_unix_sess_reinit_ev = 10,
    cb_authfile_sess_reinit_ev = 11,
    cb_ban_anonrejectpasswords_ev = 12,
    cb_ban_badprotocol_ev = 13,
    cb_ban_clientconnectrate_ev = 14,
    cb_ban_emptypassword_ev = 15,
    cb_ban_maxclientsperclass_ev = 16,
    cb_ban_maxclientsperhost_ev = 17,
    cb_ban_maxclientsperuser_ev = 18,
    cb_ban_maxcmdrate_ev = 19,
    cb_ban_maxconnperhost_ev = 20,
    cb_ban_maxhostsperuser_ev = 21,
    cb_ban_maxloginattempts_ev = 22,
    cb_ban_maxloginattemptsfromuser_ev = 23,
    cb_ban_mod_unload_ev = 24,
    cb_ban_postparse_ev = 25,
    cb_ban_restart_ev = 26,
    cb_ban_rootlogin_ev = 27,
    cb_ban_sess_reinit_ev = 28,
    cb_ban_shutdown_ev = 29,
    cb_ban_timeoutidle_ev = 30,
    cb_ban_timeoutlogin_ev = 31,
    cb_ban_timeoutnoxfer_ev = 32,
    cb_ban_tlshandshake_ev = 33,
    cb_ban_unhandledcmd_ev = 34,
    cb_ban_userdefined_ev = 35,
    cb_cap_sess_reinit_ev = 36,
    cb_core_chroot_ev = 37,
    cb_core_connected_ev = 38,
    cb_core_exit_ev = 39,
    cb_core_postparse_ev = 40,
    cb_core_restart_ev = 41,
    cb_core_startup_ev = 42,
    cb_ctrls_admin_mod_unload_ev = 43,
    cb_ctrls_admin_restart_ev = 44,
    cb_ctrls_admin_startup_ev = 45,
    cb_ctrls_postparse_ev = 46,
    cb_ctrls_restart_ev = 47,
    cb_ctrls_shutdown_ev = 48,
    cb_ctrls_test2_cb = 49,
    cb_ctrls_test_cb = 50,
    cb_define_restart_ev = 51,
    cb_deflate_sess_reinit_ev = 52,
    cb_delay_connect_ev = 53,
    cb_delay_handle_delay = 54,
    cb_delay_mod_unload_ev = 55,
    cb_delay_postparse_ev = 56,
    cb_delay_restart_ev = 57,
    cb_delay_sess_reinit_ev = 58,
    cb_delay_shutdown_ev = 59,
    cb_digest_data_xfer_ev = 60,
    cb_digest_mod_unload_ev = 61,
    cb_digest_sess_reinit_ev = 62,
    cb_dnsbl_sess_reinit_ev = 63,
    cb_do_cb = 64,
    cb_do_with_remove_cb = 65,
    cb_dso_restart_ev = 66,
    cb_dynmasq_handle_dynmasq = 67,
    cb_dynmasq_mod_unload_ev = 68,
    cb_dynmasq_postparse_ev = 69,
    cb_dynmasq_restart_ev = 70,
    cb_event_cb = 71,
    cb_event_cb2 = 72,
    cb_event_cb3 = 73,
    cb_exec_any_ev = 74,
    cb_exec_mod_unload_ev = 75,
    cb_exec_postparse_ev = 76,
    cb_exec_restart_ev = 77,
    cb_exec_sess_reinit_ev = 78,
    cb_facl_mod_unload_ev = 79,
    cb_facl_postparse_ev = 80,
    cb_facl_restart_ev = 81,
    cb_facts_sess_reinit_ev = 82,
    cb_filetab_mod_unload_ev = 83,
    cb_forensic_exit_ev = 84,
    cb_forensic_log_ev = 85,
    cb_forensic_mod_unload_ev = 86,
    cb_forensic_sess_reinit_ev = 87,
    cb_fscache_mod_unload_ev = 88,
    cb_fxp_handle_abort = 89,
    cb_geoip_mod_unload_ev = 90,
    cb_geoip_postparse_ev = 91,
    cb_geoip_restart_ev = 92,
    cb_ident_sess_reinit_ev = 93,
    cb_ifsess_chroot_ev = 94,
    cb_ifsess_mod_unload_ev = 95,
    cb_ifsess_postparse_ev = 96,
    cb_lang_postparse_ev = 97,
    cb_lang_restart_ev = 98,
    cb_ldap_mod_unload_ev = 99,
    cb_ldap_postparse_ev = 100,
    cb_ldap_sess_reinit_ev = 101,
    cb_ldap_shutdown_ev = 102,
    cb_ldaptab_mod_unload_ev = 103,
    cb_log_exit_ev = 104,
    cb_log_fmt_extra_iter_cb = 105,
    cb_log_postparse_ev = 106,
    cb_log_restart_ev = 107,
    cb_log_sess_reinit_ev = 108,
    cb_log_xfer_stalled_ev = 109,
    cb_mcache_exit_ev = 110,
    cb_mcache_restart_ev = 111,
    cb_mcache_sess_reinit_ev = 112,
    cb_object_item_fail = 113,
    cb_object_item_ok = 114,
    cb_pool_visitf = 115,
    cb_qos_ctrl_listen_ev = 116,
    cb_qos_data_connect_ev = 117,
    cb_qos_data_listen_ev = 118,
    cb_qos_mod_unload_ev = 119,
    cb_qos_sess_reinit_ev = 120,
    cb_quotatab_exit_ev = 121,
    cb_quotatab_mod_unload_ev = 122,
    cb_quotatab_restart_ev = 123,
    cb_quotatab_sess_reinit_ev = 124,
    cb_radius_exit_ev = 125,
    cb_radius_mod_unload_ev = 126,
    cb_radius_restart_ev = 127,
    cb_radius_sess_reinit_ev = 128,
    cb_radiustab_mod_unload_ev = 129,
    cb_redis_restart_ev = 130,
    cb_redis_sess_reinit_ev = 131,
    cb_redis_shutdown_ev = 132,
    cb_redistab_mod_unload_ev = 133,
    cb_regexp_exit_ev = 134,
    cb_regexp_restart_ev = 135,
    cb_restart_daemon = 136,
    cb_rewrite_exit_ev = 137,
    cb_rewrite_mod_unload_ev = 138,
    cb_rewrite_restart_ev = 139,
    cb_rewrite_rewrite_home_ev = 140,
    cb_rewrite_sess_reinit_ev = 141,
    cb_rlimit_chroot_ev = 142,
    cb_rlimit_postparse_ev = 143,
    cb_schedule_cb = 144,
    cb_sftp_ban_class_ev = 145,
    cb_sftp_ban_host_ev = 146,
    cb_sftp_ban_user_ev = 147,
    cb_sftp_chroot_ev = 148,
    cb_sftp_exit_ev = 149,
    cb_sftp_max_conns_ev = 150,
    cb_sftp_mod_unload_ev = 151,
    cb_sftp_postparse_ev = 152,
    cb_sftp_restart_ev = 153,
    cb_sftp_shutdown_ev = 154,
    cb_sftp_sigusr2_ev = 155,
    cb_sftp_timeoutlogin_ev = 156,
    cb_sftp_wrap_conn_denied_ev = 157,
    cb_sftppam_exit_ev = 158,
    cb_sftppam_mod_unload_ev = 159,
    cb_sftpsql_mod_unload_ev = 160,
    cb_shaper_handle_shaper = 161,
    cb_shaper_mod_unload_ev = 162,
    cb_shaper_postparse_ev = 163,
    cb_shaper_restart_ev = 164,
    cb_shaper_sess_exit_ev = 165,
    cb_shaper_shutdown_ev = 166,
    cb_shaper_sigusr2_ev = 167,
    cb_shmcache_mod_unload_ev = 168,
    cb_shmcache_restart_ev = 169,
    cb_shmcache_shutdown_ev = 170,
    cb_shutdown_end_session = 171,
    cb_site_misc_sess_reinit_ev = 172,
    cb_snmp_auth_code_ev = 173,
    cb_snmp_ban_ban_class_ev = 174,
    cb_snmp_ban_ban_host_ev = 175,
    cb_snmp_ban_ban_user_ev = 176,
    cb_snmp_ban_client_disconn_ev = 177,
    cb_snmp_ban_expired_ban_ev = 178,
    cb_snmp_cmd_invalid_ev = 179,
    cb_snmp_exit_ev = 180,
    cb_snmp_max_inst_ev = 181,
    cb_snmp_mod_unload_ev = 182,
    cb_snmp_postparse_ev = 183,
    cb_snmp_restart_ev = 184,
    cb_snmp_shutdown_ev = 185,
    cb_snmp_ssh2_auth_hostbased_err_ev = 186,
    cb_snmp_ssh2_auth_hostbased_ev = 187,
    cb_snmp_ssh2_auth_kbdint_err_ev = 188,
    cb_snmp_ssh2_auth_kbdint_ev = 189,
    cb_snmp_ssh2_auth_passwd_err_ev = 190,
    cb_snmp_ssh2_auth_passwd_ev = 191,
    cb_snmp_ssh2_auth_publickey_err_ev = 192,
    cb_snmp_ssh2_auth_publickey_ev = 193,
    cb_snmp_ssh2_c2s_compress_ev = 194,
    cb_snmp_ssh2_kex_err_ev = 195,
    cb_snmp_ssh2_s2c_compress_ev = 196,
    cb_snmp_ssh2_scp_sess_closed_ev = 197,
    cb_snmp_ssh2_scp_sess_opened_ev = 198,
    cb_snmp_ssh2_sftp_proto_version_ev = 199,
    cb_snmp_ssh2_sftp_sess_closed_ev = 200,
    cb_snmp_ssh2_sftp_sess_opened_ev = 201,
    cb_snmp_startup_ev = 202,
    cb_snmp_timeout_idle_ev = 203,
    cb_snmp_timeout_login_ev = 204,
    cb_snmp_timeout_noxfer_ev = 205,
    cb_snmp_timeout_stalled_ev = 206,
    cb_snmp_tls_ctrl_handshake_err_ev = 207,
    cb_snmp_tls_data_handshake_err_ev = 208,
    cb_snmp_tls_verify_client_err_ev = 209,
    cb_snmp_tls_verify_client_ev = 210,
    cb_sql_chroot_ev = 211,
    cb_sql_eventlog_ev = 212,
    cb_sql_exit_ev = 213,
    cb_sql_mod_unload_ev = 214,
    cb_sql_mysql_mod_load_ev = 215,
    cb_sql_mysql_mod_unload_ev = 216,
    cb_sql_passwd_mod_unload_ev = 217,
    cb_sql_passwd_sess_reinit_ev = 218,
    cb_sql_postgres_mod_load_ev = 219,
    cb_sql_postgres_mod_unload_ev = 220,
    cb_sql_preparse_ev = 221,
    cb_sql_sess_reinit_ev = 222,
    cb_sql_sqlite_mod_load_ev = 223,
    cb_sql_sqlite_mod_unload_ev = 224,
    cb_sqlodbc_mod_unload_ev = 225,
    cb_sqltab_mod_unload_ev = 226,
    cb_statcache_fs_statcache_clear_ev = 227,
    cb_statcache_mod_unload_ev = 228,
    cb_statcache_postparse_ev = 229,
    cb_statcache_restart_ev = 230,
    cb_statcache_sess_reinit_ev = 231,
    cb_statcache_shutdown_ev = 232,
    cb_systemd_mod_unload_ev = 233,
    cb_systemd_postparse_ev = 234,
    cb_systemd_restart_ev = 235,
    cb_systemd_shutdown_ev = 236,
    cb_systemd_startup_ev = 237,
    cb_tab_copy_cb = 238,
    cb_test_visitf = 239,
    cb_tls_exit_ev = 240,
    cb_tls_handle_tls = 241,
    cb_tls_mcache_mod_unload_ev = 242,
    cb_tls_mod_unload_ev = 243,
    cb_tls_postparse_ev = 244,
    cb_tls_redis_mod_unload_ev = 245,
    cb_tls_restart_ev = 246,
    cb_tls_sess_reinit_ev = 247,
    cb_tls_shutdown_ev = 248,
    cb_tls_timeout_ev = 249,
    cb_trace_restart_ev = 250,
    cb_uniqid_mod_unload_ev = 251,
    cb_uniqid_postparse_ev = 252,
    cb_wrap2_exit_ev = 253,
    cb_wrap2_mod_unload_ev = 254,
    cb_wrap2_restart_ev = 255,
    cb_wrap2_sess_reinit_ev = 256,
    cb_wrap_sess_reinit_ev = 257,
    cb_xfer_exit_ev = 258,
    cb_xfer_sess_reinit_ev = 259,
    cb_xfer_sigusr2_ev = 260,
    cb_xfer_timeout_session_ev = 261,
    cb_xfer_timeout_stalled_ev = 262,
    cb_act_cb = 263
} cb_enum;

// cb signatures (int)
extern int cb_signatures[264];

// cb signature initialization
void init_cb_signatures(void);

// =============== chdir ===============

// chdir function enumeration
typedef enum {
    chdir_sys_chdir = 0
} chdir_enum;

// chdir signatures (int)
extern int chdir_signatures[1];

// chdir signature initialization
void init_chdir_signatures(void);

// =============== child_cleanup_cb ===============

// child_cleanup_cb function enumeration
typedef enum {
    child_cleanup_cb_NULL = 0,
    child_cleanup_cb_conn_cleanup_cb = 1,
    child_cleanup_cb_ctrls_cleanup_cb = 2,
    child_cleanup_cb_event_cleanup_cb = 3,
    child_cleanup_cb_server_cleanup_cb = 4,
    child_cleanup_cb_sess_redis_cleanup = 5
} child_cleanup_cb_enum;

// child_cleanup_cb signatures (int)
extern int child_cleanup_cb_signatures[6];

// child_cleanup_cb signature initialization
void init_child_cleanup_cb_signatures(void);

// =============== chk ===============

// chk function enumeration
typedef enum {
    chk_NULL = 0,
    chk_auth_cmd_chk_cb = 1,
    chk_sftp_have_authenticated = 2
} chk_enum;

// chk signatures (int)
extern int chk_signatures[3];

// chk signature initialization
void init_chk_signatures(void);

// =============== chmod ===============

// chmod function enumeration
typedef enum {
    chmod_statcache_fsio_chmod = 0,
    chmod_sys_chmod = 1
} chmod_enum;

// chmod signatures (int)
extern int chmod_signatures[2];

// chmod signature initialization
void init_chmod_signatures(void);

// =============== chown ===============

// chown function enumeration
typedef enum {
    chown_statcache_fsio_chown = 0,
    chown_sys_chown = 1
} chown_enum;

// chown signatures (int)
extern int chown_signatures[2];

// chown signature initialization
void init_chown_signatures(void);

// =============== chroot ===============

// chroot function enumeration
typedef enum {
    chroot_sys_chroot = 0
} chroot_enum;

// chroot signatures (int)
extern int chroot_signatures[1];

// chroot signature initialization
void init_chroot_signatures(void);

// =============== ck ===============

// ck function enumeration
typedef enum {
    ck_NULL = 0,
    ck_auth_cmd_chk_cb = 1,
    ck_sftp_have_authenticated = 2
} ck_enum;

// ck signatures (int)
extern int ck_signatures[3];

// ck signature initialization
void init_ck_signatures(void);

// =============== cleanup_cb ===============

// cleanup_cb function enumeration
typedef enum {
    cleanup_cb_NULL = 0,
    cleanup_cb_conn_cleanup_cb = 1,
    cleanup_cb_ctrls_cleanup_cb = 2,
    cleanup_cb_event_cleanup_cb = 3,
    cleanup_cb_server_cleanup_cb = 4,
    cleanup_cb_sess_redis_cleanup = 5,
    cleanup_cb_plain_cleanup_cb = 6,
} cleanup_cb_enum;

// cleanup_cb signatures (int)
extern int cleanup_cb_signatures[7];

// cleanup_cb signature initialization
void init_cleanup_cb_signatures(void);

// =============== clear ===============

// clear function enumeration
typedef enum {
    clear_ocsp_cache_clear = 0,
    clear_sess_cache_clear = 1
} clear_enum;

// clear signatures (int)
extern int clear_signatures[2];

// clear signature initialization
void init_clear_signatures(void);

// =============== close ===============

// close function enumeration
typedef enum {
    close_core_netio_close_cb = 0,
    close_deflate_netio_close_cb = 1,
    close_deflate_next_netio_close = 2,
    close_ocsp_cache_close = 3,
    close_robots_fsio_close = 4,
    close_sess_cache_close = 5,
    close_sftppam_driver_close = 6,
    close_sys_close = 7,
    close_tls_netio_close_cb = 8
} close_enum;

// close signatures (int)
extern int close_signatures[9];

// close signature initialization
void init_close_signatures(void);

// =============== closedir ===============

// closedir function enumeration
typedef enum {
    closedir_sys_closedir = 0
} closedir_enum;

// closedir signatures (int)
extern int closedir_signatures[1];

// closedir signature initialization
void init_closedir_signatures(void);

// =============== ctrls_cb ===============

// ctrls_cb function enumeration
typedef enum {
    ctrls_cb_NULL = 0,
    ctrls_cb_act_cb = 1,
    ctrls_cb_ctrls_test2_cb = 2,
    ctrls_cb_ctrls_test_cb = 3,
    ctrls_cb_delay_handle_delay = 4,
    ctrls_cb_dynmasq_handle_dynmasq = 5,
    ctrls_cb_shaper_handle_shaper = 6,
    ctrls_cb_tls_handle_tls = 7
} ctrls_cb_enum;

// ctrls_cb signatures (int)
extern int ctrls_cb_signatures[8];

// ctrls_cb signature initialization
void init_ctrls_cb_signatures(void);

// =============== debugf ===============

// debugf function enumeration
typedef enum {
    debugf_NULL = 0,
    debugf_mem_printf = 1,
    debugf_oom_printf = 2,
    debugf_pool_printf = 3
} debugf_enum;

// debugf signatures (int)
extern int debugf_signatures[4];

// debugf signature initialization
void init_debugf_signatures(void);

// =============== delete ===============

// delete function enumeration
typedef enum {
    delete_ocsp_cache_delete = 0,
    delete_sess_cache_delete = 1
} delete_enum;

// delete signatures (int)
extern int delete_signatures[2];

// delete signature initialization
void init_delete_signatures(void);

// =============== dumpf ===============

// dumpf function enumeration
typedef enum {
    dumpf_NULL = 0,
    dumpf_event_dump = 1,
    dumpf_stash_dump = 2,
    dumpf_statcache_dumpf = 3,
    dumpf_table_dump = 4
} dumpf_enum;

// dumpf signatures (int)
extern int dumpf_signatures[5];

// dumpf signature initialization
void init_dumpf_signatures(void);

void pr_event_dump(void (*)(const char *, ...), int);
void pr_stash_dump(void (*)(const char *, ...), int);
void statcache_dumpf(const char *fmt, ...);
void pr_table_dump(void (*)(const char *, ...), int, pr_table_t *tab);

// =============== entinsert ===============

// entinsert function enumeration
typedef enum {
    entinsert_entry_insert = 0
} entinsert_enum;

// entinsert signatures (int)
extern int entinsert_signatures[1];

// entinsert signature initialization
void init_entinsert_signatures(void);

// =============== entremove ===============

// entremove function enumeration
typedef enum {
    entremove_entry_remove = 0
} entremove_enum;

// entremove signatures (int)
extern int entremove_signatures[1];

// entremove signature initialization
void init_entremove_signatures(void);

// =============== errfunc ===============

// errfunc function enumeration
typedef enum {
    errfunc_NULL = 0
} errfunc_enum;

// errfunc signatures (int)
extern int errfunc_signatures[1];

// errfunc signature initialization
void init_errfunc_signatures(void);

// =============== f ===============

// f function enumeration
typedef enum {
    f_NULL = 0,
    f_restart_daemon = 1,
    f_schedule_cb = 2,
    f_shutdown_end_session = 3
} f_enum;

// f signatures (int)
extern int f_signatures[4];

// f signature initialization
void init_f_signatures(void);

// =============== faccess ===============

// faccess function enumeration
typedef enum {
    faccess_facl_fsio_faccess = 0,
    faccess_robots_fsio_faccess = 1,
    faccess_sys_faccess = 2
} faccess_enum;

// faccess signatures (int)
extern int faccess_signatures[3];

// faccess signature initialization
void init_faccess_signatures(void);

// =============== fchmod ===============

// fchmod function enumeration
typedef enum {
    fchmod_statcache_fsio_fchmod = 0,
    fchmod_sys_fchmod = 1
} fchmod_enum;

// fchmod signatures (int)
extern int fchmod_signatures[2];

// fchmod signature initialization
void init_fchmod_signatures(void);

// =============== fchown ===============

// fchown function enumeration
typedef enum {
    fchown_statcache_fsio_fchown = 0,
    fchown_sys_fchown = 1
} fchown_enum;

// fchown signatures (int)
extern int fchown_signatures[2];

// fchown signature initialization
void init_fchown_signatures(void);

// =============== fgetxattr ===============

// fgetxattr function enumeration
typedef enum {
    fgetxattr_sys_fgetxattr = 0
} fgetxattr_enum;

// fgetxattr signatures (int)
extern int fgetxattr_signatures[1];

// fgetxattr signature initialization
void init_fgetxattr_signatures(void);

// =============== flistxattr ===============

// flistxattr function enumeration
typedef enum {
    flistxattr_sys_flistxattr = 0
} flistxattr_enum;

// flistxattr signatures (int)
extern int flistxattr_signatures[1];

// flistxattr signature initialization
void init_flistxattr_signatures(void);

// =============== fremovexattr ===============

// fremovexattr function enumeration
typedef enum {
    fremovexattr_sys_fremovexattr = 0
} fremovexattr_enum;

// fremovexattr signatures (int)
extern int fremovexattr_signatures[1];

// fremovexattr signature initialization
void init_fremovexattr_signatures(void);

// =============== fsetxattr ===============

// fsetxattr function enumeration
typedef enum {
    fsetxattr_sys_fsetxattr = 0
} fsetxattr_enum;

// fsetxattr signatures (int)
extern int fsetxattr_signatures[1];

// fsetxattr signature initialization
void init_fsetxattr_signatures(void);

// =============== fstat ===============

// fstat function enumeration
typedef enum {
    fstat_robots_fsio_fstat = 0,
    fstat_statcache_fsio_fstat = 1,
    fstat_sys_fstat = 2
} fstat_enum;

// fstat signatures (int)
extern int fstat_signatures[3];

// fstat signature initialization
void init_fstat_signatures(void);

// =============== fsync ===============

// fsync function enumeration
typedef enum {
    fsync_sys_fsync = 0
} fsync_enum;

// fsync signatures (int)
extern int fsync_signatures[1];

// fsync signature initialization
void init_fsync_signatures(void);

// =============== ftruncate ===============

// ftruncate function enumeration
typedef enum {
    ftruncate_statcache_fsio_ftruncate = 0,
    ftruncate_sys_ftruncate = 1
} ftruncate_enum;

// ftruncate signatures (int)
extern int ftruncate_signatures[2];

// ftruncate signature initialization
void init_ftruncate_signatures(void);

// =============== futimes ===============

// futimes function enumeration
typedef enum {
    futimes_statcache_fsio_futimes = 0,
    futimes_sys_futimes = 1
} futimes_enum;

// futimes signatures (int)
extern int futimes_signatures[2];

// futimes signature initialization
void init_futimes_signatures(void);

// =============== get ===============

// get function enumeration
typedef enum {
    get_ocsp_cache_get = 0,
    get_sess_cache_get = 1
} get_enum;

// get signatures (int)
extern int get_signatures[2];

// get signature initialization
void init_get_signatures(void);

// =============== getxattr ===============

// getxattr function enumeration
typedef enum {
    getxattr_sys_getxattr = 0
} getxattr_enum;

// getxattr signatures (int)
extern int getxattr_signatures[1];

// getxattr signature initialization
void init_getxattr_signatures(void);

// =============== handler ===============

// handler function enumeration
typedef enum {
    handler_NULL = 0,
    handler_sftp_cmd_loop = 1,
    handler_setup_env = 2
} handler_enum;

// handler signatures (int)
extern int handler_signatures[3];

// handler signature initialization
void init_handler_signatures(void);

// =============== keycmp ===============

// keycmp function enumeration
typedef enum {
    keycmp_key_cmp = 0
} keycmp_enum;

// keycmp signatures (int)
extern int keycmp_signatures[1];

// keycmp signature initialization
void init_keycmp_signatures(void);

// =============== keyhash ===============

// keyhash function enumeration
typedef enum {
    keyhash_key_hash = 0
} keyhash_enum;

// keyhash signatures (int)
extern int keyhash_signatures[1];

// keyhash signature initialization
void init_keyhash_signatures(void);

// =============== lchown ===============

// lchown function enumeration
typedef enum {
    lchown_statcache_fsio_lchown = 0,
    lchown_sys_lchown = 1
} lchown_enum;

// lchown signatures (int)
extern int lchown_signatures[2];

// lchown signature initialization
void init_lchown_signatures(void);

// =============== lgetxattr ===============

// lgetxattr function enumeration
typedef enum {
    lgetxattr_sys_lgetxattr = 0
} lgetxattr_enum;

// lgetxattr signatures (int)
extern int lgetxattr_signatures[1];

// lgetxattr signature initialization
void init_lgetxattr_signatures(void);

// =============== link ===============

// link function enumeration
typedef enum {
    link_sys_link = 0
} link_enum;

// link signatures (int)
extern int link_signatures[1];

// link signature initialization
void init_link_signatures(void);

// =============== listf ===============

// listf function enumeration
typedef enum {
    listf_NULL = 0,
    listf_module_listf = 1
} listf_enum;

// listf signatures (int)
extern int listf_signatures[2];

// listf signature initialization
void init_listf_signatures(void);

// =============== listxattr ===============

// listxattr function enumeration
typedef enum {
    listxattr_sys_listxattr = 0
} listxattr_enum;

// listxattr signatures (int)
extern int listxattr_signatures[1];

// listxattr signature initialization
void init_listxattr_signatures(void);

// =============== llistxattr ===============

// llistxattr function enumeration
typedef enum {
    llistxattr_sys_llistxattr = 0
} llistxattr_enum;

// llistxattr signatures (int)
extern int llistxattr_signatures[1];

// llistxattr signature initialization
void init_llistxattr_signatures(void);

// =============== lremovexattr ===============

// lremovexattr function enumeration
typedef enum {
    lremovexattr_sys_lremovexattr = 0
} lremovexattr_enum;

// lremovexattr signatures (int)
extern int lremovexattr_signatures[1];

// lremovexattr signature initialization
void init_lremovexattr_signatures(void);

// =============== lseek ===============

// lseek function enumeration
typedef enum {
    lseek_sys_lseek = 0
} lseek_enum;

// lseek signatures (int)
extern int lseek_signatures[1];

// lseek signature initialization
void init_lseek_signatures(void);

// =============== lsetxattr ===============

// lsetxattr function enumeration
typedef enum {
    lsetxattr_sys_lsetxattr = 0
} lsetxattr_enum;

// lsetxattr signatures (int)
extern int lsetxattr_signatures[1];

// lsetxattr signature initialization
void init_lsetxattr_signatures(void);

// =============== lstat ===============

// lstat function enumeration
typedef enum {
    lstat_robots_fsio_lstat = 0,
    lstat_statcache_fsio_lstat = 1,
    lstat_sys_lstat = 2
} lstat_enum;

// lstat signatures (int)
extern int lstat_signatures[3];

// lstat signature initialization
void init_lstat_signatures(void);

// =============== match_token ===============

// match_token function enumeration
typedef enum {
    match_token_wrap2_match_client = 0,
    match_token_wrap2_match_daemon = 1
} match_token_enum;

// match_token signatures (int)
extern int match_token_signatures[2];

// match_token signature initialization
void init_match_token_signatures(void);

// =============== mkdir ===============

// mkdir function enumeration
typedef enum {
    mkdir_sys_mkdir = 0
} mkdir_enum;

// mkdir signatures (int)
extern int mkdir_signatures[1];

// mkdir signature initialization
void init_mkdir_signatures(void);

// =============== on_default ===============

// on_default function enumeration
typedef enum {
    on_default_NULL = 0,
    on_default_resolve_on_default = 1,
    on_default_sql_resolve_on_default = 2,
    on_default_resolve_id_on_default = 3
} on_default_enum;

// on_default signatures (int)
extern int on_default_signatures[4];

// on_default signature initialization
void init_on_default_signatures(void);

// =============== on_meta ===============

// on_meta function enumeration
typedef enum {
    on_meta_NULL = 0,
    on_meta_long_on_meta = 1,
    on_meta_parse_on_meta = 2,
    on_meta_pr_jot_parse_on_meta = 3,
    on_meta_pr_jot_on_json = 4,
    on_meta_resolve_on_meta = 5,
    on_meta_showinfo_on_meta = 6,
    on_meta_sql_resolve_on_meta = 7,
    on_meta_resolve_id_on_meta = 8,
    on_meta_scan_on_meta = 9
} on_meta_enum;

// on_meta signatures (int)
extern int on_meta_signatures[10];

// on_meta signature initialization
void init_on_meta_signatures(void);

// =============== on_other ===============

// on_other function enumeration
typedef enum {
    on_other_NULL = 0,
    on_other_parse_on_other = 1,
    on_other_pr_jot_parse_on_other = 2,
    on_other_resolve_on_other = 3,
    on_other_sql_resolve_on_other = 4
} on_other_enum;

// on_other signatures (int)
extern int on_other_signatures[5];

// on_other signature initialization
void init_on_other_signatures(void);

// =============== on_unknown ===============

// on_unknown function enumeration
typedef enum {
    on_unknown_NULL = 0,
    on_unknown_parse_on_unknown = 1,
    on_unknown_pr_jot_parse_on_unknown = 2
} on_unknown_enum;

// on_unknown signatures (int)
extern int on_unknown_signatures[3];

// on_unknown signature initialization
void init_on_unknown_signatures(void);

// =============== oom ===============

// oom function enumeration
typedef enum {
    oom_NULL = 0,
    oom_json_oom = 1
} oom_enum;

// oom signatures (int)
extern int oom_signatures[2];

// oom signature initialization
void init_oom_signatures(void);

// =============== open ===============

// open function enumeration
typedef enum {
    open_core_netio_open_cb = 0,
    open_deflate_netio_open_cb = 1,
    open_deflate_next_netio_open = 2,
    open_ocsp_cache_open = 3,
    open_robots_fsio_open = 4,
    open_sess_cache_open = 5,
    open_sftppam_driver_open = 6,
    open_statcache_fsio_open = 7,
    open_sys_open = 8,
    open_tls_netio_open_cb = 9
} open_enum;

// open signatures (int)
extern int open_signatures[10];

// open signature initialization
void init_open_signatures(void);



// =============== opendir ===============

// opendir function enumeration
typedef enum {
    opendir_sys_opendir = 0
} opendir_enum;

// opendir signatures (int)
extern int opendir_signatures[1];

// opendir signature initialization
void init_opendir_signatures(void);

// =============== plain_cleanup_cb ===============

// plain_cleanup_cb function enumeration
typedef enum {
    plain_cleanup_cb_NULL = 0,
    plain_cleanup_cb_conn_cleanup_cb = 1,
    plain_cleanup_cb_ctrls_cleanup_cb = 2,
    plain_cleanup_cb_event_cleanup_cb = 3,
    plain_cleanup_cb_server_cleanup_cb = 4,
    plain_cleanup_cb_sess_redis_cleanup = 5
} plain_cleanup_cb_enum;

// plain_cleanup_cb signatures (int)
extern int plain_cleanup_cb_signatures[6];

// plain_cleanup_cb signature initialization
void init_plain_cleanup_cb_signatures(void);

// =============== poll ===============

// poll function enumeration
typedef enum {
    poll_core_netio_poll_cb = 0,
    poll_tls_netio_poll_cb = 1
} poll_enum;

// poll signatures (int)
extern int poll_signatures[2];

// poll signature initialization
void init_poll_signatures(void);

// =============== postopen ===============

// postopen function enumeration
typedef enum {
    postopen_core_netio_postopen_cb = 0,
    postopen_tls_netio_postopen_cb = 1
} postopen_enum;

// postopen signatures (int)
extern int postopen_signatures[2];

// postopen signature initialization
void init_postopen_signatures(void);

// =============== pread ===============

// pread function enumeration
typedef enum {
    pread_sys_pread = 0
} pread_enum;

// pread signatures (int)
extern int pread_signatures[1];

// pread signature initialization
void init_pread_signatures(void);

// =============== progress_cb ===============

// progress_cb function enumeration
typedef enum {
    progress_cb_NULL = 0,
    progress_cb_copy_progress_cb = 1
} progress_cb_enum;

// progress_cb signatures (int)
extern int progress_cb_signatures[2];

// progress_cb signature initialization
void init_progress_cb_signatures(void);

// =============== pwrite ===============

// pwrite function enumeration
typedef enum {
    pwrite_sys_pwrite = 0
} pwrite_enum;

// pwrite signatures (int)
extern int pwrite_signatures[1];

// pwrite signature initialization
void init_pwrite_signatures(void);

// =============== read ===============

// read function enumeration
typedef enum {
    read_core_netio_read_cb = 0,
    read_deflate_netio_read_cb = 1,
    read_deflate_next_netio_read = 2,
    read_robots_fsio_read = 3,
    read_sys_read = 4,
    read_tls_netio_read_cb = 5
} read_enum;

// read signatures (int)
extern int read_signatures[6];

// read signature initialization
void init_read_signatures(void);

// =============== readdir ===============

// readdir function enumeration
typedef enum {
    readdir_sys_readdir = 0
} readdir_enum;

// readdir signatures (int)
extern int readdir_signatures[1];

// readdir signature initialization
void init_readdir_signatures(void);

// =============== readlink ===============

// readlink function enumeration
typedef enum {
    readlink_sys_readlink = 0
} readlink_enum;

// readlink signatures (int)
extern int readlink_signatures[1];

// readlink signature initialization
void init_readlink_signatures(void);

// =============== realpath ===============

// realpath function enumeration
typedef enum {
    realpath_sys_realpath = 0
} realpath_enum;

// realpath signatures (int)
extern int realpath_signatures[1];

// realpath signature initialization
void init_realpath_signatures(void);

// =============== regtab_open ===============

// regtab_open function enumeration
typedef enum {
    regtab_open_srcopen = 0
} regtab_open_enum;

// regtab_open signatures (int)
extern int regtab_open_signatures[1];

// regtab_open signature initialization
void init_regtab_open_signatures(void);

// =============== remove ===============

// remove function enumeration
typedef enum {
    remove_0 = 0,
    remove_ocsp_cache_remove = 1,
    remove_sess_cache_remove = 2
} remove_enum;

// remove signatures (int)
extern int remove_signatures[3];

// remove signature initialization
void init_remove_signatures(void);

// =============== removexattr ===============

// removexattr function enumeration
typedef enum {
    removexattr_sys_removexattr = 0
} removexattr_enum;

// removexattr signatures (int)
extern int removexattr_signatures[1];

// removexattr signature initialization
void init_removexattr_signatures(void);

// =============== rename ===============

// rename function enumeration
typedef enum {
    rename_statcache_fsio_rename = 0,
    rename_sys_rename = 1
} rename_enum;

// rename signatures (int)
extern int rename_signatures[2];

// rename signature initialization
void init_rename_signatures(void);

// =============== reopen ===============

// reopen function enumeration
typedef enum {
    reopen_core_netio_reopen_cb = 0,
    reopen_tls_netio_reopen_cb = 1
} reopen_enum;

// reopen signatures (int)
extern int reopen_signatures[2];

// reopen signature initialization
void init_reopen_signatures(void);

// =============== rmdir ===============

// rmdir function enumeration
typedef enum {
    rmdir_sys_rmdir = 0
} rmdir_enum;

// rmdir signatures (int)
extern int rmdir_signatures[1];

// rmdir signature initialization
void init_rmdir_signatures(void);

// =============== setxattr ===============

// setxattr function enumeration
typedef enum {
    setxattr_sys_setxattr = 0
} setxattr_enum;

// setxattr signatures (int)
extern int setxattr_signatures[1];

// setxattr signature initialization
void init_setxattr_signatures(void);

// =============== shutdown ===============

// shutdown function enumeration
typedef enum {
    shutdown_core_netio_shutdown_cb = 0,
    shutdown_deflate_netio_shutdown_cb = 1,
    shutdown_deflate_next_netio_shutdown = 2,
    shutdown_tls_netio_shutdown_cb = 3
} shutdown_enum;

// shutdown signatures (int)
extern int shutdown_signatures[4];

// shutdown signature initialization
void init_shutdown_signatures(void);

// =============== callback ===============

// callback function enumeration
typedef enum {
    callback_auth_login_timeout_cb = 0,
    callback_auth_session_timeout_cb = 1,
    callback_core_idle_timeout_cb = 2,
    callback_core_scrub_scoreboard_cb = 3,
    callback_ctrls_timer_cb = 4,
    callback_ident_timeout_cb = 5,
    callback_noxfer_timeout_cb = 6,
    callback_stalled_timeout_cb = 7,
    callback_sleep_cb = 8,
} callback_enum;

// shutdown signatures (int)
extern int callback_signatures[9];

// shutdown signature initialization
void init_callback_signatures(void);

// =============== stat ===============

// stat function enumeration
typedef enum {
    stat_robots_fsio_stat = 0,
    stat_statcache_fsio_stat = 1,
    stat_sys_stat = 2
} stat_enum;

// stat signatures (int)
extern int stat_signatures[3];

// stat signature initialization
void init_stat_signatures(void);

// =============== status ===============

// status function enumeration
typedef enum {
    status_ocsp_cache_status = 0,
    status_sess_cache_status = 1
} status_enum;

// status signatures (int)
extern int status_signatures[2];

// status signature initialization
void init_status_signatures(void);

// =============== symlink ===============

// symlink function enumeration
typedef enum {
    symlink_sys_symlink = 0
} symlink_enum;

// symlink signatures (int)
extern int symlink_signatures[1];

// symlink signature initialization
void init_symlink_signatures(void);

// =============== tab_close ===============

// tab_close function enumeration
typedef enum {
    tab_close_filetab_close = 0,
    tab_close_filetab_close_cb = 1,
    tab_close_ldaptab_close = 2,
    tab_close_radiustab_close = 3,
    tab_close_redistab_close_cb = 4,
    tab_close_sqltab_close = 5,
    tab_close_sqltab_close_cb = 6
} tab_close_enum;

// tab_close signatures (int)
extern int tab_close_signatures[7];

// tab_close signature initialization
void init_tab_close_signatures(void);

// =============== tab_create ===============

// tab_create function enumeration
typedef enum {
    tab_create_filetab_create = 0,
    tab_create_sqltab_create = 1
} tab_create_enum;

// tab_create signatures (int)
extern int tab_create_signatures[2];

// tab_create signature initialization
void init_tab_create_signatures(void);

// =============== tab_lookup ===============

// tab_lookup function enumeration
typedef enum {
    tab_lookup_filetab_lookup = 0,
    tab_lookup_ldaptab_lookup = 1,
    tab_lookup_radiustab_lookup = 2,
    tab_lookup_sqltab_lookup = 3
} tab_lookup_enum;

// tab_lookup signatures (int)
extern int tab_lookup_signatures[4];

// tab_lookup signature initialization
void init_tab_lookup_signatures(void);

// =============== tab_read ===============

// tab_read function enumeration
typedef enum {
    tab_read_filetab_read = 0,
    tab_read_sqltab_read = 1
} tab_read_enum;

// tab_read signatures (int)
extern int tab_read_signatures[2];

// tab_read signature initialization
void init_tab_read_signatures(void);

// =============== tab_rlock ===============

// tab_rlock function enumeration
typedef enum {
    tab_rlock_filetab_rlock = 0,
    tab_rlock_sqltab_rlock = 1
} tab_rlock_enum;

// tab_rlock signatures (int)
extern int tab_rlock_signatures[2];

// tab_rlock signature initialization
void init_tab_rlock_signatures(void);

// =============== tab_unlock ===============

// tab_unlock function enumeration
typedef enum {
    tab_unlock_filetab_unlock = 0,
    tab_unlock_sqltab_unlock = 1
} tab_unlock_enum;

// tab_unlock signatures (int)
extern int tab_unlock_signatures[2];

// tab_unlock signature initialization
void init_tab_unlock_signatures(void);

// =============== tab_verify ===============

// tab_verify function enumeration
typedef enum {
    tab_verify_filetab_verify = 0,
    tab_verify_ldaptab_verify = 1,
    tab_verify_radiustab_verify = 2,
    tab_verify_sqltab_verify = 3
} tab_verify_enum;

// tab_verify signatures (int)
extern int tab_verify_signatures[4];

// tab_verify signature initialization
void init_tab_verify_signatures(void);

// =============== tab_wlock ===============

// tab_wlock function enumeration
typedef enum {
    tab_wlock_filetab_wlock = 0,
    tab_wlock_sqltab_wlock = 1
} tab_wlock_enum;

// tab_wlock signatures (int)
extern int tab_wlock_signatures[2];

// tab_wlock signature initialization
void init_tab_wlock_signatures(void);

// =============== tab_write ===============

// tab_write function enumeration
typedef enum {
    tab_write_filetab_write = 0,
    tab_write_sqltab_write = 1
} tab_write_enum;

// tab_write signatures (int)
extern int tab_write_signatures[2];

// tab_write signature initialization
void init_tab_write_signatures(void);

// =============== truncate ===============

// truncate function enumeration
typedef enum {
    truncate_statcache_fsio_truncate = 0,
    truncate_sys_truncate = 1
} truncate_enum;

// truncate signatures (int)
extern int truncate_signatures[2];

// truncate signature initialization
void init_truncate_signatures(void);

// =============== unlink ===============

// unlink function enumeration
typedef enum {
    unlink_robots_fsio_unlink = 0,
    unlink_statcache_fsio_unlink = 1,
    unlink_sys_unlink = 2
} unlink_enum;

// unlink signatures (int)
extern int unlink_signatures[3];

// unlink signature initialization
void init_unlink_signatures(void);

// =============== utimes ===============

// utimes function enumeration
typedef enum {
    utimes_statcache_fsio_utimes = 0,
    utimes_sys_utimes = 1
} utimes_enum;

// utimes signatures (int)
extern int utimes_signatures[2];

// utimes signature initialization
void init_utimes_signatures(void);

// =============== visit ===============

// visit function enumeration
typedef enum {
    visit_NULL = 0,
    visit_pool_visitf = 1,
    visit_test_visitf = 2
} visit_enum;

// visit signatures (int)
extern int visit_signatures[3];

// visit signature initialization
void init_visit_signatures(void);

// =============== write ===============

// write function enumeration
typedef enum {
    write_core_netio_write_cb = 0,
    write_deflate_netio_write_cb = 1,
    write_deflate_next_netio_write = 2,
    write_quotatab_fsio_write = 3,
    write_robots_fsio_write = 4,
    write_statcache_fsio_write = 5,
    write_sys_write = 6,
    write_tls_netio_write_cb = 7
} write_enum;

// write signatures (int)
extern int write_signatures[8];

// write signature initialization
void init_write_signatures(void);

// Global initialization
void init_all_fp_signatures(void);


// PFP declarations ====================================================================
void filetab_mod_unload_ev(const void *event_data , void *user_data);
void auth_otp_exit_ev(const void *event_data , void *user_data);
void auth_otp_mod_unload_ev(const void *event_data , void *user_data);
void auth_otp_sess_reinit_ev(const void *event_data , void *user_data);
void forensic_exit_ev(const void *event_data , void *user_data);
void forensic_log_ev(const void *event_data , void *user_data);
void forensic_mod_unload_ev(const void *event_data , void *user_data);
void forensic_sess_reinit_ev(const void *event_data , void *user_data);
void site_misc_sess_reinit_ev(const void *event_data , void *user_data);
void uniqid_mod_unload_ev(const void *event_data , void *user_data);
void uniqid_postparse_ev(const void *event_data , void *user_data);
void radiustab_mod_unload_ev(const void *event_data , void *user_data);
void radius_exit_ev(const void *event_data , void *user_data);
void radius_mod_unload_ev(const void *event_data , void *user_data);
void radius_restart_ev(const void *event_data , void *user_data);
void radius_sess_reinit_ev(const void *event_data , void *user_data);
void fscache_mod_unload_ev(const void *event_data , void *user_data);
void sql_passwd_mod_unload_ev(const void *event_data , void *user_data);
void sql_passwd_sess_reinit_ev(const void *event_data , void *user_data);
void sqltab_mod_unload_ev(const void *event_data , void *user_data);
void deflate_sess_reinit_ev(const void *event_data , void *user_data);
void sftp_ban_class_ev(const void *event_data , void *user_data);
void sftp_ban_host_ev(const void *event_data , void *user_data);
void sftp_ban_user_ev(const void *event_data , void *user_data);
void sftp_chroot_ev(const void *event_data , void *user_data);
void sftp_cmd_loop(server_rec *s , conn_t *conn);
void sftp_exit_ev(const void *event_data , void *user_data);
int sftp_have_authenticated(cmd_rec *cmd);
void sftp_max_conns_ev(const void *event_data , void *user_data);
void sftp_mod_unload_ev(const void *event_data , void *user_data);
void sftp_postparse_ev(const void *event_data , void *user_data);
void sftp_restart_ev(const void *event_data , void *user_data);
void sftp_shutdown_ev(const void *event_data , void *user_data);
void sftp_sigusr2_ev(const void *event_data , void *user_data);
void sftp_timeoutlogin_ev(const void *event_data , void *user_data);
void sftp_wrap_conn_denied_ev(const void *event_data , void *user_data);
int setup_env(pool *p , const char *user);
int fxp_handle_abort(const void *key_data , size_t key_datasz , const void *value_data , size_t value_datasz , void *user_data);
void sqlodbc_mod_unload_ev(const void *event_data , void *user_data);
void ctrls_admin_mod_unload_ev(const void *event_data , void *user_data);
void ctrls_admin_restart_ev(const void *event_data , void *user_data);
void ctrls_admin_startup_ev(const void *event_data , void *user_data);
void wrap2_exit_ev(const void *event_data , void *user_data);
unsigned char wrap2_match_client(char *tok , wrap2_conn_t *conn);
unsigned char wrap2_match_daemon(char *tok , wrap2_conn_t *conn);
void wrap2_mod_unload_ev(const void *event_data , void *user_data);
void wrap2_restart_ev(const void *event_data , void *user_data);
void wrap2_sess_reinit_ev(const void *event_data , void *user_data);
void tls_redis_mod_unload_ev(const void *event_data , void *user_data);
void ban_anonrejectpasswords_ev(const void *event_data , void *user_data);
void ban_anonrejectpasswords_ev(const void *, void *);
void ban_badprotocol_ev(const void *event_data , void *user_data);
void ban_badprotocol_ev(const void *, void *);
void ban_clientconnectrate_ev(const void *event_data , void *user_data);
void ban_clientconnectrate_ev(const void *, void *);
void ban_emptypassword_ev(const void *event_data , void *user_data);
void ban_emptypassword_ev(const void *, void *);
void ban_maxclientsperclass_ev(const void *event_data , void *user_data);
void ban_maxclientsperclass_ev(const void *, void *);
void ban_maxclientsperhost_ev(const void *event_data , void *user_data);
void ban_maxclientsperhost_ev(const void *, void *);
void ban_maxclientsperuser_ev(const void *event_data , void *user_data);
void ban_maxclientsperuser_ev(const void *, void *);
void ban_maxcmdrate_ev(const void *event_data , void *user_data);
void ban_maxcmdrate_ev(const void *, void *);
void ban_maxconnperhost_ev(const void *event_data , void *user_data);
void ban_maxconnperhost_ev(const void *, void *);
void ban_maxhostsperuser_ev(const void *event_data , void *user_data);
void ban_maxhostsperuser_ev(const void *, void *);
void ban_maxloginattempts_ev(const void *event_data , void *user_data);
void ban_maxloginattempts_ev(const void *, void *);
void ban_maxloginattemptsfromuser_ev(const void *event_data , void *user_data);
void ban_maxloginattemptsfromuser_ev(const void *, void *);
void ban_mod_unload_ev(const void *event_data , void *user_data);
void ban_postparse_ev(const void *event_data , void *user_data);
void ban_restart_ev(const void *event_data , void *user_data);
void ban_rootlogin_ev(const void *event_data , void *user_data);
void ban_rootlogin_ev(const void *, void *);
void ban_sess_reinit_ev(const void *event_data , void *user_data);
void ban_shutdown_ev(const void *event_data , void *user_data);
void ban_timeoutidle_ev(const void *event_data , void *user_data);
void ban_timeoutidle_ev(const void *, void *);
void ban_timeoutlogin_ev(const void *event_data , void *user_data);
void ban_timeoutlogin_ev(const void *, void *);
void ban_timeoutnoxfer_ev(const void *event_data , void *user_data);
void ban_timeoutnoxfer_ev(const void *, void *);
void ban_tlshandshake_ev(const void *event_data , void *user_data);
void ban_tlshandshake_ev(const void *, void *);
void ban_unhandledcmd_ev(const void *event_data , void *user_data);
void ban_unhandledcmd_ev(const void *, void *);
void ban_userdefined_ev(const void *event_data , void *user_data);
void ban_userdefined_ev(const void *, void *);
void ldaptab_mod_unload_ev(const void *event_data , void *user_data);
void dnsbl_sess_reinit_ev(const void *event_data , void *user_data);
void statcache_fs_statcache_clear_ev(const void *event_data , void *user_data);
void statcache_fs_statcache_clear_ev(const void *event_data , void *user_data);
void statcache_mod_unload_ev(const void *event_data , void *user_data);
void statcache_postparse_ev(const void *event_data , void *user_data);
void statcache_restart_ev(const void *event_data , void *user_data);
void statcache_sess_reinit_ev(const void *event_data , void *user_data);
void statcache_shutdown_ev(const void *event_data , void *user_data);
int dynmasq_handle_dynmasq(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void dynmasq_mod_unload_ev(const void *event_data , void *user_data);
void dynmasq_postparse_ev(const void *event_data , void *user_data);
void dynmasq_restart_ev(const void *event_data , void *user_data);
void wrap_sess_reinit_ev(const void *event_data , void *user_data);
void sqltab_mod_unload_ev(const void *event_data , void *user_data);
int shaper_handle_shaper(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void shaper_mod_unload_ev(const void *event_data , void *user_data);
void shaper_postparse_ev(const void *event_data , void *user_data);
void shaper_restart_ev(const void *event_data , void *user_data);
void shaper_sess_exit_ev(const void *event_data , void *user_data);
void shaper_sess_exit_ev(const void *, void *);
void shaper_shutdown_ev(const void *event_data , void *user_data);
void shaper_sigusr2_ev(const void *event_data , void *user_data);
void shaper_sigusr2_ev(const void *, void *);
void ldap_mod_unload_ev(const void *event_data , void *user_data);
void ldap_postparse_ev(const void *event_data , void *user_data);
void ldap_sess_reinit_ev(const void *event_data , void *user_data);
void ldap_shutdown_ev(const void *event_data , void *user_data);
void sql_mysql_mod_load_ev(const void *event_data , void *user_data);
void sql_mysql_mod_unload_ev(const void *event_data , void *user_data);
void geoip_mod_unload_ev(const void *event_data , void *user_data);
void geoip_postparse_ev(const void *event_data , void *user_data);
void geoip_restart_ev(const void *event_data , void *user_data);
void snmp_auth_code_ev(const void *event_data , void *user_data);
void snmp_ban_ban_class_ev(const void *event_data , void *user_data);
void snmp_ban_ban_host_ev(const void *event_data , void *user_data);
void snmp_ban_ban_user_ev(const void *event_data , void *user_data);
void snmp_ban_client_disconn_ev(const void *event_data , void *user_data);
void snmp_ban_expired_ban_ev(const void *event_data , void *user_data);
void snmp_cmd_invalid_ev(const void *event_data , void *user_data);
void snmp_exit_ev(const void *event_data , void *user_data);
void snmp_max_inst_ev(const void *event_data , void *user_data);
void snmp_mod_unload_ev(const void *event_data , void *user_data);
void snmp_postparse_ev(const void *event_data , void *user_data);
void snmp_restart_ev(const void *event_data , void *user_data);
void snmp_shutdown_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_hostbased_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_hostbased_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_kbdint_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_kbdint_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_passwd_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_passwd_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_publickey_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_publickey_ev(const void *event_data , void *user_data);
void snmp_ssh2_c2s_compress_ev(const void *event_data , void *user_data);
void snmp_ssh2_kex_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_s2c_compress_ev(const void *event_data , void *user_data);
void snmp_ssh2_scp_sess_closed_ev(const void *event_data , void *user_data);
void snmp_ssh2_scp_sess_opened_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_proto_version_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_sess_closed_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_sess_opened_ev(const void *event_data , void *user_data);
void snmp_startup_ev(const void *event_data , void *user_data);
void snmp_timeout_idle_ev(const void *event_data , void *user_data);
void snmp_timeout_login_ev(const void *event_data , void *user_data);
void snmp_timeout_noxfer_ev(const void *event_data , void *user_data);
void snmp_timeout_stalled_ev(const void *event_data , void *user_data);
void snmp_tls_ctrl_handshake_err_ev(const void *event_data , void *user_data);
void snmp_tls_data_handshake_err_ev(const void *event_data , void *user_data);
void snmp_tls_verify_client_err_ev(const void *event_data , void *user_data);
void snmp_tls_verify_client_ev(const void *event_data , void *user_data);
void exec_any_ev(const void *event_data , void *user_data);
void exec_any_ev(const void *event_data , void *user_data);
void exec_mod_unload_ev(const void *event_data , void *user_data);
void exec_postparse_ev(const void *event_data , void *user_data);
void exec_restart_ev(const void *event_data , void *user_data);
void exec_sess_reinit_ev(const void *event_data , void *user_data);
int resolve_on_meta(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int resolve_on_other(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char *text , size_t text_len);
int showinfo_on_meta(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
void sql_chroot_ev(const void *event_data , void *user_data);
void sql_eventlog_ev(const void *event_data , void *user_data);
void sql_exit_ev(const void *event_data , void *user_data);
void sql_mod_unload_ev(const void *event_data , void *user_data);
void sql_preparse_ev(const void *event_data , void *user_data);
int sql_resolve_on_default(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id);
int sql_resolve_on_meta(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int sql_resolve_on_other(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char *text , size_t text_len);
void sql_sess_reinit_ev(const void *event_data , void *user_data);
void sftpsql_mod_unload_ev(const void *event_data , void *user_data);
void quotatab_exit_ev(const void *event_data , void *user_data);
void quotatab_mod_unload_ev(const void *event_data , void *user_data);
void quotatab_restart_ev(const void *event_data , void *user_data);
void quotatab_sess_reinit_ev(const void *event_data , void *user_data);
void shmcache_mod_unload_ev(const void *event_data , void *user_data);
void shmcache_restart_ev(const void *event_data , void *user_data);
void shmcache_shutdown_ev(const void *event_data , void *user_data);
void sftppam_exit_ev(const void *event_data , void *user_data);
void sftppam_exit_ev(const void *, void *);
void sftppam_mod_unload_ev(const void *event_data , void *user_data);
void qos_ctrl_listen_ev(const void *event_data , void *user_data);
void qos_data_connect_ev(const void *event_data , void *user_data);
void qos_data_listen_ev(const void *event_data , void *user_data);
void qos_mod_unload_ev(const void *event_data , void *user_data);
void qos_sess_reinit_ev(const void *event_data , void *user_data);
void sql_sqlite_mod_load_ev(const void *event_data , void *user_data);
void sql_sqlite_mod_unload_ev(const void *event_data , void *user_data);
void tls_mcache_mod_unload_ev(const void *event_data , void *user_data);
void rewrite_exit_ev(const void *event_data , void *user_data);
void rewrite_mod_unload_ev(const void *event_data , void *user_data);
void rewrite_restart_ev(const void *event_data , void *user_data);
void rewrite_rewrite_home_ev(const void *event_data , void *user_data);
void rewrite_sess_reinit_ev(const void *event_data , void *user_data);
void filetab_mod_unload_ev(const void *event_data , void *user_data);
void redistab_mod_unload_ev(const void *event_data , void *user_data);
void tls_exit_ev(const void *event_data , void *user_data);
void tls_exit_ev(const void *event_data , void *user_data);
int tls_handle_tls(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void tls_mod_unload_ev(const void *event_data , void *user_data);
void tls_postparse_ev(const void *event_data , void *user_data);
void tls_restart_ev(const void *event_data , void *user_data);
void tls_sess_reinit_ev(const void *event_data , void *user_data);
void tls_shutdown_ev(const void *event_data , void *user_data);
void tls_timeout_ev(const void *event_data , void *user_data);
void digest_data_xfer_ev(const void *event_data , void *user_data);
void digest_data_xfer_ev(const void *event_data , void *user_data);
void digest_mod_unload_ev(const void *event_data , void *user_data);
void digest_sess_reinit_ev(const void *event_data , void *user_data);
void ifsess_chroot_ev(const void *event_data , void *user_data);
void ifsess_mod_unload_ev(const void *event_data , void *user_data);
void ifsess_postparse_ev(const void *event_data , void *user_data);
void sql_postgres_mod_load_ev(const void *event_data , void *user_data);
void sql_postgres_mod_unload_ev(const void *event_data , void *user_data);
int pr_jot_on_json(pool *p , pr_jot_ctx_t *ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int pr_jot_parse_on_meta(pool *p, pr_jot_ctx_t *jot_ctx,
  unsigned char logfmt_id, const char *logfmt_data, size_t logfmt_datalen);
int pr_jot_parse_on_other(pool *p , pr_jot_ctx_t *jot_ctx , char ch);
int pr_jot_parse_on_unknown(pool *p, pr_jot_ctx_t *jot_ctx, const char *text,
    size_t text_len);
void restart_daemon(void *d1 , void *d2 , void *d3 , void *d4);
void shutdown_end_session(void *d1 , void *d2 , void *d3 , void *d4);
void copy_progress_cb(int nwritten);
void define_restart_ev(const void *event_data , void *user_data);
void pool_visitf(const pr_pool_info_t *pinfo , void *user_data);
void event_cleanup_cb(void *user_data);
void ctrls_cleanup_cb(void *user_data);
void conn_cleanup_cb(void *cv);
void trace_restart_ev(const void *event_data , void *user_data);
void regexp_exit_ev(const void *event_data , void *user_data);
void regexp_restart_ev(const void *event_data , void *user_data);
void sess_redis_cleanup(void *data);
int tab_copy_cb(const void *key_data , size_t key_datasz , const void *value_data , size_t value_datasz , void *user_data);
void server_cleanup_cb(void *conn);
void json_oom(void);
void ctrls_postparse_ev(const void *event_data , void *user_data);
void ctrls_restart_ev(const void *event_data , void *user_data);
void ctrls_shutdown_ev(const void *event_data , void *user_data);
void dso_restart_ev(const void *event_data , void *user_data);
void facts_sess_reinit_ev(const void *event_data , void *user_data);
void log_exit_ev(const void *event_data , void *user_data);
void log_postparse_ev(const void *event_data , void *user_data);
void log_restart_ev(const void *event_data , void *user_data);
void log_sess_reinit_ev(const void *event_data , void *user_data);
void log_xfer_stalled_ev(const void *event_data , void *user_data);
void log_xfer_stalled_ev(const void *, void *);
int resolve_on_default(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id);
int resolve_on_meta(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int resolve_on_other(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char *text , size_t text_len);
void delay_connect_ev(const void *event_data , void *user_data);
int delay_handle_delay(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void delay_mod_unload_ev(const void *event_data , void *user_data);
void delay_postparse_ev(const void *event_data , void *user_data);
void delay_restart_ev(const void *event_data , void *user_data);
void delay_sess_reinit_ev(const void *event_data , void *user_data);
void delay_shutdown_ev(const void *event_data , void *user_data);
void ident_sess_reinit_ev(const void *event_data , void *user_data);
void core_chroot_ev(const void *event_data , void *user_data);
void core_chroot_ev(const void *, void *);
void core_connected_ev(const void *event_data , void *user_data);
void core_exit_ev(const void *event_data , void *user_data);
void core_exit_ev(const void *, void *);
void core_postparse_ev(const void *event_data , void *user_data);
void core_restart_ev(const void *event_data , void *user_data);
void core_startup_ev(const void *event_data , void *user_data);
void authfile_sess_reinit_ev(const void *event_data , void *user_data);
void systemd_mod_unload_ev(const void *event_data , void *user_data);
void systemd_postparse_ev(const void *event_data , void *user_data);
void systemd_restart_ev(const void *event_data , void *user_data);
void systemd_shutdown_ev(const void *event_data , void *user_data);
void systemd_startup_ev(const void *event_data , void *user_data);
void cap_sess_reinit_ev(const void *event_data , void *user_data);
void mcache_exit_ev(const void *event_data , void *user_data);
void mcache_exit_ev(const void *, void *);
void mcache_restart_ev(const void *event_data , void *user_data);
void mcache_sess_reinit_ev(const void *event_data , void *user_data);
void rlimit_chroot_ev(const void *event_data , void *user_data);
void rlimit_postparse_ev(const void *event_data , void *user_data);
void facl_mod_unload_ev(const void *event_data , void *user_data);
void facl_postparse_ev(const void *event_data , void *user_data);
void facl_restart_ev(const void *event_data , void *user_data);
void lang_postparse_ev(const void *event_data , void *user_data);
void lang_restart_ev(const void *event_data , void *user_data);
void auth_pam_exit_ev(const void *event_data , void *user_data);
int auth_cmd_chk_cb(cmd_rec *cmd);
void auth_exit_ev(const void *event_data , void *user_data);
void auth_sess_reinit_ev(const void *event_data , void *user_data);
int log_fmt_extra_iter_cb(const char *key , int val_type , const void *val , size_t valsz , void *user_data);
void redis_restart_ev(const void *event_data , void *user_data);
void redis_sess_reinit_ev(const void *event_data , void *user_data);
void redis_shutdown_ev(const void *event_data , void *user_data);
int resolve_on_meta(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int resolve_on_other(pool *p , pr_jot_ctx_t *jot_ctx , unsigned char *text , size_t text_len);
void auth_unix_exit_ev(const void *event_data , void *user_data);
void auth_unix_exit_ev(const void *, void *);
void auth_unix_sess_reinit_ev(const void *event_data , void *user_data);
void xfer_exit_ev(const void *event_data , void *user_data);
void xfer_exit_ev(const void *, void *);
void xfer_sess_reinit_ev(const void *event_data , void *user_data);
void xfer_sigusr2_ev(const void *event_data , void *user_data);
void xfer_sigusr2_ev(const void *, void *);
void xfer_timeout_session_ev(const void *event_data , void *user_data);
void xfer_timeout_session_ev(const void *, void *);
void xfer_timeout_stalled_ev(const void *event_data , void *user_data);
void xfer_timeout_stalled_ev(const void *, void *);
int long_on_meta(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *text , size_t text_len);
int parse_on_meta(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *text , size_t text_len);
int parse_on_other(pool *jot_pool , pr_jot_ctx_t *jot_ctx , char ch);
int parse_on_unknown(pool *jot_pool , pr_jot_ctx_t *jot_ctx , const char *text , size_t text_len);
int resolve_id_on_default(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id);
int resolve_id_on_meta(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *jot_val);
int resolve_on_default(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id);
int resolve_on_meta(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *jot_hint , const void *val);
int resolve_on_other(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char *text , size_t text_len);
int scan_on_meta(pool *jot_pool , pr_jot_ctx_t *jot_ctx , unsigned char logfmt_id , const char *logfmt_data , size_t logfmt_datalen);
void copy_progress_cb(int nwritten);
void test_visitf(const pr_pool_info_t *pinfo , void *user_data);
void event_cb(const void *event_data , void *user_data);
void event_cb2(const void *event_data , void *user_data);
void event_cb3(const void *event_data , void *user_data);
int ctrls_test2_cb(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
int ctrls_test_cb(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void schedule_cb(void *arg1 , void *arg2 , void *arg3 , void *arg4);
int do_cb(const void *key , size_t keysz , const void *value , size_t valuesz , void *user_data);
int do_with_remove_cb(const void *key , size_t keysz , const void *value , size_t valuesz , void *user_data);
int array_item_fail(int val_type , const void *val , size_t valsz , void *user_data);
int array_item_ok(int val_type , const void *val , size_t valsz , void *user_data);
int object_item_fail(const char *key , int val_type , const void *val , size_t valsz , void *user_data);
int object_item_ok(const char *key , int val_type , const void *val , size_t valsz , void *user_data);

int auth_login_timeout_cb(CALLBACK_FRAME);
int auth_session_timeout_cb(CALLBACK_FRAME);
int core_idle_timeout_cb(CALLBACK_FRAME);
int core_scrub_scoreboard_cb(CALLBACK_FRAME);
int noxfer_timeout_cb(CALLBACK_FRAME);
int stalled_timeout_cb(CALLBACK_FRAME);
int sleep_cb(CALLBACK_FRAME);

// SFP declarations ====================================================================
int filetab_close(quota_table_t *filetab);
int filetab_create(quota_table_t *filetab , void *ptr);
unsigned char filetab_lookup(quota_table_t *filetab , void *ptr , const char *name , quota_type_t quota_type);
void filetab_mod_unload_ev(const void *event_data , void *user_data);
int filetab_read(quota_table_t *filetab , void *ptr);
int filetab_rlock(quota_table_t *filetab);
int filetab_unlock(quota_table_t *filetab);
unsigned char filetab_verify(quota_table_t *filetab);
int filetab_wlock(quota_table_t *filetab);
int filetab_write(quota_table_t *filetab , void *ptr);
void auth_otp_exit_ev(const void *event_data , void *user_data);
void auth_otp_mod_unload_ev(const void *event_data , void *user_data);
void auth_otp_sess_reinit_ev(const void *event_data , void *user_data);
void forensic_exit_ev(const void *event_data , void *user_data);
void forensic_log_ev(const void *event_data , void *user_data);
void forensic_mod_unload_ev(const void *event_data , void *user_data);
void forensic_sess_reinit_ev(const void *event_data , void *user_data);
void site_misc_sess_reinit_ev(const void *event_data , void *user_data);
void uniqid_mod_unload_ev(const void *event_data , void *user_data);
void uniqid_postparse_ev(const void *event_data , void *user_data);
int radiustab_close(quota_table_t *radiustab);
unsigned char radiustab_lookup(quota_table_t *radiustab , void *ptr , const char *name , quota_type_t quota_type);
void radiustab_mod_unload_ev(const void *event_data , void *user_data);
unsigned char radiustab_verify(quota_table_t *radiustab);
void radius_exit_ev(const void *event_data , void *user_data);
void radius_mod_unload_ev(const void *event_data , void *user_data);
void radius_restart_ev(const void *event_data , void *user_data);
void radius_sess_reinit_ev(const void *event_data , void *user_data);
void fscache_mod_unload_ev(const void *event_data , void *user_data);
int ocsp_cache_add(tls_ocsp_cache_t *cache , const char *fingerprint , OCSP_RESPONSE *resp , time_t resp_age);
int ocsp_cache_clear(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *cache);
int ocsp_cache_delete(tls_ocsp_cache_t *cache , const char *fingerprint);
OCSP_RESPONSE *ocsp_cache_get(tls_ocsp_cache_t *cache , const char *fingerprint , time_t *resp_age);
int ocsp_cache_open(tls_ocsp_cache_t *cache , char *info);
int ocsp_cache_remove(tls_ocsp_cache_t *cache);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
void sql_passwd_mod_unload_ev(const void *event_data , void *user_data);
int sqltab_close(quota_table_t *sqltab);
int sqltab_create(quota_table_t *sqltab , void *ptr);
unsigned char sqltab_lookup(quota_table_t *sqltab , void *ptr , const char *name , quota_type_t quota_type);
void sqltab_mod_unload_ev(const void *event_data , void *user_data);
int sqltab_read(quota_table_t *sqltab , void *ptr);
int sqltab_rlock(quota_table_t *sqltab);
int sqltab_unlock(quota_table_t *sqltab);
unsigned char sqltab_verify(quota_table_t *sqltab);
int sqltab_wlock(quota_table_t *sqltab);
int sqltab_write(quota_table_t *sqltab , void *ptr);
pr_netio_stream_t *deflate_netio_open_cb(pr_netio_stream_t *nstrm , int fd , int mode);
int deflate_netio_read_cb(pr_netio_stream_t *nstrm , char *buf , size_t bufsz);
int deflate_netio_shutdown_cb(pr_netio_stream_t *nstrm , int how);
int deflate_netio_write_cb(pr_netio_stream_t *nstrm , char *buf , size_t buflen);
void deflate_sess_reinit_ev(const void *event_data , void *user_data);
void sftp_ban_class_ev(const void *event_data , void *user_data);
void sftp_ban_host_ev(const void *event_data , void *user_data);
void sftp_ban_user_ev(const void *event_data , void *user_data);
void sftp_chroot_ev(const void *event_data , void *user_data);
void sftp_exit_ev(const void *event_data , void *user_data);
void sftp_max_conns_ev(const void *event_data , void *user_data);
void sftp_mod_unload_ev(const void *event_data , void *user_data);
void sftp_postparse_ev(const void *event_data , void *user_data);
void sftp_restart_ev(const void *event_data , void *user_data);
void sftp_shutdown_ev(const void *event_data , void *user_data);
void sftp_sigusr2_ev(const void *event_data , void *user_data);
void sftp_timeoutlogin_ev(const void *event_data , void *user_data);
void sftp_wrap_conn_denied_ev(const void *event_data , void *user_data);
int fxp_handle_abort(const void *key_data , size_t key_datasz , const void *value_data , size_t value_datasz , void *user_data);
void sqlodbc_mod_unload_ev(const void *event_data , void *user_data);
void ctrls_admin_mod_unload_ev(const void *event_data , void *user_data);
void ctrls_admin_restart_ev(const void *event_data , void *user_data);
void ctrls_admin_startup_ev(const void *event_data , void *user_data);
void wrap2_exit_ev(const void *event_data , void *user_data);
void wrap2_mod_unload_ev(const void *event_data , void *user_data);
void wrap2_restart_ev(const void *event_data , void *user_data);
void wrap2_sess_reinit_ev(const void *event_data , void *user_data);
int ocsp_cache_add(tls_ocsp_cache_t *cache , const char *fingerprint , OCSP_RESPONSE *resp , time_t resp_age);
int ocsp_cache_clear(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *cache);
int ocsp_cache_delete(tls_ocsp_cache_t *cache , const char *fingerprint);
OCSP_RESPONSE *ocsp_cache_get(tls_ocsp_cache_t *cache , const char *fingerprint , time_t *resp_age);
int ocsp_cache_open(tls_ocsp_cache_t *cache , char *info);
int ocsp_cache_remove(tls_ocsp_cache_t *cache);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int sess_cache_add(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len , time_t expires , SSL_SESSION *sess);
int sess_cache_clear(tls_sess_cache_t *cache);
int sess_cache_close(tls_sess_cache_t *cache);
int sess_cache_delete(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len);
int sess_cache_open(tls_sess_cache_t *cache , char *info , long timeout);
int sess_cache_remove(tls_sess_cache_t *cache);
int sess_cache_status(tls_sess_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
void tls_redis_mod_unload_ev(const void *event_data , void *user_data);
void ban_anonrejectpasswords_ev(const void *event_data , void *user_data);
void ban_badprotocol_ev(const void *, void *);
void ban_clientconnectrate_ev(const void *, void *);
void ban_emptypassword_ev(const void *, void *);
void ban_maxclientsperclass_ev(const void *, void *);
void ban_maxclientsperhost_ev(const void *, void *);
void ban_maxclientsperuser_ev(const void *, void *);
void ban_maxcmdrate_ev(const void *event_data , void *user_data);
void ban_maxconnperhost_ev(const void *, void *);
void ban_maxhostsperuser_ev(const void *, void *);
void ban_maxloginattempts_ev(const void *, void *);
void ban_maxloginattemptsfromuser_ev(const void *, void *);
void ban_mod_unload_ev(const void *event_data , void *user_data);
void ban_postparse_ev(const void *event_data , void *user_data);
void ban_restart_ev(const void *event_data , void *user_data);
void ban_rootlogin_ev(const void *, void *);
void ban_sess_reinit_ev(const void *event_data , void *user_data);
void ban_shutdown_ev(const void *event_data , void *user_data);
void ban_timeoutidle_ev(const void *, void *);
void ban_timeoutlogin_ev(const void *, void *);
void ban_timeoutnoxfer_ev(const void *, void *);
void ban_tlshandshake_ev(const void *, void *);
void ban_unhandledcmd_ev(const void *event_data , void *user_data);
void ban_userdefined_ev(const void *event_data , void *user_data);
void ban_userdefined_ev(const void *, void *);
int ldaptab_close(quota_table_t *ldaptab);
unsigned char ldaptab_lookup(quota_table_t *ldaptab , void *ptr , const char *name , quota_type_t quota_type);
void ldaptab_mod_unload_ev(const void *event_data , void *user_data);
unsigned char ldaptab_verify(quota_table_t *ldaptab);
void dnsbl_sess_reinit_ev(const void *event_data , void *user_data);
void statcache_fs_statcache_clear_ev(const void *event_data , void *user_data);
int statcache_fsio_chmod(pr_fs_t *fs , const char *path , mode_t mode);
int statcache_fsio_chown(pr_fs_t *fs , const char *path , uid_t uid , gid_t gid);
int statcache_fsio_fchmod(pr_fh_t *fh , int fd , mode_t mode);
int statcache_fsio_fchown(pr_fh_t *fh , int fd , uid_t uid , gid_t gid);
int statcache_fsio_fstat(pr_fh_t *fh , int fd , struct stat *st);
int statcache_fsio_ftruncate(pr_fh_t *fh , int fd , off_t len);
int statcache_fsio_futimes(pr_fh_t *fh , int fd , struct timeval *tvs);
int statcache_fsio_lchown(pr_fs_t *fs , const char *path , uid_t uid , gid_t gid);
int statcache_fsio_lstat(pr_fs_t *fs , const char *path , struct stat *st);
int statcache_fsio_open(pr_fh_t *fh , const char *path , int flags);
int statcache_fsio_rename(pr_fs_t *fs , const char *rnfm , const char *rnto);
int statcache_fsio_stat(pr_fs_t *fs , const char *path , struct stat *st);
int statcache_fsio_truncate(pr_fs_t *fs , const char *path , off_t len);
int statcache_fsio_unlink(pr_fs_t *fs , const char *path);
int statcache_fsio_utimes(pr_fs_t *fs , const char *path , struct timeval *tvs);
int statcache_fsio_write(pr_fh_t *fh , int fd , const char *buf , size_t buflen);
void statcache_mod_unload_ev(const void *event_data , void *user_data);
void statcache_postparse_ev(const void *event_data , void *user_data);
void statcache_restart_ev(const void *event_data , void *user_data);
void statcache_sess_reinit_ev(const void *event_data , void *user_data);
void statcache_shutdown_ev(const void *event_data , void *user_data);
int dynmasq_handle_dynmasq(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void dynmasq_mod_unload_ev(const void *event_data , void *user_data);
void dynmasq_postparse_ev(const void *event_data , void *user_data);
void dynmasq_restart_ev(const void *event_data , void *user_data);
void wrap_sess_reinit_ev(const void *event_data , void *user_data);
int sqltab_close_cb(wrap2_table_t *sqltab);
int sqltab_close_cb(wrap2_table_t *sqltab);
void sqltab_mod_unload_ev(const void *event_data , void *user_data);
int shaper_handle_shaper(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void shaper_mod_unload_ev(const void *event_data , void *user_data);
void shaper_postparse_ev(const void *event_data , void *user_data);
void shaper_restart_ev(const void *event_data , void *user_data);
void shaper_sess_exit_ev(const void *event_data , void *user_data);
void shaper_sess_exit_ev(const void *, void *);
void shaper_shutdown_ev(const void *event_data , void *user_data);
void shaper_sigusr2_ev(const void *event_data , void *user_data);
void shaper_sigusr2_ev(const void *, void *);
void ldap_mod_unload_ev(const void *event_data , void *user_data);
void ldap_postparse_ev(const void *event_data , void *user_data);
void ldap_sess_reinit_ev(const void *event_data , void *user_data);
void ldap_shutdown_ev(const void *event_data , void *user_data);
void sql_mysql_mod_load_ev(const void *event_data , void *user_data);
void sql_mysql_mod_unload_ev(const void *event_data , void *user_data);
void geoip_mod_unload_ev(const void *event_data , void *user_data);
void geoip_postparse_ev(const void *event_data , void *user_data);
void geoip_restart_ev(const void *event_data , void *user_data);
void snmp_auth_code_ev(const void *event_data , void *user_data);
void snmp_ban_ban_class_ev(const void *event_data , void *user_data);
void snmp_ban_ban_host_ev(const void *event_data , void *user_data);
void snmp_ban_ban_user_ev(const void *event_data , void *user_data);
void snmp_ban_client_disconn_ev(const void *event_data , void *user_data);
void snmp_ban_expired_ban_ev(const void *event_data , void *user_data);
void snmp_cmd_invalid_ev(const void *event_data , void *user_data);
void snmp_exit_ev(const void *event_data , void *user_data);
void snmp_max_inst_ev(const void *event_data , void *user_data);
void snmp_mod_unload_ev(const void *event_data , void *user_data);
void snmp_postparse_ev(const void *event_data , void *user_data);
void snmp_restart_ev(const void *event_data , void *user_data);
void snmp_shutdown_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_hostbased_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_hostbased_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_kbdint_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_kbdint_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_passwd_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_passwd_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_publickey_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_auth_publickey_ev(const void *event_data , void *user_data);
void snmp_ssh2_c2s_compress_ev(const void *event_data , void *user_data);
void snmp_ssh2_kex_err_ev(const void *event_data , void *user_data);
void snmp_ssh2_s2c_compress_ev(const void *event_data , void *user_data);
void snmp_ssh2_scp_sess_closed_ev(const void *event_data , void *user_data);
void snmp_ssh2_scp_sess_opened_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_proto_version_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_sess_closed_ev(const void *event_data , void *user_data);
void snmp_ssh2_sftp_sess_opened_ev(const void *event_data , void *user_data);
void snmp_startup_ev(const void *event_data , void *user_data);
void snmp_timeout_idle_ev(const void *event_data , void *user_data);
void snmp_timeout_login_ev(const void *event_data , void *user_data);
void snmp_timeout_noxfer_ev(const void *event_data , void *user_data);
void snmp_timeout_stalled_ev(const void *event_data , void *user_data);
void snmp_tls_ctrl_handshake_err_ev(const void *event_data , void *user_data);
void snmp_tls_data_handshake_err_ev(const void *event_data , void *user_data);
void snmp_tls_verify_client_err_ev(const void *event_data , void *user_data);
void snmp_tls_verify_client_ev(const void *event_data , void *user_data);
void exec_any_ev(const void *event_data , void *user_data);
void exec_any_ev(const void *event_data , void *user_data);
void exec_mod_unload_ev(const void *event_data , void *user_data);
void exec_postparse_ev(const void *event_data , void *user_data);
void exec_restart_ev(const void *event_data , void *user_data);
void exec_sess_reinit_ev(const void *event_data , void *user_data);
void sql_chroot_ev(const void *event_data , void *user_data);
void sql_eventlog_ev(const void *event_data , void *user_data);
void sql_exit_ev(const void *event_data , void *user_data);
void sql_mod_unload_ev(const void *event_data , void *user_data);
void sql_preparse_ev(const void *event_data , void *user_data);
void sql_sess_reinit_ev(const void *event_data , void *user_data);
void sftpsql_mod_unload_ev(const void *event_data , void *user_data);
void quotatab_exit_ev(const void *event_data , void *user_data);
int quotatab_fsio_write(pr_fh_t *fh , int fd , const char *buf , size_t bufsz);
int quotatab_fsio_write(pr_fh_t *fh , int fd , const char *buf , size_t bufsz);
void quotatab_mod_unload_ev(const void *event_data , void *user_data);
void quotatab_restart_ev(const void *event_data , void *user_data);
void quotatab_sess_reinit_ev(const void *event_data , void *user_data);
int ocsp_cache_add(tls_ocsp_cache_t *cache , const char *fingerprint , OCSP_RESPONSE *resp , time_t resp_age);
int ocsp_cache_add(tls_ocsp_cache_t *cache , const char *fingerprint , OCSP_RESPONSE *resp , time_t resp_age);
int ocsp_cache_clear(tls_ocsp_cache_t *cache);
int ocsp_cache_clear(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *);
int ocsp_cache_close(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *);
int ocsp_cache_delete(tls_ocsp_cache_t *cache , const char *fingerprint);
int ocsp_cache_delete(tls_ocsp_cache_t *cache , const char *fingerprint);
OCSP_RESPONSE *ocsp_cache_get(tls_ocsp_cache_t *cache , const char *fingerprint , time_t *resp_age);
OCSP_RESPONSE *ocsp_cache_get(tls_ocsp_cache_t *cache , const char *fingerprint , time_t *resp_age);
int ocsp_cache_open(tls_ocsp_cache_t *cache , char *info);
int ocsp_cache_open(tls_ocsp_cache_t *cache , char *info);
int ocsp_cache_remove(tls_ocsp_cache_t *cache);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int sess_cache_add(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len , time_t expires , SSL_SESSION *sess);
int sess_cache_clear(tls_sess_cache_t *cache);
int sess_cache_close(tls_sess_cache_t *cache);
int sess_cache_close(tls_sess_cache_t *cache);
int sess_cache_delete(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len);
int sess_cache_remove(tls_sess_cache_t *cache);
int sess_cache_remove(tls_sess_cache_t *cache);
void shmcache_mod_unload_ev(const void *event_data , void *user_data);
void shmcache_restart_ev(const void *event_data , void *user_data);
void shmcache_shutdown_ev(const void *event_data , void *user_data);
int sftppam_driver_close(sftp_kbdint_driver_t *driver);
int sftppam_driver_open(sftp_kbdint_driver_t *driver , const char *user);
void sftppam_exit_ev(const void *, void *);
void sftppam_mod_unload_ev(const void *event_data , void *user_data);
void qos_ctrl_listen_ev(const void *event_data , void *user_data);
void qos_data_connect_ev(const void *event_data , void *user_data);
void qos_data_listen_ev(const void *event_data , void *user_data);
void qos_mod_unload_ev(const void *event_data , void *user_data);
void qos_sess_reinit_ev(const void *event_data , void *user_data);
void sql_sqlite_mod_load_ev(const void *event_data , void *user_data);
void sql_sqlite_mod_unload_ev(const void *event_data , void *user_data);
int ocsp_cache_add(tls_ocsp_cache_t *cache , const char *fingerprint , OCSP_RESPONSE *resp , time_t resp_age);
int ocsp_cache_clear(tls_ocsp_cache_t *cache);
int ocsp_cache_close(tls_ocsp_cache_t *cache);
int ocsp_cache_delete(tls_ocsp_cache_t *cache , const char *fingerprint);
OCSP_RESPONSE *ocsp_cache_get(tls_ocsp_cache_t *cache , const char *fingerprint , time_t *resp_age);
int ocsp_cache_open(tls_ocsp_cache_t *cache , char *info);
int ocsp_cache_remove(tls_ocsp_cache_t *cache);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int ocsp_cache_status(tls_ocsp_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int sess_cache_add(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len , time_t expires , SSL_SESSION *sess);
int sess_cache_clear(tls_sess_cache_t *cache);
int sess_cache_close(tls_sess_cache_t *cache);
int sess_cache_delete(tls_sess_cache_t *cache , const unsigned char *sess_id , unsigned int sess_id_len);
int sess_cache_remove(tls_sess_cache_t *cache);
int sess_cache_status(tls_sess_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
int sess_cache_status(tls_sess_cache_t *cache , void (*statusf ) ( void *, const char *, ... ),
int statusf_signature, void *arg , int flags);
void tls_mcache_mod_unload_ev(const void *event_data , void *user_data);
void rewrite_exit_ev(const void *event_data , void *user_data);
void rewrite_mod_unload_ev(const void *event_data , void *user_data);
void rewrite_restart_ev(const void *event_data , void *user_data);
void rewrite_rewrite_home_ev(const void *event_data , void *user_data);
void rewrite_sess_reinit_ev(const void *event_data , void *user_data);
int filetab_close_cb(wrap2_table_t *filetab);
void filetab_mod_unload_ev(const void *event_data , void *user_data);
int redistab_close_cb(wrap2_table_t *redistab);
int redistab_close_cb(wrap2_table_t *redistab);
void redistab_mod_unload_ev(const void *event_data , void *user_data);
void tls_exit_ev(const void *event_data , void *user_data);
void tls_exit_ev(const void *event_data , void *user_data);
int tls_handle_tls(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void tls_mod_unload_ev(const void *event_data , void *user_data);
void tls_netio_abort_cb(pr_netio_stream_t *nstrm);
int tls_netio_close_cb(pr_netio_stream_t *nstrm);
pr_netio_stream_t *tls_netio_open_cb(pr_netio_stream_t *nstrm , int fd , int mode);
int tls_netio_poll_cb(pr_netio_stream_t *nstrm);
int tls_netio_postopen_cb(pr_netio_stream_t *nstrm);
int tls_netio_read_cb(pr_netio_stream_t *nstrm , char *buf , size_t buflen);
pr_netio_stream_t *tls_netio_reopen_cb(pr_netio_stream_t *nstrm , int fd , int mode);
int tls_netio_shutdown_cb(pr_netio_stream_t *nstrm , int how);
int tls_netio_write_cb(pr_netio_stream_t *nstrm , char *buf , size_t buflen);
void tls_postparse_ev(const void *event_data , void *user_data);
void tls_restart_ev(const void *event_data , void *user_data);
void tls_sess_reinit_ev(const void *event_data , void *user_data);
void tls_shutdown_ev(const void *event_data , void *user_data);
void tls_timeout_ev(const void *event_data , void *user_data);
void digest_data_xfer_ev(const void *event_data , void *user_data);
void digest_mod_unload_ev(const void *event_data , void *user_data);
void digest_sess_reinit_ev(const void *event_data , void *user_data);
void ifsess_chroot_ev(const void *event_data , void *user_data);
void ifsess_mod_unload_ev(const void *event_data , void *user_data);
void ifsess_postparse_ev(const void *event_data , void *user_data);
void sql_postgres_mod_load_ev(const void *event_data , void *user_data);
void sql_postgres_mod_unload_ev(const void *event_data , void *user_data);
void restart_daemon(void *d1 , void *d2 , void *d3 , void *d4);
void shutdown_end_session(void *d1 , void *d2 , void *d3 , void *d4);
int sys_access(pr_fs_t *fs , const char *path , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
int sys_chdir(pr_fs_t *fs , const char *path);
int sys_chmod(pr_fs_t *fs , const char *path , mode_t mode);
int sys_chown(pr_fs_t *fs , const char *path , uid_t uid , gid_t gid);
int sys_chroot(pr_fs_t *fs , const char *path);
int sys_close(pr_fh_t *fh , int fd);
int sys_closedir(pr_fs_t *fs , void *dir);
int sys_faccess(pr_fh_t *fh , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
int sys_fchmod(pr_fh_t *fh , int fd , mode_t mode);
int sys_fchown(pr_fh_t *fh , int fd , uid_t uid , gid_t gid);
ssize_t sys_fgetxattr(pool *p , pr_fh_t *fh , int fd , const char *name , void *val , size_t valsz);
int sys_flistxattr(pool *p , pr_fh_t *fh , int fd , array_header **names);
int sys_fremovexattr(pool *p , pr_fh_t *fh , int fd , const char *name);
int sys_fsetxattr(pool *p , pr_fh_t *fh , int fd , const char *name , void *val , size_t valsz , int flags);
int sys_fstat(pr_fh_t *fh , int fd , struct stat *sbuf);
int sys_fsync(pr_fh_t *fh , int fd);
int sys_ftruncate(pr_fh_t *fh , int fd , off_t len);
int sys_futimes(pr_fh_t *fh , int fd , struct timeval *tvs);
ssize_t sys_getxattr(pool *p , pr_fs_t *fs , const char *path , const char *name , void *val , size_t valsz);
int sys_lchown(pr_fs_t *fs , const char *path , uid_t uid , gid_t gid);
ssize_t sys_lgetxattr(pool *p , pr_fs_t *fs , const char *path , const char *name , void *val , size_t valsz);
int sys_link(pr_fs_t *fs , const char *target_path , const char *link_path);
int sys_listxattr(pool *p , pr_fs_t *fs , const char *path , array_header **names);
int sys_llistxattr(pool *p , pr_fs_t *fs , const char *path , array_header **names);
int sys_lremovexattr(pool *p , pr_fs_t *fs , const char *path , const char *name);
off_t sys_lseek(pr_fh_t *fh , int fd , off_t offset , int whence);
int sys_lsetxattr(pool *p , pr_fs_t *fs , const char *path , const char *name , void *val , size_t valsz , int flags);
int sys_lstat(pr_fs_t *fs , const char *path , struct stat *sbuf);
int sys_mkdir(pr_fs_t *fs , const char *path , mode_t mode);
int sys_open(pr_fh_t *fh , const char *path , int flags);
void *sys_opendir(pr_fs_t *fs , const char *path);
ssize_t sys_pread(pr_fh_t *fh , int fd , void *buf , size_t sz , off_t offset);
ssize_t sys_pwrite(pr_fh_t *fh , int fd , const void *buf , size_t sz , off_t offset);
int sys_read(pr_fh_t *fh , int fd , char *buf , size_t size);
struct dirent *sys_readdir(pr_fs_t *fs , void *dir);
int sys_readlink(pr_fs_t *fs , const char *path , char *buf , size_t buflen);
const char *sys_realpath(pr_fs_t *fs , pool *p , const char *path);
int sys_removexattr(pool *p , pr_fs_t *fs , const char *path , const char *name);
int sys_rename(pr_fs_t *fs , const char *rnfm , const char *rnto);
int sys_rmdir(pr_fs_t *fs , const char *path);
int sys_setxattr(pool *p , pr_fs_t *fs , const char *path , const char *name , void *val , size_t valsz , int flags);
int sys_stat(pr_fs_t *fs , const char *path , struct stat *sbuf);
int sys_symlink(pr_fs_t *fs , const char *target_path , const char *link_path);
int sys_truncate(pr_fs_t *fs , const char *path , off_t len);
int sys_unlink(pr_fs_t *fs , const char *path);
int sys_utimes(pr_fs_t *fs , const char *path , struct timeval *tvs);
int sys_write(pr_fh_t *fh , int fd , const char *buf , size_t size);
void define_restart_ev(const void *event_data , void *user_data);
void pool_visitf(const pr_pool_info_t *pinfo , void *user_data);
void event_cleanup_cb(void *user_data);
void ctrls_cleanup_cb(void *user_data);
void conn_cleanup_cb(void *cv);
void trace_restart_ev(const void *event_data , void *user_data);
void regexp_exit_ev(const void *event_data , void *user_data);
void regexp_restart_ev(const void *event_data , void *user_data);
void core_netio_abort_cb(pr_netio_stream_t *nstrm);
int core_netio_close_cb(pr_netio_stream_t *nstrm);
pr_netio_stream_t *core_netio_open_cb(pr_netio_stream_t *nstrm , int fd , int mode);
int core_netio_poll_cb(pr_netio_stream_t *nstrm);
int core_netio_postopen_cb(pr_netio_stream_t *nstrm);
int core_netio_read_cb(pr_netio_stream_t *nstrm , char *buf , size_t buflen);
pr_netio_stream_t *core_netio_reopen_cb(pr_netio_stream_t *nstrm , int fd , int mode);
int core_netio_shutdown_cb(pr_netio_stream_t *nstrm , int how);
int core_netio_write_cb(pr_netio_stream_t *nstrm , char *buf , size_t buflen);
void sess_redis_cleanup(void *data);
void entry_insert(pr_table_entry_t **h , pr_table_entry_t *e);
void entry_remove(pr_table_entry_t **h , pr_table_entry_t *e);
int key_cmp(const void *key1 , size_t keysz1 , const void *key2 , size_t keysz2);
unsigned int key_hash(const void *key , size_t keysz);
unsigned int key_hash(const void *key , size_t keysz);
int tab_copy_cb(const void *key_data , size_t key_datasz , const void *value_data , size_t value_datasz , void *user_data);
void server_cleanup_cb(void *conn);
void ctrls_postparse_ev(const void *event_data , void *user_data);
void ctrls_restart_ev(const void *event_data , void *user_data);
void ctrls_shutdown_ev(const void *event_data , void *user_data);
void dso_restart_ev(const void *event_data , void *user_data);
void facts_sess_reinit_ev(const void *event_data , void *user_data);
void log_exit_ev(const void *event_data , void *user_data);
void log_postparse_ev(const void *event_data , void *user_data);
void log_restart_ev(const void *event_data , void *user_data);
void log_sess_reinit_ev(const void *event_data , void *user_data);
void log_xfer_stalled_ev(const void *event_data , void *user_data);
void delay_connect_ev(const void *event_data , void *user_data);
int delay_handle_delay(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void delay_mod_unload_ev(const void *event_data , void *user_data);
void delay_postparse_ev(const void *event_data , void *user_data);
void delay_restart_ev(const void *event_data , void *user_data);
void delay_sess_reinit_ev(const void *event_data , void *user_data);
void delay_shutdown_ev(const void *event_data , void *user_data);
void ident_sess_reinit_ev(const void *event_data , void *user_data);
void core_chroot_ev(const void *event_data , void *user_data);
void core_chroot_ev(const void *, void *);
void core_connected_ev(const void *event_data , void *user_data);
void core_exit_ev(const void *event_data , void *user_data);
void core_exit_ev(const void *, void *);
void core_postparse_ev(const void *event_data , void *user_data);
void core_restart_ev(const void *event_data , void *user_data);
void core_startup_ev(const void *event_data , void *user_data);
void authfile_sess_reinit_ev(const void *event_data , void *user_data);
void systemd_mod_unload_ev(const void *event_data , void *user_data);
void systemd_postparse_ev(const void *event_data , void *user_data);
void systemd_restart_ev(const void *event_data , void *user_data);
void systemd_shutdown_ev(const void *event_data , void *user_data);
void systemd_startup_ev(const void *event_data , void *user_data);
void cap_sess_reinit_ev(const void *event_data , void *user_data);
void mcache_exit_ev(const void *event_data , void *user_data);
void mcache_restart_ev(const void *event_data , void *user_data);
void mcache_sess_reinit_ev(const void *event_data , void *user_data);
void rlimit_chroot_ev(const void *event_data , void *user_data);
void rlimit_postparse_ev(const void *event_data , void *user_data);
int facl_fsio_access(pr_fs_t *fs , const char *path , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
int facl_fsio_faccess(pr_fh_t *fh , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
void facl_mod_unload_ev(const void *event_data , void *user_data);
void facl_postparse_ev(const void *event_data , void *user_data);
void facl_restart_ev(const void *event_data , void *user_data);
void lang_postparse_ev(const void *event_data , void *user_data);
void lang_restart_ev(const void *event_data , void *user_data);
void auth_pam_exit_ev(const void *event_data , void *user_data);
void auth_exit_ev(const void *event_data , void *user_data);
void auth_sess_reinit_ev(const void *event_data , void *user_data);
int robots_fsio_access(pr_fs_t *fs , const char *path , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
int robots_fsio_close(pr_fh_t *fh , int fd);
int robots_fsio_faccess(pr_fh_t *fh , int mode , uid_t uid , gid_t gid , array_header *suppl_gids);
int robots_fsio_fstat(pr_fh_t *fh , int fd , struct stat *st);
int robots_fsio_lstat(pr_fs_t *fs , const char *path , struct stat *st);
int robots_fsio_open(pr_fh_t *fh , const char *path , int flags);
int robots_fsio_read(pr_fh_t *fh , int fd , char *buf , size_t bufsz);
int robots_fsio_stat(pr_fs_t *fs , const char *path , struct stat *st);
int robots_fsio_unlink(pr_fs_t *fs , const char *path);
int robots_fsio_write(pr_fh_t *fh , int fd , const char *buf , size_t bufsz);
int log_fmt_extra_iter_cb(const char *key , int val_type , const void *val , size_t valsz , void *user_data);
void redis_restart_ev(const void *event_data , void *user_data);
void redis_sess_reinit_ev(const void *event_data , void *user_data);
void redis_shutdown_ev(const void *event_data , void *user_data);
void auth_unix_exit_ev(const void *event_data , void *user_data);
void auth_unix_sess_reinit_ev(const void *event_data , void *user_data);
void xfer_exit_ev(const void *event_data , void *user_data);
void xfer_sess_reinit_ev(const void *event_data , void *user_data);
void xfer_sigusr2_ev(const void *event_data , void *user_data);
void xfer_sigusr2_ev(const void *, void *);
void xfer_timeout_session_ev(const void *event_data , void *user_data);
void xfer_timeout_stalled_ev(const void *, void *);
void test_visitf(const pr_pool_info_t *pinfo , void *user_data);
void event_cb(const void *event_data , void *user_data);
void event_cb2(const void *event_data , void *user_data);
void event_cb3(const void *event_data , void *user_data);
int ctrls_test2_cb(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
int ctrls_test_cb(pr_ctrls_t *ctrl , int reqargc , char **reqargv);
void schedule_cb(void *arg1 , void *arg2 , void *arg3 , void *arg4);
int do_cb(const void *key , size_t keysz , const void *value , size_t valuesz , void *user_data);
int do_with_remove_cb(const void *key , size_t keysz , const void *value , size_t valuesz , void *user_data);
int array_item_fail(int val_type , const void *val , size_t valsz , void *user_data);
int array_item_ok(int val_type , const void *val , size_t valsz , void *user_data);
int object_item_fail(const char *key , int val_type , const void *val , size_t valsz , void *user_data);
int object_item_ok(const char *key , int val_type , const void *val , size_t valsz , void *user_data);

#endif /* PROFTPD_SIGNATURES_HEADER_H */
