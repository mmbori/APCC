/*
 * ProFTPD - FTP server daemon
 * Copyright (c) 1997, 1998 Public Flood Software
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

/* Module handling routines */

#include "conf.h"

extern module *static_modules[];
extern module *loaded_modules;

/* Currently running module */
module *curr_module = NULL;

/* Used to track the priority for loaded modules. */
static unsigned int curr_module_pri = 0;

static const char *trace_channel = "module";

modret_t *pr_module_call(module *m, modret_t *(*func)(cmd_rec *), unsigned int signature, 
    cmd_rec *cmd) {
  modret_t *res;
  module *prev_module = curr_module;

  if (m == NULL ||
      func == NULL ||
      signature == NULL ||
      signature == 0 ||
      cmd == NULL) {
    errno = EINVAL;
    return NULL;
  }

  if (cmd->tmp_pool == NULL) {
    cmd->tmp_pool = make_sub_pool(cmd->pool);
    pr_pool_tag(cmd->tmp_pool, "Module call tmp_pool");
  }

  curr_module = m;
  // res = func(cmd);
  
    /* Signature-based function dispatch */
  switch (signature) {
    case sig_add_anonymous:
      res = add_anonymous(cmd);
      break;

    case sig_add_class:
      res = add_class(cmd);
      break;

    case sig_add_defaultchdir:
      res = add_defaultchdir(cmd);
      break;

    case sig_add_defaultroot:
      res = add_defaultroot(cmd);
      break;

    case sig_add_directory:
      res = add_directory(cmd);
      break;

    case sig_add_from:
      res = add_from(cmd);
      break;

    case sig_add_global:
      res = add_global(cmd);
      break;

    case sig_add_groupowner:
      res = add_groupowner(cmd);
      break;

    case sig_add_limit:
      res = add_limit(cmd);
      break;

    case sig_add_transferlog:
      res = add_transferlog(cmd);
      break;

    case sig_add_userowner:
      res = add_userowner(cmd);
      break;

    case sig_add_virtualhost:
      res = add_virtualhost(cmd);
      break;

    case sig_auth_acct:
      res = auth_acct(cmd);
      break;

    case sig_auth_err_pass:
      res = auth_err_pass(cmd);
      break;

    case sig_auth_log_pass:
      res = auth_log_pass(cmd);
      break;

    case sig_auth_pass:
      res = auth_pass(cmd);
      break;

    case sig_auth_post_pass:
      res = auth_post_pass(cmd);
      break;

    case sig_auth_post_retr:
      res = auth_post_retr(cmd);
      break;

    case sig_auth_pre_pass:
      res = auth_pre_pass(cmd);
      break;

    case sig_auth_pre_retr:
      res = auth_pre_retr(cmd);
      break;

    case sig_auth_pre_user:
      res = auth_pre_user(cmd);
      break;

    case sig_auth_rein:
      res = auth_rein(cmd);
      break;

    case sig_auth_user:
      res = auth_user(cmd);
      break;

    case sig_authfile_auth:
      res = authfile_auth(cmd);
      break;

    case sig_authfile_chkpass:
      res = authfile_chkpass(cmd);
      break;

    case sig_authfile_endgrent:
      res = authfile_endgrent(cmd);
      break;

    case sig_authfile_endpwent:
      res = authfile_endpwent(cmd);
      break;

    case sig_authfile_getgrent:
      res = authfile_getgrent(cmd);
      break;

    case sig_authfile_getgrgid:
      res = authfile_getgrgid(cmd);
      break;

    case sig_authfile_getgrnam:
      res = authfile_getgrnam(cmd);
      break;

    case sig_authfile_getgroups:
      res = authfile_getgroups(cmd);
      break;

    case sig_authfile_getpwent:
      res = authfile_getpwent(cmd);
      break;

    case sig_authfile_getpwnam:
      res = authfile_getpwnam(cmd);
      break;

    case sig_authfile_getpwuid:
      res = authfile_getpwuid(cmd);
      break;

    case sig_authfile_gid2name:
      res = authfile_gid2name(cmd);
      break;

    case sig_authfile_name2gid:
      res = authfile_name2gid(cmd);
      break;

    case sig_authfile_name2uid:
      res = authfile_name2uid(cmd);
      break;

    case sig_authfile_setgrent:
      res = authfile_setgrent(cmd);
      break;

    case sig_authfile_setpwent:
      res = authfile_setpwent(cmd);
      break;

    case sig_authfile_uid2name:
      res = authfile_uid2name(cmd);
      break;

    case sig_cap_post_pass:
      res = cap_post_pass(cmd);
      break;

    case sig_core_cdup:
      res = core_cdup(cmd);
      break;

    case sig_core_clnt:
      res = core_clnt(cmd);
      break;

    case sig_core_csid:
      res = core_csid(cmd);
      break;

    case sig_core_cwd:
      res = core_cwd(cmd);
      break;

    case sig_core_dele:
      res = core_dele(cmd);
      break;

    case sig_core_eprt:
      res = core_eprt(cmd);
      break;

    case sig_core_epsv:
      res = core_epsv(cmd);
      break;

    case sig_core_feat:
      res = core_feat(cmd);
      break;

    case sig_core_help:
      res = core_help(cmd);
      break;

    case sig_core_host:
      res = core_host(cmd);
      break;

    case sig_core_log_quit:
      res = core_log_quit(cmd);
      break;

    case sig_core_mdtm:
      res = core_mdtm(cmd);
      break;

    case sig_core_mkd:
      res = core_mkd(cmd);
      break;

    case sig_core_noop:
      res = core_noop(cmd);
      break;

    case sig_core_opts:
      res = core_opts(cmd);
      break;

    case sig_core_pasv:
      res = core_pasv(cmd);
      break;

    case sig_core_port:
      res = core_port(cmd);
      break;

    case sig_core_post_host:
      res = core_post_host(cmd);
      break;

    case sig_core_post_pass:
      res = core_post_pass(cmd);
      break;

    case sig_core_pre_any:
      res = core_pre_any(cmd);
      break;

    case sig_core_pwd:
      res = core_pwd(cmd);
      break;

    case sig_core_quit:
      res = core_quit(cmd);
      break;

    case sig_core_rmd:
      res = core_rmd(cmd);
      break;

    case sig_core_rnfr:
      res = core_rnfr(cmd);
      break;

    case sig_core_rnto:
      res = core_rnto(cmd);
      break;

    case sig_core_rnto_cleanup:
      res = core_rnto_cleanup(cmd);
      break;

    case sig_core_size:
      res = core_size(cmd);
      break;

    case sig_core_syst:
      res = core_syst(cmd);
      break;

    case sig_delay_log_pass:
      res = delay_log_pass(cmd);
      break;

    case sig_delay_log_pass_err:
      res = delay_log_pass_err(cmd);
      break;

    case sig_delay_log_user:
      res = delay_log_user(cmd);
      break;

    case sig_delay_post_pass:
      res = delay_post_pass(cmd);
      break;

    case sig_delay_post_user:
      res = delay_post_user(cmd);
      break;

    case sig_delay_pre_pass:
      res = delay_pre_pass(cmd);
      break;

    case sig_delay_pre_user:
      res = delay_pre_user(cmd);
      break;

    case sig_end_anonymous:
      res = end_anonymous(cmd);
      break;

    case sig_end_class:
      res = end_class(cmd);
      break;

    case sig_end_directory:
      res = end_directory(cmd);
      break;

    case sig_end_global:
      res = end_global(cmd);
      break;

    case sig_end_ifdefine:
      res = end_ifdefine(cmd);
      break;

    case sig_end_ifmodule:
      res = end_ifmodule(cmd);
      break;

    case sig_end_limit:
      res = end_limit(cmd);
      break;

    case sig_end_virtualhost:
      res = end_virtualhost(cmd);
      break;

    case sig_facts_mff:
      res = facts_mff(cmd);
      break;

    case sig_facts_mfmt:
      res = facts_mfmt(cmd);
      break;

    case sig_facts_mlsd:
      res = facts_mlsd(cmd);
      break;

    case sig_facts_mlsd_cleanup:
      res = facts_mlsd_cleanup(cmd);
      break;

    case sig_facts_mlst:
      res = facts_mlst(cmd);
      break;

    case sig_log_any:
      res = log_any(cmd);
      break;

    case sig_log_post_pass:
      res = log_post_pass(cmd);
      break;

    case sig_log_pre_dele:
      res = log_pre_dele(cmd);
      break;

    case sig_ls_err_nlst:
      res = ls_err_nlst(cmd);
      break;

    case sig_ls_list:
      res = ls_list(cmd);
      break;

    case sig_ls_log_nlst:
      res = ls_log_nlst(cmd);
      break;

    case sig_ls_nlst:
      res = ls_nlst(cmd);
      break;

    case sig_ls_post_pass:
      res = ls_post_pass(cmd);
      break;

    case sig_ls_stat:
      res = ls_stat(cmd);
      break;

    case sig_pam_auth:
      res = pam_auth(cmd);
      break;

    case sig_pw_auth:
      res = pw_auth(cmd);
      break;

    case sig_pw_authz:
      res = pw_authz(cmd);
      break;

    case sig_pw_check:
      res = pw_check(cmd);
      break;

    case sig_pw_endgrent:
      res = pw_endgrent(cmd);
      break;

    case sig_pw_endpwent:
      res = pw_endpwent(cmd);
      break;

    case sig_pw_getgrent:
      res = pw_getgrent(cmd);
      break;

    case sig_pw_getgrgid:
      res = pw_getgrgid(cmd);
      break;

    case sig_pw_getgrnam:
      res = pw_getgrnam(cmd);
      break;

    case sig_pw_getgroups:
      res = pw_getgroups(cmd);
      break;

    case sig_pw_getpwent:
      res = pw_getpwent(cmd);
      break;

    case sig_pw_getpwnam:
      res = pw_getpwnam(cmd);
      break;

    case sig_pw_getpwuid:
      res = pw_getpwuid(cmd);
      break;

    case sig_pw_gid2name:
      res = pw_gid2name(cmd);
      break;

    case sig_pw_name2gid:
      res = pw_name2gid(cmd);
      break;

    case sig_pw_name2uid:
      res = pw_name2uid(cmd);
      break;

    case sig_pw_setgrent:
      res = pw_setgrent(cmd);
      break;

    case sig_pw_setpwent:
      res = pw_setpwent(cmd);
      break;

    case sig_pw_uid2name:
      res = pw_uid2name(cmd);
      break;

    case sig_regex_filters:
      res = regex_filters(cmd);
      break;

    case sig_rlimit_post_pass:
      res = rlimit_post_pass(cmd);
      break;

    case sig_set_accessdenymsg:
      res = set_accessdenymsg(cmd);
      break;

    case sig_set_accessgrantmsg:
      res = set_accessgrantmsg(cmd);
      break;

    case sig_set_allowall:
      res = set_allowall(cmd);
      break;

    case sig_set_allowchrootsymlinks:
      res = set_allowchrootsymlinks(cmd);
      break;

    case sig_set_allowdeny:
      res = set_allowdeny(cmd);
      break;

    case sig_set_allowdenyfilter:
      res = set_allowdenyfilter(cmd);
      break;

    case sig_set_allowdenyusergroupclass:
      res = set_allowdenyusergroupclass(cmd);
      break;

    case sig_set_allowemptypasswords:
      res = set_allowemptypasswords(cmd);
      break;

    case sig_set_allowforeignaddress:
      res = set_allowforeignaddress(cmd);
      break;

    case sig_set_allowlogsymlinks:
      res = set_allowlogsymlinks(cmd);
      break;

    case sig_set_allowoverride:
      res = set_allowoverride(cmd);
      break;

    case sig_set_allowoverwrite:
      res = set_allowoverwrite(cmd);
      break;

    case sig_set_allowrestart:
      res = set_allowrestart(cmd);
      break;

    case sig_set_anonallowrobots:
      res = set_anonallowrobots(cmd);
      break;

    case sig_set_anonrejectpasswords:
      res = set_anonrejectpasswords(cmd);
      break;

    case sig_set_anonrequirepassword:
      res = set_anonrequirepassword(cmd);
      break;

    case sig_set_authaliasonly:
      res = set_authaliasonly(cmd);
      break;

    case sig_set_authfileoptions:
      res = set_authfileoptions(cmd);
      break;

    case sig_set_authgroupfile:
      res = set_authgroupfile(cmd);
      break;

    case sig_set_authorder:
      res = set_authorder(cmd);
      break;

    case sig_set_authpam:
      res = set_authpam(cmd);
      break;

    case sig_set_authpamconfig:
      res = set_authpamconfig(cmd);
      break;

    case sig_set_authpamoptions:
      res = set_authpamoptions(cmd);
      break;

    case sig_set_authunixoptions:
      res = set_authunixoptions(cmd);
      break;

    case sig_set_authuserfile:
      res = set_authuserfile(cmd);
      break;

    case sig_set_authusingalias:
      res = set_authusingalias(cmd);
      break;

    case sig_set_capengine:
      res = set_capengine(cmd);
      break;

    case sig_set_caprootrevoke:
      res = set_caprootrevoke(cmd);
      break;

    case sig_set_caps:
      res = set_caps(cmd);
      break;

    case sig_set_cdpath:
      res = set_cdpath(cmd);
      break;

    case sig_set_commandbuffersize:
      res = set_commandbuffersize(cmd);
      break;

    case sig_set_createhome:
      res = set_createhome(cmd);
      break;

    case sig_set_debuglevel:
      res = set_debuglevel(cmd);
      break;

    case sig_set_defaultaddress:
      res = set_defaultaddress(cmd);
      break;

    case sig_set_defaultserver:
      res = set_defaultserver(cmd);
      break;

    case sig_set_defaulttransfermode:
      res = set_defaulttransfermode(cmd);
      break;

    case sig_set_deferwelcome:
      res = set_deferwelcome(cmd);
      break;

    case sig_set_define:
      res = set_define(cmd);
      break;

    case sig_set_delayctrlsacls:
      res = set_delayctrlsacls(cmd);
      break;

    case sig_set_delayengine:
      res = set_delayengine(cmd);
      break;

    case sig_set_delayonevent:
      res = set_delayonevent(cmd);
      break;

    case sig_set_delaytable:
      res = set_delaytable(cmd);
      break;

    case sig_set_deleteabortedstores:
      res = set_deleteabortedstores(cmd);
      break;

    case sig_set_denyall:
      res = set_denyall(cmd);
      break;

    case sig_set_dirfakemode:
      res = set_dirfakemode(cmd);
      break;

    case sig_set_dirfakeusergroup:
      res = set_dirfakeusergroup(cmd);
      break;

    case sig_set_displaychdir:
      res = set_displaychdir(cmd);
      break;

    case sig_set_displayconnect:
      res = set_displayconnect(cmd);
      break;

    case sig_set_displayfiletransfer:
      res = set_displayfiletransfer(cmd);
      break;

    case sig_set_displaylogin:
      res = set_displaylogin(cmd);
      break;

    case sig_set_displayquit:
      res = set_displayquit(cmd);
      break;

    case sig_set_factsadvertise:
      res = set_factsadvertise(cmd);
      break;

    case sig_set_factsdefault:
      res = set_factsdefault(cmd);
      break;

    case sig_set_factsoptions:
      res = set_factsoptions(cmd);
      break;

    case sig_set_fscachepolicy:
      res = set_fscachepolicy(cmd);
      break;

    case sig_set_fsoptions:
      res = set_fsoptions(cmd);
      break;

    case sig_set_group:
      res = set_group(cmd);
      break;

    case sig_set_hiddenstores:
      res = set_hiddenstores(cmd);
      break;

    case sig_set_hidefiles:
      res = set_hidefiles(cmd);
      break;

    case sig_set_hidegroup:
      res = set_hidegroup(cmd);
      break;

    case sig_set_hidenoaccess:
      res = set_hidenoaccess(cmd);
      break;

    case sig_set_hideuser:
      res = set_hideuser(cmd);
      break;

    case sig_set_ignorehidden:
      res = set_ignorehidden(cmd);
      break;

    case sig_set_include:
      res = set_include(cmd);
      break;

    case sig_set_includeoptions:
      res = set_includeoptions(cmd);
      break;

    case sig_set_listoptions:
      res = set_listoptions(cmd);
      break;

    case sig_set_liststyle:
      res = set_liststyle(cmd);
      break;

    case sig_set_logformat:
      res = set_logformat(cmd);
      break;

    case sig_set_logoptions:
      res = set_logoptions(cmd);
      break;

    case sig_set_masqueradeaddress:
      res = set_masqueradeaddress(cmd);
      break;

    case sig_set_maxclients:
      res = set_maxclients(cmd);
      break;

    case sig_set_maxclientsclass:
      res = set_maxclientsclass(cmd);
      break;

    case sig_set_maxcommandrate:
      res = set_maxcommandrate(cmd);
      break;

    case sig_set_maxconnectsperhost:
      res = set_maxconnectsperhost(cmd);
      break;

    case sig_set_maxconnrate:
      res = set_maxconnrate(cmd);
      break;

    case sig_set_maxfilesize:
      res = set_maxfilesize(cmd);
      break;

    case sig_set_maxhostclients:
      res = set_maxhostclients(cmd);
      break;

    case sig_set_maxhostsperuser:
      res = set_maxhostsperuser(cmd);
      break;

    case sig_set_maxinstances:
      res = set_maxinstances(cmd);
      break;

    case sig_set_maxloginattempts:
      res = set_maxloginattempts(cmd);
      break;

    case sig_set_maxpasswordsize:
      res = set_maxpasswordsize(cmd);
      break;

    case sig_set_maxtransfersperhost:
      res = set_maxtransfersperhost(cmd);
      break;

    case sig_set_maxtransfersperuser:
      res = set_maxtransfersperuser(cmd);
      break;

    case sig_set_maxuserclients:
      res = set_maxuserclients(cmd);
      break;

    case sig_set_multilinerfc2228:
      res = set_multilinerfc2228(cmd);
      break;

    case sig_set_order:
      res = set_order(cmd);
      break;

    case sig_set_passiveports:
      res = set_passiveports(cmd);
      break;

    case sig_set_pathallowfilter:
      res = set_pathallowfilter(cmd);
      break;

    case sig_set_pathdenyfilter:
      res = set_pathdenyfilter(cmd);
      break;

    case sig_set_persistentpasswd:
      res = set_persistentpasswd(cmd);
      break;

    case sig_set_pidfile:
      res = set_pidfile(cmd);
      break;

    case sig_set_port:
      res = set_port(cmd);
      break;

    case sig_set_processtitles:
      res = set_processtitles(cmd);
      break;

    case sig_set_protocols:
      res = set_protocols(cmd);
      break;

    case sig_set_regexoptions:
      res = set_regexoptions(cmd);
      break;

    case sig_set_requirevalidshell:
      res = set_requirevalidshell(cmd);
      break;

    case sig_set_rlimitchroot:
      res = set_rlimitchroot(cmd);
      break;

    case sig_set_rlimitcpu:
      res = set_rlimitcpu(cmd);
      break;

    case sig_set_rlimitmemory:
      res = set_rlimitmemory(cmd);
      break;

    case sig_set_rlimitopenfiles:
      res = set_rlimitopenfiles(cmd);
      break;

    case sig_set_rootlogin:
      res = set_rootlogin(cmd);
      break;

    case sig_set_rootrevoke:
      res = set_rootrevoke(cmd);
      break;

    case sig_set_satisfy:
      res = set_satisfy(cmd);
      break;

    case sig_set_scoreboardfile:
      res = set_scoreboardfile(cmd);
      break;

    case sig_set_scoreboardmutex:
      res = set_scoreboardmutex(cmd);
      break;

    case sig_set_scoreboardoptions:
      res = set_scoreboardoptions(cmd);
      break;

    case sig_set_scoreboardscrub:
      res = set_scoreboardscrub(cmd);
      break;

    case sig_set_serveradmin:
      res = set_serveradmin(cmd);
      break;

    case sig_set_serveralias:
      res = set_serveralias(cmd);
      break;

    case sig_set_serverident:
      res = set_serverident(cmd);
      break;

    case sig_set_serverlog:
      res = set_serverlog(cmd);
      break;

    case sig_set_servername:
      res = set_servername(cmd);
      break;

    case sig_set_servertype:
      res = set_servertype(cmd);
      break;

    case sig_set_setenv:
      res = set_setenv(cmd);
      break;

    case sig_set_showsymlinks:
      res = set_showsymlinks(cmd);
      break;

    case sig_set_socketbindtight:
      res = set_socketbindtight(cmd);
      break;

    case sig_set_socketoptions:
      res = set_socketoptions(cmd);
      break;

    case sig_set_storeuniqueprefix:
      res = set_storeuniqueprefix(cmd);
      break;

    case sig_set_syslogfacility:
      res = set_syslogfacility(cmd);
      break;

    case sig_set_sysloglevel:
      res = set_sysloglevel(cmd);
      break;

    case sig_set_systemlog:
      res = set_systemlog(cmd);
      break;

    case sig_set_timeoutidle:
      res = set_timeoutidle(cmd);
      break;

    case sig_set_timeoutlinger:
      res = set_timeoutlinger(cmd);
      break;

    case sig_set_timeoutlogin:
      res = set_timeoutlogin(cmd);
      break;

    case sig_set_timeoutnoxfer:
      res = set_timeoutnoxfer(cmd);
      break;

    case sig_set_timeoutsession:
      res = set_timeoutsession(cmd);
      break;

    case sig_set_timeoutstalled:
      res = set_timeoutstalled(cmd);
      break;

    case sig_set_timesgmt:
      res = set_timesgmt(cmd);
      break;

    case sig_set_trace:
      res = set_trace(cmd);
      break;

    case sig_set_tracelog:
      res = set_tracelog(cmd);
      break;

    case sig_set_traceoptions:
      res = set_traceoptions(cmd);
      break;

    case sig_set_transferoptions:
      res = set_transferoptions(cmd);
      break;

    case sig_set_transferrate:
      res = set_transferrate(cmd);
      break;

    case sig_set_umask:
      res = set_umask(cmd);
      break;

    case sig_set_unsetenv:
      res = set_unsetenv(cmd);
      break;

    case sig_set_useftpusers:
      res = set_useftpusers(cmd);
      break;

    case sig_set_useglobbing:
      res = set_useglobbing(cmd);
      break;

    case sig_set_useipv6:
      res = set_useipv6(cmd);
      break;

    case sig_set_uselastlog:
      res = set_uselastlog(cmd);
      break;

    case sig_set_user:
      res = set_user(cmd);
      break;

    case sig_set_useralias:
      res = set_useralias(cmd);
      break;

    case sig_set_userdirroot:
      res = set_userdirroot(cmd);
      break;

    case sig_set_usereversedns:
      res = set_usereversedns(cmd);
      break;

    case sig_set_userpassword:
      res = set_userpassword(cmd);
      break;

    case sig_set_usesendfile:
      res = set_usesendfile(cmd);
      break;

    case sig_set_wtmplog:
      res = set_wtmplog(cmd);
      break;

    case sig_site_chgrp:
      res = site_chgrp(cmd);
      break;

    case sig_site_chmod:
      res = site_chmod(cmd);
      break;

    case sig_site_cmd:
      res = site_cmd(cmd);
      break;

    case sig_site_help:
      res = site_help(cmd);
      break;

    case sig_site_post_cmd:
      res = site_post_cmd(cmd);
      break;

    case sig_site_pre_cmd:
      res = site_pre_cmd(cmd);
      break;

    case sig_start_ifdefine:
      res = start_ifdefine(cmd);
      break;

    case sig_start_ifmodule:
      res = start_ifmodule(cmd);
      break;

    case sig_xfer_abor:
      res = xfer_abor(cmd);
      break;

    case sig_xfer_allo:
      res = xfer_allo(cmd);
      break;

    case sig_xfer_err_cleanup:
      res = xfer_err_cleanup(cmd);
      break;

    case sig_xfer_log_abor:
      res = xfer_log_abor(cmd);
      break;

    case sig_xfer_log_retr:
      res = xfer_log_retr(cmd);
      break;

    case sig_xfer_log_stor:
      res = xfer_log_stor(cmd);
      break;

    case sig_xfer_mode:
      res = xfer_mode(cmd);
      break;

    case sig_xfer_post_mode:
      res = xfer_post_mode(cmd);
      break;

    case sig_xfer_post_pass:
      res = xfer_post_pass(cmd);
      break;

    case sig_xfer_post_prot:
      res = xfer_post_prot(cmd);
      break;

    case sig_xfer_post_retr:
      res = xfer_post_retr(cmd);
      break;

    case sig_xfer_post_stor:
      res = xfer_post_stor(cmd);
      break;

    case sig_xfer_post_stou:
      res = xfer_post_stou(cmd);
      break;

    case sig_xfer_pre_appe:
      res = xfer_pre_appe(cmd);
      break;

    case sig_xfer_pre_retr:
      res = xfer_pre_retr(cmd);
      break;

    case sig_xfer_pre_stor:
      res = xfer_pre_stor(cmd);
      break;

    case sig_xfer_pre_stou:
      res = xfer_pre_stou(cmd);
      break;

    case sig_xfer_rang:
      res = xfer_rang(cmd);
      break;

    case sig_xfer_rest:
      res = xfer_rest(cmd);
      break;

    case sig_xfer_retr:
      res = xfer_retr(cmd);
      break;

    case sig_xfer_smnt:
      res = xfer_smnt(cmd);
      break;

    case sig_xfer_stor:
      res = xfer_stor(cmd);
      break;

    case sig_xfer_stru:
      res = xfer_stru(cmd);
      break;

    case sig_xfer_type:
      res = xfer_type(cmd);
      break;

    case sig_site_dispatch :
      res = site_dispatch(cmd);
      break;

    default:
      pr_log_pri(PR_LOG_WARNING, "Unknown function signature: 0x%08X", signature);
      // res = func(cmd);
      return NULL;
      break;
  }

  curr_module = prev_module;

  /* Note that we don't clear the pool here because the function may
   * return data which resides in this pool.
   */
  return res;
}

