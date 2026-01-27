// Auto-generated Coccinelle script for function pointer parameter calls
// Only transforms: fp_name(args)
// Does NOT transform: obj->fp_name(args) or obj.fp_name(args)
//
// Patterns:
//   1. fp_name(args);           -> direct call or if-else chain
//   2. rc = fp_name(args);      -> direct call or if-else chain
//   3. return fp_name(args);    -> direct call or if-else chain
//
// Usage: spatch --sp-file transform.cocci --dir <source_dir> --in-place

// ===== FUNCTION POINTER PARAMETER CALL TRANSFORMATION =====
// Transform fp_name(args) calls within fn_name
// Does NOT transform obj->fp_name() or obj.fp_name()


// Function: bindText, FP param: xDel (seq: 5)
// Candidates: 0, SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, icuCollationDel, rtreeMatchArgFree, sqlite3RCStrUnref, sqlite3SchemaClear, sqlite3VdbeValueListFree, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_bindText_xDel_assign@
identifier fn = bindText;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_bindText_xDel_standalone@
identifier fn = bindText;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_bindText_xDel_return@
identifier fn = bindText;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: blobReadWrite, FP param: xCall (seq: 5)
// Candidates: sqlite3BtreePayloadChecked, sqlite3BtreePutData

// Multi-candidate: assignment
@transform_blobReadWrite_xCall_assign@
identifier fn = blobReadWrite;
identifier fp = xCall;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], sizeof(xCall_signature)) == 0) {
+     E = sqlite3BtreePayloadChecked(args);
+ }
+ else if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePutData_enum], sizeof(xCall_signature)) == 0) {
+     E = sqlite3BtreePutData(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_blobReadWrite_xCall_standalone@
identifier fn = blobReadWrite;
identifier fp = xCall;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], sizeof(xCall_signature)) == 0) {
+     sqlite3BtreePayloadChecked(args);
+ }
+ else if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePutData_enum], sizeof(xCall_signature)) == 0) {
+     sqlite3BtreePutData(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_blobReadWrite_xCall_return@
identifier fn = blobReadWrite;
identifier fp = xCall;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], sizeof(xCall_signature)) == 0) {
+     return sqlite3BtreePayloadChecked(args);
+ }
+ else if (memcmp(xCall_signature, xCall_signatures[xCall_sqlite3BtreePutData_enum], sizeof(xCall_signature)) == 0) {
+     return sqlite3BtreePutData(args);
+ }
...>
}

// Function: createCollation, FP param: xCompare (seq: 5)
// Candidates: binCollFunc, decimalCollFunc, dummyCompare, icuCollationColl, nocaseCollatingFunc, rtrimCollFunc, uintCollFunc

// Multi-candidate: assignment
@transform_createCollation_xCompare_assign@
identifier fn = createCollation;
identifier fp = xCompare;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     E = dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     E = icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = uintCollFunc(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createCollation_xCompare_standalone@
identifier fn = createCollation;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     uintCollFunc(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createCollation_xCompare_return@
identifier fn = createCollation;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     return dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     return icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return uintCollFunc(args);
+ }
...>
}

// Function: createCollation, FP param: xDel (seq: 6)
// Candidates: 0, SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, icuCollationDel, rtreeMatchArgFree, sqlite3RCStrUnref, sqlite3SchemaClear, sqlite3VdbeValueListFree, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_createCollation_xDel_assign@
identifier fn = createCollation;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createCollation_xDel_standalone@
identifier fn = createCollation;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createCollation_xDel_return@
identifier fn = createCollation;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xDestroy (seq: 11)
// Candidates: 0, hashDestroy, icuCollationDel, rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_createFunctionApi_xDestroy_assign@
identifier fn = createFunctionApi;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     E = hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xDestroy_standalone@
identifier fn = createFunctionApi;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xDestroy_return@
identifier fn = createFunctionApi;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     return hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xFinal (seq: 8)
// Candidates: 0, decimalSumFinalize, dummyUDFvalue, percentFinal, sha3AggFinal, zipfileFinal

// Multi-candidate: assignment
@transform_createFunctionApi_xFinal_assign@
identifier fn = createFunctionApi;
identifier fp = xFinal;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     E = decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     E = dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = zipfileFinal(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xFinal_standalone@
identifier fn = createFunctionApi;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     zipfileFinal(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xFinal_return@
identifier fn = createFunctionApi;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     return decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     return dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return zipfileFinal(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xInverse (seq: 10)
// Candidates: 0, decimalSumInverse, percentInverse

// Multi-candidate: assignment
@transform_createFunctionApi_xInverse_assign@
identifier fn = createFunctionApi;
identifier fp = xInverse;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = percentInverse(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xInverse_standalone@
identifier fn = createFunctionApi;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     percentInverse(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xInverse_return@
identifier fn = createFunctionApi;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return percentInverse(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xSFunc (seq: 6)
// Candidates: 0, base64, base85, dummyUDF, editFunc, fts3AllocateMSI, fts3ExprGlobalHitsCb, fts3ExprLoadDoclistsCb, fts3ExprLocalHitsCb, fts3ExprPhraseCountCb, fts3ExprRestartIfCb, fts3ExprTermOffsetInit, fts3ExprTest, fts3ExprTestRebalance, fts3MatchinfoLcsCb, fts3SnippetFindPositions, fts3TokenizerFunc, geomCallback, idxRemFunc, idxSampleFunc, intTestFunc, intckParseCreateIndexFunc, is_base85, likeFunc, lsModeFunc, rbuFossilDeltaFunc, rbuIndexCntFunc, rbuTargetNameFunc, rbuTmpInsertFunc, re_bytecode_func, re_sql_func, readfileFunc, rtreecheck, rtreedepth, rtreenode, sha1Func, sha1QueryFunc, sha3Func, sha3QueryFunc, shellAddSchemaName, shellDtostr, shellFkeyCollateClause, shellModuleSchema, shellPutsFunc, shellStrtod, shellUSleepFunc, sqlarCompressFunc, sqlarUncompressFunc, sqlite3InvalidFunction, stmtrandFunc, testFunc, writefileFunc, decimalFunc, decimalCmpFunc, decimalAddFunc, decimalSubFunc, decimalMulFunc, decimalPow2Func, ieee754func, ieee754func_to_blob, ieee754inc, geopolyAreaFunc, geopolyBlobFunc, geopolyJsonFunc, geopolySvgFunc, geopolyWithinFunc, geopolyContainsPointFunc, geopolyOverlapFunc, geopolyDebugFunc, geopolyBBoxFunc, geopolyXformFunc, geopolyRegularFunc, geopolyCcwFunc, recoverGetPage, recoverPageIsUsed, recoverReadI32, recoverEscapeCrlf

// Multi-candidate: assignment
@transform_createFunctionApi_xSFunc_assign@
identifier fn = createFunctionApi;
identifier fp = xSFunc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalCmpFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalAddFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalAddFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalSubFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalSubFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalMulFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalMulFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalPow2Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = decimalPow2Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = ieee754func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], sizeof(xSFunc_signature)) == 0) {
+     E = ieee754func_to_blob(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754inc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = ieee754inc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyAreaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyBlobFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyJsonFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolySvgFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyWithinFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyContainsPointFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyOverlapFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyDebugFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyBBoxFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyXformFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyRegularFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geopolyCcwFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverGetPage_enum], sizeof(xSFunc_signature)) == 0) {
+     E = recoverGetPage(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], sizeof(xSFunc_signature)) == 0) {
+     E = recoverPageIsUsed(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverReadI32_enum], sizeof(xSFunc_signature)) == 0) {
+     E = recoverReadI32(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], sizeof(xSFunc_signature)) == 0) {
+     E = recoverEscapeCrlf(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xSFunc_standalone@
identifier fn = createFunctionApi;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalCmpFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalAddFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalAddFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalSubFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalSubFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalMulFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalMulFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalPow2Func_enum], sizeof(xSFunc_signature)) == 0) {
+     decimalPow2Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_enum], sizeof(xSFunc_signature)) == 0) {
+     ieee754func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], sizeof(xSFunc_signature)) == 0) {
+     ieee754func_to_blob(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754inc_enum], sizeof(xSFunc_signature)) == 0) {
+     ieee754inc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyAreaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyBlobFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyJsonFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolySvgFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyWithinFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyContainsPointFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyOverlapFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyDebugFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyBBoxFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyXformFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyRegularFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     geopolyCcwFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverGetPage_enum], sizeof(xSFunc_signature)) == 0) {
+     recoverGetPage(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], sizeof(xSFunc_signature)) == 0) {
+     recoverPageIsUsed(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverReadI32_enum], sizeof(xSFunc_signature)) == 0) {
+     recoverReadI32(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], sizeof(xSFunc_signature)) == 0) {
+     recoverEscapeCrlf(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xSFunc_return@
identifier fn = createFunctionApi;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     return base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     return geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalCmpFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalAddFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalAddFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalSubFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalSubFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalMulFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalMulFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_decimalPow2Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return decimalPow2Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_enum], sizeof(xSFunc_signature)) == 0) {
+     return ieee754func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], sizeof(xSFunc_signature)) == 0) {
+     return ieee754func_to_blob(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_ieee754inc_enum], sizeof(xSFunc_signature)) == 0) {
+     return ieee754inc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyAreaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyBlobFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyJsonFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolySvgFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyWithinFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyContainsPointFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyOverlapFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyDebugFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyBBoxFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyXformFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyRegularFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return geopolyCcwFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverGetPage_enum], sizeof(xSFunc_signature)) == 0) {
+     return recoverGetPage(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], sizeof(xSFunc_signature)) == 0) {
+     return recoverPageIsUsed(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverReadI32_enum], sizeof(xSFunc_signature)) == 0) {
+     return recoverReadI32(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], sizeof(xSFunc_signature)) == 0) {
+     return recoverEscapeCrlf(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xStep (seq: 7)
// Candidates: 0, decimalSumStep, dummyUDF, percentStep, sha3AggStep, zipfileStep

// Multi-candidate: assignment
@transform_createFunctionApi_xStep_assign@
identifier fn = createFunctionApi;
identifier fp = xStep;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     E = decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     E = percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     E = sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     E = zipfileStep(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xStep_standalone@
identifier fn = createFunctionApi;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     zipfileStep(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xStep_return@
identifier fn = createFunctionApi;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     return decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     return percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     return sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     return zipfileStep(args);
+ }
...>
}

// Function: createFunctionApi, FP param: xValue (seq: 9)
// Candidates: 0, decimalSumValue, percentValue, sqlite3changeset_new, sqlite3changeset_old

// Multi-candidate: assignment
@transform_createFunctionApi_xValue_assign@
identifier fn = createFunctionApi;
identifier fp = xValue;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     E = decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     E = percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createFunctionApi_xValue_standalone@
identifier fn = createFunctionApi;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createFunctionApi_xValue_return@
identifier fn = createFunctionApi;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     return decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     return percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_old(args);
+ }
...>
}

// Function: createModule, FP param: xDestroy (seq: 5)
// Candidates: 0, hashDestroy, icuCollationDel, rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_createModule_xDestroy_assign@
identifier fn = createModule;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     E = hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_createModule_xDestroy_standalone@
identifier fn = createModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_createModule_xDestroy_return@
identifier fn = createModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     return hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: exprCodeBetween, FP param: xJump (seq: 4)
// Candidates: 0, sqlite3ExprIfFalse, sqlite3ExprIfTrue

// Multi-candidate: assignment
@transform_exprCodeBetween_xJump_assign@
identifier fn = exprCodeBetween;
identifier fp = xJump;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xJump_signature, xJump_signatures[xJump_0_enum], sizeof(xJump_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], sizeof(xJump_signature)) == 0) {
+     E = sqlite3ExprIfFalse(args);
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], sizeof(xJump_signature)) == 0) {
+     E = sqlite3ExprIfTrue(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_exprCodeBetween_xJump_standalone@
identifier fn = exprCodeBetween;
identifier fp = xJump;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xJump_signature, xJump_signatures[xJump_0_enum], sizeof(xJump_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], sizeof(xJump_signature)) == 0) {
+     sqlite3ExprIfFalse(args);
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], sizeof(xJump_signature)) == 0) {
+     sqlite3ExprIfTrue(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_exprCodeBetween_xJump_return@
identifier fn = exprCodeBetween;
identifier fp = xJump;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xJump_signature, xJump_signatures[xJump_0_enum], sizeof(xJump_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], sizeof(xJump_signature)) == 0) {
+     return sqlite3ExprIfFalse(args);
+ }
+ else if (memcmp(xJump_signature, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], sizeof(xJump_signature)) == 0) {
+     return sqlite3ExprIfTrue(args);
+ }
...>
}

