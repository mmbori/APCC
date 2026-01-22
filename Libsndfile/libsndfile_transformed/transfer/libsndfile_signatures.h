#ifndef LIBSNDFILE_SIGNATURES_H
#define LIBSNDFILE_SIGNATURES_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 29
 * Total unique (fp, func) pairs: 437
 */

#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>

/* Forward declarations */
typedef struct sf_private_tag  SF_PRIVATE;
typedef	struct SF_CHUNK_ITERATOR SF_CHUNK_ITERATOR ;
typedef struct IMA_ADPCM_PRIVATE_tag  IMA_ADPCM_PRIVATE;
typedef struct SF_CHUNK_INFO SF_CHUNK_INFO ;
typedef struct tag_SDS_PRIVATE SDS_PRIVATE ;
typedef struct g72x_state G72x_STATE ;
typedef struct gsm610_tag GSM610_PRIVATE ;

typedef int64_t			sf_count_t ;

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

/* =============== byterate (8 functions) =============== */

typedef enum {
    byterate_alac_byterate = 1868825,
    byterate_dwvw_byterate = 420610,
    byterate_flac_byterate = 4615226,
    byterate_mpeg_dec_byterate = 4109603,
    byterate_mpeg_l3_encoder_byterate = 3745854,
    byterate_ogg_opus_byterate = 2342057,
    byterate_sds_byterate = 1720583,
    byterate_vorbis_byterate = 9150732
} byterate_enum_t;

/* =============== codec_close (14 functions) =============== */

typedef enum {
    codec_close_NULL = 1459591,
    codec_close_alac_close = 9907820,
    codec_close_dwvw_close = 7079673,
    codec_close_g72x_close = 534224,
    codec_close_gsm610_close = 500914,
    codec_close_ima_close = 1572945,
    codec_close_mpeg_dec_close = 3669136,
    codec_close_mpeg_l3_encoder_close = 3904402,
    codec_close_msadpcm_close = 8479454,
    codec_close_nms_adpcm_close = 446199,
    codec_close_ogg_opus_close = 9417129,
    codec_close_opcm_close = 3336942,
    codec_close_spx_close = 9143600,
    codec_close_vorbis_close = 7039374
} codec_close_enum_t;

/* =============== command (10 functions) =============== */

typedef enum {
    command_aiff_command = 3699379,
    command_caf_command = 7537477,
    command_flac_command = 9887237,
    command_mpeg_command = 4668265,
    command_ogg_opus_command = 110031,
    command_opcm_command = 2679638,
    command_rf64_command = 7091293,
    command_spx_command = 5709456,
    command_vorbis_command = 4662907,
    command_wav_command = 2609513
} command_enum_t;

/* =============== container_close (26 functions) =============== */

typedef enum {
    container_close_NULL = 3613365,
    container_close_aiff_close = 5648119,
    container_close_au_close = 1715803,
    container_close_avr_close = 1557017,
    container_close_caf_close = 6375122,
    container_close_dwd_close = 1623631,
    container_close_flac_close = 6023674,
    container_close_htk_close = 5771619,
    container_close_ircam_close = 4438923,
    container_close_mat4_close = 729977,
    container_close_mat5_close = 7708870,
    container_close_mpc2k_close = 8997414,
    container_close_nist_close = 2095235,
    container_close_ogg_close = 6351753,
    container_close_paf24_close = 1323047,
    container_close_pvf_close = 9262704,
    container_close_rf64_close = 4919715,
    container_close_rx2_close = 6068228,
    container_close_sd2_close = 9687361,
    container_close_sds_close = 3227067,
    container_close_svx_close = 1167941,
    container_close_voc_close = 769805,
    container_close_w64_close = 3824498,
    container_close_wav_close = 4856124,
    container_close_wve_close = 1339687,
    container_close_xi_close = 3906582
} container_close_enum_t;

/* =============== decode_block (4 functions) =============== */

typedef enum {
    decode_block_aiff_ima_decode_block = 1695522,
    decode_block_gsm610_decode_block = 6378459,
    decode_block_gsm610_wav_decode_block = 4664623,
    decode_block_wavlike_ima_decode_block = 7607962
} decode_block_enum_t;

/* =============== decoder (5 functions) =============== */

typedef enum {
    decoder_NULL = 6121868,
    decoder_g721_decoder = 2729882,
    decoder_g723_16_decoder = 6211606,
    decoder_g723_24_decoder = 5961453,
    decoder_g723_40_decoder = 3515944
} decoder_enum_t;

/* =============== encode_block (4 functions) =============== */

typedef enum {
    encode_block_aiff_ima_encode_block = 4480144,
    encode_block_gsm610_encode_block = 1198935,
    encode_block_gsm610_wav_encode_block = 2872230,
    encode_block_wavlike_ima_encode_block = 8962380
} encode_block_enum_t;

/* =============== encoder (5 functions) =============== */

typedef enum {
    encoder_NULL = 4108245,
    encoder_g721_encoder = 2742438,
    encoder_g723_16_encoder = 7756439,
    encoder_g723_24_encoder = 6367205,
    encoder_g723_40_encoder = 4529972
} encoder_enum_t;

/* =============== get_chunk_data (4 functions) =============== */

