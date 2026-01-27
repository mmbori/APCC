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

// Rules for trace (1 valid functions, 0 excluded)
// Rule: .trace = hook ==> .trace_signature = trace_signatures[trace_hook_enum];
@transform_trace_hook@
expression E;
identifier FP_NAME = trace;
identifier FUNC_NAME = hook;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.trace_signature = trace_signatures[trace_hook_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.trace_signature = trace_signatures[trace_hook_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->trace_signature = trace_signatures[trace_hook_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->trace_signature = trace_signatures[trace_hook_enum];
)

// Rules for xBusy (3 valid functions, 1 excluded)
// Rule: .xBusy = 0 ==> .xBusy_signature = xBusy_signatures[xBusy_0_enum];
@transform_xBusy_0@
expression E;
identifier FP_NAME = xBusy;
@@
(
E.FP_NAME = 0;
+ E.xBusy_signature = xBusy_signatures[xBusy_0_enum];
|
E->FP_NAME = 0;
+ E->xBusy_signature = xBusy_signatures[xBusy_0_enum];
)

// Rule: .xBusy = btreeInvokeBusyHandler ==> .xBusy_signature = xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum];
@transform_xBusy_btreeInvokeBusyHandler@
expression E;
identifier FP_NAME = xBusy;
identifier FUNC_NAME = btreeInvokeBusyHandler;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xBusy_signature = xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xBusy_signature = xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xBusy_signature = xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xBusy_signature = xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum];
)

// Rule: .xBusy = sqliteDefaultBusyCallback ==> .xBusy_signature = xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum];
@transform_xBusy_sqliteDefaultBusyCallback@
expression E;
identifier FP_NAME = xBusy;
identifier FUNC_NAME = sqliteDefaultBusyCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xBusy_signature = xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xBusy_signature = xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xBusy_signature = xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xBusy_signature = xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum];
)

// Rules for xBusyHandler (3 valid functions, 1 excluded)
// Rule: .xBusyHandler = 0 ==> .xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_0_enum];
@transform_xBusyHandler_0@
expression E;
identifier FP_NAME = xBusyHandler;
@@
(
E.FP_NAME = 0;
+ E.xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_0_enum];
|
E->FP_NAME = 0;
+ E->xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_0_enum];
)

// Rule: .xBusyHandler = btreeInvokeBusyHandler ==> .xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum];
@transform_xBusyHandler_btreeInvokeBusyHandler@
expression E;
identifier FP_NAME = xBusyHandler;
identifier FUNC_NAME = btreeInvokeBusyHandler;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum];
)

// Rule: .xBusyHandler = sqliteDefaultBusyCallback ==> .xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_sqliteDefaultBusyCallback_enum];
@transform_xBusyHandler_sqliteDefaultBusyCallback@
expression E;
identifier FP_NAME = xBusyHandler;
identifier FUNC_NAME = sqliteDefaultBusyCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_sqliteDefaultBusyCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_sqliteDefaultBusyCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_sqliteDefaultBusyCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xBusyHandler_signature = xBusyHandler_signatures[xBusyHandler_sqliteDefaultBusyCallback_enum];
)

// Rules for xCallback (3 valid functions, 0 excluded)
// Rule: .xCallback = 0 ==> .xCallback_signature = xCallback_signatures[xCallback_0_enum];
@transform_xCallback_0@
expression E;
identifier FP_NAME = xCallback;
@@
(
E.FP_NAME = 0;
+ E.xCallback_signature = xCallback_signatures[xCallback_0_enum];
|
E->FP_NAME = 0;
+ E->xCallback_signature = xCallback_signatures[xCallback_0_enum];
)

// Rule: .xCallback = sql_trace_callback ==> .xCallback_signature = xCallback_signatures[xCallback_sql_trace_callback_enum];
@transform_xCallback_sql_trace_callback@
expression E;
identifier FP_NAME = xCallback;
identifier FUNC_NAME = sql_trace_callback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCallback_signature = xCallback_signatures[xCallback_sql_trace_callback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCallback_signature = xCallback_signatures[xCallback_sql_trace_callback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCallback_signature = xCallback_signatures[xCallback_sql_trace_callback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCallback_signature = xCallback_signatures[xCallback_sql_trace_callback_enum];
)

// Rule: .xCallback = sqlite3WalDefaultHook ==> .xCallback_signature = xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum];
@transform_xCallback_sqlite3WalDefaultHook@
expression E;
identifier FP_NAME = xCallback;
identifier FUNC_NAME = sqlite3WalDefaultHook;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCallback_signature = xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCallback_signature = xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCallback_signature = xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCallback_signature = xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum];
)

// Rules for xClose (1 valid functions, 2 excluded)
// Rule: .xClose = memjrnlClose ==> .xClose_signature = xClose_signatures[xClose_memjrnlClose_enum];
@transform_xClose_memjrnlClose@
expression E;
identifier FP_NAME = xClose;
identifier FUNC_NAME = memjrnlClose;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xClose_signature = xClose_signatures[xClose_memjrnlClose_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xClose_signature = xClose_signatures[xClose_memjrnlClose_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xClose_signature = xClose_signatures[xClose_memjrnlClose_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xClose_signature = xClose_signatures[xClose_memjrnlClose_enum];
)

// Rules for xCount (3 valid functions, 0 excluded)
// Rule: .xCount = sessionDiffCount ==> .xCount_signature = xCount_signatures[xCount_sessionDiffCount_enum];
@transform_xCount_sessionDiffCount@
expression E;
identifier FP_NAME = xCount;
identifier FUNC_NAME = sessionDiffCount;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionDiffCount_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionDiffCount_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionDiffCount_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionDiffCount_enum];
)

