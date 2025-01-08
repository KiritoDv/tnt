#include "common.h"
// nextpieces.c ?

typedef struct {
    u8 unk_0;
    char pad_1[0x2918];
    s8 unk_2919;
} UnkStruct_8011FB80;

void func_8006883C();

extern UnkStruct_8011FB80* D_8011FB80;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
} UnkStruct_80068204;

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_800680A0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068158.s")

// -O2 -mips1 || -O1 -mips1
void func_80068204(UnkStruct_80068204* arg0) {
    arg0->unk2 = arg0->unk2 + arg0->unk6;
    arg0->unk4 = arg0->unk4 + arg0->unk8;
    arg0->unkE = arg0->unkE + arg0->unk10;
    arg0->unkA = arg0->unkA + arg0->unkC;
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068248.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_8006832C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_800683E4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_800684E0.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_800685AC.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_8006883C.s")

void func_800688E0(void) {
    register UnkStruct_8011FB80* temp = D_8011FB80;

    temp->unk_0 = 1;
    temp->unk_2919 = 0x14;
}

void func_80068904(void) {
    register UnkStruct_8011FB80* temp = D_8011FB80;
    if ((*temp).unk_0 == 1) {
        func_8006883C();
    }
}

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068940.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_800689C4.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068A84.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068B18.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068B7C.s")

#pragma GLOBAL_ASM("asm/us/nonmatchings/2E320/func_80068F10.s")

void func_80068FDC(void) {
}
