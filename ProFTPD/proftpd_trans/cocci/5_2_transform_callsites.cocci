// Auto-generated Coccinelle script for function pointer call transformation
// Generated from JSON input
// 
// Patterns:
//   1. return E->fp_name(args);
//   2. return E.fp_name(args);
//   3. E1 = E2->fp_name(args);
//   4. E1 = E2.fp_name(args);
//   5. E->fp_name(args);
//   6. E.fp_name(args);
//
// Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

// ===== RETURN ARROW TRANSFORMATION RULES =====
// Pattern: return E->fp_name(args);


// FP: abort
// Candidates: core_netio_abort_cb, tls_netio_abort_cb

@transform_return_abort_arrow@
expression E;
identifier FP_NAME = abort;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         return core_netio_abort_cb(args);
+     }
+     else if (E->abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         return tls_netio_abort_cb(args);
+     }


// FP: access
// Candidates: facl_fsio_access, robots_fsio_access, sys_access

@transform_return_access_arrow@
expression E;
identifier FP_NAME = access;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->access_signature == access_signatures[access_facl_fsio_access]) {
+         return facl_fsio_access(args);
+     }
+     else if (E->access_signature == access_signatures[access_robots_fsio_access]) {
+         return robots_fsio_access(args);
+     }
+     else if (E->access_signature == access_signatures[access_sys_access]) {
+         return sys_access(args);
+     }


// FP: action_cb
// Candidates: NULL, array_item_fail, array_item_ok, auth_exit_ev, auth_otp_exit_ev, auth_otp_mod_unload_ev, auth_otp_sess_reinit_ev, auth_pam_exit_ev, auth_sess_reinit_ev, auth_unix_exit_ev, auth_unix_sess_reinit_ev, authfile_sess_reinit_ev, ban_anonrejectpasswords_ev, ban_badprotocol_ev, ban_clientconnectrate_ev, ban_emptypassword_ev, ban_maxclientsperclass_ev, ban_maxclientsperhost_ev, ban_maxclientsperuser_ev, ban_maxcmdrate_ev, ban_maxconnperhost_ev, ban_maxhostsperuser_ev, ban_maxloginattempts_ev, ban_maxloginattemptsfromuser_ev, ban_mod_unload_ev, ban_postparse_ev, ban_restart_ev, ban_rootlogin_ev, ban_sess_reinit_ev, ban_shutdown_ev, ban_timeoutidle_ev, ban_timeoutlogin_ev, ban_timeoutnoxfer_ev, ban_tlshandshake_ev, ban_unhandledcmd_ev, ban_userdefined_ev, cap_sess_reinit_ev, core_chroot_ev, core_connected_ev, core_exit_ev, core_postparse_ev, core_restart_ev, core_startup_ev, ctrls_admin_mod_unload_ev, ctrls_admin_restart_ev, ctrls_admin_startup_ev, ctrls_postparse_ev, ctrls_restart_ev, ctrls_shutdown_ev, ctrls_test2_cb, ctrls_test_cb, define_restart_ev, deflate_sess_reinit_ev, delay_connect_ev, delay_handle_delay, delay_mod_unload_ev, delay_postparse_ev, delay_restart_ev, delay_sess_reinit_ev, delay_shutdown_ev, digest_data_xfer_ev, digest_mod_unload_ev, digest_sess_reinit_ev, dnsbl_sess_reinit_ev, do_cb, do_with_remove_cb, dso_restart_ev, dynmasq_handle_dynmasq, dynmasq_mod_unload_ev, dynmasq_postparse_ev, dynmasq_restart_ev, event_cb, event_cb2, event_cb3, exec_any_ev, exec_mod_unload_ev, exec_postparse_ev, exec_restart_ev, exec_sess_reinit_ev, facl_mod_unload_ev, facl_postparse_ev, facl_restart_ev, facts_sess_reinit_ev, filetab_mod_unload_ev, forensic_exit_ev, forensic_log_ev, forensic_mod_unload_ev, forensic_sess_reinit_ev, fscache_mod_unload_ev, fxp_handle_abort, geoip_mod_unload_ev, geoip_postparse_ev, geoip_restart_ev, ident_sess_reinit_ev, ifsess_chroot_ev, ifsess_mod_unload_ev, ifsess_postparse_ev, lang_postparse_ev, lang_restart_ev, ldap_mod_unload_ev, ldap_postparse_ev, ldap_sess_reinit_ev, ldap_shutdown_ev, ldaptab_mod_unload_ev, log_exit_ev, log_fmt_extra_iter_cb, log_postparse_ev, log_restart_ev, log_sess_reinit_ev, log_xfer_stalled_ev, mcache_exit_ev, mcache_restart_ev, mcache_sess_reinit_ev, object_item_fail, object_item_ok, pool_visitf, qos_ctrl_listen_ev, qos_data_connect_ev, qos_data_listen_ev, qos_mod_unload_ev, qos_sess_reinit_ev, quotatab_exit_ev, quotatab_mod_unload_ev, quotatab_restart_ev, quotatab_sess_reinit_ev, radius_exit_ev, radius_mod_unload_ev, radius_restart_ev, radius_sess_reinit_ev, radiustab_mod_unload_ev, redis_restart_ev, redis_sess_reinit_ev, redis_shutdown_ev, redistab_mod_unload_ev, regexp_exit_ev, regexp_restart_ev, restart_daemon, rewrite_exit_ev, rewrite_mod_unload_ev, rewrite_restart_ev, rewrite_rewrite_home_ev, rewrite_sess_reinit_ev, rlimit_chroot_ev, rlimit_postparse_ev, schedule_cb, sftp_ban_class_ev, sftp_ban_host_ev, sftp_ban_user_ev, sftp_chroot_ev, sftp_exit_ev, sftp_max_conns_ev, sftp_mod_unload_ev, sftp_postparse_ev, sftp_restart_ev, sftp_shutdown_ev, sftp_sigusr2_ev, sftp_timeoutlogin_ev, sftp_wrap_conn_denied_ev, sftppam_exit_ev, sftppam_mod_unload_ev, sftpsql_mod_unload_ev, shaper_handle_shaper, shaper_mod_unload_ev, shaper_postparse_ev, shaper_restart_ev, shaper_sess_exit_ev, shaper_shutdown_ev, shaper_sigusr2_ev, shmcache_mod_unload_ev, shmcache_restart_ev, shmcache_shutdown_ev, shutdown_end_session, site_misc_sess_reinit_ev, snmp_auth_code_ev, snmp_ban_ban_class_ev, snmp_ban_ban_host_ev, snmp_ban_ban_user_ev, snmp_ban_client_disconn_ev, snmp_ban_expired_ban_ev, snmp_cmd_invalid_ev, snmp_exit_ev, snmp_max_inst_ev, snmp_mod_unload_ev, snmp_postparse_ev, snmp_restart_ev, snmp_shutdown_ev, snmp_ssh2_auth_hostbased_err_ev, snmp_ssh2_auth_hostbased_ev, snmp_ssh2_auth_kbdint_err_ev, snmp_ssh2_auth_kbdint_ev, snmp_ssh2_auth_passwd_err_ev, snmp_ssh2_auth_passwd_ev, snmp_ssh2_auth_publickey_err_ev, snmp_ssh2_auth_publickey_ev, snmp_ssh2_c2s_compress_ev, snmp_ssh2_kex_err_ev, snmp_ssh2_s2c_compress_ev, snmp_ssh2_scp_sess_closed_ev, snmp_ssh2_scp_sess_opened_ev, snmp_ssh2_sftp_proto_version_ev, snmp_ssh2_sftp_sess_closed_ev, snmp_ssh2_sftp_sess_opened_ev, snmp_startup_ev, snmp_timeout_idle_ev, snmp_timeout_login_ev, snmp_timeout_noxfer_ev, snmp_timeout_stalled_ev, snmp_tls_ctrl_handshake_err_ev, snmp_tls_data_handshake_err_ev, snmp_tls_verify_client_err_ev, snmp_tls_verify_client_ev, sql_chroot_ev, sql_eventlog_ev, sql_exit_ev, sql_mod_unload_ev, sql_mysql_mod_load_ev, sql_mysql_mod_unload_ev, sql_passwd_mod_unload_ev, sql_passwd_sess_reinit_ev, sql_postgres_mod_load_ev, sql_postgres_mod_unload_ev, sql_preparse_ev, sql_sess_reinit_ev, sql_sqlite_mod_load_ev, sql_sqlite_mod_unload_ev, sqlodbc_mod_unload_ev, sqltab_mod_unload_ev, statcache_fs_statcache_clear_ev, statcache_mod_unload_ev, statcache_postparse_ev, statcache_restart_ev, statcache_sess_reinit_ev, statcache_shutdown_ev, systemd_mod_unload_ev, systemd_postparse_ev, systemd_restart_ev, systemd_shutdown_ev, systemd_startup_ev, tab_copy_cb, test_visitf, tls_exit_ev, tls_handle_tls, tls_mcache_mod_unload_ev, tls_mod_unload_ev, tls_postparse_ev, tls_redis_mod_unload_ev, tls_restart_ev, tls_sess_reinit_ev, tls_shutdown_ev, tls_timeout_ev, trace_restart_ev, uniqid_mod_unload_ev, uniqid_postparse_ev, wrap2_exit_ev, wrap2_mod_unload_ev, wrap2_restart_ev, wrap2_sess_reinit_ev, wrap_sess_reinit_ev, xfer_exit_ev, xfer_sess_reinit_ev, xfer_sigusr2_ev, xfer_timeout_session_ev, xfer_timeout_stalled_ev

@transform_return_action_cb_arrow@
expression E;
identifier FP_NAME = action_cb;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         return NULL;
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         return array_item_fail(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         return array_item_ok(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         return auth_otp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         return auth_pam_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         return ban_anonrejectpasswords_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         return ban_badprotocol_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         return ban_clientconnectrate_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         return ban_emptypassword_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         return ban_maxclientsperclass_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         return ban_maxclientsperhost_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         return ban_maxclientsperuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         return ban_maxcmdrate_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         return ban_maxconnperhost_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         return ban_maxhostsperuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         return ban_maxloginattempts_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         return ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         return ban_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         return ban_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         return ban_rootlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         return ban_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         return ban_timeoutidle_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         return ban_timeoutlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         return ban_timeoutnoxfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         return ban_tlshandshake_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         return ban_unhandledcmd_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         return ban_userdefined_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         return core_connected_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         return core_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         return core_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         return core_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         return core_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         return ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         return ctrls_admin_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         return ctrls_admin_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         return ctrls_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         return ctrls_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         return delay_connect_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         return delay_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         return delay_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         return delay_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         return delay_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         return digest_data_xfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         return digest_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         return do_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         return do_with_remove_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         return dynmasq_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         return dynmasq_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         return dynmasq_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         return event_cb3(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         return exec_any_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         return exec_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         return exec_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         return exec_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         return facl_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         return facl_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         return facl_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         return filetab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         return forensic_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         return fscache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         return fxp_handle_abort(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         return geoip_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         return geoip_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         return geoip_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         return ifsess_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         return ifsess_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         return ifsess_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         return lang_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         return lang_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         return ldap_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         return ldap_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         return ldap_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         return ldaptab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         return log_fmt_extra_iter_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         return log_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         return log_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         return mcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         return object_item_fail(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         return object_item_ok(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         return qos_ctrl_listen_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         return qos_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         return quotatab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         return quotatab_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         return radius_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         return radius_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         return radiustab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         return redis_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         return redis_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         return redistab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         return regexp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         return regexp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         return rewrite_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         return rewrite_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         return rlimit_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         return rlimit_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         return sftp_ban_class_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         return sftp_ban_host_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         return sftp_ban_user_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         return sftp_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         return sftp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         return sftp_max_conns_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         return sftp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         return sftp_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         return sftp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         return sftp_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         return sftp_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         return sftp_timeoutlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         return sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         return sftppam_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         return sftppam_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         return sftpsql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         return shaper_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         return shaper_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         return shaper_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         return shaper_sess_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         return shaper_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         return shaper_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         return shmcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         return shmcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         return shmcache_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         return snmp_auth_code_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         return snmp_ban_ban_class_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         return snmp_ban_ban_host_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         return snmp_ban_ban_user_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         return snmp_ban_client_disconn_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         return snmp_ban_expired_ban_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         return snmp_cmd_invalid_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         return snmp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         return snmp_max_inst_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         return snmp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         return snmp_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         return snmp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         return snmp_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         return snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         return snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         return snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         return snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         return snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         return snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         return snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         return snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         return snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         return snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         return snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         return snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         return snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         return snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         return snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         return snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         return snmp_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         return snmp_timeout_idle_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         return snmp_timeout_login_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         return snmp_timeout_noxfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         return snmp_timeout_stalled_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         return snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         return snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         return snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         return snmp_tls_verify_client_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         return sql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         return sql_mysql_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         return sql_mysql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         return sql_passwd_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         return sql_postgres_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         return sql_postgres_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         return sql_preparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         return sql_sqlite_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         return sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         return sqlodbc_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         return sqltab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         return statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         return statcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         return statcache_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         return statcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         return statcache_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         return systemd_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         return systemd_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         return systemd_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         return systemd_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         return systemd_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         return tab_copy_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         return test_visitf(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         return tls_mcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         return tls_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         return tls_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         return tls_redis_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         return tls_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         return tls_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         return tls_timeout_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         return uniqid_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         return uniqid_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         return wrap2_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         return wrap2_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         return xfer_timeout_session_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }


// FP: add
// Candidates: ocsp_cache_add, sess_cache_add

@transform_return_add_arrow@
expression E;
identifier FP_NAME = add;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->add_signature == add_signatures[add_ocsp_cache_add]) {
+         return ocsp_cache_add(args);
+     }
+     else if (E->add_signature == add_signatures[add_sess_cache_add]) {
+         return sess_cache_add(args);
+     }


// FP: cb
// Candidates: NULL, array_item_fail, array_item_ok, auth_exit_ev, auth_otp_exit_ev, auth_otp_mod_unload_ev, auth_otp_sess_reinit_ev, auth_pam_exit_ev, auth_sess_reinit_ev, auth_unix_exit_ev, auth_unix_sess_reinit_ev, authfile_sess_reinit_ev, ban_anonrejectpasswords_ev, ban_badprotocol_ev, ban_clientconnectrate_ev, ban_emptypassword_ev, ban_maxclientsperclass_ev, ban_maxclientsperhost_ev, ban_maxclientsperuser_ev, ban_maxcmdrate_ev, ban_maxconnperhost_ev, ban_maxhostsperuser_ev, ban_maxloginattempts_ev, ban_maxloginattemptsfromuser_ev, ban_mod_unload_ev, ban_postparse_ev, ban_restart_ev, ban_rootlogin_ev, ban_sess_reinit_ev, ban_shutdown_ev, ban_timeoutidle_ev, ban_timeoutlogin_ev, ban_timeoutnoxfer_ev, ban_tlshandshake_ev, ban_unhandledcmd_ev, ban_userdefined_ev, cap_sess_reinit_ev, core_chroot_ev, core_connected_ev, core_exit_ev, core_postparse_ev, core_restart_ev, core_startup_ev, ctrls_admin_mod_unload_ev, ctrls_admin_restart_ev, ctrls_admin_startup_ev, ctrls_postparse_ev, ctrls_restart_ev, ctrls_shutdown_ev, ctrls_test2_cb, ctrls_test_cb, define_restart_ev, deflate_sess_reinit_ev, delay_connect_ev, delay_handle_delay, delay_mod_unload_ev, delay_postparse_ev, delay_restart_ev, delay_sess_reinit_ev, delay_shutdown_ev, digest_data_xfer_ev, digest_mod_unload_ev, digest_sess_reinit_ev, dnsbl_sess_reinit_ev, do_cb, do_with_remove_cb, dso_restart_ev, dynmasq_handle_dynmasq, dynmasq_mod_unload_ev, dynmasq_postparse_ev, dynmasq_restart_ev, event_cb, event_cb2, event_cb3, exec_any_ev, exec_mod_unload_ev, exec_postparse_ev, exec_restart_ev, exec_sess_reinit_ev, facl_mod_unload_ev, facl_postparse_ev, facl_restart_ev, facts_sess_reinit_ev, filetab_mod_unload_ev, forensic_exit_ev, forensic_log_ev, forensic_mod_unload_ev, forensic_sess_reinit_ev, fscache_mod_unload_ev, fxp_handle_abort, geoip_mod_unload_ev, geoip_postparse_ev, geoip_restart_ev, ident_sess_reinit_ev, ifsess_chroot_ev, ifsess_mod_unload_ev, ifsess_postparse_ev, lang_postparse_ev, lang_restart_ev, ldap_mod_unload_ev, ldap_postparse_ev, ldap_sess_reinit_ev, ldap_shutdown_ev, ldaptab_mod_unload_ev, log_exit_ev, log_fmt_extra_iter_cb, log_postparse_ev, log_restart_ev, log_sess_reinit_ev, log_xfer_stalled_ev, mcache_exit_ev, mcache_restart_ev, mcache_sess_reinit_ev, object_item_fail, object_item_ok, pool_visitf, qos_ctrl_listen_ev, qos_data_connect_ev, qos_data_listen_ev, qos_mod_unload_ev, qos_sess_reinit_ev, quotatab_exit_ev, quotatab_mod_unload_ev, quotatab_restart_ev, quotatab_sess_reinit_ev, radius_exit_ev, radius_mod_unload_ev, radius_restart_ev, radius_sess_reinit_ev, radiustab_mod_unload_ev, redis_restart_ev, redis_sess_reinit_ev, redis_shutdown_ev, redistab_mod_unload_ev, regexp_exit_ev, regexp_restart_ev, restart_daemon, rewrite_exit_ev, rewrite_mod_unload_ev, rewrite_restart_ev, rewrite_rewrite_home_ev, rewrite_sess_reinit_ev, rlimit_chroot_ev, rlimit_postparse_ev, schedule_cb, sftp_ban_class_ev, sftp_ban_host_ev, sftp_ban_user_ev, sftp_chroot_ev, sftp_exit_ev, sftp_max_conns_ev, sftp_mod_unload_ev, sftp_postparse_ev, sftp_restart_ev, sftp_shutdown_ev, sftp_sigusr2_ev, sftp_timeoutlogin_ev, sftp_wrap_conn_denied_ev, sftppam_exit_ev, sftppam_mod_unload_ev, sftpsql_mod_unload_ev, shaper_handle_shaper, shaper_mod_unload_ev, shaper_postparse_ev, shaper_restart_ev, shaper_sess_exit_ev, shaper_shutdown_ev, shaper_sigusr2_ev, shmcache_mod_unload_ev, shmcache_restart_ev, shmcache_shutdown_ev, shutdown_end_session, site_misc_sess_reinit_ev, snmp_auth_code_ev, snmp_ban_ban_class_ev, snmp_ban_ban_host_ev, snmp_ban_ban_user_ev, snmp_ban_client_disconn_ev, snmp_ban_expired_ban_ev, snmp_cmd_invalid_ev, snmp_exit_ev, snmp_max_inst_ev, snmp_mod_unload_ev, snmp_postparse_ev, snmp_restart_ev, snmp_shutdown_ev, snmp_ssh2_auth_hostbased_err_ev, snmp_ssh2_auth_hostbased_ev, snmp_ssh2_auth_kbdint_err_ev, snmp_ssh2_auth_kbdint_ev, snmp_ssh2_auth_passwd_err_ev, snmp_ssh2_auth_passwd_ev, snmp_ssh2_auth_publickey_err_ev, snmp_ssh2_auth_publickey_ev, snmp_ssh2_c2s_compress_ev, snmp_ssh2_kex_err_ev, snmp_ssh2_s2c_compress_ev, snmp_ssh2_scp_sess_closed_ev, snmp_ssh2_scp_sess_opened_ev, snmp_ssh2_sftp_proto_version_ev, snmp_ssh2_sftp_sess_closed_ev, snmp_ssh2_sftp_sess_opened_ev, snmp_startup_ev, snmp_timeout_idle_ev, snmp_timeout_login_ev, snmp_timeout_noxfer_ev, snmp_timeout_stalled_ev, snmp_tls_ctrl_handshake_err_ev, snmp_tls_data_handshake_err_ev, snmp_tls_verify_client_err_ev, snmp_tls_verify_client_ev, sql_chroot_ev, sql_eventlog_ev, sql_exit_ev, sql_mod_unload_ev, sql_mysql_mod_load_ev, sql_mysql_mod_unload_ev, sql_passwd_mod_unload_ev, sql_passwd_sess_reinit_ev, sql_postgres_mod_load_ev, sql_postgres_mod_unload_ev, sql_preparse_ev, sql_sess_reinit_ev, sql_sqlite_mod_load_ev, sql_sqlite_mod_unload_ev, sqlodbc_mod_unload_ev, sqltab_mod_unload_ev, statcache_fs_statcache_clear_ev, statcache_mod_unload_ev, statcache_postparse_ev, statcache_restart_ev, statcache_sess_reinit_ev, statcache_shutdown_ev, systemd_mod_unload_ev, systemd_postparse_ev, systemd_restart_ev, systemd_shutdown_ev, systemd_startup_ev, tab_copy_cb, test_visitf, tls_exit_ev, tls_handle_tls, tls_mcache_mod_unload_ev, tls_mod_unload_ev, tls_postparse_ev, tls_redis_mod_unload_ev, tls_restart_ev, tls_sess_reinit_ev, tls_shutdown_ev, tls_timeout_ev, trace_restart_ev, uniqid_mod_unload_ev, uniqid_postparse_ev, wrap2_exit_ev, wrap2_mod_unload_ev, wrap2_restart_ev, wrap2_sess_reinit_ev, wrap_sess_reinit_ev, xfer_exit_ev, xfer_sess_reinit_ev, xfer_sigusr2_ev, xfer_timeout_session_ev, xfer_timeout_stalled_ev

@transform_return_cb_arrow@
expression E;
identifier FP_NAME = cb;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (E->cb_signature == cb_signatures[cb_array_item_fail]) {
+         return array_item_fail(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_array_item_ok]) {
+         return array_item_ok(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         return auth_otp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         return auth_pam_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         return ban_anonrejectpasswords_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         return ban_badprotocol_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         return ban_clientconnectrate_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         return ban_emptypassword_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         return ban_maxclientsperclass_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         return ban_maxclientsperhost_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         return ban_maxclientsperuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         return ban_maxcmdrate_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         return ban_maxconnperhost_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         return ban_maxhostsperuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         return ban_maxloginattempts_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         return ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         return ban_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         return ban_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         return ban_rootlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         return ban_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         return ban_timeoutidle_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         return ban_timeoutlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         return ban_timeoutnoxfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         return ban_tlshandshake_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         return ban_unhandledcmd_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         return ban_userdefined_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_connected_ev]) {
+         return core_connected_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_exit_ev]) {
+         return core_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         return core_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_restart_ev]) {
+         return core_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_startup_ev]) {
+         return core_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         return ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         return ctrls_admin_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         return ctrls_admin_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         return ctrls_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         return ctrls_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         return delay_connect_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         return delay_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         return delay_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         return delay_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         return delay_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         return digest_data_xfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         return digest_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_do_cb]) {
+         return do_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         return do_with_remove_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         return dynmasq_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         return dynmasq_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         return dynmasq_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb3]) {
+         return event_cb3(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_any_ev]) {
+         return exec_any_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         return exec_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         return exec_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         return exec_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         return facl_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         return facl_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         return facl_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         return filetab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         return forensic_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         return fscache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         return fxp_handle_abort(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         return geoip_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         return geoip_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         return geoip_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         return ifsess_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         return ifsess_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         return ifsess_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         return lang_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         return lang_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         return ldap_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         return ldap_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         return ldap_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         return ldaptab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         return log_fmt_extra_iter_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         return log_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_restart_ev]) {
+         return log_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         return mcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_object_item_fail]) {
+         return object_item_fail(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_object_item_ok]) {
+         return object_item_ok(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         return qos_ctrl_listen_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         return qos_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         return quotatab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         return quotatab_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         return radius_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         return radius_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         return radiustab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         return redis_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         return redis_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         return redistab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         return regexp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         return regexp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         return rewrite_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         return rewrite_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         return rlimit_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         return rlimit_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         return sftp_ban_class_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         return sftp_ban_host_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         return sftp_ban_user_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         return sftp_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         return sftp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         return sftp_max_conns_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         return sftp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         return sftp_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         return sftp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         return sftp_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         return sftp_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         return sftp_timeoutlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         return sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         return sftppam_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         return sftppam_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         return sftpsql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         return shaper_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         return shaper_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         return shaper_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         return shaper_sess_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         return shaper_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         return shaper_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         return shmcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         return shmcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         return shmcache_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         return snmp_auth_code_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         return snmp_ban_ban_class_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         return snmp_ban_ban_host_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         return snmp_ban_ban_user_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         return snmp_ban_client_disconn_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         return snmp_ban_expired_ban_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         return snmp_cmd_invalid_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         return snmp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         return snmp_max_inst_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         return snmp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         return snmp_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         return snmp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         return snmp_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         return snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         return snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         return snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         return snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         return snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         return snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         return snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         return snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         return snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         return snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         return snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         return snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         return snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         return snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         return snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         return snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         return snmp_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         return snmp_timeout_idle_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         return snmp_timeout_login_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         return snmp_timeout_noxfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         return snmp_timeout_stalled_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         return snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         return snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         return snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         return snmp_tls_verify_client_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         return sql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         return sql_mysql_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         return sql_mysql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         return sql_passwd_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         return sql_postgres_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         return sql_postgres_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         return sql_preparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         return sql_sqlite_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         return sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         return sqlodbc_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         return sqltab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         return statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         return statcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         return statcache_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         return statcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         return statcache_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         return systemd_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         return systemd_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         return systemd_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         return systemd_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         return systemd_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         return tab_copy_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_test_visitf]) {
+         return test_visitf(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         return tls_mcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         return tls_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         return tls_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         return tls_redis_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         return tls_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         return tls_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         return tls_timeout_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         return uniqid_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         return uniqid_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         return wrap2_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         return wrap2_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         return xfer_timeout_session_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }


// FP: chdir
// Candidates: sys_chdir

@transform_return_chdir_arrow@
expression E;
identifier FP_NAME = chdir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_chdir(args);


// FP: chmod
// Candidates: statcache_fsio_chmod, sys_chmod

@transform_return_chmod_arrow@
expression E;
identifier FP_NAME = chmod;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         return statcache_fsio_chmod(args);
+     }
+     else if (E->chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         return sys_chmod(args);
+     }


