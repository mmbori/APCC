/*
** Copyright (C) 2002-2013 Erik de Castro Lopo <erikd@mega-nerd.com>
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

#include	"sfendian.h"

#include	<stdlib.h>

#include	"sndfile.h"
#include	"common.h"

#define		INTERLEAVE_CHANNELS		6

typedef struct
{	double	buffer [SF_BUFFER_LEN / sizeof (double)] ;

	sf_count_t		channel_len ;

	sf_count_t		(*read_short)	(SF_PRIVATE*, short *ptr, sf_count_t len) ;
	sf_count_t		(*read_int)	(SF_PRIVATE*, int *ptr, sf_count_t len) ;
	sf_count_t		(*read_float)	(SF_PRIVATE*, float *ptr, sf_count_t len) ;
	sf_count_t		(*read_double)	(SF_PRIVATE*, double *ptr, sf_count_t len) ;


	int read_short_signature;
	int read_int_signature;
	int read_float_signature;
	int read_double_signature;
} INTERLEAVE_DATA ;



sf_count_t interleave_read_short(SF_PRIVATE *psf, short *ptr, sf_count_t len) ;
sf_count_t interleave_read_int(SF_PRIVATE *psf, int *ptr, sf_count_t len) ;
sf_count_t interleave_read_float(SF_PRIVATE *psf, float *ptr, sf_count_t len) ;
sf_count_t interleave_read_double(SF_PRIVATE *psf, double *ptr,
				  sf_count_t len) ;

sf_count_t interleave_seek(SF_PRIVATE *, int mode,
			   sf_count_t samples_from_start);




int
interleave_init	(SF_PRIVATE *psf)
{	INTERLEAVE_DATA *pdata ;

	if (psf->file.mode != SFM_READ)
		return SFE_INTERLEAVE_MODE ;

	if (psf->interleave)
	{	psf_log_printf (psf, "*** Weird, already have interleave.\n") ;
		return 666 ;
		} ;

	/* Free this in sf_close() function. */
	if (! (pdata = malloc (sizeof (INTERLEAVE_DATA))))
		return SFE_MALLOC_FAILED ;

puts ("interleave_init") ;

	psf->interleave = pdata ;

	/* Save the existing methods. */
	pdata->read_short	= psf->read_short ;
	pdata->read_int		= psf->read_int ;
	pdata->read_float	= psf->read_float ;
	pdata->read_double	= psf->read_double ;

	pdata->channel_len = psf->sf.frames * psf->bytewidth ;

	/* Insert our new methods. */
	psf->read_short = interleave_read_short;
	psf->read_short_signature = read_short_interleave_read_short;
	psf->read_int = interleave_read_int;
	psf->read_int_signature = read_int_interleave_read_int;
	psf->read_float = interleave_read_float;
	psf->read_float_signature = read_float_interleave_read_float;
	psf->read_double = interleave_read_double;
	psf->read_double_signature = read_double_interleave_read_double;

	psf->seek = interleave_seek;
	psf->seek_signature = seek_interleave_seek;

	return 0 ;
} /* pcm_interleave_init */

/*------------------------------------------------------------------------------
*/