// Rule: .xCount = sessionPreupdateCount ==> .xCount_signature = xCount_signatures[xCount_sessionPreupdateCount_enum];
@transform_xCount_sessionPreupdateCount@
expression E;
identifier FP_NAME = xCount;
identifier FUNC_NAME = sessionPreupdateCount;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionPreupdateCount_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionPreupdateCount_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionPreupdateCount_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionPreupdateCount_enum];
)

// Rule: .xCount = sessionStat1Count ==> .xCount_signature = xCount_signatures[xCount_sessionStat1Count_enum];
@transform_xCount_sessionStat1Count@
expression E;
identifier FP_NAME = xCount;
identifier FUNC_NAME = sessionStat1Count;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionStat1Count_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCount_signature = xCount_signatures[xCount_sessionStat1Count_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionStat1Count_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCount_signature = xCount_signatures[xCount_sessionStat1Count_enum];
)

// Rules for xCreate (2 valid functions, 1 excluded)
// Rule: .xCreate = f5tOrigintextCreate ==> .xCreate_signature = xCreate_signatures[xCreate_f5tOrigintextCreate_enum];
@transform_xCreate_f5tOrigintextCreate@
expression E;
identifier FP_NAME = xCreate;
identifier FUNC_NAME = f5tOrigintextCreate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCreate_signature = xCreate_signatures[xCreate_f5tOrigintextCreate_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCreate_signature = xCreate_signatures[xCreate_f5tOrigintextCreate_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCreate_signature = xCreate_signatures[xCreate_f5tOrigintextCreate_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCreate_signature = xCreate_signatures[xCreate_f5tOrigintextCreate_enum];
)

// Rule: .xCreate = f5tTokenizerCreate ==> .xCreate_signature = xCreate_signatures[xCreate_f5tTokenizerCreate_enum];
@transform_xCreate_f5tTokenizerCreate@
expression E;
identifier FP_NAME = xCreate;
identifier FUNC_NAME = f5tTokenizerCreate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xCreate_signature = xCreate_signatures[xCreate_f5tTokenizerCreate_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xCreate_signature = xCreate_signatures[xCreate_f5tTokenizerCreate_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xCreate_signature = xCreate_signatures[xCreate_f5tTokenizerCreate_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xCreate_signature = xCreate_signatures[xCreate_f5tTokenizerCreate_enum];
)

// Rules for xDelete (2 valid functions, 3 excluded)
// Rule: .xDelete = f5tOrigintextDelete ==> .xDelete_signature = xDelete_signatures[xDelete_f5tOrigintextDelete_enum];
@transform_xDelete_f5tOrigintextDelete@
expression E;
identifier FP_NAME = xDelete;
identifier FUNC_NAME = f5tOrigintextDelete;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xDelete_signature = xDelete_signatures[xDelete_f5tOrigintextDelete_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xDelete_signature = xDelete_signatures[xDelete_f5tOrigintextDelete_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xDelete_signature = xDelete_signatures[xDelete_f5tOrigintextDelete_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xDelete_signature = xDelete_signatures[xDelete_f5tOrigintextDelete_enum];
)

// Rule: .xDelete = f5tTokenizerDelete ==> .xDelete_signature = xDelete_signatures[xDelete_f5tTokenizerDelete_enum];
@transform_xDelete_f5tTokenizerDelete@
expression E;
identifier FP_NAME = xDelete;
identifier FUNC_NAME = f5tTokenizerDelete;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xDelete_signature = xDelete_signatures[xDelete_f5tTokenizerDelete_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xDelete_signature = xDelete_signatures[xDelete_f5tTokenizerDelete_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xDelete_signature = xDelete_signatures[xDelete_f5tTokenizerDelete_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xDelete_signature = xDelete_signatures[xDelete_f5tTokenizerDelete_enum];
)

// Rules for xDepth (3 valid functions, 0 excluded)
// Rule: .xDepth = sessionDiffDepth ==> .xDepth_signature = xDepth_signatures[xDepth_sessionDiffDepth_enum];
@transform_xDepth_sessionDiffDepth@
expression E;
identifier FP_NAME = xDepth;
identifier FUNC_NAME = sessionDiffDepth;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionDiffDepth_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionDiffDepth_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionDiffDepth_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionDiffDepth_enum];
)

// Rule: .xDepth = sessionPreupdateDepth ==> .xDepth_signature = xDepth_signatures[xDepth_sessionPreupdateDepth_enum];
@transform_xDepth_sessionPreupdateDepth@
expression E;
identifier FP_NAME = xDepth;
identifier FUNC_NAME = sessionPreupdateDepth;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionPreupdateDepth_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionPreupdateDepth_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionPreupdateDepth_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionPreupdateDepth_enum];
)

// Rule: .xDepth = sessionStat1Depth ==> .xDepth_signature = xDepth_signatures[xDepth_sessionStat1Depth_enum];
@transform_xDepth_sessionStat1Depth@
expression E;
identifier FP_NAME = xDepth;
identifier FUNC_NAME = sessionStat1Depth;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionStat1Depth_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xDepth_signature = xDepth_signatures[xDepth_sessionStat1Depth_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionStat1Depth_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xDepth_signature = xDepth_signatures[xDepth_sessionStat1Depth_enum];
)

// Rules for xExprCallback (36 valid functions, 0 excluded)
// Rule: .xExprCallback = aggregateIdxEprRefToColCallback ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_aggregateIdxEprRefToColCallback_enum];
@transform_xExprCallback_aggregateIdxEprRefToColCallback@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = aggregateIdxEprRefToColCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_aggregateIdxEprRefToColCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_aggregateIdxEprRefToColCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_aggregateIdxEprRefToColCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_aggregateIdxEprRefToColCallback_enum];
)

// Rule: .xExprCallback = analyzeAggregate ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_analyzeAggregate_enum];
@transform_xExprCallback_analyzeAggregate@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = analyzeAggregate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_analyzeAggregate_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_analyzeAggregate_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_analyzeAggregate_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_analyzeAggregate_enum];
)