// Function: fts3ExprIterate2, FP param: x (seq: 3)
// Candidates: fts3AllocateMSI, fts3ExprGlobalHitsCb, fts3ExprLoadDoclistsCb, fts3ExprLocalHitsCb, fts3ExprPhraseCountCb, fts3ExprRestartIfCb, fts3ExprTermOffsetInit, fts3MatchinfoLcsCb, fts3SnippetFindPositions

// Multi-candidate: assignment
@transform_fts3ExprIterate2_x_assign@
identifier fn = fts3ExprIterate2;
identifier fp = x;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     E = fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     E = fts3SnippetFindPositions(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_fts3ExprIterate2_x_standalone@
identifier fn = fts3ExprIterate2;
identifier fp = x;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     fts3SnippetFindPositions(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_fts3ExprIterate2_x_return@
identifier fn = fts3ExprIterate2;
identifier fp = x;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     return fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     return fts3SnippetFindPositions(args);
+ }
...>
}

// Function: fts3SegReaderSort, FP param: xCmp (seq: 4)
// Candidates: fts3SegReaderCmp, fts3SegReaderDoclistCmpRev, fts3SegReaderDoclistCmp

// Multi-candidate: assignment
@transform_fts3SegReaderSort_xCmp_assign@
identifier fn = fts3SegReaderSort;
identifier fp = xCmp;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], sizeof(xCmp_signature)) == 0) {
+     E = fts3SegReaderCmp(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], sizeof(xCmp_signature)) == 0) {
+     E = fts3SegReaderDoclistCmpRev(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], sizeof(xCmp_signature)) == 0) {
+     E = fts3SegReaderDoclistCmp(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_fts3SegReaderSort_xCmp_standalone@
identifier fn = fts3SegReaderSort;
identifier fp = xCmp;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], sizeof(xCmp_signature)) == 0) {
+     fts3SegReaderCmp(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], sizeof(xCmp_signature)) == 0) {
+     fts3SegReaderDoclistCmpRev(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], sizeof(xCmp_signature)) == 0) {
+     fts3SegReaderDoclistCmp(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_fts3SegReaderSort_xCmp_return@
identifier fn = fts3SegReaderSort;
identifier fp = xCmp;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], sizeof(xCmp_signature)) == 0) {
+     return fts3SegReaderCmp(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], sizeof(xCmp_signature)) == 0) {
+     return fts3SegReaderDoclistCmpRev(args);
+ }
+ else if (memcmp(xCmp_signature, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], sizeof(xCmp_signature)) == 0) {
+     return fts3SegReaderDoclistCmp(args);
+ }
...>
}

// Function: fts5NewTokenizerModule, FP param: xDestroy (seq: 4)
// Candidates: 0, hashDestroy, icuCollationDel, rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_fts5NewTokenizerModule_xDestroy_assign@
identifier fn = fts5NewTokenizerModule;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     E = hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_fts5NewTokenizerModule_xDestroy_standalone@
identifier fn = fts5NewTokenizerModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_fts5NewTokenizerModule_xDestroy_return@
identifier fn = fts5NewTokenizerModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     return hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: fts5VisitEntries, FP param: xVisit (seq: 6)
// Candidates: prefixIterSetupCb, prefixIterSetupTokendataCb

// Multi-candidate: assignment
@transform_fts5VisitEntries_xVisit_assign@
identifier fn = fts5VisitEntries;
identifier fp = xVisit;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupCb_enum], sizeof(xVisit_signature)) == 0) {
+     E = prefixIterSetupCb(args);
+ }
+ else if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], sizeof(xVisit_signature)) == 0) {
+     E = prefixIterSetupTokendataCb(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_fts5VisitEntries_xVisit_standalone@
identifier fn = fts5VisitEntries;
identifier fp = xVisit;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupCb_enum], sizeof(xVisit_signature)) == 0) {
+     prefixIterSetupCb(args);
+ }
+ else if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], sizeof(xVisit_signature)) == 0) {
+     prefixIterSetupTokendataCb(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_fts5VisitEntries_xVisit_return@
identifier fn = fts5VisitEntries;
identifier fp = xVisit;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupCb_enum], sizeof(xVisit_signature)) == 0) {
+     return prefixIterSetupCb(args);
+ }
+ else if (memcmp(xVisit_signature, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], sizeof(xVisit_signature)) == 0) {
+     return prefixIterSetupTokendataCb(args);
+ }
...>
}

// Function: invokeValueDestructor, FP param: xDel (seq: 2)
// Candidates: 0, SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, icuCollationDel, rtreeMatchArgFree, sqlite3RCStrUnref, sqlite3SchemaClear, sqlite3VdbeValueListFree, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_invokeValueDestructor_xDel_assign@
identifier fn = invokeValueDestructor;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_invokeValueDestructor_xDel_standalone@
identifier fn = invokeValueDestructor;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_invokeValueDestructor_xDel_return@
identifier fn = invokeValueDestructor;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: recoverInit, FP param: xSql (seq: 4)
// Candidates: 0, recoverSqlCb

// Multi-candidate: assignment
@transform_recoverInit_xSql_assign@
identifier fn = recoverInit;
identifier fp = xSql;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xSql_signature, xSql_signatures[xSql_0_enum], sizeof(xSql_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xSql_signature, xSql_signatures[xSql_recoverSqlCb_enum], sizeof(xSql_signature)) == 0) {
+     E = recoverSqlCb(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_recoverInit_xSql_standalone@
identifier fn = recoverInit;
identifier fp = xSql;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xSql_signature, xSql_signatures[xSql_0_enum], sizeof(xSql_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xSql_signature, xSql_signatures[xSql_recoverSqlCb_enum], sizeof(xSql_signature)) == 0) {
+     recoverSqlCb(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_recoverInit_xSql_return@
identifier fn = recoverInit;
identifier fp = xSql;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xSql_signature, xSql_signatures[xSql_0_enum], sizeof(xSql_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xSql_signature, xSql_signatures[xSql_recoverSqlCb_enum], sizeof(xSql_signature)) == 0) {
+     return recoverSqlCb(args);
+ }
...>
}

// Function: sessionBindRow, FP param: xValue (seq: 2)
// Candidates: sqlite3changeset_new, sqlite3changeset_old

// Multi-candidate: assignment
@transform_sessionBindRow_xValue_assign@
identifier fn = sessionBindRow;
identifier fp = xValue;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sessionBindRow_xValue_standalone@
identifier fn = sessionBindRow;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sessionBindRow_xValue_return@
identifier fn = sessionBindRow;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_old(args);
+ }
...>
}

// Function: sessionChangegroupOutput, FP param: xOutput (seq: 2)
// Candidates: 0

@transform_sessionChangegroupOutput_xOutput_assign@
identifier fn = sessionChangegroupOutput;
identifier fp = xOutput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionChangegroupOutput_xOutput_standalone@
identifier fn = sessionChangegroupOutput;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionChangegroupOutput_xOutput_return@
identifier fn = sessionChangegroupOutput;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sessionChangesetApply, FP param: xFilter (seq: 3)
// Candidates: 0, session_filter

// Multi-candidate: assignment
@transform_sessionChangesetApply_xFilter_assign@
identifier fn = sessionChangesetApply;
identifier fp = xFilter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     E = session_filter(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sessionChangesetApply_xFilter_standalone@
identifier fn = sessionChangesetApply;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     session_filter(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sessionChangesetApply_xFilter_return@
identifier fn = sessionChangesetApply;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     return session_filter(args);
+ }
...>
}

// Function: sessionChangesetApply, FP param: xFilterIter (seq: 4)
// Candidates: 0, session_filter

// Multi-candidate: assignment
@transform_sessionChangesetApply_xFilterIter_assign@
identifier fn = sessionChangesetApply;
identifier fp = xFilterIter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     E = session_filter(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sessionChangesetApply_xFilterIter_standalone@
identifier fn = sessionChangesetApply;
identifier fp = xFilterIter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     session_filter(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sessionChangesetApply_xFilterIter_return@
identifier fn = sessionChangesetApply;
identifier fp = xFilterIter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     return session_filter(args);
+ }
...>
}

// Function: sessionChangesetApplyV23, FP param: xFilter (seq: 6)
// Candidates: 0, session_filter

// Multi-candidate: assignment
@transform_sessionChangesetApplyV23_xFilter_assign@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     E = session_filter(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sessionChangesetApplyV23_xFilter_standalone@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     session_filter(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sessionChangesetApplyV23_xFilter_return@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFilter_signature, xFilter_signatures[xFilter_0_enum], sizeof(xFilter_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFilter_signature, xFilter_signatures[xFilter_session_filter_enum], sizeof(xFilter_signature)) == 0) {
+     return session_filter(args);
+ }
...>
}

// Function: sessionChangesetApplyV23, FP param: xFilterIter (seq: 7)
// Candidates: 0, session_filter

// Multi-candidate: assignment
@transform_sessionChangesetApplyV23_xFilterIter_assign@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilterIter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     E = session_filter(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sessionChangesetApplyV23_xFilterIter_standalone@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilterIter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     session_filter(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sessionChangesetApplyV23_xFilterIter_return@
identifier fn = sessionChangesetApplyV23;
identifier fp = xFilterIter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_0_enum], sizeof(xFilterIter_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFilterIter_signature, xFilterIter_signatures[xFilterIter_session_filter_enum], sizeof(xFilterIter_signature)) == 0) {
+     return session_filter(args);
+ }
...>
}

// Function: sessionChangesetApplyV23, FP param: xInput (seq: 4)
// Candidates: 0

@transform_sessionChangesetApplyV23_xInput_assign@
identifier fn = sessionChangesetApplyV23;
identifier fp = xInput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionChangesetApplyV23_xInput_standalone@
identifier fn = sessionChangesetApplyV23;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionChangesetApplyV23_xInput_return@
identifier fn = sessionChangesetApplyV23;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sessionChangesetInvert, FP param: xOutput (seq: 2)
// Candidates: 0

@transform_sessionChangesetInvert_xOutput_assign@
identifier fn = sessionChangesetInvert;
identifier fp = xOutput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionChangesetInvert_xOutput_standalone@
identifier fn = sessionChangesetInvert;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionChangesetInvert_xOutput_return@
identifier fn = sessionChangesetInvert;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sessionChangesetStart, FP param: xInput (seq: 2)
// Candidates: 0

@transform_sessionChangesetStart_xInput_assign@
identifier fn = sessionChangesetStart;
identifier fp = xInput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionChangesetStart_xInput_standalone@
identifier fn = sessionChangesetStart;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionChangesetStart_xInput_return@
identifier fn = sessionChangesetStart;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sessionGenerateChangeset, FP param: xOutput (seq: 3)
// Candidates: 0

@transform_sessionGenerateChangeset_xOutput_assign@
identifier fn = sessionGenerateChangeset;
identifier fp = xOutput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionGenerateChangeset_xOutput_standalone@
identifier fn = sessionGenerateChangeset;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionGenerateChangeset_xOutput_return@
identifier fn = sessionGenerateChangeset;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sessionRebase, FP param: xOutput (seq: 3)
// Candidates: 0

@transform_sessionRebase_xOutput_assign@
identifier fn = sessionRebase;
identifier fp = xOutput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sessionRebase_xOutput_standalone@
identifier fn = sessionRebase;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sessionRebase_xOutput_return@
identifier fn = sessionRebase;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: setResultStrOrError, FP param: xDel (seq: 5)
// Candidates: 0, SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, icuCollationDel, rtreeMatchArgFree, sqlite3RCStrUnref, sqlite3SchemaClear, sqlite3VdbeValueListFree, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_setResultStrOrError_xDel_assign@
identifier fn = setResultStrOrError;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_setResultStrOrError_xDel_standalone@
identifier fn = setResultStrOrError;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_setResultStrOrError_xDel_return@
identifier fn = setResultStrOrError;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: sqlite3BtreeSchema, FP param: xFree (seq: 3)
// Candidates: 0, sqlite3SchemaClear

