D_A8190 = 0xA8190;
D_ADAE0 = 0xADAE0;
D_273A00 = 0x273A00;

D_5206B0 = 0x5206B0;
D_5B9AB0 = 0x5B9AB0;
D_7C1960 = 0x7C1960;
D_F00001 = 0xF00001;

D_80000004 = 0x80000004;
D_8012F7D0 = 0x8012F7D0;
D_8034AD00 = 0x8034AD00;
D_80000000 = 0x80000000;
D_80000300 = 0x80000300;
D_80000308 = 0x80000308;
D_8000030C = 0x8000030C;
D_803C5680 = 0x803C5680;

D_A4800010 = 0xA4800010;
D_A4100000 = 0xA4100000;
D_A4100004 = 0xA4100004;
D_A4500000 = 0xA4500000;
D_A4500004 = 0xA4500004;
D_A4040008 = 0xA4040008;
D_A410000C = 0xA410000C;

D_A4600014 = 0xA4600014;
D_A4600018 = 0xA4600018;
D_A460001C = 0xA460001C;
D_A4600020 = 0xA4600020;
D_A4600024 = 0xA4600024;
D_A4600028 = 0xA4600028;
D_A460002C = 0xA460002C;
D_A4600030 = 0xA4600030;
D_A0000000 = 0xA0000000;
D_A4040004 = 0xA4040004;
D_A404000C = 0xA404000C;
D_A4400010 = 0xA4400010;
D_A4400000 = 0xA4400000;
D_A4400004 = 0xA4400004;
D_A4400008 = 0xA4400008;
D_A4400014 = 0xA4400014;
D_A4400018 = 0xA4400018;
D_A440001C = 0xA440001C;
D_A4400020 = 0xA4400020;
D_A4400024 = 0xA4400024;
D_A4400028 = 0xA4400028;
D_A440002C = 0xA440002C;
D_A440000C = 0xA440000C;
D_A4400030 = 0xA4400030;
D_A4400034 = 0xA4400034;
D_A4300008 = 0xA4300008;
D_A4040010 = 0xA4040010;
D_A450000C = 0xA450000C;
D_A4800018 = 0xA4800018;
D_A4600010 = 0xA4600010;
D_A4300000 = 0xA4300000;
D_8038AD00 = 0x8038AD00;
D_80000400 = 0x80000400;
D_A4800000 = 0xA4800000;
D_A4600008 = 0xA4600008;
D_A4600004 = 0xA4600004;
D_A460000C = 0xA460000C;
D_A4040000 = 0xA4040000;
D_A4600000 = 0xA4600000;

D_80000008 = 0x80000008;
D_8000000C = 0x8000000C;
D_8000031C = 0x8000031C;
D_A4500008 = 0xA4500008;
D_A4500010 = 0xA4500010;
D_A4500014 = 0xA4500014;
D_A4080000 = 0xA4080000;
D_A4800004 = 0xA4800004;
D_A430000C = 0xA430000C;
func_8400103C = 0x8400103C;
func_800C3310 = 0x800C3310;
func_80087478 = 0x80087478;
func_84001064 = 0x84001064;

