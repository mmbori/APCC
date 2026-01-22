/*
 * Copyright (c) 2017, Planet Labs
 * Author: <even.rouault at spatialys.com>
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

#include "tiffiop.h"
#ifdef ZSTD_SUPPORT
/*
 * TIFF Library.
 *
 * ZSTD Compression Support
 *
 */

#include "tif_predict.h"
#include "zstd.h"

#include <stdio.h>

/*
 * State block for each open TIFF file using ZSTD compression/decompression.
 */
typedef struct
{
    TIFFPredictorState predict;
    ZSTD_DStream *dstream;
    ZSTD_CStream *cstream;
    int compression_level; /* compression level */
    ZSTD_outBuffer out_buffer;
    int state; /* state flags */
#define LSTATE_INIT_DECODE 0x01
#define LSTATE_INIT_ENCODE 0x02

    int (*vgetparent)(TIFF *, uint32_t, va_list); /* super-class method */
    int (*vsetparent)(TIFF *, uint32_t, va_list); /* super-class method */

    int vgetparent_signature;
    int vsetparent_signature;
} ZSTDState;

#define GetZSTDState(tif) ((ZSTDState *)(tif)->tif_data)
#define ZSTDDecoderState(tif) GetZSTDState(tif)
#define ZSTDEncoderState(tif) GetZSTDState(tif)

int ZSTDEncode(TIFF *tif, uint8_t *bp, tmsize_t cc, uint16_t s);
int ZSTDDecode(TIFF *tif, uint8_t *op, tmsize_t occ, uint16_t s);

int ZSTDFixupTags(TIFF *tif)
{
    (void)tif;
    return 1;
}

int ZSTDSetupDecode(TIFF *tif)
{
    ZSTDState *sp = ZSTDDecoderState(tif);

    assert(sp != NULL);

    /* if we were last encoding, terminate this mode */
    if (sp->state & LSTATE_INIT_ENCODE)
    {
        ZSTD_freeCStream(sp->cstream);
        sp->cstream = NULL;
        sp->state = 0;
    }

    sp->state |= LSTATE_INIT_DECODE;
    return 1;
}

/*
 * Setup state for decoding a strip.
 */
int ZSTDPreDecode(TIFF *tif, uint16_t s)
{
    static const char module[] = "ZSTDPreDecode";
    ZSTDState *sp = ZSTDDecoderState(tif);
    size_t zstd_ret;

    (void)s;
    assert(sp != NULL);

    if ((sp->state & LSTATE_INIT_DECODE) == 0)
        switch (tif->tif_setupdecode_signature) {
        case tif_setupdecode_Fax3SetupState:
            Fax3SetupState(tif);
            break;
        case tif_setupdecode_LZWSetupDecode:
            LZWSetupDecode(tif);
            break;
        case tif_setupdecode_LogLuvSetupDecode:
            LogLuvSetupDecode(tif);
            break;
        case tif_setupdecode_PixarLogSetupDecode:
            PixarLogSetupDecode(tif);
            break;
        case tif_setupdecode_PredictorSetupDecode:
            PredictorSetupDecode(tif);
            break;
        case tif_setupdecode_ThunderSetupDecode:
            ThunderSetupDecode(tif);
            break;
        case tif_setupdecode_ZIPSetupDecode:
            ZIPSetupDecode(tif);
            break;
        case tif_setupdecode__TIFFtrue:
            _TIFFtrue(tif);
            break;
        case tif_setupdecode__notConfigured:
            _notConfigured(tif);
            break;
        default:
            invalidFunctionWasCalled();
            break;
        }

    if (sp->dstream == NULL)
    {
        sp->dstream = ZSTD_createDStream();
        if (sp->dstream == NULL)
        {
            TIFFErrorExtR(tif, module, "Cannot allocate decompression stream");
            return 0;
        }
    }

    zstd_ret = ZSTD_initDStream(sp->dstream);
    if (ZSTD_isError(zstd_ret))
    {
        TIFFErrorExtR(tif, module, "Error in ZSTD_initDStream(): %s",
                      ZSTD_getErrorName(zstd_ret));
        return 0;
    }

    return 1;
}

