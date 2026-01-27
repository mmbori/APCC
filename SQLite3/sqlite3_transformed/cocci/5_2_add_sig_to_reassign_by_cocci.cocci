// Auto-generated Coccinelle script
// Adds signature assignments for function pointer assignments
// Generates rules for all (member, parameter) combinations
//
// Pattern: E1.xFunc = func; -> E1.xFunc_signature = func_signature;
//          E1->xFunc = func; -> E1->xFunc_signature = func_signature;

// ============================================================
// Function Pointer Signature Rules
// Parameters: 56, Members: 56
// ============================================================

// Parameter: callback
@add_sig_callback@
expression E1;
identifier FP = {callback};
@@
(
E1.FP = FP;
+ E1.callback_signature = callback_signature;
|
E1->FP = FP;
+ E1->callback_signature = callback_signature;
)

// Parameter: freeProc
@add_sig_freeProc@
expression E1;
identifier FP = {freeProc};
@@
(
E1.FP = FP;
+ E1.freeProc_signature = freeProc_signature;
|
E1->FP = FP;
+ E1->freeProc_signature = freeProc_signature;
)

// Parameter: x
@add_sig_x@
expression E1;
identifier FP = {x};
@@
(
E1.FP = FP;
+ E1.x_signature = x_signature;
|
E1->FP = FP;
+ E1->x_signature = x_signature;
)

// Parameter: xAuth
@add_sig_xAuth@
expression E1;
identifier FP = {xAuth};
@@
(
E1.FP = FP;
+ E1.xAuth_signature = xAuth_signature;
|
E1->FP = FP;
+ E1->xAuth_signature = xAuth_signature;
)

// Parameter: xBacktrace
@add_sig_xBacktrace@
expression E1;
identifier FP = {xBacktrace};
@@
(
E1.FP = FP;
+ E1.xBacktrace_signature = xBacktrace_signature;
|
E1->FP = FP;
+ E1->xBacktrace_signature = xBacktrace_signature;
)

// Parameter: xBusy
@add_sig_xBusy@
expression E1;
identifier FP = {xBusy};
@@
(
E1.FP = FP;
+ E1.xBusy_signature = xBusy_signature;
|
E1->FP = FP;
+ E1->xBusy_signature = xBusy_signature;
)

// Parameter: xBusyHandler
@add_sig_xBusyHandler@
expression E1;
identifier FP = {xBusyHandler};
@@
(
E1.FP = FP;
+ E1.xBusyHandler_signature = xBusyHandler_signature;
|
E1->FP = FP;
+ E1->xBusyHandler_signature = xBusyHandler_signature;
)

// Parameter: xCall
@add_sig_xCall@
expression E1;
identifier FP = {xCall};
@@
(
E1.FP = FP;
+ E1.xCall_signature = xCall_signature;
|
E1->FP = FP;
+ E1->xCall_signature = xCall_signature;
)

// Parameter: xCallback
@add_sig_xCallback@
expression E1;
identifier FP = {xCallback};
@@
(
E1.FP = FP;
+ E1.xCallback_signature = xCallback_signature;
|
E1->FP = FP;
+ E1->xCallback_signature = xCallback_signature;
)

// Parameter: xChunk
@add_sig_xChunk@
expression E1;
identifier FP = {xChunk};
@@
(
E1.FP = FP;
+ E1.xChunk_signature = xChunk_signature;
|
E1->FP = FP;
+ E1->xChunk_signature = xChunk_signature;
)

// Parameter: xCleanup
@add_sig_xCleanup@
expression E1;
identifier FP = {xCleanup};
@@
(
E1.FP = FP;
+ E1.xCleanup_signature = xCleanup_signature;
|
E1->FP = FP;
+ E1->xCleanup_signature = xCleanup_signature;
)

// Parameter: xCmp
@add_sig_xCmp@
expression E1;
identifier FP = {xCmp};
@@
(
E1.FP = FP;
+ E1.xCmp_signature = xCmp_signature;
|
E1->FP = FP;
+ E1->xCmp_signature = xCmp_signature;
)

// Parameter: xCollNeeded
@add_sig_xCollNeeded@
expression E1;
identifier FP = {xCollNeeded};
@@
(
E1.FP = FP;
+ E1.xCollNeeded_signature = xCollNeeded_signature;
|
E1->FP = FP;
+ E1->xCollNeeded_signature = xCollNeeded_signature;
)

