/*
 * ProFTPD - FTP server daemon
 * Copyright (c) 1997, 1998 Public Flood Software
 * Copyright (c) 1999, 2000 MacGyver aka Habeeb J. Dihu <macgyver@tos.net>
 * Copyright (c) 2001-2023 The ProFTPD Project team
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Suite 500, Boston, MA 02110-1335, USA.
 *
 * As a special exemption, Public Flood Software/MacGyver aka Habeeb J. Dihu
 * and other respective copyright holders give permission to link this program
 * with OpenSSL, and distribute the resulting executable, without including
 * the source code for OpenSSL in the source distribution.
 */

/* ProFTPD module definitions. */

#ifndef PR_MODULES_H
#define PR_MODULES_H

// #include "signature_table.h"

typedef struct module_struc	module;
typedef struct modret_struc	modret_t;

struct modret_struc {
  module *mr_handler_module;		/* which module handled this? */
  int mr_error;				/* !0 if error */
  const char *mr_numeric;		/* numeric error code */
  const char *mr_message;		/* text message */
  void *data;				/* add'l data -- undefined */
};

/* The following macros are for creating basic modret_t, and can
 * only be used inside of module handlers
 */

#define MODRET				modret_t*
#define PR_HANDLED(cmd)			mod_create_ret((cmd),\
					0,NULL,NULL)
#define PR_DECLINED(cmd)		(modret_t*)NULL
#define PR_ERROR(cmd)			mod_create_ret((cmd),\
					1,NULL,NULL)
#define PR_ERROR_MSG(cmd,n,m)		mod_create_ret((cmd),\
					1,(n),(m))
#define PR_ERROR_INT(cmd,n)		mod_create_error((cmd),(n))

#define MODRET_ISDECLINED(x)		((x) == NULL)
#define MODRET_ISHANDLED(x)		((x) && !(x)->mr_error)
#define MODRET_ISERROR(x)		((x) && (x)->mr_error)
#define MODRET_HASNUM(x)		((x) && (x)->mr_numeric)
#define MODRET_HASMSG(x)		((x) && (x)->mr_message)
#define MODRET_ERROR(x)			((x) ? (x)->mr_error : 0)
#define MODRET_ERRNUM(x)		((x) ? (x)->mr_numeric : NULL)
#define MODRET_ERRMSG(x)		((x) ? (x)->mr_message : NULL)
#define MODRET_HASDATA(x)		((x) ? ((x)->data ? TRUE : FALSE) : FALSE)

typedef struct conftab_rec {
  char *directive;
  modret_t *(*handler)(cmd_rec *);
  unsigned int handler_signature;

  module *m;				/* Reference to owning module */

} conftable;

/* Classes of commands.  These are used as logging categories as well. */
#define CL_NONE		0x0000
#define CL_AUTH		0x0001  /* USER, PASS */
#define CL_INFO		0x0002  /* Informational commands (PWD, SYST, etc) */
#define CL_DIRS		0x0004  /* Directory commands (LIST, NLST, CWD, etc) */
#define CL_READ		0x0008  /* File reading commands (RETR) */
#define CL_WRITE	0x0010  /* Writing commands (STOR, MKD, etc) */
#define CL_MISC		0x0020  /* Miscellaneous (RNFR/RNTO, SITE, etc) */
#define CL_SEC		0x0040  /* RFC2228 Security commands, SSH key exchange */
#define CL_CONNECT	0x0080  /* Session start */
#define CL_DISCONNECT	0x0100  /* Session end */
#define CL_SSH		0x0200  /* SSH requests */
#define CL_SFTP		0x0400  /* SFTP requests */

/* Note that CL_ALL explicitly does NOT include CL_DISCONNECT; this is to
 * preserve backward compatible behavior.
 */
#define CL_ALL\
  (CL_AUTH|CL_INFO|CL_DIRS|CL_READ|\
   CL_WRITE|CL_MISC|CL_SEC|CL_SSH|CL_SFTP)

/* Command handler types for command table */
#define PRE_CMD				1
#define CMD				2
#define POST_CMD			3
#define POST_CMD_ERR			4
#define LOG_CMD				5
#define LOG_CMD_ERR			6
#define HOOK				7

typedef struct cmdtab_rec {

  /* See above for cmd types. */
  unsigned char cmd_type;
  const char *command;

  /* Command group. */
  const char *group;
  modret_t *(*handler)(cmd_rec *);
  unsigned int handler_signature;

  /* Does this command require authentication? */
  unsigned char requires_auth;

  /* Can this command be issued during a transfer? (Now obsolete) */
  unsigned char interrupt_xfer;

  int cmd_class;
  module *m;

} cmdtable;

typedef struct authtab_rec {
  int auth_flags;			/* future use */
  const char *name;
  modret_t *(*handler)(cmd_rec *);
  unsigned int handler_signature;

  module *m;

} authtable;

#define PR_AUTH_FL_REQUIRED		0x00001

struct module_struc {
  module *next, *prev;

  int api_version;			/* API version _not_ module version */
  const char *name;			/* Module name */

  struct conftab_rec *conftable;	/* Configuration directive table */
  struct cmdtab_rec *cmdtable;		/* Command table */
  struct authtab_rec *authtable; 	/* Authentication handler table */

  int (*init)(void); 			/* Module initialization */
  int (*sess_init)(void);		/* Session initialization */

  const char *module_version;		/* Module version */
  void *handle;				/* Module handle */

  /* Internal use; high number == higher priority. */
  int priority;

  int init_signature;
  int sess_init_signature;
};

#define ANY_MODULE			((module*)0xffffffff)

/* Prototypes */

unsigned char command_exists(const char *);
int modules_init(void);
void modules_list(int flags);
void modules_list2(int (*listf)(const char *, ...),
int listf_signature, int flags);
#define PR_MODULES_LIST_FL_SHOW_VERSION		0x00001
#define PR_MODULES_LIST_FL_SHOW_STATIC		0x00002

int modules_session_init(void);

unsigned char pr_module_exists(const char *);
module *pr_module_get(const char *);
int pr_module_load(module *m);
int pr_module_unload(module *m);

/* Load the various symbol tables from this module. */
int pr_module_load_authtab(module *m);
int pr_module_load_cmdtab(module *m);
int pr_module_load_conftab(module *m);

modret_t *pr_module_call(module *, modret_t *(*)(cmd_rec *), unsigned int signature, cmd_rec *);

/* This function is in main.c, but is prototyped here */
void set_auth_check(int (*ck)(cmd_rec *),
int ck_signature);

/* This callback is defined/stored in src/main.c */
extern int (*cmd_auth_chk)(cmd_rec *);

/* For use from inside module handler functions */
modret_t *mod_create_ret(cmd_rec *, unsigned char, const char *, const char *);
modret_t *mod_create_error(cmd_rec *, int);
modret_t *mod_create_data(cmd_rec *, void *);

/* Implemented in mod_core.c */
int core_chgrp(cmd_rec *, const char *, uid_t, gid_t);
int core_chmod(cmd_rec *, const char *, mode_t);

