// Auto-generated Coccinelle script
// Adds signature arguments to function pointer calls
// Uses parameter lists and identifier constraints for precise matching

// ============================================================
// Transformation Rules
// ============================================================

// ============================================================
// Function: bindText
// ============================================================

// bindText - xDel - 0
// fp_sequence: 5

@rule_bindText_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_bindText_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_bindText_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// bindText - xDel - SQLITE_DYNAMIC
// fp_sequence: 5

@rule_bindText_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_bindText_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_bindText_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// bindText - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_bindText_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_bindText_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_bindText_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// bindText - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_bindText_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_bindText_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_bindText_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// bindText - xDel - icuCollationDel
// fp_sequence: 5

@rule_bindText_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_bindText_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_bindText_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// bindText - xDel - rtreeMatchArgFree
// fp_sequence: 5

@rule_bindText_xDel_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_bindText_xDel_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_bindText_xDel_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);


// bindText - xDel - sqlite3RCStrUnref
// fp_sequence: 5

@rule_bindText_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_bindText_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_bindText_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// bindText - xDel - sqlite3SchemaClear
// fp_sequence: 5

@rule_bindText_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_bindText_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_bindText_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// bindText - xDel - sqlite3VdbeValueListFree
// fp_sequence: 5

@rule_bindText_xDel_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_bindText_xDel_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_bindText_xDel_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);


// bindText - xDel - sqlite3_free
// fp_sequence: 5

@rule_bindText_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_bindText_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_bindText_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// bindText - xDel - statAccumDestructor
// fp_sequence: 5

@rule_bindText_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_bindText_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_bindText_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// bindText - xDel - xDestroyOut
// fp_sequence: 5

@rule_bindText_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_bindText_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_bindText_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// bindText - xDel - zipfileFree
// fp_sequence: 5

@rule_bindText_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {bindText};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_bindText_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {bindText};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_bindText_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {bindText};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: blobReadWrite
// ============================================================

// blobReadWrite - xCall - sqlite3BtreePayloadChecked
// fp_sequence: 5

@rule_blobReadWrite_xCall_sqlite3BtreePayloadChecked_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3BtreePayloadChecked};
identifier FN_NAME = {blobReadWrite};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], pl2);

@rule_blobReadWrite_xCall_sqlite3BtreePayloadChecked_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3BtreePayloadChecked};
identifier FN_NAME = {blobReadWrite};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], pl2);

@rule_blobReadWrite_xCall_sqlite3BtreePayloadChecked_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3BtreePayloadChecked};
identifier FN_NAME = {blobReadWrite};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePayloadChecked_enum], pl2);


// blobReadWrite - xCall - sqlite3BtreePutData
// fp_sequence: 5

@rule_blobReadWrite_xCall_sqlite3BtreePutData_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3BtreePutData};
identifier FN_NAME = {blobReadWrite};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePutData_enum], pl2);

@rule_blobReadWrite_xCall_sqlite3BtreePutData_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3BtreePutData};
identifier FN_NAME = {blobReadWrite};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePutData_enum], pl2);

@rule_blobReadWrite_xCall_sqlite3BtreePutData_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3BtreePutData};
identifier FN_NAME = {blobReadWrite};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCall_signatures[xCall_sqlite3BtreePutData_enum], pl2);


// ============================================================
// Function: createCollation
// ============================================================

// createCollation - xCompare - binCollFunc
// fp_sequence: 5

@rule_createCollation_xCompare_binCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);

@rule_createCollation_xCompare_binCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);

@rule_createCollation_xCompare_binCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);


// createCollation - xCompare - decimalCollFunc
// fp_sequence: 5

@rule_createCollation_xCompare_decimalCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_createCollation_xCompare_decimalCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_createCollation_xCompare_decimalCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);


// createCollation - xCompare - dummyCompare
// fp_sequence: 5

@rule_createCollation_xCompare_dummyCompare_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);

@rule_createCollation_xCompare_dummyCompare_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);

@rule_createCollation_xCompare_dummyCompare_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);


// createCollation - xCompare - icuCollationColl
// fp_sequence: 5

@rule_createCollation_xCompare_icuCollationColl_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);

@rule_createCollation_xCompare_icuCollationColl_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);

@rule_createCollation_xCompare_icuCollationColl_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);


// createCollation - xCompare - nocaseCollatingFunc
// fp_sequence: 5

@rule_createCollation_xCompare_nocaseCollatingFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);

@rule_createCollation_xCompare_nocaseCollatingFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);

@rule_createCollation_xCompare_nocaseCollatingFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);


// createCollation - xCompare - rtrimCollFunc
// fp_sequence: 5

@rule_createCollation_xCompare_rtrimCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);

@rule_createCollation_xCompare_rtrimCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);

@rule_createCollation_xCompare_rtrimCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);


// createCollation - xCompare - uintCollFunc
// fp_sequence: 5

@rule_createCollation_xCompare_uintCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_createCollation_xCompare_uintCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_createCollation_xCompare_uintCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);


// createCollation - xDel - 0
// fp_sequence: 6

@rule_createCollation_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_createCollation_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_createCollation_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// createCollation - xDel - SQLITE_DYNAMIC
// fp_sequence: 6

@rule_createCollation_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_createCollation_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_createCollation_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// createCollation - xDel - SQLITE_STATIC
// fp_sequence: 6

@rule_createCollation_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_createCollation_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_createCollation_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// createCollation - xDel - SQLITE_TRANSIENT
// fp_sequence: 6

@rule_createCollation_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_createCollation_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_createCollation_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// createCollation - xDel - icuCollationDel
// fp_sequence: 6

@rule_createCollation_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_createCollation_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_createCollation_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// createCollation - xDel - rtreeMatchArgFree
// fp_sequence: 6

@rule_createCollation_xDel_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_createCollation_xDel_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_createCollation_xDel_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);


// createCollation - xDel - sqlite3RCStrUnref
// fp_sequence: 6

@rule_createCollation_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_createCollation_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_createCollation_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// createCollation - xDel - sqlite3SchemaClear
// fp_sequence: 6

@rule_createCollation_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_createCollation_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_createCollation_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// createCollation - xDel - sqlite3VdbeValueListFree
// fp_sequence: 6

@rule_createCollation_xDel_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_createCollation_xDel_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_createCollation_xDel_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);


// createCollation - xDel - sqlite3_free
// fp_sequence: 6

@rule_createCollation_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_createCollation_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_createCollation_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// createCollation - xDel - statAccumDestructor
// fp_sequence: 6

@rule_createCollation_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_createCollation_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_createCollation_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// createCollation - xDel - xDestroyOut
// fp_sequence: 6

@rule_createCollation_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_createCollation_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_createCollation_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// createCollation - xDel - zipfileFree
// fp_sequence: 6

@rule_createCollation_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {createCollation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_createCollation_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {createCollation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_createCollation_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {createCollation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: createFunctionApi
// ============================================================

// createFunctionApi - xSFunc - 0
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_createFunctionApi_xSFunc_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_createFunctionApi_xSFunc_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);


// createFunctionApi - xSFunc - base64
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_base64_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_createFunctionApi_xSFunc_base64_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_createFunctionApi_xSFunc_base64_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);


// createFunctionApi - xSFunc - base85
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_createFunctionApi_xSFunc_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_createFunctionApi_xSFunc_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);


// createFunctionApi - xSFunc - dummyUDF
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_createFunctionApi_xSFunc_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_createFunctionApi_xSFunc_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);


// createFunctionApi - xSFunc - editFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_editFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_editFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_editFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);


// createFunctionApi - xSFunc - fts3AllocateMSI
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprGlobalHitsCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprLoadDoclistsCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprLocalHitsCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprPhraseCountCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprRestartIfCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprTermOffsetInit
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprTest
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprTest_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTest_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTest_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);


// createFunctionApi - xSFunc - fts3ExprTestRebalance
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3ExprTestRebalance_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTestRebalance_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3ExprTestRebalance_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);


// createFunctionApi - xSFunc - fts3MatchinfoLcsCb
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);


// createFunctionApi - xSFunc - fts3SnippetFindPositions
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);


// createFunctionApi - xSFunc - fts3TokenizerFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts3TokenizerFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3TokenizerFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts3TokenizerFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);


// createFunctionApi - xSFunc - fts5DecodeFunction
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5DecodeFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5DecodeFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5DecodeFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);


// createFunctionApi - xSFunc - fts5Fts5Func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5Fts5Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5Fts5Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5Fts5Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);


// createFunctionApi - xSFunc - fts5InsttokenFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5InsttokenFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5InsttokenFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5InsttokenFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);


// createFunctionApi - xSFunc - fts5LocaleFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5LocaleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5LocaleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5LocaleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);


// createFunctionApi - xSFunc - fts5RowidFunction
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5RowidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5RowidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5RowidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);


// createFunctionApi - xSFunc - fts5SourceIdFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5SourceIdFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5SourceIdFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5SourceIdFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);


// createFunctionApi - xSFunc - geomCallback
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_createFunctionApi_xSFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_createFunctionApi_xSFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);


// createFunctionApi - xSFunc - idxRemFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_idxRemFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_idxRemFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_idxRemFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);


// createFunctionApi - xSFunc - idxSampleFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_idxSampleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_idxSampleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_idxSampleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);


// createFunctionApi - xSFunc - intTestFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_intTestFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_intTestFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_intTestFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);


// createFunctionApi - xSFunc - intckParseCreateIndexFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_intckParseCreateIndexFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_intckParseCreateIndexFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_intckParseCreateIndexFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);


// createFunctionApi - xSFunc - is_base85
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_is_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_createFunctionApi_xSFunc_is_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_createFunctionApi_xSFunc_is_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);


// createFunctionApi - xSFunc - likeFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_likeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_likeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_likeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);


// createFunctionApi - xSFunc - lsModeFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_lsModeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_lsModeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_lsModeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);


// createFunctionApi - xSFunc - rbuFossilDeltaFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rbuFossilDeltaFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuFossilDeltaFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuFossilDeltaFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);


// createFunctionApi - xSFunc - rbuIndexCntFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rbuIndexCntFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuIndexCntFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuIndexCntFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);


// createFunctionApi - xSFunc - rbuTargetNameFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rbuTargetNameFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuTargetNameFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuTargetNameFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);


// createFunctionApi - xSFunc - rbuTmpInsertFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rbuTmpInsertFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuTmpInsertFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_rbuTmpInsertFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);


// createFunctionApi - xSFunc - re_bytecode_func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_re_bytecode_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_createFunctionApi_xSFunc_re_bytecode_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_createFunctionApi_xSFunc_re_bytecode_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);


// createFunctionApi - xSFunc - re_sql_func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_re_sql_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_createFunctionApi_xSFunc_re_sql_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_createFunctionApi_xSFunc_re_sql_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);


// createFunctionApi - xSFunc - readfileFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_readfileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_readfileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_readfileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);


// createFunctionApi - xSFunc - rtreecheck
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rtreecheck_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreecheck_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreecheck_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);


// createFunctionApi - xSFunc - rtreedepth
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rtreedepth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreedepth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreedepth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);


// createFunctionApi - xSFunc - rtreenode
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_rtreenode_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreenode_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_createFunctionApi_xSFunc_rtreenode_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);


// createFunctionApi - xSFunc - sha1Func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sha1Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_createFunctionApi_xSFunc_sha1Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_createFunctionApi_xSFunc_sha1Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);


// createFunctionApi - xSFunc - sha1QueryFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sha1QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sha1QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sha1QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);


// createFunctionApi - xSFunc - sha3Func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sha3Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_createFunctionApi_xSFunc_sha3Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_createFunctionApi_xSFunc_sha3Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);


// createFunctionApi - xSFunc - sha3QueryFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sha3QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sha3QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sha3QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);


// createFunctionApi - xSFunc - shellAddSchemaName
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellAddSchemaName_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_createFunctionApi_xSFunc_shellAddSchemaName_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_createFunctionApi_xSFunc_shellAddSchemaName_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);


// createFunctionApi - xSFunc - shellDtostr
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellDtostr_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_createFunctionApi_xSFunc_shellDtostr_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_createFunctionApi_xSFunc_shellDtostr_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);


// createFunctionApi - xSFunc - shellFkeyCollateClause
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellFkeyCollateClause_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_createFunctionApi_xSFunc_shellFkeyCollateClause_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_createFunctionApi_xSFunc_shellFkeyCollateClause_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);


// createFunctionApi - xSFunc - shellModuleSchema
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellModuleSchema_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_createFunctionApi_xSFunc_shellModuleSchema_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_createFunctionApi_xSFunc_shellModuleSchema_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);


// createFunctionApi - xSFunc - shellPutsFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellPutsFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_shellPutsFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_shellPutsFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);


// createFunctionApi - xSFunc - shellStrtod
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellStrtod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_createFunctionApi_xSFunc_shellStrtod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_createFunctionApi_xSFunc_shellStrtod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);


// createFunctionApi - xSFunc - shellUSleepFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_shellUSleepFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_shellUSleepFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_shellUSleepFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);


// createFunctionApi - xSFunc - sqlarCompressFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sqlarCompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlarCompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlarCompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);


// createFunctionApi - xSFunc - sqlarUncompressFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sqlarUncompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlarUncompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlarUncompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);


// createFunctionApi - xSFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_createFunctionApi_xSFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);


// createFunctionApi - xSFunc - stmtrandFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_stmtrandFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_stmtrandFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_stmtrandFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);


// createFunctionApi - xSFunc - testFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_testFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_testFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_testFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);


// createFunctionApi - xSFunc - writefileFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_writefileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_writefileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_writefileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);


// createFunctionApi - xSFunc - fts5ExprFunctionHr
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5ExprFunctionHr_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFunctionHr};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionHr_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFunctionHr_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFunctionHr};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionHr_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFunctionHr_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprFunctionHr};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionHr_enum], pl2);


// createFunctionApi - xSFunc - fts5ExprFunctionTcl
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5ExprFunctionTcl_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFunctionTcl};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionTcl_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFunctionTcl_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFunctionTcl};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionTcl_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFunctionTcl_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprFunctionTcl};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFunctionTcl_enum], pl2);


// createFunctionApi - xSFunc - fts5ExprIsAlnum
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5ExprIsAlnum_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprIsAlnum};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprIsAlnum_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprIsAlnum_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprIsAlnum};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprIsAlnum_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprIsAlnum_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprIsAlnum};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprIsAlnum_enum], pl2);


// createFunctionApi - xSFunc - fts5ExprFold
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_fts5ExprFold_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFold};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFold_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFold_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprFold};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFold_enum], pl2);

@rule_createFunctionApi_xSFunc_fts5ExprFold_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprFold};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5ExprFold_enum], pl2);


// createFunctionApi - xSFunc - decimalFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalFunc_enum], pl2);


// createFunctionApi - xSFunc - decimalCmpFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalCmpFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCmpFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalCmpFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCmpFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalCmpFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalCmpFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalCmpFunc_enum], pl2);


// createFunctionApi - xSFunc - decimalAddFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalAddFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalAddFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalAddFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalAddFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalAddFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalAddFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalAddFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalAddFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalAddFunc_enum], pl2);


// createFunctionApi - xSFunc - decimalSubFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalSubFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSubFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalSubFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalSubFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSubFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalSubFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalSubFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSubFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalSubFunc_enum], pl2);


// createFunctionApi - xSFunc - decimalMulFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalMulFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalMulFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalMulFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalMulFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalMulFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalMulFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalMulFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalMulFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalMulFunc_enum], pl2);


// createFunctionApi - xSFunc - decimalPow2Func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_decimalPow2Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalPow2Func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalPow2Func_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalPow2Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalPow2Func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalPow2Func_enum], pl2);

@rule_createFunctionApi_xSFunc_decimalPow2Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalPow2Func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_decimalPow2Func_enum], pl2);


// createFunctionApi - xSFunc - ieee754func
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_ieee754func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754func};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754func};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ieee754func};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_enum], pl2);


// createFunctionApi - xSFunc - ieee754func_to_blob
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_ieee754func_to_blob_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754func_to_blob};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754func_to_blob_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754func_to_blob};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754func_to_blob_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ieee754func_to_blob};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754func_to_blob_enum], pl2);


// createFunctionApi - xSFunc - ieee754inc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_ieee754inc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754inc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754inc_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754inc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {ieee754inc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754inc_enum], pl2);

@rule_createFunctionApi_xSFunc_ieee754inc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {ieee754inc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_ieee754inc_enum], pl2);


// createFunctionApi - xSFunc - geopolyAreaFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyAreaFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyAreaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyAreaFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyAreaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyAreaFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyAreaFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyAreaFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyBlobFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyBlobFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyBlobFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyBlobFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyBlobFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyBlobFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyBlobFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBlobFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyJsonFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyJsonFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyJsonFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyJsonFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyJsonFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyJsonFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyJsonFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyJsonFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolySvgFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolySvgFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolySvgFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolySvgFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolySvgFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolySvgFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolySvgFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolySvgFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyWithinFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyWithinFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyWithinFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyWithinFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyWithinFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyWithinFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyWithinFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyWithinFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyContainsPointFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyContainsPointFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyContainsPointFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyContainsPointFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyContainsPointFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyContainsPointFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyContainsPointFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyContainsPointFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyOverlapFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyOverlapFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyOverlapFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyOverlapFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyOverlapFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyOverlapFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyOverlapFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyOverlapFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyDebugFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyDebugFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyDebugFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyDebugFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyDebugFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyDebugFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyDebugFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyDebugFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyBBoxFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyBBoxFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyBBoxFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyBBoxFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyBBoxFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyBBoxFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyBBoxFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyBBoxFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyXformFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyXformFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyXformFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyXformFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyXformFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyXformFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyXformFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyXformFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyRegularFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyRegularFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyRegularFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyRegularFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyRegularFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyRegularFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyRegularFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyRegularFunc_enum], pl2);