typedef enum {
    get_chunk_data_aiff_get_chunk_data = 9345066,
    get_chunk_data_caf_get_chunk_data = 3685531,
    get_chunk_data_rf64_get_chunk_data = 5441561,
    get_chunk_data_wav_get_chunk_data = 939483
} get_chunk_data_enum_t;

/* =============== get_chunk_size (4 functions) =============== */

typedef enum {
    get_chunk_size_aiff_get_chunk_size = 3843788,
    get_chunk_size_caf_get_chunk_size = 539552,
    get_chunk_size_rf64_get_chunk_size = 5293423,
    get_chunk_size_wav_get_chunk_size = 6731428
} get_chunk_size_enum_t;

/* =============== get_filelen (1 functions) =============== */

typedef enum {
    get_filelen_vfget_filelen = 4492946
} get_filelen_enum_t;

/* =============== next_chunk_iterator (4 functions) =============== */

typedef enum {
    next_chunk_iterator_aiff_next_chunk_iterator = 1111460,
    next_chunk_iterator_caf_next_chunk_iterator = 3540704,
    next_chunk_iterator_rf64_next_chunk_iterator = 9516702,
    next_chunk_iterator_wav_next_chunk_iterator = 5280418
} next_chunk_iterator_enum_t;

/* =============== read (1 functions) =============== */

typedef enum {
    read_vfread = 3568281
} read_enum_t;

/* =============== read_double (36 functions) =============== */

typedef enum {
    read_double_alac_read_d = 8376710,
    read_double_alaw_read_alaw2d = 6638601,
    read_double_dpcm_read_dles2d = 7699256,
    read_double_dpcm_read_dsc2d = 2397987,
    read_double_dwvw_read_d = 4444951,
    read_double_flac_read_flac2d = 2343608,
    read_double_g72x_read_d = 4138722,
    read_double_gsm610_read_d = 9419194,
    read_double_host_read_d = 9043538,
    read_double_host_read_f2d = 4409072,
    read_double_ima_read_d = 9808725,
    read_double_interleave_read_double = 7188926,
    read_double_mpeg_dec_read_d = 9791057,
    read_double_msadpcm_read_d = 6701828,
    read_double_nms_adpcm_read_d = 6074292,
    read_double_ogg_opus_read_d = 3680591,
    read_double_opcm_read_d = 2321821,
    read_double_paf24_read_d = 8549432,
    read_double_pcm_read_bei2d = 8280821,
    read_double_pcm_read_bes2d = 1526206,
    read_double_pcm_read_bet2d = 791481,
    read_double_pcm_read_lei2d = 1840607,
    read_double_pcm_read_les2d = 2565251,
    read_double_pcm_read_let2d = 2685052,
    read_double_pcm_read_sc2d = 7083668,
    read_double_pcm_read_uc2d = 1066818,
    read_double_replace_read_d = 6456324,
    read_double_replace_read_f2d = 6403509,
    read_double_sds_read_d = 9998348,
    read_double_spx_read_d = 7853574,
    read_double_txw_read_d = 8878065,
    read_double_ulaw_read_ulaw2d = 4219028,
    read_double_voc_multi_read_les2d = 9282590,
    read_double_voc_multi_read_uc2d = 193619,
    read_double_vorbis_read_d = 1922859,
    read_double_vox_read_d = 9009867
} read_double_enum_t;

/* =============== read_float (36 functions) =============== */

typedef enum {
    read_float_alac_read_f = 4477583,
    read_float_alaw_read_alaw2f = 5708197,
    read_float_dpcm_read_dles2f = 1872534,
    read_float_dpcm_read_dsc2f = 4925115,
    read_float_dwvw_read_f = 7295150,
    read_float_flac_read_flac2f = 2654446,
    read_float_g72x_read_f = 7613220,
    read_float_gsm610_read_f = 55447,
    read_float_host_read_d2f = 4419934,
    read_float_host_read_f = 8399441,
    read_float_ima_read_f = 2998281,
    read_float_interleave_read_float = 8518485,
    read_float_mpeg_dec_read_f = 1786277,
    read_float_msadpcm_read_f = 5008072,
    read_float_nms_adpcm_read_f = 8518169,
    read_float_ogg_opus_read_f = 3338174,
    read_float_opcm_read_f = 2565217,
    read_float_paf24_read_f = 6274233,
    read_float_pcm_read_bei2f = 2711343,
    read_float_pcm_read_bes2f = 9050278,
    read_float_pcm_read_bet2f = 8898858,
    read_float_pcm_read_lei2f = 10594,
    read_float_pcm_read_les2f = 5439436,
    read_float_pcm_read_let2f = 8198443,
    read_float_pcm_read_sc2f = 327765,
    read_float_pcm_read_uc2f = 1877828,
    read_float_replace_read_d2f = 6090806,
    read_float_replace_read_f = 5160230,
    read_float_sds_read_f = 4018343,
    read_float_spx_read_f = 972823,
    read_float_txw_read_f = 4042154,
    read_float_ulaw_read_ulaw2f = 9519669,
    read_float_voc_multi_read_les2f = 1322324,
    read_float_voc_multi_read_uc2f = 1438026,
    read_float_vorbis_read_f = 8154566,
    read_float_vox_read_f = 1162193
} read_float_enum_t;

/* =============== read_int (37 functions) =============== */