// Multi-candidate: assignment
@transform_sqlite3BtreeSchema_xFree_assign@
identifier fn = sqlite3BtreeSchema;
identifier fp = xFree;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFree_signature, xFree_signatures[xFree_0_enum], sizeof(xFree_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFree_signature, xFree_signatures[xFree_sqlite3SchemaClear_enum], sizeof(xFree_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3BtreeSchema_xFree_standalone@
identifier fn = sqlite3BtreeSchema;
identifier fp = xFree;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFree_signature, xFree_signatures[xFree_0_enum], sizeof(xFree_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFree_signature, xFree_signatures[xFree_sqlite3SchemaClear_enum], sizeof(xFree_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3BtreeSchema_xFree_return@
identifier fn = sqlite3BtreeSchema;
identifier fp = xFree;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFree_signature, xFree_signatures[xFree_0_enum], sizeof(xFree_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFree_signature, xFree_signatures[xFree_sqlite3SchemaClear_enum], sizeof(xFree_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
...>
}

// Function: sqlite3CreateFunc, FP param: xFinal (seq: 8)
// Candidates: 0, decimalSumFinalize, dummyUDFvalue, percentFinal, sha3AggFinal, zipfileFinal, rtreeFreeCallback

// Multi-candidate: assignment
@transform_sqlite3CreateFunc_xFinal_assign@
identifier fn = sqlite3CreateFunc;
identifier fp = xFinal;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     E = decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     E = dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = zipfileFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_rtreeFreeCallback_enum], sizeof(xFinal_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3CreateFunc_xFinal_standalone@
identifier fn = sqlite3CreateFunc;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     zipfileFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_rtreeFreeCallback_enum], sizeof(xFinal_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3CreateFunc_xFinal_return@
identifier fn = sqlite3CreateFunc;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     return decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     return dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return zipfileFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_rtreeFreeCallback_enum], sizeof(xFinal_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
...>
}

// Function: sqlite3CreateFunc, FP param: xInverse (seq: 10)
// Candidates: 0, decimalSumInverse, percentInverse

// Multi-candidate: assignment
@transform_sqlite3CreateFunc_xInverse_assign@
identifier fn = sqlite3CreateFunc;
identifier fp = xInverse;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = percentInverse(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3CreateFunc_xInverse_standalone@
identifier fn = sqlite3CreateFunc;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     percentInverse(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3CreateFunc_xInverse_return@
identifier fn = sqlite3CreateFunc;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return percentInverse(args);
+ }
...>
}

// Function: sqlite3CreateFunc, FP param: xSFunc (seq: 6)
// Candidates: 0, base64, base85, dummyUDF, editFunc, fts3AllocateMSI, fts3ExprGlobalHitsCb, fts3ExprLoadDoclistsCb, fts3ExprLocalHitsCb, fts3ExprPhraseCountCb, fts3ExprRestartIfCb, fts3ExprTermOffsetInit, fts3ExprTest, fts3ExprTestRebalance, fts3MatchinfoLcsCb, fts3SnippetFindPositions, fts3TokenizerFunc, geomCallback, idxRemFunc, idxSampleFunc, intTestFunc, intckParseCreateIndexFunc, is_base85, likeFunc, lsModeFunc, rbuFossilDeltaFunc, rbuIndexCntFunc, rbuTargetNameFunc, rbuTmpInsertFunc, re_bytecode_func, re_sql_func, readfileFunc, rtreecheck, rtreedepth, rtreenode, sha1Func, sha1QueryFunc, sha3Func, sha3QueryFunc, shellAddSchemaName, shellDtostr, shellFkeyCollateClause, shellModuleSchema, shellPutsFunc, shellStrtod, shellUSleepFunc, sqlarCompressFunc, sqlarUncompressFunc, sqlite3InvalidFunction, stmtrandFunc, testFunc, writefileFunc

// Multi-candidate: assignment
@transform_sqlite3CreateFunc_xSFunc_assign@
identifier fn = sqlite3CreateFunc;
identifier fp = xSFunc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = writefileFunc(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3CreateFunc_xSFunc_standalone@
identifier fn = sqlite3CreateFunc;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     writefileFunc(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3CreateFunc_xSFunc_return@
identifier fn = sqlite3CreateFunc;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     return base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     return geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_likeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return likeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return writefileFunc(args);
+ }
...>
}

// Function: sqlite3CreateFunc, FP param: xStep (seq: 7)
// Candidates: 0, decimalSumStep, dummyUDF, percentStep, sha3AggStep, zipfileStep

// Multi-candidate: assignment
@transform_sqlite3CreateFunc_xStep_assign@
identifier fn = sqlite3CreateFunc;
identifier fp = xStep;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     E = decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     E = percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     E = sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     E = zipfileStep(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3CreateFunc_xStep_standalone@
identifier fn = sqlite3CreateFunc;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     zipfileStep(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3CreateFunc_xStep_return@
identifier fn = sqlite3CreateFunc;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     return decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     return percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     return sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     return zipfileStep(args);
+ }
...>
}

// Function: sqlite3CreateFunc, FP param: xValue (seq: 9)
// Candidates: 0, decimalSumValue, percentValue, sqlite3changeset_new, sqlite3changeset_old

// Multi-candidate: assignment
@transform_sqlite3CreateFunc_xValue_assign@
identifier fn = sqlite3CreateFunc;
identifier fp = xValue;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     E = decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     E = percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     E = sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3CreateFunc_xValue_standalone@
identifier fn = sqlite3CreateFunc;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     sqlite3changeset_old(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3CreateFunc_xValue_return@
identifier fn = sqlite3CreateFunc;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     return decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     return percentValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_new_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_new(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_sqlite3changeset_old_enum], sizeof(xValue_signature)) == 0) {
+     return sqlite3changeset_old(args);
+ }
...>
}

// Function: sqlite3Fts3ExprIterate, FP param: x (seq: 2)
// Candidates: fts3AllocateMSI, fts3ExprGlobalHitsCb, fts3ExprLoadDoclistsCb, fts3ExprLocalHitsCb, fts3ExprPhraseCountCb, fts3ExprRestartIfCb, fts3ExprTermOffsetInit, fts3MatchinfoLcsCb, fts3SnippetFindPositions

// Multi-candidate: assignment
@transform_sqlite3Fts3ExprIterate_x_assign@
identifier fn = sqlite3Fts3ExprIterate;
identifier fp = x;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     E = fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     E = fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     E = fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     E = fts3SnippetFindPositions(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3Fts3ExprIterate_x_standalone@
identifier fn = sqlite3Fts3ExprIterate;
identifier fp = x;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     fts3SnippetFindPositions(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3Fts3ExprIterate_x_return@
identifier fn = sqlite3Fts3ExprIterate;
identifier fp = x;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(x_signature, x_signatures[x_fts3AllocateMSI_enum], sizeof(x_signature)) == 0) {
+     return fts3AllocateMSI(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprGlobalHitsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLoadDoclistsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprLocalHitsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprPhraseCountCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprRestartIfCb_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3ExprTermOffsetInit_enum], sizeof(x_signature)) == 0) {
+     return fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3MatchinfoLcsCb_enum], sizeof(x_signature)) == 0) {
+     return fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(x_signature, x_signatures[x_fts3SnippetFindPositions_enum], sizeof(x_signature)) == 0) {
+     return fts3SnippetFindPositions(args);
+ }
...>
}

// Function: sqlite3Fts3InitTok, FP param: xDestroy (seq: 3)
// Candidates: hashDestroy

@transform_sqlite3Fts3InitTok_xDestroy_assign@
identifier fn = sqlite3Fts3InitTok;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = hashDestroy(args);
...>
}

@transform_sqlite3Fts3InitTok_xDestroy_standalone@
identifier fn = sqlite3Fts3InitTok;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ hashDestroy(args);
...>
}

@transform_sqlite3Fts3InitTok_xDestroy_return@
identifier fn = sqlite3Fts3InitTok;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return hashDestroy(args);
...>
}

// Function: sqlite3Fts5TokenizerPattern, FP param: xCreate (seq: 1)
// Candidates: 0, dbpageConnect, expertConnect, fts3CreateMethod, fts3auxConnectMethod, fts3tokConnectMethod, geopolyCreate, pcache1Create, pcachetraceCreate, porterCreate, rtreeCreate, simpleCreate, statConnect, unicodeCreate, zipfileConnect

// Multi-candidate: assignment
@transform_sqlite3Fts5TokenizerPattern_xCreate_assign@
identifier fn = sqlite3Fts5TokenizerPattern;
identifier fp = xCreate;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCreate_signature, xCreate_signatures[xCreate_0_enum], sizeof(xCreate_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_dbpageConnect_enum], sizeof(xCreate_signature)) == 0) {
+     E = dbpageConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_expertConnect_enum], sizeof(xCreate_signature)) == 0) {
+     E = expertConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3CreateMethod_enum], sizeof(xCreate_signature)) == 0) {
+     E = fts3CreateMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3auxConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     E = fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3tokConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     E = fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_geopolyCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = geopolyCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcache1Create_enum], sizeof(xCreate_signature)) == 0) {
+     E = pcache1Create(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcachetraceCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = pcachetraceCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_porterCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = porterCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_rtreeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = rtreeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_simpleCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = simpleCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_statConnect_enum], sizeof(xCreate_signature)) == 0) {
+     E = statConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_unicodeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     E = unicodeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_zipfileConnect_enum], sizeof(xCreate_signature)) == 0) {
+     E = zipfileConnect(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3Fts5TokenizerPattern_xCreate_standalone@
identifier fn = sqlite3Fts5TokenizerPattern;
identifier fp = xCreate;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCreate_signature, xCreate_signatures[xCreate_0_enum], sizeof(xCreate_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_dbpageConnect_enum], sizeof(xCreate_signature)) == 0) {
+     dbpageConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_expertConnect_enum], sizeof(xCreate_signature)) == 0) {
+     expertConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3CreateMethod_enum], sizeof(xCreate_signature)) == 0) {
+     fts3CreateMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3auxConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3tokConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_geopolyCreate_enum], sizeof(xCreate_signature)) == 0) {
+     geopolyCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcache1Create_enum], sizeof(xCreate_signature)) == 0) {
+     pcache1Create(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcachetraceCreate_enum], sizeof(xCreate_signature)) == 0) {
+     pcachetraceCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_porterCreate_enum], sizeof(xCreate_signature)) == 0) {
+     porterCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_rtreeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     rtreeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_simpleCreate_enum], sizeof(xCreate_signature)) == 0) {
+     simpleCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_statConnect_enum], sizeof(xCreate_signature)) == 0) {
+     statConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_unicodeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     unicodeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_zipfileConnect_enum], sizeof(xCreate_signature)) == 0) {
+     zipfileConnect(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3Fts5TokenizerPattern_xCreate_return@
identifier fn = sqlite3Fts5TokenizerPattern;
identifier fp = xCreate;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCreate_signature, xCreate_signatures[xCreate_0_enum], sizeof(xCreate_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_dbpageConnect_enum], sizeof(xCreate_signature)) == 0) {
+     return dbpageConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_expertConnect_enum], sizeof(xCreate_signature)) == 0) {
+     return expertConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3CreateMethod_enum], sizeof(xCreate_signature)) == 0) {
+     return fts3CreateMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3auxConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     return fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_fts3tokConnectMethod_enum], sizeof(xCreate_signature)) == 0) {
+     return fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_geopolyCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return geopolyCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcache1Create_enum], sizeof(xCreate_signature)) == 0) {
+     return pcache1Create(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_pcachetraceCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return pcachetraceCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_porterCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return porterCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_rtreeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return rtreeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_simpleCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return simpleCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_statConnect_enum], sizeof(xCreate_signature)) == 0) {
+     return statConnect(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_unicodeCreate_enum], sizeof(xCreate_signature)) == 0) {
+     return unicodeCreate(args);
+ }
+ else if (memcmp(xCreate_signature, xCreate_signatures[xCreate_zipfileConnect_enum], sizeof(xCreate_signature)) == 0) {
+     return zipfileConnect(args);
+ }
...>
}

// Function: sqlite3PagerOpen, FP param: xReinit (seq: 7)
// Candidates: pageReinit

@transform_sqlite3PagerOpen_xReinit_assign@
identifier fn = sqlite3PagerOpen;
identifier fp = xReinit;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = pageReinit(args);
...>
}

