#ifndef LIBTIFF_SIGNATURES_H
#define LIBTIFF_SIGNATURES_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 46
 * Total unique (fp, func) pairs: 360
 */

#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

/* Forward declarations */
typedef struct tiff TIFF;
typedef struct logLuvState LogLuvState;

#ifndef TIFF_SSIZE_T
#define TIFF_SSIZE_T int64_t
#endif

typedef TIFF_SSIZE_T tmsize_t;

#define invalidFunctionWasCalled() \
    _invalidFunctionWasCalled(__FILE__, __LINE__, __func__)

static inline void _invalidFunctionWasCalled(const char *file, int line, const char *func)
{
    fprintf(stderr, "\n[ERROR] Invalid function pointer call detected!\n");
    fprintf(stderr, "        Location: %s:%d\n", file, line);
    fprintf(stderr, "        Function: %s\n", func);
    fprintf(stderr, "        A function pointer with unspecified signature was invoked.\n");
    fprintf(stderr, "        This indicates incomplete static analysis or missing assignment.\n\n");
    
    /* Uncomment to abort on error (recommended for debugging) */
    /* abort(); */
    
    /* Or just continue (for testing/fuzzing) */
}

/* =============== closeproc (2 functions) =============== */

typedef enum {
    closeproc_TIFFCloseProc = 1868825,
    closeproc__tiffCloseProc = 420610
} closeproc_enum_t;

/* =============== compar (1 functions) =============== */

typedef enum {
    compar_tagNameCompare = 4615226
} compar_enum_t;

/* =============== contig (26 functions) =============== */

typedef enum {
    contig_NULL = 4109603,
    contig_put16bitbwtile = 3745854,
    contig_put1bitbwtile = 2342057,
    contig_put1bitcmaptile = 1720583,
    contig_put2bitbwtile = 9150732,
    contig_put2bitcmaptile = 1459591,
    contig_put4bitbwtile = 9907820,
    contig_put4bitcmaptile = 7079673,
    contig_put8bitcmaptile = 534224,
    contig_putRGBAAcontig16bittile = 500914,
    contig_putRGBAAcontig8bittile = 1572945,
    contig_putRGBUAcontig16bittile = 3669136,
    contig_putRGBUAcontig8bittile = 3904402,
    contig_putRGBcontig16bittile = 8479454,
    contig_putRGBcontig8bitCMYKMaptile = 446199,
    contig_putRGBcontig8bitCMYKtile = 9417129,
    contig_putRGBcontig8bittile = 3336942,
    contig_putagreytile = 9143600,
    contig_putcontig8bitYCbCr11tile = 7039374,
    contig_putcontig8bitYCbCr12tile = 3699379,
    contig_putcontig8bitYCbCr21tile = 7537477,
    contig_putcontig8bitYCbCr22tile = 9887237,
    contig_putcontig8bitYCbCr41tile = 4668265,
    contig_putcontig8bitYCbCr42tile = 110031,
    contig_putcontig8bitYCbCr44tile = 2679638,
    contig_putgreytile = 7091293
} contig_enum_t;

/* =============== dec_decode (3 functions) =============== */

typedef enum {
    dec_decode_LZWDecode = 5709456,
    dec_decode_LZWDecodeCompat = 4662907,
    dec_decode_NULL = 2609513
} dec_decode_enum_t;

/* =============== decodepfunc (9 functions) =============== */

typedef enum {
    decodepfunc_NULL = 3613365,
    decodepfunc_fpAcc = 5648119,
    decodepfunc_horAcc16 = 1715803,
    decodepfunc_horAcc32 = 1557017,
    decodepfunc_horAcc64 = 6375122,
    decodepfunc_horAcc8 = 1623631,
    decodepfunc_swabHorAcc16 = 6023674,
    decodepfunc_swabHorAcc32 = 5771619,
    decodepfunc_swabHorAcc64 = 4438923
} decodepfunc_enum_t;

/* =============== encodepfunc (9 functions) =============== */

typedef enum {
    encodepfunc_NULL = 729977,
    encodepfunc_fpDiff = 7708870,
    encodepfunc_horDiff16 = 8997414,
    encodepfunc_horDiff32 = 2095235,
    encodepfunc_horDiff64 = 6351753,
    encodepfunc_horDiff8 = 1323047,
    encodepfunc_swabHorDiff16 = 9262704,
    encodepfunc_swabHorDiff32 = 4919715,
    encodepfunc_swabHorDiff64 = 6068228
} encodepfunc_enum_t;

/* =============== errorhandler (1 functions) =============== */

typedef enum {
    errorhandler_handler = 9687361
} errorhandler_enum_t;

/* =============== fnEqualFunc (2 functions) =============== */

typedef enum {
    fnEqualFunc_equalFuncNumberToOffset = 3227067,
    fnEqualFunc_equalFuncOffsetToNumber = 1167941
} fnEqualFunc_enum_t;

/* =============== fnFreeEltFunc (2 functions) =============== */

