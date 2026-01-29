// Auto-generated Coccinelle script
// Adds signature arguments to function pointer calls
// Uses parameter lists and identifier constraints for precise matching

// ============================================================
// Transformation Rules
// ============================================================

// ============================================================
// Function: get_fs_info
// ============================================================

// get_fs_info - dumpf - NULL
// fp_sequence: 4

@rule_get_fs_info_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {get_fs_info};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_get_fs_info_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {get_fs_info};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_get_fs_info_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {get_fs_info};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// get_fs_info - dumpf - event_dump
// fp_sequence: 4

@rule_get_fs_info_dumpf_event_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {get_fs_info};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_get_fs_info_dumpf_event_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {get_fs_info};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_get_fs_info_dumpf_event_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {get_fs_info};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);


// get_fs_info - dumpf - stash_dump
// fp_sequence: 4

@rule_get_fs_info_dumpf_stash_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {get_fs_info};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_get_fs_info_dumpf_stash_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {get_fs_info};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_get_fs_info_dumpf_stash_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {get_fs_info};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);


// get_fs_info - dumpf - statcache_dumpf
// fp_sequence: 4

@rule_get_fs_info_dumpf_statcache_dumpf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {get_fs_info};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_get_fs_info_dumpf_statcache_dumpf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {get_fs_info};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_get_fs_info_dumpf_statcache_dumpf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {get_fs_info};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);


// get_fs_info - dumpf - table_dump
// fp_sequence: 4

@rule_get_fs_info_dumpf_table_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {get_fs_info};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_get_fs_info_dumpf_table_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {get_fs_info};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_get_fs_info_dumpf_table_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {get_fs_info};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);


// ============================================================
// Function: json_set_oom
// ============================================================

// json_set_oom - oom - NULL
// fp_sequence: 1

@rule_json_set_oom_oom_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {json_set_oom};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, oom_signatures[oom_NULL], pl2);

@rule_json_set_oom_oom_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {json_set_oom};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, oom_signatures[oom_NULL], pl2);

@rule_json_set_oom_oom_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {json_set_oom};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, oom_signatures[oom_NULL], pl2);


// json_set_oom - oom - json_oom
// fp_sequence: 1

@rule_json_set_oom_oom_json_oom_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {json_oom};
identifier FN_NAME = {json_set_oom};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, oom_signatures[oom_json_oom], pl2);

@rule_json_set_oom_oom_json_oom_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {json_oom};
identifier FN_NAME = {json_set_oom};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, oom_signatures[oom_json_oom], pl2);

@rule_json_set_oom_oom_json_oom_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {json_oom};
identifier FN_NAME = {json_set_oom};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, oom_signatures[oom_json_oom], pl2);


// ============================================================
// Function: lt_dlforeachfile
// ============================================================

// ============================================================
// Function: lt_dlhandle_map
// ============================================================

// ============================================================
// Function: modules_list2
// ============================================================

// modules_list2 - listf - NULL
// fp_sequence: 1

@rule_modules_list2_listf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {modules_list2};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, listf_signatures[listf_NULL], pl2);

@rule_modules_list2_listf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {modules_list2};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, listf_signatures[listf_NULL], pl2);

@rule_modules_list2_listf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {modules_list2};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, listf_signatures[listf_NULL], pl2);


// modules_list2 - listf - module_listf
// fp_sequence: 1

@rule_modules_list2_listf_module_listf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {module_listf};
identifier FN_NAME = {modules_list2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, listf_signatures[listf_module_listf], pl2);

@rule_modules_list2_listf_module_listf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {module_listf};
identifier FN_NAME = {modules_list2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, listf_signatures[listf_module_listf], pl2);

@rule_modules_list2_listf_module_listf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {module_listf};
identifier FN_NAME = {modules_list2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, listf_signatures[listf_module_listf], pl2);


// ============================================================
// Function: ocsp_cache_status
// ============================================================

// ============================================================
// Function: pr_cmd_set_handler
// ============================================================

// pr_cmd_set_handler - handler - NULL
// fp_sequence: 1

@rule_pr_cmd_set_handler_handler_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_cmd_set_handler};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);

@rule_pr_cmd_set_handler_handler_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_cmd_set_handler};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);

@rule_pr_cmd_set_handler_handler_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_cmd_set_handler};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);


// pr_cmd_set_handler - handler - sftp_cmd_loop
// fp_sequence: 1

@rule_pr_cmd_set_handler_handler_sftp_cmd_loop_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_cmd_loop};
identifier FN_NAME = {pr_cmd_set_handler};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_sftp_cmd_loop], pl2);

@rule_pr_cmd_set_handler_handler_sftp_cmd_loop_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_cmd_loop};
identifier FN_NAME = {pr_cmd_set_handler};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_sftp_cmd_loop], pl2);

@rule_pr_cmd_set_handler_handler_sftp_cmd_loop_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_cmd_loop};
identifier FN_NAME = {pr_cmd_set_handler};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_sftp_cmd_loop], pl2);


// ============================================================
// Function: pr_config_dump
// ============================================================

// pr_config_dump - dumpf - NULL
// fp_sequence: 1

@rule_pr_config_dump_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_config_dump};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_config_dump_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_config_dump};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_config_dump_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_config_dump};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// pr_config_dump - dumpf - event_dump
// fp_sequence: 1

@rule_pr_config_dump_dumpf_event_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_config_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_config_dump_dumpf_event_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_config_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_config_dump_dumpf_event_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_config_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);


// pr_config_dump - dumpf - stash_dump
// fp_sequence: 1

@rule_pr_config_dump_dumpf_stash_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_config_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_config_dump_dumpf_stash_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_config_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_config_dump_dumpf_stash_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_config_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);


// pr_config_dump - dumpf - statcache_dumpf
// fp_sequence: 1

@rule_pr_config_dump_dumpf_statcache_dumpf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_config_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_config_dump_dumpf_statcache_dumpf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_config_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_config_dump_dumpf_statcache_dumpf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_config_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);


// pr_config_dump - dumpf - table_dump
// fp_sequence: 1

@rule_pr_config_dump_dumpf_table_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_config_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_config_dump_dumpf_table_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_config_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_config_dump_dumpf_table_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_config_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);


// ============================================================
// Function: pr_ctrls_register
// ============================================================

// pr_ctrls_register - cb - NULL
// fp_sequence: 4

@rule_pr_ctrls_register_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_ctrls_register_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_ctrls_register_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_ctrls_register - cb - act_cb
// fp_sequence: 4

@rule_pr_ctrls_register_cb_act_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_act_cb], pl2);

@rule_pr_ctrls_register_cb_act_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_act_cb], pl2);

@rule_pr_ctrls_register_cb_act_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_act_cb], pl2);


// pr_ctrls_register - cb - ctrls_test2_cb
// fp_sequence: 4

@rule_pr_ctrls_register_cb_ctrls_test2_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test2_cb], pl2);

@rule_pr_ctrls_register_cb_ctrls_test2_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test2_cb], pl2);

@rule_pr_ctrls_register_cb_ctrls_test2_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test2_cb], pl2);


// pr_ctrls_register - cb - ctrls_test_cb
// fp_sequence: 4

@rule_pr_ctrls_register_cb_ctrls_test_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test_cb], pl2);

@rule_pr_ctrls_register_cb_ctrls_test_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test_cb], pl2);

@rule_pr_ctrls_register_cb_ctrls_test_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_test_cb], pl2);


// pr_ctrls_register - cb - delay_handle_delay
// fp_sequence: 4

@rule_pr_ctrls_register_cb_delay_handle_delay_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_handle_delay], pl2);

@rule_pr_ctrls_register_cb_delay_handle_delay_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_handle_delay], pl2);

@rule_pr_ctrls_register_cb_delay_handle_delay_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_handle_delay], pl2);


// pr_ctrls_register - cb - dynmasq_handle_dynmasq
// fp_sequence: 4

@rule_pr_ctrls_register_cb_dynmasq_handle_dynmasq_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_handle_dynmasq], pl2);

@rule_pr_ctrls_register_cb_dynmasq_handle_dynmasq_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_handle_dynmasq], pl2);

@rule_pr_ctrls_register_cb_dynmasq_handle_dynmasq_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_handle_dynmasq], pl2);


// pr_ctrls_register - cb - shaper_handle_shaper
// fp_sequence: 4

@rule_pr_ctrls_register_cb_shaper_handle_shaper_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_handle_shaper], pl2);

@rule_pr_ctrls_register_cb_shaper_handle_shaper_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_handle_shaper], pl2);

@rule_pr_ctrls_register_cb_shaper_handle_shaper_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_handle_shaper], pl2);


// pr_ctrls_register - cb - tls_handle_tls
// fp_sequence: 4

@rule_pr_ctrls_register_cb_tls_handle_tls_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_handle_tls], pl2);

@rule_pr_ctrls_register_cb_tls_handle_tls_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_handle_tls], pl2);

@rule_pr_ctrls_register_cb_tls_handle_tls_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_handle_tls], pl2);


// pr_ctrls_register - ctrls_cb - NULL
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, ctrls_cb_signatures[ctrls_cb_NULL], pl2);

@rule_pr_ctrls_register_ctrls_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, ctrls_cb_signatures[ctrls_cb_NULL], pl2);

@rule_pr_ctrls_register_ctrls_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, ctrls_cb_signatures[ctrls_cb_NULL], pl2);


// pr_ctrls_register - ctrls_cb - act_cb
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_act_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_act_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_act_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_act_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_act_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {act_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_act_cb], pl2);


// pr_ctrls_register - ctrls_cb - ctrls_test2_cb
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_ctrls_test2_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_ctrls_test2_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_ctrls_test2_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_test2_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test2_cb], pl2);


// pr_ctrls_register - ctrls_cb - ctrls_test_cb
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_ctrls_test_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_ctrls_test_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test_cb], pl2);

@rule_pr_ctrls_register_ctrls_cb_ctrls_test_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_test_cb};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_ctrls_test_cb], pl2);


// pr_ctrls_register - ctrls_cb - delay_handle_delay
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_delay_handle_delay_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_delay_handle_delay], pl2);

@rule_pr_ctrls_register_ctrls_cb_delay_handle_delay_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_delay_handle_delay], pl2);

@rule_pr_ctrls_register_ctrls_cb_delay_handle_delay_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_handle_delay};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_delay_handle_delay], pl2);


// pr_ctrls_register - ctrls_cb - dynmasq_handle_dynmasq
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_dynmasq_handle_dynmasq_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq], pl2);

@rule_pr_ctrls_register_ctrls_cb_dynmasq_handle_dynmasq_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq], pl2);

@rule_pr_ctrls_register_ctrls_cb_dynmasq_handle_dynmasq_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dynmasq_handle_dynmasq};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_dynmasq_handle_dynmasq], pl2);


// pr_ctrls_register - ctrls_cb - shaper_handle_shaper
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_shaper_handle_shaper_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper], pl2);

@rule_pr_ctrls_register_ctrls_cb_shaper_handle_shaper_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper], pl2);

@rule_pr_ctrls_register_ctrls_cb_shaper_handle_shaper_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_handle_shaper};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_shaper_handle_shaper], pl2);


// pr_ctrls_register - ctrls_cb - tls_handle_tls
// fp_sequence: 4

@rule_pr_ctrls_register_ctrls_cb_tls_handle_tls_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_tls_handle_tls], pl2);

@rule_pr_ctrls_register_ctrls_cb_tls_handle_tls_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_tls_handle_tls], pl2);

@rule_pr_ctrls_register_ctrls_cb_tls_handle_tls_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_handle_tls};
identifier FN_NAME = {pr_ctrls_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ctrls_cb_signatures[ctrls_cb_tls_handle_tls], pl2);


// ============================================================
// Function: pr_dirs_dump
// ============================================================

// pr_dirs_dump - dumpf - NULL
// fp_sequence: 1

@rule_pr_dirs_dump_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_dirs_dump};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_dirs_dump_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_dirs_dump};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_dirs_dump_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_dirs_dump};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// pr_dirs_dump - dumpf - event_dump
// fp_sequence: 1

@rule_pr_dirs_dump_dumpf_event_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_dirs_dump_dumpf_event_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_dirs_dump_dumpf_event_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);


// pr_dirs_dump - dumpf - stash_dump
// fp_sequence: 1

@rule_pr_dirs_dump_dumpf_stash_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_dirs_dump_dumpf_stash_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_dirs_dump_dumpf_stash_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);


// pr_dirs_dump - dumpf - statcache_dumpf
// fp_sequence: 1

@rule_pr_dirs_dump_dumpf_statcache_dumpf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_dirs_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_dirs_dump_dumpf_statcache_dumpf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_dirs_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_dirs_dump_dumpf_statcache_dumpf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_dirs_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);


// pr_dirs_dump - dumpf - table_dump
// fp_sequence: 1

@rule_pr_dirs_dump_dumpf_table_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_dirs_dump_dumpf_table_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_dirs_dump_dumpf_table_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_dirs_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);


// ============================================================
// Function: pr_event_dump
// ============================================================

// pr_event_dump - dumpf - NULL
// fp_sequence: 1

@rule_pr_event_dump_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_dump};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_event_dump_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_dump};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_event_dump_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_event_dump};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// pr_event_dump - dumpf - event_dump
// fp_sequence: 1

@rule_pr_event_dump_dumpf_event_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_event_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_event_dump_dumpf_event_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_event_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_pr_event_dump_dumpf_event_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {pr_event_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);


// ============================================================
// Function: pr_event_register
// ============================================================

// pr_event_register - cb - NULL
// fp_sequence: 3

@rule_pr_event_register_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_event_register_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_event_register_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_event_register - cb - auth_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);

@rule_pr_event_register_cb_auth_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);

@rule_pr_event_register_cb_auth_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);


// pr_event_register - cb - auth_otp_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_otp_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);

@rule_pr_event_register_cb_auth_otp_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);

@rule_pr_event_register_cb_auth_otp_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);


// pr_event_register - cb - auth_otp_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_otp_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_auth_otp_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_auth_otp_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_otp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_mod_unload_ev], pl2);


// pr_event_register - cb - auth_otp_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_otp_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_otp_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_otp_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);


// pr_event_register - cb - auth_pam_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_pam_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_pam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_pam_exit_ev], pl2);

@rule_pr_event_register_cb_auth_pam_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_pam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_pam_exit_ev], pl2);

@rule_pr_event_register_cb_auth_pam_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_pam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_pam_exit_ev], pl2);


// pr_event_register - cb - auth_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);


// pr_event_register - cb - auth_unix_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_unix_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);

@rule_pr_event_register_cb_auth_unix_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);

@rule_pr_event_register_cb_auth_unix_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);


// pr_event_register - cb - auth_unix_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_auth_unix_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_unix_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_auth_unix_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);


// pr_event_register - cb - authfile_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_authfile_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_authfile_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_authfile_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);


// pr_event_register - cb - ban_anonrejectpasswords_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_anonrejectpasswords_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_anonrejectpasswords_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_anonrejectpasswords_ev], pl2);

@rule_pr_event_register_cb_ban_anonrejectpasswords_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_anonrejectpasswords_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_anonrejectpasswords_ev], pl2);

@rule_pr_event_register_cb_ban_anonrejectpasswords_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_anonrejectpasswords_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_anonrejectpasswords_ev], pl2);