@transform_sqlite3PagerOpen_xReinit_standalone@
identifier fn = sqlite3PagerOpen;
identifier fp = xReinit;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ pageReinit(args);
...>
}

@transform_sqlite3PagerOpen_xReinit_return@
identifier fn = sqlite3PagerOpen;
identifier fp = xReinit;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return pageReinit(args);
...>
}

// Function: sqlite3PagerSetBusyHandler, FP param: xBusyHandler (seq: 2)
// Candidates: btreeInvokeBusyHandler

@transform_sqlite3PagerSetBusyHandler_xBusyHandler_assign@
identifier fn = sqlite3PagerSetBusyHandler;
identifier fp = xBusyHandler;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = btreeInvokeBusyHandler(args);
...>
}

@transform_sqlite3PagerSetBusyHandler_xBusyHandler_standalone@
identifier fn = sqlite3PagerSetBusyHandler;
identifier fp = xBusyHandler;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ btreeInvokeBusyHandler(args);
...>
}

@transform_sqlite3PagerSetBusyHandler_xBusyHandler_return@
identifier fn = sqlite3PagerSetBusyHandler;
identifier fp = xBusyHandler;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return btreeInvokeBusyHandler(args);
...>
}

// Function: sqlite3ParserAddCleanup, FP param: xCleanup (seq: 2)
// Candidates: agginfoFree, sqlite3DbFree, sqlite3DeleteReturning, sqlite3DeleteTableGeneric, sqlite3ExprDeleteGeneric, sqlite3ExprListDeleteGeneric, sqlite3SelectDeleteGeneric, sqlite3WithDeleteGeneric, whereIndexedExprCleanup

// Multi-candidate: assignment
@transform_sqlite3ParserAddCleanup_xCleanup_assign@
identifier fn = sqlite3ParserAddCleanup;
identifier fp = xCleanup;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_agginfoFree_enum], sizeof(xCleanup_signature)) == 0) {
+     E = agginfoFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3DbFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3DeleteReturning(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3DeleteTableGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3ExprDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3ExprListDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3SelectDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     E = sqlite3WithDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], sizeof(xCleanup_signature)) == 0) {
+     E = whereIndexedExprCleanup(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3ParserAddCleanup_xCleanup_standalone@
identifier fn = sqlite3ParserAddCleanup;
identifier fp = xCleanup;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_agginfoFree_enum], sizeof(xCleanup_signature)) == 0) {
+     agginfoFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3DbFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3DeleteReturning(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3DeleteTableGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3ExprDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3ExprListDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3SelectDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     sqlite3WithDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], sizeof(xCleanup_signature)) == 0) {
+     whereIndexedExprCleanup(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3ParserAddCleanup_xCleanup_return@
identifier fn = sqlite3ParserAddCleanup;
identifier fp = xCleanup;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_agginfoFree_enum], sizeof(xCleanup_signature)) == 0) {
+     return agginfoFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3DbFree(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3DeleteReturning(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3DeleteTableGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3ExprDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3ExprListDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3SelectDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], sizeof(xCleanup_signature)) == 0) {
+     return sqlite3WithDeleteGeneric(args);
+ }
+ else if (memcmp(xCleanup_signature, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], sizeof(xCleanup_signature)) == 0) {
+     return whereIndexedExprCleanup(args);
+ }
...>
}

// Function: sqlite3ParserFree, FP param: freeProc (seq: 2)
// Candidates: sqlite3_free

@transform_sqlite3ParserFree_freeProc_assign@
identifier fn = sqlite3ParserFree;
identifier fp = freeProc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = sqlite3_free(args);
...>
}

@transform_sqlite3ParserFree_freeProc_standalone@
identifier fn = sqlite3ParserFree;
identifier fp = freeProc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ sqlite3_free(args);
...>
}

@transform_sqlite3ParserFree_freeProc_return@
identifier fn = sqlite3ParserFree;
identifier fp = freeProc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return sqlite3_free(args);
...>
}

// Function: sqlite3PcacheIterateDirty, FP param: xIter (seq: 2)
// Candidates: assertTruncateConstraintCb, pager_set_pagehash

// Multi-candidate: assignment
@transform_sqlite3PcacheIterateDirty_xIter_assign@
identifier fn = sqlite3PcacheIterateDirty;
identifier fp = xIter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xIter_signature, xIter_signatures[xIter_assertTruncateConstraintCb_enum], sizeof(xIter_signature)) == 0) {
+     E = assertTruncateConstraintCb(args);
+ }
+ else if (memcmp(xIter_signature, xIter_signatures[xIter_pager_set_pagehash_enum], sizeof(xIter_signature)) == 0) {
+     E = pager_set_pagehash(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3PcacheIterateDirty_xIter_standalone@
identifier fn = sqlite3PcacheIterateDirty;
identifier fp = xIter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xIter_signature, xIter_signatures[xIter_assertTruncateConstraintCb_enum], sizeof(xIter_signature)) == 0) {
+     assertTruncateConstraintCb(args);
+ }
+ else if (memcmp(xIter_signature, xIter_signatures[xIter_pager_set_pagehash_enum], sizeof(xIter_signature)) == 0) {
+     pager_set_pagehash(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3PcacheIterateDirty_xIter_return@
identifier fn = sqlite3PcacheIterateDirty;
identifier fp = xIter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xIter_signature, xIter_signatures[xIter_assertTruncateConstraintCb_enum], sizeof(xIter_signature)) == 0) {
+     return assertTruncateConstraintCb(args);
+ }
+ else if (memcmp(xIter_signature, xIter_signatures[xIter_pager_set_pagehash_enum], sizeof(xIter_signature)) == 0) {
+     return pager_set_pagehash(args);
+ }
...>
}

// Function: sqlite3PcacheOpen, FP param: xStress (seq: 4)
// Candidates: 0, pagerStress

// Multi-candidate: assignment
@transform_sqlite3PcacheOpen_xStress_assign@
identifier fn = sqlite3PcacheOpen;
identifier fp = xStress;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xStress_signature, xStress_signatures[xStress_0_enum], sizeof(xStress_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xStress_signature, xStress_signatures[xStress_pagerStress_enum], sizeof(xStress_signature)) == 0) {
+     E = pagerStress(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3PcacheOpen_xStress_standalone@
identifier fn = sqlite3PcacheOpen;
identifier fp = xStress;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xStress_signature, xStress_signatures[xStress_0_enum], sizeof(xStress_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xStress_signature, xStress_signatures[xStress_pagerStress_enum], sizeof(xStress_signature)) == 0) {
+     pagerStress(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3PcacheOpen_xStress_return@
identifier fn = sqlite3PcacheOpen;
identifier fp = xStress;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xStress_signature, xStress_signatures[xStress_0_enum], sizeof(xStress_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xStress_signature, xStress_signatures[xStress_pagerStress_enum], sizeof(xStress_signature)) == 0) {
+     return pagerStress(args);
+ }
...>
}

// Function: sqlite3ValueIsOfClass, FP param: xFree (seq: 2)
// Candidates: sqlite3RCStrUnref

@transform_sqlite3ValueIsOfClass_xFree_assign@
identifier fn = sqlite3ValueIsOfClass;
identifier fp = xFree;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = sqlite3RCStrUnref(args);
...>
}

@transform_sqlite3ValueIsOfClass_xFree_standalone@
identifier fn = sqlite3ValueIsOfClass;
identifier fp = xFree;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ sqlite3RCStrUnref(args);
...>
}

@transform_sqlite3ValueIsOfClass_xFree_return@
identifier fn = sqlite3ValueIsOfClass;
identifier fp = xFree;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return sqlite3RCStrUnref(args);
...>
}

// Function: sqlite3ValueSetStr, FP param: xDel (seq: 5)
// Candidates: SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, sqlite3_free, xDestroyOut

// Multi-candidate: assignment
@transform_sqlite3ValueSetStr_xDel_assign@
identifier fn = sqlite3ValueSetStr;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3ValueSetStr_xDel_standalone@
identifier fn = sqlite3ValueSetStr;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3ValueSetStr_xDel_return@
identifier fn = sqlite3ValueSetStr;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
...>
}

// Function: sqlite3VdbeMemSetPointer, FP param: xDestructor (seq: 4)
// Candidates: 0, rtreeMatchArgFree, sqlite3VdbeValueListFree, sqlite3NoopDestructor

// Multi-candidate: assignment
@transform_sqlite3VdbeMemSetPointer_xDestructor_assign@
identifier fn = sqlite3VdbeMemSetPointer;
identifier fp = xDestructor;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], sizeof(xDestructor_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], sizeof(xDestructor_signature)) == 0) {
+     E = sqlite3NoopDestructor(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3VdbeMemSetPointer_xDestructor_standalone@
identifier fn = sqlite3VdbeMemSetPointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], sizeof(xDestructor_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], sizeof(xDestructor_signature)) == 0) {
+     sqlite3NoopDestructor(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3VdbeMemSetPointer_xDestructor_return@
identifier fn = sqlite3VdbeMemSetPointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], sizeof(xDestructor_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], sizeof(xDestructor_signature)) == 0) {
+     return sqlite3NoopDestructor(args);
+ }
...>
}

// Function: sqlite3VdbeMemSetStr, FP param: xDel (seq: 5)
// Candidates: 0, SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, icuCollationDel, rtreeMatchArgFree, sqlite3RCStrUnref, sqlite3SchemaClear, sqlite3VdbeValueListFree, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_sqlite3VdbeMemSetStr_xDel_assign@
identifier fn = sqlite3VdbeMemSetStr;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3VdbeMemSetStr_xDel_standalone@
identifier fn = sqlite3VdbeMemSetStr;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3VdbeMemSetStr_xDel_return@
identifier fn = sqlite3VdbeMemSetStr;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_rtreeMatchArgFree_enum], sizeof(xDel_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3VdbeValueListFree(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: sqlite3VdbeSetColName, FP param: xDel (seq: 5)
// Candidates: SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT

// Multi-candidate: assignment
@transform_sqlite3VdbeSetColName_xDel_assign@
identifier fn = sqlite3VdbeSetColName;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3VdbeSetColName_xDel_standalone@
identifier fn = sqlite3VdbeSetColName;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3VdbeSetColName_xDel_return@
identifier fn = sqlite3VdbeSetColName;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
...>
}

// Function: sqlite3VtabCreateModule, FP param: xDestroy (seq: 5)
// Candidates: 0, hashDestroy, icuCollationDel, rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3VtabCreateModule_xDestroy_assign@
identifier fn = sqlite3VtabCreateModule;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     E = hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3VtabCreateModule_xDestroy_standalone@
identifier fn = sqlite3VtabCreateModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3VtabCreateModule_xDestroy_return@
identifier fn = sqlite3VtabCreateModule;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     return hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3WalCheckpoint, FP param: xBusy (seq: 4)
// Candidates: 0, btreeInvokeBusyHandler, xBusyHandler, xBusy

// Multi-candidate: assignment
@transform_sqlite3WalCheckpoint_xBusy_assign@
identifier fn = sqlite3WalCheckpoint;
identifier fp = xBusy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     E = btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     E = xBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     E = xBusy(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3WalCheckpoint_xBusy_standalone@
identifier fn = sqlite3WalCheckpoint;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     xBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     xBusy(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3WalCheckpoint_xBusy_return@
identifier fn = sqlite3WalCheckpoint;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     return btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     return xBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     return xBusy(args);
+ }
...>
}

// Function: sqlite3WalUndo, FP param: xUndo (seq: 2)
// Candidates: pagerUndoCallback

@transform_sqlite3WalUndo_xUndo_assign@
identifier fn = sqlite3WalUndo;
identifier fp = xUndo;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = pagerUndoCallback(args);
...>
}

@transform_sqlite3WalUndo_xUndo_standalone@
identifier fn = sqlite3WalUndo;
identifier fp = xUndo;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ pagerUndoCallback(args);
...>
}

@transform_sqlite3WalUndo_xUndo_return@
identifier fn = sqlite3WalUndo;
identifier fp = xUndo;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return pagerUndoCallback(args);
...>
}

// Function: sqlite3_auto_extension, FP param: xEntryPoint (seq: 1)
// Candidates: apndvfsRegister