typedef enum {
    fnFreeEltFunc_NULL = 769805,
    fnFreeEltFunc_free = 3824498
} fnFreeEltFunc_enum_t;

/* =============== fnHashFunc (2 functions) =============== */

typedef enum {
    fnHashFunc_hashFuncNumberToOffset = 4856124,
    fnHashFunc_hashFuncOffsetToNumber = 1339687
} fnHashFunc_enum_t;

/* =============== init (1 functions) =============== */

typedef enum {
    init_TIFFInitMethod = 3906582
} init_enum_t;

/* =============== mapproc (2 functions) =============== */

typedef enum {
    mapproc_TIFFMapFileProc = 1695522,
    mapproc__tiffMapProc = 6378459
} mapproc_enum_t;

/* =============== printdir (5 functions) =============== */

typedef enum {
    printdir_Fax3PrintDir = 4664623,
    printdir_JPEGPrintDir = 7607962,
    printdir_NULL = 6121868,
    printdir_OJPEGPrintDir = 2729882,
    printdir_PredictorPrintDir = 6211606
} printdir_enum_t;

/* =============== readproc (2 functions) =============== */

typedef enum {
    readproc_TIFFReadWriteProc = 5961453,
    readproc__tiffReadProc = 3515944
} readproc_enum_t;

/* =============== seekproc (2 functions) =============== */

typedef enum {
    seekproc_TIFFSeekProc = 4480144,
    seekproc__tiffSeekProc = 1198935
} seekproc_enum_t;

/* =============== separate (9 functions) =============== */

typedef enum {
    separate_NULL = 2872230,
    separate_putCMYKseparate8bittile = 8962380,
    separate_putRGBAAseparate16bittile = 4108245,
    separate_putRGBAAseparate8bittile = 2742438,
    separate_putRGBUAseparate16bittile = 7756439,
    separate_putRGBUAseparate8bittile = 6367205,
    separate_putRGBseparate16bittile = 4529972,
    separate_putRGBseparate8bittile = 9345066,
    separate_putseparate8bitYCbCr11tile = 3685531
} separate_enum_t;

/* =============== sizeproc (2 functions) =============== */

typedef enum {
    sizeproc_TIFFSizeProc = 5441561,
    sizeproc__tiffSizeProc = 939483
} sizeproc_enum_t;

/* =============== tfunc (14 functions) =============== */

typedef enum {
    tfunc_L16fromY = 3843788,
    tfunc_L16toGry = 539552,
    tfunc_L16toY = 5293423,
    tfunc_Luv24fromLuv48 = 6731428,
    tfunc_Luv24fromXYZ = 4492946,
    tfunc_Luv24toLuv48 = 1111460,
    tfunc_Luv24toRGB = 3540704,
    tfunc_Luv24toXYZ = 9516702,
    tfunc_Luv32fromLuv48 = 5280418,
    tfunc_Luv32fromXYZ = 3568281,
    tfunc_Luv32toLuv48 = 8376710,
    tfunc_Luv32toRGB = 6638601,
    tfunc_Luv32toXYZ = 7699256,
    tfunc__logLuvNop = 2397987
} tfunc_enum_t;

/* =============== tif_cleanup (12 functions) =============== */

typedef enum {
    tif_cleanup_Fax3Cleanup = 4444951,
    tif_cleanup_JPEGCleanup = 2343608,
    tif_cleanup_LERCCleanup = 4138722,
    tif_cleanup_LZMACleanup = 9419194,
    tif_cleanup_LZWCleanup = 9043538,
    tif_cleanup_LogLuvCleanup = 4409072,
    tif_cleanup_OJPEGCleanup = 9808725,
    tif_cleanup_PixarLogCleanup = 7188926,
    tif_cleanup_TWebPCleanup = 9791057,
    tif_cleanup_ZIPCleanup = 6701828,
    tif_cleanup_ZSTDCleanup = 6074292,
    tif_cleanup__TIFFvoid = 3680591
} tif_cleanup_enum_t;

/* =============== tif_close (4 functions) =============== */

typedef enum {
    tif_close_Fax3Close = 2321821,
    tif_close_LogLuvClose = 8549432,
    tif_close_PixarLogClose = 8280821,
    tif_close__TIFFvoid = 1526206
} tif_close_enum_t;

/* =============== tif_closeproc (1 functions) =============== */

typedef enum {
    tif_closeproc_closeproc = 791481
} tif_closeproc_enum_t;

/* =============== tif_decoderow (24 functions) =============== */

