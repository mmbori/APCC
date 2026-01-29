// Auto-generated Coccinelle script for function pointer parameter calls
// Only transforms: fp_name(args)
// Does NOT transform: obj->fp_name(args) or obj.fp_name(args)
//
// Patterns:
//   1. fp_name(args);           -> direct call or if-else chain
//   2. rc = fp_name(args);      -> direct call or if-else chain
//   3. return fp_name(args);    -> direct call or if-else chain
//
// Features:
//   - Handles NULL/0 assignments
//   - Uses int comparison (not memcmp)
//   - Signatures: fp_name_signature == fp_name_signatures[fp_name_func]
//
// Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

// ===== FUNCTION POINTER PARAMETER CALL TRANSFORMATION =====
// Transform fp_name(args) calls within fn_name
// Does NOT transform obj->fp_name() or obj.fp_name()
// Uses int comparison with signatures enum array


// Function: get_fs_info, FP param: dumpf (seq: 4)
// Candidates: NULL, event_dump, stash_dump, statcache_dumpf, table_dump

// Multi-candidate: assignment
@transform_get_fs_info_dumpf_assign@
identifier fn = get_fs_info;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         E = event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         E = stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         E = statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         E = table_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_get_fs_info_dumpf_standalone@
identifier fn = get_fs_info;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         table_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_get_fs_info_dumpf_return@
identifier fn = get_fs_info;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         return event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         return stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         return statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         return table_dump(args);
+     }
...>
}

// Function: json_set_oom, FP param: oom (seq: 1)
// Candidates: NULL, json_oom

// Multi-candidate: assignment
@transform_json_set_oom_oom_assign@
identifier fn = json_set_oom;
identifier fp = oom;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (oom_signature == oom_signatures[oom_NULL]) {
+         E = NULL;
+     }
+     else if (oom_signature == oom_signatures[oom_json_oom]) {
+         E = json_oom(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_json_set_oom_oom_standalone@
identifier fn = json_set_oom;
identifier fp = oom;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (oom_signature == oom_signatures[oom_NULL]) {
+         NULL;
+     }
+     else if (oom_signature == oom_signatures[oom_json_oom]) {
+         json_oom(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_json_set_oom_oom_return@
identifier fn = json_set_oom;
identifier fp = oom;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (oom_signature == oom_signatures[oom_NULL]) {
+         return NULL;
+     }
+     else if (oom_signature == oom_signatures[oom_json_oom]) {
+         return json_oom(args);
+     }
...>
}

// Function: modules_list2, FP param: listf (seq: 1)
// Candidates: NULL, module_listf

// Multi-candidate: assignment
@transform_modules_list2_listf_assign@
identifier fn = modules_list2;
identifier fp = listf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (listf_signature == listf_signatures[listf_NULL]) {
+         E = NULL;
+     }
+     else if (listf_signature == listf_signatures[listf_module_listf]) {
+         E = module_listf(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_modules_list2_listf_standalone@
identifier fn = modules_list2;
identifier fp = listf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (listf_signature == listf_signatures[listf_NULL]) {
+         NULL;
+     }
+     else if (listf_signature == listf_signatures[listf_module_listf]) {
+         module_listf(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_modules_list2_listf_return@
identifier fn = modules_list2;
identifier fp = listf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (listf_signature == listf_signatures[listf_NULL]) {
+         return NULL;
+     }
+     else if (listf_signature == listf_signatures[listf_module_listf]) {
+         return module_listf(args);
+     }
...>
}

// Function: pr_cmd_set_handler, FP param: handler (seq: 1)
// Candidates: NULL, sftp_cmd_loop

// Multi-candidate: assignment
@transform_pr_cmd_set_handler_handler_assign@
identifier fn = pr_cmd_set_handler;
identifier fp = handler;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (handler_signature == handler_signatures[handler_NULL]) {
+         E = NULL;
+     }
+     else if (handler_signature == handler_signatures[handler_sftp_cmd_loop]) {
+         E = sftp_cmd_loop(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_cmd_set_handler_handler_standalone@
identifier fn = pr_cmd_set_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (handler_signature == handler_signatures[handler_NULL]) {
+         NULL;
+     }
+     else if (handler_signature == handler_signatures[handler_sftp_cmd_loop]) {
+         sftp_cmd_loop(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_cmd_set_handler_handler_return@
identifier fn = pr_cmd_set_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (handler_signature == handler_signatures[handler_NULL]) {
+         return NULL;
+     }
+     else if (handler_signature == handler_signatures[handler_sftp_cmd_loop]) {
+         return sftp_cmd_loop(args);
+     }
...>
}

// Function: pr_config_dump, FP param: dumpf (seq: 1)
// Candidates: NULL, event_dump, stash_dump, statcache_dumpf, table_dump

// Multi-candidate: assignment
@transform_pr_config_dump_dumpf_assign@
identifier fn = pr_config_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         E = event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         E = stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         E = statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         E = table_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_config_dump_dumpf_standalone@
identifier fn = pr_config_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         table_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_config_dump_dumpf_return@
identifier fn = pr_config_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         return event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         return stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         return statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         return table_dump(args);
+     }
...>
}

// Function: pr_ctrls_register, FP param: cb (seq: 4)
// Candidates: NULL, act_cb, ctrls_test2_cb, ctrls_test_cb, delay_handle_delay, dynmasq_handle_dynmasq, shaper_handle_shaper, tls_handle_tls

// Multi-candidate: assignment
@transform_pr_ctrls_register_cb_assign@
identifier fn = pr_ctrls_register;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_act_cb]) {
+         E = act_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         E = ctrls_test2_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         E = ctrls_test_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         E = delay_handle_delay(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         E = dynmasq_handle_dynmasq(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         E = shaper_handle_shaper(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         E = tls_handle_tls(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_ctrls_register_cb_standalone@
identifier fn = pr_ctrls_register;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_act_cb]) {
+         act_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_ctrls_register_cb_return@
identifier fn = pr_ctrls_register;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_act_cb]) {
+         return act_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
...>
}

// Function: pr_ctrls_register, FP param: ctrls_cb (seq: 4)
// Candidates: NULL, act_cb, ctrls_test2_cb, ctrls_test_cb, delay_handle_delay, dynmasq_handle_dynmasq, shaper_handle_shaper, tls_handle_tls

// Multi-candidate: assignment
@transform_pr_ctrls_register_ctrls_cb_assign@
identifier fn = pr_ctrls_register;
identifier fp = ctrls_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_NULL]) {
+         E = NULL;
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_act_cb]) {
+         E = act_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb]) {
+         E = ctrls_test2_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test_cb]) {
+         E = ctrls_test_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_delay_handle_delay]) {
+         E = delay_handle_delay(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq]) {
+         E = dynmasq_handle_dynmasq(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper]) {
+         E = shaper_handle_shaper(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_tls_handle_tls]) {
+         E = tls_handle_tls(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_ctrls_register_ctrls_cb_standalone@
identifier fn = pr_ctrls_register;
identifier fp = ctrls_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_NULL]) {
+         NULL;
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_act_cb]) {
+         act_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb]) {
+         ctrls_test2_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test_cb]) {
+         ctrls_test_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_delay_handle_delay]) {
+         delay_handle_delay(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq]) {
+         dynmasq_handle_dynmasq(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper]) {
+         shaper_handle_shaper(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_tls_handle_tls]) {
+         tls_handle_tls(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_ctrls_register_ctrls_cb_return@
identifier fn = pr_ctrls_register;
identifier fp = ctrls_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_NULL]) {
+         return NULL;
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_act_cb]) {
+         return act_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb]) {
+         return ctrls_test2_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_ctrls_test_cb]) {
+         return ctrls_test_cb(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_delay_handle_delay]) {
+         return delay_handle_delay(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq]) {
+         return dynmasq_handle_dynmasq(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper]) {
+         return shaper_handle_shaper(args);
+     }
+     else if (ctrls_cb_signature == ctrls_cb_signatures[ctrls_cb_tls_handle_tls]) {
+         return tls_handle_tls(args);
+     }
...>
}

// Function: pr_dirs_dump, FP param: dumpf (seq: 1)
// Candidates: NULL, event_dump, stash_dump, statcache_dumpf, table_dump

// Multi-candidate: assignment
@transform_pr_dirs_dump_dumpf_assign@
identifier fn = pr_dirs_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         E = event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         E = stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         E = statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         E = table_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_dirs_dump_dumpf_standalone@
identifier fn = pr_dirs_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         table_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_dirs_dump_dumpf_return@
identifier fn = pr_dirs_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         return event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         return stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         return statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         return table_dump(args);
+     }
...>
}

// Function: pr_event_dump, FP param: dumpf (seq: 1)
// Candidates: NULL, event_dump

// Multi-candidate: assignment
@transform_pr_event_dump_dumpf_assign@
identifier fn = pr_event_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         E = event_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_event_dump_dumpf_standalone@
identifier fn = pr_event_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         event_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_event_dump_dumpf_return@
identifier fn = pr_event_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         return event_dump(args);
+     }
...>
}