// createFunctionApi - xSFunc - geopolyCcwFunc
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_geopolyCcwFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyCcwFunc};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyCcwFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyCcwFunc};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], pl2);

@rule_createFunctionApi_xSFunc_geopolyCcwFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyCcwFunc};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geopolyCcwFunc_enum], pl2);


// createFunctionApi - xSFunc - recoverGetPage
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_recoverGetPage_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverGetPage};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverGetPage_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverGetPage_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverGetPage};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverGetPage_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverGetPage_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverGetPage};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverGetPage_enum], pl2);


// createFunctionApi - xSFunc - recoverPageIsUsed
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_recoverPageIsUsed_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverPageIsUsed};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverPageIsUsed_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverPageIsUsed};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverPageIsUsed_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverPageIsUsed};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverPageIsUsed_enum], pl2);


// createFunctionApi - xSFunc - recoverReadI32
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_recoverReadI32_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverReadI32};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverReadI32_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverReadI32_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverReadI32};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverReadI32_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverReadI32_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverReadI32};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverReadI32_enum], pl2);


// createFunctionApi - xSFunc - recoverEscapeCrlf
// fp_sequence: 6

@rule_createFunctionApi_xSFunc_recoverEscapeCrlf_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverEscapeCrlf};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverEscapeCrlf_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverEscapeCrlf};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], pl2);

@rule_createFunctionApi_xSFunc_recoverEscapeCrlf_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverEscapeCrlf};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_recoverEscapeCrlf_enum], pl2);


// createFunctionApi - xStep - 0
// fp_sequence: 7

@rule_createFunctionApi_xStep_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_createFunctionApi_xStep_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_createFunctionApi_xStep_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);


// createFunctionApi - xStep - decimalSumStep
// fp_sequence: 7

@rule_createFunctionApi_xStep_decimalSumStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_createFunctionApi_xStep_decimalSumStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_createFunctionApi_xStep_decimalSumStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);


// createFunctionApi - xStep - dummyUDF
// fp_sequence: 7

@rule_createFunctionApi_xStep_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_createFunctionApi_xStep_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_createFunctionApi_xStep_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);


// createFunctionApi - xStep - percentStep
// fp_sequence: 7

@rule_createFunctionApi_xStep_percentStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_createFunctionApi_xStep_percentStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_createFunctionApi_xStep_percentStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);


// createFunctionApi - xStep - sha3AggStep
// fp_sequence: 7

@rule_createFunctionApi_xStep_sha3AggStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_createFunctionApi_xStep_sha3AggStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_createFunctionApi_xStep_sha3AggStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);


// createFunctionApi - xStep - zipfileStep
// fp_sequence: 7

@rule_createFunctionApi_xStep_zipfileStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_createFunctionApi_xStep_zipfileStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_createFunctionApi_xStep_zipfileStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);


// createFunctionApi - xFinal - 0
// fp_sequence: 8

@rule_createFunctionApi_xFinal_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_createFunctionApi_xFinal_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_createFunctionApi_xFinal_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);


// createFunctionApi - xFinal - decimalSumFinalize
// fp_sequence: 8

@rule_createFunctionApi_xFinal_decimalSumFinalize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_createFunctionApi_xFinal_decimalSumFinalize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_createFunctionApi_xFinal_decimalSumFinalize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);


// createFunctionApi - xFinal - dummyUDFvalue
// fp_sequence: 8

@rule_createFunctionApi_xFinal_dummyUDFvalue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_createFunctionApi_xFinal_dummyUDFvalue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_createFunctionApi_xFinal_dummyUDFvalue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);


// createFunctionApi - xFinal - percentFinal
// fp_sequence: 8

@rule_createFunctionApi_xFinal_percentFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_createFunctionApi_xFinal_percentFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_createFunctionApi_xFinal_percentFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);


// createFunctionApi - xFinal - sha3AggFinal
// fp_sequence: 8

@rule_createFunctionApi_xFinal_sha3AggFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_createFunctionApi_xFinal_sha3AggFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_createFunctionApi_xFinal_sha3AggFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);


// createFunctionApi - xFinal - zipfileFinal
// fp_sequence: 8

@rule_createFunctionApi_xFinal_zipfileFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_createFunctionApi_xFinal_zipfileFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_createFunctionApi_xFinal_zipfileFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);


// createFunctionApi - xValue - 0
// fp_sequence: 9

@rule_createFunctionApi_xValue_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_createFunctionApi_xValue_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_createFunctionApi_xValue_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);


// createFunctionApi - xValue - decimalSumValue
// fp_sequence: 9

@rule_createFunctionApi_xValue_decimalSumValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_createFunctionApi_xValue_decimalSumValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_createFunctionApi_xValue_decimalSumValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);


// createFunctionApi - xValue - percentValue
// fp_sequence: 9

@rule_createFunctionApi_xValue_percentValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_createFunctionApi_xValue_percentValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_createFunctionApi_xValue_percentValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);


// createFunctionApi - xValue - sqlite3changeset_new
// fp_sequence: 9

@rule_createFunctionApi_xValue_sqlite3changeset_new_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_createFunctionApi_xValue_sqlite3changeset_new_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_createFunctionApi_xValue_sqlite3changeset_new_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);


// createFunctionApi - xValue - sqlite3changeset_old
// fp_sequence: 9

@rule_createFunctionApi_xValue_sqlite3changeset_old_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_createFunctionApi_xValue_sqlite3changeset_old_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_createFunctionApi_xValue_sqlite3changeset_old_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);


// createFunctionApi - xInverse - 0
// fp_sequence: 10

@rule_createFunctionApi_xInverse_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_createFunctionApi_xInverse_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_createFunctionApi_xInverse_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);


// createFunctionApi - xInverse - decimalSumInverse
// fp_sequence: 10

@rule_createFunctionApi_xInverse_decimalSumInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_createFunctionApi_xInverse_decimalSumInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_createFunctionApi_xInverse_decimalSumInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);


// createFunctionApi - xInverse - percentInverse
// fp_sequence: 10

@rule_createFunctionApi_xInverse_percentInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_createFunctionApi_xInverse_percentInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_createFunctionApi_xInverse_percentInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);


// createFunctionApi - xDestroy - 0
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_createFunctionApi_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_createFunctionApi_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// createFunctionApi - xDestroy - fts5ModuleDestroy
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_fts5ModuleDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_createFunctionApi_xDestroy_fts5ModuleDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_createFunctionApi_xDestroy_fts5ModuleDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);


// createFunctionApi - xDestroy - hashDestroy
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_createFunctionApi_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_createFunctionApi_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// createFunctionApi - xDestroy - icuCollationDel
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_createFunctionApi_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_createFunctionApi_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// createFunctionApi - xDestroy - rtreeFreeCallback
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_createFunctionApi_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_createFunctionApi_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// createFunctionApi - xDestroy - sqlite3_free
// fp_sequence: 11

@rule_createFunctionApi_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createFunctionApi};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_createFunctionApi_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createFunctionApi};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_createFunctionApi_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createFunctionApi};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: createModule
// ============================================================

// createModule - xDestroy - 0
// fp_sequence: 5

@rule_createModule_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_createModule_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_createModule_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// createModule - xDestroy - fts5ModuleDestroy
// fp_sequence: 5

@rule_createModule_xDestroy_fts5ModuleDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_createModule_xDestroy_fts5ModuleDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_createModule_xDestroy_fts5ModuleDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);


// createModule - xDestroy - hashDestroy
// fp_sequence: 5

@rule_createModule_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_createModule_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_createModule_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// createModule - xDestroy - icuCollationDel
// fp_sequence: 5

@rule_createModule_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_createModule_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_createModule_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// createModule - xDestroy - rtreeFreeCallback
// fp_sequence: 5

@rule_createModule_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_createModule_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_createModule_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// createModule - xDestroy - sqlite3_free
// fp_sequence: 5

@rule_createModule_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_createModule_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_createModule_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {createModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: exprCodeBetween
// ============================================================

// exprCodeBetween - xJump - 0
// fp_sequence: 4

@rule_exprCodeBetween_xJump_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {exprCodeBetween};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xJump_signatures[xJump_0_enum], pl2);

@rule_exprCodeBetween_xJump_0_return@
expression list pl1, pl2;
identifier FN_NAME = {exprCodeBetween};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xJump_signatures[xJump_0_enum], pl2);

@rule_exprCodeBetween_xJump_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {exprCodeBetween};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xJump_signatures[xJump_0_enum], pl2);


// exprCodeBetween - xJump - sqlite3ExprIfFalse
// fp_sequence: 4

@rule_exprCodeBetween_xJump_sqlite3ExprIfFalse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprIfFalse};
identifier FN_NAME = {exprCodeBetween};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], pl2);

@rule_exprCodeBetween_xJump_sqlite3ExprIfFalse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprIfFalse};
identifier FN_NAME = {exprCodeBetween};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], pl2);

@rule_exprCodeBetween_xJump_sqlite3ExprIfFalse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3ExprIfFalse};
identifier FN_NAME = {exprCodeBetween};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfFalse_enum], pl2);


// exprCodeBetween - xJump - sqlite3ExprIfTrue
// fp_sequence: 4

@rule_exprCodeBetween_xJump_sqlite3ExprIfTrue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprIfTrue};
identifier FN_NAME = {exprCodeBetween};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], pl2);

@rule_exprCodeBetween_xJump_sqlite3ExprIfTrue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprIfTrue};
identifier FN_NAME = {exprCodeBetween};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], pl2);

@rule_exprCodeBetween_xJump_sqlite3ExprIfTrue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3ExprIfTrue};
identifier FN_NAME = {exprCodeBetween};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xJump_signatures[xJump_sqlite3ExprIfTrue_enum], pl2);


// ============================================================
// Function: fiddle_export_db
// ============================================================

// ============================================================
// Function: fts3ExprIterate2
// ============================================================

// fts3ExprIterate2 - x - fts3AllocateMSI
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);

@rule_fts3ExprIterate2_x_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);

@rule_fts3ExprIterate2_x_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprGlobalHitsCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprLoadDoclistsCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprLocalHitsCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprPhraseCountCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprRestartIfCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);


// fts3ExprIterate2 - x - fts3ExprTermOffsetInit
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);

@rule_fts3ExprIterate2_x_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);


// fts3ExprIterate2 - x - fts3MatchinfoLcsCb
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);

@rule_fts3ExprIterate2_x_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);


// fts3ExprIterate2 - x - fts3SnippetFindPositions
// fp_sequence: 3

@rule_fts3ExprIterate2_x_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {fts3ExprIterate2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);

@rule_fts3ExprIterate2_x_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {fts3ExprIterate2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);

@rule_fts3ExprIterate2_x_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {fts3ExprIterate2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);


// ============================================================
// Function: fts3SegReaderSort
// ============================================================

// fts3SegReaderSort - xCmp - fts3SegReaderCmp
// fp_sequence: 4

@rule_fts3SegReaderSort_xCmp_fts3SegReaderCmp_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderCmp_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderCmp_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SegReaderCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderCmp_enum], pl2);


// fts3SegReaderSort - xCmp - fts3SegReaderDoclistCmpRev
// fp_sequence: 4

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmpRev_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmpRev};
identifier FN_NAME = {fts3SegReaderSort};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmpRev_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmpRev};
identifier FN_NAME = {fts3SegReaderSort};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmpRev_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmpRev};
identifier FN_NAME = {fts3SegReaderSort};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmpRev_enum], pl2);


// fts3SegReaderSort - xCmp - fts3SegReaderDoclistCmp
// fp_sequence: 4

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmp_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmp_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], pl2);

@rule_fts3SegReaderSort_xCmp_fts3SegReaderDoclistCmp_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SegReaderDoclistCmp};
identifier FN_NAME = {fts3SegReaderSort};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCmp_signatures[xCmp_fts3SegReaderDoclistCmp_enum], pl2);


// ============================================================
// Function: fts5ApiQueryPhrase
// ============================================================

// ============================================================
// Function: fts5ApiSetAuxdata
// ============================================================

// ============================================================
// Function: fts5ApiTokenize
// ============================================================

// ============================================================
// Function: fts5ApiTokenize_v2
// ============================================================

// fts5ApiTokenize_v2 - xToken - fts5ColumnSizeCb
// fp_sequence: 7

@rule_fts5ApiTokenize_v2_xToken_fts5ColumnSizeCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ColumnSizeCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ColumnSizeCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);


// fts5ApiTokenize_v2 - xToken - fts5ExprPopulatePoslistsCb
// fp_sequence: 7

@rule_fts5ApiTokenize_v2_xToken_fts5ExprPopulatePoslistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ExprPopulatePoslistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ExprPopulatePoslistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);


// fts5ApiTokenize_v2 - xToken - fts5ParseTokenize
// fp_sequence: 7

@rule_fts5ApiTokenize_v2_xToken_fts5ParseTokenize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ParseTokenize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5ParseTokenize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);


// fts5ApiTokenize_v2 - xToken - fts5StorageInsertCallback
// fp_sequence: 7

@rule_fts5ApiTokenize_v2_xToken_fts5StorageInsertCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5StorageInsertCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5StorageInsertCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);


// fts5ApiTokenize_v2 - xToken - fts5StorageIntegrityCallback
// fp_sequence: 7

@rule_fts5ApiTokenize_v2_xToken_fts5StorageIntegrityCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5StorageIntegrityCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);

@rule_fts5ApiTokenize_v2_xToken_fts5StorageIntegrityCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {fts5ApiTokenize_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);


// ============================================================
// Function: fts5AsciiTokenize
// ============================================================

// ============================================================
// Function: fts5ChunkIterate
// ============================================================

// fts5ChunkIterate - xChunk - fts5MergeChunkCallback
// fp_sequence: 4

@rule_fts5ChunkIterate_xChunk_fts5MergeChunkCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5MergeChunkCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5MergeChunkCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5MergeChunkCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5MergeChunkCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5MergeChunkCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5MergeChunkCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5MergeChunkCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5MergeChunkCallback_enum], pl2);


// fts5ChunkIterate - xChunk - fts5PoslistCallback
// fp_sequence: 4

@rule_fts5ChunkIterate_xChunk_fts5PoslistCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5PoslistCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistCallback_enum], pl2);


// fts5ChunkIterate - xChunk - fts5PoslistFilterCallback
// fp_sequence: 4

@rule_fts5ChunkIterate_xChunk_fts5PoslistFilterCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistFilterCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistFilterCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistFilterCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistFilterCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistFilterCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistFilterCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5PoslistFilterCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistFilterCallback_enum], pl2);


// fts5ChunkIterate - xChunk - fts5PoslistOffsetsCallback
// fp_sequence: 4

@rule_fts5ChunkIterate_xChunk_fts5PoslistOffsetsCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistOffsetsCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistOffsetsCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistOffsetsCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5PoslistOffsetsCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistOffsetsCallback_enum], pl2);

@rule_fts5ChunkIterate_xChunk_fts5PoslistOffsetsCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5PoslistOffsetsCallback};
identifier FN_NAME = {fts5ChunkIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xChunk_signatures[xChunk_fts5PoslistOffsetsCallback_enum], pl2);


// ============================================================
// Function: fts5CreateAux
// ============================================================

// ============================================================
// Function: fts5CreateTokenizer
// ============================================================

// ============================================================
// Function: fts5CreateTokenizer_v2
// ============================================================

// ============================================================
// Function: fts5NewTokenizerModule
// ============================================================

// fts5NewTokenizerModule - xDestroy - 0
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// fts5NewTokenizerModule - xDestroy - fts5ModuleDestroy
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_fts5ModuleDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_fts5ModuleDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_fts5ModuleDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);


// fts5NewTokenizerModule - xDestroy - hashDestroy
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// fts5NewTokenizerModule - xDestroy - icuCollationDel
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// fts5NewTokenizerModule - xDestroy - rtreeFreeCallback
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// fts5NewTokenizerModule - xDestroy - sqlite3_free
// fp_sequence: 4

@rule_fts5NewTokenizerModule_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_fts5NewTokenizerModule_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {fts5NewTokenizerModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: fts5PorterTokenize
// ============================================================

// ============================================================
// Function: fts5TriTokenize
// ============================================================

// ============================================================
// Function: fts5UnicodeTokenize
// ============================================================

// ============================================================
// Function: fts5V1toV2Tokenize
// ============================================================

// ============================================================
// Function: fts5V2toV1Tokenize
// ============================================================

// ============================================================
// Function: fts5VisitEntries
// ============================================================

// fts5VisitEntries - xVisit - prefixIterSetupCb
// fp_sequence: 6

@rule_fts5VisitEntries_xVisit_prefixIterSetupCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {prefixIterSetupCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupCb_enum], pl2);

@rule_fts5VisitEntries_xVisit_prefixIterSetupCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {prefixIterSetupCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupCb_enum], pl2);