// Rule: .xExprCallback = checkConstraintExprNode ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_checkConstraintExprNode_enum];
@transform_xExprCallback_checkConstraintExprNode@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = checkConstraintExprNode;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_checkConstraintExprNode_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_checkConstraintExprNode_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_checkConstraintExprNode_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_checkConstraintExprNode_enum];
)

// Rule: .xExprCallback = codeCursorHintCheckExpr ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintCheckExpr_enum];
@transform_xExprCallback_codeCursorHintCheckExpr@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = codeCursorHintCheckExpr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintCheckExpr_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintCheckExpr_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintCheckExpr_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintCheckExpr_enum];
)

// Rule: .xExprCallback = codeCursorHintFixExpr ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintFixExpr_enum];
@transform_xExprCallback_codeCursorHintFixExpr@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = codeCursorHintFixExpr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintFixExpr_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintFixExpr_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintFixExpr_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintFixExpr_enum];
)

// Rule: .xExprCallback = codeCursorHintIsOrFunction ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintIsOrFunction_enum];
@transform_xExprCallback_codeCursorHintIsOrFunction@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = codeCursorHintIsOrFunction;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintIsOrFunction_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintIsOrFunction_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintIsOrFunction_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_codeCursorHintIsOrFunction_enum];
)

// Rule: .xExprCallback = disallowAggregatesInOrderByCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_disallowAggregatesInOrderByCb_enum];
@transform_xExprCallback_disallowAggregatesInOrderByCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = disallowAggregatesInOrderByCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_disallowAggregatesInOrderByCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_disallowAggregatesInOrderByCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_disallowAggregatesInOrderByCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_disallowAggregatesInOrderByCb_enum];
)

// Rule: .xExprCallback = exprColumnFlagUnion ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprColumnFlagUnion_enum];
@transform_xExprCallback_exprColumnFlagUnion@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprColumnFlagUnion;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprColumnFlagUnion_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprColumnFlagUnion_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprColumnFlagUnion_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprColumnFlagUnion_enum];
)

// Rule: .xExprCallback = exprIdxCover ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprIdxCover_enum];
@transform_xExprCallback_exprIdxCover@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprIdxCover;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprIdxCover_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprIdxCover_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprIdxCover_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprIdxCover_enum];
)

// Rule: .xExprCallback = exprNodeCanReturnSubtype ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeCanReturnSubtype_enum];
@transform_xExprCallback_exprNodeCanReturnSubtype@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprNodeCanReturnSubtype;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeCanReturnSubtype_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeCanReturnSubtype_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeCanReturnSubtype_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeCanReturnSubtype_enum];
)

// Rule: .xExprCallback = exprNodeIsConstant ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstant_enum];
@transform_xExprCallback_exprNodeIsConstant@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprNodeIsConstant;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstant_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstant_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstant_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstant_enum];
)

// Rule: .xExprCallback = exprNodeIsConstantOrGroupBy ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstantOrGroupBy_enum];
@transform_xExprCallback_exprNodeIsConstantOrGroupBy@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprNodeIsConstantOrGroupBy;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstantOrGroupBy_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstantOrGroupBy_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstantOrGroupBy_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsConstantOrGroupBy_enum];
)

// Rule: .xExprCallback = exprNodeIsDeterministic ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsDeterministic_enum];
@transform_xExprCallback_exprNodeIsDeterministic@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprNodeIsDeterministic;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsDeterministic_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsDeterministic_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsDeterministic_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprNodeIsDeterministic_enum];
)

// Rule: .xExprCallback = exprRefToSrcList ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprRefToSrcList_enum];
@transform_xExprCallback_exprRefToSrcList@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = exprRefToSrcList;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprRefToSrcList_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprRefToSrcList_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprRefToSrcList_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_exprRefToSrcList_enum];
)

// Rule: .xExprCallback = fixExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_fixExprCb_enum];
@transform_xExprCallback_fixExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = fixExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_fixExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_fixExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_fixExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_fixExprCb_enum];
)