osTvType = 0x80000300;
osRomBase = 0x80000308;
alSynDelete = 0x8003281C;
osCreateMesgQueue = 0x80078700;
// osSetEventMesg, 0x80078730, 0x68  (seteventmesg, true)
// osContInit, 0x800787A0, 0x170  (controller, true)
// __osContGetInitData, 0x80078910, 0xD0  (controller, true)
// __osPackRequestData, 0x800789E0, 0xF4  (controller, true)
// osSendMesg, 0x80078B50, 0x14C  (sendmesg, true)
// rmonPrintf, 0x80079260, 0x1C  (syncprintf, true)
// osSyncPrintf, 0x8007927C, 0x1C  (syncprintf, true)
// osRecvMesg, 0x800792A0, 0x138  (recvmesg, true)
// osContStartQuery, 0x800795C0, 0x84  (contquery, true)
// osContGetQuery, 0x80079644, 0x28  (contquery, true)
// osCreateThread, 0x8007B690, 0x144  (createthread, true)
// osStartThread, 0x8007B7E0, 0x150  (startthread, true)
// sprintf, 0x8007B954, 0x58  (sprintf, true)
// osViSetSpecialFeatures, 0x8007B9B0, 0x1B8  (visetspecial, true)
// osViSwapBuffer, 0x8007BB70, 0x50  (viswapbuf, true)
// osGetCount, 0x8007BBC0, 0xC  (getcount, true)
// osGetTime, 0x8007BBD0, 0x84  (gettime, true)
// osViSetEvent, 0x8007BC60, 0x6C  (visetevent, true)
// osWritebackDCacheAll, 0x8007BCD0, 0x28  (writebackdcacheall, true)
// osSpTaskLoad, 0x8007BE1C, 0x190  (sptask, true)
// osSpTaskStartGo, 0x8007BFAC, 0x40  (sptask, true)
// osDpSetNextBuffer, 0x8007BFF0, 0xA8  (dpsetnextbuf, true)
// osViSetMode, 0x8007C0A0, 0x68  (visetmode, true)
// osSetIntMask, 0x8007C110, 0xA0  (setintmask, true)
// osSetThreadPri, 0x8007C9F0, 0xE0  (setthreadpri, true)
// bzero, 0x8007CAD0, 0x0  (bzero, true)
// __ull_rshift, 0x8007CB70, 0x2C  (ll, true)
// __ull_rem, 0x8007CB9C, 0x3C  (ll, true)
// __ull_div, 0x8007CBD8, 0x3C  (ll, true)
// __ll_lshift, 0x8007CC14, 0x2C  (ll, true)
// __ll_rem, 0x8007CC40, 0x3C  (ll, true)
// __ll_div, 0x8007CC7C, 0x5C  (ll, true)
// __ll_mul, 0x8007CCD8, 0x30  (ll, true)
// __ull_divremi, 0x8007CD08, 0x60  (ll, true)
// __ll_mod, 0x8007CD68, 0x9C  (ll, true)
// __ll_rshift, 0x8007CE04, 0x2C  (ll, true)
// osSpTaskYielded, 0x8007CE30, 0x80  (sptaskyielded, true)
// osSpTaskYield, 0x8007CF30, 0x20  (sptaskyield, true)
// guMtxF2L, 0x8007CF50, 0x100  (mtxutil, true)
// guMtxIdentF, 0x8007D050, 0x88  (mtxutil, true)
// guMtxIdent, 0x8007D0D8, 0x30  (mtxutil, true)
// guMtxL2F, 0x8007D108, 0xB4  (mtxutil, true)
// __sinf, 0x8007D1C0, 0x1C0  (sinf, true)
// bcopy, 0x8007D380, 0x0  (bcopy, true)
// sins, 0x8007D690, 0x70  (sins, true)
// coss, 0x8007D700, 0x30  (coss, true)
// bcmp, 0x8007D730, 0x0  (bcmp, true)
// __cosf, 0x8007D850, 0x168  (cosf, true)
// sqrtf, 0x8007D9C0, 0x8  (sqrtf, true)
// memcpy, 0x8007D9D0, 0x2C  (string, true)
// strlen, 0x8007D9FC, 0x28  (string, true)
// strchr, 0x8007DA24, 0x40  (string, true)
// osStopThread, 0x8007DA70, 0xC0  (stopthread, true)
// osSetTime, 0x8007DB30, 0x24  (settime, true)
// alHeapInit, 0x8007DB70, 0x34  (heapinit, true)
// alHeapDBAlloc, 0x8007DBB0, 0x54  (heapalloc, true)
// alUnlink, 0x8007DD60, 0x30  (sl, true)
// alLink, 0x8007DD90, 0x24  (sl, true)
// alClose, 0x8007DDB4, 0x38  (sl, true)
// alInit, 0x8007DDEC, 0x34  (sl, true)
// osVirtualToPhysical, 0x8007DE20, 0x7C  (virtualtophysical, true)
// osAiSetNextBuffer, 0x8007DEA0, 0xA4  (aisetnextbuf, true)
// osAiGetLength, 0x8007DF50, 0xC  (aigetlen, true)
// alSynAddPlayer, 0x8007DF60, 0x50  (synaddplayer, true)
// _allocatePVoice, 0x8007DFB0, 0xE8  (synallocvoice, true)
// alSynAllocVoice, 0x8007E098, 0x140  (synallocvoice, true)
// alSynStopVoice, 0x8007E1E0, 0x78  (synstopvoice, true)
// osJamMesg, 0x8007E260, 0x150  (jammesg, true)
// alSynSetPan, 0x8007E3B0, 0x84  (synsetpan, true)
// alSynStartVoiceParams, 0x8007E440, 0xE4  (synstartvoiceparam, true)
// alSynSetPitch, 0x8007E530, 0x84  (synsetpitch, true)
// alSaveNew, 0x8007E5C0, 0x44  (drvrNew, true)
// alMainBusNew, 0x8007E604, 0x54  (drvrNew, true)
// alAuxBusNew, 0x8007E658, 0x54  (drvrNew, true)
// alResampleNew, 0x8007E6AC, 0x88  (drvrNew, true)
// alLoadNew, 0x8007E734, 0xA8  (drvrNew, true)
// alEnvmixerNew, 0x8007E7DC, 0xA4  (drvrNew, true)
// init_lpfilter, 0x8007E880, 0xA0  (drvrNew, true)
// alFxNew, 0x8007E920, 0x43C  (drvrNew, true)
// alSynAllocFX, 0x8007ED60, 0x98  (synallocfx, true)
// alMainBusParam, 0x8007EE00, 0x30  (mainbus, true)
// alMainBusPull, 0x8007EE30, 0x120  (mainbus, true)
// alResampleParam, 0x8007EF50, 0xEC  (resample, true)
// alResamplePull, 0x8007F03C, 0x208  (resample, true)
// alAuxBusParam, 0x8007F250, 0x30  (auxbus, true)
// alAuxBusPull, 0x8007F280, 0xD8  (auxbus, true)
// alSaveParam, 0x8007F360, 0x34  (save, true)
// alSavePull, 0x8007F394, 0x8C  (save, true)
// guTranslateF, 0x8007F420, 0x48  (translate, true)
// guTranslate, 0x8007F468, 0x54  (translate, true)
// guRotateRPYF, 0x8007F4C0, 0x14C  (rotateRPY, true)
// guRotateRPY, 0x8007F60C, 0x48  (rotateRPY, true)
// guLookAtF, 0x8007F660, 0x2B8  (lookat, true)
// guLookAt, 0x8007F918, 0x78  (lookat, true)
// guPerspectiveF, 0x8007F990, 0x230  (perspective, true)
// guPerspective, 0x8007FBC0, 0x58  (perspective, true)
// guMtxXFML, 0x8007FC20, 0x60  (mtxcatl, true)
// guMtxCatL, 0x8007FC80, 0x58  (mtxcatl, true)
// guNormalize, 0x8007FCE0, 0x84  (normalize, true)
// guAlignF, 0x8007FD70, 0x1C0  (align, true)
// guAlign, 0x8007FF30, 0x50  (align, true)
// guLookAtReflectF, 0x8007FF80, 0x40C  (lookatref, true)
// guLookAtReflect, 0x8008038C, 0x78  (lookatref, true)
// __d_to_ll, 0x80080410, 0x1C  (llcvt, true)
// __f_to_ll, 0x8008042C, 0x1C  (llcvt, true)
// __d_to_ull, 0x80080448, 0xA0  (llcvt, true)
// __f_to_ull, 0x800804E8, 0x9C  (llcvt, true)
// __ll_to_d, 0x80080584, 0x18  (llcvt, true)
// __ll_to_f, 0x8008059C, 0x18  (llcvt, true)
// __ull_to_d, 0x800805B4, 0x34  (llcvt, true)
// __ull_to_f, 0x800805E8, 0x30  (llcvt, true)
// osInvalDCache, 0x80080620, 0xAC  (invaldcache, true)
// osPiStartDma, 0x800806D0, 0x10C  (pidma, true)
// osWritebackDCache, 0x800807E0, 0x74  (writebackdcache, true)
// osEPiStartDma, 0x80080860, 0xD4  (epidma, true)
// osEPiLinkHandle, 0x80080940, 0x4C  (epilinkhandle, true)
// guOrthoF, 0x80080990, 0x154  (ortho, true)
// guOrtho, 0x80080AE4, 0x68  (ortho, true)
// guRandom, 0x80080B50, 0x2C  (random, true)
// __osDequeueThread, 0x80080B80, 0x40  (thread, true)
// __osDisableInt, 0x80080BC0, 0x20  (interrupt, true)
// __osRestoreInt, 0x80080BE0, 0x1C  (interrupt, true)
// osSetTimer, 0x80080C00, 0xD4  (settimer, true)
// _Printf, 0x80083C50, 0x648  (xprintf, true)
// __osViInit, 0x800842A0, 0x13C  (vi, true)
// __osTimerServicesInit, 0x800843E0, 0x8C  (timerintr, true)
// __osTimerInterrupt, 0x8008446C, 0x178  (timerintr, true)
// __osSetTimerIntr, 0x800845E4, 0x74  (timerintr, true)
// __osInsertTimer, 0x80084658, 0x188  (timerintr, true)
// __osSpSetStatus, 0x800847E0, 0xC  (spsetstat, true)
// __osSpSetPc, 0x800847F0, 0x34  (spsetpc, true)
// __osSpRawStartDma, 0x80084830, 0x8C  (sprawdma, true)
// __osSpDeviceBusy, 0x800848C0, 0x2C  (sp, true)
// __osDpDeviceBusy, 0x800848F0, 0x2C  (dp, true)
// __osSetSR, 0x80084920, 0x10  (setsr, true)
// __osGetSR, 0x80084930, 0xC  (getsr, true)
// __osSetFpcCsr, 0x80084940, 0x10  (setfpccsr, true)
// osInvalICache, 0x800849F0, 0x74  (invalicache, true)
// osUnmapTLBAll, 0x80084A70, 0x44  (unmaptlball, true)
// osMapTLBRdb, 0x80084AC0, 0x58  (maptlbrdb, true)
// osPiRawReadIo, 0x80084B20, 0x54  (pirawread, true)
// osGetThreadPri, 0x80084C40, 0x18  (getthreadpri, true)
// osPiRawStartDma, 0x80084C60, 0xE0  (pirawdma, true)
// __osDevMgrMain, 0x80084F20, 0x490  (devmgr, true)
// __osSpGetStatus, 0x800856C0, 0xC  (spgetstat, true)
// alSynDelete, 0x800856D0, 0x8  (syndelete, true)
// __osProbeTLB, 0x800856E0, 0xB8  (probetlb, true)
// __osAiDeviceBusy, 0x800857A0, 0x30  (ai, true)
// alFilterNew, 0x800857D0, 0x1C  (filter, true)
// _doModFunc, 0x800857F0, 0xA8  (reverb, true)
// _filterBuffer, 0x80085898, 0xB8  (reverb, true)
// _saveBuffer, 0x80085950, 0x188  (reverb, true)
// _loadBuffer, 0x80085AD8, 0x18C  (reverb, true)
// _loadOutputBuffer, 0x80085C64, 0x224  (reverb, true)
// alFxParamHdl, 0x80085E88, 0x25C  (reverb, true)
// alFxParam, 0x800860E4, 0x18  (reverb, true)
// alFxPull, 0x800860FC, 0x340  (reverb, true)
// alLoadParam, 0x80086440, 0x1D4  (load, true)
// alRaw16Pull, 0x80086614, 0x3AC  (load, true)
// alAdpcmPull, 0x80086AEC, 0x4A0  (load, true)
// guMtxXFMF, 0x80086F90, 0xA0  (mtxcatf, true)
// guMtxCatF, 0x80087030, 0x168  (mtxcatf, true)
// osPiGetCmdQueue, 0x800871A0, 0x28  (pigetcmdq, true)
// osDestroyThread, 0x800871D0, 0x104  (destroythread, true)
// osPfsIsPlug, 0x800872E0, 0x1A0  (pfsisplug, true)
// __osPfsRequestData, 0x80087480, 0xD0  (pfsisplug, true)
// __osPfsGetInitData, 0x80087550, 0xD0  (pfsisplug, true)
// _Litob, 0x80087620, 0x298  (xlitob, true)
// _Ldtob, 0x80087E30, 0x54C  (xldtob, true)
// __osSetCompare, 0x80088380, 0xC  (setcompare, true)
// __osSiDeviceBusy, 0x80088390, 0x2C  (si, true)
// __osResetGlobalIntMask, 0x800883C0, 0x58  (resetglobalintmask, true)
// __osSetGlobalIntMask, 0x800886E0, 0x4C  (setglobalintmask, true)
// osYieldThread, 0x80088730, 0x4C  (yieldthread, true)
// alCopy, 0x80088780, 0x74  (copy, true)
// lldiv, 0x80088800, 0x100  (ldiv, true)
// ldiv, 0x80088900, 0x84  (ldiv, true)
// alSynNew, 0x8008E690, 0x0  (sl, false)
// __allocParam, 0x8008ED04, 0x0  (synallocvoice, false)
// _timeToSamples, 0x8008EE24, 0x0  (synstartvoiceparam, false)
// alEnvmixerPull, 0x800AC2F0, 0x0  (drvrNew, false)
// alEnvmixerParam, 0x800ACB88, 0x0  (drvrNew, false)
// alLoadParam, 0x800AE368, 0x0  (drvrNew, false)
// osCreateMesgQueue, 0x800B3080, 0x0  (controller, false)
// __osContGetInitData, 0x800B3290, 0xD0  (controller, true)
// __osPackRequestData, 0x800B3360, 0xF4  (controller, true)
// osSendMesg, 0x800B34D0, 0x0  (devmgr, false)
// osRecvMesg, 0x800B3C20, 0x0  (contquery, false)
// osStartThread, 0x800B6160, 0x0  (jammesg, false)
// .text, 0x800B62B0, 0x80  (sprintf, false)
// osGetCount, 0x800B6540, 0x0  (gettime, false)
// osGetTime, 0x800B6550, 0x0  (controller, false)
// .text, 0x800B6680, 0x2F0  (sptask, false)
// osSetIntMask, 0x800B6A90, 0x0  (synaddplayer, false)
// bzero, 0x800B7450, 0x0  (vi, false)
// __ull_rem, 0x800B751C, 0x0  (xlitob, false)
// __ull_div, 0x800B7558, 0x0  (xlitob, false)
// __ll_div, 0x800B75FC, 0x0  (ldiv, false)
// __ll_mul, 0x800B7658, 0x0  (ldiv, false)
// guMtxF2L, 0x800B78D0, 0x100  (mtxutil, true)
// guMtxIdentF, 0x800B79D0, 0x88  (mtxutil, true)
// guMtxL2F, 0x800B7A88, 0x0  (mtxcatl, false)
// sinf, 0x800B7B40, 0x0  (align, false)
// bcopy, 0x800B7D00, 0x0  (sptask, false)
// sins, 0x800B8010, 0x0  (coss, false)
// cosf, 0x800B81D0, 0x0  (align, false)
// sqrtf, 0x800B8340, 0x0  (align, false)
// memcpy, 0x800B8350, 0x0  (sprintf, false)
// strlen, 0x800B837C, 0x0  (xprintf, false)
// strchr, 0x800B83A4, 0x0  (xprintf, false)
// alHeapDBAlloc, 0x800B8530, 0x0  (drvrNew, false)
// alUnlink, 0x800B86E0, 0x0  (synallocvoice, false)
// alLink, 0x800B8710, 0x0  (synallocvoice, false)
// osVirtualToPhysical, 0x800B87A0, 0x0  (aisetnextbuf, false)
// _allocatePVoice, 0x800B8930, 0xE8  (synallocvoice, true)
// osJamMesg, 0x800B8BE0, 0x0  (epidma, false)
// init_lpfilter, 0x800B9200, 0xA0  (drvrNew, true)
// alFxNew, 0x800B92A0, 0x0  (synallocfx, false)
// alMainBusParam, 0x800B9780, 0x0  (synallocfx, false)
// guRotateRPYF, 0x800B9E40, 0x14C  (rotateRPY, true)
// guLookAtF, 0x800B9FE0, 0x2B8  (lookat, true)
// guPerspectiveF, 0x800BA310, 0x230  (perspective, true)
// guNormalize, 0x800BA660, 0x0  (align, false)
// guAlignF, 0x800BA6F0, 0x1C0  (align, true)
// guLookAtReflectF, 0x800BA900, 0x40C  (lookatref, true)
// osWritebackDCache, 0x800BB160, 0x0  (sptask, false)
// guOrthoF, 0x800BB310, 0x154  (ortho, true)
// __osDequeueThread, 0x800BB500, 0x0  (destroythread, false)
// __osDisableInt, 0x800BB540, 0x0  (createthread, false)
// __osRestoreInt, 0x800BB560, 0x0  (createthread, false)
// osSetTimer, 0x800BB580, 0x0  (controller, false)
// __osSiRawStartDma, 0x800BB660, 0x0  (contquery, false)
// __osSiCreateAccessQueue, 0x800BB710, 0x0  (controller, false)
// __osSiGetAccess, 0x800BB760, 0x0  (contquery, false)
// __osSiRelAccess, 0x800BB7A4, 0x0  (contquery, false)
// __osEnqueueAndYield, 0x800BBDEC, 0x0  (jammesg, false)
// __osEnqueueThread, 0x800BBEEC, 0x0  (setthreadpri, false)
// __osPopThread, 0x800BBF34, 0x0  (jammesg, false)
// __osDispatchThread, 0x800BBF44, 0x0  (destroythread, false)
// .text, 0x800BDF60, 0xCC0  (xprintf, false)
// _Printf, 0x800BE5D0, 0x0  (sprintf, false)
// __osSetTimerIntr, 0x800BEF64, 0x74  (timerintr, true)
// __osInsertTimer, 0x800BEFD8, 0x188  (timerintr, true)
// __osSpSetStatus, 0x800BF160, 0x0  (sptask, false)
// __osSpSetPc, 0x800BF170, 0x0  (sptask, false)
// __osSpRawStartDma, 0x800BF1B0, 0x0  (sptask, false)
// __osSpDeviceBusy, 0x800BF240, 0x0  (sprawdma, false)
// __osDpDeviceBusy, 0x800BF270, 0x0  (dpsetnextbuf, false)
// __osViSwapContext, 0x800BFD40, 0x0  (vi, false)
// __osSpGetStatus, 0x800C0040, 0x0  (sptaskyielded, false)
// alSynDelete, 0x800C0050, 0x0  (sl, false)
// __osProbeTLB, 0x800C0060, 0x0  (virtualtophysical, false)
// __osAiDeviceBusy, 0x800C0120, 0x0  (aisetnextbuf, false)
// alFilterNew, 0x800C0150, 0x0  (drvrNew, false)
// _doModFunc, 0x800C0170, 0xA8  (reverb, true)
// _filterBuffer, 0x800C0218, 0xB8  (reverb, true)
// _saveBuffer, 0x800C02D0, 0x188  (reverb, true)
// _loadBuffer, 0x800C0458, 0x18C  (reverb, true)
// _loadOutputBuffer, 0x800C05E4, 0x224  (reverb, true)
// alFxParamHdl, 0x800C0808, 0x0  (drvrNew, false)
// alFxParam, 0x800C0A64, 0x0  (drvrNew, false)
// alFxPull, 0x800C0A7C, 0x0  (drvrNew, false)
// alRaw16Pull, 0x800C0F94, 0x3AC  (load, true)
// .text, 0x800C11E0, 0xB50  (load, false)
// alAdpcmPull, 0x800C146C, 0x4A0  (load, true)
// guMtxXFMF, 0x800C1910, 0x0  (mtxcatl, false)
// guMtxCatF, 0x800C19B0, 0x0  (mtxcatl, false)
// osPiGetCmdQueue, 0x800C1B20, 0x0  (epidma, false)
// __osPfsRequestData, 0x800C1E00, 0xD0  (pfsisplug, true)
// __osPfsGetInitData, 0x800C1ED0, 0xD0  (pfsisplug, true)
// _Litob, 0x800C1FA0, 0x0  (xprintf, false)
// .text, 0x800C2240, 0xAC0  (xldtob, false)
// _Ldtob, 0x800C27B0, 0x0  (xprintf, false)
// __osSetCompare, 0x800C2D00, 0x0  (timerintr, false)
// __osResetGlobalIntMask, 0x800C2D40, 0x0  (devmgr, false)
// osEPiRawWriteIo, 0x800C2DA0, 0x0  (devmgr, false)
// osEPiRawReadIo, 0x800C2F00, 0x0  (devmgr, false)
// __osSetGlobalIntMask, 0x800C3060, 0x0  (devmgr, false)
// osYieldThread, 0x800C30B0, 0x0  (devmgr, false)
// alCopy, 0x800C3100, 0x0  (load, false)
// lldiv, 0x800C3180, 0x0  (xlitob, false)
// ldiv, 0x800C3280, 0x0  (xldtob, false)
// alMainBusParam, 0x800D9780, 0x0  (drvrNew, false)
// alMainBusPull, 0x800D97B0, 0x0  (drvrNew, false)
// alResampleParam, 0x800D98D0, 0x0  (drvrNew, false)
// alResamplePull, 0x800D99BC, 0x0  (drvrNew, false)
// alAuxBusParam, 0x800D9BD0, 0x0  (drvrNew, false)
// alAuxBusPull, 0x800D9C00, 0x0  (drvrNew, false)
// alSaveParam, 0x800D9CE0, 0x0  (drvrNew, false)
// alSavePull, 0x800D9D14, 0x0  (drvrNew, false)
// __osCleanupThread, 0x800DC0C0, 0x0  (createthread, false)
// __osRcpImTable, 0x800E1460, 0x80  (setintmask, true)
// .rodata, 0x800E14E0, 0x50  (sinf, false)
// .rodata, 0x800E1530, 0x50  (cosf, false)
// .rodata, 0x800E1580, 0x20  (drvrNew, false)
// .rodata, 0x800E15A0, 0x40  (resample, false)
// .rodata, 0x800E15E0, 0x10  (rotateRPY, false)
// .rodata, 0x800E15F0, 0x10  (perspective, false)
// .rodata, 0x800E1600, 0x10  (align, false)
// .rodata, 0x800E1610, 0x10  (llcvt, false)
// .rodata, 0x800E1670, 0x100  (xprintf, false)
// .rodata, 0x800E1770, 0x20  (devmgr, false)
// __libm_qnan_f, 0x800E1790, 0x4  (cosf, false)
// .rodata, 0x800E17A0, 0x30  (reverb, false)
// .rodata, 0x800E17D0, 0x60  (xldtob, false)
// __osContinitialized, 0x800F9510, 0x4  (controller, true)
// osViModeNtscLan1, 0x800FA6F0, 0x50  (vi, false)
// __OSGlobalIntMask, 0x800FA750, 0x4  (resetglobalintmask, false)
// __osPiDevMgr, 0x800FA760, 0x1C  (epidma, false)
// __osPiTable, 0x800FA77C, 0x4  (epilinkhandle, false)
// osViModeMpalLan1, 0x800FA790, 0x50  (vi, false)
// osViModePalLan1, 0x800FA7E0, 0x50  (vi, false)
// .data, 0x800FA850, 0x800  (sins, false)
// alGlobals, 0x800FB050, 0x4  (reverb, false)
// .data, 0x800FB060, 0x10  (aisetnextbuf, false)
// .data, 0x800FB070, 0x190  (drvrNew, false)
// .data, 0x800FB200, 0x10  (random, false)
// __osThreadTail, 0x800FB210, 0x8  (createmesgqueue, false)
// __osRunQueue, 0x800FB218, 0x4  (setthreadpri, false)
// __osActiveQueue, 0x800FB21C, 0x4  (createthread, false)
// __osRunningThread, 0x800FB220, 0x4  (destroythread, false)
// .data, 0x800FB290, 0x50  (xprintf, false)
// .data, 0x800FB2E0, 0x70  (vi, false)
// __osViCurr, 0x800FB340, 0x4  (vi, true)
// __osViNext, 0x800FB344, 0x4  (vi, true)
// __osTimerList, 0x800FB350, 0x4  (settimer, false)
// .data, 0x800FB370, 0x30  (xlitob, false)
// __osEventStateTab, 0x8014CC80, 0x78  (seteventmesg, true)
// __osContPifRam, 0x8014CD00, 0x40  (contquery, false)
// __osContLastCmd, 0x8014CD40, 0x1  (contquery, false)
// __osMaxControllers, 0x8014CD41, 0x1  (controller, true)
// __osEepromTimerQ, 0x8014CD68, 0x18  (controller, true)
// __osEepromTimerMsg, 0x8014CD80, 0x4  (controller, true)
// .bss, 0x8014CF10, 0x40  (sptask, false)
// .bss, 0x8014F440, 0x10  (rotateRPY, false)
// .bss, 0x8014F450, 0x10  (align, false)
__osCurrentTime = 0x8014F5A0;
__osBaseCounter = 0x8014F5A8;
__osViIntrCount = 0x8014F5AC;
__osTimerCounter = 0x8014F5B0;
__osPfsPifRam =  0x8014F790;