@transform_sqlite3_auto_extension_xEntryPoint_assign@
identifier fn = sqlite3_auto_extension;
identifier fp = xEntryPoint;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = apndvfsRegister(args);
...>
}

@transform_sqlite3_auto_extension_xEntryPoint_standalone@
identifier fn = sqlite3_auto_extension;
identifier fp = xEntryPoint;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ apndvfsRegister(args);
...>
}

@transform_sqlite3_auto_extension_xEntryPoint_return@
identifier fn = sqlite3_auto_extension;
identifier fp = xEntryPoint;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return apndvfsRegister(args);
...>
}

// Function: sqlite3_auto_extension, FP param: xInit (seq: 1)
// Candidates: apndvfsRegister

@transform_sqlite3_auto_extension_xInit_assign@
identifier fn = sqlite3_auto_extension;
identifier fp = xInit;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = apndvfsRegister(args);
...>
}

@transform_sqlite3_auto_extension_xInit_standalone@
identifier fn = sqlite3_auto_extension;
identifier fp = xInit;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ apndvfsRegister(args);
...>
}

@transform_sqlite3_auto_extension_xInit_return@
identifier fn = sqlite3_auto_extension;
identifier fp = xInit;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return apndvfsRegister(args);
...>
}

// Function: sqlite3_bind_blob, FP param: xDel (seq: 5)
// Candidates: SQLITE_STATIC, SQLITE_TRANSIENT, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_bind_blob_xDel_assign@
identifier fn = sqlite3_bind_blob;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_bind_blob_xDel_standalone@
identifier fn = sqlite3_bind_blob;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_bind_blob_xDel_return@
identifier fn = sqlite3_bind_blob;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_bind_pointer, FP param: xDestructor (seq: 5)
// Candidates: 0

@transform_sqlite3_bind_pointer_xDestructor_assign@
identifier fn = sqlite3_bind_pointer;
identifier fp = xDestructor;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_bind_pointer_xDestructor_standalone@
identifier fn = sqlite3_bind_pointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_bind_pointer_xDestructor_return@
identifier fn = sqlite3_bind_pointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_bind_text, FP param: xDel (seq: 5)
// Candidates: 0, SQLITE_STATIC, SQLITE_TRANSIENT, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_bind_text_xDel_assign@
identifier fn = sqlite3_bind_text;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_bind_text_xDel_standalone@
identifier fn = sqlite3_bind_text;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_bind_text_xDel_return@
identifier fn = sqlite3_bind_text;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_bind_text64, FP param: xDel (seq: 5)
// Candidates: sqlite3_free

@transform_sqlite3_bind_text64_xDel_assign@
identifier fn = sqlite3_bind_text64;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = sqlite3_free(args);
...>
}

@transform_sqlite3_bind_text64_xDel_standalone@
identifier fn = sqlite3_bind_text64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ sqlite3_free(args);
...>
}

@transform_sqlite3_bind_text64_xDel_return@
identifier fn = sqlite3_bind_text64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return sqlite3_free(args);
...>
}

// Function: sqlite3_busy_handler, FP param: xBusy (seq: 2)
// Candidates: 0, sqliteDefaultBusyCallback, xBusy

// Multi-candidate: assignment
@transform_sqlite3_busy_handler_xBusy_assign@
identifier fn = sqlite3_busy_handler;
identifier fp = xBusy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     E = sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     E = xBusy(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_busy_handler_xBusy_standalone@
identifier fn = sqlite3_busy_handler;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     xBusy(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_busy_handler_xBusy_return@
identifier fn = sqlite3_busy_handler;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     return sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusy_enum], sizeof(xBusy_signature)) == 0) {
+     return xBusy(args);
+ }
...>
}

// Function: sqlite3_collation_needed, FP param: xCollNeeded (seq: 3)
// Candidates: useDummyCS

@transform_sqlite3_collation_needed_xCollNeeded_assign@
identifier fn = sqlite3_collation_needed;
identifier fp = xCollNeeded;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = useDummyCS(args);
...>
}

@transform_sqlite3_collation_needed_xCollNeeded_standalone@
identifier fn = sqlite3_collation_needed;
identifier fp = xCollNeeded;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ useDummyCS(args);
...>
}

@transform_sqlite3_collation_needed_xCollNeeded_return@
identifier fn = sqlite3_collation_needed;
identifier fp = xCollNeeded;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return useDummyCS(args);
...>
}

// Function: sqlite3_create_collation, FP param: xCompare (seq: 5)
// Candidates: decimalCollFunc, uintCollFunc

// Multi-candidate: assignment
@transform_sqlite3_create_collation_xCompare_assign@
identifier fn = sqlite3_create_collation;
identifier fp = xCompare;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = uintCollFunc(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_collation_xCompare_standalone@
identifier fn = sqlite3_create_collation;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     uintCollFunc(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_collation_xCompare_return@
identifier fn = sqlite3_create_collation;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return uintCollFunc(args);
+ }
...>
}

// Function: sqlite3_create_collation_v2, FP param: xCompare (seq: 5)
// Candidates: binCollFunc, decimalCollFunc, dummyCompare, icuCollationColl, nocaseCollatingFunc, rtrimCollFunc, uintCollFunc

// Multi-candidate: assignment
@transform_sqlite3_create_collation_v2_xCompare_assign@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xCompare;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     E = dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     E = icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     E = uintCollFunc(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_collation_v2_xCompare_standalone@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     uintCollFunc(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_collation_v2_xCompare_return@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xCompare;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCompare_signature, xCompare_signatures[xCompare_binCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return binCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_decimalCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return decimalCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_dummyCompare_enum], sizeof(xCompare_signature)) == 0) {
+     return dummyCompare(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_icuCollationColl_enum], sizeof(xCompare_signature)) == 0) {
+     return icuCollationColl(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return nocaseCollatingFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_rtrimCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return rtrimCollFunc(args);
+ }
+ else if (memcmp(xCompare_signature, xCompare_signatures[xCompare_uintCollFunc_enum], sizeof(xCompare_signature)) == 0) {
+     return uintCollFunc(args);
+ }
...>
}

// Function: sqlite3_create_collation_v2, FP param: xDel (seq: 6)
// Candidates: 0, icuCollationDel

// Multi-candidate: assignment
@transform_sqlite3_create_collation_v2_xDel_assign@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_collation_v2_xDel_standalone@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     icuCollationDel(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_collation_v2_xDel_return@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_icuCollationDel_enum], sizeof(xDel_signature)) == 0) {
+     return icuCollationDel(args);
+ }
...>
}

// Function: sqlite3_create_collation_v2, FP param: xDestroy (seq: 6)
// Candidates: 0, icuCollationDel

// Multi-candidate: assignment
@transform_sqlite3_create_collation_v2_xDestroy_assign@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_collation_v2_xDestroy_standalone@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_collation_v2_xDestroy_return@
identifier fn = sqlite3_create_collation_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
...>
}

// Function: sqlite3_create_function, FP param: xFinal (seq: 8)
// Candidates: 0, decimalSumFinalize, dummyUDFvalue, percentFinal, sha3AggFinal, zipfileFinal

