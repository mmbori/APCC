// Auto-generated Coccinelle script for function pointer to direct signature assignment
// Generated from filled_parsing_resolved.json
// Excludes functions from remove_fn_list.txt
// 
// This script transforms function pointer assignments to direct signature assignments:
//   E.FP_NAME = FUNC_NAME; -> E.FP_NAME_signature = FP_NAME_signatures[FP_NAME_FUNC_NAME_enum];
//
// Usage: spatch --sp-file convert_fp_to_memcpy.cocci --dir <source_directory> --in-place

@initialize:python@
@@
print(">>> Starting function pointer to direct signature assignment conversion")
print(">>> Transforming assignments (excluding remove_fn_list.txt)")

# Clean up any existing output directories
import os
import shutil
if os.path.exists("memcpy_transformations"):
    shutil.rmtree("memcpy_transformations")
os.makedirs("memcpy_transformations", exist_ok=True)

print(">>> Created output directory: memcpy_transformations/")

// ===== FUNCTION POINTER ASSIGNMENT TO DIRECT SIGNATURE ASSIGNMENT (specific functions) =====

// Rules for abort (2 valid functions, 0 excluded)
// Rule: .abort = core_netio_abort_cb ==> .abort_signature = abort_signatures[abort_core_netio_abort_cb];
@transform_abort_core_netio_abort_cb@
expression E;
identifier FP_NAME = abort;
identifier FUNC_NAME = core_netio_abort_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.abort_signature = abort_signatures[abort_core_netio_abort_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.abort_signature = abort_signatures[abort_core_netio_abort_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->abort_signature = abort_signatures[abort_core_netio_abort_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->abort_signature = abort_signatures[abort_core_netio_abort_cb];
)

// Rule: .abort = tls_netio_abort_cb ==> .abort_signature = abort_signatures[abort_tls_netio_abort_cb];
@transform_abort_tls_netio_abort_cb@
expression E;
identifier FP_NAME = abort;
identifier FUNC_NAME = tls_netio_abort_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.abort_signature = abort_signatures[abort_tls_netio_abort_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.abort_signature = abort_signatures[abort_tls_netio_abort_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->abort_signature = abort_signatures[abort_tls_netio_abort_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->abort_signature = abort_signatures[abort_tls_netio_abort_cb];
)

// Rules for access (3 valid functions, 0 excluded)
// Rule: .access = facl_fsio_access ==> .access_signature = access_signatures[access_facl_fsio_access];
@transform_access_facl_fsio_access@
expression E;
identifier FP_NAME = access;
identifier FUNC_NAME = facl_fsio_access;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.access_signature = access_signatures[access_facl_fsio_access];
|
E.FP_NAME = &FUNC_NAME;
+ E.access_signature = access_signatures[access_facl_fsio_access];
|
E->FP_NAME = FUNC_NAME;
+ E->access_signature = access_signatures[access_facl_fsio_access];
|
E->FP_NAME = &FUNC_NAME;
+ E->access_signature = access_signatures[access_facl_fsio_access];
)

// Rule: .access = robots_fsio_access ==> .access_signature = access_signatures[access_robots_fsio_access];
@transform_access_robots_fsio_access@
expression E;
identifier FP_NAME = access;
identifier FUNC_NAME = robots_fsio_access;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.access_signature = access_signatures[access_robots_fsio_access];
|
E.FP_NAME = &FUNC_NAME;
+ E.access_signature = access_signatures[access_robots_fsio_access];
|
E->FP_NAME = FUNC_NAME;
+ E->access_signature = access_signatures[access_robots_fsio_access];
|
E->FP_NAME = &FUNC_NAME;
+ E->access_signature = access_signatures[access_robots_fsio_access];
)

// Rule: .access = sys_access ==> .access_signature = access_signatures[access_sys_access];
@transform_access_sys_access@
expression E;
identifier FP_NAME = access;
identifier FUNC_NAME = sys_access;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.access_signature = access_signatures[access_sys_access];
|
E.FP_NAME = &FUNC_NAME;
+ E.access_signature = access_signatures[access_sys_access];
|
E->FP_NAME = FUNC_NAME;
+ E->access_signature = access_signatures[access_sys_access];
|
E->FP_NAME = &FUNC_NAME;
+ E->access_signature = access_signatures[access_sys_access];
)

// Rules for action_cb (263 valid functions, 0 excluded)
// Rule: .action_cb = 0 ==> .action_cb_signature = action_cb_signatures[action_cb_NULL];
@transform_action_cb_NULL@
expression E;
identifier FP_NAME = action_cb;
@@
(
E.FP_NAME = 0;
+ E.action_cb_signature = action_cb_signatures[action_cb_NULL];
|
E->FP_NAME = 0;
+ E->action_cb_signature = action_cb_signatures[action_cb_NULL];
)

// Rule: .action_cb = array_item_fail ==> .action_cb_signature = action_cb_signatures[action_cb_array_item_fail];
@transform_action_cb_array_item_fail@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = array_item_fail;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_array_item_fail];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_array_item_fail];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_array_item_fail];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_array_item_fail];
)

// Rule: .action_cb = array_item_ok ==> .action_cb_signature = action_cb_signatures[action_cb_array_item_ok];
@transform_action_cb_array_item_ok@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = array_item_ok;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_array_item_ok];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_array_item_ok];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_array_item_ok];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_array_item_ok];
)

// Rule: .action_cb = auth_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_exit_ev];
@transform_action_cb_auth_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_exit_ev];
)

// Rule: .action_cb = auth_otp_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_otp_exit_ev];
@transform_action_cb_auth_otp_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_otp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_exit_ev];
)

// Rule: .action_cb = auth_otp_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_otp_mod_unload_ev];
@transform_action_cb_auth_otp_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_otp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_mod_unload_ev];
)

// Rule: .action_cb = auth_otp_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_otp_sess_reinit_ev];
@transform_action_cb_auth_otp_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_otp_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_otp_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_otp_sess_reinit_ev];
)

// Rule: .action_cb = auth_pam_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_pam_exit_ev];
@transform_action_cb_auth_pam_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_pam_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_pam_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_pam_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_pam_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_pam_exit_ev];
)

// Rule: .action_cb = auth_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_sess_reinit_ev];
@transform_action_cb_auth_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_sess_reinit_ev];
)

// Rule: .action_cb = auth_unix_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_unix_exit_ev];
@transform_action_cb_auth_unix_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_unix_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_unix_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_unix_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_unix_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_unix_exit_ev];
)

// Rule: .action_cb = auth_unix_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_auth_unix_sess_reinit_ev];
@transform_action_cb_auth_unix_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = auth_unix_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_unix_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_auth_unix_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_unix_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_auth_unix_sess_reinit_ev];
)

// Rule: .action_cb = authfile_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_authfile_sess_reinit_ev];
@transform_action_cb_authfile_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = authfile_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_authfile_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_authfile_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_authfile_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_authfile_sess_reinit_ev];
)

// Rule: .action_cb = ban_anonrejectpasswords_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_anonrejectpasswords_ev];
@transform_action_cb_ban_anonrejectpasswords_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_anonrejectpasswords_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_anonrejectpasswords_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_anonrejectpasswords_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_anonrejectpasswords_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_anonrejectpasswords_ev];
)

// Rule: .action_cb = ban_badprotocol_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_badprotocol_ev];
@transform_action_cb_ban_badprotocol_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_badprotocol_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_badprotocol_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_badprotocol_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_badprotocol_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_badprotocol_ev];
)

// Rule: .action_cb = ban_clientconnectrate_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_clientconnectrate_ev];
@transform_action_cb_ban_clientconnectrate_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_clientconnectrate_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_clientconnectrate_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_clientconnectrate_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_clientconnectrate_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_clientconnectrate_ev];
)

// Rule: .action_cb = ban_emptypassword_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_emptypassword_ev];
@transform_action_cb_ban_emptypassword_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_emptypassword_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_emptypassword_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_emptypassword_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_emptypassword_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_emptypassword_ev];
)

// Rule: .action_cb = ban_maxclientsperclass_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperclass_ev];
@transform_action_cb_ban_maxclientsperclass_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxclientsperclass_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperclass_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperclass_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperclass_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperclass_ev];
)

// Rule: .action_cb = ban_maxclientsperhost_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperhost_ev];
@transform_action_cb_ban_maxclientsperhost_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxclientsperhost_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperhost_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperhost_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperhost_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperhost_ev];
)

// Rule: .action_cb = ban_maxclientsperuser_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperuser_ev];
@transform_action_cb_ban_maxclientsperuser_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxclientsperuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxclientsperuser_ev];
)

// Rule: .action_cb = ban_maxcmdrate_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxcmdrate_ev];
@transform_action_cb_ban_maxcmdrate_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxcmdrate_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxcmdrate_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxcmdrate_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxcmdrate_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxcmdrate_ev];
)

// Rule: .action_cb = ban_maxconnperhost_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxconnperhost_ev];
@transform_action_cb_ban_maxconnperhost_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxconnperhost_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxconnperhost_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxconnperhost_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxconnperhost_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxconnperhost_ev];
)

// Rule: .action_cb = ban_maxhostsperuser_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxhostsperuser_ev];
@transform_action_cb_ban_maxhostsperuser_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxhostsperuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxhostsperuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxhostsperuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxhostsperuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxhostsperuser_ev];
)

// Rule: .action_cb = ban_maxloginattempts_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattempts_ev];
@transform_action_cb_ban_maxloginattempts_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxloginattempts_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattempts_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattempts_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattempts_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattempts_ev];
)

// Rule: .action_cb = ban_maxloginattemptsfromuser_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev];
@transform_action_cb_ban_maxloginattemptsfromuser_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_maxloginattemptsfromuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_maxloginattemptsfromuser_ev];
)

// Rule: .action_cb = ban_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_mod_unload_ev];
@transform_action_cb_ban_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_mod_unload_ev];
)

// Rule: .action_cb = ban_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_postparse_ev];
@transform_action_cb_ban_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_postparse_ev];
)

// Rule: .action_cb = ban_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_restart_ev];
@transform_action_cb_ban_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_restart_ev];
)

// Rule: .action_cb = ban_rootlogin_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_rootlogin_ev];
@transform_action_cb_ban_rootlogin_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_rootlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_rootlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_rootlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_rootlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_rootlogin_ev];
)

// Rule: .action_cb = ban_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_sess_reinit_ev];
@transform_action_cb_ban_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_sess_reinit_ev];
)

// Rule: .action_cb = ban_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_shutdown_ev];
@transform_action_cb_ban_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_shutdown_ev];
)

// Rule: .action_cb = ban_timeoutidle_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_timeoutidle_ev];
@transform_action_cb_ban_timeoutidle_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_timeoutidle_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutidle_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutidle_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutidle_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutidle_ev];
)

// Rule: .action_cb = ban_timeoutlogin_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_timeoutlogin_ev];
@transform_action_cb_ban_timeoutlogin_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_timeoutlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutlogin_ev];
)

// Rule: .action_cb = ban_timeoutnoxfer_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_timeoutnoxfer_ev];
@transform_action_cb_ban_timeoutnoxfer_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_timeoutnoxfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutnoxfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_timeoutnoxfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutnoxfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_timeoutnoxfer_ev];
)

// Rule: .action_cb = ban_tlshandshake_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_tlshandshake_ev];
@transform_action_cb_ban_tlshandshake_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_tlshandshake_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_tlshandshake_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_tlshandshake_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_tlshandshake_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_tlshandshake_ev];
)

// Rule: .action_cb = ban_unhandledcmd_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_unhandledcmd_ev];
@transform_action_cb_ban_unhandledcmd_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_unhandledcmd_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_unhandledcmd_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_unhandledcmd_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_unhandledcmd_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_unhandledcmd_ev];
)

// Rule: .action_cb = ban_userdefined_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ban_userdefined_ev];
@transform_action_cb_ban_userdefined_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ban_userdefined_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_userdefined_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ban_userdefined_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_userdefined_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ban_userdefined_ev];
)

// Rule: .action_cb = cap_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_cap_sess_reinit_ev];
@transform_action_cb_cap_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = cap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_cap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_cap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_cap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_cap_sess_reinit_ev];
)

// Rule: .action_cb = core_chroot_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_chroot_ev];
@transform_action_cb_core_chroot_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_chroot_ev];
)

// Rule: .action_cb = core_connected_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_connected_ev];
@transform_action_cb_core_connected_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_connected_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_connected_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_connected_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_connected_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_connected_ev];
)

// Rule: .action_cb = core_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_exit_ev];
@transform_action_cb_core_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_exit_ev];
)

// Rule: .action_cb = core_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_postparse_ev];
@transform_action_cb_core_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_postparse_ev];
)

// Rule: .action_cb = core_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_restart_ev];
@transform_action_cb_core_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_restart_ev];
)

// Rule: .action_cb = core_startup_ev ==> .action_cb_signature = action_cb_signatures[action_cb_core_startup_ev];
@transform_action_cb_core_startup_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = core_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_core_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_core_startup_ev];
)

// Rule: .action_cb = ctrls_admin_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev];
@transform_action_cb_ctrls_admin_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_admin_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_mod_unload_ev];
)

// Rule: .action_cb = ctrls_admin_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_restart_ev];
@transform_action_cb_ctrls_admin_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_admin_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_restart_ev];
)

// Rule: .action_cb = ctrls_admin_startup_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_startup_ev];
@transform_action_cb_ctrls_admin_startup_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_admin_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_admin_startup_ev];
)

// Rule: .action_cb = ctrls_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_postparse_ev];
@transform_action_cb_ctrls_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_postparse_ev];
)

// Rule: .action_cb = ctrls_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_restart_ev];
@transform_action_cb_ctrls_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_restart_ev];
)

// Rule: .action_cb = ctrls_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_shutdown_ev];
@transform_action_cb_ctrls_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_shutdown_ev];
)

// Rule: .action_cb = ctrls_test2_cb ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_test2_cb];
@transform_action_cb_ctrls_test2_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_test2_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_test2_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_test2_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_test2_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_test2_cb];
)

// Rule: .action_cb = ctrls_test_cb ==> .action_cb_signature = action_cb_signatures[action_cb_ctrls_test_cb];
@transform_action_cb_ctrls_test_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ctrls_test_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_test_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ctrls_test_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_test_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ctrls_test_cb];
)

// Rule: .action_cb = define_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_define_restart_ev];
@transform_action_cb_define_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = define_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_define_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_define_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_define_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_define_restart_ev];
)

// Rule: .action_cb = deflate_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_deflate_sess_reinit_ev];
@transform_action_cb_deflate_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = deflate_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_deflate_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_deflate_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_deflate_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_deflate_sess_reinit_ev];
)

// Rule: .action_cb = delay_connect_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_connect_ev];
@transform_action_cb_delay_connect_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_connect_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_connect_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_connect_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_connect_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_connect_ev];
)

// Rule: .action_cb = delay_handle_delay ==> .action_cb_signature = action_cb_signatures[action_cb_delay_handle_delay];
@transform_action_cb_delay_handle_delay@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_handle_delay;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_handle_delay];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_handle_delay];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_handle_delay];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_handle_delay];
)

// Rule: .action_cb = delay_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_mod_unload_ev];
@transform_action_cb_delay_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_mod_unload_ev];
)

// Rule: .action_cb = delay_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_postparse_ev];
@transform_action_cb_delay_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_postparse_ev];
)

// Rule: .action_cb = delay_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_restart_ev];
@transform_action_cb_delay_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_restart_ev];
)

// Rule: .action_cb = delay_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_sess_reinit_ev];
@transform_action_cb_delay_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_sess_reinit_ev];
)

// Rule: .action_cb = delay_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_delay_shutdown_ev];
@transform_action_cb_delay_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = delay_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_delay_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_delay_shutdown_ev];
)

// Rule: .action_cb = digest_data_xfer_ev ==> .action_cb_signature = action_cb_signatures[action_cb_digest_data_xfer_ev];
@transform_action_cb_digest_data_xfer_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = digest_data_xfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_data_xfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_data_xfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_data_xfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_data_xfer_ev];
)

// Rule: .action_cb = digest_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_digest_mod_unload_ev];
@transform_action_cb_digest_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = digest_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_mod_unload_ev];
)

// Rule: .action_cb = digest_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_digest_sess_reinit_ev];
@transform_action_cb_digest_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = digest_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_digest_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_digest_sess_reinit_ev];
)

// Rule: .action_cb = dnsbl_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_dnsbl_sess_reinit_ev];
@transform_action_cb_dnsbl_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dnsbl_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dnsbl_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dnsbl_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dnsbl_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dnsbl_sess_reinit_ev];
)

// Rule: .action_cb = do_cb ==> .action_cb_signature = action_cb_signatures[action_cb_do_cb];
@transform_action_cb_do_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = do_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_do_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_do_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_do_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_do_cb];
)

// Rule: .action_cb = do_with_remove_cb ==> .action_cb_signature = action_cb_signatures[action_cb_do_with_remove_cb];
@transform_action_cb_do_with_remove_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = do_with_remove_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_do_with_remove_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_do_with_remove_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_do_with_remove_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_do_with_remove_cb];
)

// Rule: .action_cb = dso_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_dso_restart_ev];
@transform_action_cb_dso_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dso_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dso_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dso_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dso_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dso_restart_ev];
)

// Rule: .action_cb = dynmasq_handle_dynmasq ==> .action_cb_signature = action_cb_signatures[action_cb_dynmasq_handle_dynmasq];
@transform_action_cb_dynmasq_handle_dynmasq@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dynmasq_handle_dynmasq;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_handle_dynmasq];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_handle_dynmasq];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_handle_dynmasq];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_handle_dynmasq];
)

// Rule: .action_cb = dynmasq_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_dynmasq_mod_unload_ev];
@transform_action_cb_dynmasq_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dynmasq_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_mod_unload_ev];
)

// Rule: .action_cb = dynmasq_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_dynmasq_postparse_ev];
@transform_action_cb_dynmasq_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dynmasq_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_postparse_ev];
)

// Rule: .action_cb = dynmasq_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_dynmasq_restart_ev];
@transform_action_cb_dynmasq_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = dynmasq_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_dynmasq_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_dynmasq_restart_ev];
)

// Rule: .action_cb = event_cb ==> .action_cb_signature = action_cb_signatures[action_cb_event_cb];
@transform_action_cb_event_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = event_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb];
)

// Rule: .action_cb = event_cb2 ==> .action_cb_signature = action_cb_signatures[action_cb_event_cb2];
@transform_action_cb_event_cb2@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = event_cb2;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb2];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb2];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb2];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb2];
)

// Rule: .action_cb = event_cb3 ==> .action_cb_signature = action_cb_signatures[action_cb_event_cb3];
@transform_action_cb_event_cb3@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = event_cb3;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb3];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_event_cb3];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb3];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_event_cb3];
)

// Rule: .action_cb = exec_any_ev ==> .action_cb_signature = action_cb_signatures[action_cb_exec_any_ev];
@transform_action_cb_exec_any_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = exec_any_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_any_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_any_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_any_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_any_ev];
)

// Rule: .action_cb = exec_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_exec_mod_unload_ev];
@transform_action_cb_exec_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = exec_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_mod_unload_ev];
)

// Rule: .action_cb = exec_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_exec_postparse_ev];
@transform_action_cb_exec_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = exec_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_postparse_ev];
)

// Rule: .action_cb = exec_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_exec_restart_ev];
@transform_action_cb_exec_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = exec_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_restart_ev];
)

// Rule: .action_cb = exec_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_exec_sess_reinit_ev];
@transform_action_cb_exec_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = exec_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_exec_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_exec_sess_reinit_ev];
)

// Rule: .action_cb = facl_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_facl_mod_unload_ev];
@transform_action_cb_facl_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = facl_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_mod_unload_ev];
)

// Rule: .action_cb = facl_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_facl_postparse_ev];
@transform_action_cb_facl_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = facl_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_postparse_ev];
)

// Rule: .action_cb = facl_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_facl_restart_ev];
@transform_action_cb_facl_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = facl_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facl_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facl_restart_ev];
)

// Rule: .action_cb = facts_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_facts_sess_reinit_ev];
@transform_action_cb_facts_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = facts_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facts_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_facts_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facts_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_facts_sess_reinit_ev];
)

// Rule: .action_cb = filetab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_filetab_mod_unload_ev];
@transform_action_cb_filetab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = filetab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_filetab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_filetab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_filetab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_filetab_mod_unload_ev];
)

// Rule: .action_cb = forensic_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_forensic_exit_ev];
@transform_action_cb_forensic_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = forensic_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_exit_ev];
)

// Rule: .action_cb = forensic_log_ev ==> .action_cb_signature = action_cb_signatures[action_cb_forensic_log_ev];
@transform_action_cb_forensic_log_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = forensic_log_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_log_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_log_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_log_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_log_ev];
)

// Rule: .action_cb = forensic_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_forensic_mod_unload_ev];
@transform_action_cb_forensic_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = forensic_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_mod_unload_ev];
)

// Rule: .action_cb = forensic_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_forensic_sess_reinit_ev];
@transform_action_cb_forensic_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = forensic_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_forensic_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_forensic_sess_reinit_ev];
)

// Rule: .action_cb = fscache_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_fscache_mod_unload_ev];
@transform_action_cb_fscache_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = fscache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_fscache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_fscache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_fscache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_fscache_mod_unload_ev];
)

// Rule: .action_cb = fxp_handle_abort ==> .action_cb_signature = action_cb_signatures[action_cb_fxp_handle_abort];
@transform_action_cb_fxp_handle_abort@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = fxp_handle_abort;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_fxp_handle_abort];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_fxp_handle_abort];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_fxp_handle_abort];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_fxp_handle_abort];
)

// Rule: .action_cb = geoip_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_geoip_mod_unload_ev];
@transform_action_cb_geoip_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = geoip_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_mod_unload_ev];
)

// Rule: .action_cb = geoip_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_geoip_postparse_ev];
@transform_action_cb_geoip_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = geoip_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_postparse_ev];
)

// Rule: .action_cb = geoip_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_geoip_restart_ev];
@transform_action_cb_geoip_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = geoip_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_geoip_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_geoip_restart_ev];
)

// Rule: .action_cb = ident_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ident_sess_reinit_ev];
@transform_action_cb_ident_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ident_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ident_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ident_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ident_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ident_sess_reinit_ev];
)

// Rule: .action_cb = ifsess_chroot_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ifsess_chroot_ev];
@transform_action_cb_ifsess_chroot_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ifsess_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_chroot_ev];
)

// Rule: .action_cb = ifsess_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ifsess_mod_unload_ev];
@transform_action_cb_ifsess_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ifsess_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_mod_unload_ev];
)

// Rule: .action_cb = ifsess_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ifsess_postparse_ev];
@transform_action_cb_ifsess_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ifsess_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ifsess_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ifsess_postparse_ev];
)

// Rule: .action_cb = lang_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_lang_postparse_ev];
@transform_action_cb_lang_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = lang_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_lang_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_lang_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_lang_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_lang_postparse_ev];
)

// Rule: .action_cb = lang_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_lang_restart_ev];
@transform_action_cb_lang_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = lang_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_lang_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_lang_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_lang_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_lang_restart_ev];
)

// Rule: .action_cb = ldap_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ldap_mod_unload_ev];
@transform_action_cb_ldap_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ldap_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_mod_unload_ev];
)

// Rule: .action_cb = ldap_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ldap_postparse_ev];
@transform_action_cb_ldap_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ldap_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_postparse_ev];
)

// Rule: .action_cb = ldap_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ldap_sess_reinit_ev];
@transform_action_cb_ldap_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ldap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_sess_reinit_ev];
)

// Rule: .action_cb = ldap_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ldap_shutdown_ev];
@transform_action_cb_ldap_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ldap_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldap_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldap_shutdown_ev];
)

// Rule: .action_cb = ldaptab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_ldaptab_mod_unload_ev];
@transform_action_cb_ldaptab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = ldaptab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldaptab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_ldaptab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldaptab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_ldaptab_mod_unload_ev];
)

// Rule: .action_cb = log_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_log_exit_ev];
@transform_action_cb_log_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_exit_ev];
)

// Rule: .action_cb = log_fmt_extra_iter_cb ==> .action_cb_signature = action_cb_signatures[action_cb_log_fmt_extra_iter_cb];
@transform_action_cb_log_fmt_extra_iter_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_fmt_extra_iter_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_fmt_extra_iter_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_fmt_extra_iter_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_fmt_extra_iter_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_fmt_extra_iter_cb];
)

// Rule: .action_cb = log_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_log_postparse_ev];
@transform_action_cb_log_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_postparse_ev];
)

// Rule: .action_cb = log_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_log_restart_ev];
@transform_action_cb_log_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_restart_ev];
)

// Rule: .action_cb = log_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_log_sess_reinit_ev];
@transform_action_cb_log_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_sess_reinit_ev];
)

// Rule: .action_cb = log_xfer_stalled_ev ==> .action_cb_signature = action_cb_signatures[action_cb_log_xfer_stalled_ev];
@transform_action_cb_log_xfer_stalled_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = log_xfer_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_xfer_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_log_xfer_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_xfer_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_log_xfer_stalled_ev];
)

// Rule: .action_cb = mcache_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_mcache_exit_ev];
@transform_action_cb_mcache_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = mcache_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_exit_ev];
)