typedef enum {
    tif_decoderow_DecodeRowError = 1840607,
    tif_decoderow_DumpModeDecode = 2565251,
    tif_decoderow_Fax3Decode1D = 2685052,
    tif_decoderow_Fax3Decode2D = 7083668,
    tif_decoderow_Fax3DecodeRLE = 1066818,
    tif_decoderow_Fax4Decode = 6456324,
    tif_decoderow_JPEGDecode = 6403509,
    tif_decoderow_LERCDecode = 9998348,
    tif_decoderow_LZMADecode = 7853574,
    tif_decoderow_LZWDecode = 8878065,
    tif_decoderow_LZWDecodeCompat = 4219028,
    tif_decoderow_LogL16Decode = 9282590,
    tif_decoderow_LogLuvDecode24 = 193619,
    tif_decoderow_LogLuvDecode32 = 1922859,
    tif_decoderow_NeXTDecode = 9009867,
    tif_decoderow_OJPEGDecode = 4477583,
    tif_decoderow_PackBitsDecode = 5708197,
    tif_decoderow_PixarLogDecode = 1872534,
    tif_decoderow_PredictorDecodeRow = 4925115,
    tif_decoderow_TWebPDecode = 7295150,
    tif_decoderow_ThunderDecodeRow = 2654446,
    tif_decoderow_ZIPDecode = 7613220,
    tif_decoderow_ZSTDDecode = 55447,
    tif_decoderow__TIFFNoRowDecode = 4419934
} tif_decoderow_enum_t;

/* =============== tif_decodestrip (23 functions) =============== */

typedef enum {
    tif_decodestrip_DumpModeDecode = 8399441,
    tif_decodestrip_Fax3Decode1D = 2998281,
    tif_decodestrip_Fax3Decode2D = 8518485,
    tif_decodestrip_Fax3DecodeRLE = 1786277,
    tif_decodestrip_Fax4Decode = 5008072,
    tif_decodestrip_JBIGDecode = 8518169,
    tif_decodestrip_JPEGDecode = 3338174,
    tif_decodestrip_JPEGDecodeRaw = 2565217,
    tif_decodestrip_LERCDecode = 6274233,
    tif_decodestrip_LZMADecode = 2711343,
    tif_decodestrip_LZWDecode = 9050278,
    tif_decodestrip_LZWDecodeCompat = 8898858,
    tif_decodestrip_LogLuvDecodeStrip = 10594,
    tif_decodestrip_NeXTDecode = 5439436,
    tif_decodestrip_OJPEGDecode = 8198443,
    tif_decodestrip_PackBitsDecode = 327765,
    tif_decodestrip_PixarLogDecode = 1877828,
    tif_decodestrip_PredictorDecodeTile = 6090806,
    tif_decodestrip_TWebPDecode = 5160230,
    tif_decodestrip_ThunderDecodeRow = 4018343,
    tif_decodestrip_ZIPDecode = 972823,
    tif_decodestrip_ZSTDDecode = 4042154,
    tif_decodestrip__TIFFNoStripDecode = 9519669
} tif_decodestrip_enum_t;

/* =============== tif_decodetile (21 functions) =============== */

typedef enum {
    tif_decodetile_DumpModeDecode = 1322324,
    tif_decodetile_Fax3Decode1D = 1438026,
    tif_decodetile_Fax3Decode2D = 8154566,
    tif_decodetile_Fax3DecodeRLE = 1162193,
    tif_decodetile_Fax4Decode = 8938326,
    tif_decodetile_JPEGDecode = 2110911,
    tif_decodetile_JPEGDecodeRaw = 2155051,
    tif_decodetile_LERCDecode = 7974915,
    tif_decodetile_LZMADecode = 9225173,
    tif_decodetile_LZWDecode = 2771370,
    tif_decodetile_LZWDecodeCompat = 4447912,
    tif_decodetile_LogLuvDecodeTile = 8853897,
    tif_decodetile_NeXTDecode = 7100076,
    tif_decodetile_OJPEGDecode = 3554384,
    tif_decodetile_PackBitsDecode = 9048886,
    tif_decodetile_PixarLogDecode = 3375754,
    tif_decodetile_PredictorDecodeTile = 5230731,
    tif_decodetile_TWebPDecode = 6694979,
    tif_decodetile_ZIPDecode = 6265956,
    tif_decodetile_ZSTDDecode = 7351099,
    tif_decodetile__TIFFNoTileDecode = 8684481
} tif_decodetile_enum_t;

/* =============== tif_defstripsize (2 functions) =============== */

typedef enum {
    tif_defstripsize_JPEGDefaultStripSize = 7575680,
    tif_defstripsize__TIFFDefaultStripSize = 2031113
} tif_defstripsize_enum_t;

/* =============== tif_deftilesize (2 functions) =============== */

typedef enum {
    tif_deftilesize_JPEGDefaultTileSize = 4160166,
    tif_deftilesize__TIFFDefaultTileSize = 3770795
} tif_deftilesize_enum_t;

/* =============== tif_encoderow (19 functions) =============== */