int ZSTDDecode(TIFF *tif, uint8_t *op, tmsize_t occ, uint16_t s)
{
    static const char module[] = "ZSTDDecode";
    ZSTDState *sp = ZSTDDecoderState(tif);
    ZSTD_inBuffer in_buffer;
    ZSTD_outBuffer out_buffer;
    size_t zstd_ret;

    (void)s;
    assert(sp != NULL);
    assert(sp->state == LSTATE_INIT_DECODE);

    in_buffer.src = tif->tif_rawcp;
    in_buffer.size = (size_t)tif->tif_rawcc;
    in_buffer.pos = 0;

    out_buffer.dst = op;
    out_buffer.size = (size_t)occ;
    out_buffer.pos = 0;

    do
    {
        zstd_ret = ZSTD_decompressStream(sp->dstream, &out_buffer, &in_buffer);
        if (ZSTD_isError(zstd_ret))
        {
            memset(op + out_buffer.pos, 0, out_buffer.size - out_buffer.pos);
            TIFFErrorExtR(tif, module, "Error in ZSTD_decompressStream(): %s",
                          ZSTD_getErrorName(zstd_ret));
            return 0;
        }
    } while (zstd_ret != 0 && in_buffer.pos < in_buffer.size &&
             out_buffer.pos < out_buffer.size);

    if (out_buffer.pos < (size_t)occ)
    {
        memset(op + out_buffer.pos, 0, out_buffer.size - out_buffer.pos);
        TIFFErrorExtR(tif, module,
                      "Not enough data at scanline %lu (short %lu bytes)",
                      (unsigned long)tif->tif_row,
                      (unsigned long)((size_t)occ - out_buffer.pos));
        return 0;
    }

    tif->tif_rawcp += in_buffer.pos;
    tif->tif_rawcc -= in_buffer.pos;

    return 1;
}

int ZSTDSetupEncode(TIFF *tif)
{
    ZSTDState *sp = ZSTDEncoderState(tif);

    assert(sp != NULL);
    if (sp->state & LSTATE_INIT_DECODE)
    {
        ZSTD_freeDStream(sp->dstream);
        sp->dstream = NULL;
        sp->state = 0;
    }

    sp->state |= LSTATE_INIT_ENCODE;
    return 1;
}

/*
 * Reset encoding state at the start of a strip.
 */
int ZSTDPreEncode(TIFF *tif, uint16_t s)
{
    static const char module[] = "ZSTDPreEncode";
    ZSTDState *sp = ZSTDEncoderState(tif);
    size_t zstd_ret;

    (void)s;
    assert(sp != NULL);
    if (sp->state != LSTATE_INIT_ENCODE)
        switch (tif->tif_setupencode_signature) {
        case tif_setupencode_Fax3SetupState:
            Fax3SetupState(tif);
            break;
        case tif_setupencode_LZWSetupEncode:
            LZWSetupEncode(tif);
            break;
        case tif_setupencode_LogLuvSetupEncode:
            LogLuvSetupEncode(tif);
            break;
        case tif_setupencode_PixarLogSetupEncode:
            PixarLogSetupEncode(tif);
            break;
        case tif_setupencode_PredictorSetupEncode:
            PredictorSetupEncode(tif);
            break;
        case tif_setupencode_ZIPSetupEncode:
            ZIPSetupEncode(tif);
            break;
        case tif_setupencode__TIFFtrue:
            _TIFFtrue(tif);
            break;
        case tif_setupencode__notConfigured:
            _notConfigured(tif);
            break;
        default:
            invalidFunctionWasCalled();
            break;
        }

    if (sp->cstream == NULL)
    {
        sp->cstream = ZSTD_createCStream();
        if (sp->cstream == NULL)
        {
            TIFFErrorExtR(tif, module, "Cannot allocate compression stream");
            return 0;
        }
    }

    zstd_ret = ZSTD_initCStream(sp->cstream, sp->compression_level);
    if (ZSTD_isError(zstd_ret))
    {
        TIFFErrorExtR(tif, module, "Error in ZSTD_initCStream(): %s",
                      ZSTD_getErrorName(zstd_ret));
        return 0;
    }

    sp->out_buffer.dst = tif->tif_rawdata;
    sp->out_buffer.size = (size_t)tif->tif_rawdatasize;
    sp->out_buffer.pos = 0;

    return 1;
}