// Function: pr_event_register, FP param: cb (seq: 3)
// Candidates: NULL, auth_exit_ev, auth_otp_exit_ev, auth_otp_mod_unload_ev, auth_otp_sess_reinit_ev, auth_pam_exit_ev, auth_sess_reinit_ev, auth_unix_exit_ev, auth_unix_sess_reinit_ev, authfile_sess_reinit_ev, ban_anonrejectpasswords_ev, ban_badprotocol_ev, ban_clientconnectrate_ev, ban_emptypassword_ev, ban_maxclientsperclass_ev, ban_maxclientsperhost_ev, ban_maxclientsperuser_ev, ban_maxcmdrate_ev, ban_maxconnperhost_ev, ban_maxhostsperuser_ev, ban_maxloginattempts_ev, ban_maxloginattemptsfromuser_ev, ban_mod_unload_ev, ban_postparse_ev, ban_restart_ev, ban_rootlogin_ev, ban_sess_reinit_ev, ban_shutdown_ev, ban_timeoutidle_ev, ban_timeoutlogin_ev, ban_timeoutnoxfer_ev, ban_tlshandshake_ev, ban_unhandledcmd_ev, ban_userdefined_ev, cap_sess_reinit_ev, core_chroot_ev, core_connected_ev, core_exit_ev, core_postparse_ev, core_restart_ev, core_startup_ev, ctrls_admin_mod_unload_ev, ctrls_admin_restart_ev, ctrls_admin_startup_ev, ctrls_postparse_ev, ctrls_restart_ev, ctrls_shutdown_ev, define_restart_ev, deflate_sess_reinit_ev, delay_connect_ev, delay_mod_unload_ev, delay_postparse_ev, delay_restart_ev, delay_sess_reinit_ev, delay_shutdown_ev, digest_data_xfer_ev, digest_mod_unload_ev, digest_sess_reinit_ev, dnsbl_sess_reinit_ev, dso_restart_ev, dynmasq_mod_unload_ev, dynmasq_postparse_ev, dynmasq_restart_ev, event_cb, event_cb2, event_cb3, exec_any_ev, exec_mod_unload_ev, exec_postparse_ev, exec_restart_ev, exec_sess_reinit_ev, facl_mod_unload_ev, facl_postparse_ev, facl_restart_ev, facts_sess_reinit_ev, filetab_mod_unload_ev, forensic_exit_ev, forensic_log_ev, forensic_mod_unload_ev, forensic_sess_reinit_ev, fscache_mod_unload_ev, geoip_mod_unload_ev, geoip_postparse_ev, geoip_restart_ev, ident_sess_reinit_ev, ifsess_chroot_ev, ifsess_mod_unload_ev, ifsess_postparse_ev, lang_postparse_ev, lang_restart_ev, ldap_mod_unload_ev, ldap_postparse_ev, ldap_sess_reinit_ev, ldap_shutdown_ev, ldaptab_mod_unload_ev, log_exit_ev, log_postparse_ev, log_restart_ev, log_sess_reinit_ev, log_xfer_stalled_ev, mcache_exit_ev, mcache_restart_ev, mcache_sess_reinit_ev, qos_ctrl_listen_ev, qos_data_connect_ev, qos_data_listen_ev, qos_mod_unload_ev, qos_sess_reinit_ev, quotatab_exit_ev, quotatab_mod_unload_ev, quotatab_restart_ev, quotatab_sess_reinit_ev, radius_exit_ev, radius_mod_unload_ev, radius_restart_ev, radius_sess_reinit_ev, radiustab_mod_unload_ev, redis_restart_ev, redis_sess_reinit_ev, redis_shutdown_ev, redistab_mod_unload_ev, regexp_exit_ev, regexp_restart_ev, rewrite_exit_ev, rewrite_mod_unload_ev, rewrite_restart_ev, rewrite_rewrite_home_ev, rewrite_sess_reinit_ev, rlimit_chroot_ev, rlimit_postparse_ev, sftp_ban_class_ev, sftp_ban_host_ev, sftp_ban_user_ev, sftp_chroot_ev, sftp_exit_ev, sftp_max_conns_ev, sftp_mod_unload_ev, sftp_postparse_ev, sftp_restart_ev, sftp_shutdown_ev, sftp_sigusr2_ev, sftp_timeoutlogin_ev, sftp_wrap_conn_denied_ev, sftppam_exit_ev, sftppam_mod_unload_ev, sftpsql_mod_unload_ev, shaper_mod_unload_ev, shaper_postparse_ev, shaper_restart_ev, shaper_sess_exit_ev, shaper_shutdown_ev, shaper_sigusr2_ev, shmcache_mod_unload_ev, shmcache_restart_ev, shmcache_shutdown_ev, site_misc_sess_reinit_ev, snmp_auth_code_ev, snmp_ban_ban_class_ev, snmp_ban_ban_host_ev, snmp_ban_ban_user_ev, snmp_ban_client_disconn_ev, snmp_ban_expired_ban_ev, snmp_cmd_invalid_ev, snmp_exit_ev, snmp_max_inst_ev, snmp_mod_unload_ev, snmp_postparse_ev, snmp_restart_ev, snmp_shutdown_ev, snmp_ssh2_auth_hostbased_err_ev, snmp_ssh2_auth_hostbased_ev, snmp_ssh2_auth_kbdint_err_ev, snmp_ssh2_auth_kbdint_ev, snmp_ssh2_auth_passwd_err_ev, snmp_ssh2_auth_passwd_ev, snmp_ssh2_auth_publickey_err_ev, snmp_ssh2_auth_publickey_ev, snmp_ssh2_c2s_compress_ev, snmp_ssh2_kex_err_ev, snmp_ssh2_s2c_compress_ev, snmp_ssh2_scp_sess_closed_ev, snmp_ssh2_scp_sess_opened_ev, snmp_ssh2_sftp_proto_version_ev, snmp_ssh2_sftp_sess_closed_ev, snmp_ssh2_sftp_sess_opened_ev, snmp_startup_ev, snmp_timeout_idle_ev, snmp_timeout_login_ev, snmp_timeout_noxfer_ev, snmp_timeout_stalled_ev, snmp_tls_ctrl_handshake_err_ev, snmp_tls_data_handshake_err_ev, snmp_tls_verify_client_err_ev, snmp_tls_verify_client_ev, sql_chroot_ev, sql_eventlog_ev, sql_exit_ev, sql_mod_unload_ev, sql_mysql_mod_load_ev, sql_mysql_mod_unload_ev, sql_passwd_mod_unload_ev, sql_passwd_sess_reinit_ev, sql_postgres_mod_load_ev, sql_postgres_mod_unload_ev, sql_preparse_ev, sql_sess_reinit_ev, sql_sqlite_mod_load_ev, sql_sqlite_mod_unload_ev, sqlodbc_mod_unload_ev, sqltab_mod_unload_ev, statcache_fs_statcache_clear_ev, statcache_mod_unload_ev, statcache_postparse_ev, statcache_restart_ev, statcache_sess_reinit_ev, statcache_shutdown_ev, systemd_mod_unload_ev, systemd_postparse_ev, systemd_restart_ev, systemd_shutdown_ev, systemd_startup_ev, tls_exit_ev, tls_mcache_mod_unload_ev, tls_mod_unload_ev, tls_postparse_ev, tls_redis_mod_unload_ev, tls_restart_ev, tls_sess_reinit_ev, tls_shutdown_ev, tls_timeout_ev, trace_restart_ev, uniqid_mod_unload_ev, uniqid_postparse_ev, wrap2_exit_ev, wrap2_mod_unload_ev, wrap2_restart_ev, wrap2_sess_reinit_ev, wrap_sess_reinit_ev, xfer_exit_ev, xfer_sess_reinit_ev, xfer_sigusr2_ev, xfer_timeout_session_ev, xfer_timeout_stalled_ev

