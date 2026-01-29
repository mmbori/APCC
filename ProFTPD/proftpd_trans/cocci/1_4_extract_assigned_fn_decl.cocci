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

@find_add_ratiodata@
identifier func = add_ratiodata;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_ratiodata@
func << find_add_ratiodata.func;
T << find_add_ratiodata.T;
P << find_add_ratiodata.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_saveratios@
identifier func = add_saveratios;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_saveratios@
func << find_add_saveratios.func;
T << find_add_saveratios.T;
P << find_add_saveratios.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_add_str@
identifier func = add_str;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_add_str@
func << find_add_str.func;
T << find_add_str.T;
P << find_add_str.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_auth_otp_auth@
identifier func = auth_otp_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_otp_auth@
func << find_auth_otp_auth.func;
T << find_auth_otp_auth.T;
P << find_auth_otp_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_otp_chkpass@
identifier func = auth_otp_chkpass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_otp_chkpass@
func << find_auth_otp_chkpass.func;
T << find_auth_otp_chkpass.T;
P << find_auth_otp_chkpass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_otp_post_pass@
identifier func = auth_otp_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_otp_post_pass@
func << find_auth_otp_post_pass.func;
T << find_auth_otp_post_pass.T;
P << find_auth_otp_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_otp_post_user@
identifier func = auth_otp_post_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_otp_post_user@
func << find_auth_otp_post_user.func;
T << find_auth_otp_post_user.T;
P << find_auth_otp_post_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_auth_otp_pre_user@
identifier func = auth_otp_pre_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_auth_otp_pre_user@
func << find_auth_otp_pre_user.func;
T << find_auth_otp_pre_user.T;
P << find_auth_otp_pre_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_ban_post_pass@
identifier func = ban_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ban_post_pass@
func << find_ban_post_pass.func;
T << find_ban_post_pass.T;
P << find_ban_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ban_pre_pass@
identifier func = ban_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ban_pre_pass@
func << find_ban_pre_pass.func;
T << find_ban_pre_pass.T;
P << find_ban_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cap_post_pass@
identifier func = cap_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cap_post_pass@
func << find_cap_post_pass.func;
T << find_cap_post_pass.T;
P << find_cap_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_cleanup@
identifier func = cmd_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_cleanup@
func << find_cmd_cleanup.func;
T << find_cmd_cleanup.T;
P << find_cmd_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_close@
identifier func = cmd_close;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_close@
func << find_cmd_close.func;
T << find_cmd_close.T;
P << find_cmd_close.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_cwd@
identifier func = cmd_cwd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_cwd@
func << find_cmd_cwd.func;
T << find_cmd_cwd.T;
P << find_cmd_cwd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_defineconnection@
identifier func = cmd_defineconnection;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_defineconnection@
func << find_cmd_defineconnection.func;
T << find_cmd_defineconnection.T;
P << find_cmd_defineconnection.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_escapestring@
identifier func = cmd_escapestring;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_escapestring@
func << find_cmd_escapestring.func;
T << find_cmd_escapestring.T;
P << find_cmd_escapestring.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_exit@
identifier func = cmd_exit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_exit@
func << find_cmd_exit.func;
T << find_cmd_exit.T;
P << find_cmd_exit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_identify@
identifier func = cmd_identify;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_identify@
func << find_cmd_identify.func;
T << find_cmd_identify.T;
P << find_cmd_identify.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_insert@
identifier func = cmd_insert;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_insert@
func << find_cmd_insert.func;
T << find_cmd_insert.T;
P << find_cmd_insert.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_open@
identifier func = cmd_open;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_open@
func << find_cmd_open.func;
T << find_cmd_open.T;
P << find_cmd_open.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_prepare@
identifier func = cmd_prepare;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_prepare@
func << find_cmd_prepare.func;
T << find_cmd_prepare.T;
P << find_cmd_prepare.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_procedure@
identifier func = cmd_procedure;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_procedure@
func << find_cmd_procedure.func;
T << find_cmd_procedure.T;
P << find_cmd_procedure.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_query@
identifier func = cmd_query;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_query@
func << find_cmd_query.func;
T << find_cmd_query.T;
P << find_cmd_query.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_select@
identifier func = cmd_select;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_select@
func << find_cmd_select.func;
T << find_cmd_select.T;
P << find_cmd_select.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_site@
identifier func = cmd_site;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_site@
func << find_cmd_site.func;
T << find_cmd_site.T;
P << find_cmd_site.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_update@
identifier func = cmd_update;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_update@
func << find_cmd_update.func;
T << find_cmd_update.T;
P << find_cmd_update.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_cmd_user@
identifier func = cmd_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_cmd_user@
func << find_cmd_user.func;
T << find_cmd_user.T;
P << find_cmd_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_copy_copy@
identifier func = copy_copy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_copy_copy@
func << find_copy_copy.func;
T << find_copy_copy.T;
P << find_copy_copy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_copy_cpfr@
identifier func = copy_cpfr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_copy_cpfr@
func << find_copy_cpfr.func;
T << find_copy_cpfr.T;
P << find_copy_cpfr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_copy_cpto@
identifier func = copy_cpto;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_copy_cpto@
func << find_copy_cpto.func;
T << find_copy_cpto.T;
P << find_copy_cpto.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_copy_log_site@
identifier func = copy_log_site;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_copy_log_site@
func << find_copy_log_site.func;
T << find_copy_log_site.T;
P << find_copy_log_site.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_copy_post_pass@
identifier func = copy_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_copy_post_pass@
func << find_copy_post_pass.func;
T << find_copy_post_pass.T;
P << find_copy_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_deflate_mode@
identifier func = deflate_mode;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_deflate_mode@
func << find_deflate_mode.func;
T << find_deflate_mode.T;
P << find_deflate_mode.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_digest_hash@
identifier func = digest_hash;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_hash@
func << find_digest_hash.func;
T << find_digest_hash.T;
P << find_digest_hash.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_log@
identifier func = digest_log;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_log@
func << find_digest_log.func;
T << find_digest_log.T;
P << find_digest_log.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_log_err@
identifier func = digest_log_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_log_err@
func << find_digest_log_err.func;
T << find_digest_log_err.T;
P << find_digest_log_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_md5@
identifier func = digest_md5;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_md5@
func << find_digest_md5.func;
T << find_digest_md5.T;
P << find_digest_md5.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_post_pass@
identifier func = digest_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_post_pass@
func << find_digest_post_pass.func;
T << find_digest_post_pass.T;
P << find_digest_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_pre_appe@
identifier func = digest_pre_appe;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_pre_appe@
func << find_digest_pre_appe.func;
T << find_digest_pre_appe.T;
P << find_digest_pre_appe.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_pre_retr@
identifier func = digest_pre_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_pre_retr@
func << find_digest_pre_retr.func;
T << find_digest_pre_retr.T;
P << find_digest_pre_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_pre_stor@
identifier func = digest_pre_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_pre_stor@
func << find_digest_pre_stor.func;
T << find_digest_pre_stor.T;
P << find_digest_pre_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_xcrc@
identifier func = digest_xcrc;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_xcrc@
func << find_digest_xcrc.func;
T << find_digest_xcrc.T;
P << find_digest_xcrc.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_xmd5@
identifier func = digest_xmd5;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_xmd5@
func << find_digest_xmd5.func;
T << find_digest_xmd5.T;
P << find_digest_xmd5.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_xsha1@
identifier func = digest_xsha1;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_xsha1@
func << find_digest_xsha1.func;
T << find_digest_xsha1.T;
P << find_digest_xsha1.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_xsha256@
identifier func = digest_xsha256;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_xsha256@
func << find_digest_xsha256.func;
T << find_digest_xsha256.T;
P << find_digest_xsha256.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_digest_xsha512@
identifier func = digest_xsha512;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_digest_xsha512@
func << find_digest_xsha512.func;
T << find_digest_xsha512.T;
P << find_digest_xsha512.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_end_ifctxt@
identifier func = end_ifctxt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_ifctxt@
func << find_end_ifctxt.func;
T << find_end_ifctxt.T;
P << find_end_ifctxt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_end_ifversion@
identifier func = end_ifversion;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_end_ifversion@
func << find_end_ifversion.func;
T << find_end_ifversion.T;
P << find_end_ifversion.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_err_master@
identifier func = err_master;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_err_master@
func << find_err_master.func;
T << find_err_master.T;
P << find_err_master.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_errinfo_master@
identifier func = errinfo_master;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_errinfo_master@
func << find_errinfo_master.func;
T << find_errinfo_master.T;
P << find_errinfo_master.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_exec_log_exit@
identifier func = exec_log_exit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_exec_log_exit@
func << find_exec_log_exit.func;
T << find_exec_log_exit.T;
P << find_exec_log_exit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_exec_post_cmd@
identifier func = exec_post_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_exec_post_cmd@
func << find_exec_post_cmd.func;
T << find_exec_post_cmd.T;
P << find_exec_post_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_exec_post_cmd_err@
identifier func = exec_post_cmd_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_exec_post_cmd_err@
func << find_exec_post_cmd_err.func;
T << find_exec_post_cmd_err.T;
P << find_exec_post_cmd_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_exec_pre_cmd@
identifier func = exec_pre_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_exec_pre_cmd@
func << find_exec_pre_cmd.func;
T << find_exec_pre_cmd.T;
P << find_exec_pre_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_forensic_pass_err@
identifier func = forensic_pass_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_forensic_pass_err@
func << find_forensic_pass_err.func;
T << find_forensic_pass_err.T;
P << find_forensic_pass_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_geoip_post_pass@
identifier func = geoip_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_geoip_post_pass@
func << find_geoip_post_pass.func;
T << find_geoip_post_pass.T;
P << find_geoip_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_handle_ldap_quota_lookup@
identifier func = handle_ldap_quota_lookup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_handle_ldap_quota_lookup@
func << find_handle_ldap_quota_lookup.func;
T << find_handle_ldap_quota_lookup.T;
P << find_handle_ldap_quota_lookup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_handle_ldap_ssh_pubkey_lookup@
identifier func = handle_ldap_ssh_pubkey_lookup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_handle_ldap_ssh_pubkey_lookup@
func << find_handle_ldap_ssh_pubkey_lookup.func;
T << find_handle_ldap_ssh_pubkey_lookup.T;
P << find_handle_ldap_ssh_pubkey_lookup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ifsess_post_pass@
identifier func = ifsess_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ifsess_post_pass@
func << find_ifsess_post_pass.func;
T << find_ifsess_post_pass.T;
P << find_ifsess_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ifsess_post_user@
identifier func = ifsess_post_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ifsess_post_user@
func << find_ifsess_post_user.func;
T << find_ifsess_post_user.T;
P << find_ifsess_post_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_info_master@
identifier func = info_master;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_info_master@
func << find_info_master.func;
T << find_info_master.T;
P << find_info_master.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_lang_lang@
identifier func = lang_lang;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_lang_lang@
func << find_lang_lang.func;
T << find_lang_lang.T;
P << find_lang_lang.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_lang_post_pass@
identifier func = lang_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_lang_post_pass@
func << find_lang_post_pass.func;
T << find_lang_post_pass.T;
P << find_lang_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_auth@
identifier func = ldap_auth_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_auth@
func << find_ldap_auth_auth.func;
T << find_ldap_auth_auth.T;
P << find_ldap_auth_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_check@
identifier func = ldap_auth_check;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_check@
func << find_ldap_auth_check.func;
T << find_ldap_auth_check.T;
P << find_ldap_auth_check.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_endpwent@
identifier func = ldap_auth_endpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_endpwent@
func << find_ldap_auth_endpwent.func;
T << find_ldap_auth_endpwent.T;
P << find_ldap_auth_endpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_getgrgid@
identifier func = ldap_auth_getgrgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_getgrgid@
func << find_ldap_auth_getgrgid.func;
T << find_ldap_auth_getgrgid.T;
P << find_ldap_auth_getgrgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_getgrnam@
identifier func = ldap_auth_getgrnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_getgrnam@
func << find_ldap_auth_getgrnam.func;
T << find_ldap_auth_getgrnam.T;
P << find_ldap_auth_getgrnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_getgroups@
identifier func = ldap_auth_getgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_getgroups@
func << find_ldap_auth_getgroups.func;
T << find_ldap_auth_getgroups.T;
P << find_ldap_auth_getgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_getpwnam@
identifier func = ldap_auth_getpwnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_getpwnam@
func << find_ldap_auth_getpwnam.func;
T << find_ldap_auth_getpwnam.T;
P << find_ldap_auth_getpwnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_getpwuid@
identifier func = ldap_auth_getpwuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_getpwuid@
func << find_ldap_auth_getpwuid.func;
T << find_ldap_auth_getpwuid.T;
P << find_ldap_auth_getpwuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_gid2name@
identifier func = ldap_auth_gid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_gid2name@
func << find_ldap_auth_gid2name.func;
T << find_ldap_auth_gid2name.T;
P << find_ldap_auth_gid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_name2gid@
identifier func = ldap_auth_name2gid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_name2gid@
func << find_ldap_auth_name2gid.func;
T << find_ldap_auth_name2gid.T;
P << find_ldap_auth_name2gid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_name2uid@
identifier func = ldap_auth_name2uid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_name2uid@
func << find_ldap_auth_name2uid.func;
T << find_ldap_auth_name2uid.T;
P << find_ldap_auth_name2uid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_setpwent@
identifier func = ldap_auth_setpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_setpwent@
func << find_ldap_auth_setpwent.func;
T << find_ldap_auth_setpwent.T;
P << find_ldap_auth_setpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ldap_auth_uid2name@
identifier func = ldap_auth_uid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ldap_auth_uid2name@
func << find_ldap_auth_uid2name.func;
T << find_ldap_auth_uid2name.T;
P << find_ldap_auth_uid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_log_master@
identifier func = log_master;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_log_master@
func << find_log_master.func;
T << find_log_master.T;
P << find_log_master.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_parser_set_testsuite_enabled@
identifier func = parser_set_testsuite_enabled;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_parser_set_testsuite_enabled@
func << find_parser_set_testsuite_enabled.func;
T << find_parser_set_testsuite_enabled.T;
P << find_parser_set_testsuite_enabled.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_parser_set_testsuite_engine@
identifier func = parser_set_testsuite_engine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_parser_set_testsuite_engine@
func << find_parser_set_testsuite_engine.func;
T << find_parser_set_testsuite_engine.T;
P << find_parser_set_testsuite_engine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pre_cmd@
identifier func = pre_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pre_cmd@
func << find_pre_cmd.func;
T << find_pre_cmd.T;
P << find_pre_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_pre_cmd_retr@
identifier func = pre_cmd_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_pre_cmd_retr@
func << find_pre_cmd_retr.func;
T << find_pre_cmd_retr.T;
P << find_pre_cmd_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_quotatab_post_abor@
identifier func = quotatab_post_abor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_abor@
func << find_quotatab_post_abor.func;
T << find_quotatab_post_abor.T;
P << find_quotatab_post_abor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_appe@
identifier func = quotatab_post_appe;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_appe@
func << find_quotatab_post_appe.func;
T << find_quotatab_post_appe.T;
P << find_quotatab_post_appe.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_appe_err@
identifier func = quotatab_post_appe_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_appe_err@
func << find_quotatab_post_appe_err.func;
T << find_quotatab_post_appe_err.T;
P << find_quotatab_post_appe_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_copy@
identifier func = quotatab_post_copy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_copy@
func << find_quotatab_post_copy.func;
T << find_quotatab_post_copy.T;
P << find_quotatab_post_copy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_copy_err@
identifier func = quotatab_post_copy_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_copy_err@
func << find_quotatab_post_copy_err.func;
T << find_quotatab_post_copy_err.T;
P << find_quotatab_post_copy_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_dele@
identifier func = quotatab_post_dele;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_dele@
func << find_quotatab_post_dele.func;
T << find_quotatab_post_dele.T;
P << find_quotatab_post_dele.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_dele_err@
identifier func = quotatab_post_dele_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_dele_err@
func << find_quotatab_post_dele_err.func;
T << find_quotatab_post_dele_err.T;
P << find_quotatab_post_dele_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_mkd@
identifier func = quotatab_post_mkd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_mkd@
func << find_quotatab_post_mkd.func;
T << find_quotatab_post_mkd.T;
P << find_quotatab_post_mkd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_mkd_err@
identifier func = quotatab_post_mkd_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_mkd_err@
func << find_quotatab_post_mkd_err.func;
T << find_quotatab_post_mkd_err.T;
P << find_quotatab_post_mkd_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_pass@
identifier func = quotatab_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_pass@
func << find_quotatab_post_pass.func;
T << find_quotatab_post_pass.T;
P << find_quotatab_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_retr@
identifier func = quotatab_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_retr@
func << find_quotatab_post_retr.func;
T << find_quotatab_post_retr.T;
P << find_quotatab_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_retr_err@
identifier func = quotatab_post_retr_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_retr_err@
func << find_quotatab_post_retr_err.func;
T << find_quotatab_post_retr_err.T;
P << find_quotatab_post_retr_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_rmd@
identifier func = quotatab_post_rmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_rmd@
func << find_quotatab_post_rmd.func;
T << find_quotatab_post_rmd.T;
P << find_quotatab_post_rmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_rnto@
identifier func = quotatab_post_rnto;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_rnto@
func << find_quotatab_post_rnto.func;
T << find_quotatab_post_rnto.T;
P << find_quotatab_post_rnto.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_site@
identifier func = quotatab_post_site;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_site@
func << find_quotatab_post_site.func;
T << find_quotatab_post_site.T;
P << find_quotatab_post_site.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_site_err@
identifier func = quotatab_post_site_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_site_err@
func << find_quotatab_post_site_err.func;
T << find_quotatab_post_site_err.T;
P << find_quotatab_post_site_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_stor@
identifier func = quotatab_post_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_stor@
func << find_quotatab_post_stor.func;
T << find_quotatab_post_stor.T;
P << find_quotatab_post_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_post_stor_err@
identifier func = quotatab_post_stor_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_post_stor_err@
func << find_quotatab_post_stor_err.func;
T << find_quotatab_post_stor_err.T;
P << find_quotatab_post_stor_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_appe@
identifier func = quotatab_pre_appe;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_appe@
func << find_quotatab_pre_appe.func;
T << find_quotatab_pre_appe.T;
P << find_quotatab_pre_appe.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_copy@
identifier func = quotatab_pre_copy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_copy@
func << find_quotatab_pre_copy.func;
T << find_quotatab_pre_copy.T;
P << find_quotatab_pre_copy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_dele@
identifier func = quotatab_pre_dele;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_dele@
func << find_quotatab_pre_dele.func;
T << find_quotatab_pre_dele.T;
P << find_quotatab_pre_dele.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_mkd@
identifier func = quotatab_pre_mkd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_mkd@
func << find_quotatab_pre_mkd.func;
T << find_quotatab_pre_mkd.T;
P << find_quotatab_pre_mkd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_retr@
identifier func = quotatab_pre_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_retr@
func << find_quotatab_pre_retr.func;
T << find_quotatab_pre_retr.T;
P << find_quotatab_pre_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_rmd@
identifier func = quotatab_pre_rmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_rmd@
func << find_quotatab_pre_rmd.func;
T << find_quotatab_pre_rmd.T;
P << find_quotatab_pre_rmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_rnto@
identifier func = quotatab_pre_rnto;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_rnto@
func << find_quotatab_pre_rnto.func;
T << find_quotatab_pre_rnto.T;
P << find_quotatab_pre_rnto.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_site@
identifier func = quotatab_pre_site;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_site@
func << find_quotatab_pre_site.func;
T << find_quotatab_pre_site.T;
P << find_quotatab_pre_site.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_pre_stor@
identifier func = quotatab_pre_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_pre_stor@
func << find_quotatab_pre_stor.func;
T << find_quotatab_pre_stor.T;
P << find_quotatab_pre_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_quotatab_site@
identifier func = quotatab_site;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_quotatab_site@
func << find_quotatab_site.func;
T << find_quotatab_site.T;
P << find_quotatab_site.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_auth@
identifier func = radius_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_auth@
func << find_radius_auth.func;
T << find_radius_auth.T;
P << find_radius_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_check@
identifier func = radius_check;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_check@
func << find_radius_check.func;
T << find_radius_check.T;
P << find_radius_check.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_endgrent@
identifier func = radius_endgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_endgrent@
func << find_radius_endgrent.func;
T << find_radius_endgrent.T;
P << find_radius_endgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_endpwent@
identifier func = radius_endpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_endpwent@
func << find_radius_endpwent.func;
T << find_radius_endpwent.T;
P << find_radius_endpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getgrent@
identifier func = radius_getgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getgrent@
func << find_radius_getgrent.func;
T << find_radius_getgrent.T;
P << find_radius_getgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getgrgid@
identifier func = radius_getgrgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getgrgid@
func << find_radius_getgrgid.func;
T << find_radius_getgrgid.T;
P << find_radius_getgrgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getgrnam@
identifier func = radius_getgrnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getgrnam@
func << find_radius_getgrnam.func;
T << find_radius_getgrnam.T;
P << find_radius_getgrnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getgroups@
identifier func = radius_getgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getgroups@
func << find_radius_getgroups.func;
T << find_radius_getgroups.T;
P << find_radius_getgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getpwent@
identifier func = radius_getpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getpwent@
func << find_radius_getpwent.func;
T << find_radius_getpwent.T;
P << find_radius_getpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getpwnam@
identifier func = radius_getpwnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getpwnam@
func << find_radius_getpwnam.func;
T << find_radius_getpwnam.T;
P << find_radius_getpwnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_getpwuid@
identifier func = radius_getpwuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_getpwuid@
func << find_radius_getpwuid.func;
T << find_radius_getpwuid.T;
P << find_radius_getpwuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_gid2name@
identifier func = radius_gid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_gid2name@
func << find_radius_gid2name.func;
T << find_radius_gid2name.T;
P << find_radius_gid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_name2gid@
identifier func = radius_name2gid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_name2gid@
func << find_radius_name2gid.func;
T << find_radius_name2gid.T;
P << find_radius_name2gid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_name2uid@
identifier func = radius_name2uid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_name2uid@
func << find_radius_name2uid.func;
T << find_radius_name2uid.T;
P << find_radius_name2uid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_post_pass@
identifier func = radius_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_post_pass@
func << find_radius_post_pass.func;
T << find_radius_post_pass.T;
P << find_radius_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_post_pass_err@
identifier func = radius_post_pass_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_post_pass_err@
func << find_radius_post_pass_err.func;
T << find_radius_post_pass_err.T;
P << find_radius_post_pass_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_pre_pass@
identifier func = radius_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_pre_pass@
func << find_radius_pre_pass.func;
T << find_radius_pre_pass.T;
P << find_radius_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_quota_lookup@
identifier func = radius_quota_lookup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_quota_lookup@
func << find_radius_quota_lookup.func;
T << find_radius_quota_lookup.T;
P << find_radius_quota_lookup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_setgrent@
identifier func = radius_setgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_setgrent@
func << find_radius_setgrent.func;
T << find_radius_setgrent.T;
P << find_radius_setgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_setpwent@
identifier func = radius_setpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_setpwent@
func << find_radius_setpwent.func;
T << find_radius_setpwent.T;
P << find_radius_setpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_radius_uid2name@
identifier func = radius_uid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_radius_uid2name@
func << find_radius_uid2name.func;
T << find_radius_uid2name.T;
P << find_radius_uid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ratio_log_pass@
identifier func = ratio_log_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ratio_log_pass@
func << find_ratio_log_pass.func;
T << find_ratio_log_pass.T;
P << find_ratio_log_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ratio_post_cmd@
identifier func = ratio_post_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ratio_post_cmd@
func << find_ratio_post_cmd.func;
T << find_ratio_post_cmd.T;
P << find_ratio_post_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ratio_post_retr@
identifier func = ratio_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ratio_post_retr@
func << find_ratio_post_retr.func;
T << find_ratio_post_retr.T;
P << find_ratio_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_ratio_post_stor@
identifier func = ratio_post_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_ratio_post_stor@
func << find_ratio_post_stor.func;
T << find_ratio_post_stor.T;
P << find_ratio_post_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_readme_post_cmd@
identifier func = readme_post_cmd;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_readme_post_cmd@
func << find_readme_post_cmd.func;
T << find_readme_post_cmd.T;
P << find_readme_post_cmd.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_redis_log_any@
identifier func = redis_log_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_redis_log_any@
func << find_redis_log_any.func;
T << find_redis_log_any.T;
P << find_redis_log_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_redis_post_pass@
identifier func = redis_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_redis_post_pass@
func << find_redis_post_pass.func;
T << find_redis_post_pass.T;
P << find_redis_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_rewrite_fixup@
identifier func = rewrite_fixup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_rewrite_fixup@
func << find_rewrite_fixup.func;
T << find_rewrite_fixup.T;
P << find_rewrite_fixup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_sample_log_any@
identifier func = sample_log_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_log_any@
func << find_sample_log_any.func;
T << find_sample_log_any.T;
P << find_sample_log_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_post_list@
identifier func = sample_post_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_post_list@
func << find_sample_post_list.func;
T << find_sample_post_list.T;
P << find_sample_post_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_post_nlst@
identifier func = sample_post_nlst;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_post_nlst@
func << find_sample_post_nlst.func;
T << find_sample_post_nlst.T;
P << find_sample_post_nlst.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_post_retr@
identifier func = sample_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_post_retr@
func << find_sample_post_retr.func;
T << find_sample_post_retr.T;
P << find_sample_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_post_stor@
identifier func = sample_post_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_post_stor@
func << find_sample_post_stor.func;
T << find_sample_post_stor.T;
P << find_sample_post_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_pre_any@
identifier func = sample_pre_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_pre_any@
func << find_sample_pre_any.func;
T << find_sample_pre_any.T;
P << find_sample_pre_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sample_xfoo@
identifier func = sample_xfoo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sample_xfoo@
func << find_sample_xfoo.func;
T << find_sample_xfoo.T;
P << find_sample_xfoo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_adminctrlsacls@
identifier func = set_adminctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_adminctrlsacls@
func << find_set_adminctrlsacls.func;
T << find_set_adminctrlsacls.T;
P << find_set_adminctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_adminctrlsengine@
identifier func = set_adminctrlsengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_adminctrlsengine@
func << find_set_adminctrlsengine.func;
T << find_set_adminctrlsengine.T;
P << find_set_adminctrlsengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_authotpalgo@
identifier func = set_authotpalgo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotpalgo@
func << find_set_authotpalgo.func;
T << find_set_authotpalgo.T;
P << find_set_authotpalgo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authotpengine@
identifier func = set_authotpengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotpengine@
func << find_set_authotpengine.func;
T << find_set_authotpengine.T;
P << find_set_authotpengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authotplog@
identifier func = set_authotplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotplog@
func << find_set_authotplog.func;
T << find_set_authotplog.T;
P << find_set_authotplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authotpoptions@
identifier func = set_authotpoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotpoptions@
func << find_set_authotpoptions.func;
T << find_set_authotpoptions.T;
P << find_set_authotpoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authotptable@
identifier func = set_authotptable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotptable@
func << find_set_authotptable.func;
T << find_set_authotptable.T;
P << find_set_authotptable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_authotptablelock@
identifier func = set_authotptablelock;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_authotptablelock@
func << find_set_authotptablelock.func;
T << find_set_authotptablelock.T;
P << find_set_authotptablelock.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_bancache@
identifier func = set_bancache;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_bancache@
func << find_set_bancache.func;
T << find_set_bancache.T;
P << find_set_bancache.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_bancacheoptions@
identifier func = set_bancacheoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_bancacheoptions@
func << find_set_bancacheoptions.func;
T << find_set_bancacheoptions.T;
P << find_set_bancacheoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banctrlsacls@
identifier func = set_banctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banctrlsacls@
func << find_set_banctrlsacls.func;
T << find_set_banctrlsacls.T;
P << find_set_banctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banengine@
identifier func = set_banengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banengine@
func << find_set_banengine.func;
T << find_set_banengine.T;
P << find_set_banengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banlog@
identifier func = set_banlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banlog@
func << find_set_banlog.func;
T << find_set_banlog.T;
P << find_set_banlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banmessage@
identifier func = set_banmessage;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banmessage@
func << find_set_banmessage.func;
T << find_set_banmessage.T;
P << find_set_banmessage.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banonevent@
identifier func = set_banonevent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banonevent@
func << find_set_banonevent.func;
T << find_set_banonevent.T;
P << find_set_banonevent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_banoptions@
identifier func = set_banoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_banoptions@
func << find_set_banoptions.func;
T << find_set_banoptions.T;
P << find_set_banoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_bantable@
identifier func = set_bantable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_bantable@
func << find_set_bantable.func;
T << find_set_bantable.T;
P << find_set_bantable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_capengine@
identifier func = set_capengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_capengine@
func << find_set_capengine.func;
T << find_set_capengine.T;
P << find_set_capengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_caprootrevoke@
identifier func = set_caprootrevoke;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_caprootrevoke@
func << find_set_caprootrevoke.func;
T << find_set_caprootrevoke.T;
P << find_set_caprootrevoke.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_caps@
identifier func = set_caps;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_caps@
func << find_set_caps.func;
T << find_set_caps.T;
P << find_set_caps.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_copyengine@
identifier func = set_copyengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_copyengine@
func << find_set_copyengine.func;
T << find_set_copyengine.T;
P << find_set_copyengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_copyoptions@
identifier func = set_copyoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_copyoptions@
func << find_set_copyoptions.func;
T << find_set_copyoptions.T;
P << find_set_copyoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_ctrlsacls@
identifier func = set_ctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlsacls@
func << find_set_ctrlsacls.func;
T << find_set_ctrlsacls.T;
P << find_set_ctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlsauthfreshness@
identifier func = set_ctrlsauthfreshness;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlsauthfreshness@
func << find_set_ctrlsauthfreshness.func;
T << find_set_ctrlsauthfreshness.T;
P << find_set_ctrlsauthfreshness.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlsengine@
identifier func = set_ctrlsengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlsengine@
func << find_set_ctrlsengine.func;
T << find_set_ctrlsengine.T;
P << find_set_ctrlsengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlsinterval@
identifier func = set_ctrlsinterval;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlsinterval@
func << find_set_ctrlsinterval.func;
T << find_set_ctrlsinterval.T;
P << find_set_ctrlsinterval.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlslog@
identifier func = set_ctrlslog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlslog@
func << find_set_ctrlslog.func;
T << find_set_ctrlslog.T;
P << find_set_ctrlslog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlsmaxclients@
identifier func = set_ctrlsmaxclients;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlsmaxclients@
func << find_set_ctrlsmaxclients.func;
T << find_set_ctrlsmaxclients.T;
P << find_set_ctrlsmaxclients.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlssocket@
identifier func = set_ctrlssocket;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlssocket@
func << find_set_ctrlssocket.func;
T << find_set_ctrlssocket.T;
P << find_set_ctrlssocket.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlssocketacl@
identifier func = set_ctrlssocketacl;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlssocketacl@
func << find_set_ctrlssocketacl.func;
T << find_set_ctrlssocketacl.T;
P << find_set_ctrlssocketacl.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ctrlssocketowner@
identifier func = set_ctrlssocketowner;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ctrlssocketowner@
func << find_set_ctrlssocketowner.func;
T << find_set_ctrlssocketowner.T;
P << find_set_ctrlssocketowner.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_deflateengine@
identifier func = set_deflateengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_deflateengine@
func << find_set_deflateengine.func;
T << find_set_deflateengine.T;
P << find_set_deflateengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_deflatelog@
identifier func = set_deflatelog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_deflatelog@
func << find_set_deflatelog.func;
T << find_set_deflatelog.T;
P << find_set_deflatelog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_digestalgorithms@
identifier func = set_digestalgorithms;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestalgorithms@
func << find_set_digestalgorithms.func;
T << find_set_digestalgorithms.T;
P << find_set_digestalgorithms.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestcache@
identifier func = set_digestcache;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestcache@
func << find_set_digestcache.func;
T << find_set_digestcache.T;
P << find_set_digestcache.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestdefaultalgo@
identifier func = set_digestdefaultalgo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestdefaultalgo@
func << find_set_digestdefaultalgo.func;
T << find_set_digestdefaultalgo.T;
P << find_set_digestdefaultalgo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestenable@
identifier func = set_digestenable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestenable@
func << find_set_digestenable.func;
T << find_set_digestenable.T;
P << find_set_digestenable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestengine@
identifier func = set_digestengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestengine@
func << find_set_digestengine.func;
T << find_set_digestengine.T;
P << find_set_digestengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestmaxsize@
identifier func = set_digestmaxsize;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestmaxsize@
func << find_set_digestmaxsize.func;
T << find_set_digestmaxsize.T;
P << find_set_digestmaxsize.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_digestoptions@
identifier func = set_digestoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_digestoptions@
func << find_set_digestoptions.func;
T << find_set_digestoptions.T;
P << find_set_digestoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_displayreadme@
identifier func = set_displayreadme;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_displayreadme@
func << find_set_displayreadme.func;
T << find_set_displayreadme.T;
P << find_set_displayreadme.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dnsbldomain@
identifier func = set_dnsbldomain;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dnsbldomain@
func << find_set_dnsbldomain.func;
T << find_set_dnsbldomain.T;
P << find_set_dnsbldomain.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dnsblengine@
identifier func = set_dnsblengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dnsblengine@
func << find_set_dnsblengine.func;
T << find_set_dnsblengine.T;
P << find_set_dnsblengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dnsbllog@
identifier func = set_dnsbllog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dnsbllog@
func << find_set_dnsbllog.func;
T << find_set_dnsbllog.T;
P << find_set_dnsbllog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dnsblpolicy@
identifier func = set_dnsblpolicy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dnsblpolicy@
func << find_set_dnsblpolicy.func;
T << find_set_dnsblpolicy.T;
P << find_set_dnsblpolicy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dynmasqctrlsacls@
identifier func = set_dynmasqctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dynmasqctrlsacls@
func << find_set_dynmasqctrlsacls.func;
T << find_set_dynmasqctrlsacls.T;
P << find_set_dynmasqctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_dynmasqrefresh@
identifier func = set_dynmasqrefresh;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_dynmasqrefresh@
func << find_set_dynmasqrefresh.func;
T << find_set_dynmasqrefresh.T;
P << find_set_dynmasqrefresh.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execbeforecommand@
identifier func = set_execbeforecommand;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execbeforecommand@
func << find_set_execbeforecommand.func;
T << find_set_execbeforecommand.T;
P << find_set_execbeforecommand.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execenable@
identifier func = set_execenable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execenable@
func << find_set_execenable.func;
T << find_set_execenable.T;
P << find_set_execenable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execengine@
identifier func = set_execengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execengine@
func << find_set_execengine.func;
T << find_set_execengine.T;
P << find_set_execengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execenviron@
identifier func = set_execenviron;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execenviron@
func << find_set_execenviron.func;
T << find_set_execenviron.T;
P << find_set_execenviron.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execlog@
identifier func = set_execlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execlog@
func << find_set_execlog.func;
T << find_set_execlog.T;
P << find_set_execlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execoncommand@
identifier func = set_execoncommand;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execoncommand@
func << find_set_execoncommand.func;
T << find_set_execoncommand.T;
P << find_set_execoncommand.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execonconnect@
identifier func = set_execonconnect;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execonconnect@
func << find_set_execonconnect.func;
T << find_set_execonconnect.T;
P << find_set_execonconnect.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execonerror@
identifier func = set_execonerror;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execonerror@
func << find_set_execonerror.func;
T << find_set_execonerror.T;
P << find_set_execonerror.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execonevent@
identifier func = set_execonevent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execonevent@
func << find_set_execonevent.func;
T << find_set_execonevent.T;
P << find_set_execonevent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execonexit@
identifier func = set_execonexit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execonexit@
func << find_set_execonexit.func;
T << find_set_execonexit.T;
P << find_set_execonexit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execonrestart@
identifier func = set_execonrestart;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execonrestart@
func << find_set_execonrestart.func;
T << find_set_execonrestart.T;
P << find_set_execonrestart.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_execoptions@
identifier func = set_execoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_execoptions@
func << find_set_execoptions.func;
T << find_set_execoptions.T;
P << find_set_execoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_exectimeout@
identifier func = set_exectimeout;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_exectimeout@
func << find_set_exectimeout.func;
T << find_set_exectimeout.T;
P << find_set_exectimeout.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_faclengine@
identifier func = set_faclengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_faclengine@
func << find_set_faclengine.func;
T << find_set_faclengine.T;
P << find_set_faclengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_foobardirective@
identifier func = set_foobardirective;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_foobardirective@
func << find_set_foobardirective.func;
T << find_set_foobardirective.T;
P << find_set_foobardirective.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_forensiclogbuffersize@
identifier func = set_forensiclogbuffersize;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_forensiclogbuffersize@
func << find_set_forensiclogbuffersize.func;
T << find_set_forensiclogbuffersize.T;
P << find_set_forensiclogbuffersize.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_forensiclogcapture@
identifier func = set_forensiclogcapture;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_forensiclogcapture@
func << find_set_forensiclogcapture.func;
T << find_set_forensiclogcapture.T;
P << find_set_forensiclogcapture.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_forensiclogcriteria@
identifier func = set_forensiclogcriteria;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_forensiclogcriteria@
func << find_set_forensiclogcriteria.func;
T << find_set_forensiclogcriteria.T;
P << find_set_forensiclogcriteria.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_forensiclogengine@
identifier func = set_forensiclogengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_forensiclogengine@
func << find_set_forensiclogengine.func;
T << find_set_forensiclogengine.T;
P << find_set_forensiclogengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_forensiclogfile@
identifier func = set_forensiclogfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_forensiclogfile@
func << find_set_forensiclogfile.func;
T << find_set_forensiclogfile.T;
P << find_set_forensiclogfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_geoipengine@
identifier func = set_geoipengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_geoipengine@
func << find_set_geoipengine.func;
T << find_set_geoipengine.T;
P << find_set_geoipengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_geoipfilter@
identifier func = set_geoipfilter;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_geoipfilter@
func << find_set_geoipfilter.func;
T << find_set_geoipfilter.T;
P << find_set_geoipfilter.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_geoiplog@
identifier func = set_geoiplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_geoiplog@
func << find_set_geoiplog.func;
T << find_set_geoiplog.T;
P << find_set_geoiplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_geoippolicy@
identifier func = set_geoippolicy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_geoippolicy@
func << find_set_geoippolicy.func;
T << find_set_geoippolicy.T;
P << find_set_geoippolicy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_geoiptable@
identifier func = set_geoiptable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_geoiptable@
func << find_set_geoiptable.func;
T << find_set_geoiptable.T;
P << find_set_geoiptable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_identlookups@
identifier func = set_identlookups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_identlookups@
func << find_set_identlookups.func;
T << find_set_identlookups.T;
P << find_set_identlookups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ifsessopts@
identifier func = set_ifsessopts;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ifsessopts@
func << find_set_ifsessopts.func;
T << find_set_ifsessopts.T;
P << find_set_ifsessopts.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_langdefault@
identifier func = set_langdefault;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_langdefault@
func << find_set_langdefault.func;
T << find_set_langdefault.T;
P << find_set_langdefault.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_langengine@
identifier func = set_langengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_langengine@
func << find_set_langengine.func;
T << find_set_langengine.T;
P << find_set_langengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_langoptions@
identifier func = set_langoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_langoptions@
func << find_set_langoptions.func;
T << find_set_langoptions.T;
P << find_set_langoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_langpath@
identifier func = set_langpath;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_langpath@
func << find_set_langpath.func;
T << find_set_langpath.T;
P << find_set_langpath.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapaliasdereference@
identifier func = set_ldapaliasdereference;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapaliasdereference@
func << find_set_ldapaliasdereference.func;
T << find_set_ldapaliasdereference.T;
P << find_set_ldapaliasdereference.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapattr@
identifier func = set_ldapattr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapattr@
func << find_set_ldapattr.func;
T << find_set_ldapattr.T;
P << find_set_ldapattr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapauthbinds@
identifier func = set_ldapauthbinds;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapauthbinds@
func << find_set_ldapauthbinds.func;
T << find_set_ldapauthbinds.T;
P << find_set_ldapauthbinds.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapbinddn@
identifier func = set_ldapbinddn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapbinddn@
func << find_set_ldapbinddn.func;
T << find_set_ldapbinddn.T;
P << find_set_ldapbinddn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapconnecttimeout@
identifier func = set_ldapconnecttimeout;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapconnecttimeout@
func << find_set_ldapconnecttimeout.func;
T << find_set_ldapconnecttimeout.T;
P << find_set_ldapconnecttimeout.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapdefaultauthscheme@
identifier func = set_ldapdefaultauthscheme;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapdefaultauthscheme@
func << find_set_ldapdefaultauthscheme.func;
T << find_set_ldapdefaultauthscheme.T;
P << find_set_ldapdefaultauthscheme.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapdefaultgid@
identifier func = set_ldapdefaultgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapdefaultgid@
func << find_set_ldapdefaultgid.func;
T << find_set_ldapdefaultgid.T;
P << find_set_ldapdefaultgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapdefaultquota@
identifier func = set_ldapdefaultquota;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapdefaultquota@
func << find_set_ldapdefaultquota.func;
T << find_set_ldapdefaultquota.T;
P << find_set_ldapdefaultquota.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapdefaultuid@
identifier func = set_ldapdefaultuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapdefaultuid@
func << find_set_ldapdefaultuid.func;
T << find_set_ldapdefaultuid.T;
P << find_set_ldapdefaultuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapforcedefaultgid@
identifier func = set_ldapforcedefaultgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapforcedefaultgid@
func << find_set_ldapforcedefaultgid.func;
T << find_set_ldapforcedefaultgid.T;
P << find_set_ldapforcedefaultgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapforcedefaultuid@
identifier func = set_ldapforcedefaultuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapforcedefaultuid@
func << find_set_ldapforcedefaultuid.func;
T << find_set_ldapforcedefaultuid.T;
P << find_set_ldapforcedefaultuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapforcegenhdir@
identifier func = set_ldapforcegenhdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapforcegenhdir@
func << find_set_ldapforcegenhdir.func;
T << find_set_ldapforcegenhdir.T;
P << find_set_ldapforcegenhdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapgenhdir@
identifier func = set_ldapgenhdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapgenhdir@
func << find_set_ldapgenhdir.func;
T << find_set_ldapgenhdir.T;
P << find_set_ldapgenhdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapgenhdirprefix@
identifier func = set_ldapgenhdirprefix;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapgenhdirprefix@
func << find_set_ldapgenhdirprefix.func;
T << find_set_ldapgenhdirprefix.T;
P << find_set_ldapgenhdirprefix.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapgenhdirprefixnouname@
identifier func = set_ldapgenhdirprefixnouname;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapgenhdirprefixnouname@
func << find_set_ldapgenhdirprefixnouname.func;
T << find_set_ldapgenhdirprefixnouname.T;
P << find_set_ldapgenhdirprefixnouname.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapgroups@
identifier func = set_ldapgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapgroups@
func << find_set_ldapgroups.func;
T << find_set_ldapgroups.T;
P << find_set_ldapgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldaplog@
identifier func = set_ldaplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldaplog@
func << find_set_ldaplog.func;
T << find_set_ldaplog.T;
P << find_set_ldaplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapprotoversion@
identifier func = set_ldapprotoversion;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapprotoversion@
func << find_set_ldapprotoversion.func;
T << find_set_ldapprotoversion.T;
P << find_set_ldapprotoversion.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapquerytimeout@
identifier func = set_ldapquerytimeout;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapquerytimeout@
func << find_set_ldapquerytimeout.func;
T << find_set_ldapquerytimeout.T;
P << find_set_ldapquerytimeout.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapsearchscope@
identifier func = set_ldapsearchscope;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapsearchscope@
func << find_set_ldapsearchscope.func;
T << find_set_ldapsearchscope.T;
P << find_set_ldapsearchscope.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapserver@
identifier func = set_ldapserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapserver@
func << find_set_ldapserver.func;
T << find_set_ldapserver.T;
P << find_set_ldapserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapusers@
identifier func = set_ldapusers;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapusers@
func << find_set_ldapusers.func;
T << find_set_ldapusers.T;
P << find_set_ldapusers.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapusesasl@
identifier func = set_ldapusesasl;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapusesasl@
func << find_set_ldapusesasl.func;
T << find_set_ldapusesasl.T;
P << find_set_ldapusesasl.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ldapusetls@
identifier func = set_ldapusetls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ldapusetls@
func << find_set_ldapusetls.func;
T << find_set_ldapusetls.T;
P << find_set_ldapusetls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_loadfile@
identifier func = set_loadfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_loadfile@
func << find_set_loadfile.func;
T << find_set_loadfile.T;
P << find_set_loadfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_loadmodule@
identifier func = set_loadmodule;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_loadmodule@
func << find_set_loadmodule.func;
T << find_set_loadmodule.T;
P << find_set_loadmodule.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_maxload@
identifier func = set_maxload;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_maxload@
func << find_set_maxload.func;
T << find_set_maxload.T;
P << find_set_maxload.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_memcacheconnectfailures@
identifier func = set_memcacheconnectfailures;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcacheconnectfailures@
func << find_set_memcacheconnectfailures.func;
T << find_set_memcacheconnectfailures.T;
P << find_set_memcacheconnectfailures.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcacheengine@
identifier func = set_memcacheengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcacheengine@
func << find_set_memcacheengine.func;
T << find_set_memcacheengine.T;
P << find_set_memcacheengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcachelog@
identifier func = set_memcachelog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcachelog@
func << find_set_memcachelog.func;
T << find_set_memcachelog.T;
P << find_set_memcachelog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcacheoptions@
identifier func = set_memcacheoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcacheoptions@
func << find_set_memcacheoptions.func;
T << find_set_memcacheoptions.T;
P << find_set_memcacheoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcachereplicas@
identifier func = set_memcachereplicas;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcachereplicas@
func << find_set_memcachereplicas.func;
T << find_set_memcachereplicas.T;
P << find_set_memcachereplicas.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcacheservers@
identifier func = set_memcacheservers;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcacheservers@
func << find_set_memcacheservers.func;
T << find_set_memcacheservers.T;
P << find_set_memcacheservers.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_memcachetimeouts@
identifier func = set_memcachetimeouts;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_memcachetimeouts@
func << find_set_memcachetimeouts.func;
T << find_set_memcachetimeouts.T;
P << find_set_memcachetimeouts.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_modulectrlsacls@
identifier func = set_modulectrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_modulectrlsacls@
func << find_set_modulectrlsacls.func;
T << find_set_modulectrlsacls.T;
P << find_set_modulectrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_moduleorder@
identifier func = set_moduleorder;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_moduleorder@
func << find_set_moduleorder.func;
T << find_set_moduleorder.T;
P << find_set_moduleorder.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_modulepath@
identifier func = set_modulepath;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_modulepath@
func << find_set_modulepath.func;
T << find_set_modulepath.T;
P << find_set_modulepath.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_qosoptions@
identifier func = set_qosoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_qosoptions@
func << find_set_qosoptions.func;
T << find_set_qosoptions.T;
P << find_set_qosoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotadefault@
identifier func = set_quotadefault;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotadefault@
func << find_set_quotadefault.func;
T << find_set_quotadefault.T;
P << find_set_quotadefault.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotadirtally@
identifier func = set_quotadirtally;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotadirtally@
func << find_set_quotadirtally.func;
T << find_set_quotadirtally.T;
P << find_set_quotadirtally.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotadisplayunits@
identifier func = set_quotadisplayunits;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotadisplayunits@
func << find_set_quotadisplayunits.func;
T << find_set_quotadisplayunits.T;
P << find_set_quotadisplayunits.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotaengine@
identifier func = set_quotaengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotaengine@
func << find_set_quotaengine.func;
T << find_set_quotaengine.T;
P << find_set_quotaengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotaexcludefilter@
identifier func = set_quotaexcludefilter;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotaexcludefilter@
func << find_set_quotaexcludefilter.func;
T << find_set_quotaexcludefilter.T;
P << find_set_quotaexcludefilter.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotalock@
identifier func = set_quotalock;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotalock@
func << find_set_quotalock.func;
T << find_set_quotalock.T;
P << find_set_quotalock.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotalog@
identifier func = set_quotalog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotalog@
func << find_set_quotalog.func;
T << find_set_quotalog.T;
P << find_set_quotalog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotaoptions@
identifier func = set_quotaoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotaoptions@
func << find_set_quotaoptions.func;
T << find_set_quotaoptions.T;
P << find_set_quotaoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotashowquotas@
identifier func = set_quotashowquotas;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotashowquotas@
func << find_set_quotashowquotas.func;
T << find_set_quotashowquotas.T;
P << find_set_quotashowquotas.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_quotatable@
identifier func = set_quotatable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_quotatable@
func << find_set_quotatable.func;
T << find_set_quotatable.T;
P << find_set_quotatable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusacctserver@
identifier func = set_radiusacctserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusacctserver@
func << find_set_radiusacctserver.func;
T << find_set_radiusacctserver.T;
P << find_set_radiusacctserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusauthserver@
identifier func = set_radiusauthserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusauthserver@
func << find_set_radiusauthserver.func;
T << find_set_radiusauthserver.T;
P << find_set_radiusauthserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusengine@
identifier func = set_radiusengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusengine@
func << find_set_radiusengine.func;
T << find_set_radiusengine.T;
P << find_set_radiusengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusgroupinfo@
identifier func = set_radiusgroupinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusgroupinfo@
func << find_set_radiusgroupinfo.func;
T << find_set_radiusgroupinfo.T;
P << find_set_radiusgroupinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiuslog@
identifier func = set_radiuslog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiuslog@
func << find_set_radiuslog.func;
T << find_set_radiuslog.T;
P << find_set_radiuslog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusnasidentifier@
identifier func = set_radiusnasidentifier;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusnasidentifier@
func << find_set_radiusnasidentifier.func;
T << find_set_radiusnasidentifier.T;
P << find_set_radiusnasidentifier.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusoptions@
identifier func = set_radiusoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusoptions@
func << find_set_radiusoptions.func;
T << find_set_radiusoptions.T;
P << find_set_radiusoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusquotainfo@
identifier func = set_radiusquotainfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusquotainfo@
func << find_set_radiusquotainfo.func;
T << find_set_radiusquotainfo.T;
P << find_set_radiusquotainfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusrealm@
identifier func = set_radiusrealm;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusrealm@
func << find_set_radiusrealm.func;
T << find_set_radiusrealm.T;
P << find_set_radiusrealm.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiususerinfo@
identifier func = set_radiususerinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiususerinfo@
func << find_set_radiususerinfo.func;
T << find_set_radiususerinfo.T;
P << find_set_radiususerinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_radiusvendor@
identifier func = set_radiusvendor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_radiusvendor@
func << find_set_radiusvendor.func;
T << find_set_radiusvendor.T;
P << find_set_radiusvendor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_ratios@
identifier func = set_ratios;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_ratios@
func << find_set_ratios.func;
T << find_set_ratios.T;
P << find_set_ratios.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redisengine@
identifier func = set_redisengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redisengine@
func << find_set_redisengine.func;
T << find_set_redisengine.T;
P << find_set_redisengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redislog@
identifier func = set_redislog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redislog@
func << find_set_redislog.func;
T << find_set_redislog.T;
P << find_set_redislog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redislogfmtextra@
identifier func = set_redislogfmtextra;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redislogfmtextra@
func << find_set_redislogfmtextra.func;
T << find_set_redislogfmtextra.T;
P << find_set_redislogfmtextra.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redislogoncommand@
identifier func = set_redislogoncommand;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redislogoncommand@
func << find_set_redislogoncommand.func;
T << find_set_redislogoncommand.T;
P << find_set_redislogoncommand.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redislogonevent@
identifier func = set_redislogonevent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redislogonevent@
func << find_set_redislogonevent.func;
T << find_set_redislogonevent.T;
P << find_set_redislogonevent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redisoptions@
identifier func = set_redisoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redisoptions@
func << find_set_redisoptions.func;
T << find_set_redisoptions.T;
P << find_set_redisoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redissentinel@
identifier func = set_redissentinel;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redissentinel@
func << find_set_redissentinel.func;
T << find_set_redissentinel.T;
P << find_set_redissentinel.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redisserver@
identifier func = set_redisserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redisserver@
func << find_set_redisserver.func;
T << find_set_redisserver.T;
P << find_set_redisserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_redistimeouts@
identifier func = set_redistimeouts;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_redistimeouts@
func << find_set_redistimeouts.func;
T << find_set_redistimeouts.T;
P << find_set_redistimeouts.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_rewritecondition@
identifier func = set_rewritecondition;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritecondition@
func << find_set_rewritecondition.func;
T << find_set_rewritecondition.T;
P << find_set_rewritecondition.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewriteengine@
identifier func = set_rewriteengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewriteengine@
func << find_set_rewriteengine.func;
T << find_set_rewriteengine.T;
P << find_set_rewriteengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_rewritelock@
identifier func = set_rewritelock;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritelock@
func << find_set_rewritelock.func;
T << find_set_rewritelock.T;
P << find_set_rewritelock.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewritelog@
identifier func = set_rewritelog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritelog@
func << find_set_rewritelog.func;
T << find_set_rewritelog.T;
P << find_set_rewritelog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewritemap@
identifier func = set_rewritemap;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritemap@
func << find_set_rewritemap.func;
T << find_set_rewritemap.T;
P << find_set_rewritemap.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewritemaxreplace@
identifier func = set_rewritemaxreplace;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewritemaxreplace@
func << find_set_rewritemaxreplace.func;
T << find_set_rewritemaxreplace.T;
P << find_set_rewritemaxreplace.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_rewriterule@
identifier func = set_rewriterule;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_rewriterule@
func << find_set_rewriterule.func;
T << find_set_rewriterule.T;
P << find_set_rewriterule.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_sftpacceptenv@
identifier func = set_sftpacceptenv;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpacceptenv@
func << find_set_sftpacceptenv.func;
T << find_set_sftpacceptenv.T;
P << find_set_sftpacceptenv.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpauthmeths@
identifier func = set_sftpauthmeths;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpauthmeths@
func << find_set_sftpauthmeths.func;
T << find_set_sftpauthmeths.T;
P << find_set_sftpauthmeths.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpauthorizedkeys@
identifier func = set_sftpauthorizedkeys;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpauthorizedkeys@
func << find_set_sftpauthorizedkeys.func;
T << find_set_sftpauthorizedkeys.T;
P << find_set_sftpauthorizedkeys.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpauthpublickeys@
identifier func = set_sftpauthpublickeys;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpauthpublickeys@
func << find_set_sftpauthpublickeys.func;
T << find_set_sftpauthpublickeys.T;
P << find_set_sftpauthpublickeys.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpciphers@
identifier func = set_sftpciphers;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpciphers@
func << find_set_sftpciphers.func;
T << find_set_sftpciphers.T;
P << find_set_sftpciphers.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpclientalive@
identifier func = set_sftpclientalive;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpclientalive@
func << find_set_sftpclientalive.func;
T << find_set_sftpclientalive.T;
P << find_set_sftpclientalive.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpclientmatch@
identifier func = set_sftpclientmatch;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpclientmatch@
func << find_set_sftpclientmatch.func;
T << find_set_sftpclientmatch.T;
P << find_set_sftpclientmatch.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpcompression@
identifier func = set_sftpcompression;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpcompression@
func << find_set_sftpcompression.func;
T << find_set_sftpcompression.T;
P << find_set_sftpcompression.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpcryptodevice@
identifier func = set_sftpcryptodevice;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpcryptodevice@
func << find_set_sftpcryptodevice.func;
T << find_set_sftpcryptodevice.T;
P << find_set_sftpcryptodevice.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpdhparamfile@
identifier func = set_sftpdhparamfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpdhparamfile@
func << find_set_sftpdhparamfile.func;
T << find_set_sftpdhparamfile.T;
P << find_set_sftpdhparamfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpdigests@
identifier func = set_sftpdigests;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpdigests@
func << find_set_sftpdigests.func;
T << find_set_sftpdigests.T;
P << find_set_sftpdigests.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpdisplaybanner@
identifier func = set_sftpdisplaybanner;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpdisplaybanner@
func << find_set_sftpdisplaybanner.func;
T << find_set_sftpdisplaybanner.T;
P << find_set_sftpdisplaybanner.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpengine@
identifier func = set_sftpengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpengine@
func << find_set_sftpengine.func;
T << find_set_sftpengine.T;
P << find_set_sftpengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpextensions@
identifier func = set_sftpextensions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpextensions@
func << find_set_sftpextensions.func;
T << find_set_sftpextensions.T;
P << find_set_sftpextensions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftphostkey@
identifier func = set_sftphostkey;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftphostkey@
func << find_set_sftphostkey.func;
T << find_set_sftphostkey.T;
P << find_set_sftphostkey.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftphostkeys@
identifier func = set_sftphostkeys;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftphostkeys@
func << find_set_sftphostkeys.func;
T << find_set_sftphostkeys.T;
P << find_set_sftphostkeys.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpkeyblacklist@
identifier func = set_sftpkeyblacklist;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpkeyblacklist@
func << find_set_sftpkeyblacklist.func;
T << find_set_sftpkeyblacklist.T;
P << find_set_sftpkeyblacklist.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpkeyexchanges@
identifier func = set_sftpkeyexchanges;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpkeyexchanges@
func << find_set_sftpkeyexchanges.func;
T << find_set_sftpkeyexchanges.T;
P << find_set_sftpkeyexchanges.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpkeyfingerprints@
identifier func = set_sftpkeyfingerprints;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpkeyfingerprints@
func << find_set_sftpkeyfingerprints.func;
T << find_set_sftpkeyfingerprints.T;
P << find_set_sftpkeyfingerprints.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpkeylimits@
identifier func = set_sftpkeylimits;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpkeylimits@
func << find_set_sftpkeylimits.func;
T << find_set_sftpkeylimits.T;
P << find_set_sftpkeylimits.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftplog@
identifier func = set_sftplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftplog@
func << find_set_sftplog.func;
T << find_set_sftplog.T;
P << find_set_sftplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpmaxchannels@
identifier func = set_sftpmaxchannels;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpmaxchannels@
func << find_set_sftpmaxchannels.func;
T << find_set_sftpmaxchannels.T;
P << find_set_sftpmaxchannels.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftpoptions@
identifier func = set_sftpoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftpoptions@
func << find_set_sftpoptions.func;
T << find_set_sftpoptions.T;
P << find_set_sftpoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftppamengine@
identifier func = set_sftppamengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftppamengine@
func << find_set_sftppamengine.func;
T << find_set_sftppamengine.T;
P << find_set_sftppamengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftppamoptions@
identifier func = set_sftppamoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftppamoptions@
func << find_set_sftppamoptions.func;
T << find_set_sftppamoptions.T;
P << find_set_sftppamoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftppamservicename@
identifier func = set_sftppamservicename;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftppamservicename@
func << find_set_sftppamservicename.func;
T << find_set_sftppamservicename.T;
P << find_set_sftppamservicename.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftppassphraseprovider@
identifier func = set_sftppassphraseprovider;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftppassphraseprovider@
func << find_set_sftppassphraseprovider.func;
T << find_set_sftppassphraseprovider.T;
P << find_set_sftppassphraseprovider.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftprekey@
identifier func = set_sftprekey;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftprekey@
func << find_set_sftprekey.func;
T << find_set_sftprekey.T;
P << find_set_sftprekey.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sftptrafficpolicy@
identifier func = set_sftptrafficpolicy;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sftptrafficpolicy@
func << find_set_sftptrafficpolicy.func;
T << find_set_sftptrafficpolicy.T;
P << find_set_sftptrafficpolicy.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shaperall@
identifier func = set_shaperall;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shaperall@
func << find_set_shaperall.func;
T << find_set_shaperall.T;
P << find_set_shaperall.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shaperctrlsacls@
identifier func = set_shaperctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shaperctrlsacls@
func << find_set_shaperctrlsacls.func;
T << find_set_shaperctrlsacls.T;
P << find_set_shaperctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shaperengine@
identifier func = set_shaperengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shaperengine@
func << find_set_shaperengine.func;
T << find_set_shaperengine.T;
P << find_set_shaperengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shaperlog@
identifier func = set_shaperlog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shaperlog@
func << find_set_shaperlog.func;
T << find_set_shaperlog.T;
P << find_set_shaperlog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shapersession@
identifier func = set_shapersession;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shapersession@
func << find_set_shapersession.func;
T << find_set_shapersession.T;
P << find_set_shapersession.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_shapertable@
identifier func = set_shapertable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_shapertable@
func << find_set_shapertable.func;
T << find_set_shapertable.T;
P << find_set_shapertable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_sitemiscengine@
identifier func = set_sitemiscengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sitemiscengine@
func << find_set_sitemiscengine.func;
T << find_set_sitemiscengine.T;
P << find_set_sitemiscengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpagent@
identifier func = set_snmpagent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpagent@
func << find_set_snmpagent.func;
T << find_set_snmpagent.T;
P << find_set_snmpagent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpcommunity@
identifier func = set_snmpcommunity;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpcommunity@
func << find_set_snmpcommunity.func;
T << find_set_snmpcommunity.T;
P << find_set_snmpcommunity.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpenable@
identifier func = set_snmpenable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpenable@
func << find_set_snmpenable.func;
T << find_set_snmpenable.T;
P << find_set_snmpenable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpengine@
identifier func = set_snmpengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpengine@
func << find_set_snmpengine.func;
T << find_set_snmpengine.T;
P << find_set_snmpengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmplog@
identifier func = set_snmplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmplog@
func << find_set_snmplog.func;
T << find_set_snmplog.T;
P << find_set_snmplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpmaxvariables@
identifier func = set_snmpmaxvariables;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpmaxvariables@
func << find_set_snmpmaxvariables.func;
T << find_set_snmpmaxvariables.T;
P << find_set_snmpmaxvariables.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpnotify@
identifier func = set_snmpnotify;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpnotify@
func << find_set_snmpnotify.func;
T << find_set_snmpnotify.T;
P << find_set_snmpnotify.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmpoptions@
identifier func = set_snmpoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmpoptions@
func << find_set_snmpoptions.func;
T << find_set_snmpoptions.T;
P << find_set_snmpoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_snmptables@
identifier func = set_snmptables;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_snmptables@
func << find_set_snmptables.func;
T << find_set_snmptables.T;
P << find_set_snmptables.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_sqlauthenticate@
identifier func = set_sqlauthenticate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlauthenticate@
func << find_set_sqlauthenticate.func;
T << find_set_sqlauthenticate.T;
P << find_set_sqlauthenticate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlauthtypes@
identifier func = set_sqlauthtypes;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlauthtypes@
func << find_set_sqlauthtypes.func;
T << find_set_sqlauthtypes.T;
P << find_set_sqlauthtypes.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlbackend@
identifier func = set_sqlbackend;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlbackend@
func << find_set_sqlbackend.func;
T << find_set_sqlbackend.T;
P << find_set_sqlbackend.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlconnectinfo@
identifier func = set_sqlconnectinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlconnectinfo@
func << find_set_sqlconnectinfo.func;
T << find_set_sqlconnectinfo.T;
P << find_set_sqlconnectinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqldefaultgid@
identifier func = set_sqldefaultgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqldefaultgid@
func << find_set_sqldefaultgid.func;
T << find_set_sqldefaultgid.T;
P << find_set_sqldefaultgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqldefaulthomedir@
identifier func = set_sqldefaulthomedir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqldefaulthomedir@
func << find_set_sqldefaulthomedir.func;
T << find_set_sqldefaulthomedir.T;
P << find_set_sqldefaulthomedir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqldefaultuid@
identifier func = set_sqldefaultuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqldefaultuid@
func << find_set_sqldefaultuid.func;
T << find_set_sqldefaultuid.T;
P << find_set_sqldefaultuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlengine@
identifier func = set_sqlengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlengine@
func << find_set_sqlengine.func;
T << find_set_sqlengine.T;
P << find_set_sqlengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlgroupinfo@
identifier func = set_sqlgroupinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlgroupinfo@
func << find_set_sqlgroupinfo.func;
T << find_set_sqlgroupinfo.T;
P << find_set_sqlgroupinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlgroupprimarykey@
identifier func = set_sqlgroupprimarykey;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlgroupprimarykey@
func << find_set_sqlgroupprimarykey.func;
T << find_set_sqlgroupprimarykey.T;
P << find_set_sqlgroupprimarykey.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlgroupwhereclause@
identifier func = set_sqlgroupwhereclause;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlgroupwhereclause@
func << find_set_sqlgroupwhereclause.func;
T << find_set_sqlgroupwhereclause.T;
P << find_set_sqlgroupwhereclause.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlkeepalive@
identifier func = set_sqlkeepalive;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlkeepalive@
func << find_set_sqlkeepalive.func;
T << find_set_sqlkeepalive.T;
P << find_set_sqlkeepalive.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqllog@
identifier func = set_sqllog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqllog@
func << find_set_sqllog.func;
T << find_set_sqllog.T;
P << find_set_sqllog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqllogfile@
identifier func = set_sqllogfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqllogfile@
func << find_set_sqllogfile.func;
T << find_set_sqllogfile.T;
P << find_set_sqllogfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqllogonevent@
identifier func = set_sqllogonevent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqllogonevent@
func << find_set_sqllogonevent.func;
T << find_set_sqllogonevent.T;
P << find_set_sqllogonevent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlminid@
identifier func = set_sqlminid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlminid@
func << find_set_sqlminid.func;
T << find_set_sqlminid.T;
P << find_set_sqlminid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlminusergid@
identifier func = set_sqlminusergid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlminusergid@
func << find_set_sqlminusergid.func;
T << find_set_sqlminusergid.T;
P << find_set_sqlminusergid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlminuseruid@
identifier func = set_sqlminuseruid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlminuseruid@
func << find_set_sqlminuseruid.func;
T << find_set_sqlminuseruid.T;
P << find_set_sqlminuseruid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlnamedconnectinfo@
identifier func = set_sqlnamedconnectinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlnamedconnectinfo@
func << find_set_sqlnamedconnectinfo.func;
T << find_set_sqlnamedconnectinfo.T;
P << find_set_sqlnamedconnectinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlnamedquery@
identifier func = set_sqlnamedquery;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlnamedquery@
func << find_set_sqlnamedquery.func;
T << find_set_sqlnamedquery.T;
P << find_set_sqlnamedquery.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlnegativecache@
identifier func = set_sqlnegativecache;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlnegativecache@
func << find_set_sqlnegativecache.func;
T << find_set_sqlnegativecache.T;
P << find_set_sqlnegativecache.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlodbcversion@
identifier func = set_sqlodbcversion;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlodbcversion@
func << find_set_sqlodbcversion.func;
T << find_set_sqlodbcversion.T;
P << find_set_sqlodbcversion.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqloptions@
identifier func = set_sqloptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqloptions@
func << find_set_sqloptions.func;
T << find_set_sqloptions.T;
P << find_set_sqloptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdargon2@
identifier func = set_sqlpasswdargon2;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdargon2@
func << find_set_sqlpasswdargon2.func;
T << find_set_sqlpasswdargon2.T;
P << find_set_sqlpasswdargon2.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdcost@
identifier func = set_sqlpasswdcost;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdcost@
func << find_set_sqlpasswdcost.func;
T << find_set_sqlpasswdcost.T;
P << find_set_sqlpasswdcost.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdencoding@
identifier func = set_sqlpasswdencoding;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdencoding@
func << find_set_sqlpasswdencoding.func;
T << find_set_sqlpasswdencoding.T;
P << find_set_sqlpasswdencoding.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdengine@
identifier func = set_sqlpasswdengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdengine@
func << find_set_sqlpasswdengine.func;
T << find_set_sqlpasswdengine.T;
P << find_set_sqlpasswdengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdoptions@
identifier func = set_sqlpasswdoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdoptions@
func << find_set_sqlpasswdoptions.func;
T << find_set_sqlpasswdoptions.T;
P << find_set_sqlpasswdoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdpbkdf2@
identifier func = set_sqlpasswdpbkdf2;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdpbkdf2@
func << find_set_sqlpasswdpbkdf2.func;
T << find_set_sqlpasswdpbkdf2.T;
P << find_set_sqlpasswdpbkdf2.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdrounds@
identifier func = set_sqlpasswdrounds;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdrounds@
func << find_set_sqlpasswdrounds.func;
T << find_set_sqlpasswdrounds.T;
P << find_set_sqlpasswdrounds.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdsaltencoding@
identifier func = set_sqlpasswdsaltencoding;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdsaltencoding@
func << find_set_sqlpasswdsaltencoding.func;
T << find_set_sqlpasswdsaltencoding.T;
P << find_set_sqlpasswdsaltencoding.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdsaltfile@
identifier func = set_sqlpasswdsaltfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdsaltfile@
func << find_set_sqlpasswdsaltfile.func;
T << find_set_sqlpasswdsaltfile.T;
P << find_set_sqlpasswdsaltfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdscrypt@
identifier func = set_sqlpasswdscrypt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdscrypt@
func << find_set_sqlpasswdscrypt.func;
T << find_set_sqlpasswdscrypt.T;
P << find_set_sqlpasswdscrypt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlpasswdusersalt@
identifier func = set_sqlpasswdusersalt;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlpasswdusersalt@
func << find_set_sqlpasswdusersalt.func;
T << find_set_sqlpasswdusersalt.T;
P << find_set_sqlpasswdusersalt.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlratios@
identifier func = set_sqlratios;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlratios@
func << find_set_sqlratios.func;
T << find_set_sqlratios.T;
P << find_set_sqlratios.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlratiostats@
identifier func = set_sqlratiostats;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlratiostats@
func << find_set_sqlratiostats.func;
T << find_set_sqlratiostats.T;
P << find_set_sqlratiostats.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqlshowinfo@
identifier func = set_sqlshowinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqlshowinfo@
func << find_set_sqlshowinfo.func;
T << find_set_sqlshowinfo.T;
P << find_set_sqlshowinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqluserinfo@
identifier func = set_sqluserinfo;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqluserinfo@
func << find_set_sqluserinfo.func;
T << find_set_sqluserinfo.T;
P << find_set_sqluserinfo.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqluserprimarykey@
identifier func = set_sqluserprimarykey;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqluserprimarykey@
func << find_set_sqluserprimarykey.func;
T << find_set_sqluserprimarykey.T;
P << find_set_sqluserprimarykey.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_sqluserwhereclause@
identifier func = set_sqluserwhereclause;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_sqluserwhereclause@
func << find_set_sqluserwhereclause.func;
T << find_set_sqluserwhereclause.T;
P << find_set_sqluserwhereclause.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_statcachecapacity@
identifier func = set_statcachecapacity;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_statcachecapacity@
func << find_set_statcachecapacity.func;
T << find_set_statcachecapacity.T;
P << find_set_statcachecapacity.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_statcachectrlsacls@
identifier func = set_statcachectrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_statcachectrlsacls@
func << find_set_statcachectrlsacls.func;
T << find_set_statcachectrlsacls.T;
P << find_set_statcachectrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_statcacheengine@
identifier func = set_statcacheengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_statcacheengine@
func << find_set_statcacheengine.func;
T << find_set_statcacheengine.T;
P << find_set_statcacheengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_statcachemaxage@
identifier func = set_statcachemaxage;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_statcachemaxage@
func << find_set_statcachemaxage.func;
T << find_set_statcachemaxage.T;
P << find_set_statcachemaxage.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_statcachetable@
identifier func = set_statcachetable;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_statcachetable@
func << find_set_statcachetable.func;
T << find_set_statcachetable.T;
P << find_set_statcachetable.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_systemdengine@
identifier func = set_systemdengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_systemdengine@
func << find_set_systemdengine.func;
T << find_set_systemdengine.T;
P << find_set_systemdengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_tcpaccessfiles@
identifier func = set_tcpaccessfiles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpaccessfiles@
func << find_set_tcpaccessfiles.func;
T << find_set_tcpaccessfiles.T;
P << find_set_tcpaccessfiles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tcpaccesssysloglevels@
identifier func = set_tcpaccesssysloglevels;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpaccesssysloglevels@
func << find_set_tcpaccesssysloglevels.func;
T << find_set_tcpaccesssysloglevels.T;
P << find_set_tcpaccesssysloglevels.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_tcpgroupaccessfiles@
identifier func = set_tcpgroupaccessfiles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpgroupaccessfiles@
func << find_set_tcpgroupaccessfiles.func;
T << find_set_tcpgroupaccessfiles.T;
P << find_set_tcpgroupaccessfiles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_tcpservicename@
identifier func = set_tcpservicename;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpservicename@
func << find_set_tcpservicename.func;
T << find_set_tcpservicename.T;
P << find_set_tcpservicename.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tcpuseraccessfiles@
identifier func = set_tcpuseraccessfiles;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tcpuseraccessfiles@
func << find_set_tcpuseraccessfiles.func;
T << find_set_tcpuseraccessfiles.T;
P << find_set_tcpuseraccessfiles.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_tlscacertfile@
identifier func = set_tlscacertfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscacertfile@
func << find_set_tlscacertfile.func;
T << find_set_tlscacertfile.T;
P << find_set_tlscacertfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlscacertpath@
identifier func = set_tlscacertpath;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscacertpath@
func << find_set_tlscacertpath.func;
T << find_set_tlscacertpath.T;
P << find_set_tlscacertpath.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlscacrlfile@
identifier func = set_tlscacrlfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscacrlfile@
func << find_set_tlscacrlfile.func;
T << find_set_tlscacrlfile.T;
P << find_set_tlscacrlfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlscacrlpath@
identifier func = set_tlscacrlpath;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscacrlpath@
func << find_set_tlscacrlpath.func;
T << find_set_tlscacrlpath.T;
P << find_set_tlscacrlpath.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlscertchain@
identifier func = set_tlscertchain;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscertchain@
func << find_set_tlscertchain.func;
T << find_set_tlscertchain.T;
P << find_set_tlscertchain.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsciphersuite@
identifier func = set_tlsciphersuite;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsciphersuite@
func << find_set_tlsciphersuite.func;
T << find_set_tlsciphersuite.T;
P << find_set_tlsciphersuite.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlscryptodevice@
identifier func = set_tlscryptodevice;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlscryptodevice@
func << find_set_tlscryptodevice.func;
T << find_set_tlscryptodevice.T;
P << find_set_tlscryptodevice.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsctrlsacls@
identifier func = set_tlsctrlsacls;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsctrlsacls@
func << find_set_tlsctrlsacls.func;
T << find_set_tlsctrlsacls.T;
P << find_set_tlsctrlsacls.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsdhparamfile@
identifier func = set_tlsdhparamfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsdhparamfile@
func << find_set_tlsdhparamfile.func;
T << find_set_tlsdhparamfile.T;
P << find_set_tlsdhparamfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsdsacertfile@
identifier func = set_tlsdsacertfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsdsacertfile@
func << find_set_tlsdsacertfile.func;
T << find_set_tlsdsacertfile.T;
P << find_set_tlsdsacertfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsdsakeyfile@
identifier func = set_tlsdsakeyfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsdsakeyfile@
func << find_set_tlsdsakeyfile.func;
T << find_set_tlsdsakeyfile.T;
P << find_set_tlsdsakeyfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlseccertfile@
identifier func = set_tlseccertfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlseccertfile@
func << find_set_tlseccertfile.func;
T << find_set_tlseccertfile.T;
P << find_set_tlseccertfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsecdhcurve@
identifier func = set_tlsecdhcurve;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsecdhcurve@
func << find_set_tlsecdhcurve.func;
T << find_set_tlsecdhcurve.T;
P << find_set_tlsecdhcurve.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlseckeyfile@
identifier func = set_tlseckeyfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlseckeyfile@
func << find_set_tlseckeyfile.func;
T << find_set_tlseckeyfile.T;
P << find_set_tlseckeyfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsengine@
identifier func = set_tlsengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsengine@
func << find_set_tlsengine.func;
T << find_set_tlsengine.T;
P << find_set_tlsengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlslog@
identifier func = set_tlslog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlslog@
func << find_set_tlslog.func;
T << find_set_tlslog.T;
P << find_set_tlslog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsmasqaddr@
identifier func = set_tlsmasqaddr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsmasqaddr@
func << find_set_tlsmasqaddr.func;
T << find_set_tlsmasqaddr.T;
P << find_set_tlsmasqaddr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsnextprotocol@
identifier func = set_tlsnextprotocol;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsnextprotocol@
func << find_set_tlsnextprotocol.func;
T << find_set_tlsnextprotocol.T;
P << find_set_tlsnextprotocol.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsoptions@
identifier func = set_tlsoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsoptions@
func << find_set_tlsoptions.func;
T << find_set_tlsoptions.T;
P << find_set_tlsoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlspassphraseprovider@
identifier func = set_tlspassphraseprovider;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlspassphraseprovider@
func << find_set_tlspassphraseprovider.func;
T << find_set_tlspassphraseprovider.T;
P << find_set_tlspassphraseprovider.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlspkcs12file@
identifier func = set_tlspkcs12file;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlspkcs12file@
func << find_set_tlspkcs12file.func;
T << find_set_tlspkcs12file.T;
P << find_set_tlspkcs12file.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlspresharedkey@
identifier func = set_tlspresharedkey;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlspresharedkey@
func << find_set_tlspresharedkey.func;
T << find_set_tlspresharedkey.T;
P << find_set_tlspresharedkey.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsprotocol@
identifier func = set_tlsprotocol;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsprotocol@
func << find_set_tlsprotocol.func;
T << find_set_tlsprotocol.T;
P << find_set_tlsprotocol.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsrandseed@
identifier func = set_tlsrandseed;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsrandseed@
func << find_set_tlsrandseed.func;
T << find_set_tlsrandseed.T;
P << find_set_tlsrandseed.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsrenegotiate@
identifier func = set_tlsrenegotiate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsrenegotiate@
func << find_set_tlsrenegotiate.func;
T << find_set_tlsrenegotiate.T;
P << find_set_tlsrenegotiate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsrequired@
identifier func = set_tlsrequired;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsrequired@
func << find_set_tlsrequired.func;
T << find_set_tlsrequired.T;
P << find_set_tlsrequired.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsrsacertfile@
identifier func = set_tlsrsacertfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsrsacertfile@
func << find_set_tlsrsacertfile.func;
T << find_set_tlsrsacertfile.T;
P << find_set_tlsrsacertfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsrsakeyfile@
identifier func = set_tlsrsakeyfile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsrsakeyfile@
func << find_set_tlsrsakeyfile.func;
T << find_set_tlsrsakeyfile.T;
P << find_set_tlsrsakeyfile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsservercipherpreference@
identifier func = set_tlsservercipherpreference;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsservercipherpreference@
func << find_set_tlsservercipherpreference.func;
T << find_set_tlsservercipherpreference.T;
P << find_set_tlsservercipherpreference.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsserverinfofile@
identifier func = set_tlsserverinfofile;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsserverinfofile@
func << find_set_tlsserverinfofile.func;
T << find_set_tlsserverinfofile.T;
P << find_set_tlsserverinfofile.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlssessioncache@
identifier func = set_tlssessioncache;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlssessioncache@
func << find_set_tlssessioncache.func;
T << find_set_tlssessioncache.T;
P << find_set_tlssessioncache.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlssessionticketkeys@
identifier func = set_tlssessionticketkeys;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlssessionticketkeys@
func << find_set_tlssessionticketkeys.func;
T << find_set_tlssessionticketkeys.T;
P << find_set_tlssessionticketkeys.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlssessiontickets@
identifier func = set_tlssessiontickets;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlssessiontickets@
func << find_set_tlssessiontickets.func;
T << find_set_tlssessiontickets.T;
P << find_set_tlssessiontickets.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsstapling@
identifier func = set_tlsstapling;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsstapling@
func << find_set_tlsstapling.func;
T << find_set_tlsstapling.T;
P << find_set_tlsstapling.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsstaplingcache@
identifier func = set_tlsstaplingcache;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsstaplingcache@
func << find_set_tlsstaplingcache.func;
T << find_set_tlsstaplingcache.T;
P << find_set_tlsstaplingcache.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsstaplingoptions@
identifier func = set_tlsstaplingoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsstaplingoptions@
func << find_set_tlsstaplingoptions.func;
T << find_set_tlsstaplingoptions.T;
P << find_set_tlsstaplingoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsstaplingresponder@
identifier func = set_tlsstaplingresponder;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsstaplingresponder@
func << find_set_tlsstaplingresponder.func;
T << find_set_tlsstaplingresponder.T;
P << find_set_tlsstaplingresponder.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsstaplingtimeout@
identifier func = set_tlsstaplingtimeout;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsstaplingtimeout@
func << find_set_tlsstaplingtimeout.func;
T << find_set_tlsstaplingtimeout.T;
P << find_set_tlsstaplingtimeout.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlstimeouthandshake@
identifier func = set_tlstimeouthandshake;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlstimeouthandshake@
func << find_set_tlstimeouthandshake.func;
T << find_set_tlstimeouthandshake.T;
P << find_set_tlstimeouthandshake.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsusername@
identifier func = set_tlsusername;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsusername@
func << find_set_tlsusername.func;
T << find_set_tlsusername.T;
P << find_set_tlsusername.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsverifyclient@
identifier func = set_tlsverifyclient;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsverifyclient@
func << find_set_tlsverifyclient.func;
T << find_set_tlsverifyclient.T;
P << find_set_tlsverifyclient.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsverifydepth@
identifier func = set_tlsverifydepth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsverifydepth@
func << find_set_tlsverifydepth.func;
T << find_set_tlsverifydepth.T;
P << find_set_tlsverifydepth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsverifyorder@
identifier func = set_tlsverifyorder;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsverifyorder@
func << find_set_tlsverifyorder.func;
T << find_set_tlsverifyorder.T;
P << find_set_tlsverifyorder.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_tlsverifyserver@
identifier func = set_tlsverifyserver;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_tlsverifyserver@
func << find_set_tlsverifyserver.func;
T << find_set_tlsverifyserver.T;
P << find_set_tlsverifyserver.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_uniqueidengine@
identifier func = set_uniqueidengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_uniqueidengine@
func << find_set_uniqueidengine.func;
T << find_set_uniqueidengine.T;
P << find_set_uniqueidengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_useencoding@
identifier func = set_useencoding;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_useencoding@
func << find_set_useencoding.func;
T << find_set_useencoding.T;
P << find_set_useencoding.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_set_wrapengine@
identifier func = set_wrapengine;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapengine@
func << find_set_wrapengine.func;
T << find_set_wrapengine.T;
P << find_set_wrapengine.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wrapgrouptables@
identifier func = set_wrapgrouptables;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapgrouptables@
func << find_set_wrapgrouptables.func;
T << find_set_wrapgrouptables.T;
P << find_set_wrapgrouptables.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wraplog@
identifier func = set_wraplog;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wraplog@
func << find_set_wraplog.func;
T << find_set_wraplog.T;
P << find_set_wraplog.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wrapmsg@
identifier func = set_wrapmsg;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapmsg@
func << find_set_wrapmsg.func;
T << find_set_wrapmsg.T;
P << find_set_wrapmsg.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wrapoptions@
identifier func = set_wrapoptions;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapoptions@
func << find_set_wrapoptions.func;
T << find_set_wrapoptions.T;
P << find_set_wrapoptions.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wrapservicename@
identifier func = set_wrapservicename;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapservicename@
func << find_set_wrapservicename.func;
T << find_set_wrapservicename.T;
P << find_set_wrapservicename.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wraptables@
identifier func = set_wraptables;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wraptables@
func << find_set_wraptables.func;
T << find_set_wraptables.T;
P << find_set_wraptables.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_set_wrapusertables@
identifier func = set_wrapusertables;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_set_wrapusertables@
func << find_set_wrapusertables.func;
T << find_set_wrapusertables.T;
P << find_set_wrapusertables.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_sftp_hook_get_packet_write@
identifier func = sftp_hook_get_packet_write;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sftp_hook_get_packet_write@
func << find_sftp_hook_get_packet_write.func;
T << find_sftp_hook_get_packet_write.T;
P << find_sftp_hook_get_packet_write.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sftp_hook_set_auth_success_handler@
identifier func = sftp_hook_set_auth_success_handler;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sftp_hook_set_auth_success_handler@
func << find_sftp_hook_set_auth_success_handler.func;
T << find_sftp_hook_set_auth_success_handler.T;
P << find_sftp_hook_set_auth_success_handler.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sftp_hook_set_packet_handler@
identifier func = sftp_hook_set_packet_handler;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sftp_hook_set_packet_handler@
func << find_sftp_hook_set_packet_handler.func;
T << find_sftp_hook_set_packet_handler.T;
P << find_sftp_hook_set_packet_handler.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sftp_post_pass@
identifier func = sftp_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sftp_post_pass@
func << find_sftp_post_pass.func;
T << find_sftp_post_pass.T;
P << find_sftp_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sftppam_auth@
identifier func = sftppam_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sftppam_auth@
func << find_sftppam_auth.func;
T << find_sftppam_auth.T;
P << find_sftppam_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_shaper_post_err_pass@
identifier func = shaper_post_err_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_shaper_post_err_pass@
func << find_shaper_post_err_pass.func;
T << find_shaper_post_err_pass.T;
P << find_shaper_post_err_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_shaper_post_pass@
identifier func = shaper_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_shaper_post_pass@
func << find_shaper_post_pass.func;
T << find_shaper_post_pass.T;
P << find_shaper_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_shaper_pre_pass@
identifier func = shaper_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_shaper_pre_pass@
func << find_shaper_pre_pass.func;
T << find_shaper_pre_pass.T;
P << find_shaper_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_site_misc_mkdir@
identifier func = site_misc_mkdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_misc_mkdir@
func << find_site_misc_mkdir.func;
T << find_site_misc_mkdir.T;
P << find_site_misc_mkdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_misc_rmdir@
identifier func = site_misc_rmdir;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_misc_rmdir@
func << find_site_misc_rmdir.func;
T << find_site_misc_rmdir.T;
P << find_site_misc_rmdir.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_misc_symlink@
identifier func = site_misc_symlink;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_misc_symlink@
func << find_site_misc_symlink.func;
T << find_site_misc_symlink.T;
P << find_site_misc_symlink.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_site_misc_utime@
identifier func = site_misc_utime;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_site_misc_utime@
func << find_site_misc_utime.func;
T << find_site_misc_utime.T;
P << find_site_misc_utime.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_snmp_err_ccc@
identifier func = snmp_err_ccc;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_err_ccc@
func << find_snmp_err_ccc.func;
T << find_snmp_err_ccc.T;
P << find_snmp_err_ccc.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_err_list@
identifier func = snmp_err_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_err_list@
func << find_snmp_err_list.func;
T << find_snmp_err_list.T;
P << find_snmp_err_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_err_pass@
identifier func = snmp_err_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_err_pass@
func << find_snmp_err_pass.func;
T << find_snmp_err_pass.T;
P << find_snmp_err_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_err_retr@
identifier func = snmp_err_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_err_retr@
func << find_snmp_err_retr.func;
T << find_snmp_err_retr.T;
P << find_snmp_err_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_err_stor@
identifier func = snmp_err_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_err_stor@
func << find_snmp_err_stor.func;
T << find_snmp_err_stor.T;
P << find_snmp_err_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_auth@
identifier func = snmp_log_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_auth@
func << find_snmp_log_auth.func;
T << find_snmp_log_auth.T;
P << find_snmp_log_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_ccc@
identifier func = snmp_log_ccc;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_ccc@
func << find_snmp_log_ccc.func;
T << find_snmp_log_ccc.T;
P << find_snmp_log_ccc.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_list@
identifier func = snmp_log_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_list@
func << find_snmp_log_list.func;
T << find_snmp_log_list.T;
P << find_snmp_log_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_pass@
identifier func = snmp_log_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_pass@
func << find_snmp_log_pass.func;
T << find_snmp_log_pass.T;
P << find_snmp_log_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_retr@
identifier func = snmp_log_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_retr@
func << find_snmp_log_retr.func;
T << find_snmp_log_retr.T;
P << find_snmp_log_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_log_stor@
identifier func = snmp_log_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_log_stor@
func << find_snmp_log_stor.func;
T << find_snmp_log_stor.T;
P << find_snmp_log_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_pre_list@
identifier func = snmp_pre_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_pre_list@
func << find_snmp_pre_list.func;
T << find_snmp_pre_list.T;
P << find_snmp_pre_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_pre_retr@
identifier func = snmp_pre_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_pre_retr@
func << find_snmp_pre_retr.func;
T << find_snmp_pre_retr.T;
P << find_snmp_pre_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_snmp_pre_stor@
identifier func = snmp_pre_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_snmp_pre_stor@
func << find_snmp_pre_stor.func;
T << find_snmp_pre_stor.T;
P << find_snmp_pre_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_authenticate@
identifier func = sql_auth_authenticate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_authenticate@
func << find_sql_auth_authenticate.func;
T << find_sql_auth_authenticate.T;
P << find_sql_auth_authenticate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_check@
identifier func = sql_auth_check;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_check@
func << find_sql_auth_check.func;
T << find_sql_auth_check.T;
P << find_sql_auth_check.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_endgrent@
identifier func = sql_auth_endgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_endgrent@
func << find_sql_auth_endgrent.func;
T << find_sql_auth_endgrent.T;
P << find_sql_auth_endgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_endpwent@
identifier func = sql_auth_endpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_endpwent@
func << find_sql_auth_endpwent.func;
T << find_sql_auth_endpwent.T;
P << find_sql_auth_endpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getgrent@
identifier func = sql_auth_getgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getgrent@
func << find_sql_auth_getgrent.func;
T << find_sql_auth_getgrent.T;
P << find_sql_auth_getgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getgrgid@
identifier func = sql_auth_getgrgid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getgrgid@
func << find_sql_auth_getgrgid.func;
T << find_sql_auth_getgrgid.T;
P << find_sql_auth_getgrgid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getgrnam@
identifier func = sql_auth_getgrnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getgrnam@
func << find_sql_auth_getgrnam.func;
T << find_sql_auth_getgrnam.T;
P << find_sql_auth_getgrnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getgroups@
identifier func = sql_auth_getgroups;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getgroups@
func << find_sql_auth_getgroups.func;
T << find_sql_auth_getgroups.T;
P << find_sql_auth_getgroups.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getpwent@
identifier func = sql_auth_getpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getpwent@
func << find_sql_auth_getpwent.func;
T << find_sql_auth_getpwent.T;
P << find_sql_auth_getpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getpwnam@
identifier func = sql_auth_getpwnam;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getpwnam@
func << find_sql_auth_getpwnam.func;
T << find_sql_auth_getpwnam.T;
P << find_sql_auth_getpwnam.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_getpwuid@
identifier func = sql_auth_getpwuid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_getpwuid@
func << find_sql_auth_getpwuid.func;
T << find_sql_auth_getpwuid.T;
P << find_sql_auth_getpwuid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_gid2name@
identifier func = sql_auth_gid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_gid2name@
func << find_sql_auth_gid2name.func;
T << find_sql_auth_gid2name.T;
P << find_sql_auth_gid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_name2gid@
identifier func = sql_auth_name2gid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_name2gid@
func << find_sql_auth_name2gid.func;
T << find_sql_auth_name2gid.T;
P << find_sql_auth_name2gid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_name2uid@
identifier func = sql_auth_name2uid;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_name2uid@
func << find_sql_auth_name2uid.func;
T << find_sql_auth_name2uid.T;
P << find_sql_auth_name2uid.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_setgrent@
identifier func = sql_auth_setgrent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_setgrent@
func << find_sql_auth_setgrent.func;
T << find_sql_auth_setgrent.T;
P << find_sql_auth_setgrent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_setpwent@
identifier func = sql_auth_setpwent;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_setpwent@
func << find_sql_auth_setpwent.func;
T << find_sql_auth_setpwent.T;
P << find_sql_auth_setpwent.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_auth_uid2name@
identifier func = sql_auth_uid2name;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_auth_uid2name@
func << find_sql_auth_uid2name.func;
T << find_sql_auth_uid2name.T;
P << find_sql_auth_uid2name.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_change@
identifier func = sql_change;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_change@
func << find_sql_change.func;
T << find_sql_change.T;
P << find_sql_change.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_cleanup@
identifier func = sql_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_cleanup@
func << find_sql_cleanup.func;
T << find_sql_cleanup.T;
P << find_sql_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_closeconn@
identifier func = sql_closeconn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_closeconn@
func << find_sql_closeconn.func;
T << find_sql_closeconn.T;
P << find_sql_closeconn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_defineconn@
identifier func = sql_defineconn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_defineconn@
func << find_sql_defineconn.func;
T << find_sql_defineconn.T;
P << find_sql_defineconn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_escapestr@
identifier func = sql_escapestr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_escapestr@
func << find_sql_escapestr.func;
T << find_sql_escapestr.T;
P << find_sql_escapestr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_getratio@
identifier func = sql_getratio;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_getratio@
func << find_sql_getratio.func;
T << find_sql_getratio.T;
P << find_sql_getratio.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_getstats@
identifier func = sql_getstats;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_getstats@
func << find_sql_getstats.func;
T << find_sql_getstats.T;
P << find_sql_getstats.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_load_backend@
identifier func = sql_load_backend;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_load_backend@
func << find_sql_load_backend.func;
T << find_sql_load_backend.T;
P << find_sql_load_backend.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_lookup@
identifier func = sql_lookup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_lookup@
func << find_sql_lookup.func;
T << find_sql_lookup.T;
P << find_sql_lookup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_openconn@
identifier func = sql_openconn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_openconn@
func << find_sql_openconn.func;
T << find_sql_openconn.T;
P << find_sql_openconn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_passwd_pre_pass@
identifier func = sql_passwd_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_passwd_pre_pass@
func << find_sql_passwd_pre_pass.func;
T << find_sql_passwd_pre_pass.T;
P << find_sql_passwd_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_post_pass@
identifier func = sql_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_post_pass@
func << find_sql_post_pass.func;
T << find_sql_post_pass.T;
P << find_sql_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_post_retr@
identifier func = sql_post_retr;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_post_retr@
func << find_sql_post_retr.func;
T << find_sql_post_retr.T;
P << find_sql_post_retr.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_post_stor@
identifier func = sql_post_stor;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_post_stor@
func << find_sql_post_stor.func;
T << find_sql_post_stor.T;
P << find_sql_post_stor.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_pre_dele@
identifier func = sql_pre_dele;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_pre_dele@
func << find_sql_pre_dele.func;
T << find_sql_pre_dele.T;
P << find_sql_pre_dele.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_pre_pass@
identifier func = sql_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_pre_pass@
func << find_sql_pre_pass.func;
T << find_sql_pre_pass.T;
P << find_sql_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_prepare@
identifier func = sql_prepare;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_prepare@
func << find_sql_prepare.func;
T << find_sql_prepare.T;
P << find_sql_prepare.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_select@
identifier func = sql_select;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_select@
func << find_sql_select.func;
T << find_sql_select.T;
P << find_sql_select.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_cleanup@
identifier func = sql_sqlite_cleanup;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_cleanup@
func << find_sql_sqlite_cleanup.func;
T << find_sql_sqlite_cleanup.T;
P << find_sql_sqlite_cleanup.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_close@
identifier func = sql_sqlite_close;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_close@
func << find_sql_sqlite_close.func;
T << find_sql_sqlite_close.T;
P << find_sql_sqlite_close.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_def_conn@
identifier func = sql_sqlite_def_conn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_def_conn@
func << find_sql_sqlite_def_conn.func;
T << find_sql_sqlite_def_conn.T;
P << find_sql_sqlite_def_conn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_exit@
identifier func = sql_sqlite_exit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_exit@
func << find_sql_sqlite_exit.func;
T << find_sql_sqlite_exit.T;
P << find_sql_sqlite_exit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_identify@
identifier func = sql_sqlite_identify;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_identify@
func << find_sql_sqlite_identify.func;
T << find_sql_sqlite_identify.T;
P << find_sql_sqlite_identify.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_insert@
identifier func = sql_sqlite_insert;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_insert@
func << find_sql_sqlite_insert.func;
T << find_sql_sqlite_insert.T;
P << find_sql_sqlite_insert.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_open@
identifier func = sql_sqlite_open;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_open@
func << find_sql_sqlite_open.func;
T << find_sql_sqlite_open.T;
P << find_sql_sqlite_open.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_prepare@
identifier func = sql_sqlite_prepare;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_prepare@
func << find_sql_sqlite_prepare.func;
T << find_sql_sqlite_prepare.T;
P << find_sql_sqlite_prepare.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_procedure@
identifier func = sql_sqlite_procedure;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_procedure@
func << find_sql_sqlite_procedure.func;
T << find_sql_sqlite_procedure.T;
P << find_sql_sqlite_procedure.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_query@
identifier func = sql_sqlite_query;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_query@
func << find_sql_sqlite_query.func;
T << find_sql_sqlite_query.T;
P << find_sql_sqlite_query.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_quote@
identifier func = sql_sqlite_quote;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_quote@
func << find_sql_sqlite_quote.func;
T << find_sql_sqlite_quote.T;
P << find_sql_sqlite_quote.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_select@
identifier func = sql_sqlite_select;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_select@
func << find_sql_sqlite_select.func;
T << find_sql_sqlite_select.T;
P << find_sql_sqlite_select.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sql_sqlite_update@
identifier func = sql_sqlite_update;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sql_sqlite_update@
func << find_sql_sqlite_update.func;
T << find_sql_sqlite_update.T;
P << find_sql_sqlite_update.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_close@
identifier func = sqlodbc_close;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_close@
func << find_sqlodbc_close.func;
T << find_sqlodbc_close.T;
P << find_sqlodbc_close.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_def_conn@
identifier func = sqlodbc_def_conn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_def_conn@
func << find_sqlodbc_def_conn.func;
T << find_sqlodbc_def_conn.T;
P << find_sqlodbc_def_conn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_exit@
identifier func = sqlodbc_exit;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_exit@
func << find_sqlodbc_exit.func;
T << find_sqlodbc_exit.T;
P << find_sqlodbc_exit.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_identify@
identifier func = sqlodbc_identify;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_identify@
func << find_sqlodbc_identify.func;
T << find_sqlodbc_identify.T;
P << find_sqlodbc_identify.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_insert@
identifier func = sqlodbc_insert;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_insert@
func << find_sqlodbc_insert.func;
T << find_sqlodbc_insert.T;
P << find_sqlodbc_insert.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_open@
identifier func = sqlodbc_open;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_open@
func << find_sqlodbc_open.func;
T << find_sqlodbc_open.T;
P << find_sqlodbc_open.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_procedure@
identifier func = sqlodbc_procedure;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_procedure@
func << find_sqlodbc_procedure.func;
T << find_sqlodbc_procedure.T;
P << find_sqlodbc_procedure.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_query@
identifier func = sqlodbc_query;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_query@
func << find_sqlodbc_query.func;
T << find_sqlodbc_query.T;
P << find_sqlodbc_query.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_quote@
identifier func = sqlodbc_quote;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_quote@
func << find_sqlodbc_quote.func;
T << find_sqlodbc_quote.T;
P << find_sqlodbc_quote.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_select@
identifier func = sqlodbc_select;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_select@
func << find_sqlodbc_select.func;
T << find_sqlodbc_select.T;
P << find_sqlodbc_select.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_sqlodbc_update@
identifier func = sqlodbc_update;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_sqlodbc_update@
func << find_sqlodbc_update.func;
T << find_sqlodbc_update.T;
P << find_sqlodbc_update.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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