// Rule: .action_cb = mcache_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_mcache_restart_ev];
@transform_action_cb_mcache_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = mcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_restart_ev];
)

// Rule: .action_cb = mcache_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_mcache_sess_reinit_ev];
@transform_action_cb_mcache_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = mcache_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_mcache_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_mcache_sess_reinit_ev];
)

// Rule: .action_cb = object_item_fail ==> .action_cb_signature = action_cb_signatures[action_cb_object_item_fail];
@transform_action_cb_object_item_fail@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = object_item_fail;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_object_item_fail];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_object_item_fail];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_object_item_fail];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_object_item_fail];
)

// Rule: .action_cb = object_item_ok ==> .action_cb_signature = action_cb_signatures[action_cb_object_item_ok];
@transform_action_cb_object_item_ok@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = object_item_ok;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_object_item_ok];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_object_item_ok];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_object_item_ok];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_object_item_ok];
)

// Rule: .action_cb = pool_visitf ==> .action_cb_signature = action_cb_signatures[action_cb_pool_visitf];
@transform_action_cb_pool_visitf@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = pool_visitf;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_pool_visitf];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_pool_visitf];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_pool_visitf];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_pool_visitf];
)

// Rule: .action_cb = qos_ctrl_listen_ev ==> .action_cb_signature = action_cb_signatures[action_cb_qos_ctrl_listen_ev];
@transform_action_cb_qos_ctrl_listen_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = qos_ctrl_listen_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_ctrl_listen_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_ctrl_listen_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_ctrl_listen_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_ctrl_listen_ev];
)

// Rule: .action_cb = qos_data_connect_ev ==> .action_cb_signature = action_cb_signatures[action_cb_qos_data_connect_ev];
@transform_action_cb_qos_data_connect_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = qos_data_connect_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_data_connect_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_data_connect_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_data_connect_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_data_connect_ev];
)

// Rule: .action_cb = qos_data_listen_ev ==> .action_cb_signature = action_cb_signatures[action_cb_qos_data_listen_ev];
@transform_action_cb_qos_data_listen_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = qos_data_listen_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_data_listen_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_data_listen_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_data_listen_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_data_listen_ev];
)

// Rule: .action_cb = qos_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_qos_mod_unload_ev];
@transform_action_cb_qos_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = qos_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_mod_unload_ev];
)

// Rule: .action_cb = qos_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_qos_sess_reinit_ev];
@transform_action_cb_qos_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = qos_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_qos_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_qos_sess_reinit_ev];
)

// Rule: .action_cb = quotatab_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_quotatab_exit_ev];
@transform_action_cb_quotatab_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = quotatab_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_exit_ev];
)

// Rule: .action_cb = quotatab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_quotatab_mod_unload_ev];
@transform_action_cb_quotatab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = quotatab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_mod_unload_ev];
)

// Rule: .action_cb = quotatab_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_quotatab_restart_ev];
@transform_action_cb_quotatab_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = quotatab_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_restart_ev];
)

// Rule: .action_cb = quotatab_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_quotatab_sess_reinit_ev];
@transform_action_cb_quotatab_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = quotatab_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_quotatab_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_quotatab_sess_reinit_ev];
)

// Rule: .action_cb = radius_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_radius_exit_ev];
@transform_action_cb_radius_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = radius_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_exit_ev];
)

// Rule: .action_cb = radius_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_radius_mod_unload_ev];
@transform_action_cb_radius_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = radius_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_mod_unload_ev];
)

// Rule: .action_cb = radius_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_radius_restart_ev];
@transform_action_cb_radius_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = radius_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_restart_ev];
)

// Rule: .action_cb = radius_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_radius_sess_reinit_ev];
@transform_action_cb_radius_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = radius_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radius_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radius_sess_reinit_ev];
)

// Rule: .action_cb = radiustab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_radiustab_mod_unload_ev];
@transform_action_cb_radiustab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = radiustab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radiustab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_radiustab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radiustab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_radiustab_mod_unload_ev];
)

// Rule: .action_cb = redis_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_redis_restart_ev];
@transform_action_cb_redis_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = redis_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_restart_ev];
)

// Rule: .action_cb = redis_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_redis_sess_reinit_ev];
@transform_action_cb_redis_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = redis_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_sess_reinit_ev];
)

// Rule: .action_cb = redis_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_redis_shutdown_ev];
@transform_action_cb_redis_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = redis_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redis_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redis_shutdown_ev];
)

// Rule: .action_cb = redistab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_redistab_mod_unload_ev];
@transform_action_cb_redistab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = redistab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redistab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_redistab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redistab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_redistab_mod_unload_ev];
)

// Rule: .action_cb = regexp_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_regexp_exit_ev];
@transform_action_cb_regexp_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = regexp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_regexp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_regexp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_regexp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_regexp_exit_ev];
)

// Rule: .action_cb = regexp_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_regexp_restart_ev];
@transform_action_cb_regexp_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = regexp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_regexp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_regexp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_regexp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_regexp_restart_ev];
)

// Rule: .action_cb = restart_daemon ==> .action_cb_signature = action_cb_signatures[action_cb_restart_daemon];
@transform_action_cb_restart_daemon@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = restart_daemon;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_restart_daemon];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_restart_daemon];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_restart_daemon];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_restart_daemon];
)

// Rule: .action_cb = rewrite_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rewrite_exit_ev];
@transform_action_cb_rewrite_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rewrite_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_exit_ev];
)

// Rule: .action_cb = rewrite_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rewrite_mod_unload_ev];
@transform_action_cb_rewrite_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rewrite_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_mod_unload_ev];
)

// Rule: .action_cb = rewrite_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rewrite_restart_ev];
@transform_action_cb_rewrite_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rewrite_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_restart_ev];
)

// Rule: .action_cb = rewrite_rewrite_home_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rewrite_rewrite_home_ev];
@transform_action_cb_rewrite_rewrite_home_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rewrite_rewrite_home_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_rewrite_home_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_rewrite_home_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_rewrite_home_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_rewrite_home_ev];
)

// Rule: .action_cb = rewrite_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rewrite_sess_reinit_ev];
@transform_action_cb_rewrite_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rewrite_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rewrite_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rewrite_sess_reinit_ev];
)

// Rule: .action_cb = rlimit_chroot_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rlimit_chroot_ev];
@transform_action_cb_rlimit_chroot_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rlimit_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rlimit_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rlimit_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rlimit_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rlimit_chroot_ev];
)

// Rule: .action_cb = rlimit_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_rlimit_postparse_ev];
@transform_action_cb_rlimit_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = rlimit_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rlimit_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_rlimit_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rlimit_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_rlimit_postparse_ev];
)

// Rule: .action_cb = schedule_cb ==> .action_cb_signature = action_cb_signatures[action_cb_schedule_cb];
@transform_action_cb_schedule_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = schedule_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_schedule_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_schedule_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_schedule_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_schedule_cb];
)

// Rule: .action_cb = sftp_ban_class_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_ban_class_ev];
@transform_action_cb_sftp_ban_class_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_ban_class_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_class_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_class_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_class_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_class_ev];
)

// Rule: .action_cb = sftp_ban_host_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_ban_host_ev];
@transform_action_cb_sftp_ban_host_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_ban_host_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_host_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_host_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_host_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_host_ev];
)

// Rule: .action_cb = sftp_ban_user_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_ban_user_ev];
@transform_action_cb_sftp_ban_user_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_ban_user_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_user_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_ban_user_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_user_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_ban_user_ev];
)

// Rule: .action_cb = sftp_chroot_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_chroot_ev];
@transform_action_cb_sftp_chroot_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_chroot_ev];
)

// Rule: .action_cb = sftp_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_exit_ev];
@transform_action_cb_sftp_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_exit_ev];
)

// Rule: .action_cb = sftp_max_conns_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_max_conns_ev];
@transform_action_cb_sftp_max_conns_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_max_conns_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_max_conns_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_max_conns_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_max_conns_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_max_conns_ev];
)

// Rule: .action_cb = sftp_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_mod_unload_ev];
@transform_action_cb_sftp_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_mod_unload_ev];
)

// Rule: .action_cb = sftp_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_postparse_ev];
@transform_action_cb_sftp_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_postparse_ev];
)

// Rule: .action_cb = sftp_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_restart_ev];
@transform_action_cb_sftp_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_restart_ev];
)

// Rule: .action_cb = sftp_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_shutdown_ev];
@transform_action_cb_sftp_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_shutdown_ev];
)

// Rule: .action_cb = sftp_sigusr2_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_sigusr2_ev];
@transform_action_cb_sftp_sigusr2_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_sigusr2_ev];
)

// Rule: .action_cb = sftp_timeoutlogin_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_timeoutlogin_ev];
@transform_action_cb_sftp_timeoutlogin_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_timeoutlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_timeoutlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_timeoutlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_timeoutlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_timeoutlogin_ev];
)

// Rule: .action_cb = sftp_wrap_conn_denied_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev];
@transform_action_cb_sftp_wrap_conn_denied_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftp_wrap_conn_denied_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftp_wrap_conn_denied_ev];
)

// Rule: .action_cb = sftppam_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftppam_exit_ev];
@transform_action_cb_sftppam_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftppam_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftppam_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftppam_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftppam_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftppam_exit_ev];
)

// Rule: .action_cb = sftppam_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftppam_mod_unload_ev];
@transform_action_cb_sftppam_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftppam_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftppam_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftppam_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftppam_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftppam_mod_unload_ev];
)

// Rule: .action_cb = sftpsql_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sftpsql_mod_unload_ev];
@transform_action_cb_sftpsql_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sftpsql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftpsql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sftpsql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftpsql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sftpsql_mod_unload_ev];
)

// Rule: .action_cb = shaper_handle_shaper ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_handle_shaper];
@transform_action_cb_shaper_handle_shaper@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_handle_shaper;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_handle_shaper];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_handle_shaper];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_handle_shaper];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_handle_shaper];
)

// Rule: .action_cb = shaper_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_mod_unload_ev];
@transform_action_cb_shaper_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_mod_unload_ev];
)

// Rule: .action_cb = shaper_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_postparse_ev];
@transform_action_cb_shaper_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_postparse_ev];
)

// Rule: .action_cb = shaper_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_restart_ev];
@transform_action_cb_shaper_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_restart_ev];
)

// Rule: .action_cb = shaper_sess_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_sess_exit_ev];
@transform_action_cb_shaper_sess_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_sess_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_sess_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_sess_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_sess_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_sess_exit_ev];
)

// Rule: .action_cb = shaper_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_shutdown_ev];
@transform_action_cb_shaper_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_shutdown_ev];
)

// Rule: .action_cb = shaper_sigusr2_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shaper_sigusr2_ev];
@transform_action_cb_shaper_sigusr2_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shaper_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shaper_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shaper_sigusr2_ev];
)

// Rule: .action_cb = shmcache_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shmcache_mod_unload_ev];
@transform_action_cb_shmcache_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shmcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_mod_unload_ev];
)

// Rule: .action_cb = shmcache_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shmcache_restart_ev];
@transform_action_cb_shmcache_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shmcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_restart_ev];
)

// Rule: .action_cb = shmcache_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_shmcache_shutdown_ev];
@transform_action_cb_shmcache_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shmcache_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shmcache_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shmcache_shutdown_ev];
)

// Rule: .action_cb = shutdown_end_session ==> .action_cb_signature = action_cb_signatures[action_cb_shutdown_end_session];
@transform_action_cb_shutdown_end_session@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = shutdown_end_session;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shutdown_end_session];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_shutdown_end_session];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shutdown_end_session];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_shutdown_end_session];
)

// Rule: .action_cb = site_misc_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_site_misc_sess_reinit_ev];
@transform_action_cb_site_misc_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = site_misc_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_site_misc_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_site_misc_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_site_misc_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_site_misc_sess_reinit_ev];
)

// Rule: .action_cb = snmp_auth_code_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_auth_code_ev];
@transform_action_cb_snmp_auth_code_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_auth_code_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_auth_code_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_auth_code_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_auth_code_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_auth_code_ev];
)

// Rule: .action_cb = snmp_ban_ban_class_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_class_ev];
@transform_action_cb_snmp_ban_ban_class_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ban_ban_class_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_class_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_class_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_class_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_class_ev];
)

// Rule: .action_cb = snmp_ban_ban_host_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_host_ev];
@transform_action_cb_snmp_ban_ban_host_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ban_ban_host_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_host_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_host_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_host_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_host_ev];
)

// Rule: .action_cb = snmp_ban_ban_user_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_user_ev];
@transform_action_cb_snmp_ban_ban_user_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ban_ban_user_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_user_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_user_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_user_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_ban_user_ev];
)

// Rule: .action_cb = snmp_ban_client_disconn_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ban_client_disconn_ev];
@transform_action_cb_snmp_ban_client_disconn_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ban_client_disconn_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_client_disconn_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_client_disconn_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_client_disconn_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_client_disconn_ev];
)

// Rule: .action_cb = snmp_ban_expired_ban_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ban_expired_ban_ev];
@transform_action_cb_snmp_ban_expired_ban_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ban_expired_ban_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_expired_ban_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ban_expired_ban_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_expired_ban_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ban_expired_ban_ev];
)

// Rule: .action_cb = snmp_cmd_invalid_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_cmd_invalid_ev];
@transform_action_cb_snmp_cmd_invalid_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_cmd_invalid_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_cmd_invalid_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_cmd_invalid_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_cmd_invalid_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_cmd_invalid_ev];
)

// Rule: .action_cb = snmp_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_exit_ev];
@transform_action_cb_snmp_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_exit_ev];
)

// Rule: .action_cb = snmp_max_inst_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_max_inst_ev];
@transform_action_cb_snmp_max_inst_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_max_inst_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_max_inst_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_max_inst_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_max_inst_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_max_inst_ev];
)

// Rule: .action_cb = snmp_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_mod_unload_ev];
@transform_action_cb_snmp_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_mod_unload_ev];
)

// Rule: .action_cb = snmp_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_postparse_ev];
@transform_action_cb_snmp_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_postparse_ev];
)

// Rule: .action_cb = snmp_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_restart_ev];
@transform_action_cb_snmp_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_restart_ev];
)

// Rule: .action_cb = snmp_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_shutdown_ev];
@transform_action_cb_snmp_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_shutdown_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_hostbased_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev];
@transform_action_cb_snmp_ssh2_auth_hostbased_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_hostbased_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_err_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_hostbased_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev];
@transform_action_cb_snmp_ssh2_auth_hostbased_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_hostbased_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_hostbased_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_kbdint_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev];
@transform_action_cb_snmp_ssh2_auth_kbdint_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_kbdint_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_err_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_kbdint_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev];
@transform_action_cb_snmp_ssh2_auth_kbdint_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_kbdint_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_kbdint_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_passwd_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev];
@transform_action_cb_snmp_ssh2_auth_passwd_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_passwd_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_err_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_passwd_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev];
@transform_action_cb_snmp_ssh2_auth_passwd_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_passwd_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_passwd_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_publickey_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev];
@transform_action_cb_snmp_ssh2_auth_publickey_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_publickey_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_err_ev];
)

// Rule: .action_cb = snmp_ssh2_auth_publickey_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev];
@transform_action_cb_snmp_ssh2_auth_publickey_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_auth_publickey_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_auth_publickey_ev];
)

// Rule: .action_cb = snmp_ssh2_c2s_compress_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev];
@transform_action_cb_snmp_ssh2_c2s_compress_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_c2s_compress_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_c2s_compress_ev];
)

// Rule: .action_cb = snmp_ssh2_kex_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev];
@transform_action_cb_snmp_ssh2_kex_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_kex_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_kex_err_ev];
)

// Rule: .action_cb = snmp_ssh2_s2c_compress_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev];
@transform_action_cb_snmp_ssh2_s2c_compress_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_s2c_compress_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_s2c_compress_ev];
)

// Rule: .action_cb = snmp_ssh2_scp_sess_closed_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev];
@transform_action_cb_snmp_ssh2_scp_sess_closed_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_scp_sess_closed_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_closed_ev];
)

// Rule: .action_cb = snmp_ssh2_scp_sess_opened_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev];
@transform_action_cb_snmp_ssh2_scp_sess_opened_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_scp_sess_opened_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_scp_sess_opened_ev];
)

// Rule: .action_cb = snmp_ssh2_sftp_proto_version_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev];
@transform_action_cb_snmp_ssh2_sftp_proto_version_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_sftp_proto_version_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_proto_version_ev];
)

// Rule: .action_cb = snmp_ssh2_sftp_sess_closed_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev];
@transform_action_cb_snmp_ssh2_sftp_sess_closed_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_sftp_sess_closed_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_closed_ev];
)

// Rule: .action_cb = snmp_ssh2_sftp_sess_opened_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev];
@transform_action_cb_snmp_ssh2_sftp_sess_opened_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_ssh2_sftp_sess_opened_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_ssh2_sftp_sess_opened_ev];
)

// Rule: .action_cb = snmp_startup_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_startup_ev];
@transform_action_cb_snmp_startup_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_startup_ev];
)

// Rule: .action_cb = snmp_timeout_idle_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_idle_ev];
@transform_action_cb_snmp_timeout_idle_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_timeout_idle_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_idle_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_idle_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_idle_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_idle_ev];
)

// Rule: .action_cb = snmp_timeout_login_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_login_ev];
@transform_action_cb_snmp_timeout_login_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_timeout_login_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_login_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_login_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_login_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_login_ev];
)

// Rule: .action_cb = snmp_timeout_noxfer_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_noxfer_ev];
@transform_action_cb_snmp_timeout_noxfer_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_timeout_noxfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_noxfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_noxfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_noxfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_noxfer_ev];
)

// Rule: .action_cb = snmp_timeout_stalled_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_stalled_ev];
@transform_action_cb_snmp_timeout_stalled_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_timeout_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_timeout_stalled_ev];
)

// Rule: .action_cb = snmp_tls_ctrl_handshake_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev];
@transform_action_cb_snmp_tls_ctrl_handshake_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_tls_ctrl_handshake_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_ctrl_handshake_err_ev];
)

// Rule: .action_cb = snmp_tls_data_handshake_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev];
@transform_action_cb_snmp_tls_data_handshake_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_tls_data_handshake_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_data_handshake_err_ev];
)

// Rule: .action_cb = snmp_tls_verify_client_err_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev];
@transform_action_cb_snmp_tls_verify_client_err_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_tls_verify_client_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_err_ev];
)

// Rule: .action_cb = snmp_tls_verify_client_ev ==> .action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_ev];
@transform_action_cb_snmp_tls_verify_client_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = snmp_tls_verify_client_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_snmp_tls_verify_client_ev];
)

// Rule: .action_cb = sql_chroot_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_chroot_ev];
@transform_action_cb_sql_chroot_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_chroot_ev];
)

// Rule: .action_cb = sql_eventlog_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_eventlog_ev];
@transform_action_cb_sql_eventlog_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_eventlog_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_eventlog_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_eventlog_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_eventlog_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_eventlog_ev];
)

// Rule: .action_cb = sql_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_exit_ev];
@transform_action_cb_sql_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_exit_ev];
)

// Rule: .action_cb = sql_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_mod_unload_ev];
@transform_action_cb_sql_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mod_unload_ev];
)

// Rule: .action_cb = sql_mysql_mod_load_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_load_ev];
@transform_action_cb_sql_mysql_mod_load_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_mysql_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_load_ev];
)

// Rule: .action_cb = sql_mysql_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_unload_ev];
@transform_action_cb_sql_mysql_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_mysql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_mysql_mod_unload_ev];
)

// Rule: .action_cb = sql_passwd_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_passwd_mod_unload_ev];
@transform_action_cb_sql_passwd_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_passwd_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_passwd_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_passwd_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_passwd_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_passwd_mod_unload_ev];
)

// Rule: .action_cb = sql_passwd_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev];
@transform_action_cb_sql_passwd_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_passwd_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_passwd_sess_reinit_ev];
)

// Rule: .action_cb = sql_postgres_mod_load_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_load_ev];
@transform_action_cb_sql_postgres_mod_load_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_postgres_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_load_ev];
)

// Rule: .action_cb = sql_postgres_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_unload_ev];
@transform_action_cb_sql_postgres_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_postgres_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_postgres_mod_unload_ev];
)

// Rule: .action_cb = sql_preparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_preparse_ev];
@transform_action_cb_sql_preparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_preparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_preparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_preparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_preparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_preparse_ev];
)

// Rule: .action_cb = sql_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_sess_reinit_ev];
@transform_action_cb_sql_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sess_reinit_ev];
)

// Rule: .action_cb = sql_sqlite_mod_load_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_load_ev];
@transform_action_cb_sql_sqlite_mod_load_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_sqlite_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_load_ev];
)

// Rule: .action_cb = sql_sqlite_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev];
@transform_action_cb_sql_sqlite_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sql_sqlite_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sql_sqlite_mod_unload_ev];
)

// Rule: .action_cb = sqlodbc_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sqlodbc_mod_unload_ev];
@transform_action_cb_sqlodbc_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sqlodbc_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sqlodbc_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sqlodbc_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sqlodbc_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sqlodbc_mod_unload_ev];
)

// Rule: .action_cb = sqltab_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_sqltab_mod_unload_ev];
@transform_action_cb_sqltab_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = sqltab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sqltab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_sqltab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sqltab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_sqltab_mod_unload_ev];
)

// Rule: .action_cb = statcache_fs_statcache_clear_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev];
@transform_action_cb_statcache_fs_statcache_clear_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_fs_statcache_clear_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_fs_statcache_clear_ev];
)

// Rule: .action_cb = statcache_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_mod_unload_ev];
@transform_action_cb_statcache_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_mod_unload_ev];
)

// Rule: .action_cb = statcache_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_postparse_ev];
@transform_action_cb_statcache_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_postparse_ev];
)

// Rule: .action_cb = statcache_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_restart_ev];
@transform_action_cb_statcache_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_restart_ev];
)

// Rule: .action_cb = statcache_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_sess_reinit_ev];
@transform_action_cb_statcache_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_sess_reinit_ev];
)

// Rule: .action_cb = statcache_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_statcache_shutdown_ev];
@transform_action_cb_statcache_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = statcache_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_statcache_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_statcache_shutdown_ev];
)

// Rule: .action_cb = systemd_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_systemd_mod_unload_ev];
@transform_action_cb_systemd_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = systemd_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_mod_unload_ev];
)

// Rule: .action_cb = systemd_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_systemd_postparse_ev];
@transform_action_cb_systemd_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = systemd_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_postparse_ev];
)

// Rule: .action_cb = systemd_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_systemd_restart_ev];
@transform_action_cb_systemd_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = systemd_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_restart_ev];
)

// Rule: .action_cb = systemd_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_systemd_shutdown_ev];
@transform_action_cb_systemd_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = systemd_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_shutdown_ev];
)

// Rule: .action_cb = systemd_startup_ev ==> .action_cb_signature = action_cb_signatures[action_cb_systemd_startup_ev];
@transform_action_cb_systemd_startup_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = systemd_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_systemd_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_systemd_startup_ev];
)

// Rule: .action_cb = tab_copy_cb ==> .action_cb_signature = action_cb_signatures[action_cb_tab_copy_cb];
@transform_action_cb_tab_copy_cb@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tab_copy_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tab_copy_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tab_copy_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tab_copy_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tab_copy_cb];
)

// Rule: .action_cb = test_visitf ==> .action_cb_signature = action_cb_signatures[action_cb_test_visitf];
@transform_action_cb_test_visitf@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = test_visitf;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_test_visitf];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_test_visitf];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_test_visitf];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_test_visitf];
)

// Rule: .action_cb = tls_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_exit_ev];
@transform_action_cb_tls_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_exit_ev];
)

// Rule: .action_cb = tls_handle_tls ==> .action_cb_signature = action_cb_signatures[action_cb_tls_handle_tls];
@transform_action_cb_tls_handle_tls@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_handle_tls;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_handle_tls];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_handle_tls];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_handle_tls];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_handle_tls];
)

// Rule: .action_cb = tls_mcache_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_mcache_mod_unload_ev];
@transform_action_cb_tls_mcache_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_mcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_mcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_mcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_mcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_mcache_mod_unload_ev];
)

// Rule: .action_cb = tls_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_mod_unload_ev];
@transform_action_cb_tls_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_mod_unload_ev];
)

// Rule: .action_cb = tls_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_postparse_ev];
@transform_action_cb_tls_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_postparse_ev];
)

// Rule: .action_cb = tls_redis_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_redis_mod_unload_ev];
@transform_action_cb_tls_redis_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_redis_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_redis_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_redis_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_redis_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_redis_mod_unload_ev];
)

// Rule: .action_cb = tls_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_restart_ev];
@transform_action_cb_tls_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_restart_ev];
)

// Rule: .action_cb = tls_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_sess_reinit_ev];
@transform_action_cb_tls_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_sess_reinit_ev];
)

// Rule: .action_cb = tls_shutdown_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_shutdown_ev];
@transform_action_cb_tls_shutdown_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_shutdown_ev];
)

// Rule: .action_cb = tls_timeout_ev ==> .action_cb_signature = action_cb_signatures[action_cb_tls_timeout_ev];
@transform_action_cb_tls_timeout_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = tls_timeout_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_timeout_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_tls_timeout_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_timeout_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_tls_timeout_ev];
)

