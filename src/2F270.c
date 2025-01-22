#include "ultra64.h"
#include "variables.h"
#include "structs.h"
#include "functions.h"

//.data
extern s32 D_800D3A90;

void func_8006D674(s32);         /* extern */
s32 func_800A35EC(void*, void*); /* extern */
u8 func_8006952C(struct UnkStruct_80068FF0* arg0, u8 arg1);

extern s32 D_801235B0;

void func_80068FF0(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    if (arg0->unk5 < 5) {
        func_8006D674(arg0->unk18[-arg0->unk5]);
        func_8006D674(arg0->unk1C[arg0->unk5]);
        func_8008A5C8(&D_801235B0, &D_800D3A90, func_800A35EC(9, 0xC));
        arg0->unk5 = (u8) (arg0->unk5 + 1);
        arg0->unk3 = 1;
        arg0->unk2 = 0;
    } else {
        arg0->unk0 = 3;
        arg0->unk3 = 1;
        arg0->unk2 = 0;
    }
}

void func_8006E288(s32); /* extern */

void func_800690E4(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    register s32 i;

    for (i = 0; i < 10; i++) {
        func_8006E288(arg0->unk8[i]);
    }
    arg0->unk2 = 1;
    arg0->unk0 = 0;
    arg0->unk3 = 1;
}

void func_80069160(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    if (arg0->unk4 < 3) {
        arg0->unk4++;
        return;
    }
    arg0->unk4 = 0;
    if (arg0->unk5 < 5) {
        func_8008A5C8(&D_801235B0, &D_800D3A90, func_800A35EC((void*) 9, (void*) 0xC));
        func_8008A5C8(&D_801235B0, &D_800D3A90, 8);
        func_8006D674(arg0->unk18[-(s32) (u8) arg0->unk5]);
        func_8006D674(arg0->unk1C[(u8) arg0->unk5]);
        func_8006E288(arg0->unk18[-(s32) (u8) arg0->unk5]);
        func_8006E288(arg0->unk1C[(u8) arg0->unk5]);
        arg0->unk5 = (u8) arg0->unk5 + 1;
        arg0->unk3 = 1;
        arg0->unk2 = 0;
        return;
    }
    arg0->unk2 = 1;
    arg0->unk0 = 0;
    arg0->unk3 = 1;
}

void func_800692FC(struct UnkStruct_80068FF0* arg0, s32 arg1);

//? func_8006D450(s32, s32);                          /* extern */
//? func_8006D5BC(s32);                               /* extern */
// func_80070860(void *, ? *, ?);                    /* extern */

struct UnkStruct_800692FC_1 {
    char pad[0x48];
    s16 unk48;
    s16 unk4A;
};

struct UnkStruct_800692FC {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    struct UnkStruct_800692FC_1* unkC;
};

extern s32 D_800D0020;

void func_800692FC(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    register struct UnkStruct_800692FC* temp_s0;
    register s32 var_s1;

    arg0->unk4 = 0x18;
    func_8006D5BC(arg0->unk8[0]);

    for (var_s1 = 1; var_s1 < 10; var_s1++) {
        func_8006D5BC(arg0->unk8[var_s1]);
        func_8006D450(arg0->unk8[var_s1], arg0->unk8[0]);
    }

    for (var_s1 = 0; var_s1 < 10; var_s1++) {
        temp_s0 = arg0->unk8[var_s1];
        temp_s0->unkC->unk4A = ((0xFF - temp_s0->unkC->unk48) / 24);
        func_80070860((s32) temp_s0->unkC + 0x28, &D_800D0020, 0x18);
    }
    arg0->unk0 = 6;
    arg0->unk3 = 0;
    arg0->unk2 = 0;
}

void func_8006942C(u8* arg0, s32 arg1) {
    arg0[4] = (u8) (arg0[4] - 1);
    if (arg0[4] == 0) {
        arg0[0] = 7;
        func_8008A5C8(&D_801235B0, &D_800D3A90, 0x10);
    }
    arg0[3] = 1;
    arg0[2] = 0;
}

void func_8006E288(s32); /* extern */

void func_800694B0(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    register s32 var_s0;

    for (var_s0 = 0; var_s0 < 10; var_s0++) {
        func_8006E288(arg0->unk8[var_s0]);
    }
    arg0->unk2 = 1;
    arg0->unk0 = 0;
    arg0->unk3 = 1;
}

void Fault_Asset(char*, char*, char*); /* extern */

u8 func_8006952C(struct UnkStruct_80068FF0* arg0, u8 arg1) {
    do {
        switch (arg0->unk0) {
            case 0:
            case 1:
                arg0->unk0 = 0U;
                arg0->unk2 = 1U;
                arg0->unk3 = 1U;
                break;
            case 2:
                func_80068FF0(arg0, arg1);
                break;
            case 3:
                func_800690E4(arg0, arg1);
                break;
            case 4:
                func_80069160(arg0, arg1);
                break;
            case 5:
                func_800692FC(arg0, arg1);
                break;
            case 6:
                func_8006942C(arg0, arg1);
                break;
            case 7:
                func_800694B0(arg0, arg1);
                break;
            default:
                Fault_Assert("Invalid state", "LineEffect_Update(), lineeffect.c");
                break;
        }
    } while (arg0->unk3 == 0);
    return arg0->unk2;
}

void func_80069668(struct UnkStruct_80068FF0* arg0) {
    arg0->unk1 = 0;
    arg0->unk0 = 0;
    arg0->unk2 = 1;
    arg0->unk3 = 1;
}

void func_80069684(struct UnkStruct_80068FF0* arg0) {
    arg0->unk0 = 0;
    arg0->unk2 = 1;
    arg0->unk3 = 1;
}

void func_8006969C(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    arg0->unk0 = 2;
    arg0->unk2 = 0;
    arg0->unk3 = 0;
    arg0->unk5 = 0;
}

void func_800696B8(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    arg0->unk0 = 4;
    arg0->unk2 = 0;
    arg0->unk3 = 0;
    arg0->unk5 = 0;
    arg0->unk4 = 0;
}

void func_800696D8(struct UnkStruct_80068FF0* arg0, s32 arg1) {
    arg0->unk0 = 5;
    arg0->unk2 = 0;
    arg0->unk3 = 0;
    arg0->unk4 = 0;
}

void func_800696F4(struct UnkStruct_80068FF0* arg0, u32 arg1, u8 arg2) {
    register s32 var_s0;
    register s32* var_s1;

    arg0->unk1 = (u8) arg2;
    var_s1 = &D_8011FBD0->unk4[arg1 * 0xA];

    for (var_s0 = 0; var_s0 < 10; var_s0++, var_s1++) {
        arg0->unk8[var_s0] = *var_s1;
    }
    switch (arg2) {
        case 0:
            func_80069684((struct UnkStruct_80068FF0*) arg0);
            return;
        case 1:
            func_8006969C((struct UnkStruct_80068FF0*) arg0, (s32) arg1);
            return;
        case 4:
            func_800696B8((struct UnkStruct_80068FF0*) arg0, (s32) arg1);
            return;
        case 2:
        case 3:
            func_800696D8((struct UnkStruct_80068FF0*) arg0, (s32) arg1);
            return;
        default:
            Fault_Assert("Invalid type", "LineEffect_Init(), lineeffect.c");
            return;
    }
}