@rule_fts5VisitEntries_xVisit_prefixIterSetupCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {prefixIterSetupCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupCb_enum], pl2);


// fts5VisitEntries - xVisit - prefixIterSetupTokendataCb
// fp_sequence: 6

@rule_fts5VisitEntries_xVisit_prefixIterSetupTokendataCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {prefixIterSetupTokendataCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], pl2);

@rule_fts5VisitEntries_xVisit_prefixIterSetupTokendataCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {prefixIterSetupTokendataCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], pl2);

@rule_fts5VisitEntries_xVisit_prefixIterSetupTokendataCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {prefixIterSetupTokendataCb};
identifier FN_NAME = {fts5VisitEntries};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xVisit_signatures[xVisit_prefixIterSetupTokendataCb_enum], pl2);


// ============================================================
// Function: invokeValueDestructor
// ============================================================

// invokeValueDestructor - xDel - 0
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_invokeValueDestructor_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_invokeValueDestructor_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// invokeValueDestructor - xDel - SQLITE_DYNAMIC
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// invokeValueDestructor - xDel - SQLITE_STATIC
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// invokeValueDestructor - xDel - SQLITE_TRANSIENT
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_invokeValueDestructor_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// invokeValueDestructor - xDel - icuCollationDel
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_invokeValueDestructor_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_invokeValueDestructor_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// invokeValueDestructor - xDel - rtreeMatchArgFree
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_invokeValueDestructor_xDel_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_invokeValueDestructor_xDel_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);


// invokeValueDestructor - xDel - sqlite3RCStrUnref
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// invokeValueDestructor - xDel - sqlite3SchemaClear
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// invokeValueDestructor - xDel - sqlite3VdbeValueListFree
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);


// invokeValueDestructor - xDel - sqlite3_free
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_invokeValueDestructor_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// invokeValueDestructor - xDel - statAccumDestructor
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_invokeValueDestructor_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_invokeValueDestructor_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// invokeValueDestructor - xDel - xDestroyOut
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_invokeValueDestructor_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_invokeValueDestructor_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// invokeValueDestructor - xDel - zipfileFree
// fp_sequence: 2

@rule_invokeValueDestructor_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_invokeValueDestructor_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_invokeValueDestructor_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {invokeValueDestructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: recoverInit
// ============================================================

// recoverInit - xSql - 0
// fp_sequence: 4

@rule_recoverInit_xSql_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {recoverInit};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xSql_signatures[xSql_0_enum], pl2);

@rule_recoverInit_xSql_0_return@
expression list pl1, pl2;
identifier FN_NAME = {recoverInit};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xSql_signatures[xSql_0_enum], pl2);

@rule_recoverInit_xSql_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {recoverInit};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xSql_signatures[xSql_0_enum], pl2);


// recoverInit - xSql - recoverSqlCb
// fp_sequence: 4

@rule_recoverInit_xSql_recoverSqlCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {recoverInit};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);

@rule_recoverInit_xSql_recoverSqlCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {recoverInit};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);

@rule_recoverInit_xSql_recoverSqlCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {recoverInit};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);


// ============================================================
// Function: sessionApplyOneOp
// ============================================================

// ============================================================
// Function: sessionApplyOneWithRetry
// ============================================================

// ============================================================
// Function: sessionBindRow
// ============================================================

// sessionBindRow - xValue - sqlite3changeset_new
// fp_sequence: 2

@rule_sessionBindRow_xValue_sqlite3changeset_new_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sessionBindRow};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_sessionBindRow_xValue_sqlite3changeset_new_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sessionBindRow};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_sessionBindRow_xValue_sqlite3changeset_new_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sessionBindRow};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);


// sessionBindRow - xValue - sqlite3changeset_old
// fp_sequence: 2

@rule_sessionBindRow_xValue_sqlite3changeset_old_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sessionBindRow};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_sessionBindRow_xValue_sqlite3changeset_old_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sessionBindRow};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_sessionBindRow_xValue_sqlite3changeset_old_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sessionBindRow};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);


// ============================================================
// Function: sessionChangegroupOutput
// ============================================================

// sessionChangegroupOutput - xOutput - 0
// fp_sequence: 2

@rule_sessionChangegroupOutput_xOutput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangegroupOutput};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionChangegroupOutput_xOutput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangegroupOutput};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionChangegroupOutput_xOutput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangegroupOutput};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);


// ============================================================
// Function: sessionChangesetApply
// ============================================================

// sessionChangesetApply - xFilter - 0
// fp_sequence: 3

@rule_sessionChangesetApply_xFilter_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApply};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);

@rule_sessionChangesetApply_xFilter_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApply};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);

@rule_sessionChangesetApply_xFilter_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetApply};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);


// sessionChangesetApply - xFilter - session_filter
// fp_sequence: 3

@rule_sessionChangesetApply_xFilter_session_filter_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sessionChangesetApply_xFilter_session_filter_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sessionChangesetApply_xFilter_session_filter_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);


// sessionChangesetApply - xFilterIter - 0
// fp_sequence: 4

@rule_sessionChangesetApply_xFilterIter_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApply};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);

@rule_sessionChangesetApply_xFilterIter_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApply};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);

@rule_sessionChangesetApply_xFilterIter_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetApply};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);


// sessionChangesetApply - xFilterIter - session_filter
// fp_sequence: 4

@rule_sessionChangesetApply_xFilterIter_session_filter_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);

@rule_sessionChangesetApply_xFilterIter_session_filter_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);

@rule_sessionChangesetApply_xFilterIter_session_filter_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApply};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);


// ============================================================
// Function: sessionChangesetApplyV23
// ============================================================

// sessionChangesetApplyV23 - xInput - 0
// fp_sequence: 4

@rule_sessionChangesetApplyV23_xInput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sessionChangesetApplyV23_xInput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sessionChangesetApplyV23_xInput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);


// sessionChangesetApplyV23 - xFilter - 0
// fp_sequence: 6

@rule_sessionChangesetApplyV23_xFilter_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);

@rule_sessionChangesetApplyV23_xFilter_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);

@rule_sessionChangesetApplyV23_xFilter_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFilter_signatures[xFilter_0_enum], pl2);


// sessionChangesetApplyV23 - xFilter - session_filter
// fp_sequence: 6

@rule_sessionChangesetApplyV23_xFilter_session_filter_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sessionChangesetApplyV23_xFilter_session_filter_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sessionChangesetApplyV23_xFilter_session_filter_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);


// sessionChangesetApplyV23 - xFilterIter - 0
// fp_sequence: 7

@rule_sessionChangesetApplyV23_xFilterIter_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);

@rule_sessionChangesetApplyV23_xFilterIter_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);

@rule_sessionChangesetApplyV23_xFilterIter_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFilterIter_signatures[xFilterIter_0_enum], pl2);


// sessionChangesetApplyV23 - xFilterIter - session_filter
// fp_sequence: 7

@rule_sessionChangesetApplyV23_xFilterIter_session_filter_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);

@rule_sessionChangesetApplyV23_xFilterIter_session_filter_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);

@rule_sessionChangesetApplyV23_xFilterIter_session_filter_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sessionChangesetApplyV23};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFilterIter_signatures[xFilterIter_session_filter_enum], pl2);


// ============================================================
// Function: sessionChangesetInvert
// ============================================================

// sessionChangesetInvert - xOutput - 0
// fp_sequence: 2

@rule_sessionChangesetInvert_xOutput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetInvert};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionChangesetInvert_xOutput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetInvert};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionChangesetInvert_xOutput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetInvert};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);


// ============================================================
// Function: sessionChangesetStart
// ============================================================

// sessionChangesetStart - xInput - 0
// fp_sequence: 2

@rule_sessionChangesetStart_xInput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetStart};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sessionChangesetStart_xInput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionChangesetStart};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sessionChangesetStart_xInput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionChangesetStart};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);


// ============================================================
// Function: sessionConflictHandler
// ============================================================

// ============================================================
// Function: sessionGenerateChangeset
// ============================================================

// sessionGenerateChangeset - xOutput - 0
// fp_sequence: 3

@rule_sessionGenerateChangeset_xOutput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionGenerateChangeset};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionGenerateChangeset_xOutput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionGenerateChangeset};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionGenerateChangeset_xOutput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionGenerateChangeset};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);


// ============================================================
// Function: sessionRebase
// ============================================================

// sessionRebase - xOutput - 0
// fp_sequence: 3

@rule_sessionRebase_xOutput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sessionRebase};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionRebase_xOutput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sessionRebase};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sessionRebase_xOutput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sessionRebase};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);


// ============================================================
// Function: sessionRetryConstraints
// ============================================================

// ============================================================
// Function: setResultStrOrError
// ============================================================

// setResultStrOrError - xDel - 0
// fp_sequence: 5

@rule_setResultStrOrError_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_setResultStrOrError_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_setResultStrOrError_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// setResultStrOrError - xDel - SQLITE_DYNAMIC
// fp_sequence: 5

@rule_setResultStrOrError_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// setResultStrOrError - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_setResultStrOrError_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// setResultStrOrError - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_setResultStrOrError_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_setResultStrOrError_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// setResultStrOrError - xDel - icuCollationDel
// fp_sequence: 5

@rule_setResultStrOrError_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_setResultStrOrError_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_setResultStrOrError_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// setResultStrOrError - xDel - rtreeMatchArgFree
// fp_sequence: 5

@rule_setResultStrOrError_xDel_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_setResultStrOrError_xDel_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_setResultStrOrError_xDel_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);


// setResultStrOrError - xDel - sqlite3RCStrUnref
// fp_sequence: 5

@rule_setResultStrOrError_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// setResultStrOrError - xDel - sqlite3SchemaClear
// fp_sequence: 5

@rule_setResultStrOrError_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// setResultStrOrError - xDel - sqlite3VdbeValueListFree
// fp_sequence: 5

@rule_setResultStrOrError_xDel_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);


// setResultStrOrError - xDel - sqlite3_free
// fp_sequence: 5

@rule_setResultStrOrError_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_setResultStrOrError_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// setResultStrOrError - xDel - statAccumDestructor
// fp_sequence: 5

@rule_setResultStrOrError_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_setResultStrOrError_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_setResultStrOrError_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// setResultStrOrError - xDel - xDestroyOut
// fp_sequence: 5

@rule_setResultStrOrError_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_setResultStrOrError_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_setResultStrOrError_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// setResultStrOrError - xDel - zipfileFree
// fp_sequence: 5

@rule_setResultStrOrError_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {setResultStrOrError};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_setResultStrOrError_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {setResultStrOrError};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_setResultStrOrError_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {setResultStrOrError};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: sqlite3BenignMallocHooks
// ============================================================

// ============================================================
// Function: sqlite3BtreeSchema
// ============================================================

// sqlite3BtreeSchema - xFree - 0
// fp_sequence: 3

@rule_sqlite3BtreeSchema_xFree_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFree_signatures[xFree_0_enum], pl2);

@rule_sqlite3BtreeSchema_xFree_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFree_signatures[xFree_0_enum], pl2);

@rule_sqlite3BtreeSchema_xFree_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFree_signatures[xFree_0_enum], pl2);


// sqlite3BtreeSchema - xFree - sqlite3SchemaClear
// fp_sequence: 3

@rule_sqlite3BtreeSchema_xFree_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3BtreeSchema_xFree_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3BtreeSchema_xFree_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3BtreeSchema};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3SchemaClear_enum], pl2);


// ============================================================
// Function: sqlite3CreateFunc
// ============================================================

// sqlite3CreateFunc - xSFunc - 0
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);


// sqlite3CreateFunc - xSFunc - base64
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_base64_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_base64_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_base64_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);


// sqlite3CreateFunc - xSFunc - base85
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);


// sqlite3CreateFunc - xSFunc - dummyUDF
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);


// sqlite3CreateFunc - xSFunc - editFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_editFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_editFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_editFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3AllocateMSI
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprGlobalHitsCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprLoadDoclistsCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprLocalHitsCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprPhraseCountCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprRestartIfCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprTermOffsetInit
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprTest
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTest_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTest_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTest_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3ExprTestRebalance
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTestRebalance_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTestRebalance_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3ExprTestRebalance_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3MatchinfoLcsCb
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3SnippetFindPositions
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts3TokenizerFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts3TokenizerFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3TokenizerFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts3TokenizerFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5DecodeFunction
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5DecodeFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5DecodeFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5DecodeFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5Fts5Func
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5Fts5Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5Fts5Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5Fts5Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5InsttokenFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5InsttokenFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5InsttokenFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5InsttokenFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5LocaleFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5LocaleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5LocaleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5LocaleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5RowidFunction
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5RowidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5RowidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5RowidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);


// sqlite3CreateFunc - xSFunc - fts5SourceIdFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_fts5SourceIdFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5SourceIdFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_fts5SourceIdFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - geomCallback
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);


// sqlite3CreateFunc - xSFunc - idxRemFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_idxRemFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_idxRemFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_idxRemFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - idxSampleFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_idxSampleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_idxSampleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_idxSampleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - intTestFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_intTestFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_intTestFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_intTestFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - intckParseCreateIndexFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_intckParseCreateIndexFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_intckParseCreateIndexFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_intckParseCreateIndexFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - is_base85
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_is_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_is_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_is_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);


// sqlite3CreateFunc - xSFunc - likeFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_likeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_likeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_likeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {likeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_likeFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - lsModeFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_lsModeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_lsModeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_lsModeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - rbuFossilDeltaFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rbuFossilDeltaFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuFossilDeltaFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuFossilDeltaFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - rbuIndexCntFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rbuIndexCntFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuIndexCntFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuIndexCntFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - rbuTargetNameFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rbuTargetNameFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuTargetNameFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuTargetNameFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - rbuTmpInsertFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rbuTmpInsertFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuTmpInsertFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rbuTmpInsertFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - re_bytecode_func
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_re_bytecode_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_re_bytecode_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_re_bytecode_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);


// sqlite3CreateFunc - xSFunc - re_sql_func
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_re_sql_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_re_sql_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_re_sql_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);


// sqlite3CreateFunc - xSFunc - readfileFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_readfileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_readfileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_readfileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - rtreecheck
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rtreecheck_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreecheck_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreecheck_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);


// sqlite3CreateFunc - xSFunc - rtreedepth
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rtreedepth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreedepth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreedepth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);


// sqlite3CreateFunc - xSFunc - rtreenode
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_rtreenode_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreenode_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_rtreenode_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);


// sqlite3CreateFunc - xSFunc - sha1Func
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sha1Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha1Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha1Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);


// sqlite3CreateFunc - xSFunc - sha1QueryFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sha1QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha1QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha1QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - sha3Func
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sha3Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha3Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha3Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);


// sqlite3CreateFunc - xSFunc - sha3QueryFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sha3QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha3QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sha3QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellAddSchemaName
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellAddSchemaName_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellAddSchemaName_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellAddSchemaName_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellDtostr
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellDtostr_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellDtostr_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellDtostr_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellFkeyCollateClause
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellFkeyCollateClause_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellFkeyCollateClause_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellFkeyCollateClause_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellModuleSchema
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellModuleSchema_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellModuleSchema_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellModuleSchema_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellPutsFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellPutsFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellPutsFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellPutsFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellStrtod
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellStrtod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellStrtod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellStrtod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);


// sqlite3CreateFunc - xSFunc - shellUSleepFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_shellUSleepFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellUSleepFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_shellUSleepFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - sqlarCompressFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sqlarCompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlarCompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlarCompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - sqlarUncompressFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sqlarUncompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlarUncompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlarUncompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);


// sqlite3CreateFunc - xSFunc - stmtrandFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_stmtrandFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_stmtrandFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_stmtrandFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - testFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_testFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_testFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_testFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);


// sqlite3CreateFunc - xSFunc - writefileFunc
// fp_sequence: 6

@rule_sqlite3CreateFunc_xSFunc_writefileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_writefileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_sqlite3CreateFunc_xSFunc_writefileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);


// sqlite3CreateFunc - xStep - 0
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3CreateFunc_xStep_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3CreateFunc_xStep_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);


// sqlite3CreateFunc - xStep - decimalSumStep
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_decimalSumStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_decimalSumStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_decimalSumStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);


// sqlite3CreateFunc - xStep - dummyUDF
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3CreateFunc_xStep_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3CreateFunc_xStep_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);


// sqlite3CreateFunc - xStep - percentStep
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_percentStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_percentStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_percentStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);


// sqlite3CreateFunc - xStep - sha3AggStep
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_sha3AggStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_sha3AggStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_sha3AggStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);


// sqlite3CreateFunc - xStep - zipfileStep
// fp_sequence: 7

@rule_sqlite3CreateFunc_xStep_zipfileStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_zipfileStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_sqlite3CreateFunc_xStep_zipfileStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);


// sqlite3CreateFunc - xFinal - 0
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);


// sqlite3CreateFunc - xFinal - decimalSumFinalize
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_decimalSumFinalize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_decimalSumFinalize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_decimalSumFinalize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);


// sqlite3CreateFunc - xFinal - dummyUDFvalue
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_dummyUDFvalue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_dummyUDFvalue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_dummyUDFvalue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);


// sqlite3CreateFunc - xFinal - percentFinal
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_percentFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_percentFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_percentFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);


