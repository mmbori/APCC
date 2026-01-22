/*
** Copyright (C) 2003-2011 Erik de Castro Lopo <erikd@mega-nerd.com>
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU Lesser General Public License as published by
** the Free Software Foundation; either version 2.1 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU Lesser General Public License for more details.
**
** You should have received a copy of the GNU Lesser General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

#include	"sfconfig.h"

#include	<stdlib.h>

#include	"sndfile.h"
#include	"sfendian.h"
#include	"common.h"

/*============================================================================
**	Rule number 1 is to only apply dither when going from a larger bitwidth
**	to a smaller bitwidth. This can happen on both read and write.
**
**	Need to apply dither on all conversions marked X below.
**
**	Dither on write:
**
**										Input
**					|	short		int			float		double
**			--------+-----------------------------------------------
**		O	8 bit	|	X			X			X			X
**		u	16 bit	|	none		X			X			X
**		t	24 bit	|	none		X			X			X
**		p	32 bit	|	none		none		X			X
**		u	float	|	none		none		none		none
**		t	double	|	none		none		none		none
**
**	Dither on read:
**
**										Input
**		O			|	8 bit	16 bit	24 bit	32 bit	float	double
**		u	--------+-------------------------------------------------
**		t	short	|	none	none	X		X		X		X
**		p	int		|	none	none	none	X		X		X
**		u	float	|	none	none	none	none	none	none
**		t	double	|	none	none	none	none	none	none
*/

#define	SFE_DITHER_BAD_PTR	666
#define	SFE_DITHER_BAD_TYPE	667

typedef struct
{	int			read_short_dither_bits, read_int_dither_bits ;
	int			write_short_dither_bits, write_int_dither_bits ;
	double		read_float_dither_scale, read_double_dither_bits ;
	double		write_float_dither_scale, write_double_dither_bits ;

	sf_count_t	(*read_short)	(SF_PRIVATE *psf, short *ptr, sf_count_t len) ;
	sf_count_t	(*read_int)		(SF_PRIVATE *psf, int *ptr, sf_count_t len) ;
	sf_count_t	(*read_float)	(SF_PRIVATE *psf, float *ptr, sf_count_t len) ;
	sf_count_t	(*read_double)	(SF_PRIVATE *psf, double *ptr, sf_count_t len) ;

	sf_count_t	(*write_short)	(SF_PRIVATE *psf, const short *ptr, sf_count_t len) ;
	sf_count_t	(*write_int)	(SF_PRIVATE *psf, const int *ptr, sf_count_t len) ;
	sf_count_t	(*write_float)	(SF_PRIVATE *psf, const float *ptr, sf_count_t len) ;
	sf_count_t	(*write_double)	(SF_PRIVATE *psf, const double *ptr, sf_count_t len) ;

	double buffer [SF_BUFFER_LEN / sizeof (double)] ;

	int read_short_signature;
	int read_int_signature;
	int read_float_signature;
	int read_double_signature;
	int write_short_signature;
	int write_int_signature;
	int write_float_signature;
	int write_double_signature;
} DITHER_DATA ;

sf_count_t dither_read_short(SF_PRIVATE *psf, short *ptr, sf_count_t len);
sf_count_t dither_read_int(SF_PRIVATE *psf, int *ptr, sf_count_t len);

sf_count_t dither_write_short(SF_PRIVATE *psf, const short *ptr,
			      sf_count_t len);
sf_count_t dither_write_int(SF_PRIVATE *psf, const int *ptr, sf_count_t len);
sf_count_t dither_write_float(SF_PRIVATE *psf, const float *ptr,
			      sf_count_t len);
sf_count_t dither_write_double(SF_PRIVATE *psf, const double *ptr,
			       sf_count_t len);