#define sig_add_anonymous 0xC5766665U
#define sig_add_class 0x9F4EC9BCU
#define sig_add_defaultchdir 0xF964D446U
#define sig_add_defaultroot 0x18D0DCE3U
#define sig_add_directory 0x494C8E4AU
#define sig_add_from 0x9030A292U
#define sig_add_global 0x15675482U
#define sig_add_groupowner 0x7BD4D21CU
#define sig_add_limit 0x9D1305D0U
#define sig_add_ratiodata 0x8A48DF83U
#define sig_add_saveratios 0xC0545AD8U
#define sig_add_str 0x391F9206U
#define sig_add_transferlog 0x6E33F6FCU
#define sig_add_userowner 0x72509611U
#define sig_add_virtualhost 0x9959B4FEU
#define sig_auth_acct 0xB9608FDAU
#define sig_auth_err_pass 0xEFEF8E0DU
#define sig_auth_log_pass 0xDBA7B9B0U
#define sig_auth_otp_auth 0x3D7DB93AU
#define sig_auth_otp_chkpass 0x80B31345U
#define sig_auth_otp_post_pass 0xF735B0FCU
#define sig_auth_otp_post_user 0x1F295610U
#define sig_auth_otp_pre_user 0x0ACAAF5FU
#define sig_auth_pass 0x94B12D77U
#define sig_auth_post_pass 0x8D619245U
#define sig_auth_post_retr 0xBBEC7EE0U
#define sig_auth_pre_pass 0xCEC46104U
#define sig_auth_pre_retr 0x2C2FEABAU
#define sig_auth_pre_user 0x7ADD8D41U
#define sig_auth_rein 0x2A953F36U
#define sig_auth_user 0x05E4A005U
#define sig_authfile_auth 0xF7C00BA4U
#define sig_authfile_chkpass 0xD355E29FU
#define sig_authfile_endgrent 0xFAD347C0U
#define sig_authfile_endpwent 0x09CCABCDU
#define sig_authfile_getgrent 0xCB47B1D2U
#define sig_authfile_getgrgid 0x800750B6U
#define sig_authfile_getgrnam 0xE50A4C2EU
#define sig_authfile_getgroups 0xA9170A62U
#define sig_authfile_getpwent 0x7F4C00FFU
#define sig_authfile_getpwnam 0x94BBFDF0U
#define sig_authfile_getpwuid 0x92F91582U
#define sig_authfile_gid2name 0x5C8911B8U
#define sig_authfile_name2gid 0xAE44F92CU
#define sig_authfile_name2uid 0x9584F2F2U
#define sig_authfile_setgrent 0x1059C36CU
#define sig_authfile_setpwent 0x54F4FA67U
#define sig_authfile_uid2name 0x85180CDDU
#define sig_ban_post_pass 0x872F9401U
#define sig_ban_pre_pass 0x34077026U
#define sig_cap_post_pass 0xC9D15BEBU
#define sig_cmd_cleanup 0x78B181C3U
#define sig_cmd_close 0x581C2E1EU
#define sig_cmd_cwd 0x4201557DU
#define sig_cmd_defineconnection 0x436810D0U
#define sig_cmd_escapestring 0x304E2B84U
#define sig_cmd_exit 0xF1DF1F50U
#define sig_cmd_identify 0xBB4BC036U
#define sig_cmd_insert 0xCE540794U
#define sig_cmd_open 0x24A5BB3AU
#define sig_cmd_prepare 0x10CAE350U
#define sig_cmd_procedure 0x613A8D22U
#define sig_cmd_query 0x6B7B0512U
#define sig_cmd_select 0x7593A611U
#define sig_cmd_site 0x8CAF028BU
#define sig_cmd_update 0x8918582EU
#define sig_cmd_user 0x34A8677EU
#define sig_copy_copy 0x5BAC3760U
#define sig_copy_cpfr 0xC66E2994U
#define sig_copy_cpto 0x36137766U
#define sig_copy_log_site 0x2C512748U
#define sig_copy_post_pass 0x4A750B67U
#define sig_core_cdup 0x11D74B57U
#define sig_core_clnt 0xE4A318F5U
#define sig_core_csid 0xCB642CADU
#define sig_core_cwd 0xEF8DBCD0U
#define sig_core_dele 0xE63FD8DDU
#define sig_core_eprt 0x4758BE3AU
#define sig_core_epsv 0x07EA742BU
#define sig_core_feat 0x55E8205FU
#define sig_core_help 0x39F206D3U
#define sig_core_host 0x7B44635CU
#define sig_core_log_quit 0x5380E846U
#define sig_core_mdtm 0x6882F5B4U
#define sig_core_mkd 0x90EA00ABU
#define sig_core_noop 0x20C1CC20U
#define sig_core_opts 0x40BE6658U
#define sig_core_pasv 0x507C7559U
#define sig_core_port 0x5FC5D939U
#define sig_core_post_host 0xA4D6A00DU
#define sig_core_post_pass 0xFDB3E19FU
#define sig_core_pre_any 0xE59352C7U
#define sig_core_pwd 0x2C72A5F5U
#define sig_core_quit 0x8798CB0CU
#define sig_core_rmd 0x406D0A60U
#define sig_core_rnfr 0xD1703CD5U
#define sig_core_rnto 0xC2B5BB86U
#define sig_core_rnto_cleanup 0xF30FD23AU
#define sig_core_size 0x943DAF5DU
#define sig_core_syst 0xE5517B43U
#define sig_deflate_mode 0x91B190C3U
#define sig_delay_log_pass 0x5CD6FFDBU
#define sig_delay_log_pass_err 0x67BD8B30U
#define sig_delay_log_user 0xA6DF2E10U
#define sig_delay_post_pass 0x1A2221A4U
#define sig_delay_post_user 0x3C5264E7U
#define sig_delay_pre_pass 0x08475DA7U
#define sig_delay_pre_user 0xBA81C414U
#define sig_digest_hash 0xAA0FFA1CU
#define sig_digest_log 0x7BC51A48U
#define sig_digest_log_err 0xC9A49C4AU
#define sig_digest_md5 0xA2AFFD55U
#define sig_digest_post_pass 0x224152C3U
#define sig_digest_pre_appe 0xFEEFA512U
#define sig_digest_pre_retr 0xE33CB289U
#define sig_digest_pre_stor 0xF030F93BU
#define sig_digest_xcrc 0xF45D24E6U
#define sig_digest_xmd5 0xF00AD939U
#define sig_digest_xsha1 0x7F6235A0U
#define sig_digest_xsha256 0x968DE4D5U
#define sig_digest_xsha512 0x5EEAA1ABU
#define sig_end_anonymous 0xB5B7CDE3U
#define sig_end_class 0x49405B44U
#define sig_end_directory 0xCA825E26U
#define sig_end_global 0x8539A133U
#define sig_end_ifctxt 0xD80C6738U
#define sig_end_ifdefine 0xF48C8362U
#define sig_end_ifmodule 0x6B34C376U
#define sig_end_ifversion 0x6AF3BE75U
#define sig_end_limit 0xE6EF9961U
#define sig_end_virtualhost 0x14B4596AU
#define sig_err_master 0xB9960EE5U
#define sig_errinfo_master 0xFB36E9BBU
#define sig_exec_log_exit 0x7995396AU
#define sig_exec_post_cmd 0x4B9F5666U
#define sig_exec_post_cmd_err 0xCB098746U
#define sig_exec_pre_cmd 0x8695C985U
#define sig_facts_mff 0xFF40DDDFU
#define sig_facts_mfmt 0x82777D23U
#define sig_facts_mlsd 0x9E63ECDCU
#define sig_facts_mlsd_cleanup 0xBCF73169U
#define sig_facts_mlst 0x240F696CU
#define sig_forensic_pass_err 0x125D13D7U
#define sig_geoip_post_pass 0x8EB6FF35U
#define sig_handle_ldap_quota_lookup 0x99C61557U
#define sig_handle_ldap_ssh_pubkey_lookup 0xE17F0462U
#define sig_ifsess_post_pass 0xAB4F5FF4U
#define sig_ifsess_post_user 0x09CF5FE0U
#define sig_info_master 0xF1B092A8U
#define sig_lang_lang 0xC54850BDU
#define sig_lang_post_pass 0xA7690810U
#define sig_ldap_auth_auth 0xF6E5D7E0U
#define sig_ldap_auth_check 0x89D0CFEDU
#define sig_ldap_auth_endpwent 0x5248AC52U
#define sig_ldap_auth_getgrgid 0x21D32C0CU
#define sig_ldap_auth_getgrnam 0xE834AC6DU
#define sig_ldap_auth_getgroups 0x6217B07BU
#define sig_ldap_auth_getpwnam 0x9CEBDE08U
#define sig_ldap_auth_getpwuid 0x522AAF67U
#define sig_ldap_auth_gid2name 0xBA37B37BU
#define sig_ldap_auth_name2gid 0x6C78963FU
#define sig_ldap_auth_name2uid 0x3E0CEF84U
#define sig_ldap_auth_setpwent 0x05CAF5F1U
#define sig_ldap_auth_uid2name 0x74C562E6U
#define sig_log_any 0xEF619EFEU
#define sig_log_master 0x0F3BD144U
#define sig_log_post_pass 0x0379610EU
#define sig_log_pre_dele 0x7F7CCB31U
#define sig_ls_err_nlst 0x7ED5E118U
#define sig_ls_list 0x558832FEU
#define sig_ls_log_nlst 0x6103F5C8U
#define sig_ls_nlst 0x001329D0U
#define sig_ls_post_pass 0x627FD846U
#define sig_ls_stat 0x5A016522U
#define sig_pam_auth 0x75C75292U
#define sig_parser_set_testsuite_enabled 0xAEC25B5AU
#define sig_parser_set_testsuite_engine 0x547AF35EU
#define sig_pre_cmd 0x6C85DD22U
#define sig_pre_cmd_retr 0xFF01A9A8U
#define sig_pw_auth 0xB3698B6AU
#define sig_pw_authz 0x77D12594U
#define sig_pw_check 0x9B2D3775U
#define sig_pw_endgrent 0x6C0133D6U
#define sig_pw_endpwent 0x4AE5B779U
#define sig_pw_getgrent 0xC8E11F1EU
#define sig_pw_getgrgid 0x6179DF44U
#define sig_pw_getgrnam 0x1743BFBDU
#define sig_pw_getgroups 0xDCBD19D2U
#define sig_pw_getpwent 0xA50A5B47U
#define sig_pw_getpwnam 0x6B26545CU
#define sig_pw_getpwuid 0x65262933U
#define sig_pw_gid2name 0x3A333DD8U
#define sig_pw_name2gid 0xE1342881U
#define sig_pw_name2uid 0x389093BAU
#define sig_pw_setgrent 0xFA0F8137U
#define sig_pw_setpwent 0x599889E8U
#define sig_pw_uid2name 0x362C17EDU
#define sig_quotatab_post_abor 0xC74FA39FU
#define sig_quotatab_post_appe 0x7F2482A7U
#define sig_quotatab_post_appe_err 0x0A9C91FCU
#define sig_quotatab_post_copy 0x5F95D055U
#define sig_quotatab_post_copy_err 0x7E3E0DE1U
#define sig_quotatab_post_dele 0x928F3EF3U
#define sig_quotatab_post_dele_err 0xDEC31904U
#define sig_quotatab_post_mkd 0xBEC977AFU
#define sig_quotatab_post_mkd_err 0xA1B69DE7U
#define sig_quotatab_post_pass 0x0B59C995U
#define sig_quotatab_post_retr 0x2D0F8B42U
#define sig_quotatab_post_retr_err 0x7EA0B5CAU
#define sig_quotatab_post_rmd 0x5FF16B2CU
#define sig_quotatab_post_rnto 0x6A1C020FU
#define sig_quotatab_post_site 0x031391C2U
#define sig_quotatab_post_site_err 0x3688F4CCU
#define sig_quotatab_post_stor 0xBA924F98U
#define sig_quotatab_post_stor_err 0x75D9D942U
#define sig_quotatab_pre_appe 0xD110A478U
#define sig_quotatab_pre_copy 0x857B2420U
#define sig_quotatab_pre_dele 0xF060A01CU
#define sig_quotatab_pre_mkd 0x60EF2D82U
#define sig_quotatab_pre_retr 0xA5131203U
#define sig_quotatab_pre_rmd 0xE0E087B5U
#define sig_quotatab_pre_rnto 0x5B50D229U
#define sig_quotatab_pre_site 0xF8AD8691U
#define sig_quotatab_pre_stor 0x48AB2CF2U
#define sig_quotatab_site 0xE0F64EFBU
#define sig_radius_auth 0x6C812B9FU
#define sig_radius_check 0xB4689CF4U
#define sig_radius_endgrent 0xE385A82DU
#define sig_radius_endpwent 0x82662617U
#define sig_radius_getgrent 0x996CE9F4U
#define sig_radius_getgrgid 0x0D95AA0AU
#define sig_radius_getgrnam 0xC757995AU
#define sig_radius_getgroups 0xB8AC060CU
#define sig_radius_getpwent 0x90A3A873U
#define sig_radius_getpwnam 0x2F786BE3U
#define sig_radius_getpwuid 0x6C0966CFU
#define sig_radius_gid2name 0x75045144U
#define sig_radius_name2gid 0x36E98BFFU
#define sig_radius_name2uid 0x431A1D74U
#define sig_radius_post_pass 0x51DCC044U
#define sig_radius_post_pass_err 0x3C37333DU
#define sig_radius_pre_pass 0x3C3356D2U
#define sig_radius_quota_lookup 0xAB73CF2CU
#define sig_radius_setgrent 0xE4CBD795U
#define sig_radius_setpwent 0x7FDA62A6U
#define sig_radius_uid2name 0x935EA0EFU
#define sig_ratio_log_pass 0x98BCBB6CU
#define sig_ratio_post_cmd 0xEBD1FCB4U
#define sig_ratio_post_retr 0x4AB30185U
#define sig_ratio_post_stor 0x8699F7B4U
#define sig_readme_post_cmd 0x2296E447U
#define sig_redis_log_any 0x0B96A4AAU
#define sig_redis_post_pass 0x92760E6CU
#define sig_regex_filters 0x509EEB5CU
#define sig_rewrite_fixup 0x46C02121U
#define sig_rlimit_post_pass 0xDB5D4A1DU
#define sig_sample_log_any 0x34BB1221U
#define sig_sample_post_list 0xE3A2C1B8U
#define sig_sample_post_nlst 0x199F46D5U
#define sig_sample_post_retr 0xE86BD0BCU
#define sig_sample_post_stor 0x8967DF22U
#define sig_sample_pre_any 0x557D6973U
#define sig_sample_xfoo 0xF0FE81D5U
#define sig_set_accessdenymsg 0xE6FE2551U
#define sig_set_accessgrantmsg 0x750D3B94U
#define sig_set_adminctrlsacls 0x215719BAU
#define sig_set_adminctrlsengine 0x951BF604U
#define sig_set_allowall 0x5CB6571FU
#define sig_set_allowchrootsymlinks 0xD66B7D83U
#define sig_set_allowdeny 0x7213D97BU
#define sig_set_allowdenyfilter 0x7B81429CU
#define sig_set_allowdenyusergroupclass 0x229C53E9U
#define sig_set_allowemptypasswords 0xEE460A5EU
#define sig_set_allowforeignaddress 0x4BB0AC47U
#define sig_set_allowlogsymlinks 0xF535CA7EU
#define sig_set_allowoverride 0x62146D8CU
#define sig_set_allowoverwrite 0xD2E142E8U
#define sig_set_allowrestart 0xC746245CU
#define sig_set_anonallowrobots 0x9D519BA5U
#define sig_set_anonrejectpasswords 0x2C95464FU
#define sig_set_anonrequirepassword 0xCE08C771U
#define sig_set_authaliasonly 0x5441E7C8U
#define sig_set_authfileoptions 0x7736914DU
#define sig_set_authgroupfile 0x85DC4DFFU
#define sig_set_authorder 0xED26A850U
#define sig_set_authotpalgo 0xE128194AU
#define sig_set_authotpengine 0x27643B12U
#define sig_set_authotplog 0xFCC7B28EU
#define sig_set_authotpoptions 0x5740DA4DU
#define sig_set_authotptable 0x301F27BEU
#define sig_set_authotptablelock 0xBB663647U
#define sig_set_authpam 0xDF32C2BDU
#define sig_set_authpamconfig 0x56F33B39U
#define sig_set_authpamoptions 0xA23DA213U
#define sig_set_authunixoptions 0x54536C44U
#define sig_set_authuserfile 0xFA734180U
#define sig_set_authusingalias 0x32C79DBBU
#define sig_set_bancache 0x068BED9BU
#define sig_set_bancacheoptions 0xCD1746BAU
#define sig_set_banctrlsacls 0xC8EDADBBU
#define sig_set_banengine 0x466649B6U
#define sig_set_banlog 0x53C5F0BBU
#define sig_set_banmessage 0x1079F28CU
#define sig_set_banonevent 0xFA15CEE3U
#define sig_set_banoptions 0x4B44CED0U
#define sig_set_bantable 0x42E96EB5U
#define sig_set_capengine 0xE9CD86B6U
#define sig_set_caprootrevoke 0x025623D2U
#define sig_set_caps 0x414D6B64U
#define sig_set_cdpath 0x35C06A03U
#define sig_set_commandbuffersize 0x3043DE43U
#define sig_set_copyengine 0x5563D110U
#define sig_set_copyoptions 0x9CFDB78EU
#define sig_set_createhome 0xFA077943U
#define sig_set_ctrlsacls 0x8DAEE8F5U
#define sig_set_ctrlsauthfreshness 0x719EC9DDU
#define sig_set_ctrlsengine 0x70CD6090U
#define sig_set_ctrlsinterval 0xF5C976E5U
#define sig_set_ctrlslog 0x931F41AAU
#define sig_set_ctrlsmaxclients 0x842374BEU
#define sig_set_ctrlssocket 0x41AB2221U
#define sig_set_ctrlssocketacl 0xC2E617A9U
#define sig_set_ctrlssocketowner 0xA2F543B7U
#define sig_set_debuglevel 0xF3749723U
#define sig_set_defaultaddress 0x44E3F97EU
#define sig_set_defaultserver 0x727242B2U
#define sig_set_defaulttransfermode 0x2A8E46A6U
#define sig_set_deferwelcome 0x6D1CF189U
#define sig_set_define 0x6036794AU
#define sig_set_deflateengine 0x70678A60U
#define sig_set_deflatelog 0xC6ED057CU
#define sig_set_delayctrlsacls 0x96FEF367U
#define sig_set_delayengine 0xFD1E97D8U
#define sig_set_delayonevent 0x10F053D3U
#define sig_set_delaytable 0x6E66714FU
#define sig_set_deleteabortedstores 0xCB136C0FU
#define sig_set_denyall 0x153A1FDEU
#define sig_set_digestalgorithms 0x5E59ED04U
#define sig_set_digestcache 0xB03E0D22U
#define sig_set_digestdefaultalgo 0x92B43943U
#define sig_set_digestenable 0x2998DD18U
#define sig_set_digestengine 0x372F94FCU
#define sig_set_digestmaxsize 0xFFD4EA34U
#define sig_set_digestoptions 0xAD78A8E2U
#define sig_set_dirfakemode 0xF8474874U
#define sig_set_dirfakeusergroup 0x8599619DU
#define sig_set_displaychdir 0x2B632074U
#define sig_set_displayconnect 0xD3E2108BU
#define sig_set_displayfiletransfer 0xAD999A75U
#define sig_set_displaylogin 0xEB3707F9U
#define sig_set_displayquit 0x1B0D8FC6U
#define sig_set_displayreadme 0xC086BB25U
#define sig_set_dnsbldomain 0xDD218D38U
#define sig_set_dnsblengine 0xC2EF54A3U
#define sig_set_dnsbllog 0xD2E65C94U
#define sig_set_dnsblpolicy 0xBCF8877FU
#define sig_set_dynmasqctrlsacls 0xFF1AEC05U
#define sig_set_dynmasqrefresh 0xC926F7F8U
#define sig_set_execbeforecommand 0x6121E7EDU
#define sig_set_execenable 0x2F055662U
#define sig_set_execengine 0x596F51F1U
#define sig_set_execenviron 0x454C3F64U
#define sig_set_execlog 0xBDF4E040U
#define sig_set_execoncommand 0x55BC905CU
#define sig_set_execonconnect 0xCEF7FBDEU
#define sig_set_execonerror 0x3CA80033U
#define sig_set_execonevent 0x9AC7B088U
#define sig_set_execonexit 0x91A82431U
#define sig_set_execonrestart 0xC20FD59BU
#define sig_set_execoptions 0xD80927AFU
#define sig_set_exectimeout 0x317C9792U
#define sig_set_extendedlog 0x07A8A958U
#define sig_set_faclengine 0x35FDE483U
#define sig_set_factsadvertise 0xC8A5752BU
#define sig_set_factsdefault 0x616608FDU
#define sig_set_factsoptions 0xF031F36EU
#define sig_set_foobardirective 0xCB5271CBU
#define sig_set_forensiclogbuffersize 0xB07CD43FU
#define sig_set_forensiclogcapture 0x69DC9D0CU
#define sig_set_forensiclogcriteria 0xD9A6900BU
#define sig_set_forensiclogengine 0x53737ACDU
#define sig_set_forensiclogfile 0xE2B666C5U
#define sig_set_fscachepolicy 0x1D677254U
#define sig_set_fsoptions 0x447FDB4DU
#define sig_set_geoipengine 0x13F65C71U
#define sig_set_geoipfilter 0x4FB08D50U
#define sig_set_geoiplog 0xC26595ABU
#define sig_set_geoippolicy 0xAC5B57B6U
#define sig_set_geoiptable 0x9EFF0153U
#define sig_set_group 0x076234B7U
#define sig_set_hiddenstores 0x76E11974U
#define sig_set_hidefiles 0x3D167DE3U
#define sig_set_hidegroup 0x00041FB2U
#define sig_set_hidenoaccess 0x2DC1ACE9U
#define sig_set_hideuser 0x6D6120D8U
#define sig_set_identlookups 0xAC37304DU
#define sig_set_ifsessopts 0xC98B8F56U
#define sig_set_ignorehidden 0x5DF90A37U
#define sig_set_include 0xCD41BE0DU
#define sig_set_includeoptions 0x0E9758F6U
#define sig_set_langdefault 0x693C51BAU
#define sig_set_langengine 0xFBEB446DU
#define sig_set_langoptions 0x14CF33A0U
#define sig_set_langpath 0xA1363D23U
#define sig_set_ldapaliasdereference 0x1B820E3EU
#define sig_set_ldapattr 0xEC9179ECU
#define sig_set_ldapauthbinds 0x2A608F17U
#define sig_set_ldapbinddn 0xCA25CB92U
#define sig_set_ldapconnecttimeout 0x38784A7FU
#define sig_set_ldapdefaultauthscheme 0x370765A1U
#define sig_set_ldapdefaultgid 0xE09F3157U
#define sig_set_ldapdefaultquota 0x382CE9ECU
#define sig_set_ldapdefaultuid 0xFA4A9B27U
#define sig_set_ldapforcedefaultgid 0x2741B111U
#define sig_set_ldapforcedefaultuid 0x0D3EAAC4U
#define sig_set_ldapforcegenhdir 0x3DD89A8DU
#define sig_set_ldapgenhdir 0x4C259692U
#define sig_set_ldapgenhdirprefix 0xFFAB8E1DU
#define sig_set_ldapgenhdirprefixnouname 0x5AC599D8U
#define sig_set_ldapgroups 0xAA9E7EC3U
#define sig_set_ldaplog 0x2BF7FD26U
#define sig_set_ldapprotoversion 0xB60865B4U
#define sig_set_ldapquerytimeout 0x0E5CFFC5U
#define sig_set_ldapsearchscope 0x8FF5D6B6U
#define sig_set_ldapserver 0x3ACE3418U
#define sig_set_ldapusers 0x3285F9ECU
#define sig_set_ldapusesasl 0x4877AD91U
#define sig_set_ldapusetls 0x875288B9U
#define sig_set_listoptions 0xC3706FFFU
#define sig_set_liststyle 0xCAA083BBU
#define sig_set_loadfile 0x16DB7AB0U
#define sig_set_loadmodule 0x6A5C6EF3U
#define sig_set_logformat 0xDC969AC6U
#define sig_set_logoptions 0x242621CFU
#define sig_set_masqueradeaddress 0xB4E04282U
#define sig_set_maxclients 0xED6E90C5U
#define sig_set_maxclientsclass 0x90890B55U
#define sig_set_maxcommandrate 0x684CE367U
#define sig_set_maxconnectsperhost 0xB8EE7488U
#define sig_set_maxconnrate 0xE0BAF8D2U
#define sig_set_maxfilesize 0xDCE6542EU
#define sig_set_maxhostclients 0x9ABEE822U
#define sig_set_maxhostsperuser 0x2CA86387U
#define sig_set_maxinstances 0x9DC3DF7EU
#define sig_set_maxload 0x5BF17827U
#define sig_set_maxloginattempts 0x96DC2C8AU
#define sig_set_maxpasswordsize 0x5C143E55U
#define sig_set_maxtransfersperhost 0xF31602D2U
#define sig_set_maxtransfersperuser 0x708B7855U
#define sig_set_maxuserclients 0x62FB3366U
#define sig_set_memcacheconnectfailures 0xC4A77D9CU
#define sig_set_memcacheengine 0xB6B5F737U
#define sig_set_memcachelog 0x1E91C3D4U
#define sig_set_memcacheoptions 0xC3F03250U
#define sig_set_memcachereplicas 0xC1C7098BU
#define sig_set_memcacheservers 0xA7A6A250U
#define sig_set_memcachetimeouts 0x83574EB1U
#define sig_set_modulectrlsacls 0xD6B5EE31U
#define sig_set_moduleorder 0xAFA8E4DAU
#define sig_set_modulepath 0x63E9D705U
#define sig_set_multilinerfc2228 0x9D4459C1U
#define sig_set_order 0x466BB99CU
#define sig_set_passiveports 0x49244918U
#define sig_set_pathallowfilter 0x16E65E2BU
#define sig_set_pathdenyfilter 0xE1375B48U
#define sig_set_persistentpasswd 0x9C505A68U
#define sig_set_pidfile 0x719E840BU
#define sig_set_port 0x98FDC336U
#define sig_set_processtitles 0x611EEA0BU
#define sig_set_protocols 0x08C365C3U
#define sig_set_qosoptions 0x4193EB9CU
#define sig_set_quotadefault 0x16382ED3U
#define sig_set_quotadirtally 0x9F86D317U
#define sig_set_quotadisplayunits 0xD28F5914U
#define sig_set_quotaengine 0x35B5C6E1U
#define sig_set_quotaexcludefilter 0x3F9A083AU
#define sig_set_quotalock 0x22FAFFAFU
#define sig_set_quotalog 0x9FCAD8A8U
#define sig_set_quotaoptions 0x8591A231U
#define sig_set_quotashowquotas 0xB77849E7U
#define sig_set_quotatable 0x75A9C5E5U
#define sig_set_radiusacctserver 0x273FF24FU
#define sig_set_radiusauthserver 0x6447B562U
#define sig_set_radiusengine 0x58BEE7F6U
#define sig_set_radiusgroupinfo 0x4E4616DDU
#define sig_set_radiuslog 0x40F24A4CU
#define sig_set_radiusnasidentifier 0xA80E7A52U
#define sig_set_radiusoptions 0xB1524967U
#define sig_set_radiusquotainfo 0x6B0E2F34U
#define sig_set_radiusrealm 0x54CB773DU
#define sig_set_radiususerinfo 0x9BDB22E8U
#define sig_set_radiusvendor 0x52F476E5U
#define sig_set_ratios 0x5600A75FU
#define sig_set_redisengine 0xB84478AAU
#define sig_set_redislog 0x8150E2F0U
#define sig_set_redislogfmtextra 0x75548CE2U
#define sig_set_redislogoncommand 0xA33800B0U
#define sig_set_redislogonevent 0x3BD409FCU
#define sig_set_redisoptions 0xDE0323B6U
#define sig_set_redissentinel 0xEB6BB429U
#define sig_set_redisserver 0xEB34E66FU
#define sig_set_redistimeouts 0xD4A0A72DU
#define sig_set_regexoptions 0x459E8AEDU
#define sig_set_requirevalidshell 0x68B4F34DU
#define sig_set_rewritecondition 0x5FB618A7U
#define sig_set_rewriteengine 0x8C0F90FBU
#define sig_set_rewritehome 0xDA3E21E2U
#define sig_set_rewritelock 0x6BDB796DU
#define sig_set_rewritelog 0x3B22B0A7U
#define sig_set_rewritemap 0x8A00C285U
#define sig_set_rewritemaxreplace 0xA95755E1U
#define sig_set_rewriterule 0x290DCE14U
#define sig_set_rlimitchroot 0xB8459A8CU
#define sig_set_rlimitcpu 0xA4C992E8U
#define sig_set_rlimitmemory 0xC67D3414U
#define sig_set_rlimitopenfiles 0xB1C993EFU
#define sig_set_rootlogin 0x02CC7428U
#define sig_set_rootrevoke 0x2ACAEE97U
#define sig_set_satisfy 0x11EBC447U
#define sig_set_scoreboardfile 0xFAB52CC2U
#define sig_set_scoreboardmutex 0x3F172C23U
#define sig_set_scoreboardoptions 0x1FBFFEA2U
#define sig_set_scoreboardscrub 0x2BC77BCDU
#define sig_set_serveradmin 0xC9D8D931U
#define sig_set_serveralias 0x627731CAU
#define sig_set_serverident 0x9F578797U
#define sig_set_serverlog 0x421E91DBU
#define sig_set_servername 0x336CD619U
#define sig_set_servertype 0x8EA7905EU
#define sig_set_setenv 0xA476F04DU
#define sig_set_sftpacceptenv 0xEB3678E6U
#define sig_set_sftpauthmeths 0xF9EA2740U
#define sig_set_sftpauthorizedkeys 0x3606F52CU
#define sig_set_sftpauthpublickeys 0x4A0D2D2BU
#define sig_set_sftpciphers 0x018BCF31U
#define sig_set_sftpclientalive 0xA28278F9U
#define sig_set_sftpclientmatch 0xAFAE48ADU
#define sig_set_sftpcompression 0x7DBFF88DU
#define sig_set_sftpcryptodevice 0xA8B23941U
#define sig_set_sftpdhparamfile 0x7E6475F2U
#define sig_set_sftpdigests 0xA626AFD5U
#define sig_set_sftpdisplaybanner 0xA3B09FE7U
#define sig_set_sftpengine 0x5CAF434CU
#define sig_set_sftpextensions 0x16F8C2B2U
#define sig_set_sftphostkey 0xB82AD594U
#define sig_set_sftphostkeys 0x05136B40U
#define sig_set_sftpkeyblacklist 0x15DB53DAU
#define sig_set_sftpkeyexchanges 0x8F3DB1CBU
#define sig_set_sftpkeyfingerprints 0x63263A2EU
#define sig_set_sftpkeylimits 0xA9B8F56FU
#define sig_set_sftplog 0xE739BC8AU
#define sig_set_sftpmaxchannels 0xF8254E0CU
#define sig_set_sftpoptions 0x1B55608FU
#define sig_set_sftppamengine 0xCF1870E2U
#define sig_set_sftppamoptions 0x88CE15EDU
#define sig_set_sftppamservicename 0x399D8658U
#define sig_set_sftppassphraseprovider 0x8F4CF9A9U
#define sig_set_sftprekey 0xDB54BA64U
#define sig_set_sftptrafficpolicy 0x9799AEDAU
#define sig_set_shaperall 0xA8A99EE6U
#define sig_set_shaperctrlsacls 0x33E40BD1U
#define sig_set_shaperengine 0xAC63EAF5U
#define sig_set_shaperlog 0xBBD2463FU
#define sig_set_shapersession 0x2A796A6AU
#define sig_set_shapertable 0x234538FEU
#define sig_set_showsymlinks 0xF35AEC31U
#define sig_set_sitemiscengine 0x6DA72716U
#define sig_set_snmpagent 0x0556BD83U
#define sig_set_snmpcommunity 0xAF1AE3B8U
#define sig_set_snmpenable 0x3219C4E8U
#define sig_set_snmpengine 0xD8783BF1U
#define sig_set_snmplog 0x2DEA434FU
#define sig_set_snmpmaxvariables 0x197A15F4U
#define sig_set_snmpnotify 0xDA11F09BU
#define sig_set_snmpoptions 0xC29823E9U
#define sig_set_snmptables 0x9B8A8C5BU
#define sig_set_socketbindtight 0x370D3D79U
#define sig_set_socketoptions 0x744AE060U
#define sig_set_sqlauthenticate 0xCFA7316AU
#define sig_set_sqlauthtypes 0x1874F283U
#define sig_set_sqlbackend 0x34F26DE7U
#define sig_set_sqlconnectinfo 0xC0DAAFE1U
#define sig_set_sqldefaultgid 0x9721A97EU
#define sig_set_sqldefaulthomedir 0x5624C547U
#define sig_set_sqldefaultuid 0xD1CB0072U
#define sig_set_sqlengine 0x61DF2A39U
#define sig_set_sqlgroupinfo 0x46F385C9U
#define sig_set_sqlgroupprimarykey 0x8F59E55CU
#define sig_set_sqlgroupwhereclause 0x10961C29U
#define sig_set_sqlkeepalive 0x55A3F198U
#define sig_set_sqllog 0x3F6E590AU
#define sig_set_sqllogfile 0x97BD40AEU
#define sig_set_sqllogonevent 0x6656B6DCU
#define sig_set_sqlminid 0xD0B184B0U
#define sig_set_sqlminusergid 0xD6FDA194U
#define sig_set_sqlminuseruid 0x76ED7DA0U
#define sig_set_sqlnamedconnectinfo 0x7F1C8CD1U
#define sig_set_sqlnamedquery 0xE5BD4A4EU
#define sig_set_sqlnegativecache 0xCD9E9C60U
#define sig_set_sqlodbcversion 0x896241A2U
#define sig_set_sqloptions 0x5BFCD556U
#define sig_set_sqlpasswdargon2 0x183F2140U
#define sig_set_sqlpasswdcost 0xFB7A932FU
#define sig_set_sqlpasswdencoding 0x55AD99ABU
#define sig_set_sqlpasswdengine 0x5CD39D52U
#define sig_set_sqlpasswdoptions 0x312D4457U
#define sig_set_sqlpasswdpbkdf2 0x8C355EFDU
#define sig_set_sqlpasswdrounds 0x34D11A36U
#define sig_set_sqlpasswdsaltencoding 0x63C5E984U
#define sig_set_sqlpasswdsaltfile 0x2DC4E7E8U
#define sig_set_sqlpasswdscrypt 0xD9416F05U
#define sig_set_sqlpasswdusersalt 0xB5B8DD1EU
#define sig_set_sqlratios 0x4DCF7428U
#define sig_set_sqlratiostats 0x7F05D547U
#define sig_set_sqlshowinfo 0xB8787887U
#define sig_set_sqluserinfo 0x5B25C9FFU
#define sig_set_sqluserprimarykey 0x9EE57EDFU
#define sig_set_sqluserwhereclause 0x06728793U
#define sig_set_statcachecapacity 0x310F5B3DU
#define sig_set_statcachectrlsacls 0x7D0C902EU
#define sig_set_statcacheengine 0xB7F3F480U
#define sig_set_statcachemaxage 0xE0803A73U
#define sig_set_statcachetable 0x6BC800ACU
#define sig_set_storeuniqueprefix 0x95295891U
#define sig_set_syslogfacility 0x24FB599BU
#define sig_set_sysloglevel 0xEE6EE7F1U
#define sig_set_systemdengine 0x2A98B10CU
#define sig_set_systemlog 0x906E3074U
#define sig_set_tcpaccessfiles 0xBC3E93FBU
#define sig_set_tcpaccesssysloglevels 0x78E6DA42U
#define sig_set_tcpbacklog 0xD3A6806FU
#define sig_set_tcpgroupaccessfiles 0x17C56175U
#define sig_set_tcpnodelay 0x0292F7ABU
#define sig_set_tcpservicename 0x6FD0A470U
#define sig_set_tcpuseraccessfiles 0xA7A5D10EU
#define sig_set_timeoutidle 0x6C8D9FA6U
#define sig_set_timeoutlinger 0xB711B827U
#define sig_set_timeoutlogin 0x7089B6BCU
#define sig_set_timeoutnoxfer 0xCFF54B60U
#define sig_set_timeoutsession 0x36FFF2C0U
#define sig_set_timeoutstalled 0xB58C03C6U
#define sig_set_timesgmt 0x54D606BFU
#define sig_set_tlscacertfile 0x1C9A9A94U
#define sig_set_tlscacertpath 0xB6E0D293U
#define sig_set_tlscacrlfile 0x15FF3659U
#define sig_set_tlscacrlpath 0xE91742B9U
#define sig_set_tlscertchain 0xBC41FC9CU
#define sig_set_tlsciphersuite 0xEBF2CA31U
#define sig_set_tlscryptodevice 0x9D825832U
#define sig_set_tlsctrlsacls 0xD7BF332FU
#define sig_set_tlsdhparamfile 0xA723F338U
#define sig_set_tlsdsacertfile 0x2FE3234AU
#define sig_set_tlsdsakeyfile 0x65B4CC1FU
#define sig_set_tlseccertfile 0x6DE5B16FU
#define sig_set_tlsecdhcurve 0x9423EDF9U
#define sig_set_tlseckeyfile 0xE2006555U
#define sig_set_tlsengine 0x92597A1AU
#define sig_set_tlslog 0x2723EBB0U
#define sig_set_tlsmasqaddr 0x49151E30U
#define sig_set_tlsnextprotocol 0x2BCF82F7U
#define sig_set_tlsoptions 0xB0608079U
#define sig_set_tlspassphraseprovider 0x925CA0E5U
#define sig_set_tlspkcs12file 0xD41A09F9U
#define sig_set_tlspresharedkey 0x3E436030U
#define sig_set_tlsprotocol 0xF7E10E09U
#define sig_set_tlsrandseed 0x09D031B1U
#define sig_set_tlsrenegotiate 0x739F1C69U
#define sig_set_tlsrequired 0x7343AE8EU
#define sig_set_tlsrsacertfile 0x5C13A6E8U
#define sig_set_tlsrsakeyfile 0x3AB1AEBDU
#define sig_set_tlsservercipherpreference 0x6310ED60U
#define sig_set_tlsserverinfofile 0xF35ACAEEU
#define sig_set_tlssessioncache 0x570AE277U
#define sig_set_tlssessionticketkeys 0x33B4FC24U
#define sig_set_tlssessiontickets 0xDB9A78EBU
#define sig_set_tlsstapling 0x00B989F1U
#define sig_set_tlsstaplingcache 0x4C9BF298U
#define sig_set_tlsstaplingoptions 0x879BD8FBU
#define sig_set_tlsstaplingresponder 0x74B107FCU
#define sig_set_tlsstaplingtimeout 0x5C87517DU
#define sig_set_tlstimeouthandshake 0x87E123A0U
#define sig_set_tlsusername 0x42FBE28EU
#define sig_set_tlsverifyclient 0x8F794EC6U
#define sig_set_tlsverifydepth 0xD8D1E5B5U
#define sig_set_tlsverifyorder 0x5A02A68FU
#define sig_set_tlsverifyserver 0x3B0F5A26U
#define sig_set_trace 0x7E9BFB02U
#define sig_set_tracelog 0xD06936B7U
#define sig_set_traceoptions 0x486B2108U
#define sig_set_transferoptions 0xAD297E0DU
#define sig_set_transferrate 0xDC060542U
#define sig_set_umask 0xD69C1A4CU
#define sig_set_uniqueidengine 0x77793F1DU
#define sig_set_unsetenv 0x4AB9E23DU
#define sig_set_useencoding 0x0DB52B43U
#define sig_set_useftpusers 0xDA297D06U
#define sig_set_useglobbing 0x26411815U
#define sig_set_useipv6 0x8732734EU
#define sig_set_uselastlog 0x13E011D9U
#define sig_set_user 0x54902E87U
#define sig_set_useralias 0x658B7F99U
#define sig_set_userdirroot 0x16D50DBEU
#define sig_set_usereversedns 0x677C4D37U
#define sig_set_userpassword 0xDF61A9ACU
#define sig_set_usesendfile 0x80A3A072U
#define sig_set_wrapengine 0x8CBDC4BBU
#define sig_set_wrapgrouptables 0x28FA1638U
#define sig_set_wraplog 0x953157EFU
#define sig_set_wrapmsg 0x7CFA7A90U
#define sig_set_wrapoptions 0xBE2F1375U
#define sig_set_wrapservicename 0x62AE1456U
#define sig_set_wraptables 0xC8DECBFEU
#define sig_set_wrapusertables 0x2B869A87U
#define sig_set_wtmplog 0x387D0450U
#define sig_sftp_hook_get_packet_write 0xBA6D8A31U
#define sig_sftp_hook_set_auth_success_handler 0xDF37C1DFU
#define sig_sftp_hook_set_packet_handler 0x1D8080B7U
#define sig_sftp_post_pass 0x3D6BBC14U
#define sig_sftppam_auth 0xDEDAAD3EU
#define sig_shaper_post_err_pass 0x636BF2E2U
#define sig_shaper_post_pass 0xDB2D1FC4U
#define sig_shaper_pre_pass 0xC3626B07U
#define sig_site_chgrp 0x345F56D0U
#define sig_site_chmod 0x2891A63CU
#define sig_site_cmd 0x9502C573U
#define sig_site_help 0x0AA29502U
#define sig_site_misc_mkdir 0x21F87254U
#define sig_site_misc_rmdir 0xD2FE8A47U
#define sig_site_misc_symlink 0x24146E53U
#define sig_site_misc_utime 0x730D4F68U
#define sig_site_post_cmd 0xC4A12C8FU
#define sig_site_pre_cmd 0x99DFB972U
#define sig_snmp_err_ccc 0x64CA6C89U
#define sig_snmp_err_list 0x68E573BCU
#define sig_snmp_err_pass 0x4429CA1FU
#define sig_snmp_err_retr 0x5A316A48U
#define sig_snmp_err_stor 0xF2DE8564U
#define sig_snmp_log_auth 0x330F3591U
#define sig_snmp_log_ccc 0xBE0FA1DDU
#define sig_snmp_log_list 0x20D00F3BU
#define sig_snmp_log_pass 0x4B7F0FB7U
#define sig_snmp_log_retr 0xA8722370U
#define sig_snmp_log_stor 0x8577304AU
#define sig_snmp_pre_list 0xF99C8C4CU
#define sig_snmp_pre_retr 0xC6641A0EU
#define sig_snmp_pre_stor 0xC2AC56C7U
#define sig_sql_auth_authenticate 0x4116CFDCU
#define sig_sql_auth_check 0xED3413B4U
#define sig_sql_auth_endgrent 0xB87C01F1U
#define sig_sql_auth_endpwent 0x422BD96EU
#define sig_sql_auth_getgrent 0x7ED2466EU
#define sig_sql_auth_getgrgid 0x4414676DU
#define sig_sql_auth_getgrnam 0x0B02CE63U
#define sig_sql_auth_getgroups 0xFD32EB8BU
#define sig_sql_auth_getpwent 0x456D0702U
#define sig_sql_auth_getpwnam 0x215EB780U
#define sig_sql_auth_getpwuid 0x8AD09D00U
#define sig_sql_auth_gid2name 0xA851218CU
#define sig_sql_auth_name2gid 0xA8656BD2U
#define sig_sql_auth_name2uid 0x46E16E82U
#define sig_sql_auth_setgrent 0xD4D8F34EU
#define sig_sql_auth_setpwent 0x4081547AU
#define sig_sql_auth_uid2name 0xA05BE5E9U
#define sig_sql_change 0xB14AB385U
#define sig_sql_cleanup 0xDD98EAC2U
#define sig_sql_closeconn 0x21D32D77U
#define sig_sql_defineconn 0xD2FF775BU
#define sig_sql_escapestr 0xD7E608D4U
#define sig_sql_getratio 0xA1986EF0U
#define sig_sql_getstats 0x9352FE09U
#define sig_sql_load_backend 0x3B044F9EU
#define sig_sql_lookup 0xC680516BU
#define sig_sql_openconn 0x731DC31EU
#define sig_sql_passwd_pre_pass 0xF4A7ABE9U
#define sig_sql_post_pass 0x7C911CE3U
#define sig_sql_post_retr 0x99BC04D2U
#define sig_sql_post_stor 0x11FF2BE3U
#define sig_sql_pre_dele 0xCF28E84FU
#define sig_sql_pre_pass 0x8165A2D8U
#define sig_sql_prepare 0x5853147DU
#define sig_sql_select 0x939D10BBU
#define sig_sql_sqlite_cleanup 0xC78E3E5FU
#define sig_sql_sqlite_close 0x27C19F20U
#define sig_sql_sqlite_def_conn 0x3F8EBDACU
#define sig_sql_sqlite_exit 0x142ED774U
#define sig_sql_sqlite_identify 0x3D41AA3BU
#define sig_sql_sqlite_insert 0x03CAC34BU
#define sig_sql_sqlite_open 0xDFAA4E8AU
#define sig_sql_sqlite_prepare 0x90924A35U
#define sig_sql_sqlite_procedure 0x75FBD379U
#define sig_sql_sqlite_query 0x05CBF7D2U
#define sig_sql_sqlite_quote 0x3A8E9C9AU
#define sig_sql_sqlite_select 0x383EC4F4U
#define sig_sql_sqlite_update 0x37AD0B79U
#define sig_sqlodbc_close 0x6AA4BB4EU
#define sig_sqlodbc_def_conn 0xA73CD9B9U
#define sig_sqlodbc_exit 0xEF7920B2U
#define sig_sqlodbc_identify 0x4205590FU
#define sig_sqlodbc_insert 0x4EE9637EU
#define sig_sqlodbc_open 0x3E0DDD18U
#define sig_sqlodbc_procedure 0x419A1613U
#define sig_sqlodbc_query 0x905A52D7U
#define sig_sqlodbc_quote 0xC5FF314BU
#define sig_sqlodbc_select 0xD917CDEAU
#define sig_sqlodbc_update 0x2A59D797U
#define sig_start_ifdefine 0xB35469AAU
#define sig_start_ifmodule 0x1D84648FU
#define sig_start_ifversion 0x0CAA7EF5U
#define sig_statcache_post_pass 0xD927CDFBU
#define sig_statcache_pre_list 0xC95C2DF8U
#define sig_tls_any 0x6E683E11U
#define sig_tls_auth 0xBD578DD8U
#define sig_tls_auth_check 0xE202CA97U
#define sig_tls_authenticate 0x594EA911U
#define sig_tls_ccc 0x8615AD25U
#define sig_tls_log_auth 0x158AB39BU
#define sig_tls_pbsz 0x112FBDA2U
#define sig_tls_post_auth 0xDA228B0CU
#define sig_tls_post_pass 0x1C9B7B17U
#define sig_tls_post_user 0x3172AB47U
#define sig_tls_pre_xfer 0x2F8458E8U
#define sig_tls_prot 0x3C553F7CU
#define sig_tls_sscn 0x3B49ADAFU
#define sig_wrap2_post_pass 0x7C992F62U
#define sig_wrap2_post_pass_err 0xCC698E0FU
#define sig_wrap2_pre_pass 0x61450965U
#define sig_wrap_handle_request 0xD5DE0D62U
#define sig_xfer_abor 0xDEFEDA8CU
#define sig_xfer_allo 0x038E3EF4U
#define sig_xfer_err_cleanup 0x4F3C51EBU
#define sig_xfer_log_abor 0x741B3E2CU
#define sig_xfer_log_retr 0x2115BC1BU
#define sig_xfer_log_stor 0x0C948570U
#define sig_xfer_mode 0x3491B151U
#define sig_xfer_post_mode 0xF8C1C265U
#define sig_xfer_post_pass 0xA8A4FAAFU
#define sig_xfer_post_prot 0xF99AA244U
#define sig_xfer_post_retr 0xFBF55055U
#define sig_xfer_post_stor 0xACE70CF8U
#define sig_xfer_post_stou 0x5828A72AU
#define sig_xfer_pre_appe 0x3A4724E3U
#define sig_xfer_pre_retr 0x2F445D88U
#define sig_xfer_pre_stor 0xD162C45AU
#define sig_xfer_pre_stou 0x8F516868U
#define sig_xfer_rang 0x703DCBD2U
#define sig_xfer_rest 0xCCA15CB9U
#define sig_xfer_retr 0xB70D546DU
#define sig_xfer_smnt 0x7CEB6A88U
#define sig_xfer_stor 0xF1DFB9E1U
#define sig_xfer_stru 0xE2F58004U
#define sig_xfer_type 0x7BA324DBU
#define sig_call_cb 0x7BA324A1U
#define sig_site_dispatch 0x6F47BE9FU