// Rule: .action_cb = trace_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_trace_restart_ev];
@transform_action_cb_trace_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = trace_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_trace_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_trace_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_trace_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_trace_restart_ev];
)

// Rule: .action_cb = uniqid_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_uniqid_mod_unload_ev];
@transform_action_cb_uniqid_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = uniqid_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_uniqid_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_uniqid_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_uniqid_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_uniqid_mod_unload_ev];
)

// Rule: .action_cb = uniqid_postparse_ev ==> .action_cb_signature = action_cb_signatures[action_cb_uniqid_postparse_ev];
@transform_action_cb_uniqid_postparse_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = uniqid_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_uniqid_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_uniqid_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_uniqid_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_uniqid_postparse_ev];
)

// Rule: .action_cb = wrap2_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_wrap2_exit_ev];
@transform_action_cb_wrap2_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = wrap2_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_exit_ev];
)

// Rule: .action_cb = wrap2_mod_unload_ev ==> .action_cb_signature = action_cb_signatures[action_cb_wrap2_mod_unload_ev];
@transform_action_cb_wrap2_mod_unload_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = wrap2_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_mod_unload_ev];
)

// Rule: .action_cb = wrap2_restart_ev ==> .action_cb_signature = action_cb_signatures[action_cb_wrap2_restart_ev];
@transform_action_cb_wrap2_restart_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = wrap2_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_restart_ev];
)

// Rule: .action_cb = wrap2_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_wrap2_sess_reinit_ev];
@transform_action_cb_wrap2_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = wrap2_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap2_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap2_sess_reinit_ev];
)

// Rule: .action_cb = wrap_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_wrap_sess_reinit_ev];
@transform_action_cb_wrap_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = wrap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_wrap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_wrap_sess_reinit_ev];
)

// Rule: .action_cb = xfer_exit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_xfer_exit_ev];
@transform_action_cb_xfer_exit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = xfer_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_exit_ev];
)

// Rule: .action_cb = xfer_sess_reinit_ev ==> .action_cb_signature = action_cb_signatures[action_cb_xfer_sess_reinit_ev];
@transform_action_cb_xfer_sess_reinit_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = xfer_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_sess_reinit_ev];
)

// Rule: .action_cb = xfer_sigusr2_ev ==> .action_cb_signature = action_cb_signatures[action_cb_xfer_sigusr2_ev];
@transform_action_cb_xfer_sigusr2_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = xfer_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_sigusr2_ev];
)

// Rule: .action_cb = xfer_timeout_session_ev ==> .action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_session_ev];
@transform_action_cb_xfer_timeout_session_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = xfer_timeout_session_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_session_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_session_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_session_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_session_ev];
)

// Rule: .action_cb = xfer_timeout_stalled_ev ==> .action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_stalled_ev];
@transform_action_cb_xfer_timeout_stalled_ev@
expression E;
identifier FP_NAME = action_cb;
identifier FUNC_NAME = xfer_timeout_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->action_cb_signature = action_cb_signatures[action_cb_xfer_timeout_stalled_ev];
)

// Rules for add (2 valid functions, 0 excluded)
// Rule: .add = ocsp_cache_add ==> .add_signature = add_signatures[add_ocsp_cache_add];
@transform_add_ocsp_cache_add@
expression E;
identifier FP_NAME = add;
identifier FUNC_NAME = ocsp_cache_add;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.add_signature = add_signatures[add_ocsp_cache_add];
|
E.FP_NAME = &FUNC_NAME;
+ E.add_signature = add_signatures[add_ocsp_cache_add];
|
E->FP_NAME = FUNC_NAME;
+ E->add_signature = add_signatures[add_ocsp_cache_add];
|
E->FP_NAME = &FUNC_NAME;
+ E->add_signature = add_signatures[add_ocsp_cache_add];
)

// Rule: .add = sess_cache_add ==> .add_signature = add_signatures[add_sess_cache_add];
@transform_add_sess_cache_add@
expression E;
identifier FP_NAME = add;
identifier FUNC_NAME = sess_cache_add;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.add_signature = add_signatures[add_sess_cache_add];
|
E.FP_NAME = &FUNC_NAME;
+ E.add_signature = add_signatures[add_sess_cache_add];
|
E->FP_NAME = FUNC_NAME;
+ E->add_signature = add_signatures[add_sess_cache_add];
|
E->FP_NAME = &FUNC_NAME;
+ E->add_signature = add_signatures[add_sess_cache_add];
)

// Rules for cb (263 valid functions, 0 excluded)
// Rule: .cb = 0 ==> .cb_signature = cb_signatures[cb_NULL];
@transform_cb_NULL@
expression E;
identifier FP_NAME = cb;
@@
(
E.FP_NAME = 0;
+ E.cb_signature = cb_signatures[cb_NULL];
|
E->FP_NAME = 0;
+ E->cb_signature = cb_signatures[cb_NULL];
)

// Rule: .cb = array_item_fail ==> .cb_signature = cb_signatures[cb_array_item_fail];
@transform_cb_array_item_fail@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = array_item_fail;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_array_item_fail];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_array_item_fail];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_array_item_fail];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_array_item_fail];
)

// Rule: .cb = array_item_ok ==> .cb_signature = cb_signatures[cb_array_item_ok];
@transform_cb_array_item_ok@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = array_item_ok;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_array_item_ok];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_array_item_ok];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_array_item_ok];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_array_item_ok];
)

// Rule: .cb = auth_exit_ev ==> .cb_signature = cb_signatures[cb_auth_exit_ev];
@transform_cb_auth_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_exit_ev];
)

// Rule: .cb = auth_otp_exit_ev ==> .cb_signature = cb_signatures[cb_auth_otp_exit_ev];
@transform_cb_auth_otp_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_otp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_exit_ev];
)

// Rule: .cb = auth_otp_mod_unload_ev ==> .cb_signature = cb_signatures[cb_auth_otp_mod_unload_ev];
@transform_cb_auth_otp_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_otp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_mod_unload_ev];
)

// Rule: .cb = auth_otp_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_auth_otp_sess_reinit_ev];
@transform_cb_auth_otp_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_otp_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_otp_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_otp_sess_reinit_ev];
)

// Rule: .cb = auth_pam_exit_ev ==> .cb_signature = cb_signatures[cb_auth_pam_exit_ev];
@transform_cb_auth_pam_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_pam_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_pam_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_pam_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_pam_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_pam_exit_ev];
)

// Rule: .cb = auth_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_auth_sess_reinit_ev];
@transform_cb_auth_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_sess_reinit_ev];
)

// Rule: .cb = auth_unix_exit_ev ==> .cb_signature = cb_signatures[cb_auth_unix_exit_ev];
@transform_cb_auth_unix_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_unix_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_unix_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_unix_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_unix_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_unix_exit_ev];
)

// Rule: .cb = auth_unix_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_auth_unix_sess_reinit_ev];
@transform_cb_auth_unix_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = auth_unix_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_unix_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_auth_unix_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_unix_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_auth_unix_sess_reinit_ev];
)

// Rule: .cb = authfile_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_authfile_sess_reinit_ev];
@transform_cb_authfile_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = authfile_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_authfile_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_authfile_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_authfile_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_authfile_sess_reinit_ev];
)

// Rule: .cb = ban_anonrejectpasswords_ev ==> .cb_signature = cb_signatures[cb_ban_anonrejectpasswords_ev];
@transform_cb_ban_anonrejectpasswords_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_anonrejectpasswords_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_anonrejectpasswords_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_anonrejectpasswords_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_anonrejectpasswords_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_anonrejectpasswords_ev];
)

// Rule: .cb = ban_badprotocol_ev ==> .cb_signature = cb_signatures[cb_ban_badprotocol_ev];
@transform_cb_ban_badprotocol_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_badprotocol_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_badprotocol_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_badprotocol_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_badprotocol_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_badprotocol_ev];
)

// Rule: .cb = ban_clientconnectrate_ev ==> .cb_signature = cb_signatures[cb_ban_clientconnectrate_ev];
@transform_cb_ban_clientconnectrate_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_clientconnectrate_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_clientconnectrate_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_clientconnectrate_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_clientconnectrate_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_clientconnectrate_ev];
)

// Rule: .cb = ban_emptypassword_ev ==> .cb_signature = cb_signatures[cb_ban_emptypassword_ev];
@transform_cb_ban_emptypassword_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_emptypassword_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_emptypassword_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_emptypassword_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_emptypassword_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_emptypassword_ev];
)

// Rule: .cb = ban_maxclientsperclass_ev ==> .cb_signature = cb_signatures[cb_ban_maxclientsperclass_ev];
@transform_cb_ban_maxclientsperclass_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxclientsperclass_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperclass_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperclass_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperclass_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperclass_ev];
)

// Rule: .cb = ban_maxclientsperhost_ev ==> .cb_signature = cb_signatures[cb_ban_maxclientsperhost_ev];
@transform_cb_ban_maxclientsperhost_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxclientsperhost_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperhost_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperhost_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperhost_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperhost_ev];
)

// Rule: .cb = ban_maxclientsperuser_ev ==> .cb_signature = cb_signatures[cb_ban_maxclientsperuser_ev];
@transform_cb_ban_maxclientsperuser_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxclientsperuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxclientsperuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxclientsperuser_ev];
)

// Rule: .cb = ban_maxcmdrate_ev ==> .cb_signature = cb_signatures[cb_ban_maxcmdrate_ev];
@transform_cb_ban_maxcmdrate_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxcmdrate_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxcmdrate_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxcmdrate_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxcmdrate_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxcmdrate_ev];
)

// Rule: .cb = ban_maxconnperhost_ev ==> .cb_signature = cb_signatures[cb_ban_maxconnperhost_ev];
@transform_cb_ban_maxconnperhost_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxconnperhost_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxconnperhost_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxconnperhost_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxconnperhost_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxconnperhost_ev];
)

// Rule: .cb = ban_maxhostsperuser_ev ==> .cb_signature = cb_signatures[cb_ban_maxhostsperuser_ev];
@transform_cb_ban_maxhostsperuser_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxhostsperuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxhostsperuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxhostsperuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxhostsperuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxhostsperuser_ev];
)

// Rule: .cb = ban_maxloginattempts_ev ==> .cb_signature = cb_signatures[cb_ban_maxloginattempts_ev];
@transform_cb_ban_maxloginattempts_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxloginattempts_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxloginattempts_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxloginattempts_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxloginattempts_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxloginattempts_ev];
)

// Rule: .cb = ban_maxloginattemptsfromuser_ev ==> .cb_signature = cb_signatures[cb_ban_maxloginattemptsfromuser_ev];
@transform_cb_ban_maxloginattemptsfromuser_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_maxloginattemptsfromuser_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxloginattemptsfromuser_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_maxloginattemptsfromuser_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxloginattemptsfromuser_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_maxloginattemptsfromuser_ev];
)

// Rule: .cb = ban_mod_unload_ev ==> .cb_signature = cb_signatures[cb_ban_mod_unload_ev];
@transform_cb_ban_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_mod_unload_ev];
)

// Rule: .cb = ban_postparse_ev ==> .cb_signature = cb_signatures[cb_ban_postparse_ev];
@transform_cb_ban_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_postparse_ev];
)

// Rule: .cb = ban_restart_ev ==> .cb_signature = cb_signatures[cb_ban_restart_ev];
@transform_cb_ban_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_restart_ev];
)

// Rule: .cb = ban_rootlogin_ev ==> .cb_signature = cb_signatures[cb_ban_rootlogin_ev];
@transform_cb_ban_rootlogin_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_rootlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_rootlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_rootlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_rootlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_rootlogin_ev];
)

// Rule: .cb = ban_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_ban_sess_reinit_ev];
@transform_cb_ban_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_sess_reinit_ev];
)

// Rule: .cb = ban_shutdown_ev ==> .cb_signature = cb_signatures[cb_ban_shutdown_ev];
@transform_cb_ban_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_shutdown_ev];
)

// Rule: .cb = ban_timeoutidle_ev ==> .cb_signature = cb_signatures[cb_ban_timeoutidle_ev];
@transform_cb_ban_timeoutidle_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_timeoutidle_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutidle_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutidle_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutidle_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutidle_ev];
)

// Rule: .cb = ban_timeoutlogin_ev ==> .cb_signature = cb_signatures[cb_ban_timeoutlogin_ev];
@transform_cb_ban_timeoutlogin_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_timeoutlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutlogin_ev];
)

// Rule: .cb = ban_timeoutnoxfer_ev ==> .cb_signature = cb_signatures[cb_ban_timeoutnoxfer_ev];
@transform_cb_ban_timeoutnoxfer_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_timeoutnoxfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutnoxfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_timeoutnoxfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutnoxfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_timeoutnoxfer_ev];
)

// Rule: .cb = ban_tlshandshake_ev ==> .cb_signature = cb_signatures[cb_ban_tlshandshake_ev];
@transform_cb_ban_tlshandshake_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_tlshandshake_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_tlshandshake_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_tlshandshake_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_tlshandshake_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_tlshandshake_ev];
)

// Rule: .cb = ban_unhandledcmd_ev ==> .cb_signature = cb_signatures[cb_ban_unhandledcmd_ev];
@transform_cb_ban_unhandledcmd_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_unhandledcmd_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_unhandledcmd_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_unhandledcmd_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_unhandledcmd_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_unhandledcmd_ev];
)

// Rule: .cb = ban_userdefined_ev ==> .cb_signature = cb_signatures[cb_ban_userdefined_ev];
@transform_cb_ban_userdefined_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ban_userdefined_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_userdefined_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ban_userdefined_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_userdefined_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ban_userdefined_ev];
)

// Rule: .cb = cap_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_cap_sess_reinit_ev];
@transform_cb_cap_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = cap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_cap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_cap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_cap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_cap_sess_reinit_ev];
)

// Rule: .cb = core_chroot_ev ==> .cb_signature = cb_signatures[cb_core_chroot_ev];
@transform_cb_core_chroot_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_chroot_ev];
)

// Rule: .cb = core_connected_ev ==> .cb_signature = cb_signatures[cb_core_connected_ev];
@transform_cb_core_connected_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_connected_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_connected_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_connected_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_connected_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_connected_ev];
)

// Rule: .cb = core_exit_ev ==> .cb_signature = cb_signatures[cb_core_exit_ev];
@transform_cb_core_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_exit_ev];
)

// Rule: .cb = core_postparse_ev ==> .cb_signature = cb_signatures[cb_core_postparse_ev];
@transform_cb_core_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_postparse_ev];
)

// Rule: .cb = core_restart_ev ==> .cb_signature = cb_signatures[cb_core_restart_ev];
@transform_cb_core_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_restart_ev];
)

// Rule: .cb = core_startup_ev ==> .cb_signature = cb_signatures[cb_core_startup_ev];
@transform_cb_core_startup_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = core_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_core_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_core_startup_ev];
)

// Rule: .cb = ctrls_admin_mod_unload_ev ==> .cb_signature = cb_signatures[cb_ctrls_admin_mod_unload_ev];
@transform_cb_ctrls_admin_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_admin_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_mod_unload_ev];
)

// Rule: .cb = ctrls_admin_restart_ev ==> .cb_signature = cb_signatures[cb_ctrls_admin_restart_ev];
@transform_cb_ctrls_admin_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_admin_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_restart_ev];
)

// Rule: .cb = ctrls_admin_startup_ev ==> .cb_signature = cb_signatures[cb_ctrls_admin_startup_ev];
@transform_cb_ctrls_admin_startup_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_admin_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_admin_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_admin_startup_ev];
)

// Rule: .cb = ctrls_postparse_ev ==> .cb_signature = cb_signatures[cb_ctrls_postparse_ev];
@transform_cb_ctrls_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_postparse_ev];
)

// Rule: .cb = ctrls_restart_ev ==> .cb_signature = cb_signatures[cb_ctrls_restart_ev];
@transform_cb_ctrls_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_restart_ev];
)

// Rule: .cb = ctrls_shutdown_ev ==> .cb_signature = cb_signatures[cb_ctrls_shutdown_ev];
@transform_cb_ctrls_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_shutdown_ev];
)

// Rule: .cb = ctrls_test2_cb ==> .cb_signature = cb_signatures[cb_ctrls_test2_cb];
@transform_cb_ctrls_test2_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_test2_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_test2_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_test2_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_test2_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_test2_cb];
)

// Rule: .cb = ctrls_test_cb ==> .cb_signature = cb_signatures[cb_ctrls_test_cb];
@transform_cb_ctrls_test_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ctrls_test_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_test_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ctrls_test_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_test_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ctrls_test_cb];
)

// Rule: .cb = define_restart_ev ==> .cb_signature = cb_signatures[cb_define_restart_ev];
@transform_cb_define_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = define_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_define_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_define_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_define_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_define_restart_ev];
)

// Rule: .cb = deflate_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_deflate_sess_reinit_ev];
@transform_cb_deflate_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = deflate_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_deflate_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_deflate_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_deflate_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_deflate_sess_reinit_ev];
)

// Rule: .cb = delay_connect_ev ==> .cb_signature = cb_signatures[cb_delay_connect_ev];
@transform_cb_delay_connect_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_connect_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_connect_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_connect_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_connect_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_connect_ev];
)

// Rule: .cb = delay_handle_delay ==> .cb_signature = cb_signatures[cb_delay_handle_delay];
@transform_cb_delay_handle_delay@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_handle_delay;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_handle_delay];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_handle_delay];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_handle_delay];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_handle_delay];
)

// Rule: .cb = delay_mod_unload_ev ==> .cb_signature = cb_signatures[cb_delay_mod_unload_ev];
@transform_cb_delay_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_mod_unload_ev];
)

// Rule: .cb = delay_postparse_ev ==> .cb_signature = cb_signatures[cb_delay_postparse_ev];
@transform_cb_delay_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_postparse_ev];
)

// Rule: .cb = delay_restart_ev ==> .cb_signature = cb_signatures[cb_delay_restart_ev];
@transform_cb_delay_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_restart_ev];
)

// Rule: .cb = delay_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_delay_sess_reinit_ev];
@transform_cb_delay_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_sess_reinit_ev];
)

// Rule: .cb = delay_shutdown_ev ==> .cb_signature = cb_signatures[cb_delay_shutdown_ev];
@transform_cb_delay_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = delay_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_delay_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_delay_shutdown_ev];
)

// Rule: .cb = digest_data_xfer_ev ==> .cb_signature = cb_signatures[cb_digest_data_xfer_ev];
@transform_cb_digest_data_xfer_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = digest_data_xfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_data_xfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_data_xfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_data_xfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_data_xfer_ev];
)

// Rule: .cb = digest_mod_unload_ev ==> .cb_signature = cb_signatures[cb_digest_mod_unload_ev];
@transform_cb_digest_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = digest_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_mod_unload_ev];
)

// Rule: .cb = digest_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_digest_sess_reinit_ev];
@transform_cb_digest_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = digest_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_digest_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_digest_sess_reinit_ev];
)

// Rule: .cb = dnsbl_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_dnsbl_sess_reinit_ev];
@transform_cb_dnsbl_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dnsbl_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dnsbl_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dnsbl_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dnsbl_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dnsbl_sess_reinit_ev];
)

// Rule: .cb = do_cb ==> .cb_signature = cb_signatures[cb_do_cb];
@transform_cb_do_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = do_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_do_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_do_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_do_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_do_cb];
)

// Rule: .cb = do_with_remove_cb ==> .cb_signature = cb_signatures[cb_do_with_remove_cb];
@transform_cb_do_with_remove_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = do_with_remove_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_do_with_remove_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_do_with_remove_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_do_with_remove_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_do_with_remove_cb];
)

// Rule: .cb = dso_restart_ev ==> .cb_signature = cb_signatures[cb_dso_restart_ev];
@transform_cb_dso_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dso_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dso_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dso_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dso_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dso_restart_ev];
)

// Rule: .cb = dynmasq_handle_dynmasq ==> .cb_signature = cb_signatures[cb_dynmasq_handle_dynmasq];
@transform_cb_dynmasq_handle_dynmasq@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dynmasq_handle_dynmasq;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_handle_dynmasq];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_handle_dynmasq];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_handle_dynmasq];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_handle_dynmasq];
)

// Rule: .cb = dynmasq_mod_unload_ev ==> .cb_signature = cb_signatures[cb_dynmasq_mod_unload_ev];
@transform_cb_dynmasq_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dynmasq_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_mod_unload_ev];
)

// Rule: .cb = dynmasq_postparse_ev ==> .cb_signature = cb_signatures[cb_dynmasq_postparse_ev];
@transform_cb_dynmasq_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dynmasq_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_postparse_ev];
)

// Rule: .cb = dynmasq_restart_ev ==> .cb_signature = cb_signatures[cb_dynmasq_restart_ev];
@transform_cb_dynmasq_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = dynmasq_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_dynmasq_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_dynmasq_restart_ev];
)

// Rule: .cb = event_cb ==> .cb_signature = cb_signatures[cb_event_cb];
@transform_cb_event_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = event_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb];
)

// Rule: .cb = event_cb2 ==> .cb_signature = cb_signatures[cb_event_cb2];
@transform_cb_event_cb2@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = event_cb2;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb2];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb2];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb2];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb2];
)

// Rule: .cb = event_cb3 ==> .cb_signature = cb_signatures[cb_event_cb3];
@transform_cb_event_cb3@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = event_cb3;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb3];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_event_cb3];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb3];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_event_cb3];
)

// Rule: .cb = exec_any_ev ==> .cb_signature = cb_signatures[cb_exec_any_ev];
@transform_cb_exec_any_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = exec_any_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_any_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_any_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_any_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_any_ev];
)

// Rule: .cb = exec_mod_unload_ev ==> .cb_signature = cb_signatures[cb_exec_mod_unload_ev];
@transform_cb_exec_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = exec_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_mod_unload_ev];
)

// Rule: .cb = exec_postparse_ev ==> .cb_signature = cb_signatures[cb_exec_postparse_ev];
@transform_cb_exec_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = exec_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_postparse_ev];
)

// Rule: .cb = exec_restart_ev ==> .cb_signature = cb_signatures[cb_exec_restart_ev];
@transform_cb_exec_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = exec_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_restart_ev];
)

// Rule: .cb = exec_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_exec_sess_reinit_ev];
@transform_cb_exec_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = exec_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_exec_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_exec_sess_reinit_ev];
)

// Rule: .cb = facl_mod_unload_ev ==> .cb_signature = cb_signatures[cb_facl_mod_unload_ev];
@transform_cb_facl_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = facl_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_mod_unload_ev];
)

// Rule: .cb = facl_postparse_ev ==> .cb_signature = cb_signatures[cb_facl_postparse_ev];
@transform_cb_facl_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = facl_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_postparse_ev];
)

// Rule: .cb = facl_restart_ev ==> .cb_signature = cb_signatures[cb_facl_restart_ev];
@transform_cb_facl_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = facl_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facl_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facl_restart_ev];
)

// Rule: .cb = facts_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_facts_sess_reinit_ev];
@transform_cb_facts_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = facts_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facts_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_facts_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facts_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_facts_sess_reinit_ev];
)

// Rule: .cb = filetab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_filetab_mod_unload_ev];
@transform_cb_filetab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = filetab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_filetab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_filetab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_filetab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_filetab_mod_unload_ev];
)

// Rule: .cb = forensic_exit_ev ==> .cb_signature = cb_signatures[cb_forensic_exit_ev];
@transform_cb_forensic_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = forensic_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_exit_ev];
)

// Rule: .cb = forensic_log_ev ==> .cb_signature = cb_signatures[cb_forensic_log_ev];
@transform_cb_forensic_log_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = forensic_log_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_log_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_log_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_log_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_log_ev];
)

// Rule: .cb = forensic_mod_unload_ev ==> .cb_signature = cb_signatures[cb_forensic_mod_unload_ev];
@transform_cb_forensic_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = forensic_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_mod_unload_ev];
)

// Rule: .cb = forensic_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_forensic_sess_reinit_ev];
@transform_cb_forensic_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = forensic_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_forensic_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_forensic_sess_reinit_ev];
)

// Rule: .cb = fscache_mod_unload_ev ==> .cb_signature = cb_signatures[cb_fscache_mod_unload_ev];
@transform_cb_fscache_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = fscache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_fscache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_fscache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_fscache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_fscache_mod_unload_ev];
)

// Rule: .cb = fxp_handle_abort ==> .cb_signature = cb_signatures[cb_fxp_handle_abort];
@transform_cb_fxp_handle_abort@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = fxp_handle_abort;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_fxp_handle_abort];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_fxp_handle_abort];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_fxp_handle_abort];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_fxp_handle_abort];
)

// Rule: .cb = geoip_mod_unload_ev ==> .cb_signature = cb_signatures[cb_geoip_mod_unload_ev];
@transform_cb_geoip_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = geoip_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_mod_unload_ev];
)

// Rule: .cb = geoip_postparse_ev ==> .cb_signature = cb_signatures[cb_geoip_postparse_ev];
@transform_cb_geoip_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = geoip_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_postparse_ev];
)

// Rule: .cb = geoip_restart_ev ==> .cb_signature = cb_signatures[cb_geoip_restart_ev];
@transform_cb_geoip_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = geoip_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_geoip_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_geoip_restart_ev];
)

// Rule: .cb = ident_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_ident_sess_reinit_ev];
@transform_cb_ident_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ident_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ident_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ident_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ident_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ident_sess_reinit_ev];
)