typedef enum {
    read_int_alac_read_i = 8938326,
    read_int_alaw_read_alaw2i = 2110911,
    read_int_dither_read_int = 2155051,
    read_int_dpcm_read_dles2i = 7974915,
    read_int_dpcm_read_dsc2i = 9225173,
    read_int_dwvw_read_i = 2771370,
    read_int_flac_read_flac2i = 4447912,
    read_int_g72x_read_i = 8853897,
    read_int_gsm610_read_i = 7100076,
    read_int_host_read_d2i = 3554384,
    read_int_host_read_f2i = 9048886,
    read_int_ima_read_i = 3375754,
    read_int_interleave_read_int = 5230731,
    read_int_mpeg_dec_read_i = 6694979,
    read_int_msadpcm_read_i = 6265956,
    read_int_nms_adpcm_read_i = 7351099,
    read_int_ogg_opus_read_i = 8684481,
    read_int_opcm_read_i = 7575680,
    read_int_paf24_read_i = 2031113,
    read_int_pcm_read_bei2i = 4160166,
    read_int_pcm_read_bes2i = 3770795,
    read_int_pcm_read_bet2i = 1075176,
    read_int_pcm_read_lei2i = 5673134,
    read_int_pcm_read_les2i = 353896,
    read_int_pcm_read_let2i = 9871182,
    read_int_pcm_read_sc2i = 9294261,
    read_int_pcm_read_uc2i = 3861684,
    read_int_replace_read_d2i = 9873386,
    read_int_replace_read_f2i = 3695634,
    read_int_sds_read_i = 121642,
    read_int_spx_read_i = 1192066,
    read_int_txw_read_i = 988737,
    read_int_ulaw_read_ulaw2i = 3842005,
    read_int_voc_multi_read_les2i = 1131789,
    read_int_voc_multi_read_uc2i = 528021,
    read_int_vorbis_read_i = 5544670,
    read_int_vox_read_i = 1189789
} read_int_enum_t;

/* =============== read_short (37 functions) =============== */

typedef enum {
    read_short_alac_read_s = 8627108,
    read_short_alaw_read_alaw2s = 3994055,
    read_short_dither_read_short = 4673073,
    read_short_dpcm_read_dles2s = 8144903,
    read_short_dpcm_read_dsc2s = 3595297,
    read_short_dwvw_read_s = 9047844,
    read_short_flac_read_flac2s = 2220824,
    read_short_g72x_read_s = 9581513,
    read_short_gsm610_read_s = 9668227,
    read_short_host_read_d2s = 7931103,
    read_short_host_read_f2s = 4077817,
    read_short_ima_read_s = 7936169,
    read_short_interleave_read_short = 6830332,
    read_short_mpeg_dec_read_s = 3195548,
    read_short_msadpcm_read_s = 1583524,
    read_short_nms_adpcm_read_s = 1627229,
    read_short_ogg_opus_read_s = 7232838,
    read_short_opcm_read_s = 5945126,
    read_short_paf24_read_s = 7107470,
    read_short_pcm_read_bei2s = 6898151,
    read_short_pcm_read_bes2s = 7836373,
    read_short_pcm_read_bet2s = 909841,
    read_short_pcm_read_lei2s = 1652177,
    read_short_pcm_read_les2s = 1017911,
    read_short_pcm_read_let2s = 6755864,
    read_short_pcm_read_sc2s = 5693553,
    read_short_pcm_read_uc2s = 1834230,
    read_short_replace_read_d2s = 4172761,
    read_short_replace_read_f2s = 3215348,
    read_short_sds_read_s = 3192175,
    read_short_spx_read_s = 8998381,
    read_short_txw_read_s = 7527486,
    read_short_ulaw_read_ulaw2s = 2352868,
    read_short_voc_multi_read_les2s = 7078999,
    read_short_voc_multi_read_uc2s = 3079418,
    read_short_vorbis_read_s = 4674212,
    read_short_vox_read_s = 7762611
} read_short_enum_t;

/* =============== reader (3 functions) =============== */

typedef enum {
    reader_sds_2byte_read = 4192056,
    reader_sds_3byte_read = 1265748,
    reader_sds_4byte_read = 7435500
} reader_enum_t;

/* =============== seek (21 functions) =============== */

typedef enum {
    seek_aiff_ima_seek = 9233926,
    seek_alac_seek = 1643635,
    seek_dpcm_seek = 849731,
    seek_dwvw_seek = 9070560,
    seek_flac_seek = 248595,
    seek_g72x_seek = 1565689,
    seek_gsm610_seek = 3966789,
    seek_interleave_seek = 2791237,
    seek_mpeg_dec_seek = 6819496,
    seek_msadpcm_seek = 8148706,
    seek_nms_adpcm_seek = 8076854,
    seek_ogg_opus_seek = 3587084,
    seek_opcm_seek = 6729339,
    seek_paf24_seek = 984738,
    seek_psf_default_seek = 2763152,
    seek_sds_seek = 6359113,
    seek_spx_seek = 37161,
    seek_txw_seek = 6551190,
    seek_vfseek = 4450368,
    seek_vorbis_seek = 7634773,
    seek_wavlike_ima_seek = 4786687
} seek_enum_t;

/* =============== set_chunk (4 functions) =============== */