int
dither_init (SF_PRIVATE *psf, int mode)
{	DITHER_DATA *pdither ;

	pdither = psf->dither ; /* This may be NULL. */

	/* Turn off dither on read. */
	if (mode == SFM_READ && psf->read_dither.type == SFD_NO_DITHER)
	{	if (pdither == NULL)
			return 0 ; /* Dither is already off, so just return. */

		if (pdither->read_short)
			psf->read_short = pdither->read_short ;
		if (pdither->read_int)
			psf->read_int = pdither->read_int ;
		if (pdither->read_float)
			psf->read_float = pdither->read_float ;
		if (pdither->read_double)
			psf->read_double = pdither->read_double ;
		return 0 ;
		} ;

	/* Turn off dither on write. */
	if (mode == SFM_WRITE && psf->write_dither.type == SFD_NO_DITHER)
	{	if (pdither == NULL)
			return 0 ; /* Dither is already off, so just return. */

		if (pdither->write_short)
			psf->write_short = pdither->write_short ;
		if (pdither->write_int)
			psf->write_int = pdither->write_int ;
		if (pdither->write_float)
			psf->write_float = pdither->write_float ;
		if (pdither->write_double)
			psf->write_double = pdither->write_double ;
		return 0 ;
		} ;

	/* Turn on dither on read if asked. */
	if (mode == SFM_READ && psf->read_dither.type != 0)
	{	if (pdither == NULL)
			pdither = psf->dither = calloc (1, sizeof (DITHER_DATA)) ;
		if (pdither == NULL)
			return SFE_MALLOC_FAILED ;

		switch (SF_CODEC (psf->sf.format))
		{	case SF_FORMAT_DOUBLE :
			case SF_FORMAT_FLOAT :
					pdither->read_int = psf->read_int ;
					psf->read_int = dither_read_int;
					psf->read_int_signature = read_int_dither_read_int;
					break ;

			case SF_FORMAT_PCM_32 :
			case SF_FORMAT_PCM_24 :
			case SF_FORMAT_PCM_16 :
			case SF_FORMAT_PCM_S8 :
			case SF_FORMAT_PCM_U8 :
					pdither->read_short = psf->read_short ;
					psf->read_short = dither_read_short;
					psf->read_short_signature = read_short_dither_read_short;
					break ;

			default : break ;
			} ;
		} ;

	/* Turn on dither on write if asked. */
	if (mode == SFM_WRITE && psf->write_dither.type != 0)
	{	if (pdither == NULL)
			pdither = psf->dither = calloc (1, sizeof (DITHER_DATA)) ;
		if (pdither == NULL)
			return SFE_MALLOC_FAILED ;

		switch (SF_CODEC (psf->sf.format))
		{	case SF_FORMAT_DOUBLE :
			case SF_FORMAT_FLOAT :
					pdither->write_int = psf->write_int ;
					psf->write_int = dither_write_int;
					psf->write_int_signature = write_int_dither_write_int;
					break ;

			case SF_FORMAT_PCM_32 :
			case SF_FORMAT_PCM_24 :
			case SF_FORMAT_PCM_16 :
			case SF_FORMAT_PCM_S8 :
			case SF_FORMAT_PCM_U8 :
					break ;

			default : break ;
			} ;

		pdither->write_short = psf->write_short ;
		psf->write_short = dither_write_short;
		psf->write_short_signature = write_short_dither_write_short;

		pdither->write_int = psf->write_int ;
		psf->write_int = dither_write_int;
		psf->write_int_signature = write_int_dither_write_int;

		pdither->write_float = psf->write_float ;
		psf->write_float = dither_write_float;
		psf->write_float_signature = write_float_dither_write_float;

		pdither->write_double = psf->write_double ;
		psf->write_double = dither_write_double;
		psf->write_double_signature = write_double_dither_write_double;
		} ;

	return 0 ;
} /* dither_init */

/*==============================================================================
*/

static void dither_short	(const short *in, short *out, int frames, int channels) ;
static void dither_int		(const int *in, int *out, int frames, int channels) ;

static void dither_float	(const float *in, float *out, int frames, int channels) ;
static void dither_double	(const double *in, double *out, int frames, int channels) ;

sf_count_t dither_read_short(SF_PRIVATE * UNUSED(psf), short * UNUSED(ptr),
			     sf_count_t len)
{
	return len ;
} /* dither_read_short */

sf_count_t dither_read_int(SF_PRIVATE * UNUSED(psf), int * UNUSED(ptr),
			   sf_count_t len)
{
	return len ;
} /* dither_read_int */

/*------------------------------------------------------------------------------
*/