// Rule: .xExprCallback = gatherSelectWindowsCallback ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_gatherSelectWindowsCallback_enum];
@transform_xExprCallback_gatherSelectWindowsCallback@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = gatherSelectWindowsCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_gatherSelectWindowsCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_gatherSelectWindowsCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_gatherSelectWindowsCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_gatherSelectWindowsCallback_enum];
)

// Rule: .xExprCallback = havingToWhereExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_havingToWhereExprCb_enum];
@transform_xExprCallback_havingToWhereExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = havingToWhereExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_havingToWhereExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_havingToWhereExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_havingToWhereExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_havingToWhereExprCb_enum];
)

// Rule: .xExprCallback = impliesNotNullRow ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_impliesNotNullRow_enum];
@transform_xExprCallback_impliesNotNullRow@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = impliesNotNullRow;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_impliesNotNullRow_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_impliesNotNullRow_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_impliesNotNullRow_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_impliesNotNullRow_enum];
)

// Rule: .xExprCallback = incrAggDepth ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_incrAggDepth_enum];
@transform_xExprCallback_incrAggDepth@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = incrAggDepth;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_incrAggDepth_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_incrAggDepth_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_incrAggDepth_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_incrAggDepth_enum];
)

// Rule: .xExprCallback = markImmutableExprStep ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_markImmutableExprStep_enum];
@transform_xExprCallback_markImmutableExprStep@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = markImmutableExprStep;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_markImmutableExprStep_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_markImmutableExprStep_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_markImmutableExprStep_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_markImmutableExprStep_enum];
)

// Rule: .xExprCallback = propagateConstantExprRewrite ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_propagateConstantExprRewrite_enum];
@transform_xExprCallback_propagateConstantExprRewrite@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = propagateConstantExprRewrite;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_propagateConstantExprRewrite_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_propagateConstantExprRewrite_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_propagateConstantExprRewrite_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_propagateConstantExprRewrite_enum];
)

// Rule: .xExprCallback = recomputeColumnsUsedExpr ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_recomputeColumnsUsedExpr_enum];
@transform_xExprCallback_recomputeColumnsUsedExpr@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = recomputeColumnsUsedExpr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_recomputeColumnsUsedExpr_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_recomputeColumnsUsedExpr_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_recomputeColumnsUsedExpr_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_recomputeColumnsUsedExpr_enum];
)

// Rule: .xExprCallback = renameColumnExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameColumnExprCb_enum];
@transform_xExprCallback_renameColumnExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = renameColumnExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameColumnExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameColumnExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameColumnExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameColumnExprCb_enum];
)

// Rule: .xExprCallback = renameQuotefixExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameQuotefixExprCb_enum];
@transform_xExprCallback_renameQuotefixExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = renameQuotefixExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameQuotefixExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameQuotefixExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameQuotefixExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameQuotefixExprCb_enum];
)

// Rule: .xExprCallback = renameTableExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameTableExprCb_enum];
@transform_xExprCallback_renameTableExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = renameTableExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameTableExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameTableExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameTableExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameTableExprCb_enum];
)

// Rule: .xExprCallback = renameUnmapExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameUnmapExprCb_enum];
@transform_xExprCallback_renameUnmapExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = renameUnmapExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameUnmapExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameUnmapExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameUnmapExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renameUnmapExprCb_enum];
)

// Rule: .xExprCallback = renumberCursorsCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_renumberCursorsCb_enum];
@transform_xExprCallback_renumberCursorsCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = renumberCursorsCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renumberCursorsCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_renumberCursorsCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renumberCursorsCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_renumberCursorsCb_enum];
)

// Rule: .xExprCallback = resolveExprStep ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveExprStep_enum];
@transform_xExprCallback_resolveExprStep@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = resolveExprStep;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveExprStep_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveExprStep_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveExprStep_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveExprStep_enum];
)

// Rule: .xExprCallback = resolveRemoveWindowsCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveRemoveWindowsCb_enum];
@transform_xExprCallback_resolveRemoveWindowsCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = resolveRemoveWindowsCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveRemoveWindowsCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveRemoveWindowsCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveRemoveWindowsCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_resolveRemoveWindowsCb_enum];
)

// Rule: .xExprCallback = selectCheckOnClausesExpr ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectCheckOnClausesExpr_enum];
@transform_xExprCallback_selectCheckOnClausesExpr@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = selectCheckOnClausesExpr;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectCheckOnClausesExpr_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectCheckOnClausesExpr_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectCheckOnClausesExpr_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectCheckOnClausesExpr_enum];
)

// Rule: .xExprCallback = selectWindowRewriteExprCb ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectWindowRewriteExprCb_enum];
@transform_xExprCallback_selectWindowRewriteExprCb@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = selectWindowRewriteExprCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectWindowRewriteExprCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectWindowRewriteExprCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectWindowRewriteExprCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_selectWindowRewriteExprCb_enum];
)