// Multi-candidate: assignment
@transform_pr_event_register_cb_assign@
identifier fn = pr_event_register;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         E = auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         E = auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         E = auth_otp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         E = auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         E = auth_pam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         E = auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         E = auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         E = auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         E = authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         E = ban_anonrejectpasswords_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         E = ban_badprotocol_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         E = ban_clientconnectrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         E = ban_emptypassword_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         E = ban_maxclientsperclass_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         E = ban_maxclientsperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         E = ban_maxclientsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         E = ban_maxcmdrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         E = ban_maxconnperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         E = ban_maxhostsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         E = ban_maxloginattempts_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         E = ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         E = ban_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         E = ban_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         E = ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         E = ban_rootlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         E = ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         E = ban_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         E = ban_timeoutidle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         E = ban_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         E = ban_timeoutnoxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         E = ban_tlshandshake_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         E = ban_unhandledcmd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         E = ban_userdefined_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         E = cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         E = core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_connected_ev]) {
+         E = core_connected_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_exit_ev]) {
+         E = core_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         E = core_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_restart_ev]) {
+         E = core_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_startup_ev]) {
+         E = core_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         E = ctrls_admin_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         E = ctrls_admin_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         E = ctrls_admin_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         E = ctrls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         E = ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         E = ctrls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         E = define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         E = deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         E = delay_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         E = delay_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         E = delay_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         E = delay_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         E = delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         E = delay_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         E = digest_data_xfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         E = digest_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         E = digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         E = dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         E = dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         E = dynmasq_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         E = dynmasq_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         E = dynmasq_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         E = event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         E = event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb3]) {
+         E = event_cb3(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_any_ev]) {
+         E = exec_any_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         E = exec_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         E = exec_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         E = exec_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         E = exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         E = facl_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         E = facl_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         E = facl_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         E = facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         E = filetab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         E = forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         E = forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         E = forensic_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         E = forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         E = fscache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         E = geoip_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         E = geoip_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         E = geoip_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         E = ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         E = ifsess_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         E = ifsess_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         E = ifsess_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         E = lang_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         E = lang_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         E = ldap_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         E = ldap_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         E = ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         E = ldap_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         E = ldaptab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         E = log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         E = log_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_restart_ev]) {
+         E = log_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         E = log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         E = log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         E = mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         E = mcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         E = mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         E = qos_ctrl_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         E = qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         E = qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         E = qos_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         E = qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         E = quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         E = quotatab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         E = quotatab_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         E = quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         E = radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         E = radius_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         E = radius_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         E = radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         E = radiustab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         E = redis_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         E = redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         E = redis_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         E = redistab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         E = regexp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         E = regexp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         E = rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         E = rewrite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         E = rewrite_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         E = rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         E = rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         E = rlimit_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         E = rlimit_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         E = sftp_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         E = sftp_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         E = sftp_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         E = sftp_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         E = sftp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         E = sftp_max_conns_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         E = sftp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         E = sftp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         E = sftp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         E = sftp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         E = sftp_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         E = sftp_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         E = sftp_wrap_conn_denied_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         E = sftppam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         E = sftppam_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         E = sftpsql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         E = shaper_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         E = shaper_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         E = shaper_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         E = shaper_sess_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         E = shaper_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         E = shaper_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         E = shmcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         E = shmcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         E = shmcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         E = site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         E = snmp_auth_code_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         E = snmp_ban_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         E = snmp_ban_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         E = snmp_ban_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         E = snmp_ban_client_disconn_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         E = snmp_ban_expired_ban_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         E = snmp_cmd_invalid_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         E = snmp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         E = snmp_max_inst_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         E = snmp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         E = snmp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         E = snmp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         E = snmp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         E = snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         E = snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         E = snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         E = snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         E = snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         E = snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         E = snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         E = snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         E = snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         E = snmp_ssh2_kex_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         E = snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         E = snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         E = snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         E = snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         E = snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         E = snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         E = snmp_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         E = snmp_timeout_idle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         E = snmp_timeout_login_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         E = snmp_timeout_noxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         E = snmp_timeout_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         E = snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         E = snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         E = snmp_tls_verify_client_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         E = snmp_tls_verify_client_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         E = sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         E = sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         E = sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         E = sql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         E = sql_mysql_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         E = sql_mysql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         E = sql_passwd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         E = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         E = sql_postgres_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         E = sql_postgres_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         E = sql_preparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         E = sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         E = sql_sqlite_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         E = sql_sqlite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         E = sqlodbc_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         E = sqltab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         E = statcache_fs_statcache_clear_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         E = statcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         E = statcache_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         E = statcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         E = statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         E = statcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         E = systemd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         E = systemd_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         E = systemd_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         E = systemd_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         E = systemd_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         E = tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         E = tls_mcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         E = tls_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         E = tls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         E = tls_redis_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         E = tls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         E = tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         E = tls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         E = tls_timeout_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         E = trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         E = uniqid_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         E = uniqid_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         E = wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         E = wrap2_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         E = wrap2_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         E = wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         E = wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         E = xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         E = xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         E = xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         E = xfer_timeout_session_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         E = xfer_timeout_stalled_ev(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_event_register_cb_standalone@
identifier fn = pr_event_register;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         auth_otp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         auth_pam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         ban_anonrejectpasswords_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         ban_badprotocol_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         ban_clientconnectrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         ban_emptypassword_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         ban_maxclientsperclass_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         ban_maxclientsperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         ban_maxclientsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         ban_maxcmdrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         ban_maxconnperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         ban_maxhostsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         ban_maxloginattempts_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         ban_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         ban_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         ban_rootlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         ban_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         ban_timeoutidle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         ban_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         ban_timeoutnoxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         ban_tlshandshake_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         ban_unhandledcmd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         ban_userdefined_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_connected_ev]) {
+         core_connected_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_exit_ev]) {
+         core_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         core_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_restart_ev]) {
+         core_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_startup_ev]) {
+         core_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         ctrls_admin_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         ctrls_admin_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         ctrls_admin_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         ctrls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         ctrls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         delay_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         delay_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         delay_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         delay_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         delay_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         digest_data_xfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         digest_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         dynmasq_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         dynmasq_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         dynmasq_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb3]) {
+         event_cb3(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_any_ev]) {
+         exec_any_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         exec_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         exec_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         exec_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         facl_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         facl_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         facl_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         filetab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         forensic_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         fscache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         geoip_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         geoip_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         geoip_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         ifsess_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         ifsess_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         ifsess_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         lang_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         lang_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         ldap_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         ldap_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         ldap_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         ldaptab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         log_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_restart_ev]) {
+         log_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         mcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         qos_ctrl_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         qos_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         quotatab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         quotatab_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         radius_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         radius_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         radiustab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         redis_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         redis_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         redistab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         regexp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         regexp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         rewrite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         rewrite_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         rlimit_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         rlimit_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         sftp_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         sftp_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         sftp_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         sftp_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         sftp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         sftp_max_conns_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         sftp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         sftp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         sftp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         sftp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         sftp_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         sftp_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         sftp_wrap_conn_denied_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         sftppam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         sftppam_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         sftpsql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         shaper_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         shaper_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         shaper_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         shaper_sess_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         shaper_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         shaper_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         shmcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         shmcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         shmcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         snmp_auth_code_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         snmp_ban_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         snmp_ban_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         snmp_ban_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         snmp_ban_client_disconn_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         snmp_ban_expired_ban_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         snmp_cmd_invalid_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         snmp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         snmp_max_inst_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         snmp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         snmp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         snmp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         snmp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         snmp_ssh2_kex_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         snmp_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         snmp_timeout_idle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         snmp_timeout_login_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         snmp_timeout_noxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         snmp_timeout_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         snmp_tls_verify_client_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         snmp_tls_verify_client_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         sql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         sql_mysql_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         sql_mysql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         sql_passwd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         sql_postgres_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         sql_postgres_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         sql_preparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         sql_sqlite_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         sql_sqlite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         sqlodbc_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         sqltab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         statcache_fs_statcache_clear_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         statcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         statcache_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         statcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         statcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         systemd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         systemd_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         systemd_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         systemd_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         systemd_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         tls_mcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         tls_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         tls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         tls_redis_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         tls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         tls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         tls_timeout_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         uniqid_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         uniqid_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         wrap2_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         wrap2_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         xfer_timeout_session_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_event_register_cb_return@
identifier fn = pr_event_register;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_mod_unload_ev]) {
+         return auth_otp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_pam_exit_ev]) {
+         return auth_pam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_anonrejectpasswords_ev]) {
+         return ban_anonrejectpasswords_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_badprotocol_ev]) {
+         return ban_badprotocol_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_clientconnectrate_ev]) {
+         return ban_clientconnectrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_emptypassword_ev]) {
+         return ban_emptypassword_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperclass_ev]) {
+         return ban_maxclientsperclass_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperhost_ev]) {
+         return ban_maxclientsperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxclientsperuser_ev]) {
+         return ban_maxclientsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxcmdrate_ev]) {
+         return ban_maxcmdrate_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxconnperhost_ev]) {
+         return ban_maxconnperhost_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxhostsperuser_ev]) {
+         return ban_maxhostsperuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattempts_ev]) {
+         return ban_maxloginattempts_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_maxloginattemptsfromuser_ev]) {
+         return ban_maxloginattemptsfromuser_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_mod_unload_ev]) {
+         return ban_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_postparse_ev]) {
+         return ban_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_rootlogin_ev]) {
+         return ban_rootlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_shutdown_ev]) {
+         return ban_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutidle_ev]) {
+         return ban_timeoutidle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutlogin_ev]) {
+         return ban_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_timeoutnoxfer_ev]) {
+         return ban_timeoutnoxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_tlshandshake_ev]) {
+         return ban_tlshandshake_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_unhandledcmd_ev]) {
+         return ban_unhandledcmd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_userdefined_ev]) {
+         return ban_userdefined_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_connected_ev]) {
+         return core_connected_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_exit_ev]) {
+         return core_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_postparse_ev]) {
+         return core_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_restart_ev]) {
+         return core_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_startup_ev]) {
+         return core_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_mod_unload_ev]) {
+         return ctrls_admin_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_restart_ev]) {
+         return ctrls_admin_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_admin_startup_ev]) {
+         return ctrls_admin_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_postparse_ev]) {
+         return ctrls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_shutdown_ev]) {
+         return ctrls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_connect_ev]) {
+         return delay_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_mod_unload_ev]) {
+         return delay_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_postparse_ev]) {
+         return delay_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_restart_ev]) {
+         return delay_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_shutdown_ev]) {
+         return delay_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_data_xfer_ev]) {
+         return digest_data_xfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_mod_unload_ev]) {
+         return digest_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_mod_unload_ev]) {
+         return dynmasq_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_postparse_ev]) {
+         return dynmasq_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dynmasq_restart_ev]) {
+         return dynmasq_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb3]) {
+         return event_cb3(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_any_ev]) {
+         return exec_any_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_mod_unload_ev]) {
+         return exec_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_postparse_ev]) {
+         return exec_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_restart_ev]) {
+         return exec_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_mod_unload_ev]) {
+         return facl_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_postparse_ev]) {
+         return facl_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facl_restart_ev]) {
+         return facl_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_filetab_mod_unload_ev]) {
+         return filetab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_mod_unload_ev]) {
+         return forensic_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fscache_mod_unload_ev]) {
+         return fscache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_mod_unload_ev]) {
+         return geoip_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_postparse_ev]) {
+         return geoip_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_geoip_restart_ev]) {
+         return geoip_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_chroot_ev]) {
+         return ifsess_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_mod_unload_ev]) {
+         return ifsess_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ifsess_postparse_ev]) {
+         return ifsess_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_postparse_ev]) {
+         return lang_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_lang_restart_ev]) {
+         return lang_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_mod_unload_ev]) {
+         return ldap_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_postparse_ev]) {
+         return ldap_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_shutdown_ev]) {
+         return ldap_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldaptab_mod_unload_ev]) {
+         return ldaptab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_postparse_ev]) {
+         return log_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_restart_ev]) {
+         return log_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_restart_ev]) {
+         return mcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_ctrl_listen_ev]) {
+         return qos_ctrl_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_mod_unload_ev]) {
+         return qos_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_mod_unload_ev]) {
+         return quotatab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_restart_ev]) {
+         return quotatab_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_mod_unload_ev]) {
+         return radius_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_restart_ev]) {
+         return radius_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radiustab_mod_unload_ev]) {
+         return radiustab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_restart_ev]) {
+         return redis_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_shutdown_ev]) {
+         return redis_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redistab_mod_unload_ev]) {
+         return redistab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_exit_ev]) {
+         return regexp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_regexp_restart_ev]) {
+         return regexp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_mod_unload_ev]) {
+         return rewrite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_restart_ev]) {
+         return rewrite_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_chroot_ev]) {
+         return rlimit_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rlimit_postparse_ev]) {
+         return rlimit_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_class_ev]) {
+         return sftp_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_host_ev]) {
+         return sftp_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_ban_user_ev]) {
+         return sftp_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_chroot_ev]) {
+         return sftp_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_exit_ev]) {
+         return sftp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_max_conns_ev]) {
+         return sftp_max_conns_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_mod_unload_ev]) {
+         return sftp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_postparse_ev]) {
+         return sftp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_restart_ev]) {
+         return sftp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_shutdown_ev]) {
+         return sftp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_sigusr2_ev]) {
+         return sftp_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_timeoutlogin_ev]) {
+         return sftp_timeoutlogin_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftp_wrap_conn_denied_ev]) {
+         return sftp_wrap_conn_denied_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_exit_ev]) {
+         return sftppam_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftppam_mod_unload_ev]) {
+         return sftppam_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sftpsql_mod_unload_ev]) {
+         return sftpsql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_mod_unload_ev]) {
+         return shaper_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_postparse_ev]) {
+         return shaper_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_restart_ev]) {
+         return shaper_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sess_exit_ev]) {
+         return shaper_sess_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_shutdown_ev]) {
+         return shaper_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shaper_sigusr2_ev]) {
+         return shaper_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_mod_unload_ev]) {
+         return shmcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_restart_ev]) {
+         return shmcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shmcache_shutdown_ev]) {
+         return shmcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_auth_code_ev]) {
+         return snmp_auth_code_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_class_ev]) {
+         return snmp_ban_ban_class_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_host_ev]) {
+         return snmp_ban_ban_host_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_ban_user_ev]) {
+         return snmp_ban_ban_user_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_client_disconn_ev]) {
+         return snmp_ban_client_disconn_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ban_expired_ban_ev]) {
+         return snmp_ban_expired_ban_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_cmd_invalid_ev]) {
+         return snmp_cmd_invalid_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_exit_ev]) {
+         return snmp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_max_inst_ev]) {
+         return snmp_max_inst_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_mod_unload_ev]) {
+         return snmp_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_postparse_ev]) {
+         return snmp_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_restart_ev]) {
+         return snmp_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_shutdown_ev]) {
+         return snmp_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev]) {
+         return snmp_ssh2_auth_hostbased_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_hostbased_ev]) {
+         return snmp_ssh2_auth_hostbased_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev]) {
+         return snmp_ssh2_auth_kbdint_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_kbdint_ev]) {
+         return snmp_ssh2_auth_kbdint_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev]) {
+         return snmp_ssh2_auth_passwd_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_passwd_ev]) {
+         return snmp_ssh2_auth_passwd_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev]) {
+         return snmp_ssh2_auth_publickey_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_auth_publickey_ev]) {
+         return snmp_ssh2_auth_publickey_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_c2s_compress_ev]) {
+         return snmp_ssh2_c2s_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_kex_err_ev]) {
+         return snmp_ssh2_kex_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_s2c_compress_ev]) {
+         return snmp_ssh2_s2c_compress_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev]) {
+         return snmp_ssh2_scp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev]) {
+         return snmp_ssh2_scp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev]) {
+         return snmp_ssh2_sftp_proto_version_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev]) {
+         return snmp_ssh2_sftp_sess_closed_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev]) {
+         return snmp_ssh2_sftp_sess_opened_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_startup_ev]) {
+         return snmp_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_idle_ev]) {
+         return snmp_timeout_idle_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_login_ev]) {
+         return snmp_timeout_login_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_noxfer_ev]) {
+         return snmp_timeout_noxfer_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_timeout_stalled_ev]) {
+         return snmp_timeout_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev]) {
+         return snmp_tls_ctrl_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_data_handshake_err_ev]) {
+         return snmp_tls_data_handshake_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_err_ev]) {
+         return snmp_tls_verify_client_err_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_snmp_tls_verify_client_ev]) {
+         return snmp_tls_verify_client_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mod_unload_ev]) {
+         return sql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_load_ev]) {
+         return sql_mysql_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_mysql_mod_unload_ev]) {
+         return sql_mysql_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_mod_unload_ev]) {
+         return sql_passwd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_load_ev]) {
+         return sql_postgres_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_postgres_mod_unload_ev]) {
+         return sql_postgres_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_preparse_ev]) {
+         return sql_preparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_load_ev]) {
+         return sql_sqlite_mod_load_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sqlite_mod_unload_ev]) {
+         return sql_sqlite_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqlodbc_mod_unload_ev]) {
+         return sqlodbc_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sqltab_mod_unload_ev]) {
+         return sqltab_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_fs_statcache_clear_ev]) {
+         return statcache_fs_statcache_clear_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_mod_unload_ev]) {
+         return statcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_postparse_ev]) {
+         return statcache_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_restart_ev]) {
+         return statcache_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_shutdown_ev]) {
+         return statcache_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_mod_unload_ev]) {
+         return systemd_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_postparse_ev]) {
+         return systemd_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_restart_ev]) {
+         return systemd_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_shutdown_ev]) {
+         return systemd_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_systemd_startup_ev]) {
+         return systemd_startup_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mcache_mod_unload_ev]) {
+         return tls_mcache_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_mod_unload_ev]) {
+         return tls_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_postparse_ev]) {
+         return tls_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_redis_mod_unload_ev]) {
+         return tls_redis_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_restart_ev]) {
+         return tls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_shutdown_ev]) {
+         return tls_shutdown_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_timeout_ev]) {
+         return tls_timeout_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_mod_unload_ev]) {
+         return uniqid_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_uniqid_postparse_ev]) {
+         return uniqid_postparse_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_mod_unload_ev]) {
+         return wrap2_mod_unload_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_restart_ev]) {
+         return wrap2_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_session_ev]) {
+         return xfer_timeout_session_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }
...>
}