typedef enum {
    set_chunk_aiff_set_chunk = 7097887,
    set_chunk_caf_set_chunk = 9325245,
    set_chunk_rf64_set_chunk = 8165991,
    set_chunk_wav_set_chunk = 2598059
} set_chunk_enum_t;

/* =============== tell (1 functions) =============== */

typedef enum {
    tell_vftell = 3186957
} tell_enum_t;

/* =============== transfn (5 functions) =============== */

typedef enum {
    transfn_vorbis_rdouble = 4978931,
    transfn_vorbis_rfloat = 3653414,
    transfn_vorbis_rint = 982186,
    transfn_vorbis_rnull = 9718032,
    transfn_vorbis_rshort = 9097526
} transfn_enum_t;

/* =============== write (1 functions) =============== */

typedef enum {
    write_vfwrite = 1023698
} write_enum_t;

/* =============== write_double (34 functions) =============== */

typedef enum {
    write_double_alac_write_d = 5262415,
    write_double_alaw_write_d2alaw = 960074,
    write_double_dither_write_double = 842248,
    write_double_dpcm_write_d2dles = 9801873,
    write_double_dpcm_write_d2dsc = 8000183,
    write_double_dwvw_write_d = 8437429,
    write_double_flac_write_d2flac = 8911817,
    write_double_g72x_write_d = 2642282,
    write_double_gsm610_write_d = 955280,
    write_double_host_write_d = 8520948,
    write_double_host_write_d2f = 1345047,
    write_double_ima_write_d = 3118625,
    write_double_mpeg_l3_encode_write_double_mono = 1150597,
    write_double_mpeg_l3_encode_write_double_stereo = 9984032,
    write_double_msadpcm_write_d = 1141194,
    write_double_nms_adpcm_write_d = 3947066,
    write_double_ogg_opus_write_d = 6775229,
    write_double_opcm_write_d = 2012363,
    write_double_paf24_write_d = 9558567,
    write_double_pcm_write_d2bei = 4131808,
    write_double_pcm_write_d2bes = 9713650,
    write_double_pcm_write_d2bet = 9975376,
    write_double_pcm_write_d2lei = 667754,
    write_double_pcm_write_d2les = 1376453,
    write_double_pcm_write_d2let = 7034426,
    write_double_pcm_write_d2sc = 9793396,
    write_double_pcm_write_d2uc = 9483934,
    write_double_replace_write_d = 8771838,
    write_double_replace_write_d2f = 5308805,
    write_double_sds_write_d = 4375922,
    write_double_spx_write_d = 3427900,
    write_double_ulaw_write_d2ulaw = 5272130,
    write_double_vorbis_write_d = 4005485,
    write_double_vox_write_d = 4457272
} write_double_enum_t;

/* =============== write_float (34 functions) =============== */

typedef enum {
    write_float_alac_write_f = 6641184,
    write_float_alaw_write_f2alaw = 2196773,
    write_float_dither_write_float = 5034115,
    write_float_dpcm_write_f2dles = 7671955,
    write_float_dpcm_write_f2dsc = 5305573,
    write_float_dwvw_write_f = 1218071,
    write_float_flac_write_f2flac = 157287,
    write_float_g72x_write_f = 7689755,
    write_float_gsm610_write_f = 9446465,
    write_float_host_write_f = 1678407,
    write_float_host_write_f2d = 1230110,
    write_float_ima_write_f = 9021008,
    write_float_mpeg_l3_encode_write_float_mono = 3577135,
    write_float_mpeg_l3_encode_write_float_stereo = 8488336,
    write_float_msadpcm_write_f = 4450324,
    write_float_nms_adpcm_write_f = 2223252,
    write_float_ogg_opus_write_f = 5856396,
    write_float_opcm_write_f = 1155126,
    write_float_paf24_write_f = 4099412,
    write_float_pcm_write_f2bei = 6200635,
    write_float_pcm_write_f2bes = 4782295,
    write_float_pcm_write_f2bet = 2647552,
    write_float_pcm_write_f2lei = 7352517,
    write_float_pcm_write_f2les = 9114685,
    write_float_pcm_write_f2let = 5076395,
    write_float_pcm_write_f2sc = 8875152,
    write_float_pcm_write_f2uc = 132249,
    write_float_replace_write_f = 9305682,
    write_float_replace_write_f2d = 5023741,
    write_float_sds_write_f = 1738893,
    write_float_spx_write_f = 2254031,
    write_float_ulaw_write_f2ulaw = 4438001,
    write_float_vorbis_write_f = 1937571,
    write_float_vox_write_f = 1796765
} write_float_enum_t;

/* =============== write_header (27 functions) =============== */

typedef enum {
    write_header_NULL = 9282552,
    write_header_aiff_write_header = 2608983,
    write_header_au_write_header = 4570244,
    write_header_avr_write_header = 4728085,
    write_header_caf_write_header = 3534779,
    write_header_flac_write_header = 5753576,
    write_header_htk_write_header = 3416796,
    write_header_ircam_write_header = 4429914,
    write_header_mat4_write_header = 8480356,
    write_header_mat5_write_header = 8197204,
    write_header_mpc2k_write_header = 4214115,
    write_header_mpeg_write_header = 853264,
    write_header_nist_write_header = 1549511,
    write_header_ogg_opus_write_header = 7107422,
    write_header_opcm_write_header = 4642923,
    write_header_paf_write_header = 740653,
    write_header_pvf_write_header = 60486,
    write_header_rf64_write_header = 5597150,
    write_header_sds_write_header = 2195789,
    write_header_spx_write_header = 4395880,
    write_header_svx_write_header = 2711895,
    write_header_voc_write_header = 7413769,
    write_header_vorbis_write_header = 9256661,
    write_header_w64_write_header = 7176395,
    write_header_wav_write_header = 9411455,
    write_header_wve_write_header = 163230,
    write_header_xi_write_header = 1877932
} write_header_enum_t;

