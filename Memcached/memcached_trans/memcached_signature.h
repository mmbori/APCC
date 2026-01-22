#ifndef MEMCACHED_SIGNATURE_H
#define MEMCACHED_SIGNATURE_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 20
 * Total unique (fp, func) pairs: 55
 */

#include <stdlib.h>
#include <stdbool.h>

/* Forward declarations */
typedef unsigned int rel_time_t;
// typedef struct evutil_socket_t  evutil_socket_t;
typedef struct io_queue_s io_queue_t;
typedef struct _crawler_module_t crawler_module_t;
typedef struct conn  conn;

#ifndef STRUCT_ITEM
#define STRUCT_ITEM
typedef struct _stritem {
    /* Protected by LRU locks */
    struct _stritem *next;
    struct _stritem *prev;
    /* Rest are protected by an item lock */
    struct _stritem *h_next;    /* hash chain next */
    rel_time_t      time;       /* least recent access */
    rel_time_t      exptime;    /* expire time */
    int             nbytes;     /* size of data */
    unsigned short  refcount;
    uint16_t        it_flags;   /* ITEM_* above */
    uint8_t         slabs_clsid;/* which slab class we're in */
    uint8_t         nkey;       /* key length, w/terminating null and padding */
    /* this odd type prevents type-punning issues when we do
     * the little shuffle to save space when not using CAS. */
    union {
        uint64_t cas;
        char end;
    } data[];
    /* if it_flags & ITEM_CAS we have 8 bytes CAS */
    /* then null-terminated key */
    /* then " flags length\r\n" (no terminating null) */
    /* then data with terminating \r\n (no terminating null; it's binary!) */
} item;
#endif


/* =============== add_stats (1 functions) =============== */

typedef enum {
    add_stats_append_stats = 1868825
} add_stats_enum_t;

/* =============== cb (6 functions) =============== */

typedef enum {
    cb_NULL = 420610,
    cb__slabs_locked_cb = 4615226,
    cb_proxy_submit_cb = 4109603,
    cb_storage_submit_cb = 3745854,
    cb_thread_libevent_ionotify = 2342057,
    cb_thread_libevent_process = 1720583
} cb_enum_t;

/* =============== ccb (1 functions) =============== */

typedef enum {
    ccb__mc_meta_load_cb = 9150732
} ccb_enum_t;

/* =============== doneclass (2 functions) =============== */

typedef enum {
    doneclass_NULL = 1459591,
    doneclass_crawler_expired_doneclass = 9907820
} doneclass_enum_t;

/* =============== eval (3 functions) =============== */

typedef enum {
    eval_crawler_expired_eval = 7079673,
    eval_crawler_metadump_eval = 534224,
    eval_crawler_mgdump_eval = 500914
} eval_enum_t;

/* =============== f_acc512 (1 functions) =============== */

typedef enum {
    f_acc512_XXH3_accumulate_512 = 1572945
} f_acc512_enum_t;

/* =============== f_hashLong (3 functions) =============== */

typedef enum {
    f_hashLong_XXH3_hashLong_64b_default = 3669136,
    f_hashLong_XXH3_hashLong_64b_withSecret = 3904402,
    f_hashLong_XXH3_hashLong_64b_withSeed = 8479454
} f_hashLong_enum_t;

/* =============== f_hl128 (3 functions) =============== */

typedef enum {
    f_hl128_XXH3_hashLong_128b_default = 446199,
    f_hl128_XXH3_hashLong_128b_withSecret = 9417129,
    f_hl128_XXH3_hashLong_128b_withSeed = 3336942
} f_hl128_enum_t;

/* =============== f_initSec (1 functions) =============== */

typedef enum {
    f_initSec_XXH3_initCustomSecret = 9143600
} f_initSec_enum_t;

/* =============== f_scramble (1 functions) =============== */

typedef enum {
    f_scramble_XXH3_scrambleAcc = 7039374
} f_scramble_enum_t;

/* =============== finalize (3 functions) =============== */

typedef enum {
    finalize_crawler_expired_finalize = 3699379,
    finalize_crawler_metadump_finalize = 7537477,
    finalize_crawler_mgdump_finalize = 9887237
} finalize_enum_t;

/* =============== free (2 functions) =============== */

typedef enum {
    free_slab_automove_extstore_free = 4668265,
    free_slab_automove_free = 110031
} free_enum_t;

/* =============== init (5 functions) =============== */