// Parameter: xCollNeeded16
@add_sig_xCollNeeded16@
expression E1;
identifier FP = {xCollNeeded16};
@@
(
E1.FP = FP;
+ E1.xCollNeeded16_signature = xCollNeeded16_signature;
|
E1->FP = FP;
+ E1->xCollNeeded16_signature = xCollNeeded16_signature;
)

// Parameter: xCompare
@add_sig_xCompare@
expression E1;
identifier FP = {xCompare};
@@
(
E1.FP = FP;
+ E1.xCompare_signature = xCompare_signature;
|
E1->FP = FP;
+ E1->xCompare_signature = xCompare_signature;
)

// Parameter: xCond
@add_sig_xCond@
expression E1;
identifier FP = {xCond};
@@
(
E1.FP = FP;
+ E1.xCond_signature = xCond_signature;
|
E1->FP = FP;
+ E1->xCond_signature = xCond_signature;
)

// Parameter: xConflict
@add_sig_xConflict@
expression E1;
identifier FP = {xConflict};
@@
(
E1.FP = FP;
+ E1.xConflict_signature = xConflict_signature;
|
E1->FP = FP;
+ E1->xConflict_signature = xConflict_signature;
)

// Parameter: xConstruct
@add_sig_xConstruct@
expression E1;
identifier FP = {xConstruct};
@@
(
E1.FP = FP;
+ E1.xConstruct_signature = xConstruct_signature;
|
E1->FP = FP;
+ E1->xConstruct_signature = xConstruct_signature;
)

// Parameter: xCreate
@add_sig_xCreate@
expression E1;
identifier FP = {xCreate};
@@
(
E1.FP = FP;
+ E1.xCreate_signature = xCreate_signature;
|
E1->FP = FP;
+ E1->xCreate_signature = xCreate_signature;
)

// Parameter: xDel
@add_sig_xDel@
expression E1;
identifier FP = {xDel};
@@
(
E1.FP = FP;
+ E1.xDel_signature = xDel_signature;
|
E1->FP = FP;
+ E1->xDel_signature = xDel_signature;
)

// Parameter: xDelete
@add_sig_xDelete@
expression E1;
identifier FP = {xDelete};
@@
(
E1.FP = FP;
+ E1.xDelete_signature = xDelete_signature;
|
E1->FP = FP;
+ E1->xDelete_signature = xDelete_signature;
)

// Parameter: xDestroy
@add_sig_xDestroy@
expression E1;
identifier FP = {xDestroy};
@@
(
E1.FP = FP;
+ E1.xDestroy_signature = xDestroy_signature;
|
E1->FP = FP;
+ E1->xDestroy_signature = xDestroy_signature;
)

// Parameter: xDestructor
@add_sig_xDestructor@
expression E1;
identifier FP = {xDestructor};
@@
(
E1.FP = FP;
+ E1.xDestructor_signature = xDestructor_signature;
|
E1->FP = FP;
+ E1->xDestructor_signature = xDestructor_signature;
)

// Parameter: xEntryPoint
@add_sig_xEntryPoint@
expression E1;
identifier FP = {xEntryPoint};
@@
(
E1.FP = FP;
+ E1.xEntryPoint_signature = xEntryPoint_signature;
|
E1->FP = FP;
+ E1->xEntryPoint_signature = xEntryPoint_signature;
)

// Parameter: xFilter
@add_sig_xFilter@
expression E1;
identifier FP = {xFilter};
@@
(
E1.FP = FP;
+ E1.xFilter_signature = xFilter_signature;
|
E1->FP = FP;
+ E1->xFilter_signature = xFilter_signature;
)

// Parameter: xFilterIter
@add_sig_xFilterIter@
expression E1;
identifier FP = {xFilterIter};
@@
(
E1.FP = FP;
+ E1.xFilterIter_signature = xFilterIter_signature;
|
E1->FP = FP;
+ E1->xFilterIter_signature = xFilterIter_signature;
)