// Function: pr_event_unregister, FP param: cb (seq: 3)
// Candidates: NULL, auth_exit_ev, auth_otp_exit_ev, auth_otp_sess_reinit_ev, auth_sess_reinit_ev, auth_unix_exit_ev, auth_unix_sess_reinit_ev, authfile_sess_reinit_ev, ban_restart_ev, ban_sess_reinit_ev, cap_sess_reinit_ev, core_chroot_ev, ctrls_restart_ev, define_restart_ev, deflate_sess_reinit_ev, delay_sess_reinit_ev, digest_sess_reinit_ev, dnsbl_sess_reinit_ev, dso_restart_ev, event_cb, event_cb2, exec_sess_reinit_ev, facts_sess_reinit_ev, forensic_exit_ev, forensic_log_ev, forensic_sess_reinit_ev, ident_sess_reinit_ev, ldap_sess_reinit_ev, log_exit_ev, log_sess_reinit_ev, log_xfer_stalled_ev, mcache_exit_ev, mcache_sess_reinit_ev, qos_data_connect_ev, qos_data_listen_ev, qos_sess_reinit_ev, quotatab_exit_ev, quotatab_sess_reinit_ev, radius_exit_ev, radius_sess_reinit_ev, redis_sess_reinit_ev, rewrite_exit_ev, rewrite_rewrite_home_ev, rewrite_sess_reinit_ev, site_misc_sess_reinit_ev, sql_chroot_ev, sql_eventlog_ev, sql_exit_ev, sql_passwd_sess_reinit_ev, sql_sess_reinit_ev, statcache_sess_reinit_ev, tls_exit_ev, tls_sess_reinit_ev, trace_restart_ev, wrap2_exit_ev, wrap2_sess_reinit_ev, wrap_sess_reinit_ev, xfer_exit_ev, xfer_sess_reinit_ev, xfer_sigusr2_ev, xfer_timeout_stalled_ev