/*
 * Encode a chunk of pixels.
 */
int ZSTDEncode(TIFF *tif, uint8_t *bp, tmsize_t cc, uint16_t s)
{
    static const char module[] = "ZSTDEncode";
    ZSTDState *sp = ZSTDEncoderState(tif);
    ZSTD_inBuffer in_buffer;
    size_t zstd_ret;

    assert(sp != NULL);
    assert(sp->state == LSTATE_INIT_ENCODE);

    (void)s;

    in_buffer.src = bp;
    in_buffer.size = (size_t)cc;
    in_buffer.pos = 0;

    do
    {
        zstd_ret =
            ZSTD_compressStream(sp->cstream, &sp->out_buffer, &in_buffer);
        if (ZSTD_isError(zstd_ret))
        {
            TIFFErrorExtR(tif, module, "Error in ZSTD_compressStream(): %s",
                          ZSTD_getErrorName(zstd_ret));
            return 0;
        }
        if (sp->out_buffer.pos == sp->out_buffer.size)
        {
            tif->tif_rawcc = tif->tif_rawdatasize;
            if (!TIFFFlushData1(tif))
                return 0;
            sp->out_buffer.dst = tif->tif_rawcp;
            sp->out_buffer.pos = 0;
        }
    } while (in_buffer.pos < in_buffer.size);

    return 1;
}

/*
 * Finish off an encoded strip by flushing it.
 */
int ZSTDPostEncode(TIFF *tif)
{
    static const char module[] = "ZSTDPostEncode";
    ZSTDState *sp = ZSTDEncoderState(tif);
    size_t zstd_ret;

    do
    {
        zstd_ret = ZSTD_endStream(sp->cstream, &sp->out_buffer);
        if (ZSTD_isError(zstd_ret))
        {
            TIFFErrorExtR(tif, module, "Error in ZSTD_endStream(): %s",
                          ZSTD_getErrorName(zstd_ret));
            return 0;
        }
        if (sp->out_buffer.pos > 0)
        {
            tif->tif_rawcc = sp->out_buffer.pos;
            if (!TIFFFlushData1(tif))
                return 0;
            sp->out_buffer.dst = tif->tif_rawcp;
            sp->out_buffer.pos = 0;
        }
    } while (zstd_ret != 0);
    return 1;
}

void ZSTDCleanup(TIFF *tif)
{
    ZSTDState *sp = GetZSTDState(tif);

    assert(sp != 0);

    (void)TIFFPredictorCleanup(tif);

    tif->tif_tagmethods.vgetfield = sp->vgetparent;
    tif->tif_tagmethods.vsetfield = sp->vsetparent;

    if (sp->dstream)
    {
        ZSTD_freeDStream(sp->dstream);
        sp->dstream = NULL;
    }
    if (sp->cstream)
    {
        ZSTD_freeCStream(sp->cstream);
        sp->cstream = NULL;
    }
    _TIFFfreeExt(tif, sp);
    tif->tif_data = NULL;

    _TIFFSetDefaultCompressionState(tif);
}

int ZSTDVSetField(TIFF *tif, uint32_t tag, va_list ap)
{
    static const char module[] = "ZSTDVSetField";
    ZSTDState *sp = GetZSTDState(tif);

    switch (tag)
    {
        case TIFFTAG_ZSTD_LEVEL:
            sp->compression_level = (int)va_arg(ap, int);
            if (sp->compression_level <= 0 ||
                sp->compression_level > ZSTD_maxCLevel())
            {
                TIFFWarningExtR(tif, module,
                                "ZSTD_LEVEL should be between 1 and %d",
                                ZSTD_maxCLevel());
            }
            return 1;
        default:
            return (*sp->vsetparent)(tif, tag, ap);
    }
    /*NOTREACHED*/
}

int ZSTDVGetField(TIFF *tif, uint32_t tag, va_list ap)
{
    ZSTDState *sp = GetZSTDState(tif);

    switch (tag)
    {
        case TIFFTAG_ZSTD_LEVEL:
            *va_arg(ap, int *) = sp->compression_level;
            break;
        default:
            return (*sp->vgetparent)(tif, tag, ap);
    }
    return 1;
}