// sqlite3CreateFunc - xFinal - sha3AggFinal
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_sha3AggFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_sha3AggFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_sha3AggFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);


// sqlite3CreateFunc - xFinal - zipfileFinal
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_zipfileFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_zipfileFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_zipfileFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);


// sqlite3CreateFunc - xFinal - rtreeFreeCallback
// fp_sequence: 8

@rule_sqlite3CreateFunc_xFinal_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_rtreeFreeCallback_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_rtreeFreeCallback_enum], pl2);

@rule_sqlite3CreateFunc_xFinal_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_rtreeFreeCallback_enum], pl2);


// sqlite3CreateFunc - xValue - 0
// fp_sequence: 9

@rule_sqlite3CreateFunc_xValue_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_sqlite3CreateFunc_xValue_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_sqlite3CreateFunc_xValue_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);


// sqlite3CreateFunc - xValue - decimalSumValue
// fp_sequence: 9

@rule_sqlite3CreateFunc_xValue_decimalSumValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_sqlite3CreateFunc_xValue_decimalSumValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_sqlite3CreateFunc_xValue_decimalSumValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);


// sqlite3CreateFunc - xValue - percentValue
// fp_sequence: 9

@rule_sqlite3CreateFunc_xValue_percentValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_sqlite3CreateFunc_xValue_percentValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_sqlite3CreateFunc_xValue_percentValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);


// sqlite3CreateFunc - xValue - sqlite3changeset_new
// fp_sequence: 9

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_new_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_new_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_new_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_new};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_new_enum], pl2);


// sqlite3CreateFunc - xValue - sqlite3changeset_old
// fp_sequence: 9

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_old_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_old_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);

@rule_sqlite3CreateFunc_xValue_sqlite3changeset_old_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3changeset_old};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_sqlite3changeset_old_enum], pl2);


// sqlite3CreateFunc - xInverse - 0
// fp_sequence: 10

@rule_sqlite3CreateFunc_xInverse_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);


// sqlite3CreateFunc - xInverse - decimalSumInverse
// fp_sequence: 10

@rule_sqlite3CreateFunc_xInverse_decimalSumInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_decimalSumInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_decimalSumInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);


// sqlite3CreateFunc - xInverse - percentInverse
// fp_sequence: 10

@rule_sqlite3CreateFunc_xInverse_percentInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_percentInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_sqlite3CreateFunc_xInverse_percentInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3CreateFunc};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);


// ============================================================
// Function: sqlite3Fts3ExprIterate
// ============================================================

// sqlite3Fts3ExprIterate - x - fts3AllocateMSI
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3AllocateMSI_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprGlobalHitsCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprGlobalHitsCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprLoadDoclistsCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLoadDoclistsCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprLocalHitsCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprLocalHitsCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprPhraseCountCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprPhraseCountCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprRestartIfCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprRestartIfCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3ExprTermOffsetInit
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3ExprTermOffsetInit_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3MatchinfoLcsCb
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3MatchinfoLcsCb_enum], pl2);


// sqlite3Fts3ExprIterate - x - fts3SnippetFindPositions
// fp_sequence: 2

@rule_sqlite3Fts3ExprIterate_x_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3Fts3ExprIterate_x_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3Fts3ExprIterate};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, x_signatures[x_fts3SnippetFindPositions_enum], pl2);


// ============================================================
// Function: sqlite3Fts3InitTok
// ============================================================

// sqlite3Fts3InitTok - xDestroy - hashDestroy
// fp_sequence: 3

@rule_sqlite3Fts3InitTok_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3Fts3InitTok};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3Fts3InitTok_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3Fts3InitTok};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3Fts3InitTok_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3Fts3InitTok};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// ============================================================
// Function: sqlite3Fts5ParserFree
// ============================================================

// sqlite3Fts5ParserFree - freeProc - fts5ParseFree
// fp_sequence: 2

@rule_sqlite3Fts5ParserFree_freeProc_fts5ParseFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseFree};
identifier FN_NAME = {sqlite3Fts5ParserFree};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_fts5ParseFree_enum], pl2);

@rule_sqlite3Fts5ParserFree_freeProc_fts5ParseFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseFree};
identifier FN_NAME = {sqlite3Fts5ParserFree};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_fts5ParseFree_enum], pl2);

@rule_sqlite3Fts5ParserFree_freeProc_fts5ParseFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ParseFree};
identifier FN_NAME = {sqlite3Fts5ParserFree};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_fts5ParseFree_enum], pl2);


// ============================================================
// Function: sqlite3Fts5Tokenize
// ============================================================

// sqlite3Fts5Tokenize - xToken - fts5ColumnSizeCb
// fp_sequence: 6

@rule_sqlite3Fts5Tokenize_xToken_fts5ColumnSizeCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ColumnSizeCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ColumnSizeCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ColumnSizeCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ColumnSizeCb_enum], pl2);


// sqlite3Fts5Tokenize - xToken - fts5ExprPopulatePoslistsCb
// fp_sequence: 6

@rule_sqlite3Fts5Tokenize_xToken_fts5ExprPopulatePoslistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ExprPopulatePoslistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ExprPopulatePoslistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ExprPopulatePoslistsCb};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ExprPopulatePoslistsCb_enum], pl2);


// sqlite3Fts5Tokenize - xToken - fts5ParseTokenize
// fp_sequence: 6

@rule_sqlite3Fts5Tokenize_xToken_fts5ParseTokenize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ParseTokenize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5ParseTokenize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ParseTokenize};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5ParseTokenize_enum], pl2);


// sqlite3Fts5Tokenize - xToken - fts5StorageInsertCallback
// fp_sequence: 6

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageInsertCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageInsertCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageInsertCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5StorageInsertCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageInsertCallback_enum], pl2);


// sqlite3Fts5Tokenize - xToken - fts5StorageIntegrityCallback
// fp_sequence: 6

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageIntegrityCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageIntegrityCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);

@rule_sqlite3Fts5Tokenize_xToken_fts5StorageIntegrityCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5StorageIntegrityCallback};
identifier FN_NAME = {sqlite3Fts5Tokenize};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xToken_signatures[xToken_fts5StorageIntegrityCallback_enum], pl2);


// ============================================================
// Function: sqlite3Fts5TokenizerPattern
// ============================================================

// ============================================================
// Function: sqlite3MemdebugBacktraceCallback
// ============================================================

// ============================================================
// Function: sqlite3PagerOpen
// ============================================================

// sqlite3PagerOpen - xReinit - pageReinit
// fp_sequence: 7

@rule_sqlite3PagerOpen_xReinit_pageReinit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pageReinit};
identifier FN_NAME = {sqlite3PagerOpen};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xReinit_signatures[xReinit_pageReinit_enum], pl2);

@rule_sqlite3PagerOpen_xReinit_pageReinit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pageReinit};
identifier FN_NAME = {sqlite3PagerOpen};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xReinit_signatures[xReinit_pageReinit_enum], pl2);

@rule_sqlite3PagerOpen_xReinit_pageReinit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pageReinit};
identifier FN_NAME = {sqlite3PagerOpen};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xReinit_signatures[xReinit_pageReinit_enum], pl2);


// ============================================================
// Function: sqlite3PagerSetBusyHandler
// ============================================================

// sqlite3PagerSetBusyHandler - xBusyHandler - btreeInvokeBusyHandler
// fp_sequence: 2

@rule_sqlite3PagerSetBusyHandler_xBusyHandler_btreeInvokeBusyHandler_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3PagerSetBusyHandler};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum], pl2);

@rule_sqlite3PagerSetBusyHandler_xBusyHandler_btreeInvokeBusyHandler_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3PagerSetBusyHandler};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum], pl2);

@rule_sqlite3PagerSetBusyHandler_xBusyHandler_btreeInvokeBusyHandler_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3PagerSetBusyHandler};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusyHandler_signatures[xBusyHandler_btreeInvokeBusyHandler_enum], pl2);


// ============================================================
// Function: sqlite3ParserAddCleanup
// ============================================================

// sqlite3ParserAddCleanup - xCleanup - agginfoFree
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_agginfoFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {agginfoFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_agginfoFree_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_agginfoFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {agginfoFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_agginfoFree_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_agginfoFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {agginfoFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_agginfoFree_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3DbFree
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DbFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DbFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DbFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DbFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DbFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3DbFree};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DbFree_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3DeleteReturning
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteReturning_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DeleteReturning};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteReturning_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DeleteReturning};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteReturning_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3DeleteReturning};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteReturning_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3DeleteTableGeneric
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteTableGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DeleteTableGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteTableGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3DeleteTableGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3DeleteTableGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3DeleteTableGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3DeleteTableGeneric_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3ExprDeleteGeneric
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprDeleteGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprDeleteGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprDeleteGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3ExprDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprDeleteGeneric_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3ExprListDeleteGeneric
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprListDeleteGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprListDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprListDeleteGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3ExprListDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3ExprListDeleteGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3ExprListDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3ExprListDeleteGeneric_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3SelectDeleteGeneric
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3SelectDeleteGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SelectDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3SelectDeleteGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SelectDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3SelectDeleteGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SelectDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3SelectDeleteGeneric_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - sqlite3WithDeleteGeneric
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3WithDeleteGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3WithDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3WithDeleteGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3WithDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_sqlite3WithDeleteGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3WithDeleteGeneric};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_sqlite3WithDeleteGeneric_enum], pl2);


// sqlite3ParserAddCleanup - xCleanup - whereIndexedExprCleanup
// fp_sequence: 2

@rule_sqlite3ParserAddCleanup_xCleanup_whereIndexedExprCleanup_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {whereIndexedExprCleanup};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_whereIndexedExprCleanup_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {whereIndexedExprCleanup};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], pl2);

@rule_sqlite3ParserAddCleanup_xCleanup_whereIndexedExprCleanup_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {whereIndexedExprCleanup};
identifier FN_NAME = {sqlite3ParserAddCleanup};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCleanup_signatures[xCleanup_whereIndexedExprCleanup_enum], pl2);


// ============================================================
// Function: sqlite3ParserFree
// ============================================================

// sqlite3ParserFree - freeProc - sqlite3_free
// fp_sequence: 2

@rule_sqlite3ParserFree_freeProc_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ParserFree};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_sqlite3_free_enum], pl2);

@rule_sqlite3ParserFree_freeProc_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ParserFree};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_sqlite3_free_enum], pl2);

@rule_sqlite3ParserFree_freeProc_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ParserFree};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, freeProc_signatures[freeProc_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3PcacheIterateDirty
// ============================================================

// sqlite3PcacheIterateDirty - xIter - assertTruncateConstraintCb
// fp_sequence: 2

@rule_sqlite3PcacheIterateDirty_xIter_assertTruncateConstraintCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {assertTruncateConstraintCb};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_assertTruncateConstraintCb_enum], pl2);

@rule_sqlite3PcacheIterateDirty_xIter_assertTruncateConstraintCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {assertTruncateConstraintCb};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_assertTruncateConstraintCb_enum], pl2);

@rule_sqlite3PcacheIterateDirty_xIter_assertTruncateConstraintCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {assertTruncateConstraintCb};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_assertTruncateConstraintCb_enum], pl2);


// sqlite3PcacheIterateDirty - xIter - pager_set_pagehash
// fp_sequence: 2

@rule_sqlite3PcacheIterateDirty_xIter_pager_set_pagehash_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pager_set_pagehash};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_pager_set_pagehash_enum], pl2);

@rule_sqlite3PcacheIterateDirty_xIter_pager_set_pagehash_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pager_set_pagehash};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_pager_set_pagehash_enum], pl2);

@rule_sqlite3PcacheIterateDirty_xIter_pager_set_pagehash_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pager_set_pagehash};
identifier FN_NAME = {sqlite3PcacheIterateDirty};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xIter_signatures[xIter_pager_set_pagehash_enum], pl2);


// ============================================================
// Function: sqlite3PcacheOpen
// ============================================================

// sqlite3PcacheOpen - xStress - 0
// fp_sequence: 4

@rule_sqlite3PcacheOpen_xStress_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xStress_signatures[xStress_0_enum], pl2);

@rule_sqlite3PcacheOpen_xStress_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xStress_signatures[xStress_0_enum], pl2);

@rule_sqlite3PcacheOpen_xStress_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xStress_signatures[xStress_0_enum], pl2);


// sqlite3PcacheOpen - xStress - pagerStress
// fp_sequence: 4

@rule_sqlite3PcacheOpen_xStress_pagerStress_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pagerStress};
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStress_signatures[xStress_pagerStress_enum], pl2);

@rule_sqlite3PcacheOpen_xStress_pagerStress_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pagerStress};
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStress_signatures[xStress_pagerStress_enum], pl2);

@rule_sqlite3PcacheOpen_xStress_pagerStress_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pagerStress};
identifier FN_NAME = {sqlite3PcacheOpen};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStress_signatures[xStress_pagerStress_enum], pl2);


// ============================================================
// Function: sqlite3ValueIsOfClass
// ============================================================

// sqlite3ValueIsOfClass - xFree - sqlite3RCStrUnref
// fp_sequence: 2

@rule_sqlite3ValueIsOfClass_xFree_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3ValueIsOfClass};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3ValueIsOfClass_xFree_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3ValueIsOfClass};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3ValueIsOfClass_xFree_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3ValueIsOfClass};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFree_signatures[xFree_sqlite3RCStrUnref_enum], pl2);


// ============================================================
// Function: sqlite3ValueSetStr
// ============================================================

// sqlite3ValueSetStr - xDel - SQLITE_DYNAMIC
// fp_sequence: 5

@rule_sqlite3ValueSetStr_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// sqlite3ValueSetStr - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_sqlite3ValueSetStr_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3ValueSetStr - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_sqlite3ValueSetStr_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3ValueSetStr - xDel - sqlite3_free
// fp_sequence: 5

@rule_sqlite3ValueSetStr_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3ValueSetStr_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3ValueSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3VdbeMemSetPointer
// ============================================================

// sqlite3VdbeMemSetPointer - xDestructor - 0
// fp_sequence: 4

@rule_sqlite3VdbeMemSetPointer_xDestructor_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);


// sqlite3VdbeMemSetPointer - xDestructor - rtreeMatchArgFree
// fp_sequence: 4

@rule_sqlite3VdbeMemSetPointer_xDestructor_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);


// sqlite3VdbeMemSetPointer - xDestructor - sqlite3VdbeValueListFree
// fp_sequence: 4

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3VdbeValueListFree_enum], pl2);


// sqlite3VdbeMemSetPointer - xDestructor - sqlite3NoopDestructor
// fp_sequence: 4

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3NoopDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3NoopDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3NoopDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3NoopDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], pl2);

@rule_sqlite3VdbeMemSetPointer_xDestructor_sqlite3NoopDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3NoopDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetPointer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_sqlite3NoopDestructor_enum], pl2);


// ============================================================
// Function: sqlite3VdbeMemSetStr
// ============================================================

// sqlite3VdbeMemSetStr - xDel - 0
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - SQLITE_DYNAMIC
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - icuCollationDel
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - rtreeMatchArgFree
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_rtreeMatchArgFree_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - sqlite3RCStrUnref
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - sqlite3SchemaClear
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - sqlite3VdbeValueListFree
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3VdbeValueListFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3VdbeValueListFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3VdbeValueListFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3VdbeValueListFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3VdbeValueListFree_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - sqlite3_free
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - statAccumDestructor
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - xDestroyOut
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// sqlite3VdbeMemSetStr - xDel - zipfileFree
// fp_sequence: 5

@rule_sqlite3VdbeMemSetStr_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_sqlite3VdbeMemSetStr_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3VdbeMemSetStr};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: sqlite3VdbeSetColName
// ============================================================

// sqlite3VdbeSetColName - xDel - SQLITE_DYNAMIC
// fp_sequence: 5

@rule_sqlite3VdbeSetColName_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// sqlite3VdbeSetColName - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_sqlite3VdbeSetColName_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3VdbeSetColName - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_sqlite3VdbeSetColName_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3VdbeSetColName_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3VdbeSetColName};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// ============================================================
// Function: sqlite3VtabCreateModule
// ============================================================

// sqlite3VtabCreateModule - xDestroy - 0
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// sqlite3VtabCreateModule - xDestroy - fts5ModuleDestroy
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_fts5ModuleDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_fts5ModuleDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_fts5ModuleDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);


// sqlite3VtabCreateModule - xDestroy - hashDestroy
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// sqlite3VtabCreateModule - xDestroy - icuCollationDel
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// sqlite3VtabCreateModule - xDestroy - rtreeFreeCallback
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// sqlite3VtabCreateModule - xDestroy - sqlite3_free
// fp_sequence: 5

@rule_sqlite3VtabCreateModule_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3VtabCreateModule_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3VtabCreateModule};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3WalCheckpoint
// ============================================================

// sqlite3WalCheckpoint - xBusy - 0
// fp_sequence: 4

@rule_sqlite3WalCheckpoint_xBusy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_sqlite3WalCheckpoint_xBusy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_sqlite3WalCheckpoint_xBusy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);


// sqlite3WalCheckpoint - xBusy - btreeInvokeBusyHandler
// fp_sequence: 4

@rule_sqlite3WalCheckpoint_xBusy_btreeInvokeBusyHandler_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);

@rule_sqlite3WalCheckpoint_xBusy_btreeInvokeBusyHandler_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);

