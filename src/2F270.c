#include "common.h"
// -01 -mips1

void func_8008A5C8(s32*, s32*, s32);
extern s32 D_800D3A90;
extern s32 D_801235B0;

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_80068FF0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800690E4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_80069160.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800692FC.s")

void func_8006942C(u8* arg0, s32 arg1) {
    arg0[4] = (u8) (arg0[4] - 1);
    if (arg0[4] == 0) {
        arg0[0] = 7;
        func_8008A5C8(&D_801235B0, &D_800D3A90, 0x10);
    }
    arg0[3] = 1;
    arg0[2] = 0;
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800694B0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_8006952C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_80069668.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_80069684.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_8006969C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800696B8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800696D8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2F270/func_800696F4.s")