// FP: chown
// Candidates: statcache_fsio_chown, sys_chown

@transform_return_chown_arrow@
expression E;
identifier FP_NAME = chown;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         return statcache_fsio_chown(args);
+     }
+     else if (E->chown_signature == chown_signatures[chown_sys_chown]) {
+         return sys_chown(args);
+     }


// FP: chroot
// Candidates: sys_chroot

@transform_return_chroot_arrow@
expression E;
identifier FP_NAME = chroot;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_chroot(args);


// FP: cleanup_cb
// Candidates: NULL, conn_cleanup_cb, ctrls_cleanup_cb, event_cleanup_cb, server_cleanup_cb, sess_redis_cleanup

@transform_return_cleanup_cb_arrow@
expression E;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }


// FP: clear
// Candidates: ocsp_cache_clear, sess_cache_clear

@transform_return_clear_arrow@
expression E;
identifier FP_NAME = clear;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         return ocsp_cache_clear(args);
+     }
+     else if (E->clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         return sess_cache_clear(args);
+     }


// FP: close
// Candidates: core_netio_close_cb, deflate_netio_close_cb, deflate_next_netio_close, ocsp_cache_close, robots_fsio_close, sess_cache_close, sftppam_driver_close, sys_close, tls_netio_close_cb

@transform_return_close_arrow@
expression E;
identifier FP_NAME = close;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->close_signature == close_signatures[close_core_netio_close_cb]) {
+         return core_netio_close_cb(args);
+     }
+     else if (E->close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         return deflate_netio_close_cb(args);
+     }
+     else if (E->close_signature == close_signatures[close_deflate_next_netio_close]) {
+         return deflate_next_netio_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_ocsp_cache_close]) {
+         return ocsp_cache_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_robots_fsio_close]) {
+         return robots_fsio_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sess_cache_close]) {
+         return sess_cache_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sftppam_driver_close]) {
+         return sftppam_driver_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sys_close]) {
+         return sys_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_tls_netio_close_cb]) {
+         return tls_netio_close_cb(args);
+     }


// FP: closedir
// Candidates: sys_closedir

@transform_return_closedir_arrow@
expression E;
identifier FP_NAME = closedir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_closedir(args);


// FP: ctrls_cb
// Candidates: NULL

@transform_return_ctrls_cb_arrow@
expression E;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return NULL;


// FP: delete
// Candidates: ocsp_cache_delete, sess_cache_delete

@transform_return_delete_arrow@
expression E;
identifier FP_NAME = delete;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         return ocsp_cache_delete(args);
+     }
+     else if (E->delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         return sess_cache_delete(args);
+     }


// FP: entinsert
// Candidates: entry_insert

@transform_return_entinsert_arrow@
expression E;
identifier FP_NAME = entinsert;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return entry_insert(args);


// FP: entremove
// Candidates: entry_remove

@transform_return_entremove_arrow@
expression E;
identifier FP_NAME = entremove;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return entry_remove(args);


// FP: faccess
// Candidates: facl_fsio_faccess, robots_fsio_faccess, sys_faccess

@transform_return_faccess_arrow@
expression E;
identifier FP_NAME = faccess;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         return facl_fsio_faccess(args);
+     }
+     else if (E->faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         return robots_fsio_faccess(args);
+     }
+     else if (E->faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         return sys_faccess(args);
+     }


// FP: fchmod
// Candidates: statcache_fsio_fchmod, sys_fchmod

@transform_return_fchmod_arrow@
expression E;
identifier FP_NAME = fchmod;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         return statcache_fsio_fchmod(args);
+     }
+     else if (E->fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         return sys_fchmod(args);
+     }


// FP: fchown
// Candidates: statcache_fsio_fchown, sys_fchown

@transform_return_fchown_arrow@
expression E;
identifier FP_NAME = fchown;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         return statcache_fsio_fchown(args);
+     }
+     else if (E->fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         return sys_fchown(args);
+     }


// FP: fgetxattr
// Candidates: sys_fgetxattr

@transform_return_fgetxattr_arrow@
expression E;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_fgetxattr(args);


// FP: flistxattr
// Candidates: sys_flistxattr

@transform_return_flistxattr_arrow@
expression E;
identifier FP_NAME = flistxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_flistxattr(args);


// FP: fremovexattr
// Candidates: sys_fremovexattr

@transform_return_fremovexattr_arrow@
expression E;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_fremovexattr(args);


// FP: fsetxattr
// Candidates: sys_fsetxattr

@transform_return_fsetxattr_arrow@
expression E;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_fsetxattr(args);


// FP: fstat
// Candidates: robots_fsio_fstat, statcache_fsio_fstat, sys_fstat

@transform_return_fstat_arrow@
expression E;
identifier FP_NAME = fstat;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         return robots_fsio_fstat(args);
+     }
+     else if (E->fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         return statcache_fsio_fstat(args);
+     }
+     else if (E->fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         return sys_fstat(args);
+     }


// FP: fsync
// Candidates: sys_fsync

@transform_return_fsync_arrow@
expression E;
identifier FP_NAME = fsync;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_fsync(args);


// FP: ftruncate
// Candidates: statcache_fsio_ftruncate, sys_ftruncate

@transform_return_ftruncate_arrow@
expression E;
identifier FP_NAME = ftruncate;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         return statcache_fsio_ftruncate(args);
+     }
+     else if (E->ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         return sys_ftruncate(args);
+     }


// FP: futimes
// Candidates: statcache_fsio_futimes, sys_futimes

@transform_return_futimes_arrow@
expression E;
identifier FP_NAME = futimes;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         return statcache_fsio_futimes(args);
+     }
+     else if (E->futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         return sys_futimes(args);
+     }


// FP: get
// Candidates: ocsp_cache_get, sess_cache_get

@transform_return_get_arrow@
expression E;
identifier FP_NAME = get;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->get_signature == get_signatures[get_ocsp_cache_get]) {
+         return ocsp_cache_get(args);
+     }
+     else if (E->get_signature == get_signatures[get_sess_cache_get]) {
+         return sess_cache_get(args);
+     }


// FP: getxattr
// Candidates: sys_getxattr

@transform_return_getxattr_arrow@
expression E;
identifier FP_NAME = getxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_getxattr(args);


// FP: keycmp
// Candidates: key_cmp

@transform_return_keycmp_arrow@
expression E;
identifier FP_NAME = keycmp;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return key_cmp(args);


// FP: keyhash
// Candidates: key_hash

@transform_return_keyhash_arrow@
expression E;
identifier FP_NAME = keyhash;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return key_hash(args);


// FP: lchown
// Candidates: statcache_fsio_lchown, sys_lchown

@transform_return_lchown_arrow@
expression E;
identifier FP_NAME = lchown;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         return statcache_fsio_lchown(args);
+     }
+     else if (E->lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         return sys_lchown(args);
+     }


// FP: lgetxattr
// Candidates: sys_lgetxattr

@transform_return_lgetxattr_arrow@
expression E;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_lgetxattr(args);


// FP: link
// Candidates: sys_link

@transform_return_link_arrow@
expression E;
identifier FP_NAME = link;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_link(args);


// FP: listxattr
// Candidates: sys_listxattr

@transform_return_listxattr_arrow@
expression E;
identifier FP_NAME = listxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_listxattr(args);


// FP: llistxattr
// Candidates: sys_llistxattr

@transform_return_llistxattr_arrow@
expression E;
identifier FP_NAME = llistxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_llistxattr(args);


// FP: lremovexattr
// Candidates: sys_lremovexattr

@transform_return_lremovexattr_arrow@
expression E;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_lremovexattr(args);


// FP: lseek
// Candidates: sys_lseek

@transform_return_lseek_arrow@
expression E;
identifier FP_NAME = lseek;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_lseek(args);


// FP: lsetxattr
// Candidates: sys_lsetxattr

@transform_return_lsetxattr_arrow@
expression E;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_lsetxattr(args);


// FP: lstat
// Candidates: robots_fsio_lstat, statcache_fsio_lstat, sys_lstat

@transform_return_lstat_arrow@
expression E;
identifier FP_NAME = lstat;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         return robots_fsio_lstat(args);
+     }
+     else if (E->lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         return statcache_fsio_lstat(args);
+     }
+     else if (E->lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         return sys_lstat(args);
+     }


// FP: mkdir
// Candidates: sys_mkdir

@transform_return_mkdir_arrow@
expression E;
identifier FP_NAME = mkdir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_mkdir(args);


// FP: open
// Candidates: core_netio_open_cb, deflate_netio_open_cb, deflate_next_netio_open, ocsp_cache_open, robots_fsio_open, sess_cache_open, sftppam_driver_open, statcache_fsio_open, sys_open, tls_netio_open_cb

@transform_return_open_arrow@
expression E;
identifier FP_NAME = open;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->open_signature == open_signatures[open_core_netio_open_cb]) {
+         return core_netio_open_cb(args);
+     }
+     else if (E->open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         return deflate_netio_open_cb(args);
+     }
+     else if (E->open_signature == open_signatures[open_deflate_next_netio_open]) {
+         return deflate_next_netio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_ocsp_cache_open]) {
+         return ocsp_cache_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_robots_fsio_open]) {
+         return robots_fsio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sess_cache_open]) {
+         return sess_cache_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sftppam_driver_open]) {
+         return sftppam_driver_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_statcache_fsio_open]) {
+         return statcache_fsio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sys_open]) {
+         return sys_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_tls_netio_open_cb]) {
+         return tls_netio_open_cb(args);
+     }


// FP: opendir
// Candidates: sys_opendir

@transform_return_opendir_arrow@
expression E;
identifier FP_NAME = opendir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_opendir(args);


// FP: poll
// Candidates: core_netio_poll_cb, tls_netio_poll_cb

@transform_return_poll_arrow@
expression E;
identifier FP_NAME = poll;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         return core_netio_poll_cb(args);
+     }
+     else if (E->poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         return tls_netio_poll_cb(args);
+     }


// FP: postopen
// Candidates: core_netio_postopen_cb, tls_netio_postopen_cb

@transform_return_postopen_arrow@
expression E;
identifier FP_NAME = postopen;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         return core_netio_postopen_cb(args);
+     }
+     else if (E->postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         return tls_netio_postopen_cb(args);
+     }


// FP: pread
// Candidates: sys_pread

@transform_return_pread_arrow@
expression E;
identifier FP_NAME = pread;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_pread(args);


// FP: pwrite
// Candidates: sys_pwrite

@transform_return_pwrite_arrow@
expression E;
identifier FP_NAME = pwrite;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_pwrite(args);


// FP: read
// Candidates: core_netio_read_cb, deflate_netio_read_cb, deflate_next_netio_read, robots_fsio_read, sys_read, tls_netio_read_cb

@transform_return_read_arrow@
expression E;
identifier FP_NAME = read;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->read_signature == read_signatures[read_core_netio_read_cb]) {
+         return core_netio_read_cb(args);
+     }
+     else if (E->read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         return deflate_netio_read_cb(args);
+     }
+     else if (E->read_signature == read_signatures[read_deflate_next_netio_read]) {
+         return deflate_next_netio_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_robots_fsio_read]) {
+         return robots_fsio_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_sys_read]) {
+         return sys_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_tls_netio_read_cb]) {
+         return tls_netio_read_cb(args);
+     }


// FP: readdir
// Candidates: sys_readdir

@transform_return_readdir_arrow@
expression E;
identifier FP_NAME = readdir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_readdir(args);


// FP: readlink
// Candidates: sys_readlink

@transform_return_readlink_arrow@
expression E;
identifier FP_NAME = readlink;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_readlink(args);


// FP: realpath
// Candidates: sys_realpath

@transform_return_realpath_arrow@
expression E;
identifier FP_NAME = realpath;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_realpath(args);


// FP: regtab_open
// Candidates: srcopen

@transform_return_regtab_open_arrow@
expression E;
identifier FP_NAME = regtab_open;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return srcopen(args);


// FP: remove
// Candidates: 0, ocsp_cache_remove, sess_cache_remove

@transform_return_remove_arrow@
expression E;
identifier FP_NAME = remove;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->remove_signature == remove_signatures[remove_0]) {
+         return 0;
+     }
+     else if (E->remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         return ocsp_cache_remove(args);
+     }
+     else if (E->remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         return sess_cache_remove(args);
+     }


// FP: removexattr
// Candidates: sys_removexattr

@transform_return_removexattr_arrow@
expression E;
identifier FP_NAME = removexattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_removexattr(args);


// FP: rename
// Candidates: statcache_fsio_rename, sys_rename

@transform_return_rename_arrow@
expression E;
identifier FP_NAME = rename;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         return statcache_fsio_rename(args);
+     }
+     else if (E->rename_signature == rename_signatures[rename_sys_rename]) {
+         return sys_rename(args);
+     }


// FP: reopen
// Candidates: core_netio_reopen_cb, tls_netio_reopen_cb

@transform_return_reopen_arrow@
expression E;
identifier FP_NAME = reopen;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         return core_netio_reopen_cb(args);
+     }
+     else if (E->reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         return tls_netio_reopen_cb(args);
+     }


// FP: rmdir
// Candidates: sys_rmdir

@transform_return_rmdir_arrow@
expression E;
identifier FP_NAME = rmdir;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_rmdir(args);


// FP: setxattr
// Candidates: sys_setxattr

@transform_return_setxattr_arrow@
expression E;
identifier FP_NAME = setxattr;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_setxattr(args);


// FP: shutdown
// Candidates: core_netio_shutdown_cb, deflate_netio_shutdown_cb, deflate_next_netio_shutdown, tls_netio_shutdown_cb

@transform_return_shutdown_arrow@
expression E;
identifier FP_NAME = shutdown;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         return core_netio_shutdown_cb(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         return deflate_netio_shutdown_cb(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         return deflate_next_netio_shutdown(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         return tls_netio_shutdown_cb(args);
+     }


// FP: stat
// Candidates: robots_fsio_stat, statcache_fsio_stat, sys_stat

@transform_return_stat_arrow@
expression E;
identifier FP_NAME = stat;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         return robots_fsio_stat(args);
+     }
+     else if (E->stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         return statcache_fsio_stat(args);
+     }
+     else if (E->stat_signature == stat_signatures[stat_sys_stat]) {
+         return sys_stat(args);
+     }


// FP: status
// Candidates: ocsp_cache_status, sess_cache_status

@transform_return_status_arrow@
expression E;
identifier FP_NAME = status;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->status_signature == status_signatures[status_ocsp_cache_status]) {
+         return ocsp_cache_status(args);
+     }
+     else if (E->status_signature == status_signatures[status_sess_cache_status]) {
+         return sess_cache_status(args);
+     }


// FP: symlink
// Candidates: sys_symlink

@transform_return_symlink_arrow@
expression E;
identifier FP_NAME = symlink;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     return sys_symlink(args);


// FP: tab_close
// Candidates: filetab_close, filetab_close_cb, ldaptab_close, radiustab_close, redistab_close_cb, sqltab_close, sqltab_close_cb

@transform_return_tab_close_arrow@
expression E;
identifier FP_NAME = tab_close;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         return filetab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         return filetab_close_cb(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         return ldaptab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         return radiustab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         return redistab_close_cb(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         return sqltab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         return sqltab_close_cb(args);
+     }


// FP: tab_create
// Candidates: filetab_create, sqltab_create

@transform_return_tab_create_arrow@
expression E;
identifier FP_NAME = tab_create;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         return filetab_create(args);
+     }
+     else if (E->tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         return sqltab_create(args);
+     }


// FP: tab_lookup
// Candidates: filetab_lookup, ldaptab_lookup, radiustab_lookup, sqltab_lookup

@transform_return_tab_lookup_arrow@
expression E;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         return filetab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         return ldaptab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         return radiustab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         return sqltab_lookup(args);
+     }


// FP: tab_read
// Candidates: filetab_read, sqltab_read

@transform_return_tab_read_arrow@
expression E;
identifier FP_NAME = tab_read;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         return filetab_read(args);
+     }
+     else if (E->tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         return sqltab_read(args);
+     }


// FP: tab_rlock
// Candidates: filetab_rlock, sqltab_rlock

@transform_return_tab_rlock_arrow@
expression E;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         return filetab_rlock(args);
+     }
+     else if (E->tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         return sqltab_rlock(args);
+     }


// FP: tab_unlock
// Candidates: filetab_unlock, sqltab_unlock

@transform_return_tab_unlock_arrow@
expression E;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         return filetab_unlock(args);
+     }
+     else if (E->tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         return sqltab_unlock(args);
+     }


// FP: tab_verify
// Candidates: filetab_verify, ldaptab_verify, radiustab_verify, sqltab_verify

@transform_return_tab_verify_arrow@
expression E;
identifier FP_NAME = tab_verify;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         return filetab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         return ldaptab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         return radiustab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         return sqltab_verify(args);
+     }


// FP: tab_wlock
// Candidates: filetab_wlock, sqltab_wlock

@transform_return_tab_wlock_arrow@
expression E;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         return filetab_wlock(args);
+     }
+     else if (E->tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         return sqltab_wlock(args);
+     }


// FP: tab_write
// Candidates: filetab_write, sqltab_write

@transform_return_tab_write_arrow@
expression E;
identifier FP_NAME = tab_write;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         return filetab_write(args);
+     }
+     else if (E->tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         return sqltab_write(args);
+     }


// FP: truncate
// Candidates: statcache_fsio_truncate, sys_truncate

@transform_return_truncate_arrow@
expression E;
identifier FP_NAME = truncate;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         return statcache_fsio_truncate(args);
+     }
+     else if (E->truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         return sys_truncate(args);
+     }


// FP: unlink
// Candidates: robots_fsio_unlink, statcache_fsio_unlink, sys_unlink

@transform_return_unlink_arrow@
expression E;
identifier FP_NAME = unlink;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         return robots_fsio_unlink(args);
+     }
+     else if (E->unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         return statcache_fsio_unlink(args);
+     }
+     else if (E->unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         return sys_unlink(args);
+     }


// FP: utimes
// Candidates: statcache_fsio_utimes, sys_utimes

@transform_return_utimes_arrow@
expression E;
identifier FP_NAME = utimes;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         return statcache_fsio_utimes(args);
+     }
+     else if (E->utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         return sys_utimes(args);
+     }


// FP: write
// Candidates: core_netio_write_cb, deflate_netio_write_cb, deflate_next_netio_write, quotatab_fsio_write, robots_fsio_write, statcache_fsio_write, sys_write, tls_netio_write_cb

@transform_return_write_arrow@
expression E;
identifier FP_NAME = write;
expression list args;
@@
- return E->FP_NAME(args);
+ // return E->FP_NAME(args);
+     if (E->write_signature == write_signatures[write_core_netio_write_cb]) {
+         return core_netio_write_cb(args);
+     }
+     else if (E->write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         return deflate_netio_write_cb(args);
+     }
+     else if (E->write_signature == write_signatures[write_deflate_next_netio_write]) {
+         return deflate_next_netio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_quotatab_fsio_write]) {
+         return quotatab_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_robots_fsio_write]) {
+         return robots_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_statcache_fsio_write]) {
+         return statcache_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_sys_write]) {
+         return sys_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_tls_netio_write_cb]) {
+         return tls_netio_write_cb(args);
+     }

// Total return arrow rules: 76

// ===== RETURN DOT TRANSFORMATION RULES =====
// Pattern: return E.fp_name(args);


// FP: abort

@transform_return_abort_dot@
expression E;
identifier FP_NAME = abort;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         return core_netio_abort_cb(args);
+     }
+     else if (E.abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         return tls_netio_abort_cb(args);
+     }


// FP: access

@transform_return_access_dot@
expression E;
identifier FP_NAME = access;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.access_signature == access_signatures[access_facl_fsio_access]) {
+         return facl_fsio_access(args);
+     }
+     else if (E.access_signature == access_signatures[access_robots_fsio_access]) {
+         return robots_fsio_access(args);
+     }
+     else if (E.access_signature == access_signatures[access_sys_access]) {
+         return sys_access(args);
+     }


// FP: action_cb