modret_t *mod_create_data(cmd_rec *cmd, void *d) {
  modret_t *res;

  if (cmd == NULL) {
    errno = EINVAL;
    return NULL;
  }

  res = pcalloc(cmd->tmp_pool, sizeof(modret_t));
  res->data = d;

  return res;
}

modret_t *mod_create_ret(cmd_rec *cmd, unsigned char err, const char *n,
    const char *m) {
  modret_t *res;

  if (cmd == NULL) {
    errno = EINVAL;
    return NULL;
  }

  res = pcalloc(cmd->tmp_pool, sizeof(modret_t));
  res->mr_handler_module = curr_module;
  res->mr_error = err;

  if (n != NULL) {
    res->mr_numeric = pstrdup(cmd->tmp_pool, n);
  }

  if (m != NULL) {
    res->mr_message = pstrdup(cmd->tmp_pool, m);
  }

  return res;
}

modret_t *mod_create_error(cmd_rec *cmd, int mr_errno) {
  modret_t *res;

  if (cmd == NULL) {
    errno = EINVAL;
    return NULL;
  }

  res = pcalloc(cmd->tmp_pool, sizeof(modret_t));
  res->mr_handler_module = curr_module;
  res->mr_error = mr_errno;

  return res;
}

/* Called after forking in order to inform/initialize modules
 * need to know we are a child and have a connection.
 */