// Rule: .xExprCallback = sqlite3CursorRangeHintExprCheck ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3CursorRangeHintExprCheck_enum];
@transform_xExprCallback_sqlite3CursorRangeHintExprCheck@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = sqlite3CursorRangeHintExprCheck;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3CursorRangeHintExprCheck_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3CursorRangeHintExprCheck_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3CursorRangeHintExprCheck_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3CursorRangeHintExprCheck_enum];
)

// Rule: .xExprCallback = sqlite3ExprWalkNoop ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ExprWalkNoop_enum];
@transform_xExprCallback_sqlite3ExprWalkNoop@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = sqlite3ExprWalkNoop;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ExprWalkNoop_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ExprWalkNoop_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ExprWalkNoop_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ExprWalkNoop_enum];
)

// Rule: .xExprCallback = sqlite3ReturningSubqueryVarSelect ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ReturningSubqueryVarSelect_enum];
@transform_xExprCallback_sqlite3ReturningSubqueryVarSelect@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = sqlite3ReturningSubqueryVarSelect;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ReturningSubqueryVarSelect_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ReturningSubqueryVarSelect_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ReturningSubqueryVarSelect_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3ReturningSubqueryVarSelect_enum];
)

// Rule: .xExprCallback = sqlite3WindowExtraAggFuncDepth ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3WindowExtraAggFuncDepth_enum];
@transform_xExprCallback_sqlite3WindowExtraAggFuncDepth@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = sqlite3WindowExtraAggFuncDepth;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3WindowExtraAggFuncDepth_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3WindowExtraAggFuncDepth_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3WindowExtraAggFuncDepth_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_sqlite3WindowExtraAggFuncDepth_enum];
)

// Rule: .xExprCallback = whereIsCoveringIndexWalkCallback ==> .xExprCallback_signature = xExprCallback_signatures[xExprCallback_whereIsCoveringIndexWalkCallback_enum];
@transform_xExprCallback_whereIsCoveringIndexWalkCallback@
expression E;
identifier FP_NAME = xExprCallback;
identifier FUNC_NAME = whereIsCoveringIndexWalkCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_whereIsCoveringIndexWalkCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xExprCallback_signature = xExprCallback_signatures[xExprCallback_whereIsCoveringIndexWalkCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_whereIsCoveringIndexWalkCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xExprCallback_signature = xExprCallback_signatures[xExprCallback_whereIsCoveringIndexWalkCallback_enum];
)

// Rules for xFileSize (1 valid functions, 2 excluded)
// Rule: .xFileSize = memjrnlFileSize ==> .xFileSize_signature = xFileSize_signatures[xFileSize_memjrnlFileSize_enum];
@transform_xFileSize_memjrnlFileSize@
expression E;
identifier FP_NAME = xFileSize;
identifier FUNC_NAME = memjrnlFileSize;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xFileSize_signature = xFileSize_signatures[xFileSize_memjrnlFileSize_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xFileSize_signature = xFileSize_signatures[xFileSize_memjrnlFileSize_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xFileSize_signature = xFileSize_signatures[xFileSize_memjrnlFileSize_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xFileSize_signature = xFileSize_signatures[xFileSize_memjrnlFileSize_enum];
)

// Rules for xInput (1 valid functions, 0 excluded)
// Rule: .xInput = 0 ==> .xInput_signature = xInput_signatures[xInput_0_enum];
@transform_xInput_0@
expression E;
identifier FP_NAME = xInput;
@@
(
E.FP_NAME = 0;
+ E.xInput_signature = xInput_signatures[xInput_0_enum];
|
E->FP_NAME = 0;
+ E->xInput_signature = xInput_signatures[xInput_0_enum];
)

// Rules for xNew (3 valid functions, 0 excluded)
// Rule: .xNew = sessionDiffNew ==> .xNew_signature = xNew_signatures[xNew_sessionDiffNew_enum];
@transform_xNew_sessionDiffNew@
expression E;
identifier FP_NAME = xNew;
identifier FUNC_NAME = sessionDiffNew;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionDiffNew_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionDiffNew_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionDiffNew_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionDiffNew_enum];
)

// Rule: .xNew = sessionPreupdateNew ==> .xNew_signature = xNew_signatures[xNew_sessionPreupdateNew_enum];
@transform_xNew_sessionPreupdateNew@
expression E;
identifier FP_NAME = xNew;
identifier FUNC_NAME = sessionPreupdateNew;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionPreupdateNew_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionPreupdateNew_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionPreupdateNew_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionPreupdateNew_enum];
)

// Rule: .xNew = sessionStat1New ==> .xNew_signature = xNew_signatures[xNew_sessionStat1New_enum];
@transform_xNew_sessionStat1New@
expression E;
identifier FP_NAME = xNew;
identifier FUNC_NAME = sessionStat1New;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionStat1New_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xNew_signature = xNew_signatures[xNew_sessionStat1New_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionStat1New_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xNew_signature = xNew_signatures[xNew_sessionStat1New_enum];
)

// Rules for xOld (3 valid functions, 0 excluded)
// Rule: .xOld = sessionDiffOld ==> .xOld_signature = xOld_signatures[xOld_sessionDiffOld_enum];
@transform_xOld_sessionDiffOld@
expression E;
identifier FP_NAME = xOld;
identifier FUNC_NAME = sessionDiffOld;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionDiffOld_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionDiffOld_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionDiffOld_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionDiffOld_enum];
)