// Rule: .cb = ifsess_chroot_ev ==> .cb_signature = cb_signatures[cb_ifsess_chroot_ev];
@transform_cb_ifsess_chroot_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ifsess_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_chroot_ev];
)

// Rule: .cb = ifsess_mod_unload_ev ==> .cb_signature = cb_signatures[cb_ifsess_mod_unload_ev];
@transform_cb_ifsess_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ifsess_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_mod_unload_ev];
)

// Rule: .cb = ifsess_postparse_ev ==> .cb_signature = cb_signatures[cb_ifsess_postparse_ev];
@transform_cb_ifsess_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ifsess_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ifsess_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ifsess_postparse_ev];
)

// Rule: .cb = lang_postparse_ev ==> .cb_signature = cb_signatures[cb_lang_postparse_ev];
@transform_cb_lang_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = lang_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_lang_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_lang_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_lang_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_lang_postparse_ev];
)

// Rule: .cb = lang_restart_ev ==> .cb_signature = cb_signatures[cb_lang_restart_ev];
@transform_cb_lang_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = lang_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_lang_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_lang_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_lang_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_lang_restart_ev];
)

// Rule: .cb = ldap_mod_unload_ev ==> .cb_signature = cb_signatures[cb_ldap_mod_unload_ev];
@transform_cb_ldap_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ldap_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_mod_unload_ev];
)

// Rule: .cb = ldap_postparse_ev ==> .cb_signature = cb_signatures[cb_ldap_postparse_ev];
@transform_cb_ldap_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ldap_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_postparse_ev];
)

// Rule: .cb = ldap_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_ldap_sess_reinit_ev];
@transform_cb_ldap_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ldap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_sess_reinit_ev];
)

// Rule: .cb = ldap_shutdown_ev ==> .cb_signature = cb_signatures[cb_ldap_shutdown_ev];
@transform_cb_ldap_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ldap_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldap_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldap_shutdown_ev];
)

// Rule: .cb = ldaptab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_ldaptab_mod_unload_ev];
@transform_cb_ldaptab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = ldaptab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldaptab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_ldaptab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldaptab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_ldaptab_mod_unload_ev];
)

// Rule: .cb = log_exit_ev ==> .cb_signature = cb_signatures[cb_log_exit_ev];
@transform_cb_log_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_exit_ev];
)

// Rule: .cb = log_fmt_extra_iter_cb ==> .cb_signature = cb_signatures[cb_log_fmt_extra_iter_cb];
@transform_cb_log_fmt_extra_iter_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_fmt_extra_iter_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_fmt_extra_iter_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_fmt_extra_iter_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_fmt_extra_iter_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_fmt_extra_iter_cb];
)

// Rule: .cb = log_postparse_ev ==> .cb_signature = cb_signatures[cb_log_postparse_ev];
@transform_cb_log_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_postparse_ev];
)

// Rule: .cb = log_restart_ev ==> .cb_signature = cb_signatures[cb_log_restart_ev];
@transform_cb_log_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_restart_ev];
)

// Rule: .cb = log_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_log_sess_reinit_ev];
@transform_cb_log_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_sess_reinit_ev];
)

// Rule: .cb = log_xfer_stalled_ev ==> .cb_signature = cb_signatures[cb_log_xfer_stalled_ev];
@transform_cb_log_xfer_stalled_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = log_xfer_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_xfer_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_log_xfer_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_xfer_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_log_xfer_stalled_ev];
)

// Rule: .cb = mcache_exit_ev ==> .cb_signature = cb_signatures[cb_mcache_exit_ev];
@transform_cb_mcache_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = mcache_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_exit_ev];
)

// Rule: .cb = mcache_restart_ev ==> .cb_signature = cb_signatures[cb_mcache_restart_ev];
@transform_cb_mcache_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = mcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_restart_ev];
)

// Rule: .cb = mcache_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_mcache_sess_reinit_ev];
@transform_cb_mcache_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = mcache_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_mcache_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_mcache_sess_reinit_ev];
)

// Rule: .cb = object_item_fail ==> .cb_signature = cb_signatures[cb_object_item_fail];
@transform_cb_object_item_fail@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = object_item_fail;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_object_item_fail];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_object_item_fail];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_object_item_fail];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_object_item_fail];
)

// Rule: .cb = object_item_ok ==> .cb_signature = cb_signatures[cb_object_item_ok];
@transform_cb_object_item_ok@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = object_item_ok;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_object_item_ok];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_object_item_ok];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_object_item_ok];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_object_item_ok];
)

// Rule: .cb = pool_visitf ==> .cb_signature = cb_signatures[cb_pool_visitf];
@transform_cb_pool_visitf@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = pool_visitf;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_pool_visitf];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_pool_visitf];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_pool_visitf];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_pool_visitf];
)

// Rule: .cb = qos_ctrl_listen_ev ==> .cb_signature = cb_signatures[cb_qos_ctrl_listen_ev];
@transform_cb_qos_ctrl_listen_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = qos_ctrl_listen_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_ctrl_listen_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_ctrl_listen_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_ctrl_listen_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_ctrl_listen_ev];
)

// Rule: .cb = qos_data_connect_ev ==> .cb_signature = cb_signatures[cb_qos_data_connect_ev];
@transform_cb_qos_data_connect_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = qos_data_connect_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_data_connect_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_data_connect_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_data_connect_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_data_connect_ev];
)

// Rule: .cb = qos_data_listen_ev ==> .cb_signature = cb_signatures[cb_qos_data_listen_ev];
@transform_cb_qos_data_listen_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = qos_data_listen_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_data_listen_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_data_listen_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_data_listen_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_data_listen_ev];
)

// Rule: .cb = qos_mod_unload_ev ==> .cb_signature = cb_signatures[cb_qos_mod_unload_ev];
@transform_cb_qos_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = qos_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_mod_unload_ev];
)

// Rule: .cb = qos_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_qos_sess_reinit_ev];
@transform_cb_qos_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = qos_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_qos_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_qos_sess_reinit_ev];
)

// Rule: .cb = quotatab_exit_ev ==> .cb_signature = cb_signatures[cb_quotatab_exit_ev];
@transform_cb_quotatab_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = quotatab_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_exit_ev];
)

// Rule: .cb = quotatab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_quotatab_mod_unload_ev];
@transform_cb_quotatab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = quotatab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_mod_unload_ev];
)

// Rule: .cb = quotatab_restart_ev ==> .cb_signature = cb_signatures[cb_quotatab_restart_ev];
@transform_cb_quotatab_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = quotatab_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_restart_ev];
)

// Rule: .cb = quotatab_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_quotatab_sess_reinit_ev];
@transform_cb_quotatab_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = quotatab_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_quotatab_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_quotatab_sess_reinit_ev];
)

// Rule: .cb = radius_exit_ev ==> .cb_signature = cb_signatures[cb_radius_exit_ev];
@transform_cb_radius_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = radius_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_exit_ev];
)

// Rule: .cb = radius_mod_unload_ev ==> .cb_signature = cb_signatures[cb_radius_mod_unload_ev];
@transform_cb_radius_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = radius_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_mod_unload_ev];
)

// Rule: .cb = radius_restart_ev ==> .cb_signature = cb_signatures[cb_radius_restart_ev];
@transform_cb_radius_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = radius_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_restart_ev];
)

// Rule: .cb = radius_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_radius_sess_reinit_ev];
@transform_cb_radius_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = radius_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radius_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radius_sess_reinit_ev];
)

// Rule: .cb = radiustab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_radiustab_mod_unload_ev];
@transform_cb_radiustab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = radiustab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radiustab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_radiustab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radiustab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_radiustab_mod_unload_ev];
)

// Rule: .cb = redis_restart_ev ==> .cb_signature = cb_signatures[cb_redis_restart_ev];
@transform_cb_redis_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = redis_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_restart_ev];
)

// Rule: .cb = redis_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_redis_sess_reinit_ev];
@transform_cb_redis_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = redis_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_sess_reinit_ev];
)

// Rule: .cb = redis_shutdown_ev ==> .cb_signature = cb_signatures[cb_redis_shutdown_ev];
@transform_cb_redis_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = redis_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redis_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redis_shutdown_ev];
)

// Rule: .cb = redistab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_redistab_mod_unload_ev];
@transform_cb_redistab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = redistab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redistab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_redistab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redistab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_redistab_mod_unload_ev];
)

// Rule: .cb = regexp_exit_ev ==> .cb_signature = cb_signatures[cb_regexp_exit_ev];
@transform_cb_regexp_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = regexp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_regexp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_regexp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_regexp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_regexp_exit_ev];
)

// Rule: .cb = regexp_restart_ev ==> .cb_signature = cb_signatures[cb_regexp_restart_ev];
@transform_cb_regexp_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = regexp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_regexp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_regexp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_regexp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_regexp_restart_ev];
)

// Rule: .cb = restart_daemon ==> .cb_signature = cb_signatures[cb_restart_daemon];
@transform_cb_restart_daemon@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = restart_daemon;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_restart_daemon];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_restart_daemon];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_restart_daemon];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_restart_daemon];
)

// Rule: .cb = rewrite_exit_ev ==> .cb_signature = cb_signatures[cb_rewrite_exit_ev];
@transform_cb_rewrite_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rewrite_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_exit_ev];
)

// Rule: .cb = rewrite_mod_unload_ev ==> .cb_signature = cb_signatures[cb_rewrite_mod_unload_ev];
@transform_cb_rewrite_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rewrite_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_mod_unload_ev];
)

// Rule: .cb = rewrite_restart_ev ==> .cb_signature = cb_signatures[cb_rewrite_restart_ev];
@transform_cb_rewrite_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rewrite_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_restart_ev];
)

// Rule: .cb = rewrite_rewrite_home_ev ==> .cb_signature = cb_signatures[cb_rewrite_rewrite_home_ev];
@transform_cb_rewrite_rewrite_home_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rewrite_rewrite_home_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_rewrite_home_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_rewrite_home_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_rewrite_home_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_rewrite_home_ev];
)

// Rule: .cb = rewrite_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_rewrite_sess_reinit_ev];
@transform_cb_rewrite_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rewrite_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rewrite_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rewrite_sess_reinit_ev];
)

// Rule: .cb = rlimit_chroot_ev ==> .cb_signature = cb_signatures[cb_rlimit_chroot_ev];
@transform_cb_rlimit_chroot_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rlimit_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rlimit_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rlimit_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rlimit_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rlimit_chroot_ev];
)

// Rule: .cb = rlimit_postparse_ev ==> .cb_signature = cb_signatures[cb_rlimit_postparse_ev];
@transform_cb_rlimit_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = rlimit_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rlimit_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_rlimit_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rlimit_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_rlimit_postparse_ev];
)

// Rule: .cb = schedule_cb ==> .cb_signature = cb_signatures[cb_schedule_cb];
@transform_cb_schedule_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = schedule_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_schedule_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_schedule_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_schedule_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_schedule_cb];
)

// Rule: .cb = sftp_ban_class_ev ==> .cb_signature = cb_signatures[cb_sftp_ban_class_ev];
@transform_cb_sftp_ban_class_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_ban_class_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_class_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_class_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_class_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_class_ev];
)

// Rule: .cb = sftp_ban_host_ev ==> .cb_signature = cb_signatures[cb_sftp_ban_host_ev];
@transform_cb_sftp_ban_host_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_ban_host_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_host_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_host_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_host_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_host_ev];
)

// Rule: .cb = sftp_ban_user_ev ==> .cb_signature = cb_signatures[cb_sftp_ban_user_ev];
@transform_cb_sftp_ban_user_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_ban_user_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_user_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_ban_user_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_user_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_ban_user_ev];
)

// Rule: .cb = sftp_chroot_ev ==> .cb_signature = cb_signatures[cb_sftp_chroot_ev];
@transform_cb_sftp_chroot_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_chroot_ev];
)

// Rule: .cb = sftp_exit_ev ==> .cb_signature = cb_signatures[cb_sftp_exit_ev];
@transform_cb_sftp_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_exit_ev];
)

// Rule: .cb = sftp_max_conns_ev ==> .cb_signature = cb_signatures[cb_sftp_max_conns_ev];
@transform_cb_sftp_max_conns_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_max_conns_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_max_conns_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_max_conns_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_max_conns_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_max_conns_ev];
)

// Rule: .cb = sftp_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sftp_mod_unload_ev];
@transform_cb_sftp_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_mod_unload_ev];
)

// Rule: .cb = sftp_postparse_ev ==> .cb_signature = cb_signatures[cb_sftp_postparse_ev];
@transform_cb_sftp_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_postparse_ev];
)

// Rule: .cb = sftp_restart_ev ==> .cb_signature = cb_signatures[cb_sftp_restart_ev];
@transform_cb_sftp_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_restart_ev];
)

// Rule: .cb = sftp_shutdown_ev ==> .cb_signature = cb_signatures[cb_sftp_shutdown_ev];
@transform_cb_sftp_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_shutdown_ev];
)

// Rule: .cb = sftp_sigusr2_ev ==> .cb_signature = cb_signatures[cb_sftp_sigusr2_ev];
@transform_cb_sftp_sigusr2_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_sigusr2_ev];
)

// Rule: .cb = sftp_timeoutlogin_ev ==> .cb_signature = cb_signatures[cb_sftp_timeoutlogin_ev];
@transform_cb_sftp_timeoutlogin_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_timeoutlogin_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_timeoutlogin_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_timeoutlogin_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_timeoutlogin_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_timeoutlogin_ev];
)

// Rule: .cb = sftp_wrap_conn_denied_ev ==> .cb_signature = cb_signatures[cb_sftp_wrap_conn_denied_ev];
@transform_cb_sftp_wrap_conn_denied_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftp_wrap_conn_denied_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_wrap_conn_denied_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftp_wrap_conn_denied_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_wrap_conn_denied_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftp_wrap_conn_denied_ev];
)

// Rule: .cb = sftppam_exit_ev ==> .cb_signature = cb_signatures[cb_sftppam_exit_ev];
@transform_cb_sftppam_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftppam_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftppam_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftppam_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftppam_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftppam_exit_ev];
)

// Rule: .cb = sftppam_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sftppam_mod_unload_ev];
@transform_cb_sftppam_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftppam_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftppam_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftppam_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftppam_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftppam_mod_unload_ev];
)

// Rule: .cb = sftpsql_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sftpsql_mod_unload_ev];
@transform_cb_sftpsql_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sftpsql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftpsql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sftpsql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftpsql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sftpsql_mod_unload_ev];
)

// Rule: .cb = shaper_handle_shaper ==> .cb_signature = cb_signatures[cb_shaper_handle_shaper];
@transform_cb_shaper_handle_shaper@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_handle_shaper;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_handle_shaper];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_handle_shaper];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_handle_shaper];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_handle_shaper];
)

// Rule: .cb = shaper_mod_unload_ev ==> .cb_signature = cb_signatures[cb_shaper_mod_unload_ev];
@transform_cb_shaper_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_mod_unload_ev];
)

// Rule: .cb = shaper_postparse_ev ==> .cb_signature = cb_signatures[cb_shaper_postparse_ev];
@transform_cb_shaper_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_postparse_ev];
)

// Rule: .cb = shaper_restart_ev ==> .cb_signature = cb_signatures[cb_shaper_restart_ev];
@transform_cb_shaper_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_restart_ev];
)

// Rule: .cb = shaper_sess_exit_ev ==> .cb_signature = cb_signatures[cb_shaper_sess_exit_ev];
@transform_cb_shaper_sess_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_sess_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_sess_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_sess_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_sess_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_sess_exit_ev];
)

// Rule: .cb = shaper_shutdown_ev ==> .cb_signature = cb_signatures[cb_shaper_shutdown_ev];
@transform_cb_shaper_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_shutdown_ev];
)

// Rule: .cb = shaper_sigusr2_ev ==> .cb_signature = cb_signatures[cb_shaper_sigusr2_ev];
@transform_cb_shaper_sigusr2_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shaper_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shaper_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shaper_sigusr2_ev];
)

// Rule: .cb = shmcache_mod_unload_ev ==> .cb_signature = cb_signatures[cb_shmcache_mod_unload_ev];
@transform_cb_shmcache_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shmcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_mod_unload_ev];
)

// Rule: .cb = shmcache_restart_ev ==> .cb_signature = cb_signatures[cb_shmcache_restart_ev];
@transform_cb_shmcache_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shmcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_restart_ev];
)

// Rule: .cb = shmcache_shutdown_ev ==> .cb_signature = cb_signatures[cb_shmcache_shutdown_ev];
@transform_cb_shmcache_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shmcache_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shmcache_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shmcache_shutdown_ev];
)

// Rule: .cb = shutdown_end_session ==> .cb_signature = cb_signatures[cb_shutdown_end_session];
@transform_cb_shutdown_end_session@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = shutdown_end_session;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shutdown_end_session];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_shutdown_end_session];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shutdown_end_session];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_shutdown_end_session];
)

// Rule: .cb = site_misc_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_site_misc_sess_reinit_ev];
@transform_cb_site_misc_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = site_misc_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_site_misc_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_site_misc_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_site_misc_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_site_misc_sess_reinit_ev];
)

// Rule: .cb = snmp_auth_code_ev ==> .cb_signature = cb_signatures[cb_snmp_auth_code_ev];
@transform_cb_snmp_auth_code_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_auth_code_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_auth_code_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_auth_code_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_auth_code_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_auth_code_ev];
)

// Rule: .cb = snmp_ban_ban_class_ev ==> .cb_signature = cb_signatures[cb_snmp_ban_ban_class_ev];
@transform_cb_snmp_ban_ban_class_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ban_ban_class_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_class_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_class_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_class_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_class_ev];
)

// Rule: .cb = snmp_ban_ban_host_ev ==> .cb_signature = cb_signatures[cb_snmp_ban_ban_host_ev];
@transform_cb_snmp_ban_ban_host_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ban_ban_host_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_host_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_host_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_host_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_host_ev];
)

// Rule: .cb = snmp_ban_ban_user_ev ==> .cb_signature = cb_signatures[cb_snmp_ban_ban_user_ev];
@transform_cb_snmp_ban_ban_user_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ban_ban_user_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_user_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_ban_user_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_user_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_ban_user_ev];
)

// Rule: .cb = snmp_ban_client_disconn_ev ==> .cb_signature = cb_signatures[cb_snmp_ban_client_disconn_ev];
@transform_cb_snmp_ban_client_disconn_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ban_client_disconn_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_client_disconn_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_client_disconn_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_client_disconn_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_client_disconn_ev];
)

// Rule: .cb = snmp_ban_expired_ban_ev ==> .cb_signature = cb_signatures[cb_snmp_ban_expired_ban_ev];
@transform_cb_snmp_ban_expired_ban_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ban_expired_ban_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_expired_ban_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ban_expired_ban_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_expired_ban_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ban_expired_ban_ev];
)

// Rule: .cb = snmp_cmd_invalid_ev ==> .cb_signature = cb_signatures[cb_snmp_cmd_invalid_ev];
@transform_cb_snmp_cmd_invalid_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_cmd_invalid_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_cmd_invalid_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_cmd_invalid_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_cmd_invalid_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_cmd_invalid_ev];
)

// Rule: .cb = snmp_exit_ev ==> .cb_signature = cb_signatures[cb_snmp_exit_ev];
@transform_cb_snmp_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_exit_ev];
)

// Rule: .cb = snmp_max_inst_ev ==> .cb_signature = cb_signatures[cb_snmp_max_inst_ev];
@transform_cb_snmp_max_inst_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_max_inst_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_max_inst_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_max_inst_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_max_inst_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_max_inst_ev];
)

// Rule: .cb = snmp_mod_unload_ev ==> .cb_signature = cb_signatures[cb_snmp_mod_unload_ev];
@transform_cb_snmp_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_mod_unload_ev];
)

// Rule: .cb = snmp_postparse_ev ==> .cb_signature = cb_signatures[cb_snmp_postparse_ev];
@transform_cb_snmp_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_postparse_ev];
)

// Rule: .cb = snmp_restart_ev ==> .cb_signature = cb_signatures[cb_snmp_restart_ev];
@transform_cb_snmp_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_restart_ev];
)

// Rule: .cb = snmp_shutdown_ev ==> .cb_signature = cb_signatures[cb_snmp_shutdown_ev];
@transform_cb_snmp_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_shutdown_ev];
)

// Rule: .cb = snmp_ssh2_auth_hostbased_err_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev];
@transform_cb_snmp_ssh2_auth_hostbased_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_hostbased_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev];
)

// Rule: .cb = snmp_ssh2_auth_hostbased_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_ev];
@transform_cb_snmp_ssh2_auth_hostbased_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_hostbased_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_hostbased_ev];
)

// Rule: .cb = snmp_ssh2_auth_kbdint_err_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev];
@transform_cb_snmp_ssh2_auth_kbdint_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_kbdint_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev];
)

// Rule: .cb = snmp_ssh2_auth_kbdint_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_ev];
@transform_cb_snmp_ssh2_auth_kbdint_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_kbdint_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_kbdint_ev];
)

// Rule: .cb = snmp_ssh2_auth_passwd_err_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev];
@transform_cb_snmp_ssh2_auth_passwd_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_passwd_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev];
)

// Rule: .cb = snmp_ssh2_auth_passwd_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_ev];
@transform_cb_snmp_ssh2_auth_passwd_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_passwd_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_passwd_ev];
)

// Rule: .cb = snmp_ssh2_auth_publickey_err_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev];
@transform_cb_snmp_ssh2_auth_publickey_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_publickey_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev];
)

// Rule: .cb = snmp_ssh2_auth_publickey_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_ev];
@transform_cb_snmp_ssh2_auth_publickey_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_auth_publickey_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_auth_publickey_ev];
)

// Rule: .cb = snmp_ssh2_c2s_compress_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_c2s_compress_ev];
@transform_cb_snmp_ssh2_c2s_compress_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_c2s_compress_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_c2s_compress_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_c2s_compress_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_c2s_compress_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_c2s_compress_ev];
)

// Rule: .cb = snmp_ssh2_kex_err_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_kex_err_ev];
@transform_cb_snmp_ssh2_kex_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_kex_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_kex_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_kex_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_kex_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_kex_err_ev];
)

// Rule: .cb = snmp_ssh2_s2c_compress_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_s2c_compress_ev];
@transform_cb_snmp_ssh2_s2c_compress_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_s2c_compress_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_s2c_compress_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_s2c_compress_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_s2c_compress_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_s2c_compress_ev];
)

// Rule: .cb = snmp_ssh2_scp_sess_closed_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev];
@transform_cb_snmp_ssh2_scp_sess_closed_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_scp_sess_closed_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev];
)

// Rule: .cb = snmp_ssh2_scp_sess_opened_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev];
@transform_cb_snmp_ssh2_scp_sess_opened_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_scp_sess_opened_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev];
)

// Rule: .cb = snmp_ssh2_sftp_proto_version_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev];
@transform_cb_snmp_ssh2_sftp_proto_version_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_sftp_proto_version_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev];
)

// Rule: .cb = snmp_ssh2_sftp_sess_closed_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev];
@transform_cb_snmp_ssh2_sftp_sess_closed_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_sftp_sess_closed_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev];
)

// Rule: .cb = snmp_ssh2_sftp_sess_opened_ev ==> .cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev];
@transform_cb_snmp_ssh2_sftp_sess_opened_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_ssh2_sftp_sess_opened_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev];
)

// Rule: .cb = snmp_startup_ev ==> .cb_signature = cb_signatures[cb_snmp_startup_ev];
@transform_cb_snmp_startup_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_startup_ev];
)

// Rule: .cb = snmp_timeout_idle_ev ==> .cb_signature = cb_signatures[cb_snmp_timeout_idle_ev];
@transform_cb_snmp_timeout_idle_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_timeout_idle_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_idle_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_idle_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_idle_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_idle_ev];
)

// Rule: .cb = snmp_timeout_login_ev ==> .cb_signature = cb_signatures[cb_snmp_timeout_login_ev];
@transform_cb_snmp_timeout_login_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_timeout_login_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_login_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_login_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_login_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_login_ev];
)

// Rule: .cb = snmp_timeout_noxfer_ev ==> .cb_signature = cb_signatures[cb_snmp_timeout_noxfer_ev];
@transform_cb_snmp_timeout_noxfer_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_timeout_noxfer_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_noxfer_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_noxfer_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_noxfer_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_noxfer_ev];
)

// Rule: .cb = snmp_timeout_stalled_ev ==> .cb_signature = cb_signatures[cb_snmp_timeout_stalled_ev];
@transform_cb_snmp_timeout_stalled_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_timeout_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_timeout_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_timeout_stalled_ev];
)

// Rule: .cb = snmp_tls_ctrl_handshake_err_ev ==> .cb_signature = cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev];
@transform_cb_snmp_tls_ctrl_handshake_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_tls_ctrl_handshake_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev];
)

// Rule: .cb = snmp_tls_data_handshake_err_ev ==> .cb_signature = cb_signatures[cb_snmp_tls_data_handshake_err_ev];
@transform_cb_snmp_tls_data_handshake_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_tls_data_handshake_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_data_handshake_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_data_handshake_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_data_handshake_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_data_handshake_err_ev];
)