typedef enum {
    tif_encoderow_DumpModeEncode = 1075176,
    tif_encoderow_Fax3Encode = 5673134,
    tif_encoderow_Fax4Encode = 353896,
    tif_encoderow_JPEGEncode = 9871182,
    tif_encoderow_JPEGEncodeRaw = 9294261,
    tif_encoderow_LERCEncode = 3861684,
    tif_encoderow_LZMAEncode = 9873386,
    tif_encoderow_LZWEncode = 3695634,
    tif_encoderow_LogL16Encode = 121642,
    tif_encoderow_LogLuvEncode24 = 1192066,
    tif_encoderow_LogLuvEncode32 = 988737,
    tif_encoderow_OJPEGEncode = 3842005,
    tif_encoderow_PackBitsEncode = 1131789,
    tif_encoderow_PixarLogEncode = 528021,
    tif_encoderow_PredictorEncodeRow = 5544670,
    tif_encoderow_TWebPEncode = 1189789,
    tif_encoderow_ZIPEncode = 8627108,
    tif_encoderow_ZSTDEncode = 3994055,
    tif_encoderow__TIFFNoRowEncode = 4673073
} tif_encoderow_enum_t;

/* =============== tif_encodestrip (18 functions) =============== */

typedef enum {
    tif_encodestrip_DumpModeEncode = 8144903,
    tif_encodestrip_Fax3Encode = 3595297,
    tif_encodestrip_Fax4Encode = 9047844,
    tif_encodestrip_JBIGEncode = 2220824,
    tif_encodestrip_JPEGEncode = 9581513,
    tif_encodestrip_JPEGEncodeRaw = 9668227,
    tif_encodestrip_LERCEncode = 7931103,
    tif_encodestrip_LZMAEncode = 4077817,
    tif_encodestrip_LZWEncode = 7936169,
    tif_encodestrip_LogLuvEncodeStrip = 6830332,
    tif_encodestrip_OJPEGEncode = 3195548,
    tif_encodestrip_PackBitsEncodeChunk = 1583524,
    tif_encodestrip_PixarLogEncode = 1627229,
    tif_encodestrip_PredictorEncodeTile = 7232838,
    tif_encodestrip_TWebPEncode = 5945126,
    tif_encodestrip_ZIPEncode = 7107470,
    tif_encodestrip_ZSTDEncode = 6898151,
    tif_encodestrip__TIFFNoStripEncode = 7836373
} tif_encodestrip_enum_t;

/* =============== tif_encodetile (17 functions) =============== */

typedef enum {
    tif_encodetile_DumpModeEncode = 909841,
    tif_encodetile_Fax3Encode = 1652177,
    tif_encodetile_Fax4Encode = 1017911,
    tif_encodetile_JPEGEncode = 6755864,
    tif_encodetile_JPEGEncodeRaw = 5693553,
    tif_encodetile_LERCEncode = 1834230,
    tif_encodetile_LZMAEncode = 4172761,
    tif_encodetile_LZWEncode = 3215348,
    tif_encodetile_LogLuvEncodeTile = 3192175,
    tif_encodetile_OJPEGEncode = 8998381,
    tif_encodetile_PackBitsEncodeChunk = 7527486,
    tif_encodetile_PixarLogEncode = 2352868,
    tif_encodetile_PredictorEncodeTile = 7078999,
    tif_encodetile_TWebPEncode = 3079418,
    tif_encodetile_ZIPEncode = 4674212,
    tif_encodetile_ZSTDEncode = 7762611,
    tif_encodetile__TIFFNoTileEncode = 4192056
} tif_encodetile_enum_t;

/* =============== tif_fixuptags (14 functions) =============== */

typedef enum {
    tif_fixuptags_DumpFixupTags = 1265748,
    tif_fixuptags_Fax3FixupTags = 7435500,
    tif_fixuptags_JPEGFixupTags = 9233926,
    tif_fixuptags_LERCFixupTags = 1643635,
    tif_fixuptags_LZMAFixupTags = 849731,
    tif_fixuptags_LZWFixupTags = 9070560,
    tif_fixuptags_LogLuvFixupTags = 248595,
    tif_fixuptags_OJPEGFixupTags = 1565689,
    tif_fixuptags_PixarLogFixupTags = 3966789,
    tif_fixuptags_TWebPFixupTags = 2791237,
    tif_fixuptags_ZIPFixupTags = 6819496,
    tif_fixuptags_ZSTDFixupTags = 8148706,
    tif_fixuptags__TIFFNoFixupTags = 8076854,
    tif_fixuptags__notConfigured = 3587084
} tif_fixuptags_enum_t;

/* =============== tif_postdecode (6 functions) =============== */

typedef enum {
    tif_postdecode_OJPEGPostDecode = 6729339,
    tif_postdecode__TIFFNoPostDecode = 984738,
    tif_postdecode__TIFFSwab16BitData = 2763152,
    tif_postdecode__TIFFSwab24BitData = 6359113,
    tif_postdecode__TIFFSwab32BitData = 37161,
    tif_postdecode__TIFFSwab64BitData = 6551190
} tif_postdecode_enum_t;

/* =============== tif_postencode (13 functions) =============== */