sf_count_t interleave_read_short(SF_PRIVATE *psf, short *ptr, sf_count_t len)
{	INTERLEAVE_DATA *pdata ;
	sf_count_t	offset, templen ;
	int			chan, count, k ;
	short		*inptr, *outptr ;

	if (! (pdata = psf->interleave))
		return 0 ;

	inptr = (short*) pdata->buffer ;

	for (chan = 0 ; chan < psf->sf.channels ; chan++)
	{	outptr = ptr + chan ;

		offset = psf->dataoffset + chan * psf->bytewidth * psf->read_current ;

		if (psf_fseek (psf, offset, SEEK_SET) != offset)
		{	psf->error = SFE_INTERLEAVE_SEEK ;
			return 0 ;
			} ;

		templen = len / psf->sf.channels ;

		while (templen > 0)
		{	if (templen > SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (short))
				count = SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (short) ;
			else
				count = (int) templen ;

			sf_count_t tmp;
			switch (pdata->read_short_signature) {
			case read_short_alac_read_s:
			    tmp = alac_read_s(psf, inptr, count);
			    break;
			case read_short_alaw_read_alaw2s:
			    tmp = alaw_read_alaw2s(psf, inptr, count);
			    break;
			case read_short_dither_read_short:
			    tmp = dither_read_short(psf, inptr, count);
			    break;
			case read_short_dpcm_read_dles2s:
			    tmp = dpcm_read_dles2s(psf, inptr, count);
			    break;
			case read_short_dpcm_read_dsc2s:
			    tmp = dpcm_read_dsc2s(psf, inptr, count);
			    break;
			case read_short_dwvw_read_s:
			    tmp = dwvw_read_s(psf, inptr, count);
			    break;
			case read_short_g72x_read_s:
			    tmp = g72x_read_s(psf, inptr, count);
			    break;
			case read_short_gsm610_read_s:
			    tmp = gsm610_read_s(psf, inptr, count);
			    break;
			case read_short_host_read_d2s:
			    tmp = host_read_d2s(psf, inptr, count);
			    break;
			case read_short_host_read_f2s:
			    tmp = host_read_f2s(psf, inptr, count);
			    break;
			case read_short_ima_read_s:
			    tmp = ima_read_s(psf, inptr, count);
			    break;
			case read_short_interleave_read_short:
			    tmp = interleave_read_short(psf, inptr, count);
			    break;
			case read_short_msadpcm_read_s:
			    tmp = msadpcm_read_s(psf, inptr, count);
			    break;
			case read_short_nms_adpcm_read_s:
			    tmp = nms_adpcm_read_s(psf, inptr, count);
			    break;
			case read_short_paf24_read_s:
			    tmp = paf24_read_s(psf, inptr, count);
			    break;
			case read_short_pcm_read_bei2s:
			    tmp = pcm_read_bei2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_bes2s:
			    tmp = pcm_read_bes2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_bet2s:
			    tmp = pcm_read_bet2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_lei2s:
			    tmp = pcm_read_lei2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_les2s:
			    tmp = pcm_read_les2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_let2s:
			    tmp = pcm_read_let2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_sc2s:
			    tmp = pcm_read_sc2s(psf, inptr, count);
			    break;
			case read_short_pcm_read_uc2s:
			    tmp = pcm_read_uc2s(psf, inptr, count);
			    break;
			case read_short_replace_read_d2s:
			    tmp = replace_read_d2s(psf, inptr, count);
			    break;
			case read_short_replace_read_f2s:
			    tmp = replace_read_f2s(psf, inptr, count);
			    break;
			case read_short_sds_read_s:
			    tmp = sds_read_s(psf, inptr, count);
			    break;
			case read_short_ulaw_read_ulaw2s:
			    tmp = ulaw_read_ulaw2s(psf, inptr, count);
			    break;
			case read_short_vox_read_s:
			    tmp = vox_read_s(psf, inptr, count);
			    break;
			default:
			    invalidFunctionWasCalled();
			    break;
			}
			if (tmp != count)
			{	psf->error = SFE_INTERLEAVE_READ ;
				return 0 ;
				} ;

			for (k = 0 ; k < count ; k++)
			{	*outptr = inptr [k] ;
				outptr += psf->sf.channels ;
				} ;

			templen -= count ;
			} ;
		} ;

	return len ;
} /* interleave_read_short */