@find_start_ifversion@
identifier func = start_ifversion;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_start_ifversion@
func << find_start_ifversion.func;
T << find_start_ifversion.T;
P << find_start_ifversion.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_statcache_post_pass@
identifier func = statcache_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_statcache_post_pass@
func << find_statcache_post_pass.func;
T << find_statcache_post_pass.T;
P << find_statcache_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_statcache_pre_list@
identifier func = statcache_pre_list;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_statcache_pre_list@
func << find_statcache_pre_list.func;
T << find_statcache_pre_list.T;
P << find_statcache_pre_list.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_any@
identifier func = tls_any;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_any@
func << find_tls_any.func;
T << find_tls_any.T;
P << find_tls_any.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_auth@
identifier func = tls_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_auth@
func << find_tls_auth.func;
T << find_tls_auth.T;
P << find_tls_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_auth_check@
identifier func = tls_auth_check;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_auth_check@
func << find_tls_auth_check.func;
T << find_tls_auth_check.T;
P << find_tls_auth_check.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_authenticate@
identifier func = tls_authenticate;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_authenticate@
func << find_tls_authenticate.func;
T << find_tls_authenticate.T;
P << find_tls_authenticate.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_ccc@
identifier func = tls_ccc;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_ccc@
func << find_tls_ccc.func;
T << find_tls_ccc.T;
P << find_tls_ccc.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_log_auth@
identifier func = tls_log_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_log_auth@
func << find_tls_log_auth.func;
T << find_tls_log_auth.T;
P << find_tls_log_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_pbsz@
identifier func = tls_pbsz;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_pbsz@
func << find_tls_pbsz.func;
T << find_tls_pbsz.T;
P << find_tls_pbsz.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_post_auth@
identifier func = tls_post_auth;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_post_auth@
func << find_tls_post_auth.func;
T << find_tls_post_auth.T;
P << find_tls_post_auth.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_post_pass@
identifier func = tls_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_post_pass@
func << find_tls_post_pass.func;
T << find_tls_post_pass.T;
P << find_tls_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_post_user@
identifier func = tls_post_user;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_post_user@
func << find_tls_post_user.func;
T << find_tls_post_user.T;
P << find_tls_post_user.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_pre_xfer@
identifier func = tls_pre_xfer;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_pre_xfer@
func << find_tls_pre_xfer.func;
T << find_tls_pre_xfer.T;
P << find_tls_pre_xfer.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_prot@
identifier func = tls_prot;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_prot@
func << find_tls_prot.func;
T << find_tls_prot.T;
P << find_tls_prot.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_tls_sscn@
identifier func = tls_sscn;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_tls_sscn@
func << find_tls_sscn.func;
T << find_tls_sscn.T;
P << find_tls_sscn.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_wrap2_post_pass@
identifier func = wrap2_post_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_wrap2_post_pass@
func << find_wrap2_post_pass.func;
T << find_wrap2_post_pass.T;
P << find_wrap2_post_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_wrap2_post_pass_err@
identifier func = wrap2_post_pass_err;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_wrap2_post_pass_err@
func << find_wrap2_post_pass_err.func;
T << find_wrap2_post_pass_err.T;
P << find_wrap2_post_pass_err.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_wrap2_pre_pass@
identifier func = wrap2_pre_pass;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_wrap2_pre_pass@
func << find_wrap2_pre_pass.func;
T << find_wrap2_pre_pass.T;
P << find_wrap2_pre_pass.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
    params = ', '.join(param_list)

# Remove 'static' keyword from type if present
type_str = T
if type_str.startswith('static '):
    type_str = type_str[7:]  # Remove 'static '
type_str = type_str.strip()

# Print declaration (definition with { replaced by ;, static removed)
print(f"{type_str} {func}({params});")

// ----------------------------------------------------------------------

@find_wrap_handle_request@
identifier func = wrap_handle_request;
type T;
parameter list[n] P;
@@

(
T func(P) { ... }
|
static T func(P) { ... }
)

@script:python print_wrap_handle_request@
func << find_wrap_handle_request.func;
T << find_wrap_handle_request.T;
P << find_wrap_handle_request.P;
@@

# Convert parameter list to clean format
params = P
if ',' in params:
    # Clean up parameter formatting
    param_list = [p.strip() for p in params.split(',')]
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