// Multi-candidate: assignment
@transform_pr_event_unregister_cb_assign@
identifier fn = pr_event_unregister;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         E = auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         E = auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         E = auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         E = auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         E = auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         E = auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         E = authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         E = ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         E = ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         E = cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         E = core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         E = ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         E = define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         E = deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         E = delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         E = digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         E = dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         E = dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         E = event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         E = event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         E = exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         E = facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         E = forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         E = forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         E = forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         E = ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         E = ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         E = log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         E = log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         E = log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         E = mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         E = mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         E = qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         E = qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         E = qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         E = quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         E = quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         E = radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         E = radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         E = redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         E = rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         E = rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         E = rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         E = site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         E = sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         E = sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         E = sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         E = sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         E = sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         E = statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         E = tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         E = tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         E = trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         E = wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         E = wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         E = wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         E = xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         E = xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         E = xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         E = xfer_timeout_stalled_ev(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_event_unregister_cb_standalone@
identifier fn = pr_event_unregister;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         xfer_timeout_stalled_ev(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_event_unregister_cb_return@
identifier fn = pr_event_unregister;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_auth_exit_ev]) {
+         return auth_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_exit_ev]) {
+         return auth_otp_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_otp_sess_reinit_ev]) {
+         return auth_otp_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_sess_reinit_ev]) {
+         return auth_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_exit_ev]) {
+         return auth_unix_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_auth_unix_sess_reinit_ev]) {
+         return auth_unix_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_authfile_sess_reinit_ev]) {
+         return authfile_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_restart_ev]) {
+         return ban_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ban_sess_reinit_ev]) {
+         return ban_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_cap_sess_reinit_ev]) {
+         return cap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_core_chroot_ev]) {
+         return core_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ctrls_restart_ev]) {
+         return ctrls_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_define_restart_ev]) {
+         return define_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_deflate_sess_reinit_ev]) {
+         return deflate_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_delay_sess_reinit_ev]) {
+         return delay_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_digest_sess_reinit_ev]) {
+         return digest_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dnsbl_sess_reinit_ev]) {
+         return dnsbl_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_dso_restart_ev]) {
+         return dso_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb]) {
+         return event_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_event_cb2]) {
+         return event_cb2(args);
+     }
+     else if (cb_signature == cb_signatures[cb_exec_sess_reinit_ev]) {
+         return exec_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_facts_sess_reinit_ev]) {
+         return facts_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_exit_ev]) {
+         return forensic_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_log_ev]) {
+         return forensic_log_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_forensic_sess_reinit_ev]) {
+         return forensic_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ident_sess_reinit_ev]) {
+         return ident_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_ldap_sess_reinit_ev]) {
+         return ldap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_exit_ev]) {
+         return log_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_sess_reinit_ev]) {
+         return log_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_log_xfer_stalled_ev]) {
+         return log_xfer_stalled_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_exit_ev]) {
+         return mcache_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_mcache_sess_reinit_ev]) {
+         return mcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_connect_ev]) {
+         return qos_data_connect_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_data_listen_ev]) {
+         return qos_data_listen_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_qos_sess_reinit_ev]) {
+         return qos_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_exit_ev]) {
+         return quotatab_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_quotatab_sess_reinit_ev]) {
+         return quotatab_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_exit_ev]) {
+         return radius_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_radius_sess_reinit_ev]) {
+         return radius_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_redis_sess_reinit_ev]) {
+         return redis_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_exit_ev]) {
+         return rewrite_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_rewrite_home_ev]) {
+         return rewrite_rewrite_home_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_rewrite_sess_reinit_ev]) {
+         return rewrite_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_site_misc_sess_reinit_ev]) {
+         return site_misc_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_chroot_ev]) {
+         return sql_chroot_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_eventlog_ev]) {
+         return sql_eventlog_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_exit_ev]) {
+         return sql_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_passwd_sess_reinit_ev]) {
+         return sql_passwd_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_sql_sess_reinit_ev]) {
+         return sql_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_statcache_sess_reinit_ev]) {
+         return statcache_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_exit_ev]) {
+         return tls_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tls_sess_reinit_ev]) {
+         return tls_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_trace_restart_ev]) {
+         return trace_restart_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_exit_ev]) {
+         return wrap2_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap2_sess_reinit_ev]) {
+         return wrap2_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_wrap_sess_reinit_ev]) {
+         return wrap_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_exit_ev]) {
+         return xfer_exit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sess_reinit_ev]) {
+         return xfer_sess_reinit_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_sigusr2_ev]) {
+         return xfer_sigusr2_ev(args);
+     }
+     else if (cb_signature == cb_signatures[cb_xfer_timeout_stalled_ev]) {
+         return xfer_timeout_stalled_ev(args);
+     }
...>
}

// Function: pr_fs_copy_file2, FP param: progress_cb (seq: 4)
// Candidates: NULL, copy_progress_cb

// Multi-candidate: assignment
@transform_pr_fs_copy_file2_progress_cb_assign@
identifier fn = pr_fs_copy_file2;
identifier fp = progress_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (progress_cb_signature == progress_cb_signatures[progress_cb_NULL]) {
+         E = NULL;
+     }
+     else if (progress_cb_signature == progress_cb_signatures[progress_cb_copy_progress_cb]) {
+         E = copy_progress_cb(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_fs_copy_file2_progress_cb_standalone@
identifier fn = pr_fs_copy_file2;
identifier fp = progress_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (progress_cb_signature == progress_cb_signatures[progress_cb_NULL]) {
+         NULL;
+     }
+     else if (progress_cb_signature == progress_cb_signatures[progress_cb_copy_progress_cb]) {
+         copy_progress_cb(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_fs_copy_file2_progress_cb_return@
identifier fn = pr_fs_copy_file2;
identifier fp = progress_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (progress_cb_signature == progress_cb_signatures[progress_cb_NULL]) {
+         return NULL;
+     }
+     else if (progress_cb_signature == progress_cb_signatures[progress_cb_copy_progress_cb]) {
+         return copy_progress_cb(args);
+     }
...>
}

// Function: pr_fs_dump, FP param: dumpf (seq: 1)
// Candidates: NULL

@transform_pr_fs_dump_dumpf_assign@
identifier fn = pr_fs_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     E = NULL;
...>
}

@transform_pr_fs_dump_dumpf_standalone@
identifier fn = pr_fs_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     NULL;
...>
}

@transform_pr_fs_dump_dumpf_return@
identifier fn = pr_fs_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     return NULL;
...>
}

// Function: pr_fs_glob, FP param: errfunc (seq: 3)
// Candidates: NULL

@transform_pr_fs_glob_errfunc_assign@
identifier fn = pr_fs_glob;
identifier fp = errfunc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     E = NULL;
...>
}

@transform_pr_fs_glob_errfunc_standalone@
identifier fn = pr_fs_glob;
identifier fp = errfunc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     NULL;
...>
}

@transform_pr_fs_glob_errfunc_return@
identifier fn = pr_fs_glob;
identifier fp = errfunc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     return NULL;
...>
}

// Function: pr_jot_parse_logfmt, FP param: on_meta (seq: 4)
// Candidates: NULL, long_on_meta, parse_on_meta, pr_jot_parse_on_meta

// Multi-candidate: assignment
@transform_pr_jot_parse_logfmt_on_meta_assign@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         E = long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         E = parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         E = pr_jot_parse_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_parse_logfmt_on_meta_standalone@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         pr_jot_parse_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_parse_logfmt_on_meta_return@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         return long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         return parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         return pr_jot_parse_on_meta(args);
+     }
...>
}

// Function: pr_jot_parse_logfmt, FP param: on_other (seq: 6)
// Candidates: NULL, parse_on_other, pr_jot_parse_on_other

// Multi-candidate: assignment
@transform_pr_jot_parse_logfmt_on_other_assign@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_other;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         E = NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_parse_on_other]) {
+         E = parse_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_pr_jot_parse_on_other]) {
+         E = pr_jot_parse_on_other(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_parse_logfmt_on_other_standalone@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_other;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_parse_on_other]) {
+         parse_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_pr_jot_parse_on_other]) {
+         pr_jot_parse_on_other(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_parse_logfmt_on_other_return@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_other;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         return NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_parse_on_other]) {
+         return parse_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_pr_jot_parse_on_other]) {
+         return pr_jot_parse_on_other(args);
+     }
...>
}

// Function: pr_jot_parse_logfmt, FP param: on_unknown (seq: 5)
// Candidates: NULL, parse_on_unknown, pr_jot_parse_on_unknown

// Multi-candidate: assignment
@transform_pr_jot_parse_logfmt_on_unknown_assign@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_unknown;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_unknown_signature == on_unknown_signatures[on_unknown_NULL]) {
+         E = NULL;
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_parse_on_unknown]) {
+         E = parse_on_unknown(args);
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown]) {
+         E = pr_jot_parse_on_unknown(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_parse_logfmt_on_unknown_standalone@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_unknown;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_unknown_signature == on_unknown_signatures[on_unknown_NULL]) {
+         NULL;
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_parse_on_unknown]) {
+         parse_on_unknown(args);
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown]) {
+         pr_jot_parse_on_unknown(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_parse_logfmt_on_unknown_return@
identifier fn = pr_jot_parse_logfmt;
identifier fp = on_unknown;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_unknown_signature == on_unknown_signatures[on_unknown_NULL]) {
+         return NULL;
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_parse_on_unknown]) {
+         return parse_on_unknown(args);
+     }
+     else if (on_unknown_signature == on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown]) {
+         return pr_jot_parse_on_unknown(args);
+     }
...>
}

// Function: pr_jot_resolve_logfmt, FP param: on_default (seq: 7)
// Candidates: NULL, resolve_on_default, sql_resolve_on_default

// Multi-candidate: assignment
@transform_pr_jot_resolve_logfmt_on_default_assign@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_default;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         E = NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         E = resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         E = sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_resolve_logfmt_on_default_standalone@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_resolve_logfmt_on_default_return@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         return NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         return resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         return sql_resolve_on_default(args);
+     }
...>
}

// Function: pr_jot_resolve_logfmt, FP param: on_meta (seq: 6)
// Candidates: NULL, pr_jot_on_json, resolve_on_meta, showinfo_on_meta, sql_resolve_on_meta