// Rule: .cb = snmp_tls_verify_client_err_ev ==> .cb_signature = cb_signatures[cb_snmp_tls_verify_client_err_ev];
@transform_cb_snmp_tls_verify_client_err_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_tls_verify_client_err_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_verify_client_err_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_verify_client_err_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_verify_client_err_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_verify_client_err_ev];
)

// Rule: .cb = snmp_tls_verify_client_ev ==> .cb_signature = cb_signatures[cb_snmp_tls_verify_client_ev];
@transform_cb_snmp_tls_verify_client_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = snmp_tls_verify_client_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_verify_client_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_snmp_tls_verify_client_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_verify_client_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_snmp_tls_verify_client_ev];
)

// Rule: .cb = sql_chroot_ev ==> .cb_signature = cb_signatures[cb_sql_chroot_ev];
@transform_cb_sql_chroot_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_chroot_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_chroot_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_chroot_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_chroot_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_chroot_ev];
)

// Rule: .cb = sql_eventlog_ev ==> .cb_signature = cb_signatures[cb_sql_eventlog_ev];
@transform_cb_sql_eventlog_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_eventlog_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_eventlog_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_eventlog_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_eventlog_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_eventlog_ev];
)

// Rule: .cb = sql_exit_ev ==> .cb_signature = cb_signatures[cb_sql_exit_ev];
@transform_cb_sql_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_exit_ev];
)

// Rule: .cb = sql_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sql_mod_unload_ev];
@transform_cb_sql_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mod_unload_ev];
)

// Rule: .cb = sql_mysql_mod_load_ev ==> .cb_signature = cb_signatures[cb_sql_mysql_mod_load_ev];
@transform_cb_sql_mysql_mod_load_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_mysql_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mysql_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mysql_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mysql_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mysql_mod_load_ev];
)

// Rule: .cb = sql_mysql_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sql_mysql_mod_unload_ev];
@transform_cb_sql_mysql_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_mysql_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mysql_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_mysql_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mysql_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_mysql_mod_unload_ev];
)

// Rule: .cb = sql_passwd_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sql_passwd_mod_unload_ev];
@transform_cb_sql_passwd_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_passwd_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_passwd_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_passwd_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_passwd_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_passwd_mod_unload_ev];
)

// Rule: .cb = sql_passwd_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_sql_passwd_sess_reinit_ev];
@transform_cb_sql_passwd_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_passwd_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_passwd_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_passwd_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_passwd_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_passwd_sess_reinit_ev];
)

// Rule: .cb = sql_postgres_mod_load_ev ==> .cb_signature = cb_signatures[cb_sql_postgres_mod_load_ev];
@transform_cb_sql_postgres_mod_load_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_postgres_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_postgres_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_postgres_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_postgres_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_postgres_mod_load_ev];
)

// Rule: .cb = sql_postgres_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sql_postgres_mod_unload_ev];
@transform_cb_sql_postgres_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_postgres_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_postgres_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_postgres_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_postgres_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_postgres_mod_unload_ev];
)

// Rule: .cb = sql_preparse_ev ==> .cb_signature = cb_signatures[cb_sql_preparse_ev];
@transform_cb_sql_preparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_preparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_preparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_preparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_preparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_preparse_ev];
)

// Rule: .cb = sql_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_sql_sess_reinit_ev];
@transform_cb_sql_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sess_reinit_ev];
)

// Rule: .cb = sql_sqlite_mod_load_ev ==> .cb_signature = cb_signatures[cb_sql_sqlite_mod_load_ev];
@transform_cb_sql_sqlite_mod_load_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_sqlite_mod_load_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sqlite_mod_load_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sqlite_mod_load_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sqlite_mod_load_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sqlite_mod_load_ev];
)

// Rule: .cb = sql_sqlite_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sql_sqlite_mod_unload_ev];
@transform_cb_sql_sqlite_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sql_sqlite_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sqlite_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sql_sqlite_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sqlite_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sql_sqlite_mod_unload_ev];
)

// Rule: .cb = sqlodbc_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sqlodbc_mod_unload_ev];
@transform_cb_sqlodbc_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sqlodbc_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sqlodbc_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sqlodbc_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sqlodbc_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sqlodbc_mod_unload_ev];
)

// Rule: .cb = sqltab_mod_unload_ev ==> .cb_signature = cb_signatures[cb_sqltab_mod_unload_ev];
@transform_cb_sqltab_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = sqltab_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sqltab_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_sqltab_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sqltab_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_sqltab_mod_unload_ev];
)

// Rule: .cb = statcache_fs_statcache_clear_ev ==> .cb_signature = cb_signatures[cb_statcache_fs_statcache_clear_ev];
@transform_cb_statcache_fs_statcache_clear_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_fs_statcache_clear_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_fs_statcache_clear_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_fs_statcache_clear_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_fs_statcache_clear_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_fs_statcache_clear_ev];
)

// Rule: .cb = statcache_mod_unload_ev ==> .cb_signature = cb_signatures[cb_statcache_mod_unload_ev];
@transform_cb_statcache_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_mod_unload_ev];
)

// Rule: .cb = statcache_postparse_ev ==> .cb_signature = cb_signatures[cb_statcache_postparse_ev];
@transform_cb_statcache_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_postparse_ev];
)

// Rule: .cb = statcache_restart_ev ==> .cb_signature = cb_signatures[cb_statcache_restart_ev];
@transform_cb_statcache_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_restart_ev];
)

// Rule: .cb = statcache_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_statcache_sess_reinit_ev];
@transform_cb_statcache_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_sess_reinit_ev];
)

// Rule: .cb = statcache_shutdown_ev ==> .cb_signature = cb_signatures[cb_statcache_shutdown_ev];
@transform_cb_statcache_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = statcache_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_statcache_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_statcache_shutdown_ev];
)

// Rule: .cb = systemd_mod_unload_ev ==> .cb_signature = cb_signatures[cb_systemd_mod_unload_ev];
@transform_cb_systemd_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = systemd_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_mod_unload_ev];
)

// Rule: .cb = systemd_postparse_ev ==> .cb_signature = cb_signatures[cb_systemd_postparse_ev];
@transform_cb_systemd_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = systemd_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_postparse_ev];
)

// Rule: .cb = systemd_restart_ev ==> .cb_signature = cb_signatures[cb_systemd_restart_ev];
@transform_cb_systemd_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = systemd_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_restart_ev];
)

// Rule: .cb = systemd_shutdown_ev ==> .cb_signature = cb_signatures[cb_systemd_shutdown_ev];
@transform_cb_systemd_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = systemd_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_shutdown_ev];
)

// Rule: .cb = systemd_startup_ev ==> .cb_signature = cb_signatures[cb_systemd_startup_ev];
@transform_cb_systemd_startup_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = systemd_startup_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_startup_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_systemd_startup_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_startup_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_systemd_startup_ev];
)

// Rule: .cb = tab_copy_cb ==> .cb_signature = cb_signatures[cb_tab_copy_cb];
@transform_cb_tab_copy_cb@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tab_copy_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tab_copy_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tab_copy_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tab_copy_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tab_copy_cb];
)

// Rule: .cb = test_visitf ==> .cb_signature = cb_signatures[cb_test_visitf];
@transform_cb_test_visitf@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = test_visitf;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_test_visitf];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_test_visitf];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_test_visitf];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_test_visitf];
)

// Rule: .cb = tls_exit_ev ==> .cb_signature = cb_signatures[cb_tls_exit_ev];
@transform_cb_tls_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_exit_ev];
)

// Rule: .cb = tls_handle_tls ==> .cb_signature = cb_signatures[cb_tls_handle_tls];
@transform_cb_tls_handle_tls@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_handle_tls;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_handle_tls];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_handle_tls];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_handle_tls];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_handle_tls];
)

// Rule: .cb = tls_mcache_mod_unload_ev ==> .cb_signature = cb_signatures[cb_tls_mcache_mod_unload_ev];
@transform_cb_tls_mcache_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_mcache_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_mcache_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_mcache_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_mcache_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_mcache_mod_unload_ev];
)

// Rule: .cb = tls_mod_unload_ev ==> .cb_signature = cb_signatures[cb_tls_mod_unload_ev];
@transform_cb_tls_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_mod_unload_ev];
)

// Rule: .cb = tls_postparse_ev ==> .cb_signature = cb_signatures[cb_tls_postparse_ev];
@transform_cb_tls_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_postparse_ev];
)

// Rule: .cb = tls_redis_mod_unload_ev ==> .cb_signature = cb_signatures[cb_tls_redis_mod_unload_ev];
@transform_cb_tls_redis_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_redis_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_redis_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_redis_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_redis_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_redis_mod_unload_ev];
)

// Rule: .cb = tls_restart_ev ==> .cb_signature = cb_signatures[cb_tls_restart_ev];
@transform_cb_tls_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_restart_ev];
)

// Rule: .cb = tls_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_tls_sess_reinit_ev];
@transform_cb_tls_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_sess_reinit_ev];
)

// Rule: .cb = tls_shutdown_ev ==> .cb_signature = cb_signatures[cb_tls_shutdown_ev];
@transform_cb_tls_shutdown_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_shutdown_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_shutdown_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_shutdown_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_shutdown_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_shutdown_ev];
)

// Rule: .cb = tls_timeout_ev ==> .cb_signature = cb_signatures[cb_tls_timeout_ev];
@transform_cb_tls_timeout_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = tls_timeout_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_timeout_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_tls_timeout_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_timeout_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_tls_timeout_ev];
)

// Rule: .cb = trace_restart_ev ==> .cb_signature = cb_signatures[cb_trace_restart_ev];
@transform_cb_trace_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = trace_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_trace_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_trace_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_trace_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_trace_restart_ev];
)

// Rule: .cb = uniqid_mod_unload_ev ==> .cb_signature = cb_signatures[cb_uniqid_mod_unload_ev];
@transform_cb_uniqid_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = uniqid_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_uniqid_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_uniqid_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_uniqid_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_uniqid_mod_unload_ev];
)

// Rule: .cb = uniqid_postparse_ev ==> .cb_signature = cb_signatures[cb_uniqid_postparse_ev];
@transform_cb_uniqid_postparse_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = uniqid_postparse_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_uniqid_postparse_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_uniqid_postparse_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_uniqid_postparse_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_uniqid_postparse_ev];
)

// Rule: .cb = wrap2_exit_ev ==> .cb_signature = cb_signatures[cb_wrap2_exit_ev];
@transform_cb_wrap2_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = wrap2_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_exit_ev];
)

// Rule: .cb = wrap2_mod_unload_ev ==> .cb_signature = cb_signatures[cb_wrap2_mod_unload_ev];
@transform_cb_wrap2_mod_unload_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = wrap2_mod_unload_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_mod_unload_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_mod_unload_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_mod_unload_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_mod_unload_ev];
)

// Rule: .cb = wrap2_restart_ev ==> .cb_signature = cb_signatures[cb_wrap2_restart_ev];
@transform_cb_wrap2_restart_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = wrap2_restart_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_restart_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_restart_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_restart_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_restart_ev];
)

// Rule: .cb = wrap2_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_wrap2_sess_reinit_ev];
@transform_cb_wrap2_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = wrap2_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap2_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap2_sess_reinit_ev];
)

// Rule: .cb = wrap_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_wrap_sess_reinit_ev];
@transform_cb_wrap_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = wrap_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_wrap_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_wrap_sess_reinit_ev];
)

// Rule: .cb = xfer_exit_ev ==> .cb_signature = cb_signatures[cb_xfer_exit_ev];
@transform_cb_xfer_exit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = xfer_exit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_exit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_exit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_exit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_exit_ev];
)

// Rule: .cb = xfer_sess_reinit_ev ==> .cb_signature = cb_signatures[cb_xfer_sess_reinit_ev];
@transform_cb_xfer_sess_reinit_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = xfer_sess_reinit_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_sess_reinit_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_sess_reinit_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_sess_reinit_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_sess_reinit_ev];
)

// Rule: .cb = xfer_sigusr2_ev ==> .cb_signature = cb_signatures[cb_xfer_sigusr2_ev];
@transform_cb_xfer_sigusr2_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = xfer_sigusr2_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_sigusr2_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_sigusr2_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_sigusr2_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_sigusr2_ev];
)

// Rule: .cb = xfer_timeout_session_ev ==> .cb_signature = cb_signatures[cb_xfer_timeout_session_ev];
@transform_cb_xfer_timeout_session_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = xfer_timeout_session_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_timeout_session_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_timeout_session_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_timeout_session_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_timeout_session_ev];
)

// Rule: .cb = xfer_timeout_stalled_ev ==> .cb_signature = cb_signatures[cb_xfer_timeout_stalled_ev];
@transform_cb_xfer_timeout_stalled_ev@
expression E;
identifier FP_NAME = cb;
identifier FUNC_NAME = xfer_timeout_stalled_ev;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_timeout_stalled_ev];
|
E.FP_NAME = &FUNC_NAME;
+ E.cb_signature = cb_signatures[cb_xfer_timeout_stalled_ev];
|
E->FP_NAME = FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_timeout_stalled_ev];
|
E->FP_NAME = &FUNC_NAME;
+ E->cb_signature = cb_signatures[cb_xfer_timeout_stalled_ev];
)

// Rules for chdir (1 valid functions, 0 excluded)
// Rule: .chdir = sys_chdir ==> .chdir_signature = chdir_signatures[chdir_sys_chdir];
@transform_chdir_sys_chdir@
expression E;
identifier FP_NAME = chdir;
identifier FUNC_NAME = sys_chdir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chdir_signature = chdir_signatures[chdir_sys_chdir];
|
E.FP_NAME = &FUNC_NAME;
+ E.chdir_signature = chdir_signatures[chdir_sys_chdir];
|
E->FP_NAME = FUNC_NAME;
+ E->chdir_signature = chdir_signatures[chdir_sys_chdir];
|
E->FP_NAME = &FUNC_NAME;
+ E->chdir_signature = chdir_signatures[chdir_sys_chdir];
)

// Rules for chmod (2 valid functions, 0 excluded)
// Rule: .chmod = statcache_fsio_chmod ==> .chmod_signature = chmod_signatures[chmod_statcache_fsio_chmod];
@transform_chmod_statcache_fsio_chmod@
expression E;
identifier FP_NAME = chmod;
identifier FUNC_NAME = statcache_fsio_chmod;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chmod_signature = chmod_signatures[chmod_statcache_fsio_chmod];
|
E.FP_NAME = &FUNC_NAME;
+ E.chmod_signature = chmod_signatures[chmod_statcache_fsio_chmod];
|
E->FP_NAME = FUNC_NAME;
+ E->chmod_signature = chmod_signatures[chmod_statcache_fsio_chmod];
|
E->FP_NAME = &FUNC_NAME;
+ E->chmod_signature = chmod_signatures[chmod_statcache_fsio_chmod];
)

// Rule: .chmod = sys_chmod ==> .chmod_signature = chmod_signatures[chmod_sys_chmod];
@transform_chmod_sys_chmod@
expression E;
identifier FP_NAME = chmod;
identifier FUNC_NAME = sys_chmod;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chmod_signature = chmod_signatures[chmod_sys_chmod];
|
E.FP_NAME = &FUNC_NAME;
+ E.chmod_signature = chmod_signatures[chmod_sys_chmod];
|
E->FP_NAME = FUNC_NAME;
+ E->chmod_signature = chmod_signatures[chmod_sys_chmod];
|
E->FP_NAME = &FUNC_NAME;
+ E->chmod_signature = chmod_signatures[chmod_sys_chmod];
)

// Rules for chown (2 valid functions, 0 excluded)
// Rule: .chown = statcache_fsio_chown ==> .chown_signature = chown_signatures[chown_statcache_fsio_chown];
@transform_chown_statcache_fsio_chown@
expression E;
identifier FP_NAME = chown;
identifier FUNC_NAME = statcache_fsio_chown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chown_signature = chown_signatures[chown_statcache_fsio_chown];
|
E.FP_NAME = &FUNC_NAME;
+ E.chown_signature = chown_signatures[chown_statcache_fsio_chown];
|
E->FP_NAME = FUNC_NAME;
+ E->chown_signature = chown_signatures[chown_statcache_fsio_chown];
|
E->FP_NAME = &FUNC_NAME;
+ E->chown_signature = chown_signatures[chown_statcache_fsio_chown];
)

// Rule: .chown = sys_chown ==> .chown_signature = chown_signatures[chown_sys_chown];
@transform_chown_sys_chown@
expression E;
identifier FP_NAME = chown;
identifier FUNC_NAME = sys_chown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chown_signature = chown_signatures[chown_sys_chown];
|
E.FP_NAME = &FUNC_NAME;
+ E.chown_signature = chown_signatures[chown_sys_chown];
|
E->FP_NAME = FUNC_NAME;
+ E->chown_signature = chown_signatures[chown_sys_chown];
|
E->FP_NAME = &FUNC_NAME;
+ E->chown_signature = chown_signatures[chown_sys_chown];
)

// Rules for chroot (1 valid functions, 0 excluded)
// Rule: .chroot = sys_chroot ==> .chroot_signature = chroot_signatures[chroot_sys_chroot];
@transform_chroot_sys_chroot@
expression E;
identifier FP_NAME = chroot;
identifier FUNC_NAME = sys_chroot;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.chroot_signature = chroot_signatures[chroot_sys_chroot];
|
E.FP_NAME = &FUNC_NAME;
+ E.chroot_signature = chroot_signatures[chroot_sys_chroot];
|
E->FP_NAME = FUNC_NAME;
+ E->chroot_signature = chroot_signatures[chroot_sys_chroot];
|
E->FP_NAME = &FUNC_NAME;
+ E->chroot_signature = chroot_signatures[chroot_sys_chroot];
)

// Rules for cleanup_cb (6 valid functions, 0 excluded)
// Rule: .cleanup_cb = 0 ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_NULL];
@transform_cleanup_cb_NULL@
expression E;
identifier FP_NAME = cleanup_cb;
@@
(
E.FP_NAME = 0;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_NULL];
|
E->FP_NAME = 0;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_NULL];
)

// Rule: .cleanup_cb = conn_cleanup_cb ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb];
@transform_cleanup_cb_conn_cleanup_cb@
expression E;
identifier FP_NAME = cleanup_cb;
identifier FUNC_NAME = conn_cleanup_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb];
)

// Rule: .cleanup_cb = ctrls_cleanup_cb ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb];
@transform_cleanup_cb_ctrls_cleanup_cb@
expression E;
identifier FP_NAME = cleanup_cb;
identifier FUNC_NAME = ctrls_cleanup_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb];
)

// Rule: .cleanup_cb = event_cleanup_cb ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_event_cleanup_cb];
@transform_cleanup_cb_event_cleanup_cb@
expression E;
identifier FP_NAME = cleanup_cb;
identifier FUNC_NAME = event_cleanup_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_event_cleanup_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_event_cleanup_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_event_cleanup_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_event_cleanup_cb];
)

// Rule: .cleanup_cb = server_cleanup_cb ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_server_cleanup_cb];
@transform_cleanup_cb_server_cleanup_cb@
expression E;
identifier FP_NAME = cleanup_cb;
identifier FUNC_NAME = server_cleanup_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_server_cleanup_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_server_cleanup_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_server_cleanup_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_server_cleanup_cb];
)

// Rule: .cleanup_cb = sess_redis_cleanup ==> .cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup];
@transform_cleanup_cb_sess_redis_cleanup@
expression E;
identifier FP_NAME = cleanup_cb;
identifier FUNC_NAME = sess_redis_cleanup;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup];
|
E.FP_NAME = &FUNC_NAME;
+ E.cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup];
|
E->FP_NAME = FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup];
|
E->FP_NAME = &FUNC_NAME;
+ E->cleanup_cb_signature = cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup];
)

// Rules for clear (2 valid functions, 0 excluded)
// Rule: .clear = ocsp_cache_clear ==> .clear_signature = clear_signatures[clear_ocsp_cache_clear];
@transform_clear_ocsp_cache_clear@
expression E;
identifier FP_NAME = clear;
identifier FUNC_NAME = ocsp_cache_clear;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.clear_signature = clear_signatures[clear_ocsp_cache_clear];
|
E.FP_NAME = &FUNC_NAME;
+ E.clear_signature = clear_signatures[clear_ocsp_cache_clear];
|
E->FP_NAME = FUNC_NAME;
+ E->clear_signature = clear_signatures[clear_ocsp_cache_clear];
|
E->FP_NAME = &FUNC_NAME;
+ E->clear_signature = clear_signatures[clear_ocsp_cache_clear];
)

// Rule: .clear = sess_cache_clear ==> .clear_signature = clear_signatures[clear_sess_cache_clear];
@transform_clear_sess_cache_clear@
expression E;
identifier FP_NAME = clear;
identifier FUNC_NAME = sess_cache_clear;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.clear_signature = clear_signatures[clear_sess_cache_clear];
|
E.FP_NAME = &FUNC_NAME;
+ E.clear_signature = clear_signatures[clear_sess_cache_clear];
|
E->FP_NAME = FUNC_NAME;
+ E->clear_signature = clear_signatures[clear_sess_cache_clear];
|
E->FP_NAME = &FUNC_NAME;
+ E->clear_signature = clear_signatures[clear_sess_cache_clear];
)

// Rules for close (9 valid functions, 0 excluded)
// Rule: .close = core_netio_close_cb ==> .close_signature = close_signatures[close_core_netio_close_cb];
@transform_close_core_netio_close_cb@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = core_netio_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_core_netio_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_core_netio_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_core_netio_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_core_netio_close_cb];
)

// Rule: .close = deflate_netio_close_cb ==> .close_signature = close_signatures[close_deflate_netio_close_cb];
@transform_close_deflate_netio_close_cb@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = deflate_netio_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_deflate_netio_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_deflate_netio_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_deflate_netio_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_deflate_netio_close_cb];
)

// Rule: .close = deflate_next_netio_close ==> .close_signature = close_signatures[close_deflate_next_netio_close];
@transform_close_deflate_next_netio_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = deflate_next_netio_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_deflate_next_netio_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_deflate_next_netio_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_deflate_next_netio_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_deflate_next_netio_close];
)

// Rule: .close = ocsp_cache_close ==> .close_signature = close_signatures[close_ocsp_cache_close];
@transform_close_ocsp_cache_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = ocsp_cache_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_ocsp_cache_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_ocsp_cache_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_ocsp_cache_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_ocsp_cache_close];
)

// Rule: .close = robots_fsio_close ==> .close_signature = close_signatures[close_robots_fsio_close];
@transform_close_robots_fsio_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = robots_fsio_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_robots_fsio_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_robots_fsio_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_robots_fsio_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_robots_fsio_close];
)

// Rule: .close = sess_cache_close ==> .close_signature = close_signatures[close_sess_cache_close];
@transform_close_sess_cache_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = sess_cache_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_sess_cache_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_sess_cache_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_sess_cache_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_sess_cache_close];
)

// Rule: .close = sftppam_driver_close ==> .close_signature = close_signatures[close_sftppam_driver_close];
@transform_close_sftppam_driver_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = sftppam_driver_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_sftppam_driver_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_sftppam_driver_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_sftppam_driver_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_sftppam_driver_close];
)

// Rule: .close = sys_close ==> .close_signature = close_signatures[close_sys_close];
@transform_close_sys_close@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = sys_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_sys_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_sys_close];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_sys_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_sys_close];
)

// Rule: .close = tls_netio_close_cb ==> .close_signature = close_signatures[close_tls_netio_close_cb];
@transform_close_tls_netio_close_cb@
expression E;
identifier FP_NAME = close;
identifier FUNC_NAME = tls_netio_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.close_signature = close_signatures[close_tls_netio_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.close_signature = close_signatures[close_tls_netio_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->close_signature = close_signatures[close_tls_netio_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->close_signature = close_signatures[close_tls_netio_close_cb];
)

// Rules for closedir (1 valid functions, 0 excluded)
// Rule: .closedir = sys_closedir ==> .closedir_signature = closedir_signatures[closedir_sys_closedir];
@transform_closedir_sys_closedir@
expression E;
identifier FP_NAME = closedir;
identifier FUNC_NAME = sys_closedir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.closedir_signature = closedir_signatures[closedir_sys_closedir];
|
E.FP_NAME = &FUNC_NAME;
+ E.closedir_signature = closedir_signatures[closedir_sys_closedir];
|
E->FP_NAME = FUNC_NAME;
+ E->closedir_signature = closedir_signatures[closedir_sys_closedir];
|
E->FP_NAME = &FUNC_NAME;
+ E->closedir_signature = closedir_signatures[closedir_sys_closedir];
)

// Rules for ctrls_cb (1 valid functions, 0 excluded)
// Rule: .ctrls_cb = 0 ==> .ctrls_cb_signature = ctrls_cb_signatures[ctrls_cb_NULL];
@transform_ctrls_cb_NULL@
expression E;
identifier FP_NAME = ctrls_cb;
@@
(
E.FP_NAME = 0;
+ E.ctrls_cb_signature = ctrls_cb_signatures[ctrls_cb_NULL];
|
E->FP_NAME = 0;
+ E->ctrls_cb_signature = ctrls_cb_signatures[ctrls_cb_NULL];
)

// Rules for delete (2 valid functions, 0 excluded)
// Rule: .delete = ocsp_cache_delete ==> .delete_signature = delete_signatures[delete_ocsp_cache_delete];
@transform_delete_ocsp_cache_delete@
expression E;
identifier FP_NAME = delete;
identifier FUNC_NAME = ocsp_cache_delete;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.delete_signature = delete_signatures[delete_ocsp_cache_delete];
|
E.FP_NAME = &FUNC_NAME;
+ E.delete_signature = delete_signatures[delete_ocsp_cache_delete];
|
E->FP_NAME = FUNC_NAME;
+ E->delete_signature = delete_signatures[delete_ocsp_cache_delete];
|
E->FP_NAME = &FUNC_NAME;
+ E->delete_signature = delete_signatures[delete_ocsp_cache_delete];
)