@transform_return_action_cb_dot@
expression E;
identifier FP_NAME = action_cb;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         return NULL;
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         return array_item_fail(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         return array_item_ok(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         return auth_otp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         return auth_pam_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         return ban_anonrejectpasswords_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         return ban_badprotocol_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         return ban_clientconnectrate_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         return ban_emptypassword_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         return ban_maxclientsperclass_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         return ban_maxclientsperhost_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         return ban_maxclientsperuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         return ban_maxcmdrate_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         return ban_maxconnperhost_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         return ban_maxhostsperuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         return ban_maxloginattempts_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         return ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         return ban_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         return ban_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         return ban_rootlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         return ban_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         return ban_timeoutidle_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         return ban_timeoutlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         return ban_timeoutnoxfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         return ban_tlshandshake_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         return ban_unhandledcmd_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         return ban_userdefined_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         return core_connected_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         return core_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         return core_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         return core_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         return core_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         return ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         return ctrls_admin_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         return ctrls_admin_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         return ctrls_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         return ctrls_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         return delay_connect_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         return delay_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         return delay_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         return delay_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         return delay_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         return digest_data_xfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         return digest_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         return do_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         return do_with_remove_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         return dynmasq_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         return dynmasq_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         return dynmasq_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         return event_cb3(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         return exec_any_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         return exec_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         return exec_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         return exec_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         return facl_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         return facl_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         return facl_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         return filetab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         return forensic_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         return fscache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         return fxp_handle_abort(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         return geoip_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         return geoip_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         return geoip_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         return ifsess_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         return ifsess_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         return ifsess_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         return lang_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         return lang_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         return ldap_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         return ldap_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         return ldap_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         return ldaptab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         return log_fmt_extra_iter_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         return log_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         return log_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         return mcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         return object_item_fail(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         return object_item_ok(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         return qos_ctrl_listen_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         return qos_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         return quotatab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         return quotatab_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         return radius_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         return radius_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         return radiustab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         return redis_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         return redis_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         return redistab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         return regexp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         return regexp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         return rewrite_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         return rewrite_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         return rlimit_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         return rlimit_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         return sftp_ban_class_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         return sftp_ban_host_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         return sftp_ban_user_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         return sftp_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         return sftp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         return sftp_max_conns_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         return sftp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         return sftp_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         return sftp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         return sftp_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         return sftp_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         return sftp_timeoutlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         return sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         return sftppam_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         return sftppam_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         return sftpsql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         return shaper_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         return shaper_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         return shaper_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         return shaper_sess_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         return shaper_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         return shaper_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         return shmcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         return shmcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         return shmcache_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         return snmp_auth_code_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         return snmp_ban_ban_class_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         return snmp_ban_ban_host_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         return snmp_ban_ban_user_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         return snmp_ban_client_disconn_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         return snmp_ban_expired_ban_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         return snmp_cmd_invalid_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         return snmp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         return snmp_max_inst_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         return snmp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         return snmp_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         return snmp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         return snmp_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         return snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         return snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         return snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         return snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         return snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         return snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         return snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         return snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         return snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         return snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         return snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         return snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         return snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         return snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         return snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         return snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         return snmp_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         return snmp_timeout_idle_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         return snmp_timeout_login_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         return snmp_timeout_noxfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         return snmp_timeout_stalled_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         return snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         return snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         return snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         return snmp_tls_verify_client_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         return sql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         return sql_mysql_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         return sql_mysql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         return sql_passwd_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         return sql_postgres_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         return sql_postgres_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         return sql_preparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         return sql_sqlite_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         return sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         return sqlodbc_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         return sqltab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         return statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         return statcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         return statcache_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         return statcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         return statcache_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         return systemd_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         return systemd_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         return systemd_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         return systemd_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         return systemd_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         return tab_copy_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         return test_visitf(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         return tls_mcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         return tls_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         return tls_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         return tls_redis_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         return tls_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         return tls_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         return tls_timeout_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         return uniqid_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         return uniqid_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         return wrap2_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         return wrap2_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         return xfer_timeout_session_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }


// FP: add

@transform_return_add_dot@
expression E;
identifier FP_NAME = add;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.add_signature == add_signatures[add_ocsp_cache_add]) {
+         return ocsp_cache_add(args);
+     }
+     else if (E.add_signature == add_signatures[add_sess_cache_add]) {
+         return sess_cache_add(args);
+     }


// FP: cb

@transform_return_cb_dot@
expression E;
identifier FP_NAME = cb;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (E.cb_signature == cb_signatures[cb_array_item_fail]) {
+         return array_item_fail(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_array_item_ok]) {
+         return array_item_ok(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         return auth_otp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         return auth_pam_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         return ban_anonrejectpasswords_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         return ban_badprotocol_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         return ban_clientconnectrate_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         return ban_emptypassword_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         return ban_maxclientsperclass_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         return ban_maxclientsperhost_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         return ban_maxclientsperuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         return ban_maxcmdrate_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         return ban_maxconnperhost_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         return ban_maxhostsperuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         return ban_maxloginattempts_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         return ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         return ban_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         return ban_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         return ban_rootlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         return ban_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         return ban_timeoutidle_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         return ban_timeoutlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         return ban_timeoutnoxfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         return ban_tlshandshake_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         return ban_unhandledcmd_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         return ban_userdefined_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_connected_ev]) {
+         return core_connected_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_exit_ev]) {
+         return core_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         return core_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_restart_ev]) {
+         return core_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_startup_ev]) {
+         return core_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         return ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         return ctrls_admin_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         return ctrls_admin_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         return ctrls_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         return ctrls_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         return delay_connect_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         return delay_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         return delay_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         return delay_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         return delay_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         return digest_data_xfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         return digest_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_do_cb]) {
+         return do_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         return do_with_remove_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         return dynmasq_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         return dynmasq_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         return dynmasq_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb3]) {
+         return event_cb3(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_any_ev]) {
+         return exec_any_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         return exec_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         return exec_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         return exec_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         return facl_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         return facl_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         return facl_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         return filetab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         return forensic_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         return fscache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         return fxp_handle_abort(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         return geoip_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         return geoip_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         return geoip_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         return ifsess_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         return ifsess_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         return ifsess_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         return lang_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         return lang_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         return ldap_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         return ldap_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         return ldap_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         return ldaptab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         return log_fmt_extra_iter_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         return log_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_restart_ev]) {
+         return log_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         return mcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_object_item_fail]) {
+         return object_item_fail(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_object_item_ok]) {
+         return object_item_ok(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         return qos_ctrl_listen_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         return qos_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         return quotatab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         return quotatab_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         return radius_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         return radius_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         return radiustab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         return redis_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         return redis_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         return redistab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         return regexp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         return regexp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         return rewrite_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         return rewrite_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         return rlimit_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         return rlimit_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         return sftp_ban_class_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         return sftp_ban_host_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         return sftp_ban_user_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         return sftp_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         return sftp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         return sftp_max_conns_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         return sftp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         return sftp_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         return sftp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         return sftp_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         return sftp_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         return sftp_timeoutlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         return sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         return sftppam_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         return sftppam_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         return sftpsql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         return shaper_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         return shaper_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         return shaper_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         return shaper_sess_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         return shaper_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         return shaper_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         return shmcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         return shmcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         return shmcache_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         return snmp_auth_code_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         return snmp_ban_ban_class_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         return snmp_ban_ban_host_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         return snmp_ban_ban_user_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         return snmp_ban_client_disconn_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         return snmp_ban_expired_ban_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         return snmp_cmd_invalid_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         return snmp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         return snmp_max_inst_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         return snmp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         return snmp_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         return snmp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         return snmp_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         return snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         return snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         return snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         return snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         return snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         return snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         return snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         return snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         return snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         return snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         return snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         return snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         return snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         return snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         return snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         return snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         return snmp_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         return snmp_timeout_idle_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         return snmp_timeout_login_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         return snmp_timeout_noxfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         return snmp_timeout_stalled_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         return snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         return snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         return snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         return snmp_tls_verify_client_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         return sql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         return sql_mysql_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         return sql_mysql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         return sql_passwd_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         return sql_postgres_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         return sql_postgres_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         return sql_preparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         return sql_sqlite_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         return sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         return sqlodbc_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         return sqltab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         return statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         return statcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         return statcache_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         return statcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         return statcache_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         return systemd_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         return systemd_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         return systemd_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         return systemd_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         return systemd_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         return tab_copy_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_test_visitf]) {
+         return test_visitf(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         return tls_mcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         return tls_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         return tls_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         return tls_redis_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         return tls_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         return tls_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         return tls_timeout_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         return uniqid_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         return uniqid_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         return wrap2_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         return wrap2_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         return xfer_timeout_session_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }


// FP: chdir

@transform_return_chdir_dot@
expression E;
identifier FP_NAME = chdir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_chdir(args);


// FP: chmod

@transform_return_chmod_dot@
expression E;
identifier FP_NAME = chmod;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         return statcache_fsio_chmod(args);
+     }
+     else if (E.chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         return sys_chmod(args);
+     }


// FP: chown

@transform_return_chown_dot@
expression E;
identifier FP_NAME = chown;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         return statcache_fsio_chown(args);
+     }
+     else if (E.chown_signature == chown_signatures[chown_sys_chown]) {
+         return sys_chown(args);
+     }


// FP: chroot

@transform_return_chroot_dot@
expression E;
identifier FP_NAME = chroot;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_chroot(args);


// FP: cleanup_cb

@transform_return_cleanup_cb_dot@
expression E;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }


// FP: clear

@transform_return_clear_dot@
expression E;
identifier FP_NAME = clear;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         return ocsp_cache_clear(args);
+     }
+     else if (E.clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         return sess_cache_clear(args);
+     }


// FP: close

@transform_return_close_dot@
expression E;
identifier FP_NAME = close;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.close_signature == close_signatures[close_core_netio_close_cb]) {
+         return core_netio_close_cb(args);
+     }
+     else if (E.close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         return deflate_netio_close_cb(args);
+     }
+     else if (E.close_signature == close_signatures[close_deflate_next_netio_close]) {
+         return deflate_next_netio_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_ocsp_cache_close]) {
+         return ocsp_cache_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_robots_fsio_close]) {
+         return robots_fsio_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sess_cache_close]) {
+         return sess_cache_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sftppam_driver_close]) {
+         return sftppam_driver_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sys_close]) {
+         return sys_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_tls_netio_close_cb]) {
+         return tls_netio_close_cb(args);
+     }


// FP: closedir

@transform_return_closedir_dot@
expression E;
identifier FP_NAME = closedir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_closedir(args);


// FP: ctrls_cb

@transform_return_ctrls_cb_dot@
expression E;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return NULL;


// FP: delete

@transform_return_delete_dot@
expression E;
identifier FP_NAME = delete;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         return ocsp_cache_delete(args);
+     }
+     else if (E.delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         return sess_cache_delete(args);
+     }


// FP: entinsert

@transform_return_entinsert_dot@
expression E;
identifier FP_NAME = entinsert;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return entry_insert(args);


// FP: entremove

@transform_return_entremove_dot@
expression E;
identifier FP_NAME = entremove;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return entry_remove(args);


// FP: faccess

@transform_return_faccess_dot@
expression E;
identifier FP_NAME = faccess;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         return facl_fsio_faccess(args);
+     }
+     else if (E.faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         return robots_fsio_faccess(args);
+     }
+     else if (E.faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         return sys_faccess(args);
+     }


// FP: fchmod

@transform_return_fchmod_dot@
expression E;
identifier FP_NAME = fchmod;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         return statcache_fsio_fchmod(args);
+     }
+     else if (E.fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         return sys_fchmod(args);
+     }


// FP: fchown

@transform_return_fchown_dot@
expression E;
identifier FP_NAME = fchown;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         return statcache_fsio_fchown(args);
+     }
+     else if (E.fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         return sys_fchown(args);
+     }


// FP: fgetxattr

@transform_return_fgetxattr_dot@
expression E;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_fgetxattr(args);


// FP: flistxattr

@transform_return_flistxattr_dot@
expression E;
identifier FP_NAME = flistxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_flistxattr(args);


// FP: fremovexattr

@transform_return_fremovexattr_dot@
expression E;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_fremovexattr(args);


// FP: fsetxattr

@transform_return_fsetxattr_dot@
expression E;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_fsetxattr(args);


// FP: fstat

@transform_return_fstat_dot@
expression E;
identifier FP_NAME = fstat;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         return robots_fsio_fstat(args);
+     }
+     else if (E.fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         return statcache_fsio_fstat(args);
+     }
+     else if (E.fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         return sys_fstat(args);
+     }


// FP: fsync

@transform_return_fsync_dot@
expression E;
identifier FP_NAME = fsync;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_fsync(args);


// FP: ftruncate

@transform_return_ftruncate_dot@
expression E;
identifier FP_NAME = ftruncate;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         return statcache_fsio_ftruncate(args);
+     }
+     else if (E.ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         return sys_ftruncate(args);
+     }


// FP: futimes

@transform_return_futimes_dot@
expression E;
identifier FP_NAME = futimes;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         return statcache_fsio_futimes(args);
+     }
+     else if (E.futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         return sys_futimes(args);
+     }


// FP: get

@transform_return_get_dot@
expression E;
identifier FP_NAME = get;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.get_signature == get_signatures[get_ocsp_cache_get]) {
+         return ocsp_cache_get(args);
+     }
+     else if (E.get_signature == get_signatures[get_sess_cache_get]) {
+         return sess_cache_get(args);
+     }


// FP: getxattr

@transform_return_getxattr_dot@
expression E;
identifier FP_NAME = getxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_getxattr(args);


// FP: keycmp

@transform_return_keycmp_dot@
expression E;
identifier FP_NAME = keycmp;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return key_cmp(args);


// FP: keyhash

@transform_return_keyhash_dot@
expression E;
identifier FP_NAME = keyhash;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return key_hash(args);


// FP: lchown

@transform_return_lchown_dot@
expression E;
identifier FP_NAME = lchown;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         return statcache_fsio_lchown(args);
+     }
+     else if (E.lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         return sys_lchown(args);
+     }


// FP: lgetxattr

@transform_return_lgetxattr_dot@
expression E;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_lgetxattr(args);


// FP: link

@transform_return_link_dot@
expression E;
identifier FP_NAME = link;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_link(args);


// FP: listxattr

@transform_return_listxattr_dot@
expression E;
identifier FP_NAME = listxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_listxattr(args);


// FP: llistxattr

@transform_return_llistxattr_dot@
expression E;
identifier FP_NAME = llistxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_llistxattr(args);


// FP: lremovexattr

@transform_return_lremovexattr_dot@
expression E;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_lremovexattr(args);


// FP: lseek

@transform_return_lseek_dot@
expression E;
identifier FP_NAME = lseek;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_lseek(args);


// FP: lsetxattr

@transform_return_lsetxattr_dot@
expression E;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_lsetxattr(args);


// FP: lstat

@transform_return_lstat_dot@
expression E;
identifier FP_NAME = lstat;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         return robots_fsio_lstat(args);
+     }
+     else if (E.lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         return statcache_fsio_lstat(args);
+     }
+     else if (E.lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         return sys_lstat(args);
+     }


// FP: mkdir

@transform_return_mkdir_dot@
expression E;
identifier FP_NAME = mkdir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_mkdir(args);


// FP: open

@transform_return_open_dot@
expression E;
identifier FP_NAME = open;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.open_signature == open_signatures[open_core_netio_open_cb]) {
+         return core_netio_open_cb(args);
+     }
+     else if (E.open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         return deflate_netio_open_cb(args);
+     }
+     else if (E.open_signature == open_signatures[open_deflate_next_netio_open]) {
+         return deflate_next_netio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_ocsp_cache_open]) {
+         return ocsp_cache_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_robots_fsio_open]) {
+         return robots_fsio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sess_cache_open]) {
+         return sess_cache_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sftppam_driver_open]) {
+         return sftppam_driver_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_statcache_fsio_open]) {
+         return statcache_fsio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sys_open]) {
+         return sys_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_tls_netio_open_cb]) {
+         return tls_netio_open_cb(args);
+     }


// FP: opendir

@transform_return_opendir_dot@
expression E;
identifier FP_NAME = opendir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_opendir(args);


// FP: poll

@transform_return_poll_dot@
expression E;
identifier FP_NAME = poll;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         return core_netio_poll_cb(args);
+     }
+     else if (E.poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         return tls_netio_poll_cb(args);
+     }


// FP: postopen

@transform_return_postopen_dot@
expression E;
identifier FP_NAME = postopen;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         return core_netio_postopen_cb(args);
+     }
+     else if (E.postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         return tls_netio_postopen_cb(args);
+     }


// FP: pread

@transform_return_pread_dot@
expression E;
identifier FP_NAME = pread;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_pread(args);


// FP: pwrite

@transform_return_pwrite_dot@
expression E;
identifier FP_NAME = pwrite;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_pwrite(args);


// FP: read

@transform_return_read_dot@
expression E;
identifier FP_NAME = read;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.read_signature == read_signatures[read_core_netio_read_cb]) {
+         return core_netio_read_cb(args);
+     }
+     else if (E.read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         return deflate_netio_read_cb(args);
+     }
+     else if (E.read_signature == read_signatures[read_deflate_next_netio_read]) {
+         return deflate_next_netio_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_robots_fsio_read]) {
+         return robots_fsio_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_sys_read]) {
+         return sys_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_tls_netio_read_cb]) {
+         return tls_netio_read_cb(args);
+     }


// FP: readdir

@transform_return_readdir_dot@
expression E;
identifier FP_NAME = readdir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_readdir(args);


// FP: readlink

@transform_return_readlink_dot@
expression E;
identifier FP_NAME = readlink;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_readlink(args);


// FP: realpath

@transform_return_realpath_dot@
expression E;
identifier FP_NAME = realpath;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_realpath(args);


// FP: regtab_open

@transform_return_regtab_open_dot@
expression E;
identifier FP_NAME = regtab_open;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return srcopen(args);


// FP: remove

@transform_return_remove_dot@
expression E;
identifier FP_NAME = remove;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.remove_signature == remove_signatures[remove_0]) {
+         return 0;
+     }
+     else if (E.remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         return ocsp_cache_remove(args);
+     }
+     else if (E.remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         return sess_cache_remove(args);
+     }


// FP: removexattr

@transform_return_removexattr_dot@
expression E;
identifier FP_NAME = removexattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_removexattr(args);


// FP: rename

@transform_return_rename_dot@
expression E;
identifier FP_NAME = rename;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         return statcache_fsio_rename(args);
+     }
+     else if (E.rename_signature == rename_signatures[rename_sys_rename]) {
+         return sys_rename(args);
+     }


// FP: reopen

@transform_return_reopen_dot@
expression E;
identifier FP_NAME = reopen;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         return core_netio_reopen_cb(args);
+     }
+     else if (E.reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         return tls_netio_reopen_cb(args);
+     }


// FP: rmdir

@transform_return_rmdir_dot@
expression E;
identifier FP_NAME = rmdir;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_rmdir(args);


// FP: setxattr

@transform_return_setxattr_dot@
expression E;
identifier FP_NAME = setxattr;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_setxattr(args);


// FP: shutdown

@transform_return_shutdown_dot@
expression E;
identifier FP_NAME = shutdown;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         return core_netio_shutdown_cb(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         return deflate_netio_shutdown_cb(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         return deflate_next_netio_shutdown(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         return tls_netio_shutdown_cb(args);
+     }


// FP: stat

@transform_return_stat_dot@
expression E;
identifier FP_NAME = stat;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         return robots_fsio_stat(args);
+     }
+     else if (E.stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         return statcache_fsio_stat(args);
+     }
+     else if (E.stat_signature == stat_signatures[stat_sys_stat]) {
+         return sys_stat(args);
+     }


// FP: status

@transform_return_status_dot@
expression E;
identifier FP_NAME = status;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.status_signature == status_signatures[status_ocsp_cache_status]) {
+         return ocsp_cache_status(args);
+     }
+     else if (E.status_signature == status_signatures[status_sess_cache_status]) {
+         return sess_cache_status(args);
+     }


// FP: symlink

@transform_return_symlink_dot@
expression E;
identifier FP_NAME = symlink;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     return sys_symlink(args);


// FP: tab_close

@transform_return_tab_close_dot@
expression E;
identifier FP_NAME = tab_close;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         return filetab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         return filetab_close_cb(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         return ldaptab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         return radiustab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         return redistab_close_cb(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         return sqltab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         return sqltab_close_cb(args);
+     }


// FP: tab_create

@transform_return_tab_create_dot@
expression E;
identifier FP_NAME = tab_create;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         return filetab_create(args);
+     }
+     else if (E.tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         return sqltab_create(args);
+     }


// FP: tab_lookup

@transform_return_tab_lookup_dot@
expression E;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         return filetab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         return ldaptab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         return radiustab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         return sqltab_lookup(args);
+     }


// FP: tab_read

@transform_return_tab_read_dot@
expression E;
identifier FP_NAME = tab_read;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         return filetab_read(args);
+     }
+     else if (E.tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         return sqltab_read(args);
+     }


// FP: tab_rlock

@transform_return_tab_rlock_dot@
expression E;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         return filetab_rlock(args);
+     }
+     else if (E.tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         return sqltab_rlock(args);
+     }


// FP: tab_unlock

@transform_return_tab_unlock_dot@
expression E;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         return filetab_unlock(args);
+     }
+     else if (E.tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         return sqltab_unlock(args);
+     }


// FP: tab_verify

@transform_return_tab_verify_dot@
expression E;
identifier FP_NAME = tab_verify;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         return filetab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         return ldaptab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         return radiustab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         return sqltab_verify(args);
+     }


// FP: tab_wlock

@transform_return_tab_wlock_dot@
expression E;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         return filetab_wlock(args);
+     }
+     else if (E.tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         return sqltab_wlock(args);
+     }


// FP: tab_write

@transform_return_tab_write_dot@
expression E;
identifier FP_NAME = tab_write;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         return filetab_write(args);
+     }
+     else if (E.tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         return sqltab_write(args);
+     }


// FP: truncate

@transform_return_truncate_dot@
expression E;
identifier FP_NAME = truncate;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         return statcache_fsio_truncate(args);
+     }
+     else if (E.truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         return sys_truncate(args);
+     }


// FP: unlink

@transform_return_unlink_dot@
expression E;
identifier FP_NAME = unlink;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         return robots_fsio_unlink(args);
+     }
+     else if (E.unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         return statcache_fsio_unlink(args);
+     }
+     else if (E.unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         return sys_unlink(args);
+     }


// FP: utimes

@transform_return_utimes_dot@
expression E;
identifier FP_NAME = utimes;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         return statcache_fsio_utimes(args);
+     }
+     else if (E.utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         return sys_utimes(args);
+     }


// FP: write

@transform_return_write_dot@
expression E;
identifier FP_NAME = write;
expression list args;
@@
- return E.FP_NAME(args);
+ // return E.FP_NAME(args);
+     if (E.write_signature == write_signatures[write_core_netio_write_cb]) {
+         return core_netio_write_cb(args);
+     }
+     else if (E.write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         return deflate_netio_write_cb(args);
+     }
+     else if (E.write_signature == write_signatures[write_deflate_next_netio_write]) {
+         return deflate_next_netio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_quotatab_fsio_write]) {
+         return quotatab_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_robots_fsio_write]) {
+         return robots_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_statcache_fsio_write]) {
+         return statcache_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_sys_write]) {
+         return sys_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_tls_netio_write_cb]) {
+         return tls_netio_write_cb(args);
+     }

// Total return dot rules: 76

// ===== ASSIGNMENT ARROW TRANSFORMATION RULES =====
// Pattern: E1 = E2->fp_name(args);


// FP: abort

@transform_assign_abort_arrow@
expression E1, E2;
identifier FP_NAME = abort;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         E1 = core_netio_abort_cb(args);
+     }
+     else if (E2->abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         E1 = tls_netio_abort_cb(args);
+     }


// FP: access

@transform_assign_access_arrow@
expression E1, E2;
identifier FP_NAME = access;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->access_signature == access_signatures[access_facl_fsio_access]) {
+         E1 = facl_fsio_access(args);
+     }
+     else if (E2->access_signature == access_signatures[access_robots_fsio_access]) {
+         E1 = robots_fsio_access(args);
+     }
+     else if (E2->access_signature == access_signatures[access_sys_access]) {
+         E1 = sys_access(args);
+     }


// FP: action_cb