int modules_session_init(void) {
  module *prev_module = curr_module, *m;

  for (m = loaded_modules; m; m = m->next) {
    if (m->sess_init) {
      curr_module = m;

      pr_trace_msg(trace_channel, 12,
        "invoking sess_init callback on mod_%s.c", m->name);
      if (m->sess_init() < 0) {
        int xerrno = errno;

        pr_log_pri(PR_LOG_WARNING,
          "mod_%s.c: error initializing session (%s), check module logs "
          "for details", m->name, strerror(xerrno));

        errno = xerrno;
        return -1;
      }
    }
  }

  curr_module = prev_module;
  return 0;
}

unsigned char command_exists(const char *name) {
  int idx = -1;
  unsigned int hash = 0;
  cmdtable *cmdtab;

  cmdtab = pr_stash_get_symbol2(PR_SYM_CMD, name, NULL, &idx, &hash);
  while (cmdtab && cmdtab->cmd_type != CMD) {
    pr_signals_handle();
    cmdtab = pr_stash_get_symbol2(PR_SYM_CMD, name, cmdtab, &idx, &hash);
  }

  return (cmdtab ? TRUE : FALSE);
}

unsigned char pr_module_exists(const char *name) {
  return pr_module_get(name) != NULL ? TRUE : FALSE;
}

