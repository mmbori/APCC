#ifndef LIBJPEG_SIGNATURES_H
#define LIBJPEG_SIGNATURES_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 41
 * Total unique (fp, func) pairs: 147
 */

#include <stdlib.h>
#include <stdbool.h>

/* Forward declarations */
// typedef struct ngx_event_pipe_s  ngx_event_pipe_t;
// typedef struct ngx_http_request_s  ngx_http_request_t;
// typedef struct ngx_http_header_val_s  ngx_http_header_val_t;
// typedef struct ngx_http_phase_handler_s  ngx_http_phase_handler_t;
// typedef struct ngx_http_upstream_s  ngx_http_upstream_t;
// typedef struct ngx_peer_connection_s  ngx_peer_connection_t;
// typedef struct ngx_http_proxy_rewrite_s  ngx_http_proxy_rewrite_t;
// typedef struct ngx_http_upstream_srv_conf_s  ngx_http_upstream_srv_conf_t;

/* =============== AC_first_prepare (2 functions) =============== */

typedef enum {
    AC_first_prepare_encode_mcu_AC_first_prepare = 1868825,
    AC_first_prepare_jsimd_encode_mcu_AC_first_prepare = 420610
} AC_first_prepare_enum_t;

/* =============== AC_refine_prepare (2 functions) =============== */

typedef enum {
    AC_refine_prepare_encode_mcu_AC_refine_prepare = 4615226,
    AC_refine_prepare_jsimd_encode_mcu_AC_refine_prepare = 4109603
} AC_refine_prepare_enum_t;

/* =============== calc_buffer_dimensions (4 functions) =============== */

typedef enum {
    calc_buffer_dimensions_NULL = 3745854,
    calc_buffer_dimensions_calc_buffer_dimensions_gif = 2342057,
    calc_buffer_dimensions_calc_buffer_dimensions_ppm = 1720583,
    calc_buffer_dimensions_calc_buffer_dimensions_tga = 9150732
} calc_buffer_dimensions_enum_t;

/* =============== compress_data (1 functions) =============== */

typedef enum {
    compress_data_compress_output = 1459591
} compress_data_enum_t;

/* =============== compress_data_12 (1 functions) =============== */

typedef enum {
    compress_data_12_compress_output_12 = 9907820
} compress_data_12_enum_t;

/* =============== consume_data (1 functions) =============== */

typedef enum {
    consume_data_dummy_consume_data = 7079673
} consume_data_enum_t;

/* =============== consume_input (1 functions) =============== */

typedef enum {
    consume_input_consume_markers = 534224
} consume_input_enum_t;

/* =============== convsamp (1 functions) =============== */

typedef enum {
    convsamp_jsimd_convsamp = 500914
} convsamp_enum_t;

/* =============== dct (4 functions) =============== */

typedef enum {
    dct__jpeg_fdct_ifast = 1572945,
    dct__jpeg_fdct_islow = 3669136,
    dct_jsimd_fdct_ifast = 3904402,
    dct_jsimd_fdct_islow = 8479454
} dct_enum_t;

/* =============== decode_mcu (4 functions) =============== */

typedef enum {
    decode_mcu_decode_mcu_AC_first = 446199,
    decode_mcu_decode_mcu_AC_refine = 9417129,
    decode_mcu_decode_mcu_DC_first = 3336942,
    decode_mcu_decode_mcu_DC_refine = 9143600
} decode_mcu_enum_t;

/* =============== emit_message (2 functions) =============== */

typedef enum {
    emit_message_fuzzer_emit_message = 7039374,
    emit_message_my_emit_message = 3699379
} emit_message_enum_t;

/* =============== empty_output_buffer (1 functions) =============== */

typedef enum {
    empty_output_buffer_empty_mem_output_buffer = 7537477
} empty_output_buffer_enum_t;

/* =============== encode_mcu (6 functions) =============== */

typedef enum {
    encode_mcu_encode_mcu_AC_first = 9887237,
    encode_mcu_encode_mcu_AC_refine = 4668265,
    encode_mcu_encode_mcu_DC_first = 110031,
    encode_mcu_encode_mcu_DC_refine = 2679638,
    encode_mcu_encode_mcu_gather = 7091293,
    encode_mcu_encode_mcu_huff = 5709456
} encode_mcu_enum_t;

/* =============== encode_mcus (2 functions) =============== */

typedef enum {
    encode_mcus_encode_mcus_gather = 4662907,
    encode_mcus_encode_mcus_huff = 2609513
} encode_mcus_enum_t;

/* =============== error_exit (2 functions) =============== */