typedef enum {
    tif_postencode_Fax3PostEncode = 4450368,
    tif_postencode_Fax4PostEncode = 7634773,
    tif_postencode_JPEGPostEncode = 4786687,
    tif_postencode_LERCPostEncode = 7097887,
    tif_postencode_LZMAPostEncode = 9325245,
    tif_postencode_LZWPostEncode = 8165991,
    tif_postencode_OJPEGPostEncode = 2598059,
    tif_postencode_PackBitsPostEncode = 3186957,
    tif_postencode_PixarLogPostEncode = 4978931,
    tif_postencode_TWebPPostEncode = 3653414,
    tif_postencode_ZIPPostEncode = 982186,
    tif_postencode_ZSTDPostEncode = 9718032,
    tif_postencode__TIFFtrue = 9097526
} tif_postencode_enum_t;

/* =============== tif_predecode (12 functions) =============== */

typedef enum {
    tif_predecode_Fax3PreDecode = 1023698,
    tif_predecode_JPEGPreDecode = 5262415,
    tif_predecode_LERCPreDecode = 960074,
    tif_predecode_LZMAPreDecode = 842248,
    tif_predecode_LZWPreDecode = 9801873,
    tif_predecode_NeXTPreDecode = 8000183,
    tif_predecode_OJPEGPreDecode = 8437429,
    tif_predecode_PixarLogPreDecode = 8911817,
    tif_predecode_TWebPPreDecode = 2642282,
    tif_predecode_ZIPPreDecode = 955280,
    tif_predecode_ZSTDPreDecode = 8520948,
    tif_predecode__TIFFNoPreCode = 1345047
} tif_predecode_enum_t;

/* =============== tif_preencode (12 functions) =============== */

typedef enum {
    tif_preencode_Fax3PreEncode = 3118625,
    tif_preencode_JPEGPreEncode = 1150597,
    tif_preencode_LERCPreEncode = 9984032,
    tif_preencode_LZMAPreEncode = 1141194,
    tif_preencode_LZWPreEncode = 3947066,
    tif_preencode_OJPEGPreEncode = 6775229,
    tif_preencode_PackBitsPreEncode = 2012363,
    tif_preencode_PixarLogPreEncode = 9558567,
    tif_preencode_TWebPPreEncode = 4131808,
    tif_preencode_ZIPPreEncode = 9713650,
    tif_preencode_ZSTDPreEncode = 9975376,
    tif_preencode__TIFFNoPreCode = 667754
} tif_preencode_enum_t;

/* =============== tif_readproc (1 functions) =============== */

typedef enum {
    tif_readproc_readproc = 1376453
} tif_readproc_enum_t;

/* =============== tif_seek (2 functions) =============== */

typedef enum {
    tif_seek_DumpModeSeek = 7034426,
    tif_seek__TIFFNoSeek = 9793396
} tif_seek_enum_t;

/* =============== tif_seekproc (1 functions) =============== */

typedef enum {
    tif_seekproc_seekproc = 9483934
} tif_seekproc_enum_t;

/* =============== tif_setupdecode (16 functions) =============== */

typedef enum {
    tif_setupdecode_Fax3SetupState = 8771838,
    tif_setupdecode_JBIGSetupDecode = 5308805,
    tif_setupdecode_JPEGSetupDecode = 4375922,
    tif_setupdecode_LERCSetupDecode = 3427900,
    tif_setupdecode_LZMASetupDecode = 5272130,
    tif_setupdecode_LZWSetupDecode = 4005485,
    tif_setupdecode_LogLuvSetupDecode = 4457272,
    tif_setupdecode_OJPEGSetupDecode = 6641184,
    tif_setupdecode_PixarLogSetupDecode = 2196773,
    tif_setupdecode_PredictorSetupDecode = 5034115,
    tif_setupdecode_TWebPSetupDecode = 7671955,
    tif_setupdecode_ThunderSetupDecode = 5305573,
    tif_setupdecode_ZIPSetupDecode = 1218071,
    tif_setupdecode_ZSTDSetupDecode = 157287,
    tif_setupdecode__TIFFtrue = 7689755,
    tif_setupdecode__notConfigured = 9446465
} tif_setupdecode_enum_t;

/* =============== tif_setupencode (15 functions) =============== */

typedef enum {
    tif_setupencode_Fax3SetupState = 1678407,
    tif_setupencode_JBIGSetupEncode = 1230110,
    tif_setupencode_JPEGSetupEncode = 9021008,
    tif_setupencode_LERCSetupEncode = 3577135,
    tif_setupencode_LZMASetupEncode = 8488336,
    tif_setupencode_LZWSetupEncode = 4450324,
    tif_setupencode_LogLuvSetupEncode = 2223252,
    tif_setupencode_OJPEGSetupEncode = 5856396,
    tif_setupencode_PixarLogSetupEncode = 1155126,
    tif_setupencode_PredictorSetupEncode = 4099412,
    tif_setupencode_TWebPSetupEncode = 6200635,
    tif_setupencode_ZIPSetupEncode = 4782295,
    tif_setupencode_ZSTDSetupEncode = 2647552,
    tif_setupencode__TIFFtrue = 7352517,
    tif_setupencode__notConfigured = 9114685
} tif_setupencode_enum_t;