@transform_assign_action_cb_arrow@
expression E1, E2;
identifier FP_NAME = action_cb;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         E1 = array_item_fail(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         E1 = array_item_ok(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         E1 = auth_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         E1 = auth_otp_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         E1 = auth_otp_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         E1 = auth_otp_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         E1 = auth_pam_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         E1 = auth_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         E1 = auth_unix_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         E1 = auth_unix_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         E1 = authfile_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         E1 = ban_anonrejectpasswords_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         E1 = ban_badprotocol_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         E1 = ban_clientconnectrate_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         E1 = ban_emptypassword_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         E1 = ban_maxclientsperclass_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         E1 = ban_maxclientsperhost_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         E1 = ban_maxclientsperuser_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         E1 = ban_maxcmdrate_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         E1 = ban_maxconnperhost_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         E1 = ban_maxhostsperuser_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         E1 = ban_maxloginattempts_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         E1 = ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         E1 = ban_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         E1 = ban_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         E1 = ban_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         E1 = ban_rootlogin_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         E1 = ban_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         E1 = ban_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         E1 = ban_timeoutidle_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         E1 = ban_timeoutlogin_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         E1 = ban_timeoutnoxfer_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         E1 = ban_tlshandshake_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         E1 = ban_unhandledcmd_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         E1 = ban_userdefined_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         E1 = cap_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         E1 = core_chroot_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         E1 = core_connected_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         E1 = core_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         E1 = core_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         E1 = core_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         E1 = core_startup_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         E1 = ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         E1 = ctrls_admin_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         E1 = ctrls_admin_startup_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         E1 = ctrls_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         E1 = ctrls_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         E1 = ctrls_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         E1 = ctrls_test2_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         E1 = ctrls_test_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         E1 = define_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         E1 = deflate_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         E1 = delay_connect_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         E1 = delay_handle_delay(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         E1 = delay_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         E1 = delay_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         E1 = delay_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         E1 = delay_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         E1 = delay_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         E1 = digest_data_xfer_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         E1 = digest_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         E1 = digest_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         E1 = dnsbl_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         E1 = do_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         E1 = do_with_remove_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         E1 = dso_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         E1 = dynmasq_handle_dynmasq(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         E1 = dynmasq_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         E1 = dynmasq_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         E1 = dynmasq_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         E1 = event_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         E1 = event_cb2(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         E1 = event_cb3(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         E1 = exec_any_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         E1 = exec_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         E1 = exec_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         E1 = exec_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         E1 = exec_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         E1 = facl_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         E1 = facl_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         E1 = facl_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         E1 = facts_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         E1 = filetab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         E1 = forensic_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         E1 = forensic_log_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         E1 = forensic_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         E1 = forensic_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         E1 = fscache_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         E1 = fxp_handle_abort(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         E1 = geoip_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         E1 = geoip_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         E1 = geoip_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         E1 = ident_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         E1 = ifsess_chroot_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         E1 = ifsess_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         E1 = ifsess_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         E1 = lang_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         E1 = lang_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         E1 = ldap_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         E1 = ldap_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         E1 = ldap_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         E1 = ldap_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         E1 = ldaptab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         E1 = log_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         E1 = log_fmt_extra_iter_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         E1 = log_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         E1 = log_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         E1 = log_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         E1 = log_xfer_stalled_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         E1 = mcache_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         E1 = mcache_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         E1 = mcache_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         E1 = object_item_fail(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         E1 = object_item_ok(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         E1 = pool_visitf(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         E1 = qos_ctrl_listen_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         E1 = qos_data_connect_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         E1 = qos_data_listen_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         E1 = qos_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         E1 = qos_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         E1 = quotatab_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         E1 = quotatab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         E1 = quotatab_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         E1 = quotatab_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         E1 = radius_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         E1 = radius_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         E1 = radius_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         E1 = radius_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         E1 = radiustab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         E1 = redis_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         E1 = redis_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         E1 = redis_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         E1 = redistab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         E1 = regexp_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         E1 = regexp_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         E1 = restart_daemon(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         E1 = rewrite_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         E1 = rewrite_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         E1 = rewrite_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         E1 = rewrite_rewrite_home_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         E1 = rewrite_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         E1 = rlimit_chroot_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         E1 = rlimit_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         E1 = schedule_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         E1 = sftp_ban_class_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         E1 = sftp_ban_host_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         E1 = sftp_ban_user_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         E1 = sftp_chroot_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         E1 = sftp_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         E1 = sftp_max_conns_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         E1 = sftp_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         E1 = sftp_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         E1 = sftp_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         E1 = sftp_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         E1 = sftp_sigusr2_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         E1 = sftp_timeoutlogin_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         E1 = sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         E1 = sftppam_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         E1 = sftppam_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         E1 = sftpsql_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         E1 = shaper_handle_shaper(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         E1 = shaper_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         E1 = shaper_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         E1 = shaper_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         E1 = shaper_sess_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         E1 = shaper_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         E1 = shaper_sigusr2_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         E1 = shmcache_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         E1 = shmcache_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         E1 = shmcache_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         E1 = shutdown_end_session(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         E1 = site_misc_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         E1 = snmp_auth_code_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         E1 = snmp_ban_ban_class_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         E1 = snmp_ban_ban_host_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         E1 = snmp_ban_ban_user_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         E1 = snmp_ban_client_disconn_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         E1 = snmp_ban_expired_ban_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         E1 = snmp_cmd_invalid_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         E1 = snmp_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         E1 = snmp_max_inst_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         E1 = snmp_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         E1 = snmp_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         E1 = snmp_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         E1 = snmp_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         E1 = snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         E1 = snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         E1 = snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         E1 = snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         E1 = snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         E1 = snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         E1 = snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         E1 = snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         E1 = snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         E1 = snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         E1 = snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         E1 = snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         E1 = snmp_startup_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         E1 = snmp_timeout_idle_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         E1 = snmp_timeout_login_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         E1 = snmp_timeout_noxfer_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         E1 = snmp_timeout_stalled_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         E1 = snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         E1 = snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         E1 = snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         E1 = snmp_tls_verify_client_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         E1 = sql_chroot_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         E1 = sql_eventlog_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         E1 = sql_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         E1 = sql_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         E1 = sql_mysql_mod_load_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         E1 = sql_mysql_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         E1 = sql_passwd_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         E1 = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         E1 = sql_postgres_mod_load_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         E1 = sql_postgres_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         E1 = sql_preparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         E1 = sql_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         E1 = sql_sqlite_mod_load_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         E1 = sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         E1 = sqlodbc_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         E1 = sqltab_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         E1 = statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         E1 = statcache_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         E1 = statcache_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         E1 = statcache_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         E1 = statcache_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         E1 = statcache_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         E1 = systemd_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         E1 = systemd_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         E1 = systemd_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         E1 = systemd_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         E1 = systemd_startup_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         E1 = tab_copy_cb(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         E1 = test_visitf(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         E1 = tls_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         E1 = tls_handle_tls(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         E1 = tls_mcache_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         E1 = tls_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         E1 = tls_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         E1 = tls_redis_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         E1 = tls_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         E1 = tls_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         E1 = tls_shutdown_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         E1 = tls_timeout_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         E1 = trace_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         E1 = uniqid_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         E1 = uniqid_postparse_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         E1 = wrap2_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         E1 = wrap2_mod_unload_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         E1 = wrap2_restart_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         E1 = wrap2_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         E1 = wrap_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         E1 = xfer_exit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         E1 = xfer_sess_reinit_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         E1 = xfer_sigusr2_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         E1 = xfer_timeout_session_ev(args);
+     }
+     else if (E2->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         E1 = xfer_timeout_stalled_ev(args);
+     }


// FP: add

@transform_assign_add_arrow@
expression E1, E2;
identifier FP_NAME = add;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->add_signature == add_signatures[add_ocsp_cache_add]) {
+         E1 = ocsp_cache_add(args);
+     }
+     else if (E2->add_signature == add_signatures[add_sess_cache_add]) {
+         E1 = sess_cache_add(args);
+     }


// FP: cb

@transform_assign_cb_arrow@
expression E1, E2;
identifier FP_NAME = cb;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->cb_signature == cb_signatures[cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2->cb_signature == cb_signatures[cb_array_item_fail]) {
+         E1 = array_item_fail(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_array_item_ok]) {
+         E1 = array_item_ok(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         E1 = auth_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         E1 = auth_otp_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         E1 = auth_otp_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         E1 = auth_otp_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         E1 = auth_pam_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         E1 = auth_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         E1 = auth_unix_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         E1 = auth_unix_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         E1 = authfile_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         E1 = ban_anonrejectpasswords_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         E1 = ban_badprotocol_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         E1 = ban_clientconnectrate_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         E1 = ban_emptypassword_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         E1 = ban_maxclientsperclass_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         E1 = ban_maxclientsperhost_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         E1 = ban_maxclientsperuser_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         E1 = ban_maxcmdrate_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         E1 = ban_maxconnperhost_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         E1 = ban_maxhostsperuser_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         E1 = ban_maxloginattempts_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         E1 = ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         E1 = ban_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         E1 = ban_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         E1 = ban_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         E1 = ban_rootlogin_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         E1 = ban_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         E1 = ban_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         E1 = ban_timeoutidle_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         E1 = ban_timeoutlogin_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         E1 = ban_timeoutnoxfer_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         E1 = ban_tlshandshake_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         E1 = ban_unhandledcmd_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         E1 = ban_userdefined_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         E1 = cap_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         E1 = core_chroot_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_connected_ev]) {
+         E1 = core_connected_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_exit_ev]) {
+         E1 = core_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         E1 = core_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_restart_ev]) {
+         E1 = core_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_core_startup_ev]) {
+         E1 = core_startup_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         E1 = ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         E1 = ctrls_admin_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         E1 = ctrls_admin_startup_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         E1 = ctrls_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         E1 = ctrls_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         E1 = ctrls_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         E1 = ctrls_test2_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         E1 = ctrls_test_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_define_restart_ev]) {
+         E1 = define_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         E1 = deflate_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         E1 = delay_connect_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         E1 = delay_handle_delay(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         E1 = delay_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         E1 = delay_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         E1 = delay_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         E1 = delay_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         E1 = delay_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         E1 = digest_data_xfer_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         E1 = digest_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         E1 = digest_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         E1 = dnsbl_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_do_cb]) {
+         E1 = do_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         E1 = do_with_remove_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         E1 = dso_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         E1 = dynmasq_handle_dynmasq(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         E1 = dynmasq_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         E1 = dynmasq_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         E1 = dynmasq_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_event_cb]) {
+         E1 = event_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_event_cb2]) {
+         E1 = event_cb2(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_event_cb3]) {
+         E1 = event_cb3(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_exec_any_ev]) {
+         E1 = exec_any_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         E1 = exec_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         E1 = exec_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         E1 = exec_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         E1 = exec_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         E1 = facl_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         E1 = facl_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         E1 = facl_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         E1 = facts_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         E1 = filetab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         E1 = forensic_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         E1 = forensic_log_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         E1 = forensic_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         E1 = forensic_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         E1 = fscache_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         E1 = fxp_handle_abort(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         E1 = geoip_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         E1 = geoip_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         E1 = geoip_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         E1 = ident_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         E1 = ifsess_chroot_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         E1 = ifsess_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         E1 = ifsess_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         E1 = lang_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         E1 = lang_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         E1 = ldap_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         E1 = ldap_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         E1 = ldap_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         E1 = ldap_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         E1 = ldaptab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_exit_ev]) {
+         E1 = log_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         E1 = log_fmt_extra_iter_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         E1 = log_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_restart_ev]) {
+         E1 = log_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         E1 = log_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         E1 = log_xfer_stalled_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         E1 = mcache_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         E1 = mcache_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         E1 = mcache_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_object_item_fail]) {
+         E1 = object_item_fail(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_object_item_ok]) {
+         E1 = object_item_ok(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_pool_visitf]) {
+         E1 = pool_visitf(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         E1 = qos_ctrl_listen_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         E1 = qos_data_connect_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         E1 = qos_data_listen_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         E1 = qos_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         E1 = qos_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         E1 = quotatab_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         E1 = quotatab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         E1 = quotatab_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         E1 = quotatab_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         E1 = radius_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         E1 = radius_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         E1 = radius_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         E1 = radius_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         E1 = radiustab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         E1 = redis_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         E1 = redis_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         E1 = redis_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         E1 = redistab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         E1 = regexp_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         E1 = regexp_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_restart_daemon]) {
+         E1 = restart_daemon(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         E1 = rewrite_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         E1 = rewrite_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         E1 = rewrite_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         E1 = rewrite_rewrite_home_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         E1 = rewrite_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         E1 = rlimit_chroot_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         E1 = rlimit_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_schedule_cb]) {
+         E1 = schedule_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         E1 = sftp_ban_class_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         E1 = sftp_ban_host_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         E1 = sftp_ban_user_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         E1 = sftp_chroot_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         E1 = sftp_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         E1 = sftp_max_conns_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         E1 = sftp_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         E1 = sftp_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         E1 = sftp_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         E1 = sftp_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         E1 = sftp_sigusr2_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         E1 = sftp_timeoutlogin_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         E1 = sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         E1 = sftppam_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         E1 = sftppam_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         E1 = sftpsql_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         E1 = shaper_handle_shaper(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         E1 = shaper_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         E1 = shaper_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         E1 = shaper_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         E1 = shaper_sess_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         E1 = shaper_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         E1 = shaper_sigusr2_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         E1 = shmcache_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         E1 = shmcache_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         E1 = shmcache_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         E1 = shutdown_end_session(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         E1 = site_misc_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         E1 = snmp_auth_code_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         E1 = snmp_ban_ban_class_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         E1 = snmp_ban_ban_host_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         E1 = snmp_ban_ban_user_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         E1 = snmp_ban_client_disconn_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         E1 = snmp_ban_expired_ban_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         E1 = snmp_cmd_invalid_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         E1 = snmp_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         E1 = snmp_max_inst_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         E1 = snmp_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         E1 = snmp_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         E1 = snmp_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         E1 = snmp_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         E1 = snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         E1 = snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         E1 = snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         E1 = snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         E1 = snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         E1 = snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         E1 = snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         E1 = snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         E1 = snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         E1 = snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         E1 = snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         E1 = snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         E1 = snmp_startup_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         E1 = snmp_timeout_idle_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         E1 = snmp_timeout_login_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         E1 = snmp_timeout_noxfer_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         E1 = snmp_timeout_stalled_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         E1 = snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         E1 = snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         E1 = snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         E1 = snmp_tls_verify_client_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         E1 = sql_chroot_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         E1 = sql_eventlog_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         E1 = sql_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         E1 = sql_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         E1 = sql_mysql_mod_load_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         E1 = sql_mysql_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         E1 = sql_passwd_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         E1 = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         E1 = sql_postgres_mod_load_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         E1 = sql_postgres_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         E1 = sql_preparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         E1 = sql_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         E1 = sql_sqlite_mod_load_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         E1 = sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         E1 = sqlodbc_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         E1 = sqltab_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         E1 = statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         E1 = statcache_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         E1 = statcache_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         E1 = statcache_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         E1 = statcache_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         E1 = statcache_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         E1 = systemd_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         E1 = systemd_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         E1 = systemd_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         E1 = systemd_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         E1 = systemd_startup_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         E1 = tab_copy_cb(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_test_visitf]) {
+         E1 = test_visitf(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         E1 = tls_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         E1 = tls_handle_tls(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         E1 = tls_mcache_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         E1 = tls_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         E1 = tls_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         E1 = tls_redis_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         E1 = tls_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         E1 = tls_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         E1 = tls_shutdown_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         E1 = tls_timeout_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         E1 = trace_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         E1 = uniqid_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         E1 = uniqid_postparse_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         E1 = wrap2_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         E1 = wrap2_mod_unload_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         E1 = wrap2_restart_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         E1 = wrap2_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         E1 = wrap_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         E1 = xfer_exit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         E1 = xfer_sess_reinit_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         E1 = xfer_sigusr2_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         E1 = xfer_timeout_session_ev(args);
+     }
+     else if (E2->cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         E1 = xfer_timeout_stalled_ev(args);
+     }


// FP: chdir

@transform_assign_chdir_arrow@
expression E1, E2;
identifier FP_NAME = chdir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_chdir(args);


// FP: chmod

@transform_assign_chmod_arrow@
expression E1, E2;
identifier FP_NAME = chmod;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         E1 = statcache_fsio_chmod(args);
+     }
+     else if (E2->chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         E1 = sys_chmod(args);
+     }


// FP: chown

@transform_assign_chown_arrow@
expression E1, E2;
identifier FP_NAME = chown;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         E1 = statcache_fsio_chown(args);
+     }
+     else if (E2->chown_signature == chown_signatures[chown_sys_chown]) {
+         E1 = sys_chown(args);
+     }


// FP: chroot

@transform_assign_chroot_arrow@
expression E1, E2;
identifier FP_NAME = chroot;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_chroot(args);


// FP: cleanup_cb

@transform_assign_cleanup_cb_arrow@
expression E1, E2;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         E1 = conn_cleanup_cb(args);
+     }
+     else if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         E1 = ctrls_cleanup_cb(args);
+     }
+     else if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         E1 = event_cleanup_cb(args);
+     }
+     else if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         E1 = server_cleanup_cb(args);
+     }
+     else if (E2->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         E1 = sess_redis_cleanup(args);
+     }


// FP: clear

@transform_assign_clear_arrow@
expression E1, E2;
identifier FP_NAME = clear;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         E1 = ocsp_cache_clear(args);
+     }
+     else if (E2->clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         E1 = sess_cache_clear(args);
+     }


// FP: close

@transform_assign_close_arrow@
expression E1, E2;
identifier FP_NAME = close;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->close_signature == close_signatures[close_core_netio_close_cb]) {
+         E1 = core_netio_close_cb(args);
+     }
+     else if (E2->close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         E1 = deflate_netio_close_cb(args);
+     }
+     else if (E2->close_signature == close_signatures[close_deflate_next_netio_close]) {
+         E1 = deflate_next_netio_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_ocsp_cache_close]) {
+         E1 = ocsp_cache_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_robots_fsio_close]) {
+         E1 = robots_fsio_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_sess_cache_close]) {
+         E1 = sess_cache_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_sftppam_driver_close]) {
+         E1 = sftppam_driver_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_sys_close]) {
+         E1 = sys_close(args);
+     }
+     else if (E2->close_signature == close_signatures[close_tls_netio_close_cb]) {
+         E1 = tls_netio_close_cb(args);
+     }


// FP: closedir

@transform_assign_closedir_arrow@
expression E1, E2;
identifier FP_NAME = closedir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_closedir(args);


// FP: ctrls_cb

@transform_assign_ctrls_cb_arrow@
expression E1, E2;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = NULL;


// FP: delete

@transform_assign_delete_arrow@
expression E1, E2;
identifier FP_NAME = delete;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         E1 = ocsp_cache_delete(args);
+     }
+     else if (E2->delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         E1 = sess_cache_delete(args);
+     }


// FP: entinsert

@transform_assign_entinsert_arrow@
expression E1, E2;
identifier FP_NAME = entinsert;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = entry_insert(args);


// FP: entremove

@transform_assign_entremove_arrow@
expression E1, E2;
identifier FP_NAME = entremove;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = entry_remove(args);


// FP: faccess

@transform_assign_faccess_arrow@
expression E1, E2;
identifier FP_NAME = faccess;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         E1 = facl_fsio_faccess(args);
+     }
+     else if (E2->faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         E1 = robots_fsio_faccess(args);
+     }
+     else if (E2->faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         E1 = sys_faccess(args);
+     }


// FP: fchmod

@transform_assign_fchmod_arrow@
expression E1, E2;
identifier FP_NAME = fchmod;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         E1 = statcache_fsio_fchmod(args);
+     }
+     else if (E2->fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         E1 = sys_fchmod(args);
+     }


// FP: fchown

@transform_assign_fchown_arrow@
expression E1, E2;
identifier FP_NAME = fchown;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         E1 = statcache_fsio_fchown(args);
+     }
+     else if (E2->fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         E1 = sys_fchown(args);
+     }


// FP: fgetxattr

@transform_assign_fgetxattr_arrow@
expression E1, E2;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_fgetxattr(args);


// FP: flistxattr

@transform_assign_flistxattr_arrow@
expression E1, E2;
identifier FP_NAME = flistxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_flistxattr(args);


// FP: fremovexattr

@transform_assign_fremovexattr_arrow@
expression E1, E2;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_fremovexattr(args);


// FP: fsetxattr

@transform_assign_fsetxattr_arrow@
expression E1, E2;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_fsetxattr(args);


// FP: fstat

@transform_assign_fstat_arrow@
expression E1, E2;
identifier FP_NAME = fstat;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         E1 = robots_fsio_fstat(args);
+     }
+     else if (E2->fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         E1 = statcache_fsio_fstat(args);
+     }
+     else if (E2->fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         E1 = sys_fstat(args);
+     }


// FP: fsync

@transform_assign_fsync_arrow@
expression E1, E2;
identifier FP_NAME = fsync;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_fsync(args);


// FP: ftruncate

@transform_assign_ftruncate_arrow@
expression E1, E2;
identifier FP_NAME = ftruncate;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         E1 = statcache_fsio_ftruncate(args);
+     }
+     else if (E2->ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         E1 = sys_ftruncate(args);
+     }


// FP: futimes

@transform_assign_futimes_arrow@
expression E1, E2;
identifier FP_NAME = futimes;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         E1 = statcache_fsio_futimes(args);
+     }
+     else if (E2->futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         E1 = sys_futimes(args);
+     }


// FP: get

@transform_assign_get_arrow@
expression E1, E2;
identifier FP_NAME = get;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->get_signature == get_signatures[get_ocsp_cache_get]) {
+         E1 = ocsp_cache_get(args);
+     }
+     else if (E2->get_signature == get_signatures[get_sess_cache_get]) {
+         E1 = sess_cache_get(args);
+     }


// FP: getxattr

@transform_assign_getxattr_arrow@
expression E1, E2;
identifier FP_NAME = getxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_getxattr(args);


// FP: keycmp

@transform_assign_keycmp_arrow@
expression E1, E2;
identifier FP_NAME = keycmp;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = key_cmp(args);


// FP: keyhash

@transform_assign_keyhash_arrow@
expression E1, E2;
identifier FP_NAME = keyhash;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = key_hash(args);


// FP: lchown

@transform_assign_lchown_arrow@
expression E1, E2;
identifier FP_NAME = lchown;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         E1 = statcache_fsio_lchown(args);
+     }
+     else if (E2->lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         E1 = sys_lchown(args);
+     }


// FP: lgetxattr

@transform_assign_lgetxattr_arrow@
expression E1, E2;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_lgetxattr(args);


// FP: link

@transform_assign_link_arrow@
expression E1, E2;
identifier FP_NAME = link;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_link(args);


// FP: listxattr

@transform_assign_listxattr_arrow@
expression E1, E2;
identifier FP_NAME = listxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_listxattr(args);


// FP: llistxattr

@transform_assign_llistxattr_arrow@
expression E1, E2;
identifier FP_NAME = llistxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_llistxattr(args);


// FP: lremovexattr

@transform_assign_lremovexattr_arrow@
expression E1, E2;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_lremovexattr(args);


// FP: lseek

@transform_assign_lseek_arrow@
expression E1, E2;
identifier FP_NAME = lseek;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_lseek(args);


// FP: lsetxattr

@transform_assign_lsetxattr_arrow@
expression E1, E2;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_lsetxattr(args);


// FP: lstat

@transform_assign_lstat_arrow@
expression E1, E2;
identifier FP_NAME = lstat;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         E1 = robots_fsio_lstat(args);
+     }
+     else if (E2->lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         E1 = statcache_fsio_lstat(args);
+     }
+     else if (E2->lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         E1 = sys_lstat(args);
+     }


// FP: mkdir

@transform_assign_mkdir_arrow@
expression E1, E2;
identifier FP_NAME = mkdir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_mkdir(args);


// FP: open

@transform_assign_open_arrow@
expression E1, E2;
identifier FP_NAME = open;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->open_signature == open_signatures[open_core_netio_open_cb]) {
+         E1 = core_netio_open_cb(args);
+     }
+     else if (E2->open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         E1 = deflate_netio_open_cb(args);
+     }
+     else if (E2->open_signature == open_signatures[open_deflate_next_netio_open]) {
+         E1 = deflate_next_netio_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_ocsp_cache_open]) {
+         E1 = ocsp_cache_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_robots_fsio_open]) {
+         E1 = robots_fsio_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_sess_cache_open]) {
+         E1 = sess_cache_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_sftppam_driver_open]) {
+         E1 = sftppam_driver_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_statcache_fsio_open]) {
+         E1 = statcache_fsio_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_sys_open]) {
+         E1 = sys_open(args);
+     }
+     else if (E2->open_signature == open_signatures[open_tls_netio_open_cb]) {
+         E1 = tls_netio_open_cb(args);
+     }


// FP: opendir

@transform_assign_opendir_arrow@
expression E1, E2;
identifier FP_NAME = opendir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_opendir(args);


// FP: poll

@transform_assign_poll_arrow@
expression E1, E2;
identifier FP_NAME = poll;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         E1 = core_netio_poll_cb(args);
+     }
+     else if (E2->poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         E1 = tls_netio_poll_cb(args);
+     }


// FP: postopen

@transform_assign_postopen_arrow@
expression E1, E2;
identifier FP_NAME = postopen;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         E1 = core_netio_postopen_cb(args);
+     }
+     else if (E2->postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         E1 = tls_netio_postopen_cb(args);
+     }


// FP: pread

@transform_assign_pread_arrow@
expression E1, E2;
identifier FP_NAME = pread;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_pread(args);


// FP: pwrite

@transform_assign_pwrite_arrow@
expression E1, E2;
identifier FP_NAME = pwrite;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_pwrite(args);


// FP: read

@transform_assign_read_arrow@
expression E1, E2;
identifier FP_NAME = read;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->read_signature == read_signatures[read_core_netio_read_cb]) {
+         E1 = core_netio_read_cb(args);
+     }
+     else if (E2->read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         E1 = deflate_netio_read_cb(args);
+     }
+     else if (E2->read_signature == read_signatures[read_deflate_next_netio_read]) {
+         E1 = deflate_next_netio_read(args);
+     }
+     else if (E2->read_signature == read_signatures[read_robots_fsio_read]) {
+         E1 = robots_fsio_read(args);
+     }
+     else if (E2->read_signature == read_signatures[read_sys_read]) {
+         E1 = sys_read(args);
+     }
+     else if (E2->read_signature == read_signatures[read_tls_netio_read_cb]) {
+         E1 = tls_netio_read_cb(args);
+     }


// FP: readdir

@transform_assign_readdir_arrow@
expression E1, E2;
identifier FP_NAME = readdir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_readdir(args);


// FP: readlink

@transform_assign_readlink_arrow@
expression E1, E2;
identifier FP_NAME = readlink;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_readlink(args);


// FP: realpath

@transform_assign_realpath_arrow@
expression E1, E2;
identifier FP_NAME = realpath;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_realpath(args);


// FP: regtab_open

@transform_assign_regtab_open_arrow@
expression E1, E2;
identifier FP_NAME = regtab_open;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = srcopen(args);


// FP: remove

@transform_assign_remove_arrow@
expression E1, E2;
identifier FP_NAME = remove;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->remove_signature == remove_signatures[remove_0]) {
+         E1 = 0;
+     }
+     else if (E2->remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         E1 = ocsp_cache_remove(args);
+     }
+     else if (E2->remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         E1 = sess_cache_remove(args);
+     }


// FP: removexattr

@transform_assign_removexattr_arrow@
expression E1, E2;
identifier FP_NAME = removexattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_removexattr(args);


// FP: rename

@transform_assign_rename_arrow@
expression E1, E2;
identifier FP_NAME = rename;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         E1 = statcache_fsio_rename(args);
+     }
+     else if (E2->rename_signature == rename_signatures[rename_sys_rename]) {
+         E1 = sys_rename(args);
+     }


// FP: reopen

@transform_assign_reopen_arrow@
expression E1, E2;
identifier FP_NAME = reopen;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         E1 = core_netio_reopen_cb(args);
+     }
+     else if (E2->reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         E1 = tls_netio_reopen_cb(args);
+     }


// FP: rmdir

@transform_assign_rmdir_arrow@
expression E1, E2;
identifier FP_NAME = rmdir;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_rmdir(args);


// FP: setxattr

@transform_assign_setxattr_arrow@
expression E1, E2;
identifier FP_NAME = setxattr;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_setxattr(args);


// FP: shutdown

@transform_assign_shutdown_arrow@
expression E1, E2;
identifier FP_NAME = shutdown;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         E1 = core_netio_shutdown_cb(args);
+     }
+     else if (E2->shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         E1 = deflate_netio_shutdown_cb(args);
+     }
+     else if (E2->shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         E1 = deflate_next_netio_shutdown(args);
+     }
+     else if (E2->shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         E1 = tls_netio_shutdown_cb(args);
+     }


// FP: stat

@transform_assign_stat_arrow@
expression E1, E2;
identifier FP_NAME = stat;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         E1 = robots_fsio_stat(args);
+     }
+     else if (E2->stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         E1 = statcache_fsio_stat(args);
+     }
+     else if (E2->stat_signature == stat_signatures[stat_sys_stat]) {
+         E1 = sys_stat(args);
+     }


// FP: status

@transform_assign_status_arrow@
expression E1, E2;
identifier FP_NAME = status;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->status_signature == status_signatures[status_ocsp_cache_status]) {
+         E1 = ocsp_cache_status(args);
+     }
+     else if (E2->status_signature == status_signatures[status_sess_cache_status]) {
+         E1 = sess_cache_status(args);
+     }


// FP: symlink