// Rule: .delete = sess_cache_delete ==> .delete_signature = delete_signatures[delete_sess_cache_delete];
@transform_delete_sess_cache_delete@
expression E;
identifier FP_NAME = delete;
identifier FUNC_NAME = sess_cache_delete;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.delete_signature = delete_signatures[delete_sess_cache_delete];
|
E.FP_NAME = &FUNC_NAME;
+ E.delete_signature = delete_signatures[delete_sess_cache_delete];
|
E->FP_NAME = FUNC_NAME;
+ E->delete_signature = delete_signatures[delete_sess_cache_delete];
|
E->FP_NAME = &FUNC_NAME;
+ E->delete_signature = delete_signatures[delete_sess_cache_delete];
)

// Rules for entinsert (1 valid functions, 0 excluded)
// Rule: .entinsert = entry_insert ==> .entinsert_signature = entinsert_signatures[entinsert_entry_insert];
@transform_entinsert_entry_insert@
expression E;
identifier FP_NAME = entinsert;
identifier FUNC_NAME = entry_insert;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.entinsert_signature = entinsert_signatures[entinsert_entry_insert];
|
E.FP_NAME = &FUNC_NAME;
+ E.entinsert_signature = entinsert_signatures[entinsert_entry_insert];
|
E->FP_NAME = FUNC_NAME;
+ E->entinsert_signature = entinsert_signatures[entinsert_entry_insert];
|
E->FP_NAME = &FUNC_NAME;
+ E->entinsert_signature = entinsert_signatures[entinsert_entry_insert];
)

// Rules for entremove (1 valid functions, 0 excluded)
// Rule: .entremove = entry_remove ==> .entremove_signature = entremove_signatures[entremove_entry_remove];
@transform_entremove_entry_remove@
expression E;
identifier FP_NAME = entremove;
identifier FUNC_NAME = entry_remove;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.entremove_signature = entremove_signatures[entremove_entry_remove];
|
E.FP_NAME = &FUNC_NAME;
+ E.entremove_signature = entremove_signatures[entremove_entry_remove];
|
E->FP_NAME = FUNC_NAME;
+ E->entremove_signature = entremove_signatures[entremove_entry_remove];
|
E->FP_NAME = &FUNC_NAME;
+ E->entremove_signature = entremove_signatures[entremove_entry_remove];
)

// Rules for faccess (3 valid functions, 0 excluded)
// Rule: .faccess = facl_fsio_faccess ==> .faccess_signature = faccess_signatures[faccess_facl_fsio_faccess];
@transform_faccess_facl_fsio_faccess@
expression E;
identifier FP_NAME = faccess;
identifier FUNC_NAME = facl_fsio_faccess;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_facl_fsio_faccess];
|
E.FP_NAME = &FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_facl_fsio_faccess];
|
E->FP_NAME = FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_facl_fsio_faccess];
|
E->FP_NAME = &FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_facl_fsio_faccess];
)

// Rule: .faccess = robots_fsio_faccess ==> .faccess_signature = faccess_signatures[faccess_robots_fsio_faccess];
@transform_faccess_robots_fsio_faccess@
expression E;
identifier FP_NAME = faccess;
identifier FUNC_NAME = robots_fsio_faccess;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_robots_fsio_faccess];
|
E.FP_NAME = &FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_robots_fsio_faccess];
|
E->FP_NAME = FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_robots_fsio_faccess];
|
E->FP_NAME = &FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_robots_fsio_faccess];
)

// Rule: .faccess = sys_faccess ==> .faccess_signature = faccess_signatures[faccess_sys_faccess];
@transform_faccess_sys_faccess@
expression E;
identifier FP_NAME = faccess;
identifier FUNC_NAME = sys_faccess;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_sys_faccess];
|
E.FP_NAME = &FUNC_NAME;
+ E.faccess_signature = faccess_signatures[faccess_sys_faccess];
|
E->FP_NAME = FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_sys_faccess];
|
E->FP_NAME = &FUNC_NAME;
+ E->faccess_signature = faccess_signatures[faccess_sys_faccess];
)

// Rules for fchmod (2 valid functions, 0 excluded)
// Rule: .fchmod = statcache_fsio_fchmod ==> .fchmod_signature = fchmod_signatures[fchmod_statcache_fsio_fchmod];
@transform_fchmod_statcache_fsio_fchmod@
expression E;
identifier FP_NAME = fchmod;
identifier FUNC_NAME = statcache_fsio_fchmod;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fchmod_signature = fchmod_signatures[fchmod_statcache_fsio_fchmod];
|
E.FP_NAME = &FUNC_NAME;
+ E.fchmod_signature = fchmod_signatures[fchmod_statcache_fsio_fchmod];
|
E->FP_NAME = FUNC_NAME;
+ E->fchmod_signature = fchmod_signatures[fchmod_statcache_fsio_fchmod];
|
E->FP_NAME = &FUNC_NAME;
+ E->fchmod_signature = fchmod_signatures[fchmod_statcache_fsio_fchmod];
)

// Rule: .fchmod = sys_fchmod ==> .fchmod_signature = fchmod_signatures[fchmod_sys_fchmod];
@transform_fchmod_sys_fchmod@
expression E;
identifier FP_NAME = fchmod;
identifier FUNC_NAME = sys_fchmod;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fchmod_signature = fchmod_signatures[fchmod_sys_fchmod];
|
E.FP_NAME = &FUNC_NAME;
+ E.fchmod_signature = fchmod_signatures[fchmod_sys_fchmod];
|
E->FP_NAME = FUNC_NAME;
+ E->fchmod_signature = fchmod_signatures[fchmod_sys_fchmod];
|
E->FP_NAME = &FUNC_NAME;
+ E->fchmod_signature = fchmod_signatures[fchmod_sys_fchmod];
)

// Rules for fchown (2 valid functions, 0 excluded)
// Rule: .fchown = statcache_fsio_fchown ==> .fchown_signature = fchown_signatures[fchown_statcache_fsio_fchown];
@transform_fchown_statcache_fsio_fchown@
expression E;
identifier FP_NAME = fchown;
identifier FUNC_NAME = statcache_fsio_fchown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fchown_signature = fchown_signatures[fchown_statcache_fsio_fchown];
|
E.FP_NAME = &FUNC_NAME;
+ E.fchown_signature = fchown_signatures[fchown_statcache_fsio_fchown];
|
E->FP_NAME = FUNC_NAME;
+ E->fchown_signature = fchown_signatures[fchown_statcache_fsio_fchown];
|
E->FP_NAME = &FUNC_NAME;
+ E->fchown_signature = fchown_signatures[fchown_statcache_fsio_fchown];
)

// Rule: .fchown = sys_fchown ==> .fchown_signature = fchown_signatures[fchown_sys_fchown];
@transform_fchown_sys_fchown@
expression E;
identifier FP_NAME = fchown;
identifier FUNC_NAME = sys_fchown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fchown_signature = fchown_signatures[fchown_sys_fchown];
|
E.FP_NAME = &FUNC_NAME;
+ E.fchown_signature = fchown_signatures[fchown_sys_fchown];
|
E->FP_NAME = FUNC_NAME;
+ E->fchown_signature = fchown_signatures[fchown_sys_fchown];
|
E->FP_NAME = &FUNC_NAME;
+ E->fchown_signature = fchown_signatures[fchown_sys_fchown];
)

// Rules for fgetxattr (1 valid functions, 0 excluded)
// Rule: .fgetxattr = sys_fgetxattr ==> .fgetxattr_signature = fgetxattr_signatures[fgetxattr_sys_fgetxattr];
@transform_fgetxattr_sys_fgetxattr@
expression E;
identifier FP_NAME = fgetxattr;
identifier FUNC_NAME = sys_fgetxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fgetxattr_signature = fgetxattr_signatures[fgetxattr_sys_fgetxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.fgetxattr_signature = fgetxattr_signatures[fgetxattr_sys_fgetxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->fgetxattr_signature = fgetxattr_signatures[fgetxattr_sys_fgetxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->fgetxattr_signature = fgetxattr_signatures[fgetxattr_sys_fgetxattr];
)

// Rules for flistxattr (1 valid functions, 0 excluded)
// Rule: .flistxattr = sys_flistxattr ==> .flistxattr_signature = flistxattr_signatures[flistxattr_sys_flistxattr];
@transform_flistxattr_sys_flistxattr@
expression E;
identifier FP_NAME = flistxattr;
identifier FUNC_NAME = sys_flistxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.flistxattr_signature = flistxattr_signatures[flistxattr_sys_flistxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.flistxattr_signature = flistxattr_signatures[flistxattr_sys_flistxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->flistxattr_signature = flistxattr_signatures[flistxattr_sys_flistxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->flistxattr_signature = flistxattr_signatures[flistxattr_sys_flistxattr];
)

// Rules for fremovexattr (1 valid functions, 0 excluded)
// Rule: .fremovexattr = sys_fremovexattr ==> .fremovexattr_signature = fremovexattr_signatures[fremovexattr_sys_fremovexattr];
@transform_fremovexattr_sys_fremovexattr@
expression E;
identifier FP_NAME = fremovexattr;
identifier FUNC_NAME = sys_fremovexattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fremovexattr_signature = fremovexattr_signatures[fremovexattr_sys_fremovexattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.fremovexattr_signature = fremovexattr_signatures[fremovexattr_sys_fremovexattr];
|
E->FP_NAME = FUNC_NAME;
+ E->fremovexattr_signature = fremovexattr_signatures[fremovexattr_sys_fremovexattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->fremovexattr_signature = fremovexattr_signatures[fremovexattr_sys_fremovexattr];
)

// Rules for fsetxattr (1 valid functions, 0 excluded)
// Rule: .fsetxattr = sys_fsetxattr ==> .fsetxattr_signature = fsetxattr_signatures[fsetxattr_sys_fsetxattr];
@transform_fsetxattr_sys_fsetxattr@
expression E;
identifier FP_NAME = fsetxattr;
identifier FUNC_NAME = sys_fsetxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fsetxattr_signature = fsetxattr_signatures[fsetxattr_sys_fsetxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.fsetxattr_signature = fsetxattr_signatures[fsetxattr_sys_fsetxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->fsetxattr_signature = fsetxattr_signatures[fsetxattr_sys_fsetxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->fsetxattr_signature = fsetxattr_signatures[fsetxattr_sys_fsetxattr];
)

// Rules for fstat (3 valid functions, 0 excluded)
// Rule: .fstat = robots_fsio_fstat ==> .fstat_signature = fstat_signatures[fstat_robots_fsio_fstat];
@transform_fstat_robots_fsio_fstat@
expression E;
identifier FP_NAME = fstat;
identifier FUNC_NAME = robots_fsio_fstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_robots_fsio_fstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_robots_fsio_fstat];
|
E->FP_NAME = FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_robots_fsio_fstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_robots_fsio_fstat];
)

// Rule: .fstat = statcache_fsio_fstat ==> .fstat_signature = fstat_signatures[fstat_statcache_fsio_fstat];
@transform_fstat_statcache_fsio_fstat@
expression E;
identifier FP_NAME = fstat;
identifier FUNC_NAME = statcache_fsio_fstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_statcache_fsio_fstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_statcache_fsio_fstat];
|
E->FP_NAME = FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_statcache_fsio_fstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_statcache_fsio_fstat];
)

// Rule: .fstat = sys_fstat ==> .fstat_signature = fstat_signatures[fstat_sys_fstat];
@transform_fstat_sys_fstat@
expression E;
identifier FP_NAME = fstat;
identifier FUNC_NAME = sys_fstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_sys_fstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.fstat_signature = fstat_signatures[fstat_sys_fstat];
|
E->FP_NAME = FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_sys_fstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->fstat_signature = fstat_signatures[fstat_sys_fstat];
)

// Rules for fsync (1 valid functions, 0 excluded)
// Rule: .fsync = sys_fsync ==> .fsync_signature = fsync_signatures[fsync_sys_fsync];
@transform_fsync_sys_fsync@
expression E;
identifier FP_NAME = fsync;
identifier FUNC_NAME = sys_fsync;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.fsync_signature = fsync_signatures[fsync_sys_fsync];
|
E.FP_NAME = &FUNC_NAME;
+ E.fsync_signature = fsync_signatures[fsync_sys_fsync];
|
E->FP_NAME = FUNC_NAME;
+ E->fsync_signature = fsync_signatures[fsync_sys_fsync];
|
E->FP_NAME = &FUNC_NAME;
+ E->fsync_signature = fsync_signatures[fsync_sys_fsync];
)

// Rules for ftruncate (2 valid functions, 0 excluded)
// Rule: .ftruncate = statcache_fsio_ftruncate ==> .ftruncate_signature = ftruncate_signatures[ftruncate_statcache_fsio_ftruncate];
@transform_ftruncate_statcache_fsio_ftruncate@
expression E;
identifier FP_NAME = ftruncate;
identifier FUNC_NAME = statcache_fsio_ftruncate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.ftruncate_signature = ftruncate_signatures[ftruncate_statcache_fsio_ftruncate];
|
E.FP_NAME = &FUNC_NAME;
+ E.ftruncate_signature = ftruncate_signatures[ftruncate_statcache_fsio_ftruncate];
|
E->FP_NAME = FUNC_NAME;
+ E->ftruncate_signature = ftruncate_signatures[ftruncate_statcache_fsio_ftruncate];
|
E->FP_NAME = &FUNC_NAME;
+ E->ftruncate_signature = ftruncate_signatures[ftruncate_statcache_fsio_ftruncate];
)

// Rule: .ftruncate = sys_ftruncate ==> .ftruncate_signature = ftruncate_signatures[ftruncate_sys_ftruncate];
@transform_ftruncate_sys_ftruncate@
expression E;
identifier FP_NAME = ftruncate;
identifier FUNC_NAME = sys_ftruncate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.ftruncate_signature = ftruncate_signatures[ftruncate_sys_ftruncate];
|
E.FP_NAME = &FUNC_NAME;
+ E.ftruncate_signature = ftruncate_signatures[ftruncate_sys_ftruncate];
|
E->FP_NAME = FUNC_NAME;
+ E->ftruncate_signature = ftruncate_signatures[ftruncate_sys_ftruncate];
|
E->FP_NAME = &FUNC_NAME;
+ E->ftruncate_signature = ftruncate_signatures[ftruncate_sys_ftruncate];
)

// Rules for futimes (2 valid functions, 0 excluded)
// Rule: .futimes = statcache_fsio_futimes ==> .futimes_signature = futimes_signatures[futimes_statcache_fsio_futimes];
@transform_futimes_statcache_fsio_futimes@
expression E;
identifier FP_NAME = futimes;
identifier FUNC_NAME = statcache_fsio_futimes;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.futimes_signature = futimes_signatures[futimes_statcache_fsio_futimes];
|
E.FP_NAME = &FUNC_NAME;
+ E.futimes_signature = futimes_signatures[futimes_statcache_fsio_futimes];
|
E->FP_NAME = FUNC_NAME;
+ E->futimes_signature = futimes_signatures[futimes_statcache_fsio_futimes];
|
E->FP_NAME = &FUNC_NAME;
+ E->futimes_signature = futimes_signatures[futimes_statcache_fsio_futimes];
)

// Rule: .futimes = sys_futimes ==> .futimes_signature = futimes_signatures[futimes_sys_futimes];
@transform_futimes_sys_futimes@
expression E;
identifier FP_NAME = futimes;
identifier FUNC_NAME = sys_futimes;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.futimes_signature = futimes_signatures[futimes_sys_futimes];
|
E.FP_NAME = &FUNC_NAME;
+ E.futimes_signature = futimes_signatures[futimes_sys_futimes];
|
E->FP_NAME = FUNC_NAME;
+ E->futimes_signature = futimes_signatures[futimes_sys_futimes];
|
E->FP_NAME = &FUNC_NAME;
+ E->futimes_signature = futimes_signatures[futimes_sys_futimes];
)

// Rules for get (2 valid functions, 0 excluded)
// Rule: .get = ocsp_cache_get ==> .get_signature = get_signatures[get_ocsp_cache_get];
@transform_get_ocsp_cache_get@
expression E;
identifier FP_NAME = get;
identifier FUNC_NAME = ocsp_cache_get;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.get_signature = get_signatures[get_ocsp_cache_get];
|
E.FP_NAME = &FUNC_NAME;
+ E.get_signature = get_signatures[get_ocsp_cache_get];
|
E->FP_NAME = FUNC_NAME;
+ E->get_signature = get_signatures[get_ocsp_cache_get];
|
E->FP_NAME = &FUNC_NAME;
+ E->get_signature = get_signatures[get_ocsp_cache_get];
)

// Rule: .get = sess_cache_get ==> .get_signature = get_signatures[get_sess_cache_get];
@transform_get_sess_cache_get@
expression E;
identifier FP_NAME = get;
identifier FUNC_NAME = sess_cache_get;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.get_signature = get_signatures[get_sess_cache_get];
|
E.FP_NAME = &FUNC_NAME;
+ E.get_signature = get_signatures[get_sess_cache_get];
|
E->FP_NAME = FUNC_NAME;
+ E->get_signature = get_signatures[get_sess_cache_get];
|
E->FP_NAME = &FUNC_NAME;
+ E->get_signature = get_signatures[get_sess_cache_get];
)

// Rules for getxattr (1 valid functions, 0 excluded)
// Rule: .getxattr = sys_getxattr ==> .getxattr_signature = getxattr_signatures[getxattr_sys_getxattr];
@transform_getxattr_sys_getxattr@
expression E;
identifier FP_NAME = getxattr;
identifier FUNC_NAME = sys_getxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.getxattr_signature = getxattr_signatures[getxattr_sys_getxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.getxattr_signature = getxattr_signatures[getxattr_sys_getxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->getxattr_signature = getxattr_signatures[getxattr_sys_getxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->getxattr_signature = getxattr_signatures[getxattr_sys_getxattr];
)

// Rules for keycmp (1 valid functions, 0 excluded)
// Rule: .keycmp = key_cmp ==> .keycmp_signature = keycmp_signatures[keycmp_key_cmp];
@transform_keycmp_key_cmp@
expression E;
identifier FP_NAME = keycmp;
identifier FUNC_NAME = key_cmp;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.keycmp_signature = keycmp_signatures[keycmp_key_cmp];
|
E.FP_NAME = &FUNC_NAME;
+ E.keycmp_signature = keycmp_signatures[keycmp_key_cmp];
|
E->FP_NAME = FUNC_NAME;
+ E->keycmp_signature = keycmp_signatures[keycmp_key_cmp];
|
E->FP_NAME = &FUNC_NAME;
+ E->keycmp_signature = keycmp_signatures[keycmp_key_cmp];
)

// Rules for keyhash (1 valid functions, 0 excluded)
// Rule: .keyhash = key_hash ==> .keyhash_signature = keyhash_signatures[keyhash_key_hash];
@transform_keyhash_key_hash@
expression E;
identifier FP_NAME = keyhash;
identifier FUNC_NAME = key_hash;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.keyhash_signature = keyhash_signatures[keyhash_key_hash];
|
E.FP_NAME = &FUNC_NAME;
+ E.keyhash_signature = keyhash_signatures[keyhash_key_hash];
|
E->FP_NAME = FUNC_NAME;
+ E->keyhash_signature = keyhash_signatures[keyhash_key_hash];
|
E->FP_NAME = &FUNC_NAME;
+ E->keyhash_signature = keyhash_signatures[keyhash_key_hash];
)

// Rules for lchown (2 valid functions, 0 excluded)
// Rule: .lchown = statcache_fsio_lchown ==> .lchown_signature = lchown_signatures[lchown_statcache_fsio_lchown];
@transform_lchown_statcache_fsio_lchown@
expression E;
identifier FP_NAME = lchown;
identifier FUNC_NAME = statcache_fsio_lchown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lchown_signature = lchown_signatures[lchown_statcache_fsio_lchown];
|
E.FP_NAME = &FUNC_NAME;
+ E.lchown_signature = lchown_signatures[lchown_statcache_fsio_lchown];
|
E->FP_NAME = FUNC_NAME;
+ E->lchown_signature = lchown_signatures[lchown_statcache_fsio_lchown];
|
E->FP_NAME = &FUNC_NAME;
+ E->lchown_signature = lchown_signatures[lchown_statcache_fsio_lchown];
)

// Rule: .lchown = sys_lchown ==> .lchown_signature = lchown_signatures[lchown_sys_lchown];
@transform_lchown_sys_lchown@
expression E;
identifier FP_NAME = lchown;
identifier FUNC_NAME = sys_lchown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lchown_signature = lchown_signatures[lchown_sys_lchown];
|
E.FP_NAME = &FUNC_NAME;
+ E.lchown_signature = lchown_signatures[lchown_sys_lchown];
|
E->FP_NAME = FUNC_NAME;
+ E->lchown_signature = lchown_signatures[lchown_sys_lchown];
|
E->FP_NAME = &FUNC_NAME;
+ E->lchown_signature = lchown_signatures[lchown_sys_lchown];
)

// Rules for lgetxattr (1 valid functions, 0 excluded)
// Rule: .lgetxattr = sys_lgetxattr ==> .lgetxattr_signature = lgetxattr_signatures[lgetxattr_sys_lgetxattr];
@transform_lgetxattr_sys_lgetxattr@
expression E;
identifier FP_NAME = lgetxattr;
identifier FUNC_NAME = sys_lgetxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lgetxattr_signature = lgetxattr_signatures[lgetxattr_sys_lgetxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.lgetxattr_signature = lgetxattr_signatures[lgetxattr_sys_lgetxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->lgetxattr_signature = lgetxattr_signatures[lgetxattr_sys_lgetxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->lgetxattr_signature = lgetxattr_signatures[lgetxattr_sys_lgetxattr];
)

// Rules for link (1 valid functions, 0 excluded)
// Rule: .link = sys_link ==> .link_signature = link_signatures[link_sys_link];
@transform_link_sys_link@
expression E;
identifier FP_NAME = link;
identifier FUNC_NAME = sys_link;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.link_signature = link_signatures[link_sys_link];
|
E.FP_NAME = &FUNC_NAME;
+ E.link_signature = link_signatures[link_sys_link];
|
E->FP_NAME = FUNC_NAME;
+ E->link_signature = link_signatures[link_sys_link];
|
E->FP_NAME = &FUNC_NAME;
+ E->link_signature = link_signatures[link_sys_link];
)

// Rules for listxattr (1 valid functions, 0 excluded)
// Rule: .listxattr = sys_listxattr ==> .listxattr_signature = listxattr_signatures[listxattr_sys_listxattr];
@transform_listxattr_sys_listxattr@
expression E;
identifier FP_NAME = listxattr;
identifier FUNC_NAME = sys_listxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.listxattr_signature = listxattr_signatures[listxattr_sys_listxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.listxattr_signature = listxattr_signatures[listxattr_sys_listxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->listxattr_signature = listxattr_signatures[listxattr_sys_listxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->listxattr_signature = listxattr_signatures[listxattr_sys_listxattr];
)

// Rules for llistxattr (1 valid functions, 0 excluded)
// Rule: .llistxattr = sys_llistxattr ==> .llistxattr_signature = llistxattr_signatures[llistxattr_sys_llistxattr];
@transform_llistxattr_sys_llistxattr@
expression E;
identifier FP_NAME = llistxattr;
identifier FUNC_NAME = sys_llistxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.llistxattr_signature = llistxattr_signatures[llistxattr_sys_llistxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.llistxattr_signature = llistxattr_signatures[llistxattr_sys_llistxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->llistxattr_signature = llistxattr_signatures[llistxattr_sys_llistxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->llistxattr_signature = llistxattr_signatures[llistxattr_sys_llistxattr];
)

// Rules for lremovexattr (1 valid functions, 0 excluded)
// Rule: .lremovexattr = sys_lremovexattr ==> .lremovexattr_signature = lremovexattr_signatures[lremovexattr_sys_lremovexattr];
@transform_lremovexattr_sys_lremovexattr@
expression E;
identifier FP_NAME = lremovexattr;
identifier FUNC_NAME = sys_lremovexattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lremovexattr_signature = lremovexattr_signatures[lremovexattr_sys_lremovexattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.lremovexattr_signature = lremovexattr_signatures[lremovexattr_sys_lremovexattr];
|
E->FP_NAME = FUNC_NAME;
+ E->lremovexattr_signature = lremovexattr_signatures[lremovexattr_sys_lremovexattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->lremovexattr_signature = lremovexattr_signatures[lremovexattr_sys_lremovexattr];
)

// Rules for lseek (1 valid functions, 0 excluded)
// Rule: .lseek = sys_lseek ==> .lseek_signature = lseek_signatures[lseek_sys_lseek];
@transform_lseek_sys_lseek@
expression E;
identifier FP_NAME = lseek;
identifier FUNC_NAME = sys_lseek;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lseek_signature = lseek_signatures[lseek_sys_lseek];
|
E.FP_NAME = &FUNC_NAME;
+ E.lseek_signature = lseek_signatures[lseek_sys_lseek];
|
E->FP_NAME = FUNC_NAME;
+ E->lseek_signature = lseek_signatures[lseek_sys_lseek];
|
E->FP_NAME = &FUNC_NAME;
+ E->lseek_signature = lseek_signatures[lseek_sys_lseek];
)

// Rules for lsetxattr (1 valid functions, 0 excluded)
// Rule: .lsetxattr = sys_lsetxattr ==> .lsetxattr_signature = lsetxattr_signatures[lsetxattr_sys_lsetxattr];
@transform_lsetxattr_sys_lsetxattr@
expression E;
identifier FP_NAME = lsetxattr;
identifier FUNC_NAME = sys_lsetxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lsetxattr_signature = lsetxattr_signatures[lsetxattr_sys_lsetxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.lsetxattr_signature = lsetxattr_signatures[lsetxattr_sys_lsetxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->lsetxattr_signature = lsetxattr_signatures[lsetxattr_sys_lsetxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->lsetxattr_signature = lsetxattr_signatures[lsetxattr_sys_lsetxattr];
)

// Rules for lstat (3 valid functions, 0 excluded)
// Rule: .lstat = robots_fsio_lstat ==> .lstat_signature = lstat_signatures[lstat_robots_fsio_lstat];
@transform_lstat_robots_fsio_lstat@
expression E;
identifier FP_NAME = lstat;
identifier FUNC_NAME = robots_fsio_lstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_robots_fsio_lstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_robots_fsio_lstat];
|
E->FP_NAME = FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_robots_fsio_lstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_robots_fsio_lstat];
)

// Rule: .lstat = statcache_fsio_lstat ==> .lstat_signature = lstat_signatures[lstat_statcache_fsio_lstat];
@transform_lstat_statcache_fsio_lstat@
expression E;
identifier FP_NAME = lstat;
identifier FUNC_NAME = statcache_fsio_lstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_statcache_fsio_lstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_statcache_fsio_lstat];
|
E->FP_NAME = FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_statcache_fsio_lstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_statcache_fsio_lstat];
)

// Rule: .lstat = sys_lstat ==> .lstat_signature = lstat_signatures[lstat_sys_lstat];
@transform_lstat_sys_lstat@
expression E;
identifier FP_NAME = lstat;
identifier FUNC_NAME = sys_lstat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_sys_lstat];
|
E.FP_NAME = &FUNC_NAME;
+ E.lstat_signature = lstat_signatures[lstat_sys_lstat];
|
E->FP_NAME = FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_sys_lstat];
|
E->FP_NAME = &FUNC_NAME;
+ E->lstat_signature = lstat_signatures[lstat_sys_lstat];
)

