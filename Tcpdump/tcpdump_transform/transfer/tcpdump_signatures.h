#ifndef TCPDUMP_SIGNATURES_H
#define TCPDUMP_SIGNATURES_H

/*
 * Function Pointer Signatures - Auto-generated
 * Total function pointers: 4
 * Total unique (fp, func) pairs: 10
 */

#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#define invalidFunctionWasCalled() \
    _invalidFunctionWasCalled(__FILE__, __LINE__, __func__)

static inline void _invalidFunctionWasCalled(const char *file, int line, const char *func)
{
    fprintf(stderr, "\n[ERROR] Invalid function pointer call detected!\n");
    fprintf(stderr, "        Location: %s:%d\n", file, line);
    fprintf(stderr, "        Function: %s\n", func);
    fprintf(stderr, "        A function pointer with unspecified signature was invoked.\n");
    fprintf(stderr, "        This indicates incomplete static analysis or missing assignment.\n\n");

    /* Uncomment to abort on error (recommended for debugging) */
    /* abort(); */

    /* Or just continue (for testing/fuzzing) */
}

/* Forward declarations */
typedef struct netdissect_options netdissect_options;

/* =============== addr_string (2 functions) =============== */

typedef enum {
    addr_string_eui64_string = 1868825,
    addr_string_mac48_string = 420610
} addr_string_enum_t;

/* =============== clear_rtn (2 functions) =============== */

typedef enum {
    clear_rtn_isis_clear_checksum_lifetime = 4615226,
    clear_rtn_rsvp_clear_checksum = 4109603
} clear_rtn_enum_t;

/* =============== print_encap_header (2 functions) =============== */

typedef enum {
    print_encap_header_NULL = 3745854,
    print_encap_header_lane_hdr_print = 2342057
} print_encap_header_enum_t;

/* =============== print_switch_tag (4 functions) =============== */

typedef enum {
    print_switch_tag_NULL = 1720583,
    print_switch_tag_brcm_tag_print = 9150732,
    print_switch_tag_dsa_tag_print = 1459591,
    print_switch_tag_edsa_tag_print = 9907820
} print_switch_tag_enum_t;


void brcm_tag_print(netdissect_options *ndo , const u_char *bp);
void dsa_tag_print(netdissect_options *ndo , const u_char *bp);
void edsa_tag_print(netdissect_options *ndo , const u_char *bp);
const char *eui64_string(netdissect_options *ndo , const uint8_t *ep);
void isis_clear_checksum_lifetime(void *header);
void lane_hdr_print(netdissect_options *ndo , const u_char *bp);
const char *mac48_string(netdissect_options *ndo , const uint8_t *ep);
void rsvp_clear_checksum(void *header);

#endif /* TCPDUMP_SIGNATURES_H */