@transform_assign_symlink_arrow@
expression E1, E2;
identifier FP_NAME = symlink;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     E1 = sys_symlink(args);


// FP: tab_close

@transform_assign_tab_close_arrow@
expression E1, E2;
identifier FP_NAME = tab_close;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         E1 = filetab_close(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         E1 = filetab_close_cb(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         E1 = ldaptab_close(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         E1 = radiustab_close(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         E1 = redistab_close_cb(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         E1 = sqltab_close(args);
+     }
+     else if (E2->tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         E1 = sqltab_close_cb(args);
+     }


// FP: tab_create

@transform_assign_tab_create_arrow@
expression E1, E2;
identifier FP_NAME = tab_create;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         E1 = filetab_create(args);
+     }
+     else if (E2->tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         E1 = sqltab_create(args);
+     }


// FP: tab_lookup

@transform_assign_tab_lookup_arrow@
expression E1, E2;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         E1 = filetab_lookup(args);
+     }
+     else if (E2->tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         E1 = ldaptab_lookup(args);
+     }
+     else if (E2->tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         E1 = radiustab_lookup(args);
+     }
+     else if (E2->tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         E1 = sqltab_lookup(args);
+     }


// FP: tab_read

@transform_assign_tab_read_arrow@
expression E1, E2;
identifier FP_NAME = tab_read;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         E1 = filetab_read(args);
+     }
+     else if (E2->tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         E1 = sqltab_read(args);
+     }


// FP: tab_rlock

@transform_assign_tab_rlock_arrow@
expression E1, E2;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         E1 = filetab_rlock(args);
+     }
+     else if (E2->tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         E1 = sqltab_rlock(args);
+     }


// FP: tab_unlock

@transform_assign_tab_unlock_arrow@
expression E1, E2;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         E1 = filetab_unlock(args);
+     }
+     else if (E2->tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         E1 = sqltab_unlock(args);
+     }


// FP: tab_verify

@transform_assign_tab_verify_arrow@
expression E1, E2;
identifier FP_NAME = tab_verify;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         E1 = filetab_verify(args);
+     }
+     else if (E2->tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         E1 = ldaptab_verify(args);
+     }
+     else if (E2->tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         E1 = radiustab_verify(args);
+     }
+     else if (E2->tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         E1 = sqltab_verify(args);
+     }


// FP: tab_wlock

@transform_assign_tab_wlock_arrow@
expression E1, E2;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         E1 = filetab_wlock(args);
+     }
+     else if (E2->tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         E1 = sqltab_wlock(args);
+     }


// FP: tab_write

@transform_assign_tab_write_arrow@
expression E1, E2;
identifier FP_NAME = tab_write;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         E1 = filetab_write(args);
+     }
+     else if (E2->tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         E1 = sqltab_write(args);
+     }


// FP: truncate

@transform_assign_truncate_arrow@
expression E1, E2;
identifier FP_NAME = truncate;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         E1 = statcache_fsio_truncate(args);
+     }
+     else if (E2->truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         E1 = sys_truncate(args);
+     }


// FP: unlink

@transform_assign_unlink_arrow@
expression E1, E2;
identifier FP_NAME = unlink;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         E1 = robots_fsio_unlink(args);
+     }
+     else if (E2->unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         E1 = statcache_fsio_unlink(args);
+     }
+     else if (E2->unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         E1 = sys_unlink(args);
+     }


// FP: utimes

@transform_assign_utimes_arrow@
expression E1, E2;
identifier FP_NAME = utimes;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         E1 = statcache_fsio_utimes(args);
+     }
+     else if (E2->utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         E1 = sys_utimes(args);
+     }


// FP: write

@transform_assign_write_arrow@
expression E1, E2;
identifier FP_NAME = write;
expression list args;
@@
- E1 = E2->FP_NAME(args);
+ // E1 = E2->FP_NAME(args);
+     if (E2->write_signature == write_signatures[write_core_netio_write_cb]) {
+         E1 = core_netio_write_cb(args);
+     }
+     else if (E2->write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         E1 = deflate_netio_write_cb(args);
+     }
+     else if (E2->write_signature == write_signatures[write_deflate_next_netio_write]) {
+         E1 = deflate_next_netio_write(args);
+     }
+     else if (E2->write_signature == write_signatures[write_quotatab_fsio_write]) {
+         E1 = quotatab_fsio_write(args);
+     }
+     else if (E2->write_signature == write_signatures[write_robots_fsio_write]) {
+         E1 = robots_fsio_write(args);
+     }
+     else if (E2->write_signature == write_signatures[write_statcache_fsio_write]) {
+         E1 = statcache_fsio_write(args);
+     }
+     else if (E2->write_signature == write_signatures[write_sys_write]) {
+         E1 = sys_write(args);
+     }
+     else if (E2->write_signature == write_signatures[write_tls_netio_write_cb]) {
+         E1 = tls_netio_write_cb(args);
+     }

// Total assignment arrow rules: 76

// ===== ASSIGNMENT DOT TRANSFORMATION RULES =====
// Pattern: E1 = E2.fp_name(args);


// FP: abort

@transform_assign_abort_dot@
expression E1, E2;
identifier FP_NAME = abort;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         E1 = core_netio_abort_cb(args);
+     }
+     else if (E2.abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         E1 = tls_netio_abort_cb(args);
+     }


// FP: access

@transform_assign_access_dot@
expression E1, E2;
identifier FP_NAME = access;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.access_signature == access_signatures[access_facl_fsio_access]) {
+         E1 = facl_fsio_access(args);
+     }
+     else if (E2.access_signature == access_signatures[access_robots_fsio_access]) {
+         E1 = robots_fsio_access(args);
+     }
+     else if (E2.access_signature == access_signatures[access_sys_access]) {
+         E1 = sys_access(args);
+     }


// FP: action_cb

@transform_assign_action_cb_dot@
expression E1, E2;
identifier FP_NAME = action_cb;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         E1 = array_item_fail(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         E1 = array_item_ok(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         E1 = auth_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         E1 = auth_otp_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         E1 = auth_otp_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         E1 = auth_otp_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         E1 = auth_pam_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         E1 = auth_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         E1 = auth_unix_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         E1 = auth_unix_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         E1 = authfile_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         E1 = ban_anonrejectpasswords_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         E1 = ban_badprotocol_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         E1 = ban_clientconnectrate_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         E1 = ban_emptypassword_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         E1 = ban_maxclientsperclass_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         E1 = ban_maxclientsperhost_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         E1 = ban_maxclientsperuser_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         E1 = ban_maxcmdrate_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         E1 = ban_maxconnperhost_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         E1 = ban_maxhostsperuser_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         E1 = ban_maxloginattempts_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         E1 = ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         E1 = ban_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         E1 = ban_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         E1 = ban_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         E1 = ban_rootlogin_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         E1 = ban_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         E1 = ban_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         E1 = ban_timeoutidle_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         E1 = ban_timeoutlogin_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         E1 = ban_timeoutnoxfer_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         E1 = ban_tlshandshake_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         E1 = ban_unhandledcmd_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         E1 = ban_userdefined_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         E1 = cap_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         E1 = core_chroot_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         E1 = core_connected_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         E1 = core_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         E1 = core_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         E1 = core_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         E1 = core_startup_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         E1 = ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         E1 = ctrls_admin_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         E1 = ctrls_admin_startup_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         E1 = ctrls_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         E1 = ctrls_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         E1 = ctrls_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         E1 = ctrls_test2_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         E1 = ctrls_test_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         E1 = define_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         E1 = deflate_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         E1 = delay_connect_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         E1 = delay_handle_delay(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         E1 = delay_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         E1 = delay_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         E1 = delay_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         E1 = delay_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         E1 = delay_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         E1 = digest_data_xfer_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         E1 = digest_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         E1 = digest_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         E1 = dnsbl_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         E1 = do_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         E1 = do_with_remove_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         E1 = dso_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         E1 = dynmasq_handle_dynmasq(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         E1 = dynmasq_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         E1 = dynmasq_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         E1 = dynmasq_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         E1 = event_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         E1 = event_cb2(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         E1 = event_cb3(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         E1 = exec_any_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         E1 = exec_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         E1 = exec_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         E1 = exec_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         E1 = exec_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         E1 = facl_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         E1 = facl_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         E1 = facl_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         E1 = facts_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         E1 = filetab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         E1 = forensic_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         E1 = forensic_log_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         E1 = forensic_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         E1 = forensic_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         E1 = fscache_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         E1 = fxp_handle_abort(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         E1 = geoip_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         E1 = geoip_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         E1 = geoip_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         E1 = ident_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         E1 = ifsess_chroot_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         E1 = ifsess_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         E1 = ifsess_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         E1 = lang_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         E1 = lang_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         E1 = ldap_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         E1 = ldap_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         E1 = ldap_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         E1 = ldap_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         E1 = ldaptab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         E1 = log_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         E1 = log_fmt_extra_iter_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         E1 = log_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         E1 = log_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         E1 = log_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         E1 = log_xfer_stalled_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         E1 = mcache_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         E1 = mcache_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         E1 = mcache_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         E1 = object_item_fail(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         E1 = object_item_ok(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         E1 = pool_visitf(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         E1 = qos_ctrl_listen_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         E1 = qos_data_connect_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         E1 = qos_data_listen_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         E1 = qos_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         E1 = qos_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         E1 = quotatab_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         E1 = quotatab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         E1 = quotatab_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         E1 = quotatab_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         E1 = radius_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         E1 = radius_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         E1 = radius_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         E1 = radius_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         E1 = radiustab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         E1 = redis_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         E1 = redis_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         E1 = redis_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         E1 = redistab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         E1 = regexp_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         E1 = regexp_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         E1 = restart_daemon(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         E1 = rewrite_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         E1 = rewrite_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         E1 = rewrite_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         E1 = rewrite_rewrite_home_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         E1 = rewrite_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         E1 = rlimit_chroot_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         E1 = rlimit_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         E1 = schedule_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         E1 = sftp_ban_class_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         E1 = sftp_ban_host_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         E1 = sftp_ban_user_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         E1 = sftp_chroot_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         E1 = sftp_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         E1 = sftp_max_conns_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         E1 = sftp_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         E1 = sftp_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         E1 = sftp_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         E1 = sftp_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         E1 = sftp_sigusr2_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         E1 = sftp_timeoutlogin_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         E1 = sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         E1 = sftppam_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         E1 = sftppam_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         E1 = sftpsql_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         E1 = shaper_handle_shaper(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         E1 = shaper_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         E1 = shaper_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         E1 = shaper_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         E1 = shaper_sess_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         E1 = shaper_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         E1 = shaper_sigusr2_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         E1 = shmcache_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         E1 = shmcache_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         E1 = shmcache_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         E1 = shutdown_end_session(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         E1 = site_misc_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         E1 = snmp_auth_code_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         E1 = snmp_ban_ban_class_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         E1 = snmp_ban_ban_host_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         E1 = snmp_ban_ban_user_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         E1 = snmp_ban_client_disconn_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         E1 = snmp_ban_expired_ban_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         E1 = snmp_cmd_invalid_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         E1 = snmp_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         E1 = snmp_max_inst_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         E1 = snmp_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         E1 = snmp_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         E1 = snmp_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         E1 = snmp_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         E1 = snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         E1 = snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         E1 = snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         E1 = snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         E1 = snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         E1 = snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         E1 = snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         E1 = snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         E1 = snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         E1 = snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         E1 = snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         E1 = snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         E1 = snmp_startup_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         E1 = snmp_timeout_idle_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         E1 = snmp_timeout_login_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         E1 = snmp_timeout_noxfer_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         E1 = snmp_timeout_stalled_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         E1 = snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         E1 = snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         E1 = snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         E1 = snmp_tls_verify_client_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         E1 = sql_chroot_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         E1 = sql_eventlog_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         E1 = sql_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         E1 = sql_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         E1 = sql_mysql_mod_load_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         E1 = sql_mysql_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         E1 = sql_passwd_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         E1 = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         E1 = sql_postgres_mod_load_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         E1 = sql_postgres_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         E1 = sql_preparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         E1 = sql_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         E1 = sql_sqlite_mod_load_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         E1 = sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         E1 = sqlodbc_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         E1 = sqltab_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         E1 = statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         E1 = statcache_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         E1 = statcache_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         E1 = statcache_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         E1 = statcache_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         E1 = statcache_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         E1 = systemd_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         E1 = systemd_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         E1 = systemd_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         E1 = systemd_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         E1 = systemd_startup_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         E1 = tab_copy_cb(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         E1 = test_visitf(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         E1 = tls_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         E1 = tls_handle_tls(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         E1 = tls_mcache_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         E1 = tls_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         E1 = tls_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         E1 = tls_redis_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         E1 = tls_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         E1 = tls_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         E1 = tls_shutdown_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         E1 = tls_timeout_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         E1 = trace_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         E1 = uniqid_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         E1 = uniqid_postparse_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         E1 = wrap2_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         E1 = wrap2_mod_unload_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         E1 = wrap2_restart_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         E1 = wrap2_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         E1 = wrap_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         E1 = xfer_exit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         E1 = xfer_sess_reinit_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         E1 = xfer_sigusr2_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         E1 = xfer_timeout_session_ev(args);
+     }
+     else if (E2.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         E1 = xfer_timeout_stalled_ev(args);
+     }


// FP: add

@transform_assign_add_dot@
expression E1, E2;
identifier FP_NAME = add;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.add_signature == add_signatures[add_ocsp_cache_add]) {
+         E1 = ocsp_cache_add(args);
+     }
+     else if (E2.add_signature == add_signatures[add_sess_cache_add]) {
+         E1 = sess_cache_add(args);
+     }


// FP: cb

@transform_assign_cb_dot@
expression E1, E2;
identifier FP_NAME = cb;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.cb_signature == cb_signatures[cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2.cb_signature == cb_signatures[cb_array_item_fail]) {
+         E1 = array_item_fail(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_array_item_ok]) {
+         E1 = array_item_ok(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         E1 = auth_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         E1 = auth_otp_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         E1 = auth_otp_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         E1 = auth_otp_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         E1 = auth_pam_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         E1 = auth_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         E1 = auth_unix_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         E1 = auth_unix_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         E1 = authfile_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         E1 = ban_anonrejectpasswords_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         E1 = ban_badprotocol_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         E1 = ban_clientconnectrate_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         E1 = ban_emptypassword_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         E1 = ban_maxclientsperclass_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         E1 = ban_maxclientsperhost_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         E1 = ban_maxclientsperuser_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         E1 = ban_maxcmdrate_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         E1 = ban_maxconnperhost_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         E1 = ban_maxhostsperuser_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         E1 = ban_maxloginattempts_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         E1 = ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         E1 = ban_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         E1 = ban_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         E1 = ban_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         E1 = ban_rootlogin_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         E1 = ban_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         E1 = ban_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         E1 = ban_timeoutidle_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         E1 = ban_timeoutlogin_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         E1 = ban_timeoutnoxfer_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         E1 = ban_tlshandshake_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         E1 = ban_unhandledcmd_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         E1 = ban_userdefined_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         E1 = cap_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         E1 = core_chroot_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_connected_ev]) {
+         E1 = core_connected_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_exit_ev]) {
+         E1 = core_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         E1 = core_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_restart_ev]) {
+         E1 = core_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_core_startup_ev]) {
+         E1 = core_startup_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         E1 = ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         E1 = ctrls_admin_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         E1 = ctrls_admin_startup_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         E1 = ctrls_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         E1 = ctrls_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         E1 = ctrls_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         E1 = ctrls_test2_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         E1 = ctrls_test_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_define_restart_ev]) {
+         E1 = define_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         E1 = deflate_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         E1 = delay_connect_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         E1 = delay_handle_delay(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         E1 = delay_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         E1 = delay_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         E1 = delay_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         E1 = delay_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         E1 = delay_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         E1 = digest_data_xfer_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         E1 = digest_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         E1 = digest_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         E1 = dnsbl_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_do_cb]) {
+         E1 = do_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         E1 = do_with_remove_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         E1 = dso_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         E1 = dynmasq_handle_dynmasq(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         E1 = dynmasq_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         E1 = dynmasq_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         E1 = dynmasq_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_event_cb]) {
+         E1 = event_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_event_cb2]) {
+         E1 = event_cb2(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_event_cb3]) {
+         E1 = event_cb3(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_exec_any_ev]) {
+         E1 = exec_any_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         E1 = exec_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         E1 = exec_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         E1 = exec_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         E1 = exec_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         E1 = facl_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         E1 = facl_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         E1 = facl_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         E1 = facts_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         E1 = filetab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         E1 = forensic_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         E1 = forensic_log_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         E1 = forensic_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         E1 = forensic_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         E1 = fscache_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         E1 = fxp_handle_abort(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         E1 = geoip_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         E1 = geoip_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         E1 = geoip_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         E1 = ident_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         E1 = ifsess_chroot_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         E1 = ifsess_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         E1 = ifsess_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         E1 = lang_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         E1 = lang_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         E1 = ldap_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         E1 = ldap_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         E1 = ldap_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         E1 = ldap_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         E1 = ldaptab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_exit_ev]) {
+         E1 = log_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         E1 = log_fmt_extra_iter_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         E1 = log_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_restart_ev]) {
+         E1 = log_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         E1 = log_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         E1 = log_xfer_stalled_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         E1 = mcache_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         E1 = mcache_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         E1 = mcache_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_object_item_fail]) {
+         E1 = object_item_fail(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_object_item_ok]) {
+         E1 = object_item_ok(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_pool_visitf]) {
+         E1 = pool_visitf(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         E1 = qos_ctrl_listen_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         E1 = qos_data_connect_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         E1 = qos_data_listen_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         E1 = qos_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         E1 = qos_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         E1 = quotatab_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         E1 = quotatab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         E1 = quotatab_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         E1 = quotatab_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         E1 = radius_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         E1 = radius_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         E1 = radius_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         E1 = radius_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         E1 = radiustab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         E1 = redis_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         E1 = redis_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         E1 = redis_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         E1 = redistab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         E1 = regexp_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         E1 = regexp_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_restart_daemon]) {
+         E1 = restart_daemon(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         E1 = rewrite_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         E1 = rewrite_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         E1 = rewrite_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         E1 = rewrite_rewrite_home_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         E1 = rewrite_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         E1 = rlimit_chroot_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         E1 = rlimit_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_schedule_cb]) {
+         E1 = schedule_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         E1 = sftp_ban_class_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         E1 = sftp_ban_host_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         E1 = sftp_ban_user_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         E1 = sftp_chroot_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         E1 = sftp_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         E1 = sftp_max_conns_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         E1 = sftp_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         E1 = sftp_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         E1 = sftp_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         E1 = sftp_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         E1 = sftp_sigusr2_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         E1 = sftp_timeoutlogin_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         E1 = sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         E1 = sftppam_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         E1 = sftppam_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         E1 = sftpsql_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         E1 = shaper_handle_shaper(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         E1 = shaper_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         E1 = shaper_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         E1 = shaper_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         E1 = shaper_sess_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         E1 = shaper_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         E1 = shaper_sigusr2_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         E1 = shmcache_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         E1 = shmcache_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         E1 = shmcache_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         E1 = shutdown_end_session(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         E1 = site_misc_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         E1 = snmp_auth_code_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         E1 = snmp_ban_ban_class_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         E1 = snmp_ban_ban_host_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         E1 = snmp_ban_ban_user_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         E1 = snmp_ban_client_disconn_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         E1 = snmp_ban_expired_ban_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         E1 = snmp_cmd_invalid_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         E1 = snmp_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         E1 = snmp_max_inst_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         E1 = snmp_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         E1 = snmp_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         E1 = snmp_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         E1 = snmp_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         E1 = snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         E1 = snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         E1 = snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         E1 = snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         E1 = snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         E1 = snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         E1 = snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         E1 = snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         E1 = snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         E1 = snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         E1 = snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         E1 = snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         E1 = snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         E1 = snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         E1 = snmp_startup_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         E1 = snmp_timeout_idle_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         E1 = snmp_timeout_login_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         E1 = snmp_timeout_noxfer_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         E1 = snmp_timeout_stalled_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         E1 = snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         E1 = snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         E1 = snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         E1 = snmp_tls_verify_client_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         E1 = sql_chroot_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         E1 = sql_eventlog_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         E1 = sql_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         E1 = sql_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         E1 = sql_mysql_mod_load_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         E1 = sql_mysql_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         E1 = sql_passwd_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         E1 = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         E1 = sql_postgres_mod_load_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         E1 = sql_postgres_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         E1 = sql_preparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         E1 = sql_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         E1 = sql_sqlite_mod_load_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         E1 = sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         E1 = sqlodbc_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         E1 = sqltab_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         E1 = statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         E1 = statcache_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         E1 = statcache_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         E1 = statcache_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         E1 = statcache_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         E1 = statcache_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         E1 = systemd_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         E1 = systemd_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         E1 = systemd_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         E1 = systemd_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         E1 = systemd_startup_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         E1 = tab_copy_cb(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_test_visitf]) {
+         E1 = test_visitf(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         E1 = tls_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         E1 = tls_handle_tls(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         E1 = tls_mcache_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         E1 = tls_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         E1 = tls_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         E1 = tls_redis_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         E1 = tls_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         E1 = tls_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         E1 = tls_shutdown_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         E1 = tls_timeout_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         E1 = trace_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         E1 = uniqid_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         E1 = uniqid_postparse_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         E1 = wrap2_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         E1 = wrap2_mod_unload_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         E1 = wrap2_restart_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         E1 = wrap2_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         E1 = wrap_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         E1 = xfer_exit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         E1 = xfer_sess_reinit_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         E1 = xfer_sigusr2_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         E1 = xfer_timeout_session_ev(args);
+     }
+     else if (E2.cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         E1 = xfer_timeout_stalled_ev(args);
+     }


// FP: chdir

@transform_assign_chdir_dot@
expression E1, E2;
identifier FP_NAME = chdir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_chdir(args);


// FP: chmod

@transform_assign_chmod_dot@
expression E1, E2;
identifier FP_NAME = chmod;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         E1 = statcache_fsio_chmod(args);
+     }
+     else if (E2.chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         E1 = sys_chmod(args);
+     }


// FP: chown

@transform_assign_chown_dot@
expression E1, E2;
identifier FP_NAME = chown;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         E1 = statcache_fsio_chown(args);
+     }
+     else if (E2.chown_signature == chown_signatures[chown_sys_chown]) {
+         E1 = sys_chown(args);
+     }


// FP: chroot

@transform_assign_chroot_dot@
expression E1, E2;
identifier FP_NAME = chroot;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_chroot(args);


// FP: cleanup_cb

@transform_assign_cleanup_cb_dot@
expression E1, E2;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         E1 = NULL;
+     }
+     else if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         E1 = conn_cleanup_cb(args);
+     }
+     else if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         E1 = ctrls_cleanup_cb(args);
+     }
+     else if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         E1 = event_cleanup_cb(args);
+     }
+     else if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         E1 = server_cleanup_cb(args);
+     }
+     else if (E2.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         E1 = sess_redis_cleanup(args);
+     }


// FP: clear

@transform_assign_clear_dot@
expression E1, E2;
identifier FP_NAME = clear;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         E1 = ocsp_cache_clear(args);
+     }
+     else if (E2.clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         E1 = sess_cache_clear(args);
+     }


// FP: close

@transform_assign_close_dot@
expression E1, E2;
identifier FP_NAME = close;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.close_signature == close_signatures[close_core_netio_close_cb]) {
+         E1 = core_netio_close_cb(args);
+     }
+     else if (E2.close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         E1 = deflate_netio_close_cb(args);
+     }
+     else if (E2.close_signature == close_signatures[close_deflate_next_netio_close]) {
+         E1 = deflate_next_netio_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_ocsp_cache_close]) {
+         E1 = ocsp_cache_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_robots_fsio_close]) {
+         E1 = robots_fsio_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_sess_cache_close]) {
+         E1 = sess_cache_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_sftppam_driver_close]) {
+         E1 = sftppam_driver_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_sys_close]) {
+         E1 = sys_close(args);
+     }
+     else if (E2.close_signature == close_signatures[close_tls_netio_close_cb]) {
+         E1 = tls_netio_close_cb(args);
+     }


// FP: closedir

@transform_assign_closedir_dot@
expression E1, E2;
identifier FP_NAME = closedir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_closedir(args);


// FP: ctrls_cb

@transform_assign_ctrls_cb_dot@
expression E1, E2;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = NULL;


// FP: delete

@transform_assign_delete_dot@
expression E1, E2;
identifier FP_NAME = delete;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         E1 = ocsp_cache_delete(args);
+     }
+     else if (E2.delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         E1 = sess_cache_delete(args);
+     }


// FP: entinsert

@transform_assign_entinsert_dot@
expression E1, E2;
identifier FP_NAME = entinsert;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = entry_insert(args);


// FP: entremove

@transform_assign_entremove_dot@
expression E1, E2;
identifier FP_NAME = entremove;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = entry_remove(args);


// FP: faccess

@transform_assign_faccess_dot@
expression E1, E2;
identifier FP_NAME = faccess;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         E1 = facl_fsio_faccess(args);
+     }
+     else if (E2.faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         E1 = robots_fsio_faccess(args);
+     }
+     else if (E2.faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         E1 = sys_faccess(args);
+     }