// Multi-candidate: assignment
@transform_sqlite3_create_function_xFinal_assign@
identifier fn = sqlite3_create_function;
identifier fp = xFinal;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     E = decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     E = dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = zipfileFinal(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_function_xFinal_standalone@
identifier fn = sqlite3_create_function;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     zipfileFinal(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_function_xFinal_return@
identifier fn = sqlite3_create_function;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_0_enum], sizeof(xFinal_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     return decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     return dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return percentFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_sha3AggFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return sha3AggFinal(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_zipfileFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return zipfileFinal(args);
+ }
...>
}

// Function: sqlite3_create_function, FP param: xSFunc (seq: 6)
// Candidates: 0, base64, base85, dummyUDF, editFunc, fts3AllocateMSI, fts3ExprGlobalHitsCb, fts3ExprLoadDoclistsCb, fts3ExprLocalHitsCb, fts3ExprPhraseCountCb, fts3ExprRestartIfCb, fts3ExprTermOffsetInit, fts3ExprTest, fts3ExprTestRebalance, fts3MatchinfoLcsCb, fts3SnippetFindPositions, fts3TokenizerFunc, geomCallback, idxRemFunc, idxSampleFunc, intTestFunc, intckParseCreateIndexFunc, is_base85, lsModeFunc, rbuFossilDeltaFunc, rbuIndexCntFunc, rbuTargetNameFunc, rbuTmpInsertFunc, re_bytecode_func, re_sql_func, readfileFunc, rtreecheck, rtreedepth, rtreenode, sha1Func, sha1QueryFunc, sha3Func, sha3QueryFunc, shellAddSchemaName, shellDtostr, shellFkeyCollateClause, shellModuleSchema, shellPutsFunc, shellStrtod, shellUSleepFunc, sqlarCompressFunc, sqlarUncompressFunc, sqlite3InvalidFunction, stmtrandFunc, testFunc, writefileFunc, xSFunc

// Multi-candidate: assignment
@transform_sqlite3_create_function_xSFunc_assign@
identifier fn = sqlite3_create_function;
identifier fp = xSFunc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     E = is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     E = rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_xSFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     E = xSFunc(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_function_xSFunc_standalone@
identifier fn = sqlite3_create_function;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_xSFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     xSFunc(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_function_xSFunc_return@
identifier fn = sqlite3_create_function;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_0_enum], sizeof(xSFunc_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base64_enum], sizeof(xSFunc_signature)) == 0) {
+     return base64(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_dummyUDF_enum], sizeof(xSFunc_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_editFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return editFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3AllocateMSI(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprGlobalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLoadDoclistsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprLocalHitsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprPhraseCountCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprRestartIfCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTermOffsetInit(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTest_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTest(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3ExprTestRebalance(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3MatchinfoLcsCb(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3SnippetFindPositions(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return fts3TokenizerFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     return geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxRemFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxRemFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_idxSampleFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return idxSampleFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intTestFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intTestFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return intckParseCreateIndexFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_is_base85_enum], sizeof(xSFunc_signature)) == 0) {
+     return is_base85(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_lsModeFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return lsModeFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuFossilDeltaFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuIndexCntFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTargetNameFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return rbuTmpInsertFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_bytecode_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_bytecode_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_re_sql_func_enum], sizeof(xSFunc_signature)) == 0) {
+     return re_sql_func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_readfileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return readfileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreecheck_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreecheck(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreedepth_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreedepth(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_rtreenode_enum], sizeof(xSFunc_signature)) == 0) {
+     return rtreenode(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha1QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3Func_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3Func(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sha3QueryFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellAddSchemaName(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellDtostr_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellDtostr(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellFkeyCollateClause(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellModuleSchema_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellModuleSchema(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellPutsFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellPutsFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellStrtod_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellStrtod(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return shellUSleepFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarCompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlarUncompressFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlite3InvalidFunction(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_stmtrandFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return stmtrandFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_testFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return testFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_writefileFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return writefileFunc(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_xSFunc_enum], sizeof(xSFunc_signature)) == 0) {
+     return xSFunc(args);
+ }
...>
}

// Function: sqlite3_create_function, FP param: xStep (seq: 7)
// Candidates: 0, decimalSumStep, dummyUDF, percentStep, sha3AggStep, zipfileStep

// Multi-candidate: assignment
@transform_sqlite3_create_function_xStep_assign@
identifier fn = sqlite3_create_function;
identifier fp = xStep;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     E = decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     E = percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     E = sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     E = zipfileStep(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_function_xStep_standalone@
identifier fn = sqlite3_create_function;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     zipfileStep(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_function_xStep_return@
identifier fn = sqlite3_create_function;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_0_enum], sizeof(xStep_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     return decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     return percentStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_sha3AggStep_enum], sizeof(xStep_signature)) == 0) {
+     return sha3AggStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_zipfileStep_enum], sizeof(xStep_signature)) == 0) {
+     return zipfileStep(args);
+ }
...>
}

// Function: sqlite3_create_function_v2, FP param: xDestroy (seq: 9)
// Candidates: rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_create_function_v2_xDestroy_assign@
identifier fn = sqlite3_create_function_v2;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_function_v2_xDestroy_standalone@
identifier fn = sqlite3_create_function_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_function_v2_xDestroy_return@
identifier fn = sqlite3_create_function_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_create_function_v2, FP param: xFinal (seq: 8)
// Candidates: 0

@transform_sqlite3_create_function_v2_xFinal_assign@
identifier fn = sqlite3_create_function_v2;
identifier fp = xFinal;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_create_function_v2_xFinal_standalone@
identifier fn = sqlite3_create_function_v2;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_create_function_v2_xFinal_return@
identifier fn = sqlite3_create_function_v2;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_create_function_v2, FP param: xSFunc (seq: 6)
// Candidates: geomCallback, sqlite3InvalidFunction

// Multi-candidate: assignment
@transform_sqlite3_create_function_v2_xSFunc_assign@
identifier fn = sqlite3_create_function_v2;
identifier fp = xSFunc;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     E = geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     E = sqlite3InvalidFunction(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_function_v2_xSFunc_standalone@
identifier fn = sqlite3_create_function_v2;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     sqlite3InvalidFunction(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_function_v2_xSFunc_return@
identifier fn = sqlite3_create_function_v2;
identifier fp = xSFunc;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_geomCallback_enum], sizeof(xSFunc_signature)) == 0) {
+     return geomCallback(args);
+ }
+ else if (memcmp(xSFunc_signature, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], sizeof(xSFunc_signature)) == 0) {
+     return sqlite3InvalidFunction(args);
+ }
...>
}

// Function: sqlite3_create_function_v2, FP param: xStep (seq: 7)
// Candidates: 0

@transform_sqlite3_create_function_v2_xStep_assign@
identifier fn = sqlite3_create_function_v2;
identifier fp = xStep;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_create_function_v2_xStep_standalone@
identifier fn = sqlite3_create_function_v2;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_create_function_v2_xStep_return@
identifier fn = sqlite3_create_function_v2;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_create_module_v2, FP param: xDestroy (seq: 5)
// Candidates: 0, hashDestroy, icuCollationDel, rtreeFreeCallback, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_create_module_v2_xDestroy_assign@
identifier fn = sqlite3_create_module_v2;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     E = hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     E = icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     E = rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_module_v2_xDestroy_standalone@
identifier fn = sqlite3_create_module_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_module_v2_xDestroy_return@
identifier fn = sqlite3_create_module_v2;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_0_enum], sizeof(xDestroy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_hashDestroy_enum], sizeof(xDestroy_signature)) == 0) {
+     return hashDestroy(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_icuCollationDel_enum], sizeof(xDestroy_signature)) == 0) {
+     return icuCollationDel(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], sizeof(xDestroy_signature)) == 0) {
+     return rtreeFreeCallback(args);
+ }
+ else if (memcmp(xDestroy_signature, xDestroy_signatures[xDestroy_sqlite3_free_enum], sizeof(xDestroy_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_create_window_function, FP param: xDestroy (seq: 10)
// Candidates: 0

@transform_sqlite3_create_window_function_xDestroy_assign@
identifier fn = sqlite3_create_window_function;
identifier fp = xDestroy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_create_window_function_xDestroy_standalone@
identifier fn = sqlite3_create_window_function;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_create_window_function_xDestroy_return@
identifier fn = sqlite3_create_window_function;
identifier fp = xDestroy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_create_window_function, FP param: xFinal (seq: 7)
// Candidates: decimalSumFinalize, dummyUDFvalue, percentFinal

// Multi-candidate: assignment
@transform_sqlite3_create_window_function_xFinal_assign@
identifier fn = sqlite3_create_window_function;
identifier fp = xFinal;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     E = decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     E = dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     E = percentFinal(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_window_function_xFinal_standalone@
identifier fn = sqlite3_create_window_function;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     percentFinal(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_window_function_xFinal_return@
identifier fn = sqlite3_create_window_function;
identifier fp = xFinal;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xFinal_signature, xFinal_signatures[xFinal_decimalSumFinalize_enum], sizeof(xFinal_signature)) == 0) {
+     return decimalSumFinalize(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_dummyUDFvalue_enum], sizeof(xFinal_signature)) == 0) {
+     return dummyUDFvalue(args);
+ }
+ else if (memcmp(xFinal_signature, xFinal_signatures[xFinal_percentFinal_enum], sizeof(xFinal_signature)) == 0) {
+     return percentFinal(args);
+ }
...>
}

// Function: sqlite3_create_window_function, FP param: xInverse (seq: 9)
// Candidates: 0, decimalSumInverse, percentInverse

// Multi-candidate: assignment
@transform_sqlite3_create_window_function_xInverse_assign@
identifier fn = sqlite3_create_window_function;
identifier fp = xInverse;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     E = percentInverse(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_window_function_xInverse_standalone@
identifier fn = sqlite3_create_window_function;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     percentInverse(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_window_function_xInverse_return@
identifier fn = sqlite3_create_window_function;
identifier fp = xInverse;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xInverse_signature, xInverse_signatures[xInverse_0_enum], sizeof(xInverse_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_decimalSumInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return decimalSumInverse(args);
+ }
+ else if (memcmp(xInverse_signature, xInverse_signatures[xInverse_percentInverse_enum], sizeof(xInverse_signature)) == 0) {
+     return percentInverse(args);
+ }
...>
}

// Function: sqlite3_create_window_function, FP param: xStep (seq: 6)
// Candidates: decimalSumStep, dummyUDF, percentStep

// Multi-candidate: assignment
@transform_sqlite3_create_window_function_xStep_assign@
identifier fn = sqlite3_create_window_function;
identifier fp = xStep;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     E = decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     E = dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     E = percentStep(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_window_function_xStep_standalone@
identifier fn = sqlite3_create_window_function;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     percentStep(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_window_function_xStep_return@
identifier fn = sqlite3_create_window_function;
identifier fp = xStep;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xStep_signature, xStep_signatures[xStep_decimalSumStep_enum], sizeof(xStep_signature)) == 0) {
+     return decimalSumStep(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_dummyUDF_enum], sizeof(xStep_signature)) == 0) {
+     return dummyUDF(args);
+ }
+ else if (memcmp(xStep_signature, xStep_signatures[xStep_percentStep_enum], sizeof(xStep_signature)) == 0) {
+     return percentStep(args);
+ }
...>
}

// Function: sqlite3_create_window_function, FP param: xValue (seq: 8)
// Candidates: 0, decimalSumValue, percentValue

// Multi-candidate: assignment
@transform_sqlite3_create_window_function_xValue_assign@
identifier fn = sqlite3_create_window_function;
identifier fp = xValue;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     E = decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     E = percentValue(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_create_window_function_xValue_standalone@
identifier fn = sqlite3_create_window_function;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     percentValue(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_create_window_function_xValue_return@
identifier fn = sqlite3_create_window_function;
identifier fp = xValue;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xValue_signature, xValue_signatures[xValue_0_enum], sizeof(xValue_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_decimalSumValue_enum], sizeof(xValue_signature)) == 0) {
+     return decimalSumValue(args);
+ }
+ else if (memcmp(xValue_signature, xValue_signatures[xValue_percentValue_enum], sizeof(xValue_signature)) == 0) {
+     return percentValue(args);
+ }
...>
}

// Function: sqlite3_exec, FP param: callback (seq: 3)
// Candidates: 0, analysisLoader, captureOutputCallback, countNonzeros, dump_callback, sqlite3InitCallback, sqlite3_get_table_cb, callback

// Multi-candidate: assignment
@transform_sqlite3_exec_callback_assign@
identifier fn = sqlite3_exec;
identifier fp = callback;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(callback_signature, callback_signatures[callback_0_enum], sizeof(callback_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_analysisLoader_enum], sizeof(callback_signature)) == 0) {
+     E = analysisLoader(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_captureOutputCallback_enum], sizeof(callback_signature)) == 0) {
+     E = captureOutputCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_countNonzeros_enum], sizeof(callback_signature)) == 0) {
+     E = countNonzeros(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_dump_callback_enum], sizeof(callback_signature)) == 0) {
+     E = dump_callback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3InitCallback_enum], sizeof(callback_signature)) == 0) {
+     E = sqlite3InitCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3_get_table_cb_enum], sizeof(callback_signature)) == 0) {
+     E = sqlite3_get_table_cb(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_callback_enum], sizeof(callback_signature)) == 0) {
+     E = callback(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_exec_callback_standalone@
identifier fn = sqlite3_exec;
identifier fp = callback;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(callback_signature, callback_signatures[callback_0_enum], sizeof(callback_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_analysisLoader_enum], sizeof(callback_signature)) == 0) {
+     analysisLoader(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_captureOutputCallback_enum], sizeof(callback_signature)) == 0) {
+     captureOutputCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_countNonzeros_enum], sizeof(callback_signature)) == 0) {
+     countNonzeros(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_dump_callback_enum], sizeof(callback_signature)) == 0) {
+     dump_callback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3InitCallback_enum], sizeof(callback_signature)) == 0) {
+     sqlite3InitCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3_get_table_cb_enum], sizeof(callback_signature)) == 0) {
+     sqlite3_get_table_cb(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_callback_enum], sizeof(callback_signature)) == 0) {
+     callback(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_exec_callback_return@
identifier fn = sqlite3_exec;
identifier fp = callback;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(callback_signature, callback_signatures[callback_0_enum], sizeof(callback_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_analysisLoader_enum], sizeof(callback_signature)) == 0) {
+     return analysisLoader(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_captureOutputCallback_enum], sizeof(callback_signature)) == 0) {
+     return captureOutputCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_countNonzeros_enum], sizeof(callback_signature)) == 0) {
+     return countNonzeros(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_dump_callback_enum], sizeof(callback_signature)) == 0) {
+     return dump_callback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3InitCallback_enum], sizeof(callback_signature)) == 0) {
+     return sqlite3InitCallback(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_sqlite3_get_table_cb_enum], sizeof(callback_signature)) == 0) {
+     return sqlite3_get_table_cb(args);
+ }
+ else if (memcmp(callback_signature, callback_signatures[callback_callback_enum], sizeof(callback_signature)) == 0) {
+     return callback(args);
+ }
...>
}

// Function: sqlite3_preupdate_hook, FP param: xCallback (seq: 2)
// Candidates: 0

@transform_sqlite3_preupdate_hook_xCallback_assign@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xCallback;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_preupdate_hook_xCallback_standalone@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_preupdate_hook_xCallback_return@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_preupdate_hook, FP param: xPreUpdate (seq: 2)
// Candidates: 0

@transform_sqlite3_preupdate_hook_xPreUpdate_assign@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xPreUpdate;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3_preupdate_hook_xPreUpdate_standalone@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xPreUpdate;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3_preupdate_hook_xPreUpdate_return@
identifier fn = sqlite3_preupdate_hook;
identifier fp = xPreUpdate;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3_progress_handler, FP param: xProgress (seq: 3)
// Candidates: progress_handler

@transform_sqlite3_progress_handler_xProgress_assign@
identifier fn = sqlite3_progress_handler;
identifier fp = xProgress;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = progress_handler(args);
...>
}

@transform_sqlite3_progress_handler_xProgress_standalone@
identifier fn = sqlite3_progress_handler;
identifier fp = xProgress;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ progress_handler(args);
...>
}

@transform_sqlite3_progress_handler_xProgress_return@
identifier fn = sqlite3_progress_handler;
identifier fp = xProgress;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return progress_handler(args);
...>
}

// Function: sqlite3_recover_init_sql, FP param: xSql (seq: 3)
// Candidates: recoverSqlCb

@transform_sqlite3_recover_init_sql_xSql_assign@
identifier fn = sqlite3_recover_init_sql;
identifier fp = xSql;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = recoverSqlCb(args);
...>
}

@transform_sqlite3_recover_init_sql_xSql_standalone@
identifier fn = sqlite3_recover_init_sql;
identifier fp = xSql;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ recoverSqlCb(args);
...>
}

@transform_sqlite3_recover_init_sql_xSql_return@
identifier fn = sqlite3_recover_init_sql;
identifier fp = xSql;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return recoverSqlCb(args);
...>
}

// Function: sqlite3_result_blob, FP param: xDel (seq: 4)
// Candidates: SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, sqlite3_free, statAccumDestructor, xDestroyOut, zipfileFree

