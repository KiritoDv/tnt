#include "ultra64.h"
#include "variables.h"
#include "functions.h"
#include "structs.h"

#define MEMBER_ACCESS(_struct, ptr, index, member) ((struct _struct*) ((char*) ptr + (index * 0x30)))->member

void func_80069830(struct UnkStruct_80069830* arg0) {
    register u32 var_s0;
    register int var_s1;
    register int var_s2;

    for (var_s0 = 0, var_s1 = TRUE; var_s0 < 0x14; var_s0++) {
        var_s2 = func_8006952C(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s0, unk0) + 0x2C, 1);
        if (var_s2 != 1) {
            var_s1 = FALSE;
        }
    }

    if (var_s1) {
        arg0->unk0 = 0;
        arg0->unk1 = 2;
        arg0->unk2 = 1;
    }
}

void func_800698E0(struct UnkStruct_80069830* arg0) {
    register char* var_s0;
    register u32 var_s1;
    register s32 temp_s2;
    register s32 temp_s3;
    register s32 var_s4;
    register s32 temp_v0;

    if ((arg0->unk.unk3F0 == 4) && (D_8011FB70->unk13 == 5)) {
        var_s4 = 1;
        func_800529A8(D_8011EF10 + 0x14, 1);
    } else {
        var_s4 = 0;
    }

    if (arg0->unk.unk3F0 < 4U) {
        if (arg0->unk.unk3F0 >= 2U) {
            func_80073030(arg0->unk.unk3F0 - 1);
        }
    } else {
        func_80073030(arg0->unk.unk3F0);
    }

    for (var_s1 = 0, var_s0 = &arg0->unk0 + 3; var_s1 < 0x14U; var_s1++, var_s0 += 2) {
        func_80069668(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s1, unk0) + 0x2C);

        if (var_s0[1] != 0) {
            func_800529A8(D_8011EF10 + 0x14, 1);
            temp_v0 = func_8006AC2C(var_s1, 1);
            func_800529A8(D_8011EF10 + 0x14, temp_v0 * 5);
            temp_s2 = temp_v0 > 0;
            temp_v0 = func_8006AC2C(var_s1, 2);
            func_800529A8(D_8011EF10 + 0x14, temp_v0 * 0xA);
            temp_s3 = temp_v0 > 0;

            if (temp_s2 || temp_s3) {
                D_800D0540++;
                func_80073030(1U);
            }

            if (temp_s3 != 0) {
                func_800696F4(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s1, unk0) + 0x2C, var_s1, 3);
            } else if (temp_s2 != 0) {
                func_800696F4(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s1, unk0) + 0x2C, var_s1, 2);
            } else if (var_s4 != 0) {
                func_800696F4(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s1, unk0) + 0x2C, var_s1, 4);
            } else {
                func_800696F4(&MEMBER_ACCESS(UnkStruct_80069830, arg0, var_s1, unk0) + 0x2C, var_s1, 1);
            }
        }
    }

    if (D_800D0540) {
        switch (D_800D0540) {
            case 1:
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0xF);
                goto zero;
            case 2:
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0xF);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x11);
                goto zero;
            case 3:
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0xF);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x11);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x13);
                goto zero;
            case 4:
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0xF);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x11);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x12);
                func_8008A5C8(&D_801235B0, &D_800D3A90, 0x13);
            zero:
                D_800D0540 = 0;
                break;
            default:
                goto zero;
                break;
        }
    }
    func_80072300(D_8011EF21);
    arg0->unk0 = 3;
    arg0->unk2 = 0;
}

s32 func_80069CF0(s32 arg0, s32 arg1) {
    register s32 var_a2;
    register u8** var_a3;

    var_a3 = (u8**) &D_8011FBD0->unk4[arg1 * 0xA];

    for (var_a2 = 0; var_a2 <= 9; var_a2++, var_a3++) {
        if (*(*var_a3 + 1) == 7) {
            return 0;
        }
    }
    return 1;
}

void func_80069D60(struct UnkStruct_80069830* arg0) {
    register s32 var_s0;
    register char* var_s1;
    register s32 var_s2;

    var_s0 = 0;
    var_s1 = &arg0->unk0 + 3;

    for (var_s2 = 0; var_s2 < 0x14; var_s2++, var_s1 += 2) {
        var_s1[1] = 0;

        if ((var_s1[0] == 0) || (arg0->unk.unk3F4 < var_s2)) {
            continue;
        } else {
            if (func_80069CF0(arg0, var_s2)) {
                var_s1[1] = 1;
                var_s0 += 1;
            }
            var_s1[0] = 0;
        }
    }
    arg0->unk.unk3F0 = var_s0;
    arg0->unk.unk3EC += var_s0;
}

void func_80069E2C(struct UnkStruct_80069830* arg0) {
    func_80069D60(arg0);
    if (arg0->unk.unk3F0 == 0) {
        arg0->unk1 = 1;
        return;
    }
    arg0->unk0 = 2;
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_80069E84.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_80069EC0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_80069F10.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_80069F68.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_80069FB8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A050.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A3EC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A410.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A47C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A4EC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A6BC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A6F0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A708.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A740.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A9A4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A9BC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006A9F4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AB84.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006ABA4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006ABF4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AC2C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AD0C.s")

void func_8006ADA4(void) {
    register struct UnkStruct_8011FBA0* var_a0 = D_8011FBA0;
    register struct UnkStruct_8011FBA0_array* var_a1;
    register u32 var_a2;

    var_a0->unk3 = 0;

    var_a1 = var_a0->arr;

    for (var_a2 = 0; var_a2 < 0x2C; var_a2++, var_a1++) {
        var_a1->unk2 = var_a2;
        var_a1->unk0 = 0;
    }
}

void func_8006ADE4(void) {
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006ADEC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AE58.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AEBC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AF00.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006AF70.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006B050.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006B248.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2FAB0/func_8006B384.s")
