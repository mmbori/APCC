// Auto-generated Coccinelle script
// Adds signature assignments for function pointer assignments
// Generates rules for all (member, parameter) combinations
//
// Pattern: E1.xFunc = func; -> E1.xFunc_signature = func_signature;
//          E1->xFunc = func; -> E1->xFunc_signature = func_signature;

// ============================================================
// Function Pointer Signature Rules
// Parameters: 34, Members: 34
// ============================================================

// Parameter: cb
@add_sig_cb@
expression E1;
identifier FP = {cb};
@@
(
E1.FP = FP;
+ E1.cb_signature = cb_signature;
|
E1->FP = FP;
+ E1->cb_signature = cb_signature;
)

// Parameter: child_cleanup_cb
@add_sig_child_cleanup_cb@
expression E1;
identifier FP = {child_cleanup_cb};
@@
(
E1.FP = FP;
+ E1.child_cleanup_cb_signature = child_cleanup_cb_signature;
|
E1->FP = FP;
+ E1->child_cleanup_cb_signature = child_cleanup_cb_signature;
)

// Parameter: chk
@add_sig_chk@
expression E1;
identifier FP = {chk};
@@
(
E1.FP = FP;
+ E1.chk_signature = chk_signature;
|
E1->FP = FP;
+ E1->chk_signature = chk_signature;
)

// Parameter: ck
@add_sig_ck@
expression E1;
identifier FP = {ck};
@@
(
E1.FP = FP;
+ E1.ck_signature = ck_signature;
|
E1->FP = FP;
+ E1->ck_signature = ck_signature;
)

// Parameter: cleanup_cb
@add_sig_cleanup_cb@
expression E1;
identifier FP = {cleanup_cb};
@@
(
E1.FP = FP;
+ E1.cleanup_cb_signature = cleanup_cb_signature;
|
E1->FP = FP;
+ E1->cleanup_cb_signature = cleanup_cb_signature;
)

// Parameter: ctrls_cb
@add_sig_ctrls_cb@
expression E1;
identifier FP = {ctrls_cb};
@@
(
E1.FP = FP;
+ E1.ctrls_cb_signature = ctrls_cb_signature;
|
E1->FP = FP;
+ E1->ctrls_cb_signature = ctrls_cb_signature;
)

// Parameter: debugf
@add_sig_debugf@
expression E1;
identifier FP = {debugf};
@@
(
E1.FP = FP;
+ E1.debugf_signature = debugf_signature;
|
E1->FP = FP;
+ E1->debugf_signature = debugf_signature;
)

// Parameter: delete_fct
@add_sig_delete_fct@
expression E1;
identifier FP = {delete_fct};
@@
(
E1.FP = FP;
+ E1.delete_fct_signature = delete_fct_signature;
|
E1->FP = FP;
+ E1->delete_fct_signature = delete_fct_signature;
)

// Parameter: dumpf
@add_sig_dumpf@
expression E1;
identifier FP = {dumpf};
@@
(
E1.FP = FP;
+ E1.dumpf_signature = dumpf_signature;
|
E1->FP = FP;
+ E1->dumpf_signature = dumpf_signature;
)

// Parameter: errfunc
@add_sig_errfunc@
expression E1;
identifier FP = {errfunc};
@@
(
E1.FP = FP;
+ E1.errfunc_signature = errfunc_signature;
|
E1->FP = FP;
+ E1->errfunc_signature = errfunc_signature;
)

// Parameter: f
@add_sig_f@
expression E1;
identifier FP = {f};
@@
(
E1.FP = FP;
+ E1.f_signature = f_signature;
|
E1->FP = FP;
+ E1->f_signature = f_signature;
)

// Parameter: finish
@add_sig_finish@
expression E1;
identifier FP = {finish};
@@
(
E1.FP = FP;
+ E1.finish_signature = finish_signature;
|
E1->FP = FP;
+ E1->finish_signature = finish_signature;
)

// Parameter: finish_chan
@add_sig_finish_chan@
expression E1;
identifier FP = {finish_chan};
@@
(
E1.FP = FP;
+ E1.finish_chan_signature = finish_chan_signature;
|
E1->FP = FP;
+ E1->finish_chan_signature = finish_chan_signature;
)

// Parameter: func
@add_sig_func@
expression E1;
identifier FP = {func};
@@
(
E1.FP = FP;
+ E1.func_signature = func_signature;
|
E1->FP = FP;
+ E1->func_signature = func_signature;
)

// Parameter: handle_packet
@add_sig_handle_packet@
expression E1;
identifier FP = {handle_packet};
@@
(
E1.FP = FP;
+ E1.handle_packet_signature = handle_packet_signature;
|
E1->FP = FP;
+ E1->handle_packet_signature = handle_packet_signature;
)

// Parameter: handle_pkt
@add_sig_handle_pkt@
expression E1;
identifier FP = {handle_pkt};
@@
(
E1.FP = FP;
+ E1.handle_pkt_signature = handle_pkt_signature;
|
E1->FP = FP;
+ E1->handle_pkt_signature = handle_pkt_signature;
)

