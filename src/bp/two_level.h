#ifndef __TWO_LEVEL_H__
#define __TWO_LEVEL_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "bp/bp.h"

/*************Interface to Scarab***************/
void bp_two_level_init(void);
void bp_two_level_timestamp(Op*);
uns8 bp_two_level_pred(Op*);
void bp_two_level_spec_update(Op*);
void bp_two_level_update(Op*);
void bp_two_level_retire(Op*);
void bp_two_level_recover(Recovery_Info*);
uns8 bp_two_level_full(uns);

#ifdef __cplusplus
}
#endif

#endif  // __TWO_LEVEL_H__
