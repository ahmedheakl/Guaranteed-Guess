	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	w0, #1001                       ; =0x3e9
	bl	_libmin_srand
	mov	x19, #0                         ; =0x0
Lloh0:
	adrp	x21, _gridVals@GOTPAGE
Lloh1:
	ldr	x21, [x21, _gridVals@GOTPAGEOFF]
Lloh2:
	adrp	x22, _gridTmpVals@GOTPAGE
Lloh3:
	ldr	x22, [x22, _gridTmpVals@GOTPAGEOFF]
	adrp	x25, _grid@PAGE
	adrp	x26, _gridTmp@PAGE
	adrp	x23, _NUM_BLOCKS@PAGE
	mov	w24, #32                        ; =0x20
Lloh4:
	adrp	x27, _BLOCKS@PAGE
Lloh5:
	add	x27, x27, _BLOCKS@PAGEOFF
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	mov	x28, #0                         ; =0x0
	mov	w8, #22                         ; =0x16
	mul	x8, x19, x8
	add	x9, x21, x8
	ldr	x10, [x25, _grid@PAGEOFF]
	lsl	x20, x19, #3
	str	x9, [x10, x20]
	add	x8, x22, x8
	ldr	x9, [x26, _gridTmp@PAGEOFF]
	str	x8, [x9, x20]
LBB0_2:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_libmin_rand
	ldr	w8, [x23, _NUM_BLOCKS@PAGEOFF]
	udiv	w9, w0, w8
	msub	w8, w9, w8, w0
	ldrb	w8, [x27, w8, uxtw]
	ldr	x9, [x25, _grid@PAGEOFF]
	ldr	x9, [x9, x20]
	strb	w8, [x9, x28]
	ldr	x8, [x26, _gridTmp@PAGEOFF]
	ldr	x8, [x8, x20]
	strb	w24, [x8, x28]
	add	x28, x28, #1
	cmp	x28, #22
	b.ne	LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	add	x19, x19, #1
	cmp	x19, #70
	b.ne	LBB0_1
; %bb.4:
Lloh6:
	adrp	x0, l_.str@PAGE
Lloh7:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	w27, #0                         ; =0x0
	adrp	x28, _evolution@PAGE
Lloh8:
	adrp	x21, l_.str.3@PAGE
Lloh9:
	add	x21, x21, l_.str.3@PAGEOFF
	adrp	x19, _LIVE@PAGE
	adrp	x20, _DEAD@PAGE
Lloh10:
	adrp	x22, l_.str.4@PAGE
Lloh11:
	add	x22, x22, l_.str.4@PAGEOFF
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [x25, _grid@PAGEOFF]
	ldr	x9, [x26, _gridTmp@PAGEOFF]
	str	x9, [x25, _grid@PAGEOFF]
	str	x8, [x26, _gridTmp@PAGEOFF]
	add	w27, w27, #1
	cmp	w27, #80
	b.eq	LBB0_17
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
                                        ;     Child Loop BB0_12 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
Lloh12:
	adrp	x0, l_.str.1@PAGE
Lloh13:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x28, _evolution@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x28, _evolution@PAGEOFF]
	str	x8, [sp]
Lloh14:
	adrp	x0, l_.str.2@PAGE
Lloh15:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	x23, #0                         ; =0x0
LBB0_7:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
	mov	x24, #0                         ; =0x0
LBB0_8:                                 ;   Parent Loop BB0_6 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x8, [x25, _grid@PAGEOFF]
	ldr	x8, [x8, x24]
	ldrsb	x8, [x8, x23]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	add	x24, x24, #8
	cmp	x24, #560
	b.ne	LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	x0, x22
	bl	_libmin_printf
	add	x23, x23, #1
	cmp	x23, #22
	b.ne	LBB0_7
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	mov	x23, #0                         ; =0x0
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x23, x23, #1
	cmp	x23, #22
	b.eq	LBB0_5
LBB0_12:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
	mov	x24, #0                         ; =0x0
	b	LBB0_15