// Parameter: handler
@add_sig_handler@
expression E1;
identifier FP = {handler};
@@
(
E1.FP = FP;
+ E1.handler_signature = handler_signature;
|
E1->FP = FP;
+ E1->handler_signature = handler_signature;
)

// Parameter: listf
@add_sig_listf@
expression E1;
identifier FP = {listf};
@@
(
E1.FP = FP;
+ E1.listf_signature = listf_signature;
|
E1->FP = FP;
+ E1->listf_signature = listf_signature;
)

// Parameter: match_token
@add_sig_match_token@
expression E1;
identifier FP = {match_token};
@@
(
E1.FP = FP;
+ E1.match_token_signature = match_token_signature;
|
E1->FP = FP;
+ E1->match_token_signature = match_token_signature;
)

// Parameter: on_default
@add_sig_on_default@
expression E1;
identifier FP = {on_default};
@@
(
E1.FP = FP;
+ E1.on_default_signature = on_default_signature;
|
E1->FP = FP;
+ E1->on_default_signature = on_default_signature;
)

// Parameter: on_meta
@add_sig_on_meta@
expression E1;
identifier FP = {on_meta};
@@
(
E1.FP = FP;
+ E1.on_meta_signature = on_meta_signature;
|
E1->FP = FP;
+ E1->on_meta_signature = on_meta_signature;
)

// Parameter: on_other
@add_sig_on_other@
expression E1;
identifier FP = {on_other};
@@
(
E1.FP = FP;
+ E1.on_other_signature = on_other_signature;
|
E1->FP = FP;
+ E1->on_other_signature = on_other_signature;
)

// Parameter: on_unknown
@add_sig_on_unknown@
expression E1;
identifier FP = {on_unknown};
@@
(
E1.FP = FP;
+ E1.on_unknown_signature = on_unknown_signature;
|
E1->FP = FP;
+ E1->on_unknown_signature = on_unknown_signature;
)

// Parameter: oom
@add_sig_oom@
expression E1;
identifier FP = {oom};
@@
(
E1.FP = FP;
+ E1.oom_signature = oom_signature;
|
E1->FP = FP;
+ E1->oom_signature = oom_signature;
)

// Parameter: plain_cleanup_cb
@add_sig_plain_cleanup_cb@
expression E1;
identifier FP = {plain_cleanup_cb};
@@
(
E1.FP = FP;
+ E1.plain_cleanup_cb_signature = plain_cleanup_cb_signature;
|
E1->FP = FP;
+ E1->plain_cleanup_cb_signature = plain_cleanup_cb_signature;
)

// Parameter: postopen
@add_sig_postopen@
expression E1;
identifier FP = {postopen};
@@
(
E1.FP = FP;
+ E1.postopen_signature = postopen_signature;
|
E1->FP = FP;
+ E1->postopen_signature = postopen_signature;
)

// Parameter: postopen_chan
@add_sig_postopen_chan@
expression E1;
identifier FP = {postopen_chan};
@@
(
E1.FP = FP;
+ E1.postopen_chan_signature = postopen_chan_signature;
|
E1->FP = FP;
+ E1->postopen_chan_signature = postopen_chan_signature;
)

// Parameter: prep_chan
@add_sig_prep_chan@
expression E1;
identifier FP = {prep_chan};
@@
(
E1.FP = FP;
+ E1.prep_chan_signature = prep_chan_signature;
|
E1->FP = FP;
+ E1->prep_chan_signature = prep_chan_signature;
)

// Parameter: prepare
@add_sig_prepare@
expression E1;
identifier FP = {prepare};
@@
(
E1.FP = FP;
+ E1.prepare_signature = prepare_signature;
|
E1->FP = FP;
+ E1->prepare_signature = prepare_signature;
)

// Parameter: progress_cb
@add_sig_progress_cb@
expression E1;
identifier FP = {progress_cb};
@@
(
E1.FP = FP;
+ E1.progress_cb_signature = progress_cb_signature;
|
E1->FP = FP;
+ E1->progress_cb_signature = progress_cb_signature;
)

// Parameter: set_params
@add_sig_set_params@
expression E1;
identifier FP = {set_params};
@@
(
E1.FP = FP;
+ E1.set_params_signature = set_params_signature;
|
E1->FP = FP;
+ E1->set_params_signature = set_params_signature;
)

// Parameter: statusf
@add_sig_statusf@
expression E1;
identifier FP = {statusf};
@@
(
E1.FP = FP;
+ E1.statusf_signature = statusf_signature;
|
E1->FP = FP;
+ E1->statusf_signature = statusf_signature;
)

// Parameter: visit
@add_sig_visit@
expression E1;
identifier FP = {visit};
@@
(
E1.FP = FP;
+ E1.visit_signature = visit_signature;
|
E1->FP = FP;
+ E1->visit_signature = visit_signature;
)

// Parameter: write_data
@add_sig_write_data@
expression E1;
identifier FP = {write_data};
@@
(
E1.FP = FP;
+ E1.write_data_signature = write_data_signature;
|
E1->FP = FP;
+ E1->write_data_signature = write_data_signature;
)