// FP: fchmod

@transform_assign_fchmod_dot@
expression E1, E2;
identifier FP_NAME = fchmod;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         E1 = statcache_fsio_fchmod(args);
+     }
+     else if (E2.fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         E1 = sys_fchmod(args);
+     }


// FP: fchown

@transform_assign_fchown_dot@
expression E1, E2;
identifier FP_NAME = fchown;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         E1 = statcache_fsio_fchown(args);
+     }
+     else if (E2.fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         E1 = sys_fchown(args);
+     }


// FP: fgetxattr

@transform_assign_fgetxattr_dot@
expression E1, E2;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_fgetxattr(args);


// FP: flistxattr

@transform_assign_flistxattr_dot@
expression E1, E2;
identifier FP_NAME = flistxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_flistxattr(args);


// FP: fremovexattr

@transform_assign_fremovexattr_dot@
expression E1, E2;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_fremovexattr(args);


// FP: fsetxattr

@transform_assign_fsetxattr_dot@
expression E1, E2;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_fsetxattr(args);


// FP: fstat

@transform_assign_fstat_dot@
expression E1, E2;
identifier FP_NAME = fstat;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         E1 = robots_fsio_fstat(args);
+     }
+     else if (E2.fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         E1 = statcache_fsio_fstat(args);
+     }
+     else if (E2.fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         E1 = sys_fstat(args);
+     }


// FP: fsync

@transform_assign_fsync_dot@
expression E1, E2;
identifier FP_NAME = fsync;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_fsync(args);


// FP: ftruncate

@transform_assign_ftruncate_dot@
expression E1, E2;
identifier FP_NAME = ftruncate;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         E1 = statcache_fsio_ftruncate(args);
+     }
+     else if (E2.ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         E1 = sys_ftruncate(args);
+     }


// FP: futimes

@transform_assign_futimes_dot@
expression E1, E2;
identifier FP_NAME = futimes;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         E1 = statcache_fsio_futimes(args);
+     }
+     else if (E2.futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         E1 = sys_futimes(args);
+     }


// FP: get

@transform_assign_get_dot@
expression E1, E2;
identifier FP_NAME = get;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.get_signature == get_signatures[get_ocsp_cache_get]) {
+         E1 = ocsp_cache_get(args);
+     }
+     else if (E2.get_signature == get_signatures[get_sess_cache_get]) {
+         E1 = sess_cache_get(args);
+     }


// FP: getxattr

@transform_assign_getxattr_dot@
expression E1, E2;
identifier FP_NAME = getxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_getxattr(args);


// FP: keycmp

@transform_assign_keycmp_dot@
expression E1, E2;
identifier FP_NAME = keycmp;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = key_cmp(args);


// FP: keyhash

@transform_assign_keyhash_dot@
expression E1, E2;
identifier FP_NAME = keyhash;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = key_hash(args);


// FP: lchown

@transform_assign_lchown_dot@
expression E1, E2;
identifier FP_NAME = lchown;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         E1 = statcache_fsio_lchown(args);
+     }
+     else if (E2.lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         E1 = sys_lchown(args);
+     }


// FP: lgetxattr

@transform_assign_lgetxattr_dot@
expression E1, E2;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_lgetxattr(args);


// FP: link

@transform_assign_link_dot@
expression E1, E2;
identifier FP_NAME = link;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_link(args);


// FP: listxattr

@transform_assign_listxattr_dot@
expression E1, E2;
identifier FP_NAME = listxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_listxattr(args);


// FP: llistxattr

@transform_assign_llistxattr_dot@
expression E1, E2;
identifier FP_NAME = llistxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_llistxattr(args);


// FP: lremovexattr

@transform_assign_lremovexattr_dot@
expression E1, E2;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_lremovexattr(args);


// FP: lseek

@transform_assign_lseek_dot@
expression E1, E2;
identifier FP_NAME = lseek;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_lseek(args);


// FP: lsetxattr

@transform_assign_lsetxattr_dot@
expression E1, E2;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_lsetxattr(args);


// FP: lstat

@transform_assign_lstat_dot@
expression E1, E2;
identifier FP_NAME = lstat;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         E1 = robots_fsio_lstat(args);
+     }
+     else if (E2.lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         E1 = statcache_fsio_lstat(args);
+     }
+     else if (E2.lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         E1 = sys_lstat(args);
+     }


// FP: mkdir

@transform_assign_mkdir_dot@
expression E1, E2;
identifier FP_NAME = mkdir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_mkdir(args);


// FP: open

@transform_assign_open_dot@
expression E1, E2;
identifier FP_NAME = open;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.open_signature == open_signatures[open_core_netio_open_cb]) {
+         E1 = core_netio_open_cb(args);
+     }
+     else if (E2.open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         E1 = deflate_netio_open_cb(args);
+     }
+     else if (E2.open_signature == open_signatures[open_deflate_next_netio_open]) {
+         E1 = deflate_next_netio_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_ocsp_cache_open]) {
+         E1 = ocsp_cache_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_robots_fsio_open]) {
+         E1 = robots_fsio_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_sess_cache_open]) {
+         E1 = sess_cache_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_sftppam_driver_open]) {
+         E1 = sftppam_driver_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_statcache_fsio_open]) {
+         E1 = statcache_fsio_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_sys_open]) {
+         E1 = sys_open(args);
+     }
+     else if (E2.open_signature == open_signatures[open_tls_netio_open_cb]) {
+         E1 = tls_netio_open_cb(args);
+     }


// FP: opendir

@transform_assign_opendir_dot@
expression E1, E2;
identifier FP_NAME = opendir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_opendir(args);


// FP: poll

@transform_assign_poll_dot@
expression E1, E2;
identifier FP_NAME = poll;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         E1 = core_netio_poll_cb(args);
+     }
+     else if (E2.poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         E1 = tls_netio_poll_cb(args);
+     }


// FP: postopen

@transform_assign_postopen_dot@
expression E1, E2;
identifier FP_NAME = postopen;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         E1 = core_netio_postopen_cb(args);
+     }
+     else if (E2.postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         E1 = tls_netio_postopen_cb(args);
+     }


// FP: pread

@transform_assign_pread_dot@
expression E1, E2;
identifier FP_NAME = pread;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_pread(args);


// FP: pwrite

@transform_assign_pwrite_dot@
expression E1, E2;
identifier FP_NAME = pwrite;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_pwrite(args);


// FP: read

@transform_assign_read_dot@
expression E1, E2;
identifier FP_NAME = read;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.read_signature == read_signatures[read_core_netio_read_cb]) {
+         E1 = core_netio_read_cb(args);
+     }
+     else if (E2.read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         E1 = deflate_netio_read_cb(args);
+     }
+     else if (E2.read_signature == read_signatures[read_deflate_next_netio_read]) {
+         E1 = deflate_next_netio_read(args);
+     }
+     else if (E2.read_signature == read_signatures[read_robots_fsio_read]) {
+         E1 = robots_fsio_read(args);
+     }
+     else if (E2.read_signature == read_signatures[read_sys_read]) {
+         E1 = sys_read(args);
+     }
+     else if (E2.read_signature == read_signatures[read_tls_netio_read_cb]) {
+         E1 = tls_netio_read_cb(args);
+     }


// FP: readdir

@transform_assign_readdir_dot@
expression E1, E2;
identifier FP_NAME = readdir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_readdir(args);


// FP: readlink

@transform_assign_readlink_dot@
expression E1, E2;
identifier FP_NAME = readlink;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_readlink(args);


// FP: realpath

@transform_assign_realpath_dot@
expression E1, E2;
identifier FP_NAME = realpath;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_realpath(args);


// FP: regtab_open

@transform_assign_regtab_open_dot@
expression E1, E2;
identifier FP_NAME = regtab_open;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = srcopen(args);


// FP: remove

@transform_assign_remove_dot@
expression E1, E2;
identifier FP_NAME = remove;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.remove_signature == remove_signatures[remove_0]) {
+         E1 = 0;
+     }
+     else if (E2.remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         E1 = ocsp_cache_remove(args);
+     }
+     else if (E2.remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         E1 = sess_cache_remove(args);
+     }


// FP: removexattr

@transform_assign_removexattr_dot@
expression E1, E2;
identifier FP_NAME = removexattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_removexattr(args);


// FP: rename

@transform_assign_rename_dot@
expression E1, E2;
identifier FP_NAME = rename;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         E1 = statcache_fsio_rename(args);
+     }
+     else if (E2.rename_signature == rename_signatures[rename_sys_rename]) {
+         E1 = sys_rename(args);
+     }


// FP: reopen

@transform_assign_reopen_dot@
expression E1, E2;
identifier FP_NAME = reopen;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         E1 = core_netio_reopen_cb(args);
+     }
+     else if (E2.reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         E1 = tls_netio_reopen_cb(args);
+     }


// FP: rmdir

@transform_assign_rmdir_dot@
expression E1, E2;
identifier FP_NAME = rmdir;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_rmdir(args);


// FP: setxattr

@transform_assign_setxattr_dot@
expression E1, E2;
identifier FP_NAME = setxattr;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_setxattr(args);


// FP: shutdown

@transform_assign_shutdown_dot@
expression E1, E2;
identifier FP_NAME = shutdown;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         E1 = core_netio_shutdown_cb(args);
+     }
+     else if (E2.shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         E1 = deflate_netio_shutdown_cb(args);
+     }
+     else if (E2.shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         E1 = deflate_next_netio_shutdown(args);
+     }
+     else if (E2.shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         E1 = tls_netio_shutdown_cb(args);
+     }


// FP: stat

@transform_assign_stat_dot@
expression E1, E2;
identifier FP_NAME = stat;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         E1 = robots_fsio_stat(args);
+     }
+     else if (E2.stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         E1 = statcache_fsio_stat(args);
+     }
+     else if (E2.stat_signature == stat_signatures[stat_sys_stat]) {
+         E1 = sys_stat(args);
+     }


// FP: status

@transform_assign_status_dot@
expression E1, E2;
identifier FP_NAME = status;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.status_signature == status_signatures[status_ocsp_cache_status]) {
+         E1 = ocsp_cache_status(args);
+     }
+     else if (E2.status_signature == status_signatures[status_sess_cache_status]) {
+         E1 = sess_cache_status(args);
+     }


// FP: symlink

@transform_assign_symlink_dot@
expression E1, E2;
identifier FP_NAME = symlink;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     E1 = sys_symlink(args);


// FP: tab_close

@transform_assign_tab_close_dot@
expression E1, E2;
identifier FP_NAME = tab_close;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         E1 = filetab_close(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         E1 = filetab_close_cb(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         E1 = ldaptab_close(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         E1 = radiustab_close(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         E1 = redistab_close_cb(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         E1 = sqltab_close(args);
+     }
+     else if (E2.tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         E1 = sqltab_close_cb(args);
+     }


// FP: tab_create

@transform_assign_tab_create_dot@
expression E1, E2;
identifier FP_NAME = tab_create;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         E1 = filetab_create(args);
+     }
+     else if (E2.tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         E1 = sqltab_create(args);
+     }


// FP: tab_lookup

@transform_assign_tab_lookup_dot@
expression E1, E2;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         E1 = filetab_lookup(args);
+     }
+     else if (E2.tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         E1 = ldaptab_lookup(args);
+     }
+     else if (E2.tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         E1 = radiustab_lookup(args);
+     }
+     else if (E2.tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         E1 = sqltab_lookup(args);
+     }


// FP: tab_read

@transform_assign_tab_read_dot@
expression E1, E2;
identifier FP_NAME = tab_read;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         E1 = filetab_read(args);
+     }
+     else if (E2.tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         E1 = sqltab_read(args);
+     }


// FP: tab_rlock

@transform_assign_tab_rlock_dot@
expression E1, E2;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         E1 = filetab_rlock(args);
+     }
+     else if (E2.tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         E1 = sqltab_rlock(args);
+     }


// FP: tab_unlock

@transform_assign_tab_unlock_dot@
expression E1, E2;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         E1 = filetab_unlock(args);
+     }
+     else if (E2.tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         E1 = sqltab_unlock(args);
+     }


// FP: tab_verify

@transform_assign_tab_verify_dot@
expression E1, E2;
identifier FP_NAME = tab_verify;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         E1 = filetab_verify(args);
+     }
+     else if (E2.tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         E1 = ldaptab_verify(args);
+     }
+     else if (E2.tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         E1 = radiustab_verify(args);
+     }
+     else if (E2.tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         E1 = sqltab_verify(args);
+     }


// FP: tab_wlock

@transform_assign_tab_wlock_dot@
expression E1, E2;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         E1 = filetab_wlock(args);
+     }
+     else if (E2.tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         E1 = sqltab_wlock(args);
+     }


// FP: tab_write

@transform_assign_tab_write_dot@
expression E1, E2;
identifier FP_NAME = tab_write;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         E1 = filetab_write(args);
+     }
+     else if (E2.tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         E1 = sqltab_write(args);
+     }


// FP: truncate

@transform_assign_truncate_dot@
expression E1, E2;
identifier FP_NAME = truncate;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         E1 = statcache_fsio_truncate(args);
+     }
+     else if (E2.truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         E1 = sys_truncate(args);
+     }


// FP: unlink

@transform_assign_unlink_dot@
expression E1, E2;
identifier FP_NAME = unlink;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         E1 = robots_fsio_unlink(args);
+     }
+     else if (E2.unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         E1 = statcache_fsio_unlink(args);
+     }
+     else if (E2.unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         E1 = sys_unlink(args);
+     }


// FP: utimes

@transform_assign_utimes_dot@
expression E1, E2;
identifier FP_NAME = utimes;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         E1 = statcache_fsio_utimes(args);
+     }
+     else if (E2.utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         E1 = sys_utimes(args);
+     }


// FP: write

@transform_assign_write_dot@
expression E1, E2;
identifier FP_NAME = write;
expression list args;
@@
- E1 = E2.FP_NAME(args);
+ // E1 = E2.FP_NAME(args);
+     if (E2.write_signature == write_signatures[write_core_netio_write_cb]) {
+         E1 = core_netio_write_cb(args);
+     }
+     else if (E2.write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         E1 = deflate_netio_write_cb(args);
+     }
+     else if (E2.write_signature == write_signatures[write_deflate_next_netio_write]) {
+         E1 = deflate_next_netio_write(args);
+     }
+     else if (E2.write_signature == write_signatures[write_quotatab_fsio_write]) {
+         E1 = quotatab_fsio_write(args);
+     }
+     else if (E2.write_signature == write_signatures[write_robots_fsio_write]) {
+         E1 = robots_fsio_write(args);
+     }
+     else if (E2.write_signature == write_signatures[write_statcache_fsio_write]) {
+         E1 = statcache_fsio_write(args);
+     }
+     else if (E2.write_signature == write_signatures[write_sys_write]) {
+         E1 = sys_write(args);
+     }
+     else if (E2.write_signature == write_signatures[write_tls_netio_write_cb]) {
+         E1 = tls_netio_write_cb(args);
+     }

// Total assignment dot rules: 76

// ===== STANDALONE ARROW CALL TRANSFORMATION RULES =====
// Pattern: E->fp_name(args);


// FP: abort

@transform_standalone_abort_arrow@
expression E;
identifier FP_NAME = abort;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         core_netio_abort_cb(args);
+     }
+     else if (E->abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         tls_netio_abort_cb(args);
+     }


// FP: access

@transform_standalone_access_arrow@
expression E;
identifier FP_NAME = access;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->access_signature == access_signatures[access_facl_fsio_access]) {
+         facl_fsio_access(args);
+     }
+     else if (E->access_signature == access_signatures[access_robots_fsio_access]) {
+         robots_fsio_access(args);
+     }
+     else if (E->access_signature == access_signatures[access_sys_access]) {
+         sys_access(args);
+     }


// FP: action_cb

@transform_standalone_action_cb_arrow@
expression E;
identifier FP_NAME = action_cb;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         NULL;
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         array_item_fail(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         array_item_ok(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         auth_otp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         auth_pam_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         ban_anonrejectpasswords_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         ban_badprotocol_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         ban_clientconnectrate_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         ban_emptypassword_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         ban_maxclientsperclass_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         ban_maxclientsperhost_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         ban_maxclientsperuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         ban_maxcmdrate_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         ban_maxconnperhost_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         ban_maxhostsperuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         ban_maxloginattempts_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         ban_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         ban_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         ban_rootlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         ban_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         ban_timeoutidle_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         ban_timeoutlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         ban_timeoutnoxfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         ban_tlshandshake_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         ban_unhandledcmd_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         ban_userdefined_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         core_connected_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         core_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         core_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         core_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         core_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         ctrls_admin_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         ctrls_admin_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         ctrls_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         ctrls_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         delay_connect_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         delay_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         delay_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         delay_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         delay_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         digest_data_xfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         digest_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         do_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         do_with_remove_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         dynmasq_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         dynmasq_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         dynmasq_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         event_cb3(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         exec_any_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         exec_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         exec_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         exec_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         facl_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         facl_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         facl_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         filetab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         forensic_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         fscache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         fxp_handle_abort(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         geoip_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         geoip_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         geoip_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         ifsess_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         ifsess_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         ifsess_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         lang_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         lang_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         ldap_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         ldap_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         ldap_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         ldaptab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         log_fmt_extra_iter_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         log_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         log_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         mcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         object_item_fail(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         object_item_ok(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         qos_ctrl_listen_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         qos_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         quotatab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         quotatab_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         radius_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         radius_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         radiustab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         redis_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         redis_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         redistab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         regexp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         regexp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         rewrite_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         rewrite_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         rlimit_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         rlimit_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         sftp_ban_class_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         sftp_ban_host_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         sftp_ban_user_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         sftp_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         sftp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         sftp_max_conns_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         sftp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         sftp_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         sftp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         sftp_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         sftp_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         sftp_timeoutlogin_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         sftppam_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         sftppam_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         sftpsql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         shaper_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         shaper_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         shaper_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         shaper_sess_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         shaper_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         shaper_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         shmcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         shmcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         shmcache_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         snmp_auth_code_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         snmp_ban_ban_class_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         snmp_ban_ban_host_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         snmp_ban_ban_user_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         snmp_ban_client_disconn_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         snmp_ban_expired_ban_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         snmp_cmd_invalid_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         snmp_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         snmp_max_inst_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         snmp_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         snmp_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         snmp_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         snmp_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         snmp_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         snmp_timeout_idle_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         snmp_timeout_login_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         snmp_timeout_noxfer_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         snmp_timeout_stalled_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         snmp_tls_verify_client_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         sql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         sql_mysql_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         sql_mysql_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         sql_passwd_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         sql_postgres_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         sql_postgres_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         sql_preparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         sql_sqlite_mod_load_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         sqlodbc_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         sqltab_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         statcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         statcache_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         statcache_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         statcache_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         systemd_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         systemd_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         systemd_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         systemd_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         systemd_startup_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         tab_copy_cb(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         test_visitf(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         tls_mcache_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         tls_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         tls_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         tls_redis_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         tls_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         tls_shutdown_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         tls_timeout_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         uniqid_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         uniqid_postparse_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         wrap2_mod_unload_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         wrap2_restart_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         xfer_timeout_session_ev(args);
+     }
+     else if (E->action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }


// FP: add

@transform_standalone_add_arrow@
expression E;
identifier FP_NAME = add;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->add_signature == add_signatures[add_ocsp_cache_add]) {
+         ocsp_cache_add(args);
+     }
+     else if (E->add_signature == add_signatures[add_sess_cache_add]) {
+         sess_cache_add(args);
+     }


// FP: cb

@transform_standalone_cb_arrow@
expression E;
identifier FP_NAME = cb;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (E->cb_signature == cb_signatures[cb_array_item_fail]) {
+         array_item_fail(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_array_item_ok]) {
+         array_item_ok(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         auth_otp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         auth_pam_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         ban_anonrejectpasswords_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         ban_badprotocol_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         ban_clientconnectrate_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         ban_emptypassword_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         ban_maxclientsperclass_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         ban_maxclientsperhost_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         ban_maxclientsperuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         ban_maxcmdrate_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         ban_maxconnperhost_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         ban_maxhostsperuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         ban_maxloginattempts_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         ban_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         ban_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         ban_rootlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         ban_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         ban_timeoutidle_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         ban_timeoutlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         ban_timeoutnoxfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         ban_tlshandshake_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         ban_unhandledcmd_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         ban_userdefined_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_connected_ev]) {
+         core_connected_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_exit_ev]) {
+         core_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         core_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_restart_ev]) {
+         core_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_core_startup_ev]) {
+         core_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         ctrls_admin_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         ctrls_admin_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         ctrls_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         ctrls_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         delay_connect_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         delay_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         delay_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         delay_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         delay_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         digest_data_xfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         digest_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_do_cb]) {
+         do_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         do_with_remove_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         dynmasq_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         dynmasq_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         dynmasq_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_event_cb3]) {
+         event_cb3(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_any_ev]) {
+         exec_any_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         exec_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         exec_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         exec_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         facl_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         facl_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         facl_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         filetab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         forensic_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         fscache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         fxp_handle_abort(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         geoip_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         geoip_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         geoip_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         ifsess_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         ifsess_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         ifsess_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         lang_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         lang_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         ldap_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         ldap_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         ldap_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         ldaptab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         log_fmt_extra_iter_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         log_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_restart_ev]) {
+         log_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         mcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_object_item_fail]) {
+         object_item_fail(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_object_item_ok]) {
+         object_item_ok(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         qos_ctrl_listen_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         qos_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         quotatab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         quotatab_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         radius_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         radius_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         radiustab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         redis_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         redis_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         redistab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         regexp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         regexp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         rewrite_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         rewrite_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         rlimit_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         rlimit_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         sftp_ban_class_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         sftp_ban_host_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         sftp_ban_user_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         sftp_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         sftp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         sftp_max_conns_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         sftp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         sftp_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         sftp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         sftp_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         sftp_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         sftp_timeoutlogin_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         sftppam_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         sftppam_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         sftpsql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         shaper_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         shaper_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         shaper_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         shaper_sess_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         shaper_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         shaper_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         shmcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         shmcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         shmcache_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         snmp_auth_code_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         snmp_ban_ban_class_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         snmp_ban_ban_host_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         snmp_ban_ban_user_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         snmp_ban_client_disconn_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         snmp_ban_expired_ban_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         snmp_cmd_invalid_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         snmp_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         snmp_max_inst_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         snmp_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         snmp_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         snmp_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         snmp_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         snmp_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         snmp_timeout_idle_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         snmp_timeout_login_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         snmp_timeout_noxfer_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         snmp_timeout_stalled_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         snmp_tls_verify_client_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         sql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         sql_mysql_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         sql_mysql_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         sql_passwd_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         sql_postgres_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         sql_postgres_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         sql_preparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         sql_sqlite_mod_load_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         sqlodbc_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         sqltab_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         statcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         statcache_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         statcache_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         statcache_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         systemd_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         systemd_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         systemd_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         systemd_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         systemd_startup_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         tab_copy_cb(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_test_visitf]) {
+         test_visitf(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         tls_mcache_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         tls_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         tls_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         tls_redis_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         tls_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         tls_shutdown_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         tls_timeout_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         uniqid_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         uniqid_postparse_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         wrap2_mod_unload_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         wrap2_restart_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         xfer_timeout_session_ev(args);
+     }
+     else if (E->cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }


// FP: chdir

@transform_standalone_chdir_arrow@
expression E;
identifier FP_NAME = chdir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_chdir(args);


// FP: chmod

@transform_standalone_chmod_arrow@
expression E;
identifier FP_NAME = chmod;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         statcache_fsio_chmod(args);
+     }
+     else if (E->chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         sys_chmod(args);
+     }


// FP: chown

@transform_standalone_chown_arrow@
expression E;
identifier FP_NAME = chown;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         statcache_fsio_chown(args);
+     }
+     else if (E->chown_signature == chown_signatures[chown_sys_chown]) {
+         sys_chown(args);
+     }


// FP: chroot

@transform_standalone_chroot_arrow@
expression E;
identifier FP_NAME = chroot;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_chroot(args);


// FP: cleanup_cb

@transform_standalone_cleanup_cb_arrow@
expression E;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (E->cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }


// FP: clear

@transform_standalone_clear_arrow@
expression E;
identifier FP_NAME = clear;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         ocsp_cache_clear(args);
+     }
+     else if (E->clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         sess_cache_clear(args);
+     }


// FP: close

@transform_standalone_close_arrow@
expression E;
identifier FP_NAME = close;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->close_signature == close_signatures[close_core_netio_close_cb]) {
+         core_netio_close_cb(args);
+     }
+     else if (E->close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         deflate_netio_close_cb(args);
+     }
+     else if (E->close_signature == close_signatures[close_deflate_next_netio_close]) {
+         deflate_next_netio_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_ocsp_cache_close]) {
+         ocsp_cache_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_robots_fsio_close]) {
+         robots_fsio_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sess_cache_close]) {
+         sess_cache_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sftppam_driver_close]) {
+         sftppam_driver_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_sys_close]) {
+         sys_close(args);
+     }
+     else if (E->close_signature == close_signatures[close_tls_netio_close_cb]) {
+         tls_netio_close_cb(args);
+     }