/* =============== tif_sizeproc (1 functions) =============== */

typedef enum {
    tif_sizeproc_sizeproc = 5076395
} tif_sizeproc_enum_t;

/* =============== tif_writeproc (1 functions) =============== */

typedef enum {
    tif_writeproc_writeproc = 8875152
} tif_writeproc_enum_t;

/* =============== unmapproc (2 functions) =============== */

typedef enum {
    unmapproc_TIFFUnmapFileProc = 132249,
    unmapproc__tiffUnmapProc = 9305682
} unmapproc_enum_t;

/* =============== vgetfield (12 functions) =============== */

typedef enum {
    vgetfield_Fax3VGetField = 5023741,
    vgetfield_JPEGVGetField = 1738893,
    vgetfield_LERCVGetField = 2254031,
    vgetfield_LZMAVGetField = 4438001,
    vgetfield_LogLuvVGetField = 1937571,
    vgetfield_OJPEGVGetField = 1796765,
    vgetfield_PixarLogVGetField = 9282552,
    vgetfield_PredictorVGetField = 2608983,
    vgetfield_TWebPVGetField = 4570244,
    vgetfield_ZIPVGetField = 4728085,
    vgetfield_ZSTDVGetField = 3534779,
    vgetfield__TIFFVGetField = 5753576
} vgetfield_enum_t;

/* =============== vsetfield (12 functions) =============== */

typedef enum {
    vsetfield_Fax3VSetField = 3416796,
    vsetfield_JPEGVSetField = 4429914,
    vsetfield_LERCVSetField = 8480356,
    vsetfield_LZMAVSetField = 8197204,
    vsetfield_LogLuvVSetField = 4214115,
    vsetfield_OJPEGVSetField = 853264,
    vsetfield_PixarLogVSetField = 1549511,
    vsetfield_PredictorVSetField = 7107422,
    vsetfield_TWebPVSetField = 4642923,
    vsetfield_ZIPVSetField = 740653,
    vsetfield_ZSTDVSetField = 60486,
    vsetfield__TIFFVSetField = 5597150
} vsetfield_enum_t;

/* =============== warnhandler (1 functions) =============== */

typedef enum {
    warnhandler_handler = 2195789
} warnhandler_enum_t;

/* =============== writeproc (2 functions) =============== */

typedef enum {
    writeproc_TIFFReadWriteProc = 4395880,
    writeproc__tiffWriteProc = 2711895
} writeproc_enum_t;