/* =============== write_int (34 functions) =============== */

typedef enum {
    write_int_alac_write_i = 1263382,
    write_int_alaw_write_i2alaw = 2501715,
    write_int_dither_write_int = 9154486,
    write_int_dpcm_write_i2dles = 605451,
    write_int_dpcm_write_i2dsc = 6195416,
    write_int_dwvw_write_i = 9773888,
    write_int_flac_write_i2flac = 9270832,
    write_int_g72x_write_i = 2485601,
    write_int_gsm610_write_i = 7211624,
    write_int_host_write_i2d = 2139181,
    write_int_host_write_i2f = 702771,
    write_int_ima_write_i = 5172716,
    write_int_mpeg_l3_encode_write_int_mono = 6118837,
    write_int_mpeg_l3_encode_write_int_stereo = 670324,
    write_int_msadpcm_write_i = 6004042,
    write_int_nms_adpcm_write_i = 3525499,
    write_int_ogg_opus_write_i = 4187414,
    write_int_opcm_write_i = 1725590,
    write_int_paf24_write_i = 5934742,
    write_int_pcm_write_i2bei = 9394286,
    write_int_pcm_write_i2bes = 6818881,
    write_int_pcm_write_i2bet = 2593974,
    write_int_pcm_write_i2lei = 3972793,
    write_int_pcm_write_i2les = 2727327,
    write_int_pcm_write_i2let = 2971445,
    write_int_pcm_write_i2sc = 6918152,
    write_int_pcm_write_i2uc = 416846,
    write_int_replace_write_i2d = 3010172,
    write_int_replace_write_i2f = 5574147,
    write_int_sds_write_i = 6908400,
    write_int_spx_write_i = 4164555,
    write_int_ulaw_write_i2ulaw = 4477257,
    write_int_vorbis_write_i = 2671896,
    write_int_vox_write_i = 1814543
} write_int_enum_t;

/* =============== write_short (34 functions) =============== */

typedef enum {
    write_short_alac_write_s = 6418985,
    write_short_alaw_write_s2alaw = 650691,
    write_short_dither_write_short = 7897868,
    write_short_dpcm_write_s2dles = 3732818,
    write_short_dpcm_write_s2dsc = 3349276,
    write_short_dwvw_write_s = 7723606,
    write_short_flac_write_s2flac = 5867294,
    write_short_g72x_write_s = 5121253,
    write_short_gsm610_write_s = 3819418,
    write_short_host_write_s2d = 3741036,
    write_short_host_write_s2f = 398023,
    write_short_ima_write_s = 3241180,
    write_short_mpeg_l3_encode_write_short_mono = 6686149,
    write_short_mpeg_l3_encode_write_short_stereo = 5508321,
    write_short_msadpcm_write_s = 4675183,
    write_short_nms_adpcm_write_s = 1165686,
    write_short_ogg_opus_write_s = 4683940,
    write_short_opcm_write_s = 5892254,
    write_short_paf24_write_s = 8547409,
    write_short_pcm_write_s2bei = 6706490,
    write_short_pcm_write_s2bes = 8997207,
    write_short_pcm_write_s2bet = 5556772,
    write_short_pcm_write_s2lei = 464060,
    write_short_pcm_write_s2les = 1936113,
    write_short_pcm_write_s2let = 4383463,
    write_short_pcm_write_s2sc = 2996870,
    write_short_pcm_write_s2uc = 9741679,
    write_short_replace_write_s2d = 4454786,
    write_short_replace_write_s2f = 642849,
    write_short_sds_write_s = 1819692,
    write_short_spx_write_s = 7291770,
    write_short_ulaw_write_s2ulaw = 5800667,
    write_short_vorbis_write_s = 5263632,
    write_short_vox_write_s = 7322474
} write_short_enum_t;

/* =============== writer (3 functions) =============== */

typedef enum {
    writer_sds_2byte_write = 8581255,
    writer_sds_3byte_write = 1941214,
    writer_sds_4byte_write = 6463506
} writer_enum_t;

