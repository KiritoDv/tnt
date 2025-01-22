#ifndef FUNCTIONS_H
#define FUNCTIONS_H

// 2FAB0.c
u8 func_8006952C(struct UnkStruct_80068FF0*, u8);
void func_800529A8(s32, s32);
void func_80069668(struct UnkStruct_80068FF0 *);
void func_800696F4(struct UnkStruct_80068FF0* arg0, u32 arg1, u8 arg2);
s32 func_8006AB84(s32);
s32 func_8006AC2C(u32, s32);

// 38580.c
s32 func_80072300(u8);
s32 func_80073030(u32);
s32 func_8008A5C8(s32*, s32*, s32);

// 497E0.c
void Fault_Assert(char* assert, char* source);

//E2A0.c
void func_8004A5A0(char* assert_name, char* file, int line);
#endif /* FUNCTIONS_H */