static const TIFFField ZSTDFields[] = {
    {TIFFTAG_ZSTD_LEVEL, 0, 0, TIFF_ANY, 0, TIFF_SETGET_INT, FIELD_PSEUDO, TRUE,
     FALSE, "ZSTD compression_level", NULL},
};

int TIFFInitZSTD(TIFF *tif, int scheme)
{
    static const char module[] = "TIFFInitZSTD";
    ZSTDState *sp;

    (void)scheme;
    assert(scheme == COMPRESSION_ZSTD);

    /*
     * Merge codec-specific tag information.
     */
    if (!_TIFFMergeFields(tif, ZSTDFields, TIFFArrayCount(ZSTDFields)))
    {
        TIFFErrorExtR(tif, module, "Merging ZSTD codec-specific tags failed");
        return 0;
    }

    /*
     * Allocate state block so tag methods have storage to record values.
     */
    tif->tif_data = (uint8_t *)_TIFFmallocExt(tif, sizeof(ZSTDState));
    if (tif->tif_data == NULL)
        goto bad;
    sp = GetZSTDState(tif);

    /*
     * Override parent get/set field methods.
     */
    sp->vgetparent = tif->tif_tagmethods.vgetfield;
    tif->tif_tagmethods.vgetfield = ZSTDVGetField;
    tif->tif_tagmethods.vgetfield_signature = vgetfield_ZSTDVGetField; /* hook for codec tags */
    sp->vsetparent = tif->tif_tagmethods.vsetfield;
    tif->tif_tagmethods.vsetfield = ZSTDVSetField;
    tif->tif_tagmethods.vsetfield_signature = vsetfield_ZSTDVSetField; /* hook for codec tags */

    /* Default values for codec-specific fields */
    sp->compression_level = 9; /* default comp. level */
    sp->state = 0;
    sp->dstream = 0;
    sp->cstream = 0;
    sp->out_buffer.dst = NULL;
    sp->out_buffer.size = 0;
    sp->out_buffer.pos = 0;

    /*
     * Install codec methods.
     */
    tif->tif_fixuptags = ZSTDFixupTags;
    tif->tif_fixuptags_signature = tif_fixuptags_ZSTDFixupTags;
    tif->tif_setupdecode = ZSTDSetupDecode;
    tif->tif_setupdecode_signature = tif_setupdecode_ZSTDSetupDecode;
    tif->tif_predecode = ZSTDPreDecode;
    tif->tif_predecode_signature = tif_predecode_ZSTDPreDecode;
    tif->tif_decoderow = ZSTDDecode;
    tif->tif_decoderow_signature = tif_decoderow_ZSTDDecode;
    tif->tif_decodestrip = ZSTDDecode;
    tif->tif_decodestrip_signature = tif_decodestrip_ZSTDDecode;
    tif->tif_decodetile = ZSTDDecode;
    tif->tif_decodetile_signature = tif_decodetile_ZSTDDecode;
    tif->tif_setupencode = ZSTDSetupEncode;
    tif->tif_setupencode_signature = tif_setupencode_ZSTDSetupEncode;
    tif->tif_preencode = ZSTDPreEncode;
    tif->tif_preencode_signature = tif_preencode_ZSTDPreEncode;
    tif->tif_postencode = ZSTDPostEncode;
    tif->tif_postencode_signature = tif_postencode_ZSTDPostEncode;
    tif->tif_encoderow = ZSTDEncode;
    tif->tif_encoderow_signature = tif_encoderow_ZSTDEncode;
    tif->tif_encodestrip = ZSTDEncode;
    tif->tif_encodestrip_signature = tif_encodestrip_ZSTDEncode;
    tif->tif_encodetile = ZSTDEncode;
    tif->tif_encodetile_signature = tif_encodetile_ZSTDEncode;
    tif->tif_cleanup = ZSTDCleanup;
    tif->tif_cleanup_signature = tif_cleanup_ZSTDCleanup;
    /*
     * Setup predictor setup.
     */
    (void)TIFFPredictorInit(tif);
    return 1;
bad:
    TIFFErrorExtR(tif, module, "No space for ZSTD state block");
    return 0;
}
#endif /* ZSTD_SUPPORT */