@rule_sqlite3WalCheckpoint_xBusy_btreeInvokeBusyHandler_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {sqlite3WalCheckpoint};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);


// ============================================================
// Function: sqlite3WalUndo
// ============================================================

// sqlite3WalUndo - xUndo - pagerUndoCallback
// fp_sequence: 2

@rule_sqlite3WalUndo_xUndo_pagerUndoCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pagerUndoCallback};
identifier FN_NAME = {sqlite3WalUndo};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xUndo_signatures[xUndo_pagerUndoCallback_enum], pl2);

@rule_sqlite3WalUndo_xUndo_pagerUndoCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pagerUndoCallback};
identifier FN_NAME = {sqlite3WalUndo};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xUndo_signatures[xUndo_pagerUndoCallback_enum], pl2);

@rule_sqlite3WalUndo_xUndo_pagerUndoCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pagerUndoCallback};
identifier FN_NAME = {sqlite3WalUndo};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xUndo_signatures[xUndo_pagerUndoCallback_enum], pl2);


// ============================================================
// Function: sqlite3_auto_extension
// ============================================================

// sqlite3_auto_extension - xEntryPoint - apndvfsRegister
// fp_sequence: 1

@rule_sqlite3_auto_extension_xEntryPoint_apndvfsRegister_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xEntryPoint_signatures[xEntryPoint_apndvfsRegister_enum], pl2);

@rule_sqlite3_auto_extension_xEntryPoint_apndvfsRegister_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xEntryPoint_signatures[xEntryPoint_apndvfsRegister_enum], pl2);

@rule_sqlite3_auto_extension_xEntryPoint_apndvfsRegister_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xEntryPoint_signatures[xEntryPoint_apndvfsRegister_enum], pl2);


// sqlite3_auto_extension - xInit - apndvfsRegister
// fp_sequence: 1

@rule_sqlite3_auto_extension_xInit_apndvfsRegister_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInit_signatures[xInit_apndvfsRegister_enum], pl2);

@rule_sqlite3_auto_extension_xInit_apndvfsRegister_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInit_signatures[xInit_apndvfsRegister_enum], pl2);

@rule_sqlite3_auto_extension_xInit_apndvfsRegister_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {apndvfsRegister};
identifier FN_NAME = {sqlite3_auto_extension};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInit_signatures[xInit_apndvfsRegister_enum], pl2);


// ============================================================
// Function: sqlite3_autovacuum_pages
// ============================================================

// ============================================================
// Function: sqlite3_bind_blob
// ============================================================

// sqlite3_bind_blob - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_sqlite3_bind_blob_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_bind_blob_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_bind_blob_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3_bind_blob - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_sqlite3_bind_blob_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_bind_blob_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_bind_blob_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_bind_blob - xDel - sqlite3_free
// fp_sequence: 5

@rule_sqlite3_bind_blob_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_blob_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_blob_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_bind_blob64
// ============================================================

// ============================================================
// Function: sqlite3_bind_pointer
// ============================================================

// sqlite3_bind_pointer - xDestructor - 0
// fp_sequence: 5

@rule_sqlite3_bind_pointer_xDestructor_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_bind_pointer};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3_bind_pointer_xDestructor_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_bind_pointer};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3_bind_pointer_xDestructor_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_bind_pointer};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);


// ============================================================
// Function: sqlite3_bind_text
// ============================================================

// sqlite3_bind_text - xDel - 0
// fp_sequence: 5

@rule_sqlite3_bind_text_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_bind_text};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_bind_text_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_bind_text};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_bind_text_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_bind_text};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// sqlite3_bind_text - xDel - SQLITE_STATIC
// fp_sequence: 5

@rule_sqlite3_bind_text_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_bind_text_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_bind_text_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_bind_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3_bind_text - xDel - SQLITE_TRANSIENT
// fp_sequence: 5

@rule_sqlite3_bind_text_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_bind_text_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_bind_text_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_bind_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_bind_text - xDel - sqlite3_free
// fp_sequence: 5

@rule_sqlite3_bind_text_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_text_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_text_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_bind_text16
// ============================================================

// ============================================================
// Function: sqlite3_bind_text64
// ============================================================

// sqlite3_bind_text64 - xDel - sqlite3_free
// fp_sequence: 5

@rule_sqlite3_bind_text64_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_text64_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_bind_text64_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_bind_text64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_busy_handler
// ============================================================

// sqlite3_busy_handler - xBusy - 0
// fp_sequence: 2

@rule_sqlite3_busy_handler_xBusy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_busy_handler};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_sqlite3_busy_handler_xBusy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_busy_handler};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_sqlite3_busy_handler_xBusy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_busy_handler};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);


// sqlite3_busy_handler - xBusy - sqliteDefaultBusyCallback
// fp_sequence: 2

@rule_sqlite3_busy_handler_xBusy_sqliteDefaultBusyCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {sqlite3_busy_handler};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);

@rule_sqlite3_busy_handler_xBusy_sqliteDefaultBusyCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {sqlite3_busy_handler};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);

@rule_sqlite3_busy_handler_xBusy_sqliteDefaultBusyCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {sqlite3_busy_handler};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);


// ============================================================
// Function: sqlite3_cancel_auto_extension
// ============================================================

// ============================================================
// Function: sqlite3_collation_needed
// ============================================================

// sqlite3_collation_needed - xCollNeeded - useDummyCS
// fp_sequence: 3

@rule_sqlite3_collation_needed_xCollNeeded_useDummyCS_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {useDummyCS};
identifier FN_NAME = {sqlite3_collation_needed};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCollNeeded_signatures[xCollNeeded_useDummyCS_enum], pl2);

@rule_sqlite3_collation_needed_xCollNeeded_useDummyCS_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {useDummyCS};
identifier FN_NAME = {sqlite3_collation_needed};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCollNeeded_signatures[xCollNeeded_useDummyCS_enum], pl2);

@rule_sqlite3_collation_needed_xCollNeeded_useDummyCS_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {useDummyCS};
identifier FN_NAME = {sqlite3_collation_needed};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCollNeeded_signatures[xCollNeeded_useDummyCS_enum], pl2);


// ============================================================
// Function: sqlite3_collation_needed16
// ============================================================

// ============================================================
// Function: sqlite3_commit_hook
// ============================================================

// ============================================================
// Function: sqlite3_create_collation
// ============================================================

// sqlite3_create_collation - xCompare - decimalCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_xCompare_decimalCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_sqlite3_create_collation_xCompare_decimalCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_sqlite3_create_collation_xCompare_decimalCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);


// sqlite3_create_collation - xCompare - uintCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_xCompare_uintCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_sqlite3_create_collation_xCompare_uintCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_sqlite3_create_collation_xCompare_uintCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);


// ============================================================
// Function: sqlite3_create_collation16
// ============================================================

// ============================================================
// Function: sqlite3_create_collation_v2
// ============================================================

// sqlite3_create_collation_v2 - xCompare - binCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_binCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_binCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_binCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {binCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_binCollFunc_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - decimalCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_decimalCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_decimalCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_decimalCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_decimalCollFunc_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - dummyCompare
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_dummyCompare_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_dummyCompare_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_dummyCompare_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyCompare};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_dummyCompare_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - icuCollationColl
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_icuCollationColl_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_icuCollationColl_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_icuCollationColl_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationColl};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_icuCollationColl_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - nocaseCollatingFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_nocaseCollatingFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_nocaseCollatingFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_nocaseCollatingFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {nocaseCollatingFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_nocaseCollatingFunc_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - rtrimCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_rtrimCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_rtrimCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_rtrimCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtrimCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_rtrimCollFunc_enum], pl2);


// sqlite3_create_collation_v2 - xCompare - uintCollFunc
// fp_sequence: 5

@rule_sqlite3_create_collation_v2_xCompare_uintCollFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_uintCollFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);

@rule_sqlite3_create_collation_v2_xCompare_uintCollFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {uintCollFunc};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCompare_signatures[xCompare_uintCollFunc_enum], pl2);


// sqlite3_create_collation_v2 - xDel - 0
// fp_sequence: 6

@rule_sqlite3_create_collation_v2_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_create_collation_v2_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_create_collation_v2_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// sqlite3_create_collation_v2 - xDel - icuCollationDel
// fp_sequence: 6

@rule_sqlite3_create_collation_v2_xDel_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_sqlite3_create_collation_v2_xDel_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);

@rule_sqlite3_create_collation_v2_xDel_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_icuCollationDel_enum], pl2);


// sqlite3_create_collation_v2 - xDestroy - 0
// fp_sequence: 6

@rule_sqlite3_create_collation_v2_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_collation_v2_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_collation_v2_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// sqlite3_create_collation_v2 - xDestroy - icuCollationDel
// fp_sequence: 6

@rule_sqlite3_create_collation_v2_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3_create_collation_v2_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3_create_collation_v2_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_collation_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// ============================================================
// Function: sqlite3_create_function
// ============================================================

// sqlite3_create_function - xFunc - 0
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFunc_signatures[xFunc_0_enum], pl2);

@rule_sqlite3_create_function_xFunc_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFunc_signatures[xFunc_0_enum], pl2);

@rule_sqlite3_create_function_xFunc_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFunc_signatures[xFunc_0_enum], pl2);


// sqlite3_create_function - xFunc - base64
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_base64_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base64_enum], pl2);

@rule_sqlite3_create_function_xFunc_base64_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base64_enum], pl2);

@rule_sqlite3_create_function_xFunc_base64_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base64_enum], pl2);


// sqlite3_create_function - xFunc - base85
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base85_enum], pl2);

@rule_sqlite3_create_function_xFunc_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base85_enum], pl2);

@rule_sqlite3_create_function_xFunc_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_base85_enum], pl2);


// sqlite3_create_function - xFunc - dummyUDF
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xFunc_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xFunc_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_dummyUDF_enum], pl2);


// sqlite3_create_function - xFunc - editFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_editFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_editFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_editFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_editFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_editFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_editFunc_enum], pl2);


// sqlite3_create_function - xFunc - fts3AllocateMSI
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3AllocateMSI_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprGlobalHitsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprGlobalHitsCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprLoadDoclistsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLoadDoclistsCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprLocalHitsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprLocalHitsCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprPhraseCountCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprPhraseCountCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprRestartIfCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprRestartIfCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprTermOffsetInit
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTermOffsetInit_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprTest
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprTest_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTest_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTest_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTest_enum], pl2);


// sqlite3_create_function - xFunc - fts3ExprTestRebalance
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3ExprTestRebalance_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTestRebalance_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3ExprTestRebalance_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3ExprTestRebalance_enum], pl2);


// sqlite3_create_function - xFunc - fts3MatchinfoLcsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3MatchinfoLcsCb_enum], pl2);


// sqlite3_create_function - xFunc - fts3SnippetFindPositions
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3SnippetFindPositions_enum], pl2);


// sqlite3_create_function - xFunc - fts3TokenizerFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts3TokenizerFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3TokenizerFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts3TokenizerFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts3TokenizerFunc_enum], pl2);


// sqlite3_create_function - xFunc - fts5DecodeFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5DecodeFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5DecodeFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5DecodeFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5DecodeFunction_enum], pl2);


// sqlite3_create_function - xFunc - fts5Fts5Func
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5Fts5Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5Fts5Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5Fts5Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5Fts5Func_enum], pl2);


// sqlite3_create_function - xFunc - fts5InsttokenFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5InsttokenFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5InsttokenFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5InsttokenFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5InsttokenFunc_enum], pl2);


// sqlite3_create_function - xFunc - fts5LocaleFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5LocaleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5LocaleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5LocaleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5LocaleFunc_enum], pl2);


// sqlite3_create_function - xFunc - fts5RowidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5RowidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5RowidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5RowidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5RowidFunction_enum], pl2);


// sqlite3_create_function - xFunc - fts5SourceIdFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_fts5SourceIdFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5SourceIdFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_fts5SourceIdFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_fts5SourceIdFunc_enum], pl2);


// sqlite3_create_function - xFunc - geomCallback
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_xFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_xFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);


// sqlite3_create_function - xFunc - idxRemFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_idxRemFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxRemFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_idxRemFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxRemFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_idxRemFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxRemFunc_enum], pl2);


// sqlite3_create_function - xFunc - idxSampleFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_idxSampleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_idxSampleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_idxSampleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_idxSampleFunc_enum], pl2);


// sqlite3_create_function - xFunc - intTestFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_intTestFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intTestFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_intTestFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intTestFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_intTestFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intTestFunc_enum], pl2);


// sqlite3_create_function - xFunc - intckParseCreateIndexFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_intckParseCreateIndexFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_intckParseCreateIndexFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_intckParseCreateIndexFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_intckParseCreateIndexFunc_enum], pl2);


// sqlite3_create_function - xFunc - is_base85
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_is_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_is_base85_enum], pl2);

@rule_sqlite3_create_function_xFunc_is_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_is_base85_enum], pl2);

@rule_sqlite3_create_function_xFunc_is_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_is_base85_enum], pl2);


// sqlite3_create_function - xFunc - lsModeFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_lsModeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_lsModeFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_lsModeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_lsModeFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_lsModeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_lsModeFunc_enum], pl2);


// sqlite3_create_function - xFunc - rbuFossilDeltaFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rbuFossilDeltaFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuFossilDeltaFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuFossilDeltaFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuFossilDeltaFunc_enum], pl2);


// sqlite3_create_function - xFunc - rbuIndexCntFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rbuIndexCntFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuIndexCntFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuIndexCntFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuIndexCntFunc_enum], pl2);


// sqlite3_create_function - xFunc - rbuTargetNameFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rbuTargetNameFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuTargetNameFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuTargetNameFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTargetNameFunc_enum], pl2);


// sqlite3_create_function - xFunc - rbuTmpInsertFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rbuTmpInsertFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuTmpInsertFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_rbuTmpInsertFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rbuTmpInsertFunc_enum], pl2);


// sqlite3_create_function - xFunc - re_bytecode_func
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_re_bytecode_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3_create_function_xFunc_re_bytecode_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3_create_function_xFunc_re_bytecode_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_bytecode_func_enum], pl2);


// sqlite3_create_function - xFunc - re_sql_func
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_re_sql_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_sql_func_enum], pl2);

@rule_sqlite3_create_function_xFunc_re_sql_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_sql_func_enum], pl2);

@rule_sqlite3_create_function_xFunc_re_sql_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_re_sql_func_enum], pl2);


// sqlite3_create_function - xFunc - readfileFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_readfileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_readfileFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_readfileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_readfileFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_readfileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_readfileFunc_enum], pl2);


// sqlite3_create_function - xFunc - rtreecheck
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rtreecheck_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreecheck_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreecheck_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreecheck_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreecheck_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreecheck_enum], pl2);


// sqlite3_create_function - xFunc - rtreedepth
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rtreedepth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreedepth_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreedepth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreedepth_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreedepth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreedepth_enum], pl2);


// sqlite3_create_function - xFunc - rtreenode
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_rtreenode_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreenode_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreenode_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreenode_enum], pl2);

@rule_sqlite3_create_function_xFunc_rtreenode_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_rtreenode_enum], pl2);


// sqlite3_create_function - xFunc - sha1Func
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sha1Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha1Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha1Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1Func_enum], pl2);


// sqlite3_create_function - xFunc - sha1QueryFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sha1QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha1QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha1QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha1QueryFunc_enum], pl2);


// sqlite3_create_function - xFunc - sha3Func
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sha3Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha3Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3Func_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha3Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3Func_enum], pl2);


// sqlite3_create_function - xFunc - sha3QueryFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sha3QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha3QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sha3QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sha3QueryFunc_enum], pl2);


// sqlite3_create_function - xFunc - shellAddSchemaName
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellAddSchemaName_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellAddSchemaName_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellAddSchemaName_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellAddSchemaName_enum], pl2);


// sqlite3_create_function - xFunc - shellDtostr
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellDtostr_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellDtostr_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellDtostr_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellDtostr_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellDtostr_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellDtostr_enum], pl2);


// sqlite3_create_function - xFunc - shellFkeyCollateClause
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellFkeyCollateClause_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellFkeyCollateClause_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellFkeyCollateClause_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellFkeyCollateClause_enum], pl2);


// sqlite3_create_function - xFunc - shellModuleSchema
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellModuleSchema_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellModuleSchema_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellModuleSchema_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellModuleSchema_enum], pl2);


// sqlite3_create_function - xFunc - shellPutsFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellPutsFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellPutsFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellPutsFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellPutsFunc_enum], pl2);


// sqlite3_create_function - xFunc - shellStrtod
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellStrtod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellStrtod_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellStrtod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellStrtod_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellStrtod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellStrtod_enum], pl2);


// sqlite3_create_function - xFunc - shellUSleepFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_shellUSleepFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellUSleepFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_shellUSleepFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_shellUSleepFunc_enum], pl2);


// sqlite3_create_function - xFunc - sqlarCompressFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sqlarCompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlarCompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlarCompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarCompressFunc_enum], pl2);


// sqlite3_create_function - xFunc - sqlarUncompressFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sqlarUncompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlarUncompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlarUncompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlarUncompressFunc_enum], pl2);


// sqlite3_create_function - xFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_xFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);


// sqlite3_create_function - xFunc - stmtrandFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_stmtrandFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_stmtrandFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_stmtrandFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_stmtrandFunc_enum], pl2);