// pr_event_register - cb - ban_badprotocol_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_badprotocol_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_badprotocol_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_badprotocol_ev], pl2);

@rule_pr_event_register_cb_ban_badprotocol_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_badprotocol_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_badprotocol_ev], pl2);

@rule_pr_event_register_cb_ban_badprotocol_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_badprotocol_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_badprotocol_ev], pl2);


// pr_event_register - cb - ban_clientconnectrate_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_clientconnectrate_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_clientconnectrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_clientconnectrate_ev], pl2);

@rule_pr_event_register_cb_ban_clientconnectrate_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_clientconnectrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_clientconnectrate_ev], pl2);

@rule_pr_event_register_cb_ban_clientconnectrate_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_clientconnectrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_clientconnectrate_ev], pl2);


// pr_event_register - cb - ban_emptypassword_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_emptypassword_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_emptypassword_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_emptypassword_ev], pl2);

@rule_pr_event_register_cb_ban_emptypassword_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_emptypassword_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_emptypassword_ev], pl2);

@rule_pr_event_register_cb_ban_emptypassword_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_emptypassword_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_emptypassword_ev], pl2);


// pr_event_register - cb - ban_maxclientsperclass_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxclientsperclass_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperclass_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperclass_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperclass_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperclass_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperclass_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperclass_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxclientsperclass_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperclass_ev], pl2);


// pr_event_register - cb - ban_maxclientsperhost_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxclientsperhost_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperhost_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperhost_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperhost_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperhost_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxclientsperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperhost_ev], pl2);


// pr_event_register - cb - ban_maxclientsperuser_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxclientsperuser_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperuser_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxclientsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxclientsperuser_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxclientsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxclientsperuser_ev], pl2);


// pr_event_register - cb - ban_maxcmdrate_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxcmdrate_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxcmdrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxcmdrate_ev], pl2);

@rule_pr_event_register_cb_ban_maxcmdrate_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxcmdrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxcmdrate_ev], pl2);

@rule_pr_event_register_cb_ban_maxcmdrate_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxcmdrate_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxcmdrate_ev], pl2);


// pr_event_register - cb - ban_maxconnperhost_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxconnperhost_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxconnperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxconnperhost_ev], pl2);

@rule_pr_event_register_cb_ban_maxconnperhost_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxconnperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxconnperhost_ev], pl2);

@rule_pr_event_register_cb_ban_maxconnperhost_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxconnperhost_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxconnperhost_ev], pl2);


// pr_event_register - cb - ban_maxhostsperuser_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxhostsperuser_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxhostsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxhostsperuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxhostsperuser_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxhostsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxhostsperuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxhostsperuser_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxhostsperuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxhostsperuser_ev], pl2);


// pr_event_register - cb - ban_maxloginattempts_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxloginattempts_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxloginattempts_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattempts_ev], pl2);

@rule_pr_event_register_cb_ban_maxloginattempts_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxloginattempts_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattempts_ev], pl2);

@rule_pr_event_register_cb_ban_maxloginattempts_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxloginattempts_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattempts_ev], pl2);


// pr_event_register - cb - ban_maxloginattemptsfromuser_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_maxloginattemptsfromuser_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxloginattemptsfromuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattemptsfromuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxloginattemptsfromuser_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_maxloginattemptsfromuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattemptsfromuser_ev], pl2);

@rule_pr_event_register_cb_ban_maxloginattemptsfromuser_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_maxloginattemptsfromuser_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_maxloginattemptsfromuser_ev], pl2);


// pr_event_register - cb - ban_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ban_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ban_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_mod_unload_ev], pl2);


// pr_event_register - cb - ban_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_postparse_ev], pl2);

@rule_pr_event_register_cb_ban_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_postparse_ev], pl2);

@rule_pr_event_register_cb_ban_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_postparse_ev], pl2);


// pr_event_register - cb - ban_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);

@rule_pr_event_register_cb_ban_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);

@rule_pr_event_register_cb_ban_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);


// pr_event_register - cb - ban_rootlogin_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_rootlogin_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_rootlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_rootlogin_ev], pl2);

@rule_pr_event_register_cb_ban_rootlogin_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_rootlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_rootlogin_ev], pl2);

@rule_pr_event_register_cb_ban_rootlogin_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_rootlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_rootlogin_ev], pl2);


// pr_event_register - cb - ban_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ban_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ban_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);


// pr_event_register - cb - ban_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_shutdown_ev], pl2);

@rule_pr_event_register_cb_ban_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_shutdown_ev], pl2);

@rule_pr_event_register_cb_ban_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_shutdown_ev], pl2);


// pr_event_register - cb - ban_timeoutidle_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_timeoutidle_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutidle_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutidle_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutidle_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutidle_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutidle_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutidle_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_timeoutidle_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutidle_ev], pl2);


// pr_event_register - cb - ban_timeoutlogin_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_timeoutlogin_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutlogin_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutlogin_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutlogin_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutlogin_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutlogin_ev], pl2);


// pr_event_register - cb - ban_timeoutnoxfer_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_timeoutnoxfer_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutnoxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutnoxfer_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutnoxfer_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_timeoutnoxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutnoxfer_ev], pl2);

@rule_pr_event_register_cb_ban_timeoutnoxfer_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_timeoutnoxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_timeoutnoxfer_ev], pl2);


// pr_event_register - cb - ban_tlshandshake_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_tlshandshake_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_tlshandshake_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_tlshandshake_ev], pl2);

@rule_pr_event_register_cb_ban_tlshandshake_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_tlshandshake_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_tlshandshake_ev], pl2);

@rule_pr_event_register_cb_ban_tlshandshake_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_tlshandshake_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_tlshandshake_ev], pl2);


// pr_event_register - cb - ban_unhandledcmd_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_unhandledcmd_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_unhandledcmd_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_unhandledcmd_ev], pl2);

@rule_pr_event_register_cb_ban_unhandledcmd_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_unhandledcmd_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_unhandledcmd_ev], pl2);

@rule_pr_event_register_cb_ban_unhandledcmd_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_unhandledcmd_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_unhandledcmd_ev], pl2);


// pr_event_register - cb - ban_userdefined_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ban_userdefined_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_userdefined_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_userdefined_ev], pl2);

@rule_pr_event_register_cb_ban_userdefined_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_userdefined_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_userdefined_ev], pl2);

@rule_pr_event_register_cb_ban_userdefined_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_userdefined_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_userdefined_ev], pl2);


// pr_event_register - cb - cap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_cap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_cap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_cap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);


// pr_event_register - cb - core_chroot_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);

@rule_pr_event_register_cb_core_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);

@rule_pr_event_register_cb_core_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);


// pr_event_register - cb - core_connected_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_connected_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_connected_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_connected_ev], pl2);

@rule_pr_event_register_cb_core_connected_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_connected_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_connected_ev], pl2);

@rule_pr_event_register_cb_core_connected_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_connected_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_connected_ev], pl2);


// pr_event_register - cb - core_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_exit_ev], pl2);

@rule_pr_event_register_cb_core_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_exit_ev], pl2);

@rule_pr_event_register_cb_core_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_exit_ev], pl2);


// pr_event_register - cb - core_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_postparse_ev], pl2);

@rule_pr_event_register_cb_core_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_postparse_ev], pl2);

@rule_pr_event_register_cb_core_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_postparse_ev], pl2);


// pr_event_register - cb - core_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_restart_ev], pl2);

@rule_pr_event_register_cb_core_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_restart_ev], pl2);

@rule_pr_event_register_cb_core_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_restart_ev], pl2);


// pr_event_register - cb - core_startup_ev
// fp_sequence: 3

@rule_pr_event_register_cb_core_startup_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_startup_ev], pl2);

@rule_pr_event_register_cb_core_startup_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_startup_ev], pl2);

@rule_pr_event_register_cb_core_startup_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_startup_ev], pl2);


// pr_event_register - cb - ctrls_admin_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_admin_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_admin_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_mod_unload_ev], pl2);


// pr_event_register - cb - ctrls_admin_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_admin_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_restart_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_restart_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_admin_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_restart_ev], pl2);


// pr_event_register - cb - ctrls_admin_startup_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_admin_startup_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_startup_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_startup_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_admin_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_startup_ev], pl2);

@rule_pr_event_register_cb_ctrls_admin_startup_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_admin_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_admin_startup_ev], pl2);


// pr_event_register - cb - ctrls_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_postparse_ev], pl2);

@rule_pr_event_register_cb_ctrls_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_postparse_ev], pl2);

@rule_pr_event_register_cb_ctrls_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_postparse_ev], pl2);


// pr_event_register - cb - ctrls_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);

@rule_pr_event_register_cb_ctrls_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);

@rule_pr_event_register_cb_ctrls_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);


// pr_event_register - cb - ctrls_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ctrls_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_shutdown_ev], pl2);

@rule_pr_event_register_cb_ctrls_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_shutdown_ev], pl2);

@rule_pr_event_register_cb_ctrls_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_shutdown_ev], pl2);


// pr_event_register - cb - define_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_define_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);

@rule_pr_event_register_cb_define_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);

@rule_pr_event_register_cb_define_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);


// pr_event_register - cb - deflate_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_deflate_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_deflate_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_deflate_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);


// pr_event_register - cb - delay_connect_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_connect_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_connect_ev], pl2);

@rule_pr_event_register_cb_delay_connect_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_connect_ev], pl2);

@rule_pr_event_register_cb_delay_connect_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_connect_ev], pl2);


// pr_event_register - cb - delay_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_mod_unload_ev], pl2);

@rule_pr_event_register_cb_delay_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_mod_unload_ev], pl2);

@rule_pr_event_register_cb_delay_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_mod_unload_ev], pl2);


// pr_event_register - cb - delay_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_postparse_ev], pl2);

@rule_pr_event_register_cb_delay_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_postparse_ev], pl2);

@rule_pr_event_register_cb_delay_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_postparse_ev], pl2);


// pr_event_register - cb - delay_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_restart_ev], pl2);

@rule_pr_event_register_cb_delay_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_restart_ev], pl2);

@rule_pr_event_register_cb_delay_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_restart_ev], pl2);


// pr_event_register - cb - delay_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_delay_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_delay_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);


// pr_event_register - cb - delay_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_delay_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_shutdown_ev], pl2);

@rule_pr_event_register_cb_delay_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_shutdown_ev], pl2);

@rule_pr_event_register_cb_delay_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_shutdown_ev], pl2);


// pr_event_register - cb - digest_data_xfer_ev
// fp_sequence: 3

@rule_pr_event_register_cb_digest_data_xfer_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_data_xfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_data_xfer_ev], pl2);

@rule_pr_event_register_cb_digest_data_xfer_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_data_xfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_data_xfer_ev], pl2);

@rule_pr_event_register_cb_digest_data_xfer_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {digest_data_xfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_data_xfer_ev], pl2);


// pr_event_register - cb - digest_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_digest_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_mod_unload_ev], pl2);

@rule_pr_event_register_cb_digest_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_mod_unload_ev], pl2);

@rule_pr_event_register_cb_digest_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {digest_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_mod_unload_ev], pl2);


// pr_event_register - cb - digest_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_digest_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_digest_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_digest_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);


// pr_event_register - cb - dnsbl_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_dnsbl_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_dnsbl_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_dnsbl_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);


// pr_event_register - cb - dso_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_dso_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);

@rule_pr_event_register_cb_dso_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);

@rule_pr_event_register_cb_dso_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);


// pr_event_register - cb - dynmasq_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_dynmasq_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_mod_unload_ev], pl2);

@rule_pr_event_register_cb_dynmasq_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_mod_unload_ev], pl2);

@rule_pr_event_register_cb_dynmasq_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dynmasq_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_mod_unload_ev], pl2);


// pr_event_register - cb - dynmasq_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_dynmasq_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_postparse_ev], pl2);

@rule_pr_event_register_cb_dynmasq_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_postparse_ev], pl2);

@rule_pr_event_register_cb_dynmasq_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dynmasq_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_postparse_ev], pl2);


// pr_event_register - cb - dynmasq_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_dynmasq_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_restart_ev], pl2);

@rule_pr_event_register_cb_dynmasq_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dynmasq_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_restart_ev], pl2);

@rule_pr_event_register_cb_dynmasq_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dynmasq_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dynmasq_restart_ev], pl2);


// pr_event_register - cb - event_cb
// fp_sequence: 3

@rule_pr_event_register_cb_event_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);

@rule_pr_event_register_cb_event_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);

@rule_pr_event_register_cb_event_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);


// pr_event_register - cb - event_cb2
// fp_sequence: 3

@rule_pr_event_register_cb_event_cb2_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);

@rule_pr_event_register_cb_event_cb2_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);

@rule_pr_event_register_cb_event_cb2_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);


// pr_event_register - cb - event_cb3
// fp_sequence: 3

@rule_pr_event_register_cb_event_cb3_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb3};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb3], pl2);

@rule_pr_event_register_cb_event_cb3_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb3};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb3], pl2);

@rule_pr_event_register_cb_event_cb3_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cb3};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb3], pl2);


// pr_event_register - cb - exec_any_ev
// fp_sequence: 3

@rule_pr_event_register_cb_exec_any_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_any_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_any_ev], pl2);

@rule_pr_event_register_cb_exec_any_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_any_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_any_ev], pl2);

@rule_pr_event_register_cb_exec_any_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_any_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_any_ev], pl2);


// pr_event_register - cb - exec_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_exec_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_mod_unload_ev], pl2);

@rule_pr_event_register_cb_exec_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_mod_unload_ev], pl2);

@rule_pr_event_register_cb_exec_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_mod_unload_ev], pl2);


// pr_event_register - cb - exec_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_exec_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_postparse_ev], pl2);

@rule_pr_event_register_cb_exec_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_postparse_ev], pl2);

@rule_pr_event_register_cb_exec_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_postparse_ev], pl2);


// pr_event_register - cb - exec_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_exec_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_restart_ev], pl2);

@rule_pr_event_register_cb_exec_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_restart_ev], pl2);

@rule_pr_event_register_cb_exec_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_restart_ev], pl2);


// pr_event_register - cb - exec_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_exec_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_exec_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_exec_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);


// pr_event_register - cb - facl_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_facl_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_mod_unload_ev], pl2);

@rule_pr_event_register_cb_facl_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_mod_unload_ev], pl2);

@rule_pr_event_register_cb_facl_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {facl_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_mod_unload_ev], pl2);


// pr_event_register - cb - facl_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_facl_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_postparse_ev], pl2);

@rule_pr_event_register_cb_facl_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_postparse_ev], pl2);

@rule_pr_event_register_cb_facl_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {facl_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_postparse_ev], pl2);


// pr_event_register - cb - facl_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_facl_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_restart_ev], pl2);

@rule_pr_event_register_cb_facl_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facl_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_restart_ev], pl2);

@rule_pr_event_register_cb_facl_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {facl_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facl_restart_ev], pl2);


// pr_event_register - cb - facts_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_facts_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_facts_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_facts_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);


// pr_event_register - cb - filetab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_filetab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {filetab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_filetab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_filetab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {filetab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_filetab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_filetab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {filetab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_filetab_mod_unload_ev], pl2);


// pr_event_register - cb - forensic_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_forensic_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);

@rule_pr_event_register_cb_forensic_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);

@rule_pr_event_register_cb_forensic_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);


// pr_event_register - cb - forensic_log_ev
// fp_sequence: 3

