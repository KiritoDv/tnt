// This file matches with -O1 -mips1
#include "ultra64.h"
#include "common.h"

struct UnkStruct_80057080 {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
};

struct UnkStruct_800571D4 {
    s32 unk0;
    s32 unk4;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

void func_8004A34C(void);
void func_800746C0(s32*, s32, s32);
s32 func_80074888(s32*, s32);
s32 func_8007E03C(s32);
void func_8007E328(s32);
void func_80057460(Gfx**, s32, s32, s16, s32, s32, s32, s32, s32);
void func_8005DB90(Gfx**, s32, s32, s16, s32, s32, s32, s32, s32, s32, s32);

extern s32 D_273A00;
extern Gfx* D_800E20C0;

void func_80057080(struct UnkStruct_80057080* arg0) {
    arg0->unk0 = 0;
    arg0->unk4 = 0;
    arg0->unk6 = 0;
    arg0->unk8 = 0xFF, arg0->unk9 = 0xFF, arg0->unkA = 0xFF, arg0->unkB = 0xFF;
}

void func_800570B0(s32* arg0, s32 arg1) {
    func_8004A34C();
    *arg0 = func_8007E03C(func_80074888(&D_273A00, arg1));
    func_800746C0(&D_273A00, *arg0, arg1);
}

void func_80057114(s32* arg0) {
    func_8007E328(*arg0);
}

void func_80057140(struct UnkStruct_80057080* arg0) {
    gDPPipeSync(D_800E20C0++);
    func_80057460(&D_800E20C0, arg0->unk0, 0, arg0->unk4, (s32) arg0->unk6, (s32) arg0->unk8, (s32) arg0->unk9,
                  (s32) arg0->unkA, (s32) arg0->unkB);
}

void func_800571D4(struct UnkStruct_800571D4* arg0, s32 arg1, s32 arg2) {
    register int temp_s0;
    register int temp_s1;
    register char temp_s2;
    register char temp_s3;

    func_8004A34C();

    temp_s0 = func_80074888(&D_273A00, arg1);

    temp_s1 = func_80074888(&D_273A00, arg2);

    arg0->unk0 = func_8007E03C(temp_s0);

    func_800746C0(&D_273A00, arg0->unk0, arg1);

    arg0->unk4 = func_8007E03C(temp_s1);

    func_800746C0(&D_273A00, arg0->unk4, arg2);

    arg0->unk8 = 0;
    arg0->unkA = 0;
    arg0->unkC = 0x400;
    arg0->unkE = 0x400;
    arg0->unk13 = 0xFFU;
    temp_s3 = arg0->unk13;
    arg0->unk12 = temp_s3;
    temp_s2 = temp_s3;
    arg0->unk11 = temp_s2;
    arg0->unk10 = temp_s2;
}

void func_800572F8(s32* arg0) {
    func_8007E328(arg0[0]);
    func_8007E328(arg0[1]);
}

void func_80057338(struct UnkStruct_800571D4* arg0) {

    gDPPipeSync(D_800E20C0++);
    if ((arg0->unkC == 0x400) && (arg0->unkE == 0x400)) {
        func_80057460(&D_800E20C0, arg0->unk0, arg0->unk4, arg0->unk8, (s32) arg0->unkA, (s32) arg0->unk10,
                      (s32) arg0->unk11, (s32) arg0->unk12, (s32) arg0->unk13);

        return;
    }
    func_8005DB90(&D_800E20C0, arg0->unk0, arg0->unk4, arg0->unk8, (s32) arg0->unkA, (s32) arg0->unk10,
                  (s32) arg0->unk11, (s32) arg0->unk12, (s32) arg0->unk13, (s32) arg0->unkC, (s32) arg0->unkE);
}