sf_count_t interleave_read_int(SF_PRIVATE *psf, int *ptr, sf_count_t len)
{	INTERLEAVE_DATA *pdata ;
	sf_count_t	offset, templen ;
	int			chan, count, k ;
	int		*inptr, *outptr ;

	if (! (pdata = psf->interleave))
		return 0 ;

	inptr = (int*) pdata->buffer ;

	for (chan = 0 ; chan < psf->sf.channels ; chan++)
	{	outptr = ptr + chan ;

		offset = psf->dataoffset + chan * psf->bytewidth * psf->read_current ;

		if (psf_fseek (psf, offset, SEEK_SET) != offset)
		{	psf->error = SFE_INTERLEAVE_SEEK ;
			return 0 ;
			} ;

		templen = len / psf->sf.channels ;

		while (templen > 0)
		{	if (templen > SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (int))
				count = SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (int) ;
			else
				count = (int) templen ;

			sf_count_t tmp;
			switch (pdata->read_int_signature) {
			case read_int_alac_read_i:
			    tmp = alac_read_i(psf, inptr, count);
			    break;
			case read_int_alaw_read_alaw2i:
			    tmp = alaw_read_alaw2i(psf, inptr, count);
			    break;
			case read_int_dither_read_int:
			    tmp = dither_read_int(psf, inptr, count);
			    break;
			case read_int_dpcm_read_dles2i:
			    tmp = dpcm_read_dles2i(psf, inptr, count);
			    break;
			case read_int_dpcm_read_dsc2i:
			    tmp = dpcm_read_dsc2i(psf, inptr, count);
			    break;
			case read_int_dwvw_read_i:
			    tmp = dwvw_read_i(psf, inptr, count);
			    break;
			case read_int_g72x_read_i:
			    tmp = g72x_read_i(psf, inptr, count);
			    break;
			case read_int_gsm610_read_i:
			    tmp = gsm610_read_i(psf, inptr, count);
			    break;
			case read_int_host_read_d2i:
			    tmp = host_read_d2i(psf, inptr, count);
			    break;
			case read_int_host_read_f2i:
			    tmp = host_read_f2i(psf, inptr, count);
			    break;
			case read_int_ima_read_i:
			    tmp = ima_read_i(psf, inptr, count);
			    break;
			case read_int_interleave_read_int:
			    tmp = interleave_read_int(psf, inptr, count);
			    break;
			case read_int_msadpcm_read_i:
			    tmp = msadpcm_read_i(psf, inptr, count);
			    break;
			case read_int_nms_adpcm_read_i:
			    tmp = nms_adpcm_read_i(psf, inptr, count);
			    break;
			case read_int_paf24_read_i:
			    tmp = paf24_read_i(psf, inptr, count);
			    break;
			case read_int_pcm_read_bei2i:
			    tmp = pcm_read_bei2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_bes2i:
			    tmp = pcm_read_bes2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_bet2i:
			    tmp = pcm_read_bet2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_lei2i:
			    tmp = pcm_read_lei2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_les2i:
			    tmp = pcm_read_les2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_let2i:
			    tmp = pcm_read_let2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_sc2i:
			    tmp = pcm_read_sc2i(psf, inptr, count);
			    break;
			case read_int_pcm_read_uc2i:
			    tmp = pcm_read_uc2i(psf, inptr, count);
			    break;
			case read_int_replace_read_d2i:
			    tmp = replace_read_d2i(psf, inptr, count);
			    break;
			case read_int_replace_read_f2i:
			    tmp = replace_read_f2i(psf, inptr, count);
			    break;
			case read_int_sds_read_i:
			    tmp = sds_read_i(psf, inptr, count);
			    break;
			case read_int_ulaw_read_ulaw2i:
			    tmp = ulaw_read_ulaw2i(psf, inptr, count);
			    break;
			case read_int_vox_read_i:
			    tmp = vox_read_i(psf, inptr, count);
			    break;
			default:
			    invalidFunctionWasCalled();
			    break;
			}
			if (tmp != count)
			{	psf->error = SFE_INTERLEAVE_READ ;
				return 0 ;
				} ;

			for (k = 0 ; k < count ; k++)
			{	*outptr = inptr [k] ;
				outptr += psf->sf.channels ;
				} ;

			templen -= count ;
			} ;
		} ;

	return len ;
} /* interleave_read_int */