@rule_pr_event_register_cb_forensic_log_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);

@rule_pr_event_register_cb_forensic_log_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);

@rule_pr_event_register_cb_forensic_log_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);


// pr_event_register - cb - forensic_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_forensic_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_mod_unload_ev], pl2);

@rule_pr_event_register_cb_forensic_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_mod_unload_ev], pl2);

@rule_pr_event_register_cb_forensic_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_mod_unload_ev], pl2);


// pr_event_register - cb - forensic_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_forensic_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_forensic_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_forensic_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);


// pr_event_register - cb - fscache_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_fscache_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fscache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fscache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_fscache_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fscache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fscache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_fscache_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fscache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fscache_mod_unload_ev], pl2);


// pr_event_register - cb - geoip_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_geoip_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_mod_unload_ev], pl2);

@rule_pr_event_register_cb_geoip_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_mod_unload_ev], pl2);

@rule_pr_event_register_cb_geoip_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geoip_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_mod_unload_ev], pl2);


// pr_event_register - cb - geoip_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_geoip_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_postparse_ev], pl2);

@rule_pr_event_register_cb_geoip_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_postparse_ev], pl2);

@rule_pr_event_register_cb_geoip_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geoip_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_postparse_ev], pl2);


// pr_event_register - cb - geoip_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_geoip_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_restart_ev], pl2);

@rule_pr_event_register_cb_geoip_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geoip_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_restart_ev], pl2);

@rule_pr_event_register_cb_geoip_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geoip_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_geoip_restart_ev], pl2);


// pr_event_register - cb - ident_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ident_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ident_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ident_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);


// pr_event_register - cb - ifsess_chroot_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ifsess_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_chroot_ev], pl2);

@rule_pr_event_register_cb_ifsess_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_chroot_ev], pl2);

@rule_pr_event_register_cb_ifsess_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ifsess_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_chroot_ev], pl2);


// pr_event_register - cb - ifsess_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ifsess_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ifsess_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ifsess_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ifsess_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_mod_unload_ev], pl2);


// pr_event_register - cb - ifsess_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ifsess_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_postparse_ev], pl2);

@rule_pr_event_register_cb_ifsess_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ifsess_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_postparse_ev], pl2);

@rule_pr_event_register_cb_ifsess_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ifsess_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ifsess_postparse_ev], pl2);


// pr_event_register - cb - lang_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_lang_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lang_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_postparse_ev], pl2);

@rule_pr_event_register_cb_lang_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lang_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_postparse_ev], pl2);

@rule_pr_event_register_cb_lang_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lang_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_postparse_ev], pl2);


// pr_event_register - cb - lang_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_lang_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lang_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_restart_ev], pl2);

@rule_pr_event_register_cb_lang_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lang_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_restart_ev], pl2);

@rule_pr_event_register_cb_lang_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lang_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_lang_restart_ev], pl2);


// pr_event_register - cb - ldap_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ldap_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ldap_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ldap_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldap_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_mod_unload_ev], pl2);


// pr_event_register - cb - ldap_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ldap_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_postparse_ev], pl2);

@rule_pr_event_register_cb_ldap_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_postparse_ev], pl2);

@rule_pr_event_register_cb_ldap_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldap_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_postparse_ev], pl2);


// pr_event_register - cb - ldap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ldap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ldap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_ldap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);


// pr_event_register - cb - ldap_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ldap_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_shutdown_ev], pl2);

@rule_pr_event_register_cb_ldap_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_shutdown_ev], pl2);

@rule_pr_event_register_cb_ldap_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldap_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_shutdown_ev], pl2);


// pr_event_register - cb - ldaptab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_ldaptab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldaptab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldaptab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ldaptab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldaptab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldaptab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_ldaptab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldaptab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldaptab_mod_unload_ev], pl2);


// pr_event_register - cb - log_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_log_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);

@rule_pr_event_register_cb_log_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);

@rule_pr_event_register_cb_log_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);


// pr_event_register - cb - log_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_log_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_postparse_ev], pl2);

@rule_pr_event_register_cb_log_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_postparse_ev], pl2);

@rule_pr_event_register_cb_log_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_postparse_ev], pl2);


// pr_event_register - cb - log_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_log_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_restart_ev], pl2);

@rule_pr_event_register_cb_log_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_restart_ev], pl2);

@rule_pr_event_register_cb_log_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_restart_ev], pl2);


// pr_event_register - cb - log_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_log_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_log_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_log_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);


// pr_event_register - cb - log_xfer_stalled_ev
// fp_sequence: 3

@rule_pr_event_register_cb_log_xfer_stalled_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);

@rule_pr_event_register_cb_log_xfer_stalled_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);

@rule_pr_event_register_cb_log_xfer_stalled_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);


// pr_event_register - cb - mcache_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_mcache_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);

@rule_pr_event_register_cb_mcache_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);

@rule_pr_event_register_cb_mcache_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);


// pr_event_register - cb - mcache_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_mcache_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_restart_ev], pl2);

@rule_pr_event_register_cb_mcache_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_restart_ev], pl2);

@rule_pr_event_register_cb_mcache_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_restart_ev], pl2);


// pr_event_register - cb - mcache_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_mcache_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_mcache_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_mcache_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);


// pr_event_register - cb - qos_ctrl_listen_ev
// fp_sequence: 3

@rule_pr_event_register_cb_qos_ctrl_listen_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_ctrl_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_ctrl_listen_ev], pl2);

@rule_pr_event_register_cb_qos_ctrl_listen_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_ctrl_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_ctrl_listen_ev], pl2);

@rule_pr_event_register_cb_qos_ctrl_listen_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_ctrl_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_ctrl_listen_ev], pl2);


// pr_event_register - cb - qos_data_connect_ev
// fp_sequence: 3

@rule_pr_event_register_cb_qos_data_connect_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);

@rule_pr_event_register_cb_qos_data_connect_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);

@rule_pr_event_register_cb_qos_data_connect_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);


// pr_event_register - cb - qos_data_listen_ev
// fp_sequence: 3

@rule_pr_event_register_cb_qos_data_listen_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);

@rule_pr_event_register_cb_qos_data_listen_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);

@rule_pr_event_register_cb_qos_data_listen_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);


// pr_event_register - cb - qos_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_qos_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_mod_unload_ev], pl2);

@rule_pr_event_register_cb_qos_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_mod_unload_ev], pl2);

@rule_pr_event_register_cb_qos_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_mod_unload_ev], pl2);


// pr_event_register - cb - qos_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_qos_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_qos_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_qos_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);


// pr_event_register - cb - quotatab_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_quotatab_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);

@rule_pr_event_register_cb_quotatab_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);

@rule_pr_event_register_cb_quotatab_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);


// pr_event_register - cb - quotatab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_quotatab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_quotatab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_quotatab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_mod_unload_ev], pl2);


// pr_event_register - cb - quotatab_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_quotatab_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_restart_ev], pl2);

@rule_pr_event_register_cb_quotatab_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_restart_ev], pl2);

@rule_pr_event_register_cb_quotatab_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_restart_ev], pl2);


// pr_event_register - cb - quotatab_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_quotatab_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_quotatab_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_quotatab_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);


// pr_event_register - cb - radius_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_radius_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);

@rule_pr_event_register_cb_radius_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);

@rule_pr_event_register_cb_radius_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);


// pr_event_register - cb - radius_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_radius_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_mod_unload_ev], pl2);

@rule_pr_event_register_cb_radius_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_mod_unload_ev], pl2);

@rule_pr_event_register_cb_radius_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_mod_unload_ev], pl2);


// pr_event_register - cb - radius_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_radius_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_restart_ev], pl2);

@rule_pr_event_register_cb_radius_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_restart_ev], pl2);

@rule_pr_event_register_cb_radius_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_restart_ev], pl2);


// pr_event_register - cb - radius_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_radius_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_radius_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_radius_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);


// pr_event_register - cb - radiustab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_radiustab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radiustab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radiustab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_radiustab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radiustab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radiustab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_radiustab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radiustab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radiustab_mod_unload_ev], pl2);


// pr_event_register - cb - redis_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_redis_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_restart_ev], pl2);

@rule_pr_event_register_cb_redis_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_restart_ev], pl2);

@rule_pr_event_register_cb_redis_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {redis_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_restart_ev], pl2);


// pr_event_register - cb - redis_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_redis_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_redis_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_redis_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);


// pr_event_register - cb - redis_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_redis_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_shutdown_ev], pl2);

@rule_pr_event_register_cb_redis_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_shutdown_ev], pl2);

@rule_pr_event_register_cb_redis_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {redis_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_shutdown_ev], pl2);


// pr_event_register - cb - redistab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_redistab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redistab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redistab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_redistab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redistab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redistab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_redistab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {redistab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redistab_mod_unload_ev], pl2);


// pr_event_register - cb - regexp_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_regexp_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {regexp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_exit_ev], pl2);

@rule_pr_event_register_cb_regexp_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {regexp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_exit_ev], pl2);

@rule_pr_event_register_cb_regexp_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {regexp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_exit_ev], pl2);


// pr_event_register - cb - regexp_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_regexp_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {regexp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_restart_ev], pl2);

@rule_pr_event_register_cb_regexp_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {regexp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_restart_ev], pl2);

@rule_pr_event_register_cb_regexp_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {regexp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_regexp_restart_ev], pl2);


// pr_event_register - cb - rewrite_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rewrite_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);

@rule_pr_event_register_cb_rewrite_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);

@rule_pr_event_register_cb_rewrite_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);


// pr_event_register - cb - rewrite_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rewrite_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_mod_unload_ev], pl2);

@rule_pr_event_register_cb_rewrite_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_mod_unload_ev], pl2);

@rule_pr_event_register_cb_rewrite_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_mod_unload_ev], pl2);


// pr_event_register - cb - rewrite_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rewrite_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_restart_ev], pl2);

@rule_pr_event_register_cb_rewrite_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_restart_ev], pl2);

@rule_pr_event_register_cb_rewrite_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_restart_ev], pl2);


// pr_event_register - cb - rewrite_rewrite_home_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rewrite_rewrite_home_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);

@rule_pr_event_register_cb_rewrite_rewrite_home_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);

@rule_pr_event_register_cb_rewrite_rewrite_home_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);


// pr_event_register - cb - rewrite_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rewrite_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_rewrite_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_rewrite_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);


// pr_event_register - cb - rlimit_chroot_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rlimit_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rlimit_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_chroot_ev], pl2);

@rule_pr_event_register_cb_rlimit_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rlimit_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_chroot_ev], pl2);

@rule_pr_event_register_cb_rlimit_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rlimit_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_chroot_ev], pl2);


// pr_event_register - cb - rlimit_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_rlimit_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rlimit_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_postparse_ev], pl2);

@rule_pr_event_register_cb_rlimit_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rlimit_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_postparse_ev], pl2);

@rule_pr_event_register_cb_rlimit_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rlimit_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rlimit_postparse_ev], pl2);


// pr_event_register - cb - sftp_ban_class_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_ban_class_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_class_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_class_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_class_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_class_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_class_ev], pl2);


// pr_event_register - cb - sftp_ban_host_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_ban_host_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_host_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_host_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_host_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_host_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_host_ev], pl2);


// pr_event_register - cb - sftp_ban_user_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_ban_user_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_user_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_user_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_user_ev], pl2);

@rule_pr_event_register_cb_sftp_ban_user_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_ban_user_ev], pl2);


// pr_event_register - cb - sftp_chroot_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_chroot_ev], pl2);

@rule_pr_event_register_cb_sftp_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_chroot_ev], pl2);

@rule_pr_event_register_cb_sftp_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_chroot_ev], pl2);


// pr_event_register - cb - sftp_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_exit_ev], pl2);

@rule_pr_event_register_cb_sftp_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_exit_ev], pl2);

@rule_pr_event_register_cb_sftp_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_exit_ev], pl2);


// pr_event_register - cb - sftp_max_conns_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_max_conns_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_max_conns_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_max_conns_ev], pl2);

@rule_pr_event_register_cb_sftp_max_conns_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_max_conns_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_max_conns_ev], pl2);

@rule_pr_event_register_cb_sftp_max_conns_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_max_conns_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_max_conns_ev], pl2);


// pr_event_register - cb - sftp_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftp_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftp_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_mod_unload_ev], pl2);


// pr_event_register - cb - sftp_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_postparse_ev], pl2);

@rule_pr_event_register_cb_sftp_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_postparse_ev], pl2);

@rule_pr_event_register_cb_sftp_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_postparse_ev], pl2);


// pr_event_register - cb - sftp_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_restart_ev], pl2);

@rule_pr_event_register_cb_sftp_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_restart_ev], pl2);

@rule_pr_event_register_cb_sftp_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_restart_ev], pl2);


// pr_event_register - cb - sftp_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_shutdown_ev], pl2);

@rule_pr_event_register_cb_sftp_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_shutdown_ev], pl2);

@rule_pr_event_register_cb_sftp_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_shutdown_ev], pl2);


// pr_event_register - cb - sftp_sigusr2_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_sigusr2_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_sigusr2_ev], pl2);

@rule_pr_event_register_cb_sftp_sigusr2_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_sigusr2_ev], pl2);

@rule_pr_event_register_cb_sftp_sigusr2_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_sigusr2_ev], pl2);


// pr_event_register - cb - sftp_timeoutlogin_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_timeoutlogin_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_timeoutlogin_ev], pl2);

@rule_pr_event_register_cb_sftp_timeoutlogin_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_timeoutlogin_ev], pl2);

@rule_pr_event_register_cb_sftp_timeoutlogin_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_timeoutlogin_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_timeoutlogin_ev], pl2);


// pr_event_register - cb - sftp_wrap_conn_denied_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftp_wrap_conn_denied_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_wrap_conn_denied_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_wrap_conn_denied_ev], pl2);

@rule_pr_event_register_cb_sftp_wrap_conn_denied_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_wrap_conn_denied_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_wrap_conn_denied_ev], pl2);

@rule_pr_event_register_cb_sftp_wrap_conn_denied_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_wrap_conn_denied_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftp_wrap_conn_denied_ev], pl2);


// pr_event_register - cb - sftppam_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftppam_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftppam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_exit_ev], pl2);

@rule_pr_event_register_cb_sftppam_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftppam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_exit_ev], pl2);

@rule_pr_event_register_cb_sftppam_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftppam_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_exit_ev], pl2);


// pr_event_register - cb - sftppam_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftppam_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftppam_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftppam_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftppam_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftppam_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftppam_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftppam_mod_unload_ev], pl2);


// pr_event_register - cb - sftpsql_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sftpsql_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftpsql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftpsql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftpsql_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftpsql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftpsql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sftpsql_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftpsql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sftpsql_mod_unload_ev], pl2);


// pr_event_register - cb - shaper_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_mod_unload_ev], pl2);

@rule_pr_event_register_cb_shaper_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_mod_unload_ev], pl2);

@rule_pr_event_register_cb_shaper_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_mod_unload_ev], pl2);


// pr_event_register - cb - shaper_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_postparse_ev], pl2);

@rule_pr_event_register_cb_shaper_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_postparse_ev], pl2);

@rule_pr_event_register_cb_shaper_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_postparse_ev], pl2);