typedef enum {
    init_crawler_expired_init = 2679638,
    init_crawler_metadump_init = 7091293,
    init_crawler_mgdump_init = 5709456,
    init_slab_automove_extstore_init = 4662907,
    init_slab_automove_init = 2609513
} init_enum_t;

/* =============== read (3 functions) =============== */

typedef enum {
    read_NULL = 3613365,
    read_ssl_read = 5648119,
    read_tcp_read = 1715803
} read_enum_t;

/* =============== run (2 functions) =============== */

typedef enum {
    run_slab_automove_extstore_run = 1557017,
    run_slab_automove_run = 6375122
} run_enum_t;

/* =============== scb (1 functions) =============== */

typedef enum {
    scb__mc_meta_save_cb = 1623631
} scb_enum_t;

/* =============== sendmsg (2 functions) =============== */

typedef enum {
    sendmsg_NULL = 6023674,
    sendmsg_tcp_sendmsg = 5771619
} sendmsg_enum_t;

/* =============== submit_cb (6 functions) =============== */

typedef enum {
    submit_cb_NULL = 4438923,
    submit_cb__slabs_locked_cb = 729977,
    submit_cb_proxy_submit_cb = 7708870,
    submit_cb_storage_submit_cb = 8997414,
    submit_cb_thread_libevent_ionotify = 2095235,
    submit_cb_thread_libevent_process = 6351753
} submit_cb_enum_t;

/* =============== try_read_command (6 functions) =============== */

typedef enum {
    try_read_command_try_read_command_ascii = 1323047,
    try_read_command_try_read_command_asciiauth = 9262704,
    try_read_command_try_read_command_binary = 4919715,
    try_read_command_try_read_command_negotiate = 6068228,
    try_read_command_try_read_command_proxy = 9687361,
    try_read_command_try_read_command_udp = 3227067
} try_read_command_enum_t;

/* =============== write (3 functions) =============== */

typedef enum {
    write_NULL = 1167941,
    write_ssl_write = 769805,
    write_tcp_write = 3824498
} write_enum_t;


int _mc_meta_load_cb(const char *tag , void *ctx , void *data);
int _mc_meta_save_cb(const char *tag , void *ctx , void *data);
int _slabs_locked_cb(void *arg);
void append_stats(const char *key , const uint16_t klen , const char *val , const uint32_t vlen , const void *cookie);
void crawler_expired_doneclass(crawler_module_t *cm , int slab_cls);
void crawler_expired_eval(crawler_module_t *cm , item *search , uint32_t hv , int i);
void crawler_expired_finalize(crawler_module_t *cm);
int crawler_expired_init(crawler_module_t *cm , void *data);
void crawler_metadump_eval(crawler_module_t *cm , item *it , uint32_t hv , int i);
void crawler_metadump_finalize(crawler_module_t *cm);
int crawler_metadump_init(crawler_module_t *cm , void *data);
void crawler_mgdump_eval(crawler_module_t *cm , item *it , uint32_t hv , int i);
void crawler_mgdump_finalize(crawler_module_t *cm);
int crawler_mgdump_init(crawler_module_t *cm , void *data);
void slab_automove_free(void *arg);
// void *slab_automove_init(struct settings *settings);
void slab_automove_run(void *arg , int *src , int *dst);
ssize_t ssl_read(struct conn *c , void *buf , size_t count);
ssize_t ssl_write(struct conn *c , const void *buf , size_t count);
// ssize_t tcp_read(struct conn *c , void *buf , size_t count);
// ssize_t tcp_sendmsg(conn *arg , struct msghdr *msg , int flags);
// ssize_t tcp_write(struct conn *c , const void *buf , size_t count);
// void thread_libevent_ionotify(evutil_socket_t fd , short which , void *arg);
// void thread_libevent_process(evutil_socket_t fd , short which , void *arg);
int try_read_command_ascii(conn *c);
int try_read_command_asciiauth(conn *c);
int try_read_command_binary(conn *c);
int try_read_command_negotiate(conn *c);
int try_read_command_udp(conn *c);
void slab_automove_extstore_free(void *arg);
void slab_automove_extstore_run(void *arg, int *src, int *dst);
void proxy_submit_cb(io_queue_t *q);
void storage_submit_cb(io_queue_t *q);
int try_read_command_proxy(conn *c);
// void *slab_automove_extstore_init(struct settings *settings);

ssize_t tcp_read(conn *arg, void *buf, size_t count);

#endif /* MEMCACHED_SIGNATURE_H */
