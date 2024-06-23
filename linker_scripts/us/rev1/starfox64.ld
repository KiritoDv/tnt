SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    makerom_ROM_START = __romPos;
    makerom_VRAM = ADDR(.makerom);
    .makerom : AT(makerom_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        makerom_DATA_START = .;
        header = .;
        build/asm/us/rev1/header.o(.data);
        makerom_TEXT_START = .;
        build/asm/us/rev1/data/ipl3.o(.text);
        build/asm/us/rev1/entry.o(.text);
        . = ALIGN(., 16);
        makerom_TEXT_END = .;
        makerom_TEXT_SIZE = ABSOLUTE(makerom_TEXT_END - makerom_TEXT_START);
        ipl3 = .;
        build/asm/us/rev1/data/ipl3.o(.data);
        entry = .;
        build/asm/us/rev1/entry.o(.data);
        . = ALIGN(., 16);
        makerom_DATA_END = .;
        makerom_DATA_SIZE = ABSOLUTE(makerom_DATA_END - makerom_DATA_START);
        makerom_RODATA_START = .;
        build/asm/us/rev1/data/ipl3.o(.rodata);
        build/asm/us/rev1/entry.o(.rodata);
        . = ALIGN(., 16);
        makerom_RODATA_END = .;
        makerom_RODATA_SIZE = ABSOLUTE(makerom_RODATA_END - makerom_RODATA_START);
    }
    makerom_bss_VRAM = ADDR(.makerom_bss);
    .makerom_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        makerom_BSS_START = .;
        build/asm/us/rev1/data/ipl3.o(.bss);
        build/asm/us/rev1/entry.o(.bss);
        . = ALIGN(., 16);
        makerom_BSS_END = .;
        makerom_BSS_SIZE = ABSOLUTE(makerom_BSS_END - makerom_BSS_START);
    }
    __romPos += SIZEOF(.makerom);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    makerom_ROM_END = __romPos;
    makerom_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80000450 : AT(main_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        main_TEXT_START = .;
        build/asm/us/rev1/data/rspboot.o(.text);
        build/asm/us/rev1/data/aspmain.o(.text);
        build/asm/us/rev1/data/f3dex.o(.text);
        build/src/sys/sys_joybus.o(.text);
        build/src/sys/sys_lib.o(.text);
        build/src/sys/sys_lights.o(.text);
        build/src/sys/sys_main.o(.text);
        build/src/sys/sys_math.o(.text);
        build/src/sys/sys_matrix.o(.text);
        build/src/sys/sys_memory.o(.text);
        build/src/sys/sys_timer.o(.text);
        build/src/sys/sys_save.o(.text);
        build/src/sys/sys_fault.o(.text);
        build/src/audio/audio_synthesis.o(.text);
        build/src/audio/audio_heap.o(.text);
        build/src/audio/audio_load.o(.text);
        build/src/audio/audio_playback.o(.text);
        build/src/audio/audio_effects.o(.text);
        build/src/audio/audio_seqplayer.o(.text);
        build/src/audio/audio_general.o(.text);
        build/src/audio/audio_thread.o(.text);
        build/src/driverominit.o(.text);
        build/asm/us/rev1/mio0.o(.text);
        build/asm/us/rev1/rdramcheck.o(.text);
        build/asm/us/rev1/data/alt_ipl3.o(.text);
        build/src/libc_sprintf.o(.text);
        build/src/libc_math64.o(.text);
        build/asm/us/rev1/libc_math64_fp.o(.text);
        build/src/libultra/gcc_fix/__floatundisf.o(.text);
        build/src/libultra/io/controller.o(.text);
        build/src/libultra/io/contreaddata.o(.text);
        build/src/libultra/os/recvmesg.o(.text);
        build/src/libultra/os/sendmesg.o(.text);
        build/src/libultra/io/contquery.o(.text);
        build/src/libultra/io/motor.o(.text);
        build/src/libultra/gu/perspective.o(.text);
        build/src/libultra/gu/lookat.o(.text);
        build/src/libultra/gu/ortho.o(.text);
        build/asm/us/rev1/libultra/os/invalicache.o(.text);
        build/asm/us/rev1/libultra/os/invaldcache.o(.text);
        build/src/libultra/io/pidma.o(.text);
        build/src/libultra/io/viblack.o(.text);
        build/asm/us/rev1/libultra/os/writebackdcacheall.o(.text);
        build/src/libultra/io/viswapbuf.o(.text);
        build/src/libultra/io/virepeatline.o(.text);
        build/asm/us/rev1/libultra/os/parameter.o(.text);
        build/src/libultra/io/visetmode.o(.text);
        build/src/libultra/io/visetspecial.o(.text);
        build/src/libultra/os/createmesgqueue.o(.text);
        build/src/libultra/os/seteventmesg.o(.text);
        build/src/libultra/io/visetevent.o(.text);
        build/src/libultra/io/sptaskyielded.o(.text);
        build/src/libultra/io/sptaskyield.o(.text);
        build/src/libultra/io/sptask.o(.text);
        build/src/libultra/io/dpsetstat.o(.text);
        build/src/libultra/os/createthread.o(.text);
        build/src/libultra/os/startthread.o(.text);
        build/src/libultra/io/vimgr.o(.text);
        build/src/libultra/io/pimgr.o(.text);
        build/src/libultra/os/setthreadpri.o(.text);
        build/src/libultra/os/initialize.o(.text);
        build/src/libultra/os/gettime.o(.text);
        build/src/libultra/gu/sinf.o(.text);
        build/src/libultra/gu/cosf.o(.text);
        build/src/libultra/gu/sqrtf.o(.text);
        build/src/libultra/os/settimer.o(.text);
        build/src/libultra/io/conteepread.o(.text);
        build/src/libultra/io/conteepwrite.o(.text);
        build/src/libultra/libc/ll.o(.text);
        build/src/libultra/io/conteepprobe.o(.text);
        build/src/libultra/libc/string.o(.text);
        build/src/libultra/libc/xprintf.o(.text);
        build/src/libultra/os/settime.o(.text);
        build/src/libultra/os/getactivequeue.o(.text);
        build/src/libultra/io/aisetfreq.o(.text);
        build/src/libultra/io/cartrominit.o(.text);
        build/src/libultra/io/epidma.o(.text);
        build/src/libultra/io/aigetlen.o(.text);
        build/src/libultra/io/aisetnextbuf.o(.text);
        build/asm/us/rev1/libultra/os/getcount.o(.text);
        build/src/libultra/io/sirawdma.o(.text);
        build/src/libultra/io/siacs.o(.text);
        build/asm/us/rev1/libultra/os/interrupt.o(.text);
        build/src/libultra/os/thread.o(.text);
        build/asm/us/rev1/libultra/os/exceptasm.o(.text);
        build/src/libultra/io/pfsisplug.o(.text);
        build/src/libultra/io/crc.o(.text);
        build/src/libultra/io/contramwrite.o(.text);
        build/src/libultra/io/contramread.o(.text);
        build/src/libultra/gu/mtxutil.o(.text);
        build/src/libultra/os/jammesg.o(.text);
        build/src/libultra/io/pigetcmdq.o(.text);
        build/src/libultra/io/vi.o(.text);
        build/src/libultra/io/spgetstat.o(.text);
        build/src/libultra/io/spsetstat.o(.text);
        build/asm/us/rev1/libultra/libc/bcopy.o(.text);
        build/src/libultra/os/virtualtophysical.o(.text);
        build/asm/us/rev1/libultra/os/writebackdcache.o(.text);
        build/src/libultra/io/spsetpc.o(.text);
        build/src/libultra/io/sprawdma.o(.text);
        build/src/libultra/io/sp.o(.text);
        build/src/libultra/os/timerintr.o(.text);
        build/src/libultra/os/getthreadpri.o(.text);
        build/src/libultra/io/vigetcurrcontext.o(.text);
        build/src/libultra/io/viswapcontext.o(.text);
        build/src/libultra/io/leodiskinit.o(.text);
        build/src/libultra/io/piacs.o(.text);
        build/src/libultra/io/pirawdma.o(.text);
        build/src/libultra/io/epirawdma.o(.text);
        build/src/libultra/io/devmgr.o(.text);
        build/src/libultra/os/rdbsend.o(.text);
        build/asm/us/rev1/libultra/os/setsr.o(.text);
        build/asm/us/rev1/libultra/os/getsr.o(.text);
        build/asm/us/rev1/libultra/os/setfpccsr.o(.text);
        build/src/libultra/io/sirawread.o(.text);
        build/src/libultra/io/sirawwrite.o(.text);
        build/asm/us/rev1/libultra/os/maptlbrdb.o(.text);
        build/src/libultra/io/pirawread.o(.text);
        build/asm/us/rev1/libultra/libc/bzero.o(.text);
        build/src/libultra/libc/xlitob.o(.text);
        build/src/libultra/libc/xldtob.o(.text);
        build/src/libultra/io/ai.o(.text);
        build/src/libultra/io/si.o(.text);
        build/src/libultra/debug/kdebugserver.o(.text);
        build/src/libultra/host/readhost.o(.text);
        build/src/libultra/rmon/rmonsio.o(.text);
        build/src/libultra/os/initrdb.o(.text);
        build/src/libultra/io/leointerrupt.o(.text);
        build/asm/us/rev1/libultra/os/setintmask.o(.text);
        build/src/libultra/os/destroythread.o(.text);
        build/src/libultra/io/pfsgetstatus.o(.text);
        build/asm/us/rev1/libultra/os/probetlb.o(.text);
        build/asm/us/rev1/libultra/os/setcompare.o(.text);
        build/src/libultra/os/resetglobalintmask.o(.text);
        build/src/libultra/io/epirawwrite.o(.text);
        build/src/libultra/io/epirawread.o(.text);
        build/src/libultra/os/setglobalintmask.o(.text);
        build/src/libultra/os/yieldthread.o(.text);
        build/src/libultra/libc/ldiv.o(.text);
        build/asm/us/rev1/libultra/os/getcause.o(.text);
        build/src/libultra/rmon/rmoncmds.o(.text);
        build/src/libultra/rmon/rmonmem.o(.text);
        build/src/libultra/rmon/rmontask.o(.text);
        build/src/libultra/rmon/rmonmisc.o(.text);
        build/src/libultra/rmon/rmonregs.o(.text);
        build/src/libultra/rmon/rmonbrk.o(.text);
        build/src/libultra/rmon/rmonmain.o(.text);
        build/src/libultra/io/sprawwrite.o(.text);
        build/src/libultra/io/sprawread.o(.text);
        build/src/libultra/os/stopthread.o(.text);
        build/asm/us/rev1/libultra/rmon/rmonrcp.o(.text);
        build/src/engine/fox_360.o(.text);
        build/src/engine/fox_beam.o(.text);
        build/src/engine/fox_bg.o(.text);
        build/src/engine/fox_boss.o(.text);
        build/src/engine/fox_tank.o(.text);
        build/src/engine/fox_demo.o(.text);
        build/src/engine/fox_display.o(.text);
        build/src/engine/fox_load.o(.text);
        build/src/engine/fox_edata.o(.text);
        build/src/engine/fox_edisplay.o(.text);
        build/src/engine/fox_enmy.o(.text);
        build/src/engine/fox_enmy2.o(.text);
        build/src/engine/fox_effect.o(.text);
        build/src/engine/fox_fade.o(.text);
        build/src/engine/fox_blur.o(.text);
        build/src/engine/fox_hud.o(.text);
        build/src/engine/fox_col1.o(.text);
        build/src/engine/fox_std_lib.o(.text);
        build/src/engine/fox_game.o(.text);
        build/src/engine/fox_col2.o(.text);
        build/src/engine/fox_pause.o(.text);
        build/src/engine/fox_play.o(.text);
        build/src/engine/fox_rcp.o(.text);
        build/src/engine/fox_radio.o(.text);
        build/src/engine/fox_reset.o(.text);
        build/src/engine/fox_versus.o(.text);
        build/src/engine/fox_message.o(.text);
        build/src/engine/fox_save.o(.text);
        . = ALIGN(., 16);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        rspboot = .;
        build/asm/us/rev1/data/rspboot.o(.data);
        aspmain_data = .;
        build/asm/us/rev1/data/aspmain.data.o(.data);
        audio_audio_tables = .;
        build/src/audio/audio_tables.o(.data);
        f3dex_data = .;
        build/asm/us/rev1/data/f3dex.data.o(.data);
        sys_sys_joybus = .;
        build/src/sys/sys_joybus.o(.data);
        sys_sys_lib = .;
        build/src/sys/sys_lib.o(.data);
        sys_sys_lights = .;
        build/src/sys/sys_lights.o(.data);
        sys_sys_main = .;
        build/src/sys/sys_main.o(.data);
        sys_sys_math = .;
        build/src/sys/sys_math.o(.data);
        sys_sys_matrix = .;
        build/src/sys/sys_matrix.o(.data);
        sys_sys_memory = .;
        build/src/sys/sys_memory.o(.data);
        sys_sys_timer = .;
        build/src/sys/sys_timer.o(.data);
        sys_sys_save = .;
        build/src/sys/sys_save.o(.data);
        sys_sys_fault = .;
        build/src/sys/sys_fault.o(.data);
        audio_audio_synthesis = .;
        build/src/audio/audio_synthesis.o(.data);
        audio_audio_heap = .;
        build/src/audio/audio_heap.o(.data);
        audio_audio_load = .;
        build/src/audio/audio_load.o(.data);
        audio_audio_playback = .;
        build/src/audio/audio_playback.o(.data);
        audio_audio_effects = .;
        build/src/audio/audio_effects.o(.data);
        audio_audio_seqplayer = .;
        build/src/audio/audio_seqplayer.o(.data);
        audio_audio_general = .;
        build/src/audio/audio_general.o(.data);
        audio_audio_context = .;
        build/src/audio/audio_context.o(.data);
        audio_audio_thread = .;
        build/src/audio/audio_thread.o(.data);
        driverominit = .;
        build/src/driverominit.o(.data);
        mio0 = .;
        build/asm/us/rev1/mio0.o(.data);
        rdramcheck = .;
        build/asm/us/rev1/rdramcheck.o(.data);
        alt_ipl3 = .;
        build/asm/us/rev1/data/alt_ipl3.o(.data);
        libc_sprintf = .;
        build/src/libc_sprintf.o(.data);
        libc_math64 = .;
        build/src/libc_math64.o(.data);
        libc_math64_fp = .;
        build/asm/us/rev1/libc_math64_fp.o(.data);
        libultra_gcc_fix___floatundisf = .;
        build/src/libultra/gcc_fix/__floatundisf.o(.data);
        libultra_io_controller = .;
        build/src/libultra/io/controller.o(.data);
        libultra_io_contreaddata = .;
        build/src/libultra/io/contreaddata.o(.data);
        libultra_os_recvmesg = .;
        build/src/libultra/os/recvmesg.o(.data);
        libultra_os_sendmesg = .;
        build/src/libultra/os/sendmesg.o(.data);
        libultra_io_contquery = .;
        build/src/libultra/io/contquery.o(.data);
        libultra_io_motor = .;
        build/src/libultra/io/motor.o(.data);
        libultra_gu_perspective = .;
        build/src/libultra/gu/perspective.o(.data);
        libultra_gu_lookat = .;
        build/src/libultra/gu/lookat.o(.data);
        libultra_gu_ortho = .;
        build/src/libultra/gu/ortho.o(.data);
        libultra_os_invalicache = .;
        build/asm/us/rev1/libultra/os/invalicache.o(.data);
        libultra_os_invaldcache = .;
        build/asm/us/rev1/libultra/os/invaldcache.o(.data);
        libultra_io_pidma = .;
        build/src/libultra/io/pidma.o(.data);
        libultra_io_viblack = .;
        build/src/libultra/io/viblack.o(.data);
        libultra_os_writebackdcacheall = .;
        build/asm/us/rev1/libultra/os/writebackdcacheall.o(.data);
        libultra_io_viswapbuf = .;
        build/src/libultra/io/viswapbuf.o(.data);
        libultra_io_virepeatline = .;
        build/src/libultra/io/virepeatline.o(.data);
        libultra_os_parameter = .;
        build/asm/us/rev1/libultra/os/parameter.o(.data);
        libultra_io_visetmode = .;
        build/src/libultra/io/visetmode.o(.data);
        libultra_io_visetspecial = .;
        build/src/libultra/io/visetspecial.o(.data);
        libultra_os_createmesgqueue = .;
        build/src/libultra/os/createmesgqueue.o(.data);
        libultra_os_seteventmesg = .;
        build/src/libultra/os/seteventmesg.o(.data);
        libultra_io_visetevent = .;
        build/src/libultra/io/visetevent.o(.data);
        libultra_io_sptaskyielded = .;
        build/src/libultra/io/sptaskyielded.o(.data);
        libultra_io_sptaskyield = .;
        build/src/libultra/io/sptaskyield.o(.data);
        libultra_io_sptask = .;
        build/src/libultra/io/sptask.o(.data);
        libultra_io_dpsetstat = .;
        build/src/libultra/io/dpsetstat.o(.data);
        libultra_os_createthread = .;
        build/src/libultra/os/createthread.o(.data);
        libultra_os_startthread = .;
        build/src/libultra/os/startthread.o(.data);
        libultra_vimodes_vimodentsclan1 = .;
        build/src/libultra/vimodes/vimodentsclan1.o(.data);
        libultra_vimodes_vimodepallan1 = .;
        build/src/libultra/vimodes/vimodepallan1.o(.data);
        libultra_vimodes_vimodempallan1 = .;
        build/src/libultra/vimodes/vimodempallan1.o(.data);
        libultra_io_vimgr = .;
        build/src/libultra/io/vimgr.o(.data);
        libultra_io_pimgr = .;
        build/src/libultra/io/pimgr.o(.data);
        libultra_os_setthreadpri = .;
        build/src/libultra/os/setthreadpri.o(.data);
        libultra_os_initialize = .;
        build/src/libultra/os/initialize.o(.data);
        libultra_os_gettime = .;
        build/src/libultra/os/gettime.o(.data);
        libultra_gu_sinf = .;
        build/src/libultra/gu/sinf.o(.data);
        libultra_gu_cosf = .;
        build/src/libultra/gu/cosf.o(.data);
        libultra_gu_sqrtf = .;
        build/src/libultra/gu/sqrtf.o(.data);
        libultra_os_settimer = .;
        build/src/libultra/os/settimer.o(.data);
        libultra_io_conteepread = .;
        build/src/libultra/io/conteepread.o(.data);
        libultra_io_conteepwrite = .;
        build/src/libultra/io/conteepwrite.o(.data);
        libultra_libc_ll = .;
        build/src/libultra/libc/ll.o(.data);
        libultra_io_conteepprobe = .;
        build/src/libultra/io/conteepprobe.o(.data);
        libultra_libc_string = .;
        build/src/libultra/libc/string.o(.data);
        libultra_libc_xprintf = .;
        build/src/libultra/libc/xprintf.o(.data);
        libultra_os_settime = .;
        build/src/libultra/os/settime.o(.data);
        libultra_os_getactivequeue = .;
        build/src/libultra/os/getactivequeue.o(.data);
        libultra_io_aisetfreq = .;
        build/src/libultra/io/aisetfreq.o(.data);
        libultra_io_cartrominit = .;
        build/src/libultra/io/cartrominit.o(.data);
        libultra_io_epidma = .;
        build/src/libultra/io/epidma.o(.data);
        libultra_io_aigetlen = .;
        build/src/libultra/io/aigetlen.o(.data);
        libultra_io_aisetnextbuf = .;
        build/src/libultra/io/aisetnextbuf.o(.data);
        libultra_os_getcount = .;
        build/asm/us/rev1/libultra/os/getcount.o(.data);
        libultra_io_sirawdma = .;
        build/src/libultra/io/sirawdma.o(.data);
        libultra_io_siacs = .;
        build/src/libultra/io/siacs.o(.data);
        libultra_os_interrupt = .;
        build/asm/us/rev1/libultra/os/interrupt.o(.data);
        libultra_os_thread = .;
        build/src/libultra/os/thread.o(.data);
        libultra_os_exceptasm_data = .;
        build/asm/us/rev1/data/libultra/os/exceptasm.data.o(.data);
        libultra_io_pfsisplug = .;
        build/src/libultra/io/pfsisplug.o(.data);
        libultra_io_crc = .;
        build/src/libultra/io/crc.o(.data);
        libultra_io_contramwrite = .;
        build/src/libultra/io/contramwrite.o(.data);
        libultra_io_contramread = .;
        build/src/libultra/io/contramread.o(.data);
        libultra_gu_mtxutil = .;
        build/src/libultra/gu/mtxutil.o(.data);
        libultra_os_jammesg = .;
        build/src/libultra/os/jammesg.o(.data);
        libultra_io_pigetcmdq = .;
        build/src/libultra/io/pigetcmdq.o(.data);
        libultra_io_vi = .;
        build/src/libultra/io/vi.o(.data);
        libultra_io_spgetstat = .;
        build/src/libultra/io/spgetstat.o(.data);
        libultra_io_spsetstat = .;
        build/src/libultra/io/spsetstat.o(.data);
        libultra_libc_bcopy = .;
        build/asm/us/rev1/libultra/libc/bcopy.o(.data);
        libultra_os_virtualtophysical = .;
        build/src/libultra/os/virtualtophysical.o(.data);
        libultra_os_writebackdcache = .;
        build/asm/us/rev1/libultra/os/writebackdcache.o(.data);
        libultra_io_spsetpc = .;
        build/src/libultra/io/spsetpc.o(.data);
        libultra_io_sprawdma = .;
        build/src/libultra/io/sprawdma.o(.data);
        libultra_io_sp = .;
        build/src/libultra/io/sp.o(.data);
        libultra_os_timerintr = .;
        build/src/libultra/os/timerintr.o(.data);
        libultra_os_getthreadpri = .;
        build/src/libultra/os/getthreadpri.o(.data);
        libultra_io_vigetcurrcontext = .;
        build/src/libultra/io/vigetcurrcontext.o(.data);
        libultra_io_viswapcontext = .;
        build/src/libultra/io/viswapcontext.o(.data);
        libultra_io_leodiskinit = .;
        build/src/libultra/io/leodiskinit.o(.data);
        libultra_io_piacs = .;
        build/src/libultra/io/piacs.o(.data);
        libultra_io_pirawdma = .;
        build/src/libultra/io/pirawdma.o(.data);
        libultra_io_epirawdma = .;
        build/src/libultra/io/epirawdma.o(.data);
        libultra_io_devmgr = .;
        build/src/libultra/io/devmgr.o(.data);
        libultra_os_rdbsend = .;
        build/src/libultra/os/rdbsend.o(.data);
        libultra_os_setsr = .;
        build/asm/us/rev1/libultra/os/setsr.o(.data);
        libultra_os_getsr = .;
        build/asm/us/rev1/libultra/os/getsr.o(.data);
        libultra_os_setfpccsr = .;
        build/asm/us/rev1/libultra/os/setfpccsr.o(.data);
        libultra_io_sirawread = .;
        build/src/libultra/io/sirawread.o(.data);
        libultra_io_sirawwrite = .;
        build/src/libultra/io/sirawwrite.o(.data);
        libultra_os_maptlbrdb = .;
        build/asm/us/rev1/libultra/os/maptlbrdb.o(.data);
        libultra_io_pirawread = .;
        build/src/libultra/io/pirawread.o(.data);
        libultra_libc_bzero = .;
        build/asm/us/rev1/libultra/libc/bzero.o(.data);
        libultra_libc_xlitob = .;
        build/src/libultra/libc/xlitob.o(.data);
        libultra_libc_xldtob = .;
        build/src/libultra/libc/xldtob.o(.data);
        libultra_io_ai = .;
        build/src/libultra/io/ai.o(.data);
        libultra_io_si = .;
        build/src/libultra/io/si.o(.data);
        libultra_debug_kdebugserver = .;
        build/src/libultra/debug/kdebugserver.o(.data);
        libultra_host_readhost = .;
        build/src/libultra/host/readhost.o(.data);
        libultra_rmon_rmonsio = .;
        build/src/libultra/rmon/rmonsio.o(.data);
        libultra_os_initrdb = .;
        build/src/libultra/os/initrdb.o(.data);
        libultra_io_leointerrupt = .;
        build/src/libultra/io/leointerrupt.o(.data);
        libultra_os_setintmask = .;
        build/asm/us/rev1/libultra/os/setintmask.o(.data);
        libultra_os_destroythread = .;
        build/src/libultra/os/destroythread.o(.data);
        libultra_io_pfsgetstatus = .;
        build/src/libultra/io/pfsgetstatus.o(.data);
        libultra_os_probetlb = .;
        build/asm/us/rev1/libultra/os/probetlb.o(.data);
        libultra_os_setcompare = .;
        build/asm/us/rev1/libultra/os/setcompare.o(.data);
        libultra_os_resetglobalintmask = .;
        build/src/libultra/os/resetglobalintmask.o(.data);
        libultra_io_epirawwrite = .;
        build/src/libultra/io/epirawwrite.o(.data);
        libultra_io_epirawread = .;
        build/src/libultra/io/epirawread.o(.data);
        libultra_os_setglobalintmask = .;
        build/src/libultra/os/setglobalintmask.o(.data);
        libultra_os_yieldthread = .;
        build/src/libultra/os/yieldthread.o(.data);
        libultra_libc_ldiv = .;
        build/src/libultra/libc/ldiv.o(.data);
        libultra_os_getcause = .;
        build/asm/us/rev1/libultra/os/getcause.o(.data);
        libultra_rmon_rmoncmds = .;
        build/src/libultra/rmon/rmoncmds.o(.data);
        libultra_rmon_rmonmem = .;
        build/src/libultra/rmon/rmonmem.o(.data);
        libultra_rmon_rmontask = .;
        build/src/libultra/rmon/rmontask.o(.data);
        libultra_rmon_rmonmisc = .;
        build/src/libultra/rmon/rmonmisc.o(.data);
        libultra_rmon_rmonregs = .;
        build/src/libultra/rmon/rmonregs.o(.data);
        libultra_rmon_rmonbrk = .;
        build/src/libultra/rmon/rmonbrk.o(.data);
        libultra_rmon_rmonmain = .;
        build/src/libultra/rmon/rmonmain.o(.data);
        libultra_io_sprawwrite = .;
        build/src/libultra/io/sprawwrite.o(.data);
        libultra_io_sprawread = .;
        build/src/libultra/io/sprawread.o(.data);
        libultra_os_stopthread = .;
        build/src/libultra/os/stopthread.o(.data);
        libultra_rmon_rmonrcp = .;
        build/asm/us/rev1/libultra/rmon/rmonrcp.o(.data);
        main_RODATA_START = .;
        build/src/sys/sys_math.o(.rodata);
        build/src/sys/sys_matrix.o(.rodata);
        build/src/sys/sys_memory.o(.rodata);
        build/src/sys/sys_timer.o(.rodata);
        build/src/sys/sys_save.o(.rodata);
        build/src/sys/sys_fault.o(.rodata);
        build/src/audio/audio_synthesis.o(.rodata);
        build/src/audio/audio_heap.o(.rodata);
        build/src/audio/audio_load.o(.rodata);
        build/src/audio/audio_playback.o(.rodata);
        build/src/audio/audio_effects.o(.rodata);
        build/src/audio/audio_seqplayer.o(.rodata);
        build/src/audio/audio_general.o(.rodata);
        build/src/audio/audio_thread.o(.rodata);
        build/src/driverominit.o(.rodata);
        build/asm/us/rev1/mio0.o(.rodata);
        build/asm/us/rev1/rdramcheck.o(.rodata);
        build/asm/us/rev1/data/alt_ipl3.o(.rodata);
        build/src/libc_sprintf.o(.rodata);
        build/src/libc_math64.o(.rodata);
        build/asm/us/rev1/libc_math64_fp.o(.rodata);
        build/src/libultra/gcc_fix/__floatundisf.o(.rodata);
        build/src/libultra/io/controller.o(.rodata);
        build/src/libultra/io/contreaddata.o(.rodata);
        build/src/libultra/os/recvmesg.o(.rodata);
        build/src/libultra/os/sendmesg.o(.rodata);
        build/src/libultra/io/contquery.o(.rodata);
        build/src/libultra/io/motor.o(.rodata);
        build/src/libultra/gu/perspective.o(.rodata);
        build/src/libultra/gu/lookat.o(.rodata);
        build/src/libultra/gu/ortho.o(.rodata);
        build/asm/us/rev1/libultra/os/invalicache.o(.rodata);
        build/asm/us/rev1/libultra/os/invaldcache.o(.rodata);
        build/src/libultra/io/pidma.o(.rodata);
        build/src/libultra/io/viblack.o(.rodata);
        build/asm/us/rev1/libultra/os/writebackdcacheall.o(.rodata);
        build/src/libultra/io/viswapbuf.o(.rodata);
        build/src/libultra/io/virepeatline.o(.rodata);
        build/asm/us/rev1/libultra/os/parameter.o(.rodata);
        build/src/libultra/io/visetmode.o(.rodata);
        build/src/libultra/io/visetspecial.o(.rodata);
        build/src/libultra/os/createmesgqueue.o(.rodata);
        build/src/libultra/os/seteventmesg.o(.rodata);
        build/src/libultra/io/visetevent.o(.rodata);
        build/src/libultra/io/sptaskyielded.o(.rodata);
        build/src/libultra/io/sptaskyield.o(.rodata);
        build/src/libultra/io/sptask.o(.rodata);
        build/src/libultra/io/dpsetstat.o(.rodata);
        build/src/libultra/os/createthread.o(.rodata);
        build/src/libultra/os/startthread.o(.rodata);
        build/src/libultra/io/vimgr.o(.rodata);
        build/src/libultra/io/pimgr.o(.rodata);
        build/src/libultra/os/setthreadpri.o(.rodata);
        build/src/libultra/os/initialize.o(.rodata);
        build/src/libultra/os/gettime.o(.rodata);
        build/src/libultra/gu/sinf.o(.rodata);
        build/src/libultra/gu/cosf.o(.rodata);
        build/src/libultra/gu/sqrtf.o(.rodata);
        build/src/libultra/os/settimer.o(.rodata);
        build/src/libultra/io/conteepread.o(.rodata);
        build/src/libultra/io/conteepwrite.o(.rodata);
        build/src/libultra/libc/ll.o(.rodata);
        build/src/libultra/io/conteepprobe.o(.rodata);
        build/src/libultra/libc/string.o(.rodata);
        build/src/libultra/libc/xprintf.o(.rodata);
        build/src/libultra/os/settime.o(.rodata);
        build/src/libultra/os/getactivequeue.o(.rodata);
        build/src/libultra/io/aisetfreq.o(.rodata);
        build/src/libultra/io/cartrominit.o(.rodata);
        build/src/libultra/io/epidma.o(.rodata);
        build/src/libultra/io/aigetlen.o(.rodata);
        build/src/libultra/io/aisetnextbuf.o(.rodata);
        build/asm/us/rev1/libultra/os/getcount.o(.rodata);
        build/src/libultra/io/sirawdma.o(.rodata);
        build/src/libultra/io/siacs.o(.rodata);
        build/asm/us/rev1/libultra/os/interrupt.o(.rodata);
        build/src/libultra/os/thread.o(.rodata);
        build/asm/us/rev1/data/libultra/os/exceptasm.rodata.o(.rodata);
        build/src/libultra/io/pfsisplug.o(.rodata);
        build/src/libultra/io/crc.o(.rodata);
        build/src/libultra/io/contramwrite.o(.rodata);
        build/src/libultra/io/contramread.o(.rodata);
        build/src/libultra/gu/mtxutil.o(.rodata);
        build/src/libultra/os/jammesg.o(.rodata);
        build/src/libultra/io/pigetcmdq.o(.rodata);
        build/src/libultra/io/vi.o(.rodata);
        build/src/libultra/io/spgetstat.o(.rodata);
        build/src/libultra/io/spsetstat.o(.rodata);
        build/asm/us/rev1/libultra/libc/bcopy.o(.rodata);
        build/src/libultra/os/virtualtophysical.o(.rodata);
        build/asm/us/rev1/libultra/os/writebackdcache.o(.rodata);
        build/src/libultra/io/spsetpc.o(.rodata);
        build/src/libultra/io/sprawdma.o(.rodata);
        build/src/libultra/io/sp.o(.rodata);
        build/src/libultra/os/timerintr.o(.rodata);
        build/src/libultra/os/getthreadpri.o(.rodata);
        build/src/libultra/io/vigetcurrcontext.o(.rodata);
        build/src/libultra/io/viswapcontext.o(.rodata);
        build/src/libultra/io/leodiskinit.o(.rodata);
        build/src/libultra/io/piacs.o(.rodata);
        build/src/libultra/io/pirawdma.o(.rodata);
        build/src/libultra/io/epirawdma.o(.rodata);
        build/src/libultra/io/devmgr.o(.rodata);
        build/src/libultra/os/rdbsend.o(.rodata);
        build/asm/us/rev1/libultra/os/setsr.o(.rodata);
        build/asm/us/rev1/libultra/os/getsr.o(.rodata);
        build/asm/us/rev1/libultra/os/setfpccsr.o(.rodata);
        build/src/libultra/io/sirawread.o(.rodata);
        build/src/libultra/io/sirawwrite.o(.rodata);
        build/asm/us/rev1/libultra/os/maptlbrdb.o(.rodata);
        build/src/libultra/io/pirawread.o(.rodata);
        build/asm/us/rev1/libultra/libc/bzero.o(.rodata);
        build/src/libultra/libc/xlitob.o(.rodata);
        build/asm/us/rev1/data/libultra/gu/libm_vals.rodata.o(.rodata);
        build/src/libultra/libc/xldtob.o(.rodata);
        build/src/libultra/io/ai.o(.rodata);
        build/src/libultra/io/si.o(.rodata);
        build/src/libultra/debug/kdebugserver.o(.rodata);
        build/src/libultra/host/readhost.o(.rodata);
        build/src/libultra/rmon/rmonsio.o(.rodata);
        build/src/libultra/os/initrdb.o(.rodata);
        build/src/libultra/io/leointerrupt.o(.rodata);
        build/asm/us/rev1/data/libultra/os/setintmask.rodata.o(.rodata);
        build/src/libultra/os/destroythread.o(.rodata);
        build/src/libultra/io/pfsgetstatus.o(.rodata);
        build/asm/us/rev1/libultra/os/probetlb.o(.rodata);
        build/asm/us/rev1/libultra/os/setcompare.o(.rodata);
        build/src/libultra/os/resetglobalintmask.o(.rodata);
        build/src/libultra/io/epirawwrite.o(.rodata);
        build/src/libultra/io/epirawread.o(.rodata);
        build/src/libultra/os/setglobalintmask.o(.rodata);
        build/src/libultra/os/yieldthread.o(.rodata);
        build/src/libultra/libc/ldiv.o(.rodata);
        build/asm/us/rev1/libultra/os/getcause.o(.rodata);
        build/src/libultra/rmon/rmoncmds.o(.rodata);
        build/src/libultra/rmon/rmonmem.o(.rodata);
        build/src/libultra/rmon/rmontask.o(.rodata);
        build/src/libultra/rmon/rmonmisc.o(.rodata);
        build/src/libultra/rmon/rmonregs.o(.rodata);
        build/src/libultra/rmon/rmonbrk.o(.rodata);
        build/src/libultra/rmon/rmonmain.o(.rodata);
        build/src/libultra/io/sprawwrite.o(.rodata);
        build/src/libultra/io/sprawread.o(.rodata);
        build/src/libultra/os/stopthread.o(.rodata);
        build/asm/us/rev1/libultra/rmon/rmonrcp.o(.rodata);
        engine_fox_360 = .;
        build/src/engine/fox_360.o(.data);
        engine_fox_beam = .;
        build/src/engine/fox_beam.o(.data);
        engine_fox_bg = .;
        build/src/engine/fox_bg.o(.data);
        engine_fox_boss = .;
        build/src/engine/fox_boss.o(.data);
        engine_fox_tank = .;
        build/src/engine/fox_tank.o(.data);
        engine_fox_demo = .;
        build/src/engine/fox_demo.o(.data);
        engine_fox_display = .;
        build/src/engine/fox_display.o(.data);
        engine_fox_load = .;
        build/src/engine/fox_load.o(.data);
        engine_fox_edata = .;
        build/src/engine/fox_edata.o(.data);
        engine_fox_edisplay = .;
        build/src/engine/fox_edisplay.o(.data);
        engine_fox_enmy = .;
        build/src/engine/fox_enmy.o(.data);
        engine_fox_enmy2 = .;
        build/src/engine/fox_enmy2.o(.data);
        engine_fox_effect = .;
        build/src/engine/fox_effect.o(.data);
        engine_fox_fade = .;
        build/src/engine/fox_fade.o(.data);
        engine_fox_blur = .;
        build/src/engine/fox_blur.o(.data);
        engine_fox_hud = .;
        build/src/engine/fox_hud.o(.data);
        engine_fox_col1 = .;
        build/src/engine/fox_col1.o(.data);
        engine_fox_std_lib = .;
        build/src/engine/fox_std_lib.o(.data);
        engine_fox_game = .;
        build/src/engine/fox_game.o(.data);
        engine_fox_col2 = .;
        build/src/engine/fox_col2.o(.data);
        engine_fox_pause = .;
        build/src/engine/fox_pause.o(.data);
        engine_fox_play = .;
        build/src/engine/fox_play.o(.data);
        engine_fox_context = .;
        build/src/engine/fox_context.o(.data);
        engine_fox_rcp = .;
        build/src/engine/fox_rcp.o(.data);
        engine_fox_radio = .;
        build/src/engine/fox_radio.o(.data);
        engine_fox_reset = .;
        build/src/engine/fox_reset.o(.data);
        engine_fox_versus = .;
        build/src/engine/fox_versus.o(.data);
        engine_fox_message = .;
        build/src/engine/fox_message.o(.data);
        engine_fox_save = .;
        build/src/engine/fox_save.o(.data);
        build/asm/us/rev1/data/rspboot.o(.rodata);
        build/asm/us/rev1/data/aspmain.o(.rodata);
        build/asm/us/rev1/data/f3dex.o(.rodata);
        build/src/sys/sys_joybus.o(.rodata);
        build/src/sys/sys_lib.o(.rodata);
        build/src/sys/sys_lights.o(.rodata);
        build/src/sys/sys_main.o(.rodata);
        build/src/engine/fox_360.o(.rodata);
        build/src/engine/fox_beam.o(.rodata);
        build/src/engine/fox_bg.o(.rodata);
        build/src/engine/fox_boss.o(.rodata);
        build/src/engine/fox_tank.o(.rodata);
        build/src/engine/fox_demo.o(.rodata);
        build/src/engine/fox_display.o(.rodata);
        build/src/engine/fox_load.o(.rodata);
        build/src/engine/fox_edata.o(.rodata);
        build/src/engine/fox_edisplay.o(.rodata);
        build/src/engine/fox_enmy.o(.rodata);
        build/src/engine/fox_enmy2.o(.rodata);
        build/src/engine/fox_effect.o(.rodata);
        build/src/engine/fox_fade.o(.rodata);
        build/src/engine/fox_blur.o(.rodata);
        build/src/engine/fox_hud.o(.rodata);
        build/src/engine/fox_col1.o(.rodata);
        build/src/engine/fox_std_lib.o(.rodata);
        build/src/engine/fox_game.o(.rodata);
        build/src/engine/fox_col2.o(.rodata);
        build/src/engine/fox_pause.o(.rodata);
        build/src/engine/fox_play.o(.rodata);
        build/src/engine/fox_rcp.o(.rodata);
        build/src/engine/fox_radio.o(.rodata);
        build/src/engine/fox_reset.o(.rodata);
        build/src/engine/fox_versus.o(.rodata);
        build/src/engine/fox_message.o(.rodata);
        build/src/engine/fox_save.o(.rodata);
        . = ALIGN(., 16);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        engine_fox_shapes = .;
        build/src/engine/fox_shapes.o(.data);
        engine_fox_wheels = .;
        build/src/engine/fox_wheels.o(.data);
        engine_fox_msg_palette = .;
        build/src/engine/fox_msg_palette.o(.data);
        engine_fox_rcp_init = .;
        build/src/engine/fox_rcp_init.o(.data);
        audio_wave_samples = .;
        build/src/audio/wave_samples.o(.data);
        audio_note_data = .;
        build/src/audio/note_data.o(.data);
        . = ALIGN(., 16);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        main_BSS_START = .;
        build/asm/us/rev1/data/rspboot.o(.bss);
        build/asm/us/rev1/data/aspmain.o(.bss);
        build/asm/us/rev1/data/f3dex.o(.bss);
        build/src/sys/sys_joybus.o(.bss);
        build/src/sys/sys_lib.o(.bss);
        build/src/sys/sys_lights.o(.bss);
        build/src/sys/sys_main.o(.bss);
        build/src/sys/sys_math.o(.bss);
        build/src/sys/sys_matrix.o(.bss);
        build/src/sys/sys_memory.o(.bss);
        build/src/sys/sys_timer.o(.bss);
        build/src/sys/sys_save.o(.bss);
        build/src/sys/sys_fault.o(.bss);
        build/src/audio/audio_synthesis.o(.bss);
        build/src/audio/audio_heap.o(.bss);
        build/src/audio/audio_load.o(.bss);
        build/src/audio/audio_playback.o(.bss);
        build/src/audio/audio_effects.o(.bss);
        build/src/audio/audio_seqplayer.o(.bss);
        build/src/audio/audio_general.o(.bss);
        build/src/audio/audio_context.o(.bss);
        build/src/audio/audio_thread.o(.bss);
        build/src/driverominit.o(.bss);
        build/asm/us/rev1/mio0.o(.bss);
        build/asm/us/rev1/rdramcheck.o(.bss);
        build/asm/us/rev1/data/alt_ipl3.o(.bss);
        build/src/libc_sprintf.o(.bss);
        build/src/libc_math64.o(.bss);
        build/asm/us/rev1/libc_math64_fp.o(.bss);
        build/src/libultra/gcc_fix/__floatundisf.o(.bss);
        build/src/libultra/io/controller.o(.bss);
        build/src/libultra/io/contreaddata.o(.bss);
        build/src/libultra/os/recvmesg.o(.bss);
        build/src/libultra/os/sendmesg.o(.bss);
        build/src/libultra/io/contquery.o(.bss);
        build/src/libultra/io/motor.o(.bss);
        build/src/libultra/gu/perspective.o(.bss);
        build/src/libultra/gu/lookat.o(.bss);
        build/src/libultra/gu/ortho.o(.bss);
        build/asm/us/rev1/libultra/os/invalicache.o(.bss);
        build/asm/us/rev1/libultra/os/invaldcache.o(.bss);
        build/src/libultra/io/pidma.o(.bss);
        build/src/libultra/io/viblack.o(.bss);
        build/asm/us/rev1/libultra/os/writebackdcacheall.o(.bss);
        build/src/libultra/io/viswapbuf.o(.bss);
        build/src/libultra/io/virepeatline.o(.bss);
        build/asm/us/rev1/libultra/os/parameter.o(.bss);
        build/src/libultra/io/visetmode.o(.bss);
        build/src/libultra/io/visetspecial.o(.bss);
        build/src/libultra/os/createmesgqueue.o(.bss);
        build/src/libultra/os/seteventmesg.o(.bss);
        build/src/libultra/io/visetevent.o(.bss);
        build/src/libultra/io/sptaskyielded.o(.bss);
        build/src/libultra/io/sptaskyield.o(.bss);
        build/src/libultra/io/sptask.o(.bss);
        build/src/libultra/io/dpsetstat.o(.bss);
        build/src/libultra/os/createthread.o(.bss);
        build/src/libultra/os/startthread.o(.bss);
        build/src/libultra/io/vimgr.o(.bss);
        build/src/libultra/io/pimgr.o(.bss);
        build/src/libultra/os/setthreadpri.o(.bss);
        build/src/libultra/os/initialize.o(.bss);
        build/src/libultra/os/gettime.o(.bss);
        build/src/libultra/gu/sinf.o(.bss);
        build/src/libultra/gu/cosf.o(.bss);
        build/src/libultra/gu/sqrtf.o(.bss);
        build/src/libultra/os/settimer.o(.bss);
        build/src/libultra/io/conteepread.o(.bss);
        build/src/libultra/io/conteepwrite.o(.bss);
        build/src/libultra/libc/ll.o(.bss);
        build/src/libultra/io/conteepprobe.o(.bss);
        build/src/libultra/libc/string.o(.bss);
        build/src/libultra/libc/xprintf.o(.bss);
        build/src/libultra/os/settime.o(.bss);
        build/src/libultra/os/getactivequeue.o(.bss);
        build/src/libultra/io/aisetfreq.o(.bss);
        build/src/libultra/io/cartrominit.o(.bss);
        build/src/libultra/io/epidma.o(.bss);
        build/src/libultra/io/aigetlen.o(.bss);
        build/src/libultra/io/aisetnextbuf.o(.bss);
        build/asm/us/rev1/libultra/os/getcount.o(.bss);
        build/src/libultra/io/sirawdma.o(.bss);
        build/src/libultra/io/siacs.o(.bss);
        build/asm/us/rev1/libultra/os/interrupt.o(.bss);
        build/src/libultra/os/thread.o(.bss);
        build/asm/us/rev1/libultra/os/exceptasm.o(.bss);
        build/src/libultra/io/pfsisplug.o(.bss);
        build/src/libultra/io/crc.o(.bss);
        build/src/libultra/io/contramwrite.o(.bss);
        build/src/libultra/io/contramread.o(.bss);
        build/src/libultra/gu/mtxutil.o(.bss);
        build/src/libultra/os/jammesg.o(.bss);
        build/src/libultra/io/pigetcmdq.o(.bss);
        build/src/libultra/io/vi.o(.bss);
        build/src/libultra/io/spgetstat.o(.bss);
        build/src/libultra/io/spsetstat.o(.bss);
        build/asm/us/rev1/libultra/libc/bcopy.o(.bss);
        build/src/libultra/os/virtualtophysical.o(.bss);
        build/asm/us/rev1/libultra/os/writebackdcache.o(.bss);
        build/src/libultra/io/spsetpc.o(.bss);
        build/src/libultra/io/sprawdma.o(.bss);
        build/src/libultra/io/sp.o(.bss);
        build/src/libultra/os/timerintr.o(.bss);
        build/src/libultra/os/getthreadpri.o(.bss);
        build/src/libultra/io/vigetcurrcontext.o(.bss);
        build/src/libultra/io/viswapcontext.o(.bss);
        build/src/libultra/io/leodiskinit.o(.bss);
        build/src/libultra/io/piacs.o(.bss);
        build/src/libultra/io/pirawdma.o(.bss);
        build/src/libultra/io/epirawdma.o(.bss);
        build/src/libultra/io/devmgr.o(.bss);
        build/src/libultra/os/rdbsend.o(.bss);
        build/asm/us/rev1/libultra/os/setsr.o(.bss);
        build/asm/us/rev1/libultra/os/getsr.o(.bss);
        build/asm/us/rev1/libultra/os/setfpccsr.o(.bss);
        build/src/libultra/io/sirawread.o(.bss);
        build/src/libultra/io/sirawwrite.o(.bss);
        build/asm/us/rev1/libultra/os/maptlbrdb.o(.bss);
        build/src/libultra/io/pirawread.o(.bss);
        build/asm/us/rev1/libultra/libc/bzero.o(.bss);
        build/src/libultra/libc/xlitob.o(.bss);
        build/src/libultra/libc/xldtob.o(.bss);
        build/src/libultra/io/ai.o(.bss);
        build/src/libultra/io/si.o(.bss);
        build/src/libultra/debug/kdebugserver.o(.bss);
        build/src/libultra/host/readhost.o(.bss);
        build/src/libultra/rmon/rmonsio.o(.bss);
        build/src/libultra/os/initrdb.o(.bss);
        build/src/libultra/io/leointerrupt.o(.bss);
        build/asm/us/rev1/libultra/os/setintmask.o(.bss);
        build/src/libultra/os/destroythread.o(.bss);
        build/src/libultra/io/pfsgetstatus.o(.bss);
        build/asm/us/rev1/libultra/os/probetlb.o(.bss);
        build/asm/us/rev1/libultra/os/setcompare.o(.bss);
        build/src/libultra/os/resetglobalintmask.o(.bss);
        build/src/libultra/io/epirawwrite.o(.bss);
        build/src/libultra/io/epirawread.o(.bss);
        build/src/libultra/os/setglobalintmask.o(.bss);
        build/src/libultra/os/yieldthread.o(.bss);
        build/src/libultra/libc/ldiv.o(.bss);
        build/asm/us/rev1/libultra/os/getcause.o(.bss);
        build/src/libultra/rmon/rmoncmds.o(.bss);
        build/src/libultra/rmon/rmonmem.o(.bss);
        build/src/libultra/rmon/rmontask.o(.bss);
        build/src/libultra/rmon/rmonmisc.o(.bss);
        build/src/libultra/rmon/rmonregs.o(.bss);
        build/src/libultra/rmon/rmonbrk.o(.bss);
        build/src/libultra/rmon/rmonmain.o(.bss);
        build/src/libultra/io/sprawwrite.o(.bss);
        build/src/libultra/io/sprawread.o(.bss);
        build/src/libultra/os/stopthread.o(.bss);
        build/asm/us/rev1/libultra/rmon/rmonrcp.o(.bss);
        build/src/engine/fox_360.o(.bss);
        build/src/engine/fox_beam.o(.bss);
        build/src/engine/fox_bg.o(.bss);
        build/src/engine/fox_boss.o(.bss);
        build/src/engine/fox_tank.o(.bss);
        build/src/engine/fox_demo.o(.bss);
        build/src/engine/fox_display.o(.bss);
        build/src/engine/fox_load.o(.bss);
        build/src/engine/fox_edata.o(.bss);
        build/src/engine/fox_edisplay.o(.bss);
        build/src/engine/fox_enmy.o(.bss);
        build/src/engine/fox_enmy2.o(.bss);
        build/src/engine/fox_effect.o(.bss);
        build/src/engine/fox_fade.o(.bss);
        build/src/engine/fox_blur.o(.bss);
        build/src/engine/fox_hud.o(.bss);
        build/src/engine/fox_col1.o(.bss);
        build/src/engine/fox_std_lib.o(.bss);
        build/src/engine/fox_game.o(.bss);
        build/src/engine/fox_col2.o(.bss);
        build/src/engine/fox_pause.o(.bss);
        build/src/engine/fox_play.o(.bss);
        build/src/engine/fox_context.o(.bss);
        build/src/engine/fox_rcp.o(.bss);
        build/src/engine/fox_radio.o(.bss);
        build/src/engine/fox_reset.o(.bss);
        build/src/engine/fox_versus.o(.bss);
        build/src/engine/fox_message.o(.bss);
        build/src/engine/fox_save.o(.bss);
        . = ALIGN(., 16);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    dma_table_ROM_START = __romPos;
    dma_table_VRAM = ADDR(.dma_table);
    .dma_table main_VRAM_END : AT(dma_table_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        dma_table_DATA_START = .;
        dmatable = .;
        build/src/dmatable.o(.data);
        . = ALIGN(., 16);
        dma_table_DATA_END = .;
        dma_table_DATA_SIZE = ABSOLUTE(dma_table_DATA_END - dma_table_DATA_START);
    }
    __romPos += SIZEOF(.dma_table);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    dma_table_ROM_END = __romPos;
    dma_table_VRAM_END = .;

    buffers_ROM_START = __romPos;
    buffers_VRAM = ADDR(.buffers);
    .buffers 0x80281000 : AT(buffers_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
    }
    buffers_bss_VRAM = ADDR(.buffers_bss);
    .buffers_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        buffers_BSS_START = .;
        build/src/buffers.o(.bss);
        . = ALIGN(., 16);
        buffers_BSS_END = .;
        buffers_BSS_SIZE = ABSOLUTE(buffers_BSS_END - buffers_BSS_START);
    }
    __romPos += SIZEOF(.buffers);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    buffers_ROM_END = __romPos;
    buffers_VRAM_END = .;

    audio_seq_ROM_START = __romPos;
    audio_seq_VRAM = ADDR(.audio_seq);
    .audio_seq : AT(audio_seq_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        audio_seq_DATA_START = .;
        audio_seq = .;
        build/bin/us/rev1/audio_seq.o(.data);
        audio_seq_DATA_END = .;
        audio_seq_DATA_SIZE = ABSOLUTE(audio_seq_DATA_END - audio_seq_DATA_START);
    }
    __romPos += SIZEOF(.audio_seq);
    audio_seq_ROM_END = __romPos;
    audio_seq_VRAM_END = .;

    audio_bank_ROM_START = __romPos;
    audio_bank_VRAM = ADDR(.audio_bank);
    .audio_bank : AT(audio_bank_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        audio_bank_DATA_START = .;
        audio_bank = .;
        build/bin/us/rev1/audio_bank.o(.data);
        audio_bank_DATA_END = .;
        audio_bank_DATA_SIZE = ABSOLUTE(audio_bank_DATA_END - audio_bank_DATA_START);
    }
    __romPos += SIZEOF(.audio_bank);
    audio_bank_ROM_END = __romPos;
    audio_bank_VRAM_END = .;

    audio_table_ROM_START = __romPos;
    audio_table_VRAM = ADDR(.audio_table);
    .audio_table : AT(audio_table_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        audio_table_DATA_START = .;
        audio_table = .;
        build/bin/us/rev1/audio_table.o(.data);
        audio_table_DATA_END = .;
        audio_table_DATA_SIZE = ABSOLUTE(audio_table_DATA_END - audio_table_DATA_START);
    }
    __romPos += SIZEOF(.audio_table);
    audio_table_ROM_END = __romPos;
    audio_table_VRAM_END = .;

    ast_common_ROM_START = __romPos;
    ast_common_VRAM = ADDR(.ast_common);
    .ast_common 0x1000000 : AT(ast_common_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_common_DATA_START = .;
        assets_ast_common_ast_common = .;
        build/src/assets/ast_common/ast_common.o(.data);
        . = ALIGN(., 16);
        ast_common_DATA_END = .;
        ast_common_DATA_SIZE = ABSOLUTE(ast_common_DATA_END - ast_common_DATA_START);
    }
    __romPos += SIZEOF(.ast_common);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_common_ROM_END = __romPos;
    ast_common_VRAM_END = .;

    ast_bg_space_ROM_START = __romPos;
    ast_bg_space_VRAM = ADDR(.ast_bg_space);
    .ast_bg_space 0x2000000 : AT(ast_bg_space_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_bg_space_DATA_START = .;
        assets_ast_bg_space_ast_bg_space = .;
        build/src/assets/ast_bg_space/ast_bg_space.o(.data);
        . = ALIGN(., 16);
        ast_bg_space_DATA_END = .;
        ast_bg_space_DATA_SIZE = ABSOLUTE(ast_bg_space_DATA_END - ast_bg_space_DATA_START);
    }
    __romPos += SIZEOF(.ast_bg_space);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_bg_space_ROM_END = __romPos;
    ast_bg_space_VRAM_END = .;

    ast_bg_planet_ROM_START = __romPos;
    ast_bg_planet_VRAM = ADDR(.ast_bg_planet);
    .ast_bg_planet 0x2000000 : AT(ast_bg_planet_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_bg_planet_DATA_START = .;
        assets_ast_bg_planet_ast_bg_planet = .;
        build/src/assets/ast_bg_planet/ast_bg_planet.o(.data);
        . = ALIGN(., 16);
        ast_bg_planet_DATA_END = .;
        ast_bg_planet_DATA_SIZE = ABSOLUTE(ast_bg_planet_DATA_END - ast_bg_planet_DATA_START);
    }
    __romPos += SIZEOF(.ast_bg_planet);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_bg_planet_ROM_END = __romPos;
    ast_bg_planet_VRAM_END = .;

    ast_arwing_ROM_START = __romPos;
    ast_arwing_VRAM = ADDR(.ast_arwing);
    .ast_arwing 0x3000000 : AT(ast_arwing_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_arwing_DATA_START = .;
        assets_ast_arwing_ast_arwing = .;
        build/src/assets/ast_arwing/ast_arwing.o(.data);
        . = ALIGN(., 16);
        ast_arwing_DATA_END = .;
        ast_arwing_DATA_SIZE = ABSOLUTE(ast_arwing_DATA_END - ast_arwing_DATA_START);
    }
    __romPos += SIZEOF(.ast_arwing);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_arwing_ROM_END = __romPos;
    ast_arwing_VRAM_END = .;

    ast_landmaster_ROM_START = __romPos;
    ast_landmaster_VRAM = ADDR(.ast_landmaster);
    .ast_landmaster 0x3000000 : AT(ast_landmaster_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_landmaster_DATA_START = .;
        assets_ast_landmaster_ast_landmaster = .;
        build/src/assets/ast_landmaster/ast_landmaster.o(.data);
        . = ALIGN(., 16);
        ast_landmaster_DATA_END = .;
        ast_landmaster_DATA_SIZE = ABSOLUTE(ast_landmaster_DATA_END - ast_landmaster_DATA_START);
    }
    __romPos += SIZEOF(.ast_landmaster);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_landmaster_ROM_END = __romPos;
    ast_landmaster_VRAM_END = .;

    ast_blue_marine_ROM_START = __romPos;
    ast_blue_marine_VRAM = ADDR(.ast_blue_marine);
    .ast_blue_marine 0x3000000 : AT(ast_blue_marine_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_blue_marine_DATA_START = .;
        assets_ast_blue_marine_ast_blue_marine = .;
        build/src/assets/ast_blue_marine/ast_blue_marine.o(.data);
        . = ALIGN(., 16);
        ast_blue_marine_DATA_END = .;
        ast_blue_marine_DATA_SIZE = ABSOLUTE(ast_blue_marine_DATA_END - ast_blue_marine_DATA_START);
    }
    __romPos += SIZEOF(.ast_blue_marine);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_blue_marine_ROM_END = __romPos;
    ast_blue_marine_VRAM_END = .;

    ast_versus_ROM_START = __romPos;
    ast_versus_VRAM = ADDR(.ast_versus);
    .ast_versus 0x3000000 : AT(ast_versus_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_versus_DATA_START = .;
        assets_ast_versus_ast_versus = .;
        build/src/assets/ast_versus/ast_versus.o(.data);
        . = ALIGN(., 16);
        ast_versus_DATA_END = .;
        ast_versus_DATA_SIZE = ABSOLUTE(ast_versus_DATA_END - ast_versus_DATA_START);
    }
    __romPos += SIZEOF(.ast_versus);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_versus_ROM_END = __romPos;
    ast_versus_VRAM_END = .;

    ast_enmy_planet_ROM_START = __romPos;
    ast_enmy_planet_VRAM = ADDR(.ast_enmy_planet);
    .ast_enmy_planet 0x4000000 : AT(ast_enmy_planet_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_enmy_planet_DATA_START = .;
        assets_ast_enmy_planet_ast_enmy_planet = .;
        build/src/assets/ast_enmy_planet/ast_enmy_planet.o(.data);
        . = ALIGN(., 16);
        ast_enmy_planet_DATA_END = .;
        ast_enmy_planet_DATA_SIZE = ABSOLUTE(ast_enmy_planet_DATA_END - ast_enmy_planet_DATA_START);
    }
    __romPos += SIZEOF(.ast_enmy_planet);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_enmy_planet_ROM_END = __romPos;
    ast_enmy_planet_VRAM_END = .;

    ast_enmy_space_ROM_START = __romPos;
    ast_enmy_space_VRAM = ADDR(.ast_enmy_space);
    .ast_enmy_space 0x4000000 : AT(ast_enmy_space_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_enmy_space_DATA_START = .;
        assets_ast_enmy_space_ast_enmy_space = .;
        build/src/assets/ast_enmy_space/ast_enmy_space.o(.data);
        . = ALIGN(., 16);
        ast_enmy_space_DATA_END = .;
        ast_enmy_space_DATA_SIZE = ABSOLUTE(ast_enmy_space_DATA_END - ast_enmy_space_DATA_START);
    }
    __romPos += SIZEOF(.ast_enmy_space);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_enmy_space_ROM_END = __romPos;
    ast_enmy_space_VRAM_END = .;

    ast_great_fox_ROM_START = __romPos;
    ast_great_fox_VRAM = ADDR(.ast_great_fox);
    .ast_great_fox 0xE000000 : AT(ast_great_fox_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_great_fox_DATA_START = .;
        assets_ast_great_fox_ast_great_fox = .;
        build/src/assets/ast_great_fox/ast_great_fox.o(.data);
        . = ALIGN(., 16);
        ast_great_fox_DATA_END = .;
        ast_great_fox_DATA_SIZE = ABSOLUTE(ast_great_fox_DATA_END - ast_great_fox_DATA_START);
    }
    __romPos += SIZEOF(.ast_great_fox);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_great_fox_ROM_END = __romPos;
    ast_great_fox_VRAM_END = .;

    ast_star_wolf_ROM_START = __romPos;
    ast_star_wolf_VRAM = ADDR(.ast_star_wolf);
    .ast_star_wolf 0xF000000 : AT(ast_star_wolf_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_star_wolf_DATA_START = .;
        assets_ast_star_wolf_ast_star_wolf = .;
        build/src/assets/ast_star_wolf/ast_star_wolf.o(.data);
        . = ALIGN(., 16);
        ast_star_wolf_DATA_END = .;
        ast_star_wolf_DATA_SIZE = ABSOLUTE(ast_star_wolf_DATA_END - ast_star_wolf_DATA_START);
    }
    __romPos += SIZEOF(.ast_star_wolf);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_star_wolf_ROM_END = __romPos;
    ast_star_wolf_VRAM_END = .;

    ast_allies_ROM_START = __romPos;
    ast_allies_VRAM = ADDR(.ast_allies);
    .ast_allies 0xD000000 : AT(ast_allies_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_allies_DATA_START = .;
        assets_ast_allies_ast_allies = .;
        build/src/assets/ast_allies/ast_allies.o(.data);
        . = ALIGN(., 16);
        ast_allies_DATA_END = .;
        ast_allies_DATA_SIZE = ABSOLUTE(ast_allies_DATA_END - ast_allies_DATA_START);
    }
    __romPos += SIZEOF(.ast_allies);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_allies_ROM_END = __romPos;
    ast_allies_VRAM_END = .;

    ast_corneria_ROM_START = __romPos;
    ast_corneria_VRAM = ADDR(.ast_corneria);
    .ast_corneria 0x6000000 : AT(ast_corneria_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_corneria_DATA_START = .;
        assets_ast_corneria_ast_corneria = .;
        build/src/assets/ast_corneria/ast_corneria.o(.data);
        . = ALIGN(., 16);
        ast_corneria_DATA_END = .;
        ast_corneria_DATA_SIZE = ABSOLUTE(ast_corneria_DATA_END - ast_corneria_DATA_START);
    }
    __romPos += SIZEOF(.ast_corneria);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_corneria_ROM_END = __romPos;
    ast_corneria_VRAM_END = .;

    ast_meteo_ROM_START = __romPos;
    ast_meteo_VRAM = ADDR(.ast_meteo);
    .ast_meteo 0x6000000 : AT(ast_meteo_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_meteo_DATA_START = .;
        assets_ast_meteo_ast_meteo = .;
        build/src/assets/ast_meteo/ast_meteo.o(.data);
        . = ALIGN(., 16);
        ast_meteo_DATA_END = .;
        ast_meteo_DATA_SIZE = ABSOLUTE(ast_meteo_DATA_END - ast_meteo_DATA_START);
    }
    __romPos += SIZEOF(.ast_meteo);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_meteo_ROM_END = __romPos;
    ast_meteo_VRAM_END = .;

    ast_titania_ROM_START = __romPos;
    ast_titania_VRAM = ADDR(.ast_titania);
    .ast_titania 0x6000000 : AT(ast_titania_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_titania_DATA_START = .;
        assets_ast_titania_ast_titania = .;
        build/src/assets/ast_titania/ast_titania.o(.data);
        . = ALIGN(., 16);
        ast_titania_DATA_END = .;
        ast_titania_DATA_SIZE = ABSOLUTE(ast_titania_DATA_END - ast_titania_DATA_START);
    }
    __romPos += SIZEOF(.ast_titania);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_titania_ROM_END = __romPos;
    ast_titania_VRAM_END = .;

    ast_7_ti_2_ROM_START = __romPos;
    ast_7_ti_2_VRAM = ADDR(.ast_7_ti_2);
    .ast_7_ti_2 0x7000000 : AT(ast_7_ti_2_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_7_ti_2_DATA_START = .;
        assets_ast_7_ti_2_ast_7_ti_2 = .;
        build/src/assets/ast_7_ti_2/ast_7_ti_2.o(.data);
        . = ALIGN(., 16);
        ast_7_ti_2_DATA_END = .;
        ast_7_ti_2_DATA_SIZE = ABSOLUTE(ast_7_ti_2_DATA_END - ast_7_ti_2_DATA_START);
    }
    __romPos += SIZEOF(.ast_7_ti_2);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_7_ti_2_ROM_END = __romPos;
    ast_7_ti_2_VRAM_END = .;

    ast_8_ti_ROM_START = __romPos;
    ast_8_ti_VRAM = ADDR(.ast_8_ti);
    .ast_8_ti 0x8000000 : AT(ast_8_ti_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_8_ti_DATA_START = .;
        assets_ast_8_ti_ast_8_ti = .;
        build/src/assets/ast_8_ti/ast_8_ti.o(.data);
        . = ALIGN(., 16);
        ast_8_ti_DATA_END = .;
        ast_8_ti_DATA_SIZE = ABSOLUTE(ast_8_ti_DATA_END - ast_8_ti_DATA_START);
    }
    __romPos += SIZEOF(.ast_8_ti);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_8_ti_ROM_END = __romPos;
    ast_8_ti_VRAM_END = .;

    ast_9_ti_ROM_START = __romPos;
    ast_9_ti_VRAM = ADDR(.ast_9_ti);
    .ast_9_ti 0x9000000 : AT(ast_9_ti_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_9_ti_DATA_START = .;
        assets_ast_9_ti_ast_9_ti = .;
        build/src/assets/ast_9_ti/ast_9_ti.o(.data);
        . = ALIGN(., 16);
        ast_9_ti_DATA_END = .;
        ast_9_ti_DATA_SIZE = ABSOLUTE(ast_9_ti_DATA_END - ast_9_ti_DATA_START);
    }
    __romPos += SIZEOF(.ast_9_ti);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_9_ti_ROM_END = __romPos;
    ast_9_ti_VRAM_END = .;

    ast_A_ti_ROM_START = __romPos;
    ast_A_ti_VRAM = ADDR(.ast_A_ti);
    .ast_A_ti 0xA000000 : AT(ast_A_ti_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_A_ti_DATA_START = .;
        assets_ast_A_ti_ast_A_ti = .;
        build/src/assets/ast_A_ti/ast_A_ti.o(.data);
        . = ALIGN(., 16);
        ast_A_ti_DATA_END = .;
        ast_A_ti_DATA_SIZE = ABSOLUTE(ast_A_ti_DATA_END - ast_A_ti_DATA_START);
    }
    __romPos += SIZEOF(.ast_A_ti);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_A_ti_ROM_END = __romPos;
    ast_A_ti_VRAM_END = .;

    ast_7_ti_1_ROM_START = __romPos;
    ast_7_ti_1_VRAM = ADDR(.ast_7_ti_1);
    .ast_7_ti_1 0x7000000 : AT(ast_7_ti_1_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_7_ti_1_DATA_START = .;
        assets_ast_7_ti_1_ast_7_ti_1 = .;
        build/src/assets/ast_7_ti_1/ast_7_ti_1.o(.data);
        . = ALIGN(., 16);
        ast_7_ti_1_DATA_END = .;
        ast_7_ti_1_DATA_SIZE = ABSOLUTE(ast_7_ti_1_DATA_END - ast_7_ti_1_DATA_START);
    }
    __romPos += SIZEOF(.ast_7_ti_1);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_7_ti_1_ROM_END = __romPos;
    ast_7_ti_1_VRAM_END = .;

    ast_sector_x_ROM_START = __romPos;
    ast_sector_x_VRAM = ADDR(.ast_sector_x);
    .ast_sector_x 0x6000000 : AT(ast_sector_x_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_sector_x_DATA_START = .;
        assets_ast_sector_x_ast_sector_x = .;
        build/src/assets/ast_sector_x/ast_sector_x.o(.data);
        . = ALIGN(., 16);
        ast_sector_x_DATA_END = .;
        ast_sector_x_DATA_SIZE = ABSOLUTE(ast_sector_x_DATA_END - ast_sector_x_DATA_START);
    }
    __romPos += SIZEOF(.ast_sector_x);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_sector_x_ROM_END = __romPos;
    ast_sector_x_VRAM_END = .;

    ast_sector_z_ROM_START = __romPos;
    ast_sector_z_VRAM = ADDR(.ast_sector_z);
    .ast_sector_z 0x6000000 : AT(ast_sector_z_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_sector_z_DATA_START = .;
        assets_ast_sector_z_ast_sector_z = .;
        build/src/assets/ast_sector_z/ast_sector_z.o(.data);
        . = ALIGN(., 16);
        ast_sector_z_DATA_END = .;
        ast_sector_z_DATA_SIZE = ABSOLUTE(ast_sector_z_DATA_END - ast_sector_z_DATA_START);
    }
    __romPos += SIZEOF(.ast_sector_z);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_sector_z_ROM_END = __romPos;
    ast_sector_z_VRAM_END = .;

    ast_aquas_ROM_START = __romPos;
    ast_aquas_VRAM = ADDR(.ast_aquas);
    .ast_aquas 0x6000000 : AT(ast_aquas_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_aquas_DATA_START = .;
        assets_ast_aquas_ast_aquas = .;
        build/src/assets/ast_aquas/ast_aquas.o(.data);
        . = ALIGN(., 16);
        ast_aquas_DATA_END = .;
        ast_aquas_DATA_SIZE = ABSOLUTE(ast_aquas_DATA_END - ast_aquas_DATA_START);
    }
    __romPos += SIZEOF(.ast_aquas);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_aquas_ROM_END = __romPos;
    ast_aquas_VRAM_END = .;

    ast_area_6_ROM_START = __romPos;
    ast_area_6_VRAM = ADDR(.ast_area_6);
    .ast_area_6 0x6000000 : AT(ast_area_6_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_area_6_DATA_START = .;
        assets_ast_area_6_ast_area_6 = .;
        build/src/assets/ast_area_6/ast_area_6.o(.data);
        . = ALIGN(., 16);
        ast_area_6_DATA_END = .;
        ast_area_6_DATA_SIZE = ABSOLUTE(ast_area_6_DATA_END - ast_area_6_DATA_START);
    }
    __romPos += SIZEOF(.ast_area_6);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_area_6_ROM_END = __romPos;
    ast_area_6_VRAM_END = .;

    ast_venom_1_ROM_START = __romPos;
    ast_venom_1_VRAM = ADDR(.ast_venom_1);
    .ast_venom_1 0x6000000 : AT(ast_venom_1_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_venom_1_DATA_START = .;
        assets_ast_venom_1_ast_venom_1 = .;
        build/src/assets/ast_venom_1/ast_venom_1.o(.data);
        . = ALIGN(., 16);
        ast_venom_1_DATA_END = .;
        ast_venom_1_DATA_SIZE = ABSOLUTE(ast_venom_1_DATA_END - ast_venom_1_DATA_START);
    }
    __romPos += SIZEOF(.ast_venom_1);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_venom_1_ROM_END = __romPos;
    ast_venom_1_VRAM_END = .;

    ast_venom_2_ROM_START = __romPos;
    ast_venom_2_VRAM = ADDR(.ast_venom_2);
    .ast_venom_2 0x6000000 : AT(ast_venom_2_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_venom_2_DATA_START = .;
        assets_ast_venom_2_ast_venom_2 = .;
        build/src/assets/ast_venom_2/ast_venom_2.o(.data);
        . = ALIGN(., 16);
        ast_venom_2_DATA_END = .;
        ast_venom_2_DATA_SIZE = ABSOLUTE(ast_venom_2_DATA_END - ast_venom_2_DATA_START);
    }
    __romPos += SIZEOF(.ast_venom_2);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_venom_2_ROM_END = __romPos;
    ast_venom_2_VRAM_END = .;

    ast_ve1_boss_ROM_START = __romPos;
    ast_ve1_boss_VRAM = ADDR(.ast_ve1_boss);
    .ast_ve1_boss 0x9000000 : AT(ast_ve1_boss_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_ve1_boss_DATA_START = .;
        assets_ast_ve1_boss_ast_ve1_boss = .;
        build/src/assets/ast_ve1_boss/ast_ve1_boss.o(.data);
        . = ALIGN(., 16);
        ast_ve1_boss_DATA_END = .;
        ast_ve1_boss_DATA_SIZE = ABSOLUTE(ast_ve1_boss_DATA_END - ast_ve1_boss_DATA_START);
    }
    __romPos += SIZEOF(.ast_ve1_boss);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_ve1_boss_ROM_END = __romPos;
    ast_ve1_boss_VRAM_END = .;

    ast_bolse_ROM_START = __romPos;
    ast_bolse_VRAM = ADDR(.ast_bolse);
    .ast_bolse 0x6000000 : AT(ast_bolse_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_bolse_DATA_START = .;
        assets_ast_bolse_ast_bolse = .;
        build/src/assets/ast_bolse/ast_bolse.o(.data);
        . = ALIGN(., 16);
        ast_bolse_DATA_END = .;
        ast_bolse_DATA_SIZE = ABSOLUTE(ast_bolse_DATA_END - ast_bolse_DATA_START);
    }
    __romPos += SIZEOF(.ast_bolse);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_bolse_ROM_END = __romPos;
    ast_bolse_VRAM_END = .;

    ast_fortuna_ROM_START = __romPos;
    ast_fortuna_VRAM = ADDR(.ast_fortuna);
    .ast_fortuna 0x6000000 : AT(ast_fortuna_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_fortuna_DATA_START = .;
        assets_ast_fortuna_ast_fortuna = .;
        build/src/assets/ast_fortuna/ast_fortuna.o(.data);
        . = ALIGN(., 16);
        ast_fortuna_DATA_END = .;
        ast_fortuna_DATA_SIZE = ABSOLUTE(ast_fortuna_DATA_END - ast_fortuna_DATA_START);
    }
    __romPos += SIZEOF(.ast_fortuna);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_fortuna_ROM_END = __romPos;
    ast_fortuna_VRAM_END = .;

    ast_sector_y_ROM_START = __romPos;
    ast_sector_y_VRAM = ADDR(.ast_sector_y);
    .ast_sector_y 0x6000000 : AT(ast_sector_y_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_sector_y_DATA_START = .;
        assets_ast_sector_y_ast_sector_y = .;
        build/src/assets/ast_sector_y/ast_sector_y.o(.data);
        . = ALIGN(., 16);
        ast_sector_y_DATA_END = .;
        ast_sector_y_DATA_SIZE = ABSOLUTE(ast_sector_y_DATA_END - ast_sector_y_DATA_START);
    }
    __romPos += SIZEOF(.ast_sector_y);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_sector_y_ROM_END = __romPos;
    ast_sector_y_VRAM_END = .;

    ast_solar_ROM_START = __romPos;
    ast_solar_VRAM = ADDR(.ast_solar);
    .ast_solar 0x6000000 : AT(ast_solar_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_solar_DATA_START = .;
        assets_ast_solar_ast_solar = .;
        build/src/assets/ast_solar/ast_solar.o(.data);
        . = ALIGN(., 16);
        ast_solar_DATA_END = .;
        ast_solar_DATA_SIZE = ABSOLUTE(ast_solar_DATA_END - ast_solar_DATA_START);
    }
    __romPos += SIZEOF(.ast_solar);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_solar_ROM_END = __romPos;
    ast_solar_VRAM_END = .;

    ast_zoness_ROM_START = __romPos;
    ast_zoness_VRAM = ADDR(.ast_zoness);
    .ast_zoness 0x6000000 : AT(ast_zoness_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_zoness_DATA_START = .;
        assets_ast_zoness_ast_zoness = .;
        build/src/assets/ast_zoness/ast_zoness.o(.data);
        . = ALIGN(., 16);
        ast_zoness_DATA_END = .;
        ast_zoness_DATA_SIZE = ABSOLUTE(ast_zoness_DATA_END - ast_zoness_DATA_START);
    }
    __romPos += SIZEOF(.ast_zoness);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_zoness_ROM_END = __romPos;
    ast_zoness_VRAM_END = .;

    ast_katina_ROM_START = __romPos;
    ast_katina_VRAM = ADDR(.ast_katina);
    .ast_katina 0x6000000 : AT(ast_katina_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_katina_DATA_START = .;
        assets_ast_katina_ast_katina = .;
        build/src/assets/ast_katina/ast_katina.o(.data);
        . = ALIGN(., 16);
        ast_katina_DATA_END = .;
        ast_katina_DATA_SIZE = ABSOLUTE(ast_katina_DATA_END - ast_katina_DATA_START);
    }
    __romPos += SIZEOF(.ast_katina);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_katina_ROM_END = __romPos;
    ast_katina_VRAM_END = .;

    ast_macbeth_ROM_START = __romPos;
    ast_macbeth_VRAM = ADDR(.ast_macbeth);
    .ast_macbeth 0x6000000 : AT(ast_macbeth_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_macbeth_DATA_START = .;
        assets_ast_macbeth_ast_macbeth = .;
        build/src/assets/ast_macbeth/ast_macbeth.o(.data);
        . = ALIGN(., 16);
        ast_macbeth_DATA_END = .;
        ast_macbeth_DATA_SIZE = ABSOLUTE(ast_macbeth_DATA_END - ast_macbeth_DATA_START);
    }
    __romPos += SIZEOF(.ast_macbeth);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_macbeth_ROM_END = __romPos;
    ast_macbeth_VRAM_END = .;

    ast_warp_zone_ROM_START = __romPos;
    ast_warp_zone_VRAM = ADDR(.ast_warp_zone);
    .ast_warp_zone 0x7000000 : AT(ast_warp_zone_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_warp_zone_DATA_START = .;
        assets_ast_warp_zone_ast_warp_zone = .;
        build/src/assets/ast_warp_zone/ast_warp_zone.o(.data);
        . = ALIGN(., 16);
        ast_warp_zone_DATA_END = .;
        ast_warp_zone_DATA_SIZE = ABSOLUTE(ast_warp_zone_DATA_END - ast_warp_zone_DATA_START);
    }
    __romPos += SIZEOF(.ast_warp_zone);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_warp_zone_ROM_END = __romPos;
    ast_warp_zone_VRAM_END = .;

    ast_title_ROM_START = __romPos;
    ast_title_VRAM = ADDR(.ast_title);
    .ast_title 0x6000000 : AT(ast_title_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_title_DATA_START = .;
        assets_ast_title_ast_title = .;
        build/src/assets/ast_title/ast_title.o(.data);
        . = ALIGN(., 16);
        ast_title_DATA_END = .;
        ast_title_DATA_SIZE = ABSOLUTE(ast_title_DATA_END - ast_title_DATA_START);
    }
    __romPos += SIZEOF(.ast_title);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_title_ROM_END = __romPos;
    ast_title_VRAM_END = .;

    ast_map_ROM_START = __romPos;
    ast_map_VRAM = ADDR(.ast_map);
    .ast_map 0x6000000 : AT(ast_map_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_map_DATA_START = .;
        assets_ast_map_ast_map = .;
        build/src/assets/ast_map/ast_map.o(.data);
        . = ALIGN(., 16);
        ast_map_DATA_END = .;
        ast_map_DATA_SIZE = ABSOLUTE(ast_map_DATA_END - ast_map_DATA_START);
    }
    __romPos += SIZEOF(.ast_map);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_map_ROM_END = __romPos;
    ast_map_VRAM_END = .;

    ast_option_ROM_START = __romPos;
    ast_option_VRAM = ADDR(.ast_option);
    .ast_option 0x8000000 : AT(ast_option_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_option_DATA_START = .;
        assets_ast_option_ast_option = .;
        build/src/assets/ast_option/ast_option.o(.data);
        . = ALIGN(., 16);
        ast_option_DATA_END = .;
        ast_option_DATA_SIZE = ABSOLUTE(ast_option_DATA_END - ast_option_DATA_START);
    }
    __romPos += SIZEOF(.ast_option);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_option_ROM_END = __romPos;
    ast_option_VRAM_END = .;

    ast_vs_menu_ROM_START = __romPos;
    ast_vs_menu_VRAM = ADDR(.ast_vs_menu);
    .ast_vs_menu 0x7000000 : AT(ast_vs_menu_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_vs_menu_DATA_START = .;
        assets_ast_vs_menu_ast_vs_menu = .;
        build/src/assets/ast_vs_menu/ast_vs_menu.o(.data);
        . = ALIGN(., 16);
        ast_vs_menu_DATA_END = .;
        ast_vs_menu_DATA_SIZE = ABSOLUTE(ast_vs_menu_DATA_END - ast_vs_menu_DATA_START);
    }
    __romPos += SIZEOF(.ast_vs_menu);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_vs_menu_ROM_END = __romPos;
    ast_vs_menu_VRAM_END = .;

    ast_text_ROM_START = __romPos;
    ast_text_VRAM = ADDR(.ast_text);
    .ast_text 0x5000000 : AT(ast_text_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_text_DATA_START = .;
        assets_ast_text_ast_text = .;
        build/src/assets/ast_text/ast_text.o(.data);
        . = ALIGN(., 16);
        ast_text_DATA_END = .;
        ast_text_DATA_SIZE = ABSOLUTE(ast_text_DATA_END - ast_text_DATA_START);
    }
    __romPos += SIZEOF(.ast_text);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_text_ROM_END = __romPos;
    ast_text_VRAM_END = .;

    ast_font_3d_ROM_START = __romPos;
    ast_font_3d_VRAM = ADDR(.ast_font_3d);
    .ast_font_3d 0x9000000 : AT(ast_font_3d_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_font_3d_DATA_START = .;
        assets_ast_font_3d_ast_font_3d = .;
        build/src/assets/ast_font_3d/ast_font_3d.o(.data);
        . = ALIGN(., 16);
        ast_font_3d_DATA_END = .;
        ast_font_3d_DATA_SIZE = ABSOLUTE(ast_font_3d_DATA_END - ast_font_3d_DATA_START);
    }
    __romPos += SIZEOF(.ast_font_3d);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_font_3d_ROM_END = __romPos;
    ast_font_3d_VRAM_END = .;

    ast_andross_ROM_START = __romPos;
    ast_andross_VRAM = ADDR(.ast_andross);
    .ast_andross 0xC000000 : AT(ast_andross_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_andross_DATA_START = .;
        assets_ast_andross_ast_andross = .;
        build/src/assets/ast_andross/ast_andross.o(.data);
        . = ALIGN(., 16);
        ast_andross_DATA_END = .;
        ast_andross_DATA_SIZE = ABSOLUTE(ast_andross_DATA_END - ast_andross_DATA_START);
    }
    __romPos += SIZEOF(.ast_andross);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_andross_ROM_END = __romPos;
    ast_andross_VRAM_END = .;

    ast_logo_ROM_START = __romPos;
    ast_logo_VRAM = ADDR(.ast_logo);
    .ast_logo 0xF000000 : AT(ast_logo_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_logo_DATA_START = .;
        assets_ast_logo_ast_logo = .;
        build/src/assets/ast_logo/ast_logo.o(.data);
        . = ALIGN(., 16);
        ast_logo_DATA_END = .;
        ast_logo_DATA_SIZE = ABSOLUTE(ast_logo_DATA_END - ast_logo_DATA_START);
    }
    __romPos += SIZEOF(.ast_logo);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_logo_ROM_END = __romPos;
    ast_logo_VRAM_END = .;

    ast_ending_ROM_START = __romPos;
    ast_ending_VRAM = ADDR(.ast_ending);
    .ast_ending 0x7000000 : AT(ast_ending_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_ending_DATA_START = .;
        assets_ast_ending_ast_ending = .;
        build/src/assets/ast_ending/ast_ending.o(.data);
        . = ALIGN(., 16);
        ast_ending_DATA_END = .;
        ast_ending_DATA_SIZE = ABSOLUTE(ast_ending_DATA_END - ast_ending_DATA_START);
    }
    __romPos += SIZEOF(.ast_ending);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_ending_ROM_END = __romPos;
    ast_ending_VRAM_END = .;

    ast_ending_award_front_ROM_START = __romPos;
    ast_ending_award_front_VRAM = ADDR(.ast_ending_award_front);
    .ast_ending_award_front 0x8000000 : AT(ast_ending_award_front_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_ending_award_front_DATA_START = .;
        assets_ast_ending_award_front_ast_ending_award_front = .;
        build/src/assets/ast_ending_award_front/ast_ending_award_front.o(.data);
        . = ALIGN(., 16);
        ast_ending_award_front_DATA_END = .;
        ast_ending_award_front_DATA_SIZE = ABSOLUTE(ast_ending_award_front_DATA_END - ast_ending_award_front_DATA_START);
    }
    __romPos += SIZEOF(.ast_ending_award_front);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_ending_award_front_ROM_END = __romPos;
    ast_ending_award_front_VRAM_END = .;

    ast_ending_award_back_ROM_START = __romPos;
    ast_ending_award_back_VRAM = ADDR(.ast_ending_award_back);
    .ast_ending_award_back 0x8000000 : AT(ast_ending_award_back_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_ending_award_back_DATA_START = .;
        assets_ast_ending_award_back_ast_ending_award_back = .;
        build/src/assets/ast_ending_award_back/ast_ending_award_back.o(.data);
        . = ALIGN(., 16);
        ast_ending_award_back_DATA_END = .;
        ast_ending_award_back_DATA_SIZE = ABSOLUTE(ast_ending_award_back_DATA_END - ast_ending_award_back_DATA_START);
    }
    __romPos += SIZEOF(.ast_ending_award_back);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_ending_award_back_ROM_END = __romPos;
    ast_ending_award_back_VRAM_END = .;

    ast_ending_expert_ROM_START = __romPos;
    ast_ending_expert_VRAM = ADDR(.ast_ending_expert);
    .ast_ending_expert 0x8000000 : AT(ast_ending_expert_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_ending_expert_DATA_START = .;
        assets_ast_ending_expert_ast_ending_expert = .;
        build/src/assets/ast_ending_expert/ast_ending_expert.o(.data);
        . = ALIGN(., 16);
        ast_ending_expert_DATA_END = .;
        ast_ending_expert_DATA_SIZE = ABSOLUTE(ast_ending_expert_DATA_END - ast_ending_expert_DATA_START);
    }
    __romPos += SIZEOF(.ast_ending_expert);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_ending_expert_ROM_END = __romPos;
    ast_ending_expert_VRAM_END = .;

    ast_training_ROM_START = __romPos;
    ast_training_VRAM = ADDR(.ast_training);
    .ast_training 0x6000000 : AT(ast_training_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_training_DATA_START = .;
        assets_ast_training_ast_training = .;
        build/src/assets/ast_training/ast_training.o(.data);
        . = ALIGN(., 16);
        ast_training_DATA_END = .;
        ast_training_DATA_SIZE = ABSOLUTE(ast_training_DATA_END - ast_training_DATA_START);
    }
    __romPos += SIZEOF(.ast_training);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_training_ROM_END = __romPos;
    ast_training_VRAM_END = .;

    ast_radio_ROM_START = __romPos;
    ast_radio_VRAM = ADDR(.ast_radio);
    .ast_radio dma_table_VRAM_END : AT(ast_radio_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ast_radio_DATA_START = .;
        assets_ast_radio_ast_radio = .;
        build/src/assets/ast_radio/ast_radio.o(.data);
        . = ALIGN(., 16);
        ast_radio_DATA_END = .;
        ast_radio_DATA_SIZE = ABSOLUTE(ast_radio_DATA_END - ast_radio_DATA_START);
    }
    __romPos += SIZEOF(.ast_radio);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ast_radio_ROM_END = __romPos;
    ast_radio_VRAM_END = .;

    ovl_i1_ROM_START = __romPos;
    ovl_i1_VRAM = ADDR(.ovl_i1);
    .ovl_i1 ast_radio_VRAM_END : AT(ovl_i1_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i1_TEXT_START = .;
        build/src/overlays/ovl_i1/fox_i1.o(.text);
        build/src/overlays/ovl_i1/fox_co.o(.text);
        build/src/overlays/ovl_i1/fox_ve1.o(.text);
        build/src/overlays/ovl_i1/fox_tr.o(.text);
        build/src/overlays/ovl_i1/fox_tr360.o(.text);
        . = ALIGN(., 16);
        ovl_i1_TEXT_END = .;
        ovl_i1_TEXT_SIZE = ABSOLUTE(ovl_i1_TEXT_END - ovl_i1_TEXT_START);
        ovl_i1_DATA_START = .;
        overlays_ovl_i1_fox_i1 = .;
        build/src/overlays/ovl_i1/fox_i1.o(.data);
        overlays_ovl_i1_fox_co = .;
        build/src/overlays/ovl_i1/fox_co.o(.data);
        overlays_ovl_i1_fox_ve1 = .;
        build/src/overlays/ovl_i1/fox_ve1.o(.data);
        overlays_ovl_i1_fox_tr = .;
        build/src/overlays/ovl_i1/fox_tr.o(.data);
        overlays_ovl_i1_fox_tr360 = .;
        build/src/overlays/ovl_i1/fox_tr360.o(.data);
        . = ALIGN(., 16);
        ovl_i1_DATA_END = .;
        ovl_i1_DATA_SIZE = ABSOLUTE(ovl_i1_DATA_END - ovl_i1_DATA_START);
        ovl_i1_RODATA_START = .;
        build/src/overlays/ovl_i1/fox_i1.o(.rodata);
        build/src/overlays/ovl_i1/fox_co.o(.rodata);
        build/src/overlays/ovl_i1/fox_ve1.o(.rodata);
        build/src/overlays/ovl_i1/fox_tr.o(.rodata);
        build/src/overlays/ovl_i1/fox_tr360.o(.rodata);
        . = ALIGN(., 16);
        ovl_i1_RODATA_END = .;
        ovl_i1_RODATA_SIZE = ABSOLUTE(ovl_i1_RODATA_END - ovl_i1_RODATA_START);
    }
    ovl_i1_bss_VRAM = ADDR(.ovl_i1_bss);
    .ovl_i1_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i1_BSS_START = .;
        build/src/overlays/ovl_i1/fox_i1.o(.bss);
        build/src/overlays/ovl_i1/fox_co.o(.bss);
        build/src/overlays/ovl_i1/fox_ve1.o(.bss);
        build/src/overlays/ovl_i1/fox_tr.o(.bss);
        build/src/overlays/ovl_i1/fox_tr360.o(.bss);
        . = ALIGN(., 16);
        ovl_i1_BSS_END = .;
        ovl_i1_BSS_SIZE = ABSOLUTE(ovl_i1_BSS_END - ovl_i1_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i1);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i1_ROM_END = __romPos;
    ovl_i1_VRAM_END = .;

    ovl_i2_ROM_START = __romPos;
    ovl_i2_VRAM = ADDR(.ovl_i2);
    .ovl_i2 ast_radio_VRAM_END : AT(ovl_i2_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i2_TEXT_START = .;
        build/src/overlays/ovl_i2/fox_i2.o(.text);
        build/src/overlays/ovl_i2/fox_me.o(.text);
        build/src/overlays/ovl_i2/fox_sx.o(.text);
        . = ALIGN(., 16);
        ovl_i2_TEXT_END = .;
        ovl_i2_TEXT_SIZE = ABSOLUTE(ovl_i2_TEXT_END - ovl_i2_TEXT_START);
        ovl_i2_DATA_START = .;
        overlays_ovl_i2_fox_i2 = .;
        build/src/overlays/ovl_i2/fox_i2.o(.data);
        overlays_ovl_i2_fox_me = .;
        build/src/overlays/ovl_i2/fox_me.o(.data);
        overlays_ovl_i2_fox_sx = .;
        build/src/overlays/ovl_i2/fox_sx.o(.data);
        . = ALIGN(., 16);
        ovl_i2_DATA_END = .;
        ovl_i2_DATA_SIZE = ABSOLUTE(ovl_i2_DATA_END - ovl_i2_DATA_START);
        ovl_i2_RODATA_START = .;
        build/src/overlays/ovl_i2/fox_i2.o(.rodata);
        build/src/overlays/ovl_i2/fox_me.o(.rodata);
        build/src/overlays/ovl_i2/fox_sx.o(.rodata);
        . = ALIGN(., 16);
        ovl_i2_RODATA_END = .;
        ovl_i2_RODATA_SIZE = ABSOLUTE(ovl_i2_RODATA_END - ovl_i2_RODATA_START);
    }
    ovl_i2_bss_VRAM = ADDR(.ovl_i2_bss);
    .ovl_i2_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i2_BSS_START = .;
        build/src/overlays/ovl_i2/fox_i2.o(.bss);
        build/src/overlays/ovl_i2/fox_me.o(.bss);
        build/src/overlays/ovl_i2/fox_sx.o(.bss);
        . = ALIGN(., 16);
        ovl_i2_BSS_END = .;
        ovl_i2_BSS_SIZE = ABSOLUTE(ovl_i2_BSS_END - ovl_i2_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i2);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i2_ROM_END = __romPos;
    ovl_i2_VRAM_END = .;

    ovl_i3_ROM_START = __romPos;
    ovl_i3_VRAM = ADDR(.ovl_i3);
    .ovl_i3 ast_radio_VRAM_END : AT(ovl_i3_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i3_TEXT_START = .;
        build/src/overlays/ovl_i3/fox_i3.o(.text);
        build/src/overlays/ovl_i3/fox_a6.o(.text);
        build/src/overlays/ovl_i3/fox_zo.o(.text);
        build/src/overlays/ovl_i3/fox_so.o(.text);
        build/src/overlays/ovl_i3/fox_aq.o(.text);
        . = ALIGN(., 16);
        ovl_i3_TEXT_END = .;
        ovl_i3_TEXT_SIZE = ABSOLUTE(ovl_i3_TEXT_END - ovl_i3_TEXT_START);
        ovl_i3_DATA_START = .;
        overlays_ovl_i3_fox_i3 = .;
        build/src/overlays/ovl_i3/fox_i3.o(.data);
        overlays_ovl_i3_fox_a6 = .;
        build/src/overlays/ovl_i3/fox_a6.o(.data);
        overlays_ovl_i3_fox_zo = .;
        build/src/overlays/ovl_i3/fox_zo.o(.data);
        overlays_ovl_i3_fox_so = .;
        build/src/overlays/ovl_i3/fox_so.o(.data);
        overlays_ovl_i3_fox_aq = .;
        build/src/overlays/ovl_i3/fox_aq.o(.data);
        . = ALIGN(., 16);
        ovl_i3_DATA_END = .;
        ovl_i3_DATA_SIZE = ABSOLUTE(ovl_i3_DATA_END - ovl_i3_DATA_START);
        ovl_i3_RODATA_START = .;
        build/src/overlays/ovl_i3/fox_i3.o(.rodata);
        build/src/overlays/ovl_i3/fox_a6.o(.rodata);
        build/src/overlays/ovl_i3/fox_zo.o(.rodata);
        build/src/overlays/ovl_i3/fox_so.o(.rodata);
        build/src/overlays/ovl_i3/fox_aq.o(.rodata);
        . = ALIGN(., 16);
        ovl_i3_RODATA_END = .;
        ovl_i3_RODATA_SIZE = ABSOLUTE(ovl_i3_RODATA_END - ovl_i3_RODATA_START);
    }
    ovl_i3_bss_VRAM = ADDR(.ovl_i3_bss);
    .ovl_i3_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i3_BSS_START = .;
        build/src/overlays/ovl_i3/fox_i3.o(.bss);
        build/src/overlays/ovl_i3/fox_a6.o(.bss);
        build/src/overlays/ovl_i3/fox_zo.o(.bss);
        build/src/overlays/ovl_i3/fox_so.o(.bss);
        build/src/overlays/ovl_i3/fox_aq.o(.bss);
        . = ALIGN(., 16);
        ovl_i3_BSS_END = .;
        ovl_i3_BSS_SIZE = ABSOLUTE(ovl_i3_BSS_END - ovl_i3_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i3);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i3_ROM_END = __romPos;
    ovl_i3_VRAM_END = .;

    ovl_i4_ROM_START = __romPos;
    ovl_i4_VRAM = ADDR(.ovl_i4);
    .ovl_i4 ast_radio_VRAM_END : AT(ovl_i4_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i4_TEXT_START = .;
        build/src/overlays/ovl_i4/fox_i4.o(.text);
        build/src/overlays/ovl_i4/fox_fo.o(.text);
        build/src/overlays/ovl_i4/fox_bo.o(.text);
        build/src/overlays/ovl_i4/fox_ka.o(.text);
        build/src/overlays/ovl_i4/fox_sz.o(.text);
        . = ALIGN(., 16);
        ovl_i4_TEXT_END = .;
        ovl_i4_TEXT_SIZE = ABSOLUTE(ovl_i4_TEXT_END - ovl_i4_TEXT_START);
        ovl_i4_DATA_START = .;
        overlays_ovl_i4_fox_i4 = .;
        build/src/overlays/ovl_i4/fox_i4.o(.data);
        overlays_ovl_i4_fox_fo = .;
        build/src/overlays/ovl_i4/fox_fo.o(.data);
        overlays_ovl_i4_fox_bo = .;
        build/src/overlays/ovl_i4/fox_bo.o(.data);
        overlays_ovl_i4_fox_ka = .;
        build/src/overlays/ovl_i4/fox_ka.o(.data);
        overlays_ovl_i4_fox_sz = .;
        build/src/overlays/ovl_i4/fox_sz.o(.data);
        . = ALIGN(., 16);
        ovl_i4_DATA_END = .;
        ovl_i4_DATA_SIZE = ABSOLUTE(ovl_i4_DATA_END - ovl_i4_DATA_START);
        ovl_i4_RODATA_START = .;
        build/src/overlays/ovl_i4/fox_i4.o(.rodata);
        build/src/overlays/ovl_i4/fox_fo.o(.rodata);
        build/src/overlays/ovl_i4/fox_bo.o(.rodata);
        build/src/overlays/ovl_i4/fox_ka.o(.rodata);
        build/src/overlays/ovl_i4/fox_sz.o(.rodata);
        . = ALIGN(., 16);
        ovl_i4_RODATA_END = .;
        ovl_i4_RODATA_SIZE = ABSOLUTE(ovl_i4_RODATA_END - ovl_i4_RODATA_START);
    }
    ovl_i4_bss_VRAM = ADDR(.ovl_i4_bss);
    .ovl_i4_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i4_BSS_START = .;
        build/src/overlays/ovl_i4/fox_i4.o(.bss);
        build/src/overlays/ovl_i4/fox_fo.o(.bss);
        build/src/overlays/ovl_i4/fox_bo.o(.bss);
        build/src/overlays/ovl_i4/fox_ka.o(.bss);
        build/src/overlays/ovl_i4/fox_sz.o(.bss);
        . = ALIGN(., 16);
        ovl_i4_BSS_END = .;
        ovl_i4_BSS_SIZE = ABSOLUTE(ovl_i4_BSS_END - ovl_i4_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i4);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i4_ROM_END = __romPos;
    ovl_i4_VRAM_END = .;

    ovl_i5_ROM_START = __romPos;
    ovl_i5_VRAM = ADDR(.ovl_i5);
    .ovl_i5 ast_radio_VRAM_END : AT(ovl_i5_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i5_TEXT_START = .;
        build/src/overlays/ovl_i5/fox_i5.o(.text);
        build/src/overlays/ovl_i5/fox_ti_cs.o(.text);
        build/src/overlays/ovl_i5/fox_ti.o(.text);
        build/src/overlays/ovl_i5/fox_ma.o(.text);
        build/src/overlays/ovl_i5/fox_ground.o(.text);
        . = ALIGN(., 16);
        ovl_i5_TEXT_END = .;
        ovl_i5_TEXT_SIZE = ABSOLUTE(ovl_i5_TEXT_END - ovl_i5_TEXT_START);
        ovl_i5_DATA_START = .;
        overlays_ovl_i5_fox_i5 = .;
        build/src/overlays/ovl_i5/fox_i5.o(.data);
        overlays_ovl_i5_fox_ti_cs = .;
        build/src/overlays/ovl_i5/fox_ti_cs.o(.data);
        overlays_ovl_i5_fox_ti = .;
        build/src/overlays/ovl_i5/fox_ti.o(.data);
        overlays_ovl_i5_fox_ma = .;
        build/src/overlays/ovl_i5/fox_ma.o(.data);
        overlays_ovl_i5_fox_ground = .;
        build/src/overlays/ovl_i5/fox_ground.o(.data);
        . = ALIGN(., 16);
        ovl_i5_DATA_END = .;
        ovl_i5_DATA_SIZE = ABSOLUTE(ovl_i5_DATA_END - ovl_i5_DATA_START);
        ovl_i5_RODATA_START = .;
        build/src/overlays/ovl_i5/fox_i5.o(.rodata);
        build/src/overlays/ovl_i5/fox_ti_cs.o(.rodata);
        build/src/overlays/ovl_i5/fox_ti.o(.rodata);
        build/src/overlays/ovl_i5/fox_ma.o(.rodata);
        build/src/overlays/ovl_i5/fox_ground.o(.rodata);
        . = ALIGN(., 16);
        ovl_i5_RODATA_END = .;
        ovl_i5_RODATA_SIZE = ABSOLUTE(ovl_i5_RODATA_END - ovl_i5_RODATA_START);
    }
    ovl_i5_bss_VRAM = ADDR(.ovl_i5_bss);
    .ovl_i5_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i5_BSS_START = .;
        build/src/overlays/ovl_i5/fox_i5.o(.bss);
        build/src/overlays/ovl_i5/fox_ti_cs.o(.bss);
        build/src/overlays/ovl_i5/fox_ti.o(.bss);
        build/src/overlays/ovl_i5/fox_ma.o(.bss);
        build/src/overlays/ovl_i5/fox_ground.o(.bss);
        . = ALIGN(., 16);
        ovl_i5_BSS_END = .;
        ovl_i5_BSS_SIZE = ABSOLUTE(ovl_i5_BSS_END - ovl_i5_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i5);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i5_ROM_END = __romPos;
    ovl_i5_VRAM_END = .;

    ovl_i6_ROM_START = __romPos;
    ovl_i6_VRAM = ADDR(.ovl_i6);
    .ovl_i6 ast_radio_VRAM_END : AT(ovl_i6_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i6_TEXT_START = .;
        build/src/overlays/ovl_i6/fox_i6.o(.text);
        build/src/overlays/ovl_i6/fox_andross.o(.text);
        build/src/overlays/ovl_i6/fox_ve2.o(.text);
        build/src/overlays/ovl_i6/fox_sy.o(.text);
        build/src/overlays/ovl_i6/fox_turret.o(.text);
        . = ALIGN(., 16);
        ovl_i6_TEXT_END = .;
        ovl_i6_TEXT_SIZE = ABSOLUTE(ovl_i6_TEXT_END - ovl_i6_TEXT_START);
        ovl_i6_DATA_START = .;
        overlays_ovl_i6_fox_i6 = .;
        build/src/overlays/ovl_i6/fox_i6.o(.data);
        overlays_ovl_i6_fox_andross = .;
        build/src/overlays/ovl_i6/fox_andross.o(.data);
        overlays_ovl_i6_fox_ve2 = .;
        build/src/overlays/ovl_i6/fox_ve2.o(.data);
        overlays_ovl_i6_fox_sy = .;
        build/src/overlays/ovl_i6/fox_sy.o(.data);
        overlays_ovl_i6_fox_turret = .;
        build/src/overlays/ovl_i6/fox_turret.o(.data);
        . = ALIGN(., 16);
        ovl_i6_DATA_END = .;
        ovl_i6_DATA_SIZE = ABSOLUTE(ovl_i6_DATA_END - ovl_i6_DATA_START);
        ovl_i6_RODATA_START = .;
        build/src/overlays/ovl_i6/fox_i6.o(.rodata);
        build/src/overlays/ovl_i6/fox_andross.o(.rodata);
        build/src/overlays/ovl_i6/fox_ve2.o(.rodata);
        build/src/overlays/ovl_i6/fox_sy.o(.rodata);
        build/src/overlays/ovl_i6/fox_turret.o(.rodata);
        . = ALIGN(., 16);
        ovl_i6_RODATA_END = .;
        ovl_i6_RODATA_SIZE = ABSOLUTE(ovl_i6_RODATA_END - ovl_i6_RODATA_START);
    }
    ovl_i6_bss_VRAM = ADDR(.ovl_i6_bss);
    .ovl_i6_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_i6_BSS_START = .;
        build/src/overlays/ovl_i6/fox_i6.o(.bss);
        build/src/overlays/ovl_i6/fox_andross.o(.bss);
        build/src/overlays/ovl_i6/fox_ve2.o(.bss);
        build/src/overlays/ovl_i6/fox_sy.o(.bss);
        build/src/overlays/ovl_i6/fox_turret.o(.bss);
        . = ALIGN(., 16);
        ovl_i6_BSS_END = .;
        ovl_i6_BSS_SIZE = ABSOLUTE(ovl_i6_BSS_END - ovl_i6_BSS_START);
    }
    __romPos += SIZEOF(.ovl_i6);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_i6_ROM_END = __romPos;
    ovl_i6_VRAM_END = .;

    ovl_menu_ROM_START = __romPos;
    ovl_menu_VRAM = ADDR(.ovl_menu);
    .ovl_menu ast_radio_VRAM_END : AT(ovl_menu_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_menu_TEXT_START = .;
        build/src/overlays/ovl_menu/fox_i_menu.o(.text);
        build/src/overlays/ovl_menu/fox_title.o(.text);
        build/src/overlays/ovl_menu/fox_option.o(.text);
        build/src/overlays/ovl_menu/fox_map.o(.text);
        . = ALIGN(., 16);
        ovl_menu_TEXT_END = .;
        ovl_menu_TEXT_SIZE = ABSOLUTE(ovl_menu_TEXT_END - ovl_menu_TEXT_START);
        ovl_menu_DATA_START = .;
        overlays_ovl_menu_fox_i_menu = .;
        build/src/overlays/ovl_menu/fox_i_menu.o(.data);
        overlays_ovl_menu_fox_title = .;
        build/src/overlays/ovl_menu/fox_title.o(.data);
        overlays_ovl_menu_fox_option = .;
        build/src/overlays/ovl_menu/fox_option.o(.data);
        overlays_ovl_menu_fox_map = .;
        build/src/overlays/ovl_menu/fox_map.o(.data);
        . = ALIGN(., 16);
        ovl_menu_DATA_END = .;
        ovl_menu_DATA_SIZE = ABSOLUTE(ovl_menu_DATA_END - ovl_menu_DATA_START);
        ovl_menu_RODATA_START = .;
        build/src/overlays/ovl_menu/fox_i_menu.o(.rodata);
        build/src/overlays/ovl_menu/fox_title.o(.rodata);
        build/src/overlays/ovl_menu/fox_option.o(.rodata);
        build/src/overlays/ovl_menu/fox_map.o(.rodata);
        . = ALIGN(., 16);
        ovl_menu_RODATA_END = .;
        ovl_menu_RODATA_SIZE = ABSOLUTE(ovl_menu_RODATA_END - ovl_menu_RODATA_START);
    }
    ovl_menu_bss_VRAM = ADDR(.ovl_menu_bss);
    .ovl_menu_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_menu_BSS_START = .;
        build/src/overlays/ovl_menu/fox_i_menu.o(.bss);
        build/src/overlays/ovl_menu/fox_title.o(.bss);
        build/src/overlays/ovl_menu/fox_option.o(.bss);
        build/src/overlays/ovl_menu/fox_map.o(.bss);
        . = ALIGN(., 16);
        ovl_menu_BSS_END = .;
        ovl_menu_BSS_SIZE = ABSOLUTE(ovl_menu_BSS_END - ovl_menu_BSS_START);
    }
    __romPos += SIZEOF(.ovl_menu);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_menu_ROM_END = __romPos;
    ovl_menu_VRAM_END = .;

    ovl_ending_ROM_START = __romPos;
    ovl_ending_VRAM = ADDR(.ovl_ending);
    .ovl_ending ast_radio_VRAM_END : AT(ovl_ending_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_ending_TEXT_START = .;
        build/src/overlays/ovl_ending/fox_end1.o(.text);
        build/src/overlays/ovl_ending/fox_end2.o(.text);
        . = ALIGN(., 16);
        ovl_ending_TEXT_END = .;
        ovl_ending_TEXT_SIZE = ABSOLUTE(ovl_ending_TEXT_END - ovl_ending_TEXT_START);
        ovl_ending_DATA_START = .;
        overlays_ovl_ending_fox_end1 = .;
        build/src/overlays/ovl_ending/fox_end1.o(.data);
        overlays_ovl_ending_fox_end2 = .;
        build/src/overlays/ovl_ending/fox_end2.o(.data);
        . = ALIGN(., 16);
        ovl_ending_DATA_END = .;
        ovl_ending_DATA_SIZE = ABSOLUTE(ovl_ending_DATA_END - ovl_ending_DATA_START);
        ovl_ending_RODATA_START = .;
        build/src/overlays/ovl_ending/fox_end1.o(.rodata);
        build/src/overlays/ovl_ending/fox_end2.o(.rodata);
        . = ALIGN(., 16);
        ovl_ending_RODATA_END = .;
        ovl_ending_RODATA_SIZE = ABSOLUTE(ovl_ending_RODATA_END - ovl_ending_RODATA_START);
    }
    ovl_ending_bss_VRAM = ADDR(.ovl_ending_bss);
    .ovl_ending_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_ending_BSS_START = .;
        build/src/overlays/ovl_ending/fox_end1.o(.bss);
        build/src/overlays/ovl_ending/fox_end2.o(.bss);
        . = ALIGN(., 16);
        ovl_ending_BSS_END = .;
        ovl_ending_BSS_SIZE = ABSOLUTE(ovl_ending_BSS_END - ovl_ending_BSS_START);
    }
    __romPos += SIZEOF(.ovl_ending);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_ending_ROM_END = __romPos;
    ovl_ending_VRAM_END = .;

    ovl_unused_ROM_START = __romPos;
    ovl_unused_VRAM = ADDR(.ovl_unused);
    .ovl_unused ast_radio_VRAM_END : AT(ovl_unused_ROM_START) SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_unused_TEXT_START = .;
        build/src/overlays/ovl_unused/fox_unused.o(.text);
        . = ALIGN(., 16);
        ovl_unused_TEXT_END = .;
        ovl_unused_TEXT_SIZE = ABSOLUTE(ovl_unused_TEXT_END - ovl_unused_TEXT_START);
        ovl_unused_DATA_START = .;
        overlays_ovl_unused_fox_unused = .;
        build/src/overlays/ovl_unused/fox_unused.o(.data);
        . = ALIGN(., 16);
        ovl_unused_DATA_END = .;
        ovl_unused_DATA_SIZE = ABSOLUTE(ovl_unused_DATA_END - ovl_unused_DATA_START);
        ovl_unused_RODATA_START = .;
        build/src/overlays/ovl_unused/fox_unused.o(.rodata);
        . = ALIGN(., 16);
        ovl_unused_RODATA_END = .;
        ovl_unused_RODATA_SIZE = ABSOLUTE(ovl_unused_RODATA_END - ovl_unused_RODATA_START);
    }
    ovl_unused_bss_VRAM = ADDR(.ovl_unused_bss);
    .ovl_unused_bss (NOLOAD) : SUBALIGN(16)
    {
        FILL(0x00000000);
        ovl_unused_BSS_START = .;
        build/src/overlays/ovl_unused/fox_unused.o(.bss);
        . = ALIGN(., 16);
        ovl_unused_BSS_END = .;
        ovl_unused_BSS_SIZE = ABSOLUTE(ovl_unused_BSS_END - ovl_unused_BSS_START);
    }
    __romPos += SIZEOF(.ovl_unused);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    ovl_unused_ROM_END = __romPos;
    ovl_unused_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