typedef enum {
    error_exit_fuzzer_error_exit = 3613365,
    error_exit_my_error_exit = 5648119
} error_exit_enum_t;

/* =============== fill_input_buffer (1 functions) =============== */

typedef enum {
    fill_input_buffer_fill_mem_input_buffer = 1715803
} fill_input_buffer_enum_t;

/* =============== finish_input (4 functions) =============== */

typedef enum {
    finish_input_finish_input_bmp = 1557017,
    finish_input_finish_input_gif = 6375122,
    finish_input_finish_input_ppm = 1623631,
    finish_input_finish_input_tga = 6023674
} finish_input_enum_t;

/* =============== finish_output (4 functions) =============== */

typedef enum {
    finish_output_finish_output_bmp = 5771619,
    finish_output_finish_output_gif = 4438923,
    finish_output_finish_output_ppm = 729977,
    finish_output_finish_output_tga = 7708870
} finish_output_enum_t;

/* =============== finish_pass (8 functions) =============== */

typedef enum {
    finish_pass_finish_pass1 = 8997414,
    finish_pass_finish_pass2 = 2095235,
    finish_pass_finish_pass_1_quant = 6351753,
    finish_pass_finish_pass_gather = 1323047,
    finish_pass_finish_pass_gather_phuff = 9262704,
    finish_pass_finish_pass_huff = 4919715,
    finish_pass_finish_pass_master = 6068228,
    finish_pass_finish_pass_phuff = 9687361
} finish_pass_enum_t;

/* =============== float_convsamp (2 functions) =============== */

typedef enum {
    float_convsamp_convsamp_float = 3227067,
    float_convsamp_jsimd_convsamp_float = 1167941
} float_convsamp_enum_t;

/* =============== float_quantize (2 functions) =============== */

typedef enum {
    float_quantize_jsimd_quantize_float = 769805,
    float_quantize_quantize_float = 3824498
} float_quantize_enum_t;

/* =============== get_pixel_rows (25 functions) =============== */

typedef enum {
    get_pixel_rows_get_16bit_row = 4856124,
    get_pixel_rows_get_24bit_row = 1339687,
    get_pixel_rows_get_32bit_row = 3906582,
    get_pixel_rows_get_8bit_gray_row = 1695522,
    get_pixel_rows_get_8bit_row = 6378459,
    get_pixel_rows_get_gray_cmyk_row = 4664623,
    get_pixel_rows_get_gray_rgb_row = 7607962,
    get_pixel_rows_get_interlaced_row = 6121868,
    get_pixel_rows_get_memory_row = 2729882,
    get_pixel_rows_get_raw_row = 6211606,
    get_pixel_rows_get_rgb_cmyk_row = 5961453,
    get_pixel_rows_get_rgb_row = 3515944,
    get_pixel_rows_get_scaled_gray_row = 4480144,
    get_pixel_rows_get_text_gray_cmyk_row = 1198935,
    get_pixel_rows_get_text_gray_rgb_row = 2872230,
    get_pixel_rows_get_text_gray_row = 8962380,
    get_pixel_rows_get_text_rgb_cmyk_row = 4108245,
    get_pixel_rows_get_text_rgb_row = 2742438,
    get_pixel_rows_get_word_gray_cmyk_row = 7756439,
    get_pixel_rows_get_word_gray_rgb_row = 6367205,
    get_pixel_rows_get_word_gray_row = 4529972,
    get_pixel_rows_get_word_rgb_cmyk_row = 9345066,
    get_pixel_rows_get_word_rgb_row = 3685531,
    get_pixel_rows_load_interlaced_image = 5441561,
    get_pixel_rows_preload_image = 939483
} get_pixel_rows_enum_t;

/* =============== init_destination (1 functions) =============== */

typedef enum {
    init_destination_init_mem_destination = 3843788
} init_destination_enum_t;

/* =============== init_source (1 functions) =============== */

typedef enum {
    init_source_init_mem_source = 539552
} init_source_enum_t;

/* =============== new_color_map (2 functions) =============== */

typedef enum {
    new_color_map_new_color_map_1_quant = 5293423,
    new_color_map_new_color_map_2_quant = 6731428
} new_color_map_enum_t;

/* =============== output_message (1 functions) =============== */

typedef enum {
    output_message_my_output_message = 4492946
} output_message_enum_t;

/* =============== process_COM (3 functions) =============== */

typedef enum {
    process_COM_print_text_marker = 1111460,
    process_COM_processor = 3540704,
    process_COM_skip_variable = 9516702
} process_COM_enum_t;

/* =============== progress_monitor (1 functions) =============== */

typedef enum {
    progress_monitor_my_progress_monitor = 5280418
} progress_monitor_enum_t;