int aiff_close(SF_PRIVATE *psf);
int aiff_command(SF_PRIVATE *psf, int command, void *data, int datasize);
int aiff_get_chunk_data(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
int aiff_get_chunk_size(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
int aiff_ima_decode_block(SF_PRIVATE *psf , IMA_ADPCM_PRIVATE *pima);
int aiff_ima_encode_block(SF_PRIVATE *psf , IMA_ADPCM_PRIVATE *pima);
sf_count_t aiff_ima_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
SF_CHUNK_ITERATOR *aiff_next_chunk_iterator(SF_PRIVATE *psf , SF_CHUNK_ITERATOR *iterator);
int aiff_set_chunk(SF_PRIVATE *psf , const SF_CHUNK_INFO *chunk_info);
int aiff_write_header(SF_PRIVATE *psf , int calc_length);
int alac_byterate(SF_PRIVATE *psf);
int alac_close(SF_PRIVATE *psf);
sf_count_t alac_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t alac_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t alac_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t alac_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t alac_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t alac_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t alac_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t alac_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t alac_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t alaw_read_alaw2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t alaw_read_alaw2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t alaw_read_alaw2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t alaw_read_alaw2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t alaw_write_d2alaw(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t alaw_write_f2alaw(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t alaw_write_i2alaw(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t alaw_write_s2alaw(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int au_close(SF_PRIVATE *psf);
int au_write_header(SF_PRIVATE *psf , int calc_length);
int avr_close(SF_PRIVATE *psf);
int avr_write_header(SF_PRIVATE *psf , int calc_length);
int caf_close(SF_PRIVATE *psf);
int caf_command(SF_PRIVATE *psf, int command, void *data, int datasize);
int caf_get_chunk_data(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
int caf_get_chunk_size(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
SF_CHUNK_ITERATOR *caf_next_chunk_iterator(SF_PRIVATE *psf , SF_CHUNK_ITERATOR *iterator);
int caf_set_chunk(SF_PRIVATE *psf , const SF_CHUNK_INFO *chunk_info);
int caf_write_header(SF_PRIVATE *psf , int calc_length);
sf_count_t dither_read_int(SF_PRIVATE *psf, int *ptr, sf_count_t len);
sf_count_t dither_read_short(SF_PRIVATE *psf, short *ptr, sf_count_t len);
sf_count_t dither_write_double(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t dither_write_float(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t dither_write_int(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t dither_write_short(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t dpcm_read_dles2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t dpcm_read_dles2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t dpcm_read_dles2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t dpcm_read_dles2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t dpcm_read_dsc2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t dpcm_read_dsc2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t dpcm_read_dsc2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t dpcm_read_dsc2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t dpcm_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t dpcm_write_d2dles(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t dpcm_write_d2dsc(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t dpcm_write_f2dles(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t dpcm_write_f2dsc(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t dpcm_write_i2dles(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t dpcm_write_i2dsc(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t dpcm_write_s2dles(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t dpcm_write_s2dsc(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int dwd_close(SF_PRIVATE *psf);
int dwvw_byterate(SF_PRIVATE *psf);
int dwvw_close(SF_PRIVATE *psf);
sf_count_t dwvw_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t dwvw_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t dwvw_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t dwvw_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t dwvw_seek(SF_PRIVATE *psf, int mode, sf_count_t offset);
sf_count_t dwvw_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t dwvw_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t dwvw_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t dwvw_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int flac_byterate(SF_PRIVATE *psf);
int flac_close(SF_PRIVATE *psf);
int flac_command(SF_PRIVATE *psf , int command , void *data , int datasize);
sf_count_t flac_read_flac2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t flac_read_flac2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t flac_read_flac2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t flac_read_flac2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t flac_seek(SF_PRIVATE *psf, int mode, sf_count_t offset);
sf_count_t flac_write_d2flac(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t flac_write_f2flac(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
// int flac_write_header(SF_PRIVATE *psf , int UNUSED ( calc_length ));
sf_count_t flac_write_i2flac(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t flac_write_s2flac(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int g721_decoder(int i , G72x_STATE *state_ptr);
int g721_encoder(int sl , G72x_STATE *state_ptr);
int g723_16_decoder(int i , G72x_STATE *state_ptr);
int g723_16_encoder(int sl , G72x_STATE *state_ptr);
int g723_24_decoder(int i , G72x_STATE *state_ptr);
int g723_24_encoder(int sl , G72x_STATE *state_ptr);
int g723_40_decoder(int i , G72x_STATE *state_ptr);
int g723_40_encoder(int sl , G72x_STATE *state_ptr);
int g72x_close(SF_PRIVATE *psf);
sf_count_t g72x_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t g72x_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t g72x_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t g72x_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t g72x_seek(SF_PRIVATE *psf, int mode, sf_count_t offset);
sf_count_t g72x_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t g72x_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t g72x_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t g72x_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int gsm610_close(SF_PRIVATE *psf);
int gsm610_decode_block(SF_PRIVATE *psf , GSM610_PRIVATE *pgsm610);
int gsm610_encode_block(SF_PRIVATE *psf , GSM610_PRIVATE *pgsm610);
sf_count_t gsm610_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t gsm610_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t gsm610_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t gsm610_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t gsm610_seek(SF_PRIVATE *psf, int mode, sf_count_t offset);
int gsm610_wav_decode_block(SF_PRIVATE *psf , GSM610_PRIVATE *pgsm610);
int gsm610_wav_encode_block(SF_PRIVATE *psf , GSM610_PRIVATE *pgsm610);
sf_count_t gsm610_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t gsm610_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t gsm610_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t gsm610_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t host_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t host_read_d2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t host_read_d2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t host_read_d2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t host_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t host_read_f2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t host_read_f2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t host_read_f2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t host_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t host_write_d2f(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t host_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t host_write_f2d(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t host_write_i2d(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t host_write_i2f(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t host_write_s2d(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t host_write_s2f(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int htk_close(SF_PRIVATE *psf);
int htk_write_header(SF_PRIVATE *psf , int calc_length);
int ima_close(SF_PRIVATE *psf);
sf_count_t ima_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t ima_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t ima_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t ima_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t ima_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t ima_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t ima_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t ima_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t interleave_read_double(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t interleave_read_float(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t interleave_read_int(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t interleave_read_short(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t interleave_seek(SF_PRIVATE *, int mode, sf_count_t samples_from_start);
int ircam_close(SF_PRIVATE *psf);
int ircam_write_header(SF_PRIVATE *psf, int calc_length);
int mat4_close(SF_PRIVATE *psf);
int mat4_write_header(SF_PRIVATE *psf , int calc_length);
int mat5_close(SF_PRIVATE *psf);
int mat5_write_header(SF_PRIVATE *psf , int calc_length);
int mpc2k_close(SF_PRIVATE *psf);
int mpc2k_write_header(SF_PRIVATE *psf , int calc_length);
int mpeg_command(SF_PRIVATE *psf , int command , void *data , int datasize);
int mpeg_dec_byterate(SF_PRIVATE *psf);
int mpeg_dec_close(SF_PRIVATE *psf);
sf_count_t mpeg_dec_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t mpeg_dec_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t mpeg_dec_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t mpeg_dec_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t mpeg_dec_seek(SF_PRIVATE *psf , int mode , sf_count_t count);
sf_count_t mpeg_l3_encode_write_double_mono(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_double_stereo(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_float_mono(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_float_stereo(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_int_mono(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_int_stereo(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_short_mono(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t mpeg_l3_encode_write_short_stereo(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int mpeg_l3_encoder_byterate(SF_PRIVATE *psf);
int mpeg_l3_encoder_close(SF_PRIVATE *psf);
int mpeg_write_header(SF_PRIVATE *psf, int calc_length);
int msadpcm_close(SF_PRIVATE *psf);
sf_count_t msadpcm_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t msadpcm_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t msadpcm_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t msadpcm_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t msadpcm_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t msadpcm_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t msadpcm_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t msadpcm_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t msadpcm_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int nist_close(SF_PRIVATE *psf);
int nist_write_header(SF_PRIVATE *psf , int calc_length);
int nms_adpcm_close(SF_PRIVATE *psf);
sf_count_t nms_adpcm_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t nms_adpcm_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t nms_adpcm_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t nms_adpcm_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t nms_adpcm_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t nms_adpcm_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t nms_adpcm_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t nms_adpcm_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t nms_adpcm_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int ogg_close(SF_PRIVATE *psf);
int ogg_opus_byterate(SF_PRIVATE *psf);
int ogg_opus_close(SF_PRIVATE *psf);
int ogg_opus_command(SF_PRIVATE *psf , int command , void *data , int datasize);
sf_count_t ogg_opus_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t ogg_opus_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t ogg_opus_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t ogg_opus_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t ogg_opus_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t ogg_opus_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t ogg_opus_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
int ogg_opus_write_header(SF_PRIVATE * psf, int calc_length);
sf_count_t ogg_opus_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t ogg_opus_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int opcm_close(SF_PRIVATE *psf);
int paf24_close(SF_PRIVATE *psf);
sf_count_t paf24_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t paf24_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t paf24_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t paf24_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t paf24_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t paf24_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t paf24_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t paf24_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t paf24_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int paf_write_header(SF_PRIVATE *psf, int calc_length);
sf_count_t pcm_read_bei2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_bei2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_bei2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_bei2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_bes2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_bes2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_bes2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_bes2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_bet2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_bet2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_bet2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_bet2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_lei2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_lei2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_lei2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_lei2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_les2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_les2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_les2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_les2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_let2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_let2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_let2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_let2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_sc2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_sc2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_sc2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_sc2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_read_uc2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t pcm_read_uc2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t pcm_read_uc2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t pcm_read_uc2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t pcm_write_d2bei(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2bes(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2bet(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2lei(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2les(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2let(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2sc(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_d2uc(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t pcm_write_f2bei(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2bes(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2bet(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2lei(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2les(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2let(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2sc(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_f2uc(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t pcm_write_i2bei(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2bes(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2bet(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2lei(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2les(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2let(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2sc(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_i2uc(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t pcm_write_s2bei(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2bes(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2bet(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2lei(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2les(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2let(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2sc(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t pcm_write_s2uc(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t	psf_default_seek (SF_PRIVATE *psf, int mode, sf_count_t samples_from_start) ;
int pvf_close(SF_PRIVATE *psf);
int pvf_write_header(SF_PRIVATE *psf , int calc_length);
sf_count_t replace_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t replace_read_d2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t replace_read_d2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t replace_read_d2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t replace_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t replace_read_f2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t replace_read_f2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t replace_read_f2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t replace_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t replace_write_d2f(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t replace_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t replace_write_f2d(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t replace_write_i2d(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t replace_write_i2f(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t replace_write_s2d(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t replace_write_s2f(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int rf64_close(SF_PRIVATE *psf);
// int rf64_command(SF_PRIVATE *psf , int command , void *UNUSED ( data ) , int datasize);
int rf64_get_chunk_data(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
int rf64_get_chunk_size(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
SF_CHUNK_ITERATOR *rf64_next_chunk_iterator(SF_PRIVATE *psf , SF_CHUNK_ITERATOR *iterator);
int rf64_set_chunk(SF_PRIVATE *psf , const SF_CHUNK_INFO *chunk_info);
int rf64_write_header(SF_PRIVATE *psf , int calc_length);
int rx2_close(SF_PRIVATE *psf);
int sd2_close(SF_PRIVATE *psf);
int sds_2byte_read(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_2byte_write(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_3byte_read(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_3byte_write(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_4byte_read(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_4byte_write(SF_PRIVATE *psf , SDS_PRIVATE *psds);
int sds_byterate(SF_PRIVATE *psf);
int sds_close(SF_PRIVATE *psf);
sf_count_t sds_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t sds_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t sds_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t sds_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t sds_seek(SF_PRIVATE *psf , int mode , sf_count_t seek_from_start);
sf_count_t sds_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t sds_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
int sds_write_header(SF_PRIVATE *psf , int calc_length);
sf_count_t sds_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t sds_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int spx_close(SF_PRIVATE *psf);
int svx_close(SF_PRIVATE *psf);
int svx_write_header(SF_PRIVATE *psf , int calc_length);
sf_count_t txw_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t txw_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t txw_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t txw_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t txw_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t ulaw_read_ulaw2d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t ulaw_read_ulaw2f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t ulaw_read_ulaw2i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t ulaw_read_ulaw2s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t ulaw_write_d2ulaw(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t ulaw_write_f2ulaw(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t ulaw_write_i2ulaw(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t ulaw_write_s2ulaw(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t vfget_filelen(void *user_data);
sf_count_t vfread(void *ptr , sf_count_t count , void *user_data);
sf_count_t vfseek(sf_count_t offset , int whence , void *user_data);
sf_count_t vftell(void *user_data);
sf_count_t vfwrite(const void *ptr , sf_count_t count , void *user_data);
int voc_close(SF_PRIVATE *psf);
int voc_write_header(SF_PRIVATE *psf , int calc_length);
int vorbis_byterate(SF_PRIVATE *psf);
int vorbis_close(SF_PRIVATE *psf);
int vorbis_command(SF_PRIVATE *psf , int command , void *data , int datasize);
sf_count_t vorbis_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t lens);
sf_count_t vorbis_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t lens);
sf_count_t vorbis_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t lens);
sf_count_t vorbis_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t lens);
int vorbis_rnull(SF_PRIVATE *psf, int samples, void *vptr, int off,
		 int channels, float **pcm);
sf_count_t vorbis_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
sf_count_t vorbis_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t vorbis_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
int vorbis_write_header(SF_PRIVATE *psf, int calc_length);
sf_count_t vorbis_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t vorbis_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
sf_count_t vox_read_d(SF_PRIVATE *psf , double *ptr , sf_count_t len);
sf_count_t vox_read_f(SF_PRIVATE *psf , float *ptr , sf_count_t len);
sf_count_t vox_read_i(SF_PRIVATE *psf , int *ptr , sf_count_t len);
sf_count_t vox_read_s(SF_PRIVATE *psf , short *ptr , sf_count_t len);
sf_count_t vox_write_d(SF_PRIVATE *psf , const double *ptr , sf_count_t len);
sf_count_t vox_write_f(SF_PRIVATE *psf , const float *ptr , sf_count_t len);
sf_count_t vox_write_i(SF_PRIVATE *psf , const int *ptr , sf_count_t len);
sf_count_t vox_write_s(SF_PRIVATE *psf , const short *ptr , sf_count_t len);
int w64_close(SF_PRIVATE *psf);
int w64_write_header(SF_PRIVATE *psf , int calc_length);
int wav_close(SF_PRIVATE *psf);
int wav_command(SF_PRIVATE *psf, int command, void *data, int datasize);
int wav_get_chunk_data(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
int wav_get_chunk_size(SF_PRIVATE *psf , const SF_CHUNK_ITERATOR *iterator , SF_CHUNK_INFO *chunk_info);
SF_CHUNK_ITERATOR *wav_next_chunk_iterator(SF_PRIVATE *psf , SF_CHUNK_ITERATOR *iterator);
int wav_set_chunk(SF_PRIVATE *psf , const SF_CHUNK_INFO *chunk_info);
int wav_write_header(SF_PRIVATE *psf , int calc_length);
int wavlike_ima_decode_block(SF_PRIVATE *psf , IMA_ADPCM_PRIVATE *pima);
int wavlike_ima_encode_block(SF_PRIVATE *psf , IMA_ADPCM_PRIVATE *pima);
sf_count_t wavlike_ima_seek(SF_PRIVATE *psf , int mode , sf_count_t offset);
int wve_close(SF_PRIVATE *psf);
int wve_write_header(SF_PRIVATE *psf , int calc_length);
int xi_close(SF_PRIVATE *psf);
int xi_write_header(SF_PRIVATE *psf , int calc_length);
// int vorbis_rdouble (SF_PRIVATE *UNUSED (psf), int samples, void *vptr, int off, int channels, float **pcm);
// int vorbis_rfloat (SF_PRIVATE *UNUSED (psf), int samples, void *vptr, int off, int channels, float **pcm);
int vorbis_rshort (SF_PRIVATE *psf, int samples, void *vptr, int off, int channels, float **pcm);
int vorbis_rint (SF_PRIVATE *psf, int samples, void *vptr, int off, int channels, float **pcm);

#endif /* LIBSNDFILE_SIGNATURES_H */