sf_count_t
dither_write_short	(SF_PRIVATE *psf, const short *ptr, sf_count_t len)
{	DITHER_DATA *pdither ;
	int			bufferlen, writecount, thiswrite ;
	sf_count_t	total = 0 ;

	if ((pdither = psf->dither) == NULL)
	{	psf->error = SFE_DITHER_BAD_PTR ;
		return 0 ;
		} ;

	switch (SF_CODEC (psf->sf.format))
	{	case SF_FORMAT_PCM_S8 :
		case SF_FORMAT_PCM_U8 :
		case SF_FORMAT_DPCM_8 :
				break ;

		default :
			switch (pdither->write_short_signature) {
			case write_short_alac_write_s:
			    return alac_write_s(psf, ptr, len);
			case write_short_alaw_write_s2alaw:
			    return alaw_write_s2alaw(psf, ptr, len);
			case write_short_dither_write_short:
			    return dither_write_short(psf, ptr, len);
			case write_short_dpcm_write_s2dles:
			    return dpcm_write_s2dles(psf, ptr, len);
			case write_short_dpcm_write_s2dsc:
			    return dpcm_write_s2dsc(psf, ptr, len);
			case write_short_dwvw_write_s:
			    return dwvw_write_s(psf, ptr, len);
			case write_short_g72x_write_s:
			    return g72x_write_s(psf, ptr, len);
			case write_short_gsm610_write_s:
			    return gsm610_write_s(psf, ptr, len);
			case write_short_host_write_s2d:
			    return host_write_s2d(psf, ptr, len);
			case write_short_host_write_s2f:
			    return host_write_s2f(psf, ptr, len);
			case write_short_ima_write_s:
			    return ima_write_s(psf, ptr, len);
			case write_short_msadpcm_write_s:
			    return msadpcm_write_s(psf, ptr, len);
			case write_short_nms_adpcm_write_s:
			    return nms_adpcm_write_s(psf, ptr, len);
			case write_short_paf24_write_s:
			    return paf24_write_s(psf, ptr, len);
			case write_short_pcm_write_s2bei:
			    return pcm_write_s2bei(psf, ptr, len);
			case write_short_pcm_write_s2bes:
			    return pcm_write_s2bes(psf, ptr, len);
			case write_short_pcm_write_s2bet:
			    return pcm_write_s2bet(psf, ptr, len);
			case write_short_pcm_write_s2lei:
			    return pcm_write_s2lei(psf, ptr, len);
			case write_short_pcm_write_s2les:
			    return pcm_write_s2les(psf, ptr, len);
			case write_short_pcm_write_s2let:
			    return pcm_write_s2let(psf, ptr, len);
			case write_short_pcm_write_s2sc:
			    return pcm_write_s2sc(psf, ptr, len);
			case write_short_pcm_write_s2uc:
			    return pcm_write_s2uc(psf, ptr, len);
			case write_short_replace_write_s2d:
			    return replace_write_s2d(psf, ptr, len);
			case write_short_replace_write_s2f:
			    return replace_write_s2f(psf, ptr, len);
			case write_short_sds_write_s:
			    return sds_write_s(psf, ptr, len);
			case write_short_ulaw_write_s2ulaw:
			    return ulaw_write_s2ulaw(psf, ptr, len);
			case write_short_vox_write_s:
			    return vox_write_s(psf, ptr, len);
			default:
			    invalidFunctionWasCalled();
			}
		} ;

	bufferlen = sizeof (pdither->buffer) / (sizeof (short)) ;

	while (len > 0)
	{	writecount = (len >= bufferlen) ? bufferlen : (int) len ;
		writecount /= psf->sf.channels ;
		writecount *= psf->sf.channels ;

		dither_short (ptr, (short*) pdither->buffer, writecount / psf->sf.channels, psf->sf.channels) ;

		// thiswrite = (int) pdither->write_short (psf, (short*) pdither->buffer, writecount) ;
		switch (pdither->write_short_signature) {
			case write_short_alac_write_s:
				thiswrite = (int) alac_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_alaw_write_s2alaw:
				thiswrite = (int) alaw_write_s2alaw (psf, (short*) pdither->buffer, writecount) ;
			case write_short_dither_write_short:
				thiswrite = (int) dither_write_short (psf, (short*) pdither->buffer, writecount) ;
			case write_short_dpcm_write_s2dles:
				thiswrite = (int) dpcm_write_s2dles (psf, (short*) pdither->buffer, writecount) ;
			case write_short_dpcm_write_s2dsc:
				thiswrite = (int) dpcm_write_s2dsc (psf, (short*) pdither->buffer, writecount) ;
			case write_short_dwvw_write_s:
				thiswrite = (int) dwvw_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_g72x_write_s:
				thiswrite = (int) g72x_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_gsm610_write_s:
				thiswrite = (int) gsm610_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_host_write_s2d:
				thiswrite = (int) host_write_s2d (psf, (short*) pdither->buffer, writecount) ;
			case write_short_host_write_s2f:
				thiswrite = (int) host_write_s2f (psf, (short*) pdither->buffer, writecount) ;
			case write_short_ima_write_s:
				thiswrite = (int) ima_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_msadpcm_write_s:
				thiswrite = (int) msadpcm_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_nms_adpcm_write_s:
				thiswrite = (int) nms_adpcm_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_paf24_write_s:
				thiswrite = (int) paf24_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2bei:
				thiswrite = (int) pcm_write_s2bei (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2bes:
				thiswrite = (int) pcm_write_s2bes (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2bet:
				thiswrite = (int) pcm_write_s2bet (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2lei:
				thiswrite = (int) pcm_write_s2lei (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2les:
				thiswrite = (int) pcm_write_s2les (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2let:
				thiswrite = (int) pcm_write_s2let (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2sc:
				thiswrite = (int) pcm_write_s2sc (psf, (short*) pdither->buffer, writecount) ;
			case write_short_pcm_write_s2uc:
				thiswrite = (int) pcm_write_s2uc (psf, (short*) pdither->buffer, writecount) ;
			case write_short_replace_write_s2d:
				thiswrite = (int) replace_write_s2d (psf, (short*) pdither->buffer, writecount) ;
			case write_short_replace_write_s2f:
				thiswrite = (int) replace_write_s2f (psf, (short*) pdither->buffer, writecount) ;
			case write_short_sds_write_s:
				thiswrite = (int) sds_write_s (psf, (short*) pdither->buffer, writecount) ;
			case write_short_ulaw_write_s2ulaw:
				thiswrite = (int) ulaw_write_s2ulaw (psf, (short*) pdither->buffer, writecount) ;
			case write_short_vox_write_s:
				thiswrite = (int) vox_write_s (psf, (short*) pdither->buffer, writecount) ;
			default:
				invalidFunctionWasCalled();
		}


		total += thiswrite ;
		len -= thiswrite ;
		if (thiswrite < writecount)
			break ;
		} ;

	return total ;
} /* dither_write_short */

sf_count_t
dither_write_int	(SF_PRIVATE *psf, const int *ptr, sf_count_t len)
{	DITHER_DATA *pdither ;
	int			bufferlen, writecount, thiswrite ;
	sf_count_t	total = 0 ;

	if ((pdither = psf->dither) == NULL)
	{	psf->error = SFE_DITHER_BAD_PTR ;
		return 0 ;
		} ;

	switch (SF_CODEC (psf->sf.format))
	{	case SF_FORMAT_PCM_S8 :
		case SF_FORMAT_PCM_U8 :
		case SF_FORMAT_PCM_16 :
		case SF_FORMAT_PCM_24 :
				break ;

		case SF_FORMAT_DPCM_8 :
		case SF_FORMAT_DPCM_16 :
				break ;

		default :
			switch (pdither->write_int_signature) {
			case write_int_alac_write_i:
			    return alac_write_i(psf, ptr, len);
			case write_int_alaw_write_i2alaw:
			    return alaw_write_i2alaw(psf, ptr, len);
			case write_int_dither_write_int:
			    return dither_write_int(psf, ptr, len);
			case write_int_dpcm_write_i2dles:
			    return dpcm_write_i2dles(psf, ptr, len);
			case write_int_dpcm_write_i2dsc:
			    return dpcm_write_i2dsc(psf, ptr, len);
			case write_int_dwvw_write_i:
			    return dwvw_write_i(psf, ptr, len);
			case write_int_g72x_write_i:
			    return g72x_write_i(psf, ptr, len);
			case write_int_gsm610_write_i:
			    return gsm610_write_i(psf, ptr, len);
			case write_int_host_write_i2d:
			    return host_write_i2d(psf, ptr, len);
			case write_int_host_write_i2f:
			    return host_write_i2f(psf, ptr, len);
			case write_int_ima_write_i:
			    return ima_write_i(psf, ptr, len);
			case write_int_msadpcm_write_i:
			    return msadpcm_write_i(psf, ptr, len);
			case write_int_nms_adpcm_write_i:
			    return nms_adpcm_write_i(psf, ptr, len);
			case write_int_paf24_write_i:
			    return paf24_write_i(psf, ptr, len);
			case write_int_pcm_write_i2bei:
			    return pcm_write_i2bei(psf, ptr, len);
			case write_int_pcm_write_i2bes:
			    return pcm_write_i2bes(psf, ptr, len);
			case write_int_pcm_write_i2bet:
			    return pcm_write_i2bet(psf, ptr, len);
			case write_int_pcm_write_i2lei:
			    return pcm_write_i2lei(psf, ptr, len);
			case write_int_pcm_write_i2les:
			    return pcm_write_i2les(psf, ptr, len);
			case write_int_pcm_write_i2let:
			    return pcm_write_i2let(psf, ptr, len);
			case write_int_pcm_write_i2sc:
			    return pcm_write_i2sc(psf, ptr, len);
			case write_int_pcm_write_i2uc:
			    return pcm_write_i2uc(psf, ptr, len);
			case write_int_replace_write_i2d:
			    return replace_write_i2d(psf, ptr, len);
			case write_int_replace_write_i2f:
			    return replace_write_i2f(psf, ptr, len);
			case write_int_sds_write_i:
			    return sds_write_i(psf, ptr, len);
			case write_int_ulaw_write_i2ulaw:
			    return ulaw_write_i2ulaw(psf, ptr, len);
			case write_int_vox_write_i:
			    return vox_write_i(psf, ptr, len);
			default:
			    invalidFunctionWasCalled();
			}
		} ;


	bufferlen = sizeof (pdither->buffer) / (sizeof (int)) ;

	while (len > 0)
	{	writecount = (len >= bufferlen) ? bufferlen : (int) len ;
		writecount /= psf->sf.channels ;
		writecount *= psf->sf.channels ;

		dither_int (ptr, (int*) pdither->buffer, writecount / psf->sf.channels, psf->sf.channels) ;

		// thiswrite = (int) pdither->write_int (psf, (int*) pdither->buffer, writecount) ;
		switch (pdither->write_int_signature) {
			case write_int_alac_write_i:
				thiswrite = (int) alac_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_alaw_write_i2alaw:
				thiswrite = (int) alaw_write_i2alaw (psf, (int*) pdither->buffer, writecount) ;
			case write_int_dither_write_int:
				thiswrite = (int) dither_write_int (psf, (int*) pdither->buffer, writecount) ;
			case write_int_dpcm_write_i2dles:
				thiswrite = (int) dpcm_write_i2dles (psf, (int*) pdither->buffer, writecount) ;
			case write_int_dpcm_write_i2dsc:
				thiswrite = (int) dpcm_write_i2dsc (psf, (int*) pdither->buffer, writecount) ;
			case write_int_dwvw_write_i:
				thiswrite = (int) dwvw_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_g72x_write_i:
				thiswrite = (int) g72x_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_gsm610_write_i:
				thiswrite = (int) gsm610_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_host_write_i2d:
				thiswrite = (int) host_write_i2d (psf, (int*) pdither->buffer, writecount) ;
			case write_int_host_write_i2f:
				thiswrite = (int) host_write_i2f (psf, (int*) pdither->buffer, writecount) ;
			case write_int_ima_write_i:
				thiswrite = (int) ima_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_msadpcm_write_i:
				thiswrite = (int) msadpcm_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_nms_adpcm_write_i:
				thiswrite = (int) nms_adpcm_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_paf24_write_i:
				thiswrite = (int) paf24_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2bei:
				thiswrite = (int) pcm_write_i2bei (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2bes:
				thiswrite = (int) pcm_write_i2bes (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2bet:
				thiswrite = (int) pcm_write_i2bet (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2lei:
				thiswrite = (int) pcm_write_i2lei (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2les:
				thiswrite = (int) pcm_write_i2les (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2let:
				thiswrite = (int) pcm_write_i2let (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2sc:
				thiswrite = (int) pcm_write_i2sc (psf, (int*) pdither->buffer, writecount) ;
			case write_int_pcm_write_i2uc:
				thiswrite = (int) pcm_write_i2uc (psf, (int*) pdither->buffer, writecount) ;
			case write_int_replace_write_i2d:
				thiswrite = (int) replace_write_i2d (psf, (int*) pdither->buffer, writecount) ;
			case write_int_replace_write_i2f:
				thiswrite = (int) replace_write_i2f (psf, (int*) pdither->buffer, writecount) ;
			case write_int_sds_write_i:
				thiswrite = (int) sds_write_i (psf, (int*) pdither->buffer, writecount) ;
			case write_int_ulaw_write_i2ulaw:
				thiswrite = (int) ulaw_write_i2ulaw (psf, (int*) pdither->buffer, writecount) ;
			case write_int_vox_write_i:
				thiswrite = (int) vox_write_i (psf, (int*) pdither->buffer, writecount) ;
			default:
				invalidFunctionWasCalled();
			}
		total += thiswrite ;
		len -= thiswrite ;
		if (thiswrite < writecount)
			break ;
		} ;

	return total ;
} /* dither_write_int */

sf_count_t
dither_write_float	(SF_PRIVATE *psf, const float *ptr, sf_count_t len)
{	DITHER_DATA *pdither ;
	int			bufferlen, writecount, thiswrite ;
	sf_count_t	total = 0 ;

	if ((pdither = psf->dither) == NULL)
	{	psf->error = SFE_DITHER_BAD_PTR ;
		return 0 ;
		} ;

	switch (SF_CODEC (psf->sf.format))
	{	case SF_FORMAT_PCM_S8 :
		case SF_FORMAT_PCM_U8 :
		case SF_FORMAT_PCM_16 :
		case SF_FORMAT_PCM_24 :
				break ;

		case SF_FORMAT_DPCM_8 :
		case SF_FORMAT_DPCM_16 :
				break ;

		default :
			switch (pdither->write_float_signature) {
			case write_float_alac_write_f:
			    return alac_write_f(psf, ptr, len);
			case write_float_alaw_write_f2alaw:
			    return alaw_write_f2alaw(psf, ptr, len);
			case write_float_dither_write_float:
			    return dither_write_float(psf, ptr, len);
			case write_float_dpcm_write_f2dles:
			    return dpcm_write_f2dles(psf, ptr, len);
			case write_float_dpcm_write_f2dsc:
			    return dpcm_write_f2dsc(psf, ptr, len);
			case write_float_dwvw_write_f:
			    return dwvw_write_f(psf, ptr, len);
			case write_float_g72x_write_f:
			    return g72x_write_f(psf, ptr, len);
			case write_float_gsm610_write_f:
			    return gsm610_write_f(psf, ptr, len);
			case write_float_host_write_f:
			    return host_write_f(psf, ptr, len);
			case write_float_host_write_f2d:
			    return host_write_f2d(psf, ptr, len);
			case write_float_ima_write_f:
			    return ima_write_f(psf, ptr, len);
			case write_float_msadpcm_write_f:
			    return msadpcm_write_f(psf, ptr, len);
			case write_float_nms_adpcm_write_f:
			    return nms_adpcm_write_f(psf, ptr, len);
			case write_float_paf24_write_f:
			    return paf24_write_f(psf, ptr, len);
			case write_float_pcm_write_f2bei:
			    return pcm_write_f2bei(psf, ptr, len);
			case write_float_pcm_write_f2bes:
			    return pcm_write_f2bes(psf, ptr, len);
			case write_float_pcm_write_f2bet:
			    return pcm_write_f2bet(psf, ptr, len);
			case write_float_pcm_write_f2lei:
			    return pcm_write_f2lei(psf, ptr, len);
			case write_float_pcm_write_f2les:
			    return pcm_write_f2les(psf, ptr, len);
			case write_float_pcm_write_f2let:
			    return pcm_write_f2let(psf, ptr, len);
			case write_float_pcm_write_f2sc:
			    return pcm_write_f2sc(psf, ptr, len);
			case write_float_pcm_write_f2uc:
			    return pcm_write_f2uc(psf, ptr, len);
			case write_float_replace_write_f:
			    return replace_write_f(psf, ptr, len);
			case write_float_replace_write_f2d:
			    return replace_write_f2d(psf, ptr, len);
			case write_float_sds_write_f:
			    return sds_write_f(psf, ptr, len);
			case write_float_ulaw_write_f2ulaw:
			    return ulaw_write_f2ulaw(psf, ptr, len);
			case write_float_vox_write_f:
			    return vox_write_f(psf, ptr, len);
			default:
			    invalidFunctionWasCalled();
			}
		} ;

	bufferlen = sizeof (pdither->buffer) / (sizeof (float)) ;

	while (len > 0)
	{	writecount = (len >= bufferlen) ? bufferlen : (int) len ;
		writecount /= psf->sf.channels ;
		writecount *= psf->sf.channels ;

		dither_float (ptr, (float*) pdither->buffer, writecount / psf->sf.channels, psf->sf.channels) ;

		// thiswrite = (int) pdither->write_float (psf, (float*) pdither->buffer, writecount) ;
		switch (pdither->write_float_signature) {
			case write_float_alac_write_f:
				thiswrite = (int) alac_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_alaw_write_f2alaw:
				thiswrite = (int) alaw_write_f2alaw (psf, (float*) pdither->buffer, writecount) ;
			case write_float_dither_write_float:
				thiswrite = (int) dither_write_float (psf, (float*) pdither->buffer, writecount) ;
			case write_float_dpcm_write_f2dles:
				thiswrite = (int) dpcm_write_f2dles (psf, (float*) pdither->buffer, writecount) ;
			case write_float_dpcm_write_f2dsc:
				thiswrite = (int) dpcm_write_f2dsc (psf, (float*) pdither->buffer, writecount) ;
			case write_float_dwvw_write_f:
				thiswrite = (int) dwvw_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_g72x_write_f:
				thiswrite = (int) g72x_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_gsm610_write_f:
				thiswrite = (int) gsm610_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_host_write_f:
				thiswrite = (int) host_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_host_write_f2d:
				thiswrite = (int) host_write_f2d (psf, (float*) pdither->buffer, writecount) ;
			case write_float_ima_write_f:
				thiswrite = (int) ima_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_msadpcm_write_f:
				thiswrite = (int) msadpcm_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_nms_adpcm_write_f:
				thiswrite = (int) nms_adpcm_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_paf24_write_f:
				thiswrite = (int) paf24_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2bei:
				thiswrite = (int) pcm_write_f2bei (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2bes:
				thiswrite = (int) pcm_write_f2bes (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2bet:
				thiswrite = (int) pcm_write_f2bet (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2lei:
				thiswrite = (int) pcm_write_f2lei (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2les:
				thiswrite = (int) pcm_write_f2les (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2let:
				thiswrite = (int) pcm_write_f2let (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2sc:
				thiswrite = (int) pcm_write_f2sc (psf, (float*) pdither->buffer, writecount) ;
			case write_float_pcm_write_f2uc:
				thiswrite = (int) pcm_write_f2uc (psf, (float*) pdither->buffer, writecount) ;
			case write_float_replace_write_f:
				thiswrite = (int) replace_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_replace_write_f2d:
				thiswrite = (int) replace_write_f2d (psf, (float*) pdither->buffer, writecount) ;
			case write_float_sds_write_f:
				thiswrite = (int) sds_write_f (psf, (float*) pdither->buffer, writecount) ;
			case write_float_ulaw_write_f2ulaw:
				thiswrite = (int) ulaw_write_f2ulaw (psf, (float*) pdither->buffer, writecount) ;
			case write_float_vox_write_f:
				thiswrite = (int) vox_write_f (psf, (float*) pdither->buffer, writecount) ;
			default:
				invalidFunctionWasCalled();
			}
		total += thiswrite ;
		len -= thiswrite ;
		if (thiswrite < writecount)
			break ;
		} ;

	return total ;
} /* dither_write_float */

sf_count_t
dither_write_double	(SF_PRIVATE *psf, const double *ptr, sf_count_t len)
{	DITHER_DATA *pdither ;
	int			bufferlen, writecount, thiswrite ;
	sf_count_t	total = 0 ;

	if ((pdither = psf->dither) == NULL)
	{	psf->error = SFE_DITHER_BAD_PTR ;
		return 0 ;
		} ;

	switch (SF_CODEC (psf->sf.format))
	{	case SF_FORMAT_PCM_S8 :
		case SF_FORMAT_PCM_U8 :
		case SF_FORMAT_PCM_16 :
		case SF_FORMAT_PCM_24 :
				break ;

		case SF_FORMAT_DPCM_8 :
		case SF_FORMAT_DPCM_16 :
				break ;

		default :
			switch (pdither->write_double_signature) {
			case write_double_alac_write_d:
			    return alac_write_d(psf, ptr, len);
			case write_double_alaw_write_d2alaw:
			    return alaw_write_d2alaw(psf, ptr, len);
			case write_double_dither_write_double:
			    return dither_write_double(psf, ptr, len);
			case write_double_dpcm_write_d2dles:
			    return dpcm_write_d2dles(psf, ptr, len);
			case write_double_dpcm_write_d2dsc:
			    return dpcm_write_d2dsc(psf, ptr, len);
			case write_double_dwvw_write_d:
			    return dwvw_write_d(psf, ptr, len);
			case write_double_g72x_write_d:
			    return g72x_write_d(psf, ptr, len);
			case write_double_gsm610_write_d:
			    return gsm610_write_d(psf, ptr, len);
			case write_double_host_write_d:
			    return host_write_d(psf, ptr, len);
			case write_double_host_write_d2f:
			    return host_write_d2f(psf, ptr, len);
			case write_double_ima_write_d:
			    return ima_write_d(psf, ptr, len);
			case write_double_msadpcm_write_d:
			    return msadpcm_write_d(psf, ptr, len);
			case write_double_nms_adpcm_write_d:
			    return nms_adpcm_write_d(psf, ptr, len);
			case write_double_paf24_write_d:
			    return paf24_write_d(psf, ptr, len);
			case write_double_pcm_write_d2bei:
			    return pcm_write_d2bei(psf, ptr, len);
			case write_double_pcm_write_d2bes:
			    return pcm_write_d2bes(psf, ptr, len);
			case write_double_pcm_write_d2bet:
			    return pcm_write_d2bet(psf, ptr, len);
			case write_double_pcm_write_d2lei:
			    return pcm_write_d2lei(psf, ptr, len);
			case write_double_pcm_write_d2les:
			    return pcm_write_d2les(psf, ptr, len);
			case write_double_pcm_write_d2let:
			    return pcm_write_d2let(psf, ptr, len);
			case write_double_pcm_write_d2sc:
			    return pcm_write_d2sc(psf, ptr, len);
			case write_double_pcm_write_d2uc:
			    return pcm_write_d2uc(psf, ptr, len);
			case write_double_replace_write_d:
			    return replace_write_d(psf, ptr, len);
			case write_double_replace_write_d2f:
			    return replace_write_d2f(psf, ptr, len);
			case write_double_sds_write_d:
			    return sds_write_d(psf, ptr, len);
			case write_double_ulaw_write_d2ulaw:
			    return ulaw_write_d2ulaw(psf, ptr, len);
			case write_double_vox_write_d:
			    return vox_write_d(psf, ptr, len);
			default:
			    invalidFunctionWasCalled();
			}
		} ;


	bufferlen = sizeof (pdither->buffer) / sizeof (double) ;

	while (len > 0)
	{	writecount = (len >= bufferlen) ? bufferlen : (int) len ;
		writecount /= psf->sf.channels ;
		writecount *= psf->sf.channels ;

		dither_double (ptr, (double*) pdither->buffer, writecount / psf->sf.channels, psf->sf.channels) ;

		// thiswrite = (int) pdither->write_double (psf, (double*) pdither->buffer, writecount) ;
		switch (pdither->write_double_signature) {
			case write_double_alac_write_d:
				thiswrite = (int) alac_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_alaw_write_d2alaw:
				thiswrite = (int) alaw_write_d2alaw (psf, (double*) pdither->buffer, writecount) ;
			case write_double_dither_write_double:
				thiswrite = (int) dither_write_double (psf, (double*) pdither->buffer, writecount) ;
			case write_double_dpcm_write_d2dles:
				thiswrite = (int) dpcm_write_d2dles (psf, (double*) pdither->buffer, writecount) ;
			case write_double_dpcm_write_d2dsc:
				thiswrite = (int) dpcm_write_d2dsc (psf, (double*) pdither->buffer, writecount) ;
			case write_double_dwvw_write_d:
				thiswrite = (int) dwvw_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_g72x_write_d:
				thiswrite = (int) g72x_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_gsm610_write_d:
				thiswrite = (int) gsm610_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_host_write_d:
				thiswrite = (int) host_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_host_write_d2f:
				thiswrite = (int) host_write_d2f (psf, (double*) pdither->buffer, writecount) ;
			case write_double_ima_write_d:
				thiswrite = (int) ima_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_msadpcm_write_d:
				thiswrite = (int) msadpcm_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_nms_adpcm_write_d:
				thiswrite = (int) nms_adpcm_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_paf24_write_d:
				thiswrite = (int) paf24_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2bei:
				thiswrite = (int) pcm_write_d2bei (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2bes:
				thiswrite = (int) pcm_write_d2bes (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2bet:
				thiswrite = (int) pcm_write_d2bet (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2lei:
				thiswrite = (int) pcm_write_d2lei (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2les:
				thiswrite = (int) pcm_write_d2les (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2let:
				thiswrite = (int) pcm_write_d2let (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2sc:
				thiswrite = (int) pcm_write_d2sc (psf, (double*) pdither->buffer, writecount) ;
			case write_double_pcm_write_d2uc:
				thiswrite = (int) pcm_write_d2uc (psf, (double*) pdither->buffer, writecount) ;
			case write_double_replace_write_d:
				thiswrite = (int) replace_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_replace_write_d2f:
				thiswrite = (int) replace_write_d2f (psf, (double*) pdither->buffer, writecount) ;
			case write_double_sds_write_d:
				thiswrite = (int) sds_write_d (psf, (double*) pdither->buffer, writecount) ;
			case write_double_ulaw_write_d2ulaw:
				thiswrite = (int) ulaw_write_d2ulaw (psf, (double*) pdither->buffer, writecount) ;
			case write_double_vox_write_d:
				thiswrite = (int) vox_write_d (psf, (double*) pdither->buffer, writecount) ;
			default:
				invalidFunctionWasCalled();
			}
		total += thiswrite ;
		len -= thiswrite ;
		if (thiswrite < writecount)
			break ;
		} ;

	return total ;
} /* dither_write_double */

/*==============================================================================
*/

static void
dither_short (const short *in, short *out, int frames, int channels)
{	int ch, k ;

	for (ch = 0 ; ch < channels ; ch++)
		for (k = ch ; k < channels * frames ; k += channels)
			out [k] = in [k] ;

} /* dither_short */

static void
dither_int (const int *in, int *out, int frames, int channels)
{	int ch, k ;

	for (ch = 0 ; ch < channels ; ch++)
		for (k = ch ; k < channels * frames ; k += channels)
			out [k] = in [k] ;

} /* dither_int */

static void
dither_float (const float *in, float *out, int frames, int channels)
{	int ch, k ;

	for (ch = 0 ; ch < channels ; ch++)
		for (k = ch ; k < channels * frames ; k += channels)
			out [k] = in [k] ;

} /* dither_float */

static void
dither_double (const double *in, double *out, int frames, int channels)
{	int ch, k ;

	for (ch = 0 ; ch < channels ; ch++)
		for (k = ch ; k < channels * frames ; k += channels)
			out [k] = in [k] ;

} /* dither_double */

/*==============================================================================
*/
#if 0

/*
** Not made public because this (maybe) requires storage of state information.
**
** Also maybe need separate state info for each channel!!!!
*/

int
DO_NOT_USE_sf_dither_short (const SF_DITHER_INFO *dither, const short *in, short *out, int frames, int channels)
{	int ch, k ;

	if (! dither)
		return SFE_DITHER_BAD_PTR ;

	switch (dither->type & SFD_TYPEMASK)
	{	case SFD_WHITE :
		case SFD_TRIANGULAR_PDF :
				for (ch = 0 ; ch < channels ; ch++)
					for (k = ch ; k < channels * frames ; k += channels)
						out [k] = in [k] ;
				break ;

		default :
			return SFE_DITHER_BAD_TYPE ;
		} ;

	return 0 ;
} /* DO_NOT_USE_sf_dither_short */

int
DO_NOT_USE_sf_dither_int (const SF_DITHER_INFO *dither, const int *in, int *out, int frames, int channels)
{	int ch, k ;

	if (! dither)
		return SFE_DITHER_BAD_PTR ;

	switch (dither->type & SFD_TYPEMASK)
	{	case SFD_WHITE :
		case SFD_TRIANGULAR_PDF :
				for (ch = 0 ; ch < channels ; ch++)
					for (k = ch ; k < channels * frames ; k += channels)
						out [k] = in [k] ;
				break ;

		default :
			return SFE_DITHER_BAD_TYPE ;
		} ;

	return 0 ;
} /* DO_NOT_USE_sf_dither_int */

int
DO_NOT_USE_sf_dither_float (const SF_DITHER_INFO *dither, const float *in, float *out, int frames, int channels)
{	int ch, k ;

	if (! dither)
		return SFE_DITHER_BAD_PTR ;

	switch (dither->type & SFD_TYPEMASK)
	{	case SFD_WHITE :
		case SFD_TRIANGULAR_PDF :
				for (ch = 0 ; ch < channels ; ch++)
					for (k = ch ; k < channels * frames ; k += channels)
						out [k] = in [k] ;
				break ;

		default :
			return SFE_DITHER_BAD_TYPE ;
		} ;

	return 0 ;
} /* DO_NOT_USE_sf_dither_float */

int
DO_NOT_USE_sf_dither_double (const SF_DITHER_INFO *dither, const double *in, double *out, int frames, int channels)
{	int ch, k ;

	if (! dither)
		return SFE_DITHER_BAD_PTR ;

	switch (dither->type & SFD_TYPEMASK)
	{	case SFD_WHITE :
		case SFD_TRIANGULAR_PDF :
				for (ch = 0 ; ch < channels ; ch++)
					for (k = ch ; k < channels * frames ; k += channels)
						out [k] = in [k] ;
				break ;

		default :
			return SFE_DITHER_BAD_TYPE ;
		} ;

	return 0 ;
} /* DO_NOT_USE_sf_dither_double */

#endif