// FP: closedir

@transform_standalone_closedir_arrow@
expression E;
identifier FP_NAME = closedir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_closedir(args);


// FP: ctrls_cb

@transform_standalone_ctrls_cb_arrow@
expression E;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     NULL;


// FP: delete

@transform_standalone_delete_arrow@
expression E;
identifier FP_NAME = delete;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         ocsp_cache_delete(args);
+     }
+     else if (E->delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         sess_cache_delete(args);
+     }


// FP: entinsert

@transform_standalone_entinsert_arrow@
expression E;
identifier FP_NAME = entinsert;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     entry_insert(args);


// FP: entremove

@transform_standalone_entremove_arrow@
expression E;
identifier FP_NAME = entremove;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     entry_remove(args);


// FP: faccess

@transform_standalone_faccess_arrow@
expression E;
identifier FP_NAME = faccess;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         facl_fsio_faccess(args);
+     }
+     else if (E->faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         robots_fsio_faccess(args);
+     }
+     else if (E->faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         sys_faccess(args);
+     }


// FP: fchmod

@transform_standalone_fchmod_arrow@
expression E;
identifier FP_NAME = fchmod;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         statcache_fsio_fchmod(args);
+     }
+     else if (E->fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         sys_fchmod(args);
+     }


// FP: fchown

@transform_standalone_fchown_arrow@
expression E;
identifier FP_NAME = fchown;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         statcache_fsio_fchown(args);
+     }
+     else if (E->fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         sys_fchown(args);
+     }


// FP: fgetxattr

@transform_standalone_fgetxattr_arrow@
expression E;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_fgetxattr(args);


// FP: flistxattr

@transform_standalone_flistxattr_arrow@
expression E;
identifier FP_NAME = flistxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_flistxattr(args);


// FP: fremovexattr

@transform_standalone_fremovexattr_arrow@
expression E;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_fremovexattr(args);


// FP: fsetxattr

@transform_standalone_fsetxattr_arrow@
expression E;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_fsetxattr(args);


// FP: fstat

@transform_standalone_fstat_arrow@
expression E;
identifier FP_NAME = fstat;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         robots_fsio_fstat(args);
+     }
+     else if (E->fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         statcache_fsio_fstat(args);
+     }
+     else if (E->fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         sys_fstat(args);
+     }


// FP: fsync

@transform_standalone_fsync_arrow@
expression E;
identifier FP_NAME = fsync;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_fsync(args);


// FP: ftruncate

@transform_standalone_ftruncate_arrow@
expression E;
identifier FP_NAME = ftruncate;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         statcache_fsio_ftruncate(args);
+     }
+     else if (E->ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         sys_ftruncate(args);
+     }


// FP: futimes

@transform_standalone_futimes_arrow@
expression E;
identifier FP_NAME = futimes;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         statcache_fsio_futimes(args);
+     }
+     else if (E->futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         sys_futimes(args);
+     }


// FP: get

@transform_standalone_get_arrow@
expression E;
identifier FP_NAME = get;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->get_signature == get_signatures[get_ocsp_cache_get]) {
+         ocsp_cache_get(args);
+     }
+     else if (E->get_signature == get_signatures[get_sess_cache_get]) {
+         sess_cache_get(args);
+     }


// FP: getxattr

@transform_standalone_getxattr_arrow@
expression E;
identifier FP_NAME = getxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_getxattr(args);


// FP: keycmp

@transform_standalone_keycmp_arrow@
expression E;
identifier FP_NAME = keycmp;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     key_cmp(args);


// FP: keyhash

@transform_standalone_keyhash_arrow@
expression E;
identifier FP_NAME = keyhash;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     key_hash(args);


// FP: lchown

@transform_standalone_lchown_arrow@
expression E;
identifier FP_NAME = lchown;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         statcache_fsio_lchown(args);
+     }
+     else if (E->lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         sys_lchown(args);
+     }


// FP: lgetxattr

@transform_standalone_lgetxattr_arrow@
expression E;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_lgetxattr(args);


// FP: link

@transform_standalone_link_arrow@
expression E;
identifier FP_NAME = link;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_link(args);


// FP: listxattr

@transform_standalone_listxattr_arrow@
expression E;
identifier FP_NAME = listxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_listxattr(args);


// FP: llistxattr

@transform_standalone_llistxattr_arrow@
expression E;
identifier FP_NAME = llistxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_llistxattr(args);


// FP: lremovexattr

@transform_standalone_lremovexattr_arrow@
expression E;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_lremovexattr(args);


// FP: lseek

@transform_standalone_lseek_arrow@
expression E;
identifier FP_NAME = lseek;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_lseek(args);


// FP: lsetxattr

@transform_standalone_lsetxattr_arrow@
expression E;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_lsetxattr(args);


// FP: lstat

@transform_standalone_lstat_arrow@
expression E;
identifier FP_NAME = lstat;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         robots_fsio_lstat(args);
+     }
+     else if (E->lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         statcache_fsio_lstat(args);
+     }
+     else if (E->lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         sys_lstat(args);
+     }


// FP: mkdir

@transform_standalone_mkdir_arrow@
expression E;
identifier FP_NAME = mkdir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_mkdir(args);


// FP: open

@transform_standalone_open_arrow@
expression E;
identifier FP_NAME = open;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->open_signature == open_signatures[open_core_netio_open_cb]) {
+         core_netio_open_cb(args);
+     }
+     else if (E->open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         deflate_netio_open_cb(args);
+     }
+     else if (E->open_signature == open_signatures[open_deflate_next_netio_open]) {
+         deflate_next_netio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_ocsp_cache_open]) {
+         ocsp_cache_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_robots_fsio_open]) {
+         robots_fsio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sess_cache_open]) {
+         sess_cache_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sftppam_driver_open]) {
+         sftppam_driver_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_statcache_fsio_open]) {
+         statcache_fsio_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_sys_open]) {
+         sys_open(args);
+     }
+     else if (E->open_signature == open_signatures[open_tls_netio_open_cb]) {
+         tls_netio_open_cb(args);
+     }


// FP: opendir

@transform_standalone_opendir_arrow@
expression E;
identifier FP_NAME = opendir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_opendir(args);


// FP: poll

@transform_standalone_poll_arrow@
expression E;
identifier FP_NAME = poll;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         core_netio_poll_cb(args);
+     }
+     else if (E->poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         tls_netio_poll_cb(args);
+     }


// FP: postopen

@transform_standalone_postopen_arrow@
expression E;
identifier FP_NAME = postopen;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         core_netio_postopen_cb(args);
+     }
+     else if (E->postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         tls_netio_postopen_cb(args);
+     }


// FP: pread

@transform_standalone_pread_arrow@
expression E;
identifier FP_NAME = pread;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_pread(args);


// FP: pwrite

@transform_standalone_pwrite_arrow@
expression E;
identifier FP_NAME = pwrite;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_pwrite(args);


// FP: read

@transform_standalone_read_arrow@
expression E;
identifier FP_NAME = read;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->read_signature == read_signatures[read_core_netio_read_cb]) {
+         core_netio_read_cb(args);
+     }
+     else if (E->read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         deflate_netio_read_cb(args);
+     }
+     else if (E->read_signature == read_signatures[read_deflate_next_netio_read]) {
+         deflate_next_netio_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_robots_fsio_read]) {
+         robots_fsio_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_sys_read]) {
+         sys_read(args);
+     }
+     else if (E->read_signature == read_signatures[read_tls_netio_read_cb]) {
+         tls_netio_read_cb(args);
+     }


// FP: readdir

@transform_standalone_readdir_arrow@
expression E;
identifier FP_NAME = readdir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_readdir(args);


// FP: readlink

@transform_standalone_readlink_arrow@
expression E;
identifier FP_NAME = readlink;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_readlink(args);


// FP: realpath

@transform_standalone_realpath_arrow@
expression E;
identifier FP_NAME = realpath;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_realpath(args);


// FP: regtab_open

@transform_standalone_regtab_open_arrow@
expression E;
identifier FP_NAME = regtab_open;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     srcopen(args);


// FP: remove

@transform_standalone_remove_arrow@
expression E;
identifier FP_NAME = remove;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->remove_signature == remove_signatures[remove_0]) {
+         0;
+     }
+     else if (E->remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         ocsp_cache_remove(args);
+     }
+     else if (E->remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         sess_cache_remove(args);
+     }


// FP: removexattr

@transform_standalone_removexattr_arrow@
expression E;
identifier FP_NAME = removexattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_removexattr(args);


// FP: rename

@transform_standalone_rename_arrow@
expression E;
identifier FP_NAME = rename;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         statcache_fsio_rename(args);
+     }
+     else if (E->rename_signature == rename_signatures[rename_sys_rename]) {
+         sys_rename(args);
+     }


// FP: reopen

@transform_standalone_reopen_arrow@
expression E;
identifier FP_NAME = reopen;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         core_netio_reopen_cb(args);
+     }
+     else if (E->reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         tls_netio_reopen_cb(args);
+     }


// FP: rmdir

@transform_standalone_rmdir_arrow@
expression E;
identifier FP_NAME = rmdir;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_rmdir(args);


// FP: setxattr

@transform_standalone_setxattr_arrow@
expression E;
identifier FP_NAME = setxattr;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_setxattr(args);


// FP: shutdown

@transform_standalone_shutdown_arrow@
expression E;
identifier FP_NAME = shutdown;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         core_netio_shutdown_cb(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         deflate_netio_shutdown_cb(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         deflate_next_netio_shutdown(args);
+     }
+     else if (E->shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         tls_netio_shutdown_cb(args);
+     }


// FP: stat

@transform_standalone_stat_arrow@
expression E;
identifier FP_NAME = stat;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         robots_fsio_stat(args);
+     }
+     else if (E->stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         statcache_fsio_stat(args);
+     }
+     else if (E->stat_signature == stat_signatures[stat_sys_stat]) {
+         sys_stat(args);
+     }


// FP: status

@transform_standalone_status_arrow@
expression E;
identifier FP_NAME = status;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->status_signature == status_signatures[status_ocsp_cache_status]) {
+         ocsp_cache_status(args);
+     }
+     else if (E->status_signature == status_signatures[status_sess_cache_status]) {
+         sess_cache_status(args);
+     }


// FP: symlink

@transform_standalone_symlink_arrow@
expression E;
identifier FP_NAME = symlink;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     sys_symlink(args);


// FP: tab_close

@transform_standalone_tab_close_arrow@
expression E;
identifier FP_NAME = tab_close;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         filetab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         filetab_close_cb(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         ldaptab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         radiustab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         redistab_close_cb(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         sqltab_close(args);
+     }
+     else if (E->tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         sqltab_close_cb(args);
+     }


// FP: tab_create

@transform_standalone_tab_create_arrow@
expression E;
identifier FP_NAME = tab_create;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         filetab_create(args);
+     }
+     else if (E->tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         sqltab_create(args);
+     }


// FP: tab_lookup

@transform_standalone_tab_lookup_arrow@
expression E;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         filetab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         ldaptab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         radiustab_lookup(args);
+     }
+     else if (E->tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         sqltab_lookup(args);
+     }


// FP: tab_read

@transform_standalone_tab_read_arrow@
expression E;
identifier FP_NAME = tab_read;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         filetab_read(args);
+     }
+     else if (E->tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         sqltab_read(args);
+     }


// FP: tab_rlock

@transform_standalone_tab_rlock_arrow@
expression E;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         filetab_rlock(args);
+     }
+     else if (E->tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         sqltab_rlock(args);
+     }


// FP: tab_unlock

@transform_standalone_tab_unlock_arrow@
expression E;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         filetab_unlock(args);
+     }
+     else if (E->tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         sqltab_unlock(args);
+     }


// FP: tab_verify

@transform_standalone_tab_verify_arrow@
expression E;
identifier FP_NAME = tab_verify;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         filetab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         ldaptab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         radiustab_verify(args);
+     }
+     else if (E->tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         sqltab_verify(args);
+     }


// FP: tab_wlock

@transform_standalone_tab_wlock_arrow@
expression E;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         filetab_wlock(args);
+     }
+     else if (E->tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         sqltab_wlock(args);
+     }


// FP: tab_write

@transform_standalone_tab_write_arrow@
expression E;
identifier FP_NAME = tab_write;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         filetab_write(args);
+     }
+     else if (E->tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         sqltab_write(args);
+     }


// FP: truncate

@transform_standalone_truncate_arrow@
expression E;
identifier FP_NAME = truncate;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         statcache_fsio_truncate(args);
+     }
+     else if (E->truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         sys_truncate(args);
+     }


// FP: unlink

@transform_standalone_unlink_arrow@
expression E;
identifier FP_NAME = unlink;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         robots_fsio_unlink(args);
+     }
+     else if (E->unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         statcache_fsio_unlink(args);
+     }
+     else if (E->unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         sys_unlink(args);
+     }


// FP: utimes

@transform_standalone_utimes_arrow@
expression E;
identifier FP_NAME = utimes;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         statcache_fsio_utimes(args);
+     }
+     else if (E->utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         sys_utimes(args);
+     }


// FP: write

@transform_standalone_write_arrow@
expression E;
identifier FP_NAME = write;
expression list args;
@@
- E->FP_NAME(args);
+ // E->FP_NAME(args);
+     if (E->write_signature == write_signatures[write_core_netio_write_cb]) {
+         core_netio_write_cb(args);
+     }
+     else if (E->write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         deflate_netio_write_cb(args);
+     }
+     else if (E->write_signature == write_signatures[write_deflate_next_netio_write]) {
+         deflate_next_netio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_quotatab_fsio_write]) {
+         quotatab_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_robots_fsio_write]) {
+         robots_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_statcache_fsio_write]) {
+         statcache_fsio_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_sys_write]) {
+         sys_write(args);
+     }
+     else if (E->write_signature == write_signatures[write_tls_netio_write_cb]) {
+         tls_netio_write_cb(args);
+     }

// Total standalone arrow rules: 76

// ===== STANDALONE DOT CALL TRANSFORMATION RULES =====
// Pattern: E.fp_name(args);


// FP: abort

@transform_standalone_abort_dot@
expression E;
identifier FP_NAME = abort;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.abort_signature == abort_signatures[abort_core_netio_abort_cb]) {
+         core_netio_abort_cb(args);
+     }
+     else if (E.abort_signature == abort_signatures[abort_tls_netio_abort_cb]) {
+         tls_netio_abort_cb(args);
+     }


// FP: access

@transform_standalone_access_dot@
expression E;
identifier FP_NAME = access;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.access_signature == access_signatures[access_facl_fsio_access]) {
+         facl_fsio_access(args);
+     }
+     else if (E.access_signature == access_signatures[access_robots_fsio_access]) {
+         robots_fsio_access(args);
+     }
+     else if (E.access_signature == access_signatures[access_sys_access]) {
+         sys_access(args);
+     }


// FP: action_cb

@transform_standalone_action_cb_dot@
expression E;
identifier FP_NAME = action_cb;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.action_cb_signature == action_cb_signatures[action_cb_NULL]) {
+         NULL;
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_array_item_fail]) {
+         array_item_fail(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_array_item_ok]) {
+         array_item_ok(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_mod_unload_ev]) {
+         auth_otp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_pam_exit_ev]) {
+         auth_pam_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_anonrejectpasswords_ev]) {
+         ban_anonrejectpasswords_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_badprotocol_ev]) {
+         ban_badprotocol_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_clientconnectrate_ev]) {
+         ban_clientconnectrate_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_emptypassword_ev]) {
+         ban_emptypassword_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperclass_ev]) {
+         ban_maxclientsperclass_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperhost_ev]) {
+         ban_maxclientsperhost_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxclientsperuser_ev]) {
+         ban_maxclientsperuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxcmdrate_ev]) {
+         ban_maxcmdrate_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxconnperhost_ev]) {
+         ban_maxconnperhost_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxhostsperuser_ev]) {
+         ban_maxhostsperuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattempts_ev]) {
+         ban_maxloginattempts_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev]) {
+         ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_mod_unload_ev]) {
+         ban_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_postparse_ev]) {
+         ban_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_rootlogin_ev]) {
+         ban_rootlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_shutdown_ev]) {
+         ban_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutidle_ev]) {
+         ban_timeoutidle_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutlogin_ev]) {
+         ban_timeoutlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_timeoutnoxfer_ev]) {
+         ban_timeoutnoxfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_tlshandshake_ev]) {
+         ban_tlshandshake_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_unhandledcmd_ev]) {
+         ban_unhandledcmd_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ban_userdefined_ev]) {
+         ban_userdefined_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_connected_ev]) {
+         core_connected_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_exit_ev]) {
+         core_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_postparse_ev]) {
+         core_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_restart_ev]) {
+         core_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_core_startup_ev]) {
+         core_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev]) {
+         ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_restart_ev]) {
+         ctrls_admin_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_admin_startup_ev]) {
+         ctrls_admin_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_postparse_ev]) {
+         ctrls_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_shutdown_ev]) {
+         ctrls_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_connect_ev]) {
+         delay_connect_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_mod_unload_ev]) {
+         delay_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_postparse_ev]) {
+         delay_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_restart_ev]) {
+         delay_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_delay_shutdown_ev]) {
+         delay_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_data_xfer_ev]) {
+         digest_data_xfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_mod_unload_ev]) {
+         digest_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_do_cb]) {
+         do_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_do_with_remove_cb]) {
+         do_with_remove_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_mod_unload_ev]) {
+         dynmasq_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_postparse_ev]) {
+         dynmasq_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_dynmasq_restart_ev]) {
+         dynmasq_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_event_cb3]) {
+         event_cb3(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_any_ev]) {
+         exec_any_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_mod_unload_ev]) {
+         exec_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_postparse_ev]) {
+         exec_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_restart_ev]) {
+         exec_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_mod_unload_ev]) {
+         facl_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_postparse_ev]) {
+         facl_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facl_restart_ev]) {
+         facl_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_filetab_mod_unload_ev]) {
+         filetab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_mod_unload_ev]) {
+         forensic_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_fscache_mod_unload_ev]) {
+         fscache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_fxp_handle_abort]) {
+         fxp_handle_abort(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_mod_unload_ev]) {
+         geoip_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_postparse_ev]) {
+         geoip_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_geoip_restart_ev]) {
+         geoip_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_chroot_ev]) {
+         ifsess_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_mod_unload_ev]) {
+         ifsess_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ifsess_postparse_ev]) {
+         ifsess_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_lang_postparse_ev]) {
+         lang_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_lang_restart_ev]) {
+         lang_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_mod_unload_ev]) {
+         ldap_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_postparse_ev]) {
+         ldap_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldap_shutdown_ev]) {
+         ldap_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_ldaptab_mod_unload_ev]) {
+         ldaptab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_fmt_extra_iter_cb]) {
+         log_fmt_extra_iter_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_postparse_ev]) {
+         log_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_restart_ev]) {
+         log_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_restart_ev]) {
+         mcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_object_item_fail]) {
+         object_item_fail(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_object_item_ok]) {
+         object_item_ok(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_ctrl_listen_ev]) {
+         qos_ctrl_listen_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_mod_unload_ev]) {
+         qos_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_mod_unload_ev]) {
+         quotatab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_restart_ev]) {
+         quotatab_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_mod_unload_ev]) {
+         radius_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_restart_ev]) {
+         radius_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_radiustab_mod_unload_ev]) {
+         radiustab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_restart_ev]) {
+         redis_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redis_shutdown_ev]) {
+         redis_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_redistab_mod_unload_ev]) {
+         redistab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_regexp_exit_ev]) {
+         regexp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_regexp_restart_ev]) {
+         regexp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_mod_unload_ev]) {
+         rewrite_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_restart_ev]) {
+         rewrite_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rlimit_chroot_ev]) {
+         rlimit_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_rlimit_postparse_ev]) {
+         rlimit_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_class_ev]) {
+         sftp_ban_class_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_host_ev]) {
+         sftp_ban_host_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_ban_user_ev]) {
+         sftp_ban_user_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_chroot_ev]) {
+         sftp_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_exit_ev]) {
+         sftp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_max_conns_ev]) {
+         sftp_max_conns_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_mod_unload_ev]) {
+         sftp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_postparse_ev]) {
+         sftp_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_restart_ev]) {
+         sftp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_shutdown_ev]) {
+         sftp_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_sigusr2_ev]) {
+         sftp_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_timeoutlogin_ev]) {
+         sftp_timeoutlogin_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev]) {
+         sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftppam_exit_ev]) {
+         sftppam_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftppam_mod_unload_ev]) {
+         sftppam_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sftpsql_mod_unload_ev]) {
+         sftpsql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_mod_unload_ev]) {
+         shaper_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_postparse_ev]) {
+         shaper_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_restart_ev]) {
+         shaper_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_sess_exit_ev]) {
+         shaper_sess_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_shutdown_ev]) {
+         shaper_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shaper_sigusr2_ev]) {
+         shaper_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_mod_unload_ev]) {
+         shmcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_restart_ev]) {
+         shmcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shmcache_shutdown_ev]) {
+         shmcache_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_auth_code_ev]) {
+         snmp_auth_code_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_class_ev]) {
+         snmp_ban_ban_class_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_host_ev]) {
+         snmp_ban_ban_host_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_ban_user_ev]) {
+         snmp_ban_ban_user_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_client_disconn_ev]) {
+         snmp_ban_client_disconn_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ban_expired_ban_ev]) {
+         snmp_ban_expired_ban_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_cmd_invalid_ev]) {
+         snmp_cmd_invalid_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_exit_ev]) {
+         snmp_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_max_inst_ev]) {
+         snmp_max_inst_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_mod_unload_ev]) {
+         snmp_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_postparse_ev]) {
+         snmp_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_restart_ev]) {
+         snmp_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_shutdown_ev]) {
+         snmp_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev]) {
+         snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev]) {
+         snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev]) {
+         snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev]) {
+         snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev]) {
+         snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev]) {
+         snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev]) {
+         snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev]) {
+         snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev]) {
+         snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev]) {
+         snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev]) {
+         snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev]) {
+         snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_startup_ev]) {
+         snmp_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_idle_ev]) {
+         snmp_timeout_idle_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_login_ev]) {
+         snmp_timeout_login_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_noxfer_ev]) {
+         snmp_timeout_noxfer_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_timeout_stalled_ev]) {
+         snmp_timeout_stalled_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev]) {
+         snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev]) {
+         snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev]) {
+         snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_snmp_tls_verify_client_ev]) {
+         snmp_tls_verify_client_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mod_unload_ev]) {
+         sql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_load_ev]) {
+         sql_mysql_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_mysql_mod_unload_ev]) {
+         sql_mysql_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_mod_unload_ev]) {
+         sql_passwd_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_load_ev]) {
+         sql_postgres_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_postgres_mod_unload_ev]) {
+         sql_postgres_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_preparse_ev]) {
+         sql_preparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_load_ev]) {
+         sql_sqlite_mod_load_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev]) {
+         sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sqlodbc_mod_unload_ev]) {
+         sqlodbc_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_sqltab_mod_unload_ev]) {
+         sqltab_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev]) {
+         statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_mod_unload_ev]) {
+         statcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_postparse_ev]) {
+         statcache_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_restart_ev]) {
+         statcache_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_statcache_shutdown_ev]) {
+         statcache_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_mod_unload_ev]) {
+         systemd_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_postparse_ev]) {
+         systemd_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_restart_ev]) {
+         systemd_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_shutdown_ev]) {
+         systemd_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_systemd_startup_ev]) {
+         systemd_startup_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tab_copy_cb]) {
+         tab_copy_cb(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_test_visitf]) {
+         test_visitf(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_mcache_mod_unload_ev]) {
+         tls_mcache_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_mod_unload_ev]) {
+         tls_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_postparse_ev]) {
+         tls_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_redis_mod_unload_ev]) {
+         tls_redis_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_restart_ev]) {
+         tls_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_shutdown_ev]) {
+         tls_shutdown_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_tls_timeout_ev]) {
+         tls_timeout_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_uniqid_mod_unload_ev]) {
+         uniqid_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_uniqid_postparse_ev]) {
+         uniqid_postparse_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_mod_unload_ev]) {
+         wrap2_mod_unload_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_restart_ev]) {
+         wrap2_restart_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_session_ev]) {
+         xfer_timeout_session_ev(args);
+     }
+     else if (E.action_cb_signature == action_cb_signatures[action_cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }


// FP: add

@transform_standalone_add_dot@
expression E;
identifier FP_NAME = add;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.add_signature == add_signatures[add_ocsp_cache_add]) {
+         ocsp_cache_add(args);
+     }
+     else if (E.add_signature == add_signatures[add_sess_cache_add]) {
+         sess_cache_add(args);
+     }


// FP: cb