// Rules for mkdir (1 valid functions, 0 excluded)
// Rule: .mkdir = sys_mkdir ==> .mkdir_signature = mkdir_signatures[mkdir_sys_mkdir];
@transform_mkdir_sys_mkdir@
expression E;
identifier FP_NAME = mkdir;
identifier FUNC_NAME = sys_mkdir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.mkdir_signature = mkdir_signatures[mkdir_sys_mkdir];
|
E.FP_NAME = &FUNC_NAME;
+ E.mkdir_signature = mkdir_signatures[mkdir_sys_mkdir];
|
E->FP_NAME = FUNC_NAME;
+ E->mkdir_signature = mkdir_signatures[mkdir_sys_mkdir];
|
E->FP_NAME = &FUNC_NAME;
+ E->mkdir_signature = mkdir_signatures[mkdir_sys_mkdir];
)

// Rules for open (10 valid functions, 0 excluded)
// Rule: .open = core_netio_open_cb ==> .open_signature = open_signatures[open_core_netio_open_cb];
@transform_open_core_netio_open_cb@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = core_netio_open_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_core_netio_open_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_core_netio_open_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_core_netio_open_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_core_netio_open_cb];
)

// Rule: .open = deflate_netio_open_cb ==> .open_signature = open_signatures[open_deflate_netio_open_cb];
@transform_open_deflate_netio_open_cb@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = deflate_netio_open_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_deflate_netio_open_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_deflate_netio_open_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_deflate_netio_open_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_deflate_netio_open_cb];
)

// Rule: .open = deflate_next_netio_open ==> .open_signature = open_signatures[open_deflate_next_netio_open];
@transform_open_deflate_next_netio_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = deflate_next_netio_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_deflate_next_netio_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_deflate_next_netio_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_deflate_next_netio_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_deflate_next_netio_open];
)

// Rule: .open = ocsp_cache_open ==> .open_signature = open_signatures[open_ocsp_cache_open];
@transform_open_ocsp_cache_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = ocsp_cache_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_ocsp_cache_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_ocsp_cache_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_ocsp_cache_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_ocsp_cache_open];
)

// Rule: .open = robots_fsio_open ==> .open_signature = open_signatures[open_robots_fsio_open];
@transform_open_robots_fsio_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = robots_fsio_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_robots_fsio_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_robots_fsio_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_robots_fsio_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_robots_fsio_open];
)

// Rule: .open = sess_cache_open ==> .open_signature = open_signatures[open_sess_cache_open];
@transform_open_sess_cache_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = sess_cache_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_sess_cache_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_sess_cache_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_sess_cache_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_sess_cache_open];
)

// Rule: .open = sftppam_driver_open ==> .open_signature = open_signatures[open_sftppam_driver_open];
@transform_open_sftppam_driver_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = sftppam_driver_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_sftppam_driver_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_sftppam_driver_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_sftppam_driver_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_sftppam_driver_open];
)

// Rule: .open = statcache_fsio_open ==> .open_signature = open_signatures[open_statcache_fsio_open];
@transform_open_statcache_fsio_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = statcache_fsio_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_statcache_fsio_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_statcache_fsio_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_statcache_fsio_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_statcache_fsio_open];
)

// Rule: .open = sys_open ==> .open_signature = open_signatures[open_sys_open];
@transform_open_sys_open@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = sys_open;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_sys_open];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_sys_open];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_sys_open];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_sys_open];
)

// Rule: .open = tls_netio_open_cb ==> .open_signature = open_signatures[open_tls_netio_open_cb];
@transform_open_tls_netio_open_cb@
expression E;
identifier FP_NAME = open;
identifier FUNC_NAME = tls_netio_open_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.open_signature = open_signatures[open_tls_netio_open_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.open_signature = open_signatures[open_tls_netio_open_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->open_signature = open_signatures[open_tls_netio_open_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->open_signature = open_signatures[open_tls_netio_open_cb];
)

// Rules for opendir (1 valid functions, 0 excluded)
// Rule: .opendir = sys_opendir ==> .opendir_signature = opendir_signatures[opendir_sys_opendir];
@transform_opendir_sys_opendir@
expression E;
identifier FP_NAME = opendir;
identifier FUNC_NAME = sys_opendir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.opendir_signature = opendir_signatures[opendir_sys_opendir];
|
E.FP_NAME = &FUNC_NAME;
+ E.opendir_signature = opendir_signatures[opendir_sys_opendir];
|
E->FP_NAME = FUNC_NAME;
+ E->opendir_signature = opendir_signatures[opendir_sys_opendir];
|
E->FP_NAME = &FUNC_NAME;
+ E->opendir_signature = opendir_signatures[opendir_sys_opendir];
)

// Rules for poll (2 valid functions, 0 excluded)
// Rule: .poll = core_netio_poll_cb ==> .poll_signature = poll_signatures[poll_core_netio_poll_cb];
@transform_poll_core_netio_poll_cb@
expression E;
identifier FP_NAME = poll;
identifier FUNC_NAME = core_netio_poll_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.poll_signature = poll_signatures[poll_core_netio_poll_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.poll_signature = poll_signatures[poll_core_netio_poll_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->poll_signature = poll_signatures[poll_core_netio_poll_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->poll_signature = poll_signatures[poll_core_netio_poll_cb];
)

// Rule: .poll = tls_netio_poll_cb ==> .poll_signature = poll_signatures[poll_tls_netio_poll_cb];
@transform_poll_tls_netio_poll_cb@
expression E;
identifier FP_NAME = poll;
identifier FUNC_NAME = tls_netio_poll_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.poll_signature = poll_signatures[poll_tls_netio_poll_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.poll_signature = poll_signatures[poll_tls_netio_poll_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->poll_signature = poll_signatures[poll_tls_netio_poll_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->poll_signature = poll_signatures[poll_tls_netio_poll_cb];
)

// Rules for postopen (2 valid functions, 0 excluded)
// Rule: .postopen = core_netio_postopen_cb ==> .postopen_signature = postopen_signatures[postopen_core_netio_postopen_cb];
@transform_postopen_core_netio_postopen_cb@
expression E;
identifier FP_NAME = postopen;
identifier FUNC_NAME = core_netio_postopen_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.postopen_signature = postopen_signatures[postopen_core_netio_postopen_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.postopen_signature = postopen_signatures[postopen_core_netio_postopen_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->postopen_signature = postopen_signatures[postopen_core_netio_postopen_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->postopen_signature = postopen_signatures[postopen_core_netio_postopen_cb];
)

// Rule: .postopen = tls_netio_postopen_cb ==> .postopen_signature = postopen_signatures[postopen_tls_netio_postopen_cb];
@transform_postopen_tls_netio_postopen_cb@
expression E;
identifier FP_NAME = postopen;
identifier FUNC_NAME = tls_netio_postopen_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.postopen_signature = postopen_signatures[postopen_tls_netio_postopen_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.postopen_signature = postopen_signatures[postopen_tls_netio_postopen_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->postopen_signature = postopen_signatures[postopen_tls_netio_postopen_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->postopen_signature = postopen_signatures[postopen_tls_netio_postopen_cb];
)

// Rules for pread (1 valid functions, 0 excluded)
// Rule: .pread = sys_pread ==> .pread_signature = pread_signatures[pread_sys_pread];
@transform_pread_sys_pread@
expression E;
identifier FP_NAME = pread;
identifier FUNC_NAME = sys_pread;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.pread_signature = pread_signatures[pread_sys_pread];
|
E.FP_NAME = &FUNC_NAME;
+ E.pread_signature = pread_signatures[pread_sys_pread];
|
E->FP_NAME = FUNC_NAME;
+ E->pread_signature = pread_signatures[pread_sys_pread];
|
E->FP_NAME = &FUNC_NAME;
+ E->pread_signature = pread_signatures[pread_sys_pread];
)

// Rules for pwrite (1 valid functions, 0 excluded)
// Rule: .pwrite = sys_pwrite ==> .pwrite_signature = pwrite_signatures[pwrite_sys_pwrite];
@transform_pwrite_sys_pwrite@
expression E;
identifier FP_NAME = pwrite;
identifier FUNC_NAME = sys_pwrite;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.pwrite_signature = pwrite_signatures[pwrite_sys_pwrite];
|
E.FP_NAME = &FUNC_NAME;
+ E.pwrite_signature = pwrite_signatures[pwrite_sys_pwrite];
|
E->FP_NAME = FUNC_NAME;
+ E->pwrite_signature = pwrite_signatures[pwrite_sys_pwrite];
|
E->FP_NAME = &FUNC_NAME;
+ E->pwrite_signature = pwrite_signatures[pwrite_sys_pwrite];
)

// Rules for read (6 valid functions, 0 excluded)
// Rule: .read = core_netio_read_cb ==> .read_signature = read_signatures[read_core_netio_read_cb];
@transform_read_core_netio_read_cb@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = core_netio_read_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_core_netio_read_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_core_netio_read_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_core_netio_read_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_core_netio_read_cb];
)

// Rule: .read = deflate_netio_read_cb ==> .read_signature = read_signatures[read_deflate_netio_read_cb];
@transform_read_deflate_netio_read_cb@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = deflate_netio_read_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_deflate_netio_read_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_deflate_netio_read_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_deflate_netio_read_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_deflate_netio_read_cb];
)

// Rule: .read = deflate_next_netio_read ==> .read_signature = read_signatures[read_deflate_next_netio_read];
@transform_read_deflate_next_netio_read@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = deflate_next_netio_read;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_deflate_next_netio_read];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_deflate_next_netio_read];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_deflate_next_netio_read];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_deflate_next_netio_read];
)

// Rule: .read = robots_fsio_read ==> .read_signature = read_signatures[read_robots_fsio_read];
@transform_read_robots_fsio_read@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = robots_fsio_read;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_robots_fsio_read];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_robots_fsio_read];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_robots_fsio_read];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_robots_fsio_read];
)

// Rule: .read = sys_read ==> .read_signature = read_signatures[read_sys_read];
@transform_read_sys_read@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = sys_read;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_sys_read];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_sys_read];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_sys_read];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_sys_read];
)

// Rule: .read = tls_netio_read_cb ==> .read_signature = read_signatures[read_tls_netio_read_cb];
@transform_read_tls_netio_read_cb@
expression E;
identifier FP_NAME = read;
identifier FUNC_NAME = tls_netio_read_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.read_signature = read_signatures[read_tls_netio_read_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.read_signature = read_signatures[read_tls_netio_read_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->read_signature = read_signatures[read_tls_netio_read_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->read_signature = read_signatures[read_tls_netio_read_cb];
)

// Rules for readdir (1 valid functions, 0 excluded)
// Rule: .readdir = sys_readdir ==> .readdir_signature = readdir_signatures[readdir_sys_readdir];
@transform_readdir_sys_readdir@
expression E;
identifier FP_NAME = readdir;
identifier FUNC_NAME = sys_readdir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.readdir_signature = readdir_signatures[readdir_sys_readdir];
|
E.FP_NAME = &FUNC_NAME;
+ E.readdir_signature = readdir_signatures[readdir_sys_readdir];
|
E->FP_NAME = FUNC_NAME;
+ E->readdir_signature = readdir_signatures[readdir_sys_readdir];
|
E->FP_NAME = &FUNC_NAME;
+ E->readdir_signature = readdir_signatures[readdir_sys_readdir];
)

// Rules for readlink (1 valid functions, 0 excluded)
// Rule: .readlink = sys_readlink ==> .readlink_signature = readlink_signatures[readlink_sys_readlink];
@transform_readlink_sys_readlink@
expression E;
identifier FP_NAME = readlink;
identifier FUNC_NAME = sys_readlink;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.readlink_signature = readlink_signatures[readlink_sys_readlink];
|
E.FP_NAME = &FUNC_NAME;
+ E.readlink_signature = readlink_signatures[readlink_sys_readlink];
|
E->FP_NAME = FUNC_NAME;
+ E->readlink_signature = readlink_signatures[readlink_sys_readlink];
|
E->FP_NAME = &FUNC_NAME;
+ E->readlink_signature = readlink_signatures[readlink_sys_readlink];
)

// Rules for realpath (1 valid functions, 0 excluded)
// Rule: .realpath = sys_realpath ==> .realpath_signature = realpath_signatures[realpath_sys_realpath];
@transform_realpath_sys_realpath@
expression E;
identifier FP_NAME = realpath;
identifier FUNC_NAME = sys_realpath;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.realpath_signature = realpath_signatures[realpath_sys_realpath];
|
E.FP_NAME = &FUNC_NAME;
+ E.realpath_signature = realpath_signatures[realpath_sys_realpath];
|
E->FP_NAME = FUNC_NAME;
+ E->realpath_signature = realpath_signatures[realpath_sys_realpath];
|
E->FP_NAME = &FUNC_NAME;
+ E->realpath_signature = realpath_signatures[realpath_sys_realpath];
)

// Rules for regtab_open (1 valid functions, 0 excluded)
// Rule: .regtab_open = srcopen ==> .regtab_open_signature = regtab_open_signatures[regtab_open_srcopen];
@transform_regtab_open_srcopen@
expression E;
identifier FP_NAME = regtab_open;
identifier FUNC_NAME = srcopen;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.regtab_open_signature = regtab_open_signatures[regtab_open_srcopen];
|
E.FP_NAME = &FUNC_NAME;
+ E.regtab_open_signature = regtab_open_signatures[regtab_open_srcopen];
|
E->FP_NAME = FUNC_NAME;
+ E->regtab_open_signature = regtab_open_signatures[regtab_open_srcopen];
|
E->FP_NAME = &FUNC_NAME;
+ E->regtab_open_signature = regtab_open_signatures[regtab_open_srcopen];
)

// Rules for remove (3 valid functions, 0 excluded)
// Rule: .remove = 0 ==> .remove_signature = remove_signatures[remove_0];
@transform_remove_0@
expression E;
identifier FP_NAME = remove;
@@
(
E.FP_NAME = 0;
+ E.remove_signature = remove_signatures[remove_0];
|
E->FP_NAME = 0;
+ E->remove_signature = remove_signatures[remove_0];
)

// Rule: .remove = ocsp_cache_remove ==> .remove_signature = remove_signatures[remove_ocsp_cache_remove];
@transform_remove_ocsp_cache_remove@
expression E;
identifier FP_NAME = remove;
identifier FUNC_NAME = ocsp_cache_remove;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.remove_signature = remove_signatures[remove_ocsp_cache_remove];
|
E.FP_NAME = &FUNC_NAME;
+ E.remove_signature = remove_signatures[remove_ocsp_cache_remove];
|
E->FP_NAME = FUNC_NAME;
+ E->remove_signature = remove_signatures[remove_ocsp_cache_remove];
|
E->FP_NAME = &FUNC_NAME;
+ E->remove_signature = remove_signatures[remove_ocsp_cache_remove];
)

// Rule: .remove = sess_cache_remove ==> .remove_signature = remove_signatures[remove_sess_cache_remove];
@transform_remove_sess_cache_remove@
expression E;
identifier FP_NAME = remove;
identifier FUNC_NAME = sess_cache_remove;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.remove_signature = remove_signatures[remove_sess_cache_remove];
|
E.FP_NAME = &FUNC_NAME;
+ E.remove_signature = remove_signatures[remove_sess_cache_remove];
|
E->FP_NAME = FUNC_NAME;
+ E->remove_signature = remove_signatures[remove_sess_cache_remove];
|
E->FP_NAME = &FUNC_NAME;
+ E->remove_signature = remove_signatures[remove_sess_cache_remove];
)

// Rules for removexattr (1 valid functions, 0 excluded)
// Rule: .removexattr = sys_removexattr ==> .removexattr_signature = removexattr_signatures[removexattr_sys_removexattr];
@transform_removexattr_sys_removexattr@
expression E;
identifier FP_NAME = removexattr;
identifier FUNC_NAME = sys_removexattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.removexattr_signature = removexattr_signatures[removexattr_sys_removexattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.removexattr_signature = removexattr_signatures[removexattr_sys_removexattr];
|
E->FP_NAME = FUNC_NAME;
+ E->removexattr_signature = removexattr_signatures[removexattr_sys_removexattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->removexattr_signature = removexattr_signatures[removexattr_sys_removexattr];
)

// Rules for rename (2 valid functions, 0 excluded)
// Rule: .rename = statcache_fsio_rename ==> .rename_signature = rename_signatures[rename_statcache_fsio_rename];
@transform_rename_statcache_fsio_rename@
expression E;
identifier FP_NAME = rename;
identifier FUNC_NAME = statcache_fsio_rename;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.rename_signature = rename_signatures[rename_statcache_fsio_rename];
|
E.FP_NAME = &FUNC_NAME;
+ E.rename_signature = rename_signatures[rename_statcache_fsio_rename];
|
E->FP_NAME = FUNC_NAME;
+ E->rename_signature = rename_signatures[rename_statcache_fsio_rename];
|
E->FP_NAME = &FUNC_NAME;
+ E->rename_signature = rename_signatures[rename_statcache_fsio_rename];
)

// Rule: .rename = sys_rename ==> .rename_signature = rename_signatures[rename_sys_rename];
@transform_rename_sys_rename@
expression E;
identifier FP_NAME = rename;
identifier FUNC_NAME = sys_rename;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.rename_signature = rename_signatures[rename_sys_rename];
|
E.FP_NAME = &FUNC_NAME;
+ E.rename_signature = rename_signatures[rename_sys_rename];
|
E->FP_NAME = FUNC_NAME;
+ E->rename_signature = rename_signatures[rename_sys_rename];
|
E->FP_NAME = &FUNC_NAME;
+ E->rename_signature = rename_signatures[rename_sys_rename];
)

// Rules for reopen (2 valid functions, 0 excluded)
// Rule: .reopen = core_netio_reopen_cb ==> .reopen_signature = reopen_signatures[reopen_core_netio_reopen_cb];
@transform_reopen_core_netio_reopen_cb@
expression E;
identifier FP_NAME = reopen;
identifier FUNC_NAME = core_netio_reopen_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.reopen_signature = reopen_signatures[reopen_core_netio_reopen_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.reopen_signature = reopen_signatures[reopen_core_netio_reopen_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->reopen_signature = reopen_signatures[reopen_core_netio_reopen_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->reopen_signature = reopen_signatures[reopen_core_netio_reopen_cb];
)

// Rule: .reopen = tls_netio_reopen_cb ==> .reopen_signature = reopen_signatures[reopen_tls_netio_reopen_cb];
@transform_reopen_tls_netio_reopen_cb@
expression E;
identifier FP_NAME = reopen;
identifier FUNC_NAME = tls_netio_reopen_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.reopen_signature = reopen_signatures[reopen_tls_netio_reopen_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.reopen_signature = reopen_signatures[reopen_tls_netio_reopen_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->reopen_signature = reopen_signatures[reopen_tls_netio_reopen_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->reopen_signature = reopen_signatures[reopen_tls_netio_reopen_cb];
)

// Rules for rmdir (1 valid functions, 0 excluded)
// Rule: .rmdir = sys_rmdir ==> .rmdir_signature = rmdir_signatures[rmdir_sys_rmdir];
@transform_rmdir_sys_rmdir@
expression E;
identifier FP_NAME = rmdir;
identifier FUNC_NAME = sys_rmdir;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.rmdir_signature = rmdir_signatures[rmdir_sys_rmdir];
|
E.FP_NAME = &FUNC_NAME;
+ E.rmdir_signature = rmdir_signatures[rmdir_sys_rmdir];
|
E->FP_NAME = FUNC_NAME;
+ E->rmdir_signature = rmdir_signatures[rmdir_sys_rmdir];
|
E->FP_NAME = &FUNC_NAME;
+ E->rmdir_signature = rmdir_signatures[rmdir_sys_rmdir];
)

// Rules for setxattr (1 valid functions, 0 excluded)
// Rule: .setxattr = sys_setxattr ==> .setxattr_signature = setxattr_signatures[setxattr_sys_setxattr];
@transform_setxattr_sys_setxattr@
expression E;
identifier FP_NAME = setxattr;
identifier FUNC_NAME = sys_setxattr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.setxattr_signature = setxattr_signatures[setxattr_sys_setxattr];
|
E.FP_NAME = &FUNC_NAME;
+ E.setxattr_signature = setxattr_signatures[setxattr_sys_setxattr];
|
E->FP_NAME = FUNC_NAME;
+ E->setxattr_signature = setxattr_signatures[setxattr_sys_setxattr];
|
E->FP_NAME = &FUNC_NAME;
+ E->setxattr_signature = setxattr_signatures[setxattr_sys_setxattr];
)

// Rules for shutdown (4 valid functions, 0 excluded)
// Rule: .shutdown = core_netio_shutdown_cb ==> .shutdown_signature = shutdown_signatures[shutdown_core_netio_shutdown_cb];
@transform_shutdown_core_netio_shutdown_cb@
expression E;
identifier FP_NAME = shutdown;
identifier FUNC_NAME = core_netio_shutdown_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_core_netio_shutdown_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_core_netio_shutdown_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_core_netio_shutdown_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_core_netio_shutdown_cb];
)

// Rule: .shutdown = deflate_netio_shutdown_cb ==> .shutdown_signature = shutdown_signatures[shutdown_deflate_netio_shutdown_cb];
@transform_shutdown_deflate_netio_shutdown_cb@
expression E;
identifier FP_NAME = shutdown;
identifier FUNC_NAME = deflate_netio_shutdown_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_deflate_netio_shutdown_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_deflate_netio_shutdown_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_deflate_netio_shutdown_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_deflate_netio_shutdown_cb];
)

// Rule: .shutdown = deflate_next_netio_shutdown ==> .shutdown_signature = shutdown_signatures[shutdown_deflate_next_netio_shutdown];
@transform_shutdown_deflate_next_netio_shutdown@
expression E;
identifier FP_NAME = shutdown;
identifier FUNC_NAME = deflate_next_netio_shutdown;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_deflate_next_netio_shutdown];
|
E.FP_NAME = &FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_deflate_next_netio_shutdown];
|
E->FP_NAME = FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_deflate_next_netio_shutdown];
|
E->FP_NAME = &FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_deflate_next_netio_shutdown];
)

// Rule: .shutdown = tls_netio_shutdown_cb ==> .shutdown_signature = shutdown_signatures[shutdown_tls_netio_shutdown_cb];
@transform_shutdown_tls_netio_shutdown_cb@
expression E;
identifier FP_NAME = shutdown;
identifier FUNC_NAME = tls_netio_shutdown_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_tls_netio_shutdown_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.shutdown_signature = shutdown_signatures[shutdown_tls_netio_shutdown_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_tls_netio_shutdown_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->shutdown_signature = shutdown_signatures[shutdown_tls_netio_shutdown_cb];
)