// Parameter: xFinal
@add_sig_xFinal@
expression E1;
identifier FP = {xFinal};
@@
(
E1.FP = FP;
+ E1.xFinal_signature = xFinal_signature;
|
E1->FP = FP;
+ E1->xFinal_signature = xFinal_signature;
)

// Parameter: xForEach
@add_sig_xForEach@
expression E1;
identifier FP = {xForEach};
@@
(
E1.FP = FP;
+ E1.xForEach_signature = xForEach_signature;
|
E1->FP = FP;
+ E1->xForEach_signature = xForEach_signature;
)

// Parameter: xFree
@add_sig_xFree@
expression E1;
identifier FP = {xFree};
@@
(
E1.FP = FP;
+ E1.xFree_signature = xFree_signature;
|
E1->FP = FP;
+ E1->xFree_signature = xFree_signature;
)

// Parameter: xFunc
@add_sig_xFunc@
expression E1;
identifier FP = {xFunc};
@@
(
E1.FP = FP;
+ E1.xFunc_signature = xFunc_signature;
|
E1->FP = FP;
+ E1->xFunc_signature = xFunc_signature;
)

// Parameter: xGeom
@add_sig_xGeom@
expression E1;
identifier FP = {xGeom};
@@
(
E1.FP = FP;
+ E1.xGeom_signature = xGeom_signature;
|
E1->FP = FP;
+ E1->xGeom_signature = xGeom_signature;
)

// Parameter: xInit
@add_sig_xInit@
expression E1;
identifier FP = {xInit};
@@
(
E1.FP = FP;
+ E1.xInit_signature = xInit_signature;
|
E1->FP = FP;
+ E1->xInit_signature = xInit_signature;
)

// Parameter: xInput
@add_sig_xInput@
expression E1;
identifier FP = {xInput};
@@
(
E1.FP = FP;
+ E1.xInput_signature = xInput_signature;
|
E1->FP = FP;
+ E1->xInput_signature = xInput_signature;
)

// Parameter: xInputA
@add_sig_xInputA@
expression E1;
identifier FP = {xInputA};
@@
(
E1.FP = FP;
+ E1.xInputA_signature = xInputA_signature;
|
E1->FP = FP;
+ E1->xInputA_signature = xInputA_signature;
)

// Parameter: xInputB
@add_sig_xInputB@
expression E1;
identifier FP = {xInputB};
@@
(
E1.FP = FP;
+ E1.xInputB_signature = xInputB_signature;
|
E1->FP = FP;
+ E1->xInputB_signature = xInputB_signature;
)

// Parameter: xInverse
@add_sig_xInverse@
expression E1;
identifier FP = {xInverse};
@@
(
E1.FP = FP;
+ E1.xInverse_signature = xInverse_signature;
|
E1->FP = FP;
+ E1->xInverse_signature = xInverse_signature;
)

// Parameter: xIter
@add_sig_xIter@
expression E1;
identifier FP = {xIter};
@@
(
E1.FP = FP;
+ E1.xIter_signature = xIter_signature;
|
E1->FP = FP;
+ E1->xIter_signature = xIter_signature;
)

// Parameter: xJump
@add_sig_xJump@
expression E1;
identifier FP = {xJump};
@@
(
E1.FP = FP;
+ E1.xJump_signature = xJump_signature;
|
E1->FP = FP;
+ E1->xJump_signature = xJump_signature;
)

// Parameter: xNotify
@add_sig_xNotify@
expression E1;
identifier FP = {xNotify};
@@
(
E1.FP = FP;
+ E1.xNotify_signature = xNotify_signature;
|
E1->FP = FP;
+ E1->xNotify_signature = xNotify_signature;
)

// Parameter: xOut
@add_sig_xOut@
expression E1;
identifier FP = {xOut};
@@
(
E1.FP = FP;
+ E1.xOut_signature = xOut_signature;
|
E1->FP = FP;
+ E1->xOut_signature = xOut_signature;
)

// Parameter: xOutput
@add_sig_xOutput@
expression E1;
identifier FP = {xOutput};
@@
(
E1.FP = FP;
+ E1.xOutput_signature = xOutput_signature;
|
E1->FP = FP;
+ E1->xOutput_signature = xOutput_signature;
)