/* =============== put_pixel_rows (8 functions) =============== */

typedef enum {
    put_pixel_rows_copy_pixel_rows = 3568281,
    put_pixel_rows_put_LZW_pixel_rows = 8376710,
    put_pixel_rows_put_cmyk = 6638601,
    put_pixel_rows_put_demapped_gray = 7699256,
    put_pixel_rows_put_demapped_rgb = 2397987,
    put_pixel_rows_put_gray_rows = 4444951,
    put_pixel_rows_put_raw_pixel_rows = 2343608,
    put_pixel_rows_put_rgb = 4138722
} put_pixel_rows_enum_t;

/* =============== quantize (1 functions) =============== */

typedef enum {
    quantize_jsimd_quantize = 9419194
} quantize_enum_t;

/* =============== read_markers (2 functions) =============== */

typedef enum {
    read_markers_my_read_markers = 9043538,
    read_markers_old_read_markers = 4409072
} read_markers_enum_t;

/* =============== read_pixel (2 functions) =============== */

typedef enum {
    read_pixel_read_non_rle_pixel = 9808725,
    read_pixel_read_rle_pixel = 7188926
} read_pixel_enum_t;

/* =============== reset_marker_reader (2 functions) =============== */

typedef enum {
    reset_marker_reader_my_reset_marker_reader = 9791057,
    reset_marker_reader_old_reset_marker_reader = 6701828
} reset_marker_reader_enum_t;

/* =============== resync_to_restart (1 functions) =============== */

typedef enum {
    resync_to_restart_jpeg_resync_to_restart = 6074292
} resync_to_restart_enum_t;

/* =============== routine (1 functions) =============== */

typedef enum {
    routine_print_text_marker = 3680591
} routine_enum_t;

/* =============== scaler_scale (3 functions) =============== */

typedef enum {
    scaler_scale_noscale = 2321821,
    scaler_scale_simple_downscale = 8549432,
    scaler_scale_simple_upscale = 8280821
} scaler_scale_enum_t;

/* =============== start_input (4 functions) =============== */

typedef enum {
    start_input_start_input_bmp = 1526206,
    start_input_start_input_gif = 791481,
    start_input_start_input_ppm = 1840607,
    start_input_start_input_tga = 2565251
} start_input_enum_t;

/* =============== start_output (4 functions) =============== */

typedef enum {
    start_output_start_output_bmp = 2685052,
    start_output_start_output_gif = 7083668,
    start_output_start_output_ppm = 1066818,
    start_output_start_output_tga = 6456324
} start_output_enum_t;

/* =============== start_pass (21 functions) =============== */

typedef enum {
    start_pass_null_method = 6403509,
    start_pass_rgb_ycc_start = 9998348,
    start_pass_start_pass_1_quant = 7853574,
    start_pass_start_pass_2_quant = 8878065,
    start_pass_start_pass_coef = 4219028,
    start_pass_start_pass_dcolor = 9282590,
    start_pass_start_pass_diff = 193619,
    start_pass_start_pass_downsample = 1922859,
    start_pass_start_pass_dpost = 9009867,
    start_pass_start_pass_fdctmgr = 4477583,
    start_pass_start_pass_huff = 5708197,
    start_pass_start_pass_huff_decoder = 1872534,
    start_pass_start_pass_lhuff = 4925115,
    start_pass_start_pass_lhuff_decoder = 7295150,
    start_pass_start_pass_lossless = 2654446,
    start_pass_start_pass_main = 7613220,
    start_pass_start_pass_merged_upsample = 55447,
    start_pass_start_pass_phuff = 4419934,
    start_pass_start_pass_phuff_decoder = 8399441,
    start_pass_start_pass_prep = 2998281,
    start_pass_start_pass_upsample = 8518485
} start_pass_enum_t;

/* =============== term_destination (1 functions) =============== */

typedef enum {
    term_destination_term_mem_destination = 1786277
} term_destination_enum_t;

/* =============== upmethod (8 functions) =============== */

typedef enum {
    upmethod_h2v1_merged_upsample = 5008072,
    upmethod_h2v1_merged_upsample_565 = 8518169,
    upmethod_h2v1_merged_upsample_565D = 3338174,
    upmethod_h2v2_merged_upsample = 2565217,
    upmethod_h2v2_merged_upsample_565 = 6274233,
    upmethod_h2v2_merged_upsample_565D = 2711343,
    upmethod_jsimd_h2v1_merged_upsample = 9050278,
    upmethod_jsimd_h2v2_merged_upsample = 8898858
} upmethod_enum_t;

#endif /* LIBJPEG_SIGNATURES_H */