LBB0_13:                                ;   in Loop: Header=BB0_15 Depth=3
	ldrb	w8, [x20, _DEAD@PAGEOFF]
	cmp	w0, #3
	csel	w8, w9, w8, eq
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=3
	ldr	x9, [x26, _gridTmp@PAGEOFF]
	ldr	x9, [x9, x24, lsl #3]
	strb	w8, [x9, x23]
	bl	_libmin_rand
	add	x24, x24, #1
	cmp	x24, #70
	b.eq	LBB0_11
LBB0_15:                                ;   Parent Loop BB0_6 Depth=1
                                        ;     Parent Loop BB0_12 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x0, x24
	mov	x1, x23
	bl	_getNumNeigbors
	ldr	x8, [x25, _grid@PAGEOFF]
	ldr	x8, [x8, x24, lsl #3]
	ldrb	w8, [x8, x23]
	ldrb	w9, [x19, _LIVE@PAGEOFF]
	cmp	w8, w9
	b.ne	LBB0_13
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=3
	sub	w9, w0, #4
	ldrb	w10, [x20, _DEAD@PAGEOFF]
	cmn	w9, #2
	csel	w8, w10, w8, lo
	b	LBB0_14
LBB0_17:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_init                           ; -- Begin function init
	.p2align	2
_init:                                  ; @init
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	w0, #1001                       ; =0x3e9
	bl	_libmin_srand
	mov	x19, #0                         ; =0x0
Lloh16:
	adrp	x21, _gridVals@GOTPAGE
Lloh17:
	ldr	x21, [x21, _gridVals@GOTPAGEOFF]
Lloh18:
	adrp	x22, _gridTmpVals@GOTPAGE
Lloh19:
	ldr	x22, [x22, _gridTmpVals@GOTPAGEOFF]
	adrp	x23, _grid@PAGE
	adrp	x24, _gridTmp@PAGE
	adrp	x25, _NUM_BLOCKS@PAGE
	mov	w26, #32                        ; =0x20
Lloh20:
	adrp	x27, _BLOCKS@PAGE
Lloh21:
	add	x27, x27, _BLOCKS@PAGEOFF
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_2 Depth 2
	mov	x28, #0                         ; =0x0
	mov	w8, #22                         ; =0x16
	mul	x8, x19, x8
	add	x9, x21, x8
	ldr	x10, [x23, _grid@PAGEOFF]
	lsl	x20, x19, #3
	str	x9, [x10, x20]
	add	x8, x22, x8
	ldr	x9, [x24, _gridTmp@PAGEOFF]
	str	x8, [x9, x20]
LBB1_2:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_libmin_rand
	ldr	w8, [x25, _NUM_BLOCKS@PAGEOFF]
	udiv	w9, w0, w8
	msub	w8, w9, w8, w0
	ldrb	w8, [x27, w8, uxtw]
	ldr	x9, [x23, _grid@PAGEOFF]
	ldr	x9, [x9, x20]
	strb	w8, [x9, x28]
	ldr	x8, [x24, _gridTmp@PAGEOFF]
	ldr	x8, [x8, x20]
	strb	w26, [x8, x28]
	add	x28, x28, #1
	cmp	x28, #22
	b.ne	LBB1_2
; %bb.3:                                ;   in Loop: Header=BB1_1 Depth=1
	add	x19, x19, #1
	cmp	x19, #70
	b.ne	LBB1_1
; %bb.4:
Lloh22:
	adrp	x0, l_.str@PAGE
Lloh23:
	add	x0, x0, l_.str@PAGEOFF
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	b	_libmin_printf
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpAdd	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
	.globl	_draw                           ; -- Begin function draw
	.p2align	2
_draw:                                  ; @draw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh24:
	adrp	x0, l_.str.1@PAGE
Lloh25:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	adrp	x8, _evolution@PAGE
	ldr	w9, [x8, _evolution@PAGEOFF]
	add	w10, w9, #1
	str	w10, [x8, _evolution@PAGEOFF]
	str	x9, [sp]
Lloh26:
	adrp	x0, l_.str.2@PAGE
Lloh27:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	x21, #0                         ; =0x0
	adrp	x22, _grid@PAGE
Lloh28:
	adrp	x19, l_.str.3@PAGE
Lloh29:
	add	x19, x19, l_.str.3@PAGEOFF
Lloh30:
	adrp	x20, l_.str.4@PAGE
Lloh31:
	add	x20, x20, l_.str.4@PAGEOFF
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_2 Depth 2
	mov	x23, #0                         ; =0x0
LBB2_2:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x22, _grid@PAGEOFF]
	ldr	x8, [x8, x23]
	ldrsb	x8, [x8, x21]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x23, x23, #8
	cmp	x23, #560
	b.ne	LBB2_2
; %bb.3:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	x0, x20
	bl	_libmin_printf
	add	x21, x21, #1
	cmp	x21, #22
	b.ne	LBB2_1
; %bb.4:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.globl	_process                        ; -- Begin function process
	.p2align	2
_process:                               ; @process
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, #0                         ; =0x0
	adrp	x21, _grid@PAGE
	adrp	x23, _LIVE@PAGE
	adrp	x24, _DEAD@PAGE
	adrp	x22, _gridTmp@PAGE
	b	LBB3_2
LBB3_1:                                 ;   in Loop: Header=BB3_2 Depth=1
	add	x19, x19, #1
	cmp	x19, #22
	b.eq	LBB3_7
LBB3_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_5 Depth 2
	mov	x20, #0                         ; =0x0
	b	LBB3_5
LBB3_3:                                 ;   in Loop: Header=BB3_5 Depth=2
	ldrb	w8, [x24, _DEAD@PAGEOFF]
	cmp	w0, #3
	csel	w8, w9, w8, eq
LBB3_4:                                 ;   in Loop: Header=BB3_5 Depth=2
	ldr	x9, [x22, _gridTmp@PAGEOFF]
	ldr	x9, [x9, x20, lsl #3]
	strb	w8, [x9, x19]
	bl	_libmin_rand
	add	x20, x20, #1
	cmp	x20, #70
	b.eq	LBB3_1
LBB3_5:                                 ;   Parent Loop BB3_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x20
	mov	x1, x19
	bl	_getNumNeigbors
	ldr	x8, [x21, _grid@PAGEOFF]
	ldr	x8, [x8, x20, lsl #3]
	ldrb	w8, [x8, x19]
	ldrb	w9, [x23, _LIVE@PAGEOFF]
	cmp	w8, w9
	b.ne	LBB3_3
; %bb.6:                                ;   in Loop: Header=BB3_5 Depth=2
	sub	w9, w0, #4
	ldrb	w10, [x24, _DEAD@PAGEOFF]
	cmn	w9, #2
	csel	w8, w10, w8, lo
	b	LBB3_4
LBB3_7:
	ldr	x8, [x21, _grid@PAGEOFF]
	ldr	x9, [x22, _gridTmp@PAGEOFF]
	str	x9, [x21, _grid@PAGEOFF]
	str	x8, [x22, _gridTmp@PAGEOFF]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_getNumNeigbors                 ; -- Begin function getNumNeigbors
	.p2align	2
_getNumNeigbors:                        ; @getNumNeigbors
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	sxtw	x9, w1
	cbz	w0, LBB4_3
; %bb.1:
Lloh32:
	adrp	x8, _grid@PAGE
Lloh33:
	ldr	x10, [x8, _grid@PAGEOFF]
	add	x8, x10, w0, sxtw #3
	ldur	x8, [x8, #-8]
	ldrb	w11, [x8, x9]
	adrp	x8, _LIVE@PAGE
	ldrb	w8, [x8, _LIVE@PAGEOFF]
	cmp	w11, w8
	cset	w12, eq
	cmp	w0, #69
	b.ne	LBB4_4
; %bb.2:
Lloh34:
	adrp	x13, _DEAD@PAGE
Lloh35:
	add	x13, x13, _DEAD@PAGEOFF
	mov	w11, #1                         ; =0x1
	b	LBB4_5
LBB4_3:
Lloh36:
	adrp	x8, _DEAD@PAGE
	ldrb	w10, [x8, _DEAD@PAGEOFF]
Lloh37:
	adrp	x8, _LIVE@PAGE
	ldrb	w8, [x8, _LIVE@PAGEOFF]
	cmp	w10, w8
	cset	w12, eq
Lloh38:
	adrp	x10, _grid@PAGE
Lloh39:
	ldr	x10, [x10, _grid@PAGEOFF]
LBB4_4:
	mov	w11, #0                         ; =0x0
	add	x13, x10, w0, sxtw #3
	ldr	x13, [x13, #8]
	add	x13, x13, x9
LBB4_5:
	ldrb	w13, [x13]
	cmp	w13, w8
	cinc	w12, w12, eq
	cbz	w1, LBB4_8
; %bb.6:
	ldr	x14, [x10, w0, sxtw #3]
	add	x13, x9, x14
	ldurb	w13, [x13, #-1]
	cmp	w13, w8
	cinc	w12, w12, eq
	cmp	w1, #21
	b.ne	LBB4_9
; %bb.7:
Lloh40:
	adrp	x14, _DEAD@PAGE
Lloh41:
	add	x14, x14, _DEAD@PAGEOFF
	mov	w13, #1                         ; =0x1
	b	LBB4_10
LBB4_8:
	adrp	x13, _DEAD@PAGE
	ldrb	w13, [x13, _DEAD@PAGEOFF]
	cmp	w13, w8
	cinc	w12, w12, eq
	ldr	x14, [x10, w0, sxtw #3]
LBB4_9:
	mov	w13, #0                         ; =0x0
	add	x14, x9, x14
	add	x14, x14, #1
LBB4_10:
Lloh42:
	adrp	x15, _DEAD@PAGE
Lloh43:
	add	x15, x15, _DEAD@PAGEOFF
	cbz	w0, LBB4_13
; %bb.11:
	cbz	w1, LBB4_13
; %bb.12:
	add	x15, x10, w0, sxtw #3
	ldur	x15, [x15, #-8]
	add	x15, x9, x15
	sub	x15, x15, #1
LBB4_13:
	cmp	w1, #0
	csinc	w16, w11, wzr, ne
	tbz	w16, #0, LBB4_15
; %bb.14:
Lloh44:
	adrp	x16, _DEAD@PAGE
Lloh45:
	add	x16, x16, _DEAD@PAGEOFF
	b	LBB4_16
LBB4_15:
	add	x16, x10, w0, sxtw #3
	ldr	x16, [x16, #8]
	add	x16, x9, x16
	sub	x16, x16, #1
LBB4_16:
	cmp	w0, #0
	csinc	w17, w13, wzr, ne
	tbz	w17, #0, LBB4_18
; %bb.17:
Lloh46:
	adrp	x1, _DEAD@PAGE
Lloh47:
	add	x1, x1, _DEAD@PAGEOFF
	b	LBB4_19
LBB4_18:
	add	x17, x10, w0, sxtw #3
	ldur	x17, [x17, #-8]
	add	x17, x9, x17
	add	x1, x17, #1
LBB4_19:
	ldrb	w17, [x14]
	ldrb	w15, [x15]
	ldrb	w14, [x16]
	orr	w13, w11, w13
	ldrb	w11, [x1]
	tbz	w13, #0, LBB4_21
; %bb.20:
Lloh48:
	adrp	x9, _DEAD@PAGE
Lloh49:
	add	x9, x9, _DEAD@PAGEOFF
	b	LBB4_22
LBB4_21:
	add	x10, x10, w0, sxtw #3
	ldr	x10, [x10, #8]
	add	x9, x9, x10
	add	x9, x9, #1
LBB4_22:
	cmp	w17, w8
	cinc	w10, w12, eq
	cmp	w15, w8
	cinc	w10, w10, eq
	cmp	w14, w8
	cinc	w10, w10, eq
	cmp	w11, w8
	cinc	w10, w10, eq
	ldrb	w9, [x9]
	cmp	w9, w8
	cinc	w0, w10, eq
	ret
	.loh AdrpLdr	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdr	Lloh38, Lloh39
	.loh AdrpAdrp	Lloh36, Lloh37
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.cfi_endproc
                                        ; -- End function
	.globl	_processMutate                  ; -- Begin function processMutate
	.p2align	2
_processMutate:                         ; @processMutate
	.cfi_startproc
; %bb.0:
	b	_libmin_rand
	.cfi_endproc
                                        ; -- End function
	.globl	_flip                           ; -- Begin function flip
	.p2align	2
_flip:                                  ; @flip
	.cfi_startproc
; %bb.0:
	adrp	x8, _grid@PAGE
	ldr	x9, [x8, _grid@PAGEOFF]
	adrp	x10, _gridTmp@PAGE
	ldr	x11, [x10, _gridTmp@PAGEOFF]
	str	x11, [x8, _grid@PAGEOFF]
	str	x9, [x10, _gridTmp@PAGEOFF]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_getLeft                        ; -- Begin function getLeft
	.p2align	2
_getLeft:                               ; @getLeft
	.cfi_startproc
; %bb.0:
	cbz	w0, LBB7_2
; %bb.1:
Lloh50:
	adrp	x8, _grid@PAGE
Lloh51:
	ldr	x8, [x8, _grid@PAGEOFF]
	sub	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	add	x8, x8, w1, sxtw
	ldrsb	w0, [x8]
	ret
LBB7_2:
Lloh52:
	adrp	x8, _DEAD@PAGE
Lloh53:
	add	x8, x8, _DEAD@PAGEOFF
Lloh54:
	ldrsb	w0, [x8]
	ret
	.loh AdrpLdr	Lloh50, Lloh51
	.loh AdrpAddLdr	Lloh52, Lloh53, Lloh54
	.cfi_endproc
                                        ; -- End function
	.globl	_getRight                       ; -- Begin function getRight
	.p2align	2
_getRight:                              ; @getRight
	.cfi_startproc
; %bb.0:
	cmp	w0, #69
	b.ne	LBB8_2
; %bb.1:
Lloh55:
	adrp	x8, _DEAD@PAGE
Lloh56:
	add	x8, x8, _DEAD@PAGEOFF
Lloh57:
	ldrsb	w0, [x8]
	ret
LBB8_2:
Lloh58:
	adrp	x8, _grid@PAGE
Lloh59:
	ldr	x8, [x8, _grid@PAGEOFF]
	add	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	add	x8, x8, w1, sxtw
	ldrsb	w0, [x8]
	ret
	.loh AdrpAddLdr	Lloh55, Lloh56, Lloh57
	.loh AdrpLdr	Lloh58, Lloh59
	.cfi_endproc
                                        ; -- End function
	.globl	_getUp                          ; -- Begin function getUp
	.p2align	2
_getUp:                                 ; @getUp
	.cfi_startproc
; %bb.0:
	cbz	w1, LBB9_2
; %bb.1:
Lloh60:
	adrp	x8, _grid@PAGE
Lloh61:
	ldr	x8, [x8, _grid@PAGEOFF]
	ldr	x8, [x8, w0, sxtw #3]
	sub	w9, w1, #1
	add	x8, x8, w9, sxtw
	ldrsb	w0, [x8]
	ret
LBB9_2:
Lloh62:
	adrp	x8, _DEAD@PAGE
Lloh63:
	add	x8, x8, _DEAD@PAGEOFF
Lloh64:
	ldrsb	w0, [x8]
	ret
	.loh AdrpLdr	Lloh60, Lloh61
	.loh AdrpAddLdr	Lloh62, Lloh63, Lloh64
	.cfi_endproc
                                        ; -- End function
	.globl	_getDown                        ; -- Begin function getDown
	.p2align	2
_getDown:                               ; @getDown
	.cfi_startproc
; %bb.0:
	cmp	w1, #21
	b.ne	LBB10_2
; %bb.1:
Lloh65:
	adrp	x8, _DEAD@PAGE
Lloh66:
	add	x8, x8, _DEAD@PAGEOFF
Lloh67:
	ldrsb	w0, [x8]
	ret
LBB10_2:
Lloh68:
	adrp	x8, _grid@PAGE
Lloh69:
	ldr	x8, [x8, _grid@PAGEOFF]
	ldr	x8, [x8, w0, sxtw #3]
	add	w9, w1, #1
	add	x8, x8, w9, sxtw
	ldrsb	w0, [x8]
	ret
	.loh AdrpAddLdr	Lloh65, Lloh66, Lloh67
	.loh AdrpLdr	Lloh68, Lloh69
	.cfi_endproc
                                        ; -- End function
	.globl	_getUpLeft                      ; -- Begin function getUpLeft
	.p2align	2
_getUpLeft:                             ; @getUpLeft
	.cfi_startproc
; %bb.0:
Lloh70:
	adrp	x8, _DEAD@PAGE
Lloh71:
	add	x8, x8, _DEAD@PAGEOFF
	cbz	w0, LBB11_3
; %bb.1:
	cbz	w1, LBB11_3
; %bb.2:
Lloh72:
	adrp	x8, _grid@PAGE
Lloh73:
	ldr	x8, [x8, _grid@PAGEOFF]
	sub	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	sub	w9, w1, #1
	add	x8, x8, w9, sxtw
LBB11_3:
	ldrsb	w0, [x8]
	ret
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpLdr	Lloh72, Lloh73
	.cfi_endproc
                                        ; -- End function
	.globl	_getUpRight                     ; -- Begin function getUpRight
	.p2align	2
_getUpRight:                            ; @getUpRight
	.cfi_startproc
; %bb.0:
Lloh74:
	adrp	x8, _DEAD@PAGE
Lloh75:
	add	x8, x8, _DEAD@PAGEOFF
	cmp	w0, #69
	b.eq	LBB12_3
; %bb.1:
	cbz	w1, LBB12_3
; %bb.2:
Lloh76:
	adrp	x8, _grid@PAGE
Lloh77:
	ldr	x8, [x8, _grid@PAGEOFF]
	add	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	sub	w9, w1, #1
	add	x8, x8, w9, sxtw
LBB12_3:
	ldrsb	w0, [x8]
	ret
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpLdr	Lloh76, Lloh77
	.cfi_endproc
                                        ; -- End function
	.globl	_getDownLeft                    ; -- Begin function getDownLeft
	.p2align	2
_getDownLeft:                           ; @getDownLeft
	.cfi_startproc
; %bb.0:
Lloh78:
	adrp	x8, _DEAD@PAGE
Lloh79:
	add	x8, x8, _DEAD@PAGEOFF
	cbz	w0, LBB13_3
; %bb.1:
	cmp	w1, #21
	b.eq	LBB13_3
; %bb.2:
Lloh80:
	adrp	x8, _grid@PAGE
Lloh81:
	ldr	x8, [x8, _grid@PAGEOFF]
	sub	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	add	w9, w1, #1
	add	x8, x8, w9, sxtw
LBB13_3:
	ldrsb	w0, [x8]
	ret
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdr	Lloh80, Lloh81
	.cfi_endproc
                                        ; -- End function
	.globl	_getDownRight                   ; -- Begin function getDownRight
	.p2align	2
_getDownRight:                          ; @getDownRight
	.cfi_startproc
; %bb.0:
Lloh82:
	adrp	x8, _DEAD@PAGE
Lloh83:
	add	x8, x8, _DEAD@PAGEOFF
	cmp	w0, #69
	b.eq	LBB14_3
; %bb.1:
	cmp	w1, #21
	b.eq	LBB14_3
; %bb.2:
Lloh84:
	adrp	x8, _grid@PAGE
Lloh85:
	ldr	x8, [x8, _grid@PAGEOFF]
	add	w9, w0, #1
	ldr	x8, [x8, w9, sxtw #3]
	add	w9, w1, #1
	add	x8, x8, w9, sxtw
LBB14_3:
	ldrsb	w0, [x8]
	ret
	.loh AdrpAdd	Lloh82, Lloh83
	.loh AdrpLdr	Lloh84, Lloh85
	.cfi_endproc
                                        ; -- End function
	.globl	_sleep                          ; -- Begin function sleep
	.p2align	2
_sleep:                                 ; @sleep
	.cfi_startproc
; %bb.0:
Lloh86:
	adrp	x8, _x@GOTPAGE
Lloh87:
	ldr	x8, [x8, _x@GOTPAGEOFF]
	str	wzr, [x8]
	ldr	w9, [x8]
	cmp	w9, #0
	b.gt	LBB15_2
LBB15_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x8]
	add	w9, w9, #1
	str	w9, [x8]
	ldr	w9, [x8]
	cmp	w9, #1
	b.lt	LBB15_1
LBB15_2:
	ret
	.loh AdrpLdrGot	Lloh86, Lloh87
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_NUM_BLOCKS                     ; @NUM_BLOCKS
	.p2align	2, 0x0
_NUM_BLOCKS:
	.long	2                               ; 0x2

	.globl	_LIVE                           ; @LIVE
_LIVE:
	.byte	42                              ; 0x2a

	.globl	_DEAD                           ; @DEAD
_DEAD:
	.byte	32                              ; 0x20

	.globl	_BLOCKS                         ; @BLOCKS
_BLOCKS:
	.ascii	" *"

	.globl	_evolution                      ; @evolution
	.p2align	2, 0x0
_evolution:
	.long	1                               ; 0x1

	.comm	_gridRoots,560,3                ; @gridRoots
	.globl	_grid                           ; @grid
	.p2align	3, 0x0
_grid:
	.quad	_gridRoots

	.comm	_gridTmpRoots,560,3             ; @gridTmpRoots
	.globl	_gridTmp                        ; @gridTmp
	.p2align	3, 0x0
_gridTmp:
	.quad	_gridTmpRoots

	.comm	_gridVals,1540,0                ; @gridVals
	.comm	_gridTmpVals,1540,0             ; @gridTmpVals
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\033[2J"

l_.str.1:                               ; @.str.1
	.asciz	"\033[H"

l_.str.2:                               ; @.str.2
	.asciz	"CONWAY'S Game of Life\n\nEvolution #%d\n\n"

l_.str.3:                               ; @.str.3
	.asciz	"%c"

l_.str.4:                               ; @.str.4
	.asciz	"\n"

	.comm	_x,4,2                          ; @x
.subsections_via_symbols