// Multi-candidate: assignment
@transform_pr_jot_resolve_logfmt_on_meta_assign@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         E = pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         E = resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         E = showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         E = sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_resolve_logfmt_on_meta_standalone@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_resolve_logfmt_on_meta_return@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         return pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         return resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         return showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         return sql_resolve_on_meta(args);
+     }
...>
}

// Function: pr_jot_resolve_logfmt, FP param: on_other (seq: 8)
// Candidates: NULL, resolve_on_other, sql_resolve_on_other

// Multi-candidate: assignment
@transform_pr_jot_resolve_logfmt_on_other_assign@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_other;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         E = NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_resolve_on_other]) {
+         E = resolve_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_sql_resolve_on_other]) {
+         E = sql_resolve_on_other(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_resolve_logfmt_on_other_standalone@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_other;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_resolve_on_other]) {
+         resolve_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_sql_resolve_on_other]) {
+         sql_resolve_on_other(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_resolve_logfmt_on_other_return@
identifier fn = pr_jot_resolve_logfmt;
identifier fp = on_other;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_other_signature == on_other_signatures[on_other_NULL]) {
+         return NULL;
+     }
+     else if (on_other_signature == on_other_signatures[on_other_resolve_on_other]) {
+         return resolve_on_other(args);
+     }
+     else if (on_other_signature == on_other_signatures[on_other_sql_resolve_on_other]) {
+         return sql_resolve_on_other(args);
+     }
...>
}

// Function: pr_jot_resolve_logfmt_id, FP param: on_default (seq: 9)
// Candidates: NULL, resolve_id_on_default

// Multi-candidate: assignment
@transform_pr_jot_resolve_logfmt_id_on_default_assign@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_default;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         E = NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         E = resolve_id_on_default(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_resolve_logfmt_id_on_default_standalone@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         resolve_id_on_default(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_resolve_logfmt_id_on_default_return@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         return NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         return resolve_id_on_default(args);
+     }
...>
}

// Function: pr_jot_resolve_logfmt_id, FP param: on_meta (seq: 8)
// Candidates: NULL, resolve_id_on_meta

// Multi-candidate: assignment
@transform_pr_jot_resolve_logfmt_id_on_meta_assign@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         E = resolve_id_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_resolve_logfmt_id_on_meta_standalone@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         resolve_id_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_resolve_logfmt_id_on_meta_return@
identifier fn = pr_jot_resolve_logfmt_id;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         return resolve_id_on_meta(args);
+     }
...>
}

// Function: pr_jot_scan_logfmt, FP param: on_meta (seq: 5)
// Candidates: NULL, scan_on_meta

// Multi-candidate: assignment
@transform_pr_jot_scan_logfmt_on_meta_assign@
identifier fn = pr_jot_scan_logfmt;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         E = scan_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_jot_scan_logfmt_on_meta_standalone@
identifier fn = pr_jot_scan_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         scan_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_jot_scan_logfmt_on_meta_return@
identifier fn = pr_jot_scan_logfmt;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         return scan_on_meta(args);
+     }
...>
}

// Function: pr_json_array_foreach, FP param: cb (seq: 3)
// Candidates: NULL, array_item_fail, array_item_ok

// Multi-candidate: assignment
@transform_pr_json_array_foreach_cb_assign@
identifier fn = pr_json_array_foreach;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_fail]) {
+         E = array_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_ok]) {
+         E = array_item_ok(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_json_array_foreach_cb_standalone@
identifier fn = pr_json_array_foreach;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_fail]) {
+         array_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_ok]) {
+         array_item_ok(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_json_array_foreach_cb_return@
identifier fn = pr_json_array_foreach;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_fail]) {
+         return array_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_array_item_ok]) {
+         return array_item_ok(args);
+     }
...>
}

// Function: pr_json_object_foreach, FP param: cb (seq: 3)
// Candidates: NULL, log_fmt_extra_iter_cb, object_item_fail, object_item_ok

// Multi-candidate: assignment
@transform_pr_json_object_foreach_cb_assign@
identifier fn = pr_json_object_foreach;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         E = log_fmt_extra_iter_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_fail]) {
+         E = object_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_ok]) {
+         E = object_item_ok(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_json_object_foreach_cb_standalone@
identifier fn = pr_json_object_foreach;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         log_fmt_extra_iter_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_fail]) {
+         object_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_ok]) {
+         object_item_ok(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_json_object_foreach_cb_return@
identifier fn = pr_json_object_foreach;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_log_fmt_extra_iter_cb]) {
+         return log_fmt_extra_iter_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_fail]) {
+         return object_item_fail(args);
+     }
+     else if (cb_signature == cb_signatures[cb_object_item_ok]) {
+         return object_item_ok(args);
+     }
...>
}

// Function: pr_pool_debug_memory, FP param: debugf (seq: 1)
// Candidates: NULL, mem_printf, oom_printf, pool_printf

// Multi-candidate: assignment
@transform_pr_pool_debug_memory_debugf_assign@
identifier fn = pr_pool_debug_memory;
identifier fp = debugf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (debugf_signature == debugf_signatures[debugf_NULL]) {
+         E = NULL;
+     }
+     else if (debugf_signature == debugf_signatures[debugf_mem_printf]) {
+         E = mem_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_oom_printf]) {
+         E = oom_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_pool_printf]) {
+         E = pool_printf(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_pool_debug_memory_debugf_standalone@
identifier fn = pr_pool_debug_memory;
identifier fp = debugf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (debugf_signature == debugf_signatures[debugf_NULL]) {
+         NULL;
+     }
+     else if (debugf_signature == debugf_signatures[debugf_mem_printf]) {
+         mem_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_oom_printf]) {
+         oom_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_pool_printf]) {
+         pool_printf(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_pool_debug_memory_debugf_return@
identifier fn = pr_pool_debug_memory;
identifier fp = debugf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (debugf_signature == debugf_signatures[debugf_NULL]) {
+         return NULL;
+     }
+     else if (debugf_signature == debugf_signatures[debugf_mem_printf]) {
+         return mem_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_oom_printf]) {
+         return oom_printf(args);
+     }
+     else if (debugf_signature == debugf_signatures[debugf_pool_printf]) {
+         return pool_printf(args);
+     }
...>
}

// Function: pr_pool_debug_memory2, FP param: cb (seq: 1)
// Candidates: NULL, pool_visitf, test_visitf

// Multi-candidate: assignment
@transform_pr_pool_debug_memory2_cb_assign@
identifier fn = pr_pool_debug_memory2;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_pool_visitf]) {
+         E = pool_visitf(args);
+     }
+     else if (cb_signature == cb_signatures[cb_test_visitf]) {
+         E = test_visitf(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_pool_debug_memory2_cb_standalone@
identifier fn = pr_pool_debug_memory2;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (cb_signature == cb_signatures[cb_test_visitf]) {
+         test_visitf(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_pool_debug_memory2_cb_return@
identifier fn = pr_pool_debug_memory2;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (cb_signature == cb_signatures[cb_test_visitf]) {
+         return test_visitf(args);
+     }
...>
}

// Function: pr_pool_debug_memory2, FP param: visit (seq: 1)
// Candidates: NULL, pool_visitf, test_visitf

// Multi-candidate: assignment
@transform_pr_pool_debug_memory2_visit_assign@
identifier fn = pr_pool_debug_memory2;
identifier fp = visit;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         E = NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         E = pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         E = test_visitf(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_pool_debug_memory2_visit_standalone@
identifier fn = pr_pool_debug_memory2;
identifier fp = visit;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         test_visitf(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_pool_debug_memory2_visit_return@
identifier fn = pr_pool_debug_memory2;
identifier fp = visit;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         return NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         return test_visitf(args);
+     }
...>
}

// Function: pr_stash_dump, FP param: dumpf (seq: 1)
// Candidates: stash_dump

@transform_pr_stash_dump_dumpf_assign@
identifier fn = pr_stash_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     E = stash_dump(args);
...>
}

@transform_pr_stash_dump_dumpf_standalone@
identifier fn = pr_stash_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     stash_dump(args);
...>
}

@transform_pr_stash_dump_dumpf_return@
identifier fn = pr_stash_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     return stash_dump(args);
...>
}

// Function: pr_table_do, FP param: cb (seq: 2)
// Candidates: NULL, do_cb, do_with_remove_cb, fxp_handle_abort, tab_copy_cb

// Multi-candidate: assignment
@transform_pr_table_do_cb_assign@
identifier fn = pr_table_do;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_do_cb]) {
+         E = do_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         E = do_with_remove_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         E = fxp_handle_abort(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         E = tab_copy_cb(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_table_do_cb_standalone@
identifier fn = pr_table_do;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_do_cb]) {
+         do_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         do_with_remove_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         fxp_handle_abort(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         tab_copy_cb(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_table_do_cb_return@
identifier fn = pr_table_do;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_do_cb]) {
+         return do_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_do_with_remove_cb]) {
+         return do_with_remove_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_fxp_handle_abort]) {
+         return fxp_handle_abort(args);
+     }
+     else if (cb_signature == cb_signatures[cb_tab_copy_cb]) {
+         return tab_copy_cb(args);
+     }
...>
}

// Function: pr_table_dump, FP param: dumpf (seq: 1)
// Candidates: NULL, statcache_dumpf, table_dump