// pr_event_register - cb - shaper_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_restart_ev], pl2);

@rule_pr_event_register_cb_shaper_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_restart_ev], pl2);

@rule_pr_event_register_cb_shaper_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_restart_ev], pl2);


// pr_event_register - cb - shaper_sess_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_sess_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_sess_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sess_exit_ev], pl2);

@rule_pr_event_register_cb_shaper_sess_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_sess_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sess_exit_ev], pl2);

@rule_pr_event_register_cb_shaper_sess_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_sess_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sess_exit_ev], pl2);


// pr_event_register - cb - shaper_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_shutdown_ev], pl2);

@rule_pr_event_register_cb_shaper_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_shutdown_ev], pl2);

@rule_pr_event_register_cb_shaper_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_shutdown_ev], pl2);


// pr_event_register - cb - shaper_sigusr2_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shaper_sigusr2_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sigusr2_ev], pl2);

@rule_pr_event_register_cb_shaper_sigusr2_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shaper_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sigusr2_ev], pl2);

@rule_pr_event_register_cb_shaper_sigusr2_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shaper_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shaper_sigusr2_ev], pl2);


// pr_event_register - cb - shmcache_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shmcache_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_shmcache_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_shmcache_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shmcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_mod_unload_ev], pl2);


// pr_event_register - cb - shmcache_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shmcache_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_restart_ev], pl2);

@rule_pr_event_register_cb_shmcache_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_restart_ev], pl2);

@rule_pr_event_register_cb_shmcache_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shmcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_restart_ev], pl2);


// pr_event_register - cb - shmcache_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_shmcache_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_shutdown_ev], pl2);

@rule_pr_event_register_cb_shmcache_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shmcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_shutdown_ev], pl2);

@rule_pr_event_register_cb_shmcache_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shmcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shmcache_shutdown_ev], pl2);


// pr_event_register - cb - site_misc_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_site_misc_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_site_misc_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_site_misc_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);


// pr_event_register - cb - snmp_auth_code_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_auth_code_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_auth_code_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_auth_code_ev], pl2);

@rule_pr_event_register_cb_snmp_auth_code_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_auth_code_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_auth_code_ev], pl2);

@rule_pr_event_register_cb_snmp_auth_code_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_auth_code_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_auth_code_ev], pl2);


// pr_event_register - cb - snmp_ban_ban_class_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ban_ban_class_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_class_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_class_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_class_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_class_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ban_ban_class_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_class_ev], pl2);


// pr_event_register - cb - snmp_ban_ban_host_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ban_ban_host_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_host_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_host_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_host_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_host_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ban_ban_host_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_host_ev], pl2);


// pr_event_register - cb - snmp_ban_ban_user_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ban_ban_user_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_user_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_user_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_user_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_ban_user_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ban_ban_user_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_ban_user_ev], pl2);


// pr_event_register - cb - snmp_ban_client_disconn_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ban_client_disconn_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_client_disconn_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_client_disconn_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_client_disconn_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_client_disconn_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_client_disconn_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_client_disconn_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ban_client_disconn_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_client_disconn_ev], pl2);


// pr_event_register - cb - snmp_ban_expired_ban_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ban_expired_ban_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_expired_ban_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_expired_ban_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_expired_ban_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ban_expired_ban_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_expired_ban_ev], pl2);

@rule_pr_event_register_cb_snmp_ban_expired_ban_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ban_expired_ban_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ban_expired_ban_ev], pl2);


// pr_event_register - cb - snmp_cmd_invalid_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_cmd_invalid_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_cmd_invalid_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_cmd_invalid_ev], pl2);

@rule_pr_event_register_cb_snmp_cmd_invalid_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_cmd_invalid_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_cmd_invalid_ev], pl2);

@rule_pr_event_register_cb_snmp_cmd_invalid_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_cmd_invalid_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_cmd_invalid_ev], pl2);


// pr_event_register - cb - snmp_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_exit_ev], pl2);

@rule_pr_event_register_cb_snmp_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_exit_ev], pl2);

@rule_pr_event_register_cb_snmp_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_exit_ev], pl2);


// pr_event_register - cb - snmp_max_inst_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_max_inst_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_max_inst_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_max_inst_ev], pl2);

@rule_pr_event_register_cb_snmp_max_inst_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_max_inst_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_max_inst_ev], pl2);

@rule_pr_event_register_cb_snmp_max_inst_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_max_inst_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_max_inst_ev], pl2);


// pr_event_register - cb - snmp_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_snmp_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_mod_unload_ev], pl2);

@rule_pr_event_register_cb_snmp_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_mod_unload_ev], pl2);


// pr_event_register - cb - snmp_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_postparse_ev], pl2);

@rule_pr_event_register_cb_snmp_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_postparse_ev], pl2);

@rule_pr_event_register_cb_snmp_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_postparse_ev], pl2);


// pr_event_register - cb - snmp_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_restart_ev], pl2);

@rule_pr_event_register_cb_snmp_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_restart_ev], pl2);

@rule_pr_event_register_cb_snmp_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_restart_ev], pl2);


// pr_event_register - cb - snmp_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_shutdown_ev], pl2);

@rule_pr_event_register_cb_snmp_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_shutdown_ev], pl2);

@rule_pr_event_register_cb_snmp_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_shutdown_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_hostbased_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_err_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_hostbased_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_hostbased_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_hostbased_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_hostbased_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_kbdint_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_err_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_kbdint_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_kbdint_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_kbdint_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_kbdint_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_passwd_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_err_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_passwd_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_passwd_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_passwd_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_passwd_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_publickey_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_err_ev], pl2);


// pr_event_register - cb - snmp_ssh2_auth_publickey_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_auth_publickey_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_auth_publickey_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_auth_publickey_ev], pl2);


// pr_event_register - cb - snmp_ssh2_c2s_compress_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_c2s_compress_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_c2s_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_c2s_compress_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_c2s_compress_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_c2s_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_c2s_compress_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_c2s_compress_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_c2s_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_c2s_compress_ev], pl2);


// pr_event_register - cb - snmp_ssh2_kex_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_kex_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_kex_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_kex_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_kex_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_kex_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_kex_err_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_kex_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_kex_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_kex_err_ev], pl2);


// pr_event_register - cb - snmp_ssh2_s2c_compress_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_s2c_compress_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_s2c_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_s2c_compress_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_s2c_compress_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_s2c_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_s2c_compress_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_s2c_compress_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_s2c_compress_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_s2c_compress_ev], pl2);


// pr_event_register - cb - snmp_ssh2_scp_sess_closed_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_closed_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_closed_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_closed_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_closed_ev], pl2);


// pr_event_register - cb - snmp_ssh2_scp_sess_opened_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_opened_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_opened_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_scp_sess_opened_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_scp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_scp_sess_opened_ev], pl2);


// pr_event_register - cb - snmp_ssh2_sftp_proto_version_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_sftp_proto_version_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_proto_version_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_proto_version_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_proto_version_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_proto_version_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_proto_version_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_proto_version_ev], pl2);


// pr_event_register - cb - snmp_ssh2_sftp_sess_closed_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_closed_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_closed_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_closed_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_closed_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_closed_ev], pl2);


// pr_event_register - cb - snmp_ssh2_sftp_sess_opened_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_opened_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_opened_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev], pl2);

@rule_pr_event_register_cb_snmp_ssh2_sftp_sess_opened_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_ssh2_sftp_sess_opened_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_ssh2_sftp_sess_opened_ev], pl2);


// pr_event_register - cb - snmp_startup_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_startup_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_startup_ev], pl2);

@rule_pr_event_register_cb_snmp_startup_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_startup_ev], pl2);

@rule_pr_event_register_cb_snmp_startup_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_startup_ev], pl2);


// pr_event_register - cb - snmp_timeout_idle_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_timeout_idle_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_idle_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_idle_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_idle_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_idle_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_idle_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_idle_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_timeout_idle_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_idle_ev], pl2);


// pr_event_register - cb - snmp_timeout_login_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_timeout_login_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_login_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_login_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_login_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_login_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_login_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_login_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_timeout_login_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_login_ev], pl2);


// pr_event_register - cb - snmp_timeout_noxfer_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_timeout_noxfer_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_noxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_noxfer_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_noxfer_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_noxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_noxfer_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_noxfer_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_timeout_noxfer_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_noxfer_ev], pl2);


// pr_event_register - cb - snmp_timeout_stalled_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_timeout_stalled_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_stalled_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_stalled_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_stalled_ev], pl2);

@rule_pr_event_register_cb_snmp_timeout_stalled_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_timeout_stalled_ev], pl2);


// pr_event_register - cb - snmp_tls_ctrl_handshake_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_tls_ctrl_handshake_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_ctrl_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_ctrl_handshake_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_ctrl_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_ctrl_handshake_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_tls_ctrl_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_ctrl_handshake_err_ev], pl2);


// pr_event_register - cb - snmp_tls_data_handshake_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_tls_data_handshake_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_data_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_data_handshake_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_data_handshake_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_data_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_data_handshake_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_data_handshake_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_tls_data_handshake_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_data_handshake_err_ev], pl2);


// pr_event_register - cb - snmp_tls_verify_client_err_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_tls_verify_client_err_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_verify_client_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_verify_client_err_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_verify_client_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_err_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_verify_client_err_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_tls_verify_client_err_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_err_ev], pl2);


// pr_event_register - cb - snmp_tls_verify_client_ev
// fp_sequence: 3

@rule_pr_event_register_cb_snmp_tls_verify_client_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_verify_client_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_verify_client_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {snmp_tls_verify_client_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_ev], pl2);

@rule_pr_event_register_cb_snmp_tls_verify_client_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {snmp_tls_verify_client_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_snmp_tls_verify_client_ev], pl2);


// pr_event_register - cb - sql_chroot_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);

@rule_pr_event_register_cb_sql_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);

@rule_pr_event_register_cb_sql_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);


// pr_event_register - cb - sql_eventlog_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_eventlog_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);

@rule_pr_event_register_cb_sql_eventlog_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);

@rule_pr_event_register_cb_sql_eventlog_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);


// pr_event_register - cb - sql_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);

@rule_pr_event_register_cb_sql_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);

@rule_pr_event_register_cb_sql_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);


// pr_event_register - cb - sql_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mod_unload_ev], pl2);


// pr_event_register - cb - sql_mysql_mod_load_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_mysql_mod_load_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mysql_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_mysql_mod_load_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mysql_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_mysql_mod_load_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_mysql_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_load_ev], pl2);


// pr_event_register - cb - sql_mysql_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_mysql_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mysql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_mysql_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_mysql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_mysql_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_mysql_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_mysql_mod_unload_ev], pl2);


// pr_event_register - cb - sql_passwd_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_passwd_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_passwd_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_passwd_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_passwd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_mod_unload_ev], pl2);


// pr_event_register - cb - sql_passwd_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_passwd_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_sql_passwd_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_sql_passwd_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);


// pr_event_register - cb - sql_postgres_mod_load_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_postgres_mod_load_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_postgres_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_postgres_mod_load_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_postgres_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_postgres_mod_load_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_postgres_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_load_ev], pl2);


// pr_event_register - cb - sql_postgres_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_postgres_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_postgres_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_postgres_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_postgres_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_postgres_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_postgres_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_postgres_mod_unload_ev], pl2);


// pr_event_register - cb - sql_preparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_preparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_preparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_preparse_ev], pl2);

@rule_pr_event_register_cb_sql_preparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_preparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_preparse_ev], pl2);

@rule_pr_event_register_cb_sql_preparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_preparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_preparse_ev], pl2);


// pr_event_register - cb - sql_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_sql_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_sql_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);


// pr_event_register - cb - sql_sqlite_mod_load_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_sqlite_mod_load_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sqlite_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_sqlite_mod_load_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sqlite_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_load_ev], pl2);

@rule_pr_event_register_cb_sql_sqlite_mod_load_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_sqlite_mod_load_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_load_ev], pl2);


// pr_event_register - cb - sql_sqlite_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sql_sqlite_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sqlite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_sqlite_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sqlite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sql_sqlite_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_sqlite_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sqlite_mod_unload_ev], pl2);


// pr_event_register - cb - sqlodbc_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sqlodbc_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlodbc_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqlodbc_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sqlodbc_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlodbc_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqlodbc_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sqlodbc_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlodbc_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqlodbc_mod_unload_ev], pl2);


// pr_event_register - cb - sqltab_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_sqltab_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqltab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqltab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sqltab_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqltab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqltab_mod_unload_ev], pl2);

@rule_pr_event_register_cb_sqltab_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqltab_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sqltab_mod_unload_ev], pl2);


// pr_event_register - cb - statcache_fs_statcache_clear_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_fs_statcache_clear_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_fs_statcache_clear_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_fs_statcache_clear_ev], pl2);

@rule_pr_event_register_cb_statcache_fs_statcache_clear_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_fs_statcache_clear_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_fs_statcache_clear_ev], pl2);

@rule_pr_event_register_cb_statcache_fs_statcache_clear_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_fs_statcache_clear_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_fs_statcache_clear_ev], pl2);


// pr_event_register - cb - statcache_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_statcache_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_statcache_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_mod_unload_ev], pl2);


// pr_event_register - cb - statcache_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_postparse_ev], pl2);

@rule_pr_event_register_cb_statcache_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_postparse_ev], pl2);

@rule_pr_event_register_cb_statcache_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_postparse_ev], pl2);


// pr_event_register - cb - statcache_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_restart_ev], pl2);

@rule_pr_event_register_cb_statcache_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_restart_ev], pl2);

@rule_pr_event_register_cb_statcache_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_restart_ev], pl2);


// pr_event_register - cb - statcache_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_statcache_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_statcache_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);


// pr_event_register - cb - statcache_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_statcache_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_shutdown_ev], pl2);

@rule_pr_event_register_cb_statcache_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_shutdown_ev], pl2);

@rule_pr_event_register_cb_statcache_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_shutdown_ev], pl2);


// pr_event_register - cb - systemd_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_systemd_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_mod_unload_ev], pl2);

@rule_pr_event_register_cb_systemd_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_mod_unload_ev], pl2);

@rule_pr_event_register_cb_systemd_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {systemd_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_mod_unload_ev], pl2);


// pr_event_register - cb - systemd_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_systemd_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_postparse_ev], pl2);

@rule_pr_event_register_cb_systemd_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_postparse_ev], pl2);

@rule_pr_event_register_cb_systemd_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {systemd_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_postparse_ev], pl2);


// pr_event_register - cb - systemd_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_systemd_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_restart_ev], pl2);

@rule_pr_event_register_cb_systemd_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_restart_ev], pl2);

@rule_pr_event_register_cb_systemd_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {systemd_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_restart_ev], pl2);


// pr_event_register - cb - systemd_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_systemd_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_shutdown_ev], pl2);

@rule_pr_event_register_cb_systemd_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_shutdown_ev], pl2);

@rule_pr_event_register_cb_systemd_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {systemd_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_shutdown_ev], pl2);


// pr_event_register - cb - systemd_startup_ev
// fp_sequence: 3

@rule_pr_event_register_cb_systemd_startup_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_startup_ev], pl2);

@rule_pr_event_register_cb_systemd_startup_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {systemd_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_startup_ev], pl2);

@rule_pr_event_register_cb_systemd_startup_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {systemd_startup_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_systemd_startup_ev], pl2);


