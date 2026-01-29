// Auto-generated Coccinelle script for extracting function declarations
// Target functions from hashtable JSON
// Each function has its own rule for better performance
// Note: Matches both static and non-static functions, removes 'static' from output

@find_add_anonymous@
identifier func = add_anonymous;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_anonymous@
func << find_add_anonymous.func;
T << find_add_anonymous.T;
P << find_add_anonymous.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_class@
identifier func = add_class;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_class@
func << find_add_class.func;
T << find_add_class.T;
P << find_add_class.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_defaultchdir@
identifier func = add_defaultchdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_defaultchdir@
func << find_add_defaultchdir.func;
T << find_add_defaultchdir.T;
P << find_add_defaultchdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_defaultroot@
identifier func = add_defaultroot;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_defaultroot@
func << find_add_defaultroot.func;
T << find_add_defaultroot.T;
P << find_add_defaultroot.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_directory@
identifier func = add_directory;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_directory@
func << find_add_directory.func;
T << find_add_directory.T;
P << find_add_directory.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_from@
identifier func = add_from;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_from@
func << find_add_from.func;
T << find_add_from.T;
P << find_add_from.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_global@
identifier func = add_global;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_global@
func << find_add_global.func;
T << find_add_global.T;
P << find_add_global.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_groupowner@
identifier func = add_groupowner;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_groupowner@
func << find_add_groupowner.func;
T << find_add_groupowner.T;
P << find_add_groupowner.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_limit@
identifier func = add_limit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_limit@
func << find_add_limit.func;
T << find_add_limit.T;
P << find_add_limit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_transferlog@
identifier func = add_transferlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_transferlog@
func << find_add_transferlog.func;
T << find_add_transferlog.T;
P << find_add_transferlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_userowner@
identifier func = add_userowner;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_userowner@
func << find_add_userowner.func;
T << find_add_userowner.T;
P << find_add_userowner.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_virtualhost@
identifier func = add_virtualhost;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_virtualhost@
func << find_add_virtualhost.func;
T << find_add_virtualhost.T;
P << find_add_virtualhost.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_acct@
identifier func = auth_acct;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_acct@
func << find_auth_acct.func;
T << find_auth_acct.T;
P << find_auth_acct.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_err_pass@
identifier func = auth_err_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_err_pass@
func << find_auth_err_pass.func;
T << find_auth_err_pass.T;
P << find_auth_err_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_log_pass@
identifier func = auth_log_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_log_pass@
func << find_auth_log_pass.func;
T << find_auth_log_pass.T;
P << find_auth_log_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_pass@
identifier func = auth_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_pass@
func << find_auth_pass.func;
T << find_auth_pass.T;
P << find_auth_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_post_pass@
identifier func = auth_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_post_pass@
func << find_auth_post_pass.func;
T << find_auth_post_pass.T;
P << find_auth_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_post_retr@
identifier func = auth_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_post_retr@
func << find_auth_post_retr.func;
T << find_auth_post_retr.T;
P << find_auth_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_pre_pass@
identifier func = auth_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_pre_pass@
func << find_auth_pre_pass.func;
T << find_auth_pre_pass.T;
P << find_auth_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_pre_retr@
identifier func = auth_pre_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_pre_retr@
func << find_auth_pre_retr.func;
T << find_auth_pre_retr.T;
P << find_auth_pre_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_pre_user@
identifier func = auth_pre_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_pre_user@
func << find_auth_pre_user.func;
T << find_auth_pre_user.T;
P << find_auth_pre_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_rein@
identifier func = auth_rein;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_rein@
func << find_auth_rein.func;
T << find_auth_rein.T;
P << find_auth_rein.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_user@
identifier func = auth_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_user@
func << find_auth_user.func;
T << find_auth_user.T;
P << find_auth_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_auth@
identifier func = authfile_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_auth@
func << find_authfile_auth.func;
T << find_authfile_auth.T;
P << find_authfile_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_chkpass@
identifier func = authfile_chkpass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_chkpass@
func << find_authfile_chkpass.func;
T << find_authfile_chkpass.T;
P << find_authfile_chkpass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_endgrent@
identifier func = authfile_endgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_endgrent@
func << find_authfile_endgrent.func;
T << find_authfile_endgrent.T;
P << find_authfile_endgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_endpwent@
identifier func = authfile_endpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_endpwent@
func << find_authfile_endpwent.func;
T << find_authfile_endpwent.T;
P << find_authfile_endpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getgrent@
identifier func = authfile_getgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getgrent@
func << find_authfile_getgrent.func;
T << find_authfile_getgrent.T;
P << find_authfile_getgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getgrgid@
identifier func = authfile_getgrgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getgrgid@
func << find_authfile_getgrgid.func;
T << find_authfile_getgrgid.T;
P << find_authfile_getgrgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getgrnam@
identifier func = authfile_getgrnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getgrnam@
func << find_authfile_getgrnam.func;
T << find_authfile_getgrnam.T;
P << find_authfile_getgrnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getgroups@
identifier func = authfile_getgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getgroups@
func << find_authfile_getgroups.func;
T << find_authfile_getgroups.T;
P << find_authfile_getgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getpwent@
identifier func = authfile_getpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getpwent@
func << find_authfile_getpwent.func;
T << find_authfile_getpwent.T;
P << find_authfile_getpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getpwnam@
identifier func = authfile_getpwnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getpwnam@
func << find_authfile_getpwnam.func;
T << find_authfile_getpwnam.T;
P << find_authfile_getpwnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_getpwuid@
identifier func = authfile_getpwuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_getpwuid@
func << find_authfile_getpwuid.func;
T << find_authfile_getpwuid.T;
P << find_authfile_getpwuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_gid2name@
identifier func = authfile_gid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_gid2name@
func << find_authfile_gid2name.func;
T << find_authfile_gid2name.T;
P << find_authfile_gid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_name2gid@
identifier func = authfile_name2gid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_name2gid@
func << find_authfile_name2gid.func;
T << find_authfile_name2gid.T;
P << find_authfile_name2gid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_name2uid@
identifier func = authfile_name2uid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_name2uid@
func << find_authfile_name2uid.func;
T << find_authfile_name2uid.T;
P << find_authfile_name2uid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_setgrent@
identifier func = authfile_setgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_setgrent@
func << find_authfile_setgrent.func;
T << find_authfile_setgrent.T;
P << find_authfile_setgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_setpwent@
identifier func = authfile_setpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_setpwent@
func << find_authfile_setpwent.func;
T << find_authfile_setpwent.T;
P << find_authfile_setpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_authfile_uid2name@
identifier func = authfile_uid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_authfile_uid2name@
func << find_authfile_uid2name.func;
T << find_authfile_uid2name.T;
P << find_authfile_uid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_cdup@
identifier func = core_cdup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_cdup@
func << find_core_cdup.func;
T << find_core_cdup.T;
P << find_core_cdup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_clnt@
identifier func = core_clnt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_clnt@
func << find_core_clnt.func;
T << find_core_clnt.T;
P << find_core_clnt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_csid@
identifier func = core_csid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_csid@
func << find_core_csid.func;
T << find_core_csid.T;
P << find_core_csid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_cwd@
identifier func = core_cwd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_cwd@
func << find_core_cwd.func;
T << find_core_cwd.T;
P << find_core_cwd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_dele@
identifier func = core_dele;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_dele@
func << find_core_dele.func;
T << find_core_dele.T;
P << find_core_dele.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_eprt@
identifier func = core_eprt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_eprt@
func << find_core_eprt.func;
T << find_core_eprt.T;
P << find_core_eprt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_epsv@
identifier func = core_epsv;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_epsv@
func << find_core_epsv.func;
T << find_core_epsv.T;
P << find_core_epsv.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_feat@
identifier func = core_feat;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_feat@
func << find_core_feat.func;
T << find_core_feat.T;
P << find_core_feat.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_help@
identifier func = core_help;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_help@
func << find_core_help.func;
T << find_core_help.T;
P << find_core_help.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_host@
identifier func = core_host;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_host@
func << find_core_host.func;
T << find_core_host.T;
P << find_core_host.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_log_quit@
identifier func = core_log_quit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_log_quit@
func << find_core_log_quit.func;
T << find_core_log_quit.T;
P << find_core_log_quit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_mdtm@
identifier func = core_mdtm;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_mdtm@
func << find_core_mdtm.func;
T << find_core_mdtm.T;
P << find_core_mdtm.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_mkd@
identifier func = core_mkd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_mkd@
func << find_core_mkd.func;
T << find_core_mkd.T;
P << find_core_mkd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_noop@
identifier func = core_noop;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_noop@
func << find_core_noop.func;
T << find_core_noop.T;
P << find_core_noop.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_opts@
identifier func = core_opts;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_opts@
func << find_core_opts.func;
T << find_core_opts.T;
P << find_core_opts.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_pasv@
identifier func = core_pasv;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_pasv@
func << find_core_pasv.func;
T << find_core_pasv.T;
P << find_core_pasv.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_port@
identifier func = core_port;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_port@
func << find_core_port.func;
T << find_core_port.T;
P << find_core_port.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_post_host@
identifier func = core_post_host;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_post_host@
func << find_core_post_host.func;
T << find_core_post_host.T;
P << find_core_post_host.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_post_pass@
identifier func = core_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_post_pass@
func << find_core_post_pass.func;
T << find_core_post_pass.T;
P << find_core_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_pre_any@
identifier func = core_pre_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_pre_any@
func << find_core_pre_any.func;
T << find_core_pre_any.T;
P << find_core_pre_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_pwd@
identifier func = core_pwd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_pwd@
func << find_core_pwd.func;
T << find_core_pwd.T;
P << find_core_pwd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_quit@
identifier func = core_quit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_quit@
func << find_core_quit.func;
T << find_core_quit.T;
P << find_core_quit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_rmd@
identifier func = core_rmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_rmd@
func << find_core_rmd.func;
T << find_core_rmd.T;
P << find_core_rmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_rnfr@
identifier func = core_rnfr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_rnfr@
func << find_core_rnfr.func;
T << find_core_rnfr.T;
P << find_core_rnfr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_rnto@
identifier func = core_rnto;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_rnto@
func << find_core_rnto.func;
T << find_core_rnto.T;
P << find_core_rnto.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_rnto_cleanup@
identifier func = core_rnto_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_rnto_cleanup@
func << find_core_rnto_cleanup.func;
T << find_core_rnto_cleanup.T;
P << find_core_rnto_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_size@
identifier func = core_size;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_size@
func << find_core_size.func;
T << find_core_size.T;
P << find_core_size.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_core_syst@
identifier func = core_syst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_core_syst@
func << find_core_syst.func;
T << find_core_syst.T;
P << find_core_syst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_log_pass@
identifier func = delay_log_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_log_pass@
func << find_delay_log_pass.func;
T << find_delay_log_pass.T;
P << find_delay_log_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_log_pass_err@
identifier func = delay_log_pass_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_log_pass_err@
func << find_delay_log_pass_err.func;
T << find_delay_log_pass_err.T;
P << find_delay_log_pass_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_log_user@
identifier func = delay_log_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_log_user@
func << find_delay_log_user.func;
T << find_delay_log_user.T;
P << find_delay_log_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_post_pass@
identifier func = delay_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_post_pass@
func << find_delay_post_pass.func;
T << find_delay_post_pass.T;
P << find_delay_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_post_user@
identifier func = delay_post_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_post_user@
func << find_delay_post_user.func;
T << find_delay_post_user.T;
P << find_delay_post_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_pre_pass@
identifier func = delay_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_pre_pass@
func << find_delay_pre_pass.func;
T << find_delay_pre_pass.T;
P << find_delay_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_delay_pre_user@
identifier func = delay_pre_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_delay_pre_user@
func << find_delay_pre_user.func;
T << find_delay_pre_user.T;
P << find_delay_pre_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_anonymous@
identifier func = end_anonymous;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_anonymous@
func << find_end_anonymous.func;
T << find_end_anonymous.T;
P << find_end_anonymous.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_class@
identifier func = end_class;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_class@
func << find_end_class.func;
T << find_end_class.T;
P << find_end_class.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_directory@
identifier func = end_directory;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_directory@
func << find_end_directory.func;
T << find_end_directory.T;
P << find_end_directory.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_global@
identifier func = end_global;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_global@
func << find_end_global.func;
T << find_end_global.T;
P << find_end_global.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_ifdefine@
identifier func = end_ifdefine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_ifdefine@
func << find_end_ifdefine.func;
T << find_end_ifdefine.T;
P << find_end_ifdefine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_ifmodule@
identifier func = end_ifmodule;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_ifmodule@
func << find_end_ifmodule.func;
T << find_end_ifmodule.T;
P << find_end_ifmodule.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_limit@
identifier func = end_limit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_limit@
func << find_end_limit.func;
T << find_end_limit.T;
P << find_end_limit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_end_virtualhost@
identifier func = end_virtualhost;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_virtualhost@
func << find_end_virtualhost.func;
T << find_end_virtualhost.T;
P << find_end_virtualhost.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_facts_mff@
identifier func = facts_mff;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_facts_mff@
func << find_facts_mff.func;
T << find_facts_mff.T;
P << find_facts_mff.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_facts_mfmt@
identifier func = facts_mfmt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_facts_mfmt@
func << find_facts_mfmt.func;
T << find_facts_mfmt.T;
P << find_facts_mfmt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_facts_mlsd@
identifier func = facts_mlsd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_facts_mlsd@
func << find_facts_mlsd.func;
T << find_facts_mlsd.T;
P << find_facts_mlsd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_facts_mlsd_cleanup@
identifier func = facts_mlsd_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_facts_mlsd_cleanup@
func << find_facts_mlsd_cleanup.func;
T << find_facts_mlsd_cleanup.T;
P << find_facts_mlsd_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_facts_mlst@
identifier func = facts_mlst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_facts_mlst@
func << find_facts_mlst.func;
T << find_facts_mlst.T;
P << find_facts_mlst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_log_any@
identifier func = log_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_log_any@
func << find_log_any.func;
T << find_log_any.T;
P << find_log_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_log_post_pass@
identifier func = log_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_log_post_pass@
func << find_log_post_pass.func;
T << find_log_post_pass.T;
P << find_log_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_log_pre_dele@
identifier func = log_pre_dele;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_log_pre_dele@
func << find_log_pre_dele.func;
T << find_log_pre_dele.T;
P << find_log_pre_dele.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_err_nlst@
identifier func = ls_err_nlst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_err_nlst@
func << find_ls_err_nlst.func;
T << find_ls_err_nlst.T;
P << find_ls_err_nlst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_list@
identifier func = ls_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_list@
func << find_ls_list.func;
T << find_ls_list.T;
P << find_ls_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_log_nlst@
identifier func = ls_log_nlst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_log_nlst@
func << find_ls_log_nlst.func;
T << find_ls_log_nlst.T;
P << find_ls_log_nlst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_nlst@
identifier func = ls_nlst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_nlst@
func << find_ls_nlst.func;
T << find_ls_nlst.T;
P << find_ls_nlst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_post_pass@
identifier func = ls_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_post_pass@
func << find_ls_post_pass.func;
T << find_ls_post_pass.T;
P << find_ls_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ls_stat@
identifier func = ls_stat;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ls_stat@
func << find_ls_stat.func;
T << find_ls_stat.T;
P << find_ls_stat.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pam_auth@
identifier func = pam_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pam_auth@
func << find_pam_auth.func;
T << find_pam_auth.T;
P << find_pam_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_auth@
identifier func = pw_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_auth@
func << find_pw_auth.func;
T << find_pw_auth.T;
P << find_pw_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_authz@
identifier func = pw_authz;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_authz@
func << find_pw_authz.func;
T << find_pw_authz.T;
P << find_pw_authz.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_check@
identifier func = pw_check;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_check@
func << find_pw_check.func;
T << find_pw_check.T;
P << find_pw_check.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_endgrent@
identifier func = pw_endgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_endgrent@
func << find_pw_endgrent.func;
T << find_pw_endgrent.T;
P << find_pw_endgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_endpwent@
identifier func = pw_endpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_endpwent@
func << find_pw_endpwent.func;
T << find_pw_endpwent.T;
P << find_pw_endpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getgrent@
identifier func = pw_getgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getgrent@
func << find_pw_getgrent.func;
T << find_pw_getgrent.T;
P << find_pw_getgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getgrgid@
identifier func = pw_getgrgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getgrgid@
func << find_pw_getgrgid.func;
T << find_pw_getgrgid.T;
P << find_pw_getgrgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getgrnam@
identifier func = pw_getgrnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getgrnam@
func << find_pw_getgrnam.func;
T << find_pw_getgrnam.T;
P << find_pw_getgrnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getgroups@
identifier func = pw_getgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getgroups@
func << find_pw_getgroups.func;
T << find_pw_getgroups.T;
P << find_pw_getgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getpwent@
identifier func = pw_getpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getpwent@
func << find_pw_getpwent.func;
T << find_pw_getpwent.T;
P << find_pw_getpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getpwnam@
identifier func = pw_getpwnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getpwnam@
func << find_pw_getpwnam.func;
T << find_pw_getpwnam.T;
P << find_pw_getpwnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_getpwuid@
identifier func = pw_getpwuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_getpwuid@
func << find_pw_getpwuid.func;
T << find_pw_getpwuid.T;
P << find_pw_getpwuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_gid2name@
identifier func = pw_gid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_gid2name@
func << find_pw_gid2name.func;
T << find_pw_gid2name.T;
P << find_pw_gid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_name2gid@
identifier func = pw_name2gid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_name2gid@
func << find_pw_name2gid.func;
T << find_pw_name2gid.T;
P << find_pw_name2gid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_name2uid@
identifier func = pw_name2uid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_name2uid@
func << find_pw_name2uid.func;
T << find_pw_name2uid.T;
P << find_pw_name2uid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_setgrent@
identifier func = pw_setgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_setgrent@
func << find_pw_setgrent.func;
T << find_pw_setgrent.T;
P << find_pw_setgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_setpwent@
identifier func = pw_setpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_setpwent@
func << find_pw_setpwent.func;
T << find_pw_setpwent.T;
P << find_pw_setpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pw_uid2name@
identifier func = pw_uid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pw_uid2name@
func << find_pw_uid2name.func;
T << find_pw_uid2name.T;
P << find_pw_uid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_regex_filters@
identifier func = regex_filters;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_regex_filters@
func << find_regex_filters.func;
T << find_regex_filters.T;
P << find_regex_filters.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_rlimit_post_pass@
identifier func = rlimit_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_rlimit_post_pass@
func << find_rlimit_post_pass.func;
T << find_rlimit_post_pass.T;
P << find_rlimit_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_accessdenymsg@
identifier func = set_accessdenymsg;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_accessdenymsg@
func << find_set_accessdenymsg.func;
T << find_set_accessdenymsg.T;
P << find_set_accessdenymsg.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_accessgrantmsg@
identifier func = set_accessgrantmsg;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_accessgrantmsg@
func << find_set_accessgrantmsg.func;
T << find_set_accessgrantmsg.T;
P << find_set_accessgrantmsg.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowall@
identifier func = set_allowall;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowall@
func << find_set_allowall.func;
T << find_set_allowall.T;
P << find_set_allowall.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowchrootsymlinks@
identifier func = set_allowchrootsymlinks;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowchrootsymlinks@
func << find_set_allowchrootsymlinks.func;
T << find_set_allowchrootsymlinks.T;
P << find_set_allowchrootsymlinks.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowdeny@
identifier func = set_allowdeny;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowdeny@
func << find_set_allowdeny.func;
T << find_set_allowdeny.T;
P << find_set_allowdeny.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowdenyfilter@
identifier func = set_allowdenyfilter;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowdenyfilter@
func << find_set_allowdenyfilter.func;
T << find_set_allowdenyfilter.T;
P << find_set_allowdenyfilter.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowdenyusergroupclass@
identifier func = set_allowdenyusergroupclass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowdenyusergroupclass@
func << find_set_allowdenyusergroupclass.func;
T << find_set_allowdenyusergroupclass.T;
P << find_set_allowdenyusergroupclass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowemptypasswords@
identifier func = set_allowemptypasswords;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowemptypasswords@
func << find_set_allowemptypasswords.func;
T << find_set_allowemptypasswords.T;
P << find_set_allowemptypasswords.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowforeignaddress@
identifier func = set_allowforeignaddress;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowforeignaddress@
func << find_set_allowforeignaddress.func;
T << find_set_allowforeignaddress.T;
P << find_set_allowforeignaddress.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowlogsymlinks@
identifier func = set_allowlogsymlinks;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowlogsymlinks@
func << find_set_allowlogsymlinks.func;
T << find_set_allowlogsymlinks.T;
P << find_set_allowlogsymlinks.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowoverride@
identifier func = set_allowoverride;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowoverride@
func << find_set_allowoverride.func;
T << find_set_allowoverride.T;
P << find_set_allowoverride.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowoverwrite@
identifier func = set_allowoverwrite;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowoverwrite@
func << find_set_allowoverwrite.func;
T << find_set_allowoverwrite.T;
P << find_set_allowoverwrite.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_allowrestart@
identifier func = set_allowrestart;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_allowrestart@
func << find_set_allowrestart.func;
T << find_set_allowrestart.T;
P << find_set_allowrestart.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_anonallowrobots@
identifier func = set_anonallowrobots;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_anonallowrobots@
func << find_set_anonallowrobots.func;
T << find_set_anonallowrobots.T;
P << find_set_anonallowrobots.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_anonrejectpasswords@
identifier func = set_anonrejectpasswords;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_anonrejectpasswords@
func << find_set_anonrejectpasswords.func;
T << find_set_anonrejectpasswords.T;
P << find_set_anonrejectpasswords.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_anonrequirepassword@
identifier func = set_anonrequirepassword;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_anonrequirepassword@
func << find_set_anonrequirepassword.func;
T << find_set_anonrequirepassword.T;
P << find_set_anonrequirepassword.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authaliasonly@
identifier func = set_authaliasonly;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authaliasonly@
func << find_set_authaliasonly.func;
T << find_set_authaliasonly.T;
P << find_set_authaliasonly.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authfileoptions@
identifier func = set_authfileoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authfileoptions@
func << find_set_authfileoptions.func;
T << find_set_authfileoptions.T;
P << find_set_authfileoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authgroupfile@
identifier func = set_authgroupfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authgroupfile@
func << find_set_authgroupfile.func;
T << find_set_authgroupfile.T;
P << find_set_authgroupfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authorder@
identifier func = set_authorder;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authorder@
func << find_set_authorder.func;
T << find_set_authorder.T;
P << find_set_authorder.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authpam@
identifier func = set_authpam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authpam@
func << find_set_authpam.func;
T << find_set_authpam.T;
P << find_set_authpam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authpamconfig@
identifier func = set_authpamconfig;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authpamconfig@
func << find_set_authpamconfig.func;
T << find_set_authpamconfig.T;
P << find_set_authpamconfig.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authpamoptions@
identifier func = set_authpamoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authpamoptions@
func << find_set_authpamoptions.func;
T << find_set_authpamoptions.T;
P << find_set_authpamoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authunixoptions@
identifier func = set_authunixoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authunixoptions@
func << find_set_authunixoptions.func;
T << find_set_authunixoptions.T;
P << find_set_authunixoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authuserfile@
identifier func = set_authuserfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authuserfile@
func << find_set_authuserfile.func;
T << find_set_authuserfile.T;
P << find_set_authuserfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authusingalias@
identifier func = set_authusingalias;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authusingalias@
func << find_set_authusingalias.func;
T << find_set_authusingalias.T;
P << find_set_authusingalias.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_cdpath@
identifier func = set_cdpath;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_cdpath@
func << find_set_cdpath.func;
T << find_set_cdpath.T;
P << find_set_cdpath.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_commandbuffersize@
identifier func = set_commandbuffersize;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_commandbuffersize@
func << find_set_commandbuffersize.func;
T << find_set_commandbuffersize.T;
P << find_set_commandbuffersize.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_createhome@
identifier func = set_createhome;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_createhome@
func << find_set_createhome.func;
T << find_set_createhome.T;
P << find_set_createhome.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_debuglevel@
identifier func = set_debuglevel;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_debuglevel@
func << find_set_debuglevel.func;
T << find_set_debuglevel.T;
P << find_set_debuglevel.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_defaultaddress@
identifier func = set_defaultaddress;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_defaultaddress@
func << find_set_defaultaddress.func;
T << find_set_defaultaddress.T;
P << find_set_defaultaddress.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_defaultserver@
identifier func = set_defaultserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_defaultserver@
func << find_set_defaultserver.func;
T << find_set_defaultserver.T;
P << find_set_defaultserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_defaulttransfermode@
identifier func = set_defaulttransfermode;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_defaulttransfermode@
func << find_set_defaulttransfermode.func;
T << find_set_defaulttransfermode.T;
P << find_set_defaulttransfermode.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_deferwelcome@
identifier func = set_deferwelcome;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_deferwelcome@
func << find_set_deferwelcome.func;
T << find_set_deferwelcome.T;
P << find_set_deferwelcome.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_define@
identifier func = set_define;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_define@
func << find_set_define.func;
T << find_set_define.T;
P << find_set_define.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_delayctrlsacls@
identifier func = set_delayctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_delayctrlsacls@
func << find_set_delayctrlsacls.func;
T << find_set_delayctrlsacls.T;
P << find_set_delayctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_delayengine@
identifier func = set_delayengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_delayengine@
func << find_set_delayengine.func;
T << find_set_delayengine.T;
P << find_set_delayengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_delayonevent@
identifier func = set_delayonevent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_delayonevent@
func << find_set_delayonevent.func;
T << find_set_delayonevent.T;
P << find_set_delayonevent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_delaytable@
identifier func = set_delaytable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_delaytable@
func << find_set_delaytable.func;
T << find_set_delaytable.T;
P << find_set_delaytable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_deleteabortedstores@
identifier func = set_deleteabortedstores;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_deleteabortedstores@
func << find_set_deleteabortedstores.func;
T << find_set_deleteabortedstores.T;
P << find_set_deleteabortedstores.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_denyall@
identifier func = set_denyall;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_denyall@
func << find_set_denyall.func;
T << find_set_denyall.T;
P << find_set_denyall.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dirfakemode@
identifier func = set_dirfakemode;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dirfakemode@
func << find_set_dirfakemode.func;
T << find_set_dirfakemode.T;
P << find_set_dirfakemode.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dirfakeusergroup@
identifier func = set_dirfakeusergroup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dirfakeusergroup@
func << find_set_dirfakeusergroup.func;
T << find_set_dirfakeusergroup.T;
P << find_set_dirfakeusergroup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_displaychdir@
identifier func = set_displaychdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displaychdir@
func << find_set_displaychdir.func;
T << find_set_displaychdir.T;
P << find_set_displaychdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_displayconnect@
identifier func = set_displayconnect;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displayconnect@
func << find_set_displayconnect.func;
T << find_set_displayconnect.T;
P << find_set_displayconnect.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_displayfiletransfer@
identifier func = set_displayfiletransfer;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displayfiletransfer@
func << find_set_displayfiletransfer.func;
T << find_set_displayfiletransfer.T;
P << find_set_displayfiletransfer.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_displaylogin@
identifier func = set_displaylogin;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displaylogin@
func << find_set_displaylogin.func;
T << find_set_displaylogin.T;
P << find_set_displaylogin.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_displayquit@
identifier func = set_displayquit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displayquit@
func << find_set_displayquit.func;
T << find_set_displayquit.T;
P << find_set_displayquit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_extendedlog@
identifier func = set_extendedlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_extendedlog@
func << find_set_extendedlog.func;
T << find_set_extendedlog.T;
P << find_set_extendedlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_factsadvertise@
identifier func = set_factsadvertise;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_factsadvertise@
func << find_set_factsadvertise.func;
T << find_set_factsadvertise.T;
P << find_set_factsadvertise.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_factsdefault@
identifier func = set_factsdefault;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_factsdefault@
func << find_set_factsdefault.func;
T << find_set_factsdefault.T;
P << find_set_factsdefault.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_factsoptions@
identifier func = set_factsoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_factsoptions@
func << find_set_factsoptions.func;
T << find_set_factsoptions.T;
P << find_set_factsoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_fscachepolicy@
identifier func = set_fscachepolicy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_fscachepolicy@
func << find_set_fscachepolicy.func;
T << find_set_fscachepolicy.T;
P << find_set_fscachepolicy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_fsoptions@
identifier func = set_fsoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_fsoptions@
func << find_set_fsoptions.func;
T << find_set_fsoptions.T;
P << find_set_fsoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_group@
identifier func = set_group;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_group@
func << find_set_group.func;
T << find_set_group.T;
P << find_set_group.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_hiddenstores@
identifier func = set_hiddenstores;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_hiddenstores@
func << find_set_hiddenstores.func;
T << find_set_hiddenstores.T;
P << find_set_hiddenstores.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_hidefiles@
identifier func = set_hidefiles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_hidefiles@
func << find_set_hidefiles.func;
T << find_set_hidefiles.T;
P << find_set_hidefiles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_hidegroup@
identifier func = set_hidegroup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_hidegroup@
func << find_set_hidegroup.func;
T << find_set_hidegroup.T;
P << find_set_hidegroup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_hidenoaccess@
identifier func = set_hidenoaccess;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_hidenoaccess@
func << find_set_hidenoaccess.func;
T << find_set_hidenoaccess.T;
P << find_set_hidenoaccess.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_hideuser@
identifier func = set_hideuser;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_hideuser@
func << find_set_hideuser.func;
T << find_set_hideuser.T;
P << find_set_hideuser.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ignorehidden@
identifier func = set_ignorehidden;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ignorehidden@
func << find_set_ignorehidden.func;
T << find_set_ignorehidden.T;
P << find_set_ignorehidden.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_include@
identifier func = set_include;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_include@
func << find_set_include.func;
T << find_set_include.T;
P << find_set_include.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_includeoptions@
identifier func = set_includeoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_includeoptions@
func << find_set_includeoptions.func;
T << find_set_includeoptions.T;
P << find_set_includeoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_listoptions@
identifier func = set_listoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_listoptions@
func << find_set_listoptions.func;
T << find_set_listoptions.T;
P << find_set_listoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_liststyle@
identifier func = set_liststyle;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_liststyle@
func << find_set_liststyle.func;
T << find_set_liststyle.T;
P << find_set_liststyle.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_logformat@
identifier func = set_logformat;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_logformat@
func << find_set_logformat.func;
T << find_set_logformat.T;
P << find_set_logformat.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_logoptions@
identifier func = set_logoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_logoptions@
func << find_set_logoptions.func;
T << find_set_logoptions.T;
P << find_set_logoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_masqueradeaddress@
identifier func = set_masqueradeaddress;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_masqueradeaddress@
func << find_set_masqueradeaddress.func;
T << find_set_masqueradeaddress.T;
P << find_set_masqueradeaddress.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxclients@
identifier func = set_maxclients;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxclients@
func << find_set_maxclients.func;
T << find_set_maxclients.T;
P << find_set_maxclients.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxclientsclass@
identifier func = set_maxclientsclass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxclientsclass@
func << find_set_maxclientsclass.func;
T << find_set_maxclientsclass.T;
P << find_set_maxclientsclass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxcommandrate@
identifier func = set_maxcommandrate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxcommandrate@
func << find_set_maxcommandrate.func;
T << find_set_maxcommandrate.T;
P << find_set_maxcommandrate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxconnectsperhost@
identifier func = set_maxconnectsperhost;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxconnectsperhost@
func << find_set_maxconnectsperhost.func;
T << find_set_maxconnectsperhost.T;
P << find_set_maxconnectsperhost.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxconnrate@
identifier func = set_maxconnrate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxconnrate@
func << find_set_maxconnrate.func;
T << find_set_maxconnrate.T;
P << find_set_maxconnrate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxfilesize@
identifier func = set_maxfilesize;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxfilesize@
func << find_set_maxfilesize.func;
T << find_set_maxfilesize.T;
P << find_set_maxfilesize.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxhostclients@
identifier func = set_maxhostclients;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxhostclients@
func << find_set_maxhostclients.func;
T << find_set_maxhostclients.T;
P << find_set_maxhostclients.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxhostsperuser@
identifier func = set_maxhostsperuser;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxhostsperuser@
func << find_set_maxhostsperuser.func;
T << find_set_maxhostsperuser.T;
P << find_set_maxhostsperuser.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxinstances@
identifier func = set_maxinstances;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxinstances@
func << find_set_maxinstances.func;
T << find_set_maxinstances.T;
P << find_set_maxinstances.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxloginattempts@
identifier func = set_maxloginattempts;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxloginattempts@
func << find_set_maxloginattempts.func;
T << find_set_maxloginattempts.T;
P << find_set_maxloginattempts.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxpasswordsize@
identifier func = set_maxpasswordsize;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxpasswordsize@
func << find_set_maxpasswordsize.func;
T << find_set_maxpasswordsize.T;
P << find_set_maxpasswordsize.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxtransfersperhost@
identifier func = set_maxtransfersperhost;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxtransfersperhost@
func << find_set_maxtransfersperhost.func;
T << find_set_maxtransfersperhost.T;
P << find_set_maxtransfersperhost.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxtransfersperuser@
identifier func = set_maxtransfersperuser;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxtransfersperuser@
func << find_set_maxtransfersperuser.func;
T << find_set_maxtransfersperuser.T;
P << find_set_maxtransfersperuser.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_maxuserclients@
identifier func = set_maxuserclients;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxuserclients@
func << find_set_maxuserclients.func;
T << find_set_maxuserclients.T;
P << find_set_maxuserclients.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_multilinerfc2228@
identifier func = set_multilinerfc2228;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_multilinerfc2228@
func << find_set_multilinerfc2228.func;
T << find_set_multilinerfc2228.T;
P << find_set_multilinerfc2228.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_order@
identifier func = set_order;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_order@
func << find_set_order.func;
T << find_set_order.T;
P << find_set_order.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_passiveports@
identifier func = set_passiveports;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_passiveports@
func << find_set_passiveports.func;
T << find_set_passiveports.T;
P << find_set_passiveports.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_pathallowfilter@
identifier func = set_pathallowfilter;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_pathallowfilter@
func << find_set_pathallowfilter.func;
T << find_set_pathallowfilter.T;
P << find_set_pathallowfilter.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_pathdenyfilter@
identifier func = set_pathdenyfilter;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_pathdenyfilter@
func << find_set_pathdenyfilter.func;
T << find_set_pathdenyfilter.T;
P << find_set_pathdenyfilter.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_persistentpasswd@
identifier func = set_persistentpasswd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_persistentpasswd@
func << find_set_persistentpasswd.func;
T << find_set_persistentpasswd.T;
P << find_set_persistentpasswd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_pidfile@
identifier func = set_pidfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_pidfile@
func << find_set_pidfile.func;
T << find_set_pidfile.T;
P << find_set_pidfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_port@
identifier func = set_port;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_port@
func << find_set_port.func;
T << find_set_port.T;
P << find_set_port.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_processtitles@
identifier func = set_processtitles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_processtitles@
func << find_set_processtitles.func;
T << find_set_processtitles.T;
P << find_set_processtitles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_protocols@
identifier func = set_protocols;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_protocols@
func << find_set_protocols.func;
T << find_set_protocols.T;
P << find_set_protocols.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_regexoptions@
identifier func = set_regexoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_regexoptions@
func << find_set_regexoptions.func;
T << find_set_regexoptions.T;
P << find_set_regexoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_requirevalidshell@
identifier func = set_requirevalidshell;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_requirevalidshell@
func << find_set_requirevalidshell.func;
T << find_set_requirevalidshell.T;
P << find_set_requirevalidshell.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewritehome@
identifier func = set_rewritehome;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritehome@
func << find_set_rewritehome.func;
T << find_set_rewritehome.T;
P << find_set_rewritehome.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rlimitchroot@
identifier func = set_rlimitchroot;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rlimitchroot@
func << find_set_rlimitchroot.func;
T << find_set_rlimitchroot.T;
P << find_set_rlimitchroot.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rlimitcpu@
identifier func = set_rlimitcpu;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rlimitcpu@
func << find_set_rlimitcpu.func;
T << find_set_rlimitcpu.T;
P << find_set_rlimitcpu.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rlimitmemory@
identifier func = set_rlimitmemory;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rlimitmemory@
func << find_set_rlimitmemory.func;
T << find_set_rlimitmemory.T;
P << find_set_rlimitmemory.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rlimitopenfiles@
identifier func = set_rlimitopenfiles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rlimitopenfiles@
func << find_set_rlimitopenfiles.func;
T << find_set_rlimitopenfiles.T;
P << find_set_rlimitopenfiles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rootlogin@
identifier func = set_rootlogin;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rootlogin@
func << find_set_rootlogin.func;
T << find_set_rootlogin.T;
P << find_set_rootlogin.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rootrevoke@
identifier func = set_rootrevoke;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rootrevoke@
func << find_set_rootrevoke.func;
T << find_set_rootrevoke.T;
P << find_set_rootrevoke.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_satisfy@
identifier func = set_satisfy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_satisfy@
func << find_set_satisfy.func;
T << find_set_satisfy.T;
P << find_set_satisfy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_scoreboardfile@
identifier func = set_scoreboardfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_scoreboardfile@
func << find_set_scoreboardfile.func;
T << find_set_scoreboardfile.T;
P << find_set_scoreboardfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_scoreboardmutex@
identifier func = set_scoreboardmutex;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_scoreboardmutex@
func << find_set_scoreboardmutex.func;
T << find_set_scoreboardmutex.T;
P << find_set_scoreboardmutex.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_scoreboardoptions@
identifier func = set_scoreboardoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_scoreboardoptions@
func << find_set_scoreboardoptions.func;
T << find_set_scoreboardoptions.T;
P << find_set_scoreboardoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_scoreboardscrub@
identifier func = set_scoreboardscrub;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_scoreboardscrub@
func << find_set_scoreboardscrub.func;
T << find_set_scoreboardscrub.T;
P << find_set_scoreboardscrub.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_serveradmin@
identifier func = set_serveradmin;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_serveradmin@
func << find_set_serveradmin.func;
T << find_set_serveradmin.T;
P << find_set_serveradmin.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_serveralias@
identifier func = set_serveralias;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_serveralias@
func << find_set_serveralias.func;
T << find_set_serveralias.T;
P << find_set_serveralias.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_serverident@
identifier func = set_serverident;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_serverident@
func << find_set_serverident.func;
T << find_set_serverident.T;
P << find_set_serverident.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_serverlog@
identifier func = set_serverlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_serverlog@
func << find_set_serverlog.func;
T << find_set_serverlog.T;
P << find_set_serverlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_servername@
identifier func = set_servername;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_servername@
func << find_set_servername.func;
T << find_set_servername.T;
P << find_set_servername.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_servertype@
identifier func = set_servertype;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_servertype@
func << find_set_servertype.func;
T << find_set_servertype.T;
P << find_set_servertype.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_setenv@
identifier func = set_setenv;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_setenv@
func << find_set_setenv.func;
T << find_set_setenv.T;
P << find_set_setenv.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_showsymlinks@
identifier func = set_showsymlinks;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_showsymlinks@
func << find_set_showsymlinks.func;
T << find_set_showsymlinks.T;
P << find_set_showsymlinks.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_socketbindtight@
identifier func = set_socketbindtight;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_socketbindtight@
func << find_set_socketbindtight.func;
T << find_set_socketbindtight.T;
P << find_set_socketbindtight.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_socketoptions@
identifier func = set_socketoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_socketoptions@
func << find_set_socketoptions.func;
T << find_set_socketoptions.T;
P << find_set_socketoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_storeuniqueprefix@
identifier func = set_storeuniqueprefix;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_storeuniqueprefix@
func << find_set_storeuniqueprefix.func;
T << find_set_storeuniqueprefix.T;
P << find_set_storeuniqueprefix.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_syslogfacility@
identifier func = set_syslogfacility;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_syslogfacility@
func << find_set_syslogfacility.func;
T << find_set_syslogfacility.T;
P << find_set_syslogfacility.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sysloglevel@
identifier func = set_sysloglevel;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sysloglevel@
func << find_set_sysloglevel.func;
T << find_set_sysloglevel.T;
P << find_set_sysloglevel.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_systemlog@
identifier func = set_systemlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_systemlog@
func << find_set_systemlog.func;
T << find_set_systemlog.T;
P << find_set_systemlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tcpbacklog@
identifier func = set_tcpbacklog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpbacklog@
func << find_set_tcpbacklog.func;
T << find_set_tcpbacklog.T;
P << find_set_tcpbacklog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tcpnodelay@
identifier func = set_tcpnodelay;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpnodelay@
func << find_set_tcpnodelay.func;
T << find_set_tcpnodelay.T;
P << find_set_tcpnodelay.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutidle@
identifier func = set_timeoutidle;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutidle@
func << find_set_timeoutidle.func;
T << find_set_timeoutidle.T;
P << find_set_timeoutidle.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutlinger@
identifier func = set_timeoutlinger;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutlinger@
func << find_set_timeoutlinger.func;
T << find_set_timeoutlinger.T;
P << find_set_timeoutlinger.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutlogin@
identifier func = set_timeoutlogin;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutlogin@
func << find_set_timeoutlogin.func;
T << find_set_timeoutlogin.T;
P << find_set_timeoutlogin.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutnoxfer@
identifier func = set_timeoutnoxfer;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutnoxfer@
func << find_set_timeoutnoxfer.func;
T << find_set_timeoutnoxfer.T;
P << find_set_timeoutnoxfer.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutsession@
identifier func = set_timeoutsession;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutsession@
func << find_set_timeoutsession.func;
T << find_set_timeoutsession.T;
P << find_set_timeoutsession.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timeoutstalled@
identifier func = set_timeoutstalled;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timeoutstalled@
func << find_set_timeoutstalled.func;
T << find_set_timeoutstalled.T;
P << find_set_timeoutstalled.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_timesgmt@
identifier func = set_timesgmt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_timesgmt@
func << find_set_timesgmt.func;
T << find_set_timesgmt.T;
P << find_set_timesgmt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_trace@
identifier func = set_trace;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_trace@
func << find_set_trace.func;
T << find_set_trace.T;
P << find_set_trace.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tracelog@
identifier func = set_tracelog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tracelog@
func << find_set_tracelog.func;
T << find_set_tracelog.T;
P << find_set_tracelog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_traceoptions@
identifier func = set_traceoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_traceoptions@
func << find_set_traceoptions.func;
T << find_set_traceoptions.T;
P << find_set_traceoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_transferoptions@
identifier func = set_transferoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_transferoptions@
func << find_set_transferoptions.func;
T << find_set_transferoptions.T;
P << find_set_transferoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_transferrate@
identifier func = set_transferrate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_transferrate@
func << find_set_transferrate.func;
T << find_set_transferrate.T;
P << find_set_transferrate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_umask@
identifier func = set_umask;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_umask@
func << find_set_umask.func;
T << find_set_umask.T;
P << find_set_umask.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_unsetenv@
identifier func = set_unsetenv;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_unsetenv@
func << find_set_unsetenv.func;
T << find_set_unsetenv.T;
P << find_set_unsetenv.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_useftpusers@
identifier func = set_useftpusers;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_useftpusers@
func << find_set_useftpusers.func;
T << find_set_useftpusers.T;
P << find_set_useftpusers.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_useglobbing@
identifier func = set_useglobbing;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_useglobbing@
func << find_set_useglobbing.func;
T << find_set_useglobbing.T;
P << find_set_useglobbing.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_useipv6@
identifier func = set_useipv6;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_useipv6@
func << find_set_useipv6.func;
T << find_set_useipv6.T;
P << find_set_useipv6.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_uselastlog@
identifier func = set_uselastlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_uselastlog@
func << find_set_uselastlog.func;
T << find_set_uselastlog.T;
P << find_set_uselastlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_user@
identifier func = set_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_user@
func << find_set_user.func;
T << find_set_user.T;
P << find_set_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_useralias@
identifier func = set_useralias;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_useralias@
func << find_set_useralias.func;
T << find_set_useralias.T;
P << find_set_useralias.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_userdirroot@
identifier func = set_userdirroot;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_userdirroot@
func << find_set_userdirroot.func;
T << find_set_userdirroot.T;
P << find_set_userdirroot.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_usereversedns@
identifier func = set_usereversedns;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_usereversedns@
func << find_set_usereversedns.func;
T << find_set_usereversedns.T;
P << find_set_usereversedns.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_userpassword@
identifier func = set_userpassword;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_userpassword@
func << find_set_userpassword.func;
T << find_set_userpassword.T;
P << find_set_userpassword.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_usesendfile@
identifier func = set_usesendfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_usesendfile@
func << find_set_usesendfile.func;
T << find_set_usesendfile.T;
P << find_set_usesendfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wtmplog@
identifier func = set_wtmplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wtmplog@
func << find_set_wtmplog.func;
T << find_set_wtmplog.T;
P << find_set_wtmplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_chgrp@
identifier func = site_chgrp;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_chgrp@
func << find_site_chgrp.func;
T << find_site_chgrp.T;
P << find_site_chgrp.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_chmod@
identifier func = site_chmod;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_chmod@
func << find_site_chmod.func;
T << find_site_chmod.T;
P << find_site_chmod.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_cmd@
identifier func = site_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_cmd@
func << find_site_cmd.func;
T << find_site_cmd.T;
P << find_site_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_help@
identifier func = site_help;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_help@
func << find_site_help.func;
T << find_site_help.T;
P << find_site_help.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_post_cmd@
identifier func = site_post_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_post_cmd@
func << find_site_post_cmd.func;
T << find_site_post_cmd.T;
P << find_site_post_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_pre_cmd@
identifier func = site_pre_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_pre_cmd@
func << find_site_pre_cmd.func;
T << find_site_pre_cmd.T;
P << find_site_pre_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_start_ifdefine@
identifier func = start_ifdefine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_start_ifdefine@
func << find_start_ifdefine.func;
T << find_start_ifdefine.T;
P << find_start_ifdefine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_start_ifmodule@
identifier func = start_ifmodule;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_start_ifmodule@
func << find_start_ifmodule.func;
T << find_start_ifmodule.T;
P << find_start_ifmodule.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_abor@
identifier func = xfer_abor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_abor@
func << find_xfer_abor.func;
T << find_xfer_abor.T;
P << find_xfer_abor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_allo@
identifier func = xfer_allo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_allo@
func << find_xfer_allo.func;
T << find_xfer_allo.T;
P << find_xfer_allo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_err_cleanup@
identifier func = xfer_err_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_err_cleanup@
func << find_xfer_err_cleanup.func;
T << find_xfer_err_cleanup.T;
P << find_xfer_err_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_log_abor@
identifier func = xfer_log_abor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_log_abor@
func << find_xfer_log_abor.func;
T << find_xfer_log_abor.T;
P << find_xfer_log_abor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_log_retr@
identifier func = xfer_log_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_log_retr@
func << find_xfer_log_retr.func;
T << find_xfer_log_retr.T;
P << find_xfer_log_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_log_stor@
identifier func = xfer_log_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_log_stor@
func << find_xfer_log_stor.func;
T << find_xfer_log_stor.T;
P << find_xfer_log_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_mode@
identifier func = xfer_mode;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_mode@
func << find_xfer_mode.func;
T << find_xfer_mode.T;
P << find_xfer_mode.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_mode@
identifier func = xfer_post_mode;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_mode@
func << find_xfer_post_mode.func;
T << find_xfer_post_mode.T;
P << find_xfer_post_mode.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_pass@
identifier func = xfer_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_pass@
func << find_xfer_post_pass.func;
T << find_xfer_post_pass.T;
P << find_xfer_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_prot@
identifier func = xfer_post_prot;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_prot@
func << find_xfer_post_prot.func;
T << find_xfer_post_prot.T;
P << find_xfer_post_prot.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_retr@
identifier func = xfer_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_retr@
func << find_xfer_post_retr.func;
T << find_xfer_post_retr.T;
P << find_xfer_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_stor@
identifier func = xfer_post_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_stor@
func << find_xfer_post_stor.func;
T << find_xfer_post_stor.T;
P << find_xfer_post_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_post_stou@
identifier func = xfer_post_stou;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_post_stou@
func << find_xfer_post_stou.func;
T << find_xfer_post_stou.T;
P << find_xfer_post_stou.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_pre_appe@
identifier func = xfer_pre_appe;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_pre_appe@
func << find_xfer_pre_appe.func;
T << find_xfer_pre_appe.T;
P << find_xfer_pre_appe.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_pre_retr@
identifier func = xfer_pre_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_pre_retr@
func << find_xfer_pre_retr.func;
T << find_xfer_pre_retr.T;
P << find_xfer_pre_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_pre_stor@
identifier func = xfer_pre_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_pre_stor@
func << find_xfer_pre_stor.func;
T << find_xfer_pre_stor.T;
P << find_xfer_pre_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_pre_stou@
identifier func = xfer_pre_stou;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_pre_stou@
func << find_xfer_pre_stou.func;
T << find_xfer_pre_stou.T;
P << find_xfer_pre_stou.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_rang@
identifier func = xfer_rang;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_rang@
func << find_xfer_rang.func;
T << find_xfer_rang.T;
P << find_xfer_rang.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_rest@
identifier func = xfer_rest;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_rest@
func << find_xfer_rest.func;
T << find_xfer_rest.T;
P << find_xfer_rest.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_retr@
identifier func = xfer_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_retr@
func << find_xfer_retr.func;
T << find_xfer_retr.T;
P << find_xfer_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_smnt@
identifier func = xfer_smnt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_smnt@
func << find_xfer_smnt.func;
T << find_xfer_smnt.T;
P << find_xfer_smnt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_stor@
identifier func = xfer_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_stor@
func << find_xfer_stor.func;
T << find_xfer_stor.T;
P << find_xfer_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_stru@
identifier func = xfer_stru;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_stru@
func << find_xfer_stru.func;
T << find_xfer_stru.T;
P << find_xfer_stru.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_xfer_type@
identifier func = xfer_type;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_xfer_type@
func << find_xfer_type.func;
T << find_xfer_type.T;
P << find_xfer_type.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")