MODRET auth_otp_auth(cmd_rec * cmd);
MODRET auth_otp_chkpass(cmd_rec * cmd);
MODRET auth_otp_post_pass(cmd_rec * cmd);
MODRET auth_otp_post_user(cmd_rec * cmd);
MODRET auth_otp_pre_user(cmd_rec * cmd);
MODRET set_authotpalgo(cmd_rec * cmd);
MODRET set_authotpengine(cmd_rec * cmd);
MODRET set_authotplog(cmd_rec * cmd);
MODRET set_authotpoptions(cmd_rec * cmd);
MODRET set_authotptable(cmd_rec * cmd);
MODRET set_authotptablelock(cmd_rec * cmd);
MODRET forensic_pass_err(cmd_rec * cmd);
MODRET set_forensiclogbuffersize(cmd_rec * cmd);
MODRET set_forensiclogcapture(cmd_rec * cmd);
MODRET set_forensiclogcriteria(cmd_rec * cmd);
MODRET set_forensiclogengine(cmd_rec * cmd);
MODRET set_forensiclogfile(cmd_rec * cmd);
MODRET set_sitemiscengine(cmd_rec * cmd);
MODRET site_misc_mkdir(cmd_rec * cmd);
MODRET site_misc_rmdir(cmd_rec * cmd);
MODRET site_misc_symlink(cmd_rec * cmd);
MODRET site_misc_utime(cmd_rec * cmd);
MODRET set_uniqueidengine(cmd_rec * cmd);
MODRET radius_auth(cmd_rec * cmd);
MODRET radius_check(cmd_rec * cmd);
MODRET radius_endgrent(cmd_rec * cmd);
MODRET radius_endpwent(cmd_rec * cmd);
MODRET radius_getgrent(cmd_rec * cmd);
MODRET radius_getgrgid(cmd_rec * cmd);
MODRET radius_getgrnam(cmd_rec * cmd);
MODRET radius_getgroups(cmd_rec * cmd);
MODRET radius_getpwent(cmd_rec * cmd);
MODRET radius_getpwnam(cmd_rec * cmd);
MODRET radius_getpwuid(cmd_rec * cmd);
MODRET radius_gid2name(cmd_rec * cmd);
MODRET radius_name2gid(cmd_rec * cmd);
MODRET radius_name2uid(cmd_rec * cmd);
MODRET radius_post_pass(cmd_rec * cmd);
MODRET radius_post_pass_err(cmd_rec * cmd);
MODRET radius_pre_pass(cmd_rec * cmd);
MODRET radius_quota_lookup(cmd_rec * cmd);
MODRET radius_setgrent(cmd_rec * cmd);
MODRET radius_setpwent(cmd_rec * cmd);
MODRET radius_uid2name(cmd_rec * cmd);
MODRET set_radiusacctserver(cmd_rec * cmd);
MODRET set_radiusauthserver(cmd_rec * cmd);
MODRET set_radiusengine(cmd_rec * cmd);
MODRET set_radiusgroupinfo(cmd_rec * cmd);
MODRET set_radiuslog(cmd_rec * cmd);
MODRET set_radiusnasidentifier(cmd_rec * cmd);
MODRET set_radiusoptions(cmd_rec * cmd);
MODRET set_radiusquotainfo(cmd_rec * cmd);
MODRET set_radiusrealm(cmd_rec * cmd);
MODRET set_radiususerinfo(cmd_rec * cmd);
MODRET set_radiusvendor(cmd_rec * cmd);
MODRET set_sqlpasswdargon2(cmd_rec * cmd);
MODRET set_sqlpasswdcost(cmd_rec * cmd);
MODRET set_sqlpasswdencoding(cmd_rec * cmd);
MODRET set_sqlpasswdengine(cmd_rec * cmd);
MODRET set_sqlpasswdoptions(cmd_rec * cmd);
MODRET set_sqlpasswdpbkdf2(cmd_rec * cmd);
MODRET set_sqlpasswdrounds(cmd_rec * cmd);
MODRET set_sqlpasswdsaltencoding(cmd_rec * cmd);
MODRET set_sqlpasswdsaltfile(cmd_rec * cmd);
MODRET set_sqlpasswdscrypt(cmd_rec * cmd);
MODRET set_sqlpasswdusersalt(cmd_rec * cmd);
MODRET sql_passwd_pre_pass(cmd_rec * cmd);
MODRET deflate_mode(cmd_rec * cmd);
MODRET set_deflateengine(cmd_rec * cmd);
MODRET set_deflatelog(cmd_rec * cmd);
MODRET copy_copy(cmd_rec * cmd);
MODRET copy_cpfr(cmd_rec * cmd);
MODRET copy_cpto(cmd_rec * cmd);
MODRET copy_log_site(cmd_rec * cmd);
MODRET copy_post_pass(cmd_rec * cmd);
MODRET set_copyengine(cmd_rec * cmd);
MODRET set_copyoptions(cmd_rec * cmd);
MODRET set_sftpacceptenv(cmd_rec * cmd);
MODRET set_sftpauthmeths(cmd_rec * cmd);
MODRET set_sftpauthorizedkeys(cmd_rec * cmd);
MODRET set_sftpauthpublickeys(cmd_rec * cmd);
MODRET set_sftpciphers(cmd_rec * cmd);
MODRET set_sftpclientalive(cmd_rec * cmd);
MODRET set_sftpclientmatch(cmd_rec * cmd);
MODRET set_sftpcompression(cmd_rec * cmd);
MODRET set_sftpcryptodevice(cmd_rec * cmd);
MODRET set_sftpdhparamfile(cmd_rec * cmd);
MODRET set_sftpdigests(cmd_rec * cmd);
MODRET set_sftpdisplaybanner(cmd_rec * cmd);
MODRET set_sftpengine(cmd_rec * cmd);
MODRET set_sftpextensions(cmd_rec * cmd);
MODRET set_sftphostkey(cmd_rec * cmd);
MODRET set_sftphostkeys(cmd_rec * cmd);
MODRET set_sftpkeyblacklist(cmd_rec * cmd);
MODRET set_sftpkeyexchanges(cmd_rec * cmd);
MODRET set_sftpkeyfingerprints(cmd_rec * cmd);
MODRET set_sftpkeylimits(cmd_rec * cmd);
MODRET set_sftplog(cmd_rec * cmd);
MODRET set_sftpmaxchannels(cmd_rec * cmd);
MODRET set_sftpoptions(cmd_rec * cmd);
MODRET set_sftppassphraseprovider(cmd_rec * cmd);
MODRET set_sftprekey(cmd_rec * cmd);
MODRET set_sftptrafficpolicy(cmd_rec * cmd);
MODRET sftp_hook_get_packet_write(cmd_rec * cmd);
MODRET sftp_hook_set_auth_success_handler(cmd_rec * cmd);
MODRET sftp_hook_set_packet_handler(cmd_rec * cmd);
MODRET sftp_post_pass(cmd_rec * cmd);
MODRET set_sqlodbcversion(cmd_rec * cmd);
MODRET sqlodbc_close(cmd_rec * cmd);
MODRET sqlodbc_def_conn(cmd_rec * cmd);
MODRET sqlodbc_exit(cmd_rec * cmd);
MODRET sqlodbc_identify(cmd_rec * cmd);
MODRET sqlodbc_insert(cmd_rec * cmd);
MODRET sqlodbc_open(cmd_rec * cmd);
MODRET sqlodbc_procedure(cmd_rec * cmd);
MODRET sqlodbc_query(cmd_rec * cmd);
MODRET sqlodbc_quote(cmd_rec * cmd);
MODRET sqlodbc_select(cmd_rec * cmd);
MODRET sqlodbc_update(cmd_rec * cmd);
MODRET set_adminctrlsacls(cmd_rec * cmd);
MODRET set_adminctrlsengine(cmd_rec * cmd);
MODRET set_wrapengine(cmd_rec * cmd);
MODRET set_wrapgrouptables(cmd_rec * cmd);
MODRET set_wraplog(cmd_rec * cmd);
MODRET set_wrapmsg(cmd_rec * cmd);
MODRET set_wrapoptions(cmd_rec * cmd);
MODRET set_wrapservicename(cmd_rec * cmd);
MODRET set_wraptables(cmd_rec * cmd);
MODRET set_wrapusertables(cmd_rec * cmd);
MODRET wrap2_post_pass(cmd_rec * cmd);
MODRET wrap2_post_pass_err(cmd_rec * cmd);
MODRET wrap2_pre_pass(cmd_rec * cmd);
MODRET ban_post_pass(cmd_rec * cmd);
MODRET ban_pre_pass(cmd_rec * cmd);
MODRET set_bancache(cmd_rec * cmd);
MODRET set_bancacheoptions(cmd_rec * cmd);
MODRET set_banctrlsacls(cmd_rec * cmd);
MODRET set_banengine(cmd_rec * cmd);
MODRET set_banlog(cmd_rec * cmd);
MODRET set_banmessage(cmd_rec * cmd);
MODRET set_banonevent(cmd_rec * cmd);
MODRET set_banoptions(cmd_rec * cmd);
MODRET set_bantable(cmd_rec * cmd);
MODRET set_dnsbldomain(cmd_rec * cmd);
MODRET set_dnsblengine(cmd_rec * cmd);
MODRET set_dnsbllog(cmd_rec * cmd);
MODRET set_dnsblpolicy(cmd_rec * cmd);
MODRET readme_post_cmd(cmd_rec * cmd);
MODRET set_displayreadme(cmd_rec * cmd);
MODRET set_statcachecapacity(cmd_rec * cmd);
MODRET set_statcachectrlsacls(cmd_rec * cmd);
MODRET set_statcacheengine(cmd_rec * cmd);
MODRET set_statcachemaxage(cmd_rec * cmd);
MODRET set_statcachetable(cmd_rec * cmd);
MODRET statcache_post_pass(cmd_rec * cmd);
MODRET statcache_pre_list(cmd_rec * cmd);
MODRET set_dynmasqctrlsacls(cmd_rec * cmd);
MODRET set_dynmasqrefresh(cmd_rec * cmd);
MODRET set_tcpaccessfiles(cmd_rec * cmd);
MODRET set_tcpaccesssysloglevels(cmd_rec * cmd);
MODRET set_tcpgroupaccessfiles(cmd_rec * cmd);
MODRET set_tcpservicename(cmd_rec * cmd);
MODRET set_tcpuseraccessfiles(cmd_rec * cmd);
MODRET wrap_handle_request(cmd_rec * cmd);
MODRET set_shaperall(cmd_rec * cmd);
MODRET set_shaperctrlsacls(cmd_rec * cmd);
MODRET set_shaperengine(cmd_rec * cmd);
MODRET set_shaperlog(cmd_rec * cmd);
MODRET set_shapersession(cmd_rec * cmd);
MODRET set_shapertable(cmd_rec * cmd);
MODRET shaper_post_err_pass(cmd_rec * cmd);
MODRET shaper_post_pass(cmd_rec * cmd);
MODRET shaper_pre_pass(cmd_rec * cmd);
MODRET handle_ldap_quota_lookup(cmd_rec * cmd);
MODRET handle_ldap_ssh_pubkey_lookup(cmd_rec * cmd);
MODRET ldap_auth_auth(cmd_rec * cmd);
MODRET ldap_auth_check(cmd_rec * cmd);
MODRET ldap_auth_endpwent(cmd_rec * cmd);
MODRET ldap_auth_getgrgid(cmd_rec * cmd);
MODRET ldap_auth_getgrnam(cmd_rec * cmd);
MODRET ldap_auth_getgroups(cmd_rec * cmd);
MODRET ldap_auth_getpwnam(cmd_rec * cmd);
MODRET ldap_auth_getpwuid(cmd_rec * cmd);
MODRET ldap_auth_gid2name(cmd_rec * cmd);
MODRET ldap_auth_name2gid(cmd_rec * cmd);
MODRET ldap_auth_name2uid(cmd_rec * cmd);
MODRET ldap_auth_setpwent(cmd_rec * cmd);
MODRET ldap_auth_uid2name(cmd_rec * cmd);
MODRET set_ldapaliasdereference(cmd_rec * cmd);
MODRET set_ldapattr(cmd_rec * cmd);
MODRET set_ldapauthbinds(cmd_rec * cmd);
MODRET set_ldapbinddn(cmd_rec * cmd);
MODRET set_ldapconnecttimeout(cmd_rec * cmd);
MODRET set_ldapdefaultauthscheme(cmd_rec * cmd);
MODRET set_ldapdefaultgid(cmd_rec * cmd);
MODRET set_ldapdefaultquota(cmd_rec * cmd);
MODRET set_ldapdefaultuid(cmd_rec * cmd);
MODRET set_ldapforcedefaultgid(cmd_rec * cmd);
MODRET set_ldapforcedefaultuid(cmd_rec * cmd);
MODRET set_ldapforcegenhdir(cmd_rec * cmd);
MODRET set_ldapgenhdir(cmd_rec * cmd);
MODRET set_ldapgenhdirprefix(cmd_rec * cmd);
MODRET set_ldapgenhdirprefixnouname(cmd_rec * cmd);
MODRET set_ldapgroups(cmd_rec * cmd);
MODRET set_ldaplog(cmd_rec * cmd);
MODRET set_ldapprotoversion(cmd_rec * cmd);
MODRET set_ldapquerytimeout(cmd_rec * cmd);
MODRET set_ldapsearchscope(cmd_rec * cmd);
MODRET set_ldapserver(cmd_rec * cmd);
MODRET set_ldapusers(cmd_rec * cmd);
MODRET set_ldapusesasl(cmd_rec * cmd);
MODRET set_ldapusetls(cmd_rec * cmd);
MODRET add_ratiodata(cmd_rec * cmd);
MODRET add_saveratios(cmd_rec * cmd);
MODRET add_str(cmd_rec * cmd);
MODRET cmd_cwd(cmd_rec * cmd);
MODRET cmd_site(cmd_rec * cmd);
MODRET cmd_user(cmd_rec * cmd);
MODRET pre_cmd(cmd_rec * cmd);
MODRET pre_cmd_retr(cmd_rec * cmd);
MODRET ratio_log_pass(cmd_rec * cmd);
MODRET ratio_post_cmd(cmd_rec * cmd);
MODRET ratio_post_retr(cmd_rec * cmd);
MODRET ratio_post_stor(cmd_rec * cmd);
MODRET set_ratios(cmd_rec * cmd);
MODRET cmd_cleanup(cmd_rec * cmd);
MODRET cmd_close(cmd_rec * cmd);
MODRET cmd_defineconnection(cmd_rec * cmd);
MODRET cmd_escapestring(cmd_rec * cmd);
modret_t * cmd_exit(cmd_rec * cmd);
MODRET cmd_identify(cmd_rec * cmd);
MODRET cmd_insert(cmd_rec * cmd);
MODRET cmd_open(cmd_rec * cmd);
MODRET cmd_prepare(cmd_rec * cmd);
MODRET cmd_procedure(cmd_rec * cmd);
MODRET cmd_query(cmd_rec * cmd);
MODRET cmd_select(cmd_rec * cmd);
MODRET cmd_update(cmd_rec * cmd);
MODRET set_sqlauthtypes(cmd_rec * cmd);
MODRET geoip_post_pass(cmd_rec * cmd);
MODRET set_geoipengine(cmd_rec * cmd);
MODRET set_geoipfilter(cmd_rec * cmd);
MODRET set_geoiplog(cmd_rec * cmd);
MODRET set_geoippolicy(cmd_rec * cmd);
MODRET set_geoiptable(cmd_rec * cmd);
MODRET set_snmpagent(cmd_rec * cmd);
MODRET set_snmpcommunity(cmd_rec * cmd);
MODRET set_snmpenable(cmd_rec * cmd);
MODRET set_snmpengine(cmd_rec * cmd);
MODRET set_snmplog(cmd_rec * cmd);
MODRET set_snmpmaxvariables(cmd_rec * cmd);
MODRET set_snmpnotify(cmd_rec * cmd);
MODRET set_snmpoptions(cmd_rec * cmd);
MODRET set_snmptables(cmd_rec * cmd);
MODRET snmp_err_ccc(cmd_rec * cmd);
MODRET snmp_err_list(cmd_rec * cmd);
MODRET snmp_err_pass(cmd_rec * cmd);
MODRET snmp_err_retr(cmd_rec * cmd);
MODRET snmp_err_stor(cmd_rec * cmd);
MODRET snmp_log_auth(cmd_rec * cmd);
MODRET snmp_log_ccc(cmd_rec * cmd);
MODRET snmp_log_list(cmd_rec * cmd);
MODRET snmp_log_pass(cmd_rec * cmd);
MODRET snmp_log_retr(cmd_rec * cmd);
MODRET snmp_log_stor(cmd_rec * cmd);
MODRET snmp_pre_list(cmd_rec * cmd);
MODRET snmp_pre_retr(cmd_rec * cmd);
MODRET snmp_pre_stor(cmd_rec * cmd);
MODRET exec_log_exit(cmd_rec * cmd);
MODRET exec_post_cmd(cmd_rec * cmd);
MODRET exec_post_cmd_err(cmd_rec * cmd);
MODRET exec_pre_cmd(cmd_rec * cmd);
MODRET set_execbeforecommand(cmd_rec * cmd);
MODRET set_execenable(cmd_rec * cmd);
MODRET set_execengine(cmd_rec * cmd);
MODRET set_execenviron(cmd_rec * cmd);
MODRET set_execlog(cmd_rec * cmd);
MODRET set_execoncommand(cmd_rec * cmd);
MODRET set_execonconnect(cmd_rec * cmd);
MODRET set_execonerror(cmd_rec * cmd);
MODRET set_execonevent(cmd_rec * cmd);
MODRET set_execonexit(cmd_rec * cmd);
MODRET set_execonrestart(cmd_rec * cmd);
MODRET set_execoptions(cmd_rec * cmd);
MODRET set_exectimeout(cmd_rec * cmd);
MODRET err_master(cmd_rec * cmd);
MODRET errinfo_master(cmd_rec * cmd);
MODRET info_master(cmd_rec * cmd);
MODRET log_master(cmd_rec * cmd);
MODRET set_sqlauthenticate(cmd_rec * cmd);
MODRET set_sqlauthtypes(cmd_rec * cmd);
MODRET set_sqlbackend(cmd_rec * cmd);
MODRET set_sqlconnectinfo(cmd_rec * cmd);
MODRET set_sqldefaultgid(cmd_rec * cmd);
MODRET set_sqldefaulthomedir(cmd_rec * cmd);
MODRET set_sqldefaultuid(cmd_rec * cmd);
MODRET set_sqlengine(cmd_rec * cmd);
MODRET set_sqlgroupinfo(cmd_rec * cmd);
MODRET set_sqlgroupprimarykey(cmd_rec * cmd);
MODRET set_sqlgroupwhereclause(cmd_rec * cmd);
MODRET set_sqlkeepalive(cmd_rec * cmd);
MODRET set_sqllog(cmd_rec * cmd);
MODRET set_sqllogfile(cmd_rec * cmd);
MODRET set_sqllogonevent(cmd_rec * cmd);
MODRET set_sqlminid(cmd_rec * cmd);
MODRET set_sqlminusergid(cmd_rec * cmd);
MODRET set_sqlminuseruid(cmd_rec * cmd);
MODRET set_sqlnamedconnectinfo(cmd_rec * cmd);
MODRET set_sqlnamedquery(cmd_rec * cmd);
MODRET set_sqlnegativecache(cmd_rec * cmd);
MODRET set_sqloptions(cmd_rec * cmd);
MODRET set_sqlratios(cmd_rec * cmd);
MODRET set_sqlratiostats(cmd_rec * cmd);
MODRET set_sqlshowinfo(cmd_rec * cmd);
MODRET set_sqluserinfo(cmd_rec * cmd);
MODRET set_sqluserprimarykey(cmd_rec * cmd);
MODRET set_sqluserwhereclause(cmd_rec * cmd);
MODRET sql_auth_authenticate(cmd_rec * cmd);
MODRET sql_auth_check(cmd_rec * cmd);
MODRET sql_auth_endgrent(cmd_rec * cmd);
MODRET sql_auth_endpwent(cmd_rec * cmd);
MODRET sql_auth_getgrent(cmd_rec * cmd);
MODRET sql_auth_getgrgid(cmd_rec * cmd);
MODRET sql_auth_getgrnam(cmd_rec * cmd);
MODRET sql_auth_getgroups(cmd_rec * cmd);
MODRET sql_auth_getpwent(cmd_rec * cmd);
MODRET sql_auth_getpwnam(cmd_rec * cmd);
MODRET sql_auth_getpwuid(cmd_rec * cmd);
MODRET sql_auth_gid2name(cmd_rec * cmd);
MODRET sql_auth_name2gid(cmd_rec * cmd);
MODRET sql_auth_name2uid(cmd_rec * cmd);
MODRET sql_auth_setgrent(cmd_rec * cmd);
MODRET sql_auth_setpwent(cmd_rec * cmd);
MODRET sql_auth_uid2name(cmd_rec * cmd);
MODRET sql_change(cmd_rec * cmd);
MODRET sql_cleanup(cmd_rec * cmd);
MODRET sql_closeconn(cmd_rec * cmd);
MODRET sql_defineconn(cmd_rec * cmd);
MODRET sql_escapestr(cmd_rec * cmd);
MODRET sql_getratio(cmd_rec * cmd);
MODRET sql_getstats(cmd_rec * cmd);
MODRET sql_load_backend(cmd_rec * cmd);
MODRET sql_lookup(cmd_rec * cmd);
MODRET sql_openconn(cmd_rec * cmd);
MODRET sql_post_pass(cmd_rec * cmd);
MODRET sql_post_retr(cmd_rec * cmd);
MODRET sql_post_stor(cmd_rec * cmd);
MODRET sql_pre_dele(cmd_rec * cmd);
MODRET sql_pre_pass(cmd_rec * cmd);
MODRET sql_prepare(cmd_rec * cmd);
MODRET sql_select(cmd_rec * cmd);
MODRET quotatab_post_abor(cmd_rec * cmd);
MODRET quotatab_post_appe(cmd_rec * cmd);
MODRET quotatab_post_appe_err(cmd_rec * cmd);
MODRET quotatab_post_copy(cmd_rec * cmd);
MODRET quotatab_post_copy_err(cmd_rec * cmd);
MODRET quotatab_post_dele(cmd_rec * cmd);
MODRET quotatab_post_dele_err(cmd_rec * cmd);
MODRET quotatab_post_mkd(cmd_rec * cmd);
MODRET quotatab_post_mkd_err(cmd_rec * cmd);
MODRET quotatab_post_pass(cmd_rec * cmd);
MODRET quotatab_post_retr(cmd_rec * cmd);
MODRET quotatab_post_retr_err(cmd_rec * cmd);
MODRET quotatab_post_rmd(cmd_rec * cmd);
MODRET quotatab_post_rnto(cmd_rec * cmd);
MODRET quotatab_post_site(cmd_rec * cmd);
MODRET quotatab_post_site_err(cmd_rec * cmd);
MODRET quotatab_post_stor(cmd_rec * cmd);
MODRET quotatab_post_stor_err(cmd_rec * cmd);
MODRET quotatab_pre_appe(cmd_rec * cmd);
MODRET quotatab_pre_copy(cmd_rec * cmd);
MODRET quotatab_pre_dele(cmd_rec * cmd);
MODRET quotatab_pre_mkd(cmd_rec * cmd);
MODRET quotatab_pre_retr(cmd_rec * cmd);
MODRET quotatab_pre_rmd(cmd_rec * cmd);
MODRET quotatab_pre_rnto(cmd_rec * cmd);
MODRET quotatab_pre_site(cmd_rec * cmd);
MODRET quotatab_pre_stor(cmd_rec * cmd);
MODRET quotatab_site(cmd_rec * cmd);
MODRET set_quotadefault(cmd_rec * cmd);
MODRET set_quotadirtally(cmd_rec * cmd);
MODRET set_quotadisplayunits(cmd_rec * cmd);
MODRET set_quotaengine(cmd_rec * cmd);
MODRET set_quotaexcludefilter(cmd_rec * cmd);
MODRET set_quotalock(cmd_rec * cmd);
MODRET set_quotalog(cmd_rec * cmd);
MODRET set_quotaoptions(cmd_rec * cmd);
MODRET set_quotashowquotas(cmd_rec * cmd);
MODRET set_quotatable(cmd_rec * cmd);
MODRET set_sftppamengine(cmd_rec * cmd);
MODRET set_sftppamoptions(cmd_rec * cmd);
MODRET set_sftppamservicename(cmd_rec * cmd);
MODRET sftppam_auth(cmd_rec * cmd);
MODRET set_qosoptions(cmd_rec * cmd);
MODRET set_maxload(cmd_rec * cmd);
MODRET end_ifversion(cmd_rec * cmd);
MODRET start_ifversion(cmd_rec * cmd);
MODRET sql_sqlite_cleanup(cmd_rec * cmd);
MODRET sql_sqlite_close(cmd_rec * cmd);
MODRET sql_sqlite_def_conn(cmd_rec * cmd);
MODRET sql_sqlite_exit(cmd_rec * cmd);
MODRET sql_sqlite_identify(cmd_rec * cmd);
MODRET sql_sqlite_insert(cmd_rec * cmd);
MODRET sql_sqlite_open(cmd_rec * cmd);
MODRET sql_sqlite_prepare(cmd_rec * cmd);
MODRET sql_sqlite_procedure(cmd_rec * cmd);
MODRET sql_sqlite_query(cmd_rec * cmd);
MODRET sql_sqlite_quote(cmd_rec * cmd);
MODRET sql_sqlite_select(cmd_rec * cmd);
MODRET sql_sqlite_update(cmd_rec * cmd);
MODRET rewrite_fixup(cmd_rec * cmd);
MODRET set_rewritecondition(cmd_rec * cmd);
MODRET set_rewriteengine(cmd_rec * cmd);
MODRET set_rewritelock(cmd_rec * cmd);
MODRET set_rewritelog(cmd_rec * cmd);
MODRET set_rewritemap(cmd_rec * cmd);
MODRET set_rewritemaxreplace(cmd_rec * cmd);
MODRET set_rewriterule(cmd_rec * cmd);
MODRET set_tlscacertfile(cmd_rec * cmd);
MODRET set_tlscacertpath(cmd_rec * cmd);
MODRET set_tlscacrlfile(cmd_rec * cmd);
MODRET set_tlscacrlpath(cmd_rec * cmd);
MODRET set_tlscertchain(cmd_rec * cmd);
MODRET set_tlsciphersuite(cmd_rec * cmd);
MODRET set_tlscryptodevice(cmd_rec * cmd);
MODRET set_tlsctrlsacls(cmd_rec * cmd);
MODRET set_tlsdhparamfile(cmd_rec * cmd);
MODRET set_tlsdsacertfile(cmd_rec * cmd);
MODRET set_tlsdsakeyfile(cmd_rec * cmd);
MODRET set_tlseccertfile(cmd_rec * cmd);
MODRET set_tlsecdhcurve(cmd_rec * cmd);
MODRET set_tlseckeyfile(cmd_rec * cmd);
MODRET set_tlsengine(cmd_rec * cmd);
MODRET set_tlslog(cmd_rec * cmd);
MODRET set_tlsmasqaddr(cmd_rec * cmd);
MODRET set_tlsnextprotocol(cmd_rec * cmd);
MODRET set_tlsoptions(cmd_rec * cmd);
MODRET set_tlspassphraseprovider(cmd_rec * cmd);
MODRET set_tlspkcs12file(cmd_rec * cmd);
MODRET set_tlspresharedkey(cmd_rec * cmd);
MODRET set_tlsprotocol(cmd_rec * cmd);
MODRET set_tlsrandseed(cmd_rec * cmd);
MODRET set_tlsrenegotiate(cmd_rec * cmd);
MODRET set_tlsrequired(cmd_rec * cmd);
MODRET set_tlsrsacertfile(cmd_rec * cmd);
MODRET set_tlsrsakeyfile(cmd_rec * cmd);
MODRET set_tlsservercipherpreference(cmd_rec * cmd);
MODRET set_tlsserverinfofile(cmd_rec * cmd);
MODRET set_tlssessioncache(cmd_rec * cmd);
MODRET set_tlssessionticketkeys(cmd_rec * cmd);
MODRET set_tlssessiontickets(cmd_rec * cmd);
MODRET set_tlsstapling(cmd_rec * cmd);
MODRET set_tlsstaplingcache(cmd_rec * cmd);
MODRET set_tlsstaplingoptions(cmd_rec * cmd);
MODRET set_tlsstaplingresponder(cmd_rec * cmd);
MODRET set_tlsstaplingtimeout(cmd_rec * cmd);
MODRET set_tlstimeouthandshake(cmd_rec * cmd);
MODRET set_tlsusername(cmd_rec * cmd);
MODRET set_tlsverifyclient(cmd_rec * cmd);
MODRET set_tlsverifydepth(cmd_rec * cmd);
MODRET set_tlsverifyorder(cmd_rec * cmd);
MODRET set_tlsverifyserver(cmd_rec * cmd);
MODRET tls_any(cmd_rec * cmd);
MODRET tls_auth(cmd_rec * cmd);
MODRET tls_auth_check(cmd_rec * cmd);
MODRET tls_authenticate(cmd_rec * cmd);
MODRET tls_ccc(cmd_rec * cmd);
MODRET tls_log_auth(cmd_rec * cmd);
MODRET tls_pbsz(cmd_rec * cmd);
MODRET tls_post_auth(cmd_rec * cmd);
MODRET tls_post_pass(cmd_rec * cmd);
MODRET tls_post_user(cmd_rec * cmd);
MODRET tls_pre_xfer(cmd_rec * cmd);
MODRET tls_prot(cmd_rec * cmd);
MODRET tls_sscn(cmd_rec * cmd);
MODRET digest_hash(cmd_rec * cmd);
MODRET digest_log(cmd_rec * cmd);
MODRET digest_log_err(cmd_rec * cmd);
MODRET digest_md5(cmd_rec * cmd);
MODRET digest_post_pass(cmd_rec * cmd);
MODRET digest_pre_appe(cmd_rec * cmd);
MODRET digest_pre_retr(cmd_rec * cmd);
MODRET digest_pre_stor(cmd_rec * cmd);
MODRET digest_xcrc(cmd_rec * cmd);
MODRET digest_xmd5(cmd_rec * cmd);
MODRET digest_xsha1(cmd_rec * cmd);
MODRET digest_xsha256(cmd_rec * cmd);
MODRET digest_xsha512(cmd_rec * cmd);
MODRET set_digestalgorithms(cmd_rec * cmd);
MODRET set_digestcache(cmd_rec * cmd);
MODRET set_digestdefaultalgo(cmd_rec * cmd);
MODRET set_digestenable(cmd_rec * cmd);
MODRET set_digestengine(cmd_rec * cmd);
MODRET set_digestmaxsize(cmd_rec * cmd);
MODRET set_digestoptions(cmd_rec * cmd);
MODRET end_ifctxt(cmd_rec * cmd);
MODRET ifsess_post_pass(cmd_rec * cmd);
MODRET ifsess_post_user(cmd_rec * cmd);
MODRET set_ifsessopts(cmd_rec * cmd);
MODRET cmd_cleanup(cmd_rec * cmd);
MODRET cmd_close(cmd_rec * cmd);
MODRET cmd_defineconnection(cmd_rec * cmd);
MODRET cmd_escapestring(cmd_rec * cmd);
modret_t * cmd_exit(cmd_rec * cmd);
MODRET cmd_identify(cmd_rec * cmd);
MODRET cmd_insert(cmd_rec * cmd);
MODRET cmd_open(cmd_rec * cmd);
MODRET cmd_prepare(cmd_rec * cmd);
MODRET cmd_procedure(cmd_rec * cmd);
MODRET cmd_query(cmd_rec * cmd);
MODRET cmd_select(cmd_rec * cmd);
MODRET cmd_update(cmd_rec * cmd);
MODRET set_ctrlsacls(cmd_rec * cmd);
MODRET set_ctrlsauthfreshness(cmd_rec * cmd);
MODRET set_ctrlsengine(cmd_rec * cmd);
MODRET set_ctrlsinterval(cmd_rec * cmd);
MODRET set_ctrlslog(cmd_rec * cmd);
MODRET set_ctrlsmaxclients(cmd_rec * cmd);
MODRET set_ctrlssocket(cmd_rec * cmd);
MODRET set_ctrlssocketacl(cmd_rec * cmd);
MODRET set_ctrlssocketowner(cmd_rec * cmd);
MODRET set_loadfile(cmd_rec * cmd);
MODRET set_loadmodule(cmd_rec * cmd);
MODRET set_modulectrlsacls(cmd_rec * cmd);
MODRET set_moduleorder(cmd_rec * cmd);
MODRET set_modulepath(cmd_rec * cmd);
MODRET facts_mff(cmd_rec * cmd);
MODRET facts_mfmt(cmd_rec * cmd);
MODRET facts_mlsd(cmd_rec * cmd);
MODRET facts_mlsd_cleanup(cmd_rec * cmd);
MODRET facts_mlst(cmd_rec * cmd);
MODRET set_factsadvertise(cmd_rec * cmd);
MODRET set_factsdefault(cmd_rec * cmd);
MODRET set_factsoptions(cmd_rec * cmd);
MODRET log_any(cmd_rec * cmd);
MODRET log_post_pass(cmd_rec * cmd);
MODRET log_pre_dele(cmd_rec * cmd);
MODRET set_allowlogsymlinks(cmd_rec * cmd);
MODRET set_extendedlog(cmd_rec * cmd);
MODRET set_logformat(cmd_rec * cmd);
MODRET set_logoptions(cmd_rec * cmd);
MODRET set_serverlog(cmd_rec * cmd);
MODRET set_systemlog(cmd_rec * cmd);
MODRET ls_err_nlst(cmd_rec * cmd);
MODRET ls_list(cmd_rec * cmd);
MODRET ls_log_nlst(cmd_rec * cmd);
MODRET ls_nlst(cmd_rec * cmd);
MODRET ls_post_pass(cmd_rec * cmd);
MODRET ls_stat(cmd_rec * cmd);
MODRET set_dirfakemode(cmd_rec * cmd);
MODRET set_dirfakeusergroup(cmd_rec * cmd);
MODRET set_listoptions(cmd_rec * cmd);
MODRET set_liststyle(cmd_rec * cmd);
MODRET set_showsymlinks(cmd_rec * cmd);
MODRET set_useglobbing(cmd_rec * cmd);
MODRET delay_log_pass(cmd_rec * cmd);
MODRET delay_log_pass_err(cmd_rec * cmd);
MODRET delay_log_user(cmd_rec * cmd);
MODRET delay_post_pass(cmd_rec * cmd);
MODRET delay_post_user(cmd_rec * cmd);
MODRET delay_pre_pass(cmd_rec * cmd);
MODRET delay_pre_user(cmd_rec * cmd);
MODRET set_delayctrlsacls(cmd_rec * cmd);
MODRET set_delayengine(cmd_rec * cmd);
MODRET set_delayonevent(cmd_rec * cmd);
MODRET set_delaytable(cmd_rec * cmd);
MODRET set_identlookups(cmd_rec * cmd);
MODRET add_anonymous(cmd_rec * cmd);
MODRET add_class(cmd_rec * cmd);
MODRET add_directory(cmd_rec * cmd);
MODRET add_from(cmd_rec * cmd);
MODRET add_global(cmd_rec * cmd);
MODRET add_groupowner(cmd_rec * cmd);
MODRET add_limit(cmd_rec * cmd);
MODRET add_transferlog(cmd_rec * cmd);
MODRET add_userowner(cmd_rec * cmd);
MODRET add_virtualhost(cmd_rec * cmd);
MODRET core_cdup(cmd_rec * cmd);
MODRET core_clnt(cmd_rec * cmd);
MODRET core_csid(cmd_rec * cmd);
MODRET core_cwd(cmd_rec * cmd);
MODRET core_dele(cmd_rec * cmd);
MODRET core_eprt(cmd_rec * cmd);
MODRET core_epsv(cmd_rec * cmd);
MODRET core_feat(cmd_rec * cmd);
MODRET core_help(cmd_rec * cmd);
MODRET core_host(cmd_rec * cmd);
MODRET core_log_quit(cmd_rec * cmd);
MODRET core_mdtm(cmd_rec * cmd);
MODRET core_mkd(cmd_rec * cmd);
MODRET core_noop(cmd_rec * cmd);
MODRET core_opts(cmd_rec * cmd);
MODRET core_pasv(cmd_rec * cmd);
MODRET core_port(cmd_rec * cmd);
MODRET core_post_host(cmd_rec * cmd);
MODRET core_post_pass(cmd_rec * cmd);
MODRET core_pre_any(cmd_rec * cmd);
MODRET core_pwd(cmd_rec * cmd);
MODRET core_quit(cmd_rec * cmd);
MODRET core_rmd(cmd_rec * cmd);
MODRET core_rnfr(cmd_rec * cmd);
MODRET core_rnto(cmd_rec * cmd);
MODRET core_rnto_cleanup(cmd_rec * cmd);
MODRET core_size(cmd_rec * cmd);
MODRET core_syst(cmd_rec * cmd);
MODRET end_anonymous(cmd_rec * cmd);
MODRET end_class(cmd_rec * cmd);
MODRET end_directory(cmd_rec * cmd);
MODRET end_global(cmd_rec * cmd);
MODRET end_ifdefine(cmd_rec * cmd);
MODRET end_ifmodule(cmd_rec * cmd);
MODRET end_limit(cmd_rec * cmd);
MODRET end_virtualhost(cmd_rec * cmd);
MODRET regex_filters(cmd_rec * cmd);
MODRET set_allowall(cmd_rec * cmd);
MODRET set_allowdeny(cmd_rec * cmd);
MODRET set_allowdenyfilter(cmd_rec * cmd);
MODRET set_allowdenyusergroupclass(cmd_rec * cmd);
MODRET set_allowforeignaddress(cmd_rec * cmd);
MODRET set_allowoverride(cmd_rec * cmd);
MODRET set_authorder(cmd_rec * cmd);
MODRET set_cdpath(cmd_rec * cmd);
MODRET set_commandbuffersize(cmd_rec * cmd);
MODRET set_debuglevel(cmd_rec * cmd);
MODRET set_defaultaddress(cmd_rec * cmd);
MODRET set_defaultserver(cmd_rec * cmd);
MODRET set_deferwelcome(cmd_rec * cmd);
MODRET set_define(cmd_rec * cmd);
MODRET set_denyall(cmd_rec * cmd);
MODRET set_displaychdir(cmd_rec * cmd);
MODRET set_displayconnect(cmd_rec * cmd);
MODRET set_displayquit(cmd_rec * cmd);
MODRET set_fscachepolicy(cmd_rec * cmd);
MODRET set_fsoptions(cmd_rec * cmd);
MODRET set_group(cmd_rec * cmd);
MODRET set_hidefiles(cmd_rec * cmd);
MODRET set_hidegroup(cmd_rec * cmd);
MODRET set_hidenoaccess(cmd_rec * cmd);
MODRET set_hideuser(cmd_rec * cmd);
MODRET set_ignorehidden(cmd_rec * cmd);
MODRET set_include(cmd_rec * cmd);
MODRET set_includeoptions(cmd_rec * cmd);
MODRET set_masqueradeaddress(cmd_rec * cmd);
MODRET set_maxcommandrate(cmd_rec * cmd);
MODRET set_maxconnrate(cmd_rec * cmd);
MODRET set_maxinstances(cmd_rec * cmd);
MODRET set_multilinerfc2228(cmd_rec * cmd);
MODRET set_order(cmd_rec * cmd);
MODRET set_passiveports(cmd_rec * cmd);
MODRET set_pathallowfilter(cmd_rec * cmd);
MODRET set_pathdenyfilter(cmd_rec * cmd);
MODRET set_pidfile(cmd_rec * cmd);
MODRET set_port(cmd_rec * cmd);
MODRET set_processtitles(cmd_rec * cmd);
MODRET set_protocols(cmd_rec * cmd);
MODRET set_regexoptions(cmd_rec * cmd);
MODRET set_satisfy(cmd_rec * cmd);
MODRET set_scoreboardfile(cmd_rec * cmd);
MODRET set_scoreboardmutex(cmd_rec * cmd);
MODRET set_scoreboardoptions(cmd_rec * cmd);
MODRET set_scoreboardscrub(cmd_rec * cmd);
MODRET set_serveradmin(cmd_rec * cmd);
MODRET set_serveralias(cmd_rec * cmd);
MODRET set_serverident(cmd_rec * cmd);
MODRET set_servername(cmd_rec * cmd);
MODRET set_servertype(cmd_rec * cmd);
MODRET set_setenv(cmd_rec * cmd);
MODRET set_socketbindtight(cmd_rec * cmd);
MODRET set_socketoptions(cmd_rec * cmd);
MODRET set_syslogfacility(cmd_rec * cmd);
MODRET set_sysloglevel(cmd_rec * cmd);
MODRET set_tcpbacklog(cmd_rec * cmd);
MODRET set_tcpnodelay(cmd_rec * cmd);
MODRET set_timeoutidle(cmd_rec * cmd);
MODRET set_timeoutlinger(cmd_rec * cmd);
MODRET set_timesgmt(cmd_rec * cmd);
MODRET set_trace(cmd_rec * cmd);
MODRET set_tracelog(cmd_rec * cmd);
MODRET set_traceoptions(cmd_rec * cmd);
MODRET set_umask(cmd_rec * cmd);
MODRET set_unsetenv(cmd_rec * cmd);
MODRET set_useipv6(cmd_rec * cmd);
MODRET set_user(cmd_rec * cmd);
MODRET set_usereversedns(cmd_rec * cmd);
MODRET start_ifdefine(cmd_rec * cmd);
MODRET start_ifmodule(cmd_rec * cmd);
MODRET authfile_auth(cmd_rec * cmd);
MODRET authfile_chkpass(cmd_rec * cmd);
MODRET authfile_endgrent(cmd_rec * cmd);
MODRET authfile_endpwent(cmd_rec * cmd);
MODRET authfile_getgrent(cmd_rec * cmd);
MODRET authfile_getgrgid(cmd_rec * cmd);
MODRET authfile_getgrnam(cmd_rec * cmd);
MODRET authfile_getgroups(cmd_rec * cmd);
MODRET authfile_getpwent(cmd_rec * cmd);
MODRET authfile_getpwnam(cmd_rec * cmd);
MODRET authfile_getpwuid(cmd_rec * cmd);
MODRET authfile_gid2name(cmd_rec * cmd);
MODRET authfile_name2gid(cmd_rec * cmd);
MODRET authfile_name2uid(cmd_rec * cmd);
MODRET authfile_setgrent(cmd_rec * cmd);
MODRET authfile_setpwent(cmd_rec * cmd);
MODRET authfile_uid2name(cmd_rec * cmd);
MODRET set_authfileoptions(cmd_rec * cmd);
MODRET set_authgroupfile(cmd_rec * cmd);
MODRET set_authuserfile(cmd_rec * cmd);
MODRET set_systemdengine(cmd_rec * cmd);
MODRET cap_post_pass(cmd_rec * cmd);
MODRET set_capengine(cmd_rec * cmd);
MODRET set_caprootrevoke(cmd_rec * cmd);
MODRET set_caps(cmd_rec * cmd);
MODRET set_memcacheconnectfailures(cmd_rec * cmd);
MODRET set_memcacheengine(cmd_rec * cmd);
MODRET set_memcachelog(cmd_rec * cmd);
MODRET set_memcacheoptions(cmd_rec * cmd);
MODRET set_memcachereplicas(cmd_rec * cmd);
MODRET set_memcacheservers(cmd_rec * cmd);
MODRET set_memcachetimeouts(cmd_rec * cmd);
MODRET rlimit_post_pass(cmd_rec * cmd);
MODRET set_rlimitchroot(cmd_rec * cmd);
MODRET set_rlimitcpu(cmd_rec * cmd);
MODRET set_rlimitmemory(cmd_rec * cmd);
MODRET set_rlimitopenfiles(cmd_rec * cmd);
MODRET set_faclengine(cmd_rec * cmd);
MODRET lang_lang(cmd_rec * cmd);
MODRET lang_post_pass(cmd_rec * cmd);
MODRET set_langdefault(cmd_rec * cmd);
MODRET set_langengine(cmd_rec * cmd);
MODRET set_langoptions(cmd_rec * cmd);
MODRET set_langpath(cmd_rec * cmd);
MODRET set_useencoding(cmd_rec * cmd);
MODRET pam_auth(cmd_rec * cmd);
MODRET set_authpam(cmd_rec * cmd);
MODRET set_authpamconfig(cmd_rec * cmd);
MODRET set_authpamoptions(cmd_rec * cmd);
MODRET add_defaultchdir(cmd_rec * cmd);
MODRET add_defaultroot(cmd_rec * cmd);
MODRET auth_acct(cmd_rec * cmd);
MODRET auth_err_pass(cmd_rec * cmd);
MODRET auth_log_pass(cmd_rec * cmd);
MODRET auth_pass(cmd_rec * cmd);
MODRET auth_post_pass(cmd_rec * cmd);
MODRET auth_post_retr(cmd_rec * cmd);
MODRET auth_pre_pass(cmd_rec * cmd);
MODRET auth_pre_retr(cmd_rec * cmd);
MODRET auth_pre_user(cmd_rec * cmd);
MODRET auth_rein(cmd_rec * cmd);
MODRET auth_user(cmd_rec * cmd);
MODRET set_accessdenymsg(cmd_rec * cmd);
MODRET set_accessgrantmsg(cmd_rec * cmd);
MODRET set_allowchrootsymlinks(cmd_rec * cmd);
MODRET set_allowemptypasswords(cmd_rec * cmd);
MODRET set_anonallowrobots(cmd_rec * cmd);
MODRET set_anonrejectpasswords(cmd_rec * cmd);
MODRET set_anonrequirepassword(cmd_rec * cmd);
MODRET set_authaliasonly(cmd_rec * cmd);
MODRET set_authusingalias(cmd_rec * cmd);
MODRET set_createhome(cmd_rec * cmd);
MODRET set_displaylogin(cmd_rec * cmd);
MODRET set_maxclients(cmd_rec * cmd);
MODRET set_maxclientsclass(cmd_rec * cmd);
MODRET set_maxconnectsperhost(cmd_rec * cmd);
MODRET set_maxhostclients(cmd_rec * cmd);
MODRET set_maxhostsperuser(cmd_rec * cmd);
MODRET set_maxloginattempts(cmd_rec * cmd);
MODRET set_maxpasswordsize(cmd_rec * cmd);
MODRET set_maxuserclients(cmd_rec * cmd);
MODRET set_requirevalidshell(cmd_rec * cmd);
MODRET set_rewritehome(cmd_rec * cmd);
MODRET set_rootlogin(cmd_rec * cmd);
MODRET set_rootrevoke(cmd_rec * cmd);
MODRET set_timeoutlogin(cmd_rec * cmd);
MODRET set_timeoutsession(cmd_rec * cmd);
MODRET set_useftpusers(cmd_rec * cmd);
MODRET set_uselastlog(cmd_rec * cmd);
MODRET set_useralias(cmd_rec * cmd);
MODRET set_userdirroot(cmd_rec * cmd);
MODRET set_userpassword(cmd_rec * cmd);
MODRET set_wtmplog(cmd_rec * cmd);
MODRET site_chgrp(cmd_rec * cmd);
MODRET site_chmod(cmd_rec * cmd);
MODRET site_cmd(cmd_rec * cmd);
MODRET site_help(cmd_rec * cmd);
MODRET site_post_cmd(cmd_rec * cmd);
MODRET site_pre_cmd(cmd_rec * cmd);
MODRET redis_log_any(cmd_rec * cmd);
MODRET redis_post_pass(cmd_rec * cmd);
MODRET set_redisengine(cmd_rec * cmd);
MODRET set_redislog(cmd_rec * cmd);
MODRET set_redislogfmtextra(cmd_rec * cmd);
MODRET set_redislogoncommand(cmd_rec * cmd);
MODRET set_redislogonevent(cmd_rec * cmd);
MODRET set_redisoptions(cmd_rec * cmd);
MODRET set_redissentinel(cmd_rec * cmd);
MODRET set_redisserver(cmd_rec * cmd);
MODRET set_redistimeouts(cmd_rec * cmd);
MODRET pw_auth(cmd_rec * cmd);
MODRET pw_authz(cmd_rec * cmd);
MODRET pw_check(cmd_rec * cmd);
MODRET pw_endgrent(cmd_rec * cmd);
MODRET pw_endpwent(cmd_rec * cmd);
MODRET pw_getgrent(cmd_rec * cmd);
MODRET pw_getgrgid(cmd_rec * cmd);
MODRET pw_getgrnam(cmd_rec * cmd);
MODRET pw_getgroups(cmd_rec * cmd);
MODRET pw_getpwent(cmd_rec * cmd);
MODRET pw_getpwnam(cmd_rec * cmd);
MODRET pw_getpwuid(cmd_rec * cmd);
MODRET pw_gid2name(cmd_rec * cmd);
MODRET pw_name2gid(cmd_rec * cmd);
MODRET pw_name2uid(cmd_rec * cmd);
MODRET pw_setgrent(cmd_rec * cmd);
MODRET pw_setpwent(cmd_rec * cmd);
MODRET pw_uid2name(cmd_rec * cmd);
MODRET set_authunixoptions(cmd_rec * cmd);
MODRET set_persistentpasswd(cmd_rec * cmd);
MODRET set_allowoverwrite(cmd_rec * cmd);
MODRET set_allowrestart(cmd_rec * cmd);
MODRET set_defaulttransfermode(cmd_rec * cmd);
MODRET set_deleteabortedstores(cmd_rec * cmd);
MODRET set_displayfiletransfer(cmd_rec * cmd);
MODRET set_hiddenstores(cmd_rec * cmd);
MODRET set_maxfilesize(cmd_rec * cmd);
MODRET set_maxtransfersperhost(cmd_rec * cmd);
MODRET set_maxtransfersperuser(cmd_rec * cmd);
MODRET set_storeuniqueprefix(cmd_rec * cmd);
MODRET set_timeoutnoxfer(cmd_rec * cmd);
MODRET set_timeoutstalled(cmd_rec * cmd);
MODRET set_transferoptions(cmd_rec * cmd);
MODRET set_transferrate(cmd_rec * cmd);
MODRET set_usesendfile(cmd_rec * cmd);
MODRET xfer_abor(cmd_rec * cmd);
MODRET xfer_allo(cmd_rec * cmd);
MODRET xfer_err_cleanup(cmd_rec * cmd);
MODRET xfer_log_abor(cmd_rec * cmd);
MODRET xfer_log_retr(cmd_rec * cmd);
MODRET xfer_log_stor(cmd_rec * cmd);
MODRET xfer_mode(cmd_rec * cmd);
MODRET xfer_post_mode(cmd_rec * cmd);
MODRET xfer_post_pass(cmd_rec * cmd);
MODRET xfer_post_prot(cmd_rec * cmd);
MODRET xfer_post_retr(cmd_rec * cmd);
MODRET xfer_post_stor(cmd_rec * cmd);
MODRET xfer_post_stou(cmd_rec * cmd);
MODRET xfer_pre_appe(cmd_rec * cmd);
MODRET xfer_pre_retr(cmd_rec * cmd);
MODRET xfer_pre_stor(cmd_rec * cmd);
MODRET xfer_pre_stou(cmd_rec * cmd);
MODRET xfer_rang(cmd_rec * cmd);
MODRET xfer_rest(cmd_rec * cmd);
MODRET xfer_retr(cmd_rec * cmd);
MODRET xfer_smnt(cmd_rec * cmd);
MODRET xfer_stor(cmd_rec * cmd);
MODRET xfer_stru(cmd_rec * cmd);
MODRET xfer_type(cmd_rec * cmd);
MODRET parser_set_testsuite_enabled(cmd_rec * cmd);
MODRET parser_set_testsuite_engine(cmd_rec * cmd);
MODRET sample_log_any(cmd_rec * cmd);
MODRET sample_post_list(cmd_rec * cmd);
MODRET sample_post_nlst(cmd_rec * cmd);
MODRET sample_post_retr(cmd_rec * cmd);
MODRET sample_post_stor(cmd_rec * cmd);
MODRET sample_pre_any(cmd_rec * cmd);
MODRET sample_xfoo(cmd_rec * cmd);
MODRET set_foobardirective(cmd_rec * cmd);
modret_t *call_cb(cmd_rec *cmd);
modret_t *site_dispatch(cmd_rec*);

#endif /* PR_MODULES_H */