@transform_standalone_cb_dot@
expression E;
identifier FP_NAME = cb;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (E.cb_signature == cb_signatures[cb_array_item_fail]) {
+         array_item_fail(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_array_item_ok]) {
+         array_item_ok(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         auth_otp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         auth_pam_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         ban_anonrejectpasswords_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         ban_badprotocol_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         ban_clientconnectrate_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         ban_emptypassword_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         ban_maxclientsperclass_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         ban_maxclientsperhost_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         ban_maxclientsperuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         ban_maxcmdrate_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         ban_maxconnperhost_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         ban_maxhostsperuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         ban_maxloginattempts_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         ban_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         ban_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         ban_rootlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         ban_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         ban_timeoutidle_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         ban_timeoutlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         ban_timeoutnoxfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         ban_tlshandshake_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         ban_unhandledcmd_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         ban_userdefined_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_connected_ev]) {
+         core_connected_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_exit_ev]) {
+         core_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         core_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_restart_ev]) {
+         core_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_core_startup_ev]) {
+         core_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         ctrls_admin_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         ctrls_admin_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         ctrls_admin_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         ctrls_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         ctrls_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         delay_connect_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         delay_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         delay_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         delay_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         delay_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         digest_data_xfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         digest_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_do_cb]) {
+         do_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         do_with_remove_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         dynmasq_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         dynmasq_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         dynmasq_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_event_cb3]) {
+         event_cb3(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_any_ev]) {
+         exec_any_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         exec_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         exec_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         exec_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         facl_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         facl_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         facl_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         filetab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         forensic_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         fscache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         fxp_handle_abort(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         geoip_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         geoip_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         geoip_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         ifsess_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         ifsess_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         ifsess_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         lang_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         lang_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         ldap_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         ldap_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         ldap_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         ldaptab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         log_fmt_extra_iter_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         log_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_restart_ev]) {
+         log_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         mcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_object_item_fail]) {
+         object_item_fail(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_object_item_ok]) {
+         object_item_ok(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         qos_ctrl_listen_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         qos_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         quotatab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         quotatab_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         radius_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         radius_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         radiustab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         redis_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         redis_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         redistab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         regexp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         regexp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         rewrite_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         rewrite_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         rlimit_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         rlimit_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         sftp_ban_class_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         sftp_ban_host_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         sftp_ban_user_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         sftp_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         sftp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         sftp_max_conns_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         sftp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         sftp_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         sftp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         sftp_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         sftp_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         sftp_timeoutlogin_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         sftp_wrap_conn_denied_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         sftppam_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         sftppam_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         sftpsql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         shaper_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         shaper_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         shaper_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         shaper_sess_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         shaper_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         shaper_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         shmcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         shmcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         shmcache_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         snmp_auth_code_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         snmp_ban_ban_class_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         snmp_ban_ban_host_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         snmp_ban_ban_user_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         snmp_ban_client_disconn_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         snmp_ban_expired_ban_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         snmp_cmd_invalid_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         snmp_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         snmp_max_inst_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         snmp_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         snmp_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         snmp_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         snmp_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         snmp_ssh2_kex_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         snmp_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         snmp_timeout_idle_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         snmp_timeout_login_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         snmp_timeout_noxfer_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         snmp_timeout_stalled_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         snmp_tls_verify_client_err_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         snmp_tls_verify_client_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         sql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         sql_mysql_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         sql_mysql_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         sql_passwd_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         sql_postgres_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         sql_postgres_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         sql_preparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         sql_sqlite_mod_load_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         sql_sqlite_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         sqlodbc_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         sqltab_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         statcache_fs_statcache_clear_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         statcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         statcache_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         statcache_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         statcache_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         systemd_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         systemd_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         systemd_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         systemd_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         systemd_startup_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         tab_copy_cb(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_test_visitf]) {
+         test_visitf(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         tls_mcache_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         tls_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         tls_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         tls_redis_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         tls_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         tls_shutdown_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         tls_timeout_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         uniqid_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         uniqid_postparse_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         wrap2_mod_unload_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         wrap2_restart_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         xfer_timeout_session_ev(args);
+     }
+     else if (E.cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }


// FP: chdir

@transform_standalone_chdir_dot@
expression E;
identifier FP_NAME = chdir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_chdir(args);


// FP: chmod

@transform_standalone_chmod_dot@
expression E;
identifier FP_NAME = chmod;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.chmod_signature == chmod_signatures[chmod_statcache_fsio_chmod]) {
+         statcache_fsio_chmod(args);
+     }
+     else if (E.chmod_signature == chmod_signatures[chmod_sys_chmod]) {
+         sys_chmod(args);
+     }


// FP: chown

@transform_standalone_chown_dot@
expression E;
identifier FP_NAME = chown;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.chown_signature == chown_signatures[chown_statcache_fsio_chown]) {
+         statcache_fsio_chown(args);
+     }
+     else if (E.chown_signature == chown_signatures[chown_sys_chown]) {
+         sys_chown(args);
+     }


// FP: chroot

@transform_standalone_chroot_dot@
expression E;
identifier FP_NAME = chroot;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_chroot(args);


// FP: cleanup_cb

@transform_standalone_cleanup_cb_dot@
expression E;
identifier FP_NAME = cleanup_cb;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (E.cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }


// FP: clear

@transform_standalone_clear_dot@
expression E;
identifier FP_NAME = clear;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.clear_signature == clear_signatures[clear_ocsp_cache_clear]) {
+         ocsp_cache_clear(args);
+     }
+     else if (E.clear_signature == clear_signatures[clear_sess_cache_clear]) {
+         sess_cache_clear(args);
+     }


// FP: close

@transform_standalone_close_dot@
expression E;
identifier FP_NAME = close;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.close_signature == close_signatures[close_core_netio_close_cb]) {
+         core_netio_close_cb(args);
+     }
+     else if (E.close_signature == close_signatures[close_deflate_netio_close_cb]) {
+         deflate_netio_close_cb(args);
+     }
+     else if (E.close_signature == close_signatures[close_deflate_next_netio_close]) {
+         deflate_next_netio_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_ocsp_cache_close]) {
+         ocsp_cache_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_robots_fsio_close]) {
+         robots_fsio_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sess_cache_close]) {
+         sess_cache_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sftppam_driver_close]) {
+         sftppam_driver_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_sys_close]) {
+         sys_close(args);
+     }
+     else if (E.close_signature == close_signatures[close_tls_netio_close_cb]) {
+         tls_netio_close_cb(args);
+     }


// FP: closedir

@transform_standalone_closedir_dot@
expression E;
identifier FP_NAME = closedir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_closedir(args);


// FP: ctrls_cb

@transform_standalone_ctrls_cb_dot@
expression E;
identifier FP_NAME = ctrls_cb;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     NULL;


// FP: delete

@transform_standalone_delete_dot@
expression E;
identifier FP_NAME = delete;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.delete_signature == delete_signatures[delete_ocsp_cache_delete]) {
+         ocsp_cache_delete(args);
+     }
+     else if (E.delete_signature == delete_signatures[delete_sess_cache_delete]) {
+         sess_cache_delete(args);
+     }


// FP: entinsert

@transform_standalone_entinsert_dot@
expression E;
identifier FP_NAME = entinsert;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     entry_insert(args);


// FP: entremove

@transform_standalone_entremove_dot@
expression E;
identifier FP_NAME = entremove;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     entry_remove(args);


// FP: faccess

@transform_standalone_faccess_dot@
expression E;
identifier FP_NAME = faccess;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.faccess_signature == faccess_signatures[faccess_facl_fsio_faccess]) {
+         facl_fsio_faccess(args);
+     }
+     else if (E.faccess_signature == faccess_signatures[faccess_robots_fsio_faccess]) {
+         robots_fsio_faccess(args);
+     }
+     else if (E.faccess_signature == faccess_signatures[faccess_sys_faccess]) {
+         sys_faccess(args);
+     }


// FP: fchmod

@transform_standalone_fchmod_dot@
expression E;
identifier FP_NAME = fchmod;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.fchmod_signature == fchmod_signatures[fchmod_statcache_fsio_fchmod]) {
+         statcache_fsio_fchmod(args);
+     }
+     else if (E.fchmod_signature == fchmod_signatures[fchmod_sys_fchmod]) {
+         sys_fchmod(args);
+     }


// FP: fchown

@transform_standalone_fchown_dot@
expression E;
identifier FP_NAME = fchown;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.fchown_signature == fchown_signatures[fchown_statcache_fsio_fchown]) {
+         statcache_fsio_fchown(args);
+     }
+     else if (E.fchown_signature == fchown_signatures[fchown_sys_fchown]) {
+         sys_fchown(args);
+     }


// FP: fgetxattr

@transform_standalone_fgetxattr_dot@
expression E;
identifier FP_NAME = fgetxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_fgetxattr(args);


// FP: flistxattr

@transform_standalone_flistxattr_dot@
expression E;
identifier FP_NAME = flistxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_flistxattr(args);


// FP: fremovexattr

@transform_standalone_fremovexattr_dot@
expression E;
identifier FP_NAME = fremovexattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_fremovexattr(args);


// FP: fsetxattr

@transform_standalone_fsetxattr_dot@
expression E;
identifier FP_NAME = fsetxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_fsetxattr(args);


// FP: fstat

@transform_standalone_fstat_dot@
expression E;
identifier FP_NAME = fstat;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.fstat_signature == fstat_signatures[fstat_robots_fsio_fstat]) {
+         robots_fsio_fstat(args);
+     }
+     else if (E.fstat_signature == fstat_signatures[fstat_statcache_fsio_fstat]) {
+         statcache_fsio_fstat(args);
+     }
+     else if (E.fstat_signature == fstat_signatures[fstat_sys_fstat]) {
+         sys_fstat(args);
+     }


// FP: fsync

@transform_standalone_fsync_dot@
expression E;
identifier FP_NAME = fsync;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_fsync(args);


// FP: ftruncate

@transform_standalone_ftruncate_dot@
expression E;
identifier FP_NAME = ftruncate;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.ftruncate_signature == ftruncate_signatures[ftruncate_statcache_fsio_ftruncate]) {
+         statcache_fsio_ftruncate(args);
+     }
+     else if (E.ftruncate_signature == ftruncate_signatures[ftruncate_sys_ftruncate]) {
+         sys_ftruncate(args);
+     }


// FP: futimes

@transform_standalone_futimes_dot@
expression E;
identifier FP_NAME = futimes;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.futimes_signature == futimes_signatures[futimes_statcache_fsio_futimes]) {
+         statcache_fsio_futimes(args);
+     }
+     else if (E.futimes_signature == futimes_signatures[futimes_sys_futimes]) {
+         sys_futimes(args);
+     }


// FP: get

@transform_standalone_get_dot@
expression E;
identifier FP_NAME = get;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.get_signature == get_signatures[get_ocsp_cache_get]) {
+         ocsp_cache_get(args);
+     }
+     else if (E.get_signature == get_signatures[get_sess_cache_get]) {
+         sess_cache_get(args);
+     }


// FP: getxattr

@transform_standalone_getxattr_dot@
expression E;
identifier FP_NAME = getxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_getxattr(args);


// FP: keycmp

@transform_standalone_keycmp_dot@
expression E;
identifier FP_NAME = keycmp;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     key_cmp(args);


// FP: keyhash

@transform_standalone_keyhash_dot@
expression E;
identifier FP_NAME = keyhash;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     key_hash(args);


// FP: lchown

@transform_standalone_lchown_dot@
expression E;
identifier FP_NAME = lchown;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.lchown_signature == lchown_signatures[lchown_statcache_fsio_lchown]) {
+         statcache_fsio_lchown(args);
+     }
+     else if (E.lchown_signature == lchown_signatures[lchown_sys_lchown]) {
+         sys_lchown(args);
+     }


// FP: lgetxattr

@transform_standalone_lgetxattr_dot@
expression E;
identifier FP_NAME = lgetxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_lgetxattr(args);


// FP: link

@transform_standalone_link_dot@
expression E;
identifier FP_NAME = link;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_link(args);


// FP: listxattr

@transform_standalone_listxattr_dot@
expression E;
identifier FP_NAME = listxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_listxattr(args);


// FP: llistxattr

@transform_standalone_llistxattr_dot@
expression E;
identifier FP_NAME = llistxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_llistxattr(args);


// FP: lremovexattr

@transform_standalone_lremovexattr_dot@
expression E;
identifier FP_NAME = lremovexattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_lremovexattr(args);


// FP: lseek

@transform_standalone_lseek_dot@
expression E;
identifier FP_NAME = lseek;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_lseek(args);


// FP: lsetxattr

@transform_standalone_lsetxattr_dot@
expression E;
identifier FP_NAME = lsetxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_lsetxattr(args);


// FP: lstat

@transform_standalone_lstat_dot@
expression E;
identifier FP_NAME = lstat;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.lstat_signature == lstat_signatures[lstat_robots_fsio_lstat]) {
+         robots_fsio_lstat(args);
+     }
+     else if (E.lstat_signature == lstat_signatures[lstat_statcache_fsio_lstat]) {
+         statcache_fsio_lstat(args);
+     }
+     else if (E.lstat_signature == lstat_signatures[lstat_sys_lstat]) {
+         sys_lstat(args);
+     }


// FP: mkdir

@transform_standalone_mkdir_dot@
expression E;
identifier FP_NAME = mkdir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_mkdir(args);


// FP: open

@transform_standalone_open_dot@
expression E;
identifier FP_NAME = open;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.open_signature == open_signatures[open_core_netio_open_cb]) {
+         core_netio_open_cb(args);
+     }
+     else if (E.open_signature == open_signatures[open_deflate_netio_open_cb]) {
+         deflate_netio_open_cb(args);
+     }
+     else if (E.open_signature == open_signatures[open_deflate_next_netio_open]) {
+         deflate_next_netio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_ocsp_cache_open]) {
+         ocsp_cache_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_robots_fsio_open]) {
+         robots_fsio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sess_cache_open]) {
+         sess_cache_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sftppam_driver_open]) {
+         sftppam_driver_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_statcache_fsio_open]) {
+         statcache_fsio_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_sys_open]) {
+         sys_open(args);
+     }
+     else if (E.open_signature == open_signatures[open_tls_netio_open_cb]) {
+         tls_netio_open_cb(args);
+     }


// FP: opendir

@transform_standalone_opendir_dot@
expression E;
identifier FP_NAME = opendir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_opendir(args);


// FP: poll

@transform_standalone_poll_dot@
expression E;
identifier FP_NAME = poll;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.poll_signature == poll_signatures[poll_core_netio_poll_cb]) {
+         core_netio_poll_cb(args);
+     }
+     else if (E.poll_signature == poll_signatures[poll_tls_netio_poll_cb]) {
+         tls_netio_poll_cb(args);
+     }


// FP: postopen

@transform_standalone_postopen_dot@
expression E;
identifier FP_NAME = postopen;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.postopen_signature == postopen_signatures[postopen_core_netio_postopen_cb]) {
+         core_netio_postopen_cb(args);
+     }
+     else if (E.postopen_signature == postopen_signatures[postopen_tls_netio_postopen_cb]) {
+         tls_netio_postopen_cb(args);
+     }


// FP: pread

@transform_standalone_pread_dot@
expression E;
identifier FP_NAME = pread;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_pread(args);


// FP: pwrite

@transform_standalone_pwrite_dot@
expression E;
identifier FP_NAME = pwrite;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_pwrite(args);


// FP: read

@transform_standalone_read_dot@
expression E;
identifier FP_NAME = read;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.read_signature == read_signatures[read_core_netio_read_cb]) {
+         core_netio_read_cb(args);
+     }
+     else if (E.read_signature == read_signatures[read_deflate_netio_read_cb]) {
+         deflate_netio_read_cb(args);
+     }
+     else if (E.read_signature == read_signatures[read_deflate_next_netio_read]) {
+         deflate_next_netio_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_robots_fsio_read]) {
+         robots_fsio_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_sys_read]) {
+         sys_read(args);
+     }
+     else if (E.read_signature == read_signatures[read_tls_netio_read_cb]) {
+         tls_netio_read_cb(args);
+     }


// FP: readdir

@transform_standalone_readdir_dot@
expression E;
identifier FP_NAME = readdir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_readdir(args);


// FP: readlink

@transform_standalone_readlink_dot@
expression E;
identifier FP_NAME = readlink;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_readlink(args);


// FP: realpath

@transform_standalone_realpath_dot@
expression E;
identifier FP_NAME = realpath;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_realpath(args);


// FP: regtab_open

@transform_standalone_regtab_open_dot@
expression E;
identifier FP_NAME = regtab_open;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     srcopen(args);


// FP: remove

@transform_standalone_remove_dot@
expression E;
identifier FP_NAME = remove;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.remove_signature == remove_signatures[remove_0]) {
+         0;
+     }
+     else if (E.remove_signature == remove_signatures[remove_ocsp_cache_remove]) {
+         ocsp_cache_remove(args);
+     }
+     else if (E.remove_signature == remove_signatures[remove_sess_cache_remove]) {
+         sess_cache_remove(args);
+     }


// FP: removexattr

@transform_standalone_removexattr_dot@
expression E;
identifier FP_NAME = removexattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_removexattr(args);


// FP: rename

@transform_standalone_rename_dot@
expression E;
identifier FP_NAME = rename;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.rename_signature == rename_signatures[rename_statcache_fsio_rename]) {
+         statcache_fsio_rename(args);
+     }
+     else if (E.rename_signature == rename_signatures[rename_sys_rename]) {
+         sys_rename(args);
+     }


// FP: reopen

@transform_standalone_reopen_dot@
expression E;
identifier FP_NAME = reopen;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.reopen_signature == reopen_signatures[reopen_core_netio_reopen_cb]) {
+         core_netio_reopen_cb(args);
+     }
+     else if (E.reopen_signature == reopen_signatures[reopen_tls_netio_reopen_cb]) {
+         tls_netio_reopen_cb(args);
+     }


// FP: rmdir

@transform_standalone_rmdir_dot@
expression E;
identifier FP_NAME = rmdir;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_rmdir(args);


// FP: setxattr

@transform_standalone_setxattr_dot@
expression E;
identifier FP_NAME = setxattr;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_setxattr(args);


// FP: shutdown

@transform_standalone_shutdown_dot@
expression E;
identifier FP_NAME = shutdown;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.shutdown_signature == shutdown_signatures[shutdown_core_netio_shutdown_cb]) {
+         core_netio_shutdown_cb(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_deflate_netio_shutdown_cb]) {
+         deflate_netio_shutdown_cb(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_deflate_next_netio_shutdown]) {
+         deflate_next_netio_shutdown(args);
+     }
+     else if (E.shutdown_signature == shutdown_signatures[shutdown_tls_netio_shutdown_cb]) {
+         tls_netio_shutdown_cb(args);
+     }


// FP: stat

@transform_standalone_stat_dot@
expression E;
identifier FP_NAME = stat;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.stat_signature == stat_signatures[stat_robots_fsio_stat]) {
+         robots_fsio_stat(args);
+     }
+     else if (E.stat_signature == stat_signatures[stat_statcache_fsio_stat]) {
+         statcache_fsio_stat(args);
+     }
+     else if (E.stat_signature == stat_signatures[stat_sys_stat]) {
+         sys_stat(args);
+     }


// FP: status

@transform_standalone_status_dot@
expression E;
identifier FP_NAME = status;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.status_signature == status_signatures[status_ocsp_cache_status]) {
+         ocsp_cache_status(args);
+     }
+     else if (E.status_signature == status_signatures[status_sess_cache_status]) {
+         sess_cache_status(args);
+     }


// FP: symlink

@transform_standalone_symlink_dot@
expression E;
identifier FP_NAME = symlink;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     sys_symlink(args);


// FP: tab_close

@transform_standalone_tab_close_dot@
expression E;
identifier FP_NAME = tab_close;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_close_signature == tab_close_signatures[tab_close_filetab_close]) {
+         filetab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_filetab_close_cb]) {
+         filetab_close_cb(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_ldaptab_close]) {
+         ldaptab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_radiustab_close]) {
+         radiustab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_redistab_close_cb]) {
+         redistab_close_cb(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_sqltab_close]) {
+         sqltab_close(args);
+     }
+     else if (E.tab_close_signature == tab_close_signatures[tab_close_sqltab_close_cb]) {
+         sqltab_close_cb(args);
+     }


// FP: tab_create

@transform_standalone_tab_create_dot@
expression E;
identifier FP_NAME = tab_create;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_create_signature == tab_create_signatures[tab_create_filetab_create]) {
+         filetab_create(args);
+     }
+     else if (E.tab_create_signature == tab_create_signatures[tab_create_sqltab_create]) {
+         sqltab_create(args);
+     }


// FP: tab_lookup

@transform_standalone_tab_lookup_dot@
expression E;
identifier FP_NAME = tab_lookup;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_filetab_lookup]) {
+         filetab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_ldaptab_lookup]) {
+         ldaptab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_radiustab_lookup]) {
+         radiustab_lookup(args);
+     }
+     else if (E.tab_lookup_signature == tab_lookup_signatures[tab_lookup_sqltab_lookup]) {
+         sqltab_lookup(args);
+     }


// FP: tab_read

@transform_standalone_tab_read_dot@
expression E;
identifier FP_NAME = tab_read;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_read_signature == tab_read_signatures[tab_read_filetab_read]) {
+         filetab_read(args);
+     }
+     else if (E.tab_read_signature == tab_read_signatures[tab_read_sqltab_read]) {
+         sqltab_read(args);
+     }


// FP: tab_rlock

@transform_standalone_tab_rlock_dot@
expression E;
identifier FP_NAME = tab_rlock;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_rlock_signature == tab_rlock_signatures[tab_rlock_filetab_rlock]) {
+         filetab_rlock(args);
+     }
+     else if (E.tab_rlock_signature == tab_rlock_signatures[tab_rlock_sqltab_rlock]) {
+         sqltab_rlock(args);
+     }


// FP: tab_unlock

@transform_standalone_tab_unlock_dot@
expression E;
identifier FP_NAME = tab_unlock;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_unlock_signature == tab_unlock_signatures[tab_unlock_filetab_unlock]) {
+         filetab_unlock(args);
+     }
+     else if (E.tab_unlock_signature == tab_unlock_signatures[tab_unlock_sqltab_unlock]) {
+         sqltab_unlock(args);
+     }


// FP: tab_verify

@transform_standalone_tab_verify_dot@
expression E;
identifier FP_NAME = tab_verify;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_verify_signature == tab_verify_signatures[tab_verify_filetab_verify]) {
+         filetab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_ldaptab_verify]) {
+         ldaptab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_radiustab_verify]) {
+         radiustab_verify(args);
+     }
+     else if (E.tab_verify_signature == tab_verify_signatures[tab_verify_sqltab_verify]) {
+         sqltab_verify(args);
+     }


// FP: tab_wlock

@transform_standalone_tab_wlock_dot@
expression E;
identifier FP_NAME = tab_wlock;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_wlock_signature == tab_wlock_signatures[tab_wlock_filetab_wlock]) {
+         filetab_wlock(args);
+     }
+     else if (E.tab_wlock_signature == tab_wlock_signatures[tab_wlock_sqltab_wlock]) {
+         sqltab_wlock(args);
+     }


// FP: tab_write

@transform_standalone_tab_write_dot@
expression E;
identifier FP_NAME = tab_write;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.tab_write_signature == tab_write_signatures[tab_write_filetab_write]) {
+         filetab_write(args);
+     }
+     else if (E.tab_write_signature == tab_write_signatures[tab_write_sqltab_write]) {
+         sqltab_write(args);
+     }


// FP: truncate

@transform_standalone_truncate_dot@
expression E;
identifier FP_NAME = truncate;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.truncate_signature == truncate_signatures[truncate_statcache_fsio_truncate]) {
+         statcache_fsio_truncate(args);
+     }
+     else if (E.truncate_signature == truncate_signatures[truncate_sys_truncate]) {
+         sys_truncate(args);
+     }


// FP: unlink

@transform_standalone_unlink_dot@
expression E;
identifier FP_NAME = unlink;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.unlink_signature == unlink_signatures[unlink_robots_fsio_unlink]) {
+         robots_fsio_unlink(args);
+     }
+     else if (E.unlink_signature == unlink_signatures[unlink_statcache_fsio_unlink]) {
+         statcache_fsio_unlink(args);
+     }
+     else if (E.unlink_signature == unlink_signatures[unlink_sys_unlink]) {
+         sys_unlink(args);
+     }


// FP: utimes

@transform_standalone_utimes_dot@
expression E;
identifier FP_NAME = utimes;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.utimes_signature == utimes_signatures[utimes_statcache_fsio_utimes]) {
+         statcache_fsio_utimes(args);
+     }
+     else if (E.utimes_signature == utimes_signatures[utimes_sys_utimes]) {
+         sys_utimes(args);
+     }


// FP: write

@transform_standalone_write_dot@
expression E;
identifier FP_NAME = write;
expression list args;
@@
- E.FP_NAME(args);
+ // E.FP_NAME(args);
+     if (E.write_signature == write_signatures[write_core_netio_write_cb]) {
+         core_netio_write_cb(args);
+     }
+     else if (E.write_signature == write_signatures[write_deflate_netio_write_cb]) {
+         deflate_netio_write_cb(args);
+     }
+     else if (E.write_signature == write_signatures[write_deflate_next_netio_write]) {
+         deflate_next_netio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_quotatab_fsio_write]) {
+         quotatab_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_robots_fsio_write]) {
+         robots_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_statcache_fsio_write]) {
+         statcache_fsio_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_sys_write]) {
+         sys_write(args);
+     }
+     else if (E.write_signature == write_signatures[write_tls_netio_write_cb]) {
+         tls_netio_write_cb(args);
+     }

// Total standalone dot rules: 76