sf_count_t interleave_read_float(SF_PRIVATE *psf, float *ptr, sf_count_t len)
{	INTERLEAVE_DATA *pdata ;
	sf_count_t	offset, templen ;
	int			chan, count, k ;
	float		*inptr, *outptr ;

	if (! (pdata = psf->interleave))
		return 0 ;

	inptr = (float*) pdata->buffer ;

	for (chan = 0 ; chan < psf->sf.channels ; chan++)
	{	outptr = ptr + chan ;

		offset = psf->dataoffset + pdata->channel_len * chan + psf->read_current * psf->bytewidth ;

/*-printf ("chan : %d     read_current : %6lld    offset : %6lld\n", chan, psf->read_current, offset) ;-*/

		if (psf_fseek (psf, offset, SEEK_SET) != offset)
		{	psf->error = SFE_INTERLEAVE_SEEK ;
/*-puts ("interleave_seek error") ; exit (1) ;-*/
			return 0 ;
			} ;

		templen = len / psf->sf.channels ;

		while (templen > 0)
		{	if (templen > SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (float))
				count = SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (float) ;
			else
				count = (int) templen ;
			
				sf_count_t tmp;
			switch (pdata->read_float_signature) {
			case read_float_alac_read_f:
			    tmp = alac_read_f(psf, inptr, count);
			    break;
			case read_float_alaw_read_alaw2f:
			    tmp = alaw_read_alaw2f(psf, inptr, count);
			    break;
			case read_float_dpcm_read_dles2f:
			    tmp = dpcm_read_dles2f(psf, inptr, count);
			    break;
			case read_float_dpcm_read_dsc2f:
			    tmp = dpcm_read_dsc2f(psf, inptr, count);
			    break;
			case read_float_dwvw_read_f:
			    tmp = dwvw_read_f(psf, inptr, count);
			    break;
			case read_float_g72x_read_f:
			    tmp = g72x_read_f(psf, inptr, count);
			    break;
			case read_float_gsm610_read_f:
			    tmp = gsm610_read_f(psf, inptr, count);
			    break;
			case read_float_host_read_d2f:
			    tmp = host_read_d2f(psf, inptr, count);
			    break;
			case read_float_host_read_f:
			    tmp = host_read_f(psf, inptr, count);
			    break;
			case read_float_ima_read_f:
			    tmp = ima_read_f(psf, inptr, count);
			    break;
			case read_float_interleave_read_float:
			    tmp = interleave_read_float(psf, inptr, count);
			    break;
			case read_float_msadpcm_read_f:
			    tmp = msadpcm_read_f(psf, inptr, count);
			    break;
			case read_float_nms_adpcm_read_f:
			    tmp = nms_adpcm_read_f(psf, inptr, count);
			    break;
			case read_float_paf24_read_f:
			    tmp = paf24_read_f(psf, inptr, count);
			    break;
			case read_float_pcm_read_bei2f:
			    tmp = pcm_read_bei2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_bes2f:
			    tmp = pcm_read_bes2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_bet2f:
			    tmp = pcm_read_bet2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_lei2f:
			    tmp = pcm_read_lei2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_les2f:
			    tmp = pcm_read_les2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_let2f:
			    tmp = pcm_read_let2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_sc2f:
			    tmp = pcm_read_sc2f(psf, inptr, count);
			    break;
			case read_float_pcm_read_uc2f:
			    tmp = pcm_read_uc2f(psf, inptr, count);
			    break;
			case read_float_replace_read_d2f:
			    tmp = replace_read_d2f(psf, inptr, count);
			    break;
			case read_float_replace_read_f:
			    tmp = replace_read_f(psf, inptr, count);
			    break;
			case read_float_sds_read_f:
			    tmp = sds_read_f(psf, inptr, count);
			    break;
			case read_float_ulaw_read_ulaw2f:
			    tmp = ulaw_read_ulaw2f(psf, inptr, count);
			    break;
			case read_float_vox_read_f:
			    tmp = vox_read_f(psf, inptr, count);
			    break;
			default:
			    invalidFunctionWasCalled();
			    break;
			}
			if (tmp != count)
			{	psf->error = SFE_INTERLEAVE_READ ;
/*-puts ("interleave_read error") ; exit (1) ;-*/
				return 0 ;
				} ;

			for (k = 0 ; k < count ; k++)
			{	*outptr = inptr [k] ;
				outptr += psf->sf.channels ;
				} ;

			templen -= count ;
			} ;
		} ;

	return len ;
} /* interleave_read_float */

