#ifndef STRUCTS_H
#define STRUCTS_H

// 2F270.c
struct UnkStruct_80068FF0 {
    s8 unk0;
    char unk1;
    s8 unk2;
    char unk3;
    char unk4;
    char unk5;
    s32 unk8[1];
    s32 padC[3];
    s32 unk18[1];
    s32 unk1C[1];
};

// 2FAB0.c
struct UnkStruct_80069830_1 {
    char pad[0x3A0];
    char pad2[28];
    s32 unk3EC;
    s32 unk3F0;
    char unk3F4;
};
struct UnkStruct_80069830 {
    char unk0;
    char unk1;
    char unk2;
    u8 pad2C[0x28];
    struct UnkStruct_80068FF0* unk2C;
    union {
        struct UnkStruct_80069830_1 unk;
    };
};

struct UnkStruct_8011FB70 {
    /* 0x00 */ u8 pad[1];                             /* inferred */
    /* 0x01 */ char pad1[0x11];                     /* maybe part of unk0[0x12]? */
    /* 0x12 */ s8 unk12;                            /* inferred */
    /* 0x13 */ u8 unk13;
};              

struct UnkStruct_8011FBA0_array
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 pad[0x12 - 0x3];
};

struct UnkStruct_8011FBA0 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 unk3;
    struct UnkStruct_8011FBA0_array arr[0x2C];
};

// 73F0.c
struct UnkStruct_8011FBD0 {
    s32 unk0;
    s32 unk4[1]; // Unknown size
};

struct UnkStruct_8011FB90_1 {
    s8 unk0;
    s8 unk1[1];
};

struct UnkStruct_8011FB90 {
    /* 0x000 */ char unk0;
    /* 0x001 */ char unk1;
    /* 0x002 */ char unk2;                            /* inferred */
    /* 0x003 */ struct UnkStruct_8011FB90_1 unk3[1];
    /* 0x005 */ char pad5[0x3E7];                   /* maybe part of unk3[0x1F4]? */
    /* 0x3EC */ s32 unk3EC;
    /* 0x3F0 */ s32 unk3F0;
    /* 0x3F4 */ s8 unk3F4;
    /* 0x3F5 */ char pad3F5[3];                     /* maybe part of unk3F4[4]? */
}; 
#endif /* STRUCTS_H */