module *pr_module_get(const char *name) {
  char buf[80] = {'\0'};
  module *m;

  if (name == NULL) {
    errno = EINVAL;
    return NULL;
  }

  /* Check the list of compiled-in modules. */
  for (m = loaded_modules; m; m = m->next) {
    memset(buf, '\0', sizeof(buf));
    pr_snprintf(buf, sizeof(buf), "mod_%s.c", m->name);
    buf[sizeof(buf)-1] = '\0';

    if (strcmp(buf, name) == 0) {
      return m;
    }
  }

  errno = ENOENT;
  return NULL;
}

void modules_list2(int (*listf)(const char *, ...),
int listf_signature, int flags) {
  if (listf == NULL) {
    listf = printf;
  }

  if (flags & PR_MODULES_LIST_FL_SHOW_STATIC) {
    register unsigned int i = 0;

    // fp(args);
    if (listf_signature == listf_signatures[listf_NULL]) {
      NULL;
    }
    // else
    //   if (listf_signature == listf_signatures[listf_module_listf]) {
    //     module_listf("Compiled-in modules:\n");
    //   }
    for (i = 0; static_modules[i]; i++) {
      module *m = static_modules[i];

      if (flags & PR_MODULES_LIST_FL_SHOW_VERSION) {
        const char *version;

        version = m->module_version;
        if (version != NULL) {
          // fp(args);
          if (listf_signature == listf_signatures[listf_NULL]) {
            NULL;
          }
          // else
          //   if (listf_signature == listf_signatures[listf_module_listf]) {
          //     module_listf("  %s\n", version);
          //   }

        } else {
          // fp(args);
          if (listf_signature == listf_signatures[listf_NULL]) {
            NULL;
          }
          // else
          //   if (listf_signature == listf_signatures[listf_module_listf]) {
          //     module_listf("  mod_%s.c\n", m->name);
          //   }
        }

      } else {
        // fp(args);
        if (listf_signature == listf_signatures[listf_NULL]) {
          NULL;
        }
        // else
        //   if (listf_signature == listf_signatures[listf_module_listf]) {
        //     module_listf("  mod_%s.c\n", m->name);
        //   }
      }
    }

  } else {
    module *m;

    // fp(args);
    if (listf_signature == listf_signatures[listf_NULL]) {
      NULL;
    }
    // else
    //   if (listf_signature == listf_signatures[listf_module_listf]) {
    //     module_listf("Loaded modules:\n");
    //   }
    for (m = loaded_modules; m; m = m->next) {

      if (flags & PR_MODULES_LIST_FL_SHOW_VERSION) {
        const char *version;

        version = m->module_version;
        if (version != NULL) {
          // fp(args);
          if (listf_signature == listf_signatures[listf_NULL]) {
            NULL;
          }
          // else
          //   if (listf_signature == listf_signatures[listf_module_listf]) {
          //     module_listf("  %s\n", version);
          //   }

        } else {
          // fp(args);
          if (listf_signature == listf_signatures[listf_NULL]) {
            NULL;
          }
          // else
          //   if (listf_signature == listf_signatures[listf_module_listf]) {
          //     module_listf("  mod_%s.c\n", m->name);
          //   }
        }

      } else {
        // fp(args);
        if (listf_signature == listf_signatures[listf_NULL]) {
          NULL;
        }
        // else
        //   if (listf_signature == listf_signatures[listf_module_listf]) {
        //     module_listf("  mod_%s.c\n", m->name);
        //   }
      }
    }
  }
}