sf_count_t interleave_read_double(SF_PRIVATE *psf, double *ptr,
				  sf_count_t len)
{	INTERLEAVE_DATA *pdata ;
	sf_count_t	offset, templen ;
	int			chan, count, k ;
	double		*inptr, *outptr ;

	if (! (pdata = psf->interleave))
		return 0 ;

	inptr = (double*) pdata->buffer ;

	for (chan = 0 ; chan < psf->sf.channels ; chan++)
	{	outptr = ptr + chan ;

		offset = psf->dataoffset + chan * psf->bytewidth * psf->read_current ;

		if (psf_fseek (psf, offset, SEEK_SET) != offset)
		{	psf->error = SFE_INTERLEAVE_SEEK ;
			return 0 ;
			} ;

		templen = len / psf->sf.channels ;

		while (templen > 0)
		{	if (templen > SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (double))
				count = SIGNED_SIZEOF (pdata->buffer) / SIGNED_SIZEOF (double) ;
			else
				count = (int) templen ;

			sf_count_t tmp;
			switch (pdata->read_double_signature) {
			case read_double_alac_read_d:
			    tmp = alac_read_d(psf, inptr, count);
			    break;
			case read_double_alaw_read_alaw2d:
			    tmp = alaw_read_alaw2d(psf, inptr, count);
			    break;
			case read_double_dpcm_read_dles2d:
			    tmp = dpcm_read_dles2d(psf, inptr, count);
			    break;
			case read_double_dpcm_read_dsc2d:
			    tmp = dpcm_read_dsc2d(psf, inptr, count);
			    break;
			case read_double_dwvw_read_d:
			    tmp = dwvw_read_d(psf, inptr, count);
			    break;
			case read_double_g72x_read_d:
			    tmp = g72x_read_d(psf, inptr, count);
			    break;
			case read_double_gsm610_read_d:
			    tmp = gsm610_read_d(psf, inptr, count);
			    break;
			case read_double_host_read_d:
			    tmp = host_read_d(psf, inptr, count);
			    break;
			case read_double_host_read_f2d:
			    tmp = host_read_f2d(psf, inptr, count);
			    break;
			case read_double_ima_read_d:
			    tmp = ima_read_d(psf, inptr, count);
			    break;
			case read_double_interleave_read_double:
			    tmp = interleave_read_double(psf, inptr, count);
			    break;
			case read_double_msadpcm_read_d:
			    tmp = msadpcm_read_d(psf, inptr, count);
			    break;
			case read_double_nms_adpcm_read_d:
			    tmp = nms_adpcm_read_d(psf, inptr, count);
			    break;
			case read_double_paf24_read_d:
			    tmp = paf24_read_d(psf, inptr, count);
			    break;
			case read_double_pcm_read_bei2d:
			    tmp = pcm_read_bei2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_bes2d:
			    tmp = pcm_read_bes2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_bet2d:
			    tmp = pcm_read_bet2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_lei2d:
			    tmp = pcm_read_lei2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_les2d:
			    tmp = pcm_read_les2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_let2d:
			    tmp = pcm_read_let2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_sc2d:
			    tmp = pcm_read_sc2d(psf, inptr, count);
			    break;
			case read_double_pcm_read_uc2d:
			    tmp = pcm_read_uc2d(psf, inptr, count);
			    break;
			case read_double_replace_read_d:
			    tmp = replace_read_d(psf, inptr, count);
			    break;
			case read_double_replace_read_f2d:
			    tmp = replace_read_f2d(psf, inptr, count);
			    break;
			case read_double_sds_read_d:
			    tmp = sds_read_d(psf, inptr, count);
			    break;
			case read_double_ulaw_read_ulaw2d:
			    tmp = ulaw_read_ulaw2d(psf, inptr, count);
			    break;
			case read_double_vox_read_d:
			    tmp = vox_read_d(psf, inptr, count);
			    break;
			default:
			    invalidFunctionWasCalled();
			    break;
			}
			if (tmp != count)
			{	psf->error = SFE_INTERLEAVE_READ ;
				return 0 ;
				} ;

			for (k = 0 ; k < count ; k++)
			{	*outptr = inptr [k] ;
				outptr += psf->sf.channels ;
				} ;

			templen -= count ;
			} ;
		} ;

	return len ;
} /* interleave_read_double */

/*------------------------------------------------------------------------------
*/

sf_count_t interleave_seek(SF_PRIVATE * UNUSED(psf), int UNUSED(mode),
			   sf_count_t samples_from_start)
{
	/*
	** Do nothing here. This is a place holder to prevent the default
	** seek function from being called.
	*/

	return samples_from_start ;
} /* interleave_seek */