// pr_event_register - cb - tls_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);

@rule_pr_event_register_cb_tls_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);

@rule_pr_event_register_cb_tls_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);


// pr_event_register - cb - tls_mcache_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_mcache_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_mcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_mcache_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_mcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mcache_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_mcache_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_mcache_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mcache_mod_unload_ev], pl2);


// pr_event_register - cb - tls_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_mod_unload_ev], pl2);


// pr_event_register - cb - tls_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_postparse_ev], pl2);

@rule_pr_event_register_cb_tls_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_postparse_ev], pl2);

@rule_pr_event_register_cb_tls_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_postparse_ev], pl2);


// pr_event_register - cb - tls_redis_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_redis_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_redis_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_redis_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_redis_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_redis_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_redis_mod_unload_ev], pl2);

@rule_pr_event_register_cb_tls_redis_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_redis_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_redis_mod_unload_ev], pl2);


// pr_event_register - cb - tls_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_restart_ev], pl2);

@rule_pr_event_register_cb_tls_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_restart_ev], pl2);

@rule_pr_event_register_cb_tls_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_restart_ev], pl2);


// pr_event_register - cb - tls_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_tls_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_tls_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);


// pr_event_register - cb - tls_shutdown_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_shutdown_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_shutdown_ev], pl2);

@rule_pr_event_register_cb_tls_shutdown_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_shutdown_ev], pl2);

@rule_pr_event_register_cb_tls_shutdown_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_shutdown_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_shutdown_ev], pl2);


// pr_event_register - cb - tls_timeout_ev
// fp_sequence: 3

@rule_pr_event_register_cb_tls_timeout_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_timeout_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_timeout_ev], pl2);

@rule_pr_event_register_cb_tls_timeout_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_timeout_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_timeout_ev], pl2);

@rule_pr_event_register_cb_tls_timeout_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_timeout_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_timeout_ev], pl2);


// pr_event_register - cb - trace_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_trace_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);

@rule_pr_event_register_cb_trace_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);

@rule_pr_event_register_cb_trace_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);


// pr_event_register - cb - uniqid_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_uniqid_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uniqid_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_mod_unload_ev], pl2);

@rule_pr_event_register_cb_uniqid_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uniqid_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_mod_unload_ev], pl2);

@rule_pr_event_register_cb_uniqid_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {uniqid_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_mod_unload_ev], pl2);


// pr_event_register - cb - uniqid_postparse_ev
// fp_sequence: 3

@rule_pr_event_register_cb_uniqid_postparse_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uniqid_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_postparse_ev], pl2);

@rule_pr_event_register_cb_uniqid_postparse_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uniqid_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_postparse_ev], pl2);

@rule_pr_event_register_cb_uniqid_postparse_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {uniqid_postparse_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_uniqid_postparse_ev], pl2);


// pr_event_register - cb - wrap2_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_wrap2_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);

@rule_pr_event_register_cb_wrap2_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);

@rule_pr_event_register_cb_wrap2_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);


// pr_event_register - cb - wrap2_mod_unload_ev
// fp_sequence: 3

@rule_pr_event_register_cb_wrap2_mod_unload_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_mod_unload_ev], pl2);

@rule_pr_event_register_cb_wrap2_mod_unload_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_mod_unload_ev], pl2);

@rule_pr_event_register_cb_wrap2_mod_unload_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_mod_unload_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_mod_unload_ev], pl2);


// pr_event_register - cb - wrap2_restart_ev
// fp_sequence: 3

@rule_pr_event_register_cb_wrap2_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_restart_ev], pl2);

@rule_pr_event_register_cb_wrap2_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_restart_ev], pl2);

@rule_pr_event_register_cb_wrap2_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_restart_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_restart_ev], pl2);


// pr_event_register - cb - wrap2_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_wrap2_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_wrap2_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_wrap2_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);


// pr_event_register - cb - wrap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_wrap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_wrap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_wrap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);


// pr_event_register - cb - xfer_exit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_xfer_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);

@rule_pr_event_register_cb_xfer_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);

@rule_pr_event_register_cb_xfer_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);


// pr_event_register - cb - xfer_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_register_cb_xfer_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_xfer_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);

@rule_pr_event_register_cb_xfer_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);


// pr_event_register - cb - xfer_sigusr2_ev
// fp_sequence: 3

@rule_pr_event_register_cb_xfer_sigusr2_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);

@rule_pr_event_register_cb_xfer_sigusr2_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);

@rule_pr_event_register_cb_xfer_sigusr2_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);


// pr_event_register - cb - xfer_timeout_session_ev
// fp_sequence: 3

@rule_pr_event_register_cb_xfer_timeout_session_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_session_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_session_ev], pl2);

@rule_pr_event_register_cb_xfer_timeout_session_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_session_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_session_ev], pl2);

@rule_pr_event_register_cb_xfer_timeout_session_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_timeout_session_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_session_ev], pl2);


// pr_event_register - cb - xfer_timeout_stalled_ev
// fp_sequence: 3

@rule_pr_event_register_cb_xfer_timeout_stalled_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);

@rule_pr_event_register_cb_xfer_timeout_stalled_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);

@rule_pr_event_register_cb_xfer_timeout_stalled_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);


// ============================================================
// Function: pr_event_unregister
// ============================================================

// pr_event_unregister - cb - NULL
// fp_sequence: 3

@rule_pr_event_unregister_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_event_unregister_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_event_unregister_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_event_unregister - cb - auth_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_exit_ev], pl2);


// pr_event_unregister - cb - auth_otp_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_otp_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_otp_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_otp_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_otp_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_exit_ev], pl2);


// pr_event_unregister - cb - auth_otp_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_otp_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_otp_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_otp_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_otp_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_otp_sess_reinit_ev], pl2);


// pr_event_unregister - cb - auth_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_sess_reinit_ev], pl2);


// pr_event_unregister - cb - auth_unix_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_unix_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_unix_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);

@rule_pr_event_unregister_cb_auth_unix_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_unix_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_exit_ev], pl2);


// pr_event_unregister - cb - auth_unix_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_auth_unix_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_unix_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_auth_unix_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_unix_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_auth_unix_sess_reinit_ev], pl2);


// pr_event_unregister - cb - authfile_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_authfile_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_authfile_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_authfile_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {authfile_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_authfile_sess_reinit_ev], pl2);


// pr_event_unregister - cb - ban_restart_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_ban_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);

@rule_pr_event_unregister_cb_ban_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);

@rule_pr_event_unregister_cb_ban_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_restart_ev], pl2);


// pr_event_unregister - cb - ban_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_ban_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ban_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ban_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ban_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ban_sess_reinit_ev], pl2);


// pr_event_unregister - cb - cap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_cap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_cap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_cap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {cap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_cap_sess_reinit_ev], pl2);


// pr_event_unregister - cb - core_chroot_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_core_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);

@rule_pr_event_unregister_cb_core_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);

@rule_pr_event_unregister_cb_core_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {core_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_core_chroot_ev], pl2);


// pr_event_unregister - cb - ctrls_restart_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_ctrls_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);

@rule_pr_event_unregister_cb_ctrls_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);

@rule_pr_event_unregister_cb_ctrls_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ctrls_restart_ev], pl2);


// pr_event_unregister - cb - define_restart_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_define_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);

@rule_pr_event_unregister_cb_define_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);

@rule_pr_event_unregister_cb_define_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {define_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_define_restart_ev], pl2);


// pr_event_unregister - cb - deflate_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_deflate_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_deflate_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_deflate_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {deflate_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_deflate_sess_reinit_ev], pl2);


// pr_event_unregister - cb - delay_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_delay_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_delay_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_delay_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {delay_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_delay_sess_reinit_ev], pl2);


// pr_event_unregister - cb - digest_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_digest_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_digest_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_digest_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {digest_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_digest_sess_reinit_ev], pl2);


// pr_event_unregister - cb - dnsbl_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_dnsbl_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_dnsbl_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_dnsbl_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dnsbl_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dnsbl_sess_reinit_ev], pl2);


// pr_event_unregister - cb - dso_restart_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_dso_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);

@rule_pr_event_unregister_cb_dso_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);

@rule_pr_event_unregister_cb_dso_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dso_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_dso_restart_ev], pl2);


// pr_event_unregister - cb - event_cb
// fp_sequence: 3

@rule_pr_event_unregister_cb_event_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);

@rule_pr_event_unregister_cb_event_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);

@rule_pr_event_unregister_cb_event_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cb};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb], pl2);


// pr_event_unregister - cb - event_cb2
// fp_sequence: 3

@rule_pr_event_unregister_cb_event_cb2_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);

@rule_pr_event_unregister_cb_event_cb2_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);

@rule_pr_event_unregister_cb_event_cb2_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cb2};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_event_cb2], pl2);


// pr_event_unregister - cb - exec_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_exec_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_exec_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_exec_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {exec_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_exec_sess_reinit_ev], pl2);


// pr_event_unregister - cb - facts_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_facts_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_facts_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_facts_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {facts_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_facts_sess_reinit_ev], pl2);


// pr_event_unregister - cb - forensic_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_forensic_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);

@rule_pr_event_unregister_cb_forensic_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);

@rule_pr_event_unregister_cb_forensic_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_exit_ev], pl2);


// pr_event_unregister - cb - forensic_log_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_forensic_log_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);

@rule_pr_event_unregister_cb_forensic_log_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);

@rule_pr_event_unregister_cb_forensic_log_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_log_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_log_ev], pl2);


// pr_event_unregister - cb - forensic_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_forensic_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_forensic_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_forensic_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {forensic_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_forensic_sess_reinit_ev], pl2);


// pr_event_unregister - cb - ident_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_ident_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ident_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ident_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ident_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ident_sess_reinit_ev], pl2);


// pr_event_unregister - cb - ldap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_ldap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ldap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_ldap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ldap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_ldap_sess_reinit_ev], pl2);


// pr_event_unregister - cb - log_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_log_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);

@rule_pr_event_unregister_cb_log_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);

@rule_pr_event_unregister_cb_log_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_exit_ev], pl2);


// pr_event_unregister - cb - log_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_log_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_log_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_log_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_sess_reinit_ev], pl2);


// pr_event_unregister - cb - log_xfer_stalled_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_log_xfer_stalled_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);

@rule_pr_event_unregister_cb_log_xfer_stalled_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);

@rule_pr_event_unregister_cb_log_xfer_stalled_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_xfer_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_xfer_stalled_ev], pl2);


// pr_event_unregister - cb - mcache_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_mcache_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);

@rule_pr_event_unregister_cb_mcache_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);

@rule_pr_event_unregister_cb_mcache_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mcache_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_exit_ev], pl2);


// pr_event_unregister - cb - mcache_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_mcache_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_mcache_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_mcache_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_mcache_sess_reinit_ev], pl2);


// pr_event_unregister - cb - qos_data_connect_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_qos_data_connect_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);

@rule_pr_event_unregister_cb_qos_data_connect_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);

@rule_pr_event_unregister_cb_qos_data_connect_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_data_connect_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_connect_ev], pl2);


// pr_event_unregister - cb - qos_data_listen_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_qos_data_listen_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);

@rule_pr_event_unregister_cb_qos_data_listen_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);

@rule_pr_event_unregister_cb_qos_data_listen_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_data_listen_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_data_listen_ev], pl2);


// pr_event_unregister - cb - qos_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_qos_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_qos_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_qos_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {qos_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_qos_sess_reinit_ev], pl2);


// pr_event_unregister - cb - quotatab_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_quotatab_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);

@rule_pr_event_unregister_cb_quotatab_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);

@rule_pr_event_unregister_cb_quotatab_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_exit_ev], pl2);


// pr_event_unregister - cb - quotatab_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_quotatab_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_quotatab_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_quotatab_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {quotatab_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_quotatab_sess_reinit_ev], pl2);


// pr_event_unregister - cb - radius_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_radius_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);

@rule_pr_event_unregister_cb_radius_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);

@rule_pr_event_unregister_cb_radius_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_exit_ev], pl2);


// pr_event_unregister - cb - radius_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_radius_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_radius_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_radius_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {radius_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_radius_sess_reinit_ev], pl2);


// pr_event_unregister - cb - redis_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_redis_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_redis_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_redis_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {redis_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_redis_sess_reinit_ev], pl2);


// pr_event_unregister - cb - rewrite_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_rewrite_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_exit_ev], pl2);


// pr_event_unregister - cb - rewrite_rewrite_home_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_rewrite_rewrite_home_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_rewrite_home_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_rewrite_home_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_rewrite_home_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_rewrite_home_ev], pl2);


// pr_event_unregister - cb - rewrite_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_rewrite_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_rewrite_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rewrite_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_rewrite_sess_reinit_ev], pl2);


// pr_event_unregister - cb - site_misc_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_site_misc_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_site_misc_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_site_misc_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {site_misc_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_site_misc_sess_reinit_ev], pl2);


// pr_event_unregister - cb - sql_chroot_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_sql_chroot_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);

@rule_pr_event_unregister_cb_sql_chroot_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);

@rule_pr_event_unregister_cb_sql_chroot_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_chroot_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_chroot_ev], pl2);


// pr_event_unregister - cb - sql_eventlog_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_sql_eventlog_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);

@rule_pr_event_unregister_cb_sql_eventlog_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);

@rule_pr_event_unregister_cb_sql_eventlog_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_eventlog_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_eventlog_ev], pl2);


// pr_event_unregister - cb - sql_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_sql_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);

@rule_pr_event_unregister_cb_sql_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);

@rule_pr_event_unregister_cb_sql_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_exit_ev], pl2);


// pr_event_unregister - cb - sql_passwd_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_sql_passwd_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_sql_passwd_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_sql_passwd_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_passwd_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_passwd_sess_reinit_ev], pl2);


// pr_event_unregister - cb - sql_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_sql_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_sql_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_sql_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_sql_sess_reinit_ev], pl2);


// pr_event_unregister - cb - statcache_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_statcache_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_statcache_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_statcache_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_statcache_sess_reinit_ev], pl2);


// pr_event_unregister - cb - tls_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_tls_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);

@rule_pr_event_unregister_cb_tls_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);

@rule_pr_event_unregister_cb_tls_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_exit_ev], pl2);


// pr_event_unregister - cb - tls_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_tls_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_tls_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_tls_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tls_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tls_sess_reinit_ev], pl2);


// pr_event_unregister - cb - trace_restart_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_trace_restart_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);

@rule_pr_event_unregister_cb_trace_restart_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);

@rule_pr_event_unregister_cb_trace_restart_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {trace_restart_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_trace_restart_ev], pl2);


// pr_event_unregister - cb - wrap2_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_wrap2_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);

@rule_pr_event_unregister_cb_wrap2_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);

@rule_pr_event_unregister_cb_wrap2_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_exit_ev], pl2);


// pr_event_unregister - cb - wrap2_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_wrap2_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_wrap2_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_wrap2_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap2_sess_reinit_ev], pl2);


// pr_event_unregister - cb - wrap_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_wrap_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_wrap_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_wrap_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_wrap_sess_reinit_ev], pl2);


// pr_event_unregister - cb - xfer_exit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_xfer_exit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);

@rule_pr_event_unregister_cb_xfer_exit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);

@rule_pr_event_unregister_cb_xfer_exit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_exit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_exit_ev], pl2);


