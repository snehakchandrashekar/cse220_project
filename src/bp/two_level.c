#include "two_level.h"

#include <stdlib.h>
#include <string.h>
#include "bp/bp.param.h"
#include "core.param.h"
#include "globals/utils.h"
#include "globals/assert.h"
#include "statistics.h"
#include "debug/debug_macros.h"

#define DEBUG(proc_id, args...) _DEBUG(proc_id, DEBUG_BP_DIR, ##args)

typedef enum {
    TWO_LEVEL_GAg = 0,
    TWO_LEVEL_GAp,
    TWO_LEVEL_PAg,
    TWO_LEVEL_PAp
} Two_Level_Type;

typedef struct {
    Two_Level_Type type;
    uns8 *bht;              // Branch History Table for per-address histories
    uns32 global_history;    // Global Branch History Register
    uns32 bht_entries;
    uns8 bht_entry_bits;    // Number of bits per BHT entry (history length)
    uns8 **pht;             // Pattern History Tables
    uns32 pht_entries;
    uns8 pht_ctr_bits;      // Number of bits per PHT counter
} Two_Level_BP;

static Two_Level_BP **two_level_bp_array = NULL;

void bp_two_level_init(void) {
    two_level_bp_array = (Two_Level_BP **)malloc(NUM_CORES * sizeof(Two_Level_BP *));
    for (uns proc_id = 0; proc_id < NUM_CORES; proc_id++) {
        Two_Level_BP *bp = (Two_Level_BP *)malloc(sizeof(Two_Level_BP));
        two_level_bp_array[proc_id] = bp;

        // Initialize parameters
        bp->type = (Two_Level_Type)BP_TWO_LEVEL_TYPE; // From parameters
        bp->bht_entries = TL_BHT_ENTRIES;
        bp->bht_entry_bits = TL_BHT_ENTRY_BITS;
        bp->pht_entries = TL_PHT_ENTRIES;
        bp->pht_ctr_bits = TL_PHT_CTR_BITS;


        // Initialize BHT
        if (bp->type == TWO_LEVEL_PAg || bp->type == TWO_LEVEL_PAp) {
            bp->bht = (uns8 *)malloc(bp->bht_entries * sizeof(uns8));
            memset(bp->bht, 0, bp->bht_entries * sizeof(uns8));
        } else {
            bp->global_history = 0;
        }

        // Initialize PHT
        if (bp->type == TWO_LEVEL_GAg || bp->type == TWO_LEVEL_PAg) {
            // Global PHT
            bp->pht = (uns8 **)malloc(sizeof(uns8 *));
            bp->pht[0] = (uns8 *)malloc(bp->pht_entries * sizeof(uns8));
            for (uns32 i = 0; i < bp->pht_entries; i++) {
                bp->pht[0][i] = 1 << (bp->pht_ctr_bits - 1); // Weakly taken
            }
        } else {
            // Per-address PHT
            bp->pht = (uns8 **)malloc(bp->bht_entries * sizeof(uns8 *));
            for (uns32 i = 0; i < bp->bht_entries; i++) {
                bp->pht[i] = (uns8 *)malloc(bp->pht_entries * sizeof(uns8));
                for (uns32 j = 0; j < bp->pht_entries; j++) {
                    bp->pht[i][j] = 1 << (bp->pht_ctr_bits - 1);
                }
            }
        }
    }
}

uns8 bp_two_level_pred(Op* op) {
    const uns proc_id = op->proc_id;
    Two_Level_BP *bp = two_level_bp_array[proc_id];
    Addr pc = op->oracle_info.pred_addr;

    uns8 history = 0;
    uns32 bht_index = 0;
    uns32 pht_index = 0;
    uns8 pht_ctr = 0;
    uns8 pred = 0;

    switch (bp->type) {
    case TWO_LEVEL_GAg:
        history = bp->global_history;
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr = bp->pht[0][pht_index];
        break;
    case TWO_LEVEL_GAp:
        history = bp->global_history;
        bht_index = (pc >> 2) % bp->bht_entries;
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr = bp->pht[bht_index][pht_index];
        break;
    case TWO_LEVEL_PAg:
        bht_index = (pc >> 2) % bp->bht_entries;
        history = bp->bht[bht_index];
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr = bp->pht[0][pht_index];
        break;
    case TWO_LEVEL_PAp:
        bht_index = (pc >> 2) % bp->bht_entries;
        history = bp->bht[bht_index];
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr = bp->pht[bht_index][pht_index];
        break;
    default:
        ASSERT(proc_id, 0);
    }

    pred = (pht_ctr >> (bp->pht_ctr_bits - 1)) & 1;

    DEBUG(proc_id, "Predicting op_num:%llu pc:0x%llx bht_idx:%u hist:%u pht_idx:%u pht_ctr:%u pred:%u\n",
          op->op_num, pc, bht_index, history, pht_index, pht_ctr, pred);

    return pred;
}

void bp_two_level_update(Op* op) {
    const uns proc_id = op->proc_id;
    Two_Level_BP *bp = two_level_bp_array[proc_id];
    Addr pc = op->oracle_info.pred_addr;

    uns8 history = 0;
    uns32 bht_index = 0;
    uns32 pht_index = 0;
    uns8 *pht_ctr_ptr = NULL;

    switch (bp->type) {
    case TWO_LEVEL_GAg:
        history = bp->global_history;
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr_ptr = &bp->pht[0][pht_index];
        break;
    case TWO_LEVEL_GAp:
        history = bp->global_history;
        bht_index = (pc >> 2) % bp->bht_entries;
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr_ptr = &bp->pht[bht_index][pht_index];
        break;
    case TWO_LEVEL_PAg:
        bht_index = (pc >> 2) % bp->bht_entries;
        history = bp->bht[bht_index];
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr_ptr = &bp->pht[0][pht_index];
        break;
    case TWO_LEVEL_PAp:
        bht_index = (pc >> 2) % bp->bht_entries;
        history = bp->bht[bht_index];
        pht_index = history & (bp->pht_entries - 1);
        pht_ctr_ptr = &bp->pht[bht_index][pht_index];
        break;
    default:
        ASSERT(proc_id, 0);
    }

    // Update PHT counter
    if (op->oracle_info.dir) {
        *pht_ctr_ptr = SAT_INC(*pht_ctr_ptr, N_BIT_MASK(bp->pht_ctr_bits));
    } else {
        *pht_ctr_ptr = SAT_DEC(*pht_ctr_ptr, 0);
    }

    // Update history
    if (bp->type == TWO_LEVEL_GAg || bp->type == TWO_LEVEL_GAp) {
        bp->global_history = ((bp->global_history << 1) | (op->oracle_info.dir & 1)) & N_BIT_MASK(bp->bht_entry_bits);
    } else {
        bp->bht[bht_index] = ((bp->bht[bht_index] << 1) | (op->oracle_info.dir & 1)) & N_BIT_MASK(bp->bht_entry_bits);
    }

    DEBUG(proc_id, "Updating op_num:%llu pc:0x%llx bht_idx:%u hist:%u pht_idx:%u pht_ctr:%u dir:%u\n",
          op->op_num, pc, bht_index, history, pht_index, *pht_ctr_ptr, op->oracle_info.dir);
}

// Implement other required functions
void bp_two_level_timestamp(Op* op) {}
void bp_two_level_spec_update(Op* op) {}
void bp_two_level_retire(Op* op) {}
void bp_two_level_recover(Recovery_Info* info) {}
uns8 bp_two_level_full(uns proc_id) { return 0; }