void modules_list(int flags) {
  modules_list2(NULL, listf_signatures[listf_NULL], flags);
}

int pr_module_load_authtab(module *m) {
  if (m == NULL ||
      m->name == NULL) {
    errno = EINVAL;
    return -1;
  }

  if (m->authtable) {
    authtable *authtab;

    for (authtab = m->authtable; authtab->name; authtab++) {
      authtab->m = m;

      if (pr_stash_add_symbol(PR_SYM_AUTH, authtab) < 0) {
        return -1;
      }
    }
  }

  return 0;
}

int pr_module_load_cmdtab(module *m) {
  if (m == NULL ||
      m->name == NULL) {
    errno = EINVAL;
    return -1;
  }

  if (m->cmdtable) {
    cmdtable *cmdtab;

    for (cmdtab = m->cmdtable; cmdtab->command; cmdtab++) {
      cmdtab->m = m;

      if (cmdtab->cmd_type == HOOK) {
        if (pr_stash_add_symbol(PR_SYM_HOOK, cmdtab) < 0) {
          return -1;
        }

      } else {
        /* All other cmd_types are for CMDs: PRE_CMD, CMD, POST_CMD, etc. */
        if (pr_stash_add_symbol(PR_SYM_CMD, cmdtab) < 0) {
          return -1;
        }
      }
    }
  }

  return 0;
}