// Multi-candidate: assignment
@transform_sqlite3_result_blob_xDel_assign@
identifier fn = sqlite3_result_blob;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     E = statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     E = xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     E = zipfileFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_blob_xDel_standalone@
identifier fn = sqlite3_result_blob;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     zipfileFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_blob_xDel_return@
identifier fn = sqlite3_result_blob;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_statAccumDestructor_enum], sizeof(xDel_signature)) == 0) {
+     return statAccumDestructor(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_xDestroyOut_enum], sizeof(xDel_signature)) == 0) {
+     return xDestroyOut(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_zipfileFree_enum], sizeof(xDel_signature)) == 0) {
+     return zipfileFree(args);
+ }
...>
}

// Function: sqlite3_result_blob64, FP param: xDel (seq: 4)
// Candidates: SQLITE_TRANSIENT, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_result_blob64_xDel_assign@
identifier fn = sqlite3_result_blob64;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_blob64_xDel_standalone@
identifier fn = sqlite3_result_blob64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_blob64_xDel_return@
identifier fn = sqlite3_result_blob64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_result_pointer, FP param: xDestructor (seq: 4)
// Candidates: 0, rtreeMatchArgFree

// Multi-candidate: assignment
@transform_sqlite3_result_pointer_xDestructor_assign@
identifier fn = sqlite3_result_pointer;
identifier fp = xDestructor;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     E = rtreeMatchArgFree(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_pointer_xDestructor_standalone@
identifier fn = sqlite3_result_pointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     rtreeMatchArgFree(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_pointer_xDestructor_return@
identifier fn = sqlite3_result_pointer;
identifier fp = xDestructor;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_0_enum], sizeof(xDestructor_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDestructor_signature, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], sizeof(xDestructor_signature)) == 0) {
+     return rtreeMatchArgFree(args);
+ }
...>
}

// Function: sqlite3_result_text, FP param: xDel (seq: 4)
// Candidates: SQLITE_DYNAMIC, SQLITE_STATIC, SQLITE_TRANSIENT, sqlite3RCStrUnref, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_result_text_xDel_assign@
identifier fn = sqlite3_result_text;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_text_xDel_standalone@
identifier fn = sqlite3_result_text;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_text_xDel_return@
identifier fn = sqlite3_result_text;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_DYNAMIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_result_text16, FP param: xDel (seq: 4)
// Candidates: 0, SQLITE_STATIC, sqlite3RCStrUnref, sqlite3SchemaClear

// Multi-candidate: assignment
@transform_sqlite3_result_text16_xDel_assign@
identifier fn = sqlite3_result_text16;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3SchemaClear(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_text16_xDel_standalone@
identifier fn = sqlite3_result_text16;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3SchemaClear(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_text16_xDel_return@
identifier fn = sqlite3_result_text16;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_0_enum], sizeof(xDel_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_STATIC_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_STATIC(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3SchemaClear_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3SchemaClear(args);
+ }
...>
}

// Function: sqlite3_result_text16be, FP param: xDel (seq: 4)
// Candidates: SQLITE_TRANSIENT

@transform_sqlite3_result_text16be_xDel_assign@
identifier fn = sqlite3_result_text16be;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = SQLITE_TRANSIENT(args);
...>
}

@transform_sqlite3_result_text16be_xDel_standalone@
identifier fn = sqlite3_result_text16be;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ SQLITE_TRANSIENT(args);
...>
}

@transform_sqlite3_result_text16be_xDel_return@
identifier fn = sqlite3_result_text16be;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return SQLITE_TRANSIENT(args);
...>
}

// Function: sqlite3_result_text16le, FP param: xDel (seq: 4)
// Candidates: SQLITE_TRANSIENT

@transform_sqlite3_result_text16le_xDel_assign@
identifier fn = sqlite3_result_text16le;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = SQLITE_TRANSIENT(args);
...>
}

@transform_sqlite3_result_text16le_xDel_standalone@
identifier fn = sqlite3_result_text16le;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ SQLITE_TRANSIENT(args);
...>
}

@transform_sqlite3_result_text16le_xDel_return@
identifier fn = sqlite3_result_text16le;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return SQLITE_TRANSIENT(args);
...>
}

// Function: sqlite3_result_text64, FP param: xDel (seq: 4)
// Candidates: SQLITE_TRANSIENT, sqlite3RCStrUnref, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_result_text64_xDel_assign@
identifier fn = sqlite3_result_text64;
identifier fp = xDel;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     E = SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_result_text64_xDel_standalone@
identifier fn = sqlite3_result_text64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_result_text64_xDel_return@
identifier fn = sqlite3_result_text64;
identifier fp = xDel;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDel_signature, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], sizeof(xDel_signature)) == 0) {
+     return SQLITE_TRANSIENT(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3RCStrUnref_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3RCStrUnref(args);
+ }
+ else if (memcmp(xDel_signature, xDel_signatures[xDel_sqlite3_free_enum], sizeof(xDel_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_set_authorizer, FP param: xAuth (seq: 2)
// Candidates: 0, idxAuthCallback, safeModeAuth, shellAuth

// Multi-candidate: assignment
@transform_sqlite3_set_authorizer_xAuth_assign@
identifier fn = sqlite3_set_authorizer;
identifier fp = xAuth;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xAuth_signature, xAuth_signatures[xAuth_0_enum], sizeof(xAuth_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_idxAuthCallback_enum], sizeof(xAuth_signature)) == 0) {
+     E = idxAuthCallback(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_safeModeAuth_enum], sizeof(xAuth_signature)) == 0) {
+     E = safeModeAuth(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_shellAuth_enum], sizeof(xAuth_signature)) == 0) {
+     E = shellAuth(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_set_authorizer_xAuth_standalone@
identifier fn = sqlite3_set_authorizer;
identifier fp = xAuth;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xAuth_signature, xAuth_signatures[xAuth_0_enum], sizeof(xAuth_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_idxAuthCallback_enum], sizeof(xAuth_signature)) == 0) {
+     idxAuthCallback(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_safeModeAuth_enum], sizeof(xAuth_signature)) == 0) {
+     safeModeAuth(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_shellAuth_enum], sizeof(xAuth_signature)) == 0) {
+     shellAuth(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_set_authorizer_xAuth_return@
identifier fn = sqlite3_set_authorizer;
identifier fp = xAuth;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xAuth_signature, xAuth_signatures[xAuth_0_enum], sizeof(xAuth_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_idxAuthCallback_enum], sizeof(xAuth_signature)) == 0) {
+     return idxAuthCallback(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_safeModeAuth_enum], sizeof(xAuth_signature)) == 0) {
+     return safeModeAuth(args);
+ }
+ else if (memcmp(xAuth_signature, xAuth_signatures[xAuth_shellAuth_enum], sizeof(xAuth_signature)) == 0) {
+     return shellAuth(args);
+ }
...>
}

// Function: sqlite3_set_auxdata, FP param: xDelete (seq: 4)
// Candidates: icuRegexpDelete, jsonCacheDeleteGeneric, re_free, sqlite3_free

// Multi-candidate: assignment
@transform_sqlite3_set_auxdata_xDelete_assign@
identifier fn = sqlite3_set_auxdata;
identifier fp = xDelete;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xDelete_signature, xDelete_signatures[xDelete_icuRegexpDelete_enum], sizeof(xDelete_signature)) == 0) {
+     E = icuRegexpDelete(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], sizeof(xDelete_signature)) == 0) {
+     E = jsonCacheDeleteGeneric(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_re_free_enum], sizeof(xDelete_signature)) == 0) {
+     E = re_free(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_sqlite3_free_enum], sizeof(xDelete_signature)) == 0) {
+     E = sqlite3_free(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_set_auxdata_xDelete_standalone@
identifier fn = sqlite3_set_auxdata;
identifier fp = xDelete;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xDelete_signature, xDelete_signatures[xDelete_icuRegexpDelete_enum], sizeof(xDelete_signature)) == 0) {
+     icuRegexpDelete(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], sizeof(xDelete_signature)) == 0) {
+     jsonCacheDeleteGeneric(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_re_free_enum], sizeof(xDelete_signature)) == 0) {
+     re_free(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_sqlite3_free_enum], sizeof(xDelete_signature)) == 0) {
+     sqlite3_free(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_set_auxdata_xDelete_return@
identifier fn = sqlite3_set_auxdata;
identifier fp = xDelete;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xDelete_signature, xDelete_signatures[xDelete_icuRegexpDelete_enum], sizeof(xDelete_signature)) == 0) {
+     return icuRegexpDelete(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], sizeof(xDelete_signature)) == 0) {
+     return jsonCacheDeleteGeneric(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_re_free_enum], sizeof(xDelete_signature)) == 0) {
+     return re_free(args);
+ }
+ else if (memcmp(xDelete_signature, xDelete_signatures[xDelete_sqlite3_free_enum], sizeof(xDelete_signature)) == 0) {
+     return sqlite3_free(args);
+ }
...>
}

// Function: sqlite3_trace_v2, FP param: xCallback (seq: 3)
// Candidates: 0, sql_trace_callback

// Multi-candidate: assignment
@transform_sqlite3_trace_v2_xCallback_assign@
identifier fn = sqlite3_trace_v2;
identifier fp = xCallback;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sql_trace_callback_enum], sizeof(xCallback_signature)) == 0) {
+     E = sql_trace_callback(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_trace_v2_xCallback_standalone@
identifier fn = sqlite3_trace_v2;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sql_trace_callback_enum], sizeof(xCallback_signature)) == 0) {
+     sql_trace_callback(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_trace_v2_xCallback_return@
identifier fn = sqlite3_trace_v2;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sql_trace_callback_enum], sizeof(xCallback_signature)) == 0) {
+     return sql_trace_callback(args);
+ }
...>
}

// Function: sqlite3_trace_v2, FP param: xTrace (seq: 3)
// Candidates: 0, sql_trace_callback

// Multi-candidate: assignment
@transform_sqlite3_trace_v2_xTrace_assign@
identifier fn = sqlite3_trace_v2;
identifier fp = xTrace;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xTrace_signature, xTrace_signatures[xTrace_0_enum], sizeof(xTrace_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xTrace_signature, xTrace_signatures[xTrace_sql_trace_callback_enum], sizeof(xTrace_signature)) == 0) {
+     E = sql_trace_callback(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_trace_v2_xTrace_standalone@
identifier fn = sqlite3_trace_v2;
identifier fp = xTrace;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xTrace_signature, xTrace_signatures[xTrace_0_enum], sizeof(xTrace_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xTrace_signature, xTrace_signatures[xTrace_sql_trace_callback_enum], sizeof(xTrace_signature)) == 0) {
+     sql_trace_callback(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_trace_v2_xTrace_return@
identifier fn = sqlite3_trace_v2;
identifier fp = xTrace;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xTrace_signature, xTrace_signatures[xTrace_0_enum], sizeof(xTrace_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xTrace_signature, xTrace_signatures[xTrace_sql_trace_callback_enum], sizeof(xTrace_signature)) == 0) {
+     return sql_trace_callback(args);
+ }
...>
}

// Function: sqlite3_wal_hook, FP param: xCallback (seq: 2)
// Candidates: 0, sqlite3WalDefaultHook

// Multi-candidate: assignment
@transform_sqlite3_wal_hook_xCallback_assign@
identifier fn = sqlite3_wal_hook;
identifier fp = xCallback;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], sizeof(xCallback_signature)) == 0) {
+     E = sqlite3WalDefaultHook(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3_wal_hook_xCallback_standalone@
identifier fn = sqlite3_wal_hook;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], sizeof(xCallback_signature)) == 0) {
+     sqlite3WalDefaultHook(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3_wal_hook_xCallback_return@
identifier fn = sqlite3_wal_hook;
identifier fp = xCallback;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCallback_signature, xCallback_signatures[xCallback_0_enum], sizeof(xCallback_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xCallback_signature, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], sizeof(xCallback_signature)) == 0) {
+     return sqlite3WalDefaultHook(args);
+ }
...>
}

// Function: sqlite3changegroup_add_strm, FP param: xInput (seq: 2)
// Candidates: xInputA, xInputB

