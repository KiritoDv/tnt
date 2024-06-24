#include "common.h"
// this file matches with -O1 -mips1

typedef struct {
    char pad[0x11];
    s8 unk_11;
    s8 unk_12;
    char pad_14[0x1A];
    s16 unk_2E;
    s16 unk_30;
} UnkStruct_80067020;

typedef struct {
    u8 unk_0;
    char pad_4[0x13];
    u8 unk_14;
    char pad_18[0xB];
    u8 unk_20;
    char pad_24[0x51F];
    u8 unk_540;
    char pad_541[0x7];
    u8 unk_548;
} UnkStruct_80067D50;

void func_80064FB0(void*);
void func_80066730(void*);
void func_80070D00(s32);

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066920.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066AA8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066B3C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066BB4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066BE8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066C10.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066CC8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066D0C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066D8C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80066ED4.s")

s32 func_80067020(UnkStruct_80067020* arg0) {
    if (((arg0->unk_11 << 8) != arg0->unk_2E) || ((arg0->unk_12 << 8) != arg0->unk_30)) {
        return 0;
    } else {
        return 1;
    }
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_8006705C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067078.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_8006715C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067254.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_8006734C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_800675A8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067604.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_800676AC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067708.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_800677B8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067BC0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067C1C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067D1C.s")

void func_80067D50(UnkStruct_80067D50* arg0) {
    if (arg0->unk_0 == 1) {
        func_80070D00(0x100);
        arg0->unk_548 = (arg0->unk_14 * 0x60) >> 8;
        func_80066730(&arg0->unk_540);
        arg0->unk_20 = arg0->unk_14;
        func_80064FB0(&arg0->unk_20);
    }
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80067DD8.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2CBA0/func_80068090.s")