// Rule: .xOld = sessionPreupdateOld ==> .xOld_signature = xOld_signatures[xOld_sessionPreupdateOld_enum];
@transform_xOld_sessionPreupdateOld@
expression E;
identifier FP_NAME = xOld;
identifier FUNC_NAME = sessionPreupdateOld;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionPreupdateOld_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionPreupdateOld_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionPreupdateOld_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionPreupdateOld_enum];
)

// Rule: .xOld = sessionStat1Old ==> .xOld_signature = xOld_signatures[xOld_sessionStat1Old_enum];
@transform_xOld_sessionStat1Old@
expression E;
identifier FP_NAME = xOld;
identifier FUNC_NAME = sessionStat1Old;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionStat1Old_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOld_signature = xOld_signatures[xOld_sessionStat1Old_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionStat1Old_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOld_signature = xOld_signatures[xOld_sessionStat1Old_enum];
)

// Rules for xOp (3 valid functions, 0 excluded)
// Rule: .xOp = do_compile ==> .xOp_signature = xOp_signatures[xOp_do_compile_enum];
@transform_xOp_do_compile@
expression E;
identifier FP_NAME = xOp;
identifier FUNC_NAME = do_compile;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_compile_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_compile_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_compile_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_compile_enum];
)

// Rule: .xOp = do_finalize ==> .xOp_signature = xOp_signatures[xOp_do_finalize_enum];
@transform_xOp_do_finalize@
expression E;
identifier FP_NAME = xOp;
identifier FUNC_NAME = do_finalize;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_finalize_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_finalize_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_finalize_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_finalize_enum];
)

// Rule: .xOp = do_step ==> .xOp_signature = xOp_signatures[xOp_do_step_enum];
@transform_xOp_do_step@
expression E;
identifier FP_NAME = xOp;
identifier FUNC_NAME = do_step;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_step_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xOp_signature = xOp_signatures[xOp_do_step_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_step_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xOp_signature = xOp_signatures[xOp_do_step_enum];
)

// Rules for xRead (1 valid functions, 2 excluded)
// Rule: .xRead = memjrnlRead ==> .xRead_signature = xRead_signatures[xRead_memjrnlRead_enum];
@transform_xRead_memjrnlRead@
expression E;
identifier FP_NAME = xRead;
identifier FUNC_NAME = memjrnlRead;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xRead_signature = xRead_signatures[xRead_memjrnlRead_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xRead_signature = xRead_signatures[xRead_memjrnlRead_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xRead_signature = xRead_signatures[xRead_memjrnlRead_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xRead_signature = xRead_signatures[xRead_memjrnlRead_enum];
)

// Rules for xSelectCallback (16 valid functions, 0 excluded)
// Rule: .xSelectCallback = convertCompoundSelectToSubquery ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_convertCompoundSelectToSubquery_enum];
@transform_xSelectCallback_convertCompoundSelectToSubquery@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = convertCompoundSelectToSubquery;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_convertCompoundSelectToSubquery_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_convertCompoundSelectToSubquery_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_convertCompoundSelectToSubquery_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_convertCompoundSelectToSubquery_enum];
)

// Rule: .xSelectCallback = exprSelectWalkTableConstant ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_exprSelectWalkTableConstant_enum];
@transform_xSelectCallback_exprSelectWalkTableConstant@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = exprSelectWalkTableConstant;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_exprSelectWalkTableConstant_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_exprSelectWalkTableConstant_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_exprSelectWalkTableConstant_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_exprSelectWalkTableConstant_enum];
)

// Rule: .xSelectCallback = fixSelectCb ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_fixSelectCb_enum];
@transform_xSelectCallback_fixSelectCb@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = fixSelectCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_fixSelectCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_fixSelectCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_fixSelectCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_fixSelectCb_enum];
)

// Rule: .xSelectCallback = gatherSelectWindowsSelectCallback ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_gatherSelectWindowsSelectCallback_enum];
@transform_xSelectCallback_gatherSelectWindowsSelectCallback@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = gatherSelectWindowsSelectCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_gatherSelectWindowsSelectCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_gatherSelectWindowsSelectCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_gatherSelectWindowsSelectCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_gatherSelectWindowsSelectCallback_enum];
)

// Rule: .xSelectCallback = renameColumnSelectCb ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameColumnSelectCb_enum];
@transform_xSelectCallback_renameColumnSelectCb@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = renameColumnSelectCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameColumnSelectCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameColumnSelectCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameColumnSelectCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameColumnSelectCb_enum];
)

// Rule: .xSelectCallback = renameTableSelectCb ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameTableSelectCb_enum];
@transform_xSelectCallback_renameTableSelectCb@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = renameTableSelectCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameTableSelectCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameTableSelectCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameTableSelectCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameTableSelectCb_enum];
)

// Rule: .xSelectCallback = renameUnmapSelectCb ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameUnmapSelectCb_enum];
@transform_xSelectCallback_renameUnmapSelectCb@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = renameUnmapSelectCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameUnmapSelectCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameUnmapSelectCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameUnmapSelectCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_renameUnmapSelectCb_enum];
)

