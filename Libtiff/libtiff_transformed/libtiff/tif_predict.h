/*
 * Copyright (c) 1995-1997 Sam Leffler
 * Copyright (c) 1995-1997 Silicon Graphics, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and
 * its documentation for any purpose is hereby granted without fee, provided
 * that (i) the above copyright notices and this permission notice appear in
 * all copies of the software and related documentation, and (ii) the names of
 * Sam Leffler and Silicon Graphics may not be used in any advertising or
 * publicity relating to the software without the specific, prior written
 * permission of Sam Leffler and Silicon Graphics.
 *
 * THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY
 * WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
 *
 * IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR
 * ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND,
 * OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
 * WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF
 * LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
 * OF THIS SOFTWARE.
 */

#ifndef _TIFFPREDICT_
#define _TIFFPREDICT_

#include "tiffio.h"
#include "tiffiop.h"

/*
 * ``Library-private'' Support for the Predictor Tag
 */

typedef int (*TIFFEncodeDecodeMethod)(TIFF *tif, uint8_t *buf, tmsize_t size);

/*
 * Codecs that want to support the Predictor tag must place
 * this structure first in their private state block so that
 * the predictor code can cast tif_data to find its state.
 */
typedef struct
{
    int predictor;    /* predictor tag value */
    tmsize_t stride;  /* sample stride over data */
    tmsize_t rowsize; /* tile/strip row size */

    int (*encoderow)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);           /* parent codec encode/decode row */
    int (*encodestrip)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);         /* parent codec encode/decode strip */
    int (*encodetile)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);          /* parent codec encode/decode tile */
    int (*encodepfunc)(TIFF *tif, uint8_t *buf, tmsize_t size); /* horizontal differencer */

    int (*decoderow)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);           /* parent codec encode/decode row */
    int (*decodestrip)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);         /* parent codec encode/decode strip */
    int (*decodetile)(TIFF *tif, uint8_t *buf, tmsize_t size,
                              uint16_t sample);          /* parent codec encode/decode tile */
    int (*decodepfunc)(TIFF *tif, uint8_t *buf, tmsize_t size); /* horizontal accumulator */

    int (*vgetparent)(TIFF *, uint32_t, va_list);  /* super-class method */
    int (*vsetparent)(TIFF *, uint32_t, va_list);  /* super-class method */
    void (*printdir)(TIFF *, FILE *, long);   /* super-class method */
    int (*setupdecode)(TIFF *); /* super-class method */
    int (*setupencode)(TIFF *); /* super-class method */

    int encoderow_signature;
    int encodestrip_signature;
    int encodetile_signature;
    int encodepfunc_signature;
    int decoderow_signature;
    int decodestrip_signature;
    int decodetile_signature;
    int decodepfunc_signature;
    int vgetparent_signature;
    int vsetparent_signature;
    int printdir_signature;
    int setupdecode_signature;
    int setupencode_signature;
} TIFFPredictorState;

#if defined(__cplusplus)
extern "C"
{
#endif
    extern int TIFFPredictorInit(TIFF *);
    extern int TIFFPredictorCleanup(TIFF *);
#if defined(__cplusplus)
}
#endif
#endif /* _TIFFPREDICT_ */