// pr_event_unregister - cb - xfer_sess_reinit_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_xfer_sess_reinit_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_xfer_sess_reinit_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);

@rule_pr_event_unregister_cb_xfer_sess_reinit_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_sess_reinit_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sess_reinit_ev], pl2);


// pr_event_unregister - cb - xfer_sigusr2_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_xfer_sigusr2_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);

@rule_pr_event_unregister_cb_xfer_sigusr2_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);

@rule_pr_event_unregister_cb_xfer_sigusr2_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_sigusr2_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_sigusr2_ev], pl2);


// pr_event_unregister - cb - xfer_timeout_stalled_ev
// fp_sequence: 3

@rule_pr_event_unregister_cb_xfer_timeout_stalled_ev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);

@rule_pr_event_unregister_cb_xfer_timeout_stalled_ev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);

@rule_pr_event_unregister_cb_xfer_timeout_stalled_ev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xfer_timeout_stalled_ev};
identifier FN_NAME = {pr_event_unregister};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_xfer_timeout_stalled_ev], pl2);


// ============================================================
// Function: pr_fs_copy_file2
// ============================================================

// pr_fs_copy_file2 - progress_cb - NULL
// fp_sequence: 4

@rule_pr_fs_copy_file2_progress_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_copy_file2};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, progress_cb_signatures[progress_cb_NULL], pl2);

@rule_pr_fs_copy_file2_progress_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_copy_file2};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, progress_cb_signatures[progress_cb_NULL], pl2);

@rule_pr_fs_copy_file2_progress_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_fs_copy_file2};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, progress_cb_signatures[progress_cb_NULL], pl2);


// pr_fs_copy_file2 - progress_cb - copy_progress_cb
// fp_sequence: 4

@rule_pr_fs_copy_file2_progress_cb_copy_progress_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {copy_progress_cb};
identifier FN_NAME = {pr_fs_copy_file2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, progress_cb_signatures[progress_cb_copy_progress_cb], pl2);

@rule_pr_fs_copy_file2_progress_cb_copy_progress_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {copy_progress_cb};
identifier FN_NAME = {pr_fs_copy_file2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, progress_cb_signatures[progress_cb_copy_progress_cb], pl2);

@rule_pr_fs_copy_file2_progress_cb_copy_progress_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {copy_progress_cb};
identifier FN_NAME = {pr_fs_copy_file2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, progress_cb_signatures[progress_cb_copy_progress_cb], pl2);


// ============================================================
// Function: pr_fs_dump
// ============================================================

// pr_fs_dump - dumpf - NULL
// fp_sequence: 1

@rule_pr_fs_dump_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_dump};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_fs_dump_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_dump};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_fs_dump_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_fs_dump};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// ============================================================
// Function: pr_fs_glob
// ============================================================

// pr_fs_glob - errfunc - NULL
// fp_sequence: 3

@rule_pr_fs_glob_errfunc_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_glob};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, errfunc_signatures[errfunc_NULL], pl2);

@rule_pr_fs_glob_errfunc_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_fs_glob};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, errfunc_signatures[errfunc_NULL], pl2);

@rule_pr_fs_glob_errfunc_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_fs_glob};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, errfunc_signatures[errfunc_NULL], pl2);


// ============================================================
// Function: pr_jot_parse_logfmt
// ============================================================

// pr_jot_parse_logfmt - on_meta - NULL
// fp_sequence: 4

@rule_pr_jot_parse_logfmt_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// pr_jot_parse_logfmt - on_meta - long_on_meta
// fp_sequence: 4

@rule_pr_jot_parse_logfmt_on_meta_long_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_long_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_long_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);


// pr_jot_parse_logfmt - on_meta - parse_on_meta
// fp_sequence: 4

@rule_pr_jot_parse_logfmt_on_meta_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);


// pr_jot_parse_logfmt - on_meta - pr_jot_parse_on_meta
// fp_sequence: 4

@rule_pr_jot_parse_logfmt_on_meta_pr_jot_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_pr_jot_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_pr_jot_parse_logfmt_on_meta_pr_jot_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);


// pr_jot_parse_logfmt - on_unknown - NULL
// fp_sequence: 5

@rule_pr_jot_parse_logfmt_on_unknown_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_unknown_signatures[on_unknown_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_unknown_signatures[on_unknown_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_unknown_signatures[on_unknown_NULL], pl2);


// pr_jot_parse_logfmt - on_unknown - parse_on_unknown
// fp_sequence: 5

@rule_pr_jot_parse_logfmt_on_unknown_parse_on_unknown_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_parse_on_unknown], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_parse_on_unknown_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_parse_on_unknown], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_parse_on_unknown_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_parse_on_unknown], pl2);


// pr_jot_parse_logfmt - on_unknown - pr_jot_parse_on_unknown
// fp_sequence: 5

@rule_pr_jot_parse_logfmt_on_unknown_pr_jot_parse_on_unknown_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_pr_jot_parse_on_unknown_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown], pl2);

@rule_pr_jot_parse_logfmt_on_unknown_pr_jot_parse_on_unknown_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_unknown};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_unknown_signatures[on_unknown_pr_jot_parse_on_unknown], pl2);


// pr_jot_parse_logfmt - on_other - NULL
// fp_sequence: 6

@rule_pr_jot_parse_logfmt_on_other_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_other_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);

@rule_pr_jot_parse_logfmt_on_other_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);


// pr_jot_parse_logfmt - on_other - parse_on_other
// fp_sequence: 6

@rule_pr_jot_parse_logfmt_on_other_parse_on_other_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_parse_on_other], pl2);

@rule_pr_jot_parse_logfmt_on_other_parse_on_other_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_parse_on_other], pl2);

@rule_pr_jot_parse_logfmt_on_other_parse_on_other_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_parse_on_other], pl2);


// pr_jot_parse_logfmt - on_other - pr_jot_parse_on_other
// fp_sequence: 6

@rule_pr_jot_parse_logfmt_on_other_pr_jot_parse_on_other_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_pr_jot_parse_on_other], pl2);

@rule_pr_jot_parse_logfmt_on_other_pr_jot_parse_on_other_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_pr_jot_parse_on_other], pl2);

@rule_pr_jot_parse_logfmt_on_other_pr_jot_parse_on_other_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_other};
identifier FN_NAME = {pr_jot_parse_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_pr_jot_parse_on_other], pl2);


// ============================================================
// Function: pr_jot_resolve_logfmt
// ============================================================

// pr_jot_resolve_logfmt - on_meta - NULL
// fp_sequence: 6

@rule_pr_jot_resolve_logfmt_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// pr_jot_resolve_logfmt - on_meta - pr_jot_on_json
// fp_sequence: 6

@rule_pr_jot_resolve_logfmt_on_meta_pr_jot_on_json_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_pr_jot_on_json_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_pr_jot_on_json_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);


// pr_jot_resolve_logfmt - on_meta - resolve_on_meta
// fp_sequence: 6

@rule_pr_jot_resolve_logfmt_on_meta_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);


// pr_jot_resolve_logfmt - on_meta - showinfo_on_meta
// fp_sequence: 6

@rule_pr_jot_resolve_logfmt_on_meta_showinfo_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_showinfo_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_showinfo_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);


// pr_jot_resolve_logfmt - on_meta - sql_resolve_on_meta
// fp_sequence: 6

@rule_pr_jot_resolve_logfmt_on_meta_sql_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_sql_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_on_meta_sql_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);


// pr_jot_resolve_logfmt - on_default - NULL
// fp_sequence: 7

@rule_pr_jot_resolve_logfmt_on_default_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_default_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_default_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);


// pr_jot_resolve_logfmt - on_default - resolve_on_default
// fp_sequence: 7

@rule_pr_jot_resolve_logfmt_on_default_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_pr_jot_resolve_logfmt_on_default_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_pr_jot_resolve_logfmt_on_default_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);


// pr_jot_resolve_logfmt - on_default - sql_resolve_on_default
// fp_sequence: 7

@rule_pr_jot_resolve_logfmt_on_default_sql_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_pr_jot_resolve_logfmt_on_default_sql_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_pr_jot_resolve_logfmt_on_default_sql_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);


// pr_jot_resolve_logfmt - on_other - NULL
// fp_sequence: 8

@rule_pr_jot_resolve_logfmt_on_other_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_other_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);

@rule_pr_jot_resolve_logfmt_on_other_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_other_signatures[on_other_NULL], pl2);


// pr_jot_resolve_logfmt - on_other - resolve_on_other
// fp_sequence: 8

@rule_pr_jot_resolve_logfmt_on_other_resolve_on_other_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_resolve_on_other], pl2);

@rule_pr_jot_resolve_logfmt_on_other_resolve_on_other_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_resolve_on_other], pl2);

@rule_pr_jot_resolve_logfmt_on_other_resolve_on_other_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_resolve_on_other], pl2);


// pr_jot_resolve_logfmt - on_other - sql_resolve_on_other
// fp_sequence: 8

@rule_pr_jot_resolve_logfmt_on_other_sql_resolve_on_other_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_sql_resolve_on_other], pl2);

@rule_pr_jot_resolve_logfmt_on_other_sql_resolve_on_other_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_sql_resolve_on_other], pl2);

@rule_pr_jot_resolve_logfmt_on_other_sql_resolve_on_other_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_other};
identifier FN_NAME = {pr_jot_resolve_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_other_signatures[on_other_sql_resolve_on_other], pl2);


// ============================================================
// Function: pr_jot_resolve_logfmt_id
// ============================================================

// pr_jot_resolve_logfmt_id - on_meta - NULL
// fp_sequence: 8

@rule_pr_jot_resolve_logfmt_id_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_resolve_logfmt_id_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_resolve_logfmt_id_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// pr_jot_resolve_logfmt_id - on_meta - resolve_id_on_meta
// fp_sequence: 8

@rule_pr_jot_resolve_logfmt_id_on_meta_resolve_id_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_id_on_meta_resolve_id_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_pr_jot_resolve_logfmt_id_on_meta_resolve_id_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);


// pr_jot_resolve_logfmt_id - on_default - NULL
// fp_sequence: 9

@rule_pr_jot_resolve_logfmt_id_on_default_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_pr_jot_resolve_logfmt_id_on_default_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_pr_jot_resolve_logfmt_id_on_default_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);


// pr_jot_resolve_logfmt_id - on_default - resolve_id_on_default
// fp_sequence: 9

@rule_pr_jot_resolve_logfmt_id_on_default_resolve_id_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_pr_jot_resolve_logfmt_id_on_default_resolve_id_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_pr_jot_resolve_logfmt_id_on_default_resolve_id_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {pr_jot_resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);


// ============================================================
// Function: pr_jot_scan_logfmt
// ============================================================

// pr_jot_scan_logfmt - on_meta - NULL
// fp_sequence: 5

@rule_pr_jot_scan_logfmt_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_scan_logfmt_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_pr_jot_scan_logfmt_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// pr_jot_scan_logfmt - on_meta - scan_on_meta
// fp_sequence: 5

@rule_pr_jot_scan_logfmt_on_meta_scan_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_pr_jot_scan_logfmt_on_meta_scan_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_pr_jot_scan_logfmt_on_meta_scan_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {pr_jot_scan_logfmt};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);


// ============================================================
// Function: pr_json_array_foreach
// ============================================================

// pr_json_array_foreach - cb - NULL
// fp_sequence: 3

@rule_pr_json_array_foreach_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_json_array_foreach};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_json_array_foreach_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_json_array_foreach};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_json_array_foreach_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_json_array_foreach};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_json_array_foreach - cb - array_item_fail
// fp_sequence: 3

@rule_pr_json_array_foreach_cb_array_item_fail_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {array_item_fail};
identifier FN_NAME = {pr_json_array_foreach};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_fail], pl2);

@rule_pr_json_array_foreach_cb_array_item_fail_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {array_item_fail};
identifier FN_NAME = {pr_json_array_foreach};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_fail], pl2);

@rule_pr_json_array_foreach_cb_array_item_fail_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {array_item_fail};
identifier FN_NAME = {pr_json_array_foreach};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_fail], pl2);


// pr_json_array_foreach - cb - array_item_ok
// fp_sequence: 3

@rule_pr_json_array_foreach_cb_array_item_ok_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {array_item_ok};
identifier FN_NAME = {pr_json_array_foreach};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_ok], pl2);

@rule_pr_json_array_foreach_cb_array_item_ok_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {array_item_ok};
identifier FN_NAME = {pr_json_array_foreach};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_ok], pl2);

@rule_pr_json_array_foreach_cb_array_item_ok_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {array_item_ok};
identifier FN_NAME = {pr_json_array_foreach};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_array_item_ok], pl2);


// ============================================================
// Function: pr_json_object_foreach
// ============================================================

// pr_json_object_foreach - cb - NULL
// fp_sequence: 3

@rule_pr_json_object_foreach_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_json_object_foreach};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_json_object_foreach_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_json_object_foreach};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_json_object_foreach_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_json_object_foreach};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_json_object_foreach - cb - log_fmt_extra_iter_cb
// fp_sequence: 3

@rule_pr_json_object_foreach_cb_log_fmt_extra_iter_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_fmt_extra_iter_cb};
identifier FN_NAME = {pr_json_object_foreach};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_fmt_extra_iter_cb], pl2);

@rule_pr_json_object_foreach_cb_log_fmt_extra_iter_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {log_fmt_extra_iter_cb};
identifier FN_NAME = {pr_json_object_foreach};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_fmt_extra_iter_cb], pl2);

@rule_pr_json_object_foreach_cb_log_fmt_extra_iter_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {log_fmt_extra_iter_cb};
identifier FN_NAME = {pr_json_object_foreach};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_log_fmt_extra_iter_cb], pl2);


// pr_json_object_foreach - cb - object_item_fail
// fp_sequence: 3

@rule_pr_json_object_foreach_cb_object_item_fail_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {object_item_fail};
identifier FN_NAME = {pr_json_object_foreach};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_fail], pl2);

@rule_pr_json_object_foreach_cb_object_item_fail_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {object_item_fail};
identifier FN_NAME = {pr_json_object_foreach};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_fail], pl2);

@rule_pr_json_object_foreach_cb_object_item_fail_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {object_item_fail};
identifier FN_NAME = {pr_json_object_foreach};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_fail], pl2);


// pr_json_object_foreach - cb - object_item_ok
// fp_sequence: 3

@rule_pr_json_object_foreach_cb_object_item_ok_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {object_item_ok};
identifier FN_NAME = {pr_json_object_foreach};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_ok], pl2);

@rule_pr_json_object_foreach_cb_object_item_ok_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {object_item_ok};
identifier FN_NAME = {pr_json_object_foreach};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_ok], pl2);

@rule_pr_json_object_foreach_cb_object_item_ok_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {object_item_ok};
identifier FN_NAME = {pr_json_object_foreach};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_object_item_ok], pl2);


// ============================================================
// Function: pr_pool_debug_memory
// ============================================================

// pr_pool_debug_memory - debugf - NULL
// fp_sequence: 1

@rule_pr_pool_debug_memory_debugf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, debugf_signatures[debugf_NULL], pl2);

@rule_pr_pool_debug_memory_debugf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, debugf_signatures[debugf_NULL], pl2);

@rule_pr_pool_debug_memory_debugf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_pool_debug_memory};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, debugf_signatures[debugf_NULL], pl2);