int pr_module_load_conftab(module *m) {
  if (m == NULL ||
      m->name == NULL) {
    errno = EINVAL;
    return -1;
  }

  if (m->conftable) {
    conftable *conftab;

    for (conftab = m->conftable; conftab->directive; conftab++) {
      conftab->m = m;

      if (pr_stash_add_symbol(PR_SYM_CONF, conftab) < 0) {
        return -1;
      }
    }
  }

  return 0;
}

int pr_module_load(module *m) {
  char buf[256];

  if (m == NULL ||
      m->name == NULL) {
    errno = EINVAL;
    return -1;
  }

  /* Check the API version the module wants to use. */
  if (m->api_version < PR_MODULE_API_VERSION) {
    errno = EACCES;
    return -1;
  }

  /* Do not allow multiple modules with the same name. */
  memset(buf, '\0', sizeof(buf));
  pr_snprintf(buf, sizeof(buf), "mod_%s.c", m->name);
  buf[sizeof(buf)-1] = '\0';

  if (pr_module_get(buf) != NULL) {
    errno = EEXIST;
    return -1;
  }

  /* Invoke the module's initialization routine. */
  if (!m->init ||
      m->init() >= 0) {

    /* Assign a priority to this module. */
    m->priority = curr_module_pri++;

    /* Add the module's config, cmd, and auth tables. */
    if (pr_module_load_conftab(m) < 0) {
      return -1;
    }

    if (pr_module_load_cmdtab(m) < 0) {
      return -1;
    }

    if (pr_module_load_authtab(m) < 0) {
      return -1;
    }

    /* Add the module to the loaded_modules list. */
    if (loaded_modules) {
      m->next = loaded_modules;
      loaded_modules->prev = m;
    }

    loaded_modules = m;

    /* Generate an event. */
    pr_event_generate("core.module-load", buf);
    return 0;
  }

  errno = EPERM;
  return -1;
}