// Rule: .xSelectCallback = resolveSelectStep ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_resolveSelectStep_enum];
@transform_xSelectCallback_resolveSelectStep@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = resolveSelectStep;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_resolveSelectStep_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_resolveSelectStep_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_resolveSelectStep_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_resolveSelectStep_enum];
)

// Rule: .xSelectCallback = selectCheckOnClausesSelect ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectCheckOnClausesSelect_enum];
@transform_xSelectCallback_selectCheckOnClausesSelect@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = selectCheckOnClausesSelect;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectCheckOnClausesSelect_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectCheckOnClausesSelect_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectCheckOnClausesSelect_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectCheckOnClausesSelect_enum];
)

// Rule: .xSelectCallback = selectExpander ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectExpander_enum];
@transform_xSelectCallback_selectExpander@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = selectExpander;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectExpander_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectExpander_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectExpander_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectExpander_enum];
)

// Rule: .xSelectCallback = selectRefEnter ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectRefEnter_enum];
@transform_xSelectCallback_selectRefEnter@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = selectRefEnter;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectRefEnter_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectRefEnter_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectRefEnter_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectRefEnter_enum];
)

// Rule: .xSelectCallback = selectWindowRewriteSelectCb ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectWindowRewriteSelectCb_enum];
@transform_xSelectCallback_selectWindowRewriteSelectCb@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = selectWindowRewriteSelectCb;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectWindowRewriteSelectCb_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectWindowRewriteSelectCb_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectWindowRewriteSelectCb_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_selectWindowRewriteSelectCb_enum];
)

// Rule: .xSelectCallback = sqlite3ReturningSubqueryCorrelated ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3ReturningSubqueryCorrelated_enum];
@transform_xSelectCallback_sqlite3ReturningSubqueryCorrelated@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = sqlite3ReturningSubqueryCorrelated;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3ReturningSubqueryCorrelated_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3ReturningSubqueryCorrelated_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3ReturningSubqueryCorrelated_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3ReturningSubqueryCorrelated_enum];
)

// Rule: .xSelectCallback = sqlite3SelectWalkFail ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkFail_enum];
@transform_xSelectCallback_sqlite3SelectWalkFail@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = sqlite3SelectWalkFail;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkFail_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkFail_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkFail_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkFail_enum];
)

// Rule: .xSelectCallback = sqlite3SelectWalkNoop ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkNoop_enum];
@transform_xSelectCallback_sqlite3SelectWalkNoop@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = sqlite3SelectWalkNoop;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkNoop_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkNoop_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkNoop_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3SelectWalkNoop_enum];
)

// Rule: .xSelectCallback = sqlite3WalkerDepthIncrease ==> .xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3WalkerDepthIncrease_enum];
@transform_xSelectCallback_sqlite3WalkerDepthIncrease@
expression E;
identifier FP_NAME = xSelectCallback;
identifier FUNC_NAME = sqlite3WalkerDepthIncrease;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3WalkerDepthIncrease_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3WalkerDepthIncrease_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3WalkerDepthIncrease_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback_signature = xSelectCallback_signatures[xSelectCallback_sqlite3WalkerDepthIncrease_enum];
)

// Rules for xSelectCallback2 (5 valid functions, 1 excluded)
// Rule: .xSelectCallback2 = selectAddSubqueryTypeInfo ==> .xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectAddSubqueryTypeInfo_enum];
@transform_xSelectCallback2_selectAddSubqueryTypeInfo@
expression E;
identifier FP_NAME = xSelectCallback2;
identifier FUNC_NAME = selectAddSubqueryTypeInfo;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectAddSubqueryTypeInfo_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectAddSubqueryTypeInfo_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectAddSubqueryTypeInfo_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectAddSubqueryTypeInfo_enum];
)

// Rule: .xSelectCallback2 = selectRefLeave ==> .xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectRefLeave_enum];
@transform_xSelectCallback2_selectRefLeave@
expression E;
identifier FP_NAME = xSelectCallback2;
identifier FUNC_NAME = selectRefLeave;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectRefLeave_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectRefLeave_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectRefLeave_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_selectRefLeave_enum];
)

// Rule: .xSelectCallback2 = sqlite3SelectPopWith ==> .xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3SelectPopWith_enum];
@transform_xSelectCallback2_sqlite3SelectPopWith@
expression E;
identifier FP_NAME = xSelectCallback2;
identifier FUNC_NAME = sqlite3SelectPopWith;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3SelectPopWith_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3SelectPopWith_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3SelectPopWith_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3SelectPopWith_enum];
)

// Rule: .xSelectCallback2 = sqlite3WalkWinDefnDummyCallback ==> .xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkWinDefnDummyCallback_enum];
@transform_xSelectCallback2_sqlite3WalkWinDefnDummyCallback@
expression E;
identifier FP_NAME = xSelectCallback2;
identifier FUNC_NAME = sqlite3WalkWinDefnDummyCallback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkWinDefnDummyCallback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkWinDefnDummyCallback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkWinDefnDummyCallback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkWinDefnDummyCallback_enum];
)