// pr_pool_debug_memory - debugf - mem_printf
// fp_sequence: 1

@rule_pr_pool_debug_memory_debugf_mem_printf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mem_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_mem_printf], pl2);

@rule_pr_pool_debug_memory_debugf_mem_printf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {mem_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_mem_printf], pl2);

@rule_pr_pool_debug_memory_debugf_mem_printf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {mem_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_mem_printf], pl2);


// pr_pool_debug_memory - debugf - oom_printf
// fp_sequence: 1

@rule_pr_pool_debug_memory_debugf_oom_printf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {oom_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_oom_printf], pl2);

@rule_pr_pool_debug_memory_debugf_oom_printf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {oom_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_oom_printf], pl2);

@rule_pr_pool_debug_memory_debugf_oom_printf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {oom_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_oom_printf], pl2);


// pr_pool_debug_memory - debugf - pool_printf
// fp_sequence: 1

@rule_pr_pool_debug_memory_debugf_pool_printf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_pool_printf], pl2);

@rule_pr_pool_debug_memory_debugf_pool_printf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_pool_printf], pl2);

@rule_pr_pool_debug_memory_debugf_pool_printf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pool_printf};
identifier FN_NAME = {pr_pool_debug_memory};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, debugf_signatures[debugf_pool_printf], pl2);


// ============================================================
// Function: pr_pool_debug_memory2
// ============================================================

// pr_pool_debug_memory2 - cb - NULL
// fp_sequence: 1

@rule_pr_pool_debug_memory2_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_pool_debug_memory2_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_pool_debug_memory2_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_pool_debug_memory2 - cb - pool_visitf
// fp_sequence: 1

@rule_pr_pool_debug_memory2_cb_pool_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_pool_visitf], pl2);

@rule_pr_pool_debug_memory2_cb_pool_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_pool_visitf], pl2);

@rule_pr_pool_debug_memory2_cb_pool_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_pool_visitf], pl2);


// pr_pool_debug_memory2 - cb - test_visitf
// fp_sequence: 1

@rule_pr_pool_debug_memory2_cb_test_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_test_visitf], pl2);

@rule_pr_pool_debug_memory2_cb_test_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_test_visitf], pl2);

@rule_pr_pool_debug_memory2_cb_test_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_test_visitf], pl2);


// pr_pool_debug_memory2 - visit - NULL
// fp_sequence: 1

@rule_pr_pool_debug_memory2_visit_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);

@rule_pr_pool_debug_memory2_visit_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);

@rule_pr_pool_debug_memory2_visit_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);


// pr_pool_debug_memory2 - visit - pool_visitf
// fp_sequence: 1

@rule_pr_pool_debug_memory2_visit_pool_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);

@rule_pr_pool_debug_memory2_visit_pool_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);

@rule_pr_pool_debug_memory2_visit_pool_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);


// pr_pool_debug_memory2 - visit - test_visitf
// fp_sequence: 1

@rule_pr_pool_debug_memory2_visit_test_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);

@rule_pr_pool_debug_memory2_visit_test_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);

@rule_pr_pool_debug_memory2_visit_test_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {pr_pool_debug_memory2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);


// ============================================================
// Function: pr_stash_dump
// ============================================================

// pr_stash_dump - dumpf - stash_dump
// fp_sequence: 1

@rule_pr_stash_dump_dumpf_stash_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_stash_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_stash_dump_dumpf_stash_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_stash_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_pr_stash_dump_dumpf_stash_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {pr_stash_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);


// ============================================================
// Function: pr_table_do
// ============================================================

// pr_table_do - cb - NULL
// fp_sequence: 2

@rule_pr_table_do_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_table_do};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_table_do_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_table_do};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_pr_table_do_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_table_do};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// pr_table_do - cb - do_cb
// fp_sequence: 2

@rule_pr_table_do_cb_do_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {do_cb};
identifier FN_NAME = {pr_table_do};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_cb], pl2);

@rule_pr_table_do_cb_do_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {do_cb};
identifier FN_NAME = {pr_table_do};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_cb], pl2);

@rule_pr_table_do_cb_do_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {do_cb};
identifier FN_NAME = {pr_table_do};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_cb], pl2);


// pr_table_do - cb - do_with_remove_cb
// fp_sequence: 2

@rule_pr_table_do_cb_do_with_remove_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {do_with_remove_cb};
identifier FN_NAME = {pr_table_do};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_with_remove_cb], pl2);

@rule_pr_table_do_cb_do_with_remove_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {do_with_remove_cb};
identifier FN_NAME = {pr_table_do};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_with_remove_cb], pl2);

@rule_pr_table_do_cb_do_with_remove_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {do_with_remove_cb};
identifier FN_NAME = {pr_table_do};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_do_with_remove_cb], pl2);


// pr_table_do - cb - fxp_handle_abort
// fp_sequence: 2

@rule_pr_table_do_cb_fxp_handle_abort_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fxp_handle_abort};
identifier FN_NAME = {pr_table_do};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fxp_handle_abort], pl2);

@rule_pr_table_do_cb_fxp_handle_abort_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fxp_handle_abort};
identifier FN_NAME = {pr_table_do};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fxp_handle_abort], pl2);

@rule_pr_table_do_cb_fxp_handle_abort_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fxp_handle_abort};
identifier FN_NAME = {pr_table_do};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_fxp_handle_abort], pl2);


// pr_table_do - cb - tab_copy_cb
// fp_sequence: 2

@rule_pr_table_do_cb_tab_copy_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tab_copy_cb};
identifier FN_NAME = {pr_table_do};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tab_copy_cb], pl2);

@rule_pr_table_do_cb_tab_copy_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tab_copy_cb};
identifier FN_NAME = {pr_table_do};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tab_copy_cb], pl2);

@rule_pr_table_do_cb_tab_copy_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tab_copy_cb};
identifier FN_NAME = {pr_table_do};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_tab_copy_cb], pl2);


// ============================================================
// Function: pr_table_dump
// ============================================================

// pr_table_dump - dumpf - NULL
// fp_sequence: 1

@rule_pr_table_dump_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {pr_table_dump};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_table_dump_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {pr_table_dump};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_pr_table_dump_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {pr_table_dump};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// pr_table_dump - dumpf - statcache_dumpf
// fp_sequence: 1

@rule_pr_table_dump_dumpf_statcache_dumpf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_table_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_table_dump_dumpf_statcache_dumpf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_table_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_pr_table_dump_dumpf_statcache_dumpf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {pr_table_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);


// pr_table_dump - dumpf - table_dump
// fp_sequence: 1

@rule_pr_table_dump_dumpf_table_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_table_dump};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_table_dump_dumpf_table_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_table_dump};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_pr_table_dump_dumpf_table_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {pr_table_dump};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);


// ============================================================
// Function: register_cleanup
// ============================================================

// register_cleanup - plain_cleanup_cb - NULL
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, plain_cleanup_cb_signatures[plain_cleanup_cb_NULL], pl2);

@rule_register_cleanup_plain_cleanup_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, plain_cleanup_cb_signatures[plain_cleanup_cb_NULL], pl2);

@rule_register_cleanup_plain_cleanup_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, plain_cleanup_cb_signatures[plain_cleanup_cb_NULL], pl2);


// register_cleanup - plain_cleanup_cb - conn_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_conn_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_conn_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_conn_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_conn_cleanup_cb], pl2);


// register_cleanup - plain_cleanup_cb - ctrls_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_ctrls_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_ctrls_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_ctrls_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_ctrls_cleanup_cb], pl2);


// register_cleanup - plain_cleanup_cb - event_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_event_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_event_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_event_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_event_cleanup_cb], pl2);


// register_cleanup - plain_cleanup_cb - server_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_server_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_server_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup_plain_cleanup_cb_server_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_server_cleanup_cb], pl2);


// register_cleanup - plain_cleanup_cb - sess_redis_cleanup
// fp_sequence: 3

@rule_register_cleanup_plain_cleanup_cb_sess_redis_cleanup_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup_plain_cleanup_cb_sess_redis_cleanup_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup_plain_cleanup_cb_sess_redis_cleanup_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, plain_cleanup_cb_signatures[plain_cleanup_cb_sess_redis_cleanup], pl2);


// register_cleanup - child_cleanup_cb - NULL
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, child_cleanup_cb_signatures[child_cleanup_cb_NULL], pl2);

@rule_register_cleanup_child_cleanup_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, child_cleanup_cb_signatures[child_cleanup_cb_NULL], pl2);

@rule_register_cleanup_child_cleanup_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, child_cleanup_cb_signatures[child_cleanup_cb_NULL], pl2);


// register_cleanup - child_cleanup_cb - conn_cleanup_cb
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_conn_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_conn_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_conn_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_conn_cleanup_cb], pl2);


// register_cleanup - child_cleanup_cb - ctrls_cleanup_cb
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_ctrls_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_ctrls_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_ctrls_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_ctrls_cleanup_cb], pl2);


// register_cleanup - child_cleanup_cb - event_cleanup_cb
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_event_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_event_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_event_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_event_cleanup_cb], pl2);


// register_cleanup - child_cleanup_cb - server_cleanup_cb
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_server_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_server_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup_child_cleanup_cb_server_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_server_cleanup_cb], pl2);


// register_cleanup - child_cleanup_cb - sess_redis_cleanup
// fp_sequence: 4

@rule_register_cleanup_child_cleanup_cb_sess_redis_cleanup_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup_child_cleanup_cb_sess_redis_cleanup_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup_child_cleanup_cb_sess_redis_cleanup_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, child_cleanup_cb_signatures[child_cleanup_cb_sess_redis_cleanup], pl2);


// ============================================================
// Function: register_cleanup2
// ============================================================

// register_cleanup2 - cleanup_cb - NULL
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);

@rule_register_cleanup2_cleanup_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);

@rule_register_cleanup2_cleanup_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);


// register_cleanup2 - cleanup_cb - conn_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_conn_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_conn_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_conn_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);


// register_cleanup2 - cleanup_cb - ctrls_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_ctrls_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_ctrls_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_ctrls_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);


// register_cleanup2 - cleanup_cb - event_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_event_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_event_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_event_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);


// register_cleanup2 - cleanup_cb - server_cleanup_cb
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_server_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_server_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);

@rule_register_cleanup2_cleanup_cb_server_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);


// register_cleanup2 - cleanup_cb - sess_redis_cleanup
// fp_sequence: 3

@rule_register_cleanup2_cleanup_cb_sess_redis_cleanup_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup2_cleanup_cb_sess_redis_cleanup_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);

@rule_register_cleanup2_cleanup_cb_sess_redis_cleanup_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {register_cleanup2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);


// ============================================================
// Function: resolve_logfmt_id
// ============================================================

// resolve_logfmt_id - on_meta - NULL
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_resolve_logfmt_id_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_resolve_logfmt_id_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// resolve_logfmt_id - on_meta - long_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_long_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_long_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_long_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);


// resolve_logfmt_id - on_meta - parse_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);


// resolve_logfmt_id - on_meta - pr_jot_on_json
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_pr_jot_on_json_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_resolve_logfmt_id_on_meta_pr_jot_on_json_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_resolve_logfmt_id_on_meta_pr_jot_on_json_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);


// resolve_logfmt_id - on_meta - pr_jot_parse_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_pr_jot_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_pr_jot_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_pr_jot_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);


// resolve_logfmt_id - on_meta - resolve_id_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_resolve_id_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_resolve_id_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_resolve_id_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);


// resolve_logfmt_id - on_meta - resolve_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);


// resolve_logfmt_id - on_meta - scan_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_scan_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_scan_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_scan_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);


// resolve_logfmt_id - on_meta - showinfo_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_showinfo_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_showinfo_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_showinfo_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);


// resolve_logfmt_id - on_meta - sql_resolve_on_meta
// fp_sequence: 6

@rule_resolve_logfmt_id_on_meta_sql_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_sql_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_resolve_logfmt_id_on_meta_sql_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);


// resolve_logfmt_id - on_default - NULL
// fp_sequence: 7

@rule_resolve_logfmt_id_on_default_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_resolve_logfmt_id_on_default_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_resolve_logfmt_id_on_default_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);


// resolve_logfmt_id - on_default - resolve_id_on_default
// fp_sequence: 7

@rule_resolve_logfmt_id_on_default_resolve_id_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_resolve_logfmt_id_on_default_resolve_id_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_resolve_logfmt_id_on_default_resolve_id_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);


// resolve_logfmt_id - on_default - resolve_on_default
// fp_sequence: 7

@rule_resolve_logfmt_id_on_default_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_resolve_logfmt_id_on_default_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_resolve_logfmt_id_on_default_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);


// resolve_logfmt_id - on_default - sql_resolve_on_default
// fp_sequence: 7

@rule_resolve_logfmt_id_on_default_sql_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_resolve_logfmt_id_on_default_sql_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_resolve_logfmt_id_on_default_sql_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_logfmt_id};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);


// ============================================================
// Function: resolve_meta
// ============================================================

// resolve_meta - on_meta - NULL
// fp_sequence: 5

@rule_resolve_meta_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_resolve_meta_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_resolve_meta_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// resolve_meta - on_meta - long_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_long_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_resolve_meta_on_meta_long_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_resolve_meta_on_meta_long_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);


// resolve_meta - on_meta - parse_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_resolve_meta_on_meta_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_resolve_meta_on_meta_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);


// resolve_meta - on_meta - pr_jot_on_json
// fp_sequence: 5

@rule_resolve_meta_on_meta_pr_jot_on_json_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_resolve_meta_on_meta_pr_jot_on_json_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_resolve_meta_on_meta_pr_jot_on_json_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);


// resolve_meta - on_meta - pr_jot_parse_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_pr_jot_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_resolve_meta_on_meta_pr_jot_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_resolve_meta_on_meta_pr_jot_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);


// resolve_meta - on_meta - resolve_id_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_resolve_id_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_resolve_meta_on_meta_resolve_id_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_resolve_meta_on_meta_resolve_id_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);


// resolve_meta - on_meta - resolve_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_resolve_meta_on_meta_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_resolve_meta_on_meta_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);


// resolve_meta - on_meta - scan_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_scan_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_resolve_meta_on_meta_scan_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_resolve_meta_on_meta_scan_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);


// resolve_meta - on_meta - showinfo_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_showinfo_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_resolve_meta_on_meta_showinfo_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_resolve_meta_on_meta_showinfo_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);


// resolve_meta - on_meta - sql_resolve_on_meta
// fp_sequence: 5

@rule_resolve_meta_on_meta_sql_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_resolve_meta_on_meta_sql_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_resolve_meta_on_meta_sql_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);


// resolve_meta - on_default - NULL
// fp_sequence: 6

@rule_resolve_meta_on_default_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_resolve_meta_on_default_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);

@rule_resolve_meta_on_default_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_default_signatures[on_default_NULL], pl2);


// resolve_meta - on_default - resolve_id_on_default
// fp_sequence: 6

@rule_resolve_meta_on_default_resolve_id_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_resolve_meta_on_default_resolve_id_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);

@rule_resolve_meta_on_default_resolve_id_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_default};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_id_on_default], pl2);


// resolve_meta - on_default - resolve_on_default
// fp_sequence: 6

@rule_resolve_meta_on_default_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_resolve_meta_on_default_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);

@rule_resolve_meta_on_default_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_resolve_on_default], pl2);