// Parameter: xPreUpdate
@add_sig_xPreUpdate@
expression E1;
identifier FP = {xPreUpdate};
@@
(
E1.FP = FP;
+ E1.xPreUpdate_signature = xPreUpdate_signature;
|
E1->FP = FP;
+ E1->xPreUpdate_signature = xPreUpdate_signature;
)

// Parameter: xProfile
@add_sig_xProfile@
expression E1;
identifier FP = {xProfile};
@@
(
E1.FP = FP;
+ E1.xProfile_signature = xProfile_signature;
|
E1->FP = FP;
+ E1->xProfile_signature = xProfile_signature;
)

// Parameter: xProgress
@add_sig_xProgress@
expression E1;
identifier FP = {xProgress};
@@
(
E1.FP = FP;
+ E1.xProgress_signature = xProgress_signature;
|
E1->FP = FP;
+ E1->xProgress_signature = xProgress_signature;
)

// Parameter: xQueryFunc
@add_sig_xQueryFunc@
expression E1;
identifier FP = {xQueryFunc};
@@
(
E1.FP = FP;
+ E1.xQueryFunc_signature = xQueryFunc_signature;
|
E1->FP = FP;
+ E1->xQueryFunc_signature = xQueryFunc_signature;
)

// Parameter: xReinit
@add_sig_xReinit@
expression E1;
identifier FP = {xReinit};
@@
(
E1.FP = FP;
+ E1.xReinit_signature = xReinit_signature;
|
E1->FP = FP;
+ E1->xReinit_signature = xReinit_signature;
)

// Parameter: xRename
@add_sig_xRename@
expression E1;
identifier FP = {xRename};
@@
(
E1.FP = FP;
+ E1.xRename_signature = xRename_signature;
|
E1->FP = FP;
+ E1->xRename_signature = xRename_signature;
)

// Parameter: xSFunc
@add_sig_xSFunc@
expression E1;
identifier FP = {xSFunc};
@@
(
E1.FP = FP;
+ E1.xSFunc_signature = xSFunc_signature;
|
E1->FP = FP;
+ E1->xSFunc_signature = xSFunc_signature;
)

// Parameter: xSql
@add_sig_xSql@
expression E1;
identifier FP = {xSql};
@@
(
E1.FP = FP;
+ E1.xSql_signature = xSql_signature;
|
E1->FP = FP;
+ E1->xSql_signature = xSql_signature;
)

// Parameter: xStep
@add_sig_xStep@
expression E1;
identifier FP = {xStep};
@@
(
E1.FP = FP;
+ E1.xStep_signature = xStep_signature;
|
E1->FP = FP;
+ E1->xStep_signature = xStep_signature;
)

// Parameter: xStress
@add_sig_xStress@
expression E1;
identifier FP = {xStress};
@@
(
E1.FP = FP;
+ E1.xStress_signature = xStress_signature;
|
E1->FP = FP;
+ E1->xStress_signature = xStress_signature;
)

// Parameter: xToken
@add_sig_xToken@
expression E1;
identifier FP = {xToken};
@@
(
E1.FP = FP;
+ E1.xToken_signature = xToken_signature;
|
E1->FP = FP;
+ E1->xToken_signature = xToken_signature;
)

// Parameter: xTrace
@add_sig_xTrace@
expression E1;
identifier FP = {xTrace};
@@
(
E1.FP = FP;
+ E1.xTrace_signature = xTrace_signature;
|
E1->FP = FP;
+ E1->xTrace_signature = xTrace_signature;
)

// Parameter: xUndo
@add_sig_xUndo@
expression E1;
identifier FP = {xUndo};
@@
(
E1.FP = FP;
+ E1.xUndo_signature = xUndo_signature;
|
E1->FP = FP;
+ E1->xUndo_signature = xUndo_signature;
)

// Parameter: xValue
@add_sig_xValue@
expression E1;
identifier FP = {xValue};
@@
(
E1.FP = FP;
+ E1.xValue_signature = xValue_signature;
|
E1->FP = FP;
+ E1->xValue_signature = xValue_signature;
)

// Parameter: xVisit
@add_sig_xVisit@
expression E1;
identifier FP = {xVisit};
@@
(
E1.FP = FP;
+ E1.xVisit_signature = xVisit_signature;
|
E1->FP = FP;
+ E1->xVisit_signature = xVisit_signature;
)

