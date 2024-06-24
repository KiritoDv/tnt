// This file matches with -O1 -mips1
#include "common.h"

void func_8004A34C(void);
void func_800746C0(s32*, s32, s32);
s32 func_80074888(s32*, s32);
s32 func_8007E03C(s32);
void func_8007E328(s32);

extern s32 D_273A00;

#pragma GLOBAL_ASM("asm/us/nonmatchings/1D300/func_80057080.s")

void func_800570B0(s32* arg0, s32 arg1) {
    func_8004A34C();
    *arg0 = func_8007E03C(func_80074888(&D_273A00, arg1));
    func_800746C0(&D_273A00, *arg0, arg1);
}

void func_80057114(s32* arg0) {
    func_8007E328(*arg0);
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/1D300/func_80057140.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/1D300/func_800571D4.s")

void func_800572F8(s32* arg0) {
    func_8007E328(arg0[0]);
    func_8007E328(arg0[1]);
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/1D300/func_80057338.s")