// resolve_meta - on_default - sql_resolve_on_default
// fp_sequence: 6

@rule_resolve_meta_on_default_sql_resolve_on_default_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_resolve_meta_on_default_sql_resolve_on_default_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);

@rule_resolve_meta_on_default_sql_resolve_on_default_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_default};
identifier FN_NAME = {resolve_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_default_signatures[on_default_sql_resolve_on_default], pl2);


// ============================================================
// Function: scan_meta
// ============================================================

// scan_meta - on_meta - NULL
// fp_sequence: 4

@rule_scan_meta_on_meta_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_scan_meta_on_meta_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);

@rule_scan_meta_on_meta_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, on_meta_signatures[on_meta_NULL], pl2);


// scan_meta - on_meta - long_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_long_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_scan_meta_on_meta_long_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);

@rule_scan_meta_on_meta_long_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {long_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_long_on_meta], pl2);


// scan_meta - on_meta - parse_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_scan_meta_on_meta_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);

@rule_scan_meta_on_meta_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_parse_on_meta], pl2);


// scan_meta - on_meta - pr_jot_on_json
// fp_sequence: 4

@rule_scan_meta_on_meta_pr_jot_on_json_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_scan_meta_on_meta_pr_jot_on_json_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);

@rule_scan_meta_on_meta_pr_jot_on_json_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_on_json};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_on_json], pl2);


// scan_meta - on_meta - pr_jot_parse_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_pr_jot_parse_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_scan_meta_on_meta_pr_jot_parse_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);

@rule_scan_meta_on_meta_pr_jot_parse_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pr_jot_parse_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_pr_jot_parse_on_meta], pl2);


// scan_meta - on_meta - resolve_id_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_resolve_id_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_scan_meta_on_meta_resolve_id_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);

@rule_scan_meta_on_meta_resolve_id_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_id_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_id_on_meta], pl2);


// scan_meta - on_meta - resolve_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_scan_meta_on_meta_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);

@rule_scan_meta_on_meta_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_resolve_on_meta], pl2);


// scan_meta - on_meta - scan_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_scan_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_scan_meta_on_meta_scan_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);

@rule_scan_meta_on_meta_scan_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {scan_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_scan_on_meta], pl2);


// scan_meta - on_meta - showinfo_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_showinfo_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_scan_meta_on_meta_showinfo_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);

@rule_scan_meta_on_meta_showinfo_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {showinfo_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_showinfo_on_meta], pl2);


// scan_meta - on_meta - sql_resolve_on_meta
// fp_sequence: 4

@rule_scan_meta_on_meta_sql_resolve_on_meta_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_scan_meta_on_meta_sql_resolve_on_meta_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);

@rule_scan_meta_on_meta_sql_resolve_on_meta_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_resolve_on_meta};
identifier FN_NAME = {scan_meta};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, on_meta_signatures[on_meta_sql_resolve_on_meta], pl2);


// ============================================================
// Function: schedule
// ============================================================

// schedule - cb - NULL
// fp_sequence: 1

@rule_schedule_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_schedule_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);

@rule_schedule_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cb_signatures[cb_NULL], pl2);


// schedule - cb - restart_daemon
// fp_sequence: 1

@rule_schedule_cb_restart_daemon_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_restart_daemon], pl2);

@rule_schedule_cb_restart_daemon_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_restart_daemon], pl2);

@rule_schedule_cb_restart_daemon_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_restart_daemon], pl2);


// schedule - cb - schedule_cb
// fp_sequence: 1

@rule_schedule_cb_schedule_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_schedule_cb], pl2);

@rule_schedule_cb_schedule_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_schedule_cb], pl2);

@rule_schedule_cb_schedule_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_schedule_cb], pl2);


// schedule - cb - shutdown_end_session
// fp_sequence: 1

@rule_schedule_cb_shutdown_end_session_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shutdown_end_session], pl2);

@rule_schedule_cb_shutdown_end_session_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shutdown_end_session], pl2);

@rule_schedule_cb_shutdown_end_session_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cb_signatures[cb_shutdown_end_session], pl2);


// schedule - f - NULL
// fp_sequence: 1

@rule_schedule_f_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, f_signatures[f_NULL], pl2);

@rule_schedule_f_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, f_signatures[f_NULL], pl2);

@rule_schedule_f_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, f_signatures[f_NULL], pl2);


// schedule - f - restart_daemon
// fp_sequence: 1

@rule_schedule_f_restart_daemon_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_restart_daemon], pl2);

@rule_schedule_f_restart_daemon_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_restart_daemon], pl2);

@rule_schedule_f_restart_daemon_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {restart_daemon};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_restart_daemon], pl2);


// schedule - f - schedule_cb
// fp_sequence: 1

@rule_schedule_f_schedule_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_schedule_cb], pl2);

@rule_schedule_f_schedule_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_schedule_cb], pl2);

@rule_schedule_f_schedule_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {schedule_cb};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_schedule_cb], pl2);


// schedule - f - shutdown_end_session
// fp_sequence: 1

@rule_schedule_f_shutdown_end_session_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_shutdown_end_session], pl2);

@rule_schedule_f_shutdown_end_session_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_shutdown_end_session], pl2);

@rule_schedule_f_shutdown_end_session_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shutdown_end_session};
identifier FN_NAME = {schedule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, f_signatures[f_shutdown_end_session], pl2);


// ============================================================
// Function: sess_cache_status
// ============================================================

// ============================================================
// Function: set_auth_check
// ============================================================

// set_auth_check - chk - NULL
// fp_sequence: 1

@rule_set_auth_check_chk_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, chk_signatures[chk_NULL], pl2);

@rule_set_auth_check_chk_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, chk_signatures[chk_NULL], pl2);

@rule_set_auth_check_chk_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, chk_signatures[chk_NULL], pl2);


// set_auth_check - chk - auth_cmd_chk_cb
// fp_sequence: 1

@rule_set_auth_check_chk_auth_cmd_chk_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_auth_cmd_chk_cb], pl2);

@rule_set_auth_check_chk_auth_cmd_chk_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_auth_cmd_chk_cb], pl2);

@rule_set_auth_check_chk_auth_cmd_chk_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_auth_cmd_chk_cb], pl2);


// set_auth_check - chk - sftp_have_authenticated
// fp_sequence: 1

@rule_set_auth_check_chk_sftp_have_authenticated_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_sftp_have_authenticated], pl2);

@rule_set_auth_check_chk_sftp_have_authenticated_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_sftp_have_authenticated], pl2);

@rule_set_auth_check_chk_sftp_have_authenticated_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, chk_signatures[chk_sftp_have_authenticated], pl2);


// set_auth_check - ck - NULL
// fp_sequence: 1

@rule_set_auth_check_ck_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, ck_signatures[ck_NULL], pl2);

@rule_set_auth_check_ck_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, ck_signatures[ck_NULL], pl2);

@rule_set_auth_check_ck_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, ck_signatures[ck_NULL], pl2);


// set_auth_check - ck - auth_cmd_chk_cb
// fp_sequence: 1

@rule_set_auth_check_ck_auth_cmd_chk_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_auth_cmd_chk_cb], pl2);

@rule_set_auth_check_ck_auth_cmd_chk_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_auth_cmd_chk_cb], pl2);

@rule_set_auth_check_ck_auth_cmd_chk_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {auth_cmd_chk_cb};
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_auth_cmd_chk_cb], pl2);


// set_auth_check - ck - sftp_have_authenticated
// fp_sequence: 1

@rule_set_auth_check_ck_sftp_have_authenticated_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_sftp_have_authenticated], pl2);

@rule_set_auth_check_ck_sftp_have_authenticated_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_sftp_have_authenticated], pl2);

@rule_set_auth_check_ck_sftp_have_authenticated_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sftp_have_authenticated};
identifier FN_NAME = {set_auth_check};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, ck_signatures[ck_sftp_have_authenticated], pl2);


// ============================================================
// Function: sftp_auth_set_success_handler
// ============================================================

// sftp_auth_set_success_handler - handler - setup_env
// fp_sequence: 1

@rule_sftp_auth_set_success_handler_handler_setup_env_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {setup_env};
identifier FN_NAME = {sftp_auth_set_success_handler};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_setup_env], pl2);

@rule_sftp_auth_set_success_handler_handler_setup_env_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {setup_env};
identifier FN_NAME = {sftp_auth_set_success_handler};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_setup_env], pl2);

@rule_sftp_auth_set_success_handler_handler_setup_env_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {setup_env};
identifier FN_NAME = {sftp_auth_set_success_handler};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, handler_signatures[handler_setup_env], pl2);


// ============================================================
// Function: sftp_channel_register_exec_handler
// ============================================================

// ============================================================
// Function: sftp_ssh2_packet_set_handler
// ============================================================

// sftp_ssh2_packet_set_handler - handler - NULL
// fp_sequence: 1

@rule_sftp_ssh2_packet_set_handler_handler_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sftp_ssh2_packet_set_handler};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);

@rule_sftp_ssh2_packet_set_handler_handler_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {sftp_ssh2_packet_set_handler};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);

@rule_sftp_ssh2_packet_set_handler_handler_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sftp_ssh2_packet_set_handler};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, handler_signatures[handler_NULL], pl2);


// ============================================================
// Function: slist_delete
// ============================================================

// ============================================================
// Function: stash_dump_syms
// ============================================================

// stash_dump_syms - dumpf - NULL
// fp_sequence: 3

@rule_stash_dump_syms_dumpf_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {stash_dump_syms};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_stash_dump_syms_dumpf_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {stash_dump_syms};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);

@rule_stash_dump_syms_dumpf_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {stash_dump_syms};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, dumpf_signatures[dumpf_NULL], pl2);


// stash_dump_syms - dumpf - event_dump
// fp_sequence: 3

@rule_stash_dump_syms_dumpf_event_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_stash_dump_syms_dumpf_event_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);

@rule_stash_dump_syms_dumpf_event_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_event_dump], pl2);


// stash_dump_syms - dumpf - stash_dump
// fp_sequence: 3

@rule_stash_dump_syms_dumpf_stash_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_stash_dump_syms_dumpf_stash_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);

@rule_stash_dump_syms_dumpf_stash_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stash_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_stash_dump], pl2);


// stash_dump_syms - dumpf - statcache_dumpf
// fp_sequence: 3

@rule_stash_dump_syms_dumpf_statcache_dumpf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {stash_dump_syms};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_stash_dump_syms_dumpf_statcache_dumpf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {stash_dump_syms};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);

@rule_stash_dump_syms_dumpf_statcache_dumpf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statcache_dumpf};
identifier FN_NAME = {stash_dump_syms};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_statcache_dumpf], pl2);


// stash_dump_syms - dumpf - table_dump
// fp_sequence: 3

@rule_stash_dump_syms_dumpf_table_dump_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_stash_dump_syms_dumpf_table_dump_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);

@rule_stash_dump_syms_dumpf_table_dump_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {table_dump};
identifier FN_NAME = {stash_dump_syms};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, dumpf_signatures[dumpf_table_dump], pl2);


// ============================================================
// Function: unregister_cleanup
// ============================================================

// unregister_cleanup - cleanup_cb - NULL
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);

@rule_unregister_cleanup_cleanup_cb_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);

@rule_unregister_cleanup_cleanup_cb_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, cleanup_cb_signatures[cleanup_cb_NULL], pl2);


// unregister_cleanup - cleanup_cb - conn_cleanup_cb
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_conn_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_conn_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_conn_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {conn_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_conn_cleanup_cb], pl2);


// unregister_cleanup - cleanup_cb - ctrls_cleanup_cb
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_ctrls_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_ctrls_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_ctrls_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ctrls_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_ctrls_cleanup_cb], pl2);


// unregister_cleanup - cleanup_cb - event_cleanup_cb
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_event_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_event_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_event_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {event_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_event_cleanup_cb], pl2);


// unregister_cleanup - cleanup_cb - server_cleanup_cb
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_server_cleanup_cb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_server_cleanup_cb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);

@rule_unregister_cleanup_cleanup_cb_server_cleanup_cb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {server_cleanup_cb};
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_server_cleanup_cb], pl2);


// unregister_cleanup - cleanup_cb - sess_redis_cleanup
// fp_sequence: 3

@rule_unregister_cleanup_cleanup_cb_sess_redis_cleanup_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {unregister_cleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);

@rule_unregister_cleanup_cleanup_cb_sess_redis_cleanup_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {unregister_cleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);

@rule_unregister_cleanup_cleanup_cb_sess_redis_cleanup_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sess_redis_cleanup};
identifier FN_NAME = {unregister_cleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, cleanup_cb_signatures[cleanup_cb_sess_redis_cleanup], pl2);


// ============================================================
// Function: visit_pools
// ============================================================

// visit_pools - visit - NULL
// fp_sequence: 3

@rule_visit_pools_visit_NULL_standalone@
expression list pl1, pl2;
identifier FN_NAME = {visit_pools};
@@
- FN_NAME(pl1, NULL, pl2);
+ FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);

@rule_visit_pools_visit_NULL_return@
expression list pl1, pl2;
identifier FN_NAME = {visit_pools};
@@
- return FN_NAME(pl1, NULL, pl2);
+ return FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);

@rule_visit_pools_visit_NULL_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {visit_pools};
@@
- rc = FN_NAME(pl1, NULL, pl2);
+ rc = FN_NAME(pl1, NULL, visit_signatures[visit_NULL], pl2);


// visit_pools - visit - pool_visitf
// fp_sequence: 3

@rule_visit_pools_visit_pool_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {visit_pools};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);

@rule_visit_pools_visit_pool_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {visit_pools};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);

@rule_visit_pools_visit_pool_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pool_visitf};
identifier FN_NAME = {visit_pools};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_pool_visitf], pl2);


// visit_pools - visit - test_visitf
// fp_sequence: 3

@rule_visit_pools_visit_test_visitf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {visit_pools};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);

@rule_visit_pools_visit_test_visitf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {visit_pools};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);

@rule_visit_pools_visit_test_visitf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {test_visitf};
identifier FN_NAME = {visit_pools};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, visit_signatures[visit_test_visitf], pl2);


// ============================================================
// Function: wrap2_match_list
// ============================================================

// wrap2_match_list - match_token - wrap2_match_client
// fp_sequence: 3

@rule_wrap2_match_list_match_token_wrap2_match_client_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_match_client};
identifier FN_NAME = {wrap2_match_list};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_client], pl2);

@rule_wrap2_match_list_match_token_wrap2_match_client_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_match_client};
identifier FN_NAME = {wrap2_match_list};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_client], pl2);

@rule_wrap2_match_list_match_token_wrap2_match_client_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_match_client};
identifier FN_NAME = {wrap2_match_list};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_client], pl2);


// wrap2_match_list - match_token - wrap2_match_daemon
// fp_sequence: 3

@rule_wrap2_match_list_match_token_wrap2_match_daemon_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_match_daemon};
identifier FN_NAME = {wrap2_match_list};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_daemon], pl2);

@rule_wrap2_match_list_match_token_wrap2_match_daemon_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {wrap2_match_daemon};
identifier FN_NAME = {wrap2_match_list};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_daemon], pl2);

@rule_wrap2_match_list_match_token_wrap2_match_daemon_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {wrap2_match_daemon};
identifier FN_NAME = {wrap2_match_list};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, match_token_signatures[match_token_wrap2_match_daemon], pl2);