// Multi-candidate: assignment
@transform_sqlite3changegroup_add_strm_xInput_assign@
identifier fn = sqlite3changegroup_add_strm;
identifier fp = xInput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xInput_signature, xInput_signatures[xInput_xInputA_enum], sizeof(xInput_signature)) == 0) {
+     E = xInputA(args);
+ }
+ else if (memcmp(xInput_signature, xInput_signatures[xInput_xInputB_enum], sizeof(xInput_signature)) == 0) {
+     E = xInputB(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_sqlite3changegroup_add_strm_xInput_standalone@
identifier fn = sqlite3changegroup_add_strm;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xInput_signature, xInput_signatures[xInput_xInputA_enum], sizeof(xInput_signature)) == 0) {
+     xInputA(args);
+ }
+ else if (memcmp(xInput_signature, xInput_signatures[xInput_xInputB_enum], sizeof(xInput_signature)) == 0) {
+     xInputB(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_sqlite3changegroup_add_strm_xInput_return@
identifier fn = sqlite3changegroup_add_strm;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xInput_signature, xInput_signatures[xInput_xInputA_enum], sizeof(xInput_signature)) == 0) {
+     return xInputA(args);
+ }
+ else if (memcmp(xInput_signature, xInput_signatures[xInput_xInputB_enum], sizeof(xInput_signature)) == 0) {
+     return xInputB(args);
+ }
...>
}

// Function: sqlite3changegroup_output_strm, FP param: xOutput (seq: 2)
// Candidates: 0

@transform_sqlite3changegroup_output_strm_xOutput_assign@
identifier fn = sqlite3changegroup_output_strm;
identifier fp = xOutput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3changegroup_output_strm_xOutput_standalone@
identifier fn = sqlite3changegroup_output_strm;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3changegroup_output_strm_xOutput_return@
identifier fn = sqlite3changegroup_output_strm;
identifier fp = xOutput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3changeset_start_strm, FP param: xInput (seq: 2)
// Candidates: 0

@transform_sqlite3changeset_start_strm_xInput_assign@
identifier fn = sqlite3changeset_start_strm;
identifier fp = xInput;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3changeset_start_strm_xInput_standalone@
identifier fn = sqlite3changeset_start_strm;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3changeset_start_strm_xInput_return@
identifier fn = sqlite3changeset_start_strm;
identifier fp = xInput;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3rbu_rename_handler, FP param: xRename (seq: 3)
// Candidates: 0

@transform_sqlite3rbu_rename_handler_xRename_assign@
identifier fn = sqlite3rbu_rename_handler;
identifier fp = xRename;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = 0;
...>
}

@transform_sqlite3rbu_rename_handler_xRename_standalone@
identifier fn = sqlite3rbu_rename_handler;
identifier fp = xRename;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ 0;
...>
}

@transform_sqlite3rbu_rename_handler_xRename_return@
identifier fn = sqlite3rbu_rename_handler;
identifier fp = xRename;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return 0;
...>
}

// Function: sqlite3session_table_filter, FP param: xFilter (seq: 2)
// Candidates: session_filter

@transform_sqlite3session_table_filter_xFilter_assign@
identifier fn = sqlite3session_table_filter;
identifier fp = xFilter;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = session_filter(args);
...>
}

@transform_sqlite3session_table_filter_xFilter_standalone@
identifier fn = sqlite3session_table_filter;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ session_filter(args);
...>
}

@transform_sqlite3session_table_filter_xFilter_return@
identifier fn = sqlite3session_table_filter;
identifier fp = xFilter;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return session_filter(args);
...>
}

// Function: stem, FP param: xCond (seq: 4)
// Candidates: 0, hasVowel, m_gt_0, m_gt_1

// Multi-candidate: assignment
@transform_stem_xCond_assign@
identifier fn = stem;
identifier fp = xCond;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xCond_signature, xCond_signatures[xCond_0_enum], sizeof(xCond_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_hasVowel_enum], sizeof(xCond_signature)) == 0) {
+     E = hasVowel(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_0_enum], sizeof(xCond_signature)) == 0) {
+     E = m_gt_0(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_1_enum], sizeof(xCond_signature)) == 0) {
+     E = m_gt_1(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_stem_xCond_standalone@
identifier fn = stem;
identifier fp = xCond;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xCond_signature, xCond_signatures[xCond_0_enum], sizeof(xCond_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_hasVowel_enum], sizeof(xCond_signature)) == 0) {
+     hasVowel(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_0_enum], sizeof(xCond_signature)) == 0) {
+     m_gt_0(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_1_enum], sizeof(xCond_signature)) == 0) {
+     m_gt_1(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_stem_xCond_return@
identifier fn = stem;
identifier fp = xCond;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xCond_signature, xCond_signatures[xCond_0_enum], sizeof(xCond_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_hasVowel_enum], sizeof(xCond_signature)) == 0) {
+     return hasVowel(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_0_enum], sizeof(xCond_signature)) == 0) {
+     return m_gt_0(args);
+ }
+ else if (memcmp(xCond_signature, xCond_signatures[xCond_m_gt_1_enum], sizeof(xCond_signature)) == 0) {
+     return m_gt_1(args);
+ }
...>
}

// Function: tryToCloneSchema, FP param: xForEach (seq: 4)
// Candidates: 0, tryToCloneData

// Multi-candidate: assignment
@transform_tryToCloneSchema_xForEach_assign@
identifier fn = tryToCloneSchema;
identifier fp = xForEach;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xForEach_signature, xForEach_signatures[xForEach_0_enum], sizeof(xForEach_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xForEach_signature, xForEach_signatures[xForEach_tryToCloneData_enum], sizeof(xForEach_signature)) == 0) {
+     E = tryToCloneData(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_tryToCloneSchema_xForEach_standalone@
identifier fn = tryToCloneSchema;
identifier fp = xForEach;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xForEach_signature, xForEach_signatures[xForEach_0_enum], sizeof(xForEach_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xForEach_signature, xForEach_signatures[xForEach_tryToCloneData_enum], sizeof(xForEach_signature)) == 0) {
+     tryToCloneData(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_tryToCloneSchema_xForEach_return@
identifier fn = tryToCloneSchema;
identifier fp = xForEach;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xForEach_signature, xForEach_signatures[xForEach_0_enum], sizeof(xForEach_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xForEach_signature, xForEach_signatures[xForEach_tryToCloneData_enum], sizeof(xForEach_signature)) == 0) {
+     return tryToCloneData(args);
+ }
...>
}

// Function: vfstrace_register, FP param: xOut (seq: 3)
// Candidates: vfstraceOut

@transform_vfstrace_register_xOut_assign@
identifier fn = vfstrace_register;
identifier fp = xOut;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = vfstraceOut(args);
...>
}

@transform_vfstrace_register_xOut_standalone@
identifier fn = vfstrace_register;
identifier fp = xOut;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ vfstraceOut(args);
...>
}

@transform_vfstrace_register_xOut_return@
identifier fn = vfstrace_register;
identifier fp = xOut;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return vfstraceOut(args);
...>
}

// Function: vtabCallConstructor, FP param: xConstruct (seq: 4)
// Candidates: bytecodevtabConnect, completionConnect, dbdataConnect, dbpageConnect, expertConnect, fsdirConnect, fts3ConnectMethod, fts3auxConnectMethod, fts3tokConnectMethod, geopolyConnect, jsonEachConnect, pragmaVtabConnect, rtreeConnect, seriesConnect, statConnect, stmtConnect, zipfileConnect, 0, fts3CreateMethod, geopolyCreate, pcache1Create, pcachetraceCreate, porterCreate, rtreeCreate, simpleCreate, unicodeCreate

// Multi-candidate: assignment
@transform_vtabCallConstructor_xConstruct_assign@
identifier fn = vtabCallConstructor;
identifier fp = xConstruct;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = bytecodevtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_completionConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = completionConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbdataConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = dbdataConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbpageConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = dbpageConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_expertConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = expertConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fsdirConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = fsdirConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     E = fts3ConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     E = fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     E = fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = geopolyConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_jsonEachConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = jsonEachConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = pragmaVtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = rtreeConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_seriesConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = seriesConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_statConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = statConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_stmtConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = stmtConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_zipfileConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     E = zipfileConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_0_enum], sizeof(xConstruct_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3CreateMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     E = fts3CreateMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = geopolyCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcache1Create_enum], sizeof(xConstruct_signature)) == 0) {
+     E = pcache1Create(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcachetraceCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = pcachetraceCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_porterCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = porterCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = rtreeCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_simpleCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = simpleCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_unicodeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     E = unicodeCreate(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_vtabCallConstructor_xConstruct_standalone@
identifier fn = vtabCallConstructor;
identifier fp = xConstruct;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     bytecodevtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_completionConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     completionConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbdataConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     dbdataConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbpageConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     dbpageConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_expertConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     expertConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fsdirConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     fsdirConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     fts3ConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     geopolyConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_jsonEachConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     jsonEachConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     pragmaVtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     rtreeConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_seriesConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     seriesConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_statConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     statConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_stmtConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     stmtConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_zipfileConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     zipfileConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_0_enum], sizeof(xConstruct_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3CreateMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     fts3CreateMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     geopolyCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcache1Create_enum], sizeof(xConstruct_signature)) == 0) {
+     pcache1Create(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcachetraceCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     pcachetraceCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_porterCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     porterCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     rtreeCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_simpleCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     simpleCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_unicodeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     unicodeCreate(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_vtabCallConstructor_xConstruct_return@
identifier fn = vtabCallConstructor;
identifier fp = xConstruct;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return bytecodevtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_completionConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return completionConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbdataConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return dbdataConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_dbpageConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return dbpageConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_expertConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return expertConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fsdirConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return fsdirConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     return fts3ConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     return fts3auxConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     return fts3tokConnectMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return geopolyConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_jsonEachConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return jsonEachConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return pragmaVtabConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return rtreeConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_seriesConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return seriesConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_statConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return statConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_stmtConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return stmtConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_zipfileConnect_enum], sizeof(xConstruct_signature)) == 0) {
+     return zipfileConnect(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_0_enum], sizeof(xConstruct_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_fts3CreateMethod_enum], sizeof(xConstruct_signature)) == 0) {
+     return fts3CreateMethod(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_geopolyCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return geopolyCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcache1Create_enum], sizeof(xConstruct_signature)) == 0) {
+     return pcache1Create(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_pcachetraceCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return pcachetraceCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_porterCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return porterCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_rtreeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return rtreeCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_simpleCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return simpleCreate(args);
+ }
+ else if (memcmp(xConstruct_signature, xConstruct_signatures[xConstruct_unicodeCreate_enum], sizeof(xConstruct_signature)) == 0) {
+     return unicodeCreate(args);
+ }
...>
}

// Function: walBusyLock, FP param: xBusy (seq: 2)
// Candidates: 0, btreeInvokeBusyHandler, sqliteDefaultBusyCallback, xBusyHandler

// Multi-candidate: assignment
@transform_walBusyLock_xBusy_assign@
identifier fn = walBusyLock;
identifier fp = xBusy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     E = 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     E = btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     E = sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     E = xBusyHandler(args);
+ }
...>
}

// Multi-candidate: standalone call
@transform_walBusyLock_xBusy_standalone@
identifier fn = walBusyLock;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     xBusyHandler(args);
+ }
...>
}

// Multi-candidate: return statement
@transform_walBusyLock_xBusy_return@
identifier fn = walBusyLock;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ if (memcmp(xBusy_signature, xBusy_signatures[xBusy_0_enum], sizeof(xBusy_signature)) == 0) {
+     return 0;
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     return btreeInvokeBusyHandler(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], sizeof(xBusy_signature)) == 0) {
+     return sqliteDefaultBusyCallback(args);
+ }
+ else if (memcmp(xBusy_signature, xBusy_signatures[xBusy_xBusyHandler_enum], sizeof(xBusy_signature)) == 0) {
+     return xBusyHandler(args);
+ }
...>
}

// Function: walCheckpoint, FP param: xBusy (seq: 4)
// Candidates: xBusy2

@transform_walCheckpoint_xBusy_assign@
identifier fn = walCheckpoint;
identifier fp = xBusy;
expression E;
expression list args;
@@
fn(...) {
<...
- E = fp(args);
+ E = xBusy2(args);
...>
}

@transform_walCheckpoint_xBusy_standalone@
identifier fn = walCheckpoint;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- fp(args);
+ xBusy2(args);
...>
}

@transform_walCheckpoint_xBusy_return@
identifier fn = walCheckpoint;
identifier fp = xBusy;
expression list args;
@@
fn(...) {
<...
- return fp(args);
+ return xBusy2(args);
...>
}

// Total transformation rules: 321