// Rules for stat (3 valid functions, 0 excluded)
// Rule: .stat = robots_fsio_stat ==> .stat_signature = stat_signatures[stat_robots_fsio_stat];
@transform_stat_robots_fsio_stat@
expression E;
identifier FP_NAME = stat;
identifier FUNC_NAME = robots_fsio_stat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_robots_fsio_stat];
|
E.FP_NAME = &FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_robots_fsio_stat];
|
E->FP_NAME = FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_robots_fsio_stat];
|
E->FP_NAME = &FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_robots_fsio_stat];
)

// Rule: .stat = statcache_fsio_stat ==> .stat_signature = stat_signatures[stat_statcache_fsio_stat];
@transform_stat_statcache_fsio_stat@
expression E;
identifier FP_NAME = stat;
identifier FUNC_NAME = statcache_fsio_stat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_statcache_fsio_stat];
|
E.FP_NAME = &FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_statcache_fsio_stat];
|
E->FP_NAME = FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_statcache_fsio_stat];
|
E->FP_NAME = &FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_statcache_fsio_stat];
)

// Rule: .stat = sys_stat ==> .stat_signature = stat_signatures[stat_sys_stat];
@transform_stat_sys_stat@
expression E;
identifier FP_NAME = stat;
identifier FUNC_NAME = sys_stat;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_sys_stat];
|
E.FP_NAME = &FUNC_NAME;
+ E.stat_signature = stat_signatures[stat_sys_stat];
|
E->FP_NAME = FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_sys_stat];
|
E->FP_NAME = &FUNC_NAME;
+ E->stat_signature = stat_signatures[stat_sys_stat];
)

// Rules for status (2 valid functions, 0 excluded)
// Rule: .status = ocsp_cache_status ==> .status_signature = status_signatures[status_ocsp_cache_status];
@transform_status_ocsp_cache_status@
expression E;
identifier FP_NAME = status;
identifier FUNC_NAME = ocsp_cache_status;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.status_signature = status_signatures[status_ocsp_cache_status];
|
E.FP_NAME = &FUNC_NAME;
+ E.status_signature = status_signatures[status_ocsp_cache_status];
|
E->FP_NAME = FUNC_NAME;
+ E->status_signature = status_signatures[status_ocsp_cache_status];
|
E->FP_NAME = &FUNC_NAME;
+ E->status_signature = status_signatures[status_ocsp_cache_status];
)

// Rule: .status = sess_cache_status ==> .status_signature = status_signatures[status_sess_cache_status];
@transform_status_sess_cache_status@
expression E;
identifier FP_NAME = status;
identifier FUNC_NAME = sess_cache_status;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.status_signature = status_signatures[status_sess_cache_status];
|
E.FP_NAME = &FUNC_NAME;
+ E.status_signature = status_signatures[status_sess_cache_status];
|
E->FP_NAME = FUNC_NAME;
+ E->status_signature = status_signatures[status_sess_cache_status];
|
E->FP_NAME = &FUNC_NAME;
+ E->status_signature = status_signatures[status_sess_cache_status];
)

// Rules for symlink (1 valid functions, 0 excluded)
// Rule: .symlink = sys_symlink ==> .symlink_signature = symlink_signatures[symlink_sys_symlink];
@transform_symlink_sys_symlink@
expression E;
identifier FP_NAME = symlink;
identifier FUNC_NAME = sys_symlink;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.symlink_signature = symlink_signatures[symlink_sys_symlink];
|
E.FP_NAME = &FUNC_NAME;
+ E.symlink_signature = symlink_signatures[symlink_sys_symlink];
|
E->FP_NAME = FUNC_NAME;
+ E->symlink_signature = symlink_signatures[symlink_sys_symlink];
|
E->FP_NAME = &FUNC_NAME;
+ E->symlink_signature = symlink_signatures[symlink_sys_symlink];
)

// Rules for tab_close (7 valid functions, 0 excluded)
// Rule: .tab_close = filetab_close ==> .tab_close_signature = tab_close_signatures[tab_close_filetab_close];
@transform_tab_close_filetab_close@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = filetab_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_filetab_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_filetab_close];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_filetab_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_filetab_close];
)

// Rule: .tab_close = filetab_close_cb ==> .tab_close_signature = tab_close_signatures[tab_close_filetab_close_cb];
@transform_tab_close_filetab_close_cb@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = filetab_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_filetab_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_filetab_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_filetab_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_filetab_close_cb];
)

// Rule: .tab_close = ldaptab_close ==> .tab_close_signature = tab_close_signatures[tab_close_ldaptab_close];
@transform_tab_close_ldaptab_close@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = ldaptab_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_ldaptab_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_ldaptab_close];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_ldaptab_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_ldaptab_close];
)

// Rule: .tab_close = radiustab_close ==> .tab_close_signature = tab_close_signatures[tab_close_radiustab_close];
@transform_tab_close_radiustab_close@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = radiustab_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_radiustab_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_radiustab_close];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_radiustab_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_radiustab_close];
)

// Rule: .tab_close = redistab_close_cb ==> .tab_close_signature = tab_close_signatures[tab_close_redistab_close_cb];
@transform_tab_close_redistab_close_cb@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = redistab_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_redistab_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_redistab_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_redistab_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_redistab_close_cb];
)

// Rule: .tab_close = sqltab_close ==> .tab_close_signature = tab_close_signatures[tab_close_sqltab_close];
@transform_tab_close_sqltab_close@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = sqltab_close;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_sqltab_close];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_sqltab_close];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_sqltab_close];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_sqltab_close];
)

// Rule: .tab_close = sqltab_close_cb ==> .tab_close_signature = tab_close_signatures[tab_close_sqltab_close_cb];
@transform_tab_close_sqltab_close_cb@
expression E;
identifier FP_NAME = tab_close;
identifier FUNC_NAME = sqltab_close_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_sqltab_close_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_close_signature = tab_close_signatures[tab_close_sqltab_close_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_sqltab_close_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_close_signature = tab_close_signatures[tab_close_sqltab_close_cb];
)

// Rules for tab_create (2 valid functions, 0 excluded)
// Rule: .tab_create = filetab_create ==> .tab_create_signature = tab_create_signatures[tab_create_filetab_create];
@transform_tab_create_filetab_create@
expression E;
identifier FP_NAME = tab_create;
identifier FUNC_NAME = filetab_create;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_create_signature = tab_create_signatures[tab_create_filetab_create];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_create_signature = tab_create_signatures[tab_create_filetab_create];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_create_signature = tab_create_signatures[tab_create_filetab_create];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_create_signature = tab_create_signatures[tab_create_filetab_create];
)

// Rule: .tab_create = sqltab_create ==> .tab_create_signature = tab_create_signatures[tab_create_sqltab_create];
@transform_tab_create_sqltab_create@
expression E;
identifier FP_NAME = tab_create;
identifier FUNC_NAME = sqltab_create;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_create_signature = tab_create_signatures[tab_create_sqltab_create];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_create_signature = tab_create_signatures[tab_create_sqltab_create];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_create_signature = tab_create_signatures[tab_create_sqltab_create];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_create_signature = tab_create_signatures[tab_create_sqltab_create];
)

// Rules for tab_lookup (4 valid functions, 0 excluded)
// Rule: .tab_lookup = filetab_lookup ==> .tab_lookup_signature = tab_lookup_signatures[tab_lookup_filetab_lookup];
@transform_tab_lookup_filetab_lookup@
expression E;
identifier FP_NAME = tab_lookup;
identifier FUNC_NAME = filetab_lookup;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_filetab_lookup];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_filetab_lookup];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_filetab_lookup];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_filetab_lookup];
)

// Rule: .tab_lookup = ldaptab_lookup ==> .tab_lookup_signature = tab_lookup_signatures[tab_lookup_ldaptab_lookup];
@transform_tab_lookup_ldaptab_lookup@
expression E;
identifier FP_NAME = tab_lookup;
identifier FUNC_NAME = ldaptab_lookup;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_ldaptab_lookup];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_ldaptab_lookup];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_ldaptab_lookup];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_ldaptab_lookup];
)

// Rule: .tab_lookup = radiustab_lookup ==> .tab_lookup_signature = tab_lookup_signatures[tab_lookup_radiustab_lookup];
@transform_tab_lookup_radiustab_lookup@
expression E;
identifier FP_NAME = tab_lookup;
identifier FUNC_NAME = radiustab_lookup;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_radiustab_lookup];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_radiustab_lookup];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_radiustab_lookup];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_radiustab_lookup];
)

// Rule: .tab_lookup = sqltab_lookup ==> .tab_lookup_signature = tab_lookup_signatures[tab_lookup_sqltab_lookup];
@transform_tab_lookup_sqltab_lookup@
expression E;
identifier FP_NAME = tab_lookup;
identifier FUNC_NAME = sqltab_lookup;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_sqltab_lookup];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_lookup_signature = tab_lookup_signatures[tab_lookup_sqltab_lookup];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_sqltab_lookup];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_lookup_signature = tab_lookup_signatures[tab_lookup_sqltab_lookup];
)

// Rules for tab_read (2 valid functions, 0 excluded)
// Rule: .tab_read = filetab_read ==> .tab_read_signature = tab_read_signatures[tab_read_filetab_read];
@transform_tab_read_filetab_read@
expression E;
identifier FP_NAME = tab_read;
identifier FUNC_NAME = filetab_read;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_read_signature = tab_read_signatures[tab_read_filetab_read];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_read_signature = tab_read_signatures[tab_read_filetab_read];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_read_signature = tab_read_signatures[tab_read_filetab_read];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_read_signature = tab_read_signatures[tab_read_filetab_read];
)

// Rule: .tab_read = sqltab_read ==> .tab_read_signature = tab_read_signatures[tab_read_sqltab_read];
@transform_tab_read_sqltab_read@
expression E;
identifier FP_NAME = tab_read;
identifier FUNC_NAME = sqltab_read;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_read_signature = tab_read_signatures[tab_read_sqltab_read];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_read_signature = tab_read_signatures[tab_read_sqltab_read];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_read_signature = tab_read_signatures[tab_read_sqltab_read];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_read_signature = tab_read_signatures[tab_read_sqltab_read];
)

// Rules for tab_rlock (2 valid functions, 0 excluded)
// Rule: .tab_rlock = filetab_rlock ==> .tab_rlock_signature = tab_rlock_signatures[tab_rlock_filetab_rlock];
@transform_tab_rlock_filetab_rlock@
expression E;
identifier FP_NAME = tab_rlock;
identifier FUNC_NAME = filetab_rlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_rlock_signature = tab_rlock_signatures[tab_rlock_filetab_rlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_rlock_signature = tab_rlock_signatures[tab_rlock_filetab_rlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_rlock_signature = tab_rlock_signatures[tab_rlock_filetab_rlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_rlock_signature = tab_rlock_signatures[tab_rlock_filetab_rlock];
)

// Rule: .tab_rlock = sqltab_rlock ==> .tab_rlock_signature = tab_rlock_signatures[tab_rlock_sqltab_rlock];
@transform_tab_rlock_sqltab_rlock@
expression E;
identifier FP_NAME = tab_rlock;
identifier FUNC_NAME = sqltab_rlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_rlock_signature = tab_rlock_signatures[tab_rlock_sqltab_rlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_rlock_signature = tab_rlock_signatures[tab_rlock_sqltab_rlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_rlock_signature = tab_rlock_signatures[tab_rlock_sqltab_rlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_rlock_signature = tab_rlock_signatures[tab_rlock_sqltab_rlock];
)

// Rules for tab_unlock (2 valid functions, 0 excluded)
// Rule: .tab_unlock = filetab_unlock ==> .tab_unlock_signature = tab_unlock_signatures[tab_unlock_filetab_unlock];
@transform_tab_unlock_filetab_unlock@
expression E;
identifier FP_NAME = tab_unlock;
identifier FUNC_NAME = filetab_unlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_unlock_signature = tab_unlock_signatures[tab_unlock_filetab_unlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_unlock_signature = tab_unlock_signatures[tab_unlock_filetab_unlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_unlock_signature = tab_unlock_signatures[tab_unlock_filetab_unlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_unlock_signature = tab_unlock_signatures[tab_unlock_filetab_unlock];
)

// Rule: .tab_unlock = sqltab_unlock ==> .tab_unlock_signature = tab_unlock_signatures[tab_unlock_sqltab_unlock];
@transform_tab_unlock_sqltab_unlock@
expression E;
identifier FP_NAME = tab_unlock;
identifier FUNC_NAME = sqltab_unlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_unlock_signature = tab_unlock_signatures[tab_unlock_sqltab_unlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_unlock_signature = tab_unlock_signatures[tab_unlock_sqltab_unlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_unlock_signature = tab_unlock_signatures[tab_unlock_sqltab_unlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_unlock_signature = tab_unlock_signatures[tab_unlock_sqltab_unlock];
)

// Rules for tab_verify (4 valid functions, 0 excluded)
// Rule: .tab_verify = filetab_verify ==> .tab_verify_signature = tab_verify_signatures[tab_verify_filetab_verify];
@transform_tab_verify_filetab_verify@
expression E;
identifier FP_NAME = tab_verify;
identifier FUNC_NAME = filetab_verify;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_filetab_verify];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_filetab_verify];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_filetab_verify];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_filetab_verify];
)

// Rule: .tab_verify = ldaptab_verify ==> .tab_verify_signature = tab_verify_signatures[tab_verify_ldaptab_verify];
@transform_tab_verify_ldaptab_verify@
expression E;
identifier FP_NAME = tab_verify;
identifier FUNC_NAME = ldaptab_verify;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_ldaptab_verify];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_ldaptab_verify];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_ldaptab_verify];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_ldaptab_verify];
)

// Rule: .tab_verify = radiustab_verify ==> .tab_verify_signature = tab_verify_signatures[tab_verify_radiustab_verify];
@transform_tab_verify_radiustab_verify@
expression E;
identifier FP_NAME = tab_verify;
identifier FUNC_NAME = radiustab_verify;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_radiustab_verify];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_radiustab_verify];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_radiustab_verify];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_radiustab_verify];
)

// Rule: .tab_verify = sqltab_verify ==> .tab_verify_signature = tab_verify_signatures[tab_verify_sqltab_verify];
@transform_tab_verify_sqltab_verify@
expression E;
identifier FP_NAME = tab_verify;
identifier FUNC_NAME = sqltab_verify;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_sqltab_verify];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_verify_signature = tab_verify_signatures[tab_verify_sqltab_verify];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_sqltab_verify];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_verify_signature = tab_verify_signatures[tab_verify_sqltab_verify];
)

// Rules for tab_wlock (2 valid functions, 0 excluded)
// Rule: .tab_wlock = filetab_wlock ==> .tab_wlock_signature = tab_wlock_signatures[tab_wlock_filetab_wlock];
@transform_tab_wlock_filetab_wlock@
expression E;
identifier FP_NAME = tab_wlock;
identifier FUNC_NAME = filetab_wlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_wlock_signature = tab_wlock_signatures[tab_wlock_filetab_wlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_wlock_signature = tab_wlock_signatures[tab_wlock_filetab_wlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_wlock_signature = tab_wlock_signatures[tab_wlock_filetab_wlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_wlock_signature = tab_wlock_signatures[tab_wlock_filetab_wlock];
)

// Rule: .tab_wlock = sqltab_wlock ==> .tab_wlock_signature = tab_wlock_signatures[tab_wlock_sqltab_wlock];
@transform_tab_wlock_sqltab_wlock@
expression E;
identifier FP_NAME = tab_wlock;
identifier FUNC_NAME = sqltab_wlock;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_wlock_signature = tab_wlock_signatures[tab_wlock_sqltab_wlock];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_wlock_signature = tab_wlock_signatures[tab_wlock_sqltab_wlock];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_wlock_signature = tab_wlock_signatures[tab_wlock_sqltab_wlock];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_wlock_signature = tab_wlock_signatures[tab_wlock_sqltab_wlock];
)

// Rules for tab_write (2 valid functions, 0 excluded)
// Rule: .tab_write = filetab_write ==> .tab_write_signature = tab_write_signatures[tab_write_filetab_write];
@transform_tab_write_filetab_write@
expression E;
identifier FP_NAME = tab_write;
identifier FUNC_NAME = filetab_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_write_signature = tab_write_signatures[tab_write_filetab_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_write_signature = tab_write_signatures[tab_write_filetab_write];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_write_signature = tab_write_signatures[tab_write_filetab_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_write_signature = tab_write_signatures[tab_write_filetab_write];
)

// Rule: .tab_write = sqltab_write ==> .tab_write_signature = tab_write_signatures[tab_write_sqltab_write];
@transform_tab_write_sqltab_write@
expression E;
identifier FP_NAME = tab_write;
identifier FUNC_NAME = sqltab_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.tab_write_signature = tab_write_signatures[tab_write_sqltab_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.tab_write_signature = tab_write_signatures[tab_write_sqltab_write];
|
E->FP_NAME = FUNC_NAME;
+ E->tab_write_signature = tab_write_signatures[tab_write_sqltab_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->tab_write_signature = tab_write_signatures[tab_write_sqltab_write];
)

// Rules for truncate (2 valid functions, 0 excluded)
// Rule: .truncate = statcache_fsio_truncate ==> .truncate_signature = truncate_signatures[truncate_statcache_fsio_truncate];
@transform_truncate_statcache_fsio_truncate@
expression E;
identifier FP_NAME = truncate;
identifier FUNC_NAME = statcache_fsio_truncate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.truncate_signature = truncate_signatures[truncate_statcache_fsio_truncate];
|
E.FP_NAME = &FUNC_NAME;
+ E.truncate_signature = truncate_signatures[truncate_statcache_fsio_truncate];
|
E->FP_NAME = FUNC_NAME;
+ E->truncate_signature = truncate_signatures[truncate_statcache_fsio_truncate];
|
E->FP_NAME = &FUNC_NAME;
+ E->truncate_signature = truncate_signatures[truncate_statcache_fsio_truncate];
)

// Rule: .truncate = sys_truncate ==> .truncate_signature = truncate_signatures[truncate_sys_truncate];
@transform_truncate_sys_truncate@
expression E;
identifier FP_NAME = truncate;
identifier FUNC_NAME = sys_truncate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.truncate_signature = truncate_signatures[truncate_sys_truncate];
|
E.FP_NAME = &FUNC_NAME;
+ E.truncate_signature = truncate_signatures[truncate_sys_truncate];
|
E->FP_NAME = FUNC_NAME;
+ E->truncate_signature = truncate_signatures[truncate_sys_truncate];
|
E->FP_NAME = &FUNC_NAME;
+ E->truncate_signature = truncate_signatures[truncate_sys_truncate];
)

// Rules for unlink (3 valid functions, 0 excluded)
// Rule: .unlink = robots_fsio_unlink ==> .unlink_signature = unlink_signatures[unlink_robots_fsio_unlink];
@transform_unlink_robots_fsio_unlink@
expression E;
identifier FP_NAME = unlink;
identifier FUNC_NAME = robots_fsio_unlink;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_robots_fsio_unlink];
|
E.FP_NAME = &FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_robots_fsio_unlink];
|
E->FP_NAME = FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_robots_fsio_unlink];
|
E->FP_NAME = &FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_robots_fsio_unlink];
)

// Rule: .unlink = statcache_fsio_unlink ==> .unlink_signature = unlink_signatures[unlink_statcache_fsio_unlink];
@transform_unlink_statcache_fsio_unlink@
expression E;
identifier FP_NAME = unlink;
identifier FUNC_NAME = statcache_fsio_unlink;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_statcache_fsio_unlink];
|
E.FP_NAME = &FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_statcache_fsio_unlink];
|
E->FP_NAME = FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_statcache_fsio_unlink];
|
E->FP_NAME = &FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_statcache_fsio_unlink];
)

// Rule: .unlink = sys_unlink ==> .unlink_signature = unlink_signatures[unlink_sys_unlink];
@transform_unlink_sys_unlink@
expression E;
identifier FP_NAME = unlink;
identifier FUNC_NAME = sys_unlink;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_sys_unlink];
|
E.FP_NAME = &FUNC_NAME;
+ E.unlink_signature = unlink_signatures[unlink_sys_unlink];
|
E->FP_NAME = FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_sys_unlink];
|
E->FP_NAME = &FUNC_NAME;
+ E->unlink_signature = unlink_signatures[unlink_sys_unlink];
)

// Rules for utimes (2 valid functions, 0 excluded)
// Rule: .utimes = statcache_fsio_utimes ==> .utimes_signature = utimes_signatures[utimes_statcache_fsio_utimes];
@transform_utimes_statcache_fsio_utimes@
expression E;
identifier FP_NAME = utimes;
identifier FUNC_NAME = statcache_fsio_utimes;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.utimes_signature = utimes_signatures[utimes_statcache_fsio_utimes];
|
E.FP_NAME = &FUNC_NAME;
+ E.utimes_signature = utimes_signatures[utimes_statcache_fsio_utimes];
|
E->FP_NAME = FUNC_NAME;
+ E->utimes_signature = utimes_signatures[utimes_statcache_fsio_utimes];
|
E->FP_NAME = &FUNC_NAME;
+ E->utimes_signature = utimes_signatures[utimes_statcache_fsio_utimes];
)

// Rule: .utimes = sys_utimes ==> .utimes_signature = utimes_signatures[utimes_sys_utimes];
@transform_utimes_sys_utimes@
expression E;
identifier FP_NAME = utimes;
identifier FUNC_NAME = sys_utimes;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.utimes_signature = utimes_signatures[utimes_sys_utimes];
|
E.FP_NAME = &FUNC_NAME;
+ E.utimes_signature = utimes_signatures[utimes_sys_utimes];
|
E->FP_NAME = FUNC_NAME;
+ E->utimes_signature = utimes_signatures[utimes_sys_utimes];
|
E->FP_NAME = &FUNC_NAME;
+ E->utimes_signature = utimes_signatures[utimes_sys_utimes];
)

// Rules for write (8 valid functions, 0 excluded)
// Rule: .write = core_netio_write_cb ==> .write_signature = write_signatures[write_core_netio_write_cb];
@transform_write_core_netio_write_cb@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = core_netio_write_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_core_netio_write_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_core_netio_write_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_core_netio_write_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_core_netio_write_cb];
)

// Rule: .write = deflate_netio_write_cb ==> .write_signature = write_signatures[write_deflate_netio_write_cb];
@transform_write_deflate_netio_write_cb@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = deflate_netio_write_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_deflate_netio_write_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_deflate_netio_write_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_deflate_netio_write_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_deflate_netio_write_cb];
)

// Rule: .write = deflate_next_netio_write ==> .write_signature = write_signatures[write_deflate_next_netio_write];
@transform_write_deflate_next_netio_write@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = deflate_next_netio_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_deflate_next_netio_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_deflate_next_netio_write];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_deflate_next_netio_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_deflate_next_netio_write];
)

// Rule: .write = quotatab_fsio_write ==> .write_signature = write_signatures[write_quotatab_fsio_write];
@transform_write_quotatab_fsio_write@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = quotatab_fsio_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_quotatab_fsio_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_quotatab_fsio_write];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_quotatab_fsio_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_quotatab_fsio_write];
)

// Rule: .write = robots_fsio_write ==> .write_signature = write_signatures[write_robots_fsio_write];
@transform_write_robots_fsio_write@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = robots_fsio_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_robots_fsio_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_robots_fsio_write];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_robots_fsio_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_robots_fsio_write];
)

// Rule: .write = statcache_fsio_write ==> .write_signature = write_signatures[write_statcache_fsio_write];
@transform_write_statcache_fsio_write@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = statcache_fsio_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_statcache_fsio_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_statcache_fsio_write];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_statcache_fsio_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_statcache_fsio_write];
)

// Rule: .write = sys_write ==> .write_signature = write_signatures[write_sys_write];
@transform_write_sys_write@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = sys_write;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_sys_write];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_sys_write];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_sys_write];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_sys_write];
)

// Rule: .write = tls_netio_write_cb ==> .write_signature = write_signatures[write_tls_netio_write_cb];
@transform_write_tls_netio_write_cb@
expression E;
identifier FP_NAME = write;
identifier FUNC_NAME = tls_netio_write_cb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.write_signature = write_signatures[write_tls_netio_write_cb];
|
E.FP_NAME = &FUNC_NAME;
+ E.write_signature = write_signatures[write_tls_netio_write_cb];
|
E->FP_NAME = FUNC_NAME;
+ E->write_signature = write_signatures[write_tls_netio_write_cb];
|
E->FP_NAME = &FUNC_NAME;
+ E->write_signature = write_signatures[write_tls_netio_write_cb];
)

// Total transformation rules generated: 688
// Total functions excluded: 0

// ===== USAGE INSTRUCTIONS =====
/*
After running this script:

1. Check memcpy_transformations/ directory for transformation logs

Example transformation:
   Before: obj.callback = my_function;
   After:  obj.callback_signature = callback_signatures[callback_my_function_enum];

Note: This assumes that:
- FP_NAME_signatures arrays are already defined
- FP_NAME_FUNC_NAME_enum values are already defined
- Structs have FP_NAME_signature fields
*/