// Multi-candidate: assignment
@transform_pr_table_dump_dumpf_assign@
identifier fn = pr_table_dump;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         E = statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         E = table_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_pr_table_dump_dumpf_standalone@
identifier fn = pr_table_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         table_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_pr_table_dump_dumpf_return@
identifier fn = pr_table_dump;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         return statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         return table_dump(args);
+     }
...>
}

// Function: register_cleanup, FP param: child_cleanup_cb (seq: 4)
// Candidates: NULL, conn_cleanup_cb, ctrls_cleanup_cb, event_cleanup_cb, server_cleanup_cb, sess_redis_cleanup

// Multi-candidate: assignment
@transform_register_cleanup_child_cleanup_cb_assign@
identifier fn = register_cleanup;
identifier fp = child_cleanup_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_NULL]) {
+         E = NULL;
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb]) {
+         E = conn_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb]) {
+         E = ctrls_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb]) {
+         E = event_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb]) {
+         E = server_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup]) {
+         E = sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_register_cleanup_child_cleanup_cb_standalone@
identifier fn = register_cleanup;
identifier fp = child_cleanup_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_register_cleanup_child_cleanup_cb_return@
identifier fn = register_cleanup;
identifier fp = child_cleanup_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (child_cleanup_cb_signature == child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }
...>
}

// Function: register_cleanup, FP param: plain_cleanup_cb (seq: 3)
// Candidates: NULL, conn_cleanup_cb, ctrls_cleanup_cb, event_cleanup_cb, server_cleanup_cb, sess_redis_cleanup

// Multi-candidate: assignment
@transform_register_cleanup_plain_cleanup_cb_assign@
identifier fn = register_cleanup;
identifier fp = plain_cleanup_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_NULL]) {
+         E = NULL;
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb]) {
+         E = conn_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb]) {
+         E = ctrls_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb]) {
+         E = event_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb]) {
+         E = server_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup]) {
+         E = sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_register_cleanup_plain_cleanup_cb_standalone@
identifier fn = register_cleanup;
identifier fp = plain_cleanup_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_register_cleanup_plain_cleanup_cb_return@
identifier fn = register_cleanup;
identifier fp = plain_cleanup_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (plain_cleanup_cb_signature == plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }
...>
}

// Function: register_cleanup2, FP param: cleanup_cb (seq: 3)
// Candidates: NULL, conn_cleanup_cb, ctrls_cleanup_cb, event_cleanup_cb, server_cleanup_cb, sess_redis_cleanup

// Multi-candidate: assignment
@transform_register_cleanup2_cleanup_cb_assign@
identifier fn = register_cleanup2;
identifier fp = cleanup_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         E = NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         E = conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         E = ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         E = event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         E = server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         E = sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_register_cleanup2_cleanup_cb_standalone@
identifier fn = register_cleanup2;
identifier fp = cleanup_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_register_cleanup2_cleanup_cb_return@
identifier fn = register_cleanup2;
identifier fp = cleanup_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }
...>
}

// Function: resolve_logfmt_id, FP param: on_default (seq: 7)
// Candidates: NULL, resolve_id_on_default, resolve_on_default, sql_resolve_on_default

// Multi-candidate: assignment
@transform_resolve_logfmt_id_on_default_assign@
identifier fn = resolve_logfmt_id;
identifier fp = on_default;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         E = NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         E = resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         E = resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         E = sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_resolve_logfmt_id_on_default_standalone@
identifier fn = resolve_logfmt_id;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_resolve_logfmt_id_on_default_return@
identifier fn = resolve_logfmt_id;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         return NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         return resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         return resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         return sql_resolve_on_default(args);
+     }
...>
}

// Function: resolve_logfmt_id, FP param: on_meta (seq: 6)
// Candidates: NULL, long_on_meta, parse_on_meta, pr_jot_on_json, pr_jot_parse_on_meta, resolve_id_on_meta, resolve_on_meta, scan_on_meta, showinfo_on_meta, sql_resolve_on_meta

// Multi-candidate: assignment
@transform_resolve_logfmt_id_on_meta_assign@
identifier fn = resolve_logfmt_id;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         E = long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         E = parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         E = pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         E = pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         E = resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         E = resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         E = scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         E = showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         E = sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_resolve_logfmt_id_on_meta_standalone@
identifier fn = resolve_logfmt_id;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_resolve_logfmt_id_on_meta_return@
identifier fn = resolve_logfmt_id;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         return long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         return parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         return pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         return pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         return resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         return resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         return scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         return showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         return sql_resolve_on_meta(args);
+     }
...>
}

// Function: resolve_meta, FP param: on_default (seq: 6)
// Candidates: NULL, resolve_id_on_default, resolve_on_default, sql_resolve_on_default

// Multi-candidate: assignment
@transform_resolve_meta_on_default_assign@
identifier fn = resolve_meta;
identifier fp = on_default;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         E = NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         E = resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         E = resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         E = sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_resolve_meta_on_default_standalone@
identifier fn = resolve_meta;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         sql_resolve_on_default(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_resolve_meta_on_default_return@
identifier fn = resolve_meta;
identifier fp = on_default;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_default_signature == on_default_signatures[on_default_NULL]) {
+         return NULL;
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_id_on_default]) {
+         return resolve_id_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_resolve_on_default]) {
+         return resolve_on_default(args);
+     }
+     else if (on_default_signature == on_default_signatures[on_default_sql_resolve_on_default]) {
+         return sql_resolve_on_default(args);
+     }
...>
}

// Function: resolve_meta, FP param: on_meta (seq: 5)
// Candidates: NULL, long_on_meta, parse_on_meta, pr_jot_on_json, pr_jot_parse_on_meta, resolve_id_on_meta, resolve_on_meta, scan_on_meta, showinfo_on_meta, sql_resolve_on_meta

// Multi-candidate: assignment
@transform_resolve_meta_on_meta_assign@
identifier fn = resolve_meta;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         E = long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         E = parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         E = pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         E = pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         E = resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         E = resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         E = scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         E = showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         E = sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_resolve_meta_on_meta_standalone@
identifier fn = resolve_meta;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_resolve_meta_on_meta_return@
identifier fn = resolve_meta;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         return long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         return parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         return pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         return pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         return resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         return resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         return scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         return showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         return sql_resolve_on_meta(args);
+     }
...>
}

// Function: scan_meta, FP param: on_meta (seq: 4)
// Candidates: NULL, long_on_meta, parse_on_meta, pr_jot_on_json, pr_jot_parse_on_meta, resolve_id_on_meta, resolve_on_meta, scan_on_meta, showinfo_on_meta, sql_resolve_on_meta

// Multi-candidate: assignment
@transform_scan_meta_on_meta_assign@
identifier fn = scan_meta;
identifier fp = on_meta;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         E = NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         E = long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         E = parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         E = pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         E = pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         E = resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         E = resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         E = scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         E = showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         E = sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_scan_meta_on_meta_standalone@
identifier fn = scan_meta;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         sql_resolve_on_meta(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_scan_meta_on_meta_return@
identifier fn = scan_meta;
identifier fp = on_meta;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (on_meta_signature == on_meta_signatures[on_meta_NULL]) {
+         return NULL;
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_long_on_meta]) {
+         return long_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_parse_on_meta]) {
+         return parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_on_json]) {
+         return pr_jot_on_json(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_pr_jot_parse_on_meta]) {
+         return pr_jot_parse_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_id_on_meta]) {
+         return resolve_id_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_resolve_on_meta]) {
+         return resolve_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_scan_on_meta]) {
+         return scan_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_showinfo_on_meta]) {
+         return showinfo_on_meta(args);
+     }
+     else if (on_meta_signature == on_meta_signatures[on_meta_sql_resolve_on_meta]) {
+         return sql_resolve_on_meta(args);
+     }
...>
}

// Function: schedule, FP param: cb (seq: 1)
// Candidates: NULL, restart_daemon, schedule_cb, shutdown_end_session