// sqlite3_create_function - xFunc - testFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_testFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_testFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_testFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_testFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_testFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_testFunc_enum], pl2);


// sqlite3_create_function - xFunc - writefileFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xFunc_writefileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_writefileFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_writefileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_writefileFunc_enum], pl2);

@rule_sqlite3_create_function_xFunc_writefileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_writefileFunc_enum], pl2);


// sqlite3_create_function - xSFunc - 0
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_sqlite3_create_function_xSFunc_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);

@rule_sqlite3_create_function_xSFunc_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xSFunc_signatures[xSFunc_0_enum], pl2);


// sqlite3_create_function - xSFunc - base64
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_base64_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_sqlite3_create_function_xSFunc_base64_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);

@rule_sqlite3_create_function_xSFunc_base64_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base64};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base64_enum], pl2);


// sqlite3_create_function - xSFunc - base85
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_sqlite3_create_function_xSFunc_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);

@rule_sqlite3_create_function_xSFunc_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_base85_enum], pl2);


// sqlite3_create_function - xSFunc - dummyUDF
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xSFunc_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xSFunc_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_dummyUDF_enum], pl2);


// sqlite3_create_function - xSFunc - editFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_editFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_editFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_editFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {editFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_editFunc_enum], pl2);


// sqlite3_create_function - xSFunc - fts3AllocateMSI
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3AllocateMSI_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3AllocateMSI_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3AllocateMSI_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3AllocateMSI};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3AllocateMSI_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprGlobalHitsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprGlobalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprGlobalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprGlobalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprGlobalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprGlobalHitsCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprLoadDoclistsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprLoadDoclistsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprLoadDoclistsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprLoadDoclistsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLoadDoclistsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLoadDoclistsCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprLocalHitsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprLocalHitsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprLocalHitsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprLocalHitsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprLocalHitsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprLocalHitsCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprPhraseCountCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprPhraseCountCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprPhraseCountCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprPhraseCountCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprPhraseCountCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprPhraseCountCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprRestartIfCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprRestartIfCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprRestartIfCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprRestartIfCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprRestartIfCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprRestartIfCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprTermOffsetInit
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprTermOffsetInit_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTermOffsetInit_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTermOffsetInit_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTermOffsetInit};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTermOffsetInit_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprTest
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprTest_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTest_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTest_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTest};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTest_enum], pl2);


// sqlite3_create_function - xSFunc - fts3ExprTestRebalance
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3ExprTestRebalance_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTestRebalance_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3ExprTestRebalance_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ExprTestRebalance};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3ExprTestRebalance_enum], pl2);


// sqlite3_create_function - xSFunc - fts3MatchinfoLcsCb
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3MatchinfoLcsCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3MatchinfoLcsCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3MatchinfoLcsCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3MatchinfoLcsCb};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3MatchinfoLcsCb_enum], pl2);


// sqlite3_create_function - xSFunc - fts3SnippetFindPositions
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3SnippetFindPositions_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3SnippetFindPositions_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3SnippetFindPositions_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3SnippetFindPositions};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3SnippetFindPositions_enum], pl2);


// sqlite3_create_function - xSFunc - fts3TokenizerFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts3TokenizerFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3TokenizerFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts3TokenizerFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3TokenizerFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts3TokenizerFunc_enum], pl2);


// sqlite3_create_function - xSFunc - fts5DecodeFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5DecodeFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5DecodeFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5DecodeFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5DecodeFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5DecodeFunction_enum], pl2);


// sqlite3_create_function - xSFunc - fts5Fts5Func
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5Fts5Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5Fts5Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5Fts5Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5Fts5Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5Fts5Func_enum], pl2);


// sqlite3_create_function - xSFunc - fts5InsttokenFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5InsttokenFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5InsttokenFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5InsttokenFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5InsttokenFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5InsttokenFunc_enum], pl2);


// sqlite3_create_function - xSFunc - fts5LocaleFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5LocaleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5LocaleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5LocaleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5LocaleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5LocaleFunc_enum], pl2);


// sqlite3_create_function - xSFunc - fts5RowidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5RowidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5RowidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5RowidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5RowidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5RowidFunction_enum], pl2);


// sqlite3_create_function - xSFunc - fts5SourceIdFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_fts5SourceIdFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5SourceIdFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_fts5SourceIdFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5SourceIdFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_fts5SourceIdFunc_enum], pl2);


// sqlite3_create_function - xSFunc - geomCallback
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_xSFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_xSFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);


// sqlite3_create_function - xSFunc - idxRemFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_idxRemFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_idxRemFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_idxRemFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxRemFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxRemFunc_enum], pl2);


// sqlite3_create_function - xSFunc - idxSampleFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_idxSampleFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_idxSampleFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_idxSampleFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxSampleFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_idxSampleFunc_enum], pl2);


// sqlite3_create_function - xSFunc - intTestFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_intTestFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_intTestFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_intTestFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intTestFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intTestFunc_enum], pl2);


// sqlite3_create_function - xSFunc - intckParseCreateIndexFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_intckParseCreateIndexFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_intckParseCreateIndexFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_intckParseCreateIndexFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {intckParseCreateIndexFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_intckParseCreateIndexFunc_enum], pl2);


// sqlite3_create_function - xSFunc - is_base85
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_is_base85_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_sqlite3_create_function_xSFunc_is_base85_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);

@rule_sqlite3_create_function_xSFunc_is_base85_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {is_base85};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_is_base85_enum], pl2);


// sqlite3_create_function - xSFunc - lsModeFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_lsModeFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_lsModeFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_lsModeFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {lsModeFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_lsModeFunc_enum], pl2);


// sqlite3_create_function - xSFunc - rbuFossilDeltaFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rbuFossilDeltaFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuFossilDeltaFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuFossilDeltaFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuFossilDeltaFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuFossilDeltaFunc_enum], pl2);


// sqlite3_create_function - xSFunc - rbuIndexCntFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rbuIndexCntFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuIndexCntFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuIndexCntFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuIndexCntFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuIndexCntFunc_enum], pl2);


// sqlite3_create_function - xSFunc - rbuTargetNameFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rbuTargetNameFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuTargetNameFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuTargetNameFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTargetNameFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTargetNameFunc_enum], pl2);


// sqlite3_create_function - xSFunc - rbuTmpInsertFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rbuTmpInsertFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuTmpInsertFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rbuTmpInsertFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rbuTmpInsertFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rbuTmpInsertFunc_enum], pl2);


// sqlite3_create_function - xSFunc - re_bytecode_func
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_re_bytecode_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_re_bytecode_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_re_bytecode_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_bytecode_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_bytecode_func_enum], pl2);


// sqlite3_create_function - xSFunc - re_sql_func
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_re_sql_func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_re_sql_func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_re_sql_func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_sql_func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_re_sql_func_enum], pl2);


// sqlite3_create_function - xSFunc - readfileFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_readfileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_readfileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_readfileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {readfileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_readfileFunc_enum], pl2);


// sqlite3_create_function - xSFunc - rtreecheck
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rtreecheck_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreecheck_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreecheck_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreecheck};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreecheck_enum], pl2);


// sqlite3_create_function - xSFunc - rtreedepth
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rtreedepth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreedepth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreedepth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreedepth};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreedepth_enum], pl2);


// sqlite3_create_function - xSFunc - rtreenode
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_rtreenode_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreenode_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);

@rule_sqlite3_create_function_xSFunc_rtreenode_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreenode};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_rtreenode_enum], pl2);


// sqlite3_create_function - xSFunc - sha1Func
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sha1Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha1Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha1Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1Func_enum], pl2);


// sqlite3_create_function - xSFunc - sha1QueryFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sha1QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha1QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha1QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha1QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha1QueryFunc_enum], pl2);


// sqlite3_create_function - xSFunc - sha3Func
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sha3Func_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha3Func_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha3Func_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3Func};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3Func_enum], pl2);


// sqlite3_create_function - xSFunc - sha3QueryFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sha3QueryFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha3QueryFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sha3QueryFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3QueryFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sha3QueryFunc_enum], pl2);


// sqlite3_create_function - xSFunc - shellAddSchemaName
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellAddSchemaName_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellAddSchemaName_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellAddSchemaName_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellAddSchemaName};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellAddSchemaName_enum], pl2);


// sqlite3_create_function - xSFunc - shellDtostr
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellDtostr_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellDtostr_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellDtostr_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellDtostr};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellDtostr_enum], pl2);


// sqlite3_create_function - xSFunc - shellFkeyCollateClause
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellFkeyCollateClause_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellFkeyCollateClause_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellFkeyCollateClause_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellFkeyCollateClause};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellFkeyCollateClause_enum], pl2);


// sqlite3_create_function - xSFunc - shellModuleSchema
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellModuleSchema_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellModuleSchema_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellModuleSchema_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellModuleSchema};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellModuleSchema_enum], pl2);


// sqlite3_create_function - xSFunc - shellPutsFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellPutsFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellPutsFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellPutsFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellPutsFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellPutsFunc_enum], pl2);


// sqlite3_create_function - xSFunc - shellStrtod
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellStrtod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellStrtod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellStrtod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellStrtod};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellStrtod_enum], pl2);


// sqlite3_create_function - xSFunc - shellUSleepFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_shellUSleepFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellUSleepFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_shellUSleepFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellUSleepFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_shellUSleepFunc_enum], pl2);


// sqlite3_create_function - xSFunc - sqlarCompressFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sqlarCompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlarCompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlarCompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarCompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarCompressFunc_enum], pl2);


// sqlite3_create_function - xSFunc - sqlarUncompressFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sqlarUncompressFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlarUncompressFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlarUncompressFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlarUncompressFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlarUncompressFunc_enum], pl2);


// sqlite3_create_function - xSFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_xSFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);


// sqlite3_create_function - xSFunc - stmtrandFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_stmtrandFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_stmtrandFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_stmtrandFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stmtrandFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_stmtrandFunc_enum], pl2);


// sqlite3_create_function - xSFunc - testFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_testFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_testFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_testFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {testFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_testFunc_enum], pl2);


// sqlite3_create_function - xSFunc - writefileFunc
// fp_sequence: 6

@rule_sqlite3_create_function_xSFunc_writefileFunc_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_writefileFunc_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);

@rule_sqlite3_create_function_xSFunc_writefileFunc_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {writefileFunc};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_writefileFunc_enum], pl2);


// sqlite3_create_function - xStep - 0
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3_create_function_xStep_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3_create_function_xStep_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);


// sqlite3_create_function - xStep - decimalSumStep
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_decimalSumStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3_create_function_xStep_decimalSumStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3_create_function_xStep_decimalSumStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);


// sqlite3_create_function - xStep - dummyUDF
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xStep_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3_create_function_xStep_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);


// sqlite3_create_function - xStep - percentStep
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_percentStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3_create_function_xStep_percentStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3_create_function_xStep_percentStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);


// sqlite3_create_function - xStep - sha3AggStep
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_sha3AggStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_sqlite3_create_function_xStep_sha3AggStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);

@rule_sqlite3_create_function_xStep_sha3AggStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_sha3AggStep_enum], pl2);


// sqlite3_create_function - xStep - zipfileStep
// fp_sequence: 7

@rule_sqlite3_create_function_xStep_zipfileStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_sqlite3_create_function_xStep_zipfileStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);

@rule_sqlite3_create_function_xStep_zipfileStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileStep};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_zipfileStep_enum], pl2);


// sqlite3_create_function - xFinal - 0
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3_create_function_xFinal_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3_create_function_xFinal_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);


// sqlite3_create_function - xFinal - decimalSumFinalize
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_decimalSumFinalize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3_create_function_xFinal_decimalSumFinalize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3_create_function_xFinal_decimalSumFinalize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);


// sqlite3_create_function - xFinal - dummyUDFvalue
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_dummyUDFvalue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3_create_function_xFinal_dummyUDFvalue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3_create_function_xFinal_dummyUDFvalue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);


// sqlite3_create_function - xFinal - percentFinal
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_percentFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_percentFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_percentFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);


// sqlite3_create_function - xFinal - sha3AggFinal
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_sha3AggFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_sha3AggFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_sha3AggFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sha3AggFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_sha3AggFinal_enum], pl2);


// sqlite3_create_function - xFinal - zipfileFinal
// fp_sequence: 8

@rule_sqlite3_create_function_xFinal_zipfileFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_zipfileFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);

@rule_sqlite3_create_function_xFinal_zipfileFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFinal};
identifier FN_NAME = {sqlite3_create_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_zipfileFinal_enum], pl2);


// ============================================================
// Function: sqlite3_create_function16
// ============================================================

// ============================================================
// Function: sqlite3_create_function_v2
// ============================================================

// sqlite3_create_function_v2 - xFunc - geomCallback
// fp_sequence: 6

@rule_sqlite3_create_function_v2_xFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_geomCallback_enum], pl2);


// sqlite3_create_function_v2 - xFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_v2_xFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_v2_xFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_v2_xFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFunc_signatures[xFunc_sqlite3InvalidFunction_enum], pl2);


// sqlite3_create_function_v2 - xSFunc - geomCallback
// fp_sequence: 6

@rule_sqlite3_create_function_v2_xSFunc_geomCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xSFunc_geomCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xSFunc_geomCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geomCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_geomCallback_enum], pl2);


// sqlite3_create_function_v2 - xSFunc - sqlite3InvalidFunction
// fp_sequence: 6

@rule_sqlite3_create_function_v2_xSFunc_sqlite3InvalidFunction_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_v2_xSFunc_sqlite3InvalidFunction_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);

@rule_sqlite3_create_function_v2_xSFunc_sqlite3InvalidFunction_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3InvalidFunction};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSFunc_signatures[xSFunc_sqlite3InvalidFunction_enum], pl2);


// sqlite3_create_function_v2 - xStep - 0
// fp_sequence: 7

@rule_sqlite3_create_function_v2_xStep_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3_create_function_v2_xStep_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);

@rule_sqlite3_create_function_v2_xStep_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xStep_signatures[xStep_0_enum], pl2);


// sqlite3_create_function_v2 - xFinal - 0
// fp_sequence: 8

@rule_sqlite3_create_function_v2_xFinal_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3_create_function_v2_xFinal_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);

@rule_sqlite3_create_function_v2_xFinal_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xFinal_signatures[xFinal_0_enum], pl2);


// sqlite3_create_function_v2 - xDestroy - rtreeFreeCallback
// fp_sequence: 9

@rule_sqlite3_create_function_v2_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3_create_function_v2_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// sqlite3_create_function_v2 - xDestroy - sqlite3_free
// fp_sequence: 9

@rule_sqlite3_create_function_v2_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3_create_function_v2_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3_create_function_v2_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_function_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_create_module_v2
// ============================================================

// sqlite3_create_module_v2 - xDestroy - 0
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// sqlite3_create_module_v2 - xDestroy - fts5ModuleDestroy
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_fts5ModuleDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_fts5ModuleDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_fts5ModuleDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ModuleDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_fts5ModuleDestroy_enum], pl2);


// sqlite3_create_module_v2 - xDestroy - hashDestroy
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_hashDestroy_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_hashDestroy_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_hashDestroy_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hashDestroy};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_hashDestroy_enum], pl2);


// sqlite3_create_module_v2 - xDestroy - icuCollationDel
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_icuCollationDel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_icuCollationDel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_icuCollationDel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuCollationDel};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_icuCollationDel_enum], pl2);


// sqlite3_create_module_v2 - xDestroy - rtreeFreeCallback
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_rtreeFreeCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_rtreeFreeCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_rtreeFreeCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeFreeCallback};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_rtreeFreeCallback_enum], pl2);


// sqlite3_create_module_v2 - xDestroy - sqlite3_free
// fp_sequence: 5

@rule_sqlite3_create_module_v2_xDestroy_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);

@rule_sqlite3_create_module_v2_xDestroy_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_create_module_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestroy_signatures[xDestroy_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_create_window_function
// ============================================================

// sqlite3_create_window_function - xStep - decimalSumStep
// fp_sequence: 6

@rule_sqlite3_create_window_function_xStep_decimalSumStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3_create_window_function_xStep_decimalSumStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);

@rule_sqlite3_create_window_function_xStep_decimalSumStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_decimalSumStep_enum], pl2);


// sqlite3_create_window_function - xStep - dummyUDF
// fp_sequence: 6

@rule_sqlite3_create_window_function_xStep_dummyUDF_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3_create_window_function_xStep_dummyUDF_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);

@rule_sqlite3_create_window_function_xStep_dummyUDF_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDF};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_dummyUDF_enum], pl2);


// sqlite3_create_window_function - xStep - percentStep
// fp_sequence: 6

@rule_sqlite3_create_window_function_xStep_percentStep_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3_create_window_function_xStep_percentStep_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);

@rule_sqlite3_create_window_function_xStep_percentStep_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentStep};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xStep_signatures[xStep_percentStep_enum], pl2);


// sqlite3_create_window_function - xFinal - decimalSumFinalize
// fp_sequence: 7

@rule_sqlite3_create_window_function_xFinal_decimalSumFinalize_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_decimalSumFinalize_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_decimalSumFinalize_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumFinalize};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_decimalSumFinalize_enum], pl2);


// sqlite3_create_window_function - xFinal - dummyUDFvalue
// fp_sequence: 7

