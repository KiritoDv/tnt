#ifndef STRUCTS_H
#define STRUCTS_H

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
    u8 pad[0x2C];
    union {
        struct UnkStruct_80069830_1 unk;
    };
};

struct UnkStruct_8011FB70 {
    char pad[0x13];
    u8 unk13;
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

#endif /* STRUCTS_H */
