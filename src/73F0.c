#include "ultra64.h"
#include "functions.h"
#include "structs.h"
#include "variables.h"

s32 func_80041170(char* arg0, u8 arg1) {
    register s32 var_s0;
    register char* temp_s1;

    if ((arg0 == NULL) || (D_8011FBD0 == NULL)) {
        return 0;
    }
    temp_s1 = D_8011FBD0->unk4[arg1];
    if (temp_s1[1] == 7) {
        arg0[0] = 7;
        var_s0 = 0;
        arg0[1] = 7U;
    } else {
        if (func_8006AB84(temp_s1[3]) != 0) {
            arg0[0] = 0xA;
        } else {
            arg0[0] = 9;
        }
        var_s0 = 1;
        arg0[1] = (u8) temp_s1[1];
    }
    arg0[2] = (u8) temp_s1[2];
    return var_s0;
}