// Rule: .xSelectCallback2 = sqlite3WalkerDepthDecrease ==> .xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkerDepthDecrease_enum];
@transform_xSelectCallback2_sqlite3WalkerDepthDecrease@
expression E;
identifier FP_NAME = xSelectCallback2;
identifier FUNC_NAME = sqlite3WalkerDepthDecrease;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkerDepthDecrease_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkerDepthDecrease_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkerDepthDecrease_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSelectCallback2_signature = xSelectCallback2_signatures[xSelectCallback2_sqlite3WalkerDepthDecrease_enum];
)

// Rules for xSync (1 valid functions, 2 excluded)
// Rule: .xSync = memjrnlSync ==> .xSync_signature = xSync_signatures[xSync_memjrnlSync_enum];
@transform_xSync_memjrnlSync@
expression E;
identifier FP_NAME = xSync;
identifier FUNC_NAME = memjrnlSync;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xSync_signature = xSync_signatures[xSync_memjrnlSync_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xSync_signature = xSync_signatures[xSync_memjrnlSync_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xSync_signature = xSync_signatures[xSync_memjrnlSync_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xSync_signature = xSync_signatures[xSync_memjrnlSync_enum];
)

// Rules for xTokenize (3 valid functions, 2 excluded)
// Rule: .xTokenize = f5tOrigintextTokenize ==> .xTokenize_signature = xTokenize_signatures[xTokenize_f5tOrigintextTokenize_enum];
@transform_xTokenize_f5tOrigintextTokenize@
expression E;
identifier FP_NAME = xTokenize;
identifier FUNC_NAME = f5tOrigintextTokenize;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tOrigintextTokenize_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tOrigintextTokenize_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tOrigintextTokenize_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tOrigintextTokenize_enum];
)

// Rule: .xTokenize = f5tTokenizerTokenize ==> .xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_enum];
@transform_xTokenize_f5tTokenizerTokenize@
expression E;
identifier FP_NAME = xTokenize;
identifier FUNC_NAME = f5tTokenizerTokenize;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_enum];
)

// Rule: .xTokenize = f5tTokenizerTokenize_v2 ==> .xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_v2_enum];
@transform_xTokenize_f5tTokenizerTokenize_v2@
expression E;
identifier FP_NAME = xTokenize;
identifier FUNC_NAME = f5tTokenizerTokenize_v2;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_v2_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_v2_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_v2_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xTokenize_signature = xTokenize_signatures[xTokenize_f5tTokenizerTokenize_v2_enum];
)

// Rules for xTruncate (1 valid functions, 2 excluded)
// Rule: .xTruncate = memjrnlTruncate ==> .xTruncate_signature = xTruncate_signatures[xTruncate_memjrnlTruncate_enum];
@transform_xTruncate_memjrnlTruncate@
expression E;
identifier FP_NAME = xTruncate;
identifier FUNC_NAME = memjrnlTruncate;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xTruncate_signature = xTruncate_signatures[xTruncate_memjrnlTruncate_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xTruncate_signature = xTruncate_signatures[xTruncate_memjrnlTruncate_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xTruncate_signature = xTruncate_signatures[xTruncate_memjrnlTruncate_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xTruncate_signature = xTruncate_signatures[xTruncate_memjrnlTruncate_enum];
)

// Rules for xV2 (2 valid functions, 0 excluded)
// Rule: .xV2 = 0 ==> .xV2_signature = xV2_signatures[xV2_0_enum];
@transform_xV2_0@
expression E;
identifier FP_NAME = xV2;
@@
(
E.FP_NAME = 0;
+ E.xV2_signature = xV2_signatures[xV2_0_enum];
|
E->FP_NAME = 0;
+ E->xV2_signature = xV2_signatures[xV2_0_enum];
)

// Rule: .xV2 = sql_trace_callback ==> .xV2_signature = xV2_signatures[xV2_sql_trace_callback_enum];
@transform_xV2_sql_trace_callback@
expression E;
identifier FP_NAME = xV2;
identifier FUNC_NAME = sql_trace_callback;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xV2_signature = xV2_signatures[xV2_sql_trace_callback_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xV2_signature = xV2_signatures[xV2_sql_trace_callback_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xV2_signature = xV2_signatures[xV2_sql_trace_callback_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xV2_signature = xV2_signatures[xV2_sql_trace_callback_enum];
)

// Rules for xWrite (1 valid functions, 2 excluded)
// Rule: .xWrite = memjrnlWrite ==> .xWrite_signature = xWrite_signatures[xWrite_memjrnlWrite_enum];
@transform_xWrite_memjrnlWrite@
expression E;
identifier FP_NAME = xWrite;
identifier FUNC_NAME = memjrnlWrite;
@@
(
E.FP_NAME = FUNC_NAME;
+ E.xWrite_signature = xWrite_signatures[xWrite_memjrnlWrite_enum];
|
E.FP_NAME = &FUNC_NAME;
+ E.xWrite_signature = xWrite_signatures[xWrite_memjrnlWrite_enum];
|
E->FP_NAME = FUNC_NAME;
+ E->xWrite_signature = xWrite_signatures[xWrite_memjrnlWrite_enum];
|
E->FP_NAME = &FUNC_NAME;
+ E->xWrite_signature = xWrite_signatures[xWrite_memjrnlWrite_enum];
)

// Total transformation rules generated: 98
// Total functions excluded: 69

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

