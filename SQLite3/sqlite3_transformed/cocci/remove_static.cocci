//
// Auto-generated Coccinelle script to remove 'static' keyword
// from function definitions extracted from filled_parsing.json
//
// This script removes the static keyword from functions that are
// assigned to function pointers in various structures.
//
// Usage: spatch --sp-file remove_static.cocci --dir <source_directory> --in-place
//


// Rules for function: SQLITE_DYNAMIC
@remove_static_def_brace_same_line_SQLITE_DYNAMIC@
identifier F = { SQLITE_DYNAMIC };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_SQLITE_DYNAMIC@
identifier F = { SQLITE_DYNAMIC };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_SQLITE_DYNAMIC@
identifier F = { SQLITE_DYNAMIC };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_SQLITE_DYNAMIC@
identifier F = { SQLITE_DYNAMIC };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_SQLITE_DYNAMIC@
identifier F = { SQLITE_DYNAMIC };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: SQLITE_STATIC
@remove_static_def_brace_same_line_SQLITE_STATIC@
identifier F = { SQLITE_STATIC };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_SQLITE_STATIC@
identifier F = { SQLITE_STATIC };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_SQLITE_STATIC@
identifier F = { SQLITE_STATIC };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_SQLITE_STATIC@
identifier F = { SQLITE_STATIC };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_SQLITE_STATIC@
identifier F = { SQLITE_STATIC };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: SQLITE_TRANSIENT
@remove_static_def_brace_same_line_SQLITE_TRANSIENT@
identifier F = { SQLITE_TRANSIENT };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_SQLITE_TRANSIENT@
identifier F = { SQLITE_TRANSIENT };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_SQLITE_TRANSIENT@
identifier F = { SQLITE_TRANSIENT };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_SQLITE_TRANSIENT@
identifier F = { SQLITE_TRANSIENT };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_SQLITE_TRANSIENT@
identifier F = { SQLITE_TRANSIENT };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: agginfoFree
@remove_static_def_brace_same_line_agginfoFree@
identifier F = { agginfoFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_agginfoFree@
identifier F = { agginfoFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_agginfoFree@
identifier F = { agginfoFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_agginfoFree@
identifier F = { agginfoFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_agginfoFree@
identifier F = { agginfoFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: analysisLoader
@remove_static_def_brace_same_line_analysisLoader@
identifier F = { analysisLoader };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_analysisLoader@
identifier F = { analysisLoader };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_analysisLoader@
identifier F = { analysisLoader };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_analysisLoader@
identifier F = { analysisLoader };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_analysisLoader@
identifier F = { analysisLoader };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: apndvfsRegister
@remove_static_def_brace_same_line_apndvfsRegister@
identifier F = { apndvfsRegister };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_apndvfsRegister@
identifier F = { apndvfsRegister };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_apndvfsRegister@
identifier F = { apndvfsRegister };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_apndvfsRegister@
identifier F = { apndvfsRegister };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_apndvfsRegister@
identifier F = { apndvfsRegister };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: assertTruncateConstraintCb
@remove_static_def_brace_same_line_assertTruncateConstraintCb@
identifier F = { assertTruncateConstraintCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_assertTruncateConstraintCb@
identifier F = { assertTruncateConstraintCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_assertTruncateConstraintCb@
identifier F = { assertTruncateConstraintCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_assertTruncateConstraintCb@
identifier F = { assertTruncateConstraintCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_assertTruncateConstraintCb@
identifier F = { assertTruncateConstraintCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: base64
@remove_static_def_brace_same_line_base64@
identifier F = { base64 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_base64@
identifier F = { base64 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_base64@
identifier F = { base64 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_base64@
identifier F = { base64 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_base64@
identifier F = { base64 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: base85
@remove_static_def_brace_same_line_base85@
identifier F = { base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_base85@
identifier F = { base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_base85@
identifier F = { base85 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_base85@
identifier F = { base85 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_base85@
identifier F = { base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: binCollFunc
@remove_static_def_brace_same_line_binCollFunc@
identifier F = { binCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_binCollFunc@
identifier F = { binCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_binCollFunc@
identifier F = { binCollFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_binCollFunc@
identifier F = { binCollFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_binCollFunc@
identifier F = { binCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: btreeInvokeBusyHandler
@remove_static_def_brace_same_line_btreeInvokeBusyHandler@
identifier F = { btreeInvokeBusyHandler };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_btreeInvokeBusyHandler@
identifier F = { btreeInvokeBusyHandler };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_btreeInvokeBusyHandler@
identifier F = { btreeInvokeBusyHandler };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_btreeInvokeBusyHandler@
identifier F = { btreeInvokeBusyHandler };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_btreeInvokeBusyHandler@
identifier F = { btreeInvokeBusyHandler };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: captureOutputCallback
@remove_static_def_brace_same_line_captureOutputCallback@
identifier F = { captureOutputCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_captureOutputCallback@
identifier F = { captureOutputCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_captureOutputCallback@
identifier F = { captureOutputCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_captureOutputCallback@
identifier F = { captureOutputCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_captureOutputCallback@
identifier F = { captureOutputCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: countNonzeros
@remove_static_def_brace_same_line_countNonzeros@
identifier F = { countNonzeros };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_countNonzeros@
identifier F = { countNonzeros };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_countNonzeros@
identifier F = { countNonzeros };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_countNonzeros@
identifier F = { countNonzeros };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_countNonzeros@
identifier F = { countNonzeros };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: decimalCollFunc
@remove_static_def_brace_same_line_decimalCollFunc@
identifier F = { decimalCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_decimalCollFunc@
identifier F = { decimalCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_decimalCollFunc@
identifier F = { decimalCollFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_decimalCollFunc@
identifier F = { decimalCollFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_decimalCollFunc@
identifier F = { decimalCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: decimalSumFinalize
@remove_static_def_brace_same_line_decimalSumFinalize@
identifier F = { decimalSumFinalize };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_decimalSumFinalize@
identifier F = { decimalSumFinalize };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_decimalSumFinalize@
identifier F = { decimalSumFinalize };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_decimalSumFinalize@
identifier F = { decimalSumFinalize };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_decimalSumFinalize@
identifier F = { decimalSumFinalize };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: decimalSumInverse
@remove_static_def_brace_same_line_decimalSumInverse@
identifier F = { decimalSumInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_decimalSumInverse@
identifier F = { decimalSumInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_decimalSumInverse@
identifier F = { decimalSumInverse };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_decimalSumInverse@
identifier F = { decimalSumInverse };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_decimalSumInverse@
identifier F = { decimalSumInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: decimalSumStep
@remove_static_def_brace_same_line_decimalSumStep@
identifier F = { decimalSumStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_decimalSumStep@
identifier F = { decimalSumStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_decimalSumStep@
identifier F = { decimalSumStep };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_decimalSumStep@
identifier F = { decimalSumStep };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_decimalSumStep@
identifier F = { decimalSumStep };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: decimalSumValue
@remove_static_def_brace_same_line_decimalSumValue@
identifier F = { decimalSumValue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_decimalSumValue@
identifier F = { decimalSumValue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_decimalSumValue@
identifier F = { decimalSumValue };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_decimalSumValue@
identifier F = { decimalSumValue };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_decimalSumValue@
identifier F = { decimalSumValue };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: dummyCompare
@remove_static_def_brace_same_line_dummyCompare@
identifier F = { dummyCompare };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_dummyCompare@
identifier F = { dummyCompare };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_dummyCompare@
identifier F = { dummyCompare };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_dummyCompare@
identifier F = { dummyCompare };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_dummyCompare@
identifier F = { dummyCompare };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: dummyUDF
@remove_static_def_brace_same_line_dummyUDF@
identifier F = { dummyUDF };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_dummyUDF@
identifier F = { dummyUDF };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_dummyUDF@
identifier F = { dummyUDF };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_dummyUDF@
identifier F = { dummyUDF };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_dummyUDF@
identifier F = { dummyUDF };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: dummyUDFvalue
@remove_static_def_brace_same_line_dummyUDFvalue@
identifier F = { dummyUDFvalue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_dummyUDFvalue@
identifier F = { dummyUDFvalue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_dummyUDFvalue@
identifier F = { dummyUDFvalue };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_dummyUDFvalue@
identifier F = { dummyUDFvalue };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_dummyUDFvalue@
identifier F = { dummyUDFvalue };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: dump_callback
@remove_static_def_brace_same_line_dump_callback@
identifier F = { dump_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_dump_callback@
identifier F = { dump_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_dump_callback@
identifier F = { dump_callback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_dump_callback@
identifier F = { dump_callback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_dump_callback@
identifier F = { dump_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: editFunc
@remove_static_def_brace_same_line_editFunc@
identifier F = { editFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_editFunc@
identifier F = { editFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_editFunc@
identifier F = { editFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_editFunc@
identifier F = { editFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_editFunc@
identifier F = { editFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3AllocateMSI
@remove_static_def_brace_same_line_fts3AllocateMSI@
identifier F = { fts3AllocateMSI };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3AllocateMSI@
identifier F = { fts3AllocateMSI };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3AllocateMSI@
identifier F = { fts3AllocateMSI };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3AllocateMSI@
identifier F = { fts3AllocateMSI };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3AllocateMSI@
identifier F = { fts3AllocateMSI };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprGlobalHitsCb
@remove_static_def_brace_same_line_fts3ExprGlobalHitsCb@
identifier F = { fts3ExprGlobalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprGlobalHitsCb@
identifier F = { fts3ExprGlobalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprGlobalHitsCb@
identifier F = { fts3ExprGlobalHitsCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprGlobalHitsCb@
identifier F = { fts3ExprGlobalHitsCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprGlobalHitsCb@
identifier F = { fts3ExprGlobalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprLoadDoclistsCb
@remove_static_def_brace_same_line_fts3ExprLoadDoclistsCb@
identifier F = { fts3ExprLoadDoclistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprLoadDoclistsCb@
identifier F = { fts3ExprLoadDoclistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprLoadDoclistsCb@
identifier F = { fts3ExprLoadDoclistsCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprLoadDoclistsCb@
identifier F = { fts3ExprLoadDoclistsCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprLoadDoclistsCb@
identifier F = { fts3ExprLoadDoclistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprLocalHitsCb
@remove_static_def_brace_same_line_fts3ExprLocalHitsCb@
identifier F = { fts3ExprLocalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprLocalHitsCb@
identifier F = { fts3ExprLocalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprLocalHitsCb@
identifier F = { fts3ExprLocalHitsCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprLocalHitsCb@
identifier F = { fts3ExprLocalHitsCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprLocalHitsCb@
identifier F = { fts3ExprLocalHitsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprPhraseCountCb
@remove_static_def_brace_same_line_fts3ExprPhraseCountCb@
identifier F = { fts3ExprPhraseCountCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprPhraseCountCb@
identifier F = { fts3ExprPhraseCountCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprPhraseCountCb@
identifier F = { fts3ExprPhraseCountCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprPhraseCountCb@
identifier F = { fts3ExprPhraseCountCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprPhraseCountCb@
identifier F = { fts3ExprPhraseCountCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprRestartIfCb
@remove_static_def_brace_same_line_fts3ExprRestartIfCb@
identifier F = { fts3ExprRestartIfCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprRestartIfCb@
identifier F = { fts3ExprRestartIfCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprRestartIfCb@
identifier F = { fts3ExprRestartIfCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprRestartIfCb@
identifier F = { fts3ExprRestartIfCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprRestartIfCb@
identifier F = { fts3ExprRestartIfCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprTermOffsetInit
@remove_static_def_brace_same_line_fts3ExprTermOffsetInit@
identifier F = { fts3ExprTermOffsetInit };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprTermOffsetInit@
identifier F = { fts3ExprTermOffsetInit };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprTermOffsetInit@
identifier F = { fts3ExprTermOffsetInit };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprTermOffsetInit@
identifier F = { fts3ExprTermOffsetInit };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprTermOffsetInit@
identifier F = { fts3ExprTermOffsetInit };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprTest
@remove_static_def_brace_same_line_fts3ExprTest@
identifier F = { fts3ExprTest };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprTest@
identifier F = { fts3ExprTest };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprTest@
identifier F = { fts3ExprTest };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprTest@
identifier F = { fts3ExprTest };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprTest@
identifier F = { fts3ExprTest };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3ExprTestRebalance
@remove_static_def_brace_same_line_fts3ExprTestRebalance@
identifier F = { fts3ExprTestRebalance };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3ExprTestRebalance@
identifier F = { fts3ExprTestRebalance };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3ExprTestRebalance@
identifier F = { fts3ExprTestRebalance };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3ExprTestRebalance@
identifier F = { fts3ExprTestRebalance };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3ExprTestRebalance@
identifier F = { fts3ExprTestRebalance };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3MatchinfoLcsCb
@remove_static_def_brace_same_line_fts3MatchinfoLcsCb@
identifier F = { fts3MatchinfoLcsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3MatchinfoLcsCb@
identifier F = { fts3MatchinfoLcsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3MatchinfoLcsCb@
identifier F = { fts3MatchinfoLcsCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3MatchinfoLcsCb@
identifier F = { fts3MatchinfoLcsCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3MatchinfoLcsCb@
identifier F = { fts3MatchinfoLcsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3SegReaderCmp
@remove_static_def_brace_same_line_fts3SegReaderCmp@
identifier F = { fts3SegReaderCmp };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3SegReaderCmp@
identifier F = { fts3SegReaderCmp };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3SegReaderCmp@
identifier F = { fts3SegReaderCmp };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3SegReaderCmp@
identifier F = { fts3SegReaderCmp };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3SegReaderCmp@
identifier F = { fts3SegReaderCmp };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3SnippetFindPositions
@remove_static_def_brace_same_line_fts3SnippetFindPositions@
identifier F = { fts3SnippetFindPositions };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3SnippetFindPositions@
identifier F = { fts3SnippetFindPositions };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3SnippetFindPositions@
identifier F = { fts3SnippetFindPositions };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3SnippetFindPositions@
identifier F = { fts3SnippetFindPositions };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3SnippetFindPositions@
identifier F = { fts3SnippetFindPositions };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts3TokenizerFunc
@remove_static_def_brace_same_line_fts3TokenizerFunc@
identifier F = { fts3TokenizerFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts3TokenizerFunc@
identifier F = { fts3TokenizerFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts3TokenizerFunc@
identifier F = { fts3TokenizerFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts3TokenizerFunc@
identifier F = { fts3TokenizerFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts3TokenizerFunc@
identifier F = { fts3TokenizerFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5ColumnSizeCb
@remove_static_def_brace_same_line_fts5ColumnSizeCb@
identifier F = { fts5ColumnSizeCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5ColumnSizeCb@
identifier F = { fts5ColumnSizeCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5ColumnSizeCb@
identifier F = { fts5ColumnSizeCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5ColumnSizeCb@
identifier F = { fts5ColumnSizeCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5ColumnSizeCb@
identifier F = { fts5ColumnSizeCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5DecodeFunction
@remove_static_def_brace_same_line_fts5DecodeFunction@
identifier F = { fts5DecodeFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5DecodeFunction@
identifier F = { fts5DecodeFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5DecodeFunction@
identifier F = { fts5DecodeFunction };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5DecodeFunction@
identifier F = { fts5DecodeFunction };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5DecodeFunction@
identifier F = { fts5DecodeFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5ExprPopulatePoslistsCb
@remove_static_def_brace_same_line_fts5ExprPopulatePoslistsCb@
identifier F = { fts5ExprPopulatePoslistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5ExprPopulatePoslistsCb@
identifier F = { fts5ExprPopulatePoslistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5ExprPopulatePoslistsCb@
identifier F = { fts5ExprPopulatePoslistsCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5ExprPopulatePoslistsCb@
identifier F = { fts5ExprPopulatePoslistsCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5ExprPopulatePoslistsCb@
identifier F = { fts5ExprPopulatePoslistsCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5Fts5Func
@remove_static_def_brace_same_line_fts5Fts5Func@
identifier F = { fts5Fts5Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5Fts5Func@
identifier F = { fts5Fts5Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5Fts5Func@
identifier F = { fts5Fts5Func };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5Fts5Func@
identifier F = { fts5Fts5Func };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5Fts5Func@
identifier F = { fts5Fts5Func };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5InsttokenFunc
@remove_static_def_brace_same_line_fts5InsttokenFunc@
identifier F = { fts5InsttokenFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5InsttokenFunc@
identifier F = { fts5InsttokenFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5InsttokenFunc@
identifier F = { fts5InsttokenFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5InsttokenFunc@
identifier F = { fts5InsttokenFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5InsttokenFunc@
identifier F = { fts5InsttokenFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5LocaleFunc
@remove_static_def_brace_same_line_fts5LocaleFunc@
identifier F = { fts5LocaleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5LocaleFunc@
identifier F = { fts5LocaleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5LocaleFunc@
identifier F = { fts5LocaleFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5LocaleFunc@
identifier F = { fts5LocaleFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5LocaleFunc@
identifier F = { fts5LocaleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5MergeChunkCallback
@remove_static_def_brace_same_line_fts5MergeChunkCallback@
identifier F = { fts5MergeChunkCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5MergeChunkCallback@
identifier F = { fts5MergeChunkCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5MergeChunkCallback@
identifier F = { fts5MergeChunkCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5MergeChunkCallback@
identifier F = { fts5MergeChunkCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5MergeChunkCallback@
identifier F = { fts5MergeChunkCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5ModuleDestroy
@remove_static_def_brace_same_line_fts5ModuleDestroy@
identifier F = { fts5ModuleDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5ModuleDestroy@
identifier F = { fts5ModuleDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5ModuleDestroy@
identifier F = { fts5ModuleDestroy };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5ModuleDestroy@
identifier F = { fts5ModuleDestroy };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5ModuleDestroy@
identifier F = { fts5ModuleDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5ParseFree
@remove_static_def_brace_same_line_fts5ParseFree@
identifier F = { fts5ParseFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5ParseFree@
identifier F = { fts5ParseFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5ParseFree@
identifier F = { fts5ParseFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5ParseFree@
identifier F = { fts5ParseFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5ParseFree@
identifier F = { fts5ParseFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5ParseTokenize
@remove_static_def_brace_same_line_fts5ParseTokenize@
identifier F = { fts5ParseTokenize };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5ParseTokenize@
identifier F = { fts5ParseTokenize };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5ParseTokenize@
identifier F = { fts5ParseTokenize };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5ParseTokenize@
identifier F = { fts5ParseTokenize };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5ParseTokenize@
identifier F = { fts5ParseTokenize };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5PoslistCallback
@remove_static_def_brace_same_line_fts5PoslistCallback@
identifier F = { fts5PoslistCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5PoslistCallback@
identifier F = { fts5PoslistCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5PoslistCallback@
identifier F = { fts5PoslistCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5PoslistCallback@
identifier F = { fts5PoslistCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5PoslistCallback@
identifier F = { fts5PoslistCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5PoslistFilterCallback
@remove_static_def_brace_same_line_fts5PoslistFilterCallback@
identifier F = { fts5PoslistFilterCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5PoslistFilterCallback@
identifier F = { fts5PoslistFilterCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5PoslistFilterCallback@
identifier F = { fts5PoslistFilterCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5PoslistFilterCallback@
identifier F = { fts5PoslistFilterCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5PoslistFilterCallback@
identifier F = { fts5PoslistFilterCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5PoslistOffsetsCallback
@remove_static_def_brace_same_line_fts5PoslistOffsetsCallback@
identifier F = { fts5PoslistOffsetsCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5PoslistOffsetsCallback@
identifier F = { fts5PoslistOffsetsCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5PoslistOffsetsCallback@
identifier F = { fts5PoslistOffsetsCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5PoslistOffsetsCallback@
identifier F = { fts5PoslistOffsetsCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5PoslistOffsetsCallback@
identifier F = { fts5PoslistOffsetsCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5RowidFunction
@remove_static_def_brace_same_line_fts5RowidFunction@
identifier F = { fts5RowidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5RowidFunction@
identifier F = { fts5RowidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5RowidFunction@
identifier F = { fts5RowidFunction };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5RowidFunction@
identifier F = { fts5RowidFunction };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5RowidFunction@
identifier F = { fts5RowidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5SourceIdFunc
@remove_static_def_brace_same_line_fts5SourceIdFunc@
identifier F = { fts5SourceIdFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5SourceIdFunc@
identifier F = { fts5SourceIdFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5SourceIdFunc@
identifier F = { fts5SourceIdFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5SourceIdFunc@
identifier F = { fts5SourceIdFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5SourceIdFunc@
identifier F = { fts5SourceIdFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5StorageInsertCallback
@remove_static_def_brace_same_line_fts5StorageInsertCallback@
identifier F = { fts5StorageInsertCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5StorageInsertCallback@
identifier F = { fts5StorageInsertCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5StorageInsertCallback@
identifier F = { fts5StorageInsertCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5StorageInsertCallback@
identifier F = { fts5StorageInsertCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5StorageInsertCallback@
identifier F = { fts5StorageInsertCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: fts5StorageIntegrityCallback
@remove_static_def_brace_same_line_fts5StorageIntegrityCallback@
identifier F = { fts5StorageIntegrityCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_fts5StorageIntegrityCallback@
identifier F = { fts5StorageIntegrityCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_fts5StorageIntegrityCallback@
identifier F = { fts5StorageIntegrityCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_fts5StorageIntegrityCallback@
identifier F = { fts5StorageIntegrityCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_fts5StorageIntegrityCallback@
identifier F = { fts5StorageIntegrityCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: geomCallback
@remove_static_def_brace_same_line_geomCallback@
identifier F = { geomCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_geomCallback@
identifier F = { geomCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_geomCallback@
identifier F = { geomCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_geomCallback@
identifier F = { geomCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_geomCallback@
identifier F = { geomCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: hasVowel
@remove_static_def_brace_same_line_hasVowel@
identifier F = { hasVowel };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_hasVowel@
identifier F = { hasVowel };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_hasVowel@
identifier F = { hasVowel };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_hasVowel@
identifier F = { hasVowel };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_hasVowel@
identifier F = { hasVowel };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: hashDestroy
@remove_static_def_brace_same_line_hashDestroy@
identifier F = { hashDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_hashDestroy@
identifier F = { hashDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_hashDestroy@
identifier F = { hashDestroy };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_hashDestroy@
identifier F = { hashDestroy };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_hashDestroy@
identifier F = { hashDestroy };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: icuCollationColl
@remove_static_def_brace_same_line_icuCollationColl@
identifier F = { icuCollationColl };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_icuCollationColl@
identifier F = { icuCollationColl };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_icuCollationColl@
identifier F = { icuCollationColl };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_icuCollationColl@
identifier F = { icuCollationColl };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_icuCollationColl@
identifier F = { icuCollationColl };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: icuCollationDel
@remove_static_def_brace_same_line_icuCollationDel@
identifier F = { icuCollationDel };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_icuCollationDel@
identifier F = { icuCollationDel };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_icuCollationDel@
identifier F = { icuCollationDel };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_icuCollationDel@
identifier F = { icuCollationDel };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_icuCollationDel@
identifier F = { icuCollationDel };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: icuRegexpDelete
@remove_static_def_brace_same_line_icuRegexpDelete@
identifier F = { icuRegexpDelete };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_icuRegexpDelete@
identifier F = { icuRegexpDelete };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_icuRegexpDelete@
identifier F = { icuRegexpDelete };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_icuRegexpDelete@
identifier F = { icuRegexpDelete };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_icuRegexpDelete@
identifier F = { icuRegexpDelete };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: idxAuthCallback
@remove_static_def_brace_same_line_idxAuthCallback@
identifier F = { idxAuthCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_idxAuthCallback@
identifier F = { idxAuthCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_idxAuthCallback@
identifier F = { idxAuthCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_idxAuthCallback@
identifier F = { idxAuthCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_idxAuthCallback@
identifier F = { idxAuthCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: idxRemFunc
@remove_static_def_brace_same_line_idxRemFunc@
identifier F = { idxRemFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_idxRemFunc@
identifier F = { idxRemFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_idxRemFunc@
identifier F = { idxRemFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_idxRemFunc@
identifier F = { idxRemFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_idxRemFunc@
identifier F = { idxRemFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: idxSampleFunc
@remove_static_def_brace_same_line_idxSampleFunc@
identifier F = { idxSampleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_idxSampleFunc@
identifier F = { idxSampleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_idxSampleFunc@
identifier F = { idxSampleFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_idxSampleFunc@
identifier F = { idxSampleFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_idxSampleFunc@
identifier F = { idxSampleFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: intTestFunc
@remove_static_def_brace_same_line_intTestFunc@
identifier F = { intTestFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_intTestFunc@
identifier F = { intTestFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_intTestFunc@
identifier F = { intTestFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_intTestFunc@
identifier F = { intTestFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_intTestFunc@
identifier F = { intTestFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: intckParseCreateIndexFunc
@remove_static_def_brace_same_line_intckParseCreateIndexFunc@
identifier F = { intckParseCreateIndexFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_intckParseCreateIndexFunc@
identifier F = { intckParseCreateIndexFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_intckParseCreateIndexFunc@
identifier F = { intckParseCreateIndexFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_intckParseCreateIndexFunc@
identifier F = { intckParseCreateIndexFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_intckParseCreateIndexFunc@
identifier F = { intckParseCreateIndexFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: is_base85
@remove_static_def_brace_same_line_is_base85@
identifier F = { is_base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_is_base85@
identifier F = { is_base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_is_base85@
identifier F = { is_base85 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_is_base85@
identifier F = { is_base85 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_is_base85@
identifier F = { is_base85 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: jsonCacheDeleteGeneric
@remove_static_def_brace_same_line_jsonCacheDeleteGeneric@
identifier F = { jsonCacheDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_jsonCacheDeleteGeneric@
identifier F = { jsonCacheDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_jsonCacheDeleteGeneric@
identifier F = { jsonCacheDeleteGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_jsonCacheDeleteGeneric@
identifier F = { jsonCacheDeleteGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_jsonCacheDeleteGeneric@
identifier F = { jsonCacheDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: likeFunc
@remove_static_def_brace_same_line_likeFunc@
identifier F = { likeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_likeFunc@
identifier F = { likeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_likeFunc@
identifier F = { likeFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_likeFunc@
identifier F = { likeFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_likeFunc@
identifier F = { likeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: lsModeFunc
@remove_static_def_brace_same_line_lsModeFunc@
identifier F = { lsModeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_lsModeFunc@
identifier F = { lsModeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_lsModeFunc@
identifier F = { lsModeFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_lsModeFunc@
identifier F = { lsModeFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_lsModeFunc@
identifier F = { lsModeFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: m_gt_0
@remove_static_def_brace_same_line_m_gt_0@
identifier F = { m_gt_0 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_m_gt_0@
identifier F = { m_gt_0 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_m_gt_0@
identifier F = { m_gt_0 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_m_gt_0@
identifier F = { m_gt_0 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_m_gt_0@
identifier F = { m_gt_0 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: m_gt_1
@remove_static_def_brace_same_line_m_gt_1@
identifier F = { m_gt_1 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_m_gt_1@
identifier F = { m_gt_1 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_m_gt_1@
identifier F = { m_gt_1 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_m_gt_1@
identifier F = { m_gt_1 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_m_gt_1@
identifier F = { m_gt_1 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: nocaseCollatingFunc
@remove_static_def_brace_same_line_nocaseCollatingFunc@
identifier F = { nocaseCollatingFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_nocaseCollatingFunc@
identifier F = { nocaseCollatingFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_nocaseCollatingFunc@
identifier F = { nocaseCollatingFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_nocaseCollatingFunc@
identifier F = { nocaseCollatingFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_nocaseCollatingFunc@
identifier F = { nocaseCollatingFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: pageReinit
@remove_static_def_brace_same_line_pageReinit@
identifier F = { pageReinit };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_pageReinit@
identifier F = { pageReinit };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_pageReinit@
identifier F = { pageReinit };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_pageReinit@
identifier F = { pageReinit };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_pageReinit@
identifier F = { pageReinit };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: pagerUndoCallback
@remove_static_def_brace_same_line_pagerUndoCallback@
identifier F = { pagerUndoCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_pagerUndoCallback@
identifier F = { pagerUndoCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_pagerUndoCallback@
identifier F = { pagerUndoCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_pagerUndoCallback@
identifier F = { pagerUndoCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_pagerUndoCallback@
identifier F = { pagerUndoCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: pager_set_pagehash
@remove_static_def_brace_same_line_pager_set_pagehash@
identifier F = { pager_set_pagehash };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_pager_set_pagehash@
identifier F = { pager_set_pagehash };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_pager_set_pagehash@
identifier F = { pager_set_pagehash };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_pager_set_pagehash@
identifier F = { pager_set_pagehash };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_pager_set_pagehash@
identifier F = { pager_set_pagehash };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: percentFinal
@remove_static_def_brace_same_line_percentFinal@
identifier F = { percentFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_percentFinal@
identifier F = { percentFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_percentFinal@
identifier F = { percentFinal };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_percentFinal@
identifier F = { percentFinal };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_percentFinal@
identifier F = { percentFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: percentInverse
@remove_static_def_brace_same_line_percentInverse@
identifier F = { percentInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_percentInverse@
identifier F = { percentInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_percentInverse@
identifier F = { percentInverse };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_percentInverse@
identifier F = { percentInverse };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_percentInverse@
identifier F = { percentInverse };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: percentStep
@remove_static_def_brace_same_line_percentStep@
identifier F = { percentStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_percentStep@
identifier F = { percentStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_percentStep@
identifier F = { percentStep };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_percentStep@
identifier F = { percentStep };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_percentStep@
identifier F = { percentStep };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: percentValue
@remove_static_def_brace_same_line_percentValue@
identifier F = { percentValue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_percentValue@
identifier F = { percentValue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_percentValue@
identifier F = { percentValue };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_percentValue@
identifier F = { percentValue };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_percentValue@
identifier F = { percentValue };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: prefixIterSetupCb
@remove_static_def_brace_same_line_prefixIterSetupCb@
identifier F = { prefixIterSetupCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_prefixIterSetupCb@
identifier F = { prefixIterSetupCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_prefixIterSetupCb@
identifier F = { prefixIterSetupCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_prefixIterSetupCb@
identifier F = { prefixIterSetupCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_prefixIterSetupCb@
identifier F = { prefixIterSetupCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: prefixIterSetupTokendataCb
@remove_static_def_brace_same_line_prefixIterSetupTokendataCb@
identifier F = { prefixIterSetupTokendataCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_prefixIterSetupTokendataCb@
identifier F = { prefixIterSetupTokendataCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_prefixIterSetupTokendataCb@
identifier F = { prefixIterSetupTokendataCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_prefixIterSetupTokendataCb@
identifier F = { prefixIterSetupTokendataCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_prefixIterSetupTokendataCb@
identifier F = { prefixIterSetupTokendataCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: progress_handler
@remove_static_def_brace_same_line_progress_handler@
identifier F = { progress_handler };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_progress_handler@
identifier F = { progress_handler };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_progress_handler@
identifier F = { progress_handler };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_progress_handler@
identifier F = { progress_handler };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_progress_handler@
identifier F = { progress_handler };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rbuFossilDeltaFunc
@remove_static_def_brace_same_line_rbuFossilDeltaFunc@
identifier F = { rbuFossilDeltaFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rbuFossilDeltaFunc@
identifier F = { rbuFossilDeltaFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rbuFossilDeltaFunc@
identifier F = { rbuFossilDeltaFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rbuFossilDeltaFunc@
identifier F = { rbuFossilDeltaFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rbuFossilDeltaFunc@
identifier F = { rbuFossilDeltaFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rbuIndexCntFunc
@remove_static_def_brace_same_line_rbuIndexCntFunc@
identifier F = { rbuIndexCntFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rbuIndexCntFunc@
identifier F = { rbuIndexCntFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rbuIndexCntFunc@
identifier F = { rbuIndexCntFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rbuIndexCntFunc@
identifier F = { rbuIndexCntFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rbuIndexCntFunc@
identifier F = { rbuIndexCntFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rbuTargetNameFunc
@remove_static_def_brace_same_line_rbuTargetNameFunc@
identifier F = { rbuTargetNameFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rbuTargetNameFunc@
identifier F = { rbuTargetNameFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rbuTargetNameFunc@
identifier F = { rbuTargetNameFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rbuTargetNameFunc@
identifier F = { rbuTargetNameFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rbuTargetNameFunc@
identifier F = { rbuTargetNameFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rbuTmpInsertFunc
@remove_static_def_brace_same_line_rbuTmpInsertFunc@
identifier F = { rbuTmpInsertFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rbuTmpInsertFunc@
identifier F = { rbuTmpInsertFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rbuTmpInsertFunc@
identifier F = { rbuTmpInsertFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rbuTmpInsertFunc@
identifier F = { rbuTmpInsertFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rbuTmpInsertFunc@
identifier F = { rbuTmpInsertFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: re_bytecode_func
@remove_static_def_brace_same_line_re_bytecode_func@
identifier F = { re_bytecode_func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_re_bytecode_func@
identifier F = { re_bytecode_func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_re_bytecode_func@
identifier F = { re_bytecode_func };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_re_bytecode_func@
identifier F = { re_bytecode_func };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_re_bytecode_func@
identifier F = { re_bytecode_func };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: re_free
@remove_static_def_brace_same_line_re_free@
identifier F = { re_free };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_re_free@
identifier F = { re_free };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_re_free@
identifier F = { re_free };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_re_free@
identifier F = { re_free };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_re_free@
identifier F = { re_free };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: re_sql_func
@remove_static_def_brace_same_line_re_sql_func@
identifier F = { re_sql_func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_re_sql_func@
identifier F = { re_sql_func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_re_sql_func@
identifier F = { re_sql_func };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_re_sql_func@
identifier F = { re_sql_func };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_re_sql_func@
identifier F = { re_sql_func };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: readfileFunc
@remove_static_def_brace_same_line_readfileFunc@
identifier F = { readfileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_readfileFunc@
identifier F = { readfileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_readfileFunc@
identifier F = { readfileFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_readfileFunc@
identifier F = { readfileFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_readfileFunc@
identifier F = { readfileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: recoverSqlCb
@remove_static_def_brace_same_line_recoverSqlCb@
identifier F = { recoverSqlCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_recoverSqlCb@
identifier F = { recoverSqlCb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_recoverSqlCb@
identifier F = { recoverSqlCb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_recoverSqlCb@
identifier F = { recoverSqlCb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_recoverSqlCb@
identifier F = { recoverSqlCb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtreeFreeCallback
@remove_static_def_brace_same_line_rtreeFreeCallback@
identifier F = { rtreeFreeCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtreeFreeCallback@
identifier F = { rtreeFreeCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtreeFreeCallback@
identifier F = { rtreeFreeCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtreeFreeCallback@
identifier F = { rtreeFreeCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtreeFreeCallback@
identifier F = { rtreeFreeCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtreeMatchArgFree
@remove_static_def_brace_same_line_rtreeMatchArgFree@
identifier F = { rtreeMatchArgFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtreeMatchArgFree@
identifier F = { rtreeMatchArgFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtreeMatchArgFree@
identifier F = { rtreeMatchArgFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtreeMatchArgFree@
identifier F = { rtreeMatchArgFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtreeMatchArgFree@
identifier F = { rtreeMatchArgFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtreecheck
@remove_static_def_brace_same_line_rtreecheck@
identifier F = { rtreecheck };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtreecheck@
identifier F = { rtreecheck };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtreecheck@
identifier F = { rtreecheck };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtreecheck@
identifier F = { rtreecheck };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtreecheck@
identifier F = { rtreecheck };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtreedepth
@remove_static_def_brace_same_line_rtreedepth@
identifier F = { rtreedepth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtreedepth@
identifier F = { rtreedepth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtreedepth@
identifier F = { rtreedepth };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtreedepth@
identifier F = { rtreedepth };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtreedepth@
identifier F = { rtreedepth };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtreenode
@remove_static_def_brace_same_line_rtreenode@
identifier F = { rtreenode };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtreenode@
identifier F = { rtreenode };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtreenode@
identifier F = { rtreenode };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtreenode@
identifier F = { rtreenode };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtreenode@
identifier F = { rtreenode };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: rtrimCollFunc
@remove_static_def_brace_same_line_rtrimCollFunc@
identifier F = { rtrimCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_rtrimCollFunc@
identifier F = { rtrimCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_rtrimCollFunc@
identifier F = { rtrimCollFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_rtrimCollFunc@
identifier F = { rtrimCollFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_rtrimCollFunc@
identifier F = { rtrimCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: safeModeAuth
@remove_static_def_brace_same_line_safeModeAuth@
identifier F = { safeModeAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_safeModeAuth@
identifier F = { safeModeAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_safeModeAuth@
identifier F = { safeModeAuth };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_safeModeAuth@
identifier F = { safeModeAuth };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_safeModeAuth@
identifier F = { safeModeAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: session_filter
@remove_static_def_brace_same_line_session_filter@
identifier F = { session_filter };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_session_filter@
identifier F = { session_filter };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_session_filter@
identifier F = { session_filter };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_session_filter@
identifier F = { session_filter };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_session_filter@
identifier F = { session_filter };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha1Func
@remove_static_def_brace_same_line_sha1Func@
identifier F = { sha1Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha1Func@
identifier F = { sha1Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha1Func@
identifier F = { sha1Func };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha1Func@
identifier F = { sha1Func };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha1Func@
identifier F = { sha1Func };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha1QueryFunc
@remove_static_def_brace_same_line_sha1QueryFunc@
identifier F = { sha1QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha1QueryFunc@
identifier F = { sha1QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha1QueryFunc@
identifier F = { sha1QueryFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha1QueryFunc@
identifier F = { sha1QueryFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha1QueryFunc@
identifier F = { sha1QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha3AggFinal
@remove_static_def_brace_same_line_sha3AggFinal@
identifier F = { sha3AggFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha3AggFinal@
identifier F = { sha3AggFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha3AggFinal@
identifier F = { sha3AggFinal };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha3AggFinal@
identifier F = { sha3AggFinal };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha3AggFinal@
identifier F = { sha3AggFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha3AggStep
@remove_static_def_brace_same_line_sha3AggStep@
identifier F = { sha3AggStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha3AggStep@
identifier F = { sha3AggStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha3AggStep@
identifier F = { sha3AggStep };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha3AggStep@
identifier F = { sha3AggStep };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha3AggStep@
identifier F = { sha3AggStep };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha3Func
@remove_static_def_brace_same_line_sha3Func@
identifier F = { sha3Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha3Func@
identifier F = { sha3Func };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha3Func@
identifier F = { sha3Func };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha3Func@
identifier F = { sha3Func };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha3Func@
identifier F = { sha3Func };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sha3QueryFunc
@remove_static_def_brace_same_line_sha3QueryFunc@
identifier F = { sha3QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sha3QueryFunc@
identifier F = { sha3QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sha3QueryFunc@
identifier F = { sha3QueryFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sha3QueryFunc@
identifier F = { sha3QueryFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sha3QueryFunc@
identifier F = { sha3QueryFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellAddSchemaName
@remove_static_def_brace_same_line_shellAddSchemaName@
identifier F = { shellAddSchemaName };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellAddSchemaName@
identifier F = { shellAddSchemaName };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellAddSchemaName@
identifier F = { shellAddSchemaName };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellAddSchemaName@
identifier F = { shellAddSchemaName };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellAddSchemaName@
identifier F = { shellAddSchemaName };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellAuth
@remove_static_def_brace_same_line_shellAuth@
identifier F = { shellAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellAuth@
identifier F = { shellAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellAuth@
identifier F = { shellAuth };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellAuth@
identifier F = { shellAuth };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellAuth@
identifier F = { shellAuth };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellDtostr
@remove_static_def_brace_same_line_shellDtostr@
identifier F = { shellDtostr };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellDtostr@
identifier F = { shellDtostr };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellDtostr@
identifier F = { shellDtostr };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellDtostr@
identifier F = { shellDtostr };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellDtostr@
identifier F = { shellDtostr };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellFkeyCollateClause
@remove_static_def_brace_same_line_shellFkeyCollateClause@
identifier F = { shellFkeyCollateClause };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellFkeyCollateClause@
identifier F = { shellFkeyCollateClause };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellFkeyCollateClause@
identifier F = { shellFkeyCollateClause };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellFkeyCollateClause@
identifier F = { shellFkeyCollateClause };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellFkeyCollateClause@
identifier F = { shellFkeyCollateClause };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellModuleSchema
@remove_static_def_brace_same_line_shellModuleSchema@
identifier F = { shellModuleSchema };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellModuleSchema@
identifier F = { shellModuleSchema };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellModuleSchema@
identifier F = { shellModuleSchema };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellModuleSchema@
identifier F = { shellModuleSchema };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellModuleSchema@
identifier F = { shellModuleSchema };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellPutsFunc
@remove_static_def_brace_same_line_shellPutsFunc@
identifier F = { shellPutsFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellPutsFunc@
identifier F = { shellPutsFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellPutsFunc@
identifier F = { shellPutsFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellPutsFunc@
identifier F = { shellPutsFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellPutsFunc@
identifier F = { shellPutsFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellStrtod
@remove_static_def_brace_same_line_shellStrtod@
identifier F = { shellStrtod };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellStrtod@
identifier F = { shellStrtod };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellStrtod@
identifier F = { shellStrtod };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellStrtod@
identifier F = { shellStrtod };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellStrtod@
identifier F = { shellStrtod };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: shellUSleepFunc
@remove_static_def_brace_same_line_shellUSleepFunc@
identifier F = { shellUSleepFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_shellUSleepFunc@
identifier F = { shellUSleepFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_shellUSleepFunc@
identifier F = { shellUSleepFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_shellUSleepFunc@
identifier F = { shellUSleepFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_shellUSleepFunc@
identifier F = { shellUSleepFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sql_trace_callback
@remove_static_def_brace_same_line_sql_trace_callback@
identifier F = { sql_trace_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sql_trace_callback@
identifier F = { sql_trace_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sql_trace_callback@
identifier F = { sql_trace_callback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sql_trace_callback@
identifier F = { sql_trace_callback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sql_trace_callback@
identifier F = { sql_trace_callback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlarCompressFunc
@remove_static_def_brace_same_line_sqlarCompressFunc@
identifier F = { sqlarCompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlarCompressFunc@
identifier F = { sqlarCompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlarCompressFunc@
identifier F = { sqlarCompressFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlarCompressFunc@
identifier F = { sqlarCompressFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlarCompressFunc@
identifier F = { sqlarCompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlarUncompressFunc
@remove_static_def_brace_same_line_sqlarUncompressFunc@
identifier F = { sqlarUncompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlarUncompressFunc@
identifier F = { sqlarUncompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlarUncompressFunc@
identifier F = { sqlarUncompressFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlarUncompressFunc@
identifier F = { sqlarUncompressFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlarUncompressFunc@
identifier F = { sqlarUncompressFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3BtreePayloadChecked
@remove_static_def_brace_same_line_sqlite3BtreePayloadChecked@
identifier F = { sqlite3BtreePayloadChecked };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3BtreePayloadChecked@
identifier F = { sqlite3BtreePayloadChecked };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3BtreePayloadChecked@
identifier F = { sqlite3BtreePayloadChecked };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3BtreePayloadChecked@
identifier F = { sqlite3BtreePayloadChecked };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3BtreePayloadChecked@
identifier F = { sqlite3BtreePayloadChecked };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3BtreePutData
@remove_static_def_brace_same_line_sqlite3BtreePutData@
identifier F = { sqlite3BtreePutData };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3BtreePutData@
identifier F = { sqlite3BtreePutData };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3BtreePutData@
identifier F = { sqlite3BtreePutData };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3BtreePutData@
identifier F = { sqlite3BtreePutData };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3BtreePutData@
identifier F = { sqlite3BtreePutData };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3DbFree
@remove_static_def_brace_same_line_sqlite3DbFree@
identifier F = { sqlite3DbFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3DbFree@
identifier F = { sqlite3DbFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3DbFree@
identifier F = { sqlite3DbFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3DbFree@
identifier F = { sqlite3DbFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3DbFree@
identifier F = { sqlite3DbFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3DeleteReturning
@remove_static_def_brace_same_line_sqlite3DeleteReturning@
identifier F = { sqlite3DeleteReturning };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3DeleteReturning@
identifier F = { sqlite3DeleteReturning };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3DeleteReturning@
identifier F = { sqlite3DeleteReturning };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3DeleteReturning@
identifier F = { sqlite3DeleteReturning };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3DeleteReturning@
identifier F = { sqlite3DeleteReturning };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3DeleteTableGeneric
@remove_static_def_brace_same_line_sqlite3DeleteTableGeneric@
identifier F = { sqlite3DeleteTableGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3DeleteTableGeneric@
identifier F = { sqlite3DeleteTableGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3DeleteTableGeneric@
identifier F = { sqlite3DeleteTableGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3DeleteTableGeneric@
identifier F = { sqlite3DeleteTableGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3DeleteTableGeneric@
identifier F = { sqlite3DeleteTableGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3ExprDeleteGeneric
@remove_static_def_brace_same_line_sqlite3ExprDeleteGeneric@
identifier F = { sqlite3ExprDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3ExprDeleteGeneric@
identifier F = { sqlite3ExprDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3ExprDeleteGeneric@
identifier F = { sqlite3ExprDeleteGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3ExprDeleteGeneric@
identifier F = { sqlite3ExprDeleteGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3ExprDeleteGeneric@
identifier F = { sqlite3ExprDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3ExprIfFalse
@remove_static_def_brace_same_line_sqlite3ExprIfFalse@
identifier F = { sqlite3ExprIfFalse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3ExprIfFalse@
identifier F = { sqlite3ExprIfFalse };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3ExprIfFalse@
identifier F = { sqlite3ExprIfFalse };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3ExprIfFalse@
identifier F = { sqlite3ExprIfFalse };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3ExprIfFalse@
identifier F = { sqlite3ExprIfFalse };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3ExprIfTrue
@remove_static_def_brace_same_line_sqlite3ExprIfTrue@
identifier F = { sqlite3ExprIfTrue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3ExprIfTrue@
identifier F = { sqlite3ExprIfTrue };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3ExprIfTrue@
identifier F = { sqlite3ExprIfTrue };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3ExprIfTrue@
identifier F = { sqlite3ExprIfTrue };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3ExprIfTrue@
identifier F = { sqlite3ExprIfTrue };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3ExprListDeleteGeneric
@remove_static_def_brace_same_line_sqlite3ExprListDeleteGeneric@
identifier F = { sqlite3ExprListDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3ExprListDeleteGeneric@
identifier F = { sqlite3ExprListDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3ExprListDeleteGeneric@
identifier F = { sqlite3ExprListDeleteGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3ExprListDeleteGeneric@
identifier F = { sqlite3ExprListDeleteGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3ExprListDeleteGeneric@
identifier F = { sqlite3ExprListDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3InitCallback
@remove_static_def_brace_same_line_sqlite3InitCallback@
identifier F = { sqlite3InitCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3InitCallback@
identifier F = { sqlite3InitCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3InitCallback@
identifier F = { sqlite3InitCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3InitCallback@
identifier F = { sqlite3InitCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3InitCallback@
identifier F = { sqlite3InitCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3InvalidFunction
@remove_static_def_brace_same_line_sqlite3InvalidFunction@
identifier F = { sqlite3InvalidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3InvalidFunction@
identifier F = { sqlite3InvalidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3InvalidFunction@
identifier F = { sqlite3InvalidFunction };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3InvalidFunction@
identifier F = { sqlite3InvalidFunction };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3InvalidFunction@
identifier F = { sqlite3InvalidFunction };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3RCStrUnref
@remove_static_def_brace_same_line_sqlite3RCStrUnref@
identifier F = { sqlite3RCStrUnref };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3RCStrUnref@
identifier F = { sqlite3RCStrUnref };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3RCStrUnref@
identifier F = { sqlite3RCStrUnref };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3RCStrUnref@
identifier F = { sqlite3RCStrUnref };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3RCStrUnref@
identifier F = { sqlite3RCStrUnref };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3SchemaClear
@remove_static_def_brace_same_line_sqlite3SchemaClear@
identifier F = { sqlite3SchemaClear };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3SchemaClear@
identifier F = { sqlite3SchemaClear };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3SchemaClear@
identifier F = { sqlite3SchemaClear };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3SchemaClear@
identifier F = { sqlite3SchemaClear };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3SchemaClear@
identifier F = { sqlite3SchemaClear };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3SelectDeleteGeneric
@remove_static_def_brace_same_line_sqlite3SelectDeleteGeneric@
identifier F = { sqlite3SelectDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3SelectDeleteGeneric@
identifier F = { sqlite3SelectDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3SelectDeleteGeneric@
identifier F = { sqlite3SelectDeleteGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3SelectDeleteGeneric@
identifier F = { sqlite3SelectDeleteGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3SelectDeleteGeneric@
identifier F = { sqlite3SelectDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3VdbeValueListFree
@remove_static_def_brace_same_line_sqlite3VdbeValueListFree@
identifier F = { sqlite3VdbeValueListFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3VdbeValueListFree@
identifier F = { sqlite3VdbeValueListFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3VdbeValueListFree@
identifier F = { sqlite3VdbeValueListFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3VdbeValueListFree@
identifier F = { sqlite3VdbeValueListFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3VdbeValueListFree@
identifier F = { sqlite3VdbeValueListFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3WalDefaultHook
@remove_static_def_brace_same_line_sqlite3WalDefaultHook@
identifier F = { sqlite3WalDefaultHook };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3WalDefaultHook@
identifier F = { sqlite3WalDefaultHook };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3WalDefaultHook@
identifier F = { sqlite3WalDefaultHook };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3WalDefaultHook@
identifier F = { sqlite3WalDefaultHook };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3WalDefaultHook@
identifier F = { sqlite3WalDefaultHook };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3WithDeleteGeneric
@remove_static_def_brace_same_line_sqlite3WithDeleteGeneric@
identifier F = { sqlite3WithDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3WithDeleteGeneric@
identifier F = { sqlite3WithDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3WithDeleteGeneric@
identifier F = { sqlite3WithDeleteGeneric };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3WithDeleteGeneric@
identifier F = { sqlite3WithDeleteGeneric };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3WithDeleteGeneric@
identifier F = { sqlite3WithDeleteGeneric };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3_free
@remove_static_def_brace_same_line_sqlite3_free@
identifier F = { sqlite3_free };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3_free@
identifier F = { sqlite3_free };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3_free@
identifier F = { sqlite3_free };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3_free@
identifier F = { sqlite3_free };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3_free@
identifier F = { sqlite3_free };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3_get_table_cb
@remove_static_def_brace_same_line_sqlite3_get_table_cb@
identifier F = { sqlite3_get_table_cb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3_get_table_cb@
identifier F = { sqlite3_get_table_cb };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3_get_table_cb@
identifier F = { sqlite3_get_table_cb };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3_get_table_cb@
identifier F = { sqlite3_get_table_cb };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3_get_table_cb@
identifier F = { sqlite3_get_table_cb };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3changeset_new
@remove_static_def_brace_same_line_sqlite3changeset_new@
identifier F = { sqlite3changeset_new };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3changeset_new@
identifier F = { sqlite3changeset_new };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3changeset_new@
identifier F = { sqlite3changeset_new };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3changeset_new@
identifier F = { sqlite3changeset_new };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3changeset_new@
identifier F = { sqlite3changeset_new };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqlite3changeset_old
@remove_static_def_brace_same_line_sqlite3changeset_old@
identifier F = { sqlite3changeset_old };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqlite3changeset_old@
identifier F = { sqlite3changeset_old };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqlite3changeset_old@
identifier F = { sqlite3changeset_old };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqlite3changeset_old@
identifier F = { sqlite3changeset_old };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqlite3changeset_old@
identifier F = { sqlite3changeset_old };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: sqliteDefaultBusyCallback
@remove_static_def_brace_same_line_sqliteDefaultBusyCallback@
identifier F = { sqliteDefaultBusyCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_sqliteDefaultBusyCallback@
identifier F = { sqliteDefaultBusyCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_sqliteDefaultBusyCallback@
identifier F = { sqliteDefaultBusyCallback };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_sqliteDefaultBusyCallback@
identifier F = { sqliteDefaultBusyCallback };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_sqliteDefaultBusyCallback@
identifier F = { sqliteDefaultBusyCallback };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: statAccumDestructor
@remove_static_def_brace_same_line_statAccumDestructor@
identifier F = { statAccumDestructor };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_statAccumDestructor@
identifier F = { statAccumDestructor };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_statAccumDestructor@
identifier F = { statAccumDestructor };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_statAccumDestructor@
identifier F = { statAccumDestructor };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_statAccumDestructor@
identifier F = { statAccumDestructor };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: stmtrandFunc
@remove_static_def_brace_same_line_stmtrandFunc@
identifier F = { stmtrandFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_stmtrandFunc@
identifier F = { stmtrandFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_stmtrandFunc@
identifier F = { stmtrandFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_stmtrandFunc@
identifier F = { stmtrandFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_stmtrandFunc@
identifier F = { stmtrandFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: testFunc
@remove_static_def_brace_same_line_testFunc@
identifier F = { testFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_testFunc@
identifier F = { testFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_testFunc@
identifier F = { testFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_testFunc@
identifier F = { testFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_testFunc@
identifier F = { testFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: tryToCloneData
@remove_static_def_brace_same_line_tryToCloneData@
identifier F = { tryToCloneData };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_tryToCloneData@
identifier F = { tryToCloneData };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_tryToCloneData@
identifier F = { tryToCloneData };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_tryToCloneData@
identifier F = { tryToCloneData };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_tryToCloneData@
identifier F = { tryToCloneData };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: uintCollFunc
@remove_static_def_brace_same_line_uintCollFunc@
identifier F = { uintCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_uintCollFunc@
identifier F = { uintCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_uintCollFunc@
identifier F = { uintCollFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_uintCollFunc@
identifier F = { uintCollFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_uintCollFunc@
identifier F = { uintCollFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: useDummyCS
@remove_static_def_brace_same_line_useDummyCS@
identifier F = { useDummyCS };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_useDummyCS@
identifier F = { useDummyCS };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_useDummyCS@
identifier F = { useDummyCS };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_useDummyCS@
identifier F = { useDummyCS };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_useDummyCS@
identifier F = { useDummyCS };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: vfstraceOut
@remove_static_def_brace_same_line_vfstraceOut@
identifier F = { vfstraceOut };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_vfstraceOut@
identifier F = { vfstraceOut };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_vfstraceOut@
identifier F = { vfstraceOut };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_vfstraceOut@
identifier F = { vfstraceOut };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_vfstraceOut@
identifier F = { vfstraceOut };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: whereIndexedExprCleanup
@remove_static_def_brace_same_line_whereIndexedExprCleanup@
identifier F = { whereIndexedExprCleanup };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_whereIndexedExprCleanup@
identifier F = { whereIndexedExprCleanup };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_whereIndexedExprCleanup@
identifier F = { whereIndexedExprCleanup };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_whereIndexedExprCleanup@
identifier F = { whereIndexedExprCleanup };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_whereIndexedExprCleanup@
identifier F = { whereIndexedExprCleanup };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: writefileFunc
@remove_static_def_brace_same_line_writefileFunc@
identifier F = { writefileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_writefileFunc@
identifier F = { writefileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_writefileFunc@
identifier F = { writefileFunc };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_writefileFunc@
identifier F = { writefileFunc };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_writefileFunc@
identifier F = { writefileFunc };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: xBusy2
@remove_static_def_brace_same_line_xBusy2@
identifier F = { xBusy2 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_xBusy2@
identifier F = { xBusy2 };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_xBusy2@
identifier F = { xBusy2 };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_xBusy2@
identifier F = { xBusy2 };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_xBusy2@
identifier F = { xBusy2 };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: xConnect
@remove_static_def_brace_same_line_xConnect@
identifier F = { xConnect };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_xConnect@
identifier F = { xConnect };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_xConnect@
identifier F = { xConnect };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_xConnect@
identifier F = { xConnect };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_xConnect@
identifier F = { xConnect };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: xDestroyOut
@remove_static_def_brace_same_line_xDestroyOut@
identifier F = { xDestroyOut };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_xDestroyOut@
identifier F = { xDestroyOut };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_xDestroyOut@
identifier F = { xDestroyOut };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_xDestroyOut@
identifier F = { xDestroyOut };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_xDestroyOut@
identifier F = { xDestroyOut };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: zipfileFinal
@remove_static_def_brace_same_line_zipfileFinal@
identifier F = { zipfileFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_zipfileFinal@
identifier F = { zipfileFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_zipfileFinal@
identifier F = { zipfileFinal };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_zipfileFinal@
identifier F = { zipfileFinal };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_zipfileFinal@
identifier F = { zipfileFinal };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: zipfileFree
@remove_static_def_brace_same_line_zipfileFree@
identifier F = { zipfileFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_zipfileFree@
identifier F = { zipfileFree };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_zipfileFree@
identifier F = { zipfileFree };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_zipfileFree@
identifier F = { zipfileFree };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_zipfileFree@
identifier F = { zipfileFree };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


// Rules for function: zipfileStep
@remove_static_def_brace_same_line_zipfileStep@
identifier F = { zipfileStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P) { BODY }

@remove_static_def_brace_next_line_zipfileStep@
identifier F = { zipfileStep };
type T;
parameter list P;
statement list BODY;
@@
- static
T F(P)
{ BODY }

@remove_static_def_no_type_zipfileStep@
identifier F = { zipfileStep };
parameter list P;
statement list BODY;
@@
- static
F(P) { BODY }

@remove_static_decl_with_type_zipfileStep@
identifier F = { zipfileStep };
type T;
parameter list P;
@@
- static
T F(P);

@remove_static_inline_zipfileStep@
identifier F = { zipfileStep };
type T;
parameter list P;
statement list BODY;
@@
- static
inline T F(P) { BODY }


@finalize:python@
@@
print(">>> Completed processing 152 functions")
print(">>> Static keywords removed from function definitions")
