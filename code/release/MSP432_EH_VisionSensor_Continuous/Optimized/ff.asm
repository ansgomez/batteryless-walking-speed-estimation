;******************************************************************************
;* TI ARM C/C++ Codegen                                           Unix v5.2.5 *
;* Date/Time created: Fri May 13 14:57:25 2016                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../utils/ff.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen Unix v5.2.5 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/Users/thomas/Dropbox/Masterthesis/code/CCStudio_workspace/MSP432_DisplacementLogger_V1/Optimized")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("get_fattime")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("get_fattime")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("disk_initialize")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("disk_initialize")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x23)
	.dwattr $C$DW$2, DW_AT_decl_column(0x09)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("disk_status")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("disk_status")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x24)
	.dwattr $C$DW$4, DW_AT_decl_column(0x09)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("disk_read")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("disk_read")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x25)
	.dwattr $C$DW$6, DW_AT_decl_column(0x09)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$26)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$6


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("disk_write")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("disk_write")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x26)
	.dwattr $C$DW$11, DW_AT_decl_column(0x09)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$43)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$11


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("disk_ioctl")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x27)
	.dwattr $C$DW$16, DW_AT_decl_column(0x09)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$16

	.bss	||$O1$$||,8,4

;*********************************************************************
;* GROUPED GLOBALS FOR $O1$$                                         *
;*********************************************************************
Fsid:	.set	||$O1$$||+0
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("Fsid")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("Fsid")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr Fsid]
	.dwattr $C$DW$20, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
FatFs:	.set	||$O1$$||+4
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("FatFs")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("FatFs")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr FatFs]
	.dwattr $C$DW$21, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$21, DW_AT_decl_column(0x08)
	.sect	".const"
	.align	4
	.elfsym	||$O2$$||,SYM_SIZE(44)
||$O2$$||:
	.bits	1024,16			; $O2$$.vst$1[0] @ 0
	.bits	512,16			; $O2$$.vst$1[1] @ 16
	.bits	256,16			; $O2$$.vst$1[2] @ 32
	.bits	128,16			; $O2$$.vst$1[3] @ 48
	.bits	64,16			; $O2$$.vst$1[4] @ 64
	.bits	32,16			; $O2$$.vst$1[5] @ 80
	.bits	16,16			; $O2$$.vst$1[6] @ 96
	.bits	8,16			; $O2$$.vst$1[7] @ 112
	.bits	4,16			; $O2$$.vst$1[8] @ 128
	.bits	2,16			; $O2$$.vst$1[9] @ 144
	.bits	0,16			; $O2$$.vst$1[10] @ 160
	.bits	32768,16			; $O2$$.cst$2[0] @ 176
	.bits	16384,16			; $O2$$.cst$2[1] @ 192
	.bits	8192,16			; $O2$$.cst$2[2] @ 208
	.bits	4096,16			; $O2$$.cst$2[3] @ 224
	.bits	2048,16			; $O2$$.cst$2[4] @ 240
	.bits	16384,16			; $O2$$.cst$2[5] @ 256
	.bits	8192,16			; $O2$$.cst$2[6] @ 272
	.bits	4096,16			; $O2$$.cst$2[7] @ 288
	.bits	2048,16			; $O2$$.cst$2[8] @ 304
	.bits	1024,16			; $O2$$.cst$2[9] @ 320
	.bits	512,16			; $O2$$.cst$2[10] @ 336


;*********************************************************************
;* GROUPED GLOBALS FOR $O2$$                                         *
;*********************************************************************
vst$1:	.set	||$O2$$||+0
cst$2:	.set	||$O2$$||+22
;	/Applications/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.5/bin/armopt /var/tmp/24985g6lJaK /var/tmp/24985xGeLRA 
	.sect	".text"
	.align	8
	.clink
	.thumbfunc sync_window
	.thumb

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("sync_window")
	.dwattr $C$DW$22, DW_AT_low_pc(sync_window)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("sync_window")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x2dc)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$22, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x2dc)
	.dwattr $C$DW$22, DW_AT_decl_column(0x09)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 735,column 1,is_stmt,address sync_window,isa 1

	.dwfde $C$DW$CIE, sync_window
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: sync_window                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
sync_window:
;* --------------------------------------------------------------------------*
;* V4    assigned to $O$C1
;* A1    assigned to $O$C2
;* V5    assigned to $O$C3
;* V5    assigned to wsect
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg8]
;* V1    assigned to fs
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg4]
;* V4    assigned to $O$L1
;* V2    assigned to $O$K12
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V4, V5, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
        MOV       V1, A1                ; [DPU_3_PIPE] |735| 
	.dwpsn	file "../utils/ff.c",line 740,column 2,is_stmt,isa 1
        LDRB      A1, [V1, #4]          ; [DPU_3_PIPE] |740| 
        CBZ       A1, ||$C$L2||         ; [] 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |740| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 741,column 3,is_stmt,isa 1
        LDR       V5, [V1, #48]         ; [DPU_3_PIPE] |741| 
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |742| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |742| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |742| 
        MOV       A3, V5                ; [DPU_3_PIPE] |742| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("disk_write")
	.dwattr $C$DW$26, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |742| 
        ; CALL OCCURS {disk_write }      ; [] |742| 
        ADD       V2, V1, #52           ; [DPU_3_PIPE] |742| 
        CMP       A1, #0                ; [DPU_3_PIPE] |742| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 743,column 4,is_stmt,isa 1
        MOVNE     A1, #1                ; [DPU_3_PIPE] |743| 
        BNE       ||$C$L3||             ; [DPU_3_PIPE] |743| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |743| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        LDR       A1, [V1, #36]         ; [DPU_3_PIPE] |745| 
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        STRB      A2, [V1, #4]          ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BHI       ||$C$L2||             ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |745| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V1, #28]         ; [DPU_3_PIPE] |745| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |745| 
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BLS       ||$C$L2||             ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |745| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        LDRB      V4, [V1, #3]          ; [DPU_3_PIPE] |746| 
        CMP       V4, #2                ; [DPU_3_PIPE] |746| 
        BCC       ||$C$L2||             ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |746| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |747| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 749
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L1||:    
        LDR       A2, [V1, #28]         ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |748| 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        ADD       V5, A2, V5            ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |748| 
        MOV       A3, V5                ; [DPU_3_PIPE] |748| 
        MOV       A2, V2                ; [DPU_3_PIPE] |748| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("disk_write")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |748| 
        ; CALL OCCURS {disk_write }      ; [] |748| 
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |746| 
        BNE       ||$C$L1||             ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |746| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../utils/ff.c",line 752,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |752| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        POP       {A4, V1, V2, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x2f1)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.align	8
	.clink
	.thumbfunc put_fat
	.thumb
	.global	put_fat

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("put_fat")
	.dwattr $C$DW$29, DW_AT_low_pc(put_fat)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("put_fat")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x375)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$29, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x375)
	.dwattr $C$DW$29, DW_AT_decl_column(0x09)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../utils/ff.c",line 890,column 1,is_stmt,address put_fat,isa 1

	.dwfde $C$DW$CIE, put_fat
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg0]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clst")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg1]
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: put_fat                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V9,SP,LR,SR,D0,D0_hi, *
;*                           D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,*
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V9,SP,LR,SR,D0,D0_hi, *
;*                           D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,*
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                 *
;*****************************************************************************
put_fat:
;* --------------------------------------------------------------------------*
;* A2    assigned to $O$C1
;* A2    assigned to $O$C2
;* V5    assigned to $O$K100
;* V2    assigned to sector
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg5]
;* V2    assigned to sector
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg5]
;* V2    assigned to sector
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg5]
;* V2    assigned to sector
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg5]
;* V6    assigned to bc
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("bc")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("bc")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg9]
;* V1    assigned to val
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg4]
;* V4    assigned to clst
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg7]
;* V3    assigned to fs
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg6]
;* A1    assigned to res
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]
;* A1    assigned to p
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]
;* A2    assigned to p
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg1]
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V3, V4, V5, V6, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 9, -8
	.dwcfi	save_reg_to_mem, 8, -12
	.dwcfi	save_reg_to_mem, 7, -16
	.dwcfi	save_reg_to_mem, 6, -20
	.dwcfi	save_reg_to_mem, 5, -24
	.dwcfi	save_reg_to_mem, 4, -28
	.dwcfi	save_reg_to_mem, 3, -32
        MOV       V4, A2                ; [DPU_3_PIPE] |890| 
        MOV       V1, A3                ; [DPU_3_PIPE] |890| 
        MOV       V3, A1                ; [DPU_3_PIPE] |890| 
	.dwpsn	file "../utils/ff.c",line 896,column 2,is_stmt,isa 1
        CMP       V4, #2                ; [DPU_3_PIPE] |896| 
        BCC       ||$C$L4||             ; [DPU_3_PIPE] |896| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |896| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V3, #24]         ; [DPU_3_PIPE] |896| 
        CMP       A1, V4                ; [DPU_3_PIPE] |896| 
        BHI       ||$C$L5||             ; [DPU_3_PIPE] |896| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |896| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 936,column 2,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |936| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L5||:    
	.dwpsn	file "../utils/ff.c",line 900,column 3,is_stmt,isa 1
        LDRB      A1, [V3, #0]          ; [DPU_3_PIPE] |900| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |900| 
        BEQ       ||$C$L9||             ; [DPU_3_PIPE] |900| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |900| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |900| 
        BEQ       ||$C$L7||             ; [DPU_3_PIPE] |900| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |900| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |900| 
        BNE       ||$C$L16||            ; [DPU_3_PIPE] |900| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |900| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 923,column 4,is_stmt,isa 1
        LDR       V2, [V3, #36]         ; [DPU_3_PIPE] |923| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V3, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 923,column 4,is_stmt,isa 1
        ADD       V2, V2, V4, LSR #7    ; [DPU_3_PIPE] |923| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L6||             ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |765| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("sync_window")
	.dwattr $C$DW$45, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V3, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V3, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("disk_read")
	.dwattr $C$DW$46, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V3, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../utils/ff.c",line 926,column 4,is_stmt,isa 1
        LSLS      A1, V4, #2            ; [DPU_3_PIPE] |926| 
        AND       A1, A1, #508          ; [DPU_3_PIPE] |926| 
        ADDS      A2, V3, A1            ; [DPU_3_PIPE] |926| 
        LDRB      A1, [A2, #55]         ; [DPU_3_PIPE] |926| 
        MOV       V5, #1                ; [DPU_3_PIPE] 
        AND       A1, A1, #240          ; [DPU_3_PIPE] |926| 
        ORR       V1, V1, A1, LSL #24   ; [DPU_3_PIPE] |926| 
	.dwpsn	file "../utils/ff.c",line 927,column 4,is_stmt,isa 1
        STRB      V1, [A2, #52]         ; [DPU_3_PIPE] |927| 
        LSRS      A4, V1, #8            ; [DPU_3_PIPE] |927| 
        STRB      A4, [A2, #53]         ; [DPU_3_PIPE] |927| 
        LSRS      A1, V1, #16           ; [DPU_3_PIPE] |927| 
        STRB      A1, [A2, #54]         ; [DPU_3_PIPE] |927| 
        LSRS      A3, V1, #24           ; [DPU_3_PIPE] |927| 
        STRB      A3, [A2, #55]         ; [DPU_3_PIPE] |927| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 928,column 4,is_stmt,isa 1
        B         ||$C$L17||            ; [DPU_3_PIPE] |928| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |928| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L7||:    
	.dwpsn	file "../utils/ff.c",line 916,column 4,is_stmt,isa 1
        LDR       V2, [V3, #36]         ; [DPU_3_PIPE] |916| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V3, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 916,column 4,is_stmt,isa 1
        ADD       V2, V2, V4, LSR #8    ; [DPU_3_PIPE] |916| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L8||             ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |765| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("sync_window")
	.dwattr $C$DW$47, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V3, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V3, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("disk_read")
	.dwattr $C$DW$48, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V3, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../utils/ff.c",line 919,column 4,is_stmt,isa 1
        LSLS      A1, V4, #1            ; [DPU_3_PIPE] |919| 
        LSRS      A3, V1, #8            ; [DPU_3_PIPE] |919| 
        AND       A1, A1, #510          ; [DPU_3_PIPE] |919| 
        MOV       V5, #1                ; [DPU_3_PIPE] 
        ADDS      A2, V3, A1            ; [DPU_3_PIPE] |919| 
        STRB      V1, [A2, #52]         ; [DPU_3_PIPE] |919| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 919,column 4,is_stmt,isa 1
        STRB      A3, [A2, #53]         ; [DPU_3_PIPE] |919| 
	.dwpsn	file "../utils/ff.c",line 920,column 4,is_stmt,isa 1
        B         ||$C$L17||            ; [DPU_3_PIPE] |920| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |920| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L9||:    
	.dwpsn	file "../utils/ff.c",line 903,column 4,is_stmt,isa 1
        LDR       V2, [V3, #36]         ; [DPU_3_PIPE] |903| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V3, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 902,column 21,is_stmt,isa 1
        ADD       V6, V4, V4, LSR #1    ; [DPU_3_PIPE] |902| 
	.dwpsn	file "../utils/ff.c",line 903,column 4,is_stmt,isa 1
        ADD       V2, V2, V6, LSR #9    ; [DPU_3_PIPE] |903| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L10||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |765| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("sync_window")
	.dwattr $C$DW$49, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V3, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V3, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("disk_read")
	.dwattr $C$DW$50, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L15||            ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V3, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../utils/ff.c",line 905,column 4,is_stmt,isa 1
        UBFX      A1, V6, #0, #9        ; [DPU_3_PIPE] |905| 
	.dwpsn	file "../utils/ff.c",line 906,column 4,is_stmt,isa 1
        LSRS      A2, V4, #1            ; [DPU_3_PIPE] |906| 
	.dwpsn	file "../utils/ff.c",line 905,column 4,is_stmt,isa 1
        ADD       A1, V3, A1            ; [DPU_3_PIPE] |905| 
        ADD       A1, A1, #52           ; [DPU_3_PIPE] |905| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 906,column 4,is_stmt,isa 1
        STRBCC    V1, [A1, #0]          ; [DPU_3_PIPE] |906| 
        BCC       ||$C$L11||            ; [DPU_3_PIPE] |906| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |906| 
;* --------------------------------------------------------------------------*
        LDRB      A2, [A1, #0]          ; [DPU_3_PIPE] |906| 
        BFI       A2, V1, #4, #28       ; [DPU_3_PIPE] |906| 
        STRB      A2, [A1, #0]          ; [DPU_3_PIPE] |906| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../utils/ff.c",line 909,column 4,is_stmt,isa 1
        LDR       V2, [V3, #36]         ; [DPU_3_PIPE] |909| 
	.dwpsn	file "../utils/ff.c",line 908,column 4,is_stmt,isa 1
        MOV       V5, #1                ; [DPU_3_PIPE] |908| 
	.dwpsn	file "../utils/ff.c",line 909,column 4,is_stmt,isa 1
        ADD       V6, V6, #1            ; [DPU_3_PIPE] |909| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V3, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 908,column 4,is_stmt,isa 1
        STRB      V5, [V3, #4]          ; [DPU_3_PIPE] |908| 
	.dwpsn	file "../utils/ff.c",line 909,column 4,is_stmt,isa 1
        ADD       V2, V2, V6, LSR #9    ; [DPU_3_PIPE] |909| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L12||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |765| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("sync_window")
	.dwattr $C$DW$51, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L14||        ; [] 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V3, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V3, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOV       A4, V5                ; [DPU_3_PIPE] |768| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("disk_read")
	.dwattr $C$DW$52, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L14||        ; [] 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V3, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../utils/ff.c",line 911,column 4,is_stmt,isa 1
        UBFX      A1, V6, #0, #9        ; [DPU_3_PIPE] |911| 
        ADDS      A2, V3, A1            ; [DPU_3_PIPE] |911| 
	.dwpsn	file "../utils/ff.c",line 912,column 4,is_stmt,isa 1
        LSRS      A3, V4, #1            ; [DPU_3_PIPE] |912| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOV       A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 911,column 4,is_stmt,isa 1
        ADD       A2, A2, #52           ; [DPU_3_PIPE] |911| 
	.dwpsn	file "../utils/ff.c",line 912,column 4,is_stmt,isa 1
        BCS       ||$C$L13||            ; [DPU_3_PIPE] |912| 
        ; BRANCHCC OCCURS {||$C$L13||}   ; [] |912| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [A2, #0]          ; [DPU_3_PIPE] |912| 
        UBFX      A4, V1, #8, #4        ; [DPU_3_PIPE] |912| 
        AND       A3, A3, #240          ; [DPU_3_PIPE] |912| 
        ORRS      A4, A4, A3            ; [DPU_3_PIPE] |912| 
        STRB      A4, [A2, #0]          ; [DPU_3_PIPE] |912| 
        B         ||$C$L17||            ; [DPU_3_PIPE] |912| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |912| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L13||:    
        LSRS      A3, V1, #4            ; [DPU_3_PIPE] |912| 
        STRB      A3, [A2, #0]          ; [DPU_3_PIPE] |912| 
        B         ||$C$L17||            ; [DPU_3_PIPE] |912| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |912| 
;* --------------------------------------------------------------------------*
||$C$L14||:    
        MOV       A1, V5                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 910,column 22,is_stmt,isa 1
        B         ||$C$L17||            ; [DPU_3_PIPE] |910| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |910| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L15||:    
        MOV       V5, #1                ; [DPU_3_PIPE] 
        MOV       A1, V5                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 904,column 22,is_stmt,isa 1
        B         ||$C$L17||            ; [DPU_3_PIPE] |904| 
        ; BRANCH OCCURS {||$C$L17||}     ; [] |904| 
;* --------------------------------------------------------------------------*
||$C$L16||:    
        MOV       V5, #1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 931,column 4,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |931| 
;* --------------------------------------------------------------------------*
||$C$L17||:    
	.dwpsn	file "../utils/ff.c",line 933,column 3,is_stmt,isa 1
        STRB      V5, [V3, #4]          ; [DPU_3_PIPE] |933| 
;* --------------------------------------------------------------------------*
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x3a9)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.align	8
	.clink
	.thumbfunc get_fat
	.thumb
	.global	get_fat

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("get_fat")
	.dwattr $C$DW$54, DW_AT_low_pc(get_fat)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("get_fat")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x34a)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$54, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x34a)
	.dwattr $C$DW$54, DW_AT_decl_column(0x07)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 846,column 1,is_stmt,address get_fat,isa 1

	.dwfde $C$DW$CIE, get_fat
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg0]
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clst")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: get_fat                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                 *
;*****************************************************************************
get_fat:
;* --------------------------------------------------------------------------*
;* V2    assigned to $O$C1
;* A1    assigned to $O$C2
;* V3    assigned to $O$C3
;* V2    assigned to $O$C4
;* V1    assigned to $O$C5
;* V1    assigned to $O$C6
;* V1    assigned to fs
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg4]
;* V4    assigned to clst
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg7]
;* V3    assigned to wc
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("wc")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("wc")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg6]
;* V5    assigned to bc
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("bc")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("bc")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg8]
;* V2    assigned to sector
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg5]
;* V2    assigned to sector
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg5]
;* V3    assigned to sector
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg6]
;* A1    assigned to $O$U20
;* V2    assigned to $O$U14
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 6, -16
	.dwcfi	save_reg_to_mem, 5, -20
	.dwcfi	save_reg_to_mem, 4, -24
        MOV       V4, A2                ; [DPU_3_PIPE] |846| 
        MOV       V1, A1                ; [DPU_3_PIPE] |846| 
	.dwpsn	file "../utils/ff.c",line 851,column 2,is_stmt,isa 1
        CMP       V4, #2                ; [DPU_3_PIPE] |851| 
        BCC       ||$C$L18||            ; [DPU_3_PIPE] |851| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |851| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V1, #24]         ; [DPU_3_PIPE] |851| 
        CMP       A1, V4                ; [DPU_3_PIPE] |851| 
        BHI       ||$C$L19||            ; [DPU_3_PIPE] |851| 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |851| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 852,column 3,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |852| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L19||:    
	.dwpsn	file "../utils/ff.c",line 854,column 2,is_stmt,isa 1
        LDRB      A1, [V1, #0]          ; [DPU_3_PIPE] |854| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L23||            ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L23||}   ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L21||            ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |854| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        LDR       V2, [V1, #36]         ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V1, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        ADD       V2, V2, V4, LSR #7    ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L20||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("sync_window")
	.dwattr $C$DW$65, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("disk_read")
	.dwattr $C$DW$66, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L20||:    
	.dwpsn	file "../utils/ff.c",line 871,column 3,is_stmt,isa 1
        LSLS      A1, V4, #2            ; [DPU_3_PIPE] |871| 
        AND       A1, A1, #508          ; [DPU_3_PIPE] |871| 
        ADDS      V1, V1, A1            ; [DPU_3_PIPE] |871| 
        LDRB      A4, [V1, #55]         ; [DPU_3_PIPE] |871| 
        LDRB      A2, [V1, #54]         ; [DPU_3_PIPE] |871| 
        LDRB      A3, [V1, #53]         ; [DPU_3_PIPE] |871| 
        LDRB      A1, [V1, #52]         ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |871| 
        LSLS      A2, A2, #16           ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |871| 
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |871| 
        BIC       A1, A1, #-268435456   ; [DPU_3_PIPE] |871| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L21||:    
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        LDR       V2, [V1, #36]         ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V1, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        ADD       V2, V2, V4, LSR #8    ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L22||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L22||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("sync_window")
	.dwattr $C$DW$68, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("disk_read")
	.dwattr $C$DW$69, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../utils/ff.c",line 866,column 3,is_stmt,isa 1
        LSLS      A1, V4, #1            ; [DPU_3_PIPE] |866| 
        AND       A1, A1, #510          ; [DPU_3_PIPE] |866| 
        ADDS      V1, V1, A1            ; [DPU_3_PIPE] |866| 
        LDRB      A2, [V1, #53]         ; [DPU_3_PIPE] |866| 
        LDRB      A1, [V1, #52]         ; [DPU_3_PIPE] |866| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |866| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L23||:    
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LDR       V2, [V1, #36]         ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V1, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 856,column 20,is_stmt,isa 1
        ADD       V5, V4, V4, LSR #1    ; [DPU_3_PIPE] |856| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LSR       V3, V5, #9            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADDS      A2, V3, V2            ; [DPU_3_PIPE] |763| 
        CMP       A1, A2                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        ADD       V3, V3, V2            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        BEQ       ||$C$L24||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("sync_window")
	.dwattr $C$DW$71, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V3                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("disk_read")
	.dwattr $C$DW$72, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |770| 
        LDR       V2, [V1, #36]         ; [DPU_3_PIPE] 
        STR       A1, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        UBFX      A2, V5, #0, #9        ; [DPU_3_PIPE] |858| 
        ADDS      A2, V1, A2            ; [DPU_3_PIPE] |858| 
        LDRB      V3, [A2, #52]         ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADD       V5, V5, #1            ; [DPU_3_PIPE] |763| 
        ADD       V2, V2, V5, LSR #9    ; [DPU_3_PIPE] |763| 
        CMP       A1, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L27||            ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L27||}   ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("sync_window")
	.dwattr $C$DW$73, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("disk_read")
	.dwattr $C$DW$74, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBZ       A1, ||$C$L26||        ; [] 
        ; BRANCHCC OCCURS {||$C$L26||}   ; [] |768| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 874,column 2,is_stmt,isa 1
        MOV       A1, #-1               ; [DPU_3_PIPE] |874| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
	.dwpsn	file "../utils/ff.c",line 860,column 3,is_stmt,isa 1
        UBFX      A1, V5, #0, #9        ; [DPU_3_PIPE] |860| 
        ADDS      V1, V1, A1            ; [DPU_3_PIPE] |860| 
        LDRB      A1, [V1, #52]         ; [DPU_3_PIPE] |860| 
        ORR       V3, V3, A1, LSL #8    ; [DPU_3_PIPE] |860| 
	.dwpsn	file "../utils/ff.c",line 861,column 3,is_stmt,isa 1
        LSRS      A1, V4, #1            ; [DPU_3_PIPE] |861| 
        ITE       CS                    ; [DPU_3_PIPE] 
        LSRCS     A1, V3, #4            ; [DPU_3_PIPE] |861| 
        UBFXCC    A1, V3, #0, #12       ; [DPU_3_PIPE] |861| 
;* --------------------------------------------------------------------------*
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x36b)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text"
	.align	8
	.clink
	.thumbfunc create_chain
	.thumb

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("create_chain")
	.dwattr $C$DW$77, DW_AT_low_pc(create_chain)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("create_chain")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x3e9)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$77, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x3e9)
	.dwattr $C$DW$77, DW_AT_decl_column(0x07)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 1005,column 1,is_stmt,address create_chain,isa 1

	.dwfde $C$DW$CIE, create_chain
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clst")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: create_chain                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
create_chain:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C1
;* A1    assigned to cs
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]
;* A1    assigned to cs
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]
;* V4    assigned to ncl
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("ncl")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("ncl")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg7]
;* V2    assigned to fs
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg5]
;* V1    assigned to clst
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg4]
;* V3    assigned to scl
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("scl")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("scl")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg6]
;* A1    assigned to res
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V3, V4, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
	.dwpsn	file "../utils/ff.c",line 1010,column 2,is_stmt,isa 1
        MOVS      V1, A2                ; [DPU_3_PIPE] |1010| 
	.dwpsn	file "../utils/ff.c",line 1005,column 1,is_stmt,isa 1
        MOV       V2, A1                ; [DPU_3_PIPE] |1005| 
	.dwpsn	file "../utils/ff.c",line 1010,column 2,is_stmt,isa 1
        BNE       ||$C$L29||            ; [DPU_3_PIPE] |1010| 
        ; BRANCHCC OCCURS {||$C$L29||}   ; [] |1010| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1011,column 3,is_stmt,isa 1
        LDR       V3, [V2, #12]         ; [DPU_3_PIPE] |1011| 
        CBZ       V3, ||$C$L28||        ; [] 
        ; BRANCHCC OCCURS {||$C$L28||}   ; [] |1011| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1012,column 3,is_stmt,isa 1
        LDR       A1, [V2, #24]         ; [DPU_3_PIPE] |1012| 
        CMP       A1, V3                ; [DPU_3_PIPE] |1012| 
        BHI       ||$C$L30||            ; [DPU_3_PIPE] |1012| 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |1012| 
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "../utils/ff.c",line 1012,column 36,is_stmt,isa 1
        MOVS      V3, #1                ; [DPU_3_PIPE] |1012| 
        B         ||$C$L30||            ; [DPU_3_PIPE] |1012| 
        ; BRANCH OCCURS {||$C$L30||}     ; [] |1012| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L29||:    
	.dwpsn	file "../utils/ff.c",line 1015,column 3,is_stmt,isa 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("get_fat")
	.dwattr $C$DW$87, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1015| 
        ; CALL OCCURS {get_fat }         ; [] |1015| 
        CMP       A1, #2                ; [DPU_3_PIPE] |1015| 
        BCC       ||$C$L35||            ; [DPU_3_PIPE] |1015| 
        ; BRANCHCC OCCURS {||$C$L35||}   ; [] |1015| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1017,column 3,is_stmt,isa 1
        LDR       A2, [V2, #24]         ; [DPU_3_PIPE] |1017| 
        CMP       A2, A1                ; [DPU_3_PIPE] |1017| 
        BHI       ||$C$L40||            ; [DPU_3_PIPE] |1017| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |1017| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1018,column 3,is_stmt,isa 1
        MOV       V3, V1                ; [DPU_3_PIPE] |1018| 
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "../utils/ff.c",line 1021,column 2,is_stmt,isa 1
        MOV       V4, V3                ; [DPU_3_PIPE] |1021| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L31||
;*
;*   Loop source line                : 1022
;*   Loop closing brace source line  : 1033
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L31||:    
	.dwpsn	file "../utils/ff.c",line 1024,column 3,is_stmt,isa 1
        LDR       A1, [V2, #24]         ; [DPU_3_PIPE] |1024| 
        ADDS      V4, V4, #1            ; [DPU_3_PIPE] |1024| 
        CMP       A1, V4                ; [DPU_3_PIPE] |1024| 
        BHI       ||$C$L32||            ; [DPU_3_PIPE] |1024| 
        ; BRANCHCC OCCURS {||$C$L32||}   ; [] |1024| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1026,column 4,is_stmt,isa 1
        CMP       V3, #2                ; [DPU_3_PIPE] |1026| 
        BCC       ||$C$L39||            ; [DPU_3_PIPE] |1026| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |1026| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1025,column 4,is_stmt,isa 1
        MOVS      V4, #2                ; [DPU_3_PIPE] |1025| 
;* --------------------------------------------------------------------------*
||$C$L32||:    
	.dwpsn	file "../utils/ff.c",line 1028,column 3,is_stmt,isa 1
        MOV       A1, V2                ; [DPU_3_PIPE] |1028| 
        MOV       A2, V4                ; [DPU_3_PIPE] |1028| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("get_fat")
	.dwattr $C$DW$88, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1028| 
        ; CALL OCCURS {get_fat }         ; [] |1028| 
        CBNZ      A1, ||$C$L38||        ; [] 
        ; BRANCHCC OCCURS {||$C$L38||}   ; [] |1028| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1035,column 2,is_stmt,isa 1
        MOV       A1, V2                ; [DPU_3_PIPE] |1035| 
        MOV       A2, V4                ; [DPU_3_PIPE] |1035| 
        MVN       A3, #-268435456       ; [DPU_3_PIPE] |1035| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("put_fat")
	.dwattr $C$DW$89, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1035| 
        ; CALL OCCURS {put_fat }         ; [] |1035| 
        CBNZ      A1, ||$C$L34||        ; [] 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |1035| 
;* --------------------------------------------------------------------------*
        CBZ       V1, ||$C$L33||        ; [] 
	.dwpsn	file "../utils/ff.c",line 1036,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L33||}   ; [] |1036| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1037,column 3,is_stmt,isa 1
        MOV       A1, V2                ; [DPU_3_PIPE] |1037| 
        MOV       A2, V1                ; [DPU_3_PIPE] |1037| 
        MOV       A3, V4                ; [DPU_3_PIPE] |1037| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("put_fat")
	.dwattr $C$DW$90, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1037| 
        ; CALL OCCURS {put_fat }         ; [] |1037| 
;* --------------------------------------------------------------------------*
||$C$L33||:    
        CBNZ      A1, ||$C$L34||        ; [] 
	.dwpsn	file "../utils/ff.c",line 1039,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |1039| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1041,column 3,is_stmt,isa 1
        LDR       A1, [V2, #16]         ; [DPU_3_PIPE] |1041| 
	.dwpsn	file "../utils/ff.c",line 1040,column 3,is_stmt,isa 1
        STR       V4, [V2, #12]         ; [DPU_3_PIPE] |1040| 
	.dwpsn	file "../utils/ff.c",line 1041,column 3,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1041| 
        BEQ       ||$C$L37||            ; [DPU_3_PIPE] |1041| 
        ; BRANCHCC OCCURS {||$C$L37||}   ; [] |1041| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 1042,column 4,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1042| 
        STR       A1, [V2, #16]         ; [DPU_3_PIPE] |1042| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A2, #1                ; [DPU_3_PIPE] |1043| 
        STRB      A2, [V2, #5]          ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |1049| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L34||:    
	.dwpsn	file "../utils/ff.c",line 1046,column 3,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |1046| 
        BEQ       ||$C$L36||            ; [DPU_3_PIPE] |1046| 
        ; BRANCHCC OCCURS {||$C$L36||}   ; [] |1046| 
;* --------------------------------------------------------------------------*
||$C$L35||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |1049| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L36||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 1046,column 3,is_stmt,isa 1
        MOV       V4, #-1               ; [DPU_3_PIPE] |1046| 
;* --------------------------------------------------------------------------*
||$C$L37||:    
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |1049| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L38||:    
	.dwpsn	file "../utils/ff.c",line 1030,column 3,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L40||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
        CMP       A1, #1                ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L40||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1032,column 3,is_stmt,isa 1
        CMP       V3, V4                ; [DPU_3_PIPE] |1032| 
        BNE       ||$C$L31||            ; [DPU_3_PIPE] |1032| 
        ; BRANCHCC OCCURS {||$C$L31||}   ; [] |1032| 
;* --------------------------------------------------------------------------*
||$C$L39||:    
	.dwpsn	file "../utils/ff.c",line 1032,column 19,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |1032| 
;* --------------------------------------------------------------------------*
||$C$L40||:    
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x41a)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.align	8
	.clink
	.thumbfunc clust2sect
	.thumb
	.global	clust2sect

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("clust2sect")
	.dwattr $C$DW$95, DW_AT_low_pc(clust2sect)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("clust2sect")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x338)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$95, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x338)
	.dwattr $C$DW$95, DW_AT_decl_column(0x07)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../utils/ff.c",line 828,column 1,is_stmt,address clust2sect,isa 1

	.dwfde $C$DW$CIE, clust2sect
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg0]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clst")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: clust2sect                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SR                                         *
;*   Regs Used         : A1,A2,A3,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
clust2sect:
;* --------------------------------------------------------------------------*
;* A2    assigned to clst
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg1]
;* A1    assigned to fs
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg0]
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |830| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        SUBS      A3, A3, #2            ; [DPU_3_PIPE] |830| 
        CMP       A3, A2                ; [DPU_3_PIPE] |830| 
        IT        LS                    ; [DPU_3_PIPE] 
        MOVLS     A1, #0                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L41||            ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L41||}   ; [] |830| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |830| 
        LDR       A1, [A1, #44]         ; [DPU_3_PIPE] |830| 
        MLA       A1, A2, A3, A1        ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L41||:    
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x340)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_write
	.thumb
	.global	f_write

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("f_write")
	.dwattr $C$DW$101, DW_AT_low_pc(f_write)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("f_write")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x9ed)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$101, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x9ed)
	.dwattr $C$DW$101, DW_AT_decl_column(0x09)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "../utils/ff.c",line 2547,column 1,is_stmt,address f_write,isa 1

	.dwfde $C$DW$CIE, f_write
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buff")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("buff")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg1]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("btw")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("btw")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg2]
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bw")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("bw")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg3]

;*****************************************************************************
;* FUNCTION NAME: f_write                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 4 Auto + 36 Save = 40 byte                 *
;*****************************************************************************
f_write:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C1
;* A1    assigned to $O$C2
;* A2    assigned to $O$C3
;* V9    assigned to $O$C4
;* A1    assigned to $O$C5
;* A1    assigned to $O$C6
;* V5    assigned to $O$C7
;* A2    assigned to $O$C8
;* A2    assigned to $O$C9
;* A1    assigned to $O$K6
;* V9    assigned to $O$U58
;* V2    assigned to $O$U53
;* A1    assigned to $O$U44
;* V5    assigned to fs
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg8]
;* A1    assigned to cs
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]
;* V3    assigned to ncl
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("ncl")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("ncl")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg6]
;* V2    assigned to scl
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("scl")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("scl")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg0]
;* V5    assigned to fs
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg8]
;* V7    assigned to clst
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg10]
;* V3    assigned to ncl
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("ncl")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("ncl")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg6]
;* V2    assigned to scl
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("scl")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("scl")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]
;* A1    assigned to cnt
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg0]
;* A3    assigned to d
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg1]
;* V9    assigned to d
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
;* A2    assigned to s
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg1]
;* V6    assigned to csect
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("csect")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("csect")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg9]
;* V8    assigned to wbuff
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("wbuff")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("wbuff")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg11]
;* V3    assigned to cc
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("cc")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("cc")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg6]
;* V2    assigned to wcnt
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("wcnt")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("wcnt")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg5]
;* V7    assigned to sect
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("sect")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg10]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("bw")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("bw")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg13 0]
;* V1    assigned to btw
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("btw")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("btw")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg4]
;* V4    assigned to fp
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg7]
;* A1    assigned to cs
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]
;* A1    assigned to cs
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]
;* A1    assigned to clst
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg0]
;* A1    assigned to $O$d2
;* V5    assigned to $O$U13
;* V3    assigned to $O$U51
;* A2    assigned to $O$U51
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
	.dwcfi	save_reg_to_mem, 3, -40
        MOV       V4, A1                ; [DPU_3_PIPE] |2547| 
	.dwpsn	file "../utils/ff.c",line 2555,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2555| 
	.dwpsn	file "../utils/ff.c",line 2547,column 1,is_stmt,isa 1
        MOV       V1, A3                ; [DPU_3_PIPE] |2547| 
        MOV       V8, A2                ; [DPU_3_PIPE] |2547| 
        STR       A4, [SP, #0]          ; [DPU_3_PIPE] |2547| 
	.dwpsn	file "../utils/ff.c",line 2555,column 2,is_stmt,isa 1
        STR       A1, [A4, #0]          ; [DPU_3_PIPE] |2555| 
        CBZ       V4, ||$C$L42||        ; [] 
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L42||}   ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L42||        ; [] 
        ; BRANCHCC OCCURS {||$C$L42||}   ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L42||        ; [] 
        ; BRANCHCC OCCURS {||$C$L42||}   ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L43||            ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L43||}   ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L42||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2558,column 20,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |2558| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L43||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("disk_status")
	.dwattr $C$DW$133, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2558,column 20,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |2558| 
        BCS       ||$C$L88||            ; [DPU_3_PIPE] |2558| 
        ; BRANCHCC OCCURS {||$C$L88||}   ; [] |2558| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2559,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2559| 
        BICS      A1, A2, #127          ; [DPU_3_PIPE] |2559| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2560,column 3,is_stmt,isa 1
        MOVNE     A1, #2                ; [DPU_3_PIPE] |2560| 
        BNE       ||$C$L88||            ; [DPU_3_PIPE] |2560| 
        ; BRANCHCC OCCURS {||$C$L88||}   ; [] |2560| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2561,column 2,is_stmt,isa 1
        LSRS      A1, A2, #2            ; [DPU_3_PIPE] |2561| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2562,column 3,is_stmt,isa 1
        MOVCC     A1, #7                ; [DPU_3_PIPE] |2562| 
        BCC       ||$C$L88||            ; [DPU_3_PIPE] |2562| 
        ; BRANCHCC OCCURS {||$C$L88||}   ; [] |2562| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2563,column 2,is_stmt,isa 1
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |2563| 
        ADDS      A2, V1, A1            ; [DPU_3_PIPE] |2563| 
        CMP       A1, A2                ; [DPU_3_PIPE] |2563| 
        BHI       ||$C$L85||            ; [DPU_3_PIPE] |2563| 
        ; BRANCHCC OCCURS {||$C$L85||}   ; [] |2563| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2565,column 2,is_stmt,isa 1
        CMP       V1, #0                ; [DPU_3_PIPE] |2565| 
        BEQ       ||$C$L83||            ; [DPU_3_PIPE] |2565| 
        ; BRANCHCC OCCURS {||$C$L83||}   ; [] |2565| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L44||
;*
;*   Loop source line                : 2565
;*   Loop closing brace source line  : 2645
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L44||:    
	.dwpsn	file "../utils/ff.c",line 2567,column 3,is_stmt,isa 1
        LDR       V3, [V4, #8]          ; [DPU_3_PIPE] |2567| 
        UBFX      V2, V3, #0, #9        ; [DPU_3_PIPE] |2567| 
        CMP       V2, #0                ; [DPU_3_PIPE] |2567| 
        BNE       ||$C$L78||            ; [DPU_3_PIPE] |2567| 
        ; BRANCHCC OCCURS {||$C$L78||}   ; [] |2567| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2568,column 4,is_stmt,isa 1
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] |2568| 
        LDRB      A1, [V5, #2]          ; [DPU_3_PIPE] |2568| 
        ADDS      A1, A1, #255          ; [DPU_3_PIPE] |2568| 
        AND       A1, A1, V3, LSR #9    ; [DPU_3_PIPE] |2568| 
        UXTB      V6, A1                ; [DPU_3_PIPE] |2568| 
	.dwpsn	file "../utils/ff.c",line 2569,column 4,is_stmt,isa 1
        CMP       V6, #0                ; [DPU_3_PIPE] |2569| 
        BNE       ||$C$L68||            ; [DPU_3_PIPE] |2569| 
        ; BRANCHCC OCCURS {||$C$L68||}   ; [] |2569| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2570,column 5,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |2570| 
        BNE       ||$C$L54||            ; [DPU_3_PIPE] |2570| 
        ; BRANCHCC OCCURS {||$C$L54||}   ; [] |2570| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2571,column 6,is_stmt,isa 1
        LDR       A1, [V4, #16]         ; [DPU_3_PIPE] |2571| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2571| 
        BNE       ||$C$L65||            ; [DPU_3_PIPE] |2571| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |2571| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1011,column 3,is_stmt,isa 1
        LDR       V2, [V5, #12]         ; [DPU_3_PIPE] |1011| 
        CBZ       V2, ||$C$L45||        ; [] 
        ; BRANCHCC OCCURS {||$C$L45||}   ; [] |1011| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1012,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1012| 
        CMP       A1, V2                ; [DPU_3_PIPE] |1012| 
        BHI       ||$C$L46||            ; [DPU_3_PIPE] |1012| 
        ; BRANCHCC OCCURS {||$C$L46||}   ; [] |1012| 
;* --------------------------------------------------------------------------*
||$C$L45||:    
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |1043| 
;* --------------------------------------------------------------------------*
||$C$L46||:    
	.dwpsn	file "../utils/ff.c",line 1021,column 2,is_stmt,isa 1
        MOV       V3, V2                ; [DPU_3_PIPE] |1021| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L47||
;*
;*   Loop source line                : 1022
;*   Loop closing brace source line  : 1033
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L47||:    
	.dwpsn	file "../utils/ff.c",line 1024,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1024| 
        ADDS      V3, V3, #1            ; [DPU_3_PIPE] |1024| 
        CMP       A1, V3                ; [DPU_3_PIPE] |1024| 
        BHI       ||$C$L48||            ; [DPU_3_PIPE] |1024| 
        ; BRANCHCC OCCURS {||$C$L48||}   ; [] |1024| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1026,column 4,is_stmt,isa 1
        CMP       V2, #2                ; [DPU_3_PIPE] |1026| 
        BCC       ||$C$L53||            ; [DPU_3_PIPE] |1026| 
        ; BRANCHCC OCCURS {||$C$L53||}   ; [] |1026| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1025,column 4,is_stmt,isa 1
        MOVS      V3, #2                ; [DPU_3_PIPE] |1025| 
;* --------------------------------------------------------------------------*
||$C$L48||:    
	.dwpsn	file "../utils/ff.c",line 1028,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1028| 
        MOV       A2, V3                ; [DPU_3_PIPE] |1028| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("get_fat")
	.dwattr $C$DW$134, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1028| 
        ; CALL OCCURS {get_fat }         ; [] |1028| 
        CBNZ      A1, ||$C$L51||        ; [] 
        ; BRANCHCC OCCURS {||$C$L51||}   ; [] |1028| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1035,column 2,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1035| 
        MOV       A2, V3                ; [DPU_3_PIPE] |1035| 
        MVN       A3, #-268435456       ; [DPU_3_PIPE] |1035| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("put_fat")
	.dwattr $C$DW$135, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1035| 
        ; CALL OCCURS {put_fat }         ; [] |1035| 
        CBNZ      A1, ||$C$L49||        ; [] 
        ; BRANCHCC OCCURS {||$C$L49||}   ; [] |1035| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1040,column 3,is_stmt,isa 1
        STR       V3, [V5, #12]         ; [DPU_3_PIPE] |1040| 
	.dwpsn	file "../utils/ff.c",line 1041,column 3,is_stmt,isa 1
        LDR       A1, [V5, #16]         ; [DPU_3_PIPE] |1041| 
        CMP       A1, #-1               ; [DPU_3_PIPE] |1041| 
        BEQ       ||$C$L50||            ; [DPU_3_PIPE] |1041| 
        ; BRANCHCC OCCURS {||$C$L50||}   ; [] |1041| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A2, #1                ; [DPU_3_PIPE] |1043| 
        STRB      A2, [V5, #5]          ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 1042,column 4,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1042| 
        STR       A1, [V5, #16]         ; [DPU_3_PIPE] |1042| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        B         ||$C$L50||            ; [DPU_3_PIPE] |1043| 
        ; BRANCH OCCURS {||$C$L50||}     ; [] |1043| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L49||:    
	.dwpsn	file "../utils/ff.c",line 1046,column 3,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |1046| 
        ITE       EQ                    ; [DPU_3_PIPE] 
        MOVEQ     V3, #-1               ; [DPU_3_PIPE] |1046| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVNE     V3, #1                ; [DPU_3_PIPE] |1043| 
;* --------------------------------------------------------------------------*
||$C$L50||:    
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |1049| 
	.dwpsn	file "../utils/ff.c",line 2582,column 20,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2582| 
	.dwpsn	file "../utils/ff.c",line 2573,column 7,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2573| 
	.dwpsn	file "../utils/ff.c",line 2582,column 20,is_stmt,isa 1
        BNE       ||$C$L65||            ; [DPU_3_PIPE] |2582| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |2582| 
;* --------------------------------------------------------------------------*
        B         ||$C$L83||            ; [DPU_3_PIPE] |2582| 
        ; BRANCH OCCURS {||$C$L83||}     ; [] |2582| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L51||:    
	.dwpsn	file "../utils/ff.c",line 1030,column 3,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L52||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L52||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
        CMP       A1, #1                ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L52||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L52||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1032,column 3,is_stmt,isa 1
        CMP       V2, V3                ; [DPU_3_PIPE] |1032| 
        BNE       ||$C$L47||            ; [DPU_3_PIPE] |1032| 
        ; BRANCHCC OCCURS {||$C$L47||}   ; [] |1032| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2555,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2555| 
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
	.dwpsn	file "../utils/ff.c",line 2573,column 7,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2573| 
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        B         ||$C$L84||            ; [DPU_3_PIPE] |2647| 
        ; BRANCH OCCURS {||$C$L84||}     ; [] |2647| 
;* --------------------------------------------------------------------------*
||$C$L52||:    
	.dwpsn	file "../utils/ff.c",line 2573,column 7,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2573| 
	.dwpsn	file "../utils/ff.c",line 2583,column 5,is_stmt,isa 1
        B         ||$C$L65||            ; [DPU_3_PIPE] |2583| 
        ; BRANCH OCCURS {||$C$L65||}     ; [] |2583| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L53||:    
	.dwpsn	file "../utils/ff.c",line 2555,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2555| 
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
	.dwpsn	file "../utils/ff.c",line 2573,column 7,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2573| 
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        B         ||$C$L84||            ; [DPU_3_PIPE] |2647| 
        ; BRANCH OCCURS {||$C$L84||}     ; [] |2647| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L54||:    
	.dwpsn	file "../utils/ff.c",line 2580,column 7,is_stmt,isa 1
        LDR       V7, [V4, #20]         ; [DPU_3_PIPE] |2580| 
        CMP       V7, #0                ; [DPU_3_PIPE] |2580| 
        BNE       ||$C$L56||            ; [DPU_3_PIPE] |2580| 
        ; BRANCHCC OCCURS {||$C$L56||}   ; [] |2580| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1011,column 3,is_stmt,isa 1
        LDR       V2, [V5, #12]         ; [DPU_3_PIPE] |1011| 
        CBZ       V2, ||$C$L55||        ; [] 
        ; BRANCHCC OCCURS {||$C$L55||}   ; [] |1011| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1012,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1012| 
        CMP       A1, V2                ; [DPU_3_PIPE] |1012| 
        BHI       ||$C$L58||            ; [DPU_3_PIPE] |1012| 
        ; BRANCHCC OCCURS {||$C$L58||}   ; [] |1012| 
;* --------------------------------------------------------------------------*
||$C$L55||:    
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 1012,column 36,is_stmt,isa 1
        B         ||$C$L58||            ; [DPU_3_PIPE] |1012| 
        ; BRANCH OCCURS {||$C$L58||}     ; [] |1012| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L56||:    
	.dwpsn	file "../utils/ff.c",line 1015,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1015| 
        MOV       A2, V7                ; [DPU_3_PIPE] |1015| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("get_fat")
	.dwattr $C$DW$136, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1015| 
        ; CALL OCCURS {get_fat }         ; [] |1015| 
        CMP       A1, #2                ; [DPU_3_PIPE] |1015| 
        BCC       ||$C$L70||            ; [DPU_3_PIPE] |1015| 
        ; BRANCHCC OCCURS {||$C$L70||}   ; [] |1015| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1017,column 3,is_stmt,isa 1
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] |1017| 
        CMP       A2, A1                ; [DPU_3_PIPE] |1017| 
        BLS       ||$C$L57||            ; [DPU_3_PIPE] |1017| 
        ; BRANCHCC OCCURS {||$C$L57||}   ; [] |1017| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1017,column 26,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1017| 
        BNE       ||$C$L66||            ; [DPU_3_PIPE] |1017| 
        ; BRANCHCC OCCURS {||$C$L66||}   ; [] |1017| 
;* --------------------------------------------------------------------------*
        B         ||$C$L74||            ; [DPU_3_PIPE] |1017| 
        ; BRANCH OCCURS {||$C$L74||}     ; [] |1017| 
;* --------------------------------------------------------------------------*
||$C$L57||:    
	.dwpsn	file "../utils/ff.c",line 1018,column 3,is_stmt,isa 1
        MOV       V2, V7                ; [DPU_3_PIPE] |1018| 
;* --------------------------------------------------------------------------*
||$C$L58||:    
	.dwpsn	file "../utils/ff.c",line 1021,column 2,is_stmt,isa 1
        MOV       V3, V2                ; [DPU_3_PIPE] |1021| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L59||
;*
;*   Loop source line                : 1022
;*   Loop closing brace source line  : 1033
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L59||:    
	.dwpsn	file "../utils/ff.c",line 1024,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1024| 
        ADDS      V3, V3, #1            ; [DPU_3_PIPE] |1024| 
        CMP       A1, V3                ; [DPU_3_PIPE] |1024| 
        BHI       ||$C$L60||            ; [DPU_3_PIPE] |1024| 
        ; BRANCHCC OCCURS {||$C$L60||}   ; [] |1024| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1026,column 4,is_stmt,isa 1
        CMP       V2, #2                ; [DPU_3_PIPE] |1026| 
        BCC       ||$C$L67||            ; [DPU_3_PIPE] |1026| 
        ; BRANCHCC OCCURS {||$C$L67||}   ; [] |1026| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1025,column 4,is_stmt,isa 1
        MOVS      V3, #2                ; [DPU_3_PIPE] |1025| 
;* --------------------------------------------------------------------------*
||$C$L60||:    
	.dwpsn	file "../utils/ff.c",line 1028,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1028| 
        MOV       A2, V3                ; [DPU_3_PIPE] |1028| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("get_fat")
	.dwattr $C$DW$137, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1028| 
        ; CALL OCCURS {get_fat }         ; [] |1028| 
        CBNZ      A1, ||$C$L64||        ; [] 
        ; BRANCHCC OCCURS {||$C$L64||}   ; [] |1028| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1035,column 2,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1035| 
        MOV       A2, V3                ; [DPU_3_PIPE] |1035| 
        MVN       A3, #-268435456       ; [DPU_3_PIPE] |1035| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("put_fat")
	.dwattr $C$DW$138, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1035| 
        ; CALL OCCURS {put_fat }         ; [] |1035| 
        CBNZ      A1, ||$C$L62||        ; [] 
        ; BRANCHCC OCCURS {||$C$L62||}   ; [] |1035| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1036,column 2,is_stmt,isa 1
        CMP       V7, #0                ; [DPU_3_PIPE] |1036| 
        BEQ       ||$C$L61||            ; [DPU_3_PIPE] |1036| 
        ; BRANCHCC OCCURS {||$C$L61||}   ; [] |1036| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1037,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1037| 
        MOV       A2, V7                ; [DPU_3_PIPE] |1037| 
        MOV       A3, V3                ; [DPU_3_PIPE] |1037| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("put_fat")
	.dwattr $C$DW$139, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1037| 
        ; CALL OCCURS {put_fat }         ; [] |1037| 
;* --------------------------------------------------------------------------*
||$C$L61||:    
        CBNZ      A1, ||$C$L62||        ; [] 
	.dwpsn	file "../utils/ff.c",line 1039,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L62||}   ; [] |1039| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1040,column 3,is_stmt,isa 1
        STR       V3, [V5, #12]         ; [DPU_3_PIPE] |1040| 
	.dwpsn	file "../utils/ff.c",line 1041,column 3,is_stmt,isa 1
        LDR       A1, [V5, #16]         ; [DPU_3_PIPE] |1041| 
        CMP       A1, #-1               ; [DPU_3_PIPE] |1041| 
        BEQ       ||$C$L63||            ; [DPU_3_PIPE] |1041| 
        ; BRANCHCC OCCURS {||$C$L63||}   ; [] |1041| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A2, #1                ; [DPU_3_PIPE] |1043| 
        STRB      A2, [V5, #5]          ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 1042,column 4,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1042| 
        STR       A1, [V5, #16]         ; [DPU_3_PIPE] |1042| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        B         ||$C$L63||            ; [DPU_3_PIPE] |1043| 
        ; BRANCH OCCURS {||$C$L63||}     ; [] |1043| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L62||:    
	.dwpsn	file "../utils/ff.c",line 1046,column 3,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |1046| 
        ITE       EQ                    ; [DPU_3_PIPE] 
        MOVEQ     V3, #-1               ; [DPU_3_PIPE] |1046| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVNE     V3, #1                ; [DPU_3_PIPE] |1043| 
;* --------------------------------------------------------------------------*
||$C$L63||:    
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOVS      A1, V3                ; [DPU_3_PIPE] |1049| 
        BNE       ||$C$L65||            ; [DPU_3_PIPE] |1049| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |1049| 
;* --------------------------------------------------------------------------*
        B         ||$C$L83||            ; [DPU_3_PIPE] |1049| 
        ; BRANCH OCCURS {||$C$L83||}     ; [] |1049| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L64||:    
	.dwpsn	file "../utils/ff.c",line 1030,column 3,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L65||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
        CMP       A1, #1                ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L65||            ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L65||}   ; [] |1030| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1032,column 3,is_stmt,isa 1
        CMP       V2, V3                ; [DPU_3_PIPE] |1032| 
        BNE       ||$C$L59||            ; [DPU_3_PIPE] |1032| 
        ; BRANCHCC OCCURS {||$C$L59||}   ; [] |1032| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
        B         ||$C$L84||            ; [DPU_3_PIPE] |2647| 
        ; BRANCH OCCURS {||$C$L84||}     ; [] |2647| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L65||:    
	.dwpsn	file "../utils/ff.c",line 2583,column 5,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |2583| 
        BEQ       ||$C$L70||            ; [DPU_3_PIPE] |2583| 
        ; BRANCHCC OCCURS {||$C$L70||}   ; [] |2583| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2584,column 5,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |2584| 
        BEQ       ||$C$L74||            ; [DPU_3_PIPE] |2584| 
        ; BRANCHCC OCCURS {||$C$L74||}   ; [] |2584| 
;* --------------------------------------------------------------------------*
||$C$L66||:    
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2585,column 5,is_stmt,isa 1
        STR       A1, [V4, #20]         ; [DPU_3_PIPE] |2585| 
	.dwpsn	file "../utils/ff.c",line 2591,column 4,is_stmt,isa 1
        B         ||$C$L68||            ; [DPU_3_PIPE] |2591| 
        ; BRANCH OCCURS {||$C$L68||}     ; [] |2591| 
;* --------------------------------------------------------------------------*
||$C$L67||:    
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
        B         ||$C$L84||            ; [DPU_3_PIPE] |2647| 
        ; BRANCH OCCURS {||$C$L84||}     ; [] |2647| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L68||:    
	.dwpsn	file "../utils/ff.c",line 2591,column 4,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2591| 
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |2591| 
        BCC       ||$C$L69||            ; [DPU_3_PIPE] |2591| 
        ; BRANCHCC OCCURS {||$C$L69||}   ; [] |2591| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2592,column 5,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2592| 
        LDR       A3, [V4, #24]         ; [DPU_3_PIPE] |2592| 
        ADD       A2, V4, #36           ; [DPU_3_PIPE] |2592| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 2592,column 5,is_stmt,isa 1
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("disk_write")
	.dwattr $C$DW$140, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |2592| 
        ; CALL OCCURS {disk_write }      ; [] |2592| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2592| 
        BNE       ||$C$L74||            ; [DPU_3_PIPE] |2592| 
        ; BRANCHCC OCCURS {||$C$L74||}   ; [] |2592| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2594,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2594| 
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] 
        AND       A1, A1, #191          ; [DPU_3_PIPE] |2594| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2594| 
;* --------------------------------------------------------------------------*
||$C$L69||:    
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A1, [V4, #20]         ; [DPU_3_PIPE] |830| 
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, A1                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L70||            ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L70||}   ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      V9, [V5, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A2, [V5, #44]         ; [DPU_3_PIPE] |831| 
	.dwpsn	file "../utils/ff.c",line 2598,column 4,is_stmt,isa 1
        MLA       V3, A1, V9, A2        ; [DPU_3_PIPE] |2598| 
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        MLA       V7, A1, V9, A2        ; [DPU_3_PIPE] |831| 
        CBNZ      V3, ||$C$L71||        ; [] 
	.dwpsn	file "../utils/ff.c",line 2598,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L71||}   ; [] |2598| 
;* --------------------------------------------------------------------------*
||$C$L70||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2598,column 15,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2598| 
        MOVS      A1, #2                ; [DPU_3_PIPE] |2598| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |2598| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2598| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L71||:    
	.dwpsn	file "../utils/ff.c",line 2600,column 4,is_stmt,isa 1
        LSRS      V3, V1, #9            ; [DPU_3_PIPE] |2600| 
	.dwpsn	file "../utils/ff.c",line 2599,column 4,is_stmt,isa 1
        ADD       V7, V6, V7            ; [DPU_3_PIPE] |2599| 
	.dwpsn	file "../utils/ff.c",line 2600,column 4,is_stmt,isa 1
        BNE       ||$C$L73||            ; [DPU_3_PIPE] |2600| 
        ; BRANCHCC OCCURS {||$C$L73||}   ; [] |2600| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2626,column 4,is_stmt,isa 1
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2626| 
        CMP       V7, A1                ; [DPU_3_PIPE] |2626| 
        BEQ       ||$C$L72||            ; [DPU_3_PIPE] |2626| 
        ; BRANCHCC OCCURS {||$C$L72||}   ; [] |2626| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2627,column 5,is_stmt,isa 1
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |2627| 
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2627| 
        CMP       A1, A2                ; [DPU_3_PIPE] |2627| 
        BLS       ||$C$L72||            ; [DPU_3_PIPE] |2627| 
        ; BRANCHCC OCCURS {||$C$L72||}   ; [] |2627| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2627| 
        ADD       A2, V4, #36           ; [DPU_3_PIPE] |2627| 
        MOV       A3, V7                ; [DPU_3_PIPE] |2627| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 2627,column 5,is_stmt,isa 1
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("disk_read")
	.dwattr $C$DW$142, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |2627| 
        ; CALL OCCURS {disk_read }       ; [] |2627| 
        CBNZ      A1, ||$C$L74||        ; [] 
        ; BRANCHCC OCCURS {||$C$L74||}   ; [] |2627| 
;* --------------------------------------------------------------------------*
||$C$L72||:    
        LDR       V3, [V4, #8]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2632,column 4,is_stmt,isa 1
        STR       V7, [V4, #24]         ; [DPU_3_PIPE] |2632| 
        UBFX      V2, V3, #0, #9        ; [DPU_3_PIPE] 
        B         ||$C$L78||            ; [DPU_3_PIPE] |2632| 
        ; BRANCH OCCURS {||$C$L78||}     ; [] |2632| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L73||:    
	.dwpsn	file "../utils/ff.c",line 2602,column 5,is_stmt,isa 1
        ADD       A1, V3, V6            ; [DPU_3_PIPE] |2602| 
        CMP       V9, A1                ; [DPU_3_PIPE] |2602| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2603,column 6,is_stmt,isa 1
        SUBCC     V3, V9, V6            ; [DPU_3_PIPE] |2603| 
	.dwpsn	file "../utils/ff.c",line 2604,column 5,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2604| 
        MOV       A2, V8                ; [DPU_3_PIPE] |2604| 
        MOV       A3, V7                ; [DPU_3_PIPE] |2604| 
        UXTB      A4, V3                ; [DPU_3_PIPE] |2604| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("disk_write")
	.dwattr $C$DW$143, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |2604| 
        ; CALL OCCURS {disk_write }      ; [] |2604| 
        CBZ       A1, ||$C$L75||        ; [] 
        ; BRANCHCC OCCURS {||$C$L75||}   ; [] |2604| 
;* --------------------------------------------------------------------------*
||$C$L74||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2605,column 6,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2605| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 2605,column 6,is_stmt,isa 1
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |2605| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2605| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L75||:    
	.dwpsn	file "../utils/ff.c",line 2612,column 5,is_stmt,isa 1
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2612| 
        SUB       A1, A1, V7            ; [DPU_3_PIPE] |2612| 
        CMP       V3, A1                ; [DPU_3_PIPE] |2612| 
        BLS       ||$C$L77||            ; [DPU_3_PIPE] |2612| 
        ; BRANCHCC OCCURS {||$C$L77||}   ; [] |2612| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADD       A2, V8, A1, LSL #9    ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       A3, V4, #34           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 2613,column 6,is_stmt,isa 1
        MOV       A1, #512              ; [DPU_3_PIPE] |2613| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |541| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L76||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 256
;*   Known Maximum Trip Count        : 256
;*   Known Max Trip Count Factor     : 256
;* --------------------------------------------------------------------------*
	.align	8
||$C$L76||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A4, [A2, #2]!         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3, #2]!         ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A4, [A3, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L76||            ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L76||}   ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2614,column 6,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2614| 
        AND       A1, A1, #191          ; [DPU_3_PIPE] |2614| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2614| 
;* --------------------------------------------------------------------------*
||$C$L77||:    
	.dwpsn	file "../utils/ff.c",line 2617,column 5,is_stmt,isa 1
        LSLS      V2, V3, #9            ; [DPU_3_PIPE] |2617| 
	.dwpsn	file "../utils/ff.c",line 2618,column 5,is_stmt,isa 1
        B         ||$C$L82||            ; [DPU_3_PIPE] |2618| 
        ; BRANCH OCCURS {||$C$L82||}     ; [] |2618| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L78||:    
	.dwpsn	file "../utils/ff.c",line 2634,column 3,is_stmt,isa 1
        RSB       V2, V2, #512          ; [DPU_3_PIPE] |2634| 
	.dwpsn	file "../utils/ff.c",line 2635,column 3,is_stmt,isa 1
        CMP       V1, V2                ; [DPU_3_PIPE] |2635| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2635,column 19,is_stmt,isa 1
        MOVCC     V2, V1                ; [DPU_3_PIPE] |2635| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        UBFX      A1, V3, #0, #9        ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        MOV       A2, V8                ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       V9, V4, A1            ; [DPU_3_PIPE] |540| 
        ADD       V9, V9, #36           ; [DPU_3_PIPE] |540| 
        CBZ       V2, ||$C$L81||        ; [] 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L81||}   ; [] |550| 
;* --------------------------------------------------------------------------*
        LSRS      A1, V2, #1            ; [DPU_3_PIPE] |550| 
        BEQ       ||$C$L80||            ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L80||}   ; [] |550| 
;* --------------------------------------------------------------------------*
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] 
        SUB       V9, V9, #2            ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L79||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L79||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A3, [A2, #2]!         ; [DPU_3_PIPE] |551| 
        STRB      A3, [V9, #2]!         ; [DPU_3_PIPE] |551| 
        LDRB      A3, [A2, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A3, [V9, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L79||            ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L79||}   ; [] |550| 
;* --------------------------------------------------------------------------*
        ADD       V9, V9, #2            ; [DPU_3_PIPE] 
        ADDS      A2, A2, #2            ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L80||:    
; Peeled loop iterations for unrolled loop:
        LSRS      A1, V2, #1            ; [DPU_3_PIPE] 
        ITT       CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRBCS    A1, [A2, #0]          ; [DPU_3_PIPE] |551| 
        STRBCS    A1, [V9, #0]          ; [DPU_3_PIPE] |551| 
;* --------------------------------------------------------------------------*
||$C$L81||:    
	.dwpsn	file "../utils/ff.c",line 2643,column 3,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2643| 
        ORR       A1, A1, #64           ; [DPU_3_PIPE] |2643| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2643| 
;* --------------------------------------------------------------------------*
||$C$L82||:    
	.dwpsn	file "../utils/ff.c",line 2566,column 3,is_stmt,isa 1
        LDR       A1, [V4, #8]          ; [DPU_3_PIPE] |2566| 
        LDR       LR, [SP, #0]          ; [DPU_3_PIPE] |2566| 
        ADDS      A1, V2, A1            ; [DPU_3_PIPE] |2566| 
        STR       A1, [V4, #8]          ; [DPU_3_PIPE] |2566| 
        LDR       A2, [LR, #0]          ; [DPU_3_PIPE] |2566| 
        SUBS      V1, V1, V2            ; [DPU_3_PIPE] |2566| 
        ADD       V8, V2, V8            ; [DPU_3_PIPE] |2566| 
        ADD       A2, V2, A2            ; [DPU_3_PIPE] |2566| 
        STR       A2, [LR, #0]          ; [DPU_3_PIPE] |2566| 
        BNE       ||$C$L44||            ; [DPU_3_PIPE] |2566| 
        ; BRANCHCC OCCURS {||$C$L44||}   ; [] |2566| 
;* --------------------------------------------------------------------------*
||$C$L83||:    
	.dwpsn	file "../utils/ff.c",line 2647,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
;* --------------------------------------------------------------------------*
||$C$L84||:    
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |2647| 
        CMP       A1, A2                ; [DPU_3_PIPE] |2647| 
        BCC       ||$C$L86||            ; [DPU_3_PIPE] |2647| 
        ; BRANCHCC OCCURS {||$C$L86||}   ; [] |2647| 
;* --------------------------------------------------------------------------*
        B         ||$C$L87||            ; [DPU_3_PIPE] |2647| 
        ; BRANCH OCCURS {||$C$L87||}     ; [] |2647| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L85||:    
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2647| 
        CMP       A1, A2                ; [DPU_3_PIPE] |2647| 
        BCS       ||$C$L87||            ; [DPU_3_PIPE] |2647| 
        ; BRANCHCC OCCURS {||$C$L87||}   ; [] |2647| 
;* --------------------------------------------------------------------------*
||$C$L86||:    
	.dwpsn	file "../utils/ff.c",line 2647,column 28,is_stmt,isa 1
        STR       A2, [V4, #12]         ; [DPU_3_PIPE] |2647| 
;* --------------------------------------------------------------------------*
||$C$L87||:    
	.dwpsn	file "../utils/ff.c",line 2648,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2648| 
	.dwpsn	file "../utils/ff.c",line 2555,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2555| 
	.dwpsn	file "../utils/ff.c",line 2648,column 2,is_stmt,isa 1
        ORR       A2, A2, #32           ; [DPU_3_PIPE] |2648| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2648| 
;* --------------------------------------------------------------------------*
||$C$L88||:    
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0xa5b)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.align	8
	.clink
	.thumbfunc check_fs
	.thumb

$C$DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("check_fs")
	.dwattr $C$DW$146, DW_AT_low_pc(check_fs)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("check_fs")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0x7f9)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$146, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$146, DW_AT_decl_line(0x7f9)
	.dwattr $C$DW$146, DW_AT_decl_column(0x06)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../utils/ff.c",line 2045,column 1,is_stmt,address check_fs,isa 1

	.dwfde $C$DW$CIE, check_fs
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg0]
$C$DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sect")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: check_fs                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                 *
;*****************************************************************************
check_fs:
;* --------------------------------------------------------------------------*
;* A2    assigned to sect
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("sect")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg1]
;* V2    assigned to fs
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg5]
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
        MOV       V2, A1                ; [DPU_3_PIPE] |2045| 
	.dwpsn	file "../utils/ff.c",line 2046,column 2,is_stmt,isa 1
        LDRB      A1, [V2, #1]          ; [DPU_3_PIPE] |2046| 
        MOV       A3, A2                ; [DPU_3_PIPE] |2046| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |2046| 
        ADD       V1, V2, #52           ; [DPU_3_PIPE] |2046| 
        MOV       A2, V1                ; [DPU_3_PIPE] |2046| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("disk_read")
	.dwattr $C$DW$151, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |2046| 
        ; CALL OCCURS {disk_read }       ; [] |2046| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2046| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2047,column 3,is_stmt,isa 1
        MOVNE     A1, #3                ; [DPU_3_PIPE] |2047| 
        BNE       ||$C$L91||            ; [DPU_3_PIPE] |2047| 
        ; BRANCHCC OCCURS {||$C$L91||}   ; [] |2047| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2048,column 2,is_stmt,isa 1
        LDRB      A3, [V2, #563]        ; [DPU_3_PIPE] |2048| 
        LDRB      A1, [V2, #562]        ; [DPU_3_PIPE] |2048| 
        MOV       A2, #43605            ; [DPU_3_PIPE] |2048| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2048| 
        CMP       A2, A1                ; [DPU_3_PIPE] |2048| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2049,column 3,is_stmt,isa 1
        MOVNE     A1, #2                ; [DPU_3_PIPE] |2049| 
        BNE       ||$C$L91||            ; [DPU_3_PIPE] |2049| 
        ; BRANCHCC OCCURS {||$C$L91||}   ; [] |2049| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2051,column 2,is_stmt,isa 1
        LDRB      A1, [V2, #108]        ; [DPU_3_PIPE] |2051| 
        LDRB      A3, [V2, #107]        ; [DPU_3_PIPE] |2051| 
        LDRB      A2, [V2, #106]        ; [DPU_3_PIPE] |2051| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2051| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2051| 
        MOVW      A3, #16710            ; [DPU_3_PIPE] |2051| 
        MOVT      A3, #84               ; [DPU_3_PIPE] |2051| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2051| 
        CMP       A3, A2                ; [DPU_3_PIPE] |2051| 
        BEQ       ||$C$L89||            ; [DPU_3_PIPE] |2051| 
        ; BRANCHCC OCCURS {||$C$L89||}   ; [] |2051| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2053,column 2,is_stmt,isa 1
        LDRB      A1, [V2, #136]        ; [DPU_3_PIPE] |2053| 
        LDRB      A4, [V2, #135]        ; [DPU_3_PIPE] |2053| 
        LDRB      A2, [V2, #134]        ; [DPU_3_PIPE] |2053| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2053| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2053| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2053| 
        CMP       A3, A2                ; [DPU_3_PIPE] |2053| 
        BNE       ||$C$L90||            ; [DPU_3_PIPE] |2053| 
        ; BRANCHCC OCCURS {||$C$L90||}   ; [] |2053| 
;* --------------------------------------------------------------------------*
||$C$L89||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2054,column 3,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2054| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return
        POP       {A4, V1, V2, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L90||:    
	.dwpsn	file "../utils/ff.c",line 2056,column 2,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |2056| 
;* --------------------------------------------------------------------------*
||$C$L91||:    
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return
        POP       {A4, V1, V2, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$146, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x809)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.align	8
	.clink
	.thumbfunc chk_mounted
	.thumb

$C$DW$154	.dwtag  DW_TAG_subprogram, DW_AT_name("chk_mounted")
	.dwattr $C$DW$154, DW_AT_low_pc(chk_mounted)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("chk_mounted")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x813)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$154, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$154, DW_AT_decl_line(0x813)
	.dwattr $C$DW$154, DW_AT_decl_column(0x09)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "../utils/ff.c",line 2072,column 1,is_stmt,address chk_mounted,isa 1

	.dwfde $C$DW$CIE, chk_mounted
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg0]
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rfs")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("rfs")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg1]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("wmode")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("wmode")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: chk_mounted                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 0 Auto + 36 Save = 36 byte                 *
;*****************************************************************************
chk_mounted:
;* --------------------------------------------------------------------------*
;* A3    assigned to $O$C1
;* A1    assigned to $O$C2
;* A2    assigned to $O$C3
;* V8    assigned to $O$C4
;* V7    assigned to $O$C5
;* A1    assigned to $O$v2
;* V9    assigned to fmt
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("fmt")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("fmt")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]
;* A1    assigned to fmt
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("fmt")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("fmt")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg0]
;* V3    assigned to b
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("b")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg6]
;* A2    assigned to b
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("b")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg1]
;* A1    assigned to stat
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("stat")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]
;* A1    assigned to stat
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("stat")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg0]
;* A1    assigned to path
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg0]
;* A2    assigned to rfs
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("rfs")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("rfs")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg1]
;* V2    assigned to wmode
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("wmode")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("wmode")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg5]
;* V1    assigned to vol
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("vol")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("vol")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg4]
;* A3    assigned to bsect
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("bsect")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("bsect")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg2]
;* A1    assigned to fasize
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("fasize")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("fasize")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg0]
;* V3    assigned to tsect
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("tsect")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("tsect")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg6]
;* V9    assigned to sysect
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("sysect")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("sysect")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]
;* V3    assigned to nclst
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("nclst")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("nclst")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg6]
;* V2    assigned to nrsv
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("nrsv")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("nrsv")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg5]
;* A4    assigned to p
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg3]
;* V4    assigned to fs
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg7]
;* V5    assigned to $O$K278
;* V7    assigned to $O$K31
;* V6    assigned to $O$K57
;* A2    assigned to $O$U184
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
	.dwcfi	save_reg_to_mem, 3, -40
	.dwpsn	file "../utils/ff.c",line 2078,column 17,is_stmt,isa 1
        LDR       A4, [A1, #0]          ; [DPU_3_PIPE] |2078| 
	.dwpsn	file "../utils/ff.c",line 2083,column 2,is_stmt,isa 1
        LDRB      V1, [A4, #0]          ; [DPU_3_PIPE] |2083| 
	.dwpsn	file "../utils/ff.c",line 2072,column 1,is_stmt,isa 1
        MOV       V2, A3                ; [DPU_3_PIPE] |2072| 
	.dwpsn	file "../utils/ff.c",line 2083,column 2,is_stmt,isa 1
        SUBS      V1, V1, #48           ; [DPU_3_PIPE] |2083| 
        CMP       V1, #10               ; [DPU_3_PIPE] |2083| 
        BCS       ||$C$L92||            ; [DPU_3_PIPE] |2083| 
        ; BRANCHCC OCCURS {||$C$L92||}   ; [] |2083| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2084,column 2,is_stmt,isa 1
        LDRB      A3, [A4, #1]          ; [DPU_3_PIPE] |2084| 
        CMP       A3, #58               ; [DPU_3_PIPE] |2084| 
        ITT       EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2085,column 11,is_stmt,isa 1
        ADDEQ     A4, A4, #2            ; [DPU_3_PIPE] |2085| 
        STREQ     A4, [A1, #0]          ; [DPU_3_PIPE] |2085| 
	.dwpsn	file "../utils/ff.c",line 2086,column 2,is_stmt,isa 1
        BEQ       ||$C$L93||            ; [DPU_3_PIPE] |2086| 
        ; BRANCHCC OCCURS {||$C$L93||}   ; [] |2086| 
;* --------------------------------------------------------------------------*
||$C$L92||:    
	.dwpsn	file "../utils/ff.c",line 2090,column 3,is_stmt,isa 1
        MOVS      V1, #0                ; [DPU_3_PIPE] |2090| 
;* --------------------------------------------------------------------------*
||$C$L93||:    
	.dwpsn	file "../utils/ff.c",line 2095,column 2,is_stmt,isa 1
        MOV       V5, #0                ; [DPU_3_PIPE] |2095| 
	.dwpsn	file "../utils/ff.c",line 2096,column 2,is_stmt,isa 1
        CMP       V1, #0                ; [DPU_3_PIPE] |2096| 
	.dwpsn	file "../utils/ff.c",line 2095,column 2,is_stmt,isa 1
        STR       V5, [A2, #0]          ; [DPU_3_PIPE] |2095| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2097,column 3,is_stmt,isa 1
        MOVNE     A1, #11               ; [DPU_3_PIPE] |2097| 
        BNE       ||$C$L108||           ; [DPU_3_PIPE] |2097| 
        ; BRANCHCC OCCURS {||$C$L108||}  ; [] |2097| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2098,column 2,is_stmt,isa 1
        MOVW      V7, ||$O1$$||+0       ; [DPU_3_PIPE] |2098| 
        MOVT      V7, ||$O1$$||+0       ; [DPU_3_PIPE] |2098| 
        ADD       A1, V7, V1, LSL #2    ; [DPU_3_PIPE] |2098| 
        LDR       V4, [A1, #4]          ; [DPU_3_PIPE] |2098| 
	.dwpsn	file "../utils/ff.c",line 2099,column 2,is_stmt,isa 1
        CMP       V4, #0                ; [DPU_3_PIPE] |2099| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2099,column 11,is_stmt,isa 1
        MOVEQ     A1, #12               ; [DPU_3_PIPE] |2099| 
        BEQ       ||$C$L108||           ; [DPU_3_PIPE] |2099| 
        ; BRANCHCC OCCURS {||$C$L108||}  ; [] |2099| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2103,column 2,is_stmt,isa 1
        STR       V4, [A2, #0]          ; [DPU_3_PIPE] |2103| 
	.dwpsn	file "../utils/ff.c",line 2104,column 2,is_stmt,isa 1
        LDRB      A1, [V4, #0]          ; [DPU_3_PIPE] |2104| 
        CBZ       A1, ||$C$L95||        ; [] 
        ; BRANCHCC OCCURS {||$C$L95||}   ; [] |2104| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2105,column 3,is_stmt,isa 1
        LDRB      A1, [V4, #1]          ; [DPU_3_PIPE] |2105| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("disk_status")
	.dwattr $C$DW$176, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2105| 
        ; CALL OCCURS {disk_status }     ; [] |2105| 
	.dwpsn	file "../utils/ff.c",line 2106,column 3,is_stmt,isa 1
        LSRS      A2, A1, #1            ; [DPU_3_PIPE] |2106| 
        BCS       ||$C$L95||            ; [DPU_3_PIPE] |2106| 
        ; BRANCHCC OCCURS {||$C$L95||}   ; [] |2106| 
;* --------------------------------------------------------------------------*
        CBZ       V2, ||$C$L94||        ; [] 
	.dwpsn	file "../utils/ff.c",line 2107,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L94||}   ; [] |2107| 
;* --------------------------------------------------------------------------*
        LSRS      A1, A1, #3            ; [DPU_3_PIPE] |2107| 
        BCS       ||$C$L96||            ; [DPU_3_PIPE] |2107| 
        ; BRANCHCC OCCURS {||$C$L96||}   ; [] |2107| 
;* --------------------------------------------------------------------------*
||$C$L94||:    
	.dwcfi	remember_state
        MOV       A1, V5                ; [DPU_3_PIPE] 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L95||:    
        MOV       V6, V5                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2116,column 2,is_stmt,isa 1
        STRB      V6, [V4, #0]          ; [DPU_3_PIPE] |2116| 
	.dwpsn	file "../utils/ff.c",line 2118,column 2,is_stmt,isa 1
        UXTB      A1, V1                ; [DPU_3_PIPE] |2118| 
	.dwpsn	file "../utils/ff.c",line 2117,column 2,is_stmt,isa 1
        STRB      V1, [V4, #1]          ; [DPU_3_PIPE] |2117| 
	.dwpsn	file "../utils/ff.c",line 2118,column 2,is_stmt,isa 1
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("disk_initialize")
	.dwattr $C$DW$178, DW_AT_TI_call
        BL        disk_initialize       ; [DPU_3_PIPE] |2118| 
        ; CALL OCCURS {disk_initialize }  ; [] |2118| 
	.dwpsn	file "../utils/ff.c",line 2119,column 2,is_stmt,isa 1
        LSRS      A2, A1, #1            ; [DPU_3_PIPE] |2119| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2120,column 3,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |2120| 
        BCS       ||$C$L108||           ; [DPU_3_PIPE] |2120| 
        ; BRANCHCC OCCURS {||$C$L108||}  ; [] |2120| 
;* --------------------------------------------------------------------------*
        CBZ       V2, ||$C$L97||        ; [] 
	.dwpsn	file "../utils/ff.c",line 2121,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L97||}   ; [] |2121| 
;* --------------------------------------------------------------------------*
        LSRS      A1, A1, #3            ; [DPU_3_PIPE] |2121| 
        BCC       ||$C$L97||            ; [DPU_3_PIPE] |2121| 
        ; BRANCHCC OCCURS {||$C$L97||}   ; [] |2121| 
;* --------------------------------------------------------------------------*
||$C$L96||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2122,column 3,is_stmt,isa 1
        MOVS      A1, #10               ; [DPU_3_PIPE] |2122| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L97||:    
	.dwpsn	file "../utils/ff.c",line 2128,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |2128| 
        MOV       A2, V6                ; [DPU_3_PIPE] |2128| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("check_fs")
	.dwattr $C$DW$180, DW_AT_TI_call
        BL        check_fs              ; [DPU_3_PIPE] |2128| 
        ; CALL OCCURS {check_fs }        ; [] |2128| 
        CMP       A1, #1                ; [DPU_3_PIPE] |2128| 
        BEQ       ||$C$L98||            ; [DPU_3_PIPE] |2128| 
        ; BRANCHCC OCCURS {||$C$L98||}   ; [] |2128| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2140,column 2,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |2140| 
        BEQ       ||$C$L99||            ; [DPU_3_PIPE] |2140| 
        ; BRANCHCC OCCURS {||$C$L99||}   ; [] |2140| 
;* --------------------------------------------------------------------------*
        MOV       A3, V6                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2141,column 2,is_stmt,isa 1
        B         ||$C$L100||           ; [DPU_3_PIPE] |2141| 
        ; BRANCH OCCURS {||$C$L100||}    ; [] |2141| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L98||:    
	.dwpsn	file "../utils/ff.c",line 2135,column 3,is_stmt,isa 1
        LDRB      A1, [V4, #502]        ; [DPU_3_PIPE] |2135| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2135| 
        BEQ       ||$C$L105||           ; [DPU_3_PIPE] |2135| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2135| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2136,column 4,is_stmt,isa 1
        LDRB      A4, [V4, #509]        ; [DPU_3_PIPE] |2136| 
        LDRB      A1, [V4, #508]        ; [DPU_3_PIPE] |2136| 
        LDRB      A2, [V4, #507]        ; [DPU_3_PIPE] |2136| 
        LDRB      A3, [V4, #506]        ; [DPU_3_PIPE] |2136| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2136| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2136| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |2136| 
        ORR       V8, A3, A1            ; [DPU_3_PIPE] |2136| 
	.dwpsn	file "../utils/ff.c",line 2137,column 4,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |2137| 
        MOV       A2, V8                ; [DPU_3_PIPE] |2137| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("check_fs")
	.dwattr $C$DW$181, DW_AT_TI_call
        BL        check_fs              ; [DPU_3_PIPE] |2137| 
        ; CALL OCCURS {check_fs }        ; [] |2137| 
        CMP       A1, #3                ; [DPU_3_PIPE] |2137| 
	.dwpsn	file "../utils/ff.c",line 2136,column 4,is_stmt,isa 1
        MOV       A3, V8                ; [DPU_3_PIPE] |2136| 
	.dwpsn	file "../utils/ff.c",line 2137,column 4,is_stmt,isa 1
        BNE       ||$C$L100||           ; [DPU_3_PIPE] |2137| 
        ; BRANCHCC OCCURS {||$C$L100||}  ; [] |2137| 
;* --------------------------------------------------------------------------*
||$C$L99||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2140,column 16,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |2140| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L100||:    
	.dwpsn	file "../utils/ff.c",line 2141,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2141| 
        BNE       ||$C$L105||           ; [DPU_3_PIPE] |2141| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2141| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2145,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #64]         ; [DPU_3_PIPE] |2145| 
        LDRB      A1, [V4, #63]         ; [DPU_3_PIPE] |2145| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |2145| 
        CMP       A1, #512              ; [DPU_3_PIPE] |2145| 
        BNE       ||$C$L105||           ; [DPU_3_PIPE] |2145| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2148,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #75]         ; [DPU_3_PIPE] |2148| 
        LDRB      A1, [V4, #74]         ; [DPU_3_PIPE] |2148| 
        ORRS      A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |2148| 
        BNE       ||$C$L101||           ; [DPU_3_PIPE] |2148| 
        ; BRANCHCC OCCURS {||$C$L101||}  ; [] |2148| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2149,column 15,is_stmt,isa 1
        LDRB      V1, [V4, #91]         ; [DPU_3_PIPE] |2149| 
        LDRB      A2, [V4, #90]         ; [DPU_3_PIPE] |2149| 
        LDRB      A4, [V4, #89]         ; [DPU_3_PIPE] |2149| 
        LDRB      A1, [V4, #88]         ; [DPU_3_PIPE] |2149| 
        ORR       A2, A2, V1, LSL #8    ; [DPU_3_PIPE] |2149| 
        LSL       V9, A2, #16           ; [DPU_3_PIPE] |2149| 
        ORR       V9, V9, A4, LSL #8    ; [DPU_3_PIPE] |2149| 
        ORR       A1, A1, V9            ; [DPU_3_PIPE] |2149| 
;* --------------------------------------------------------------------------*
||$C$L101||:    
	.dwpsn	file "../utils/ff.c",line 2150,column 2,is_stmt,isa 1
        STR       A1, [V4, #28]         ; [DPU_3_PIPE] |2150| 
	.dwpsn	file "../utils/ff.c",line 2152,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #68]         ; [DPU_3_PIPE] |2152| 
        STRB      A2, [V4, #3]          ; [DPU_3_PIPE] |2152| 
	.dwpsn	file "../utils/ff.c",line 2153,column 2,is_stmt,isa 1
        CMP       A2, #1                ; [DPU_3_PIPE] |2153| 
        IT        NE                    ; [DPU_3_PIPE] 
        CMPNE     A2, #2                ; [DPU_3_PIPE] |2153| 
        BNE       ||$C$L105||           ; [DPU_3_PIPE] |2153| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2156,column 2,is_stmt,isa 1
        LDRB      V3, [V4, #65]         ; [DPU_3_PIPE] |2156| 
	.dwpsn	file "../utils/ff.c",line 2154,column 2,is_stmt,isa 1
        MULS      A1, A2, A1            ; [DPU_3_PIPE] |2154| 
	.dwpsn	file "../utils/ff.c",line 2157,column 2,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |2157| 
	.dwpsn	file "../utils/ff.c",line 2156,column 2,is_stmt,isa 1
        STRB      V3, [V4, #2]          ; [DPU_3_PIPE] |2156| 
	.dwpsn	file "../utils/ff.c",line 2157,column 2,is_stmt,isa 1
        BEQ       ||$C$L105||           ; [DPU_3_PIPE] |2157| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2157| 
;* --------------------------------------------------------------------------*
        SUBS      A2, V3, #1            ; [DPU_3_PIPE] |2157| 
        TST       V3, A2                ; [DPU_3_PIPE] |2157| 
        BNE       ||$C$L105||           ; [DPU_3_PIPE] |2157| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2157| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2159,column 2,is_stmt,isa 1
        LDRB      A4, [V4, #70]         ; [DPU_3_PIPE] |2159| 
        LDRB      A2, [V4, #69]         ; [DPU_3_PIPE] |2159| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |2159| 
        UXTH      A2, A2                ; [DPU_3_PIPE] |2159| 
	.dwpsn	file "../utils/ff.c",line 2160,column 2,is_stmt,isa 1
        TST       A2, #15               ; [DPU_3_PIPE] |2160| 
	.dwpsn	file "../utils/ff.c",line 2159,column 2,is_stmt,isa 1
        STRH      A2, [V4, #8]          ; [DPU_3_PIPE] |2159| 
	.dwpsn	file "../utils/ff.c",line 2160,column 2,is_stmt,isa 1
        BNE       ||$C$L105||           ; [DPU_3_PIPE] |2160| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2160| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2162,column 2,is_stmt,isa 1
        LDRB      A4, [V4, #72]         ; [DPU_3_PIPE] |2162| 
        LDRB      V3, [V4, #71]         ; [DPU_3_PIPE] |2162| 
        ORRS      V3, V3, A4, LSL #8    ; [DPU_3_PIPE] |2162| 
        BNE       ||$C$L102||           ; [DPU_3_PIPE] |2162| 
        ; BRANCHCC OCCURS {||$C$L102||}  ; [] |2162| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2163,column 14,is_stmt,isa 1
        LDRB      V2, [V4, #87]         ; [DPU_3_PIPE] |2163| 
        LDRB      A4, [V4, #86]         ; [DPU_3_PIPE] |2163| 
        LDRB      V1, [V4, #85]         ; [DPU_3_PIPE] |2163| 
        LDRB      V3, [V4, #84]         ; [DPU_3_PIPE] |2163| 
        ORR       A4, A4, V2, LSL #8    ; [DPU_3_PIPE] |2163| 
        LSL       V9, A4, #16           ; [DPU_3_PIPE] |2163| 
        ORR       V9, V9, V1, LSL #8    ; [DPU_3_PIPE] |2163| 
        ORR       V3, V3, V9            ; [DPU_3_PIPE] |2163| 
;* --------------------------------------------------------------------------*
||$C$L102||:    
	.dwpsn	file "../utils/ff.c",line 2165,column 2,is_stmt,isa 1
        LDRB      A4, [V4, #67]         ; [DPU_3_PIPE] |2165| 
        LDRB      V2, [V4, #66]         ; [DPU_3_PIPE] |2165| 
        ORRS      V2, V2, A4, LSL #8    ; [DPU_3_PIPE] |2165| 
        BEQ       ||$C$L105||           ; [DPU_3_PIPE] |2165| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2165| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2169,column 2,is_stmt,isa 1
        ADD       A4, V2, A2, ASR #4    ; [DPU_3_PIPE] |2169| 
        ADD       V9, A1, A4            ; [DPU_3_PIPE] |2169| 
	.dwpsn	file "../utils/ff.c",line 2170,column 2,is_stmt,isa 1
        CMP       V9, V3                ; [DPU_3_PIPE] |2170| 
        BHI       ||$C$L105||           ; [DPU_3_PIPE] |2170| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2170| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2171,column 2,is_stmt,isa 1
        LDRB      A4, [V4, #2]          ; [DPU_3_PIPE] |2171| 
        SUB       V3, V3, V9            ; [DPU_3_PIPE] |2171| 
        UDIV      V3, V3, A4            ; [DPU_3_PIPE] |2171| 
        CMP       V3, #0                ; [DPU_3_PIPE] |2171| 
        BEQ       ||$C$L105||           ; [DPU_3_PIPE] |2171| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2171| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2174,column 2,is_stmt,isa 1
        MOV       A4, #4085             ; [DPU_3_PIPE] |2174| 
        CMP       A4, V3                ; [DPU_3_PIPE] |2174| 
        BCC       ||$C$L103||           ; [DPU_3_PIPE] |2174| 
        ; BRANCHCC OCCURS {||$C$L103||}  ; [] |2174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2178,column 2,is_stmt,isa 1
        ADDS      V3, V3, #2            ; [DPU_3_PIPE] |2178| 
        STR       V3, [V4, #24]         ; [DPU_3_PIPE] |2178| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        ADDS      V2, V2, A3            ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2179,column 2,is_stmt,isa 1
        STR       A3, [V4, #32]         ; [DPU_3_PIPE] |2179| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        ADD       V9, V9, A3            ; [DPU_3_PIPE] |2181| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        STR       V2, [V4, #36]         ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2187,column 3,is_stmt,isa 1
        CMP       A2, #0                ; [DPU_3_PIPE] |2187| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        STR       V9, [V4, #44]         ; [DPU_3_PIPE] |2181| 
	.dwpsn	file "../utils/ff.c",line 2187,column 3,is_stmt,isa 1
        BEQ       ||$C$L105||           ; [DPU_3_PIPE] |2187| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2187| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2188,column 3,is_stmt,isa 1
        LDR       A2, [V4, #36]         ; [DPU_3_PIPE] |2188| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |2188| 
        STR       A1, [V4, #40]         ; [DPU_3_PIPE] |2188| 
	.dwpsn	file "../utils/ff.c",line 2192,column 2,is_stmt,isa 1
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2192| 
        LDR       A2, [V4, #28]         ; [DPU_3_PIPE] |2192| 
        ADD       A3, A1, A1, LSL #1    ; [DPU_3_PIPE] |2192| 
        AND       A1, A1, #1            ; [DPU_3_PIPE] |2192| 
        ADD       A1, A1, A3, LSR #1    ; [DPU_3_PIPE] |2192| 
        ADD       A1, A1, #511          ; [DPU_3_PIPE] |2192| 
        CMP       A2, A1, LSR #9        ; [DPU_3_PIPE] |2192| 
        BCC       ||$C$L105||           ; [DPU_3_PIPE] |2192| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2192| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2197,column 2,is_stmt,isa 1
        MOV       A1, #-1               ; [DPU_3_PIPE] |2197| 
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2197| 
	.dwpsn	file "../utils/ff.c",line 2173,column 2,is_stmt,isa 1
        MOV       V9, #1                ; [DPU_3_PIPE] |2173| 
	.dwpsn	file "../utils/ff.c",line 2198,column 2,is_stmt,isa 1
        STR       V5, [V4, #12]         ; [DPU_3_PIPE] |2198| 
	.dwpsn	file "../utils/ff.c",line 2201,column 2,is_stmt,isa 1
        B         ||$C$L107||           ; [DPU_3_PIPE] |2201| 
        ; BRANCH OCCURS {||$C$L107||}    ; [] |2201| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L103||:    
	.dwpsn	file "../utils/ff.c",line 2175,column 2,is_stmt,isa 1
        MOV       A4, #65525            ; [DPU_3_PIPE] |2175| 
        CMP       A4, V3                ; [DPU_3_PIPE] |2175| 
        BCC       ||$C$L104||           ; [DPU_3_PIPE] |2175| 
        ; BRANCHCC OCCURS {||$C$L104||}  ; [] |2175| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2178,column 2,is_stmt,isa 1
        ADDS      V3, V3, #2            ; [DPU_3_PIPE] |2178| 
        STR       V3, [V4, #24]         ; [DPU_3_PIPE] |2178| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        ADDS      V2, V2, A3            ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2179,column 2,is_stmt,isa 1
        STR       A3, [V4, #32]         ; [DPU_3_PIPE] |2179| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        ADD       V9, V9, A3            ; [DPU_3_PIPE] |2181| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        STR       V2, [V4, #36]         ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        STR       V9, [V4, #44]         ; [DPU_3_PIPE] |2181| 
        CBZ       A2, ||$C$L105||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2187,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2187| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2188,column 3,is_stmt,isa 1
        LDR       A2, [V4, #36]         ; [DPU_3_PIPE] |2188| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |2188| 
        STR       A1, [V4, #40]         ; [DPU_3_PIPE] |2188| 
	.dwpsn	file "../utils/ff.c",line 2192,column 2,is_stmt,isa 1
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2192| 
        LDR       A2, [V4, #28]         ; [DPU_3_PIPE] |2192| 
        LSLS      A1, A1, #1            ; [DPU_3_PIPE] |2192| 
        ADD       A1, A1, #511          ; [DPU_3_PIPE] |2192| 
        CMP       A2, A1, LSR #9        ; [DPU_3_PIPE] |2192| 
        BCC       ||$C$L105||           ; [DPU_3_PIPE] |2192| 
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2192| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2197,column 2,is_stmt,isa 1
        MOV       A1, #-1               ; [DPU_3_PIPE] |2197| 
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2197| 
	.dwpsn	file "../utils/ff.c",line 2174,column 26,is_stmt,isa 1
        MOV       V9, #2                ; [DPU_3_PIPE] |2174| 
	.dwpsn	file "../utils/ff.c",line 2198,column 2,is_stmt,isa 1
        STR       V5, [V4, #12]         ; [DPU_3_PIPE] |2198| 
	.dwpsn	file "../utils/ff.c",line 2201,column 2,is_stmt,isa 1
        B         ||$C$L107||           ; [DPU_3_PIPE] |2201| 
        ; BRANCH OCCURS {||$C$L107||}    ; [] |2201| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L104||:    
	.dwpsn	file "../utils/ff.c",line 2178,column 2,is_stmt,isa 1
        ADDS      V3, V3, #2            ; [DPU_3_PIPE] |2178| 
        STR       V3, [V4, #24]         ; [DPU_3_PIPE] |2178| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        ADDS      V2, V2, A3            ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2179,column 2,is_stmt,isa 1
        STR       A3, [V4, #32]         ; [DPU_3_PIPE] |2179| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        ADD       V9, V9, A3            ; [DPU_3_PIPE] |2181| 
	.dwpsn	file "../utils/ff.c",line 2180,column 2,is_stmt,isa 1
        STR       V2, [V4, #36]         ; [DPU_3_PIPE] |2180| 
	.dwpsn	file "../utils/ff.c",line 2181,column 2,is_stmt,isa 1
        STR       V9, [V4, #44]         ; [DPU_3_PIPE] |2181| 
        CBNZ      A2, ||$C$L105||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2183,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L105||}  ; [] |2183| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2184,column 3,is_stmt,isa 1
        LDRB      V1, [V4, #99]         ; [DPU_3_PIPE] |2184| 
        LDRB      A1, [V4, #98]         ; [DPU_3_PIPE] |2184| 
        LDRB      A4, [V4, #97]         ; [DPU_3_PIPE] |2184| 
        LDRB      A2, [V4, #96]         ; [DPU_3_PIPE] |2184| 
        ORR       A1, A1, V1, LSL #8    ; [DPU_3_PIPE] |2184| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2184| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2184| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2184| 
        STR       A2, [V4, #40]         ; [DPU_3_PIPE] |2184| 
	.dwpsn	file "../utils/ff.c",line 2192,column 2,is_stmt,isa 1
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2192| 
        LDR       A2, [V4, #28]         ; [DPU_3_PIPE] |2192| 
        LSLS      A1, A1, #2            ; [DPU_3_PIPE] |2192| 
        ADD       A1, A1, #511          ; [DPU_3_PIPE] |2192| 
        CMP       A2, A1, LSR #9        ; [DPU_3_PIPE] |2192| 
        BCS       ||$C$L106||           ; [DPU_3_PIPE] |2192| 
        ; BRANCHCC OCCURS {||$C$L106||}  ; [] |2192| 
;* --------------------------------------------------------------------------*
||$C$L105||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2193,column 3,is_stmt,isa 1
        MOVS      A1, #13               ; [DPU_3_PIPE] |2193| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L106||:    
	.dwpsn	file "../utils/ff.c",line 2197,column 2,is_stmt,isa 1
        MOV       A1, #-1               ; [DPU_3_PIPE] |2197| 
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2197| 
	.dwpsn	file "../utils/ff.c",line 2203,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #101]        ; [DPU_3_PIPE] |2203| 
        LDRB      LR, [V4, #100]        ; [DPU_3_PIPE] |2203| 
	.dwpsn	file "../utils/ff.c",line 2198,column 2,is_stmt,isa 1
        STR       V5, [V4, #12]         ; [DPU_3_PIPE] |2198| 
	.dwpsn	file "../utils/ff.c",line 2204,column 3,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |2204| 
	.dwpsn	file "../utils/ff.c",line 2202,column 4,is_stmt,isa 1
        STRB      V6, [V4, #5]          ; [DPU_3_PIPE] |2202| 
	.dwpsn	file "../utils/ff.c",line 2203,column 3,is_stmt,isa 1
        ORR       A1, LR, A2, LSL #8    ; [DPU_3_PIPE] |2203| 
        ADDS      A3, A3, A1            ; [DPU_3_PIPE] |2203| 
	.dwpsn	file "../utils/ff.c",line 2204,column 3,is_stmt,isa 1
        ADD       A2, V4, #52           ; [DPU_3_PIPE] |2204| 
        LDRB      A1, [V4, #1]          ; [DPU_3_PIPE] |2204| 
	.dwpsn	file "../utils/ff.c",line 2203,column 3,is_stmt,isa 1
        STR       A3, [V4, #20]         ; [DPU_3_PIPE] |2203| 
	.dwpsn	file "../utils/ff.c",line 2204,column 3,is_stmt,isa 1
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("disk_read")
	.dwattr $C$DW$184, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |2204| 
        ; CALL OCCURS {disk_read }       ; [] |2204| 
	.dwpsn	file "../utils/ff.c",line 2175,column 26,is_stmt,isa 1
        MOV       V9, #3                ; [DPU_3_PIPE] |2175| 
	.dwpsn	file "../utils/ff.c",line 2204,column 3,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2204| 
        BNE       ||$C$L107||           ; [DPU_3_PIPE] |2204| 
        ; BRANCHCC OCCURS {||$C$L107||}  ; [] |2204| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [V4, #563]        ; [DPU_3_PIPE] |2204| 
        LDRB      A1, [V4, #562]        ; [DPU_3_PIPE] |2204| 
        MOV       A2, #43605            ; [DPU_3_PIPE] |2204| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2204| 
        CMP       A2, A1                ; [DPU_3_PIPE] |2204| 
        BNE       ||$C$L107||           ; [DPU_3_PIPE] |2204| 
        ; BRANCHCC OCCURS {||$C$L107||}  ; [] |2204| 
;* --------------------------------------------------------------------------*
        LDRB      A4, [V4, #55]         ; [DPU_3_PIPE] |2204| 
        LDRB      A1, [V4, #54]         ; [DPU_3_PIPE] |2204| 
        LDRB      A3, [V4, #53]         ; [DPU_3_PIPE] |2204| 
        LDRB      A2, [V4, #52]         ; [DPU_3_PIPE] |2204| 
        MOVW      LR, #21074            ; [DPU_3_PIPE] |2204| 
        MOVT      LR, #16737            ; [DPU_3_PIPE] |2204| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2204| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2204| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2204| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2204| 
        CMP       LR, A2                ; [DPU_3_PIPE] |2204| 
        BNE       ||$C$L107||           ; [DPU_3_PIPE] |2204| 
        ; BRANCHCC OCCURS {||$C$L107||}  ; [] |2204| 
;* --------------------------------------------------------------------------*
        LDRB      A4, [V4, #539]        ; [DPU_3_PIPE] |2204| 
        LDRB      A1, [V4, #538]        ; [DPU_3_PIPE] |2204| 
        LDRB      A3, [V4, #537]        ; [DPU_3_PIPE] |2204| 
        LDRB      A2, [V4, #536]        ; [DPU_3_PIPE] |2204| 
        MOVW      LR, #29298            ; [DPU_3_PIPE] |2204| 
        MOVT      LR, #24897            ; [DPU_3_PIPE] |2204| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2204| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2204| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2204| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2204| 
        CMP       LR, A2                ; [DPU_3_PIPE] |2204| 
        BNE       ||$C$L107||           ; [DPU_3_PIPE] |2204| 
        ; BRANCHCC OCCURS {||$C$L107||}  ; [] |2204| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        LDRB      LR, [V4, #547]        ; [DPU_3_PIPE] |2208| 
        LDRB      A3, [V4, #546]        ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        LDRB      V2, [V4, #543]        ; [DPU_3_PIPE] |2209| 
        LDRB      A1, [V4, #542]        ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        LDRB      V3, [V4, #545]        ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        LDRB      V1, [V4, #541]        ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        LDRB      A4, [V4, #544]        ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        LDRB      A2, [V4, #540]        ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        ORR       A3, A3, LR, LSL #8    ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        ORR       A1, A1, V2, LSL #8    ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        LSLS      A3, A3, #16           ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        ORR       A3, A3, V3, LSL #8    ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        ORR       A1, A1, V1, LSL #8    ; [DPU_3_PIPE] |2209| 
	.dwpsn	file "../utils/ff.c",line 2208,column 5,is_stmt,isa 1
        ORRS      A4, A4, A3            ; [DPU_3_PIPE] |2208| 
        STR       A4, [V4, #12]         ; [DPU_3_PIPE] |2208| 
	.dwpsn	file "../utils/ff.c",line 2209,column 5,is_stmt,isa 1
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2209| 
        STR       A2, [V4, #16]         ; [DPU_3_PIPE] |2209| 
;* --------------------------------------------------------------------------*
||$C$L107||:    
	.dwpsn	file "../utils/ff.c",line 2213,column 2,is_stmt,isa 1
        STRB      V9, [V4, #0]          ; [DPU_3_PIPE] |2213| 
	.dwpsn	file "../utils/ff.c",line 2214,column 2,is_stmt,isa 1
        LDRH      A1, [V7, #0]          ; [DPU_3_PIPE] |2214| 
	.dwpsn	file "../utils/ff.c",line 2215,column 2,is_stmt,isa 1
        STR       V5, [V4, #48]         ; [DPU_3_PIPE] |2215| 
	.dwpsn	file "../utils/ff.c",line 2214,column 2,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |2214| 
        UXTH      A1, A1                ; [DPU_3_PIPE] |2214| 
        STRH      A1, [V7, #0]          ; [DPU_3_PIPE] |2214| 
        STRH      A1, [V4, #6]          ; [DPU_3_PIPE] |2214| 
	.dwpsn	file "../utils/ff.c",line 2215,column 2,is_stmt,isa 1
        MOV       A1, V6                ; [DPU_3_PIPE] |2215| 
	.dwpsn	file "../utils/ff.c",line 2216,column 2,is_stmt,isa 1
        STRB      V6, [V4, #4]          ; [DPU_3_PIPE] |2216| 
;* --------------------------------------------------------------------------*
||$C$L108||:    
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x8b1)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"
	.align	8
	.clink
	.thumbfunc create_name
	.thumb

$C$DW$186	.dwtag  DW_TAG_subprogram, DW_AT_name("create_name")
	.dwattr $C$DW$186, DW_AT_low_pc(create_name)
	.dwattr $C$DW$186, DW_AT_high_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("create_name")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$186, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$186, DW_AT_TI_begin_line(0x697)
	.dwattr $C$DW$186, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$186, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$186, DW_AT_decl_line(0x697)
	.dwattr $C$DW$186, DW_AT_decl_column(0x09)
	.dwattr $C$DW$186, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 1691,column 1,is_stmt,address create_name,isa 1

	.dwfde $C$DW$CIE, create_name
$C$DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg0]
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: create_name                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR              *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                 *
;*****************************************************************************
create_name:
;* --------------------------------------------------------------------------*
;* A3    assigned to $O$C1
;* A4    assigned to $O$K24
;* V2    assigned to $O$U50
;* V4    assigned to $O$U103
;* V3    assigned to $O$U100
;* V4    assigned to cnt
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg7]
;* A1    assigned to d
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg0]
;* V2    assigned to str
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("str")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg5]
;* V3    assigned to chr
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("chr")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("chr")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg6]
;* V5    assigned to p
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg8]
;* A1    assigned to i
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg0]
;* V1    assigned to si
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("si")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("si")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg4]
;* A4    assigned to ni
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("ni")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("ni")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg3]
;* A3    assigned to sfn
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg2]
;* V3    assigned to d
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg6]
;* LR    assigned to b
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("b")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg14]
;* A2    assigned to path
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg1]
;* A1    assigned to dj
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg0]
;* V9    assigned to c
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg12]
;* A1    assigned to c
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg0]
;* A3    assigned to $O$U8
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 6, -16
	.dwcfi	save_reg_to_mem, 5, -20
	.dwcfi	save_reg_to_mem, 4, -24
	.dwpsn	file "../utils/ff.c",line 1819,column 7,is_stmt,isa 1
        LDR       V5, [A2, #0]          ; [DPU_3_PIPE] |1819| 
	.dwpsn	file "../utils/ff.c",line 1819,column 18,is_stmt,isa 1
        LDRB      A3, [V5, #0]          ; [DPU_3_PIPE] |1819| 
        CMP       A3, #47               ; [DPU_3_PIPE] |1819| 
        BEQ       ||$C$L110||           ; [DPU_3_PIPE] |1819| 
        ; BRANCHCC OCCURS {||$C$L110||}  ; [] |1819| 
;* --------------------------------------------------------------------------*
||$C$L109||:    
        CMP       A3, #92               ; [DPU_3_PIPE] |1819| 
        BNE       ||$C$L111||           ; [DPU_3_PIPE] |1819| 
        ; BRANCHCC OCCURS {||$C$L111||}  ; [] |1819| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L110||
;* --------------------------------------------------------------------------*
	.align	8
||$C$L110||:    
        LDRB      A3, [V5, #1]!         ; [DPU_3_PIPE] |1819| 
        CMP       A3, #47               ; [DPU_3_PIPE] |1819| 
        BNE       ||$C$L109||           ; [DPU_3_PIPE] |1819| 
        ; BRANCHCC OCCURS {||$C$L109||}  ; [] |1819| 
;* --------------------------------------------------------------------------*
        B         ||$C$L110||           ; [DPU_3_PIPE] |1819| 
        ; BRANCH OCCURS {||$C$L110||}    ; [] |1819| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L111||:    
	.dwpsn	file "../utils/ff.c",line 1820,column 2,is_stmt,isa 1
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |1820| 
        MOVS      A4, #32               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1821,column 2,is_stmt,isa 1
        MOVS      V4, #11               ; [DPU_3_PIPE] |1821| 
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        MOV       A1, A3                ; [DPU_3_PIPE] |557| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L112||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L112||:    
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L112||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L112||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1837,column 3,is_stmt,isa 1
        LDRB      V9, [V5, #0]          ; [DPU_3_PIPE] |1837| 
	.dwpsn	file "../utils/ff.c",line 1822,column 2,is_stmt,isa 1
        MOV       LR, #0                ; [DPU_3_PIPE] |1822| 
	.dwpsn	file "../utils/ff.c",line 1822,column 18,is_stmt,isa 1
        MOVS      A4, #8                ; [DPU_3_PIPE] |1822| 
	.dwpsn	file "../utils/ff.c",line 1822,column 2,is_stmt,isa 1
        MOV       A1, LR                ; [DPU_3_PIPE] |1822| 
	.dwpsn	file "../utils/ff.c",line 1838,column 42,is_stmt,isa 1
        CMP       V9, #33               ; [DPU_3_PIPE] |1838| 
        BLT       ||$C$L131||           ; [DPU_3_PIPE] |1838| 
        ; BRANCHCC OCCURS {||$C$L131||}  ; [] |1838| 
;* --------------------------------------------------------------------------*
        CMP       V9, #47               ; [DPU_3_PIPE] |1838| 
        BEQ       ||$C$L131||           ; [DPU_3_PIPE] |1838| 
        ; BRANCHCC OCCURS {||$C$L131||}  ; [] |1838| 
;* --------------------------------------------------------------------------*
        CMP       V9, #92               ; [DPU_3_PIPE] |1838| 
        BEQ       ||$C$L131||           ; [DPU_3_PIPE] |1838| 
        ; BRANCHCC OCCURS {||$C$L131||}  ; [] |1838| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1839,column 3,is_stmt,isa 1
        CMP       V9, #46               ; [DPU_3_PIPE] |1839| 
	.dwpsn	file "../utils/ff.c",line 1837,column 3,is_stmt,isa 1
        MOV       V1, #1                ; [DPU_3_PIPE] |1837| 
	.dwpsn	file "../utils/ff.c",line 1839,column 3,is_stmt,isa 1
        BNE       ||$C$L115||           ; [DPU_3_PIPE] |1839| 
        ; BRANCHCC OCCURS {||$C$L115||}  ; [] |1839| 
;* --------------------------------------------------------------------------*
        ADD       V2, V5, V1            ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L113||:    
	.dwpsn	file "../utils/ff.c",line 1842,column 4,is_stmt,isa 1
        LSL       V3, LR, #2            ; [DPU_3_PIPE] |1842| 
	.dwpsn	file "../utils/ff.c",line 1841,column 4,is_stmt,isa 1
        MOVS      A1, #8                ; [DPU_3_PIPE] |1841| 
	.dwpsn	file "../utils/ff.c",line 1841,column 11,is_stmt,isa 1
        MOVS      A4, #11               ; [DPU_3_PIPE] |1841| 
	.dwpsn	file "../utils/ff.c",line 1842,column 4,is_stmt,isa 1
        UXTB      LR, V3                ; [DPU_3_PIPE] |1842| 
	.dwpsn	file "../utils/ff.c",line 1842,column 13,is_stmt,isa 1
        B         ||$C$L127||           ; [DPU_3_PIPE] |1842| 
        ; BRANCH OCCURS {||$C$L127||}    ; [] |1842| 
;* --------------------------------------------------------------------------*
||$C$L114||:    
	.dwpsn	file "../utils/ff.c",line 1839,column 3,is_stmt,isa 1
        CMP       A4, A1                ; [DPU_3_PIPE] |1839| 
        BLS       ||$C$L133||           ; [DPU_3_PIPE] |1839| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1839| 
;* --------------------------------------------------------------------------*
||$C$L115||:    
	.dwpsn	file "../utils/ff.c",line 1844,column 3,is_stmt,isa 1
        CMP       V9, #128              ; [DPU_3_PIPE] |1844| 
        BLT       ||$C$L120||           ; [DPU_3_PIPE] |1844| 
        ; BRANCHCC OCCURS {||$C$L120||}  ; [] |1844| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1854,column 3,is_stmt,isa 1
        CMP       V9, #128              ; [DPU_3_PIPE] |1854| 
	.dwpsn	file "../utils/ff.c",line 1845,column 4,is_stmt,isa 1
        ORR       LR, LR, #3            ; [DPU_3_PIPE] |1845| 
	.dwpsn	file "../utils/ff.c",line 1854,column 3,is_stmt,isa 1
        BLE       ||$C$L119||           ; [DPU_3_PIPE] |1854| 
        ; BRANCHCC OCCURS {||$C$L119||}  ; [] |1854| 
;* --------------------------------------------------------------------------*
        CMP       V9, #160              ; [DPU_3_PIPE] |1854| 
        BLT       ||$C$L116||           ; [DPU_3_PIPE] |1854| 
        ; BRANCHCC OCCURS {||$C$L116||}  ; [] |1854| 
;* --------------------------------------------------------------------------*
        CMP       V9, #224              ; [DPU_3_PIPE] |1854| 
        BLT       ||$C$L118||           ; [DPU_3_PIPE] |1854| 
        ; BRANCHCC OCCURS {||$C$L118||}  ; [] |1854| 
;* --------------------------------------------------------------------------*
        CMP       V9, #253              ; [DPU_3_PIPE] |1854| 
        BGE       ||$C$L118||           ; [DPU_3_PIPE] |1854| 
        ; BRANCHCC OCCURS {||$C$L118||}  ; [] |1854| 
;* --------------------------------------------------------------------------*
||$C$L116||:    
	.dwpsn	file "../utils/ff.c",line 1855,column 4,is_stmt,isa 1
        ADD       V2, V5, V1            ; [DPU_3_PIPE] |1855| 
        LDRB      V3, [V2, #0]          ; [DPU_3_PIPE] |1855| 
        CMP       V3, #64               ; [DPU_3_PIPE] |1855| 
        BLT       ||$C$L133||           ; [DPU_3_PIPE] |1855| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1855| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1856,column 4,is_stmt,isa 1
        CMP       V3, #126              ; [DPU_3_PIPE] |1856| 
	.dwpsn	file "../utils/ff.c",line 1855,column 4,is_stmt,isa 1
        ADD       V2, V2, #1            ; [DPU_3_PIPE] |1855| 
        ADD       V1, V1, #1            ; [DPU_3_PIPE] |1855| 
	.dwpsn	file "../utils/ff.c",line 1856,column 4,is_stmt,isa 1
        BLE       ||$C$L117||           ; [DPU_3_PIPE] |1856| 
        ; BRANCHCC OCCURS {||$C$L117||}  ; [] |1856| 
;* --------------------------------------------------------------------------*
        CMP       V3, #128              ; [DPU_3_PIPE] |1856| 
        BLT       ||$C$L133||           ; [DPU_3_PIPE] |1856| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1856| 
;* --------------------------------------------------------------------------*
        CMP       V3, #252              ; [DPU_3_PIPE] |1856| 
        BGT       ||$C$L133||           ; [DPU_3_PIPE] |1856| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1856| 
;* --------------------------------------------------------------------------*
||$C$L117||:    
        SUBS      V4, A4, #1            ; [DPU_3_PIPE] |1856| 
        CMP       V4, A1                ; [DPU_3_PIPE] |1856| 
        BLS       ||$C$L133||           ; [DPU_3_PIPE] |1856| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1856| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1858,column 4,is_stmt,isa 1
        STRB      V9, [A3, +A1]         ; [DPU_3_PIPE] |1858| 
	.dwpsn	file "../utils/ff.c",line 1859,column 4,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1859| 
        STRB      V3, [A3, +A1]         ; [DPU_3_PIPE] |1859| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1859| 
	.dwpsn	file "../utils/ff.c",line 1860,column 3,is_stmt,isa 1
        B         ||$C$L127||           ; [DPU_3_PIPE] |1860| 
        ; BRANCH OCCURS {||$C$L127||}    ; [] |1860| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L118||:    
	.dwpsn	file "../utils/ff.c",line 1861,column 4,is_stmt,isa 1
        MOV       V3, V9                ; [DPU_3_PIPE] |1861| 
        ADR       V2, $C$SL1            ; [DPU_3_PIPE] |1861| 
        B         ||$C$L122||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L122||}    ; [] 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L119||:    
        ADR       V2, $C$SL1            ; [DPU_3_PIPE] |1861| 
        MOVS      V3, #128              ; [DPU_3_PIPE] |1861| 
	.dwpsn	file "../utils/ff.c",line 576,column 9,is_stmt,isa 1
        B         ||$C$L122||           ; [DPU_3_PIPE] |576| 
        ; BRANCH OCCURS {||$C$L122||}    ; [] |576| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L120||:    
	.dwpsn	file "../utils/ff.c",line 1861,column 4,is_stmt,isa 1
        MOV       V3, V9                ; [DPU_3_PIPE] |1861| 
        MOVS      V4, #34               ; [DPU_3_PIPE] 
        ADR       V2, $C$SL1            ; [DPU_3_PIPE] |1861| 
;* --------------------------------------------------------------------------*
||$C$L121||:    
	.dwpsn	file "../utils/ff.c",line 576,column 9,is_stmt,isa 1
        CMP       V3, V4                ; [DPU_3_PIPE] |576| 
        BEQ       ||$C$L123||           ; [DPU_3_PIPE] |576| 
        ; BRANCHCC OCCURS {||$C$L123||}  ; [] |576| 
;* --------------------------------------------------------------------------*
||$C$L122||:    
        LDRB      V4, [V2, #1]!         ; [DPU_3_PIPE] |576| 
        CMP       V4, #0                ; [DPU_3_PIPE] |576| 
        BNE       ||$C$L121||           ; [DPU_3_PIPE] |576| 
        ; BRANCHCC OCCURS {||$C$L121||}  ; [] |576| 
;* --------------------------------------------------------------------------*
        B         ||$C$L124||           ; [DPU_3_PIPE] |576| 
        ; BRANCH OCCURS {||$C$L124||}    ; [] |576| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L123||:    
	.dwpsn	file "../utils/ff.c",line 577,column 2,is_stmt,isa 1
        CMP       V4, #0                ; [DPU_3_PIPE] |577| 
        BNE       ||$C$L133||           ; [DPU_3_PIPE] |577| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |577| 
;* --------------------------------------------------------------------------*
||$C$L124||:    
	.dwpsn	file "../utils/ff.c",line 1863,column 4,is_stmt,isa 1
        CMP       V9, #64               ; [DPU_3_PIPE] |1863| 
        ADD       V2, V5, V1            ; [DPU_3_PIPE] 
        ADD       V3, A3, A1            ; [DPU_3_PIPE] 
        BLE       ||$C$L126||           ; [DPU_3_PIPE] |1863| 
        ; BRANCHCC OCCURS {||$C$L126||}  ; [] |1863| 
;* --------------------------------------------------------------------------*
        CMP       V9, #91               ; [DPU_3_PIPE] |1863| 
        BLT       ||$C$L125||           ; [DPU_3_PIPE] |1863| 
        ; BRANCHCC OCCURS {||$C$L125||}  ; [] |1863| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1866,column 5,is_stmt,isa 1
        CMP       V9, #96               ; [DPU_3_PIPE] |1866| 
        BLE       ||$C$L126||           ; [DPU_3_PIPE] |1866| 
        ; BRANCHCC OCCURS {||$C$L126||}  ; [] |1866| 
;* --------------------------------------------------------------------------*
        CMP       V9, #123              ; [DPU_3_PIPE] |1866| 
        BGE       ||$C$L126||           ; [DPU_3_PIPE] |1866| 
        ; BRANCHCC OCCURS {||$C$L126||}  ; [] |1866| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1867,column 14,is_stmt,isa 1
        SUB       V9, V9, #32           ; [DPU_3_PIPE] |1867| 
	.dwpsn	file "../utils/ff.c",line 1867,column 6,is_stmt,isa 1
        ORR       LR, LR, #1            ; [DPU_3_PIPE] |1867| 
	.dwpsn	file "../utils/ff.c",line 1867,column 14,is_stmt,isa 1
        UXTB      V9, V9                ; [DPU_3_PIPE] |1867| 
        B         ||$C$L126||           ; [DPU_3_PIPE] |1867| 
        ; BRANCH OCCURS {||$C$L126||}    ; [] |1867| 
;* --------------------------------------------------------------------------*
||$C$L125||:    
	.dwpsn	file "../utils/ff.c",line 1864,column 5,is_stmt,isa 1
        ORR       LR, LR, #2            ; [DPU_3_PIPE] |1864| 
;* --------------------------------------------------------------------------*
||$C$L126||:    
	.dwpsn	file "../utils/ff.c",line 1870,column 4,is_stmt,isa 1
        STRB      V9, [V3, #0]          ; [DPU_3_PIPE] |1870| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1870| 
;* --------------------------------------------------------------------------*
||$C$L127||:    
	.dwpsn	file "../utils/ff.c",line 1837,column 3,is_stmt,isa 1
        LDRB      V9, [V2], #1          ; [DPU_3_PIPE] |1837| 
        CMP       V9, #33               ; [DPU_3_PIPE] |1837| 
        BLT       ||$C$L130||           ; [DPU_3_PIPE] |1837| 
        ; BRANCHCC OCCURS {||$C$L130||}  ; [] |1837| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1838,column 42,is_stmt,isa 1
        CMP       V9, #47               ; [DPU_3_PIPE] |1838| 
        BEQ       ||$C$L129||           ; [DPU_3_PIPE] |1838| 
        ; BRANCHCC OCCURS {||$C$L129||}  ; [] |1838| 
;* --------------------------------------------------------------------------*
        CMP       V9, #92               ; [DPU_3_PIPE] |1838| 
        BEQ       ||$C$L128||           ; [DPU_3_PIPE] |1838| 
        ; BRANCHCC OCCURS {||$C$L128||}  ; [] |1838| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1839,column 3,is_stmt,isa 1
        CMP       V9, #46               ; [DPU_3_PIPE] |1839| 
	.dwpsn	file "../utils/ff.c",line 1837,column 3,is_stmt,isa 1
        ADD       V1, V1, #1            ; [DPU_3_PIPE] |1837| 
	.dwpsn	file "../utils/ff.c",line 1839,column 3,is_stmt,isa 1
        BNE       ||$C$L114||           ; [DPU_3_PIPE] |1839| 
        ; BRANCHCC OCCURS {||$C$L114||}  ; [] |1839| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1840,column 4,is_stmt,isa 1
        CMP       A4, #8                ; [DPU_3_PIPE] |1840| 
        BEQ       ||$C$L113||           ; [DPU_3_PIPE] |1840| 
        ; BRANCHCC OCCURS {||$C$L113||}  ; [] |1840| 
;* --------------------------------------------------------------------------*
        B         ||$C$L133||           ; [DPU_3_PIPE] |1840| 
        ; BRANCH OCCURS {||$C$L133||}    ; [] |1840| 
;* --------------------------------------------------------------------------*
||$C$L128||:    
	.dwpsn	file "../utils/ff.c",line 1873,column 2,is_stmt,isa 1
        STR       V2, [A2, #0]          ; [DPU_3_PIPE] |1873| 
	.dwpsn	file "../utils/ff.c",line 1876,column 2,is_stmt,isa 1
        B         ||$C$L132||           ; [DPU_3_PIPE] |1876| 
        ; BRANCH OCCURS {||$C$L132||}    ; [] |1876| 
;* --------------------------------------------------------------------------*
||$C$L129||:    
	.dwpsn	file "../utils/ff.c",line 1873,column 2,is_stmt,isa 1
        STR       V2, [A2, #0]          ; [DPU_3_PIPE] |1873| 
	.dwpsn	file "../utils/ff.c",line 1876,column 2,is_stmt,isa 1
        B         ||$C$L132||           ; [DPU_3_PIPE] |1876| 
        ; BRANCH OCCURS {||$C$L132||}    ; [] |1876| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L130||:    
	.dwpsn	file "../utils/ff.c",line 1873,column 2,is_stmt,isa 1
        STR       V2, [A2, #0]          ; [DPU_3_PIPE] |1873| 
        CBZ       A1, ||$C$L133||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1876,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1876| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1877,column 2,is_stmt,isa 1
        LDRB      A2, [A3, #0]          ; [DPU_3_PIPE] |1877| 
	.dwpsn	file "../utils/ff.c",line 1874,column 2,is_stmt,isa 1
        MOVS      A1, #4                ; [DPU_3_PIPE] |1874| 
	.dwpsn	file "../utils/ff.c",line 1877,column 2,is_stmt,isa 1
        CMP       A2, #229              ; [DPU_3_PIPE] |1877| 
        BEQ       ||$C$L135||           ; [DPU_3_PIPE] |1877| 
        ; BRANCHCC OCCURS {||$C$L135||}  ; [] |1877| 
;* --------------------------------------------------------------------------*
        B         ||$C$L136||           ; [DPU_3_PIPE] |1877| 
        ; BRANCH OCCURS {||$C$L136||}    ; [] |1877| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L131||:    
	.dwpsn	file "../utils/ff.c",line 1873,column 2,is_stmt,isa 1
        ADD       V5, V5, #1            ; [DPU_3_PIPE] |1873| 
	.dwpsn	file "../utils/ff.c",line 1874,column 2,is_stmt,isa 1
        CMP       V9, #33               ; [DPU_3_PIPE] |1874| 
	.dwpsn	file "../utils/ff.c",line 1873,column 2,is_stmt,isa 1
        STR       V5, [A2, #0]          ; [DPU_3_PIPE] |1873| 
	.dwpsn	file "../utils/ff.c",line 1874,column 2,is_stmt,isa 1
        BLT       ||$C$L133||           ; [DPU_3_PIPE] |1874| 
        ; BRANCHCC OCCURS {||$C$L133||}  ; [] |1874| 
;* --------------------------------------------------------------------------*
||$C$L132||:    
        CBNZ      A1, ||$C$L134||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1876,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L134||}  ; [] |1876| 
;* --------------------------------------------------------------------------*
||$C$L133||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 1876,column 10,is_stmt,isa 1
        MOVS      A1, #6                ; [DPU_3_PIPE] |1876| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L134||:    
	.dwpsn	file "../utils/ff.c",line 1877,column 2,is_stmt,isa 1
        LDRB      A2, [A3, #0]          ; [DPU_3_PIPE] |1877| 
	.dwpsn	file "../utils/ff.c",line 1874,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |1874| 
	.dwpsn	file "../utils/ff.c",line 1877,column 2,is_stmt,isa 1
        CMP       A2, #229              ; [DPU_3_PIPE] |1877| 
        BNE       ||$C$L136||           ; [DPU_3_PIPE] |1877| 
        ; BRANCHCC OCCURS {||$C$L136||}  ; [] |1877| 
;* --------------------------------------------------------------------------*
||$C$L135||:    
	.dwpsn	file "../utils/ff.c",line 1877,column 21,is_stmt,isa 1
        MOVS      A2, #5                ; [DPU_3_PIPE] |1877| 
        STRB      A2, [A3, #0]          ; [DPU_3_PIPE] |1877| 
;* --------------------------------------------------------------------------*
||$C$L136||:    
	.dwpsn	file "../utils/ff.c",line 1879,column 2,is_stmt,isa 1
        CMP       A4, #8                ; [DPU_3_PIPE] |1879| 
        ITT       EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1879,column 15,is_stmt,isa 1
        LSLEQ     A2, LR, #2            ; [DPU_3_PIPE] |1879| 
        UXTBEQ    LR, A2                ; [DPU_3_PIPE] |1879| 
	.dwpsn	file "../utils/ff.c",line 1880,column 2,is_stmt,isa 1
        AND       A2, LR, #3            ; [DPU_3_PIPE] |1880| 
        CMP       A2, #1                ; [DPU_3_PIPE] |1880| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1880,column 26,is_stmt,isa 1
        ORREQ     A1, A1, #16           ; [DPU_3_PIPE] |1880| 
	.dwpsn	file "../utils/ff.c",line 1881,column 2,is_stmt,isa 1
        AND       LR, LR, #12           ; [DPU_3_PIPE] |1881| 
        CMP       LR, #4                ; [DPU_3_PIPE] |1881| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1881,column 26,is_stmt,isa 1
        ORREQ     A1, A1, #8            ; [DPU_3_PIPE] |1881| 
	.dwpsn	file "../utils/ff.c",line 1883,column 2,is_stmt,isa 1
        STRB      A1, [A3, #11]         ; [DPU_3_PIPE] |1883| 
	.dwpsn	file "../utils/ff.c",line 1885,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |1885| 
;* --------------------------------------------------------------------------*
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$186, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$186, DW_AT_TI_end_line(0x75f)
	.dwattr $C$DW$186, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$186

	.sect	".text"
	.align	8
	.clink
	.thumbfunc dir_sdi
	.thumb

$C$DW$206	.dwtag  DW_TAG_subprogram, DW_AT_name("dir_sdi")
	.dwattr $C$DW$206, DW_AT_low_pc(dir_sdi)
	.dwattr $C$DW$206, DW_AT_high_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("dir_sdi")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$206, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$206, DW_AT_TI_begin_line(0x440)
	.dwattr $C$DW$206, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$206, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$206, DW_AT_decl_line(0x440)
	.dwattr $C$DW$206, DW_AT_decl_column(0x09)
	.dwattr $C$DW$206, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../utils/ff.c",line 1092,column 1,is_stmt,address dir_sdi,isa 1

	.dwfde $C$DW$CIE, dir_sdi
$C$DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg0]
$C$DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("idx")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: dir_sdi                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V5,V6,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V5,V6,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
dir_sdi:
;* --------------------------------------------------------------------------*
;* A2    assigned to $O$C2
;* A1    assigned to $O$v1
;* V6    assigned to ic
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("ic")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("ic")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg9]
;* A2    assigned to clst
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg1]
;* V5    assigned to idx
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("idx")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("idx")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg8]
;* V1    assigned to dj
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg4]
;* A2    assigned to $O$R1
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V5, V6, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 9, -8
	.dwcfi	save_reg_to_mem, 8, -12
	.dwcfi	save_reg_to_mem, 4, -16
        MOV       V1, A1                ; [DPU_3_PIPE] |1092| 
        MOV       V5, A2                ; [DPU_3_PIPE] |1092| 
	.dwpsn	file "../utils/ff.c",line 1098,column 2,is_stmt,isa 1
        LDR       A2, [V1, #8]          ; [DPU_3_PIPE] |1098| 
	.dwpsn	file "../utils/ff.c",line 1097,column 2,is_stmt,isa 1
        STRH      V5, [V1, #6]          ; [DPU_3_PIPE] |1097| 
	.dwpsn	file "../utils/ff.c",line 1098,column 2,is_stmt,isa 1
        CMP       A2, #1                ; [DPU_3_PIPE] |1098| 
        BEQ       ||$C$L139||           ; [DPU_3_PIPE] |1098| 
        ; BRANCHCC OCCURS {||$C$L139||}  ; [] |1098| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1099,column 2,is_stmt,isa 1
        LDR       A1, [V1, #0]          ; [DPU_3_PIPE] |1099| 
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |1099| 
        CMP       A3, A2                ; [DPU_3_PIPE] |1099| 
        BLS       ||$C$L139||           ; [DPU_3_PIPE] |1099| 
        ; BRANCHCC OCCURS {||$C$L139||}  ; [] |1099| 
;* --------------------------------------------------------------------------*
        CBNZ      A2, ||$C$L137||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1101,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L137||}  ; [] |1101| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [A1, #0]          ; [DPU_3_PIPE] |1101| 
        CMP       A3, #3                ; [DPU_3_PIPE] |1101| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1102,column 3,is_stmt,isa 1
        LDREQ     A2, [A1, #40]         ; [DPU_3_PIPE] |1102| 
        CBNZ      A2, ||$C$L137||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1104,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L137||}  ; [] |1104| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1105,column 3,is_stmt,isa 1
        STR       A2, [V1, #12]         ; [DPU_3_PIPE] |1105| 
	.dwpsn	file "../utils/ff.c",line 1106,column 3,is_stmt,isa 1
        LDRH      A2, [A1, #8]          ; [DPU_3_PIPE] |1106| 
        CMP       A2, V5                ; [DPU_3_PIPE] |1106| 
        BLE       ||$C$L139||           ; [DPU_3_PIPE] |1106| 
        ; BRANCHCC OCCURS {||$C$L139||}  ; [] |1106| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1108,column 3,is_stmt,isa 1
        LDR       A2, [A1, #40]         ; [DPU_3_PIPE] |1108| 
        ADD       A2, A2, V5, ASR #4    ; [DPU_3_PIPE] |1108| 
        STR       A2, [V1, #16]         ; [DPU_3_PIPE] |1108| 
	.dwpsn	file "../utils/ff.c",line 1109,column 2,is_stmt,isa 1
        B         ||$C$L144||           ; [DPU_3_PIPE] |1109| 
        ; BRANCH OCCURS {||$C$L144||}    ; [] |1109| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L137||:    
	.dwpsn	file "../utils/ff.c",line 1111,column 3,is_stmt,isa 1
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |1111| 
        LSL       V6, A3, #4            ; [DPU_3_PIPE] |1111| 
	.dwpsn	file "../utils/ff.c",line 1112,column 10,is_stmt,isa 1
        CMP       V6, V5                ; [DPU_3_PIPE] |1112| 
        BGT       ||$C$L141||           ; [DPU_3_PIPE] |1112| 
        ; BRANCHCC OCCURS {||$C$L141||}  ; [] |1112| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L138||
;*
;*   Loop source line                : 1112
;*   Loop closing brace source line  : 1118
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L138||:    
	.dwpsn	file "../utils/ff.c",line 1113,column 4,is_stmt,isa 1
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("get_fat")
	.dwattr $C$DW$213, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1113| 
        ; CALL OCCURS {get_fat }         ; [] |1113| 
        MOV       A2, A1                ; [DPU_3_PIPE] |1113| 
        CMP       A2, #-1               ; [DPU_3_PIPE] |1113| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1114,column 28,is_stmt,isa 1
        MOVEQ     A2, #1                ; [DPU_3_PIPE] |1114| 
        BEQ       ||$C$L145||           ; [DPU_3_PIPE] |1114| 
        ; BRANCHCC OCCURS {||$C$L145||}  ; [] |1114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1115,column 4,is_stmt,isa 1
        CMP       A2, #2                ; [DPU_3_PIPE] |1115| 
        BCC       ||$C$L139||           ; [DPU_3_PIPE] |1115| 
        ; BRANCHCC OCCURS {||$C$L139||}  ; [] |1115| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V1, #0]          ; [DPU_3_PIPE] |1115| 
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |1115| 
        CMP       A3, A2                ; [DPU_3_PIPE] |1115| 
        BHI       ||$C$L140||           ; [DPU_3_PIPE] |1115| 
        ; BRANCHCC OCCURS {||$C$L140||}  ; [] |1115| 
;* --------------------------------------------------------------------------*
||$C$L139||:    
	.dwpsn	file "../utils/ff.c",line 1116,column 5,is_stmt,isa 1
        MOVS      A2, #2                ; [DPU_3_PIPE] |1116| 
        B         ||$C$L145||           ; [DPU_3_PIPE] |1116| 
        ; BRANCH OCCURS {||$C$L145||}    ; [] |1116| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L140||:    
	.dwpsn	file "../utils/ff.c",line 1117,column 4,is_stmt,isa 1
        SUB       V5, V5, V6            ; [DPU_3_PIPE] |1117| 
        UXTH      V5, V5                ; [DPU_3_PIPE] |1117| 
	.dwpsn	file "../utils/ff.c",line 1112,column 10,is_stmt,isa 1
        CMP       V6, V5                ; [DPU_3_PIPE] |1112| 
        BLE       ||$C$L138||           ; [DPU_3_PIPE] |1112| 
        ; BRANCHCC OCCURS {||$C$L138||}  ; [] |1112| 
;* --------------------------------------------------------------------------*
||$C$L141||:    
	.dwpsn	file "../utils/ff.c",line 1119,column 3,is_stmt,isa 1
        STR       A2, [V1, #12]         ; [DPU_3_PIPE] |1119| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       V9, [A1, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        SUB       V9, V9, #2            ; [DPU_3_PIPE] |830| 
        CMP       V9, A2                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L142||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L142||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A4, [A1, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A3, [A1, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A2, A2, A4, A3        ; [DPU_3_PIPE] |831| 
        B         ||$C$L143||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L143||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L142||:    
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L143||:    
	.dwpsn	file "../utils/ff.c",line 1120,column 3,is_stmt,isa 1
        ADD       A2, A2, V5, ASR #4    ; [DPU_3_PIPE] |1120| 
        STR       A2, [V1, #16]         ; [DPU_3_PIPE] |1120| 
;* --------------------------------------------------------------------------*
||$C$L144||:    
	.dwpsn	file "../utils/ff.c",line 1123,column 2,is_stmt,isa 1
        LSL       A2, V5, #5            ; [DPU_3_PIPE] |1123| 
        AND       A2, A2, #480          ; [DPU_3_PIPE] |1123| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |1123| 
        ADDS      A1, A1, #52           ; [DPU_3_PIPE] |1123| 
	.dwpsn	file "../utils/ff.c",line 1125,column 2,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |1125| 
	.dwpsn	file "../utils/ff.c",line 1123,column 2,is_stmt,isa 1
        STR       A1, [V1, #20]         ; [DPU_3_PIPE] |1123| 
;* --------------------------------------------------------------------------*
||$C$L145||:    
	.dwpsn	file "../utils/ff.c",line 1125,column 2,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |1125| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_return
        POP       {V1, V5, V6, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$206, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$206, DW_AT_TI_end_line(0x466)
	.dwattr $C$DW$206, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$206

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL1||:	.string	34,"*+,:;<=>?[]|",127,0
	.sect	".text"
	.align	8
	.clink
	.thumbfunc dir_next
	.thumb

$C$DW$215	.dwtag  DW_TAG_subprogram, DW_AT_name("dir_next")
	.dwattr $C$DW$215, DW_AT_low_pc(dir_next)
	.dwattr $C$DW$215, DW_AT_high_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("dir_next")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$215, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x470)
	.dwattr $C$DW$215, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$215, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$215, DW_AT_decl_line(0x470)
	.dwattr $C$DW$215, DW_AT_decl_column(0x09)
	.dwattr $C$DW$215, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "../utils/ff.c",line 1140,column 1,is_stmt,address dir_next,isa 1

	.dwfde $C$DW$CIE, dir_next
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg0]
$C$DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_name("stretch")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("stretch")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: dir_next                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 8 Auto + 36 Save = 44 byte                 *
;*****************************************************************************
dir_next:
;* --------------------------------------------------------------------------*
;* V3    assigned to $O$C3
;* A1    assigned to $O$C4
;* V4    assigned to $O$C5
;* A1    assigned to $O$C6
;* A2    assigned to $O$C7
;* V5    assigned to $O$C8
;* A2    assigned to $O$C9
;* A2    assigned to $O$C10
;* A3    assigned to $O$C11
;* A1    assigned to $O$C12
;* A1    assigned to $O$C13
;* A1    assigned to $O$C14
;* V2    assigned to $O$K88
;* V1    assigned to $O$U117
;* V4    assigned to $O$L2
;* A1    assigned to cnt
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]
;* A2    assigned to d
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg1]
;* V7    assigned to fs
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg10]
;* V5    assigned to wsect
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg8]
;* V6    assigned to c
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg9]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_breg13 0]
;* V3    assigned to clst
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg6]
;* V4    assigned to stretch
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("stretch")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("stretch")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg7]
;* V8    assigned to dj
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg11]
;* A1    assigned to $O$R2
;* A2    assigned to $O$R1
;* A2    assigned to $O$v2
;* A4    assigned to $O$v3
;* A3    assigned to $O$v3
;* A2    assigned to $O$v3
;* A1    assigned to $O$v3
;* A3    assigned to $O$PRE$u8x4$065
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        MOV       V8, A1                ; [DPU_3_PIPE] |1140| 
	.dwpsn	file "../utils/ff.c",line 1146,column 2,is_stmt,isa 1
        LDRH      A1, [V8, #6]          ; [DPU_3_PIPE] |1146| 
	.dwpsn	file "../utils/ff.c",line 1140,column 1,is_stmt,isa 1
        MOV       V4, A2                ; [DPU_3_PIPE] |1140| 
        SUB       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 48
	.dwpsn	file "../utils/ff.c",line 1146,column 2,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1146| 
        UXTH      A1, A1                ; [DPU_3_PIPE] |1146| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1146| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |1146| 
        BEQ       ||$C$L147||           ; [DPU_3_PIPE] |1146| 
        ; BRANCHCC OCCURS {||$C$L147||}  ; [] |1146| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1147,column 2,is_stmt,isa 1
        LDR       A1, [V8, #16]         ; [DPU_3_PIPE] |1147| 
        CBZ       A1, ||$C$L147||       ; [] 
        ; BRANCHCC OCCURS {||$C$L147||}  ; [] |1147| 
;* --------------------------------------------------------------------------*
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1150,column 2,is_stmt,isa 1
        TST       A2, #15               ; [DPU_3_PIPE] |1150| 
        BNE       ||$C$L164||           ; [DPU_3_PIPE] |1150| 
        ; BRANCHCC OCCURS {||$C$L164||}  ; [] |1150| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1151| 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        LDR       A2, [V8, #12]         ; [DPU_3_PIPE] |1153| 
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        STR       A1, [V8, #16]         ; [DPU_3_PIPE] |1151| 
        CBNZ      A2, ||$C$L146||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L146||}  ; [] |1153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1154,column 4,is_stmt,isa 1
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1154| 
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |1154| 
        LDRH      A3, [A1, #8]          ; [DPU_3_PIPE] |1154| 
        CMP       A3, A2                ; [DPU_3_PIPE] |1154| 
        BLE       ||$C$L147||           ; [DPU_3_PIPE] |1154| 
        ; BRANCHCC OCCURS {||$C$L147||}  ; [] |1154| 
;* --------------------------------------------------------------------------*
        B         ||$C$L165||           ; [DPU_3_PIPE] |1154| 
        ; BRANCH OCCURS {||$C$L165||}    ; [] |1154| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L146||:    
	.dwpsn	file "../utils/ff.c",line 1158,column 4,is_stmt,isa 1
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1158| 
        LDR       A4, [SP, #0]          ; [DPU_3_PIPE] |1158| 
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |1158| 
        SUBS      A3, A3, #1            ; [DPU_3_PIPE] |1158| 
        TST       A3, A4, ASR #4        ; [DPU_3_PIPE] |1158| 
        BNE       ||$C$L165||           ; [DPU_3_PIPE] |1158| 
        ; BRANCHCC OCCURS {||$C$L165||}  ; [] |1158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1159,column 5,is_stmt,isa 1
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("get_fat")
	.dwattr $C$DW$227, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1159| 
        ; CALL OCCURS {get_fat }         ; [] |1159| 
        MOV       V3, A1                ; [DPU_3_PIPE] |1159| 
        CMP       V3, #2                ; [DPU_3_PIPE] |1159| 
        BCC       ||$C$L149||           ; [DPU_3_PIPE] |1159| 
        ; BRANCHCC OCCURS {||$C$L149||}  ; [] |1159| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1161,column 5,is_stmt,isa 1
        CMP       V3, #-1               ; [DPU_3_PIPE] |1161| 
        BEQ       ||$C$L155||           ; [DPU_3_PIPE] |1161| 
        ; BRANCHCC OCCURS {||$C$L155||}  ; [] |1161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1162,column 5,is_stmt,isa 1
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1162| 
        LDR       A2, [A1, #24]         ; [DPU_3_PIPE] |1162| 
        CMP       A2, V3                ; [DPU_3_PIPE] |1162| 
        BHI       ||$C$L161||           ; [DPU_3_PIPE] |1162| 
        ; BRANCHCC OCCURS {||$C$L161||}  ; [] |1162| 
;* --------------------------------------------------------------------------*
        CBNZ      V4, ||$C$L148||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1165,column 6,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L148||}  ; [] |1165| 
;* --------------------------------------------------------------------------*
||$C$L147||:    
	.dwpsn	file "../utils/ff.c",line 1165,column 20,is_stmt,isa 1
        MOVS      A1, #4                ; [DPU_3_PIPE] |1165| 
        B         ||$C$L166||           ; [DPU_3_PIPE] |1165| 
        ; BRANCH OCCURS {||$C$L166||}    ; [] |1165| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L148||:    
	.dwpsn	file "../utils/ff.c",line 1166,column 6,is_stmt,isa 1
        LDR       A2, [V8, #12]         ; [DPU_3_PIPE] |1166| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("create_chain")
	.dwattr $C$DW$228, DW_AT_TI_call
        BL        create_chain          ; [DPU_3_PIPE] |1166| 
        ; CALL OCCURS {create_chain }    ; [] |1166| 
        MOVS      V3, A1                ; [DPU_3_PIPE] |1166| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1167,column 21,is_stmt,isa 1
        MOVEQ     A1, #7                ; [DPU_3_PIPE] |1167| 
        BEQ       ||$C$L166||           ; [DPU_3_PIPE] |1167| 
        ; BRANCHCC OCCURS {||$C$L166||}  ; [] |1167| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1168,column 6,is_stmt,isa 1
        CMP       V3, #1                ; [DPU_3_PIPE] |1168| 
        BNE       ||$C$L150||           ; [DPU_3_PIPE] |1168| 
        ; BRANCHCC OCCURS {||$C$L150||}  ; [] |1168| 
;* --------------------------------------------------------------------------*
||$C$L149||:    
	.dwpsn	file "../utils/ff.c",line 1168,column 21,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |1168| 
        B         ||$C$L166||           ; [DPU_3_PIPE] |1168| 
        ; BRANCH OCCURS {||$C$L166||}    ; [] |1168| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L150||:    
	.dwpsn	file "../utils/ff.c",line 1169,column 6,is_stmt,isa 1
        CMP       V3, #-1               ; [DPU_3_PIPE] |1169| 
        BEQ       ||$C$L155||           ; [DPU_3_PIPE] |1169| 
        ; BRANCHCC OCCURS {||$C$L155||}  ; [] |1169| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1171,column 6,is_stmt,isa 1
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1171| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("sync_window")
	.dwattr $C$DW$229, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |1171| 
        ; CALL OCCURS {sync_window }     ; [] |1171| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1171| 
        BNE       ||$C$L155||           ; [DPU_3_PIPE] |1171| 
        ; BRANCHCC OCCURS {||$C$L155||}  ; [] |1171| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        LDR       A2, [V8, #0]          ; [DPU_3_PIPE] |557| 
        MVN       A3, #-1               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1172,column 6,is_stmt,isa 1
        MOV       A1, #512              ; [DPU_3_PIPE] |1172| 
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        ADDS      A2, A2, #52           ; [DPU_3_PIPE] |557| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L151||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 128
;*   Known Maximum Trip Count        : 128
;*   Known Max Trip Count Factor     : 128
;* --------------------------------------------------------------------------*
	.align	8
||$C$L151||:    
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      A1, A1, #4            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A3, [A2], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L151||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L151||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1173,column 6,is_stmt,isa 1
        LDR       A2, [V8, #0]          ; [DPU_3_PIPE] |1173| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A1, [A2, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A3, V3, #2            ; [DPU_3_PIPE] |830| 
	.dwpsn	file "../utils/ff.c",line 1173,column 6,is_stmt,isa 1
        ADD       A4, A2, #48           ; [DPU_3_PIPE] |1173| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        CMP       A1, A3                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L152||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L152||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A2, [A2, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A1, A3, A1, A2        ; [DPU_3_PIPE] |831| 
        B         ||$C$L153||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L153||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L152||:    
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L153||:    
	.dwpsn	file "../utils/ff.c",line 1173,column 6,is_stmt,isa 1
        STR       A1, [A4, #0]          ; [DPU_3_PIPE] |1173| 
	.dwpsn	file "../utils/ff.c",line 1174,column 18,is_stmt,isa 1
        LDR       A2, [V8, #0]          ; [DPU_3_PIPE] |1174| 
        LDRB      A1, [A2, #2]          ; [DPU_3_PIPE] |1174| 
	.dwpsn	file "../utils/ff.c",line 1174,column 11,is_stmt,isa 1
        MOV       V6, #0                ; [DPU_3_PIPE] |1174| 
	.dwpsn	file "../utils/ff.c",line 1174,column 18,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |1174| 
        ADD       A2, A2, #4            ; [DPU_3_PIPE] |1174| 
        BEQ       ||$C$L160||           ; [DPU_3_PIPE] |1174| 
        ; BRANCHCC OCCURS {||$C$L160||}  ; [] |1174| 
;* --------------------------------------------------------------------------*
        STR       V6, [SP, #4]          ; [DPU_3_PIPE] 
        MOVS      V2, #1                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L154||
;*
;*   Loop source line                : 1174
;*   Loop closing brace source line  : 1178
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L154||:    
	.dwpsn	file "../utils/ff.c",line 1175,column 7,is_stmt,isa 1
        STRB      V2, [A2, #0]          ; [DPU_3_PIPE] |1175| 
	.dwpsn	file "../utils/ff.c",line 1176,column 7,is_stmt,isa 1
        LDR       A2, [V8, #0]          ; [DPU_3_PIPE] |1176| 
        MOV       V7, A2                ; [DPU_3_PIPE] |1176| 
	.dwpsn	file "../utils/ff.c",line 740,column 2,is_stmt,isa 1
        LDRB      A1, [V7, #4]          ; [DPU_3_PIPE] |740| 
	.dwpsn	file "../utils/ff.c",line 1176,column 7,is_stmt,isa 1
        ADD       A3, A2, #48           ; [DPU_3_PIPE] |1176| 
        CBZ       A1, ||$C$L159||       ; [] 
	.dwpsn	file "../utils/ff.c",line 740,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L159||}  ; [] |740| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |742| 
	.dwpsn	file "../utils/ff.c",line 741,column 3,is_stmt,isa 1
        LDR       V5, [V7, #48]         ; [DPU_3_PIPE] |741| 
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        MOV       A4, V2                ; [DPU_3_PIPE] |742| 
        ADDS      A2, A2, #52           ; [DPU_3_PIPE] |742| 
        MOV       A3, V5                ; [DPU_3_PIPE] |742| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("disk_write")
	.dwattr $C$DW$230, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |742| 
        ; CALL OCCURS {disk_write }      ; [] |742| 
        CBZ       A1, ||$C$L156||       ; [] 
        ; BRANCHCC OCCURS {||$C$L156||}  ; [] |742| 
;* --------------------------------------------------------------------------*
||$C$L155||:    
	.dwpsn	file "../utils/ff.c",line 1176,column 32,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |1176| 
        B         ||$C$L166||           ; [DPU_3_PIPE] |1176| 
        ; BRANCH OCCURS {||$C$L166||}    ; [] |1176| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L156||:    
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        LDR       A1, [V7, #36]         ; [DPU_3_PIPE] |745| 
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |745| 
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        STRB      A2, [V7, #4]          ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        BHI       ||$C$L158||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L158||}  ; [] |745| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V7, #28]         ; [DPU_3_PIPE] |745| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |745| 
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BLS       ||$C$L158||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L158||}  ; [] |745| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        LDRB      V4, [V7, #3]          ; [DPU_3_PIPE] |746| 
        CMP       V4, #2                ; [DPU_3_PIPE] |746| 
        BCC       ||$C$L158||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L158||}  ; [] |746| 
;* --------------------------------------------------------------------------*
        ADD       V1, V7, #52           ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |747| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L157||
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 749
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L157||:    
        LDR       A2, [V7, #28]         ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |748| 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        ADD       V5, A2, V5            ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        MOV       A4, V2                ; [DPU_3_PIPE] |748| 
        MOV       A3, V5                ; [DPU_3_PIPE] |748| 
        MOV       A2, V1                ; [DPU_3_PIPE] |748| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("disk_write")
	.dwattr $C$DW$231, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |748| 
        ; CALL OCCURS {disk_write }      ; [] |748| 
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |746| 
        BNE       ||$C$L157||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L157||}  ; [] |746| 
;* --------------------------------------------------------------------------*
||$C$L158||:    
        LDR       A3, [V8, #0]          ; [DPU_3_PIPE] 
        ADDS      A3, A3, #48           ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L159||:    
	.dwpsn	file "../utils/ff.c",line 1177,column 7,is_stmt,isa 1
        LDR       A1, [A3, #0]          ; [DPU_3_PIPE] |1177| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1177| 
        STR       A1, [A3, #0]          ; [DPU_3_PIPE] |1177| 
	.dwpsn	file "../utils/ff.c",line 1174,column 18,is_stmt,isa 1
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1174| 
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |1174| 
        ADD       V6, V6, #1            ; [DPU_3_PIPE] |1174| 
        UXTB      V6, V6                ; [DPU_3_PIPE] |1174| 
        ADDS      A2, A1, #4            ; [DPU_3_PIPE] |1174| 
        CMP       V6, A3                ; [DPU_3_PIPE] |1174| 
        BLT       ||$C$L154||           ; [DPU_3_PIPE] |1174| 
        ; BRANCHCC OCCURS {||$C$L154||}  ; [] |1174| 
;* --------------------------------------------------------------------------*
||$C$L160||:    
	.dwpsn	file "../utils/ff.c",line 1179,column 6,is_stmt,isa 1
        LDR       A1, [A2, #44]         ; [DPU_3_PIPE] |1179| 
        SUB       A1, A1, V6            ; [DPU_3_PIPE] |1179| 
        STR       A1, [A2, #44]         ; [DPU_3_PIPE] |1179| 
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] |1179| 
;* --------------------------------------------------------------------------*
||$C$L161||:    
	.dwpsn	file "../utils/ff.c",line 1184,column 5,is_stmt,isa 1
        STR       V3, [V8, #12]         ; [DPU_3_PIPE] |1184| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A2, [A1, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      V3, V3, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, V3                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L162||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L162||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A2, [A1, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A2, V3, A3, A2        ; [DPU_3_PIPE] |831| 
        B         ||$C$L163||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L163||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L162||:    
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L163||:    
	.dwpsn	file "../utils/ff.c",line 1185,column 5,is_stmt,isa 1
        STR       A2, [V8, #16]         ; [DPU_3_PIPE] |1185| 
        B         ||$C$L165||           ; [DPU_3_PIPE] |1185| 
        ; BRANCH OCCURS {||$C$L165||}    ; [] |1185| 
;* --------------------------------------------------------------------------*
||$C$L164||:    
        LDR       A1, [V8, #0]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L165||:    
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        LSLS      A3, A2, #5            ; [DPU_3_PIPE] |1191| 
        AND       A3, A3, #480          ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1190,column 2,is_stmt,isa 1
        STRH      A2, [V8, #6]          ; [DPU_3_PIPE] |1190| 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        ADDS      A1, A1, A3            ; [DPU_3_PIPE] |1191| 
        ADD       A3, A1, #52           ; [DPU_3_PIPE] |1191| 
        STR       A3, [V8, #20]         ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1193,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |1193| 
;* --------------------------------------------------------------------------*
||$C$L166||:    
        ADD       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$215, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x4aa)
	.dwattr $C$DW$215, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$215

	.sect	".text"
	.align	8
	.clink
	.thumbfunc follow_path
	.thumb

$C$DW$233	.dwtag  DW_TAG_subprogram, DW_AT_name("follow_path")
	.dwattr $C$DW$233, DW_AT_low_pc(follow_path)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("follow_path")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$233, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$233, DW_AT_TI_begin_line(0x7bb)
	.dwattr $C$DW$233, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$233, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$233, DW_AT_decl_line(0x7bb)
	.dwattr $C$DW$233, DW_AT_decl_column(0x09)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "../utils/ff.c",line 1983,column 1,is_stmt,address follow_path,isa 1

	.dwfde $C$DW$CIE, follow_path
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg0]
$C$DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: follow_path                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V9,SP,LR,SR,D0,    *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V9,SP,LR,SR,D0,    *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 4 Auto + 32 Save = 36 byte                 *
;*****************************************************************************
follow_path:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C16
;* V4    assigned to $O$C17
;* A2    assigned to $O$C18
;* A3    assigned to $O$C19
;* A3    assigned to $O$U55
;* A2    assigned to cnt
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg1]
;* A1    assigned to d
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg0]
;* A4    assigned to s
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg3]
;* A1    assigned to clst
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg0]
;* V3    assigned to i
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg6]
;* A2    assigned to cl
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg1]
;* A2    assigned to ns
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("ns")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("ns")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg1]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_breg13 0]
;* V6    assigned to dj
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg9]
;* V4    assigned to $O$R2
;* A1    assigned to res
$C$DW$245	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg0]
;* V2    assigned to res
$C$DW$246	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$247	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg0]
;* V7    assigned to $O$v1
;* V4    assigned to $O$v2
;* A2    assigned to $O$v3
;* A1    assigned to $O$U42
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	save_reg_to_mem, 5, -28
	.dwcfi	save_reg_to_mem, 4, -32
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 40
        STR       A2, [SP, #0]          ; [DPU_3_PIPE] |1983| 
	.dwpsn	file "../utils/ff.c",line 1995,column 2,is_stmt,isa 1
        LDRB      A3, [A2, #0]          ; [DPU_3_PIPE] |1995| 
	.dwpsn	file "../utils/ff.c",line 1983,column 1,is_stmt,isa 1
        MOV       V6, A1                ; [DPU_3_PIPE] |1983| 
	.dwpsn	file "../utils/ff.c",line 1995,column 2,is_stmt,isa 1
        CMP       A3, #47               ; [DPU_3_PIPE] |1995| 
        ITEE      NE                    ; [DPU_3_PIPE] 
        CMPNE     A3, #92               ; [DPU_3_PIPE] |1995| 
	.dwpsn	file "../utils/ff.c",line 1996,column 3,is_stmt,isa 1
        ADDEQ     A2, A2, #1            ; [DPU_3_PIPE] |1996| 
        STREQ     A2, [SP, #0]          ; [DPU_3_PIPE] |1996| 
	.dwpsn	file "../utils/ff.c",line 1997,column 2,is_stmt,isa 1
        MOV       V5, #0                ; [DPU_3_PIPE] |1997| 
        MOV       A1, A2                ; [DPU_3_PIPE] |1997| 
        STR       V5, [V6, #8]          ; [DPU_3_PIPE] |1997| 
	.dwpsn	file "../utils/ff.c",line 2000,column 2,is_stmt,isa 1
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |2000| 
        CMP       A1, #32               ; [DPU_3_PIPE] |2000| 
        BCC       ||$C$L187||           ; [DPU_3_PIPE] |2000| 
        ; BRANCHCC OCCURS {||$C$L187||}  ; [] |2000| 
;* --------------------------------------------------------------------------*
        B         ||$C$L169||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L169||}    ; [] 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L167||:    
	.dwpsn	file "../utils/ff.c",line 2021,column 22,is_stmt,isa 1
        LSRS      A2, A2, #3            ; [DPU_3_PIPE] |2021| 
        BCS       ||$C$L188||           ; [DPU_3_PIPE] |2021| 
        ; BRANCHCC OCCURS {||$C$L188||}  ; [] |2021| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2023,column 4,is_stmt,isa 1
        LDR       A1, [V6, #20]         ; [DPU_3_PIPE] |2023| 
        ADDS      A1, A1, #11           ; [DPU_3_PIPE] |2023| 
        LDRB      A2, [A1, #0]          ; [DPU_3_PIPE] |2023| 
        LSRS      A2, A2, #5            ; [DPU_3_PIPE] |2023| 
        BCC       ||$C$L186||           ; [DPU_3_PIPE] |2023| 
        ; BRANCHCC OCCURS {||$C$L186||}  ; [] |2023| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDR       A3, [V6, #0]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A4, [A1, #16]         ; [DPU_3_PIPE] |1246| 
        LDRB      A2, [A1, #15]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A3, [A3, #0]          ; [DPU_3_PIPE] |1247| 
        CMP       A3, #3                ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        BNE       ||$C$L168||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L168||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A3, [A1, #10]         ; [DPU_3_PIPE] |1248| 
        LDRB      A1, [A1, #9]          ; [DPU_3_PIPE] |1248| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       A2, A2, A1, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L168||:    
	.dwpsn	file "../utils/ff.c",line 2026,column 4,is_stmt,isa 1
        STR       A2, [V6, #8]          ; [DPU_3_PIPE] |2026| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L169||
;* --------------------------------------------------------------------------*
||$C$L169||:    
	.dwpsn	file "../utils/ff.c",line 2005,column 4,is_stmt,isa 1
        MOV       A1, V6                ; [DPU_3_PIPE] |2005| 
        MOV       A2, SP                ; [DPU_3_PIPE] |2005| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("create_name")
	.dwattr $C$DW$248, DW_AT_TI_call
        BL        create_name           ; [DPU_3_PIPE] |2005| 
        ; CALL OCCURS {create_name }     ; [] |2005| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2005| 
        BNE       ||$C$L188||           ; [DPU_3_PIPE] |2005| 
        ; BRANCHCC OCCURS {||$C$L188||}  ; [] |2005| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1455,column 2,is_stmt,isa 1
        MOV       A1, V6                ; [DPU_3_PIPE] |1455| 
        MOV       A2, V5                ; [DPU_3_PIPE] |1455| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("dir_sdi")
	.dwattr $C$DW$249, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1455| 
        ; CALL OCCURS {dir_sdi }         ; [] |1455| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1455| 
        BNE       ||$C$L184||           ; [DPU_3_PIPE] |1455| 
        ; BRANCHCC OCCURS {||$C$L184||}  ; [] |1455| 
;* --------------------------------------------------------------------------*
        LDR       V7, [V6, #0]          ; [DPU_3_PIPE] 
        LDR       V4, [V6, #16]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V7, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A1, V4                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L171||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L171||}  ; [] |763| 
;* --------------------------------------------------------------------------*
||$C$L170||:    
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V7                ; [DPU_3_PIPE] |765| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("sync_window")
	.dwattr $C$DW$250, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L182||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L182||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V7, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V4                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("disk_read")
	.dwattr $C$DW$251, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L182||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L182||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V4, [V7, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L171||:    
        MOV       V2, V5                ; [DPU_3_PIPE] 
        B         ||$C$L177||           ; [DPU_3_PIPE] |770| 
        ; BRANCH OCCURS {||$C$L177||}    ; [] |770| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L172||:    
	.dwpsn	file "../utils/ff.c",line 1184,column 5,is_stmt,isa 1
        STR       A1, [V6, #12]         ; [DPU_3_PIPE] |1184| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A2, [V7, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, A1                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L173||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L173||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A3, [V7, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A2, [V7, #44]         ; [DPU_3_PIPE] |831| 
        MLA       V4, A1, A3, A2        ; [DPU_3_PIPE] |831| 
        B         ||$C$L174||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L174||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L173||:    
        MOV       V4, V2                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L174||:    
	.dwpsn	file "../utils/ff.c",line 1185,column 5,is_stmt,isa 1
        STR       V4, [V6, #16]         ; [DPU_3_PIPE] |1185| 
        B         ||$C$L176||           ; [DPU_3_PIPE] |1185| 
        ; BRANCH OCCURS {||$C$L176||}    ; [] |1185| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L175||:    
        LDR       A3, [V6, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1160,column 20,is_stmt,isa 1
        MOVS      V2, #2                ; [DPU_3_PIPE] |1160| 
	.dwpsn	file "../utils/ff.c",line 1493,column 11,is_stmt,isa 1
        B         ||$C$L183||           ; [DPU_3_PIPE] |1493| 
        ; BRANCH OCCURS {||$C$L183||}    ; [] |1493| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L176||:    
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        LSLS      A1, V3, #5            ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1190,column 2,is_stmt,isa 1
        STRH      V3, [V6, #6]          ; [DPU_3_PIPE] |1190| 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        AND       A1, A1, #480          ; [DPU_3_PIPE] |1191| 
        ADD       A1, V7, A1            ; [DPU_3_PIPE] |1191| 
        ADDS      A1, A1, #52           ; [DPU_3_PIPE] |1191| 
        STR       A1, [V6, #20]         ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V7, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A1, V4                ; [DPU_3_PIPE] |763| 
        BNE       ||$C$L170||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L170||}  ; [] |763| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L177||
;* --------------------------------------------------------------------------*
||$C$L177||:    
	.dwpsn	file "../utils/ff.c",line 1466,column 3,is_stmt,isa 1
        LDR       A2, [V6, #20]         ; [DPU_3_PIPE] |1466| 
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |1466| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1466| 
        BEQ       ||$C$L181||           ; [DPU_3_PIPE] |1466| 
        ; BRANCHCC OCCURS {||$C$L181||}  ; [] |1466| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1490,column 4,is_stmt,isa 1
        LDRB      A1, [A2, #11]         ; [DPU_3_PIPE] |1490| 
        LSRS      A1, A1, #4            ; [DPU_3_PIPE] |1490| 
        BCS       ||$C$L179||           ; [DPU_3_PIPE] |1490| 
        ; BRANCHCC OCCURS {||$C$L179||}  ; [] |1490| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 566,column 40,is_stmt,isa 1
        LDR       A3, [V6, #24]         ; [DPU_3_PIPE] |566| 
	.dwpsn	file "../utils/ff.c",line 566,column 16,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |566| 
	.dwpsn	file "../utils/ff.c",line 1490,column 4,is_stmt,isa 1
        MOVS      A2, #11               ; [DPU_3_PIPE] |1490| 
	.dwpsn	file "../utils/ff.c",line 566,column 40,is_stmt,isa 1
        MOV       A4, A3                ; [DPU_3_PIPE] |566| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L178||
;*
;*   Loop source line                : 569
;*   Loop closing brace source line  : 569
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L178||:    
	.dwpsn	file "../utils/ff.c",line 569,column 9,is_stmt,isa 1
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |569| 
        CMP       A2, #-1               ; [DPU_3_PIPE] |569| 
        BEQ       ||$C$L183||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L183||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        LDRB      V1, [A4, #0]          ; [DPU_3_PIPE] |569| 
        LDRB      V3, [A1, #0]          ; [DPU_3_PIPE] |569| 
        CMP       V1, V3                ; [DPU_3_PIPE] |569| 
        BNE       ||$C$L179||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L179||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |569| 
        CMP       A2, #-1               ; [DPU_3_PIPE] |569| 
        BEQ       ||$C$L183||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L183||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        LDRB      V1, [A4, #1]!         ; [DPU_3_PIPE] |569| 
        LDRB      V3, [A1, #1]!         ; [DPU_3_PIPE] |569| 
        CMP       V1, V3                ; [DPU_3_PIPE] |569| 
        BNE       ||$C$L179||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L179||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |569| 
        CMP       A2, #-1               ; [DPU_3_PIPE] |569| 
        BEQ       ||$C$L183||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L183||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        LDRB      V1, [A4, #1]!         ; [DPU_3_PIPE] |569| 
        LDRB      V3, [A1, #1]!         ; [DPU_3_PIPE] |569| 
        CMP       V1, V3                ; [DPU_3_PIPE] |569| 
        BNE       ||$C$L179||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L179||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |569| 
        CMP       A2, #-1               ; [DPU_3_PIPE] |569| 
        BEQ       ||$C$L183||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L183||}  ; [] |569| 
;* --------------------------------------------------------------------------*
        ADDS      A4, A4, #1            ; [DPU_3_PIPE] 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |569| 
        LDRB      V1, [A4], #1          ; [DPU_3_PIPE] |569| 
        LDRB      V3, [A1], #1          ; [DPU_3_PIPE] |569| 
        CMP       V1, V3                ; [DPU_3_PIPE] |569| 
        BEQ       ||$C$L178||           ; [DPU_3_PIPE] |569| 
        ; BRANCHCC OCCURS {||$C$L178||}  ; [] |569| 
;* --------------------------------------------------------------------------*
||$C$L179||:    
	.dwpsn	file "../utils/ff.c",line 1146,column 2,is_stmt,isa 1
        LDRH      A1, [V6, #6]          ; [DPU_3_PIPE] |1146| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1146| 
        UXTH      V3, A1                ; [DPU_3_PIPE] |1146| 
        CBZ       V3, ||$C$L181||       ; [] 
        ; BRANCHCC OCCURS {||$C$L181||}  ; [] |1146| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1147,column 2,is_stmt,isa 1
        LDR       V4, [V6, #16]         ; [DPU_3_PIPE] |1147| 
        CBZ       V4, ||$C$L181||       ; [] 
        ; BRANCHCC OCCURS {||$C$L181||}  ; [] |1147| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1150,column 2,is_stmt,isa 1
        LDR       V7, [V6, #0]          ; [DPU_3_PIPE] |1150| 
        TST       V3, #15               ; [DPU_3_PIPE] |1150| 
        BNE       ||$C$L176||           ; [DPU_3_PIPE] |1150| 
        ; BRANCHCC OCCURS {||$C$L176||}  ; [] |1150| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        LDR       A2, [V6, #12]         ; [DPU_3_PIPE] |1153| 
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        ADDS      V1, V4, #1            ; [DPU_3_PIPE] |1151| 
        ADDS      V4, V4, #1            ; [DPU_3_PIPE] |1151| 
        STR       V1, [V6, #16]         ; [DPU_3_PIPE] |1151| 
        CBNZ      A2, ||$C$L180||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L180||}  ; [] |1153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1154,column 4,is_stmt,isa 1
        LDRH      A1, [V7, #8]          ; [DPU_3_PIPE] |1154| 
        CMP       A1, V3                ; [DPU_3_PIPE] |1154| 
        BGT       ||$C$L176||           ; [DPU_3_PIPE] |1154| 
        ; BRANCHCC OCCURS {||$C$L176||}  ; [] |1154| 
;* --------------------------------------------------------------------------*
        B         ||$C$L181||           ; [DPU_3_PIPE] |1154| 
        ; BRANCH OCCURS {||$C$L181||}    ; [] |1154| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L180||:    
	.dwpsn	file "../utils/ff.c",line 1158,column 4,is_stmt,isa 1
        LDRB      A1, [V7, #2]          ; [DPU_3_PIPE] |1158| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1158| 
        TST       A1, V3, ASR #4        ; [DPU_3_PIPE] |1158| 
        BNE       ||$C$L176||           ; [DPU_3_PIPE] |1158| 
        ; BRANCHCC OCCURS {||$C$L176||}  ; [] |1158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1159,column 5,is_stmt,isa 1
        MOV       A1, V7                ; [DPU_3_PIPE] |1159| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("get_fat")
	.dwattr $C$DW$252, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1159| 
        ; CALL OCCURS {get_fat }         ; [] |1159| 
        CMP       A1, #2                ; [DPU_3_PIPE] |1159| 
        BCC       ||$C$L175||           ; [DPU_3_PIPE] |1159| 
        ; BRANCHCC OCCURS {||$C$L175||}  ; [] |1159| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1161,column 5,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1161| 
        BEQ       ||$C$L182||           ; [DPU_3_PIPE] |1161| 
        ; BRANCHCC OCCURS {||$C$L182||}  ; [] |1161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1162,column 5,is_stmt,isa 1
        LDR       V7, [V6, #0]          ; [DPU_3_PIPE] |1162| 
        LDR       A2, [V7, #24]         ; [DPU_3_PIPE] |1162| 
        CMP       A2, A1                ; [DPU_3_PIPE] |1162| 
        BHI       ||$C$L172||           ; [DPU_3_PIPE] |1162| 
        ; BRANCHCC OCCURS {||$C$L172||}  ; [] |1162| 
;* --------------------------------------------------------------------------*
||$C$L181||:    
        LDR       A3, [V6, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1466,column 17,is_stmt,isa 1
        MOVS      V2, #4                ; [DPU_3_PIPE] |1466| 
	.dwpsn	file "../utils/ff.c",line 1466,column 35,is_stmt,isa 1
        B         ||$C$L183||           ; [DPU_3_PIPE] |1466| 
        ; BRANCH OCCURS {||$C$L183||}    ; [] |1466| 
;* --------------------------------------------------------------------------*
||$C$L182||:    
        LDR       A3, [V6, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |766| 
;* --------------------------------------------------------------------------*
||$C$L183||:    
	.dwpsn	file "../utils/ff.c",line 1495,column 2,is_stmt,isa 1
        MOV       A1, V2                ; [DPU_3_PIPE] |1495| 
        B         ||$C$L185||           ; [DPU_3_PIPE] |1495| 
        ; BRANCH OCCURS {||$C$L185||}    ; [] |1495| 
;* --------------------------------------------------------------------------*
||$C$L184||:    
        LDR       A3, [V6, #24]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L185||:    
	.dwpsn	file "../utils/ff.c",line 2008,column 4,is_stmt,isa 1
        LDRB      A2, [A3, #11]         ; [DPU_3_PIPE] |2008| 
	.dwpsn	file "../utils/ff.c",line 2009,column 4,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2009| 
        BEQ       ||$C$L167||           ; [DPU_3_PIPE] |2009| 
        ; BRANCHCC OCCURS {||$C$L167||}  ; [] |2009| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2010,column 28,is_stmt,isa 1
        CMP       A1, #4                ; [DPU_3_PIPE] |2010| 
        BNE       ||$C$L188||           ; [DPU_3_PIPE] |2010| 
        ; BRANCHCC OCCURS {||$C$L188||}  ; [] |2010| 
;* --------------------------------------------------------------------------*
        LSRS      A2, A2, #3            ; [DPU_3_PIPE] |2010| 
        BCS       ||$C$L188||           ; [DPU_3_PIPE] |2010| 
        ; BRANCHCC OCCURS {||$C$L188||}  ; [] |2010| 
;* --------------------------------------------------------------------------*
||$C$L186||:    
	.dwpsn	file "../utils/ff.c",line 2030,column 2,is_stmt,isa 1
        MOVS      A1, #5                ; [DPU_3_PIPE] |2030| 
        B         ||$C$L188||           ; [DPU_3_PIPE] |2030| 
        ; BRANCH OCCURS {||$C$L188||}    ; [] |2030| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L187||:    
	.dwpsn	file "../utils/ff.c",line 2001,column 3,is_stmt,isa 1
        MOV       A1, V6                ; [DPU_3_PIPE] |2001| 
        MOV       A2, V5                ; [DPU_3_PIPE] |2001| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("dir_sdi")
	.dwattr $C$DW$253, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |2001| 
        ; CALL OCCURS {dir_sdi }         ; [] |2001| 
	.dwpsn	file "../utils/ff.c",line 2002,column 3,is_stmt,isa 1
        STR       V5, [V6, #20]         ; [DPU_3_PIPE] |2002| 
;* --------------------------------------------------------------------------*
||$C$L188||:    
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$233, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x7ef)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text"
	.align	8
	.clink
	.thumbfunc sync_fs
	.thumb

$C$DW$255	.dwtag  DW_TAG_subprogram, DW_AT_name("sync_fs")
	.dwattr $C$DW$255, DW_AT_low_pc(sync_fs)
	.dwattr $C$DW$255, DW_AT_high_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("sync_fs")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$255, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$255, DW_AT_TI_begin_line(0x310)
	.dwattr $C$DW$255, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$255, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$255, DW_AT_decl_line(0x310)
	.dwattr $C$DW$255, DW_AT_decl_column(0x09)
	.dwattr $C$DW$255, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 787,column 1,is_stmt,address sync_fs,isa 1

	.dwfde $C$DW$CIE, sync_fs
$C$DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: sync_fs                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V4,V5,V6,V7,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V4,V5,V6,V7,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                 *
;*****************************************************************************
sync_fs:
;* --------------------------------------------------------------------------*
;* A4    assigned to $O$C1
;* V1    assigned to $O$C2
;* V4    assigned to $O$C3
;* A3    assigned to $O$C4
;* A4    assigned to $O$C5
;* V9    assigned to $O$C6
;* V6    assigned to $O$C7
;* V4    assigned to $O$C8
;* A1    assigned to $O$C9
;* V5    assigned to $O$C10
;* V6    assigned to $O$K15
;* V4    assigned to $O$L1
;* V5    assigned to wsect
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg8]
;* V4    assigned to cnt
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg7]
;* A1    assigned to d
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg0]
;* V5    assigned to res
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg8]
;* V7    assigned to fs
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg10]
;* V1    assigned to $O$K12
;* A2    assigned to $O$K12
;* A3    assigned to $O$PRE$u8x4$050
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V4, V5, V6, V7, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 4, -24
        MOV       V7, A1                ; [DPU_3_PIPE] |787| 
	.dwpsn	file "../utils/ff.c",line 740,column 2,is_stmt,isa 1
        LDRB      A1, [V7, #4]          ; [DPU_3_PIPE] |740| 
        CBZ       A1, ||$C$L190||       ; [] 
        ; BRANCHCC OCCURS {||$C$L190||}  ; [] |740| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 741,column 3,is_stmt,isa 1
        LDR       V5, [V7, #48]         ; [DPU_3_PIPE] |741| 
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |742| 
        ADD       A2, V7, #52           ; [DPU_3_PIPE] |742| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |742| 
        MOV       A3, V5                ; [DPU_3_PIPE] |742| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("disk_write")
	.dwattr $C$DW$262, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |742| 
        ; CALL OCCURS {disk_write }      ; [] |742| 
        ADD       V1, V7, #52           ; [DPU_3_PIPE] |742| 
        CMP       A1, #0                ; [DPU_3_PIPE] |742| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 812,column 2,is_stmt,isa 1
        MOVNE     A1, #1                ; [DPU_3_PIPE] |812| 
        BNE       ||$C$L193||           ; [DPU_3_PIPE] |812| 
        ; BRANCHCC OCCURS {||$C$L193||}  ; [] |812| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        LDR       A1, [V7, #36]         ; [DPU_3_PIPE] |745| 
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        STRB      A2, [V7, #4]          ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BHI       ||$C$L190||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L190||}  ; [] |745| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V7, #28]         ; [DPU_3_PIPE] |745| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |745| 
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BLS       ||$C$L190||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L190||}  ; [] |745| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        LDRB      V4, [V7, #3]          ; [DPU_3_PIPE] |746| 
        CMP       V4, #2                ; [DPU_3_PIPE] |746| 
        BCC       ||$C$L190||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L190||}  ; [] |746| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |747| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L189||
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 749
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L189||:    
        LDR       A2, [V7, #28]         ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |748| 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        ADD       V5, A2, V5            ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |748| 
        MOV       A3, V5                ; [DPU_3_PIPE] |748| 
        MOV       A2, V1                ; [DPU_3_PIPE] |748| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("disk_write")
	.dwattr $C$DW$263, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |748| 
        ; CALL OCCURS {disk_write }      ; [] |748| 
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |746| 
        BNE       ||$C$L189||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L189||}  ; [] |746| 
;* --------------------------------------------------------------------------*
||$C$L190||:    
	.dwpsn	file "../utils/ff.c",line 794,column 3,is_stmt,isa 1
        LDRB      A1, [V7, #0]          ; [DPU_3_PIPE] |794| 
	.dwpsn	file "../utils/ff.c",line 752,column 2,is_stmt,isa 1
        MOV       V5, #0                ; [DPU_3_PIPE] |752| 
	.dwpsn	file "../utils/ff.c",line 794,column 3,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |794| 
        BNE       ||$C$L192||           ; [DPU_3_PIPE] |794| 
        ; BRANCHCC OCCURS {||$C$L192||}  ; [] |794| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [V7, #5]          ; [DPU_3_PIPE] |794| 
        CMP       A1, #0                ; [DPU_3_PIPE] |794| 
        BEQ       ||$C$L192||           ; [DPU_3_PIPE] |794| 
        ; BRANCHCC OCCURS {||$C$L192||}  ; [] |794| 
;* --------------------------------------------------------------------------*
        MOV       V6, V5                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        ADD       A2, V7, #52           ; [DPU_3_PIPE] |557| 
        ADD       A1, V7, #52           ; [DPU_3_PIPE] |557| 
        MVN       A3, #-1               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 797,column 4,is_stmt,isa 1
        MOV       V4, #512              ; [DPU_3_PIPE] |797| 
	.dwpsn	file "../utils/ff.c",line 795,column 4,is_stmt,isa 1
        STR       V6, [V7, #48]         ; [DPU_3_PIPE] |795| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L191||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 128
;*   Known Maximum Trip Count        : 128
;*   Known Max Trip Count Factor     : 128
;* --------------------------------------------------------------------------*
	.align	8
||$C$L191||:    
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      V4, V4, #4            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A3, [A1], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L191||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L191||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 798,column 4,is_stmt,isa 1
        MOVS      A1, #85               ; [DPU_3_PIPE] |798| 
        STRB      A1, [V7, #562]        ; [DPU_3_PIPE] |798| 
        MOV       LR, #170              ; [DPU_3_PIPE] |798| 
        STRB      LR, [V7, #563]        ; [DPU_3_PIPE] |798| 
	.dwpsn	file "../utils/ff.c",line 799,column 4,is_stmt,isa 1
        MOV       V9, #82               ; [DPU_3_PIPE] |799| 
        STRB      V9, [A2, #0]          ; [DPU_3_PIPE] |799| 
	.dwpsn	file "../utils/ff.c",line 800,column 4,is_stmt,isa 1
        MOVS      A4, #114              ; [DPU_3_PIPE] |800| 
        STRB      A4, [V7, #536]        ; [DPU_3_PIPE] |800| 
        STRB      A4, [V7, #537]        ; [DPU_3_PIPE] |800| 
	.dwpsn	file "../utils/ff.c",line 799,column 4,is_stmt,isa 1
        MOVS      A3, #65               ; [DPU_3_PIPE] |799| 
        STRB      A3, [V7, #55]         ; [DPU_3_PIPE] |799| 
	.dwpsn	file "../utils/ff.c",line 800,column 4,is_stmt,isa 1
        STRB      A3, [V7, #538]        ; [DPU_3_PIPE] |800| 
	.dwpsn	file "../utils/ff.c",line 799,column 4,is_stmt,isa 1
        STRB      V9, [V7, #53]         ; [DPU_3_PIPE] |799| 
	.dwpsn	file "../utils/ff.c",line 801,column 4,is_stmt,isa 1
        LDR       V1, [V7, #16]         ; [DPU_3_PIPE] |801| 
        STRB      V1, [V7, #540]        ; [DPU_3_PIPE] |801| 
	.dwpsn	file "../utils/ff.c",line 799,column 4,is_stmt,isa 1
        MOVS      V4, #97               ; [DPU_3_PIPE] |799| 
        STRB      V4, [V7, #54]         ; [DPU_3_PIPE] |799| 
	.dwpsn	file "../utils/ff.c",line 801,column 4,is_stmt,isa 1
        LSRS      A1, V1, #8            ; [DPU_3_PIPE] |801| 
	.dwpsn	file "../utils/ff.c",line 800,column 4,is_stmt,isa 1
        STRB      V4, [V7, #539]        ; [DPU_3_PIPE] |800| 
	.dwpsn	file "../utils/ff.c",line 802,column 4,is_stmt,isa 1
        LDR       A4, [V7, #12]         ; [DPU_3_PIPE] |802| 
	.dwpsn	file "../utils/ff.c",line 801,column 4,is_stmt,isa 1
        STRB      A1, [V7, #541]        ; [DPU_3_PIPE] |801| 
        LSRS      A3, V1, #16           ; [DPU_3_PIPE] |801| 
        STRB      A3, [V7, #542]        ; [DPU_3_PIPE] |801| 
	.dwpsn	file "../utils/ff.c",line 802,column 4,is_stmt,isa 1
        LSR       LR, A4, #16           ; [DPU_3_PIPE] |802| 
        STRB      A4, [V7, #544]        ; [DPU_3_PIPE] |802| 
        LSR       V9, A4, #24           ; [DPU_3_PIPE] |802| 
        STRB      LR, [V7, #546]        ; [DPU_3_PIPE] |802| 
	.dwpsn	file "../utils/ff.c",line 801,column 4,is_stmt,isa 1
        LSRS      V1, V1, #24           ; [DPU_3_PIPE] |801| 
	.dwpsn	file "../utils/ff.c",line 804,column 4,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |804| 
	.dwpsn	file "../utils/ff.c",line 802,column 4,is_stmt,isa 1
        STRB      V9, [V7, #547]        ; [DPU_3_PIPE] |802| 
	.dwpsn	file "../utils/ff.c",line 804,column 4,is_stmt,isa 1
        LDR       A3, [V7, #20]         ; [DPU_3_PIPE] |804| 
	.dwpsn	file "../utils/ff.c",line 801,column 4,is_stmt,isa 1
        STRB      V1, [V7, #543]        ; [DPU_3_PIPE] |801| 
	.dwpsn	file "../utils/ff.c",line 802,column 4,is_stmt,isa 1
        LSR       LR, A4, #8            ; [DPU_3_PIPE] |802| 
        STRB      LR, [V7, #545]        ; [DPU_3_PIPE] |802| 
	.dwpsn	file "../utils/ff.c",line 804,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |804| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("disk_write")
	.dwattr $C$DW$264, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |804| 
        ; CALL OCCURS {disk_write }      ; [] |804| 
	.dwpsn	file "../utils/ff.c",line 805,column 4,is_stmt,isa 1
        STRB      V6, [V7, #5]          ; [DPU_3_PIPE] |805| 
;* --------------------------------------------------------------------------*
||$C$L192||:    
	.dwpsn	file "../utils/ff.c",line 808,column 3,is_stmt,isa 1
        LDRB      A1, [V7, #1]          ; [DPU_3_PIPE] |808| 
        MOV       A2, V5                ; [DPU_3_PIPE] |808| 
        MOV       A3, A2                ; [DPU_3_PIPE] |808| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$265, DW_AT_TI_call
        BL        disk_ioctl            ; [DPU_3_PIPE] |808| 
        ; CALL OCCURS {disk_ioctl }      ; [] |808| 
        CMP       A1, #0                ; [DPU_3_PIPE] |808| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 809,column 4,is_stmt,isa 1
        MOVNE     V5, #1                ; [DPU_3_PIPE] |809| 
	.dwpsn	file "../utils/ff.c",line 812,column 2,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |812| 
;* --------------------------------------------------------------------------*
||$C$L193||:    
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return
        POP       {V1, V4, V5, V6, V7, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$255, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x32d)
	.dwattr $C$DW$255, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$255

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_utime
	.thumb
	.global	f_utime

$C$DW$267	.dwtag  DW_TAG_subprogram, DW_AT_name("f_utime")
	.dwattr $C$DW$267, DW_AT_low_pc(f_utime)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("f_utime")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$267, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$267, DW_AT_TI_begin_line(0xd80)
	.dwattr $C$DW$267, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$267, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$267, DW_AT_decl_line(0xd80)
	.dwattr $C$DW$267, DW_AT_decl_column(0x09)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(0x38)
	.dwpsn	file "../utils/ff.c",line 3460,column 1,is_stmt,address f_utime,isa 1

	.dwfde $C$DW$CIE, f_utime
$C$DW$268	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg0]
$C$DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fno")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_utime                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 44 Auto + 8 Save = 52 byte                 *
;*****************************************************************************
f_utime:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C13
;* A1    assigned to $O$v1
;* A1    assigned to res
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg0]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_breg13 0]
;* V1    assigned to fno
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("fno")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg4]
;* A2    assigned to dir
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg1]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_breg13 4]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_breg13 32]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
        MOV       V1, A2                ; [DPU_3_PIPE] |3460| 
        SUB       SP, SP, #48           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 56
	.dwpsn	file "../utils/ff.c",line 3467,column 2,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3467| 
	.dwpsn	file "../utils/ff.c",line 3460,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3460| 
	.dwpsn	file "../utils/ff.c",line 3467,column 2,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3467| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3467| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("chk_mounted")
	.dwattr $C$DW$276, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3467| 
        ; CALL OCCURS {chk_mounted }     ; [] |3467| 
        CBNZ      A1, ||$C$L194||       ; [] 
        ; BRANCHCC OCCURS {||$C$L194||}  ; [] |3467| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3469,column 3,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3469| 
	.dwpsn	file "../utils/ff.c",line 3470,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3470| 
	.dwpsn	file "../utils/ff.c",line 3469,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3469| 
	.dwpsn	file "../utils/ff.c",line 3470,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3470| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("follow_path")
	.dwattr $C$DW$277, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3470| 
        ; CALL OCCURS {follow_path }     ; [] |3470| 
        CBNZ      A1, ||$C$L194||       ; [] 
        ; BRANCHCC OCCURS {||$C$L194||}  ; [] |3470| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3475,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |3475| 
        ADD       A2, A1, #23           ; [DPU_3_PIPE] |3475| 
	.dwpsn	file "../utils/ff.c",line 3476,column 4,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3476| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3487,column 2,is_stmt,isa 1
        MOVEQ     A1, #6                ; [DPU_3_PIPE] |3487| 
        BEQ       ||$C$L194||           ; [DPU_3_PIPE] |3487| 
        ; BRANCHCC OCCURS {||$C$L194||}  ; [] |3487| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3479,column 5,is_stmt,isa 1
        LDRB      A3, [V1, #6]          ; [DPU_3_PIPE] |3479| 
        STRB      A3, [A1, #22]         ; [DPU_3_PIPE] |3479| 
        LDRH      A1, [V1, #6]          ; [DPU_3_PIPE] |3479| 
        ASRS      A1, A1, #8            ; [DPU_3_PIPE] |3479| 
        STRB      A1, [A2, #0]          ; [DPU_3_PIPE] |3479| 
	.dwpsn	file "../utils/ff.c",line 3480,column 5,is_stmt,isa 1
        LDRB      A1, [V1, #4]          ; [DPU_3_PIPE] |3480| 
        STRB      A1, [A2, #1]          ; [DPU_3_PIPE] |3480| 
        LDRH      A1, [V1, #4]          ; [DPU_3_PIPE] |3480| 
        ASRS      A1, A1, #8            ; [DPU_3_PIPE] |3480| 
        STRB      A1, [A2, #2]          ; [DPU_3_PIPE] |3480| 
	.dwpsn	file "../utils/ff.c",line 3481,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3481| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |3481| 
        STRB      A2, [A1, #4]          ; [DPU_3_PIPE] |3481| 
	.dwpsn	file "../utils/ff.c",line 3482,column 5,is_stmt,isa 1
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("sync_fs")
	.dwattr $C$DW$278, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |3482| 
        ; CALL OCCURS {sync_fs }         ; [] |3482| 
;* --------------------------------------------------------------------------*
||$C$L194||:    
        ADD       SP, SP, #48           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return
        POP       {V1, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0xda0)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$267

;**	Parameter deleted: vol == 0;
	.sect	".text"
	.align	8
	.clink
	.thumbfunc dir_read
	.thumb

$C$DW$280	.dwtag  DW_TAG_subprogram, DW_AT_name("dir_read")
	.dwattr $C$DW$280, DW_AT_low_pc(dir_read)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("dir_read")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$280, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0x5e2)
	.dwattr $C$DW$280, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$280, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$280, DW_AT_decl_line(0x5e2)
	.dwattr $C$DW$280, DW_AT_decl_column(0x09)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 1510,column 1,is_stmt,address dir_read,isa 1

	.dwfde $C$DW$CIE, dir_read
$C$DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: dir_read                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
dir_read:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C15
;* A1    assigned to $O$C16
;* A1    assigned to $O$C17
;* A2    assigned to $O$C18
;* A1    assigned to $O$C19
;* A2    assigned to $O$v2
;* V1    assigned to $O$v1
;* A1    assigned to $O$R1
;* V2    assigned to dj
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg0]
;* V4    assigned to i
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg7]
;* A1    assigned to clst
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg0]
;* V3    assigned to $O$U3
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V2, V3, V4, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwcfi	save_reg_to_mem, 3, -24
        MOV       V2, A1                ; [DPU_3_PIPE] |1510| 
	.dwpsn	file "../utils/ff.c",line 1518,column 2,is_stmt,isa 1
        LDR       V3, [V2, #16]         ; [DPU_3_PIPE] |1518| 
        CMP       V3, #0                ; [DPU_3_PIPE] |1518| 
        BEQ       ||$C$L204||           ; [DPU_3_PIPE] |1518| 
        ; BRANCHCC OCCURS {||$C$L204||}  ; [] |1518| 
;* --------------------------------------------------------------------------*
        LDR       V1, [V2, #0]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L195||
;*
;*   Loop source line                : 1518
;*   Loop closing brace source line  : 1549
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L195||:    
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A1, V3                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L196||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L196||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("sync_window")
	.dwattr $C$DW$286, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L205||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L205||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V3                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("disk_read")
	.dwattr $C$DW$287, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L205||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L205||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V3, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L196||:    
	.dwpsn	file "../utils/ff.c",line 1523,column 3,is_stmt,isa 1
        LDR       A2, [V2, #20]         ; [DPU_3_PIPE] |1523| 
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |1523| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1523| 
        BEQ       ||$C$L204||           ; [DPU_3_PIPE] |1523| 
        ; BRANCHCC OCCURS {||$C$L204||}  ; [] |1523| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1545,column 4,is_stmt,isa 1
        CMP       A1, #229              ; [DPU_3_PIPE] |1545| 
        BEQ       ||$C$L197||           ; [DPU_3_PIPE] |1545| 
        ; BRANCHCC OCCURS {||$C$L197||}  ; [] |1545| 
;* --------------------------------------------------------------------------*
        CMP       A1, #46               ; [DPU_3_PIPE] |1545| 
        BEQ       ||$C$L197||           ; [DPU_3_PIPE] |1545| 
        ; BRANCHCC OCCURS {||$C$L197||}  ; [] |1545| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #11]         ; [DPU_3_PIPE] |1545| 
        AND       A1, A1, #63           ; [DPU_3_PIPE] |1545| 
        CMP       A1, #15               ; [DPU_3_PIPE] |1545| 
        IT        NE                    ; [DPU_3_PIPE] 
        CMPNE     A1, #8                ; [DPU_3_PIPE] |1545| 
        BNE       ||$C$L203||           ; [DPU_3_PIPE] |1545| 
        ; BRANCHCC OCCURS {||$C$L203||}  ; [] |1545| 
;* --------------------------------------------------------------------------*
||$C$L197||:    
	.dwpsn	file "../utils/ff.c",line 1146,column 2,is_stmt,isa 1
        LDRH      A1, [V2, #6]          ; [DPU_3_PIPE] |1146| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1146| 
        UXTH      V4, A1                ; [DPU_3_PIPE] |1146| 
        CMP       V4, #0                ; [DPU_3_PIPE] |1146| 
        BEQ       ||$C$L204||           ; [DPU_3_PIPE] |1146| 
        ; BRANCHCC OCCURS {||$C$L204||}  ; [] |1146| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1147,column 2,is_stmt,isa 1
        LDR       A1, [V2, #16]         ; [DPU_3_PIPE] |1147| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1147| 
        BEQ       ||$C$L204||           ; [DPU_3_PIPE] |1147| 
        ; BRANCHCC OCCURS {||$C$L204||}  ; [] |1147| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1150,column 2,is_stmt,isa 1
        LDR       V1, [V2, #0]          ; [DPU_3_PIPE] |1150| 
        TST       V4, #15               ; [DPU_3_PIPE] |1150| 
        BNE       ||$C$L202||           ; [DPU_3_PIPE] |1150| 
        ; BRANCHCC OCCURS {||$C$L202||}  ; [] |1150| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1151| 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        LDR       A2, [V2, #12]         ; [DPU_3_PIPE] |1153| 
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        STR       A1, [V2, #16]         ; [DPU_3_PIPE] |1151| 
        CBNZ      A2, ||$C$L198||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L198||}  ; [] |1153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1154,column 4,is_stmt,isa 1
        LDRH      A1, [V1, #8]          ; [DPU_3_PIPE] |1154| 
        CMP       A1, V4                ; [DPU_3_PIPE] |1154| 
        BGT       ||$C$L202||           ; [DPU_3_PIPE] |1154| 
        ; BRANCHCC OCCURS {||$C$L202||}  ; [] |1154| 
;* --------------------------------------------------------------------------*
        B         ||$C$L204||           ; [DPU_3_PIPE] |1154| 
        ; BRANCH OCCURS {||$C$L204||}    ; [] |1154| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L198||:    
	.dwpsn	file "../utils/ff.c",line 1158,column 4,is_stmt,isa 1
        LDRB      A1, [V1, #2]          ; [DPU_3_PIPE] |1158| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1158| 
        TST       A1, V4, ASR #4        ; [DPU_3_PIPE] |1158| 
        BNE       ||$C$L202||           ; [DPU_3_PIPE] |1158| 
        ; BRANCHCC OCCURS {||$C$L202||}  ; [] |1158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1159,column 5,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |1159| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("get_fat")
	.dwattr $C$DW$288, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1159| 
        ; CALL OCCURS {get_fat }         ; [] |1159| 
        CMP       A1, #2                ; [DPU_3_PIPE] |1159| 
        BCC       ||$C$L201||           ; [DPU_3_PIPE] |1159| 
        ; BRANCHCC OCCURS {||$C$L201||}  ; [] |1159| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1161,column 5,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1161| 
        BEQ       ||$C$L205||           ; [DPU_3_PIPE] |1161| 
        ; BRANCHCC OCCURS {||$C$L205||}  ; [] |1161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1162,column 5,is_stmt,isa 1
        LDR       V1, [V2, #0]          ; [DPU_3_PIPE] |1162| 
        LDR       A2, [V1, #24]         ; [DPU_3_PIPE] |1162| 
        CMP       A2, A1                ; [DPU_3_PIPE] |1162| 
        BLS       ||$C$L204||           ; [DPU_3_PIPE] |1162| 
        ; BRANCHCC OCCURS {||$C$L204||}  ; [] |1162| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1184,column 5,is_stmt,isa 1
        STR       A1, [V2, #12]         ; [DPU_3_PIPE] |1184| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A2, [V1, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, A1                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L199||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L199||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A3, [V1, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A2, [V1, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A1, A1, A3, A2        ; [DPU_3_PIPE] |831| 
        B         ||$C$L200||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L200||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L199||:    
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L200||:    
	.dwpsn	file "../utils/ff.c",line 1185,column 5,is_stmt,isa 1
        STR       A1, [V2, #16]         ; [DPU_3_PIPE] |1185| 
        B         ||$C$L202||           ; [DPU_3_PIPE] |1185| 
        ; BRANCH OCCURS {||$C$L202||}    ; [] |1185| 
;* --------------------------------------------------------------------------*
||$C$L201||:    
	.dwpsn	file "../utils/ff.c",line 1160,column 20,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |1160| 
	.dwpsn	file "../utils/ff.c",line 1548,column 21,is_stmt,isa 1
        B         ||$C$L206||           ; [DPU_3_PIPE] |1548| 
        ; BRANCH OCCURS {||$C$L206||}    ; [] |1548| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L202||:    
	.dwpsn	file "../utils/ff.c",line 1518,column 2,is_stmt,isa 1
        LDR       V3, [V2, #16]         ; [DPU_3_PIPE] |1518| 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        LSLS      A1, V4, #5            ; [DPU_3_PIPE] |1191| 
        AND       A1, A1, #480          ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1190,column 2,is_stmt,isa 1
        STRH      V4, [V2, #6]          ; [DPU_3_PIPE] |1190| 
	.dwpsn	file "../utils/ff.c",line 1518,column 2,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |1518| 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        ADD       A1, V1, A1            ; [DPU_3_PIPE] |1191| 
        ADD       A1, A1, #52           ; [DPU_3_PIPE] |1191| 
        STR       A1, [V2, #20]         ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1518,column 2,is_stmt,isa 1
        BNE       ||$C$L195||           ; [DPU_3_PIPE] |1518| 
        ; BRANCHCC OCCURS {||$C$L195||}  ; [] |1518| 
;* --------------------------------------------------------------------------*
||$C$L203||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 1553,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |1553| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L204||:    
	.dwpsn	file "../utils/ff.c",line 1523,column 17,is_stmt,isa 1
        MOVS      A1, #4                ; [DPU_3_PIPE] |1523| 
	.dwpsn	file "../utils/ff.c",line 1551,column 2,is_stmt,isa 1
        B         ||$C$L206||           ; [DPU_3_PIPE] |1551| 
        ; BRANCH OCCURS {||$C$L206||}    ; [] |1551| 
;* --------------------------------------------------------------------------*
||$C$L205||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
;* --------------------------------------------------------------------------*
||$C$L206||:    
	.dwpsn	file "../utils/ff.c",line 1551,column 20,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |1551| 
        STR       A2, [V2, #16]         ; [DPU_3_PIPE] |1551| 
;* --------------------------------------------------------------------------*
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_TI_return
        POP       {A4, V1, V2, V3, V4, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x612)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text"
	.align	8
	.clink
	.thumbfunc remove_chain
	.thumb

$C$DW$291	.dwtag  DW_TAG_subprogram, DW_AT_name("remove_chain")
	.dwattr $C$DW$291, DW_AT_low_pc(remove_chain)
	.dwattr $C$DW$291, DW_AT_high_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("remove_chain")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$291, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$291, DW_AT_TI_begin_line(0x3b4)
	.dwattr $C$DW$291, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$291, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$291, DW_AT_decl_line(0x3b4)
	.dwattr $C$DW$291, DW_AT_decl_column(0x09)
	.dwattr $C$DW$291, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../utils/ff.c",line 952,column 1,is_stmt,address remove_chain,isa 1

	.dwfde $C$DW$CIE, remove_chain
$C$DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg0]
$C$DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clst")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: remove_chain                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                 *
;*****************************************************************************
remove_chain:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C1
;* V3    assigned to res
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg6]
;* V1    assigned to fs
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg4]
;* V5    assigned to clst
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg8]
;* V4    assigned to nxt
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("nxt")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("nxt")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg7]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 6, -16
	.dwcfi	save_reg_to_mem, 5, -20
	.dwcfi	save_reg_to_mem, 4, -24
        MOV       V5, A2                ; [DPU_3_PIPE] |952| 
        MOV       V1, A1                ; [DPU_3_PIPE] |952| 
	.dwpsn	file "../utils/ff.c",line 959,column 2,is_stmt,isa 1
        CMP       V5, #2                ; [DPU_3_PIPE] |959| 
        BCC       ||$C$L209||           ; [DPU_3_PIPE] |959| 
        ; BRANCHCC OCCURS {||$C$L209||}  ; [] |959| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V1, #24]         ; [DPU_3_PIPE] |959| 
        CMP       A1, V5                ; [DPU_3_PIPE] |959| 
        BLS       ||$C$L209||           ; [DPU_3_PIPE] |959| 
        ; BRANCHCC OCCURS {||$C$L209||}  ; [] |959| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 963,column 3,is_stmt,isa 1
        MOVS      V3, #0                ; [DPU_3_PIPE] |963| 
	.dwpsn	file "../utils/ff.c",line 973,column 5,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |973| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L207||
;*
;*   Loop source line                : 964
;*   Loop closing brace source line  : 986
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L207||:    
	.dwpsn	file "../utils/ff.c",line 965,column 4,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |965| 
        MOV       A2, V5                ; [DPU_3_PIPE] |965| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("get_fat")
	.dwattr $C$DW$298, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |965| 
        ; CALL OCCURS {get_fat }         ; [] |965| 
        MOVS      V4, A1                ; [DPU_3_PIPE] |965| 
        BEQ       ||$C$L210||           ; [DPU_3_PIPE] |965| 
        ; BRANCHCC OCCURS {||$C$L210||}  ; [] |965| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 967,column 4,is_stmt,isa 1
        CMP       V4, #1                ; [DPU_3_PIPE] |967| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 989,column 2,is_stmt,isa 1
        MOVEQ     A1, #2                ; [DPU_3_PIPE] |989| 
        BEQ       ||$C$L211||           ; [DPU_3_PIPE] |989| 
        ; BRANCHCC OCCURS {||$C$L211||}  ; [] |989| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 968,column 4,is_stmt,isa 1
        CMP       V4, #-1               ; [DPU_3_PIPE] |968| 
        IT        EQ                    ; [DPU_3_PIPE] 
        MOVEQ     A1, V2                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 989,column 2,is_stmt,isa 1
        BEQ       ||$C$L211||           ; [DPU_3_PIPE] |989| 
        ; BRANCHCC OCCURS {||$C$L211||}  ; [] |989| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 969,column 4,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |969| 
        MOV       A2, V5                ; [DPU_3_PIPE] |969| 
        MOVS      A3, #0                ; [DPU_3_PIPE] |969| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("put_fat")
	.dwattr $C$DW$299, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |969| 
        ; CALL OCCURS {put_fat }         ; [] |969| 
        MOVS      V3, A1                ; [DPU_3_PIPE] |969| 
        BNE       ||$C$L210||           ; [DPU_3_PIPE] |969| 
        ; BRANCHCC OCCURS {||$C$L210||}  ; [] |969| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 971,column 4,is_stmt,isa 1
        LDR       A1, [V1, #16]         ; [DPU_3_PIPE] |971| 
        CMP       A1, #-1               ; [DPU_3_PIPE] |971| 
        BEQ       ||$C$L208||           ; [DPU_3_PIPE] |971| 
        ; BRANCHCC OCCURS {||$C$L208||}  ; [] |971| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 973,column 5,is_stmt,isa 1
        STRB      V2, [V1, #5]          ; [DPU_3_PIPE] |973| 
	.dwpsn	file "../utils/ff.c",line 972,column 5,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |972| 
        STR       A1, [V1, #16]         ; [DPU_3_PIPE] |972| 
;* --------------------------------------------------------------------------*
||$C$L208||:    
	.dwpsn	file "../utils/ff.c",line 964,column 10,is_stmt,isa 1
        LDR       A1, [V1, #24]         ; [DPU_3_PIPE] |964| 
	.dwpsn	file "../utils/ff.c",line 985,column 4,is_stmt,isa 1
        MOV       V5, V4                ; [DPU_3_PIPE] |985| 
	.dwpsn	file "../utils/ff.c",line 964,column 10,is_stmt,isa 1
        CMP       A1, V5                ; [DPU_3_PIPE] |964| 
        BHI       ||$C$L207||           ; [DPU_3_PIPE] |964| 
        ; BRANCHCC OCCURS {||$C$L207||}  ; [] |964| 
;* --------------------------------------------------------------------------*
        B         ||$C$L210||           ; [DPU_3_PIPE] |964| 
        ; BRANCH OCCURS {||$C$L210||}    ; [] |964| 
;* --------------------------------------------------------------------------*
||$C$L209||:    
	.dwpsn	file "../utils/ff.c",line 960,column 3,is_stmt,isa 1
        MOVS      V3, #2                ; [DPU_3_PIPE] |960| 
;* --------------------------------------------------------------------------*
||$C$L210||:    
	.dwpsn	file "../utils/ff.c",line 989,column 2,is_stmt,isa 1
        MOV       A1, V3                ; [DPU_3_PIPE] |989| 
;* --------------------------------------------------------------------------*
||$C$L211||:    
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$291, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$291, DW_AT_TI_end_line(0x3de)
	.dwattr $C$DW$291, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$291

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_unlink
	.thumb
	.global	f_unlink

$C$DW$301	.dwtag  DW_TAG_subprogram, DW_AT_name("f_unlink")
	.dwattr $C$DW$301, DW_AT_low_pc(f_unlink)
	.dwattr $C$DW$301, DW_AT_high_pc(0x00)
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("f_unlink")
	.dwattr $C$DW$301, DW_AT_external
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$301, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$301, DW_AT_TI_begin_line(0xcc8)
	.dwattr $C$DW$301, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$301, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$301, DW_AT_decl_line(0xcc8)
	.dwattr $C$DW$301, DW_AT_decl_column(0x09)
	.dwattr $C$DW$301, DW_AT_TI_max_frame_size(0x60)
	.dwpsn	file "../utils/ff.c",line 3275,column 1,is_stmt,address f_unlink,isa 1

	.dwfde $C$DW$CIE, f_unlink
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: f_unlink                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 72 Auto + 20 Save = 92 byte                *
;*****************************************************************************
f_unlink:
;* --------------------------------------------------------------------------*
;* A2    assigned to $O$C13
;* A1    assigned to $O$C14
;* V4    assigned to $O$C15
;* A1    assigned to cnt
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg0]
;* A3    assigned to d
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg1]
;* V1    assigned to fs
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg4]
;* V2    assigned to sector
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg0]
;* A3    assigned to dir
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg2]
$C$DW$310	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_breg13 0]
;* V3    assigned to cl
$C$DW$311	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg6]
;* V4    assigned to dclst
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("dclst")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("dclst")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg7]
;* A1    assigned to res
$C$DW$313	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg0]
;* A2    assigned to $O$v1
$C$DW$314	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_breg13 4]
$C$DW$315	.dwtag  DW_TAG_variable, DW_AT_name("sdj")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("sdj")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_breg13 32]
$C$DW$316	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_breg13 60]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, LR}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
        SUB       SP, SP, #76           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 96
	.dwpsn	file "../utils/ff.c",line 3283,column 2,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3283| 
	.dwpsn	file "../utils/ff.c",line 3275,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3275| 
	.dwpsn	file "../utils/ff.c",line 3283,column 2,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3283| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3283| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("chk_mounted")
	.dwattr $C$DW$317, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3283| 
        ; CALL OCCURS {chk_mounted }     ; [] |3283| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3283| 
        BNE       ||$C$L222||           ; [DPU_3_PIPE] |3283| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3283| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3285,column 3,is_stmt,isa 1
        ADD       A1, SP, #60           ; [DPU_3_PIPE] |3285| 
	.dwpsn	file "../utils/ff.c",line 3286,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3286| 
	.dwpsn	file "../utils/ff.c",line 3285,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3285| 
	.dwpsn	file "../utils/ff.c",line 3286,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3286| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("follow_path")
	.dwattr $C$DW$318, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3286| 
        ; CALL OCCURS {follow_path }     ; [] |3286| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3286| 
        BNE       ||$C$L222||           ; [DPU_3_PIPE] |3286| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3286| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3293,column 4,is_stmt,isa 1
        LDR       V4, [SP, #24]         ; [DPU_3_PIPE] |3293| 
        ADD       A3, V4, #11           ; [DPU_3_PIPE] |3293| 
	.dwpsn	file "../utils/ff.c",line 3294,column 4,is_stmt,isa 1
        CMP       V4, #0                ; [DPU_3_PIPE] |3294| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3331,column 2,is_stmt,isa 1
        MOVEQ     A1, #6                ; [DPU_3_PIPE] |3331| 
        BEQ       ||$C$L222||           ; [DPU_3_PIPE] |3331| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3331| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3297,column 5,is_stmt,isa 1
        LDRB      A2, [A3, #0]          ; [DPU_3_PIPE] |3297| 
        LSRS      A2, A2, #1            ; [DPU_3_PIPE] |3297| 
        BCS       ||$C$L214||           ; [DPU_3_PIPE] |3297| 
        ; BRANCHCC OCCURS {||$C$L214||}  ; [] |3297| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A4, [V4, #27]         ; [DPU_3_PIPE] |1246| 
        LDRB      V3, [V4, #26]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A2, [A2, #0]          ; [DPU_3_PIPE] |1247| 
        CMP       A2, #3                ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       V3, V3, A4, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        BNE       ||$C$L212||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L212||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A4, [V4, #21]         ; [DPU_3_PIPE] |1248| 
        LDRB      A2, [V4, #20]         ; [DPU_3_PIPE] |1248| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       V3, V3, A2, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L212||:    
	.dwpsn	file "../utils/ff.c",line 3301,column 4,is_stmt,isa 1
        LDRB      A2, [A3, #0]          ; [DPU_3_PIPE] |3301| 
	.dwpsn	file "../utils/ff.c",line 1250,column 2,is_stmt,isa 1
        MOV       V4, V3                ; [DPU_3_PIPE] |1250| 
	.dwpsn	file "../utils/ff.c",line 3301,column 4,is_stmt,isa 1
        LSRS      A2, A2, #5            ; [DPU_3_PIPE] |3301| 
        BCC       ||$C$L216||           ; [DPU_3_PIPE] |3301| 
        ; BRANCHCC OCCURS {||$C$L216||}  ; [] |3301| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3302,column 5,is_stmt,isa 1
        CMP       V4, #2                ; [DPU_3_PIPE] |3302| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3331,column 2,is_stmt,isa 1
        MOVCC     A1, #2                ; [DPU_3_PIPE] |3331| 
        BCC       ||$C$L222||           ; [DPU_3_PIPE] |3331| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3331| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       A3, SP, #32           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 3305,column 6,is_stmt,isa 1
        MOVS      A1, #28               ; [DPU_3_PIPE] |3305| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L213||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 7
;*   Known Maximum Trip Count        : 7
;*   Known Max Trip Count Factor     : 7
;* --------------------------------------------------------------------------*
	.align	8
||$C$L213||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDR       A4, [A2], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A1, A1, #4            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STR       A4, [A3], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L213||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L213||}  ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3306,column 6,is_stmt,isa 1
        STR       V4, [SP, #40]         ; [DPU_3_PIPE] |3306| 
	.dwpsn	file "../utils/ff.c",line 3307,column 6,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3307| 
        MOVS      A2, #2                ; [DPU_3_PIPE] |3307| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("dir_sdi")
	.dwattr $C$DW$319, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |3307| 
        ; CALL OCCURS {dir_sdi }         ; [] |3307| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3307| 
        BNE       ||$C$L222||           ; [DPU_3_PIPE] |3307| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3307| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3309,column 7,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3309| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("dir_read")
	.dwattr $C$DW$320, DW_AT_TI_call
        BL        dir_read              ; [DPU_3_PIPE] |3309| 
        ; CALL OCCURS {dir_read }        ; [] |3309| 
        CBNZ      A1, ||$C$L215||       ; [] 
        ; BRANCHCC OCCURS {||$C$L215||}  ; [] |3309| 
;* --------------------------------------------------------------------------*
||$C$L214||:    
	.dwpsn	file "../utils/ff.c",line 3331,column 2,is_stmt,isa 1
        MOVS      A1, #7                ; [DPU_3_PIPE] |3331| 
        B         ||$C$L222||           ; [DPU_3_PIPE] |3331| 
        ; BRANCH OCCURS {||$C$L222||}    ; [] |3331| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L215||:    
	.dwpsn	file "../utils/ff.c",line 3315,column 7,is_stmt,isa 1
        CMP       A1, #4                ; [DPU_3_PIPE] |3315| 
        BEQ       ||$C$L217||           ; [DPU_3_PIPE] |3315| 
        ; BRANCHCC OCCURS {||$C$L217||}  ; [] |3315| 
;* --------------------------------------------------------------------------*
||$C$L216||:    
	.dwpsn	file "../utils/ff.c",line 3319,column 4,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3319| 
        BNE       ||$C$L222||           ; [DPU_3_PIPE] |3319| 
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3319| 
;* --------------------------------------------------------------------------*
||$C$L217||:    
	.dwpsn	file "../utils/ff.c",line 1665,column 2,is_stmt,isa 1
        LDRH      A2, [SP, #10]         ; [DPU_3_PIPE] |1665| 
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1665| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("dir_sdi")
	.dwattr $C$DW$321, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1665| 
        ; CALL OCCURS {dir_sdi }         ; [] |1665| 
        CBNZ      A1, ||$C$L220||       ; [] 
        ; BRANCHCC OCCURS {||$C$L220||}  ; [] |1665| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1667,column 3,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |1667| 
        LDR       V2, [SP, #20]         ; [DPU_3_PIPE] |1667| 
        MOV       V1, A1                ; [DPU_3_PIPE] |1667| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L219||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L219||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("sync_window")
	.dwattr $C$DW$322, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L218||       ; [] 
        ; BRANCHCC OCCURS {||$C$L218||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("disk_read")
	.dwattr $C$DW$323, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STREQ     V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
        BEQ       ||$C$L219||           ; [DPU_3_PIPE] |770| 
        ; BRANCHCC OCCURS {||$C$L219||}  ; [] |770| 
;* --------------------------------------------------------------------------*
||$C$L218||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
	.dwpsn	file "../utils/ff.c",line 1675,column 2,is_stmt,isa 1
        B         ||$C$L220||           ; [DPU_3_PIPE] |1675| 
        ; BRANCH OCCURS {||$C$L220||}    ; [] |1675| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L219||:    
	.dwpsn	file "../utils/ff.c",line 1669,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |1669| 
        MOVS      A2, #229              ; [DPU_3_PIPE] |1669| 
        STRB      A2, [A1, #0]          ; [DPU_3_PIPE] |1669| 
	.dwpsn	file "../utils/ff.c",line 1670,column 4,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1670| 
        MOVS      A3, #1                ; [DPU_3_PIPE] |1670| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 1670,column 4,is_stmt,isa 1
        STRB      A3, [A2, #4]          ; [DPU_3_PIPE] |1670| 
;* --------------------------------------------------------------------------*
||$C$L220||:    
        CBNZ      A1, ||$C$L222||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1675,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |1675| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3322,column 6,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |3322| 
        CBZ       V4, ||$C$L221||       ; [] 
        ; BRANCHCC OCCURS {||$C$L221||}  ; [] |3322| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3323,column 7,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |3323| 
        MOV       A2, V3                ; [DPU_3_PIPE] |3323| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("remove_chain")
	.dwattr $C$DW$324, DW_AT_TI_call
        BL        remove_chain          ; [DPU_3_PIPE] |3323| 
        ; CALL OCCURS {remove_chain }    ; [] |3323| 
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |3323| 
;* --------------------------------------------------------------------------*
||$C$L221||:    
        CBNZ      A1, ||$C$L222||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3324,column 6,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L222||}  ; [] |3324| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3324,column 24,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |3324| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("sync_fs")
	.dwattr $C$DW$325, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |3324| 
        ; CALL OCCURS {sync_fs }         ; [] |3324| 
;* --------------------------------------------------------------------------*
||$C$L222||:    
        ADD       SP, SP, #76           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_return
        POP       {V1, V2, V3, V4, PC}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$301, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$301, DW_AT_TI_end_line(0xd04)
	.dwattr $C$DW$301, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$301

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_truncate
	.thumb
	.global	f_truncate

$C$DW$327	.dwtag  DW_TAG_subprogram, DW_AT_name("f_truncate")
	.dwattr $C$DW$327, DW_AT_low_pc(f_truncate)
	.dwattr $C$DW$327, DW_AT_high_pc(0x00)
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("f_truncate")
	.dwattr $C$DW$327, DW_AT_external
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$327, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$327, DW_AT_TI_begin_line(0xc98)
	.dwattr $C$DW$327, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$327, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$327, DW_AT_decl_line(0xc98)
	.dwattr $C$DW$327, DW_AT_decl_column(0x09)
	.dwattr $C$DW$327, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../utils/ff.c",line 3227,column 1,is_stmt,address f_truncate,isa 1

	.dwfde $C$DW$CIE, f_truncate
$C$DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: f_truncate                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                 *
;*****************************************************************************
f_truncate:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C1
;* A2    assigned to $O$C2
;* A2    assigned to $O$C3
;* A1    assigned to $O$U40
;* V1    assigned to ncl
$C$DW$329	.dwtag  DW_TAG_variable, DW_AT_name("ncl")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("ncl")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg4]
;* V4    assigned to fp
$C$DW$330	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg7]
;* A1    assigned to res
$C$DW$331	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg0]
	.dwcfi	cfa_offset, 0
        PUSH      {A4, V1, V4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwcfi	save_reg_to_mem, 3, -16
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L223||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L223||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L223||       ; [] 
        ; BRANCHCC OCCURS {||$C$L223||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L223||       ; [] 
        ; BRANCHCC OCCURS {||$C$L223||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L224||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L224||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L223||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 3262,column 2,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |3262| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_TI_return
        POP       {A4, V1, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L224||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("disk_status")
	.dwattr $C$DW$333, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3262,column 2,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |3262| 
        BCS       ||$C$L231||           ; [DPU_3_PIPE] |3262| 
        ; BRANCHCC OCCURS {||$C$L231||}  ; [] |3262| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3234,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3234| 
        BICS      A1, A2, #127          ; [DPU_3_PIPE] |3234| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3262,column 2,is_stmt,isa 1
        MOVNE     A1, #2                ; [DPU_3_PIPE] |3262| 
        BNE       ||$C$L231||           ; [DPU_3_PIPE] |3262| 
        ; BRANCHCC OCCURS {||$C$L231||}  ; [] |3262| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3237,column 4,is_stmt,isa 1
        LSRS      A1, A2, #2            ; [DPU_3_PIPE] |3237| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3262,column 2,is_stmt,isa 1
        MOVCC     A1, #7                ; [DPU_3_PIPE] |3262| 
        BCC       ||$C$L231||           ; [DPU_3_PIPE] |3262| 
        ; BRANCHCC OCCURS {||$C$L231||}  ; [] |3262| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3242,column 3,is_stmt,isa 1
        LDR       A1, [V4, #8]          ; [DPU_3_PIPE] |3242| 
        LDR       A3, [V4, #12]         ; [DPU_3_PIPE] |3242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |3242| 
        BCS       ||$C$L226||           ; [DPU_3_PIPE] |3242| 
        ; BRANCHCC OCCURS {||$C$L226||}  ; [] |3242| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3244,column 4,is_stmt,isa 1
        ORR       A2, A2, #32           ; [DPU_3_PIPE] |3244| 
	.dwpsn	file "../utils/ff.c",line 3243,column 4,is_stmt,isa 1
        STR       A1, [V4, #12]         ; [DPU_3_PIPE] |3243| 
	.dwpsn	file "../utils/ff.c",line 3244,column 4,is_stmt,isa 1
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3244| 
        CBNZ      A1, ||$C$L225||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3245,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L225||}  ; [] |3245| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3246,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |3246| 
        LDR       A2, [V4, #16]         ; [DPU_3_PIPE] |3246| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("remove_chain")
	.dwattr $C$DW$334, DW_AT_TI_call
        BL        remove_chain          ; [DPU_3_PIPE] |3246| 
        ; CALL OCCURS {remove_chain }    ; [] |3246| 
	.dwpsn	file "../utils/ff.c",line 3247,column 5,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |3247| 
        STR       A2, [V4, #16]         ; [DPU_3_PIPE] |3247| 
        CBNZ      A1, ||$C$L230||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3259,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L230||}  ; [] |3259| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_return
        POP       {A4, V1, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L225||:    
	.dwpsn	file "../utils/ff.c",line 3249,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |3249| 
        LDR       A2, [V4, #20]         ; [DPU_3_PIPE] |3249| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("get_fat")
	.dwattr $C$DW$336, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |3249| 
        ; CALL OCCURS {get_fat }         ; [] |3249| 
        MOV       V1, A1                ; [DPU_3_PIPE] |3249| 
        CMP       V1, #-1               ; [DPU_3_PIPE] |3249| 
        BEQ       ||$C$L229||           ; [DPU_3_PIPE] |3249| 
        ; BRANCHCC OCCURS {||$C$L229||}  ; [] |3249| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3252,column 5,is_stmt,isa 1
        CMP       V1, #1                ; [DPU_3_PIPE] |3252| 
        BEQ       ||$C$L228||           ; [DPU_3_PIPE] |3252| 
        ; BRANCHCC OCCURS {||$C$L228||}  ; [] |3252| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3253,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |3253| 
        LDR       A2, [A1, #24]         ; [DPU_3_PIPE] |3253| 
        CMP       A2, V1                ; [DPU_3_PIPE] |3253| 
        BHI       ||$C$L227||           ; [DPU_3_PIPE] |3253| 
        ; BRANCHCC OCCURS {||$C$L227||}  ; [] |3253| 
;* --------------------------------------------------------------------------*
||$C$L226||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 3262,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |3262| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_return
        POP       {A4, V1, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L227||:    
	.dwpsn	file "../utils/ff.c",line 3254,column 6,is_stmt,isa 1
        LDR       A2, [V4, #20]         ; [DPU_3_PIPE] |3254| 
        MVN       A3, #-268435456       ; [DPU_3_PIPE] |3254| 
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("put_fat")
	.dwattr $C$DW$338, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |3254| 
        ; CALL OCCURS {put_fat }         ; [] |3254| 
        CBNZ      A1, ||$C$L230||       ; [] 
        ; BRANCHCC OCCURS {||$C$L230||}  ; [] |3254| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3255,column 24,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |3255| 
        MOV       A2, V1                ; [DPU_3_PIPE] |3255| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("remove_chain")
	.dwattr $C$DW$339, DW_AT_TI_call
        BL        remove_chain          ; [DPU_3_PIPE] |3255| 
        ; CALL OCCURS {remove_chain }    ; [] |3255| 
        CBNZ      A1, ||$C$L230||       ; [] 
        ; BRANCHCC OCCURS {||$C$L230||}  ; [] |3255| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_return
        POP       {A4, V1, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 3
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L228||:    
	.dwpsn	file "../utils/ff.c",line 3252,column 19,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |3252| 
	.dwpsn	file "../utils/ff.c",line 3253,column 5,is_stmt,isa 1
        B         ||$C$L230||           ; [DPU_3_PIPE] |3253| 
        ; BRANCH OCCURS {||$C$L230||}    ; [] |3253| 
;* --------------------------------------------------------------------------*
||$C$L229||:    
	.dwpsn	file "../utils/ff.c",line 3251,column 28,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |3251| 
;* --------------------------------------------------------------------------*
||$C$L230||:    
	.dwpsn	file "../utils/ff.c",line 3259,column 21,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3259| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |3259| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3259| 
;* --------------------------------------------------------------------------*
||$C$L231||:    
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_return
        POP       {A4, V1, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$327, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$327, DW_AT_TI_end_line(0xcbf)
	.dwattr $C$DW$327, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$327

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_sync
	.thumb
	.global	f_sync

$C$DW$342	.dwtag  DW_TAG_subprogram, DW_AT_name("f_sync")
	.dwattr $C$DW$342, DW_AT_low_pc(f_sync)
	.dwattr $C$DW$342, DW_AT_high_pc(0x00)
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("f_sync")
	.dwattr $C$DW$342, DW_AT_external
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$342, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$342, DW_AT_TI_begin_line(0xa64)
	.dwattr $C$DW$342, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$342, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$342, DW_AT_decl_line(0xa64)
	.dwattr $C$DW$342, DW_AT_decl_column(0x09)
	.dwattr $C$DW$342, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../utils/ff.c",line 2663,column 1,is_stmt,address f_sync,isa 1

	.dwfde $C$DW$CIE, f_sync
$C$DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: f_sync                                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi, *
;*                           D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,*
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
f_sync:
;* --------------------------------------------------------------------------*
;* V9    assigned to $O$C1
;* A1    assigned to $O$C2
;* A1    assigned to $O$C3
;* A2    assigned to $O$C4
;* V1    assigned to fs
$C$DW$344	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg4]
;* V2    assigned to sector
$C$DW$345	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg5]
;* A2    assigned to dir
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg1]
;* A1    assigned to cl
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg0]
;* V1    assigned to dir
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg4]
;* A1    assigned to tm
$C$DW$349	.dwtag  DW_TAG_variable, DW_AT_name("tm")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("tm")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg0]
;* V4    assigned to fp
$C$DW$350	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg7]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 5, -12
	.dwcfi	save_reg_to_mem, 4, -16
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L232||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L232||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L232||       ; [] 
        ; BRANCHCC OCCURS {||$C$L232||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L232||       ; [] 
        ; BRANCHCC OCCURS {||$C$L232||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L233||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L233||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L232||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2696,column 2,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |2696| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_TI_return
        POP       {V1, V2, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	8
||$C$L233||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("disk_status")
	.dwattr $C$DW$352, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2696,column 2,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |2696| 
        BCS       ||$C$L238||           ; [DPU_3_PIPE] |2696| 
        ; BRANCHCC OCCURS {||$C$L238||}  ; [] |2696| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2671,column 3,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2671| 
        LSRS      A2, A1, #6            ; [DPU_3_PIPE] |2671| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2696,column 2,is_stmt,isa 1
        MOVCC     A1, #0                ; [DPU_3_PIPE] |2696| 
        BCC       ||$C$L238||           ; [DPU_3_PIPE] |2696| 
        ; BRANCHCC OCCURS {||$C$L238||}  ; [] |2696| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2673,column 4,is_stmt,isa 1
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |2673| 
        BCC       ||$C$L234||           ; [DPU_3_PIPE] |2673| 
        ; BRANCHCC OCCURS {||$C$L234||}  ; [] |2673| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2674,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |2674| 
        LDR       A3, [V4, #24]         ; [DPU_3_PIPE] |2674| 
        LDRB      A1, [A1, #1]          ; [DPU_3_PIPE] |2674| 
        ADD       A2, V4, #36           ; [DPU_3_PIPE] |2674| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |2674| 
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("disk_write")
	.dwattr $C$DW$353, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |2674| 
        ; CALL OCCURS {disk_write }      ; [] |2674| 
        CBNZ      A1, ||$C$L235||       ; [] 
        ; BRANCHCC OCCURS {||$C$L235||}  ; [] |2674| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2676,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2676| 
        AND       A1, A1, #191          ; [DPU_3_PIPE] |2676| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2676| 
;* --------------------------------------------------------------------------*
||$C$L234||:    
	.dwpsn	file "../utils/ff.c",line 2680,column 4,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |2680| 
        LDR       V2, [V4, #28]         ; [DPU_3_PIPE] |2680| 
        MOV       V1, A1                ; [DPU_3_PIPE] |2680| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L237||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L237||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("sync_window")
	.dwattr $C$DW$354, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L235||       ; [] 
        ; BRANCHCC OCCURS {||$C$L235||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("disk_read")
	.dwattr $C$DW$355, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBZ       A1, ||$C$L236||       ; [] 
        ; BRANCHCC OCCURS {||$C$L236||}  ; [] |768| 
;* --------------------------------------------------------------------------*
||$C$L235||:    
	.dwcfi	remember_state
	.dwpsn	file "../utils/ff.c",line 2696,column 2,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |2696| 
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_TI_return
        POP       {V1, V2, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 4
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
||$C$L236||:    
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L237||:    
	.dwpsn	file "../utils/ff.c",line 2682,column 5,is_stmt,isa 1
        LDR       V1, [V4, #32]         ; [DPU_3_PIPE] |2682| 
	.dwpsn	file "../utils/ff.c",line 2683,column 5,is_stmt,isa 1
        LDRB      A1, [V1, #11]         ; [DPU_3_PIPE] |2683| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |2683| 
        STRB      A1, [V1, #11]         ; [DPU_3_PIPE] |2683| 
	.dwpsn	file "../utils/ff.c",line 2684,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #12]         ; [DPU_3_PIPE] |2684| 
        STRB      A1, [V1, #28]         ; [DPU_3_PIPE] |2684| 
        LDRB      A1, [V4, #13]         ; [DPU_3_PIPE] |2684| 
        STRB      A1, [V1, #29]         ; [DPU_3_PIPE] |2684| 
        LDRB      A1, [V4, #14]         ; [DPU_3_PIPE] |2684| 
        STRB      A1, [V1, #30]         ; [DPU_3_PIPE] |2684| 
        LDRB      A1, [V4, #15]         ; [DPU_3_PIPE] |2684| 
        STRB      A1, [V1, #31]         ; [DPU_3_PIPE] |2684| 
	.dwpsn	file "../utils/ff.c",line 2685,column 5,is_stmt,isa 1
        LDR       A1, [V4, #16]         ; [DPU_3_PIPE] |2685| 
        ADD       A2, V1, #20           ; [DPU_3_PIPE] |2685| 
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      A1, [V1, #26]         ; [DPU_3_PIPE] |1261| 
        LSRS      A3, A1, #8            ; [DPU_3_PIPE] |1261| 
        STRB      A3, [A2, #7]          ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        LSRS      A3, A1, #16           ; [DPU_3_PIPE] |1262| 
        STRB      A3, [A2, #0]          ; [DPU_3_PIPE] |1262| 
        LSR       LR, A1, #24           ; [DPU_3_PIPE] |1262| 
        STRB      LR, [A2, #1]          ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 2686,column 5,is_stmt,isa 1
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("get_fattime")
	.dwattr $C$DW$357, DW_AT_TI_call
        BL        get_fattime           ; [DPU_3_PIPE] |2686| 
        ; CALL OCCURS {get_fattime }     ; [] |2686| 
	.dwpsn	file "../utils/ff.c",line 2687,column 5,is_stmt,isa 1
        STRB      A1, [V1, #22]         ; [DPU_3_PIPE] |2687| 
        LSRS      A2, A1, #8            ; [DPU_3_PIPE] |2687| 
        STRB      A2, [V1, #23]         ; [DPU_3_PIPE] |2687| 
        LSRS      V2, A1, #16           ; [DPU_3_PIPE] |2687| 
        STRB      V2, [V1, #24]         ; [DPU_3_PIPE] |2687| 
        LSR       LR, A1, #24           ; [DPU_3_PIPE] |2687| 
        STRB      LR, [V1, #25]         ; [DPU_3_PIPE] |2687| 
	.dwpsn	file "../utils/ff.c",line 2688,column 5,is_stmt,isa 1
        MOV       V9, #0                ; [DPU_3_PIPE] |2688| 
        STRB      V9, [V1, #18]         ; [DPU_3_PIPE] |2688| 
        STRB      V9, [V1, #19]         ; [DPU_3_PIPE] |2688| 
	.dwpsn	file "../utils/ff.c",line 2690,column 5,is_stmt,isa 1
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2690| 
	.dwpsn	file "../utils/ff.c",line 2689,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2689| 
        AND       A1, A1, #223          ; [DPU_3_PIPE] |2689| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2689| 
	.dwpsn	file "../utils/ff.c",line 2690,column 5,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |2690| 
        STRB      A4, [A2, #4]          ; [DPU_3_PIPE] |2690| 
	.dwpsn	file "../utils/ff.c",line 2691,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |2691| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("sync_fs")
	.dwattr $C$DW$358, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |2691| 
        ; CALL OCCURS {sync_fs }         ; [] |2691| 
;* --------------------------------------------------------------------------*
||$C$L238||:    
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_return
        POP       {V1, V2, V4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$342, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$342, DW_AT_TI_end_line(0xa89)
	.dwattr $C$DW$342, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$342

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_stat
	.thumb
	.global	f_stat

$C$DW$360	.dwtag  DW_TAG_subprogram, DW_AT_name("f_stat")
	.dwattr $C$DW$360, DW_AT_low_pc(f_stat)
	.dwattr $C$DW$360, DW_AT_high_pc(0x00)
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("f_stat")
	.dwattr $C$DW$360, DW_AT_external
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$360, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$360, DW_AT_TI_begin_line(0xc34)
	.dwattr $C$DW$360, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$360, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$360, DW_AT_decl_line(0xc34)
	.dwattr $C$DW$360, DW_AT_decl_column(0x09)
	.dwattr $C$DW$360, DW_AT_TI_max_frame_size(0x40)
	.dwpsn	file "../utils/ff.c",line 3128,column 1,is_stmt,address f_stat,isa 1

	.dwfde $C$DW$CIE, f_stat
$C$DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg0]
$C$DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fno")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_stat                                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 44 Auto + 20 Save = 64 byte                *
;*****************************************************************************
f_stat:
;* --------------------------------------------------------------------------*
;* A3    assigned to $O$C25
;* V4    assigned to $O$C26
;* A2    assigned to c
$C$DW$363	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg1]
$C$DW$364	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_breg13 0]
;* V5    assigned to fno
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("fno")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg8]
;* A1    assigned to res
$C$DW$366	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg0]
;* V9    assigned to p
$C$DW$367	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg12]
;* V4    assigned to dir
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg7]
;* A2    assigned to $O$L2
;* A3    assigned to $O$L1
;* A4    assigned to $O$U53
;* A4    assigned to $O$U27
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_breg13 4]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_breg13 32]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V3, V4, V5, LR}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 6, -16
	.dwcfi	save_reg_to_mem, 4, -20
        MOV       V5, A2                ; [DPU_3_PIPE] |3128| 
        SUB       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 64
	.dwpsn	file "../utils/ff.c",line 3134,column 2,is_stmt,isa 1
        MOVS      A3, #0                ; [DPU_3_PIPE] |3134| 
	.dwpsn	file "../utils/ff.c",line 3128,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3128| 
	.dwpsn	file "../utils/ff.c",line 3134,column 2,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3134| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3134| 
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("chk_mounted")
	.dwattr $C$DW$371, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3134| 
        ; CALL OCCURS {chk_mounted }     ; [] |3134| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3134| 
        BNE       ||$C$L245||           ; [DPU_3_PIPE] |3134| 
        ; BRANCHCC OCCURS {||$C$L245||}  ; [] |3134| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3136,column 3,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3136| 
	.dwpsn	file "../utils/ff.c",line 3137,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3137| 
	.dwpsn	file "../utils/ff.c",line 3136,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3136| 
	.dwpsn	file "../utils/ff.c",line 3137,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3137| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("follow_path")
	.dwattr $C$DW$372, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3137| 
        ; CALL OCCURS {follow_path }     ; [] |3137| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3137| 
        BNE       ||$C$L245||           ; [DPU_3_PIPE] |3137| 
        ; BRANCHCC OCCURS {||$C$L245||}  ; [] |3137| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3139,column 4,is_stmt,isa 1
        LDR       V4, [SP, #24]         ; [DPU_3_PIPE] |3139| 
        CMP       V4, #0                ; [DPU_3_PIPE] |3139| 
        BEQ       ||$C$L244||           ; [DPU_3_PIPE] |3139| 
        ; BRANCHCC OCCURS {||$C$L244||}  ; [] |3139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1908,column 2,is_stmt,isa 1
        LDR       V3, [SP, #20]         ; [DPU_3_PIPE] |1908| 
	.dwpsn	file "../utils/ff.c",line 1907,column 2,is_stmt,isa 1
        ADD       V9, V5, #9            ; [DPU_3_PIPE] |1907| 
	.dwpsn	file "../utils/ff.c",line 1908,column 2,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |1908| 
        BEQ       ||$C$L243||           ; [DPU_3_PIPE] |1908| 
        ; BRANCHCC OCCURS {||$C$L243||}  ; [] |1908| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1911,column 15,is_stmt,isa 1
        MOVS      A3, #8                ; [DPU_3_PIPE] |1911| 
        SUBS      A4, V4, #1            ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L239||
;*
;*   Loop source line                : 1911
;*   Loop closing brace source line  : 1923
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 8
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L239||:    
	.dwpsn	file "../utils/ff.c",line 1912,column 4,is_stmt,isa 1
        LDRB      A2, [A4, #1]!         ; [DPU_3_PIPE] |1912| 
        CMP       A2, #32               ; [DPU_3_PIPE] |1912| 
        BEQ       ||$C$L240||           ; [DPU_3_PIPE] |1912| 
        ; BRANCHCC OCCURS {||$C$L240||}  ; [] |1912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1914,column 4,is_stmt,isa 1
        CMP       A2, #5                ; [DPU_3_PIPE] |1914| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1914,column 19,is_stmt,isa 1
        MOVEQ     A2, #229              ; [DPU_3_PIPE] |1914| 
	.dwpsn	file "../utils/ff.c",line 1922,column 4,is_stmt,isa 1
        STRB      A2, [V9], #1          ; [DPU_3_PIPE] |1922| 
	.dwpsn	file "../utils/ff.c",line 1911,column 15,is_stmt,isa 1
        SUBS      A3, A3, #1            ; [DPU_3_PIPE] |1911| 
        BNE       ||$C$L239||           ; [DPU_3_PIPE] |1911| 
        ; BRANCHCC OCCURS {||$C$L239||}  ; [] |1911| 
;* --------------------------------------------------------------------------*
||$C$L240||:    
	.dwpsn	file "../utils/ff.c",line 1924,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #8]          ; [DPU_3_PIPE] |1924| 
        CMP       A2, #32               ; [DPU_3_PIPE] |1924| 
        BEQ       ||$C$L242||           ; [DPU_3_PIPE] |1924| 
        ; BRANCHCC OCCURS {||$C$L242||}  ; [] |1924| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1925,column 4,is_stmt,isa 1
        MOVS      A3, #46               ; [DPU_3_PIPE] |1925| 
        ADDS      A4, V4, #7            ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        MOVS      A2, #3                ; [DPU_3_PIPE] |1926| 
	.dwpsn	file "../utils/ff.c",line 1925,column 4,is_stmt,isa 1
        STRB      A3, [V9], #1          ; [DPU_3_PIPE] |1925| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L241||
;*
;*   Loop source line                : 1926
;*   Loop closing brace source line  : 1937
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 3
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L241||:    
	.dwpsn	file "../utils/ff.c",line 1928,column 19,is_stmt,isa 1
        LDRB      A3, [A4, #1]!         ; [DPU_3_PIPE] |1928| 
        CMP       A3, #32               ; [DPU_3_PIPE] |1928| 
        BEQ       ||$C$L242||           ; [DPU_3_PIPE] |1928| 
        ; BRANCHCC OCCURS {||$C$L242||}  ; [] |1928| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |1926| 
	.dwpsn	file "../utils/ff.c",line 1936,column 5,is_stmt,isa 1
        STRB      A3, [V9], #1          ; [DPU_3_PIPE] |1936| 
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        BNE       ||$C$L241||           ; [DPU_3_PIPE] |1926| 
        ; BRANCHCC OCCURS {||$C$L241||}  ; [] |1926| 
;* --------------------------------------------------------------------------*
||$C$L242||:    
	.dwpsn	file "../utils/ff.c",line 1939,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #11]         ; [DPU_3_PIPE] |1939| 
        STRB      A2, [V5, #8]          ; [DPU_3_PIPE] |1939| 
	.dwpsn	file "../utils/ff.c",line 1940,column 3,is_stmt,isa 1
        LDRB      V1, [V4, #31]         ; [DPU_3_PIPE] |1940| 
        LDRB      A4, [V4, #29]         ; [DPU_3_PIPE] |1940| 
        LDRB      A2, [V4, #30]         ; [DPU_3_PIPE] |1940| 
        LDRB      A3, [V4, #28]         ; [DPU_3_PIPE] |1940| 
        ORR       A2, A2, V1, LSL #8    ; [DPU_3_PIPE] |1940| 
        LSLS      A2, A2, #16           ; [DPU_3_PIPE] |1940| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |1940| 
        ORRS      A3, A3, A2            ; [DPU_3_PIPE] |1940| 
        STR       A3, [V5, #0]          ; [DPU_3_PIPE] |1940| 
	.dwpsn	file "../utils/ff.c",line 1941,column 3,is_stmt,isa 1
        LDRB      A3, [V4, #25]         ; [DPU_3_PIPE] |1941| 
        LDRB      A2, [V4, #24]         ; [DPU_3_PIPE] |1941| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |1941| 
        STRH      A2, [V5, #4]          ; [DPU_3_PIPE] |1941| 
	.dwpsn	file "../utils/ff.c",line 1942,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #22]         ; [DPU_3_PIPE] |1942| 
        LDRB      A3, [V4, #23]         ; [DPU_3_PIPE] |1942| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |1942| 
        STRH      A2, [V5, #6]          ; [DPU_3_PIPE] |1942| 
;* --------------------------------------------------------------------------*
||$C$L243||:    
	.dwpsn	file "../utils/ff.c",line 1944,column 2,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |1944| 
        STRB      A2, [V9, #0]          ; [DPU_3_PIPE] |1944| 
	.dwpsn	file "../utils/ff.c",line 3147,column 2,is_stmt,isa 1
        B         ||$C$L245||           ; [DPU_3_PIPE] |3147| 
        ; BRANCH OCCURS {||$C$L245||}    ; [] |3147| 
;* --------------------------------------------------------------------------*
||$C$L244||:    
	.dwpsn	file "../utils/ff.c",line 3142,column 5,is_stmt,isa 1
        MOVS      A1, #6                ; [DPU_3_PIPE] |3142| 
;* --------------------------------------------------------------------------*
||$C$L245||:    
        ADD       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_TI_return
        POP       {V1, V3, V4, V5, PC}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$360, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$360, DW_AT_TI_end_line(0xc4c)
	.dwattr $C$DW$360, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$360

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_rename
	.thumb
	.global	f_rename

$C$DW$374	.dwtag  DW_TAG_subprogram, DW_AT_name("f_rename")
	.dwattr $C$DW$374, DW_AT_low_pc(f_rename)
	.dwattr $C$DW$374, DW_AT_high_pc(0x00)
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("f_rename")
	.dwattr $C$DW$374, DW_AT_external
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$374, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$374, DW_AT_TI_begin_line(0xda9)
	.dwattr $C$DW$374, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$374, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$374, DW_AT_decl_line(0xda9)
	.dwattr $C$DW$374, DW_AT_decl_column(0x09)
	.dwattr $C$DW$374, DW_AT_TI_max_frame_size(0x78)
	.dwpsn	file "../utils/ff.c",line 3501,column 1,is_stmt,address f_rename,isa 1

	.dwfde $C$DW$CIE, f_rename
$C$DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path_old")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("path_old")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg0]
$C$DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path_new")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("path_new")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_rename                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V9,SP,LR,SR,D0,D0_hi,D1, *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 96 Auto + 24 Save = 120 byte               *
;*****************************************************************************
f_rename:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C26
;* A1    assigned to $O$C27
;* A1    assigned to $O$C28
;* A2    assigned to $O$C29
;* A1    assigned to $O$C30
;* A1    assigned to $O$C31
;* A2    assigned to $O$C32
;* A1    assigned to $O$C33
;* A1    assigned to $O$C34
;* V4    assigned to $O$K155
;* A1    assigned to s
$C$DW$377	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg0]
;* A1    assigned to cnt
$C$DW$378	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg0]
;* A3    assigned to d
$C$DW$379	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$380	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg1]
;* V2    assigned to fs
$C$DW$381	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg5]
;* V3    assigned to sector
$C$DW$382	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg6]
;* A1    assigned to res
$C$DW$383	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg0]
;* V1    assigned to n
$C$DW$384	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg4]
;* V1    assigned to fs
$C$DW$385	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg4]
;* V2    assigned to sector
$C$DW$386	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg5]
;* V9    assigned to d
$C$DW$387	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg12]
;* A3    assigned to d
$C$DW$388	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$389	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg1]
;* A1    assigned to res
$C$DW$390	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg0]
;* A3    assigned to d
$C$DW$391	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg2]
;* A1    assigned to cl
$C$DW$392	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg0]
;* V3    assigned to sector
$C$DW$393	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg6]
;* V1    assigned to fs
$C$DW$394	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg4]
;* V2    assigned to sector
$C$DW$395	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg5]
;* A1    assigned to res
$C$DW$396	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg0]
;* V5    assigned to path_new
$C$DW$397	.dwtag  DW_TAG_variable, DW_AT_name("path_new")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("path_new")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg8]
$C$DW$398	.dwtag  DW_TAG_variable, DW_AT_name("path_old")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("path_old")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_breg13 0]
;* A1    assigned to dw
$C$DW$399	.dwtag  DW_TAG_variable, DW_AT_name("dw")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("dw")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg0]
;* A2    assigned to dir
$C$DW$400	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg1]
;* A2    assigned to dir
$C$DW$401	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg1]
;* A1    assigned to res
$C$DW$402	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_reg0]
;* A1    assigned to $O$v3
;* V9    assigned to $O$v4
;* V1    assigned to $O$v2
;* A2    assigned to $O$v2
$C$DW$403	.dwtag  DW_TAG_variable, DW_AT_name("djo")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("djo")
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$403, DW_AT_location[DW_OP_breg13 4]
$C$DW$404	.dwtag  DW_TAG_variable, DW_AT_name("djn")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("djn")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$404, DW_AT_location[DW_OP_breg13 32]
$C$DW$405	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_breg13 60]
$C$DW$406	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_breg13 84]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 8, -8
	.dwcfi	save_reg_to_mem, 7, -12
	.dwcfi	save_reg_to_mem, 6, -16
	.dwcfi	save_reg_to_mem, 5, -20
	.dwcfi	save_reg_to_mem, 4, -24
        MOV       V5, A2                ; [DPU_3_PIPE] |3501| 
        SUB       SP, SP, #96           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 120
	.dwpsn	file "../utils/ff.c",line 3509,column 2,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3509| 
	.dwpsn	file "../utils/ff.c",line 3501,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3501| 
	.dwpsn	file "../utils/ff.c",line 3509,column 2,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3509| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3509| 
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("chk_mounted")
	.dwattr $C$DW$407, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3509| 
        ; CALL OCCURS {chk_mounted }     ; [] |3509| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3509| 
        BNE       ||$C$L271||           ; [DPU_3_PIPE] |3509| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |3509| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3512,column 3,is_stmt,isa 1
        ADD       A1, SP, #84           ; [DPU_3_PIPE] |3512| 
	.dwpsn	file "../utils/ff.c",line 3511,column 3,is_stmt,isa 1
        LDR       LR, [SP, #4]          ; [DPU_3_PIPE] |3511| 
	.dwpsn	file "../utils/ff.c",line 3512,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3512| 
	.dwpsn	file "../utils/ff.c",line 3513,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3513| 
	.dwpsn	file "../utils/ff.c",line 3511,column 3,is_stmt,isa 1
        STR       LR, [SP, #32]         ; [DPU_3_PIPE] |3511| 
	.dwpsn	file "../utils/ff.c",line 3513,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3513| 
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("follow_path")
	.dwattr $C$DW$408, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3513| 
        ; CALL OCCURS {follow_path }     ; [] |3513| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3513| 
        BNE       ||$C$L271||           ; [DPU_3_PIPE] |3513| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |3513| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3520,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |3520| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3520| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3562,column 2,is_stmt,isa 1
        MOVEQ     A1, #4                ; [DPU_3_PIPE] |3562| 
        BEQ       ||$C$L271||           ; [DPU_3_PIPE] |3562| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |3562| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A2, [A1, #11]         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADDS      A1, A1, #11           ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A2, [SP, #60]         ; [DPU_3_PIPE] |551| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #61]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #62]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #63]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #64]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #65]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #66]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #67]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #68]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #69]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #70]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #71]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #72]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #73]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #74]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #75]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #76]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #77]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #78]         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A2, [SP, #79]         ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A1, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       A3, SP, #32           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 3524,column 5,is_stmt,isa 1
        MOVS      A1, #28               ; [DPU_3_PIPE] |3524| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A4, [SP, #80]         ; [DPU_3_PIPE] |551| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L246||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 7
;*   Known Maximum Trip Count        : 7
;*   Known Max Trip Count Factor     : 7
;* --------------------------------------------------------------------------*
	.align	8
||$C$L246||:    
        LDR       A4, [A2], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A1, A1, #4            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STR       A4, [A3], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L246||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L246||}  ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3525,column 5,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3525| 
        MOV       A2, V5                ; [DPU_3_PIPE] |3525| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("follow_path")
	.dwattr $C$DW$409, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3525| 
        ; CALL OCCURS {follow_path }     ; [] |3525| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3525| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3562,column 2,is_stmt,isa 1
        MOVEQ     A1, #8                ; [DPU_3_PIPE] |3562| 
        BEQ       ||$C$L271||           ; [DPU_3_PIPE] |3562| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |3562| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3527,column 5,is_stmt,isa 1
        CMP       A1, #4                ; [DPU_3_PIPE] |3527| 
        BNE       ||$C$L271||           ; [DPU_3_PIPE] |3527| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |3527| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1214,column 2,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |1214| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |1214| 
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("dir_sdi")
	.dwattr $C$DW$410, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1214| 
        ; CALL OCCURS {dir_sdi }         ; [] |1214| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1214| 
        BNE       ||$C$L252||           ; [DPU_3_PIPE] |1214| 
        ; BRANCHCC OCCURS {||$C$L252||}  ; [] |1214| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1216,column 3,is_stmt,isa 1
        MOVS      V1, #0                ; [DPU_3_PIPE] |1216| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L247||
;*
;*   Loop source line                : 1217
;*   Loop closing brace source line  : 1226
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L247||:    
	.dwpsn	file "../utils/ff.c",line 1218,column 4,is_stmt,isa 1
        LDR       A1, [SP, #32]         ; [DPU_3_PIPE] |1218| 
        LDR       V3, [SP, #48]         ; [DPU_3_PIPE] |1218| 
        MOV       V2, A1                ; [DPU_3_PIPE] |1218| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V2, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V3                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L248||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L248||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("sync_window")
	.dwattr $C$DW$411, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L251||       ; [] 
        ; BRANCHCC OCCURS {||$C$L251||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V2, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V2, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V3                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("disk_read")
	.dwattr $C$DW$412, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L251||       ; [] 
        ; BRANCHCC OCCURS {||$C$L251||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V3, [V2, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L248||:    
	.dwpsn	file "../utils/ff.c",line 1220,column 4,is_stmt,isa 1
        LDR       A1, [SP, #52]         ; [DPU_3_PIPE] |1220| 
        LDRB      A2, [A1, #0]          ; [DPU_3_PIPE] |1220| 
        CMP       A2, #229              ; [DPU_3_PIPE] |1220| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOV       A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 1220,column 4,is_stmt,isa 1
        BEQ       ||$C$L249||           ; [DPU_3_PIPE] |1220| 
        ; BRANCHCC OCCURS {||$C$L249||}  ; [] |1220| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_3_PIPE] |1220| 
        IT        NE                    ; [DPU_3_PIPE] 
        MOVNE     V1, A1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1223,column 5,is_stmt,isa 1
        BNE       ||$C$L250||           ; [DPU_3_PIPE] |1223| 
        ; BRANCHCC OCCURS {||$C$L250||}  ; [] |1223| 
;* --------------------------------------------------------------------------*
||$C$L249||:    
        CBZ       V1, ||$C$L252||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1221,column 22,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L252||}  ; [] |1221| 
;* --------------------------------------------------------------------------*
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |1221| 
;* --------------------------------------------------------------------------*
||$C$L250||:    
	.dwpsn	file "../utils/ff.c",line 1225,column 4,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |1225| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |1225| 
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("dir_next")
	.dwattr $C$DW$413, DW_AT_TI_call
        BL        dir_next              ; [DPU_3_PIPE] |1225| 
        ; CALL OCCURS {dir_next }        ; [] |1225| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1225| 
        BEQ       ||$C$L247||           ; [DPU_3_PIPE] |1225| 
        ; BRANCHCC OCCURS {||$C$L247||}  ; [] |1225| 
;* --------------------------------------------------------------------------*
        B         ||$C$L252||           ; [DPU_3_PIPE] |1225| 
        ; BRANCH OCCURS {||$C$L252||}    ; [] |1225| 
;* --------------------------------------------------------------------------*
||$C$L251||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
;* --------------------------------------------------------------------------*
||$C$L252||:    
	.dwpsn	file "../utils/ff.c",line 1228,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |1228| 
        BNE       ||$C$L256||           ; [DPU_3_PIPE] |1228| 
        ; BRANCHCC OCCURS {||$C$L256||}  ; [] |1228| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1619,column 3,is_stmt,isa 1
        LDR       A1, [SP, #32]         ; [DPU_3_PIPE] |1619| 
        LDR       V2, [SP, #48]         ; [DPU_3_PIPE] |1619| 
        MOV       V1, A1                ; [DPU_3_PIPE] |1619| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L254||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L254||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("sync_window")
	.dwattr $C$DW$414, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L253||       ; [] 
        ; BRANCHCC OCCURS {||$C$L253||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("disk_read")
	.dwattr $C$DW$415, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        ITT       EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STREQ     V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
        LDREQ     V9, [SP, #52]         ; [DPU_3_PIPE] |770| 
        BEQ       ||$C$L255||           ; [DPU_3_PIPE] |770| 
        ; BRANCHCC OCCURS {||$C$L255||}  ; [] |770| 
;* --------------------------------------------------------------------------*
||$C$L253||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
	.dwpsn	file "../utils/ff.c",line 1630,column 2,is_stmt,isa 1
        B         ||$C$L256||           ; [DPU_3_PIPE] |1630| 
        ; BRANCH OCCURS {||$C$L256||}    ; [] |1630| 
;* --------------------------------------------------------------------------*
||$C$L254||:    
        LDR       V9, [SP, #52]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L255||:    
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9, #0]          ; [DPU_3_PIPE] |560| 
        ADD       LR, V9, #1            ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [LR, #0]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        LDR       A2, [SP, #56]         ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        LDR       A3, [SP, #52]         ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A2, #0]          ; [DPU_3_PIPE] |551| 
        STRB      A2, [A3, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 1626,column 4,is_stmt,isa 1
        LDR       A2, [SP, #32]         ; [DPU_3_PIPE] |1626| 
        MOV       V5, #1                ; [DPU_3_PIPE] |1626| 
        STRB      V5, [A2, #4]          ; [DPU_3_PIPE] |1626| 
;* --------------------------------------------------------------------------*
||$C$L256||:    
	.dwpsn	file "../utils/ff.c",line 1630,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |1630| 
        BNE       ||$C$L271||           ; [DPU_3_PIPE] |1630| 
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |1630| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3531,column 7,is_stmt,isa 1
        LDR       A2, [SP, #52]         ; [DPU_3_PIPE] |3531| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A3, [SP, #62]         ; [DPU_3_PIPE] |551| 
        STRB      A3, [A2, #13]         ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #63]         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       A3, A2, #13           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        ADDS      A3, A3, #1            ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #64]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #65]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #66]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #67]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #68]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #69]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #70]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #71]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #72]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #73]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #74]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #75]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #76]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #77]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #78]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #79]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [SP, #80]         ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 3533,column 7,is_stmt,isa 1
        LDRB      A3, [SP, #60]         ; [DPU_3_PIPE] |3533| 
	.dwpsn	file "../utils/ff.c",line 3531,column 7,is_stmt,isa 1
        ADDS      A2, A2, #11           ; [DPU_3_PIPE] |3531| 
	.dwpsn	file "../utils/ff.c",line 3533,column 7,is_stmt,isa 1
        ORR       A3, A3, #32           ; [DPU_3_PIPE] |3533| 
        STRB      A3, [A2, #0]          ; [DPU_3_PIPE] |3533| 
	.dwpsn	file "../utils/ff.c",line 3534,column 7,is_stmt,isa 1
        LDR       V1, [SP, #4]          ; [DPU_3_PIPE] |3534| 
        MOVS      V4, #1                ; [DPU_3_PIPE] |3534| 
        STRB      V4, [V1, #4]          ; [DPU_3_PIPE] |3534| 
	.dwpsn	file "../utils/ff.c",line 3535,column 7,is_stmt,isa 1
        LDR       A3, [SP, #40]         ; [DPU_3_PIPE] |3535| 
        LDR       A4, [SP, #12]         ; [DPU_3_PIPE] |3535| 
        CMP       A3, A4                ; [DPU_3_PIPE] |3535| 
        BEQ       ||$C$L257||           ; [DPU_3_PIPE] |3535| 
        ; BRANCHCC OCCURS {||$C$L257||}  ; [] |3535| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [A2, #0]          ; [DPU_3_PIPE] |3535| 
        LSRS      A3, A3, #5            ; [DPU_3_PIPE] |3535| 
        BCS       ||$C$L258||           ; [DPU_3_PIPE] |3535| 
        ; BRANCHCC OCCURS {||$C$L258||}  ; [] |3535| 
;* --------------------------------------------------------------------------*
||$C$L257||:    
	.dwpsn	file "../utils/ff.c",line 3549,column 7,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3549| 
        BEQ       ||$C$L266||           ; [DPU_3_PIPE] |3549| 
        ; BRANCHCC OCCURS {||$C$L266||}  ; [] |3549| 
;* --------------------------------------------------------------------------*
        B         ||$C$L271||           ; [DPU_3_PIPE] |3549| 
        ; BRANCH OCCURS {||$C$L271||}    ; [] |3549| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L258||:    
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A3, [V1, #0]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A4, [A2, #16]         ; [DPU_3_PIPE] |1246| 
        LDRB      A1, [A2, #15]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        CMP       A3, #3                ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        BNE       ||$C$L259||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L259||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A3, [A2, #10]         ; [DPU_3_PIPE] |1248| 
        LDRB      A2, [A2, #9]          ; [DPU_3_PIPE] |1248| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       A1, A1, A2, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L259||:    
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A2, [V1, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, A1                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L260||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L260||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3537,column 8,is_stmt,isa 1
        LDRB      A3, [V1, #2]          ; [DPU_3_PIPE] |3537| 
        LDR       A2, [V1, #44]         ; [DPU_3_PIPE] |3537| 
        MLA       A1, A1, A3, A2        ; [DPU_3_PIPE] |3537| 
        CBNZ      A1, ||$C$L261||       ; [] 
        ; BRANCHCC OCCURS {||$C$L261||}  ; [] |3537| 
;* --------------------------------------------------------------------------*
||$C$L260||:    
	.dwpsn	file "../utils/ff.c",line 3562,column 2,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |3562| 
        B         ||$C$L271||           ; [DPU_3_PIPE] |3562| 
        ; BRANCH OCCURS {||$C$L271||}    ; [] |3562| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L261||:    
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 3540,column 9,is_stmt,isa 1
        MOV       V3, A1                ; [DPU_3_PIPE] |3540| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A2, V3                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L264||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L264||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("sync_window")
	.dwattr $C$DW$416, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L262||       ; [] 
        ; BRANCHCC OCCURS {||$C$L262||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V3                ; [DPU_3_PIPE] |768| 
        MOV       A4, V4                ; [DPU_3_PIPE] |768| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("disk_read")
	.dwattr $C$DW$417, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBZ       A1, ||$C$L263||       ; [] 
        ; BRANCHCC OCCURS {||$C$L263||}  ; [] |768| 
;* --------------------------------------------------------------------------*
||$C$L262||:    
        MOV       A1, V4                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3562,column 2,is_stmt,isa 1
        B         ||$C$L271||           ; [DPU_3_PIPE] |3562| 
        ; BRANCH OCCURS {||$C$L271||}    ; [] |3562| 
;* --------------------------------------------------------------------------*
||$C$L263||:    
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V3, [V1, #48]         ; [DPU_3_PIPE] |770| 
        LDR       V1, [SP, #4]          ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L264||:    
	.dwpsn	file "../utils/ff.c",line 3542,column 9,is_stmt,isa 1
        LDRB      A1, [V1, #85]         ; [DPU_3_PIPE] |3542| 
	.dwpsn	file "../utils/ff.c",line 3541,column 9,is_stmt,isa 1
        ADD       A2, V1, #104          ; [DPU_3_PIPE] |3541| 
	.dwpsn	file "../utils/ff.c",line 3542,column 9,is_stmt,isa 1
        CMP       A1, #46               ; [DPU_3_PIPE] |3542| 
        BNE       ||$C$L266||           ; [DPU_3_PIPE] |3542| 
        ; BRANCHCC OCCURS {||$C$L266||}  ; [] |3542| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3543,column 10,is_stmt,isa 1
        LDRB      A3, [V1, #0]          ; [DPU_3_PIPE] |3543| 
        LDR       A1, [SP, #40]         ; [DPU_3_PIPE] |3543| 
        CMP       A3, #3                ; [DPU_3_PIPE] |3543| 
        BNE       ||$C$L265||           ; [DPU_3_PIPE] |3543| 
        ; BRANCHCC OCCURS {||$C$L265||}  ; [] |3543| 
;* --------------------------------------------------------------------------*
        LDR       A3, [V1, #40]         ; [DPU_3_PIPE] |3543| 
        CMP       A3, A1                ; [DPU_3_PIPE] |3543| 
        IT        EQ                    ; [DPU_3_PIPE] 
        MOVEQ     A1, #0                ; [DPU_3_PIPE] |3543| 
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      A1, [A2, #6]          ; [DPU_3_PIPE] |1261| 
        LSRS      A3, A1, #8            ; [DPU_3_PIPE] |1261| 
        STRB      A3, [A2, #7]          ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        LSR       LR, A1, #16           ; [DPU_3_PIPE] |1262| 
        STRB      LR, [A2, #0]          ; [DPU_3_PIPE] |1262| 
        LSR       V9, A1, #24           ; [DPU_3_PIPE] |1262| 
        STRB      V9, [A2, #1]          ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 3545,column 10,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3545| 
        STRB      V4, [A1, #4]          ; [DPU_3_PIPE] |3545| 
	.dwpsn	file "../utils/ff.c",line 3549,column 7,is_stmt,isa 1
        B         ||$C$L266||           ; [DPU_3_PIPE] |3549| 
        ; BRANCH OCCURS {||$C$L266||}    ; [] |3549| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L265||:    
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      A1, [A2, #6]          ; [DPU_3_PIPE] |1261| 
        LSRS      A3, A1, #8            ; [DPU_3_PIPE] |1261| 
        STRB      A3, [A2, #7]          ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        LSR       LR, A1, #16           ; [DPU_3_PIPE] |1262| 
        STRB      LR, [A2, #0]          ; [DPU_3_PIPE] |1262| 
        LSR       V9, A1, #24           ; [DPU_3_PIPE] |1262| 
        STRB      V9, [A2, #1]          ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 3545,column 10,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3545| 
        STRB      V4, [A1, #4]          ; [DPU_3_PIPE] |3545| 
;* --------------------------------------------------------------------------*
||$C$L266||:    
	.dwpsn	file "../utils/ff.c",line 1665,column 2,is_stmt,isa 1
        LDRH      A2, [SP, #10]         ; [DPU_3_PIPE] |1665| 
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1665| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("dir_sdi")
	.dwattr $C$DW$418, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1665| 
        ; CALL OCCURS {dir_sdi }         ; [] |1665| 
        CBNZ      A1, ||$C$L269||       ; [] 
        ; BRANCHCC OCCURS {||$C$L269||}  ; [] |1665| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1667,column 3,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |1667| 
        LDR       V2, [SP, #20]         ; [DPU_3_PIPE] |1667| 
        MOV       V1, A1                ; [DPU_3_PIPE] |1667| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V2                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L268||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L268||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("sync_window")
	.dwattr $C$DW$419, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L267||       ; [] 
        ; BRANCHCC OCCURS {||$C$L267||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOV       A4, V4                ; [DPU_3_PIPE] |768| 
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("disk_read")
	.dwattr $C$DW$420, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STREQ     V2, [V1, #48]         ; [DPU_3_PIPE] |770| 
        BEQ       ||$C$L268||           ; [DPU_3_PIPE] |770| 
        ; BRANCHCC OCCURS {||$C$L268||}  ; [] |770| 
;* --------------------------------------------------------------------------*
||$C$L267||:    
	.dwpsn	file "../utils/ff.c",line 1668,column 3,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1668| 
        MOV       A1, V4                ; [DPU_3_PIPE] |1668| 
        B         ||$C$L270||           ; [DPU_3_PIPE] |1668| 
        ; BRANCH OCCURS {||$C$L270||}    ; [] |1668| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L268||:    
	.dwpsn	file "../utils/ff.c",line 1669,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |1669| 
        MOVS      A2, #229              ; [DPU_3_PIPE] |1669| 
        STRB      A2, [A1, #0]          ; [DPU_3_PIPE] |1669| 
	.dwpsn	file "../utils/ff.c",line 1670,column 4,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1670| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 1670,column 4,is_stmt,isa 1
        STRB      V4, [A2, #4]          ; [DPU_3_PIPE] |1670| 
        B         ||$C$L270||           ; [DPU_3_PIPE] |1670| 
        ; BRANCH OCCURS {||$C$L270||}    ; [] |1670| 
;* --------------------------------------------------------------------------*
||$C$L269||:    
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L270||:    
        CBNZ      A1, ||$C$L271||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1675,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L271||}  ; [] |1675| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3552,column 9,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |3552| 
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("sync_fs")
	.dwattr $C$DW$421, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |3552| 
        ; CALL OCCURS {sync_fs }         ; [] |3552| 
;* --------------------------------------------------------------------------*
||$C$L271||:    
        ADD       SP, SP, #96           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$374, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$374, DW_AT_TI_end_line(0xdeb)
	.dwattr $C$DW$374, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$374

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_readdir
	.thumb
	.global	f_readdir

$C$DW$423	.dwtag  DW_TAG_subprogram, DW_AT_name("f_readdir")
	.dwattr $C$DW$423, DW_AT_low_pc(f_readdir)
	.dwattr $C$DW$423, DW_AT_high_pc(0x00)
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("f_readdir")
	.dwattr $C$DW$423, DW_AT_external
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$423, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$423, DW_AT_TI_begin_line(0xc0a)
	.dwattr $C$DW$423, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$423, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$423, DW_AT_decl_line(0xc0a)
	.dwattr $C$DW$423, DW_AT_decl_column(0x09)
	.dwattr $C$DW$423, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../utils/ff.c",line 3086,column 1,is_stmt,address f_readdir,isa 1

	.dwfde $C$DW$CIE, f_readdir
$C$DW$424	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$424, DW_AT_location[DW_OP_reg0]
$C$DW$425	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fno")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_readdir                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V9,SP,LR,SR,D0,D0_hi,D1,    *
;*                           D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,   *
;*                           D6_hi,D7,D7_hi,FPEXC,FPSCR                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 20 Save = 32 byte                *
;*****************************************************************************
f_readdir:
;* --------------------------------------------------------------------------*
;* A2    assigned to $O$C15
;* A1    assigned to $O$C16
;* A1    assigned to $O$C17
;* A2    assigned to $O$C18
;* A2    assigned to $O$C19
;* A1    assigned to $O$v3
;* A2    assigned to $O$v2
;* A1    assigned to $O$v1
;* A1    assigned to res
$C$DW$426	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$426, DW_AT_location[DW_OP_reg0]
;* A1    assigned to c
$C$DW$427	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("c")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_reg0]
;* A2    assigned to $O$R1
;* V4    assigned to dj
$C$DW$428	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg7]
;* V3    assigned to fno
$C$DW$429	.dwtag  DW_TAG_variable, DW_AT_name("fno")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("fno")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_reg6]
;* V3    assigned to i
$C$DW$430	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_reg6]
;* A2    assigned to clst
$C$DW$431	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_reg1]
;* A3    assigned to p
$C$DW$432	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$432, DW_AT_location[DW_OP_reg2]
;* A4    assigned to dir
$C$DW$433	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$433, DW_AT_location[DW_OP_reg3]
;* A1    assigned to $O$L2
;* A2    assigned to $O$L1
;* V1    assigned to $O$U78
;* V1    assigned to $O$U53
$C$DW$434	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$434, DW_AT_location[DW_OP_breg13 0]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, LR}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 6, -12
	.dwcfi	save_reg_to_mem, 5, -16
	.dwcfi	save_reg_to_mem, 4, -20
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |2242| 
	.dwpsn	file "../utils/ff.c",line 3086,column 1,is_stmt,isa 1
        MOV       V3, A2                ; [DPU_3_PIPE] |3086| 
        SUB       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        BEQ       ||$C$L272||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L272||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L272||       ; [] 
        ; BRANCHCC OCCURS {||$C$L272||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L272||       ; [] 
        ; BRANCHCC OCCURS {||$C$L272||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L273||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L273||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L272||:    
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |3114| 
        B         ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCH OCCURS {||$C$L289||}    ; [] |3114| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L273||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("disk_status")
	.dwattr $C$DW$435, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |3114| 
        BCS       ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCHCC OCCURS {||$C$L289||}  ; [] |3114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3093,column 3,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |3093| 
        BEQ       ||$C$L288||           ; [DPU_3_PIPE] |3093| 
        ; BRANCHCC OCCURS {||$C$L288||}  ; [] |3093| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3096,column 4,is_stmt,isa 1
        STR       SP, [V4, #24]         ; [DPU_3_PIPE] |3096| 
	.dwpsn	file "../utils/ff.c",line 3097,column 4,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3097| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("dir_read")
	.dwattr $C$DW$436, DW_AT_TI_call
        BL        dir_read              ; [DPU_3_PIPE] |3097| 
        ; CALL OCCURS {dir_read }        ; [] |3097| 
        CMP       A1, #4                ; [DPU_3_PIPE] |3097| 
        BEQ       ||$C$L274||           ; [DPU_3_PIPE] |3097| 
        ; BRANCHCC OCCURS {||$C$L274||}  ; [] |3097| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3102,column 4,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3102| 
        BNE       ||$C$L289||           ; [DPU_3_PIPE] |3102| 
        ; BRANCHCC OCCURS {||$C$L289||}  ; [] |3102| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V4, #16]         ; [DPU_3_PIPE] 
        B         ||$C$L275||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L275||}    ; [] 
;* --------------------------------------------------------------------------*
||$C$L274||:    
	.dwpsn	file "../utils/ff.c",line 3099,column 5,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |3099| 
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |3099| 
;* --------------------------------------------------------------------------*
||$C$L275||:    
	.dwpsn	file "../utils/ff.c",line 1908,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |1908| 
	.dwpsn	file "../utils/ff.c",line 1907,column 2,is_stmt,isa 1
        ADD       A3, V3, #9            ; [DPU_3_PIPE] |1907| 
	.dwpsn	file "../utils/ff.c",line 1908,column 2,is_stmt,isa 1
        BEQ       ||$C$L280||           ; [DPU_3_PIPE] |1908| 
        ; BRANCHCC OCCURS {||$C$L280||}  ; [] |1908| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1909,column 3,is_stmt,isa 1
        LDR       A4, [V4, #20]         ; [DPU_3_PIPE] |1909| 
	.dwpsn	file "../utils/ff.c",line 1911,column 15,is_stmt,isa 1
        MOVS      A2, #8                ; [DPU_3_PIPE] |1911| 
        SUBS      V1, A4, #1            ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L276||
;*
;*   Loop source line                : 1911
;*   Loop closing brace source line  : 1923
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 8
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L276||:    
	.dwpsn	file "../utils/ff.c",line 1912,column 4,is_stmt,isa 1
        LDRB      A1, [V1, #1]!         ; [DPU_3_PIPE] |1912| 
        CMP       A1, #32               ; [DPU_3_PIPE] |1912| 
        BEQ       ||$C$L277||           ; [DPU_3_PIPE] |1912| 
        ; BRANCHCC OCCURS {||$C$L277||}  ; [] |1912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1914,column 4,is_stmt,isa 1
        CMP       A1, #5                ; [DPU_3_PIPE] |1914| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1914,column 19,is_stmt,isa 1
        MOVEQ     A1, #229              ; [DPU_3_PIPE] |1914| 
	.dwpsn	file "../utils/ff.c",line 1922,column 4,is_stmt,isa 1
        STRB      A1, [A3], #1          ; [DPU_3_PIPE] |1922| 
	.dwpsn	file "../utils/ff.c",line 1911,column 15,is_stmt,isa 1
        SUBS      A2, A2, #1            ; [DPU_3_PIPE] |1911| 
        BNE       ||$C$L276||           ; [DPU_3_PIPE] |1911| 
        ; BRANCHCC OCCURS {||$C$L276||}  ; [] |1911| 
;* --------------------------------------------------------------------------*
||$C$L277||:    
	.dwpsn	file "../utils/ff.c",line 1924,column 3,is_stmt,isa 1
        LDRB      A1, [A4, #8]          ; [DPU_3_PIPE] |1924| 
        CMP       A1, #32               ; [DPU_3_PIPE] |1924| 
        BEQ       ||$C$L279||           ; [DPU_3_PIPE] |1924| 
        ; BRANCHCC OCCURS {||$C$L279||}  ; [] |1924| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1925,column 4,is_stmt,isa 1
        MOVS      A2, #46               ; [DPU_3_PIPE] |1925| 
        ADDS      V1, A4, #7            ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        MOVS      A1, #3                ; [DPU_3_PIPE] |1926| 
	.dwpsn	file "../utils/ff.c",line 1925,column 4,is_stmt,isa 1
        STRB      A2, [A3], #1          ; [DPU_3_PIPE] |1925| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L278||
;*
;*   Loop source line                : 1926
;*   Loop closing brace source line  : 1937
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 3
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L278||:    
	.dwpsn	file "../utils/ff.c",line 1928,column 19,is_stmt,isa 1
        LDRB      A2, [V1, #1]!         ; [DPU_3_PIPE] |1928| 
        CMP       A2, #32               ; [DPU_3_PIPE] |1928| 
        BEQ       ||$C$L279||           ; [DPU_3_PIPE] |1928| 
        ; BRANCHCC OCCURS {||$C$L279||}  ; [] |1928| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1926| 
	.dwpsn	file "../utils/ff.c",line 1936,column 5,is_stmt,isa 1
        STRB      A2, [A3], #1          ; [DPU_3_PIPE] |1936| 
	.dwpsn	file "../utils/ff.c",line 1926,column 16,is_stmt,isa 1
        BNE       ||$C$L278||           ; [DPU_3_PIPE] |1926| 
        ; BRANCHCC OCCURS {||$C$L278||}  ; [] |1926| 
;* --------------------------------------------------------------------------*
||$C$L279||:    
	.dwpsn	file "../utils/ff.c",line 1939,column 3,is_stmt,isa 1
        LDRB      A1, [A4, #11]         ; [DPU_3_PIPE] |1939| 
        STRB      A1, [V3, #8]          ; [DPU_3_PIPE] |1939| 
	.dwpsn	file "../utils/ff.c",line 1940,column 3,is_stmt,isa 1
        LDRB      V2, [A4, #31]         ; [DPU_3_PIPE] |1940| 
        LDRB      V1, [A4, #29]         ; [DPU_3_PIPE] |1940| 
        LDRB      A1, [A4, #30]         ; [DPU_3_PIPE] |1940| 
        LDRB      A2, [A4, #28]         ; [DPU_3_PIPE] |1940| 
        ORR       A1, A1, V2, LSL #8    ; [DPU_3_PIPE] |1940| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |1940| 
        ORR       A1, A1, V1, LSL #8    ; [DPU_3_PIPE] |1940| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |1940| 
        STR       A2, [V3, #0]          ; [DPU_3_PIPE] |1940| 
	.dwpsn	file "../utils/ff.c",line 1941,column 3,is_stmt,isa 1
        LDRB      A2, [A4, #25]         ; [DPU_3_PIPE] |1941| 
        LDRB      A1, [A4, #24]         ; [DPU_3_PIPE] |1941| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |1941| 
        STRH      A1, [V3, #4]          ; [DPU_3_PIPE] |1941| 
	.dwpsn	file "../utils/ff.c",line 1942,column 3,is_stmt,isa 1
        LDRB      A1, [A4, #22]         ; [DPU_3_PIPE] |1942| 
        LDRB      A2, [A4, #23]         ; [DPU_3_PIPE] |1942| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |1942| 
        STRH      A1, [V3, #6]          ; [DPU_3_PIPE] |1942| 
;* --------------------------------------------------------------------------*
||$C$L280||:    
	.dwpsn	file "../utils/ff.c",line 1944,column 2,is_stmt,isa 1
        MOVS      V1, #0                ; [DPU_3_PIPE] |1944| 
        STRB      V1, [A3, #0]          ; [DPU_3_PIPE] |1944| 
	.dwpsn	file "../utils/ff.c",line 1146,column 2,is_stmt,isa 1
        LDRH      A1, [V4, #6]          ; [DPU_3_PIPE] |1146| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1146| 
        UXTH      V3, A1                ; [DPU_3_PIPE] |1146| 
        CBZ       V3, ||$C$L282||       ; [] 
        ; BRANCHCC OCCURS {||$C$L282||}  ; [] |1146| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1147,column 2,is_stmt,isa 1
        LDR       A1, [V4, #16]         ; [DPU_3_PIPE] |1147| 
        CBZ       A1, ||$C$L282||       ; [] 
        ; BRANCHCC OCCURS {||$C$L282||}  ; [] |1147| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1150,column 2,is_stmt,isa 1
        TST       V3, #15               ; [DPU_3_PIPE] |1150| 
        BNE       ||$C$L286||           ; [DPU_3_PIPE] |1150| 
        ; BRANCHCC OCCURS {||$C$L286||}  ; [] |1150| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |1151| 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        LDR       A2, [V4, #12]         ; [DPU_3_PIPE] |1153| 
	.dwpsn	file "../utils/ff.c",line 1151,column 3,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |1151| 
        CBNZ      A2, ||$C$L281||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1153,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L281||}  ; [] |1153| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1154,column 4,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |1154| 
        LDRH      A2, [A1, #8]          ; [DPU_3_PIPE] |1154| 
        CMP       A2, V3                ; [DPU_3_PIPE] |1154| 
        BLE       ||$C$L282||           ; [DPU_3_PIPE] |1154| 
        ; BRANCHCC OCCURS {||$C$L282||}  ; [] |1154| 
;* --------------------------------------------------------------------------*
        B         ||$C$L287||           ; [DPU_3_PIPE] |1154| 
        ; BRANCH OCCURS {||$C$L287||}    ; [] |1154| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L281||:    
	.dwpsn	file "../utils/ff.c",line 1158,column 4,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |1158| 
        LDRB      A3, [A1, #2]          ; [DPU_3_PIPE] |1158| 
        SUBS      A3, A3, #1            ; [DPU_3_PIPE] |1158| 
        TST       A3, V3, ASR #4        ; [DPU_3_PIPE] |1158| 
        BNE       ||$C$L287||           ; [DPU_3_PIPE] |1158| 
        ; BRANCHCC OCCURS {||$C$L287||}  ; [] |1158| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1159,column 5,is_stmt,isa 1
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("get_fat")
	.dwattr $C$DW$437, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1159| 
        ; CALL OCCURS {get_fat }         ; [] |1159| 
        MOV       A2, A1                ; [DPU_3_PIPE] |1159| 
        CMP       A2, #2                ; [DPU_3_PIPE] |1159| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        MOVCC     A1, #2                ; [DPU_3_PIPE] |3114| 
        BCC       ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCHCC OCCURS {||$C$L289||}  ; [] |3114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1161,column 5,is_stmt,isa 1
        CMP       A2, #-1               ; [DPU_3_PIPE] |1161| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        MOVEQ     A1, #1                ; [DPU_3_PIPE] |3114| 
        BEQ       ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCHCC OCCURS {||$C$L289||}  ; [] |3114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1162,column 5,is_stmt,isa 1
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] |1162| 
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |1162| 
        CMP       A3, A2                ; [DPU_3_PIPE] |1162| 
        BHI       ||$C$L283||           ; [DPU_3_PIPE] |1162| 
        ; BRANCHCC OCCURS {||$C$L283||}  ; [] |1162| 
;* --------------------------------------------------------------------------*
||$C$L282||:    
        MOV       A1, V1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3106,column 6,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |3106| 
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        B         ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCH OCCURS {||$C$L289||}    ; [] |3114| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L283||:    
	.dwpsn	file "../utils/ff.c",line 1184,column 5,is_stmt,isa 1
        STR       A2, [V4, #12]         ; [DPU_3_PIPE] |1184| 
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A3, [A1, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A3, A3, #2            ; [DPU_3_PIPE] |830| 
        CMP       A3, A2                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L284||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L284||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A4, [A1, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A3, [A1, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A2, A2, A4, A3        ; [DPU_3_PIPE] |831| 
        B         ||$C$L285||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L285||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L284||:    
        MOV       A2, V1                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L285||:    
	.dwpsn	file "../utils/ff.c",line 1185,column 5,is_stmt,isa 1
        STR       A2, [V4, #16]         ; [DPU_3_PIPE] |1185| 
        B         ||$C$L287||           ; [DPU_3_PIPE] |1185| 
        ; BRANCH OCCURS {||$C$L287||}    ; [] |1185| 
;* --------------------------------------------------------------------------*
||$C$L286||:    
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L287||:    
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        LSLS      A2, V3, #5            ; [DPU_3_PIPE] |1191| 
        AND       A2, A2, #480          ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 1190,column 2,is_stmt,isa 1
        STRH      V3, [V4, #6]          ; [DPU_3_PIPE] |1190| 
	.dwpsn	file "../utils/ff.c",line 1191,column 2,is_stmt,isa 1
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |1191| 
        ADD       A2, A1, #52           ; [DPU_3_PIPE] |1191| 
        STR       A2, [V4, #20]         ; [DPU_3_PIPE] |1191| 
        MOV       A1, V1                ; [DPU_3_PIPE] |1191| 
	.dwpsn	file "../utils/ff.c",line 3114,column 2,is_stmt,isa 1
        B         ||$C$L289||           ; [DPU_3_PIPE] |3114| 
        ; BRANCH OCCURS {||$C$L289||}    ; [] |3114| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L288||:    
	.dwpsn	file "../utils/ff.c",line 3094,column 4,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3094| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |3094| 
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_name("dir_sdi")
	.dwattr $C$DW$438, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |3094| 
        ; CALL OCCURS {dir_sdi }         ; [] |3094| 
;* --------------------------------------------------------------------------*
||$C$L289||:    
        ADD       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 20
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_TI_return
        POP       {V1, V2, V3, V4, PC}  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$423, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$423, DW_AT_TI_end_line(0xc2b)
	.dwattr $C$DW$423, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$423

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_read
	.thumb
	.global	f_read

$C$DW$440	.dwtag  DW_TAG_subprogram, DW_AT_name("f_read")
	.dwattr $C$DW$440, DW_AT_low_pc(f_read)
	.dwattr $C$DW$440, DW_AT_high_pc(0x00)
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("f_read")
	.dwattr $C$DW$440, DW_AT_external
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$440, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$440, DW_AT_TI_begin_line(0x988)
	.dwattr $C$DW$440, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$440, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$440, DW_AT_decl_line(0x988)
	.dwattr $C$DW$440, DW_AT_decl_column(0x09)
	.dwattr $C$DW$440, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "../utils/ff.c",line 2446,column 1,is_stmt,address f_read,isa 1

	.dwfde $C$DW$CIE, f_read
$C$DW$441	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$441, DW_AT_location[DW_OP_reg0]
$C$DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buff")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("buff")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg1]
$C$DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_name("btr")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("btr")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg2]
$C$DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_name("br")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("br")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg3]

;*****************************************************************************
;* FUNCTION NAME: f_read                                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 12 Auto + 36 Save = 48 byte                *
;*****************************************************************************
f_read:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C1
;* A3    assigned to $O$C2
;* A3    assigned to $O$C3
;* A4    assigned to $O$C4
;* A2    assigned to $O$C5
;* V6    assigned to $O$C6
;* A1    assigned to $O$C7
;* V1    assigned to $O$C8
;* V6    assigned to $O$C9
;* V5    assigned to $O$C10
;* V5    assigned to $O$C11
;* V5    assigned to $O$C12
;* A1    assigned to $O$C13
;* A2    assigned to $O$C14
;* A2    assigned to $O$C15
;* V1    assigned to $O$U46
;* V6    assigned to $O$U133
;* A1    assigned to $O$U138
;* V7    assigned to $O$K214
;* A2    assigned to $O$U58
;* A1    assigned to $O$U53
;* V1    assigned to sector
$C$DW$445	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$445, DW_AT_location[DW_OP_reg4]
$C$DW$446	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$446, DW_AT_location[DW_OP_breg13 0]
;* V6    assigned to sector
$C$DW$447	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_reg9]
;* V6    assigned to sector
$C$DW$448	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg9]
;* V6    assigned to sector
$C$DW$449	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg9]
;* V5    assigned to fs
$C$DW$450	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg8]
;* V7    assigned to clst
$C$DW$451	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg10]
;* V1    assigned to wc
$C$DW$452	.dwtag  DW_TAG_variable, DW_AT_name("wc")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("wc")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_reg4]
;* V8    assigned to bc
$C$DW$453	.dwtag  DW_TAG_variable, DW_AT_name("bc")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("bc")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg11]
;* A4    assigned to cnt
$C$DW$454	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg3]
;* A1    assigned to d
$C$DW$455	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg0]
;* A3    assigned to s
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_reg2]
;* A4    assigned to cnt
$C$DW$457	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_reg3]
;* A3    assigned to d
$C$DW$458	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$459	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg1]
$C$DW$460	.dwtag  DW_TAG_variable, DW_AT_name("rbuff")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("rbuff")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_breg13 4]
;* V2    assigned to csect
$C$DW$461	.dwtag  DW_TAG_variable, DW_AT_name("csect")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("csect")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg5]
;* V1    assigned to cc
$C$DW$462	.dwtag  DW_TAG_variable, DW_AT_name("cc")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("cc")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg4]
;* A1    assigned to rcnt
$C$DW$463	.dwtag  DW_TAG_variable, DW_AT_name("rcnt")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("rcnt")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg0]
;* V6    assigned to sect
$C$DW$464	.dwtag  DW_TAG_variable, DW_AT_name("sect")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg9]
$C$DW$465	.dwtag  DW_TAG_variable, DW_AT_name("br")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("br")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_breg13 8]
;* V3    assigned to btr
$C$DW$466	.dwtag  DW_TAG_variable, DW_AT_name("btr")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("btr")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg6]
;* V4    assigned to fp
$C$DW$467	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_reg7]
;* A2    assigned to clst
$C$DW$468	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg1]
;* V5    assigned to $O$U13
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        MOV       V4, A1                ; [DPU_3_PIPE] |2446| 
	.dwpsn	file "../utils/ff.c",line 2453,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2453| 
        SUB       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 48
        STR       A1, [A4, #0]          ; [DPU_3_PIPE] |2453| 
	.dwpsn	file "../utils/ff.c",line 2446,column 1,is_stmt,isa 1
        MOV       V3, A3                ; [DPU_3_PIPE] |2446| 
        STR       A4, [SP, #8]          ; [DPU_3_PIPE] |2446| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |2446| 
        CBZ       V4, ||$C$L290||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L290||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L290||       ; [] 
        ; BRANCHCC OCCURS {||$C$L290||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L290||       ; [] 
        ; BRANCHCC OCCURS {||$C$L290||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L291||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L291||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L290||:    
	.dwpsn	file "../utils/ff.c",line 2456,column 20,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |2456| 
        B         ||$C$L316||           ; [DPU_3_PIPE] |2456| 
        ; BRANCH OCCURS {||$C$L316||}    ; [] |2456| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L291||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("disk_status")
	.dwattr $C$DW$469, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2456,column 20,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |2456| 
        BCS       ||$C$L316||           ; [DPU_3_PIPE] |2456| 
        ; BRANCHCC OCCURS {||$C$L316||}  ; [] |2456| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2457,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2457| 
        BICS      A1, A2, #127          ; [DPU_3_PIPE] |2457| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2458,column 3,is_stmt,isa 1
        MOVNE     A1, #2                ; [DPU_3_PIPE] |2458| 
        BNE       ||$C$L316||           ; [DPU_3_PIPE] |2458| 
        ; BRANCHCC OCCURS {||$C$L316||}  ; [] |2458| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2459,column 2,is_stmt,isa 1
        LSRS      A1, A2, #1            ; [DPU_3_PIPE] |2459| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2460,column 3,is_stmt,isa 1
        MOVCC     A1, #7                ; [DPU_3_PIPE] |2460| 
        BCC       ||$C$L316||           ; [DPU_3_PIPE] |2460| 
        ; BRANCHCC OCCURS {||$C$L316||}  ; [] |2460| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2462,column 2,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2462| 
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |2462| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |2462| 
        CMP       A1, V3                ; [DPU_3_PIPE] |2462| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2462,column 20,is_stmt,isa 1
        MOVCC     V3, A1                ; [DPU_3_PIPE] |2462| 
	.dwpsn	file "../utils/ff.c",line 2464,column 2,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |2464| 
        BEQ       ||$C$L315||           ; [DPU_3_PIPE] |2464| 
        ; BRANCHCC OCCURS {||$C$L315||}  ; [] |2464| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L292||
;*
;*   Loop source line                : 2464
;*   Loop closing brace source line  : 2528
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L292||:    
	.dwpsn	file "../utils/ff.c",line 2466,column 3,is_stmt,isa 1
        LDR       V1, [V4, #8]          ; [DPU_3_PIPE] |2466| 
        UBFX      A1, V1, #0, #9        ; [DPU_3_PIPE] |2466| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2466| 
        BNE       ||$C$L312||           ; [DPU_3_PIPE] |2466| 
        ; BRANCHCC OCCURS {||$C$L312||}  ; [] |2466| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2467,column 4,is_stmt,isa 1
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] |2467| 
        LDRB      A1, [V5, #2]          ; [DPU_3_PIPE] |2467| 
        ADDS      A1, A1, #255          ; [DPU_3_PIPE] |2467| 
        AND       A1, A1, V1, LSR #9    ; [DPU_3_PIPE] |2467| 
        UXTB      V2, A1                ; [DPU_3_PIPE] |2467| 
	.dwpsn	file "../utils/ff.c",line 2468,column 4,is_stmt,isa 1
        CMP       V2, #0                ; [DPU_3_PIPE] |2468| 
        BNE       ||$C$L302||           ; [DPU_3_PIPE] |2468| 
        ; BRANCHCC OCCURS {||$C$L302||}  ; [] |2468| 
;* --------------------------------------------------------------------------*
        CBNZ      V1, ||$C$L293||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2469,column 5,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L293||}  ; [] |2469| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2470,column 6,is_stmt,isa 1
        LDR       A2, [V4, #16]         ; [DPU_3_PIPE] |2470| 
        CMP       A2, #2                ; [DPU_3_PIPE] |2470| 
        BCC       ||$C$L303||           ; [DPU_3_PIPE] |2470| 
        ; BRANCHCC OCCURS {||$C$L303||}  ; [] |2470| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2480,column 5,is_stmt,isa 1
        CMP       A2, #-1               ; [DPU_3_PIPE] |2480| 
        BNE       ||$C$L301||           ; [DPU_3_PIPE] |2480| 
        ; BRANCHCC OCCURS {||$C$L301||}  ; [] |2480| 
;* --------------------------------------------------------------------------*
        B         ||$C$L308||           ; [DPU_3_PIPE] |2480| 
        ; BRANCH OCCURS {||$C$L308||}    ; [] |2480| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L293||:    
	.dwpsn	file "../utils/ff.c",line 2477,column 7,is_stmt,isa 1
        LDR       V7, [V4, #20]         ; [DPU_3_PIPE] |2477| 
        CMP       V7, #2                ; [DPU_3_PIPE] |2477| 
        BCC       ||$C$L303||           ; [DPU_3_PIPE] |2477| 
        ; BRANCHCC OCCURS {||$C$L303||}  ; [] |2477| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 851,column 2,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |851| 
        CMP       A1, V7                ; [DPU_3_PIPE] |851| 
        BLS       ||$C$L303||           ; [DPU_3_PIPE] |851| 
        ; BRANCHCC OCCURS {||$C$L303||}  ; [] |851| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 854,column 2,is_stmt,isa 1
        LDRB      A1, [V5, #0]          ; [DPU_3_PIPE] |854| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L297||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L297||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L295||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L295||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |854| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        ADD       V6, V6, V7, LSR #7    ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L294||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L294||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("sync_window")
	.dwattr $C$DW$470, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("disk_read")
	.dwattr $C$DW$471, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L294||:    
	.dwpsn	file "../utils/ff.c",line 871,column 3,is_stmt,isa 1
        LSL       A1, V7, #2            ; [DPU_3_PIPE] |871| 
        AND       A1, A1, #508          ; [DPU_3_PIPE] |871| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |871| 
        LDRB      A4, [V5, #55]         ; [DPU_3_PIPE] |871| 
        LDRB      A1, [V5, #54]         ; [DPU_3_PIPE] |871| 
        LDRB      A3, [V5, #53]         ; [DPU_3_PIPE] |871| 
        LDRB      A2, [V5, #52]         ; [DPU_3_PIPE] |871| 
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |871| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |871| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |871| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |871| 
        BIC       A2, A2, #-268435456   ; [DPU_3_PIPE] |871| 
        CMP       A2, #2                ; [DPU_3_PIPE] |871| 
        BCS       ||$C$L301||           ; [DPU_3_PIPE] |871| 
        ; BRANCHCC OCCURS {||$C$L301||}  ; [] |871| 
;* --------------------------------------------------------------------------*
        B         ||$C$L303||           ; [DPU_3_PIPE] |871| 
        ; BRANCH OCCURS {||$C$L303||}    ; [] |871| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L295||:    
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        ADD       V6, V6, V7, LSR #8    ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L296||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L296||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("sync_window")
	.dwattr $C$DW$472, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("disk_read")
	.dwattr $C$DW$473, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L296||:    
	.dwpsn	file "../utils/ff.c",line 866,column 3,is_stmt,isa 1
        LSL       A1, V7, #1            ; [DPU_3_PIPE] |866| 
        AND       A1, A1, #510          ; [DPU_3_PIPE] |866| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |866| 
        LDRB      A2, [V5, #52]         ; [DPU_3_PIPE] |866| 
        LDRB      A1, [V5, #53]         ; [DPU_3_PIPE] |866| 
        ORR       A2, A2, A1, LSL #8    ; [DPU_3_PIPE] |866| 
        CMP       A2, #2                ; [DPU_3_PIPE] |866| 
        BCS       ||$C$L301||           ; [DPU_3_PIPE] |866| 
        ; BRANCHCC OCCURS {||$C$L301||}  ; [] |866| 
;* --------------------------------------------------------------------------*
        B         ||$C$L303||           ; [DPU_3_PIPE] |866| 
        ; BRANCH OCCURS {||$C$L303||}    ; [] |866| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L297||:    
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 856,column 3,is_stmt,isa 1
        ADD       V8, V7, V7, LSR #1    ; [DPU_3_PIPE] |856| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LSR       V1, V8, #9            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADD       A2, V1, V6            ; [DPU_3_PIPE] |763| 
        CMP       A1, A2                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        ADD       V1, V1, V6            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        BEQ       ||$C$L298||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L298||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_name("sync_window")
	.dwattr $C$DW$474, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V1                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$475	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$475, DW_AT_low_pc(0x00)
	.dwattr $C$DW$475, DW_AT_name("disk_read")
	.dwattr $C$DW$475, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |770| 
        STR       A1, [V5, #48]         ; [DPU_3_PIPE] |770| 
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L298||:    
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        UBFX      A2, V8, #0, #9        ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 859,column 53,is_stmt,isa 1
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |859| 
        ADD       LR, V5, #48           ; [DPU_3_PIPE] |859| 
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        ADD       A2, V5, A2            ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 859,column 53,is_stmt,isa 1
        ADD       V6, V6, V8, LSR #9    ; [DPU_3_PIPE] |859| 
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        LDRB      V1, [A2, #52]         ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 859,column 53,is_stmt,isa 1
        STR       LR, [SP, #0]          ; [DPU_3_PIPE] |859| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L299||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L299||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("sync_window")
	.dwattr $C$DW$476, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_name("disk_read")
	.dwattr $C$DW$477, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L308||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |768| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [A1, #0]          ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L299||:    
	.dwpsn	file "../utils/ff.c",line 860,column 3,is_stmt,isa 1
        UBFX      A1, V8, #0, #9        ; [DPU_3_PIPE] |860| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |860| 
        LDRB      A1, [V5, #52]         ; [DPU_3_PIPE] |860| 
        ORR       V1, V1, A1, LSL #8    ; [DPU_3_PIPE] |860| 
	.dwpsn	file "../utils/ff.c",line 861,column 3,is_stmt,isa 1
        LSRS      A1, V7, #1            ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L300||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L300||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        UBFX      A2, V1, #0, #12       ; [DPU_3_PIPE] |861| 
        CMP       A2, #2                ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L301||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L301||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        B         ||$C$L303||           ; [DPU_3_PIPE] |861| 
        ; BRANCH OCCURS {||$C$L303||}    ; [] |861| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L300||:    
        LSRS      A2, V1, #4            ; [DPU_3_PIPE] |861| 
        CMP       A2, #2                ; [DPU_3_PIPE] |861| 
        BCC       ||$C$L303||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L303||}  ; [] |861| 
;* --------------------------------------------------------------------------*
||$C$L301||:    
	.dwpsn	file "../utils/ff.c",line 2481,column 5,is_stmt,isa 1
        STR       A2, [V4, #20]         ; [DPU_3_PIPE] |2481| 
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L302||:    
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A3, [V4, #20]         ; [DPU_3_PIPE] |830| 
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A3, A3, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        CMP       A1, A3                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L303||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L303||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A2, [V5, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A4, [V5, #44]         ; [DPU_3_PIPE] |831| 
	.dwpsn	file "../utils/ff.c",line 2484,column 4,is_stmt,isa 1
        MLA       A1, A3, A2, A4        ; [DPU_3_PIPE] |2484| 
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        MLA       V6, A3, A2, A4        ; [DPU_3_PIPE] |831| 
        CBNZ      A1, ||$C$L304||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2484,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L304||}  ; [] |2484| 
;* --------------------------------------------------------------------------*
||$C$L303||:    
	.dwpsn	file "../utils/ff.c",line 2484,column 15,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2484| 
        MOVS      A1, #2                ; [DPU_3_PIPE] |2484| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |2484| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2484| 
        B         ||$C$L316||           ; [DPU_3_PIPE] |2484| 
        ; BRANCH OCCURS {||$C$L316||}    ; [] |2484| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L304||:    
	.dwpsn	file "../utils/ff.c",line 2486,column 4,is_stmt,isa 1
        LSRS      V1, V3, #9            ; [DPU_3_PIPE] |2486| 
	.dwpsn	file "../utils/ff.c",line 2485,column 4,is_stmt,isa 1
        ADD       V6, V2, V6            ; [DPU_3_PIPE] |2485| 
	.dwpsn	file "../utils/ff.c",line 2486,column 4,is_stmt,isa 1
        BNE       ||$C$L307||           ; [DPU_3_PIPE] |2486| 
        ; BRANCHCC OCCURS {||$C$L307||}  ; [] |2486| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2505,column 4,is_stmt,isa 1
        LDR       A3, [V4, #24]         ; [DPU_3_PIPE] |2505| 
        CMP       V6, A3                ; [DPU_3_PIPE] |2505| 
        BEQ       ||$C$L306||           ; [DPU_3_PIPE] |2505| 
        ; BRANCHCC OCCURS {||$C$L306||}  ; [] |2505| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2507,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2507| 
        ADD       V7, V4, #36           ; [DPU_3_PIPE] 
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |2507| 
        BCC       ||$C$L305||           ; [DPU_3_PIPE] |2507| 
        ; BRANCHCC OCCURS {||$C$L305||}  ; [] |2507| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2508,column 6,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2508| 
        MOV       A2, V7                ; [DPU_3_PIPE] |2508| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |2508| 
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_name("disk_write")
	.dwattr $C$DW$478, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |2508| 
        ; CALL OCCURS {disk_write }      ; [] |2508| 
        CBNZ      A1, ||$C$L308||       ; [] 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |2508| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2510,column 6,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2510| 
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] 
        AND       A1, A1, #191          ; [DPU_3_PIPE] |2510| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2510| 
;* --------------------------------------------------------------------------*
||$C$L305||:    
	.dwpsn	file "../utils/ff.c",line 2513,column 5,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2513| 
        MOV       A2, V7                ; [DPU_3_PIPE] |2513| 
        MOV       A3, V6                ; [DPU_3_PIPE] |2513| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |2513| 
$C$DW$479	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$479, DW_AT_low_pc(0x00)
	.dwattr $C$DW$479, DW_AT_name("disk_read")
	.dwattr $C$DW$479, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |2513| 
        ; CALL OCCURS {disk_read }       ; [] |2513| 
        CBNZ      A1, ||$C$L308||       ; [] 
        ; BRANCHCC OCCURS {||$C$L308||}  ; [] |2513| 
;* --------------------------------------------------------------------------*
||$C$L306||:    
        LDR       V1, [V4, #8]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2517,column 4,is_stmt,isa 1
        STR       V6, [V4, #24]         ; [DPU_3_PIPE] |2517| 
        UBFX      A1, V1, #0, #9        ; [DPU_3_PIPE] 
        B         ||$C$L312||           ; [DPU_3_PIPE] |2517| 
        ; BRANCH OCCURS {||$C$L312||}    ; [] |2517| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L307||:    
	.dwpsn	file "../utils/ff.c",line 2488,column 5,is_stmt,isa 1
        ADDS      A1, V1, V2            ; [DPU_3_PIPE] |2488| 
        CMP       A2, A1                ; [DPU_3_PIPE] |2488| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2489,column 6,is_stmt,isa 1
        SUBCC     V1, A2, V2            ; [DPU_3_PIPE] |2489| 
	.dwpsn	file "../utils/ff.c",line 2490,column 5,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |2490| 
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |2490| 
        MOV       A3, V6                ; [DPU_3_PIPE] |2490| 
        UXTB      A4, V1                ; [DPU_3_PIPE] |2490| 
$C$DW$480	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$480, DW_AT_low_pc(0x00)
	.dwattr $C$DW$480, DW_AT_name("disk_read")
	.dwattr $C$DW$480, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |2490| 
        ; CALL OCCURS {disk_read }       ; [] |2490| 
        CBZ       A1, ||$C$L309||       ; [] 
        ; BRANCHCC OCCURS {||$C$L309||}  ; [] |2490| 
;* --------------------------------------------------------------------------*
||$C$L308||:    
	.dwpsn	file "../utils/ff.c",line 2491,column 6,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2491| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |2491| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |2491| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2491| 
        B         ||$C$L316||           ; [DPU_3_PIPE] |2491| 
        ; BRANCH OCCURS {||$C$L316||}    ; [] |2491| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L309||:    
	.dwpsn	file "../utils/ff.c",line 2497,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |2497| 
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |2497| 
        BCC       ||$C$L311||           ; [DPU_3_PIPE] |2497| 
        ; BRANCHCC OCCURS {||$C$L311||}  ; [] |2497| 
;* --------------------------------------------------------------------------*
        LDR       A1, [V4, #24]         ; [DPU_3_PIPE] |2497| 
        SUB       A1, A1, V6            ; [DPU_3_PIPE] |2497| 
        CMP       V1, A1                ; [DPU_3_PIPE] |2497| 
        BLS       ||$C$L311||           ; [DPU_3_PIPE] |2497| 
        ; BRANCHCC OCCURS {||$C$L311||}  ; [] |2497| 
;* --------------------------------------------------------------------------*
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADD       A3, V4, #34           ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        MOV       A4, #511              ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       A2, A2, A1, LSL #9    ; [DPU_3_PIPE] |540| 
        SUBS      A1, A2, #2            ; [DPU_3_PIPE] |540| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L310||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 256
;*   Known Maximum Trip Count        : 256
;*   Known Max Trip Count Factor     : 256
;* --------------------------------------------------------------------------*
	.align	8
||$C$L310||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A2, [A3, #2]!         ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1, #2]!         ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A3, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A4, #2            ; [DPU_3_PIPE] |550| 
        CMP       A4, #-1               ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A2, [A1, #1]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L310||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L310||}  ; [] |550| 
;* --------------------------------------------------------------------------*
||$C$L311||:    
	.dwpsn	file "../utils/ff.c",line 2501,column 5,is_stmt,isa 1
        LSLS      A1, V1, #9            ; [DPU_3_PIPE] |2501| 
	.dwpsn	file "../utils/ff.c",line 2502,column 5,is_stmt,isa 1
        B         ||$C$L314||           ; [DPU_3_PIPE] |2502| 
        ; BRANCH OCCURS {||$C$L314||}    ; [] |2502| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L312||:    
	.dwpsn	file "../utils/ff.c",line 2519,column 3,is_stmt,isa 1
        RSB       A1, A1, #512          ; [DPU_3_PIPE] |2519| 
	.dwpsn	file "../utils/ff.c",line 2520,column 3,is_stmt,isa 1
        CMP       V3, A1                ; [DPU_3_PIPE] |2520| 
        IT        CC                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2520,column 19,is_stmt,isa 1
        MOVCC     A1, V3                ; [DPU_3_PIPE] |2520| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        LDR       A3, [SP, #4]          ; [DPU_3_PIPE] |541| 
        UBFX      A2, V1, #0, #9        ; [DPU_3_PIPE] |541| 
        ADDS      A2, V4, A2            ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A1, #1            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        ADDS      A2, A2, #36           ; [DPU_3_PIPE] |541| 
        CBZ       A1, ||$C$L314||       ; [] 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L314||}  ; [] |550| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L313||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 1073741824
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L313||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      V9, [A2, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A4, #1            ; [DPU_3_PIPE] |550| 
        CMP       A4, #-1               ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      V9, [A3, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BEQ       ||$C$L314||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L314||}  ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      V9, [A2, #1]!         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A4, #1            ; [DPU_3_PIPE] |550| 
        CMP       A4, #-1               ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      V9, [A3, #1]!         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BEQ       ||$C$L314||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L314||}  ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      V9, [A2, #1]!         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A4, #1            ; [DPU_3_PIPE] |550| 
        CMP       A4, #-1               ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      V9, [A3, #1]!         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BEQ       ||$C$L314||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L314||}  ; [] |550| 
;* --------------------------------------------------------------------------*
        ADDS      A2, A2, #1            ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      V9, [A2], #1          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      A4, A4, #1            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        ADDS      A3, A3, #1            ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        CMP       A4, #-1               ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      V9, [A3], #1          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L313||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L313||}  ; [] |550| 
;* --------------------------------------------------------------------------*
||$C$L314||:    
	.dwpsn	file "../utils/ff.c",line 2465,column 3,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2465| 
        LDR       LR, [SP, #8]          ; [DPU_3_PIPE] |2465| 
        ADDS      A2, A1, A2            ; [DPU_3_PIPE] |2465| 
        LDR       V9, [SP, #4]          ; [DPU_3_PIPE] |2465| 
        STR       A2, [V4, #8]          ; [DPU_3_PIPE] |2465| 
        LDR       A3, [LR, #0]          ; [DPU_3_PIPE] |2465| 
        SUBS      V3, V3, A1            ; [DPU_3_PIPE] |2465| 
        ADD       A4, A1, A3            ; [DPU_3_PIPE] |2465| 
        STR       A4, [LR, #0]          ; [DPU_3_PIPE] |2465| 
        ADD       A1, A1, V9            ; [DPU_3_PIPE] |2465| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |2465| 
        BNE       ||$C$L292||           ; [DPU_3_PIPE] |2465| 
        ; BRANCHCC OCCURS {||$C$L292||}  ; [] |2465| 
;* --------------------------------------------------------------------------*
||$C$L315||:    
	.dwpsn	file "../utils/ff.c",line 2453,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2453| 
;* --------------------------------------------------------------------------*
||$C$L316||:    
        ADD       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$481	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$481, DW_AT_low_pc(0x00)
	.dwattr $C$DW$481, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$440, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$440, DW_AT_TI_end_line(0x9e3)
	.dwattr $C$DW$440, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$440

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_opendir
	.thumb
	.global	f_opendir

$C$DW$482	.dwtag  DW_TAG_subprogram, DW_AT_name("f_opendir")
	.dwattr $C$DW$482, DW_AT_low_pc(f_opendir)
	.dwattr $C$DW$482, DW_AT_high_pc(0x00)
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("f_opendir")
	.dwattr $C$DW$482, DW_AT_external
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$482, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$482, DW_AT_TI_begin_line(0xbdb)
	.dwattr $C$DW$482, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$482, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$482, DW_AT_decl_line(0xbdb)
	.dwattr $C$DW$482, DW_AT_decl_column(0x09)
	.dwattr $C$DW$482, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../utils/ff.c",line 3039,column 1,is_stmt,address f_opendir,isa 1

	.dwfde $C$DW$CIE, f_opendir
$C$DW$483	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dj")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_reg0]
$C$DW$484	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_opendir                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 16 Auto + 12 Save = 28 byte                *
;*****************************************************************************
f_opendir:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C26
;* A2    assigned to cl
$C$DW$485	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$485, DW_AT_location[DW_OP_reg1]
;* V1    assigned to fs
$C$DW$486	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$486, DW_AT_location[DW_OP_reg4]
;* A1    assigned to res
$C$DW$487	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg0]
$C$DW$488	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_breg13 0]
;* V4    assigned to dj
$C$DW$489	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg7]
$C$DW$490	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$490, DW_AT_location[DW_OP_breg13 4]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V4, LR}          ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 7, -8
	.dwcfi	save_reg_to_mem, 4, -12
	.dwpsn	file "../utils/ff.c",line 3045,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |3045| 
        SUB       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
	.dwpsn	file "../utils/ff.c",line 3039,column 1,is_stmt,isa 1
        STR       A2, [SP, #0]          ; [DPU_3_PIPE] |3039| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3045,column 11,is_stmt,isa 1
        MOVEQ     A1, #9                ; [DPU_3_PIPE] |3045| 
        BEQ       ||$C$L324||           ; [DPU_3_PIPE] |3045| 
        ; BRANCHCC OCCURS {||$C$L324||}  ; [] |3045| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3047,column 2,is_stmt,isa 1
        MOV       A1, SP                ; [DPU_3_PIPE] |3047| 
        MOV       A2, V4                ; [DPU_3_PIPE] |3047| 
        MOVS      A3, #0                ; [DPU_3_PIPE] |3047| 
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_name("chk_mounted")
	.dwattr $C$DW$491, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3047| 
        ; CALL OCCURS {chk_mounted }     ; [] |3047| 
	.dwpsn	file "../utils/ff.c",line 3048,column 2,is_stmt,isa 1
        LDR       V1, [V4, #0]          ; [DPU_3_PIPE] |3048| 
	.dwpsn	file "../utils/ff.c",line 3049,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3049| 
        BNE       ||$C$L323||           ; [DPU_3_PIPE] |3049| 
        ; BRANCHCC OCCURS {||$C$L323||}  ; [] |3049| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3050,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3050| 
	.dwpsn	file "../utils/ff.c",line 3051,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3051| 
	.dwpsn	file "../utils/ff.c",line 3050,column 3,is_stmt,isa 1
        STR       A1, [V4, #24]         ; [DPU_3_PIPE] |3050| 
	.dwpsn	file "../utils/ff.c",line 3051,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3051| 
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("follow_path")
	.dwattr $C$DW$492, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3051| 
        ; CALL OCCURS {follow_path }     ; [] |3051| 
        CBNZ      A1, ||$C$L319||       ; [] 
        ; BRANCHCC OCCURS {||$C$L319||}  ; [] |3051| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3054,column 4,is_stmt,isa 1
        LDR       A1, [V4, #20]         ; [DPU_3_PIPE] |3054| 
        CBZ       A1, ||$C$L318||       ; [] 
        ; BRANCHCC OCCURS {||$C$L318||}  ; [] |3054| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3055,column 5,is_stmt,isa 1
        LDRB      A2, [A1, #11]         ; [DPU_3_PIPE] |3055| 
        LSRS      A2, A2, #5            ; [DPU_3_PIPE] |3055| 
        BCC       ||$C$L321||           ; [DPU_3_PIPE] |3055| 
        ; BRANCHCC OCCURS {||$C$L321||}  ; [] |3055| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A3, [V1, #0]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A4, [A1, #27]         ; [DPU_3_PIPE] |1246| 
        LDRB      A2, [A1, #26]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        CMP       A3, #3                ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        BNE       ||$C$L317||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L317||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A3, [A1, #21]         ; [DPU_3_PIPE] |1248| 
        LDRB      A1, [A1, #20]         ; [DPU_3_PIPE] |1248| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       A2, A2, A1, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L317||:    
	.dwpsn	file "../utils/ff.c",line 3056,column 6,is_stmt,isa 1
        STR       A2, [V4, #8]          ; [DPU_3_PIPE] |3056| 
;* --------------------------------------------------------------------------*
||$C$L318||:    
	.dwpsn	file "../utils/ff.c",line 3062,column 5,is_stmt,isa 1
        LDRH      A1, [V1, #6]          ; [DPU_3_PIPE] |3062| 
	.dwpsn	file "../utils/ff.c",line 3063,column 5,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |3063| 
	.dwpsn	file "../utils/ff.c",line 3062,column 5,is_stmt,isa 1
        STRH      A1, [V4, #4]          ; [DPU_3_PIPE] |3062| 
	.dwpsn	file "../utils/ff.c",line 3063,column 5,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3063| 
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_name("dir_sdi")
	.dwattr $C$DW$493, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |3063| 
        ; CALL OCCURS {dir_sdi }         ; [] |3063| 
        CMP       A1, #4                ; [DPU_3_PIPE] |3063| 
        BNE       ||$C$L320||           ; [DPU_3_PIPE] |3063| 
        ; BRANCHCC OCCURS {||$C$L320||}  ; [] |3063| 
;* --------------------------------------------------------------------------*
        B         ||$C$L321||           ; [DPU_3_PIPE] |3063| 
        ; BRANCH OCCURS {||$C$L321||}    ; [] |3063| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L319||:    
	.dwpsn	file "../utils/ff.c",line 3066,column 3,is_stmt,isa 1
        CMP       A1, #4                ; [DPU_3_PIPE] |3066| 
        BEQ       ||$C$L321||           ; [DPU_3_PIPE] |3066| 
        ; BRANCHCC OCCURS {||$C$L321||}  ; [] |3066| 
;* --------------------------------------------------------------------------*
||$C$L320||:    
        CBNZ      A1, ||$C$L322||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3067,column 3,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L322||}  ; [] |3067| 
;* --------------------------------------------------------------------------*
        B         ||$C$L324||           ; [DPU_3_PIPE] |3067| 
        ; BRANCH OCCURS {||$C$L324||}    ; [] |3067| 
;* --------------------------------------------------------------------------*
||$C$L321||:    
	.dwpsn	file "../utils/ff.c",line 3066,column 26,is_stmt,isa 1
        MOVS      A1, #5                ; [DPU_3_PIPE] |3066| 
;* --------------------------------------------------------------------------*
||$C$L322||:    
	.dwpsn	file "../utils/ff.c",line 3067,column 21,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |3067| 
        STR       A2, [V4, #0]          ; [DPU_3_PIPE] |3067| 
	.dwpsn	file "../utils/ff.c",line 3072,column 2,is_stmt,isa 1
        B         ||$C$L324||           ; [DPU_3_PIPE] |3072| 
        ; BRANCH OCCURS {||$C$L324||}    ; [] |3072| 
;* --------------------------------------------------------------------------*
||$C$L323||:    
	.dwpsn	file "../utils/ff.c",line 3069,column 3,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |3069| 
        STR       A2, [V4, #0]          ; [DPU_3_PIPE] |3069| 
;* --------------------------------------------------------------------------*
||$C$L324||:    
        ADD       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 12
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_TI_return
        POP       {V1, V4, PC}          ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$482, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$482, DW_AT_TI_end_line(0xc01)
	.dwattr $C$DW$482, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$482

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_open
	.thumb
	.global	f_open

$C$DW$495	.dwtag  DW_TAG_subprogram, DW_AT_name("f_open")
	.dwattr $C$DW$495, DW_AT_low_pc(f_open)
	.dwattr $C$DW$495, DW_AT_high_pc(0x00)
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("f_open")
	.dwattr $C$DW$495, DW_AT_external
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$495, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$495, DW_AT_TI_begin_line(0x904)
	.dwattr $C$DW$495, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$495, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$495, DW_AT_decl_line(0x904)
	.dwattr $C$DW$495, DW_AT_decl_column(0x09)
	.dwattr $C$DW$495, DW_AT_TI_max_frame_size(0x50)
	.dwpsn	file "../utils/ff.c",line 2313,column 1,is_stmt,address f_open,isa 1

	.dwfde $C$DW$CIE, f_open
$C$DW$496	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_reg0]
$C$DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_reg1]
$C$DW$498	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("mode")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: f_open                                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 44 Auto + 36 Save = 80 byte                *
;*****************************************************************************
f_open:
;* --------------------------------------------------------------------------*
;* V2    assigned to $O$C14
;* A2    assigned to $O$C15
;* A1    assigned to $O$C16
;* A1    assigned to $O$C17
;* V4    assigned to $O$U26
;* A2    assigned to $O$K113
;* A1    assigned to $O$U97
;* V1    assigned to fs
$C$DW$499	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_reg4]
;* V5    assigned to sector
$C$DW$500	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$500, DW_AT_location[DW_OP_reg8]
;* A1    assigned to res
$C$DW$501	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$501, DW_AT_location[DW_OP_reg0]
;* V4    assigned to n
$C$DW$502	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$502, DW_AT_location[DW_OP_reg7]
;* V4    assigned to sector
$C$DW$503	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$503, DW_AT_location[DW_OP_reg7]
;* A2    assigned to d
$C$DW$504	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$504, DW_AT_location[DW_OP_reg1]
;* A3    assigned to d
$C$DW$505	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$505, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$506	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$506, DW_AT_location[DW_OP_reg1]
;* A1    assigned to res
$C$DW$507	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_reg0]
;* V5    assigned to cl
$C$DW$508	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_reg8]
;* V6    assigned to sector
$C$DW$509	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_reg9]
;* A1    assigned to cl
$C$DW$510	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_reg0]
;* V5    assigned to cl
$C$DW$511	.dwtag  DW_TAG_variable, DW_AT_name("cl")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("cl")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_reg8]
;* V7    assigned to mode
$C$DW$512	.dwtag  DW_TAG_variable, DW_AT_name("mode")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("mode")
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$512, DW_AT_location[DW_OP_reg10]
$C$DW$513	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$513, DW_AT_location[DW_OP_breg13 0]
;* V3    assigned to fp
$C$DW$514	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$514, DW_AT_location[DW_OP_reg6]
;* A1    assigned to dw
$C$DW$515	.dwtag  DW_TAG_variable, DW_AT_name("dw")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("dw")
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$515, DW_AT_location[DW_OP_reg0]
;* V6    assigned to dw
$C$DW$516	.dwtag  DW_TAG_variable, DW_AT_name("dw")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("dw")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg9]
;* V4    assigned to dir
$C$DW$517	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_reg7]
;* V1    assigned to res
$C$DW$518	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$518, DW_AT_location[DW_OP_reg4]
;* A1    assigned to $O$K103
;* V2    assigned to $O$K103
;* V1    assigned to $O$v1
;* A1    assigned to $O$v1
;* V8    assigned to $O$v1
$C$DW$519	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$519, DW_AT_location[DW_OP_breg13 4]
$C$DW$520	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$520, DW_AT_location[DW_OP_breg13 32]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        MOV       V7, A3                ; [DPU_3_PIPE] |2313| 
	.dwpsn	file "../utils/ff.c",line 2320,column 2,is_stmt,isa 1
        MOVS      V3, A1                ; [DPU_3_PIPE] |2320| 
        SUB       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 80
	.dwpsn	file "../utils/ff.c",line 2313,column 1,is_stmt,isa 1
        STR       A2, [SP, #0]          ; [DPU_3_PIPE] |2313| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2320,column 11,is_stmt,isa 1
        MOVEQ     A1, #9                ; [DPU_3_PIPE] |2320| 
        BEQ       ||$C$L351||           ; [DPU_3_PIPE] |2320| 
        ; BRANCHCC OCCURS {||$C$L351||}  ; [] |2320| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2325,column 2,is_stmt,isa 1
        AND       V7, V7, #31           ; [DPU_3_PIPE] |2325| 
	.dwpsn	file "../utils/ff.c",line 2321,column 2,is_stmt,isa 1
        MOVS      V2, #0                ; [DPU_3_PIPE] |2321| 
	.dwpsn	file "../utils/ff.c",line 2325,column 2,is_stmt,isa 1
        MOV       A1, SP                ; [DPU_3_PIPE] |2325| 
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |2325| 
        BIC       A3, V7, #1            ; [DPU_3_PIPE] |2325| 
	.dwpsn	file "../utils/ff.c",line 2321,column 2,is_stmt,isa 1
        STR       V2, [V3, #0]          ; [DPU_3_PIPE] |2321| 
	.dwpsn	file "../utils/ff.c",line 2325,column 2,is_stmt,isa 1
$C$DW$521	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$521, DW_AT_low_pc(0x00)
	.dwattr $C$DW$521, DW_AT_name("chk_mounted")
	.dwattr $C$DW$521, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |2325| 
        ; CALL OCCURS {chk_mounted }     ; [] |2325| 
        MOVS      V1, A1                ; [DPU_3_PIPE] |2325| 
        BNE       ||$C$L350||           ; [DPU_3_PIPE] |2325| 
        ; BRANCHCC OCCURS {||$C$L350||}  ; [] |2325| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2331,column 3,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |2331| 
	.dwpsn	file "../utils/ff.c",line 2332,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |2332| 
	.dwpsn	file "../utils/ff.c",line 2331,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |2331| 
	.dwpsn	file "../utils/ff.c",line 2332,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |2332| 
$C$DW$522	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$522, DW_AT_low_pc(0x00)
	.dwattr $C$DW$522, DW_AT_name("follow_path")
	.dwattr $C$DW$522, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |2332| 
        ; CALL OCCURS {follow_path }     ; [] |2332| 
	.dwpsn	file "../utils/ff.c",line 2333,column 3,is_stmt,isa 1
        LDR       V4, [SP, #24]         ; [DPU_3_PIPE] |2333| 
	.dwpsn	file "../utils/ff.c",line 2335,column 3,is_stmt,isa 1
        MOVS      V1, A1                ; [DPU_3_PIPE] |2335| 
        BNE       ||$C$L325||           ; [DPU_3_PIPE] |2335| 
        ; BRANCHCC OCCURS {||$C$L325||}  ; [] |2335| 
;* --------------------------------------------------------------------------*
        CMP       V4, #0                ; [DPU_3_PIPE] |2335| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        MOVEQ     A1, #6                ; [DPU_3_PIPE] |2430| 
        BEQ       ||$C$L351||           ; [DPU_3_PIPE] |2430| 
        ; BRANCHCC OCCURS {||$C$L351||}  ; [] |2430| 
;* --------------------------------------------------------------------------*
||$C$L325||:    
	.dwpsn	file "../utils/ff.c",line 2344,column 3,is_stmt,isa 1
        TST       V7, #28               ; [DPU_3_PIPE] |2344| 
        BNE       ||$C$L326||           ; [DPU_3_PIPE] |2344| 
        ; BRANCHCC OCCURS {||$C$L326||}  ; [] |2344| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2384,column 4,is_stmt,isa 1
        CMP       V1, #0                ; [DPU_3_PIPE] |2384| 
        BNE       ||$C$L350||           ; [DPU_3_PIPE] |2384| 
        ; BRANCHCC OCCURS {||$C$L350||}  ; [] |2384| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2385,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #11]         ; [DPU_3_PIPE] |2385| 
        LSRS      A2, A1, #5            ; [DPU_3_PIPE] |2385| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        MOVCS     A1, #4                ; [DPU_3_PIPE] |2430| 
        BCS       ||$C$L351||           ; [DPU_3_PIPE] |2430| 
        ; BRANCHCC OCCURS {||$C$L351||}  ; [] |2430| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2388,column 6,is_stmt,isa 1
        LSRS      A2, V7, #2            ; [DPU_3_PIPE] |2388| 
        BCC       ||$C$L343||           ; [DPU_3_PIPE] |2388| 
        ; BRANCHCC OCCURS {||$C$L343||}  ; [] |2388| 
;* --------------------------------------------------------------------------*
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2388| 
        BCS       ||$C$L327||           ; [DPU_3_PIPE] |2388| 
        ; BRANCHCC OCCURS {||$C$L327||}  ; [] |2388| 
;* --------------------------------------------------------------------------*
        B         ||$C$L343||           ; [DPU_3_PIPE] |2388| 
        ; BRANCH OCCURS {||$C$L343||}    ; [] |2388| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L326||:    
        CBNZ      V1, ||$C$L329||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2347,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L329||}  ; [] |2347| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2358,column 5,is_stmt,isa 1
        LDRB      A1, [V4, #11]         ; [DPU_3_PIPE] |2358| 
        TST       A1, #17               ; [DPU_3_PIPE] |2358| 
        BEQ       ||$C$L328||           ; [DPU_3_PIPE] |2358| 
        ; BRANCHCC OCCURS {||$C$L328||}  ; [] |2358| 
;* --------------------------------------------------------------------------*
||$C$L327||:    
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        MOVS      A1, #7                ; [DPU_3_PIPE] |2430| 
        B         ||$C$L351||           ; [DPU_3_PIPE] |2430| 
        ; BRANCH OCCURS {||$C$L351||}    ; [] |2430| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L328||:    
	.dwpsn	file "../utils/ff.c",line 2361,column 6,is_stmt,isa 1
        LSRS      A1, V7, #3            ; [DPU_3_PIPE] |2361| 
        BCC       ||$C$L341||           ; [DPU_3_PIPE] |2361| 
        ; BRANCHCC OCCURS {||$C$L341||}  ; [] |2361| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        MOVS      A1, #8                ; [DPU_3_PIPE] |2430| 
        B         ||$C$L351||           ; [DPU_3_PIPE] |2430| 
        ; BRANCH OCCURS {||$C$L351||}    ; [] |2430| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L329||:    
	.dwpsn	file "../utils/ff.c",line 2348,column 5,is_stmt,isa 1
        CMP       V1, #4                ; [DPU_3_PIPE] |2348| 
        BNE       ||$C$L340||           ; [DPU_3_PIPE] |2348| 
        ; BRANCHCC OCCURS {||$C$L340||}  ; [] |2348| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1214,column 2,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1214| 
        MOV       A2, V2                ; [DPU_3_PIPE] |1214| 
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_name("dir_sdi")
	.dwattr $C$DW$523, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1214| 
        ; CALL OCCURS {dir_sdi }         ; [] |1214| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1214| 
        BNE       ||$C$L335||           ; [DPU_3_PIPE] |1214| 
        ; BRANCHCC OCCURS {||$C$L335||}  ; [] |1214| 
;* --------------------------------------------------------------------------*
        MOV       V4, V2                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L330||
;*
;*   Loop source line                : 1217
;*   Loop closing brace source line  : 1226
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L330||:    
	.dwpsn	file "../utils/ff.c",line 1218,column 4,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |1218| 
        LDR       V5, [SP, #20]         ; [DPU_3_PIPE] |1218| 
        MOV       V1, A1                ; [DPU_3_PIPE] |1218| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V5                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L331||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L331||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("sync_window")
	.dwattr $C$DW$524, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L334||       ; [] 
        ; BRANCHCC OCCURS {||$C$L334||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V5                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("disk_read")
	.dwattr $C$DW$525, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L334||       ; [] 
        ; BRANCHCC OCCURS {||$C$L334||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V5, [V1, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L331||:    
	.dwpsn	file "../utils/ff.c",line 1220,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |1220| 
        LDRB      A2, [A1, #0]          ; [DPU_3_PIPE] |1220| 
        CMP       A2, #229              ; [DPU_3_PIPE] |1220| 
        MOV       A1, V2                ; [DPU_3_PIPE] 
        BEQ       ||$C$L332||           ; [DPU_3_PIPE] |1220| 
        ; BRANCHCC OCCURS {||$C$L332||}  ; [] |1220| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_3_PIPE] |1220| 
        IT        NE                    ; [DPU_3_PIPE] 
        MOVNE     V4, A1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1223,column 5,is_stmt,isa 1
        BNE       ||$C$L333||           ; [DPU_3_PIPE] |1223| 
        ; BRANCHCC OCCURS {||$C$L333||}  ; [] |1223| 
;* --------------------------------------------------------------------------*
||$C$L332||:    
        CBZ       V4, ||$C$L335||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1221,column 22,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L335||}  ; [] |1221| 
;* --------------------------------------------------------------------------*
        ADDS      V4, V4, #1            ; [DPU_3_PIPE] |1221| 
;* --------------------------------------------------------------------------*
||$C$L333||:    
	.dwpsn	file "../utils/ff.c",line 1225,column 4,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1225| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |1225| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_name("dir_next")
	.dwattr $C$DW$526, DW_AT_TI_call
        BL        dir_next              ; [DPU_3_PIPE] |1225| 
        ; CALL OCCURS {dir_next }        ; [] |1225| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1225| 
        BEQ       ||$C$L330||           ; [DPU_3_PIPE] |1225| 
        ; BRANCHCC OCCURS {||$C$L330||}  ; [] |1225| 
;* --------------------------------------------------------------------------*
        B         ||$C$L335||           ; [DPU_3_PIPE] |1225| 
        ; BRANCH OCCURS {||$C$L335||}    ; [] |1225| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L334||:    
	.dwpsn	file "../utils/ff.c",line 1219,column 22,is_stmt,isa 1
        LDR       V1, [SP, #4]          ; [DPU_3_PIPE] |1219| 
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
	.dwpsn	file "../utils/ff.c",line 1228,column 2,is_stmt,isa 1
        B         ||$C$L336||           ; [DPU_3_PIPE] |1228| 
        ; BRANCH OCCURS {||$C$L336||}    ; [] |1228| 
;* --------------------------------------------------------------------------*
||$C$L335||:    
        LDR       V1, [SP, #4]          ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L336||:    
        CMP       A1, #0                ; [DPU_3_PIPE] |1228| 
        BNE       ||$C$L339||           ; [DPU_3_PIPE] |1228| 
        ; BRANCHCC OCCURS {||$C$L339||}  ; [] |1228| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1619,column 3,is_stmt,isa 1
        LDR       V4, [SP, #20]         ; [DPU_3_PIPE] |1619| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A1, V4                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L338||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L338||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |765| 
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_name("sync_window")
	.dwattr $C$DW$527, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L337||       ; [] 
        ; BRANCHCC OCCURS {||$C$L337||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V4                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_name("disk_read")
	.dwattr $C$DW$528, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STREQ     V4, [V1, #48]         ; [DPU_3_PIPE] |770| 
        BEQ       ||$C$L338||           ; [DPU_3_PIPE] |770| 
        ; BRANCHCC OCCURS {||$C$L338||}  ; [] |770| 
;* --------------------------------------------------------------------------*
||$C$L337||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
	.dwpsn	file "../utils/ff.c",line 1620,column 3,is_stmt,isa 1
        B         ||$C$L339||           ; [DPU_3_PIPE] |1620| 
        ; BRANCH OCCURS {||$C$L339||}    ; [] |1620| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L338||:    
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        LDR       A2, [SP, #24]         ; [DPU_3_PIPE] |557| 
        MOV       A1, V2                ; [DPU_3_PIPE] |557| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [A2, #0]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        LDR       A2, [SP, #28]         ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        LDR       A3, [SP, #24]         ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A2, #0]          ; [DPU_3_PIPE] |551| 
        STRB      A2, [A3, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 1626,column 4,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1626| 
        MOV       LR, #1                ; [DPU_3_PIPE] |1626| 
        STRB      LR, [A2, #4]          ; [DPU_3_PIPE] |1626| 
;* --------------------------------------------------------------------------*
||$C$L339||:    
        LDR       V4, [SP, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1630,column 2,is_stmt,isa 1
        MOV       V1, A1                ; [DPU_3_PIPE] |1630| 
;* --------------------------------------------------------------------------*
||$C$L340||:    
	.dwpsn	file "../utils/ff.c",line 2354,column 5,is_stmt,isa 1
        ORR       V7, V7, #8            ; [DPU_3_PIPE] |2354| 
;* --------------------------------------------------------------------------*
||$C$L341||:    
	.dwpsn	file "../utils/ff.c",line 2365,column 4,is_stmt,isa 1
        CMP       V1, #0                ; [DPU_3_PIPE] |2365| 
        BNE       ||$C$L350||           ; [DPU_3_PIPE] |2365| 
        ; BRANCHCC OCCURS {||$C$L350||}  ; [] |2365| 
;* --------------------------------------------------------------------------*
        LSRS      A1, V7, #4            ; [DPU_3_PIPE] |2365| 
        BCC       ||$C$L343||           ; [DPU_3_PIPE] |2365| 
        ; BRANCHCC OCCURS {||$C$L343||}  ; [] |2365| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2366,column 5,is_stmt,isa 1
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("get_fattime")
	.dwattr $C$DW$529, DW_AT_TI_call
        BL        get_fattime           ; [DPU_3_PIPE] |2366| 
        ; CALL OCCURS {get_fattime }     ; [] |2366| 
	.dwpsn	file "../utils/ff.c",line 2369,column 5,is_stmt,isa 1
        STRB      V2, [V4, #28]         ; [DPU_3_PIPE] |2369| 
	.dwpsn	file "../utils/ff.c",line 2367,column 5,is_stmt,isa 1
        STRB      A1, [V4, #14]         ; [DPU_3_PIPE] |2367| 
	.dwpsn	file "../utils/ff.c",line 2369,column 5,is_stmt,isa 1
        STRB      V2, [V4, #29]         ; [DPU_3_PIPE] |2369| 
	.dwpsn	file "../utils/ff.c",line 2367,column 5,is_stmt,isa 1
        LSRS      A2, A1, #8            ; [DPU_3_PIPE] |2367| 
        STRB      A2, [V4, #15]         ; [DPU_3_PIPE] |2367| 
	.dwpsn	file "../utils/ff.c",line 2369,column 5,is_stmt,isa 1
        STRB      V2, [V4, #30]         ; [DPU_3_PIPE] |2369| 
	.dwpsn	file "../utils/ff.c",line 2367,column 5,is_stmt,isa 1
        LSR       V8, A1, #16           ; [DPU_3_PIPE] |2367| 
        STRB      V8, [V4, #16]         ; [DPU_3_PIPE] |2367| 
	.dwpsn	file "../utils/ff.c",line 2369,column 5,is_stmt,isa 1
        STRB      V2, [V4, #31]         ; [DPU_3_PIPE] |2369| 
	.dwpsn	file "../utils/ff.c",line 2367,column 5,is_stmt,isa 1
        LSR       V6, A1, #24           ; [DPU_3_PIPE] |2367| 
        STRB      V6, [V4, #17]         ; [DPU_3_PIPE] |2367| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      V5, [V4, #26]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 2368,column 5,is_stmt,isa 1
        STRB      V2, [V4, #11]         ; [DPU_3_PIPE] |2368| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #27]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       V5, V5, A2, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |1247| 
        BNE       ||$C$L342||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L342||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A2, [V4, #21]         ; [DPU_3_PIPE] |1248| 
        LDRB      A1, [V4, #20]         ; [DPU_3_PIPE] |1248| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       V5, V5, A1, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L342||:    
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      V2, [V4, #26]         ; [DPU_3_PIPE] |1261| 
        STRB      V2, [V4, #27]         ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        STRB      V2, [V4, #20]         ; [DPU_3_PIPE] |1262| 
        STRB      V2, [V4, #21]         ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 2372,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |2372| 
        MOVS      A2, #1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2373,column 5,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |2373| 
	.dwpsn	file "../utils/ff.c",line 2372,column 5,is_stmt,isa 1
        STRB      A2, [A1, #4]          ; [DPU_3_PIPE] |2372| 
	.dwpsn	file "../utils/ff.c",line 2373,column 5,is_stmt,isa 1
        BNE       ||$C$L344||           ; [DPU_3_PIPE] |2373| 
        ; BRANCHCC OCCURS {||$C$L344||}  ; [] |2373| 
;* --------------------------------------------------------------------------*
||$C$L343||:    
	.dwpsn	file "../utils/ff.c",line 2394,column 4,is_stmt,isa 1
        LDR       V8, [SP, #4]          ; [DPU_3_PIPE] |2394| 
        LSRS      A1, V7, #4            ; [DPU_3_PIPE] |2394| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2395,column 5,is_stmt,isa 1
        ORRCS     V7, V7, #32           ; [DPU_3_PIPE] |2395| 
	.dwpsn	file "../utils/ff.c",line 2396,column 4,is_stmt,isa 1
        LDR       A1, [V8, #48]         ; [DPU_3_PIPE] |2396| 
	.dwpsn	file "../utils/ff.c",line 2397,column 4,is_stmt,isa 1
        STR       V4, [V3, #32]         ; [DPU_3_PIPE] |2397| 
	.dwpsn	file "../utils/ff.c",line 2396,column 4,is_stmt,isa 1
        STR       A1, [V3, #28]         ; [DPU_3_PIPE] |2396| 
	.dwpsn	file "../utils/ff.c",line 2417,column 3,is_stmt,isa 1
        B         ||$C$L348||           ; [DPU_3_PIPE] |2417| 
        ; BRANCH OCCURS {||$C$L348||}    ; [] |2417| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L344||:    
	.dwpsn	file "../utils/ff.c",line 2374,column 6,is_stmt,isa 1
        LDR       V6, [A1, #48]         ; [DPU_3_PIPE] |2374| 
	.dwpsn	file "../utils/ff.c",line 2375,column 6,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |2375| 
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("remove_chain")
	.dwattr $C$DW$530, DW_AT_TI_call
        BL        remove_chain          ; [DPU_3_PIPE] |2375| 
        ; CALL OCCURS {remove_chain }    ; [] |2375| 
        MOVS      V1, A1                ; [DPU_3_PIPE] |2375| 
        BNE       ||$C$L350||           ; [DPU_3_PIPE] |2375| 
        ; BRANCHCC OCCURS {||$C$L350||}  ; [] |2375| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2377,column 7,is_stmt,isa 1
        LDR       V8, [SP, #4]          ; [DPU_3_PIPE] |2377| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V8, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 2377,column 7,is_stmt,isa 1
        SUB       V5, V5, #1            ; [DPU_3_PIPE] |2377| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 2377,column 7,is_stmt,isa 1
        STR       V5, [V8, #12]         ; [DPU_3_PIPE] |2377| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        BEQ       ||$C$L347||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L347||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V8                ; [DPU_3_PIPE] |765| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_name("sync_window")
	.dwattr $C$DW$531, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L345||       ; [] 
        ; BRANCHCC OCCURS {||$C$L345||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V8, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V8, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] 
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("disk_read")
	.dwattr $C$DW$532, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBZ       A1, ||$C$L346||       ; [] 
        ; BRANCHCC OCCURS {||$C$L346||}  ; [] |768| 
;* --------------------------------------------------------------------------*
||$C$L345||:    
        MOVS      A1, #1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        B         ||$C$L351||           ; [DPU_3_PIPE] |2430| 
        ; BRANCH OCCURS {||$C$L351||}    ; [] |2430| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L346||:    
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [V8, #48]         ; [DPU_3_PIPE] |770| 
        LDR       V8, [SP, #4]          ; [DPU_3_PIPE] |770| 
        LDR       A1, [V8, #48]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L347||:    
	.dwpsn	file "../utils/ff.c",line 2396,column 4,is_stmt,isa 1
        STR       A1, [V3, #28]         ; [DPU_3_PIPE] |2396| 
	.dwpsn	file "../utils/ff.c",line 2397,column 4,is_stmt,isa 1
        STR       V4, [V3, #32]         ; [DPU_3_PIPE] |2397| 
        MOV       V1, V2                ; [DPU_3_PIPE] |2397| 
	.dwpsn	file "../utils/ff.c",line 2395,column 5,is_stmt,isa 1
        ORR       V7, V7, #32           ; [DPU_3_PIPE] |2395| 
;* --------------------------------------------------------------------------*
||$C$L348||:    
	.dwpsn	file "../utils/ff.c",line 2418,column 4,is_stmt,isa 1
        STRB      V7, [V3, #6]          ; [DPU_3_PIPE] |2418| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        LDRB      A2, [V8, #0]          ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        LDRB      A3, [V4, #27]         ; [DPU_3_PIPE] |1246| 
        LDRB      A1, [V4, #26]         ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        CMP       A2, #3                ; [DPU_3_PIPE] |1247| 
	.dwpsn	file "../utils/ff.c",line 1246,column 2,is_stmt,isa 1
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |1246| 
	.dwpsn	file "../utils/ff.c",line 1247,column 2,is_stmt,isa 1
        BNE       ||$C$L349||           ; [DPU_3_PIPE] |1247| 
        ; BRANCHCC OCCURS {||$C$L349||}  ; [] |1247| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1248,column 3,is_stmt,isa 1
        LDRB      A3, [V4, #21]         ; [DPU_3_PIPE] |1248| 
        LDRB      A2, [V4, #20]         ; [DPU_3_PIPE] |1248| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |1248| 
        ORR       A1, A1, A2, LSL #16   ; [DPU_3_PIPE] |1248| 
;* --------------------------------------------------------------------------*
||$C$L349||:    
	.dwpsn	file "../utils/ff.c",line 2419,column 4,is_stmt,isa 1
        STR       A1, [V3, #16]         ; [DPU_3_PIPE] |2419| 
	.dwpsn	file "../utils/ff.c",line 2420,column 4,is_stmt,isa 1
        LDRB      A4, [V4, #31]         ; [DPU_3_PIPE] |2420| 
        LDRB      A3, [V4, #29]         ; [DPU_3_PIPE] |2420| 
        LDRB      A2, [V4, #28]         ; [DPU_3_PIPE] |2420| 
        LDRB      A1, [V4, #30]         ; [DPU_3_PIPE] |2420| 
	.dwpsn	file "../utils/ff.c",line 2426,column 4,is_stmt,isa 1
        STR       V8, [V3, #0]          ; [DPU_3_PIPE] |2426| 
	.dwpsn	file "../utils/ff.c",line 2421,column 4,is_stmt,isa 1
        STR       V2, [V3, #8]          ; [DPU_3_PIPE] |2421| 
	.dwpsn	file "../utils/ff.c",line 2422,column 4,is_stmt,isa 1
        STR       V2, [V3, #24]         ; [DPU_3_PIPE] |2422| 
	.dwpsn	file "../utils/ff.c",line 2420,column 4,is_stmt,isa 1
        ORR       A1, A1, A4, LSL #8    ; [DPU_3_PIPE] |2420| 
        LSLS      A1, A1, #16           ; [DPU_3_PIPE] |2420| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |2420| 
        ORRS      A2, A2, A1            ; [DPU_3_PIPE] |2420| 
        STR       A2, [V3, #12]         ; [DPU_3_PIPE] |2420| 
	.dwpsn	file "../utils/ff.c",line 2426,column 20,is_stmt,isa 1
        LDRH      A1, [V8, #6]          ; [DPU_3_PIPE] |2426| 
        STRH      A1, [V3, #4]          ; [DPU_3_PIPE] |2426| 
;* --------------------------------------------------------------------------*
||$C$L350||:    
	.dwpsn	file "../utils/ff.c",line 2430,column 2,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |2430| 
;* --------------------------------------------------------------------------*
||$C$L351||:    
        ADD       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$495, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$495, DW_AT_TI_end_line(0x97f)
	.dwattr $C$DW$495, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$495

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_mount
	.thumb
	.global	f_mount

$C$DW$534	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mount")
	.dwattr $C$DW$534, DW_AT_low_pc(f_mount)
	.dwattr $C$DW$534, DW_AT_high_pc(0x00)
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("f_mount")
	.dwattr $C$DW$534, DW_AT_external
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$534, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$534, DW_AT_TI_begin_line(0x8dc)
	.dwattr $C$DW$534, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$534, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$534, DW_AT_decl_line(0x8dc)
	.dwattr $C$DW$534, DW_AT_decl_column(0x09)
	.dwattr $C$DW$534, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../utils/ff.c",line 2272,column 1,is_stmt,address f_mount,isa 1

	.dwfde $C$DW$CIE, f_mount
$C$DW$535	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vol")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("vol")
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_location[DW_OP_reg0]
$C$DW$536	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fs")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$536, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_mount                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SR                                      *
;*   Regs Used         : A1,A2,A3,A4,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
f_mount:
;* --------------------------------------------------------------------------*
;* A2    assigned to $O$C1
;* A1    assigned to fs
$C$DW$537	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$537, DW_AT_location[DW_OP_reg0]
;* A2    assigned to vol
$C$DW$538	.dwtag  DW_TAG_variable, DW_AT_name("vol")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("vol")
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg1]
;* A3    assigned to $O$K14
	.dwcfi	cfa_offset, 0
        MOV       A3, A1                ; [DPU_3_PIPE] |2272| 
        MOV       A1, A2                ; [DPU_3_PIPE] |2272| 
	.dwpsn	file "../utils/ff.c",line 2276,column 2,is_stmt,isa 1
        MOVS      A2, A3                ; [DPU_3_PIPE] |2276| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2277,column 3,is_stmt,isa 1
        MOVNE     A1, #11               ; [DPU_3_PIPE] |2277| 
        BNE       ||$C$L352||           ; [DPU_3_PIPE] |2277| 
        ; BRANCHCC OCCURS {||$C$L352||}  ; [] |2277| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2280,column 2,is_stmt,isa 1
        MOVW      A3, ||$O1$$||+4       ; [DPU_3_PIPE] |2280| 
        MOVT      A3, ||$O1$$||+4       ; [DPU_3_PIPE] |2280| 
        ADD       A3, A3, A2, LSL #2    ; [DPU_3_PIPE] |2280| 
        LDR       A2, [A3, #0]          ; [DPU_3_PIPE] |2280| 
        CMP       A2, #0                ; [DPU_3_PIPE] |2280| 
        ITT       NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2287,column 3,is_stmt,isa 1
        MOVNE     A4, #0                ; [DPU_3_PIPE] |2287| 
        STRBNE    A4, [A2, #0]          ; [DPU_3_PIPE] |2287| 
	.dwpsn	file "../utils/ff.c",line 2290,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2290| 
        ITT       NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2291,column 3,is_stmt,isa 1
        MOVNE     A2, #0                ; [DPU_3_PIPE] |2291| 
        STRBNE    A2, [A1, #0]          ; [DPU_3_PIPE] |2291| 
	.dwpsn	file "../utils/ff.c",line 2296,column 2,is_stmt,isa 1
        STR       A1, [A3, #0]          ; [DPU_3_PIPE] |2296| 
	.dwpsn	file "../utils/ff.c",line 2298,column 2,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2298| 
;* --------------------------------------------------------------------------*
||$C$L352||:    
$C$DW$539	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$539, DW_AT_low_pc(0x00)
	.dwattr $C$DW$539, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$534, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$534, DW_AT_TI_end_line(0x8fb)
	.dwattr $C$DW$534, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$534

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_mkfs
	.thumb
	.global	f_mkfs

$C$DW$540	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mkfs")
	.dwattr $C$DW$540, DW_AT_low_pc(f_mkfs)
	.dwattr $C$DW$540, DW_AT_high_pc(0x00)
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("f_mkfs")
	.dwattr $C$DW$540, DW_AT_external
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$540, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$540, DW_AT_TI_begin_line(0xed8)
	.dwattr $C$DW$540, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$540, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$540, DW_AT_decl_line(0xed8)
	.dwattr $C$DW$540, DW_AT_decl_column(0x09)
	.dwattr $C$DW$540, DW_AT_TI_max_frame_size(0x48)
	.dwpsn	file "../utils/ff.c",line 3805,column 1,is_stmt,address f_mkfs,isa 1

	.dwfde $C$DW$CIE, f_mkfs
$C$DW$541	.dwtag  DW_TAG_variable, DW_AT_name("vst")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("vst$1")
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$541, DW_AT_location[DW_OP_addr vst$1]
$C$DW$542	.dwtag  DW_TAG_variable, DW_AT_name("cst")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("cst$2")
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$542, DW_AT_location[DW_OP_addr cst$2]
$C$DW$543	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vol")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("vol")
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_location[DW_OP_reg0]
$C$DW$544	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sfd")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("sfd")
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_location[DW_OP_reg1]
$C$DW$545	.dwtag  DW_TAG_formal_parameter, DW_AT_name("au")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("au")
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$545, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: f_mkfs                                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 32 Auto + 36 Save = 68 byte                *
;*****************************************************************************
f_mkfs:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C14
;* A2    assigned to $O$C15
;* A1    assigned to $O$C16
;* V3    assigned to $O$C17
;* LR    assigned to $O$C18
;* A3    assigned to $O$C19
;* LR    assigned to $O$C20
;* A3    assigned to $O$C21
;* A4    assigned to $O$C22
;* A3    assigned to $O$C24
;* A1    assigned to $O$C25
;* A1    assigned to $O$C26
;* A1    assigned to $O$y613
;* A3    assigned to $O$y104
;* V5    assigned to tbl
$C$DW$546	.dwtag  DW_TAG_variable, DW_AT_name("tbl")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("tbl")
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$546, DW_AT_location[DW_OP_reg8]
$C$DW$547	.dwtag  DW_TAG_variable, DW_AT_name("n_clst")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("n_clst")
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$547, DW_AT_location[DW_OP_breg13 8]
;* A1    assigned to n_clst
$C$DW$548	.dwtag  DW_TAG_variable, DW_AT_name("n_clst")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("n_clst")
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$548, DW_AT_location[DW_OP_reg0]
;* V1    assigned to i
$C$DW$549	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$549, DW_AT_location[DW_OP_reg4]
;* V6    assigned to i
$C$DW$550	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$550, DW_AT_location[DW_OP_reg9]
$C$DW$551	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$551, DW_AT_location[DW_OP_breg13 12]
;* A1    assigned to i
$C$DW$552	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$552, DW_AT_location[DW_OP_reg0]
;* V1    assigned to i
$C$DW$553	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$553, DW_AT_location[DW_OP_reg4]
;* V4    assigned to vol
$C$DW$554	.dwtag  DW_TAG_variable, DW_AT_name("vol")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("vol")
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$554, DW_AT_location[DW_OP_reg7]
;* V5    assigned to sfd
$C$DW$555	.dwtag  DW_TAG_variable, DW_AT_name("sfd")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("sfd")
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$555, DW_AT_location[DW_OP_reg8]
;* V1    assigned to au
$C$DW$556	.dwtag  DW_TAG_variable, DW_AT_name("au")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("au")
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$556, DW_AT_location[DW_OP_reg4]
$C$DW$557	.dwtag  DW_TAG_variable, DW_AT_name("fmt")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("fmt")
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$557, DW_AT_location[DW_OP_breg13 16]
$C$DW$558	.dwtag  DW_TAG_variable, DW_AT_name("md")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("md")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_breg13 20]
;* A2    assigned to sys
$C$DW$559	.dwtag  DW_TAG_variable, DW_AT_name("sys")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("sys")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_reg1]
;* A1    assigned to vs
$C$DW$560	.dwtag  DW_TAG_variable, DW_AT_name("vs")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("vs")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_reg0]
$C$DW$561	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_breg13 0]
;* V8    assigned to wsect
$C$DW$562	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_reg11]
$C$DW$563	.dwtag  DW_TAG_variable, DW_AT_name("b_vol")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("b_vol")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_breg13 24]
;* V8    assigned to b_fat
$C$DW$564	.dwtag  DW_TAG_variable, DW_AT_name("b_fat")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("b_fat")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_reg11]
$C$DW$565	.dwtag  DW_TAG_variable, DW_AT_name("b_data")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("b_data")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_breg13 8]
$C$DW$566	.dwtag  DW_TAG_variable, DW_AT_name("n_vol")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("n_vol")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_breg13 4]
;* V2    assigned to n_rsv
$C$DW$567	.dwtag  DW_TAG_variable, DW_AT_name("n_rsv")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("n_rsv")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_reg5]
;* V6    assigned to n_fat
$C$DW$568	.dwtag  DW_TAG_variable, DW_AT_name("n_fat")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("n_fat")
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$568, DW_AT_location[DW_OP_reg9]
$C$DW$569	.dwtag  DW_TAG_variable, DW_AT_name("n_dir")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("n_dir")
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$569, DW_AT_location[DW_OP_breg13 28]
;* V3    assigned to fs
$C$DW$570	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_reg6]
;* A1    assigned to stat
$C$DW$571	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("stat")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_reg0]
;* A1    assigned to d
$C$DW$572	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_reg0]
;* A4    assigned to cnt
$C$DW$573	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_reg3]
;* A1    assigned to d
$C$DW$574	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$574, DW_AT_location[DW_OP_reg0]
;* A4    assigned to cnt
$C$DW$575	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$575, DW_AT_location[DW_OP_reg3]
;* A1    assigned to d
$C$DW$576	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$576, DW_AT_location[DW_OP_reg0]
;* A1    assigned to d
$C$DW$577	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$577, DW_AT_location[DW_OP_reg0]
;* A1    assigned to d
$C$DW$578	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$578, DW_AT_location[DW_OP_reg0]
;* A1    assigned to d
$C$DW$579	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$579, DW_AT_location[DW_OP_reg0]
;* V3    assigned to cnt
$C$DW$580	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$580, DW_AT_location[DW_OP_reg6]
;* A1    assigned to d
$C$DW$581	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$581, DW_AT_location[DW_OP_reg0]
;* A4    assigned to cnt
$C$DW$582	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$582, DW_AT_location[DW_OP_reg3]
;* V9    assigned to $O$K422
;* V3    assigned to $O$K351
;* V9    assigned to $O$K256
;* A1    assigned to $O$K251
;* A3    assigned to $O$K295
;* V3    assigned to $O$K280
;* A2    assigned to $O$K286
;* A3    assigned to $O$K221
;* A4    assigned to $O$K177
;* LR    assigned to $O$K191
;* V5    assigned to $O$U166
;* V7    assigned to $O$K31
;* A4    assigned to $O$U75
;* A3    assigned to $O$K66
;* A3    assigned to $O$PRE$u8x4$170
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        MOV       V1, A3                ; [DPU_3_PIPE] |3805| 
        MOV       V5, A2                ; [DPU_3_PIPE] |3805| 
	.dwpsn	file "../utils/ff.c",line 3818,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |3818| 
        SUB       SP, SP, #36           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 72
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3818,column 23,is_stmt,isa 1
        MOVNE     A1, #11               ; [DPU_3_PIPE] |3818| 
        BNE       ||$C$L396||           ; [DPU_3_PIPE] |3818| 
        ; BRANCHCC OCCURS {||$C$L396||}  ; [] |3818| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3819,column 2,is_stmt,isa 1
        CMP       V5, #2                ; [DPU_3_PIPE] |3819| 
        BGE       ||$C$L353||           ; [DPU_3_PIPE] |3819| 
        ; BRANCHCC OCCURS {||$C$L353||}  ; [] |3819| 
;* --------------------------------------------------------------------------*
        SUBS      A1, V1, #1            ; [DPU_3_PIPE] |3819| 
        TST       V1, A1                ; [DPU_3_PIPE] |3819| 
        BEQ       ||$C$L354||           ; [DPU_3_PIPE] |3819| 
        ; BRANCHCC OCCURS {||$C$L354||}  ; [] |3819| 
;* --------------------------------------------------------------------------*
||$C$L353||:    
	.dwpsn	file "../utils/ff.c",line 3820,column 21,is_stmt,isa 1
        MOVS      A1, #19               ; [DPU_3_PIPE] |3820| 
        B         ||$C$L396||           ; [DPU_3_PIPE] |3820| 
        ; BRANCH OCCURS {||$C$L396||}    ; [] |3820| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L354||:    
	.dwpsn	file "../utils/ff.c",line 3821,column 2,is_stmt,isa 1
        MOVW      A1, ||$O1$$||+4       ; [DPU_3_PIPE] |3821| 
        MOVT      A1, ||$O1$$||+4       ; [DPU_3_PIPE] |3821| 
        ADD       A1, A1, V4, LSL #2    ; [DPU_3_PIPE] |3821| 
        LDR       V3, [A1, #0]          ; [DPU_3_PIPE] |3821| 
	.dwpsn	file "../utils/ff.c",line 3822,column 2,is_stmt,isa 1
        CMP       V3, #0                ; [DPU_3_PIPE] |3822| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3822,column 11,is_stmt,isa 1
        MOVEQ     A1, #12               ; [DPU_3_PIPE] |3822| 
        BEQ       ||$C$L396||           ; [DPU_3_PIPE] |3822| 
        ; BRANCHCC OCCURS {||$C$L396||}  ; [] |3822| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3823,column 2,is_stmt,isa 1
        MOV       V7, #0                ; [DPU_3_PIPE] |3823| 
	.dwpsn	file "../utils/ff.c",line 3828,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3828| 
	.dwpsn	file "../utils/ff.c",line 3823,column 2,is_stmt,isa 1
        STRB      V7, [V3, #0]          ; [DPU_3_PIPE] |3823| 
	.dwpsn	file "../utils/ff.c",line 3828,column 2,is_stmt,isa 1
$C$DW$583	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$583, DW_AT_low_pc(0x00)
	.dwattr $C$DW$583, DW_AT_name("disk_initialize")
	.dwattr $C$DW$583, DW_AT_TI_call
        BL        disk_initialize       ; [DPU_3_PIPE] |3828| 
        ; CALL OCCURS {disk_initialize }  ; [] |3828| 
	.dwpsn	file "../utils/ff.c",line 3829,column 2,is_stmt,isa 1
        LSRS      A2, A1, #1            ; [DPU_3_PIPE] |3829| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3829,column 25,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |3829| 
        BCS       ||$C$L396||           ; [DPU_3_PIPE] |3829| 
        ; BRANCHCC OCCURS {||$C$L396||}  ; [] |3829| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3830,column 2,is_stmt,isa 1
        LSRS      A1, A1, #3            ; [DPU_3_PIPE] |3830| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3830,column 26,is_stmt,isa 1
        MOVCS     A1, #10               ; [DPU_3_PIPE] |3830| 
        BCS       ||$C$L396||           ; [DPU_3_PIPE] |3830| 
        ; BRANCHCC OCCURS {||$C$L396||}  ; [] |3830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3845,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3845| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |3845| 
        ADD       A3, SP, #4            ; [DPU_3_PIPE] |3845| 
$C$DW$584	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$584, DW_AT_low_pc(0x00)
	.dwattr $C$DW$584, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$584, DW_AT_TI_call
        BL        disk_ioctl            ; [DPU_3_PIPE] |3845| 
        ; CALL OCCURS {disk_ioctl }      ; [] |3845| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3845| 
        BNE       ||$C$L393||           ; [DPU_3_PIPE] |3845| 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3845| 
;* --------------------------------------------------------------------------*
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |3845| 
        CMP       A2, #128              ; [DPU_3_PIPE] |3845| 
        BCC       ||$C$L393||           ; [DPU_3_PIPE] |3845| 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3845| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3847,column 3,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |3847| 
        ITEE      NE                    ; [DPU_3_PIPE] 
        STRNE     V7, [SP, #24]         ; [DPU_3_PIPE] 
        MOVEQ     A1, #63               ; [DPU_3_PIPE] |3847| 
        STREQ     A1, [SP, #24]         ; [DPU_3_PIPE] |3847| 
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3848,column 3,is_stmt,isa 1
        SUBS      A2, A2, A1            ; [DPU_3_PIPE] |3848| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |3848| 
        CBNZ      V1, ||$C$L357||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3851,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L357||}  ; [] |3851| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3853,column 15,is_stmt,isa 1
        MOVW      A3, ||$O2$$||+0       ; [DPU_3_PIPE] |3853| 
        MOVT      A3, ||$O2$$||+0       ; [DPU_3_PIPE] |3853| 
        LDRH      A4, [A3, #0]          ; [DPU_3_PIPE] |3853| 
	.dwpsn	file "../utils/ff.c",line 3852,column 3,is_stmt,isa 1
        MOVW      A1, #19923            ; [DPU_3_PIPE] |3852| 
        MOVT      A1, #4194             ; [DPU_3_PIPE] |3852| 
        UMULL     V1, A1, A1, A2        ; [DPU_3_PIPE] |3852| 
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |3852| 
        MOV       V1, V7                ; [DPU_3_PIPE] |3852| 
	.dwpsn	file "../utils/ff.c",line 3853,column 15,is_stmt,isa 1
        CMP       A4, A1                ; [DPU_3_PIPE] |3853| 
        BLS       ||$C$L356||           ; [DPU_3_PIPE] |3853| 
        ; BRANCHCC OCCURS {||$C$L356||}  ; [] |3853| 
;* --------------------------------------------------------------------------*
        MOV       A4, A3                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L355||
;*
;*   Loop source line                : 3853
;*   Loop closing brace source line  : 3853
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L355||:    
        LDRH      V2, [A4, #2]!         ; [DPU_3_PIPE] |3853| 
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |3853| 
        CMP       V2, A1                ; [DPU_3_PIPE] |3853| 
        BLS       ||$C$L356||           ; [DPU_3_PIPE] |3853| 
        ; BRANCHCC OCCURS {||$C$L356||}  ; [] |3853| 
;* --------------------------------------------------------------------------*
        LDRH      V2, [A4, #2]!         ; [DPU_3_PIPE] |3853| 
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |3853| 
        CMP       V2, A1                ; [DPU_3_PIPE] |3853| 
        BLS       ||$C$L356||           ; [DPU_3_PIPE] |3853| 
        ; BRANCHCC OCCURS {||$C$L356||}  ; [] |3853| 
;* --------------------------------------------------------------------------*
        LDRH      V2, [A4, #2]!         ; [DPU_3_PIPE] |3853| 
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |3853| 
        CMP       V2, A1                ; [DPU_3_PIPE] |3853| 
        BLS       ||$C$L356||           ; [DPU_3_PIPE] |3853| 
        ; BRANCHCC OCCURS {||$C$L356||}  ; [] |3853| 
;* --------------------------------------------------------------------------*
        LDRH      V2, [A4, #2]!         ; [DPU_3_PIPE] |3853| 
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |3853| 
        CMP       A1, V2                ; [DPU_3_PIPE] |3853| 
        BCC       ||$C$L355||           ; [DPU_3_PIPE] |3853| 
        ; BRANCHCC OCCURS {||$C$L355||}  ; [] |3853| 
;* --------------------------------------------------------------------------*
||$C$L356||:    
	.dwpsn	file "../utils/ff.c",line 3854,column 3,is_stmt,isa 1
        ADD       A3, A3, V1, LSL #1    ; [DPU_3_PIPE] |3854| 
        LDRH      V1, [A3, #22]         ; [DPU_3_PIPE] |3854| 
;* --------------------------------------------------------------------------*
||$C$L357||:    
	.dwpsn	file "../utils/ff.c",line 3857,column 2,is_stmt,isa 1
        LSRS      V1, V1, #9            ; [DPU_3_PIPE] |3857| 
        BEQ       ||$C$L358||           ; [DPU_3_PIPE] |3857| 
        ; BRANCHCC OCCURS {||$C$L358||}  ; [] |3857| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3858,column 2,is_stmt,isa 1
        CMP       V1, #128              ; [DPU_3_PIPE] |3858| 
        BLS       ||$C$L359||           ; [DPU_3_PIPE] |3858| 
        ; BRANCHCC OCCURS {||$C$L359||}  ; [] |3858| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3861,column 2,is_stmt,isa 1
        MOVS      V1, #128              ; [DPU_3_PIPE] |3861| 
        MOV       A3, #4085             ; [DPU_3_PIPE] |3861| 
        UDIV      A1, A2, V1            ; [DPU_3_PIPE] |3861| 
        CMP       A3, A1                ; [DPU_3_PIPE] |3861| 
        BCC       ||$C$L360||           ; [DPU_3_PIPE] |3861| 
        ; BRANCHCC OCCURS {||$C$L360||}  ; [] |3861| 
;* --------------------------------------------------------------------------*
        B         ||$C$L362||           ; [DPU_3_PIPE] |3861| 
        ; BRANCH OCCURS {||$C$L362||}    ; [] |3861| 
;* --------------------------------------------------------------------------*
||$C$L358||:    
	.dwpsn	file "../utils/ff.c",line 3857,column 15,is_stmt,isa 1
        MOVS      V1, #1                ; [DPU_3_PIPE] |3857| 
;* --------------------------------------------------------------------------*
||$C$L359||:    
	.dwpsn	file "../utils/ff.c",line 3861,column 2,is_stmt,isa 1
        MOV       A3, #4085             ; [DPU_3_PIPE] |3861| 
        UDIV      A1, A2, V1            ; [DPU_3_PIPE] |3861| 
        CMP       A3, A1                ; [DPU_3_PIPE] |3861| 
        BCS       ||$C$L362||           ; [DPU_3_PIPE] |3861| 
        ; BRANCHCC OCCURS {||$C$L362||}  ; [] |3861| 
;* --------------------------------------------------------------------------*
||$C$L360||:    
	.dwpsn	file "../utils/ff.c",line 3864,column 2,is_stmt,isa 1
        MOV       A3, #65525            ; [DPU_3_PIPE] |3864| 
        CMP       A3, A1                ; [DPU_3_PIPE] |3864| 
        BCS       ||$C$L361||           ; [DPU_3_PIPE] |3864| 
        ; BRANCHCC OCCURS {||$C$L361||}  ; [] |3864| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        LDR       V8, [SP, #24]         ; [DPU_3_PIPE] |3880| 
	.dwpsn	file "../utils/ff.c",line 3868,column 3,is_stmt,isa 1
        LSLS      A1, A1, #2            ; [DPU_3_PIPE] |3868| 
        ADD       A1, A1, #519          ; [DPU_3_PIPE] |3868| 
        LSR       V6, A1, #9            ; [DPU_3_PIPE] |3868| 
	.dwpsn	file "../utils/ff.c",line 3877,column 2,is_stmt,isa 1
        ADD       V8, V8, #32           ; [DPU_3_PIPE] |3877| 
	.dwpsn	file "../utils/ff.c",line 3879,column 2,is_stmt,isa 1
        ADD       A3, V6, V8            ; [DPU_3_PIPE] |3879| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        ADD       A1, V1, V6            ; [DPU_3_PIPE] |3880| 
	.dwpsn	file "../utils/ff.c",line 3879,column 2,is_stmt,isa 1
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |3879| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        ADDS      A1, A1, #32           ; [DPU_3_PIPE] |3880| 
        CMP       A1, A2                ; [DPU_3_PIPE] |3880| 
        BHI       ||$C$L370||           ; [DPU_3_PIPE] |3880| 
        ; BRANCHCC OCCURS {||$C$L370||}  ; [] |3880| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3864,column 27,is_stmt,isa 1
        MOVS      A2, #3                ; [DPU_3_PIPE] |3864| 
	.dwpsn	file "../utils/ff.c",line 3883,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3883| 
        MOV       A3, SP                ; [DPU_3_PIPE] |3883| 
	.dwpsn	file "../utils/ff.c",line 3864,column 27,is_stmt,isa 1
        STR       A2, [SP, #16]         ; [DPU_3_PIPE] |3864| 
	.dwpsn	file "../utils/ff.c",line 3883,column 2,is_stmt,isa 1
$C$DW$585	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$585, DW_AT_low_pc(0x00)
	.dwattr $C$DW$585, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$585, DW_AT_TI_call
        BL        disk_ioctl            ; [DPU_3_PIPE] |3883| 
        ; CALL OCCURS {disk_ioctl }      ; [] |3883| 
	.dwpsn	file "../utils/ff.c",line 3869,column 3,is_stmt,isa 1
        MOVS      V2, #32               ; [DPU_3_PIPE] |3869| 
        STR       V7, [SP, #28]         ; [DPU_3_PIPE] |3869| 
	.dwpsn	file "../utils/ff.c",line 3883,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3883| 
        BEQ       ||$C$L364||           ; [DPU_3_PIPE] |3883| 
        ; BRANCHCC OCCURS {||$C$L364||}  ; [] |3883| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3884,column 2,is_stmt,isa 1
        STR       V7, [SP, #0]          ; [DPU_3_PIPE] |3884| 
	.dwpsn	file "../utils/ff.c",line 3886,column 2,is_stmt,isa 1
        B         ||$C$L369||           ; [DPU_3_PIPE] |3886| 
        ; BRANCH OCCURS {||$C$L369||}    ; [] |3886| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L361||:    
	.dwpsn	file "../utils/ff.c",line 3863,column 27,is_stmt,isa 1
        MOVS      A3, #2                ; [DPU_3_PIPE] |3863| 
	.dwpsn	file "../utils/ff.c",line 3872,column 3,is_stmt,isa 1
        ADDS      A1, A1, #2            ; [DPU_3_PIPE] |3872| 
	.dwpsn	file "../utils/ff.c",line 3863,column 27,is_stmt,isa 1
        STR       A3, [SP, #16]         ; [DPU_3_PIPE] |3863| 
	.dwpsn	file "../utils/ff.c",line 3872,column 3,is_stmt,isa 1
        LSL       V6, A1, #1            ; [DPU_3_PIPE] |3872| 
        B         ||$C$L363||           ; [DPU_3_PIPE] |3872| 
        ; BRANCH OCCURS {||$C$L363||}    ; [] |3872| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L362||:    
        UXTH      A1, A1                ; [DPU_3_PIPE] |3872| 
	.dwpsn	file "../utils/ff.c",line 3862,column 2,is_stmt,isa 1
        MOV       LR, #1                ; [DPU_3_PIPE] |3862| 
	.dwpsn	file "../utils/ff.c",line 3872,column 3,is_stmt,isa 1
        ADD       A1, A1, A1, LSL #1    ; [DPU_3_PIPE] |3872| 
	.dwpsn	file "../utils/ff.c",line 3862,column 2,is_stmt,isa 1
        STR       LR, [SP, #16]         ; [DPU_3_PIPE] |3862| 
	.dwpsn	file "../utils/ff.c",line 3872,column 3,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |3872| 
        LSR       V6, A1, #1            ; [DPU_3_PIPE] |3872| 
        ADD       V6, V6, #3            ; [DPU_3_PIPE] |3872| 
;* --------------------------------------------------------------------------*
||$C$L363||:    
	.dwpsn	file "../utils/ff.c",line 3873,column 3,is_stmt,isa 1
        LDR       V8, [SP, #24]         ; [DPU_3_PIPE] |3873| 
        ADD       A1, V6, #511          ; [DPU_3_PIPE] |3873| 
        LSR       V6, A1, #9            ; [DPU_3_PIPE] |3873| 
	.dwpsn	file "../utils/ff.c",line 3877,column 2,is_stmt,isa 1
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |3877| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        ADD       A1, V1, V6            ; [DPU_3_PIPE] |3880| 
	.dwpsn	file "../utils/ff.c",line 3879,column 2,is_stmt,isa 1
        ADD       A3, V6, V8            ; [DPU_3_PIPE] |3879| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        ADDS      A1, A1, #33           ; [DPU_3_PIPE] |3880| 
	.dwpsn	file "../utils/ff.c",line 3879,column 2,is_stmt,isa 1
        ADDS      A3, A3, #32           ; [DPU_3_PIPE] |3879| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        CMP       A1, A2                ; [DPU_3_PIPE] |3880| 
	.dwpsn	file "../utils/ff.c",line 3879,column 2,is_stmt,isa 1
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |3879| 
	.dwpsn	file "../utils/ff.c",line 3880,column 2,is_stmt,isa 1
        BHI       ||$C$L370||           ; [DPU_3_PIPE] |3880| 
        ; BRANCHCC OCCURS {||$C$L370||}  ; [] |3880| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3883,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3883| 
        MOVS      A2, #3                ; [DPU_3_PIPE] |3883| 
        MOV       A3, SP                ; [DPU_3_PIPE] |3883| 
$C$DW$586	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$586, DW_AT_low_pc(0x00)
	.dwattr $C$DW$586, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$586, DW_AT_TI_call
        BL        disk_ioctl            ; [DPU_3_PIPE] |3883| 
        ; CALL OCCURS {disk_ioctl }      ; [] |3883| 
	.dwpsn	file "../utils/ff.c",line 3874,column 3,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |3874| 
	.dwpsn	file "../utils/ff.c",line 3875,column 3,is_stmt,isa 1
        MOVS      A2, #32               ; [DPU_3_PIPE] |3875| 
        STR       A2, [SP, #28]         ; [DPU_3_PIPE] |3875| 
        CBNZ      A1, ||$C$L365||       ; [] 
	.dwpsn	file "../utils/ff.c",line 3883,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L365||}  ; [] |3883| 
;* --------------------------------------------------------------------------*
||$C$L364||:    
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |3883| 
        CBZ       A1, ||$C$L365||       ; [] 
        ; BRANCHCC OCCURS {||$C$L365||}  ; [] |3883| 
;* --------------------------------------------------------------------------*
        CMP       A1, #32768            ; [DPU_3_PIPE] |3883| 
        BLS       ||$C$L366||           ; [DPU_3_PIPE] |3883| 
        ; BRANCHCC OCCURS {||$C$L366||}  ; [] |3883| 
;* --------------------------------------------------------------------------*
||$C$L365||:    
	.dwpsn	file "../utils/ff.c",line 3883,column 73,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |3883| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3883| 
;* --------------------------------------------------------------------------*
||$C$L366||:    
	.dwpsn	file "../utils/ff.c",line 3884,column 2,is_stmt,isa 1
        LDR       A2, [SP, #8]          ; [DPU_3_PIPE] |3884| 
        LDR       LR, [SP, #16]         ; [DPU_3_PIPE] |3884| 
        ADDS      A3, A2, A1            ; [DPU_3_PIPE] |3884| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |3884| 
	.dwpsn	file "../utils/ff.c",line 3886,column 2,is_stmt,isa 1
        CMP       LR, #3                ; [DPU_3_PIPE] |3886| 
	.dwpsn	file "../utils/ff.c",line 3884,column 2,is_stmt,isa 1
        SUB       A3, A3, #1            ; [DPU_3_PIPE] |3884| 
        BIC       A3, A3, A1            ; [DPU_3_PIPE] |3884| 
        SUB       A3, A3, A2            ; [DPU_3_PIPE] |3884| 
        STR       A3, [SP, #0]          ; [DPU_3_PIPE] |3884| 
	.dwpsn	file "../utils/ff.c",line 3886,column 2,is_stmt,isa 1
        BEQ       ||$C$L369||           ; [DPU_3_PIPE] |3886| 
        ; BRANCHCC OCCURS {||$C$L369||}  ; [] |3886| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3890,column 3,is_stmt,isa 1
        ADD       V6, A3, V6            ; [DPU_3_PIPE] |3890| 
	.dwpsn	file "../utils/ff.c",line 3894,column 2,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3894| 
        LDR       A3, [SP, #28]         ; [DPU_3_PIPE] |3894| 
        SUBS      A2, A1, V2            ; [DPU_3_PIPE] |3894| 
	.dwpsn	file "../utils/ff.c",line 3895,column 2,is_stmt,isa 1
        CMP       LR, #2                ; [DPU_3_PIPE] |3895| 
	.dwpsn	file "../utils/ff.c",line 3894,column 2,is_stmt,isa 1
        SUB       A2, A2, V6            ; [DPU_3_PIPE] |3894| 
        SUB       A2, A2, A3            ; [DPU_3_PIPE] |3894| 
        UDIV      A2, A2, V1            ; [DPU_3_PIPE] |3894| 
        STR       A2, [SP, #8]          ; [DPU_3_PIPE] |3894| 
	.dwpsn	file "../utils/ff.c",line 3895,column 2,is_stmt,isa 1
        BEQ       ||$C$L367||           ; [DPU_3_PIPE] |3895| 
        ; BRANCHCC OCCURS {||$C$L367||}  ; [] |3895| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3912,column 3,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |3912| 
        BNE       ||$C$L374||           ; [DPU_3_PIPE] |3912| 
        ; BRANCHCC OCCURS {||$C$L374||}  ; [] |3912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3900,column 17,is_stmt,isa 1
        MOVS      A2, #1                ; [DPU_3_PIPE] |3900| 
        B         ||$C$L372||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L372||}    ; [] 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L367||:    
	.dwpsn	file "../utils/ff.c",line 3895,column 2,is_stmt,isa 1
        LDR       A3, [SP, #8]          ; [DPU_3_PIPE] |3895| 
        MOV       A2, #4086             ; [DPU_3_PIPE] |3895| 
        CMP       A2, A3                ; [DPU_3_PIPE] |3895| 
        BHI       ||$C$L370||           ; [DPU_3_PIPE] |3895| 
        ; BRANCHCC OCCURS {||$C$L370||}  ; [] |3895| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3901,column 17,is_stmt,isa 1
        LSRS      A1, A1, #16           ; [DPU_3_PIPE] |3901| 
        BEQ       ||$C$L368||           ; [DPU_3_PIPE] |3901| 
        ; BRANCHCC OCCURS {||$C$L368||}  ; [] |3901| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3912,column 3,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |3912| 
        BNE       ||$C$L374||           ; [DPU_3_PIPE] |3912| 
        ; BRANCHCC OCCURS {||$C$L374||}  ; [] |3912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3901,column 17,is_stmt,isa 1
        MOVS      A2, #6                ; [DPU_3_PIPE] |3901| 
        B         ||$C$L372||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L372||}    ; [] 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L368||:    
	.dwpsn	file "../utils/ff.c",line 3912,column 3,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |3912| 
        BNE       ||$C$L374||           ; [DPU_3_PIPE] |3912| 
        ; BRANCHCC OCCURS {||$C$L374||}  ; [] |3912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3901,column 17,is_stmt,isa 1
        MOVS      A2, #4                ; [DPU_3_PIPE] |3901| 
        B         ||$C$L372||           ; [DPU_3_PIPE] 
        ; BRANCH OCCURS {||$C$L372||}    ; [] 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L369||:    
	.dwpsn	file "../utils/ff.c",line 3887,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |3887| 
	.dwpsn	file "../utils/ff.c",line 3894,column 2,is_stmt,isa 1
        LDR       A3, [SP, #4]          ; [DPU_3_PIPE] |3894| 
        LDR       A2, [SP, #28]         ; [DPU_3_PIPE] |3894| 
	.dwpsn	file "../utils/ff.c",line 3887,column 3,is_stmt,isa 1
        ADDS      V2, A1, V2            ; [DPU_3_PIPE] |3887| 
	.dwpsn	file "../utils/ff.c",line 3894,column 2,is_stmt,isa 1
        MOV       LR, #65526            ; [DPU_3_PIPE] |3894| 
	.dwpsn	file "../utils/ff.c",line 3888,column 3,is_stmt,isa 1
        ADD       V8, A1, V8            ; [DPU_3_PIPE] |3888| 
	.dwpsn	file "../utils/ff.c",line 3894,column 2,is_stmt,isa 1
        SUBS      A3, A3, V2            ; [DPU_3_PIPE] |3894| 
        SUB       A3, A3, V6            ; [DPU_3_PIPE] |3894| 
        SUBS      A3, A3, A2            ; [DPU_3_PIPE] |3894| 
        UDIV      A3, A3, V1            ; [DPU_3_PIPE] |3894| 
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |3894| 
        CMP       LR, A3                ; [DPU_3_PIPE] |3894| 
        BLS       ||$C$L371||           ; [DPU_3_PIPE] |3894| 
        ; BRANCHCC OCCURS {||$C$L371||}  ; [] |3894| 
;* --------------------------------------------------------------------------*
||$C$L370||:    
	.dwpsn	file "../utils/ff.c",line 3897,column 3,is_stmt,isa 1
        MOVS      A1, #14               ; [DPU_3_PIPE] |3897| 
        B         ||$C$L396||           ; [DPU_3_PIPE] |3897| 
        ; BRANCH OCCURS {||$C$L396||}    ; [] |3897| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L371||:    
	.dwpsn	file "../utils/ff.c",line 3912,column 3,is_stmt,isa 1
        CMP       V5, #0                ; [DPU_3_PIPE] |3912| 
        BNE       ||$C$L374||           ; [DPU_3_PIPE] |3912| 
        ; BRANCHCC OCCURS {||$C$L374||}  ; [] |3912| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3902,column 13,is_stmt,isa 1
        MOVS      A2, #12               ; [DPU_3_PIPE] |3902| 
;* --------------------------------------------------------------------------*
||$C$L372||:    
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        ADD       V5, V3, #52           ; [DPU_3_PIPE] |557| 
        ADD       A1, V3, #52           ; [DPU_3_PIPE] |557| 
	.dwpsn	file "../utils/ff.c",line 3915,column 4,is_stmt,isa 1
        MOV       A4, #512              ; [DPU_3_PIPE] |3915| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L373||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 128
;*   Known Maximum Trip Count        : 128
;*   Known Max Trip Count Factor     : 128
;* --------------------------------------------------------------------------*
	.align	8
||$C$L373||:    
        MVN       A3, #-1               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      A4, A4, #4            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A3, [A1], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L373||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L373||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        LDR       A4, [SP, #4]          ; [DPU_3_PIPE] |3922| 
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |3922| 
        MOVW      A3, #16645            ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOV       V9, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        MOVW      LR, #32897            ; [DPU_3_PIPE] |3922| 
        MOVT      A3, #1040             ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        STRB      V9, [V3, #499]        ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        ADDS      A1, A1, A4            ; [DPU_3_PIPE] |3922| 
        MOVT      LR, #32896            ; [DPU_3_PIPE] |3922| 
        UMULL     A4, A3, A3, A1        ; [DPU_3_PIPE] |3922| 
        MOV       A4, V9                ; [DPU_3_PIPE] |3922| 
        MOVS      A3, A3                ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3918,column 4,is_stmt,isa 1
        STRB      A4, [V3, #500]        ; [DPU_3_PIPE] |3918| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        SUBS      A1, A1, A3            ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3919,column 4,is_stmt,isa 1
        STRB      V7, [V3, #501]        ; [DPU_3_PIPE] |3919| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        ADD       A3, A3, A1, LSR #1    ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3920,column 4,is_stmt,isa 1
        STRB      A2, [V3, #502]        ; [DPU_3_PIPE] |3920| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        LSRS      A1, A3, #5            ; [DPU_3_PIPE] |3922| 
        UMULL     A3, A1, LR, A1        ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3921,column 4,is_stmt,isa 1
        MOV       LR, #254              ; [DPU_3_PIPE] |3921| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3921,column 4,is_stmt,isa 1
        STRB      LR, [V3, #503]        ; [DPU_3_PIPE] |3921| 
	.dwpsn	file "../utils/ff.c",line 3923,column 4,is_stmt,isa 1
        LSR       V9, A1, #2            ; [DPU_3_PIPE] |3923| 
	.dwpsn	file "../utils/ff.c",line 3922,column 4,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3922| 
	.dwpsn	file "../utils/ff.c",line 3923,column 4,is_stmt,isa 1
        ORR       A2, V9, #63           ; [DPU_3_PIPE] |3923| 
        STRB      A2, [V3, #504]        ; [DPU_3_PIPE] |3923| 
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        MOV       V9, #85               ; [DPU_3_PIPE] |3927| 
        STRB      V9, [V3, #562]        ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 3924,column 4,is_stmt,isa 1
        STRB      A1, [V3, #505]        ; [DPU_3_PIPE] |3924| 
	.dwpsn	file "../utils/ff.c",line 3925,column 4,is_stmt,isa 1
        MOVS      A3, #63               ; [DPU_3_PIPE] |3925| 
        STRB      A3, [V3, #506]        ; [DPU_3_PIPE] |3925| 
        STRB      V7, [V3, #507]        ; [DPU_3_PIPE] |3925| 
	.dwpsn	file "../utils/ff.c",line 3926,column 4,is_stmt,isa 1
        LDRB      A4, [SP, #4]          ; [DPU_3_PIPE] |3926| 
	.dwpsn	file "../utils/ff.c",line 3925,column 4,is_stmt,isa 1
        STRB      V7, [V3, #508]        ; [DPU_3_PIPE] |3925| 
	.dwpsn	file "../utils/ff.c",line 3926,column 4,is_stmt,isa 1
        LDRB      LR, [SP, #5]          ; [DPU_3_PIPE] |3926| 
	.dwpsn	file "../utils/ff.c",line 3925,column 4,is_stmt,isa 1
        STRB      V7, [V3, #509]        ; [DPU_3_PIPE] |3925| 
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        MOV       V9, #170              ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 3926,column 4,is_stmt,isa 1
        STRB      A4, [V3, #510]        ; [DPU_3_PIPE] |3926| 
        LDRB      A1, [SP, #7]          ; [DPU_3_PIPE] |3926| 
        STRB      LR, [V3, #511]        ; [DPU_3_PIPE] |3926| 
        LDRB      LR, [SP, #6]          ; [DPU_3_PIPE] |3926| 
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        STRB      V9, [V3, #563]        ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 3928,column 4,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |3928| 
        MOV       A3, V7                ; [DPU_3_PIPE] |3928| 
	.dwpsn	file "../utils/ff.c",line 3926,column 4,is_stmt,isa 1
        STRB      LR, [V3, #512]        ; [DPU_3_PIPE] |3926| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3926,column 4,is_stmt,isa 1
        STRB      A1, [V3, #513]        ; [DPU_3_PIPE] |3926| 
	.dwpsn	file "../utils/ff.c",line 3928,column 4,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3928| 
$C$DW$587	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$587, DW_AT_low_pc(0x00)
	.dwattr $C$DW$587, DW_AT_name("disk_write")
	.dwattr $C$DW$587, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3928| 
        ; CALL OCCURS {disk_write }      ; [] |3928| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3928| 
        BNE       ||$C$L393||           ; [DPU_3_PIPE] |3928| 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3928| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3930,column 4,is_stmt,isa 1
        MOVS      A1, #248              ; [DPU_3_PIPE] |3930| 
        STR       A1, [SP, #20]         ; [DPU_3_PIPE] |3930| 
        B         ||$C$L375||           ; [DPU_3_PIPE] |3930| 
        ; BRANCH OCCURS {||$C$L375||}    ; [] |3930| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L374||:    
	.dwpsn	file "../utils/ff.c",line 3913,column 4,is_stmt,isa 1
        MOVS      A1, #240              ; [DPU_3_PIPE] |3913| 
        ADD       V5, V3, #52           ; [DPU_3_PIPE] 
        STR       A1, [SP, #20]         ; [DPU_3_PIPE] |3913| 
;* --------------------------------------------------------------------------*
||$C$L375||:    
	.dwpsn	file "../utils/ff.c",line 3936,column 2,is_stmt,isa 1
        MOV       V3, #512              ; [DPU_3_PIPE] |3936| 
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |557| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L376||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 128
;*   Known Maximum Trip Count        : 128
;*   Known Max Trip Count Factor     : 128
;* --------------------------------------------------------------------------*
	.align	8
||$C$L376||:    
        MVN       A2, #-1               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      V3, V3, #4            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A2, [A1], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L376||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L376||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A2, #235              ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 3921,column 4,is_stmt,isa 1
        MOV       LR, #254              ; [DPU_3_PIPE] |3921| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STRB      A2, [V5, #0]          ; [DPU_3_PIPE] |551| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       V9, #144              ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      V3, #77               ; [DPU_3_PIPE] |551| 
        STRB      V3, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A4, #83               ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A3, #68               ; [DPU_3_PIPE] |551| 
        STRB      A3, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A2, #79               ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       LR, #53               ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       V9, #46               ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      V3, #48               ; [DPU_3_PIPE] |551| 
        STRB      V3, [A1, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 3939,column 2,is_stmt,isa 1
        STRB      V7, [V5, #11]         ; [DPU_3_PIPE] |3939| 
        MOVS      A3, #2                ; [DPU_3_PIPE] |3939| 
        STRB      A3, [V5, #12]         ; [DPU_3_PIPE] |3939| 
	.dwpsn	file "../utils/ff.c",line 3941,column 2,is_stmt,isa 1
        LSRS      A2, V2, #8            ; [DPU_3_PIPE] |3941| 
	.dwpsn	file "../utils/ff.c",line 3940,column 2,is_stmt,isa 1
        STRB      V1, [V5, #13]         ; [DPU_3_PIPE] |3940| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3941,column 2,is_stmt,isa 1
        STRB      V2, [V5, #14]         ; [DPU_3_PIPE] |3941| 
	.dwpsn	file "../utils/ff.c",line 3942,column 2,is_stmt,isa 1
        LDR       LR, [SP, #16]         ; [DPU_3_PIPE] |3942| 
	.dwpsn	file "../utils/ff.c",line 3941,column 2,is_stmt,isa 1
        STRB      A2, [V5, #15]         ; [DPU_3_PIPE] |3941| 
	.dwpsn	file "../utils/ff.c",line 3943,column 2,is_stmt,isa 1
        CMP       LR, #3                ; [DPU_3_PIPE] |3943| 
	.dwpsn	file "../utils/ff.c",line 3942,column 2,is_stmt,isa 1
        STRB      A4, [V5, #16]         ; [DPU_3_PIPE] |3942| 
        ITE       EQ                    ; [DPU_3_PIPE] 
        MOVEQ     A1, V7                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3943,column 2,is_stmt,isa 1
        MOVNE     A1, #512              ; [DPU_3_PIPE] |3943| 
	.dwpsn	file "../utils/ff.c",line 3944,column 2,is_stmt,isa 1
        STRB      A1, [V5, #17]         ; [DPU_3_PIPE] |3944| 
        LSRS      A1, A1, #8            ; [DPU_3_PIPE] |3944| 
        STRB      A1, [V5, #18]         ; [DPU_3_PIPE] |3944| 
	.dwpsn	file "../utils/ff.c",line 3945,column 2,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3945| 
        LSRS      A1, A1, #16           ; [DPU_3_PIPE] |3945| 
        BEQ       ||$C$L377||           ; [DPU_3_PIPE] |3945| 
        ; BRANCHCC OCCURS {||$C$L377||}  ; [] |3945| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3948,column 3,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_3_PIPE] |3948| 
        STRB      A1, [V5, #32]         ; [DPU_3_PIPE] |3948| 
        LDRB      A1, [SP, #5]          ; [DPU_3_PIPE] |3948| 
        STRB      A1, [V5, #33]         ; [DPU_3_PIPE] |3948| 
        LDRB      A1, [SP, #6]          ; [DPU_3_PIPE] |3948| 
        STRB      A1, [V5, #34]         ; [DPU_3_PIPE] |3948| 
        LDRB      A1, [SP, #7]          ; [DPU_3_PIPE] |3948| 
        STRB      A1, [V5, #35]         ; [DPU_3_PIPE] |3948| 
        B         ||$C$L378||           ; [DPU_3_PIPE] |3948| 
        ; BRANCH OCCURS {||$C$L378||}    ; [] |3948| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L377||:    
	.dwpsn	file "../utils/ff.c",line 3946,column 3,is_stmt,isa 1
        LDRB      A1, [SP, #4]          ; [DPU_3_PIPE] |3946| 
        STRB      A1, [V5, #19]         ; [DPU_3_PIPE] |3946| 
        LDRB      A1, [SP, #5]          ; [DPU_3_PIPE] |3946| 
        STRB      A1, [V5, #20]         ; [DPU_3_PIPE] |3946| 
;* --------------------------------------------------------------------------*
||$C$L378||:    
        LDR       A1, [SP, #20]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3950,column 2,is_stmt,isa 1
        STRB      A1, [V5, #21]         ; [DPU_3_PIPE] |3950| 
	.dwpsn	file "../utils/ff.c",line 3925,column 4,is_stmt,isa 1
        MOV       LR, #63               ; [DPU_3_PIPE] |3925| 
	.dwpsn	file "../utils/ff.c",line 3951,column 2,is_stmt,isa 1
        STRB      LR, [V5, #24]         ; [DPU_3_PIPE] |3951| 
        STRB      V7, [V5, #25]         ; [DPU_3_PIPE] |3951| 
	.dwpsn	file "../utils/ff.c",line 3952,column 2,is_stmt,isa 1
        MOVS      V3, #255              ; [DPU_3_PIPE] |3952| 
        STRB      V3, [V5, #26]         ; [DPU_3_PIPE] |3952| 
        STRB      V7, [V5, #27]         ; [DPU_3_PIPE] |3952| 
        LDR       V9, [SP, #24]         ; [DPU_3_PIPE] |3952| 
	.dwpsn	file "../utils/ff.c",line 3953,column 2,is_stmt,isa 1
        STRB      V9, [V5, #28]         ; [DPU_3_PIPE] |3953| 
        LSR       A2, V9, #8            ; [DPU_3_PIPE] |3953| 
        STRB      A2, [V5, #29]         ; [DPU_3_PIPE] |3953| 
        LSR       A2, V9, #16           ; [DPU_3_PIPE] |3953| 
        STRB      A2, [V5, #30]         ; [DPU_3_PIPE] |3953| 
        LSR       V2, V9, #24           ; [DPU_3_PIPE] |3953| 
        STRB      V2, [V5, #31]         ; [DPU_3_PIPE] |3953| 
	.dwpsn	file "../utils/ff.c",line 3954,column 2,is_stmt,isa 1
$C$DW$588	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$588, DW_AT_low_pc(0x00)
	.dwattr $C$DW$588, DW_AT_name("get_fattime")
	.dwattr $C$DW$588, DW_AT_TI_call
        BL        get_fattime           ; [DPU_3_PIPE] |3954| 
        ; CALL OCCURS {get_fattime }     ; [] |3954| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3954| 
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] |3954| 
	.dwpsn	file "../utils/ff.c",line 3955,column 2,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |3955| 
        BEQ       ||$C$L379||           ; [DPU_3_PIPE] |3955| 
        ; BRANCHCC OCCURS {||$C$L379||}  ; [] |3955| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3965,column 3,is_stmt,isa 1
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |3965| 
        STRB      A1, [V5, #39]         ; [DPU_3_PIPE] |3965| 
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |3965| 
        STRB      A1, [V5, #40]         ; [DPU_3_PIPE] |3965| 
        LDRB      A1, [SP, #2]          ; [DPU_3_PIPE] |3965| 
	.dwpsn	file "../utils/ff.c",line 3966,column 3,is_stmt,isa 1
        LSR       V9, V6, #8            ; [DPU_3_PIPE] |3966| 
	.dwpsn	file "../utils/ff.c",line 3965,column 3,is_stmt,isa 1
        STRB      A1, [V5, #41]         ; [DPU_3_PIPE] |3965| 
        LDRB      A1, [SP, #3]          ; [DPU_3_PIPE] |3965| 
	.dwpsn	file "../utils/ff.c",line 3966,column 3,is_stmt,isa 1
        STRB      V6, [V5, #22]         ; [DPU_3_PIPE] |3966| 
	.dwpsn	file "../utils/ff.c",line 3967,column 3,is_stmt,isa 1
        MOV       LR, #128              ; [DPU_3_PIPE] |3967| 
	.dwpsn	file "../utils/ff.c",line 3965,column 3,is_stmt,isa 1
        STRB      A1, [V5, #42]         ; [DPU_3_PIPE] |3965| 
	.dwpsn	file "../utils/ff.c",line 3968,column 3,is_stmt,isa 1
        MOVS      A2, #41               ; [DPU_3_PIPE] |3968| 
	.dwpsn	file "../utils/ff.c",line 3966,column 3,is_stmt,isa 1
        STRB      V9, [V5, #23]         ; [DPU_3_PIPE] |3966| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A3, #78               ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 3967,column 3,is_stmt,isa 1
        STRB      LR, [V5, #36]         ; [DPU_3_PIPE] |3967| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       V2, V5, #43           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 3968,column 3,is_stmt,isa 1
        STRB      A2, [V5, #38]         ; [DPU_3_PIPE] |3968| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A4, #79               ; [DPU_3_PIPE] |551| 
        STRB      A3, [V5, #43]         ; [DPU_3_PIPE] |551| 
        ADDS      A1, V2, #1            ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       LR, #32               ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A3, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       V9, #65               ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A2, #77               ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      V2, #69               ; [DPU_3_PIPE] |551| 
        STRB      V2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A4, #70               ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A2, #84               ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        B         ||$C$L380||           ; [DPU_3_PIPE] |550| 
        ; BRANCH OCCURS {||$C$L380||}    ; [] |550| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L379||:    
	.dwpsn	file "../utils/ff.c",line 3956,column 3,is_stmt,isa 1
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |3956| 
        STRB      A1, [V5, #67]         ; [DPU_3_PIPE] |3956| 
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |3956| 
        STRB      A1, [V5, #68]         ; [DPU_3_PIPE] |3956| 
        LDRB      A1, [SP, #2]          ; [DPU_3_PIPE] |3956| 
        STRB      A1, [V5, #69]         ; [DPU_3_PIPE] |3956| 
        LDRB      A2, [SP, #3]          ; [DPU_3_PIPE] |3956| 
	.dwpsn	file "../utils/ff.c",line 3957,column 3,is_stmt,isa 1
        STRB      V6, [V5, #36]         ; [DPU_3_PIPE] |3957| 
        LSR       LR, V6, #8            ; [DPU_3_PIPE] |3957| 
        STRB      LR, [V5, #37]         ; [DPU_3_PIPE] |3957| 
	.dwpsn	file "../utils/ff.c",line 3956,column 3,is_stmt,isa 1
        STRB      A2, [V5, #70]         ; [DPU_3_PIPE] |3956| 
	.dwpsn	file "../utils/ff.c",line 3957,column 3,is_stmt,isa 1
        LSR       V9, V6, #16           ; [DPU_3_PIPE] |3957| 
        STRB      V9, [V5, #38]         ; [DPU_3_PIPE] |3957| 
	.dwpsn	file "../utils/ff.c",line 3961,column 3,is_stmt,isa 1
        MOV       LR, #128              ; [DPU_3_PIPE] |3961| 
        STRB      LR, [V5, #64]         ; [DPU_3_PIPE] |3961| 
	.dwpsn	file "../utils/ff.c",line 3957,column 3,is_stmt,isa 1
        LSR       V2, V6, #24           ; [DPU_3_PIPE] |3957| 
        STRB      V2, [V5, #39]         ; [DPU_3_PIPE] |3957| 
	.dwpsn	file "../utils/ff.c",line 3939,column 2,is_stmt,isa 1
        MOVS      A4, #2                ; [DPU_3_PIPE] |3939| 
	.dwpsn	file "../utils/ff.c",line 3958,column 3,is_stmt,isa 1
        STRB      A4, [V5, #44]         ; [DPU_3_PIPE] |3958| 
	.dwpsn	file "../utils/ff.c",line 3962,column 3,is_stmt,isa 1
        MOV       V9, #41               ; [DPU_3_PIPE] |3962| 
        STRB      V9, [V5, #66]         ; [DPU_3_PIPE] |3962| 
	.dwpsn	file "../utils/ff.c",line 3958,column 3,is_stmt,isa 1
        STRB      V7, [V5, #45]         ; [DPU_3_PIPE] |3958| 
        STRB      V7, [V5, #46]         ; [DPU_3_PIPE] |3958| 
        STRB      V7, [V5, #47]         ; [DPU_3_PIPE] |3958| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3959,column 3,is_stmt,isa 1
        STRB      A3, [V5, #48]         ; [DPU_3_PIPE] |3959| 
	.dwpsn	file "../utils/ff.c",line 3960,column 3,is_stmt,isa 1
        MOVS      A2, #6                ; [DPU_3_PIPE] |3960| 
	.dwpsn	file "../utils/ff.c",line 3959,column 3,is_stmt,isa 1
        STRB      V7, [V5, #49]         ; [DPU_3_PIPE] |3959| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A3, #78               ; [DPU_3_PIPE] |551| 
        STRB      A3, [V5, #71]         ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       V2, V5, #71           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 3960,column 3,is_stmt,isa 1
        STRB      A2, [V5, #50]         ; [DPU_3_PIPE] |3960| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        ADDS      A1, V2, #1            ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 3960,column 3,is_stmt,isa 1
        STRB      V7, [V5, #51]         ; [DPU_3_PIPE] |3960| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A4, #79               ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       LR, #32               ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      A3, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOV       V9, #65               ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A2, #77               ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      V2, #69               ; [DPU_3_PIPE] |551| 
        STRB      V2, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A4, #70               ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      V9, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A2, #84               ; [DPU_3_PIPE] |551| 
        STRB      A2, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      V2, #51               ; [DPU_3_PIPE] |551| 
        STRB      V2, [A1], #1          ; [DPU_3_PIPE] |551| 
        MOVS      A4, #50               ; [DPU_3_PIPE] |551| 
        STRB      A4, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1], #1          ; [DPU_3_PIPE] |551| 
        STRB      LR, [A1, #0]          ; [DPU_3_PIPE] |551| 
;* --------------------------------------------------------------------------*
||$C$L380||:    
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        MOVS      A1, #85               ; [DPU_3_PIPE] |3927| 
        MOV       LR, #170              ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 3972,column 2,is_stmt,isa 1
        LDR       A3, [SP, #24]         ; [DPU_3_PIPE] |3972| 
	.dwpsn	file "../utils/ff.c",line 3971,column 2,is_stmt,isa 1
        STRB      A1, [V5, #510]        ; [DPU_3_PIPE] |3971| 
	.dwpsn	file "../utils/ff.c",line 3972,column 2,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |3972| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3971,column 2,is_stmt,isa 1
        STRB      LR, [V5, #511]        ; [DPU_3_PIPE] |3971| 
	.dwpsn	file "../utils/ff.c",line 3972,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3972| 
$C$DW$589	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$589, DW_AT_low_pc(0x00)
	.dwattr $C$DW$589, DW_AT_name("disk_write")
	.dwattr $C$DW$589, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3972| 
        ; CALL OCCURS {disk_write }      ; [] |3972| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3972| 
        BNE       ||$C$L393||           ; [DPU_3_PIPE] |3972| 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3972| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3974,column 2,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |3974| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3978,column 2,is_stmt,isa 1
        STRNE     V7, [SP, #12]         ; [DPU_3_PIPE] |3978| 
	.dwpsn	file "../utils/ff.c",line 3979,column 14,is_stmt,isa 1
        BNE       ||$C$L381||           ; [DPU_3_PIPE] |3979| 
        ; BRANCHCC OCCURS {||$C$L381||}  ; [] |3979| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3975,column 3,is_stmt,isa 1
        LDR       A3, [SP, #24]         ; [DPU_3_PIPE] |3975| 
        MOV       A2, V5                ; [DPU_3_PIPE] |3975| 
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |3917| 
	.dwpsn	file "../utils/ff.c",line 3975,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3975| 
        ADDS      A3, A3, #6            ; [DPU_3_PIPE] |3975| 
$C$DW$590	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$590, DW_AT_low_pc(0x00)
	.dwattr $C$DW$590, DW_AT_name("disk_write")
	.dwattr $C$DW$590, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3975| 
        ; CALL OCCURS {disk_write }      ; [] |3975| 
	.dwpsn	file "../utils/ff.c",line 3978,column 2,is_stmt,isa 1
        STR       V7, [SP, #12]         ; [DPU_3_PIPE] |3978| 
;* --------------------------------------------------------------------------*
||$C$L381||:    
	.dwpsn	file "../utils/ff.c",line 3917,column 4,is_stmt,isa 1
        MOVS      V2, #1                ; [DPU_3_PIPE] |3917| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L382||
;*
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L382||:    
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        SUB       A1, V5, #2            ; [DPU_3_PIPE] |557| 
	.dwpsn	file "../utils/ff.c",line 3980,column 3,is_stmt,isa 1
        MOV       A4, #512              ; [DPU_3_PIPE] |3980| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L383||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 256
;*   Known Maximum Trip Count        : 256
;*   Known Max Trip Count Factor     : 256
;* --------------------------------------------------------------------------*
	.align	8
||$C$L383||:    
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V7, [A1, #2]!         ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      A4, A4, #2            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V7, [A1, #1]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L383||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L383||}  ; [] |559| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3982,column 3,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |3982| 
        BEQ       ||$C$L386||           ; [DPU_3_PIPE] |3982| 
        ; BRANCHCC OCCURS {||$C$L386||}  ; [] |3982| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3983,column 4,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |3983| 
        BEQ       ||$C$L384||           ; [DPU_3_PIPE] |3983| 
        ; BRANCHCC OCCURS {||$C$L384||}  ; [] |3983| 
;* --------------------------------------------------------------------------*
        LDR       A2, [SP, #20]         ; [DPU_3_PIPE] |3983| 
        MVN       A1, #255              ; [DPU_3_PIPE] |3983| 
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |3983| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3983| 
        B         ||$C$L385||           ; [DPU_3_PIPE] |3983| 
        ; BRANCH OCCURS {||$C$L385||}    ; [] |3983| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L384||:    
        LDR       A2, [SP, #20]         ; [DPU_3_PIPE] |3983| 
        MOVW      A1, #65280            ; [DPU_3_PIPE] |3983| 
        MOVT      A1, #255              ; [DPU_3_PIPE] |3983| 
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |3983| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3983| 
;* --------------------------------------------------------------------------*
||$C$L385||:    
	.dwpsn	file "../utils/ff.c",line 3984,column 4,is_stmt,isa 1
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |3984| 
        STRB      A1, [V5, #0]          ; [DPU_3_PIPE] |3984| 
        LDRB      A1, [SP, #1]          ; [DPU_3_PIPE] |3984| 
        STRB      A1, [V5, #1]          ; [DPU_3_PIPE] |3984| 
        LDRB      A1, [SP, #2]          ; [DPU_3_PIPE] |3984| 
        STRB      A1, [V5, #2]          ; [DPU_3_PIPE] |3984| 
        LDRB      A1, [SP, #3]          ; [DPU_3_PIPE] |3984| 
        STRB      A1, [V5, #3]          ; [DPU_3_PIPE] |3984| 
	.dwpsn	file "../utils/ff.c",line 3985,column 3,is_stmt,isa 1
        B         ||$C$L387||           ; [DPU_3_PIPE] |3985| 
        ; BRANCH OCCURS {||$C$L387||}    ; [] |3985| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L386||:    
	.dwpsn	file "../utils/ff.c",line 3983,column 4,is_stmt,isa 1
        LDR       A2, [SP, #20]         ; [DPU_3_PIPE] |3983| 
        MVN       A1, #255              ; [DPU_3_PIPE] |3983| 
	.dwpsn	file "../utils/ff.c",line 3986,column 4,is_stmt,isa 1
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |3986| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3986| 
	.dwpsn	file "../utils/ff.c",line 3987,column 4,is_stmt,isa 1
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |3987| 
        STRB      V3, [V5, #1]          ; [DPU_3_PIPE] |3987| 
        STRB      V3, [V5, #2]          ; [DPU_3_PIPE] |3987| 
        STRB      V3, [V5, #3]          ; [DPU_3_PIPE] |3987| 
	.dwpsn	file "../utils/ff.c",line 3988,column 4,is_stmt,isa 1
        STRB      V3, [V5, #4]          ; [DPU_3_PIPE] |3988| 
        STRB      V3, [V5, #5]          ; [DPU_3_PIPE] |3988| 
        STRB      V3, [V5, #6]          ; [DPU_3_PIPE] |3988| 
        STRB      V3, [V5, #7]          ; [DPU_3_PIPE] |3988| 
	.dwpsn	file "../utils/ff.c",line 3989,column 4,is_stmt,isa 1
        STRB      V3, [V5, #8]          ; [DPU_3_PIPE] |3989| 
        STRB      V3, [V5, #9]          ; [DPU_3_PIPE] |3989| 
        STRB      V3, [V5, #10]         ; [DPU_3_PIPE] |3989| 
        MOV       LR, #15               ; [DPU_3_PIPE] |3989| 
        STRB      LR, [V5, #11]         ; [DPU_3_PIPE] |3989| 
	.dwpsn	file "../utils/ff.c",line 3987,column 4,is_stmt,isa 1
        STRB      A1, [V5, #0]          ; [DPU_3_PIPE] |3987| 
;* --------------------------------------------------------------------------*
||$C$L387||:    
	.dwpsn	file "../utils/ff.c",line 3991,column 3,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |3991| 
        MOV       A4, V2                ; [DPU_3_PIPE] |3991| 
        MOV       A1, V4                ; [DPU_3_PIPE] |3991| 
        MOV       A3, V8                ; [DPU_3_PIPE] |3991| 
$C$DW$591	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$591, DW_AT_low_pc(0x00)
	.dwattr $C$DW$591, DW_AT_name("disk_write")
	.dwattr $C$DW$591, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3991| 
        ; CALL OCCURS {disk_write }      ; [] |3991| 
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |3991| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3991| 
        BNE       ||$C$L393||           ; [DPU_3_PIPE] |3991| 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3991| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        SUB       A1, V5, #2            ; [DPU_3_PIPE] |557| 
	.dwpsn	file "../utils/ff.c",line 3993,column 3,is_stmt,isa 1
        MOV       A4, #512              ; [DPU_3_PIPE] |3993| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L388||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 256
;*   Known Maximum Trip Count        : 256
;*   Known Max Trip Count Factor     : 256
;* --------------------------------------------------------------------------*
	.align	8
||$C$L388||:    
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V7, [A1, #2]!         ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      A4, A4, #2            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V7, [A1, #1]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L388||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L388||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3994,column 15,is_stmt,isa 1
        CMP       V6, #2                ; [DPU_3_PIPE] |3994| 
	.dwpsn	file "../utils/ff.c",line 3994,column 8,is_stmt,isa 1
        STR       V2, [SP, #0]          ; [DPU_3_PIPE] |3994| 
	.dwpsn	file "../utils/ff.c",line 3994,column 15,is_stmt,isa 1
        BCC       ||$C$L390||           ; [DPU_3_PIPE] |3994| 
        ; BRANCHCC OCCURS {||$C$L390||}  ; [] |3994| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L389||
;*
;*   Loop source line                : 3994
;*   Loop closing brace source line  : 3997
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L389||:    
	.dwpsn	file "../utils/ff.c",line 3995,column 4,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |3995| 
        MOV       A4, V2                ; [DPU_3_PIPE] |3995| 
        MOV       A1, V4                ; [DPU_3_PIPE] |3995| 
        MOV       A3, V8                ; [DPU_3_PIPE] |3995| 
$C$DW$592	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$592, DW_AT_low_pc(0x00)
	.dwattr $C$DW$592, DW_AT_name("disk_write")
	.dwattr $C$DW$592, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3995| 
        ; CALL OCCURS {disk_write }      ; [] |3995| 
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |3995| 
        CBNZ      A1, ||$C$L393||       ; [] 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |3995| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3994,column 26,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |3994| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |3994| 
	.dwpsn	file "../utils/ff.c",line 3994,column 15,is_stmt,isa 1
        CMP       V6, A1                ; [DPU_3_PIPE] |3994| 
	.dwpsn	file "../utils/ff.c",line 3994,column 26,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3994| 
	.dwpsn	file "../utils/ff.c",line 3994,column 15,is_stmt,isa 1
        BHI       ||$C$L389||           ; [DPU_3_PIPE] |3994| 
        ; BRANCHCC OCCURS {||$C$L389||}  ; [] |3994| 
;* --------------------------------------------------------------------------*
||$C$L390||:    
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3979,column 14,is_stmt,isa 1
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |3979| 
        STR       A1, [SP, #12]         ; [DPU_3_PIPE] |3979| 
        BEQ       ||$C$L382||           ; [DPU_3_PIPE] |3979| 
        ; BRANCHCC OCCURS {||$C$L382||}  ; [] |3979| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #16]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 4001,column 2,is_stmt,isa 1
        CMP       A1, #3                ; [DPU_3_PIPE] |4001| 
        BEQ       ||$C$L392||           ; [DPU_3_PIPE] |4001| 
        ; BRANCHCC OCCURS {||$C$L392||}  ; [] |4001| 
;* --------------------------------------------------------------------------*
        LDR       V6, [SP, #28]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L391||
;*
;*   Loop source line                : 4002
;*   Loop closing brace source line  : 4005
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 32
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L391||:    
	.dwpsn	file "../utils/ff.c",line 4003,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |4003| 
        MOV       A3, V8                ; [DPU_3_PIPE] |4003| 
        MOV       A2, V5                ; [DPU_3_PIPE] |4003| 
        MOV       A4, V2                ; [DPU_3_PIPE] |4003| 
$C$DW$593	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$593, DW_AT_low_pc(0x00)
	.dwattr $C$DW$593, DW_AT_name("disk_write")
	.dwattr $C$DW$593, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |4003| 
        ; CALL OCCURS {disk_write }      ; [] |4003| 
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |4003| 
        CBNZ      A1, ||$C$L393||       ; [] 
        ; BRANCHCC OCCURS {||$C$L393||}  ; [] |4003| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 4002,column 2,is_stmt,isa 1
        SUBS      V6, V6, #1            ; [DPU_3_PIPE] |4002| 
        BNE       ||$C$L391||           ; [DPU_3_PIPE] |4002| 
        ; BRANCHCC OCCURS {||$C$L391||}  ; [] |4002| 
;* --------------------------------------------------------------------------*
        B         ||$C$L395||           ; [DPU_3_PIPE] |4002| 
        ; BRANCH OCCURS {||$C$L395||}    ; [] |4002| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L392||
;*
;*   Loop source line                : 4002
;*   Loop closing brace source line  : 4005
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L392||:    
	.dwpsn	file "../utils/ff.c",line 4003,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |4003| 
        MOV       A3, V8                ; [DPU_3_PIPE] |4003| 
        MOV       A2, V5                ; [DPU_3_PIPE] |4003| 
        MOV       A4, V2                ; [DPU_3_PIPE] |4003| 
$C$DW$594	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$594, DW_AT_low_pc(0x00)
	.dwattr $C$DW$594, DW_AT_name("disk_write")
	.dwattr $C$DW$594, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |4003| 
        ; CALL OCCURS {disk_write }      ; [] |4003| 
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |4003| 
        CBZ       A1, ||$C$L394||       ; [] 
        ; BRANCHCC OCCURS {||$C$L394||}  ; [] |4003| 
;* --------------------------------------------------------------------------*
||$C$L393||:    
	.dwpsn	file "../utils/ff.c",line 4004,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |4004| 
        B         ||$C$L396||           ; [DPU_3_PIPE] |4004| 
        ; BRANCH OCCURS {||$C$L396||}    ; [] |4004| 
;* --------------------------------------------------------------------------*
||$C$L394||:    
	.dwpsn	file "../utils/ff.c",line 4002,column 2,is_stmt,isa 1
        SUBS      V1, V1, #1            ; [DPU_3_PIPE] |4002| 
        BNE       ||$C$L392||           ; [DPU_3_PIPE] |4002| 
        ; BRANCHCC OCCURS {||$C$L392||}  ; [] |4002| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 4019,column 3,is_stmt,isa 1
        MOVS      A1, #114              ; [DPU_3_PIPE] |4019| 
        STRB      A1, [V5, #484]        ; [DPU_3_PIPE] |4019| 
	.dwpsn	file "../utils/ff.c",line 4018,column 3,is_stmt,isa 1
        MOVS      V3, #82               ; [DPU_3_PIPE] |4018| 
        STRB      V3, [V5, #0]          ; [DPU_3_PIPE] |4018| 
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        MOVS      A4, #85               ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 4019,column 3,is_stmt,isa 1
        STRB      A1, [V5, #485]        ; [DPU_3_PIPE] |4019| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOV       LR, #65               ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 4018,column 3,is_stmt,isa 1
        STRB      V3, [V5, #1]          ; [DPU_3_PIPE] |4018| 
	.dwpsn	file "../utils/ff.c",line 4019,column 3,is_stmt,isa 1
        LDR       V9, [SP, #8]          ; [DPU_3_PIPE] |4019| 
	.dwpsn	file "../utils/ff.c",line 4022,column 3,is_stmt,isa 1
        STRB      A4, [V5, #510]        ; [DPU_3_PIPE] |4022| 
	.dwpsn	file "../utils/ff.c",line 4018,column 3,is_stmt,isa 1
        MOVS      A2, #97               ; [DPU_3_PIPE] |4018| 
	.dwpsn	file "../utils/ff.c",line 4019,column 3,is_stmt,isa 1
        STRB      LR, [V5, #486]        ; [DPU_3_PIPE] |4019| 
	.dwpsn	file "../utils/ff.c",line 4020,column 3,is_stmt,isa 1
        SUB       A1, V9, #1            ; [DPU_3_PIPE] |4020| 
	.dwpsn	file "../utils/ff.c",line 4019,column 3,is_stmt,isa 1
        STRB      A2, [V5, #487]        ; [DPU_3_PIPE] |4019| 
	.dwpsn	file "../utils/ff.c",line 4018,column 3,is_stmt,isa 1
        LDR       V1, [SP, #24]         ; [DPU_3_PIPE] |4018| 
        STRB      A2, [V5, #2]          ; [DPU_3_PIPE] |4018| 
	.dwpsn	file "../utils/ff.c",line 4020,column 3,is_stmt,isa 1
        LSRS      A3, A1, #8            ; [DPU_3_PIPE] |4020| 
        STRB      A1, [V5, #488]        ; [DPU_3_PIPE] |4020| 
	.dwpsn	file "../utils/ff.c",line 3927,column 4,is_stmt,isa 1
        MOV       V9, #170              ; [DPU_3_PIPE] |3927| 
	.dwpsn	file "../utils/ff.c",line 4022,column 3,is_stmt,isa 1
        STRB      V9, [V5, #511]        ; [DPU_3_PIPE] |4022| 
	.dwpsn	file "../utils/ff.c",line 4020,column 3,is_stmt,isa 1
        LSR       V8, A1, #16           ; [DPU_3_PIPE] |4020| 
        STRB      A3, [V5, #489]        ; [DPU_3_PIPE] |4020| 
        LSR       V6, A1, #24           ; [DPU_3_PIPE] |4020| 
        STRB      V8, [V5, #490]        ; [DPU_3_PIPE] |4020| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        MOVS      A3, #65               ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 4018,column 3,is_stmt,isa 1
        STRB      A3, [V5, #3]          ; [DPU_3_PIPE] |4018| 
	.dwpsn	file "../utils/ff.c",line 4023,column 3,is_stmt,isa 1
        MOV       A4, V2                ; [DPU_3_PIPE] |4023| 
	.dwpsn	file "../utils/ff.c",line 4020,column 3,is_stmt,isa 1
        STRB      V6, [V5, #491]        ; [DPU_3_PIPE] |4020| 
	.dwpsn	file "../utils/ff.c",line 3939,column 2,is_stmt,isa 1
        MOV       LR, #2                ; [DPU_3_PIPE] |3939| 
	.dwpsn	file "../utils/ff.c",line 4021,column 3,is_stmt,isa 1
        STRB      LR, [V5, #492]        ; [DPU_3_PIPE] |4021| 
	.dwpsn	file "../utils/ff.c",line 4023,column 3,is_stmt,isa 1
        MOV       A2, V5                ; [DPU_3_PIPE] |4023| 
	.dwpsn	file "../utils/ff.c",line 4021,column 3,is_stmt,isa 1
        STRB      V7, [V5, #493]        ; [DPU_3_PIPE] |4021| 
	.dwpsn	file "../utils/ff.c",line 4023,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |4023| 
	.dwpsn	file "../utils/ff.c",line 4021,column 3,is_stmt,isa 1
        STRB      V7, [V5, #494]        ; [DPU_3_PIPE] |4021| 
	.dwpsn	file "../utils/ff.c",line 4023,column 3,is_stmt,isa 1
        ADDS      A3, V1, #1            ; [DPU_3_PIPE] |4023| 
	.dwpsn	file "../utils/ff.c",line 4021,column 3,is_stmt,isa 1
        STRB      V7, [V5, #495]        ; [DPU_3_PIPE] |4021| 
	.dwpsn	file "../utils/ff.c",line 4023,column 3,is_stmt,isa 1
$C$DW$595	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$595, DW_AT_low_pc(0x00)
	.dwattr $C$DW$595, DW_AT_name("disk_write")
	.dwattr $C$DW$595, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |4023| 
        ; CALL OCCURS {disk_write }      ; [] |4023| 
	.dwpsn	file "../utils/ff.c",line 4024,column 3,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |4024| 
        MOV       A2, V5                ; [DPU_3_PIPE] |4024| 
        MOV       A4, V2                ; [DPU_3_PIPE] |4024| 
        MOV       A3, V1                ; [DPU_3_PIPE] |4024| 
        ADDS      A3, A3, #7            ; [DPU_3_PIPE] |4024| 
$C$DW$596	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$596, DW_AT_low_pc(0x00)
	.dwattr $C$DW$596, DW_AT_name("disk_write")
	.dwattr $C$DW$596, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |4024| 
        ; CALL OCCURS {disk_write }      ; [] |4024| 
;* --------------------------------------------------------------------------*
||$C$L395||:    
	.dwpsn	file "../utils/ff.c",line 4027,column 2,is_stmt,isa 1
        MOV       A2, V7                ; [DPU_3_PIPE] |4027| 
        MOV       A1, V4                ; [DPU_3_PIPE] |4027| 
        MOV       A3, A2                ; [DPU_3_PIPE] |4027| 
$C$DW$597	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$597, DW_AT_low_pc(0x00)
	.dwattr $C$DW$597, DW_AT_name("disk_ioctl")
	.dwattr $C$DW$597, DW_AT_TI_call
        BL        disk_ioctl            ; [DPU_3_PIPE] |4027| 
        ; CALL OCCURS {disk_ioctl }      ; [] |4027| 
        CMP       A1, #0                ; [DPU_3_PIPE] |4027| 
        IT        NE                    ; [DPU_3_PIPE] 
        MOVNE     V7, V2                ; [DPU_3_PIPE] 
        MOV       A1, V7                ; [DPU_3_PIPE] |4027| 
;* --------------------------------------------------------------------------*
||$C$L396||:    
        ADD       SP, SP, #36           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$598	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$598, DW_AT_low_pc(0x00)
	.dwattr $C$DW$598, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$540, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$540, DW_AT_TI_end_line(0xfbc)
	.dwattr $C$DW$540, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$540

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_mkdir
	.thumb
	.global	f_mkdir

$C$DW$599	.dwtag  DW_TAG_subprogram, DW_AT_name("f_mkdir")
	.dwattr $C$DW$599, DW_AT_low_pc(f_mkdir)
	.dwattr $C$DW$599, DW_AT_high_pc(0x00)
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("f_mkdir")
	.dwattr $C$DW$599, DW_AT_external
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$599, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$599, DW_AT_TI_begin_line(0xd0d)
	.dwattr $C$DW$599, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$599, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$599, DW_AT_decl_line(0xd0d)
	.dwattr $C$DW$599, DW_AT_decl_column(0x09)
	.dwattr $C$DW$599, DW_AT_TI_max_frame_size(0x78)
	.dwpsn	file "../utils/ff.c",line 3344,column 1,is_stmt,address f_mkdir,isa 1

	.dwfde $C$DW$CIE, f_mkdir
$C$DW$600	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$600, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: f_mkdir                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 80 Auto + 36 Save = 116 byte               *
;*****************************************************************************
f_mkdir:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C25
;* A1    assigned to $O$C26
;* A2    assigned to $O$C27
;* V5    assigned to $O$C28
;* V4    assigned to $O$C29
;* A1    assigned to $O$C30
;* V5    assigned to $O$C31
;* A1    assigned to $O$C32
;* A2    assigned to $O$C33
;* A2    assigned to $O$C34
;* V4    assigned to $O$C35
;* A1    assigned to $O$C36
;* A2    assigned to $O$C37
;* V6    assigned to $O$C38
;* V3    assigned to $O$U61
;* V4    assigned to $O$K104
;* V5    assigned to $O$K111
;* A2    assigned to $O$K114
;* V4    assigned to $O$L1
;* V4    assigned to $O$L7
;* V1    assigned to fs
$C$DW$601	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$601, DW_AT_location[DW_OP_reg4]
;* V6    assigned to wsect
$C$DW$602	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$602, DW_AT_location[DW_OP_reg9]
;* A1    assigned to cnt
$C$DW$603	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$603, DW_AT_location[DW_OP_reg0]
;* A2    assigned to d
$C$DW$604	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$604, DW_AT_location[DW_OP_reg1]
;* A2    assigned to d
$C$DW$605	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$605, DW_AT_location[DW_OP_reg1]
;* V4    assigned to cnt
$C$DW$606	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$606, DW_AT_location[DW_OP_reg7]
;* V9    assigned to d
$C$DW$607	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$607, DW_AT_location[DW_OP_reg12]
;* LR    assigned to s
$C$DW$608	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$608, DW_AT_location[DW_OP_reg14]
;* V6    assigned to fs
$C$DW$609	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$609, DW_AT_location[DW_OP_reg9]
;* V5    assigned to wsect
$C$DW$610	.dwtag  DW_TAG_variable, DW_AT_name("wsect")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("wsect")
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$610, DW_AT_location[DW_OP_reg8]
;* V4    assigned to cnt
$C$DW$611	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("cnt")
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$611, DW_AT_location[DW_OP_reg7]
;* A1    assigned to d
$C$DW$612	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$612, DW_AT_location[DW_OP_reg0]
;* V5    assigned to fs
$C$DW$613	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$613, DW_AT_location[DW_OP_reg8]
;* V1    assigned to sector
$C$DW$614	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$614, DW_AT_location[DW_OP_reg4]
;* A1    assigned to res
$C$DW$615	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$615, DW_AT_location[DW_OP_reg0]
;* V4    assigned to n
$C$DW$616	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$616, DW_AT_location[DW_OP_reg7]
;* V1    assigned to fs
$C$DW$617	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$617, DW_AT_location[DW_OP_reg4]
;* V3    assigned to sector
$C$DW$618	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$618, DW_AT_location[DW_OP_reg6]
;* V9    assigned to d
$C$DW$619	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$619, DW_AT_location[DW_OP_reg12]
;* A3    assigned to d
$C$DW$620	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$620, DW_AT_location[DW_OP_reg2]
;* A2    assigned to s
$C$DW$621	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg1]
;* A1    assigned to res
$C$DW$622	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$622, DW_AT_location[DW_OP_reg0]
;* V5    assigned to tm
$C$DW$623	.dwtag  DW_TAG_variable, DW_AT_name("tm")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("tm")
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$623, DW_AT_location[DW_OP_reg8]
;* A1    assigned to pcl
$C$DW$624	.dwtag  DW_TAG_variable, DW_AT_name("pcl")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("pcl")
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg0]
;* V2    assigned to dcl
$C$DW$625	.dwtag  DW_TAG_variable, DW_AT_name("dcl")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("dcl")
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg5]
;* V8    assigned to dsc
$C$DW$626	.dwtag  DW_TAG_variable, DW_AT_name("dsc")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("dsc")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg11]
$C$DW$627	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_breg13 0]
;* V7    assigned to dir
$C$DW$628	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_reg10]
;* A1    assigned to dir
$C$DW$629	.dwtag  DW_TAG_variable, DW_AT_name("dir")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$629, DW_AT_location[DW_OP_reg0]
;* V1    assigned to res
$C$DW$630	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$630, DW_AT_location[DW_OP_reg4]
;* V3    assigned to n
$C$DW$631	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_reg6]
;* A1    assigned to $O$d2
;* V3    assigned to $O$d1
;* V9    assigned to $O$v2
;* V7    assigned to $O$U19
;* A4    assigned to $O$K204
;* LR    assigned to $O$K204
;* V1    assigned to $O$K42
;* A1    assigned to $O$K42
;* V6    assigned to $O$v1
;* A1    assigned to $O$v1
;* A3    assigned to $O$PRE$u8x4$084
;* A3    assigned to $O$PRE$u8x4$094
$C$DW$632	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$632, DW_AT_location[DW_OP_breg13 4]
$C$DW$633	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$633, DW_AT_location[DW_OP_breg13 32]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        SUB       SP, SP, #84           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 120
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3344| 
	.dwpsn	file "../utils/ff.c",line 3348,column 26,is_stmt,isa 1
$C$DW$634	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$634, DW_AT_low_pc(0x00)
	.dwattr $C$DW$634, DW_AT_name("get_fattime")
	.dwattr $C$DW$634, DW_AT_TI_call
        BL        get_fattime           ; [DPU_3_PIPE] |3348| 
        ; CALL OCCURS {get_fattime }     ; [] |3348| 
        MOV       V5, A1                ; [DPU_3_PIPE] |3348| 
	.dwpsn	file "../utils/ff.c",line 3352,column 2,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3352| 
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3352| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3352| 
$C$DW$635	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$635, DW_AT_low_pc(0x00)
	.dwattr $C$DW$635, DW_AT_name("chk_mounted")
	.dwattr $C$DW$635, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3352| 
        ; CALL OCCURS {chk_mounted }     ; [] |3352| 
        MOVS      V1, A1                ; [DPU_3_PIPE] |3352| 
        BNE       ||$C$L425||           ; [DPU_3_PIPE] |3352| 
        ; BRANCHCC OCCURS {||$C$L425||}  ; [] |3352| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3354,column 3,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3354| 
	.dwpsn	file "../utils/ff.c",line 3355,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3355| 
	.dwpsn	file "../utils/ff.c",line 3354,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3354| 
	.dwpsn	file "../utils/ff.c",line 3355,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3355| 
$C$DW$636	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$636, DW_AT_low_pc(0x00)
	.dwattr $C$DW$636, DW_AT_name("follow_path")
	.dwattr $C$DW$636, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3355| 
        ; CALL OCCURS {follow_path }     ; [] |3355| 
        MOVS      V1, A1                ; [DPU_3_PIPE] |3355| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3404,column 2,is_stmt,isa 1
        MOVEQ     A1, #8                ; [DPU_3_PIPE] |3404| 
        BEQ       ||$C$L426||           ; [DPU_3_PIPE] |3404| 
        ; BRANCHCC OCCURS {||$C$L426||}  ; [] |3404| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3359,column 3,is_stmt,isa 1
        CMP       V1, #4                ; [DPU_3_PIPE] |3359| 
        BNE       ||$C$L425||           ; [DPU_3_PIPE] |3359| 
        ; BRANCHCC OCCURS {||$C$L425||}  ; [] |3359| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3360,column 4,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3360| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |3360| 
$C$DW$637	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$637, DW_AT_low_pc(0x00)
	.dwattr $C$DW$637, DW_AT_name("create_chain")
	.dwattr $C$DW$637, DW_AT_TI_call
        BL        create_chain          ; [DPU_3_PIPE] |3360| 
        ; CALL OCCURS {create_chain }    ; [] |3360| 
        MOVS      V2, A1                ; [DPU_3_PIPE] |3360| 
        BEQ       ||$C$L423||           ; [DPU_3_PIPE] |3360| 
        ; BRANCHCC OCCURS {||$C$L423||}  ; [] |3360| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3363,column 4,is_stmt,isa 1
        CMP       V2, #1                ; [DPU_3_PIPE] |3363| 
        BEQ       ||$C$L422||           ; [DPU_3_PIPE] |3363| 
        ; BRANCHCC OCCURS {||$C$L422||}  ; [] |3363| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3364,column 4,is_stmt,isa 1
        CMP       V2, #-1               ; [DPU_3_PIPE] |3364| 
        BEQ       ||$C$L421||           ; [DPU_3_PIPE] |3364| 
        ; BRANCHCC OCCURS {||$C$L421||}  ; [] |3364| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3366,column 5,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |3366| 
        MOV       V1, A2                ; [DPU_3_PIPE] |3366| 
	.dwpsn	file "../utils/ff.c",line 740,column 2,is_stmt,isa 1
        LDRB      A1, [V1, #4]          ; [DPU_3_PIPE] |740| 
        CBZ       A1, ||$C$L398||       ; [] 
        ; BRANCHCC OCCURS {||$C$L398||}  ; [] |740| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |742| 
	.dwpsn	file "../utils/ff.c",line 741,column 3,is_stmt,isa 1
        LDR       V6, [V1, #48]         ; [DPU_3_PIPE] |741| 
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |742| 
        ADDS      A2, A2, #52           ; [DPU_3_PIPE] |742| 
        MOV       A3, V6                ; [DPU_3_PIPE] |742| 
$C$DW$638	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$638, DW_AT_low_pc(0x00)
	.dwattr $C$DW$638, DW_AT_name("disk_write")
	.dwattr $C$DW$638, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |742| 
        ; CALL OCCURS {disk_write }      ; [] |742| 
        CMP       A1, #0                ; [DPU_3_PIPE] |742| 
        BNE       ||$C$L421||           ; [DPU_3_PIPE] |742| 
        ; BRANCHCC OCCURS {||$C$L421||}  ; [] |742| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        LDR       A1, [V1, #36]         ; [DPU_3_PIPE] |745| 
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        STRB      A2, [V1, #4]          ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |745| 
        BHI       ||$C$L398||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L398||}  ; [] |745| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V1, #28]         ; [DPU_3_PIPE] |745| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |745| 
        CMP       A1, V6                ; [DPU_3_PIPE] |745| 
        BLS       ||$C$L398||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L398||}  ; [] |745| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        LDRB      V4, [V1, #3]          ; [DPU_3_PIPE] |746| 
        CMP       V4, #2                ; [DPU_3_PIPE] |746| 
        BCC       ||$C$L398||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L398||}  ; [] |746| 
;* --------------------------------------------------------------------------*
        ADD       V3, V1, #52           ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |747| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L397||
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 749
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L397||:    
        LDR       A2, [V1, #28]         ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |748| 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        ADD       V6, A2, V6            ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        MOVS      A4, #1                ; [DPU_3_PIPE] |748| 
        MOV       A3, V6                ; [DPU_3_PIPE] |748| 
        MOV       A2, V3                ; [DPU_3_PIPE] |748| 
$C$DW$639	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$639, DW_AT_low_pc(0x00)
	.dwattr $C$DW$639, DW_AT_name("disk_write")
	.dwattr $C$DW$639, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |748| 
        ; CALL OCCURS {disk_write }      ; [] |748| 
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |746| 
        BNE       ||$C$L397||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L397||}  ; [] |746| 
;* --------------------------------------------------------------------------*
||$C$L398||:    
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       V7, [SP, #4]          ; [DPU_3_PIPE] |830| 
        LDR       A1, [V7, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A2, V2, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        CMP       A1, A2                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L399||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L399||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A3, [V7, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A1, [V7, #44]         ; [DPU_3_PIPE] |831| 
        MLA       V8, A2, A3, A1        ; [DPU_3_PIPE] |831| 
        B         ||$C$L400||           ; [DPU_3_PIPE] |831| 
        ; BRANCH OCCURS {||$C$L400||}    ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L399||:    
	.dwpsn	file "../utils/ff.c",line 830,column 34,is_stmt,isa 1
        MOV       V8, #0                ; [DPU_3_PIPE] |830| 
;* --------------------------------------------------------------------------*
||$C$L400||:    
	.dwpsn	file "../utils/ff.c",line 3369,column 5,is_stmt,isa 1
        ADD       V7, V7, #52           ; [DPU_3_PIPE] |3369| 
        MVN       A3, #-1               ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3370,column 5,is_stmt,isa 1
        MOV       A1, #512              ; [DPU_3_PIPE] |3370| 
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        MOV       A2, V7                ; [DPU_3_PIPE] |557| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L401||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 128
;*   Known Maximum Trip Count        : 128
;*   Known Max Trip Count Factor     : 128
;* --------------------------------------------------------------------------*
	.align	8
||$C$L401||:    
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      A1, A1, #4            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A3, [A2], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L401||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L401||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        MOV       A2, V7                ; [DPU_3_PIPE] |557| 
        MVN       A3, #-538976289       ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        MOVS      A1, #2                ; [DPU_3_PIPE] |559| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L402||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 2
;*   Known Maximum Trip Count        : 2
;*   Known Max Trip Count Factor     : 2
;* --------------------------------------------------------------------------*
	.align	8
||$C$L402||:    
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STR       A3, [A2], #4          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L402||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L402||}  ; [] |559| 
;* --------------------------------------------------------------------------*
        MOVS      V4, #32               ; [DPU_3_PIPE] 
        MOVS      V3, #3                ; [DPU_3_PIPE] |559| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L403||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Known Minimum Trip Count        : 3
;*   Known Maximum Trip Count        : 3
;*   Known Max Trip Count Factor     : 3
;* --------------------------------------------------------------------------*
	.align	8
||$C$L403||:    
; Peeled loop iterations for unrolled loop:
        SUBS      V3, V3, #1            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V4, [A2], #1          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L403||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L403||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3374,column 5,is_stmt,isa 1
        UXTB      A1, V5                ; [DPU_3_PIPE] |3374| 
        STRB      A1, [V7, #22]         ; [DPU_3_PIPE] |3374| 
        UXTB      A2, V5, ROR #8        ; [DPU_3_PIPE] |3374| 
        STRB      A2, [V7, #23]         ; [DPU_3_PIPE] |3374| 
        UXTB      LR, V5, ROR #16       ; [DPU_3_PIPE] |3374| 
        STR       LR, [SP, #56]         ; [DPU_3_PIPE] |3374| 
        UXTB      V9, V5, ROR #24       ; [DPU_3_PIPE] |3374| 
        STR       V9, [SP, #60]         ; [DPU_3_PIPE] |3374| 
        STR       A1, [SP, #48]         ; [DPU_3_PIPE] |3374| 
        STR       A2, [SP, #52]         ; [DPU_3_PIPE] |3374| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        UXTB      V6, V2, ROR #24       ; [DPU_3_PIPE] |1262| 
        STR       V6, [SP, #76]         ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        UXTB      V3, V2                ; [DPU_3_PIPE] |1261| 
        STR       V3, [SP, #64]         ; [DPU_3_PIPE] |1261| 
        UXTB      V1, V2, ROR #8        ; [DPU_3_PIPE] |1261| 
        STR       V1, [SP, #68]         ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        UXTB      A4, V2, ROR #16       ; [DPU_3_PIPE] |1262| 
        STR       A4, [SP, #72]         ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 3373,column 5,is_stmt,isa 1
        MOVS      A3, #16               ; [DPU_3_PIPE] |3373| 
        STRB      A3, [V7, #11]         ; [DPU_3_PIPE] |3373| 
	.dwpsn	file "../utils/ff.c",line 3374,column 5,is_stmt,isa 1
        STRB      LR, [V7, #24]         ; [DPU_3_PIPE] |3374| 
	.dwpsn	file "../utils/ff.c",line 3372,column 5,is_stmt,isa 1
        MOV       V5, #46               ; [DPU_3_PIPE] |3372| 
        STRB      V5, [V7, #0]          ; [DPU_3_PIPE] |3372| 
	.dwpsn	file "../utils/ff.c",line 3374,column 5,is_stmt,isa 1
        STRB      V9, [V7, #25]         ; [DPU_3_PIPE] |3374| 
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      V3, [V7, #26]         ; [DPU_3_PIPE] |1261| 
        STRB      V1, [V7, #27]         ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        MOV       LR, V7                ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        STRB      A4, [V7, #20]         ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        ADD       V9, V7, #32           ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        STRB      V6, [V7, #21]         ; [DPU_3_PIPE] |1262| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L404||
;*
;*   Loop source line                : 550
;*   Loop closing brace source line  : 551
;*   Loop Unroll Multiple            : 4x
;*   Known Minimum Trip Count        : 8
;*   Known Maximum Trip Count        : 8
;*   Known Max Trip Count Factor     : 8
;* --------------------------------------------------------------------------*
	.align	8
||$C$L404||:    
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDR       A1, [LR], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        SUBS      V4, V4, #4            ; [DPU_3_PIPE] |550| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        STR       A1, [V9], #4          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 550,column 2,is_stmt,isa 1
        BNE       ||$C$L404||           ; [DPU_3_PIPE] |550| 
        ; BRANCHCC OCCURS {||$C$L404||}  ; [] |550| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3377,column 5,is_stmt,isa 1
        STRB      V5, [V7, #33]         ; [DPU_3_PIPE] |3377| 
	.dwpsn	file "../utils/ff.c",line 3378,column 5,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |3378| 
	.dwpsn	file "../utils/ff.c",line 3377,column 20,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |3377| 
	.dwpsn	file "../utils/ff.c",line 3378,column 5,is_stmt,isa 1
        LDRB      A3, [A2, #0]          ; [DPU_3_PIPE] |3378| 
        CMP       A3, #3                ; [DPU_3_PIPE] |3378| 
        BNE       ||$C$L405||           ; [DPU_3_PIPE] |3378| 
        ; BRANCHCC OCCURS {||$C$L405||}  ; [] |3378| 
;* --------------------------------------------------------------------------*
        LDR       A2, [A2, #40]         ; [DPU_3_PIPE] |3378| 
        CMP       A2, A1                ; [DPU_3_PIPE] |3378| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3379,column 6,is_stmt,isa 1
        MOVEQ     A1, #0                ; [DPU_3_PIPE] |3379| 
;* --------------------------------------------------------------------------*
||$C$L405||:    
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      A1, [V7, #58]         ; [DPU_3_PIPE] |1261| 
        LSRS      A2, A1, #8            ; [DPU_3_PIPE] |1261| 
        STRB      A2, [V7, #59]         ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        LSR       LR, A1, #16           ; [DPU_3_PIPE] |1262| 
        STRB      LR, [V7, #52]         ; [DPU_3_PIPE] |1262| 
        LSR       V9, A1, #24           ; [DPU_3_PIPE] |1262| 
        STRB      V9, [V7, #53]         ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 3381,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3381| 
        LDRB      A1, [A1, #2]          ; [DPU_3_PIPE] |3381| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3381| 
        BEQ       ||$C$L410||           ; [DPU_3_PIPE] |3381| 
        ; BRANCHCC OCCURS {||$C$L410||}  ; [] |3381| 
;* --------------------------------------------------------------------------*
        MOV       V3, A1                ; [DPU_3_PIPE] 
        MOVS      V1, #0                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L406||
;*
;*   Loop source line                : 3381
;*   Loop closing brace source line  : 3387
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 255
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L406||:    
	.dwpsn	file "../utils/ff.c",line 3382,column 6,is_stmt,isa 1
        LDR       V6, [SP, #4]          ; [DPU_3_PIPE] |3382| 
        STR       V8, [V6, #48]         ; [DPU_3_PIPE] |3382| 
        MOVS      A1, #1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3383,column 6,is_stmt,isa 1
        STRB      A1, [V6, #4]          ; [DPU_3_PIPE] |3383| 
	.dwpsn	file "../utils/ff.c",line 741,column 3,is_stmt,isa 1
        LDR       V5, [V6, #48]         ; [DPU_3_PIPE] |741| 
	.dwpsn	file "../utils/ff.c",line 742,column 3,is_stmt,isa 1
        LDRB      A1, [V6, #1]          ; [DPU_3_PIPE] |742| 
        MOVS      A4, #1                ; [DPU_3_PIPE] 
        ADD       A2, V6, #52           ; [DPU_3_PIPE] |742| 
        MOV       A3, V5                ; [DPU_3_PIPE] |742| 
$C$DW$640	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$640, DW_AT_low_pc(0x00)
	.dwattr $C$DW$640, DW_AT_name("disk_write")
	.dwattr $C$DW$640, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |742| 
        ; CALL OCCURS {disk_write }      ; [] |742| 
        CMP       A1, #0                ; [DPU_3_PIPE] |742| 
        BNE       ||$C$L421||           ; [DPU_3_PIPE] |742| 
        ; BRANCHCC OCCURS {||$C$L421||}  ; [] |742| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        LDR       A1, [V6, #36]         ; [DPU_3_PIPE] |745| 
	.dwpsn	file "../utils/ff.c",line 744,column 3,is_stmt,isa 1
        STRB      V1, [V6, #4]          ; [DPU_3_PIPE] |744| 
	.dwpsn	file "../utils/ff.c",line 3382,column 6,is_stmt,isa 1
        ADD       V8, V8, #1            ; [DPU_3_PIPE] |3382| 
	.dwpsn	file "../utils/ff.c",line 745,column 3,is_stmt,isa 1
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BHI       ||$C$L408||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L408||}  ; [] |745| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V6, #28]         ; [DPU_3_PIPE] |745| 
        ADDS      A1, A1, A2            ; [DPU_3_PIPE] |745| 
        CMP       A1, V5                ; [DPU_3_PIPE] |745| 
        BLS       ||$C$L408||           ; [DPU_3_PIPE] |745| 
        ; BRANCHCC OCCURS {||$C$L408||}  ; [] |745| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        LDRB      V4, [V6, #3]          ; [DPU_3_PIPE] |746| 
        CMP       V4, #2                ; [DPU_3_PIPE] |746| 
        BCC       ||$C$L408||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L408||}  ; [] |746| 
;* --------------------------------------------------------------------------*
        ADD       A1, V6, #52           ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |747| 
        STR       A1, [SP, #44]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L407||
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 749
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 2147483647
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L407||:    
        LDR       A2, [V6, #28]         ; [DPU_3_PIPE] |747| 
        ADD       V5, A2, V5            ; [DPU_3_PIPE] |747| 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        LDRB      A1, [V6, #1]          ; [DPU_3_PIPE] |748| 
	.dwpsn	file "../utils/ff.c",line 747,column 5,is_stmt,isa 1
        LDR       A2, [SP, #44]         ; [DPU_3_PIPE] |747| 
        MOVS      A4, #1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 748,column 5,is_stmt,isa 1
        MOV       A3, V5                ; [DPU_3_PIPE] |748| 
$C$DW$641	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$641, DW_AT_low_pc(0x00)
	.dwattr $C$DW$641, DW_AT_name("disk_write")
	.dwattr $C$DW$641, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |748| 
        ; CALL OCCURS {disk_write }      ; [] |748| 
	.dwpsn	file "../utils/ff.c",line 746,column 26,is_stmt,isa 1
        SUBS      V4, V4, #1            ; [DPU_3_PIPE] |746| 
        BNE       ||$C$L407||           ; [DPU_3_PIPE] |746| 
        ; BRANCHCC OCCURS {||$C$L407||}  ; [] |746| 
;* --------------------------------------------------------------------------*
||$C$L408||:    
	.dwpsn	file "../utils/ff.c",line 557,column 10,is_stmt,isa 1
        SUB       A1, V7, #2            ; [DPU_3_PIPE] |557| 
	.dwpsn	file "../utils/ff.c",line 3386,column 6,is_stmt,isa 1
        MOV       V4, #512              ; [DPU_3_PIPE] |3386| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L409||
;*
;*   Loop source line                : 559
;*   Loop closing brace source line  : 560
;*   Loop Unroll Multiple            : 2x
;*   Known Minimum Trip Count        : 256
;*   Known Maximum Trip Count        : 256
;*   Known Max Trip Count Factor     : 256
;* --------------------------------------------------------------------------*
	.align	8
||$C$L409||:    
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V1, [A1, #2]!         ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        SUBS      V4, V4, #2            ; [DPU_3_PIPE] |559| 
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      V1, [A1, #1]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 559,column 2,is_stmt,isa 1
        BNE       ||$C$L409||           ; [DPU_3_PIPE] |559| 
        ; BRANCHCC OCCURS {||$C$L409||}  ; [] |559| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3381,column 5,is_stmt,isa 1
        SUBS      V3, V3, #1            ; [DPU_3_PIPE] |3381| 
        BNE       ||$C$L406||           ; [DPU_3_PIPE] |3381| 
        ; BRANCHCC OCCURS {||$C$L406||}  ; [] |3381| 
;* --------------------------------------------------------------------------*
||$C$L410||:    
	.dwpsn	file "../utils/ff.c",line 1214,column 2,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1214| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |1214| 
$C$DW$642	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$642, DW_AT_low_pc(0x00)
	.dwattr $C$DW$642, DW_AT_name("dir_sdi")
	.dwattr $C$DW$642, DW_AT_TI_call
        BL        dir_sdi               ; [DPU_3_PIPE] |1214| 
        ; CALL OCCURS {dir_sdi }         ; [] |1214| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1214| 
        BNE       ||$C$L416||           ; [DPU_3_PIPE] |1214| 
        ; BRANCHCC OCCURS {||$C$L416||}  ; [] |1214| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1216,column 3,is_stmt,isa 1
        MOVS      V4, #0                ; [DPU_3_PIPE] |1216| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L411||
;*
;*   Loop source line                : 1217
;*   Loop closing brace source line  : 1226
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L411||:    
	.dwpsn	file "../utils/ff.c",line 1218,column 4,is_stmt,isa 1
        LDR       V5, [SP, #4]          ; [DPU_3_PIPE] |1218| 
        LDR       V1, [SP, #20]         ; [DPU_3_PIPE] |1218| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A1, V1                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L412||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L412||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$643	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$643, DW_AT_low_pc(0x00)
	.dwattr $C$DW$643, DW_AT_name("sync_window")
	.dwattr $C$DW$643, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L415||       ; [] 
        ; BRANCHCC OCCURS {||$C$L415||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V1                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$644	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$644, DW_AT_low_pc(0x00)
	.dwattr $C$DW$644, DW_AT_name("disk_read")
	.dwattr $C$DW$644, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L415||       ; [] 
        ; BRANCHCC OCCURS {||$C$L415||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V1, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L412||:    
	.dwpsn	file "../utils/ff.c",line 1220,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |1220| 
        LDRB      A2, [A1, #0]          ; [DPU_3_PIPE] |1220| 
        CMP       A2, #229              ; [DPU_3_PIPE] |1220| 
	.dwpsn	file "../utils/ff.c",line 773,column 2,is_stmt,isa 1
        MOV       A1, #0                ; [DPU_3_PIPE] |773| 
	.dwpsn	file "../utils/ff.c",line 1220,column 4,is_stmt,isa 1
        BEQ       ||$C$L413||           ; [DPU_3_PIPE] |1220| 
        ; BRANCHCC OCCURS {||$C$L413||}  ; [] |1220| 
;* --------------------------------------------------------------------------*
        CMP       A2, #0                ; [DPU_3_PIPE] |1220| 
        IT        NE                    ; [DPU_3_PIPE] 
        MOVNE     V4, A1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1223,column 5,is_stmt,isa 1
        BNE       ||$C$L414||           ; [DPU_3_PIPE] |1223| 
        ; BRANCHCC OCCURS {||$C$L414||}  ; [] |1223| 
;* --------------------------------------------------------------------------*
||$C$L413||:    
        CBZ       V4, ||$C$L416||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1221,column 22,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L416||}  ; [] |1221| 
;* --------------------------------------------------------------------------*
        ADDS      V4, V4, #1            ; [DPU_3_PIPE] |1221| 
;* --------------------------------------------------------------------------*
||$C$L414||:    
	.dwpsn	file "../utils/ff.c",line 1225,column 4,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |1225| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |1225| 
$C$DW$645	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$645, DW_AT_low_pc(0x00)
	.dwattr $C$DW$645, DW_AT_name("dir_next")
	.dwattr $C$DW$645, DW_AT_TI_call
        BL        dir_next              ; [DPU_3_PIPE] |1225| 
        ; CALL OCCURS {dir_next }        ; [] |1225| 
        CMP       A1, #0                ; [DPU_3_PIPE] |1225| 
        BEQ       ||$C$L411||           ; [DPU_3_PIPE] |1225| 
        ; BRANCHCC OCCURS {||$C$L411||}  ; [] |1225| 
;* --------------------------------------------------------------------------*
        B         ||$C$L416||           ; [DPU_3_PIPE] |1225| 
        ; BRANCH OCCURS {||$C$L416||}    ; [] |1225| 
;* --------------------------------------------------------------------------*
||$C$L415||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
;* --------------------------------------------------------------------------*
||$C$L416||:    
	.dwpsn	file "../utils/ff.c",line 1228,column 2,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |1228| 
        BNE       ||$C$L420||           ; [DPU_3_PIPE] |1228| 
        ; BRANCHCC OCCURS {||$C$L420||}  ; [] |1228| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1619,column 3,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |1619| 
        LDR       V3, [SP, #20]         ; [DPU_3_PIPE] |1619| 
        MOV       V1, A1                ; [DPU_3_PIPE] |1619| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A2, [V1, #48]         ; [DPU_3_PIPE] |763| 
        CMP       A2, V3                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L418||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L418||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
$C$DW$646	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$646, DW_AT_low_pc(0x00)
	.dwattr $C$DW$646, DW_AT_name("sync_window")
	.dwattr $C$DW$646, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L417||       ; [] 
        ; BRANCHCC OCCURS {||$C$L417||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V1, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V1, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V3                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$647	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$647, DW_AT_low_pc(0x00)
	.dwattr $C$DW$647, DW_AT_name("disk_read")
	.dwattr $C$DW$647, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L417||       ; [] 
        ; BRANCHCC OCCURS {||$C$L417||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V3, [V1, #48]         ; [DPU_3_PIPE] |770| 
        LDR       V9, [SP, #24]         ; [DPU_3_PIPE] |770| 
        MOVS      A1, #0                ; [DPU_3_PIPE] 
        MOV       LR, #1                ; [DPU_3_PIPE] 
        B         ||$C$L419||           ; [DPU_3_PIPE] |770| 
        ; BRANCH OCCURS {||$C$L419||}    ; [] |770| 
;* --------------------------------------------------------------------------*
||$C$L417||:    
	.dwpsn	file "../utils/ff.c",line 766,column 4,is_stmt,isa 1
        MOVS      A1, #1                ; [DPU_3_PIPE] |766| 
	.dwpsn	file "../utils/ff.c",line 1630,column 2,is_stmt,isa 1
        B         ||$C$L420||           ; [DPU_3_PIPE] |1630| 
        ; BRANCH OCCURS {||$C$L420||}    ; [] |1630| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L418||:    
        LDR       V9, [SP, #24]         ; [DPU_3_PIPE] 
        MOVS      A1, #0                ; [DPU_3_PIPE] 
        MOV       LR, #1                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L419||:    
	.dwpsn	file "../utils/ff.c",line 560,column 3,is_stmt,isa 1
        STRB      A1, [V9, #0]          ; [DPU_3_PIPE] |560| 
        ADD       V9, V9, #1            ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9], #1          ; [DPU_3_PIPE] |560| 
        STRB      A1, [V9, #0]          ; [DPU_3_PIPE] |560| 
	.dwpsn	file "../utils/ff.c",line 541,column 16,is_stmt,isa 1
        LDR       A2, [SP, #28]         ; [DPU_3_PIPE] |541| 
	.dwpsn	file "../utils/ff.c",line 540,column 10,is_stmt,isa 1
        LDR       A3, [SP, #24]         ; [DPU_3_PIPE] |540| 
	.dwpsn	file "../utils/ff.c",line 551,column 3,is_stmt,isa 1
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A4, [A2], #1          ; [DPU_3_PIPE] |551| 
        STRB      A4, [A3], #1          ; [DPU_3_PIPE] |551| 
        LDRB      A2, [A2, #0]          ; [DPU_3_PIPE] |551| 
        STRB      A2, [A3, #0]          ; [DPU_3_PIPE] |551| 
	.dwpsn	file "../utils/ff.c",line 1626,column 4,is_stmt,isa 1
        LDR       A2, [SP, #4]          ; [DPU_3_PIPE] |1626| 
        STRB      LR, [A2, #4]          ; [DPU_3_PIPE] |1626| 
;* --------------------------------------------------------------------------*
||$C$L420||:    
	.dwpsn	file "../utils/ff.c",line 1630,column 2,is_stmt,isa 1
        MOVS      V1, A1                ; [DPU_3_PIPE] |1630| 
        BNE       ||$C$L424||           ; [DPU_3_PIPE] |1630| 
        ; BRANCHCC OCCURS {||$C$L424||}  ; [] |1630| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3393,column 5,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |3393| 
	.dwpsn	file "../utils/ff.c",line 3373,column 5,is_stmt,isa 1
        MOVS      A2, #16               ; [DPU_3_PIPE] |3373| 
	.dwpsn	file "../utils/ff.c",line 3393,column 5,is_stmt,isa 1
        LDR       LR, [SP, #48]         ; [DPU_3_PIPE] |3393| 
	.dwpsn	file "../utils/ff.c",line 3394,column 5,is_stmt,isa 1
        STRB      A2, [A1, #11]         ; [DPU_3_PIPE] |3394| 
	.dwpsn	file "../utils/ff.c",line 3393,column 5,is_stmt,isa 1
        ADDS      A1, A1, #20           ; [DPU_3_PIPE] |3393| 
	.dwpsn	file "../utils/ff.c",line 3395,column 5,is_stmt,isa 1
        STRB      LR, [A1, #2]          ; [DPU_3_PIPE] |3395| 
        LDR       V9, [SP, #52]         ; [DPU_3_PIPE] |3395| 
        STRB      V9, [A1, #3]          ; [DPU_3_PIPE] |3395| 
        LDR       V8, [SP, #56]         ; [DPU_3_PIPE] |3395| 
        STRB      V8, [A1, #4]          ; [DPU_3_PIPE] |3395| 
        LDR       V7, [SP, #60]         ; [DPU_3_PIPE] |3395| 
        STRB      V7, [A1, #5]          ; [DPU_3_PIPE] |3395| 
        LDR       V6, [SP, #64]         ; [DPU_3_PIPE] |3395| 
	.dwpsn	file "../utils/ff.c",line 1261,column 2,is_stmt,isa 1
        STRB      V6, [A1, #6]          ; [DPU_3_PIPE] |1261| 
        LDR       V5, [SP, #68]         ; [DPU_3_PIPE] |1261| 
        STRB      V5, [A1, #7]          ; [DPU_3_PIPE] |1261| 
        LDR       V4, [SP, #72]         ; [DPU_3_PIPE] |1261| 
	.dwpsn	file "../utils/ff.c",line 1262,column 2,is_stmt,isa 1
        STRB      V4, [A1, #0]          ; [DPU_3_PIPE] |1262| 
        LDR       V3, [SP, #76]         ; [DPU_3_PIPE] |1262| 
        STRB      V3, [A1, #1]          ; [DPU_3_PIPE] |1262| 
	.dwpsn	file "../utils/ff.c",line 3397,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3397| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |3397| 
        STRB      A2, [A1, #4]          ; [DPU_3_PIPE] |3397| 
	.dwpsn	file "../utils/ff.c",line 3398,column 5,is_stmt,isa 1
$C$DW$648	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$648, DW_AT_low_pc(0x00)
	.dwattr $C$DW$648, DW_AT_name("sync_fs")
	.dwattr $C$DW$648, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |3398| 
        ; CALL OCCURS {sync_fs }         ; [] |3398| 
	.dwpsn	file "../utils/ff.c",line 3404,column 2,is_stmt,isa 1
        B         ||$C$L426||           ; [DPU_3_PIPE] |3404| 
        ; BRANCH OCCURS {||$C$L426||}    ; [] |3404| 
;* --------------------------------------------------------------------------*
||$C$L421||:    
	.dwpsn	file "../utils/ff.c",line 3364,column 27,is_stmt,isa 1
        MOVS      V1, #1                ; [DPU_3_PIPE] |3364| 
	.dwpsn	file "../utils/ff.c",line 3365,column 4,is_stmt,isa 1
        B         ||$C$L424||           ; [DPU_3_PIPE] |3365| 
        ; BRANCH OCCURS {||$C$L424||}    ; [] |3365| 
;* --------------------------------------------------------------------------*
||$C$L422||:    
	.dwpsn	file "../utils/ff.c",line 3363,column 18,is_stmt,isa 1
        MOVS      V1, #2                ; [DPU_3_PIPE] |3363| 
	.dwpsn	file "../utils/ff.c",line 3364,column 4,is_stmt,isa 1
        B         ||$C$L424||           ; [DPU_3_PIPE] |3364| 
        ; BRANCH OCCURS {||$C$L424||}    ; [] |3364| 
;* --------------------------------------------------------------------------*
||$C$L423||:    
	.dwpsn	file "../utils/ff.c",line 3362,column 18,is_stmt,isa 1
        MOVS      V1, #7                ; [DPU_3_PIPE] |3362| 
;* --------------------------------------------------------------------------*
||$C$L424||:    
	.dwpsn	file "../utils/ff.c",line 3391,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3391| 
        MOV       A2, V2                ; [DPU_3_PIPE] |3391| 
$C$DW$649	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$649, DW_AT_low_pc(0x00)
	.dwattr $C$DW$649, DW_AT_name("remove_chain")
	.dwattr $C$DW$649, DW_AT_TI_call
        BL        remove_chain          ; [DPU_3_PIPE] |3391| 
        ; CALL OCCURS {remove_chain }    ; [] |3391| 
;* --------------------------------------------------------------------------*
||$C$L425||:    
	.dwpsn	file "../utils/ff.c",line 3404,column 2,is_stmt,isa 1
        MOV       A1, V1                ; [DPU_3_PIPE] |3404| 
;* --------------------------------------------------------------------------*
||$C$L426||:    
        ADD       SP, SP, #84           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$650	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$650, DW_AT_low_pc(0x00)
	.dwattr $C$DW$650, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$599, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$599, DW_AT_TI_end_line(0xd4d)
	.dwattr $C$DW$599, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$599

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_lseek
	.thumb
	.global	f_lseek

$C$DW$651	.dwtag  DW_TAG_subprogram, DW_AT_name("f_lseek")
	.dwattr $C$DW$651, DW_AT_low_pc(f_lseek)
	.dwattr $C$DW$651, DW_AT_high_pc(0x00)
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("f_lseek")
	.dwattr $C$DW$651, DW_AT_external
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$651, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$651, DW_AT_TI_begin_line(0xb3d)
	.dwattr $C$DW$651, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$651, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$651, DW_AT_decl_line(0xb3d)
	.dwattr $C$DW$651, DW_AT_decl_column(0x09)
	.dwattr $C$DW$651, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "../utils/ff.c",line 2881,column 1,is_stmt,address f_lseek,isa 1

	.dwfde $C$DW$CIE, f_lseek
$C$DW$652	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg0]
$C$DW$653	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ofs")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("ofs")
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$653, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: f_lseek                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 8 Auto + 36 Save = 44 byte                 *
;*****************************************************************************
f_lseek:
;* --------------------------------------------------------------------------*
;* A3    assigned to $O$C1
;* A3    assigned to $O$C2
;* A1    assigned to $O$C3
;* A1    assigned to $O$C4
;* A1    assigned to $O$C6
;* V7    assigned to $O$C7
;* A2    assigned to $O$C8
;* V5    assigned to $O$C9
;* V5    assigned to $O$C10
;* A2    assigned to $O$C11
;* A1    assigned to $O$C12
;* A2    assigned to $O$C13
;* A2    assigned to $O$C14
;* A1    assigned to $O$U58
;* A2    assigned to $O$U139
;* A1    assigned to $O$U144
;* A2    assigned to $O$U42
;* V5    assigned to fs
$C$DW$654	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$654, DW_AT_location[DW_OP_reg8]
;* V6    assigned to clst
$C$DW$655	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg9]
;* V7    assigned to ncl
$C$DW$656	.dwtag  DW_TAG_variable, DW_AT_name("ncl")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("ncl")
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$656, DW_AT_location[DW_OP_reg10]
;* V3    assigned to scl
$C$DW$657	.dwtag  DW_TAG_variable, DW_AT_name("scl")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("scl")
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$657, DW_AT_location[DW_OP_reg6]
;* A1    assigned to res
$C$DW$658	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$658, DW_AT_location[DW_OP_reg0]
;* V7    assigned to sector
$C$DW$659	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$659, DW_AT_location[DW_OP_reg10]
;* V6    assigned to sector
$C$DW$660	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$660, DW_AT_location[DW_OP_reg9]
;* V6    assigned to sector
$C$DW$661	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$661, DW_AT_location[DW_OP_reg9]
;* V5    assigned to fs
$C$DW$662	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$662, DW_AT_location[DW_OP_reg8]
;* V3    assigned to clst
$C$DW$663	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$663, DW_AT_location[DW_OP_reg6]
;* V7    assigned to wc
$C$DW$664	.dwtag  DW_TAG_variable, DW_AT_name("wc")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("wc")
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg10]
;* V6    assigned to bc
$C$DW$665	.dwtag  DW_TAG_variable, DW_AT_name("bc")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("bc")
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$665, DW_AT_location[DW_OP_reg9]
;* A1    assigned to ifptr
$C$DW$666	.dwtag  DW_TAG_variable, DW_AT_name("ifptr")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("ifptr")
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$666, DW_AT_location[DW_OP_reg0]
;* V8    assigned to bcs
$C$DW$667	.dwtag  DW_TAG_variable, DW_AT_name("bcs")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("bcs")
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$667, DW_AT_location[DW_OP_reg11]
;* V2    assigned to ofs
$C$DW$668	.dwtag  DW_TAG_variable, DW_AT_name("ofs")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("ofs")
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$668, DW_AT_location[DW_OP_reg5]
;* V4    assigned to fp
$C$DW$669	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$669, DW_AT_location[DW_OP_reg7]
;* A1    assigned to cs
$C$DW$670	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$670, DW_AT_location[DW_OP_reg0]
;* A1    assigned to cs
$C$DW$671	.dwtag  DW_TAG_variable, DW_AT_name("cs")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$671, DW_AT_location[DW_OP_reg0]
$C$DW$672	.dwtag  DW_TAG_variable, DW_AT_name("nsect")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("nsect")
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$672, DW_AT_location[DW_OP_breg13 4]
;* A1    assigned to clst
$C$DW$673	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$673, DW_AT_location[DW_OP_reg0]
;* A2    assigned to $O$U8
;* V5    assigned to $O$U8
;* A1    assigned to $O$U8
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |2242| 
	.dwpsn	file "../utils/ff.c",line 2881,column 1,is_stmt,isa 1
        MOV       V2, A2                ; [DPU_3_PIPE] |2881| 
        SUB       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 48
	.dwpsn	file "../utils/ff.c",line 2242,column 2,is_stmt,isa 1
        BEQ       ||$C$L427||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L427||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A2, ||$C$L427||       ; [] 
        ; BRANCHCC OCCURS {||$C$L427||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [A2, #0]          ; [DPU_3_PIPE] |2242| 
        CBZ       A1, ||$C$L427||       ; [] 
        ; BRANCHCC OCCURS {||$C$L427||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
        LDRH      A1, [V4, #4]          ; [DPU_3_PIPE] |2242| 
        LDRH      A3, [A2, #6]          ; [DPU_3_PIPE] |2242| 
        CMP       A1, A3                ; [DPU_3_PIPE] |2242| 
        BEQ       ||$C$L428||           ; [DPU_3_PIPE] |2242| 
        ; BRANCHCC OCCURS {||$C$L428||}  ; [] |2242| 
;* --------------------------------------------------------------------------*
||$C$L427||:    
	.dwpsn	file "../utils/ff.c",line 2886,column 20,is_stmt,isa 1
        MOVS      A1, #9                ; [DPU_3_PIPE] |2886| 
        B         ||$C$L466||           ; [DPU_3_PIPE] |2886| 
        ; BRANCH OCCURS {||$C$L466||}    ; [] |2886| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L428||:    
	.dwpsn	file "../utils/ff.c",line 2247,column 2,is_stmt,isa 1
        LDRB      A1, [A2, #1]          ; [DPU_3_PIPE] |2247| 
$C$DW$674	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$674, DW_AT_low_pc(0x00)
	.dwattr $C$DW$674, DW_AT_name("disk_status")
	.dwattr $C$DW$674, DW_AT_TI_call
        BL        disk_status           ; [DPU_3_PIPE] |2247| 
        ; CALL OCCURS {disk_status }     ; [] |2247| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |2247| 
        IT        CS                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2886,column 20,is_stmt,isa 1
        MOVCS     A1, #3                ; [DPU_3_PIPE] |2886| 
        BCS       ||$C$L466||           ; [DPU_3_PIPE] |2886| 
        ; BRANCHCC OCCURS {||$C$L466||}  ; [] |2886| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2887,column 2,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2887| 
        BICS      A1, A2, #127          ; [DPU_3_PIPE] |2887| 
        IT        NE                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2888,column 3,is_stmt,isa 1
        MOVNE     A1, #2                ; [DPU_3_PIPE] |2888| 
        BNE       ||$C$L466||           ; [DPU_3_PIPE] |2888| 
        ; BRANCHCC OCCURS {||$C$L466||}  ; [] |2888| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2951,column 3,is_stmt,isa 1
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |2951| 
        CMP       A1, V2                ; [DPU_3_PIPE] |2951| 
        ITT       CC                    ; [DPU_3_PIPE] 
        LSRCCS    A2, A2, #2            ; [DPU_3_PIPE] |2951| 
	.dwpsn	file "../utils/ff.c",line 2955,column 6,is_stmt,isa 1
        MOVCC     V2, A1                ; [DPU_3_PIPE] |2955| 
	.dwpsn	file "../utils/ff.c",line 2957,column 3,is_stmt,isa 1
        LDR       A1, [V4, #8]          ; [DPU_3_PIPE] |2957| 
	.dwpsn	file "../utils/ff.c",line 2958,column 3,is_stmt,isa 1
        MOVS      A2, #0                ; [DPU_3_PIPE] |2958| 
	.dwpsn	file "../utils/ff.c",line 2959,column 3,is_stmt,isa 1
        CMP       V2, #0                ; [DPU_3_PIPE] |2959| 
	.dwpsn	file "../utils/ff.c",line 2958,column 3,is_stmt,isa 1
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |2958| 
	.dwpsn	file "../utils/ff.c",line 2959,column 3,is_stmt,isa 1
        MOV       LR, A2                ; [DPU_3_PIPE] |2959| 
	.dwpsn	file "../utils/ff.c",line 2958,column 3,is_stmt,isa 1
        STR       LR, [V4, #8]          ; [DPU_3_PIPE] |2958| 
	.dwpsn	file "../utils/ff.c",line 2959,column 3,is_stmt,isa 1
        BEQ       ||$C$L460||           ; [DPU_3_PIPE] |2959| 
        ; BRANCHCC OCCURS {||$C$L460||}  ; [] |2959| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2960,column 4,is_stmt,isa 1
        LDR       A2, [V4, #0]          ; [DPU_3_PIPE] |2960| 
        LDRB      A3, [A2, #2]          ; [DPU_3_PIPE] |2960| 
        LSL       V8, A3, #9            ; [DPU_3_PIPE] |2960| 
        CBZ       A1, ||$C$L429||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2961,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L429||}  ; [] |2961| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |2961| 
        SUBS      A4, V2, #1            ; [DPU_3_PIPE] |2961| 
        UDIV      A3, A1, V8            ; [DPU_3_PIPE] |2961| 
        UDIV      A4, A4, V8            ; [DPU_3_PIPE] |2961| 
        CMP       A3, A4                ; [DPU_3_PIPE] |2961| 
        BLS       ||$C$L431||           ; [DPU_3_PIPE] |2961| 
        ; BRANCHCC OCCURS {||$C$L431||}  ; [] |2961| 
;* --------------------------------------------------------------------------*
||$C$L429||:    
	.dwpsn	file "../utils/ff.c",line 2967,column 5,is_stmt,isa 1
        LDR       A1, [V4, #16]         ; [DPU_3_PIPE] |2967| 
        CBNZ      A1, ||$C$L430||       ; [] 
        ; BRANCHCC OCCURS {||$C$L430||}  ; [] |2967| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2970,column 6,is_stmt,isa 1
        MOV       A1, A2                ; [DPU_3_PIPE] |2970| 
        MOV       A2, LR                ; [DPU_3_PIPE] |2970| 
$C$DW$675	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$675, DW_AT_low_pc(0x00)
	.dwattr $C$DW$675, DW_AT_name("create_chain")
	.dwattr $C$DW$675, DW_AT_TI_call
        BL        create_chain          ; [DPU_3_PIPE] |2970| 
        ; CALL OCCURS {create_chain }    ; [] |2970| 
        CMP       A1, #1                ; [DPU_3_PIPE] |2970| 
        BEQ       ||$C$L458||           ; [DPU_3_PIPE] |2970| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |2970| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2972,column 6,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |2972| 
        BEQ       ||$C$L462||           ; [DPU_3_PIPE] |2972| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |2972| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2973,column 6,is_stmt,isa 1
        STR       A1, [V4, #16]         ; [DPU_3_PIPE] |2973| 
;* --------------------------------------------------------------------------*
||$C$L430||:    
	.dwpsn	file "../utils/ff.c",line 2976,column 5,is_stmt,isa 1
        STR       A1, [V4, #20]         ; [DPU_3_PIPE] |2976| 
        CBNZ      A1, ||$C$L432||       ; [] 
	.dwpsn	file "../utils/ff.c",line 2978,column 4,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L432||}  ; [] |2978| 
;* --------------------------------------------------------------------------*
        B         ||$C$L460||           ; [DPU_3_PIPE] |2978| 
        ; BRANCH OCCURS {||$C$L460||}    ; [] |2978| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L431||:    
	.dwpsn	file "../utils/ff.c",line 2963,column 5,is_stmt,isa 1
        SUB       A2, V8, #1            ; [DPU_3_PIPE] |2963| 
        BIC       A2, A1, A2            ; [DPU_3_PIPE] |2963| 
	.dwpsn	file "../utils/ff.c",line 2965,column 5,is_stmt,isa 1
        LDR       A1, [V4, #20]         ; [DPU_3_PIPE] |2965| 
	.dwpsn	file "../utils/ff.c",line 2963,column 5,is_stmt,isa 1
        STR       A2, [V4, #8]          ; [DPU_3_PIPE] |2963| 
	.dwpsn	file "../utils/ff.c",line 2964,column 5,is_stmt,isa 1
        SUBS      V2, V2, A2            ; [DPU_3_PIPE] |2964| 
	.dwpsn	file "../utils/ff.c",line 2965,column 5,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |2965| 
        BEQ       ||$C$L460||           ; [DPU_3_PIPE] |2965| 
        ; BRANCHCC OCCURS {||$C$L460||}  ; [] |2965| 
;* --------------------------------------------------------------------------*
||$C$L432||:    
	.dwpsn	file "../utils/ff.c",line 2979,column 12,is_stmt,isa 1
        CMP       V8, V2                ; [DPU_3_PIPE] |2979| 
        BCS       ||$C$L457||           ; [DPU_3_PIPE] |2979| 
        ; BRANCHCC OCCURS {||$C$L457||}  ; [] |2979| 
;* --------------------------------------------------------------------------*
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        MOVS      V1, #1                ; [DPU_3_PIPE] |1043| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L433||
;*
;*   Loop source line                : 2979
;*   Loop closing brace source line  : 2994
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L433||:    
	.dwpsn	file "../utils/ff.c",line 2981,column 6,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2981| 
        LSRS      A2, A2, #2            ; [DPU_3_PIPE] |2981| 
        BCS       ||$C$L441||           ; [DPU_3_PIPE] |2981| 
        ; BRANCHCC OCCURS {||$C$L441||}  ; [] |2981| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2988,column 7,is_stmt,isa 1
        MOV       V3, A1                ; [DPU_3_PIPE] |2988| 
        CMP       V3, #2                ; [DPU_3_PIPE] |2988| 
        BCC       ||$C$L458||           ; [DPU_3_PIPE] |2988| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |2988| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 851,column 2,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |851| 
        CMP       A1, V3                ; [DPU_3_PIPE] |851| 
        BLS       ||$C$L458||           ; [DPU_3_PIPE] |851| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |851| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 854,column 2,is_stmt,isa 1
        LDRB      A1, [V5, #0]          ; [DPU_3_PIPE] |854| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L437||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L437||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L435||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L435||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |854| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        ADD       V6, V6, V3, LSR #7    ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L434||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L434||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$676	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$676, DW_AT_low_pc(0x00)
	.dwattr $C$DW$676, DW_AT_name("sync_window")
	.dwattr $C$DW$676, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOV       A4, V1                ; [DPU_3_PIPE] |768| 
$C$DW$677	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$677, DW_AT_low_pc(0x00)
	.dwattr $C$DW$677, DW_AT_name("disk_read")
	.dwattr $C$DW$677, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L434||:    
	.dwpsn	file "../utils/ff.c",line 871,column 3,is_stmt,isa 1
        LSLS      A1, V3, #2            ; [DPU_3_PIPE] |871| 
        AND       A1, A1, #508          ; [DPU_3_PIPE] |871| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |871| 
        LDRB      A4, [V5, #55]         ; [DPU_3_PIPE] |871| 
        LDRB      A2, [V5, #54]         ; [DPU_3_PIPE] |871| 
        LDRB      A3, [V5, #53]         ; [DPU_3_PIPE] |871| 
        LDRB      A1, [V5, #52]         ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |871| 
        LSLS      A2, A2, #16           ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |871| 
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |871| 
        BIC       A1, A1, #-268435456   ; [DPU_3_PIPE] |871| 
        CMP       A1, #2                ; [DPU_3_PIPE] |871| 
        BCS       ||$C$L453||           ; [DPU_3_PIPE] |871| 
        ; BRANCHCC OCCURS {||$C$L453||}  ; [] |871| 
;* --------------------------------------------------------------------------*
        B         ||$C$L458||           ; [DPU_3_PIPE] |871| 
        ; BRANCH OCCURS {||$C$L458||}    ; [] |871| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L435||:    
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        ADD       V6, V6, V3, LSR #8    ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V6                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L436||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L436||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$678	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$678, DW_AT_low_pc(0x00)
	.dwattr $C$DW$678, DW_AT_name("sync_window")
	.dwattr $C$DW$678, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V6                ; [DPU_3_PIPE] |768| 
        MOV       A4, V1                ; [DPU_3_PIPE] |768| 
$C$DW$679	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$679, DW_AT_low_pc(0x00)
	.dwattr $C$DW$679, DW_AT_name("disk_read")
	.dwattr $C$DW$679, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V6, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L436||:    
	.dwpsn	file "../utils/ff.c",line 866,column 3,is_stmt,isa 1
        LSLS      A1, V3, #1            ; [DPU_3_PIPE] |866| 
        AND       A1, A1, #510          ; [DPU_3_PIPE] |866| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |866| 
        LDRB      A2, [V5, #53]         ; [DPU_3_PIPE] |866| 
        LDRB      A1, [V5, #52]         ; [DPU_3_PIPE] |866| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |866| 
        CMP       A1, #2                ; [DPU_3_PIPE] |866| 
        BCS       ||$C$L453||           ; [DPU_3_PIPE] |866| 
        ; BRANCHCC OCCURS {||$C$L453||}  ; [] |866| 
;* --------------------------------------------------------------------------*
        B         ||$C$L458||           ; [DPU_3_PIPE] |866| 
        ; BRANCH OCCURS {||$C$L458||}    ; [] |866| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L437||:    
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LDR       A2, [V5, #36]         ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 856,column 3,is_stmt,isa 1
        ADD       V6, V3, V3, LSR #1    ; [DPU_3_PIPE] |856| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LSR       V7, V6, #9            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADD       A3, V7, A2            ; [DPU_3_PIPE] |763| 
        CMP       A1, A3                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        ADD       V7, V7, A2            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        BEQ       ||$C$L438||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L438||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$680	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$680, DW_AT_low_pc(0x00)
	.dwattr $C$DW$680, DW_AT_name("sync_window")
	.dwattr $C$DW$680, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V7                ; [DPU_3_PIPE] |768| 
        MOV       A4, V1                ; [DPU_3_PIPE] |768| 
$C$DW$681	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$681, DW_AT_low_pc(0x00)
	.dwattr $C$DW$681, DW_AT_name("disk_read")
	.dwattr $C$DW$681, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        MOV       A1, V7                ; [DPU_3_PIPE] |770| 
        STR       A1, [V5, #48]         ; [DPU_3_PIPE] |770| 
        LDR       A2, [V5, #36]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L438||:    
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        UBFX      A3, V6, #0, #9        ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADD       V6, V6, #1            ; [DPU_3_PIPE] |763| 
        ADD       A2, A2, V6, LSR #9    ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        ADD       A3, V5, A3            ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, A2                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        LDRB      V7, [A3, #52]         ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        STR       A2, [SP, #0]          ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L439||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L439||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$682	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$682, DW_AT_low_pc(0x00)
	.dwattr $C$DW$682, DW_AT_name("sync_window")
	.dwattr $C$DW$682, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        LDR       A3, [SP, #0]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A4, V1                ; [DPU_3_PIPE] |768| 
$C$DW$683	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$683, DW_AT_low_pc(0x00)
	.dwattr $C$DW$683, DW_AT_name("disk_read")
	.dwattr $C$DW$683, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L462||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |768| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       A1, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L439||:    
	.dwpsn	file "../utils/ff.c",line 860,column 3,is_stmt,isa 1
        UBFX      A1, V6, #0, #9        ; [DPU_3_PIPE] |860| 
        ADD       V5, V5, A1            ; [DPU_3_PIPE] |860| 
        LDRB      A1, [V5, #52]         ; [DPU_3_PIPE] |860| 
        ORR       V7, V7, A1, LSL #8    ; [DPU_3_PIPE] |860| 
	.dwpsn	file "../utils/ff.c",line 861,column 3,is_stmt,isa 1
        LSRS      A1, V3, #1            ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L440||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L440||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        UBFX      A1, V7, #0, #12       ; [DPU_3_PIPE] |861| 
        CMP       A1, #2                ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L453||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L453||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        B         ||$C$L458||           ; [DPU_3_PIPE] |861| 
        ; BRANCH OCCURS {||$C$L458||}    ; [] |861| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L440||:    
        LSR       A1, V7, #4            ; [DPU_3_PIPE] |861| 
        CMP       A1, #2                ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L453||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L453||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        B         ||$C$L458||           ; [DPU_3_PIPE] |861| 
        ; BRANCH OCCURS {||$C$L458||}    ; [] |861| 
;* --------------------------------------------------------------------------*
||$C$L441||:    
	.dwpsn	file "../utils/ff.c",line 2982,column 7,is_stmt,isa 1
        MOVS      V6, A1                ; [DPU_3_PIPE] |2982| 
        BNE       ||$C$L443||           ; [DPU_3_PIPE] |2982| 
        ; BRANCHCC OCCURS {||$C$L443||}  ; [] |2982| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1011,column 3,is_stmt,isa 1
        LDR       V3, [V5, #12]         ; [DPU_3_PIPE] |1011| 
        CBZ       V3, ||$C$L442||       ; [] 
        ; BRANCHCC OCCURS {||$C$L442||}  ; [] |1011| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1012,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1012| 
        CMP       A1, V3                ; [DPU_3_PIPE] |1012| 
        BHI       ||$C$L445||           ; [DPU_3_PIPE] |1012| 
        ; BRANCHCC OCCURS {||$C$L445||}  ; [] |1012| 
;* --------------------------------------------------------------------------*
||$C$L442||:    
        MOV       V3, V1                ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 1012,column 36,is_stmt,isa 1
        B         ||$C$L445||           ; [DPU_3_PIPE] |1012| 
        ; BRANCH OCCURS {||$C$L445||}    ; [] |1012| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L443||:    
	.dwpsn	file "../utils/ff.c",line 1015,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1015| 
        MOV       A2, V6                ; [DPU_3_PIPE] |1015| 
$C$DW$684	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$684, DW_AT_low_pc(0x00)
	.dwattr $C$DW$684, DW_AT_name("get_fat")
	.dwattr $C$DW$684, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1015| 
        ; CALL OCCURS {get_fat }         ; [] |1015| 
        CMP       A1, #2                ; [DPU_3_PIPE] |1015| 
        BCC       ||$C$L458||           ; [DPU_3_PIPE] |1015| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |1015| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1017,column 3,is_stmt,isa 1
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] |1017| 
        CMP       A2, A1                ; [DPU_3_PIPE] |1017| 
        BLS       ||$C$L444||           ; [DPU_3_PIPE] |1017| 
        ; BRANCHCC OCCURS {||$C$L444||}  ; [] |1017| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1017,column 26,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1017| 
        BEQ       ||$C$L462||           ; [DPU_3_PIPE] |1017| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |1017| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2990,column 6,is_stmt,isa 1
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] |2990| 
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] |2990| 
        CMP       A2, A1                ; [DPU_3_PIPE] |2990| 
        BHI       ||$C$L454||           ; [DPU_3_PIPE] |2990| 
        ; BRANCHCC OCCURS {||$C$L454||}  ; [] |2990| 
;* --------------------------------------------------------------------------*
        B         ||$C$L458||           ; [DPU_3_PIPE] |2990| 
        ; BRANCH OCCURS {||$C$L458||}    ; [] |2990| 
;* --------------------------------------------------------------------------*
||$C$L444||:    
	.dwpsn	file "../utils/ff.c",line 1018,column 3,is_stmt,isa 1
        MOV       V3, V6                ; [DPU_3_PIPE] |1018| 
;* --------------------------------------------------------------------------*
||$C$L445||:    
	.dwpsn	file "../utils/ff.c",line 1021,column 2,is_stmt,isa 1
        MOV       V7, V3                ; [DPU_3_PIPE] |1021| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L446||
;*
;*   Loop source line                : 1022
;*   Loop closing brace source line  : 1033
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L446||:    
	.dwpsn	file "../utils/ff.c",line 1024,column 3,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |1024| 
        ADD       V7, V7, #1            ; [DPU_3_PIPE] |1024| 
        CMP       A1, V7                ; [DPU_3_PIPE] |1024| 
        BHI       ||$C$L447||           ; [DPU_3_PIPE] |1024| 
        ; BRANCHCC OCCURS {||$C$L447||}  ; [] |1024| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1026,column 4,is_stmt,isa 1
        CMP       V3, #2                ; [DPU_3_PIPE] |1026| 
        BCC       ||$C$L455||           ; [DPU_3_PIPE] |1026| 
        ; BRANCHCC OCCURS {||$C$L455||}  ; [] |1026| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1025,column 4,is_stmt,isa 1
        MOV       V7, #2                ; [DPU_3_PIPE] |1025| 
;* --------------------------------------------------------------------------*
||$C$L447||:    
	.dwpsn	file "../utils/ff.c",line 1028,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1028| 
        MOV       A2, V7                ; [DPU_3_PIPE] |1028| 
$C$DW$685	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$685, DW_AT_low_pc(0x00)
	.dwattr $C$DW$685, DW_AT_name("get_fat")
	.dwattr $C$DW$685, DW_AT_TI_call
        BL        get_fat               ; [DPU_3_PIPE] |1028| 
        ; CALL OCCURS {get_fat }         ; [] |1028| 
        CBNZ      A1, ||$C$L451||       ; [] 
        ; BRANCHCC OCCURS {||$C$L451||}  ; [] |1028| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1035,column 2,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1035| 
        MOV       A2, V7                ; [DPU_3_PIPE] |1035| 
        MVN       A3, #-268435456       ; [DPU_3_PIPE] |1035| 
$C$DW$686	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$686, DW_AT_low_pc(0x00)
	.dwattr $C$DW$686, DW_AT_name("put_fat")
	.dwattr $C$DW$686, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1035| 
        ; CALL OCCURS {put_fat }         ; [] |1035| 
        CBNZ      A1, ||$C$L449||       ; [] 
        ; BRANCHCC OCCURS {||$C$L449||}  ; [] |1035| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1036,column 2,is_stmt,isa 1
        CMP       V6, #0                ; [DPU_3_PIPE] |1036| 
        BEQ       ||$C$L448||           ; [DPU_3_PIPE] |1036| 
        ; BRANCHCC OCCURS {||$C$L448||}  ; [] |1036| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1037,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |1037| 
        MOV       A2, V6                ; [DPU_3_PIPE] |1037| 
        MOV       A3, V7                ; [DPU_3_PIPE] |1037| 
$C$DW$687	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$687, DW_AT_low_pc(0x00)
	.dwattr $C$DW$687, DW_AT_name("put_fat")
	.dwattr $C$DW$687, DW_AT_TI_call
        BL        put_fat               ; [DPU_3_PIPE] |1037| 
        ; CALL OCCURS {put_fat }         ; [] |1037| 
;* --------------------------------------------------------------------------*
||$C$L448||:    
        CBNZ      A1, ||$C$L449||       ; [] 
	.dwpsn	file "../utils/ff.c",line 1039,column 2,is_stmt,isa 1
        ; BRANCHCC OCCURS {||$C$L449||}  ; [] |1039| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1040,column 3,is_stmt,isa 1
        STR       V7, [V5, #12]         ; [DPU_3_PIPE] |1040| 
	.dwpsn	file "../utils/ff.c",line 1041,column 3,is_stmt,isa 1
        LDR       A1, [V5, #16]         ; [DPU_3_PIPE] |1041| 
        CMP       A1, #-1               ; [DPU_3_PIPE] |1041| 
        BEQ       ||$C$L450||           ; [DPU_3_PIPE] |1041| 
        ; BRANCHCC OCCURS {||$C$L450||}  ; [] |1041| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        STRB      V1, [V5, #5]          ; [DPU_3_PIPE] |1043| 
	.dwpsn	file "../utils/ff.c",line 1042,column 4,is_stmt,isa 1
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |1042| 
        STR       A1, [V5, #16]         ; [DPU_3_PIPE] |1042| 
	.dwpsn	file "../utils/ff.c",line 1043,column 4,is_stmt,isa 1
        B         ||$C$L450||           ; [DPU_3_PIPE] |1043| 
        ; BRANCH OCCURS {||$C$L450||}    ; [] |1043| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L449||:    
	.dwpsn	file "../utils/ff.c",line 1046,column 3,is_stmt,isa 1
        CMP       A1, #1                ; [DPU_3_PIPE] |1046| 
        ITE       EQ                    ; [DPU_3_PIPE] 
        MOVEQ     V7, #-1               ; [DPU_3_PIPE] |1046| 
        MOVNE     V7, V1                ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L450||:    
	.dwpsn	file "../utils/ff.c",line 1049,column 2,is_stmt,isa 1
        MOVS      A1, V7                ; [DPU_3_PIPE] |1049| 
        BNE       ||$C$L452||           ; [DPU_3_PIPE] |1049| 
        ; BRANCHCC OCCURS {||$C$L452||}  ; [] |1049| 
;* --------------------------------------------------------------------------*
        B         ||$C$L456||           ; [DPU_3_PIPE] |1049| 
        ; BRANCH OCCURS {||$C$L456||}    ; [] |1049| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L451||:    
	.dwpsn	file "../utils/ff.c",line 1030,column 3,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L452||           ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L452||}  ; [] |1030| 
;* --------------------------------------------------------------------------*
        CMP       A1, #1                ; [DPU_3_PIPE] |1030| 
        BEQ       ||$C$L452||           ; [DPU_3_PIPE] |1030| 
        ; BRANCHCC OCCURS {||$C$L452||}  ; [] |1030| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 1032,column 3,is_stmt,isa 1
        CMP       V3, V7                ; [DPU_3_PIPE] |1032| 
        BNE       ||$C$L446||           ; [DPU_3_PIPE] |1032| 
        ; BRANCHCC OCCURS {||$C$L446||}  ; [] |1032| 
;* --------------------------------------------------------------------------*
        B         ||$C$L455||           ; [DPU_3_PIPE] |1032| 
        ; BRANCH OCCURS {||$C$L455||}    ; [] |1032| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L452||:    
	.dwpsn	file "../utils/ff.c",line 2989,column 6,is_stmt,isa 1
        CMP       A1, #-1               ; [DPU_3_PIPE] |2989| 
        BEQ       ||$C$L462||           ; [DPU_3_PIPE] |2989| 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |2989| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 2990,column 6,is_stmt,isa 1
        CMP       A1, #2                ; [DPU_3_PIPE] |2990| 
        BCC       ||$C$L458||           ; [DPU_3_PIPE] |2990| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |2990| 
;* --------------------------------------------------------------------------*
||$C$L453||:    
        LDR       V5, [V4, #0]          ; [DPU_3_PIPE] |2990| 
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] |2990| 
        CMP       A2, A1                ; [DPU_3_PIPE] |2990| 
        BLS       ||$C$L458||           ; [DPU_3_PIPE] |2990| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |2990| 
;* --------------------------------------------------------------------------*
||$C$L454||:    
	.dwpsn	file "../utils/ff.c",line 2993,column 6,is_stmt,isa 1
        SUB       V2, V2, V8            ; [DPU_3_PIPE] |2993| 
	.dwpsn	file "../utils/ff.c",line 2992,column 6,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2992| 
	.dwpsn	file "../utils/ff.c",line 2991,column 6,is_stmt,isa 1
        STR       A1, [V4, #20]         ; [DPU_3_PIPE] |2991| 
	.dwpsn	file "../utils/ff.c",line 2979,column 12,is_stmt,isa 1
        CMP       V8, V2                ; [DPU_3_PIPE] |2979| 
	.dwpsn	file "../utils/ff.c",line 2992,column 6,is_stmt,isa 1
        ADD       A2, V8, A2            ; [DPU_3_PIPE] |2992| 
        STR       A2, [V4, #8]          ; [DPU_3_PIPE] |2992| 
	.dwpsn	file "../utils/ff.c",line 2979,column 12,is_stmt,isa 1
        BCC       ||$C$L433||           ; [DPU_3_PIPE] |2979| 
        ; BRANCHCC OCCURS {||$C$L433||}  ; [] |2979| 
;* --------------------------------------------------------------------------*
        B         ||$C$L457||           ; [DPU_3_PIPE] |2979| 
        ; BRANCH OCCURS {||$C$L457||}    ; [] |2979| 
;* --------------------------------------------------------------------------*
||$C$L455||:    
	.dwpsn	file "../utils/ff.c",line 2958,column 3,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2958| 
;* --------------------------------------------------------------------------*
||$C$L456||:    
	.dwpsn	file "../utils/ff.c",line 2984,column 8,is_stmt,isa 1
        MOV       V2, V8                ; [DPU_3_PIPE] |2984| 
;* --------------------------------------------------------------------------*
||$C$L457||:    
	.dwpsn	file "../utils/ff.c",line 2995,column 5,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |2995| 
	.dwpsn	file "../utils/ff.c",line 2996,column 5,is_stmt,isa 1
        MOV       A3, #511              ; [DPU_3_PIPE] |2996| 
        TST       A3, V2                ; [DPU_3_PIPE] |2996| 
	.dwpsn	file "../utils/ff.c",line 2995,column 5,is_stmt,isa 1
        ADD       A2, V2, A2            ; [DPU_3_PIPE] |2995| 
        STR       A2, [V4, #8]          ; [DPU_3_PIPE] |2995| 
	.dwpsn	file "../utils/ff.c",line 2996,column 5,is_stmt,isa 1
        BEQ       ||$C$L460||           ; [DPU_3_PIPE] |2996| 
        ; BRANCHCC OCCURS {||$C$L460||}  ; [] |2996| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 830,column 2,is_stmt,isa 1
        LDR       A3, [V4, #0]          ; [DPU_3_PIPE] |830| 
        LDR       A2, [A3, #24]         ; [DPU_3_PIPE] |830| 
        SUBS      A1, A1, #2            ; [DPU_3_PIPE] |830| 
        SUBS      A2, A2, #2            ; [DPU_3_PIPE] |830| 
        CMP       A2, A1                ; [DPU_3_PIPE] |830| 
        BLS       ||$C$L458||           ; [DPU_3_PIPE] |830| 
        ; BRANCHCC OCCURS {||$C$L458||}  ; [] |830| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 831,column 2,is_stmt,isa 1
        LDRB      A2, [A3, #2]          ; [DPU_3_PIPE] |831| 
        LDR       A3, [A3, #44]         ; [DPU_3_PIPE] |831| 
        MLA       A1, A1, A2, A3        ; [DPU_3_PIPE] |831| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |831| 
        CBNZ      A1, ||$C$L459||       ; [] 
        ; BRANCHCC OCCURS {||$C$L459||}  ; [] |831| 
;* --------------------------------------------------------------------------*
||$C$L458||:    
	.dwpsn	file "../utils/ff.c",line 2998,column 18,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2998| 
        MOVS      A1, #2                ; [DPU_3_PIPE] |2998| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |2998| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |2998| 
        B         ||$C$L466||           ; [DPU_3_PIPE] |2998| 
        ; BRANCH OCCURS {||$C$L466||}    ; [] |2998| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L459||:    
	.dwpsn	file "../utils/ff.c",line 2999,column 6,is_stmt,isa 1
        ADD       A1, A1, V2, LSR #9    ; [DPU_3_PIPE] |2999| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |2999| 
;* --------------------------------------------------------------------------*
||$C$L460||:    
	.dwpsn	file "../utils/ff.c",line 3003,column 3,is_stmt,isa 1
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] |3003| 
        MOV       A1, #511              ; [DPU_3_PIPE] |3003| 
        TST       A1, A2                ; [DPU_3_PIPE] |3003| 
        BEQ       ||$C$L464||           ; [DPU_3_PIPE] |3003| 
        ; BRANCHCC OCCURS {||$C$L464||}  ; [] |3003| 
;* --------------------------------------------------------------------------*
        LDR       A3, [V4, #24]         ; [DPU_3_PIPE] |3003| 
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3003| 
        CMP       A3, A1                ; [DPU_3_PIPE] |3003| 
        BEQ       ||$C$L464||           ; [DPU_3_PIPE] |3003| 
        ; BRANCHCC OCCURS {||$C$L464||}  ; [] |3003| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3006,column 4,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3006| 
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] 
        LSRS      A2, A2, #7            ; [DPU_3_PIPE] |3006| 
        ADD       A1, A1, #1            ; [DPU_3_PIPE] 
        BCC       ||$C$L461||           ; [DPU_3_PIPE] |3006| 
        ; BRANCHCC OCCURS {||$C$L461||}  ; [] |3006| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3007,column 5,is_stmt,isa 1
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |3007| 
        ADD       A2, V4, #36           ; [DPU_3_PIPE] |3007| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |3007| 
$C$DW$688	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$688, DW_AT_low_pc(0x00)
	.dwattr $C$DW$688, DW_AT_name("disk_write")
	.dwattr $C$DW$688, DW_AT_TI_call
        BL        disk_write            ; [DPU_3_PIPE] |3007| 
        ; CALL OCCURS {disk_write }      ; [] |3007| 
        CBNZ      A1, ||$C$L462||       ; [] 
        ; BRANCHCC OCCURS {||$C$L462||}  ; [] |3007| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3009,column 5,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3009| 
        LDR       A1, [V4, #0]          ; [DPU_3_PIPE] 
        AND       A2, A2, #191          ; [DPU_3_PIPE] |3009| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3009| 
;* --------------------------------------------------------------------------*
||$C$L461||:    
	.dwpsn	file "../utils/ff.c",line 3012,column 4,is_stmt,isa 1
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |3012| 
        LDR       A3, [SP, #4]          ; [DPU_3_PIPE] |3012| 
        ADD       A2, V4, #36           ; [DPU_3_PIPE] |3012| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |3012| 
$C$DW$689	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$689, DW_AT_low_pc(0x00)
	.dwattr $C$DW$689, DW_AT_name("disk_read")
	.dwattr $C$DW$689, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |3012| 
        ; CALL OCCURS {disk_read }       ; [] |3012| 
        CBZ       A1, ||$C$L463||       ; [] 
        ; BRANCHCC OCCURS {||$C$L463||}  ; [] |3012| 
;* --------------------------------------------------------------------------*
||$C$L462||:    
	.dwpsn	file "../utils/ff.c",line 3013,column 5,is_stmt,isa 1
        LDRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3013| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |3013| 
        ORR       A2, A2, #128          ; [DPU_3_PIPE] |3013| 
        STRB      A2, [V4, #6]          ; [DPU_3_PIPE] |3013| 
        B         ||$C$L466||           ; [DPU_3_PIPE] |3013| 
        ; BRANCH OCCURS {||$C$L466||}    ; [] |3013| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L463||:    
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] 
        LDR       A2, [V4, #8]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3015,column 4,is_stmt,isa 1
        STR       A1, [V4, #24]         ; [DPU_3_PIPE] |3015| 
;* --------------------------------------------------------------------------*
||$C$L464||:    
	.dwpsn	file "../utils/ff.c",line 3018,column 3,is_stmt,isa 1
        LDR       A1, [V4, #12]         ; [DPU_3_PIPE] |3018| 
        CMP       A1, A2                ; [DPU_3_PIPE] |3018| 
        BCS       ||$C$L465||           ; [DPU_3_PIPE] |3018| 
        ; BRANCHCC OCCURS {||$C$L465||}  ; [] |3018| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3020,column 4,is_stmt,isa 1
        LDRB      A1, [V4, #6]          ; [DPU_3_PIPE] |3020| 
	.dwpsn	file "../utils/ff.c",line 3019,column 4,is_stmt,isa 1
        STR       A2, [V4, #12]         ; [DPU_3_PIPE] |3019| 
	.dwpsn	file "../utils/ff.c",line 3020,column 4,is_stmt,isa 1
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |3020| 
        STRB      A1, [V4, #6]          ; [DPU_3_PIPE] |3020| 
;* --------------------------------------------------------------------------*
||$C$L465||:    
	.dwpsn	file "../utils/ff.c",line 2958,column 3,is_stmt,isa 1
        MOVS      A1, #0                ; [DPU_3_PIPE] |2958| 
;* --------------------------------------------------------------------------*
||$C$L466||:    
        ADD       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$690	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$690, DW_AT_low_pc(0x00)
	.dwattr $C$DW$690, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$651, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$651, DW_AT_TI_end_line(0xbd2)
	.dwattr $C$DW$651, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$651

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_getfree
	.thumb
	.global	f_getfree

$C$DW$691	.dwtag  DW_TAG_subprogram, DW_AT_name("f_getfree")
	.dwattr $C$DW$691, DW_AT_low_pc(f_getfree)
	.dwattr $C$DW$691, DW_AT_high_pc(0x00)
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("f_getfree")
	.dwattr $C$DW$691, DW_AT_external
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$691, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$691, DW_AT_TI_begin_line(0xc55)
	.dwattr $C$DW$691, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$691, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$691, DW_AT_decl_line(0xc55)
	.dwattr $C$DW$691, DW_AT_decl_column(0x09)
	.dwattr $C$DW$691, DW_AT_TI_max_frame_size(0x30)
	.dwpsn	file "../utils/ff.c",line 3162,column 1,is_stmt,address f_getfree,isa 1

	.dwfde $C$DW$CIE, f_getfree
$C$DW$692	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$692, DW_AT_location[DW_OP_reg0]
$C$DW$693	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nclst")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("nclst")
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$693, DW_AT_location[DW_OP_reg1]
$C$DW$694	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fatfs")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("fatfs")
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$694, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: f_getfree                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V3,V4,V5,V6,V7,V8,V9,SP,LR,SR,D0, *
;*                           D0_hi,D1,D1_hi,D2,D2_hi,D3,D3_hi,D4,D4_hi,D5,   *
;*                           D5_hi,D6,D6_hi,D7,D7_hi,FPEXC,FPSCR             *
;*   Local Frame Size  : 0 Args + 8 Auto + 36 Save = 44 byte                 *
;*****************************************************************************
f_getfree:
;* --------------------------------------------------------------------------*
;* V7    assigned to $O$C25
;* A1    assigned to $O$C26
;* V2    assigned to $O$C27
;* V7    assigned to $O$C28
;* A1    assigned to $O$C29
;* A1    assigned to $O$C30
;* V2    assigned to $O$C31
;* V6    assigned to clst
$C$DW$695	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$695, DW_AT_location[DW_OP_reg9]
;* V2    assigned to clst
$C$DW$696	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg5]
;* A1    assigned to stat
$C$DW$697	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("stat")
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$697, DW_AT_location[DW_OP_reg0]
;* V7    assigned to i
$C$DW$698	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$698, DW_AT_location[DW_OP_reg10]
;* LR    assigned to p
$C$DW$699	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("p")
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$699, DW_AT_location[DW_OP_reg14]
$C$DW$700	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$700, DW_AT_location[DW_OP_breg13 0]
$C$DW$701	.dwtag  DW_TAG_variable, DW_AT_name("nclst")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("nclst")
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$701, DW_AT_location[DW_OP_breg13 4]
;* V2    assigned to fatfs
$C$DW$702	.dwtag  DW_TAG_variable, DW_AT_name("fatfs")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("fatfs")
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$702, DW_AT_location[DW_OP_reg5]
;* V4    assigned to res
$C$DW$703	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$703, DW_AT_location[DW_OP_reg7]
;* V5    assigned to fs
$C$DW$704	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$704, DW_AT_location[DW_OP_reg8]
;* V8    assigned to n
$C$DW$705	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$705, DW_AT_location[DW_OP_reg11]
;* V6    assigned to sect
$C$DW$706	.dwtag  DW_TAG_variable, DW_AT_name("sect")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$706, DW_AT_location[DW_OP_reg9]
;* V3    assigned to fat
$C$DW$707	.dwtag  DW_TAG_variable, DW_AT_name("fat")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("fat")
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$707, DW_AT_location[DW_OP_reg6]
;* V1    assigned to sector
$C$DW$708	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg4]
;* V1    assigned to bc
$C$DW$709	.dwtag  DW_TAG_variable, DW_AT_name("bc")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("bc")
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg4]
;* V2    assigned to wc
$C$DW$710	.dwtag  DW_TAG_variable, DW_AT_name("wc")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("wc")
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$710, DW_AT_location[DW_OP_reg5]
;* V6    assigned to clst
$C$DW$711	.dwtag  DW_TAG_variable, DW_AT_name("clst")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("clst")
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$711, DW_AT_location[DW_OP_reg9]
;* V5    assigned to fs
$C$DW$712	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$712, DW_AT_location[DW_OP_reg8]
;* V1    assigned to sector
$C$DW$713	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$713, DW_AT_location[DW_OP_reg4]
;* V1    assigned to sector
$C$DW$714	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$714, DW_AT_location[DW_OP_reg4]
;* V2    assigned to sector
$C$DW$715	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("sector")
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$715, DW_AT_location[DW_OP_reg5]
;* A2    assigned to $O$U92
;* A1    assigned to $O$U137
;* V7    assigned to $O$U132
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, V3, V4, V5, V6, V7, V8, LR} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 11, -8
	.dwcfi	save_reg_to_mem, 10, -12
	.dwcfi	save_reg_to_mem, 9, -16
	.dwcfi	save_reg_to_mem, 8, -20
	.dwcfi	save_reg_to_mem, 7, -24
	.dwcfi	save_reg_to_mem, 6, -28
	.dwcfi	save_reg_to_mem, 5, -32
	.dwcfi	save_reg_to_mem, 4, -36
        MOV       V2, A3                ; [DPU_3_PIPE] |3162| 
        MOV       V1, A2                ; [DPU_3_PIPE] |3162| 
        SUB       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 48
	.dwpsn	file "../utils/ff.c",line 3171,column 2,is_stmt,isa 1
        MOVS      A3, #0                ; [DPU_3_PIPE] |3171| 
        MOV       A2, V2                ; [DPU_3_PIPE] |3171| 
	.dwpsn	file "../utils/ff.c",line 3162,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3162| 
	.dwpsn	file "../utils/ff.c",line 3171,column 2,is_stmt,isa 1
        MOV       A1, SP                ; [DPU_3_PIPE] |3171| 
$C$DW$716	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$716, DW_AT_low_pc(0x00)
	.dwattr $C$DW$716, DW_AT_name("chk_mounted")
	.dwattr $C$DW$716, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3171| 
        ; CALL OCCURS {chk_mounted }     ; [] |3171| 
	.dwpsn	file "../utils/ff.c",line 3173,column 2,is_stmt,isa 1
        MOVS      V4, A1                ; [DPU_3_PIPE] |3173| 
	.dwpsn	file "../utils/ff.c",line 3172,column 2,is_stmt,isa 1
        LDR       V5, [V2, #0]          ; [DPU_3_PIPE] |3172| 
	.dwpsn	file "../utils/ff.c",line 3162,column 1,is_stmt,isa 1
        STR       V1, [SP, #4]          ; [DPU_3_PIPE] |3162| 
	.dwpsn	file "../utils/ff.c",line 3173,column 2,is_stmt,isa 1
        BNE       ||$C$L486||           ; [DPU_3_PIPE] |3173| 
        ; BRANCHCC OCCURS {||$C$L486||}  ; [] |3173| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3175,column 3,is_stmt,isa 1
        LDR       V2, [V5, #24]         ; [DPU_3_PIPE] |3175| 
        LDR       A2, [V5, #16]         ; [DPU_3_PIPE] |3175| 
        SUBS      A1, V2, #2            ; [DPU_3_PIPE] |3175| 
        CMP       A1, A2                ; [DPU_3_PIPE] |3175| 
        BCS       ||$C$L485||           ; [DPU_3_PIPE] |3175| 
        ; BRANCHCC OCCURS {||$C$L485||}  ; [] |3175| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3179,column 4,is_stmt,isa 1
        LDRB      V3, [V5, #0]          ; [DPU_3_PIPE] |3179| 
	.dwpsn	file "../utils/ff.c",line 3180,column 4,is_stmt,isa 1
        MOV       V8, #0                ; [DPU_3_PIPE] |3180| 
	.dwpsn	file "../utils/ff.c",line 3181,column 4,is_stmt,isa 1
        CMP       V3, #1                ; [DPU_3_PIPE] |3181| 
        BEQ       ||$C$L472||           ; [DPU_3_PIPE] |3181| 
        ; BRANCHCC OCCURS {||$C$L472||}  ; [] |3181| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3191,column 5,is_stmt,isa 1
        LDR       V6, [V5, #36]         ; [DPU_3_PIPE] |3191| 
        MOV       V4, V8                ; [DPU_3_PIPE] |3191| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L467||
;*
;*   Loop source line                : 3193
;*   Loop closing brace source line  : 3207
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L467||:    
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 3195,column 7,is_stmt,isa 1
        MOV       V1, V6                ; [DPU_3_PIPE] |3195| 
        ADD       V6, V6, #1            ; [DPU_3_PIPE] |3195| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V1                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L468||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L468||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$717	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$717, DW_AT_low_pc(0x00)
	.dwattr $C$DW$717, DW_AT_name("sync_window")
	.dwattr $C$DW$717, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V1                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$718	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$718, DW_AT_low_pc(0x00)
	.dwattr $C$DW$718, DW_AT_name("disk_read")
	.dwattr $C$DW$718, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V1, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L468||:    
	.dwpsn	file "../utils/ff.c",line 3200,column 6,is_stmt,isa 1
        CMP       V3, #2                ; [DPU_3_PIPE] |3200| 
	.dwpsn	file "../utils/ff.c",line 3197,column 7,is_stmt,isa 1
        ADD       LR, V5, #52           ; [DPU_3_PIPE] |3197| 
	.dwpsn	file "../utils/ff.c",line 3198,column 7,is_stmt,isa 1
        MOV       V7, #512              ; [DPU_3_PIPE] |3198| 
	.dwpsn	file "../utils/ff.c",line 3200,column 6,is_stmt,isa 1
        BNE       ||$C$L471||           ; [DPU_3_PIPE] |3200| 
        ; BRANCHCC OCCURS {||$C$L471||}  ; [] |3200| 
;* --------------------------------------------------------------------------*
||$C$L469||:    
	.dwpsn	file "../utils/ff.c",line 3201,column 7,is_stmt,isa 1
        LDRB      A1, [LR, #1]          ; [DPU_3_PIPE] |3201| 
        LDRB      V1, [LR, #0]          ; [DPU_3_PIPE] |3201| 
        ORRS      V1, V1, A1, LSL #8    ; [DPU_3_PIPE] |3201| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3201,column 28,is_stmt,isa 1
        ADDEQ     V8, V8, #1            ; [DPU_3_PIPE] |3201| 
	.dwpsn	file "../utils/ff.c",line 3202,column 15,is_stmt,isa 1
        SUB       V7, V7, #2            ; [DPU_3_PIPE] |3202| 
	.dwpsn	file "../utils/ff.c",line 3202,column 7,is_stmt,isa 1
        ADD       LR, LR, #2            ; [DPU_3_PIPE] |3202| 
;* --------------------------------------------------------------------------*
||$C$L470||:    
	.dwpsn	file "../utils/ff.c",line 3193,column 5,is_stmt,isa 1
        SUBS      V2, V2, #1            ; [DPU_3_PIPE] |3193| 
        BEQ       ||$C$L484||           ; [DPU_3_PIPE] |3193| 
        ; BRANCHCC OCCURS {||$C$L484||}  ; [] |3193| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3194,column 6,is_stmt,isa 1
        CMP       V7, #0                ; [DPU_3_PIPE] |3194| 
        BEQ       ||$C$L467||           ; [DPU_3_PIPE] |3194| 
        ; BRANCHCC OCCURS {||$C$L467||}  ; [] |3194| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3200,column 6,is_stmt,isa 1
        CMP       V3, #2                ; [DPU_3_PIPE] |3200| 
        BEQ       ||$C$L469||           ; [DPU_3_PIPE] |3200| 
        ; BRANCHCC OCCURS {||$C$L469||}  ; [] |3200| 
;* --------------------------------------------------------------------------*
||$C$L471||:    
	.dwpsn	file "../utils/ff.c",line 3204,column 7,is_stmt,isa 1
        LDRB      A3, [LR, #3]          ; [DPU_3_PIPE] |3204| 
        LDRB      A1, [LR, #2]          ; [DPU_3_PIPE] |3204| 
        LDRB      A2, [LR, #1]          ; [DPU_3_PIPE] |3204| 
        LDRB      V1, [LR, #0]          ; [DPU_3_PIPE] |3204| 
        ORR       A1, A1, A3, LSL #8    ; [DPU_3_PIPE] |3204| 
        LSL       V9, A1, #16           ; [DPU_3_PIPE] |3204| 
        ORR       V9, V9, A2, LSL #8    ; [DPU_3_PIPE] |3204| 
        ORR       V1, V1, V9            ; [DPU_3_PIPE] |3204| 
        BICS      V1, V1, #-268435456   ; [DPU_3_PIPE] |3204| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3204,column 44,is_stmt,isa 1
        ADDEQ     V8, V8, #1            ; [DPU_3_PIPE] |3204| 
	.dwpsn	file "../utils/ff.c",line 3205,column 15,is_stmt,isa 1
        SUB       V7, V7, #4            ; [DPU_3_PIPE] |3205| 
	.dwpsn	file "../utils/ff.c",line 3205,column 7,is_stmt,isa 1
        ADD       LR, LR, #4            ; [DPU_3_PIPE] |3205| 
	.dwpsn	file "../utils/ff.c",line 3193,column 5,is_stmt,isa 1
        B         ||$C$L470||           ; [DPU_3_PIPE] |3193| 
        ; BRANCH OCCURS {||$C$L470||}    ; [] |3193| 
;* --------------------------------------------------------------------------*
||$C$L472||:    
	.dwpsn	file "../utils/ff.c",line 3182,column 5,is_stmt,isa 1
        MOV       V6, #2                ; [DPU_3_PIPE] |3182| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L473||
;*
;*   Loop source line                : 3183
;*   Loop closing brace source line  : 3188
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	8
||$C$L473||:    
	.dwpsn	file "../utils/ff.c",line 3184,column 6,is_stmt,isa 1
        CMP       V6, #2                ; [DPU_3_PIPE] |3184| 
        BCC       ||$C$L483||           ; [DPU_3_PIPE] |3184| 
        ; BRANCHCC OCCURS {||$C$L483||}  ; [] |3184| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 851,column 2,is_stmt,isa 1
        LDR       A1, [V5, #24]         ; [DPU_3_PIPE] |851| 
        CMP       A1, V6                ; [DPU_3_PIPE] |851| 
        BLS       ||$C$L483||           ; [DPU_3_PIPE] |851| 
        ; BRANCHCC OCCURS {||$C$L483||}  ; [] |851| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 854,column 2,is_stmt,isa 1
        LDRB      A1, [V5, #0]          ; [DPU_3_PIPE] |854| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L477||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L477||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BEQ       ||$C$L475||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L475||}  ; [] |854| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |854| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |854| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |854| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        LDR       V1, [V5, #36]         ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 869,column 61,is_stmt,isa 1
        ADD       V1, V1, V6, LSR #7    ; [DPU_3_PIPE] |869| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V1                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L474||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L474||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$719	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$719, DW_AT_low_pc(0x00)
	.dwattr $C$DW$719, DW_AT_name("sync_window")
	.dwattr $C$DW$719, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V1                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$720	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$720, DW_AT_low_pc(0x00)
	.dwattr $C$DW$720, DW_AT_name("disk_read")
	.dwattr $C$DW$720, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V1, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L474||:    
	.dwpsn	file "../utils/ff.c",line 871,column 3,is_stmt,isa 1
        LSL       A1, V6, #2            ; [DPU_3_PIPE] |871| 
        AND       A1, A1, #508          ; [DPU_3_PIPE] |871| 
        ADD       A1, V5, A1            ; [DPU_3_PIPE] |871| 
        LDRB      A4, [A1, #55]         ; [DPU_3_PIPE] |871| 
        LDRB      A2, [A1, #54]         ; [DPU_3_PIPE] |871| 
        LDRB      A3, [A1, #53]         ; [DPU_3_PIPE] |871| 
        LDRB      A1, [A1, #52]         ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A4, LSL #8    ; [DPU_3_PIPE] |871| 
        LSLS      A2, A2, #16           ; [DPU_3_PIPE] |871| 
        ORR       A2, A2, A3, LSL #8    ; [DPU_3_PIPE] |871| 
        ORRS      A1, A1, A2            ; [DPU_3_PIPE] |871| 
        BIC       A1, A1, #-268435456   ; [DPU_3_PIPE] |871| 
        CMP       A1, #1                ; [DPU_3_PIPE] |871| 
        BNE       ||$C$L481||           ; [DPU_3_PIPE] |871| 
        ; BRANCHCC OCCURS {||$C$L481||}  ; [] |871| 
;* --------------------------------------------------------------------------*
        B         ||$C$L483||           ; [DPU_3_PIPE] |871| 
        ; BRANCH OCCURS {||$C$L483||}    ; [] |871| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L475||:    
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        LDR       V1, [V5, #36]         ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 864,column 61,is_stmt,isa 1
        ADD       V1, V1, V6, LSR #8    ; [DPU_3_PIPE] |864| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        CMP       A1, V1                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L476||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L476||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$721	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$721, DW_AT_low_pc(0x00)
	.dwattr $C$DW$721, DW_AT_name("sync_window")
	.dwattr $C$DW$721, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V1                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$722	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$722, DW_AT_low_pc(0x00)
	.dwattr $C$DW$722, DW_AT_name("disk_read")
	.dwattr $C$DW$722, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V1, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L476||:    
	.dwpsn	file "../utils/ff.c",line 866,column 3,is_stmt,isa 1
        LSL       A1, V6, #1            ; [DPU_3_PIPE] |866| 
        AND       A1, A1, #510          ; [DPU_3_PIPE] |866| 
        ADD       A1, V5, A1            ; [DPU_3_PIPE] |866| 
        LDRB      A2, [A1, #53]         ; [DPU_3_PIPE] |866| 
        LDRB      A1, [A1, #52]         ; [DPU_3_PIPE] |866| 
        ORR       A1, A1, A2, LSL #8    ; [DPU_3_PIPE] |866| 
        CMP       A1, #1                ; [DPU_3_PIPE] |866| 
        BNE       ||$C$L481||           ; [DPU_3_PIPE] |866| 
        ; BRANCHCC OCCURS {||$C$L481||}  ; [] |866| 
;* --------------------------------------------------------------------------*
        B         ||$C$L483||           ; [DPU_3_PIPE] |866| 
        ; BRANCH OCCURS {||$C$L483||}    ; [] |866| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L477||:    
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LDR       V7, [V5, #36]         ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        LDR       A1, [V5, #48]         ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 856,column 3,is_stmt,isa 1
        ADD       V1, V6, V6, LSR #1    ; [DPU_3_PIPE] |856| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        LSRS      V2, V1, #9            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADD       A2, V2, V7            ; [DPU_3_PIPE] |763| 
        CMP       A1, A2                ; [DPU_3_PIPE] |763| 
	.dwpsn	file "../utils/ff.c",line 857,column 53,is_stmt,isa 1
        ADD       V2, V2, V7            ; [DPU_3_PIPE] |857| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        BEQ       ||$C$L478||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L478||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$723	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$723, DW_AT_low_pc(0x00)
	.dwattr $C$DW$723, DW_AT_name("sync_window")
	.dwattr $C$DW$723, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CMP       A1, #0                ; [DPU_3_PIPE] |765| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |765| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V2                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$724	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$724, DW_AT_low_pc(0x00)
	.dwattr $C$DW$724, DW_AT_name("disk_read")
	.dwattr $C$DW$724, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CMP       A1, #0                ; [DPU_3_PIPE] |768| 
        BNE       ||$C$L482||           ; [DPU_3_PIPE] |768| 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        MOV       A1, V2                ; [DPU_3_PIPE] |770| 
        STR       A1, [V5, #48]         ; [DPU_3_PIPE] |770| 
        LDR       V7, [V5, #36]         ; [DPU_3_PIPE] 
;* --------------------------------------------------------------------------*
||$C$L478||:    
	.dwpsn	file "../utils/ff.c",line 858,column 3,is_stmt,isa 1
        UBFX      A2, V1, #0, #9        ; [DPU_3_PIPE] |858| 
        ADD       A2, V5, A2            ; [DPU_3_PIPE] |858| 
        LDRB      V2, [A2, #52]         ; [DPU_3_PIPE] |858| 
	.dwpsn	file "../utils/ff.c",line 763,column 2,is_stmt,isa 1
        ADDS      V1, V1, #1            ; [DPU_3_PIPE] |763| 
        ADD       V7, V7, V1, LSR #9    ; [DPU_3_PIPE] |763| 
        CMP       A1, V7                ; [DPU_3_PIPE] |763| 
        BEQ       ||$C$L479||           ; [DPU_3_PIPE] |763| 
        ; BRANCHCC OCCURS {||$C$L479||}  ; [] |763| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 765,column 3,is_stmt,isa 1
        MOV       A1, V5                ; [DPU_3_PIPE] |765| 
$C$DW$725	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$725, DW_AT_low_pc(0x00)
	.dwattr $C$DW$725, DW_AT_name("sync_window")
	.dwattr $C$DW$725, DW_AT_TI_call
        BL        sync_window           ; [DPU_3_PIPE] |765| 
        ; CALL OCCURS {sync_window }     ; [] |765| 
        CBNZ      A1, ||$C$L482||       ; [] 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |765| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 768,column 3,is_stmt,isa 1
        LDRB      A1, [V5, #1]          ; [DPU_3_PIPE] |768| 
        ADD       A2, V5, #52           ; [DPU_3_PIPE] |768| 
        MOV       A3, V7                ; [DPU_3_PIPE] |768| 
        MOVS      A4, #1                ; [DPU_3_PIPE] |768| 
$C$DW$726	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$726, DW_AT_low_pc(0x00)
	.dwattr $C$DW$726, DW_AT_name("disk_read")
	.dwattr $C$DW$726, DW_AT_TI_call
        BL        disk_read             ; [DPU_3_PIPE] |768| 
        ; CALL OCCURS {disk_read }       ; [] |768| 
        CBNZ      A1, ||$C$L482||       ; [] 
        ; BRANCHCC OCCURS {||$C$L482||}  ; [] |768| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 770,column 3,is_stmt,isa 1
        STR       V7, [V5, #48]         ; [DPU_3_PIPE] |770| 
;* --------------------------------------------------------------------------*
||$C$L479||:    
	.dwpsn	file "../utils/ff.c",line 860,column 3,is_stmt,isa 1
        UBFX      A1, V1, #0, #9        ; [DPU_3_PIPE] |860| 
        ADD       A1, V5, A1            ; [DPU_3_PIPE] |860| 
        LDRB      A1, [A1, #52]         ; [DPU_3_PIPE] |860| 
        ORR       V2, V2, A1, LSL #8    ; [DPU_3_PIPE] |860| 
	.dwpsn	file "../utils/ff.c",line 861,column 3,is_stmt,isa 1
        LSRS      A1, V6, #1            ; [DPU_3_PIPE] |861| 
        BCS       ||$C$L480||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L480||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        UBFX      A1, V2, #0, #12       ; [DPU_3_PIPE] |861| 
        CMP       A1, #1                ; [DPU_3_PIPE] |861| 
        BNE       ||$C$L481||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L481||}  ; [] |861| 
;* --------------------------------------------------------------------------*
        B         ||$C$L483||           ; [DPU_3_PIPE] |861| 
        ; BRANCH OCCURS {||$C$L483||}    ; [] |861| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L480||:    
        LSRS      A1, V2, #4            ; [DPU_3_PIPE] |861| 
        CMP       A1, #1                ; [DPU_3_PIPE] |861| 
        BEQ       ||$C$L483||           ; [DPU_3_PIPE] |861| 
        ; BRANCHCC OCCURS {||$C$L483||}  ; [] |861| 
;* --------------------------------------------------------------------------*
||$C$L481||:    
        LDR       A2, [V5, #24]         ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3187,column 6,is_stmt,isa 1
        CMP       A1, #0                ; [DPU_3_PIPE] |3187| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3187,column 21,is_stmt,isa 1
        ADDEQ     V8, V8, #1            ; [DPU_3_PIPE] |3187| 
	.dwpsn	file "../utils/ff.c",line 3188,column 14,is_stmt,isa 1
        ADD       V6, V6, #1            ; [DPU_3_PIPE] |3188| 
        CMP       V6, A2                ; [DPU_3_PIPE] |3188| 
        BCC       ||$C$L473||           ; [DPU_3_PIPE] |3188| 
        ; BRANCHCC OCCURS {||$C$L473||}  ; [] |3188| 
;* --------------------------------------------------------------------------*
        B         ||$C$L484||           ; [DPU_3_PIPE] |3188| 
        ; BRANCH OCCURS {||$C$L484||}    ; [] |3188| 
;* --------------------------------------------------------------------------*
||$C$L482||:    
	.dwpsn	file "../utils/ff.c",line 3185,column 32,is_stmt,isa 1
        MOVS      V4, #1                ; [DPU_3_PIPE] |3185| 
	.dwpsn	file "../utils/ff.c",line 3185,column 51,is_stmt,isa 1
        B         ||$C$L484||           ; [DPU_3_PIPE] |3185| 
        ; BRANCH OCCURS {||$C$L484||}    ; [] |3185| 
;* --------------------------------------------------------------------------*
||$C$L483||:    
	.dwpsn	file "../utils/ff.c",line 3186,column 23,is_stmt,isa 1
        MOVS      V4, #2                ; [DPU_3_PIPE] |3186| 
;* --------------------------------------------------------------------------*
||$C$L484||:    
	.dwpsn	file "../utils/ff.c",line 3209,column 4,is_stmt,isa 1
        STR       V8, [V5, #16]         ; [DPU_3_PIPE] |3209| 
	.dwpsn	file "../utils/ff.c",line 3210,column 4,is_stmt,isa 1
        CMP       V3, #3                ; [DPU_3_PIPE] |3210| 
        ITT       EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3210,column 25,is_stmt,isa 1
        MOVEQ     A1, #1                ; [DPU_3_PIPE] |3210| 
        STRBEQ    A1, [V5, #5]          ; [DPU_3_PIPE] |3210| 
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3211,column 4,is_stmt,isa 1
        STR       V8, [A1, #0]          ; [DPU_3_PIPE] |3211| 
	.dwpsn	file "../utils/ff.c",line 3214,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3214| 
        B         ||$C$L487||           ; [DPU_3_PIPE] |3214| 
        ; BRANCH OCCURS {||$C$L487||}    ; [] |3214| 
;* --------------------------------------------------------------------------*
	.align	8
||$C$L485||:    
	.dwpsn	file "../utils/ff.c",line 3176,column 4,is_stmt,isa 1
        LDR       A2, [V5, #16]         ; [DPU_3_PIPE] |3176| 
        MOV       A1, V1                ; [DPU_3_PIPE] |3176| 
        STR       A2, [A1, #0]          ; [DPU_3_PIPE] |3176| 
;* --------------------------------------------------------------------------*
||$C$L486||:    
	.dwpsn	file "../utils/ff.c",line 3214,column 2,is_stmt,isa 1
        MOV       A1, V4                ; [DPU_3_PIPE] |3214| 
;* --------------------------------------------------------------------------*
||$C$L487||:    
        ADD       SP, SP, #12           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 36
$C$DW$727	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$727, DW_AT_low_pc(0x00)
	.dwattr $C$DW$727, DW_AT_TI_return
        POP       {V1, V2, V3, V4, V5, V6, V7, V8, PC} ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$691, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$691, DW_AT_TI_end_line(0xc8f)
	.dwattr $C$DW$691, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$691

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_close
	.thumb
	.global	f_close

$C$DW$728	.dwtag  DW_TAG_subprogram, DW_AT_name("f_close")
	.dwattr $C$DW$728, DW_AT_low_pc(f_close)
	.dwattr $C$DW$728, DW_AT_high_pc(0x00)
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("f_close")
	.dwattr $C$DW$728, DW_AT_external
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$728, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$728, DW_AT_TI_begin_line(0xa94)
	.dwattr $C$DW$728, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$728, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$728, DW_AT_decl_line(0xa94)
	.dwattr $C$DW$728, DW_AT_decl_column(0x09)
	.dwattr $C$DW$728, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../utils/ff.c",line 2711,column 1,is_stmt,address f_close,isa 1

	.dwfde $C$DW$CIE, f_close
$C$DW$729	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$729, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: f_close                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
f_close:
;* --------------------------------------------------------------------------*
;* A1    assigned to res
$C$DW$730	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$730, DW_AT_location[DW_OP_reg0]
;* V1    assigned to fp
$C$DW$731	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("fp")
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$731, DW_AT_location[DW_OP_reg4]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
        MOV       V1, A1                ; [DPU_3_PIPE] |2711| 
	.dwpsn	file "../utils/ff.c",line 2725,column 2,is_stmt,isa 1
$C$DW$732	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$732, DW_AT_low_pc(0x00)
	.dwattr $C$DW$732, DW_AT_name("f_sync")
	.dwattr $C$DW$732, DW_AT_TI_call
        BL        f_sync                ; [DPU_3_PIPE] |2725| 
        ; CALL OCCURS {f_sync }          ; [] |2725| 
        CMP       A1, #0                ; [DPU_3_PIPE] |2725| 
        ITT       EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 2740,column 20,is_stmt,isa 1
        MOVEQ     A2, #0                ; [DPU_3_PIPE] |2740| 
        STREQ     A2, [V1, #0]          ; [DPU_3_PIPE] |2740| 
$C$DW$733	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$733, DW_AT_low_pc(0x00)
	.dwattr $C$DW$733, DW_AT_TI_return
        POP       {V1, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$728, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$728, DW_AT_TI_end_line(0xab7)
	.dwattr $C$DW$728, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$728

	.sect	".text"
	.align	8
	.clink
	.thumbfunc f_chmod
	.thumb
	.global	f_chmod

$C$DW$734	.dwtag  DW_TAG_subprogram, DW_AT_name("f_chmod")
	.dwattr $C$DW$734, DW_AT_low_pc(f_chmod)
	.dwattr $C$DW$734, DW_AT_high_pc(0x00)
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("f_chmod")
	.dwattr $C$DW$734, DW_AT_external
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$734, DW_AT_TI_begin_file("../utils/ff.c")
	.dwattr $C$DW$734, DW_AT_TI_begin_line(0xd56)
	.dwattr $C$DW$734, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$734, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$734, DW_AT_decl_line(0xd56)
	.dwattr $C$DW$734, DW_AT_decl_column(0x09)
	.dwattr $C$DW$734, DW_AT_TI_max_frame_size(0x38)
	.dwpsn	file "../utils/ff.c",line 3419,column 1,is_stmt,address f_chmod,isa 1

	.dwfde $C$DW$CIE, f_chmod
$C$DW$735	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$735, DW_AT_location[DW_OP_reg0]
$C$DW$736	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_location[DW_OP_reg1]
$C$DW$737	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mask")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: f_chmod                                                    *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V2,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2, *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 44 Auto + 12 Save = 56 byte                *
;*****************************************************************************
f_chmod:
;* --------------------------------------------------------------------------*
;* A1    assigned to $O$C13
;* A1    assigned to $O$v1
;* A1    assigned to res
$C$DW$738	.dwtag  DW_TAG_variable, DW_AT_name("res")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$738, DW_AT_location[DW_OP_reg0]
$C$DW$739	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$739, DW_AT_location[DW_OP_breg13 0]
;* V2    assigned to value
$C$DW$740	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$740, DW_AT_location[DW_OP_reg5]
;* V1    assigned to mask
$C$DW$741	.dwtag  DW_TAG_variable, DW_AT_name("mask")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$741, DW_AT_location[DW_OP_reg4]
$C$DW$742	.dwtag  DW_TAG_variable, DW_AT_name("dj")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("dj")
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$742, DW_AT_location[DW_OP_breg13 4]
$C$DW$743	.dwtag  DW_TAG_variable, DW_AT_name("sfn")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("sfn")
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$743, DW_AT_location[DW_OP_breg13 32]
	.dwcfi	cfa_offset, 0
        PUSH      {V1, V2, LR}          ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 5, -8
	.dwcfi	save_reg_to_mem, 4, -12
        MOV       V1, A3                ; [DPU_3_PIPE] |3419| 
        MOV       V2, A2                ; [DPU_3_PIPE] |3419| 
        SUB       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 56
	.dwpsn	file "../utils/ff.c",line 3426,column 2,is_stmt,isa 1
        MOVS      A3, #1                ; [DPU_3_PIPE] |3426| 
	.dwpsn	file "../utils/ff.c",line 3419,column 1,is_stmt,isa 1
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |3419| 
	.dwpsn	file "../utils/ff.c",line 3426,column 2,is_stmt,isa 1
        ADD       A2, SP, #4            ; [DPU_3_PIPE] |3426| 
        MOV       A1, SP                ; [DPU_3_PIPE] |3426| 
$C$DW$744	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$744, DW_AT_low_pc(0x00)
	.dwattr $C$DW$744, DW_AT_name("chk_mounted")
	.dwattr $C$DW$744, DW_AT_TI_call
        BL        chk_mounted           ; [DPU_3_PIPE] |3426| 
        ; CALL OCCURS {chk_mounted }     ; [] |3426| 
        CBNZ      A1, ||$C$L488||       ; [] 
        ; BRANCHCC OCCURS {||$C$L488||}  ; [] |3426| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3428,column 3,is_stmt,isa 1
        ADD       A1, SP, #32           ; [DPU_3_PIPE] |3428| 
	.dwpsn	file "../utils/ff.c",line 3429,column 3,is_stmt,isa 1
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |3429| 
	.dwpsn	file "../utils/ff.c",line 3428,column 3,is_stmt,isa 1
        STR       A1, [SP, #28]         ; [DPU_3_PIPE] |3428| 
	.dwpsn	file "../utils/ff.c",line 3429,column 3,is_stmt,isa 1
        ADD       A1, SP, #4            ; [DPU_3_PIPE] |3429| 
$C$DW$745	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$745, DW_AT_low_pc(0x00)
	.dwattr $C$DW$745, DW_AT_name("follow_path")
	.dwattr $C$DW$745, DW_AT_TI_call
        BL        follow_path           ; [DPU_3_PIPE] |3429| 
        ; CALL OCCURS {follow_path }     ; [] |3429| 
        CBNZ      A1, ||$C$L488||       ; [] 
        ; BRANCHCC OCCURS {||$C$L488||}  ; [] |3429| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3435,column 4,is_stmt,isa 1
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |3435| 
        CMP       A1, #0                ; [DPU_3_PIPE] |3435| 
        IT        EQ                    ; [DPU_3_PIPE] 
	.dwpsn	file "../utils/ff.c",line 3446,column 2,is_stmt,isa 1
        MOVEQ     A1, #6                ; [DPU_3_PIPE] |3446| 
        BEQ       ||$C$L488||           ; [DPU_3_PIPE] |3446| 
        ; BRANCHCC OCCURS {||$C$L488||}  ; [] |3446| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../utils/ff.c",line 3439,column 5,is_stmt,isa 1
        LDRB      A3, [A1, #11]         ; [DPU_3_PIPE] |3439| 
	.dwpsn	file "../utils/ff.c",line 3438,column 5,is_stmt,isa 1
        AND       V1, V1, #39           ; [DPU_3_PIPE] |3438| 
	.dwpsn	file "../utils/ff.c",line 3439,column 5,is_stmt,isa 1
        EOR       A2, V1, #255          ; [DPU_3_PIPE] |3439| 
        ANDS      V1, V1, V2            ; [DPU_3_PIPE] |3439| 
        ANDS      A2, A2, A3            ; [DPU_3_PIPE] |3439| 
        ORRS      A2, A2, V1            ; [DPU_3_PIPE] |3439| 
        STRB      A2, [A1, #11]         ; [DPU_3_PIPE] |3439| 
	.dwpsn	file "../utils/ff.c",line 3440,column 5,is_stmt,isa 1
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |3440| 
        MOVS      A2, #1                ; [DPU_3_PIPE] |3440| 
        STRB      A2, [A1, #4]          ; [DPU_3_PIPE] |3440| 
	.dwpsn	file "../utils/ff.c",line 3441,column 5,is_stmt,isa 1
$C$DW$746	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$746, DW_AT_low_pc(0x00)
	.dwattr $C$DW$746, DW_AT_name("sync_fs")
	.dwattr $C$DW$746, DW_AT_TI_call
        BL        sync_fs               ; [DPU_3_PIPE] |3441| 
        ; CALL OCCURS {sync_fs }         ; [] |3441| 
;* --------------------------------------------------------------------------*
||$C$L488||:    
        ADD       SP, SP, #44           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 12
$C$DW$747	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$747, DW_AT_low_pc(0x00)
	.dwattr $C$DW$747, DW_AT_TI_return
        POP       {V1, V2, PC}          ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$734, DW_AT_TI_end_file("../utils/ff.c")
	.dwattr $C$DW$734, DW_AT_TI_end_line(0xd77)
	.dwattr $C$DW$734, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$734

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	get_fattime
	.global	disk_initialize
	.global	disk_status
	.global	disk_read
	.global	disk_write
	.global	disk_ioctl

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ00000000000000000000000000000000000000000000")
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$748	.dwtag  DW_TAG_enumerator, DW_AT_name("RES_OK"), DW_AT_const_value(0x00)
	.dwattr $C$DW$748, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x17)
	.dwattr $C$DW$748, DW_AT_decl_column(0x02)
$C$DW$749	.dwtag  DW_TAG_enumerator, DW_AT_name("RES_ERROR"), DW_AT_const_value(0x01)
	.dwattr $C$DW$749, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x18)
	.dwattr $C$DW$749, DW_AT_decl_column(0x02)
$C$DW$750	.dwtag  DW_TAG_enumerator, DW_AT_name("RES_WRPRT"), DW_AT_const_value(0x02)
	.dwattr $C$DW$750, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x19)
	.dwattr $C$DW$750, DW_AT_decl_column(0x02)
$C$DW$751	.dwtag  DW_TAG_enumerator, DW_AT_name("RES_NOTRDY"), DW_AT_const_value(0x03)
	.dwattr $C$DW$751, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$751, DW_AT_decl_column(0x02)
$C$DW$752	.dwtag  DW_TAG_enumerator, DW_AT_name("RES_PARERR"), DW_AT_const_value(0x04)
	.dwattr $C$DW$752, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$752, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$39

	.dwattr $C$DW$T$39, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x0e)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("DRESULT")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

$C$DW$T$52	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$753	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_OK"), DW_AT_const_value(0x00)
	.dwattr $C$DW$753, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$753, DW_AT_decl_column(0x02)
$C$DW$754	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_DISK_ERR"), DW_AT_const_value(0x01)
	.dwattr $C$DW$754, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$754, DW_AT_decl_column(0x02)
$C$DW$755	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_INT_ERR"), DW_AT_const_value(0x02)
	.dwattr $C$DW$755, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$755, DW_AT_decl_column(0x02)
$C$DW$756	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NOT_READY"), DW_AT_const_value(0x03)
	.dwattr $C$DW$756, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$756, DW_AT_decl_column(0x02)
$C$DW$757	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NO_FILE"), DW_AT_const_value(0x04)
	.dwattr $C$DW$757, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$757, DW_AT_decl_column(0x02)
$C$DW$758	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NO_PATH"), DW_AT_const_value(0x05)
	.dwattr $C$DW$758, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$758, DW_AT_decl_column(0x02)
$C$DW$759	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_INVALID_NAME"), DW_AT_const_value(0x06)
	.dwattr $C$DW$759, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$759, DW_AT_decl_column(0x02)
$C$DW$760	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_DENIED"), DW_AT_const_value(0x07)
	.dwattr $C$DW$760, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0xba)
	.dwattr $C$DW$760, DW_AT_decl_column(0x02)
$C$DW$761	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_EXIST"), DW_AT_const_value(0x08)
	.dwattr $C$DW$761, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$761, DW_AT_decl_column(0x02)
$C$DW$762	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_INVALID_OBJECT"), DW_AT_const_value(0x09)
	.dwattr $C$DW$762, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$762, DW_AT_decl_column(0x02)
$C$DW$763	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_WRITE_PROTECTED"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$763, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$763, DW_AT_decl_column(0x02)
$C$DW$764	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_INVALID_DRIVE"), DW_AT_const_value(0x0b)
	.dwattr $C$DW$764, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$764, DW_AT_decl_column(0x02)
$C$DW$765	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NOT_ENABLED"), DW_AT_const_value(0x0c)
	.dwattr $C$DW$765, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$765, DW_AT_decl_column(0x02)
$C$DW$766	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NO_FILESYSTEM"), DW_AT_const_value(0x0d)
	.dwattr $C$DW$766, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$766, DW_AT_decl_column(0x02)
$C$DW$767	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_MKFS_ABORTED"), DW_AT_const_value(0x0e)
	.dwattr $C$DW$767, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$767, DW_AT_decl_column(0x02)
$C$DW$768	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_TIMEOUT"), DW_AT_const_value(0x0f)
	.dwattr $C$DW$768, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$768, DW_AT_decl_column(0x02)
$C$DW$769	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_LOCKED"), DW_AT_const_value(0x10)
	.dwattr $C$DW$769, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$769, DW_AT_decl_column(0x02)
$C$DW$770	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_NOT_ENOUGH_CORE"), DW_AT_const_value(0x11)
	.dwattr $C$DW$770, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$770, DW_AT_decl_column(0x02)
$C$DW$771	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_TOO_MANY_OPEN_FILES"), DW_AT_const_value(0x12)
	.dwattr $C$DW$771, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$771, DW_AT_decl_column(0x02)
$C$DW$772	.dwtag  DW_TAG_enumerator, DW_AT_name("FR_INVALID_PARAMETER"), DW_AT_const_value(0x13)
	.dwattr $C$DW$772, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$772, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$52

	.dwattr $C$DW$T$52, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x0e)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("FRESULT")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x03)

$C$DW$T$127	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x01)
$C$DW$773	.dwtag  DW_TAG_enumerator, DW_AT_name("FALSE"), DW_AT_const_value(0x00)
	.dwattr $C$DW$773, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0x24)
	.dwattr $C$DW$773, DW_AT_decl_column(0x10)
$C$DW$774	.dwtag  DW_TAG_enumerator, DW_AT_name("TRUE"), DW_AT_const_value(0x01)
	.dwattr $C$DW$774, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0x24)
	.dwattr $C$DW$774, DW_AT_decl_column(0x1b)
	.dwendtag $C$DW$T$127

	.dwattr $C$DW$T$127, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x24)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x0e)
$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("BOOL")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x24)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x22)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x234)
$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("fs_type")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("fs_type")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$775, DW_AT_decl_column(0x07)
$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("drv")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("drv")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$776, DW_AT_decl_column(0x07)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("csize")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("csize")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0x50)
	.dwattr $C$DW$777, DW_AT_decl_column(0x07)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("n_fats")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("n_fats")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0x51)
	.dwattr $C$DW$778, DW_AT_decl_column(0x07)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("wflag")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("wflag")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0x52)
	.dwattr $C$DW$779, DW_AT_decl_column(0x07)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("fsi_flag")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("fsi_flag")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0x53)
	.dwattr $C$DW$780, DW_AT_decl_column(0x07)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$781, DW_AT_name("id")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0x54)
	.dwattr $C$DW$781, DW_AT_decl_column(0x07)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$782, DW_AT_name("n_rootdir")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("n_rootdir")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0x55)
	.dwattr $C$DW$782, DW_AT_decl_column(0x07)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$783, DW_AT_name("last_clust")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("last_clust")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$783, DW_AT_decl_column(0x08)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$784, DW_AT_name("free_clust")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("free_clust")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$784, DW_AT_decl_column(0x08)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$785, DW_AT_name("fsi_sector")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("fsi_sector")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$785, DW_AT_decl_column(0x08)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$786, DW_AT_name("n_fatent")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("n_fatent")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0x64)
	.dwattr $C$DW$786, DW_AT_decl_column(0x08)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$787, DW_AT_name("fsize")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("fsize")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0x65)
	.dwattr $C$DW$787, DW_AT_decl_column(0x08)
$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$788, DW_AT_name("volbase")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("volbase")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0x66)
	.dwattr $C$DW$788, DW_AT_decl_column(0x08)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$789, DW_AT_name("fatbase")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("fatbase")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0x67)
	.dwattr $C$DW$789, DW_AT_decl_column(0x08)
$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$790, DW_AT_name("dirbase")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("dirbase")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0x68)
	.dwattr $C$DW$790, DW_AT_decl_column(0x08)
$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$791, DW_AT_name("database")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("database")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0x69)
	.dwattr $C$DW$791, DW_AT_decl_column(0x08)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$792, DW_AT_name("winsect")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("winsect")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$792, DW_AT_decl_column(0x08)
$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$793, DW_AT_name("win")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("win")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$793, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("FATFS")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x20)
$C$DW$T$129	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$69)

$C$DW$T$130	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x04)
$C$DW$794	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$794, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$130

$C$DW$T$131	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$25)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x04)
$C$DW$795	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$795, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$34


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x1c)
$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$796, DW_AT_name("fs")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0x90)
	.dwattr $C$DW$796, DW_AT_decl_column(0x09)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$797, DW_AT_name("id")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0x91)
	.dwattr $C$DW$797, DW_AT_decl_column(0x07)
$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$798, DW_AT_name("index")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("index")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0x92)
	.dwattr $C$DW$798, DW_AT_decl_column(0x07)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$799, DW_AT_name("sclust")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("sclust")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0x93)
	.dwattr $C$DW$799, DW_AT_decl_column(0x08)
$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$800, DW_AT_name("clust")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("clust")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0x94)
	.dwattr $C$DW$800, DW_AT_decl_column(0x08)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$801, DW_AT_name("sect")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("sect")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0x95)
	.dwattr $C$DW$801, DW_AT_decl_column(0x08)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$802, DW_AT_name("dir")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("dir")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0x96)
	.dwattr $C$DW$802, DW_AT_decl_column(0x08)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$803, DW_AT_name("fn")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("fn")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0x97)
	.dwattr $C$DW$803, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$27

	.dwattr $C$DW$T$27, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x10)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("DIR")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x03)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)
$C$DW$T$136	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$58)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x18)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$804, DW_AT_name("fsize")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("fsize")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$804, DW_AT_decl_column(0x08)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$805, DW_AT_name("fdate")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("fdate")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$805, DW_AT_decl_column(0x07)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$806, DW_AT_name("ftime")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("ftime")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$806, DW_AT_decl_column(0x07)
$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("fattrib")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("fattrib")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$807, DW_AT_decl_column(0x07)
$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$808, DW_AT_name("fname")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("fname")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$808, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$31

	.dwattr $C$DW$T$31, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("FILINFO")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x03)
$C$DW$T$91	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$83)
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)
$C$DW$T$142	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$92)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$143	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$84)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x224)
$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$809, DW_AT_name("fs")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("fs")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x73)
	.dwattr $C$DW$809, DW_AT_decl_column(0x09)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$810, DW_AT_name("id")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x74)
	.dwattr $C$DW$810, DW_AT_decl_column(0x07)
$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("flag")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("flag")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x75)
	.dwattr $C$DW$811, DW_AT_decl_column(0x07)
$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("pad1")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("pad1")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x76)
	.dwattr $C$DW$812, DW_AT_decl_column(0x07)
$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$813, DW_AT_name("fptr")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("fptr")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x77)
	.dwattr $C$DW$813, DW_AT_decl_column(0x08)
$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$814, DW_AT_name("fsize")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("fsize")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x78)
	.dwattr $C$DW$814, DW_AT_decl_column(0x08)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$815, DW_AT_name("sclust")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("sclust")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x79)
	.dwattr $C$DW$815, DW_AT_decl_column(0x08)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$816, DW_AT_name("clust")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("clust")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$816, DW_AT_decl_column(0x08)
$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$817, DW_AT_name("dsect")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("dsect")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$817, DW_AT_decl_column(0x08)
$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$818, DW_AT_name("dir_sect")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("dir_sect")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$818, DW_AT_decl_column(0x08)
$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$819, DW_AT_name("dir_ptr")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("dir_ptr")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$819, DW_AT_decl_column(0x08)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$820, DW_AT_name("buf")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x87)
	.dwattr $C$DW$820, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$32

	.dwattr $C$DW$T$32, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("FIL")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x03)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)
$C$DW$T$146	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$74)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name(".ggroup1")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x08)
$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$821, DW_AT_name("Fsid")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("Fsid")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$822, DW_AT_name("FatFs")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("FatFs")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name(".ggroup2")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x2c)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$823, DW_AT_name("vst")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("vst$1")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$824, DW_AT_name("cst")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("cst$2")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$78	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$2)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("BYTE")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)
$C$DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$19)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)
$C$DW$T$158	.dwtag  DW_TAG_typedef, DW_AT_name("DSTATUS")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_decl_file("../utils/diskio.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x0e)

$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x200)
$C$DW$825	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$825, DW_AT_upper_bound(0x1ff)
	.dwendtag $C$DW$T$22

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)

$C$DW$T$161	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x0c)
$C$DW$826	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$826, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$161


$C$DW$T$162	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x15)
$C$DW$827	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$827, DW_AT_upper_bound(0x14)
	.dwendtag $C$DW$T$162

$C$DW$T$163	.dwtag  DW_TAG_typedef, DW_AT_name("UCHAR")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x15)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("SHORT")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$183, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$183, DW_AT_decl_line(0x19)
	.dwattr $C$DW$T$183, DW_AT_decl_column(0x11)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$184	.dwtag  DW_TAG_typedef, DW_AT_name("USHORT")
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$184, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$184, DW_AT_decl_column(0x18)
$C$DW$T$185	.dwtag  DW_TAG_typedef, DW_AT_name("WCHAR")
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$185, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$185, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$185, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$185, DW_AT_decl_column(0x18)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x18)
$C$DW$T$186	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$20)

$C$DW$T$187	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x16)
$C$DW$828	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$828, DW_AT_upper_bound(0x0a)
	.dwendtag $C$DW$T$187

$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$9)

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x16)
$C$DW$829	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$829, DW_AT_upper_bound(0x0a)
	.dwendtag $C$DW$T$37

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("INT")
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$193, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$193, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$193, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$193, DW_AT_decl_column(0x10)
$C$DW$T$198	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$10)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("UINT")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x16)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)
$C$DW$T$199	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$76)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$207	.dwtag  DW_TAG_typedef, DW_AT_name("LONG")
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$207, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$207, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$207, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$T$207, DW_AT_decl_column(0x10)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x17)
$C$DW$T$208	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$21)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x20)
$C$DW$T$209	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$87)
$C$DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("ULONG")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$213, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$213, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$213, DW_AT_decl_column(0x17)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$214	.dwtag  DW_TAG_typedef, DW_AT_name("CHAR")
	.dwattr $C$DW$T$214, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$214, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$214, DW_AT_decl_file("../utils/integer.h")
	.dwattr $C$DW$T$214, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$214, DW_AT_decl_column(0x10)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("TCHAR")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("../utils/ff.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x0e)
$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$29)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x20)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)
$C$DW$T$215	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$66)
$C$DW$T$216	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$65)

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0d)
$C$DW$830	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$830, DW_AT_upper_bound(0x0c)
	.dwendtag $C$DW$T$30

$C$DW$T$217	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$217, DW_AT_address_class(0x20)
$C$DW$T$195	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$6)
$C$DW$T$196	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$196, DW_AT_address_class(0x20)
$C$DW$T$218	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$218, DW_AT_address_class(0x20)
$C$DW$T$219	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$219, DW_AT_decl_file("../utils/ff.c")
	.dwattr $C$DW$T$219, DW_AT_decl_line(0xfbc)
	.dwattr $C$DW$T$219, DW_AT_decl_column(0x01)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 14
	.dwcfi	undefined, 7
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry
	.dwendtag $C$DW$CU

