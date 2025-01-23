#include "ultra64.h"
#include "variables.h"
#include "structs.h"
#include "functions.h"

extern u8* D_800E1F20;

s32 func_8007E03C(int);  /* extern */
void func_8007E328(s32); /* extern */
void func_800412E0(void*);
void func_800413C0(u8, s8, u8, s32);
s32 func_800416CC(u8, s8, u8);
s32 func_80041810(u8, s8, u8);
s32 func_80041B48(s8, s8, s32, u8*, void*);

s32 func_80066D8C(struct UnkStruct_8011FB70*, s32, s8, s8); /* extern */

u8 func_8003DBC0(s32 arg0, s8 arg1, s32 arg2) {
    register s8 var_s0;
    register s8 var_s1;
    register s8 temp_s2;
    u8 sp2C;

    if (D_8011FB70->pad[0] != 1) {
        return FALSE;
    }

    sp2C = FALSE;
    temp_s2 = arg1 - D_8011FB70->unk12;

    for (var_s1 = temp_s2 - 1; var_s1 < (temp_s2 + 2); var_s1++) {
        if (func_80066D8C(D_8011FB70, 0, var_s1, 0) != 0) {
            for (var_s0 = -2; var_s0 < 2; var_s0++) {

                if ((var_s0 != 0) && (func_80066D8C(D_8011FB70, 0, var_s1, var_s0) != 0) &&
                    (func_80066D8C(D_8011FB70, -1, var_s1, var_s0) == 0) &&
                    (func_80066D8C(D_8011FB70, 1, var_s1, var_s0) == 0) &&
                    (func_80066D8C(D_8011FB70, 0, var_s1 - 1, var_s0) == 0) &&
                    (func_80066D8C(D_8011FB70, 0, var_s1 + 1, var_s0) == 0)) {

                    sp2C = TRUE;

                    break;
                }
            }
            if (sp2C) {
                break;
            }
        }
    }
    return sp2C;
}

s32 func_8003DDA8(u8 arg0, s8 arg1, u8 arg2) {
    register s8 var_s0;
    register s8 var_s1;
    register u8 var_s2;
    register s8 var_s3;
    u8 sp33;
    u8 sp32;
    u8 sp31;

    func_800412E0(&sp33);

    var_s2 = FALSE;

    for (var_s3 = arg1 - 1; var_s3 < (arg1 + 4); var_s3++) {
        if ((func_80041810(arg0, var_s3, arg2) != 0) && (func_800416CC(arg0, var_s3, arg2) != 0)) {
            func_800413C0(arg0, var_s3, arg2, 8);
            if ((var_s3 - 3) > 0) {
                var_s1 = var_s3 - 3;
            } else {
                var_s1 = 0;
            }

            for (; var_s3 >= var_s1; var_s1++) {
                if ((arg0 - 3) > 0) {
                    var_s0 = (arg0 - 3);
                } else {
                    var_s0 = 0;
                }

                for (; arg0 >= var_s0; var_s0++) {
                    if ((func_80041B48(var_s0, var_s1, &sp33, &sp32, &sp31) != 0) && (sp32 == 4)) {
                        var_s2 = TRUE;
                        break;
                    }
                }

                if (var_s2) {
                    break;
                }
            }
            func_800413C0(arg0, var_s3, arg2, 7);

            if (var_s2) {
                break;
            }
        }
    }
    return var_s2 & 0xFF;
}

void func_8003DFA0(void) {
    register u8 var_s0;

    D_800E1F20 = func_8007E03C(0x962);

    for (var_s0 = 0; var_s0 < 2; var_s0++) {
        D_800E1F20[var_s0] = 0;
    }
}

void func_8003E004(void) {
    if (D_800E1F20 != 0) {
        func_8007E328(D_800E1F20);
        D_800E1F20 = 0;
    }
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/3E40/func_8003E038.s")