// Multi-candidate: assignment
@transform_schedule_cb_assign@
identifier fn = schedule;
identifier fp = cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         E = NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_restart_daemon]) {
+         E = restart_daemon(args);
+     }
+     else if (cb_signature == cb_signatures[cb_schedule_cb]) {
+         E = schedule_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         E = shutdown_end_session(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_schedule_cb_standalone@
identifier fn = schedule;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (cb_signature == cb_signatures[cb_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_schedule_cb_return@
identifier fn = schedule;
identifier fp = cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cb_signature == cb_signatures[cb_NULL]) {
+         return NULL;
+     }
+     else if (cb_signature == cb_signatures[cb_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (cb_signature == cb_signatures[cb_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (cb_signature == cb_signatures[cb_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
...>
}

// Function: schedule, FP param: f (seq: 1)
// Candidates: NULL, restart_daemon, schedule_cb, shutdown_end_session

// Multi-candidate: assignment
@transform_schedule_f_assign@
identifier fn = schedule;
identifier fp = f;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (f_signature == f_signatures[f_NULL]) {
+         E = NULL;
+     }
+     else if (f_signature == f_signatures[f_restart_daemon]) {
+         E = restart_daemon(args);
+     }
+     else if (f_signature == f_signatures[f_schedule_cb]) {
+         E = schedule_cb(args);
+     }
+     else if (f_signature == f_signatures[f_shutdown_end_session]) {
+         E = shutdown_end_session(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_schedule_f_standalone@
identifier fn = schedule;
identifier fp = f;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (f_signature == f_signatures[f_NULL]) {
+         NULL;
+     }
+     else if (f_signature == f_signatures[f_restart_daemon]) {
+         restart_daemon(args);
+     }
+     else if (f_signature == f_signatures[f_schedule_cb]) {
+         schedule_cb(args);
+     }
+     else if (f_signature == f_signatures[f_shutdown_end_session]) {
+         shutdown_end_session(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_schedule_f_return@
identifier fn = schedule;
identifier fp = f;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (f_signature == f_signatures[f_NULL]) {
+         return NULL;
+     }
+     else if (f_signature == f_signatures[f_restart_daemon]) {
+         return restart_daemon(args);
+     }
+     else if (f_signature == f_signatures[f_schedule_cb]) {
+         return schedule_cb(args);
+     }
+     else if (f_signature == f_signatures[f_shutdown_end_session]) {
+         return shutdown_end_session(args);
+     }
...>
}

// Function: set_auth_check, FP param: chk (seq: 1)
// Candidates: NULL, auth_cmd_chk_cb, sftp_have_authenticated

// Multi-candidate: assignment
@transform_set_auth_check_chk_assign@
identifier fn = set_auth_check;
identifier fp = chk;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (chk_signature == chk_signatures[chk_NULL]) {
+         E = NULL;
+     }
+     else if (chk_signature == chk_signatures[chk_auth_cmd_chk_cb]) {
+         E = auth_cmd_chk_cb(args);
+     }
+     else if (chk_signature == chk_signatures[chk_sftp_have_authenticated]) {
+         E = sftp_have_authenticated(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_set_auth_check_chk_standalone@
identifier fn = set_auth_check;
identifier fp = chk;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (chk_signature == chk_signatures[chk_NULL]) {
+         NULL;
+     }
+     else if (chk_signature == chk_signatures[chk_auth_cmd_chk_cb]) {
+         auth_cmd_chk_cb(args);
+     }
+     else if (chk_signature == chk_signatures[chk_sftp_have_authenticated]) {
+         sftp_have_authenticated(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_set_auth_check_chk_return@
identifier fn = set_auth_check;
identifier fp = chk;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (chk_signature == chk_signatures[chk_NULL]) {
+         return NULL;
+     }
+     else if (chk_signature == chk_signatures[chk_auth_cmd_chk_cb]) {
+         return auth_cmd_chk_cb(args);
+     }
+     else if (chk_signature == chk_signatures[chk_sftp_have_authenticated]) {
+         return sftp_have_authenticated(args);
+     }
...>
}

// Function: set_auth_check, FP param: ck (seq: 1)
// Candidates: NULL, auth_cmd_chk_cb, sftp_have_authenticated

// Multi-candidate: assignment
@transform_set_auth_check_ck_assign@
identifier fn = set_auth_check;
identifier fp = ck;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (ck_signature == ck_signatures[ck_NULL]) {
+         E = NULL;
+     }
+     else if (ck_signature == ck_signatures[ck_auth_cmd_chk_cb]) {
+         E = auth_cmd_chk_cb(args);
+     }
+     else if (ck_signature == ck_signatures[ck_sftp_have_authenticated]) {
+         E = sftp_have_authenticated(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_set_auth_check_ck_standalone@
identifier fn = set_auth_check;
identifier fp = ck;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (ck_signature == ck_signatures[ck_NULL]) {
+         NULL;
+     }
+     else if (ck_signature == ck_signatures[ck_auth_cmd_chk_cb]) {
+         auth_cmd_chk_cb(args);
+     }
+     else if (ck_signature == ck_signatures[ck_sftp_have_authenticated]) {
+         sftp_have_authenticated(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_set_auth_check_ck_return@
identifier fn = set_auth_check;
identifier fp = ck;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (ck_signature == ck_signatures[ck_NULL]) {
+         return NULL;
+     }
+     else if (ck_signature == ck_signatures[ck_auth_cmd_chk_cb]) {
+         return auth_cmd_chk_cb(args);
+     }
+     else if (ck_signature == ck_signatures[ck_sftp_have_authenticated]) {
+         return sftp_have_authenticated(args);
+     }
...>
}

// Function: sftp_auth_set_success_handler, FP param: handler (seq: 1)
// Candidates: setup_env

@transform_sftp_auth_set_success_handler_handler_assign@
identifier fn = sftp_auth_set_success_handler;
identifier fp = handler;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     E = setup_env(args);
...>
}

@transform_sftp_auth_set_success_handler_handler_standalone@
identifier fn = sftp_auth_set_success_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     setup_env(args);
...>
}

@transform_sftp_auth_set_success_handler_handler_return@
identifier fn = sftp_auth_set_success_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     return setup_env(args);
...>
}

// Function: sftp_ssh2_packet_set_handler, FP param: handler (seq: 1)
// Candidates: NULL

@transform_sftp_ssh2_packet_set_handler_handler_assign@
identifier fn = sftp_ssh2_packet_set_handler;
identifier fp = handler;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     E = NULL;
...>
}

@transform_sftp_ssh2_packet_set_handler_handler_standalone@
identifier fn = sftp_ssh2_packet_set_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     NULL;
...>
}

@transform_sftp_ssh2_packet_set_handler_handler_return@
identifier fn = sftp_ssh2_packet_set_handler;
identifier fp = handler;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     return NULL;
...>
}

// Function: stash_dump_syms, FP param: dumpf (seq: 3)
// Candidates: NULL, event_dump, stash_dump, statcache_dumpf, table_dump

// Multi-candidate: assignment
@transform_stash_dump_syms_dumpf_assign@
identifier fn = stash_dump_syms;
identifier fp = dumpf;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         E = NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         E = event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         E = stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         E = statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         E = table_dump(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_stash_dump_syms_dumpf_standalone@
identifier fn = stash_dump_syms;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         table_dump(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_stash_dump_syms_dumpf_return@
identifier fn = stash_dump_syms;
identifier fp = dumpf;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (dumpf_signature == dumpf_signatures[dumpf_NULL]) {
+         return NULL;
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_event_dump]) {
+         return event_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_stash_dump]) {
+         return stash_dump(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_statcache_dumpf]) {
+         return statcache_dumpf(args);
+     }
+     else if (dumpf_signature == dumpf_signatures[dumpf_table_dump]) {
+         return table_dump(args);
+     }
...>
}

// Function: unregister_cleanup, FP param: cleanup_cb (seq: 3)
// Candidates: NULL, conn_cleanup_cb, ctrls_cleanup_cb, event_cleanup_cb, server_cleanup_cb, sess_redis_cleanup

// Multi-candidate: assignment
@transform_unregister_cleanup_cleanup_cb_assign@
identifier fn = unregister_cleanup;
identifier fp = cleanup_cb;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         E = NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         E = conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         E = ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         E = event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         E = server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         E = sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_unregister_cleanup_cleanup_cb_standalone@
identifier fn = unregister_cleanup;
identifier fp = cleanup_cb;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         sess_redis_cleanup(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_unregister_cleanup_cleanup_cb_return@
identifier fn = unregister_cleanup;
identifier fp = cleanup_cb;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_NULL]) {
+         return NULL;
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb]) {
+         return conn_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb]) {
+         return ctrls_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_event_cleanup_cb]) {
+         return event_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_server_cleanup_cb]) {
+         return server_cleanup_cb(args);
+     }
+     else if (cleanup_cb_signature == cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup]) {
+         return sess_redis_cleanup(args);
+     }
...>
}

// Function: visit_pools, FP param: visit (seq: 3)
// Candidates: NULL, pool_visitf, test_visitf

// Multi-candidate: assignment
@transform_visit_pools_visit_assign@
identifier fn = visit_pools;
identifier fp = visit;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         E = NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         E = pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         E = test_visitf(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_visit_pools_visit_standalone@
identifier fn = visit_pools;
identifier fp = visit;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         test_visitf(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_visit_pools_visit_return@
identifier fn = visit_pools;
identifier fp = visit;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (visit_signature == visit_signatures[visit_NULL]) {
+         return NULL;
+     }
+     else if (visit_signature == visit_signatures[visit_pool_visitf]) {
+         return pool_visitf(args);
+     }
+     else if (visit_signature == visit_signatures[visit_test_visitf]) {
+         return test_visitf(args);
+     }
...>
}

// Function: wrap2_match_list, FP param: match_token (seq: 3)
// Candidates: wrap2_match_client, wrap2_match_daemon

// Multi-candidate: assignment
@transform_wrap2_match_list_match_token_assign@
identifier fn = wrap2_match_list;
identifier fp = match_token;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ // E = fp(args);
+     if (match_token_signature == match_token_signatures[match_token_wrap2_match_client]) {
+         E = wrap2_match_client(args);
+     }
+     else if (match_token_signature == match_token_signatures[match_token_wrap2_match_daemon]) {
+         E = wrap2_match_daemon(args);
+     }
...>
}

// Multi-candidate: standalone call
@transform_wrap2_match_list_match_token_standalone@
identifier fn = wrap2_match_list;
identifier fp = match_token;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ // fp(args);
+     if (match_token_signature == match_token_signatures[match_token_wrap2_match_client]) {
+         wrap2_match_client(args);
+     }
+     else if (match_token_signature == match_token_signatures[match_token_wrap2_match_daemon]) {
+         wrap2_match_daemon(args);
+     }
...>
}

// Multi-candidate: return statement
@transform_wrap2_match_list_match_token_return@
identifier fn = wrap2_match_list;
identifier fp = match_token;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ // return fp(args);
+     if (match_token_signature == match_token_signatures[match_token_wrap2_match_client]) {
+         return wrap2_match_client(args);
+     }
+     else if (match_token_signature == match_token_signatures[match_token_wrap2_match_daemon]) {
+         return wrap2_match_daemon(args);
+     }
...>
}

// Total transformation rules: 147