@rule_sqlite3_create_window_function_xFinal_dummyUDFvalue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_dummyUDFvalue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_dummyUDFvalue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dummyUDFvalue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_dummyUDFvalue_enum], pl2);


// sqlite3_create_window_function - xFinal - percentFinal
// fp_sequence: 7

@rule_sqlite3_create_window_function_xFinal_percentFinal_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_percentFinal_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);

@rule_sqlite3_create_window_function_xFinal_percentFinal_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentFinal};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFinal_signatures[xFinal_percentFinal_enum], pl2);


// sqlite3_create_window_function - xValue - 0
// fp_sequence: 8

@rule_sqlite3_create_window_function_xValue_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_sqlite3_create_window_function_xValue_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);

@rule_sqlite3_create_window_function_xValue_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xValue_signatures[xValue_0_enum], pl2);


// sqlite3_create_window_function - xValue - decimalSumValue
// fp_sequence: 8

@rule_sqlite3_create_window_function_xValue_decimalSumValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_sqlite3_create_window_function_xValue_decimalSumValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);

@rule_sqlite3_create_window_function_xValue_decimalSumValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_decimalSumValue_enum], pl2);


// sqlite3_create_window_function - xValue - percentValue
// fp_sequence: 8

@rule_sqlite3_create_window_function_xValue_percentValue_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_sqlite3_create_window_function_xValue_percentValue_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);

@rule_sqlite3_create_window_function_xValue_percentValue_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentValue};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xValue_signatures[xValue_percentValue_enum], pl2);


// sqlite3_create_window_function - xInverse - 0
// fp_sequence: 9

@rule_sqlite3_create_window_function_xInverse_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInverse_signatures[xInverse_0_enum], pl2);


// sqlite3_create_window_function - xInverse - decimalSumInverse
// fp_sequence: 9

@rule_sqlite3_create_window_function_xInverse_decimalSumInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_decimalSumInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_decimalSumInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {decimalSumInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_decimalSumInverse_enum], pl2);


// sqlite3_create_window_function - xInverse - percentInverse
// fp_sequence: 9

@rule_sqlite3_create_window_function_xInverse_percentInverse_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_percentInverse_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);

@rule_sqlite3_create_window_function_xInverse_percentInverse_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {percentInverse};
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInverse_signatures[xInverse_percentInverse_enum], pl2);


// sqlite3_create_window_function - xDestroy - 0
// fp_sequence: 10

@rule_sqlite3_create_window_function_xDestroy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_window_function_xDestroy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);

@rule_sqlite3_create_window_function_xDestroy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_create_window_function};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestroy_signatures[xDestroy_0_enum], pl2);


// ============================================================
// Function: sqlite3_exec
// ============================================================

// sqlite3_exec - callback - 0
// fp_sequence: 3





// sqlite3_exec - callback - analysisLoader
// fp_sequence: 3





// sqlite3_exec - callback - captureOutputCallback
// fp_sequence: 3





// sqlite3_exec - callback - countNonzeros
// fp_sequence: 3





// sqlite3_exec - callback - dump_callback
// fp_sequence: 3





// sqlite3_exec - callback - sqlite3InitCallback
// fp_sequence: 3





// sqlite3_exec - callback - sqlite3_get_table_cb
// fp_sequence: 3





// sqlite3_exec - callback - callback
// fp_sequence: 3





// ============================================================
// Function: sqlite3_memory_alarm
// ============================================================

// ============================================================
// Function: sqlite3_preupdate_hook
// ============================================================

// sqlite3_preupdate_hook - xCallback - 0
// fp_sequence: 2

@rule_sqlite3_preupdate_hook_xCallback_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_preupdate_hook_xCallback_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_preupdate_hook_xCallback_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);


// sqlite3_preupdate_hook - xPreUpdate - 0
// fp_sequence: 2

@rule_sqlite3_preupdate_hook_xPreUpdate_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xPreUpdate_signatures[xPreUpdate_0_enum], pl2);

@rule_sqlite3_preupdate_hook_xPreUpdate_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xPreUpdate_signatures[xPreUpdate_0_enum], pl2);

@rule_sqlite3_preupdate_hook_xPreUpdate_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_preupdate_hook};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xPreUpdate_signatures[xPreUpdate_0_enum], pl2);


// ============================================================
// Function: sqlite3_profile
// ============================================================

// ============================================================
// Function: sqlite3_progress_handler
// ============================================================

// sqlite3_progress_handler - xProgress - progress_handler
// fp_sequence: 3

@rule_sqlite3_progress_handler_xProgress_progress_handler_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {progress_handler};
identifier FN_NAME = {sqlite3_progress_handler};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xProgress_signatures[xProgress_progress_handler_enum], pl2);

@rule_sqlite3_progress_handler_xProgress_progress_handler_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {progress_handler};
identifier FN_NAME = {sqlite3_progress_handler};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xProgress_signatures[xProgress_progress_handler_enum], pl2);

@rule_sqlite3_progress_handler_xProgress_progress_handler_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {progress_handler};
identifier FN_NAME = {sqlite3_progress_handler};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xProgress_signatures[xProgress_progress_handler_enum], pl2);


// ============================================================
// Function: sqlite3_recover_init_sql
// ============================================================

// sqlite3_recover_init_sql - xSql - recoverSqlCb
// fp_sequence: 3

@rule_sqlite3_recover_init_sql_xSql_recoverSqlCb_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {sqlite3_recover_init_sql};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);

@rule_sqlite3_recover_init_sql_xSql_recoverSqlCb_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {sqlite3_recover_init_sql};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);

@rule_sqlite3_recover_init_sql_xSql_recoverSqlCb_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {recoverSqlCb};
identifier FN_NAME = {sqlite3_recover_init_sql};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xSql_signatures[xSql_recoverSqlCb_enum], pl2);


// ============================================================
// Function: sqlite3_result_blob
// ============================================================

// sqlite3_result_blob - xDel - SQLITE_DYNAMIC
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// sqlite3_result_blob - xDel - SQLITE_STATIC
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3_result_blob - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_blob_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_result_blob - xDel - sqlite3_free
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_blob_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_blob_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// sqlite3_result_blob - xDel - statAccumDestructor
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_statAccumDestructor_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_sqlite3_result_blob_xDel_statAccumDestructor_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);

@rule_sqlite3_result_blob_xDel_statAccumDestructor_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statAccumDestructor};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_statAccumDestructor_enum], pl2);


// sqlite3_result_blob - xDel - xDestroyOut
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_xDestroyOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_sqlite3_result_blob_xDel_xDestroyOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);

@rule_sqlite3_result_blob_xDel_xDestroyOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xDestroyOut};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_xDestroyOut_enum], pl2);


// sqlite3_result_blob - xDel - zipfileFree
// fp_sequence: 4

@rule_sqlite3_result_blob_xDel_zipfileFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3_result_blob};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_sqlite3_result_blob_xDel_zipfileFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3_result_blob};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);

@rule_sqlite3_result_blob_xDel_zipfileFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileFree};
identifier FN_NAME = {sqlite3_result_blob};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_zipfileFree_enum], pl2);


// ============================================================
// Function: sqlite3_result_blob64
// ============================================================

// sqlite3_result_blob64 - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_blob64_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_blob64_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_blob64_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_result_blob64 - xDel - sqlite3_free
// fp_sequence: 4

@rule_sqlite3_result_blob64_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_blob64_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_blob64_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_blob64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_result_pointer
// ============================================================

// sqlite3_result_pointer - xDestructor - 0
// fp_sequence: 4

@rule_sqlite3_result_pointer_xDestructor_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_result_pointer};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3_result_pointer_xDestructor_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_result_pointer};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);

@rule_sqlite3_result_pointer_xDestructor_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_result_pointer};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDestructor_signatures[xDestructor_0_enum], pl2);


// sqlite3_result_pointer - xDestructor - rtreeMatchArgFree
// fp_sequence: 4

@rule_sqlite3_result_pointer_xDestructor_rtreeMatchArgFree_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3_result_pointer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3_result_pointer_xDestructor_rtreeMatchArgFree_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3_result_pointer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);

@rule_sqlite3_result_pointer_xDestructor_rtreeMatchArgFree_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeMatchArgFree};
identifier FN_NAME = {sqlite3_result_pointer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDestructor_signatures[xDestructor_rtreeMatchArgFree_enum], pl2);


// ============================================================
// Function: sqlite3_result_text
// ============================================================

// sqlite3_result_text - xDel - SQLITE_DYNAMIC
// fp_sequence: 4

@rule_sqlite3_result_text_xDel_SQLITE_DYNAMIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_DYNAMIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_DYNAMIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_DYNAMIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_DYNAMIC_enum], pl2);


// sqlite3_result_text - xDel - SQLITE_STATIC
// fp_sequence: 4

@rule_sqlite3_result_text_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3_result_text - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_text_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_result_text - xDel - sqlite3RCStrUnref
// fp_sequence: 4

@rule_sqlite3_result_text_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// sqlite3_result_text - xDel - sqlite3_free
// fp_sequence: 4

@rule_sqlite3_result_text_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_text_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_text_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_result_text16
// ============================================================

// sqlite3_result_text16 - xDel - 0
// fp_sequence: 4

@rule_sqlite3_result_text16_xDel_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_result_text16};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_result_text16_xDel_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_result_text16};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);

@rule_sqlite3_result_text16_xDel_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_result_text16};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xDel_signatures[xDel_0_enum], pl2);


// sqlite3_result_text16 - xDel - SQLITE_STATIC
// fp_sequence: 4

@rule_sqlite3_result_text16_xDel_SQLITE_STATIC_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text16};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_text16_xDel_SQLITE_STATIC_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text16};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);

@rule_sqlite3_result_text16_xDel_SQLITE_STATIC_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_STATIC};
identifier FN_NAME = {sqlite3_result_text16};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_STATIC_enum], pl2);


// sqlite3_result_text16 - xDel - sqlite3RCStrUnref
// fp_sequence: 4

@rule_sqlite3_result_text16_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text16};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text16_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text16};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text16_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text16};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// sqlite3_result_text16 - xDel - sqlite3SchemaClear
// fp_sequence: 4

@rule_sqlite3_result_text16_xDel_sqlite3SchemaClear_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3_result_text16};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3_result_text16_xDel_sqlite3SchemaClear_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3_result_text16};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);

@rule_sqlite3_result_text16_xDel_sqlite3SchemaClear_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3SchemaClear};
identifier FN_NAME = {sqlite3_result_text16};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3SchemaClear_enum], pl2);


// ============================================================
// Function: sqlite3_result_text16be
// ============================================================

// sqlite3_result_text16be - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_text16be_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16be};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text16be_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16be};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text16be_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16be};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// ============================================================
// Function: sqlite3_result_text16le
// ============================================================

// sqlite3_result_text16le - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_text16le_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16le};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text16le_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16le};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text16le_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text16le};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// ============================================================
// Function: sqlite3_result_text64
// ============================================================

// sqlite3_result_text64 - xDel - SQLITE_TRANSIENT
// fp_sequence: 4

@rule_sqlite3_result_text64_xDel_SQLITE_TRANSIENT_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text64_xDel_SQLITE_TRANSIENT_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);

@rule_sqlite3_result_text64_xDel_SQLITE_TRANSIENT_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {SQLITE_TRANSIENT};
identifier FN_NAME = {sqlite3_result_text64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_SQLITE_TRANSIENT_enum], pl2);


// sqlite3_result_text64 - xDel - sqlite3RCStrUnref
// fp_sequence: 4

@rule_sqlite3_result_text64_xDel_sqlite3RCStrUnref_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text64_xDel_sqlite3RCStrUnref_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);

@rule_sqlite3_result_text64_xDel_sqlite3RCStrUnref_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3RCStrUnref};
identifier FN_NAME = {sqlite3_result_text64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3RCStrUnref_enum], pl2);


// sqlite3_result_text64 - xDel - sqlite3_free
// fp_sequence: 4

@rule_sqlite3_result_text64_xDel_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text64};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_text64_xDel_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text64};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);

@rule_sqlite3_result_text64_xDel_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_result_text64};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDel_signatures[xDel_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_rollback_hook
// ============================================================

// ============================================================
// Function: sqlite3_rtree_geometry_callback
// ============================================================

// ============================================================
// Function: sqlite3_rtree_query_callback
// ============================================================

// ============================================================
// Function: sqlite3_set_authorizer
// ============================================================

// sqlite3_set_authorizer - xAuth - 0
// fp_sequence: 2

@rule_sqlite3_set_authorizer_xAuth_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xAuth_signatures[xAuth_0_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xAuth_signatures[xAuth_0_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xAuth_signatures[xAuth_0_enum], pl2);


// sqlite3_set_authorizer - xAuth - idxAuthCallback
// fp_sequence: 2

@rule_sqlite3_set_authorizer_xAuth_idxAuthCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxAuthCallback};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_idxAuthCallback_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_idxAuthCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {idxAuthCallback};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_idxAuthCallback_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_idxAuthCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {idxAuthCallback};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_idxAuthCallback_enum], pl2);


// sqlite3_set_authorizer - xAuth - safeModeAuth
// fp_sequence: 2

@rule_sqlite3_set_authorizer_xAuth_safeModeAuth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {safeModeAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_safeModeAuth_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_safeModeAuth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {safeModeAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_safeModeAuth_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_safeModeAuth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {safeModeAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_safeModeAuth_enum], pl2);


// sqlite3_set_authorizer - xAuth - shellAuth
// fp_sequence: 2

@rule_sqlite3_set_authorizer_xAuth_shellAuth_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_shellAuth_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_shellAuth_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {shellAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_shellAuth_enum], pl2);

@rule_sqlite3_set_authorizer_xAuth_shellAuth_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {shellAuth};
identifier FN_NAME = {sqlite3_set_authorizer};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xAuth_signatures[xAuth_shellAuth_enum], pl2);


// ============================================================
// Function: sqlite3_set_auxdata
// ============================================================

// sqlite3_set_auxdata - xDelete - icuRegexpDelete
// fp_sequence: 4

@rule_sqlite3_set_auxdata_xDelete_icuRegexpDelete_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuRegexpDelete};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_icuRegexpDelete_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_icuRegexpDelete_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {icuRegexpDelete};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_icuRegexpDelete_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_icuRegexpDelete_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {icuRegexpDelete};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_icuRegexpDelete_enum], pl2);


// sqlite3_set_auxdata - xDelete - jsonCacheDeleteGeneric
// fp_sequence: 4

@rule_sqlite3_set_auxdata_xDelete_jsonCacheDeleteGeneric_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {jsonCacheDeleteGeneric};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_jsonCacheDeleteGeneric_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {jsonCacheDeleteGeneric};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_jsonCacheDeleteGeneric_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {jsonCacheDeleteGeneric};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_jsonCacheDeleteGeneric_enum], pl2);


// sqlite3_set_auxdata - xDelete - re_free
// fp_sequence: 4

@rule_sqlite3_set_auxdata_xDelete_re_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_re_free_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_re_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {re_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_re_free_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_re_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {re_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_re_free_enum], pl2);


// sqlite3_set_auxdata - xDelete - sqlite3_free
// fp_sequence: 4

@rule_sqlite3_set_auxdata_xDelete_sqlite3_free_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_sqlite3_free_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_sqlite3_free_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_sqlite3_free_enum], pl2);

@rule_sqlite3_set_auxdata_xDelete_sqlite3_free_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3_free};
identifier FN_NAME = {sqlite3_set_auxdata};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xDelete_signatures[xDelete_sqlite3_free_enum], pl2);


// ============================================================
// Function: sqlite3_set_clientdata
// ============================================================

// ============================================================
// Function: sqlite3_trace
// ============================================================

// ============================================================
// Function: sqlite3_trace_v2
// ============================================================

// sqlite3_trace_v2 - xCallback - 0
// fp_sequence: 3

@rule_sqlite3_trace_v2_xCallback_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_trace_v2_xCallback_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_trace_v2_xCallback_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);


// sqlite3_trace_v2 - xCallback - sql_trace_callback
// fp_sequence: 3

@rule_sqlite3_trace_v2_xCallback_sql_trace_callback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sql_trace_callback_enum], pl2);

@rule_sqlite3_trace_v2_xCallback_sql_trace_callback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sql_trace_callback_enum], pl2);

@rule_sqlite3_trace_v2_xCallback_sql_trace_callback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sql_trace_callback_enum], pl2);


// sqlite3_trace_v2 - xTrace - 0
// fp_sequence: 3

@rule_sqlite3_trace_v2_xTrace_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xTrace_signatures[xTrace_0_enum], pl2);

@rule_sqlite3_trace_v2_xTrace_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xTrace_signatures[xTrace_0_enum], pl2);

@rule_sqlite3_trace_v2_xTrace_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_trace_v2};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xTrace_signatures[xTrace_0_enum], pl2);


// sqlite3_trace_v2 - xTrace - sql_trace_callback
// fp_sequence: 3

@rule_sqlite3_trace_v2_xTrace_sql_trace_callback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xTrace_signatures[xTrace_sql_trace_callback_enum], pl2);

@rule_sqlite3_trace_v2_xTrace_sql_trace_callback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xTrace_signatures[xTrace_sql_trace_callback_enum], pl2);

@rule_sqlite3_trace_v2_xTrace_sql_trace_callback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sql_trace_callback};
identifier FN_NAME = {sqlite3_trace_v2};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xTrace_signatures[xTrace_sql_trace_callback_enum], pl2);