int DecodeRowError(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int DumpFixupTags(TIFF *tif);
int DumpModeDecode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int DumpModeEncode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int DumpModeSeek(TIFF *tif , uint32_t nrows);
void Fax3Cleanup(TIFF *tif);
void Fax3Close(TIFF *tif);
int Fax3Decode1D(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int Fax3Decode2D(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int Fax3DecodeRLE(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int Fax3Encode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int Fax3FixupTags(TIFF *tif);
int Fax3PostEncode(TIFF *tif);
int Fax3PreDecode(TIFF *tif , uint16_t s);
int Fax3PreEncode(TIFF *tif , uint16_t s);
void Fax3PrintDir(TIFF *tif , FILE *fd , long flags);
int Fax3SetupState(TIFF *tif);
int Fax3VGetField(TIFF *tif , uint32_t tag , va_list ap);
int Fax3VSetField(TIFF *tif , uint32_t tag , va_list ap);
int Fax4Decode(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int Fax4Encode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int Fax4PostEncode(TIFF *tif);
int JBIGDecode(TIFF *tif , uint8_t *buffer , tmsize_t size , uint16_t s);
int JBIGEncode(TIFF *tif , uint8_t *buffer , tmsize_t size , uint16_t s);
int JBIGSetupDecode(TIFF *tif);
int JBIGSetupEncode(TIFF *tif);
void JPEGCleanup(TIFF *tif);
int JPEGDecode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int JPEGDecodeRaw(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
uint32_t JPEGDefaultStripSize(TIFF *tif , uint32_t s);
void JPEGDefaultTileSize(TIFF *tif , uint32_t *tw , uint32_t *th);
int JPEGEncode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int JPEGEncodeRaw(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int JPEGFixupTags(TIFF *tif);
int JPEGPostEncode(TIFF *tif);
int JPEGPreDecode(TIFF *tif , uint16_t s);
int JPEGPreEncode(TIFF *tif , uint16_t s);
void JPEGPrintDir(TIFF *tif , FILE *fd , long flags);
int JPEGSetupDecode(TIFF *tif);
int JPEGSetupEncode(TIFF *tif);
int JPEGVGetField(TIFF *tif , uint32_t tag , va_list ap);
int JPEGVSetField(TIFF *tif , uint32_t tag , va_list ap);
void L16fromY(LogLuvState *sp , uint8_t *op , tmsize_t n);
void L16toGry(LogLuvState *sp , uint8_t *op , tmsize_t n);
void L16toY(LogLuvState *sp , uint8_t *op , tmsize_t n);
void LERCCleanup(TIFF *tif);
int LERCDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int LERCEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LERCFixupTags(TIFF *tif);
int LERCPostEncode(TIFF *tif);
int LERCPreDecode(TIFF *tif , uint16_t s);
int LERCPreEncode(TIFF *tif , uint16_t s);
int LERCSetupDecode(TIFF *tif);
int LERCSetupEncode(TIFF *tif);
int LERCVGetField(TIFF *tif , uint32_t tag , va_list ap);
int LERCVSetField(TIFF *tif , uint32_t tag , va_list ap);
void LZMACleanup(TIFF *tif);
int LZMADecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int LZMAEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LZMAFixupTags(TIFF *tif);
int LZMAPostEncode(TIFF *tif);
int LZMAPreDecode(TIFF *tif , uint16_t s);
int LZMAPreEncode(TIFF *tif , uint16_t s);
int LZMASetupDecode(TIFF *tif);
int LZMASetupEncode(TIFF *tif);
int LZMAVGetField(TIFF *tif , uint32_t tag , va_list ap);
int LZMAVSetField(TIFF *tif , uint32_t tag , va_list ap);
void LZWCleanup(TIFF *tif);
int LZWDecode(TIFF *tif , uint8_t *op0 , tmsize_t occ0 , uint16_t s);
int LZWDecodeCompat(TIFF *tif , uint8_t *op0 , tmsize_t occ0 , uint16_t s);
int LZWEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LZWFixupTags(TIFF *tif);
int LZWPostEncode(TIFF *tif);
int LZWPreDecode(TIFF *tif , uint16_t s);
int LZWPreEncode(TIFF *tif , uint16_t s);
int LZWSetupDecode(TIFF *tif);
int LZWSetupEncode(TIFF *tif);
int LogL16Decode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int LogL16Encode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
void LogLuvCleanup(TIFF *tif);
void LogLuvClose(TIFF *tif);
int LogLuvDecode24(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int LogLuvDecode32(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int LogLuvDecodeStrip(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvDecodeTile(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvEncode24(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvEncode32(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvEncodeStrip(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvEncodeTile(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int LogLuvFixupTags(TIFF *tif);
int LogLuvSetupDecode(TIFF *tif);
int LogLuvSetupEncode(TIFF *tif);
int LogLuvVGetField(TIFF *tif , uint32_t tag , va_list ap);
int LogLuvVSetField(TIFF *tif , uint32_t tag , va_list ap);
void Luv24fromLuv48(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv24fromXYZ(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv24toLuv48(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv24toRGB(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv24toXYZ(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv32fromLuv48(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv32fromXYZ(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv32toLuv48(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv32toRGB(LogLuvState *sp , uint8_t *op , tmsize_t n);
void Luv32toXYZ(LogLuvState *sp , uint8_t *op , tmsize_t n);
int NeXTDecode(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int NeXTPreDecode(TIFF *tif , uint16_t s);
void OJPEGCleanup(TIFF *tif);
int OJPEGDecode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int OJPEGEncode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int OJPEGFixupTags(TIFF *tif);
void OJPEGPostDecode(TIFF *tif , uint8_t *buf , tmsize_t cc);
int OJPEGPostEncode(TIFF *tif);
int OJPEGPreDecode(TIFF *tif , uint16_t s);
int OJPEGPreEncode(TIFF *tif , uint16_t s);
void OJPEGPrintDir(TIFF *tif , FILE *fd , long flags);
int OJPEGSetupDecode(TIFF *tif);
int OJPEGSetupEncode(TIFF *tif);
int OJPEGVGetField(TIFF *tif , uint32_t tag , va_list ap);
int OJPEGVSetField(TIFF *tif , uint32_t tag , va_list ap);
int PackBitsDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int PackBitsEncode(TIFF *tif , uint8_t *buf , tmsize_t cc , uint16_t s);
int PackBitsEncodeChunk(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int PackBitsPostEncode(TIFF *tif);
int PackBitsPreEncode(TIFF *tif , uint16_t s);
void PixarLogCleanup(TIFF *tif);
void PixarLogClose(TIFF *tif);
int PixarLogDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int PixarLogEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int PixarLogFixupTags(TIFF *tif);
int PixarLogPostEncode(TIFF *tif);
int PixarLogPreDecode(TIFF *tif , uint16_t s);
int PixarLogPreEncode(TIFF *tif , uint16_t s);
int PixarLogSetupDecode(TIFF *tif);
int PixarLogSetupEncode(TIFF *tif);
int PixarLogVGetField(TIFF *tif , uint32_t tag , va_list ap);
int PixarLogVSetField(TIFF *tif , uint32_t tag , va_list ap);
int PredictorDecodeRow(TIFF *tif , uint8_t *op0 , tmsize_t occ0 , uint16_t s);
int PredictorDecodeTile(TIFF *tif , uint8_t *op0 , tmsize_t occ0 , uint16_t s);
int PredictorEncodeRow(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int PredictorEncodeTile(TIFF *tif , uint8_t *bp0 , tmsize_t cc0 , uint16_t s);
void PredictorPrintDir(TIFF *tif , FILE *fd , long flags);
int PredictorSetupDecode(TIFF *tif);
int PredictorSetupEncode(TIFF *tif);
int PredictorVGetField(TIFF *tif , uint32_t tag , va_list ap);
int PredictorVSetField(TIFF *tif , uint32_t tag , va_list ap);
void TWebPCleanup(TIFF *tif);
int TWebPDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int TWebPEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int TWebPFixupTags(TIFF *tif);
int TWebPPostEncode(TIFF *tif);
int TWebPPreDecode(TIFF *tif , uint16_t s);
int TWebPPreEncode(TIFF *tif , uint16_t s);
int TWebPSetupDecode(TIFF *tif);
int TWebPSetupEncode(TIFF *tif);
int TWebPVGetField(TIFF *tif , uint32_t tag , va_list ap);
int TWebPVSetField(TIFF *tif , uint32_t tag , va_list ap);
int ThunderDecodeRow(TIFF *tif , uint8_t *buf , tmsize_t occ , uint16_t s);
int ThunderSetupDecode(TIFF *tif);
void ZIPCleanup(TIFF *tif);
int ZIPDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int ZIPEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int ZIPFixupTags(TIFF *tif);
int ZIPPostEncode(TIFF *tif);
int ZIPPreDecode(TIFF *tif , uint16_t s);
int ZIPPreEncode(TIFF *tif , uint16_t s);
int ZIPSetupDecode(TIFF *tif);
int ZIPSetupEncode(TIFF *tif);
int ZIPVGetField(TIFF *tif , uint32_t tag , va_list ap);
int ZIPVSetField(TIFF *tif , uint32_t tag , va_list ap);
void ZSTDCleanup(TIFF *tif);
int ZSTDDecode(TIFF *tif , uint8_t *op , tmsize_t occ , uint16_t s);
int ZSTDEncode(TIFF *tif , uint8_t *bp , tmsize_t cc , uint16_t s);
int ZSTDFixupTags(TIFF *tif);
int ZSTDPostEncode(TIFF *tif);
int ZSTDPreDecode(TIFF *tif , uint16_t s);
int ZSTDPreEncode(TIFF *tif , uint16_t s);
int ZSTDSetupDecode(TIFF *tif);
int ZSTDSetupEncode(TIFF *tif);
int ZSTDVGetField(TIFF *tif , uint32_t tag , va_list ap);
int ZSTDVSetField(TIFF *tif , uint32_t tag , va_list ap);
uint32_t _TIFFDefaultStripSize(TIFF *tif , uint32_t s);
void _TIFFDefaultTileSize(TIFF *tif , uint32_t *tw , uint32_t *th);
int _TIFFNoFixupTags(TIFF *tif);
void _TIFFNoPostDecode(TIFF *tif , uint8_t *buf , tmsize_t cc);
int _TIFFNoPreCode(TIFF *tif , uint16_t s);
int _TIFFNoRowDecode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int _TIFFNoRowEncode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int _TIFFNoSeek(TIFF *tif , uint32_t off);
int _TIFFNoStripDecode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int _TIFFNoStripEncode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int _TIFFNoTileDecode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
int _TIFFNoTileEncode(TIFF *tif , uint8_t *pp , tmsize_t cc , uint16_t s);
void _TIFFSwab16BitData(TIFF *tif , uint8_t *buf , tmsize_t cc);
void _TIFFSwab24BitData(TIFF *tif , uint8_t *buf , tmsize_t cc);
void _TIFFSwab32BitData(TIFF *tif , uint8_t *buf , tmsize_t cc);
void _TIFFSwab64BitData(TIFF *tif , uint8_t *buf , tmsize_t cc);
int _TIFFVGetField(TIFF *tif , uint32_t tag , va_list ap);
int _TIFFVSetField(TIFF *tif , uint32_t tag , va_list ap);
int _TIFFtrue(TIFF *tif);
void _TIFFvoid(TIFF *tif);
void _logLuvNop(LogLuvState *sp , uint8_t *op , tmsize_t n);
int _notConfigured(TIFF *tif);
int fpAcc(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int fpDiff(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horAcc16(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horAcc32(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horAcc64(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horAcc8(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horDiff16(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horDiff32(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horDiff64(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int horDiff8(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorAcc16(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorAcc32(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorAcc64(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorDiff16(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorDiff32(TIFF *tif , uint8_t *cp0 , tmsize_t cc);
int swabHorDiff64(TIFF *tif , uint8_t *cp0 , tmsize_t cc);


#endif /* LIBTIFF_SIGNATURES_H */
