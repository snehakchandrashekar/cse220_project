// two_level.h

#ifndef TWO_LEVEL_H
#define TWO_LEVEL_H

#include "op.h"

void bp_two_level_init(void);
uns8 bp_two_level_pred(Op* op);
void bp_two_level_spec_update(Op* op);
void bp_two_level_update(Op* op);
void bp_two_level_recover(Recovery_Info* info);
void bp_two_level_retire(Op* op);
void bp_two_level_timestamp(Op* op);
uns8 bp_two_level_full(uns proc_id);
void bp_two_level_free(void); // Add this prototype

#endif // TWO_LEVEL_H