// ============================================================
// Function: sqlite3_unlock_notify
// ============================================================

// ============================================================
// Function: sqlite3_update_hook
// ============================================================

// ============================================================
// Function: sqlite3_wal_hook
// ============================================================

// sqlite3_wal_hook - xCallback - 0
// fp_sequence: 2

@rule_sqlite3_wal_hook_xCallback_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_wal_hook};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_wal_hook_xCallback_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3_wal_hook};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);

@rule_sqlite3_wal_hook_xCallback_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3_wal_hook};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xCallback_signatures[xCallback_0_enum], pl2);


// sqlite3_wal_hook - xCallback - sqlite3WalDefaultHook
// fp_sequence: 2

@rule_sqlite3_wal_hook_xCallback_sqlite3WalDefaultHook_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3WalDefaultHook};
identifier FN_NAME = {sqlite3_wal_hook};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], pl2);

@rule_sqlite3_wal_hook_xCallback_sqlite3WalDefaultHook_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqlite3WalDefaultHook};
identifier FN_NAME = {sqlite3_wal_hook};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], pl2);

@rule_sqlite3_wal_hook_xCallback_sqlite3WalDefaultHook_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqlite3WalDefaultHook};
identifier FN_NAME = {sqlite3_wal_hook};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCallback_signatures[xCallback_sqlite3WalDefaultHook_enum], pl2);


// ============================================================
// Function: sqlite3changegroup_add_strm
// ============================================================

// sqlite3changegroup_add_strm - xInput - xInputA
// fp_sequence: 2

@rule_sqlite3changegroup_add_strm_xInput_xInputA_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xInputA};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputA_enum], pl2);

@rule_sqlite3changegroup_add_strm_xInput_xInputA_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xInputA};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputA_enum], pl2);

@rule_sqlite3changegroup_add_strm_xInput_xInputA_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xInputA};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputA_enum], pl2);


// sqlite3changegroup_add_strm - xInput - xInputB
// fp_sequence: 2

@rule_sqlite3changegroup_add_strm_xInput_xInputB_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xInputB};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputB_enum], pl2);

@rule_sqlite3changegroup_add_strm_xInput_xInputB_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xInputB};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputB_enum], pl2);

@rule_sqlite3changegroup_add_strm_xInput_xInputB_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xInputB};
identifier FN_NAME = {sqlite3changegroup_add_strm};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xInput_signatures[xInput_xInputB_enum], pl2);


// ============================================================
// Function: sqlite3changegroup_output_strm
// ============================================================

// sqlite3changegroup_output_strm - xOutput - 0
// fp_sequence: 2

@rule_sqlite3changegroup_output_strm_xOutput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3changegroup_output_strm};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sqlite3changegroup_output_strm_xOutput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3changegroup_output_strm};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);

@rule_sqlite3changegroup_output_strm_xOutput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3changegroup_output_strm};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xOutput_signatures[xOutput_0_enum], pl2);


// ============================================================
// Function: sqlite3changeset_apply
// ============================================================

// ============================================================
// Function: sqlite3changeset_apply_strm
// ============================================================

// ============================================================
// Function: sqlite3changeset_apply_v2
// ============================================================

// ============================================================
// Function: sqlite3changeset_apply_v2_strm
// ============================================================

// ============================================================
// Function: sqlite3changeset_apply_v3
// ============================================================

// ============================================================
// Function: sqlite3changeset_apply_v3_strm
// ============================================================

// ============================================================
// Function: sqlite3changeset_concat_strm
// ============================================================

// ============================================================
// Function: sqlite3changeset_invert_strm
// ============================================================

// ============================================================
// Function: sqlite3changeset_start_strm
// ============================================================

// sqlite3changeset_start_strm - xInput - 0
// fp_sequence: 2

@rule_sqlite3changeset_start_strm_xInput_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3changeset_start_strm};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sqlite3changeset_start_strm_xInput_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3changeset_start_strm};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);

@rule_sqlite3changeset_start_strm_xInput_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3changeset_start_strm};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xInput_signatures[xInput_0_enum], pl2);


// ============================================================
// Function: sqlite3changeset_start_v2_strm
// ============================================================

// ============================================================
// Function: sqlite3rbu_rename_handler
// ============================================================

// sqlite3rbu_rename_handler - xRename - 0
// fp_sequence: 3

@rule_sqlite3rbu_rename_handler_xRename_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3rbu_rename_handler};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xRename_signatures[xRename_0_enum], pl2);

@rule_sqlite3rbu_rename_handler_xRename_0_return@
expression list pl1, pl2;
identifier FN_NAME = {sqlite3rbu_rename_handler};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xRename_signatures[xRename_0_enum], pl2);

@rule_sqlite3rbu_rename_handler_xRename_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {sqlite3rbu_rename_handler};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xRename_signatures[xRename_0_enum], pl2);


// ============================================================
// Function: sqlite3rebaser_rebase_strm
// ============================================================

// ============================================================
// Function: sqlite3session_changeset_strm
// ============================================================

// ============================================================
// Function: sqlite3session_patchset_strm
// ============================================================

// ============================================================
// Function: sqlite3session_table_filter
// ============================================================

// sqlite3session_table_filter - xFilter - session_filter
// fp_sequence: 2

@rule_sqlite3session_table_filter_xFilter_session_filter_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sqlite3session_table_filter};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sqlite3session_table_filter_xFilter_session_filter_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sqlite3session_table_filter};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);

@rule_sqlite3session_table_filter_xFilter_session_filter_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {session_filter};
identifier FN_NAME = {sqlite3session_table_filter};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xFilter_signatures[xFilter_session_filter_enum], pl2);


// ============================================================
// Function: stem
// ============================================================

// stem - xCond - 0
// fp_sequence: 4

@rule_stem_xCond_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {stem};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xCond_signatures[xCond_0_enum], pl2);

@rule_stem_xCond_0_return@
expression list pl1, pl2;
identifier FN_NAME = {stem};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xCond_signatures[xCond_0_enum], pl2);

@rule_stem_xCond_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {stem};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xCond_signatures[xCond_0_enum], pl2);


// stem - xCond - hasVowel
// fp_sequence: 4

@rule_stem_xCond_hasVowel_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hasVowel};
identifier FN_NAME = {stem};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_hasVowel_enum], pl2);

@rule_stem_xCond_hasVowel_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {hasVowel};
identifier FN_NAME = {stem};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_hasVowel_enum], pl2);

@rule_stem_xCond_hasVowel_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {hasVowel};
identifier FN_NAME = {stem};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_hasVowel_enum], pl2);


// stem - xCond - m_gt_0
// fp_sequence: 4

@rule_stem_xCond_m_gt_0_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {m_gt_0};
identifier FN_NAME = {stem};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_0_enum], pl2);

@rule_stem_xCond_m_gt_0_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {m_gt_0};
identifier FN_NAME = {stem};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_0_enum], pl2);

@rule_stem_xCond_m_gt_0_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {m_gt_0};
identifier FN_NAME = {stem};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_0_enum], pl2);


// stem - xCond - m_gt_1
// fp_sequence: 4

@rule_stem_xCond_m_gt_1_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {m_gt_1};
identifier FN_NAME = {stem};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_1_enum], pl2);

@rule_stem_xCond_m_gt_1_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {m_gt_1};
identifier FN_NAME = {stem};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_1_enum], pl2);

@rule_stem_xCond_m_gt_1_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {m_gt_1};
identifier FN_NAME = {stem};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xCond_signatures[xCond_m_gt_1_enum], pl2);


// ============================================================
// Function: tryToCloneSchema
// ============================================================

// tryToCloneSchema - xForEach - 0
// fp_sequence: 4

@rule_tryToCloneSchema_xForEach_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {tryToCloneSchema};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xForEach_signatures[xForEach_0_enum], pl2);

@rule_tryToCloneSchema_xForEach_0_return@
expression list pl1, pl2;
identifier FN_NAME = {tryToCloneSchema};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xForEach_signatures[xForEach_0_enum], pl2);

@rule_tryToCloneSchema_xForEach_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {tryToCloneSchema};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xForEach_signatures[xForEach_0_enum], pl2);


// tryToCloneSchema - xForEach - tryToCloneData
// fp_sequence: 4

@rule_tryToCloneSchema_xForEach_tryToCloneData_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tryToCloneData};
identifier FN_NAME = {tryToCloneSchema};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xForEach_signatures[xForEach_tryToCloneData_enum], pl2);

@rule_tryToCloneSchema_xForEach_tryToCloneData_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {tryToCloneData};
identifier FN_NAME = {tryToCloneSchema};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xForEach_signatures[xForEach_tryToCloneData_enum], pl2);

@rule_tryToCloneSchema_xForEach_tryToCloneData_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {tryToCloneData};
identifier FN_NAME = {tryToCloneSchema};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xForEach_signatures[xForEach_tryToCloneData_enum], pl2);


// ============================================================
// Function: vfstrace_register
// ============================================================

// vfstrace_register - xOut - vfstraceOut
// fp_sequence: 3

@rule_vfstrace_register_xOut_vfstraceOut_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {vfstraceOut};
identifier FN_NAME = {vfstrace_register};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xOut_signatures[xOut_vfstraceOut_enum], pl2);

@rule_vfstrace_register_xOut_vfstraceOut_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {vfstraceOut};
identifier FN_NAME = {vfstrace_register};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xOut_signatures[xOut_vfstraceOut_enum], pl2);

@rule_vfstrace_register_xOut_vfstraceOut_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {vfstraceOut};
identifier FN_NAME = {vfstrace_register};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xOut_signatures[xOut_vfstraceOut_enum], pl2);


// ============================================================
// Function: vtabCallConstructor
// ============================================================

// vtabCallConstructor - xConstruct - bytecodevtabConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_bytecodevtabConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {bytecodevtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_bytecodevtabConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {bytecodevtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_bytecodevtabConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {bytecodevtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_bytecodevtabConnect_enum], pl2);


// vtabCallConstructor - xConstruct - completionConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_completionConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {completionConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_completionConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_completionConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {completionConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_completionConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_completionConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {completionConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_completionConnect_enum], pl2);


// vtabCallConstructor - xConstruct - dbdataConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_dbdataConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dbdataConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbdataConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_dbdataConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dbdataConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbdataConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_dbdataConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dbdataConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbdataConnect_enum], pl2);


// vtabCallConstructor - xConstruct - dbpageConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_dbpageConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dbpageConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbpageConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_dbpageConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {dbpageConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbpageConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_dbpageConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {dbpageConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_dbpageConnect_enum], pl2);


// vtabCallConstructor - xConstruct - expertConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_expertConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {expertConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_expertConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_expertConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {expertConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_expertConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_expertConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {expertConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_expertConnect_enum], pl2);


// vtabCallConstructor - xConstruct - fsdirConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fsdirConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fsdirConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fsdirConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fsdirConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fsdirConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fsdirConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fsdirConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fsdirConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fsdirConnect_enum], pl2);


// vtabCallConstructor - xConstruct - fts3ConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts3ConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3ConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3ConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3ConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - fts3auxConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts3auxConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3auxConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3auxConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3auxConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3auxConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3auxConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3auxConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - fts3tokConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts3tokConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3tokConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3tokConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts3tokConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts3tokConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts3tokConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts3tokConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - fts5ConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts5ConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5ConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5ConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5ConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5ConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5ConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5ConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - fts5VocabConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts5VocabConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5VocabConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5VocabConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5VocabConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5VocabConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5VocabConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5VocabConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5VocabConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5VocabConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - fts5structConnectMethod
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_fts5structConnectMethod_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5structConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5structConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5structConnectMethod_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {fts5structConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5structConnectMethod_enum], pl2);

@rule_vtabCallConstructor_xConstruct_fts5structConnectMethod_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {fts5structConnectMethod};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_fts5structConnectMethod_enum], pl2);


// vtabCallConstructor - xConstruct - geopolyConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_geopolyConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_geopolyConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_geopolyConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {geopolyConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_geopolyConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_geopolyConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {geopolyConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_geopolyConnect_enum], pl2);


// vtabCallConstructor - xConstruct - jsonEachConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_jsonEachConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {jsonEachConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_jsonEachConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_jsonEachConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {jsonEachConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_jsonEachConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_jsonEachConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {jsonEachConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_jsonEachConnect_enum], pl2);


// vtabCallConstructor - xConstruct - pragmaVtabConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_pragmaVtabConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pragmaVtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_pragmaVtabConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {pragmaVtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_pragmaVtabConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {pragmaVtabConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_pragmaVtabConnect_enum], pl2);


// vtabCallConstructor - xConstruct - rtreeConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_rtreeConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_rtreeConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_rtreeConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {rtreeConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_rtreeConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_rtreeConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {rtreeConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_rtreeConnect_enum], pl2);


// vtabCallConstructor - xConstruct - seriesConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_seriesConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {seriesConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_seriesConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_seriesConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {seriesConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_seriesConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_seriesConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {seriesConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_seriesConnect_enum], pl2);


// vtabCallConstructor - xConstruct - statConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_statConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_statConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_statConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {statConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_statConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_statConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {statConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_statConnect_enum], pl2);


// vtabCallConstructor - xConstruct - stmtConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_stmtConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_stmtConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_stmtConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {stmtConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_stmtConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_stmtConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {stmtConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_stmtConnect_enum], pl2);


// vtabCallConstructor - xConstruct - zipfileConnect
// fp_sequence: 4

@rule_vtabCallConstructor_xConstruct_zipfileConnect_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_zipfileConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_zipfileConnect_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {zipfileConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_zipfileConnect_enum], pl2);

@rule_vtabCallConstructor_xConstruct_zipfileConnect_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {zipfileConnect};
identifier FN_NAME = {vtabCallConstructor};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xConstruct_signatures[xConstruct_zipfileConnect_enum], pl2);


// ============================================================
// Function: walBusyLock
// ============================================================

// walBusyLock - xBusy - 0
// fp_sequence: 2

@rule_walBusyLock_xBusy_0_standalone@
expression list pl1, pl2;
identifier FN_NAME = {walBusyLock};
@@
- FN_NAME(pl1, 0, pl2);
+ FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_walBusyLock_xBusy_0_return@
expression list pl1, pl2;
identifier FN_NAME = {walBusyLock};
@@
- return FN_NAME(pl1, 0, pl2);
+ return FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);

@rule_walBusyLock_xBusy_0_assign@
expression list pl1, pl2;
identifier rc;
identifier FN_NAME = {walBusyLock};
@@
- rc = FN_NAME(pl1, 0, pl2);
+ rc = FN_NAME(pl1, 0, xBusy_signatures[xBusy_0_enum], pl2);


// walBusyLock - xBusy - btreeInvokeBusyHandler
// fp_sequence: 2

@rule_walBusyLock_xBusy_btreeInvokeBusyHandler_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {walBusyLock};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);

@rule_walBusyLock_xBusy_btreeInvokeBusyHandler_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {walBusyLock};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);

@rule_walBusyLock_xBusy_btreeInvokeBusyHandler_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {btreeInvokeBusyHandler};
identifier FN_NAME = {walBusyLock};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_btreeInvokeBusyHandler_enum], pl2);


// walBusyLock - xBusy - sqliteDefaultBusyCallback
// fp_sequence: 2

@rule_walBusyLock_xBusy_sqliteDefaultBusyCallback_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {walBusyLock};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);

@rule_walBusyLock_xBusy_sqliteDefaultBusyCallback_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {walBusyLock};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);

@rule_walBusyLock_xBusy_sqliteDefaultBusyCallback_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {sqliteDefaultBusyCallback};
identifier FN_NAME = {walBusyLock};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_sqliteDefaultBusyCallback_enum], pl2);


// walBusyLock - xBusy - xBusy2
// fp_sequence: 2

@rule_walBusyLock_xBusy_xBusy2_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walBusyLock};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);

@rule_walBusyLock_xBusy_xBusy2_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walBusyLock};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);

@rule_walBusyLock_xBusy_xBusy2_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walBusyLock};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);


// ============================================================
// Function: walCheckpoint
// ============================================================

// walCheckpoint - xBusy - xBusy2
// fp_sequence: 4

@rule_walCheckpoint_xBusy_xBusy2_standalone@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walCheckpoint};
@@
- FN_NAME(pl1, ASSIGNED_FN, pl2);
+ FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);

@rule_walCheckpoint_xBusy_xBusy2_return@
expression list pl1, pl2;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walCheckpoint};
@@
- return FN_NAME(pl1, ASSIGNED_FN, pl2);
+ return FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);

@rule_walCheckpoint_xBusy_xBusy2_assign@
expression list pl1, pl2;
identifier rc;
identifier ASSIGNED_FN = {xBusy2};
identifier FN_NAME = {walCheckpoint};
@@
- rc = FN_NAME(pl1, ASSIGNED_FN, pl2);
+ rc = FN_NAME(pl1, ASSIGNED_FN, xBusy_signatures[xBusy_xBusy2_enum], pl2);