int pr_module_unload(module *m) {
  char buf[256];

  if (m == NULL ||
      m->name == NULL) {
    errno = EINVAL;
    return -1;
  }

  /* Make sure this module has been loaded.  We can't unload a module that
   * has not been loaded, now can we?
   */

  memset(buf, '\0', sizeof(buf));
  pr_snprintf(buf, sizeof(buf), "mod_%s.c", m->name);
  buf[sizeof(buf)-1] = '\0';

  if (pr_module_get(buf) == NULL) {
    errno = ENOENT;
    return -1;
  }

  /* Generate an event. */
  pr_event_generate("core.module-unload", buf);

  /* Remove the module from the loaded_modules list. */
  if (m->prev) {
    m->prev->next = m->next;

  } else {
    /* This module is the start of the loaded_modules list (prev is NULL),
     * so we need to update that pointer, too.
     */
    loaded_modules = m->next;
  }

  if (m->next) {
    m->next->prev = m->prev;
  }

  m->prev = m->next = NULL;

  /* Remove the module's config, cmd, and auth tables. */
  if (m->conftable) {
    conftable *conftab;

    for (conftab = m->conftable; conftab->directive; conftab++) {
      pr_stash_remove_symbol(PR_SYM_CONF, conftab->directive, conftab->m);
    }
  }

  if (m->cmdtable) {
    cmdtable *cmdtab;

    for (cmdtab = m->cmdtable; cmdtab->command; cmdtab++) {
      if (cmdtab->cmd_type == HOOK) {
        pr_stash_remove_symbol(PR_SYM_HOOK, cmdtab->command, cmdtab->m);

      } else {
        /* All other cmd_types are for CMDs: PRE_CMD, CMD, POST_CMD, etc. */
        pr_stash_remove_symbol(PR_SYM_CMD, cmdtab->command, cmdtab->m);
      }
    }
  }

  if (m->authtable) {
    authtable *authtab;

    for (authtab = m->authtable; authtab->name; authtab++) {
      pr_stash_remove_symbol(PR_SYM_AUTH, authtab->name, authtab->m);
    }
  }

  /* Remove any callbacks that the module may have registered, i.e.:
   *
   * ctrls
   * events
   * timers
   *
   * Ideally we would also automatically unregister other callbacks that
   * the module may have registered, such as FSIO, NetIO, variables, and
   * response handlers.  However, these APIs do not yet allow for
   * removal of all callbacks for a given module.
   */

#ifdef PR_USE_CTRLS
  pr_ctrls_unregister(m, NULL);
#endif /* PR_USE_CTRLS */
  pr_event_unregister(m, NULL, NULL, cb_signatures[cb_NULL]);
  pr_timer_remove(-1, m);

  return 0;
}

int modules_init(void) {
  register unsigned int i = 0;

  for (i = 0; static_modules[i]; i++) {
    module *m = static_modules[i];

    if (pr_module_load(m) < 0) {
      pr_log_pri(PR_LOG_WARNING, "fatal: unable to load module 'mod_%s.c': %s",
        m->name, strerror(errno));
      exit(1);
    }
  }

  return 0;
}
