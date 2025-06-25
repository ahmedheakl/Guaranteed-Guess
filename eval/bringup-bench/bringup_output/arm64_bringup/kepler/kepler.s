	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_strict_iteration               ; -- Begin function strict_iteration
	.p2align	2
_strict_iteration:                      ; @strict_iteration
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	fmov	d8, d2
	fmov	d9, d1
	bl	_libmin_sin
	fmadd	d0, d9, d0, d8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_newton                         ; -- Begin function newton
	.p2align	2
_newton:                                ; @newton
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-48]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	fmov	d8, d2
	fmov	d9, d1
	fmov	d10, d0
	bl	_libmin_sin
	fmadd	d0, d9, d0, d8
	fsub	d8, d0, d10
	fmov	d0, d10
	bl	_libmin_cos
	fmov	d1, #1.00000000
	fmsub	d0, d9, d0, d1
	fdiv	d0, d8, d0
	fadd	d0, d0, d10
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_binary                         ; -- Begin function binary
	.p2align	2
_binary:                                ; @binary
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-64]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	adrp	x19, _binary.scale@PAGE
	cbz	w0, LBB2_2
; %bb.1:
	movi	d0, #0000000000000000
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16361, lsl #48
	fmov	d1, x8
	b	LBB2_3
LBB2_2:
	fmov	d9, d2
	fmov	d10, d1
	fmov	d8, d0
	bl	_libmin_sin
	fmsub	d0, d10, d0, d8
	ldr	d1, [x19, _binary.scale@PAGEOFF]
	fneg	d2, d1
	fcmp	d0, d9
	fcsel	d0, d1, d2, mi
	fadd	d0, d0, d8
	fmov	d2, #0.50000000
	fmul	d1, d1, d2
LBB2_3:
	str	d1, [x19, _binary.scale@PAGEOFF]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_e_series                       ; -- Begin function e_series
	.p2align	2
_e_series:                              ; @e_series
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-112]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	.cfi_offset b12, -88
	.cfi_offset b13, -96
	.cfi_offset b14, -104
	.cfi_offset b15, -112
	cbz	w0, LBB3_3
; %bb.1:
	adrp	x8, _e_series.n@PAGE
	str	wzr, [x8, _e_series.n@PAGEOFF]
	movi	d10, #0000000000000000
LBB3_2:
	fmov	d0, d10
	b	LBB3_13
LBB3_3:
	fmov	d10, d2
	adrp	x19, _e_series.n@PAGE
	ldr	w8, [x19, _e_series.n@PAGEOFF]
	cbz	w8, LBB3_10
; %bb.4:
	fmov	d9, d1
	fmov	d8, d0
	tbnz	w8, #31, LBB3_11
; %bb.5:
	mov	w20, #0                         ; =0x0
	movi	d11, #0000000000000000
	mov	w21, #1                         ; =0x1
	fmov	d12, #-2.00000000
	fmov	d13, #0.50000000
	fmov	d14, #1.00000000
	b	LBB3_7
LBB3_6:                                 ;   in Loop: Header=BB3_7 Depth=1
	fmadd	d0, d1, d12, d0
	fneg	d1, d2
	tst	w20, #0x1
	fcsel	d15, d2, d1, eq
	fmul	d0, d0, d10
	bl	_libmin_sin
	fmadd	d11, d15, d0, d11
	add	w20, w20, #1
	ldr	w8, [x19, _e_series.n@PAGEOFF]
	sub	w21, w21, #1
	cmp	w8, w20, lsl #1
	b.lt	LBB3_12
LBB3_7:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_9 Depth 2
	scvtf	d0, w8
	scvtf	d1, w20
	sub	w9, w8, w20
	fmov	d2, #1.00000000
	cmp	w9, #2
	b.lt	LBB3_6
; %bb.8:                                ;   in Loop: Header=BB3_7 Depth=1
	mov	w9, #0                          ; =0x0
	fmul	d2, d0, d13
	fsub	d3, d2, d1
	fsub	d4, d0, d1
	add	w8, w8, w21
	fmov	d2, #1.00000000
LBB3_9:                                 ;   Parent Loop BB3_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w8, w8, #1
	scvtf	d5, w8
	fsub	d6, d4, d5
	fadd	d6, d6, d14
	cmp	w9, w20
	fcsel	d6, d6, d14, lt
	fmul	d5, d6, d5
	fcsel	d6, d3, d14, lt
	fmul	d6, d3, d6
	fdiv	d5, d6, d5
	fmul	d2, d2, d5
	add	w9, w9, #1
	cmp	w8, #2
	b.hi	LBB3_9
	b	LBB3_6
LBB3_10:
	mov	w8, #1                          ; =0x1
	str	w8, [x19, _e_series.n@PAGEOFF]
	b	LBB3_2
LBB3_11:
	movi	d11, #0000000000000000
LBB3_12:
	add	w9, w8, #1
	str	w9, [x19, _e_series.n@PAGEOFF]
	scvtf	d1, w8
	fmov	d0, d9
	bl	_libmin_pow
	fmadd	d0, d0, d11, d8
LBB3_13:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #112            ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bin_fact                       ; -- Begin function bin_fact
	.p2align	2
_bin_fact:                              ; @bin_fact
	.cfi_startproc
; %bb.0:
	sub	w8, w0, w1
	fmov	d0, #1.00000000
	cmp	w8, #2
	b.lt	LBB4_3
; %bb.1:
	mov	w9, #0                          ; =0x0
	scvtf	d0, w0
	fmov	d1, #0.50000000
	fmul	d1, d0, d1
	scvtf	d2, w1
	fsub	d1, d1, d2
	fsub	d2, d0, d2
	fmov	d3, #1.00000000
	fmov	d0, #1.00000000
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	scvtf	d4, w8
	fsub	d5, d2, d4
	fadd	d5, d5, d3
	cmp	w9, w1
	fcsel	d5, d5, d3, lt
	fmul	d4, d5, d4
	fcsel	d5, d1, d3, lt
	fmul	d5, d1, d5
	fdiv	d4, d5, d4
	fmul	d0, d0, d4
	sub	w10, w8, #1
	add	w9, w9, #1
	cmp	w8, #2
	mov	x8, x10
	b.hi	LBB4_2
LBB4_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_j_series                       ; -- Begin function j_series
	.p2align	2
_j_series:                              ; @j_series
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	cbz	w0, LBB5_2
; %bb.1:
	adrp	x8, _j_series.n@PAGE
	str	wzr, [x8, _j_series.n@PAGEOFF]
	movi	d2, #0000000000000000
	b	LBB5_9
LBB5_2:
	adrp	x19, _j_series.n@PAGE
	ldr	w8, [x19, _j_series.n@PAGEOFF]
	cbz	w8, LBB5_8
; %bb.3:
	fmov	d8, d0
	mov	w10, #0                         ; =0x0
	scvtf	d0, w8
	fmul	d4, d0, d1
	cmp	w8, #0
	cneg	w9, w8, mi
	fmov	d1, #1.00000000
LBB5_4:                                 ; =>This Inner Loop Header: Depth=1
	add	w10, w10, #1
	scvtf	d3, w10
	fadd	d3, d3, d3
	fdiv	d3, d4, d3
	fmul	d1, d1, d3
	cmp	w9, w10
	b.ne	LBB5_4
; %bb.5:
	scvtf	d3, w9
	fmul	d4, d4, d4
	mov	w10, #1                         ; =0x1
	fmov	d6, #-1.00000000
	fmov	d7, #1.00000000
	mov	x11, #4372995238176751616       ; =0x3cb0000000000000
	fmov	d5, d1
	fmov	d16, #4.00000000
LBB5_6:                                 ; =>This Inner Loop Header: Depth=1
	scvtf	d17, w10
	tst	w10, #0x1
	fcsel	d18, d7, d6, eq
	fmul	d19, d17, d16
	fadd	d17, d3, d17
	fmul	d17, d19, d17
	fdiv	d17, d4, d17
	fmul	d1, d1, d17
	fmadd	d5, d18, d1, d5
	add	w10, w10, #1
	fmov	d17, x11
	fcmp	d1, d17
	b.gt	LBB5_6
; %bb.7:
	fmov	d1, #2.00000000
	fdiv	d1, d1, d0
	fneg	d3, d5
	tst	w9, #0x1
	fcsel	d3, d5, d3, eq
	cmp	w8, #0
	fcsel	d3, d3, d5, lt
	fmul	d9, d1, d3
	fmul	d0, d0, d2
	bl	_libmin_sin
	fmul	d0, d9, d0
	ldr	w8, [x19, _j_series.n@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x19, _j_series.n@PAGEOFF]
	fadd	d2, d0, d8
	b	LBB5_9
LBB5_8:
	mov	w8, #1                          ; =0x1
	str	w8, [x19, _j_series.n@PAGEOFF]
LBB5_9:
	fmov	d0, d2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_J                              ; -- Begin function J
	.p2align	2
_J:                                     ; @J
	.cfi_startproc
; %bb.0:
	cmp	w0, #0
	cneg	w8, w0, mi
	fmov	d1, #1.00000000
	fmov	d2, #1.00000000
	cbz	w0, LBB6_3
; %bb.1:
	mov	w9, #0                          ; =0x0
	cmp	w8, #1
	csinc	w10, w8, wzr, hi
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	add	w9, w9, #1
	scvtf	d3, w9
	fadd	d3, d3, d3
	fdiv	d3, d0, d3
	fmul	d2, d2, d3
	cmp	w10, w9
	b.ne	LBB6_2
LBB6_3:
	scvtf	d3, w8
	fmul	d0, d0, d0
	mov	w9, #1                          ; =0x1
	fmov	d5, #-1.00000000
	mov	x10, #4372995238176751616       ; =0x3cb0000000000000
	fmov	d6, #4.00000000
	fmov	d4, d2
LBB6_4:                                 ; =>This Inner Loop Header: Depth=1
	scvtf	d7, w9
	tst	w9, #0x1
	fcsel	d16, d1, d5, eq
	fmul	d17, d7, d6
	fadd	d7, d3, d7
	fmul	d7, d17, d7
	fdiv	d7, d0, d7
	fmul	d2, d2, d7
	fmadd	d4, d16, d2, d4
	add	w9, w9, #1
	fmov	d7, x10
	fcmp	d2, d7
	b.gt	LBB6_4
; %bb.5:
	fneg	d0, d4
	tst	w8, #0x1
	fcsel	d0, d4, d0, eq
	cmp	w0, #0
	fcsel	d0, d0, d4, lt
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	d13, d12, [sp, #32]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #48]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
Lloh0:
	adrp	x8, _argv@PAGE+8
Lloh1:
	ldr	x0, [x8, _argv@PAGEOFF+8]
	ldrb	w8, [x0]
	cmp	w8, #45
	b.ne	LBB7_14
; %bb.1:
Lloh2:
	adrp	x21, _argv@PAGE+8
Lloh3:
	add	x21, x21, _argv@PAGEOFF+8
	mov	w19, #1                         ; =0x1
	mov	x9, #4294967296                 ; =0x100000000
Lloh4:
	adrp	x10, _argv@PAGE
Lloh5:
	add	x10, x10, _argv@PAGEOFF
Lloh6:
	adrp	x20, l_.str.5@PAGE
Lloh7:
	add	x20, x20, l_.str.5@PAGEOFF
Lloh8:
	adrp	x22, l_.str.8@PAGE
Lloh9:
	add	x22, x22, l_.str.8@PAGEOFF
Lloh10:
	adrp	x23, l_.str.10@PAGE
Lloh11:
	add	x23, x23, l_.str.10@PAGEOFF
	adrp	x28, _derror@PAGE
	mov	x25, #4372995238176751616       ; =0x3cb0000000000000
	mov	x27, #8589934592                ; =0x200000000
	mov	w26, #1                         ; =0x1
LBB7_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_4 Depth 2
	str	x19, [sp, #24]                  ; 8-byte Folded Spill
	sxtw	x8, w26
	add	x24, x9, x8, lsl #32
	add	x8, x10, w26, sxtw #3
	add	x8, x8, #16
	b	LBB7_4
LBB7_3:                                 ;   in Loop: Header=BB7_4 Depth=2
	mov	x8, x19
	ldr	x0, [x8], #16
	ldrb	w9, [x0]
	add	x24, x24, x27
	add	w26, w26, #2
	mov	x21, x19
	cmp	w9, #45
	b.ne	LBB7_15
LBB7_4:                                 ;   Parent Loop BB7_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x19, x8
	mov	x1, x20
	bl	_libmin_strcmp
	cbnz	w0, LBB7_6
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=2
Lloh12:
	adrp	x8, l_.str.7@PAGE
Lloh13:
	add	x8, x8, l_.str.7@PAGEOFF
	str	x8, [sp]
Lloh14:
	adrp	x0, l_.str.6@PAGE
Lloh15:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
LBB7_6:                                 ;   in Loop: Header=BB7_4 Depth=2
	ldr	x0, [x21]
	mov	x1, x22
	bl	_libmin_strcmp
	cbnz	w0, LBB7_8
; %bb.7:                                ;   in Loop: Header=BB7_4 Depth=2
Lloh16:
	adrp	x8, l_.str.9@PAGE
Lloh17:
	add	x8, x8, l_.str.9@PAGEOFF
	str	x8, [sp]
Lloh18:
	adrp	x0, l_.str.6@PAGE
Lloh19:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
LBB7_8:                                 ;   in Loop: Header=BB7_4 Depth=2
	ldr	x0, [x21]
	mov	x1, x23
	bl	_libmin_strcmp
	cbnz	w0, LBB7_11
; %bb.9:                                ;   in Loop: Header=BB7_4 Depth=2
	ldur	x0, [x19, #-8]
	bl	_libmin_atof
	str	d0, [x28, _derror@PAGEOFF]
	fmov	d1, x25
	fcmp	d0, d1
	b.hi	LBB7_3
; %bb.10:                               ;   in Loop: Header=BB7_4 Depth=2
Lloh20:
	adrp	x0, l_.str.11@PAGE
Lloh21:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	b	LBB7_3
LBB7_11:                                ;   in Loop: Header=BB7_2 Depth=1
	ldr	x0, [x21]
Lloh22:
	adrp	x1, l_.str.1@PAGE
Lloh23:
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_libmin_strcmp
	cbnz	w0, LBB7_29
; %bb.12:                               ;   in Loop: Header=BB7_2 Depth=1
	asr	x8, x24, #29
Lloh24:
	adrp	x24, _argv@PAGE
Lloh25:
	add	x24, x24, _argv@PAGEOFF
	ldr	x0, [x24, x8]
	bl	_libmin_atoi
	mov	x19, x0
	sub	w8, w0, #6
	cmn	w8, #6
	b.ls	LBB7_30
; %bb.13:                               ;   in Loop: Header=BB7_2 Depth=1
	add	w26, w26, #2
	add	x21, x24, w26, sxtw #3
	ldr	x0, [x21]
	ldrb	w8, [x0]
	cmp	w8, #45
	mov	x9, #4294967296                 ; =0x100000000
	mov	x10, x24
	b.eq	LBB7_2
	b	LBB7_16
LBB7_14:
	mov	w19, #1                         ; =0x1
	mov	w26, #1                         ; =0x1
	b	LBB7_16
LBB7_15:
	ldr	x19, [sp, #24]                  ; 8-byte Folded Reload
LBB7_16:
	add	w8, w26, #2
Lloh26:
	adrp	x9, _argc@PAGE
Lloh27:
	ldr	w9, [x9, _argc@PAGEOFF]
	cmp	w8, w9
	b.le	LBB7_18
LBB7_17:
Lloh28:
	adrp	x8, l_.str.14@PAGE
Lloh29:
	add	x8, x8, l_.str.14@PAGEOFF
	str	x8, [sp]
Lloh30:
	adrp	x0, l_.str.6@PAGE
Lloh31:
	add	x0, x0, l_.str.6@PAGEOFF
	b	LBB7_23
LBB7_18:
	bl	_libmin_atof
	fmov	d9, d0
Lloh32:
	adrp	x8, _argv@PAGE
Lloh33:
	add	x8, x8, _argv@PAGEOFF
	add	x8, x8, w26, sxtw #3
	ldr	x0, [x8, #8]
	bl	_libmin_atof
	fmov	d8, d0
	sub	w8, w19, #1
Lloh34:
	adrp	x9, _methods@PAGE
Lloh35:
	add	x9, x9, _methods@PAGEOFF
	ldr	x20, [x9, w8, uxtw #3]
	cmp	w19, #4
	b.ne	LBB7_21
; %bb.19:
	mov	x8, #3073                       ; =0xc01
	movk	x8, #45041, lsl #16
	movk	x8, #13617, lsl #32
	movk	x8, #16357, lsl #48
	fmov	d0, x8
	fcmp	d8, d0
	b.le	LBB7_21
; %bb.20:
	str	x8, [sp]
Lloh36:
	adrp	x0, l_.str.15@PAGE
Lloh37:
	add	x0, x0, l_.str.15@PAGEOFF
	b	LBB7_23
LBB7_21:
	fcmp	d8, #0.0
	fmov	d0, #1.00000000
	fccmp	d8, d0, #0, pl
	b.lt	LBB7_25
; %bb.22:
	str	d8, [sp]
Lloh38:
	adrp	x0, l_.str.16@PAGE
Lloh39:
	add	x0, x0, l_.str.16@PAGEOFF
LBB7_23:
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
LBB7_24:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB7_25:
	fmov	d0, d9
	bl	_libmin_fabs
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16409, lsl #48
	fmov	d11, x8
	fdiv	d10, d0, d11
	fmov	d0, d10
	bl	_libmin_floor
	fsub	d0, d10, d0
	fadd	d0, d0, d0
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d1, x8
	fmul	d2, d0, d1
	fnmul	d0, d0, d1
	fcmp	d9, #0.0
	fcsel	d12, d2, d0, gt
	fsub	d0, d11, d12
	fcmp	d12, d1
	fcsel	d9, d0, d12, gt
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16377, lsl #48
	fmov	d11, x8
	fmov	d0, d11
	fmov	d1, d8
	fmov	d2, d9
	mov	w0, #0                          ; =0x0
	blr	x20
	fmov	d10, d0
	fsub	d0, d11, d0
	bl	_libmin_fabs
	adrp	x21, _derror@PAGE
	ldr	d1, [x21, _derror@PAGEOFF]
	fcmp	d0, d1
	b.lt	LBB7_28
; %bb.26:
	mov	w8, #1                          ; =0x1
	mov	x22, #12010                     ; =0x2eea
	movk	x22, #21572, lsl #16
	movk	x22, #8699, lsl #32
	movk	x22, #16393, lsl #48
Lloh40:
	adrp	x19, l_.str.17@PAGE
Lloh41:
	add	x19, x19, l_.str.17@PAGEOFF
LBB7_27:                                ; =>This Inner Loop Header: Depth=1
	add	w23, w8, #1
	fneg	d0, d10
	fmov	d1, x22
	fcmp	d12, d1
	fcsel	d0, d0, d10, gt
	str	x8, [sp]
	str	d0, [sp, #8]
	mov	x0, x19
	bl	_libmin_printf
	fmov	d0, d10
	fmov	d1, d8
	fmov	d2, d9
	mov	w0, #0                          ; =0x0
	blr	x20
	fmov	d11, d0
	fsub	d0, d10, d0
	bl	_libmin_fabs
	ldr	d1, [x21, _derror@PAGEOFF]
	fcmp	d0, d1
	fmov	d10, d11
	mov	x8, x23
	b.ge	LBB7_27
LBB7_28:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	b	LBB7_24
LBB7_29:
	ldr	x8, [x21]
	str	x8, [sp]
Lloh42:
	adrp	x0, l_.str.13@PAGE
Lloh43:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
	b	LBB7_17
LBB7_30:
	str	x19, [sp]
Lloh44:
	adrp	x0, l_.str.12@PAGE
Lloh45:
	add	x0, x0, l_.str.12@PAGEOFF
	b	LBB7_23
	.loh AdrpLdr	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpLdr	Lloh26, Lloh27
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.cfi_endproc
                                        ; -- End function
	.globl	_kepler                         ; -- Begin function kepler
	.p2align	2
_kepler:                                ; @kepler
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-112]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	.cfi_offset b12, -88
	.cfi_offset b13, -96
	.cfi_offset b14, -104
	.cfi_offset b15, -112
	cmp	w1, #4
	b.ls	LBB8_2
; %bb.1:
	mov	w20, #-1                        ; =0xffffffff
	b	LBB8_9
LBB8_2:
	fmov	d9, d1
	fmov	d10, d0
	mov	x8, #3073                       ; =0xc01
	movk	x8, #45041, lsl #16
	movk	x8, #13617, lsl #32
	movk	x8, #16357, lsl #48
	fmov	d0, x8
	fcmp	d1, d0
	mov	w20, #-1                        ; =0xffffffff
	ccmp	w1, #3, #0, gt
	b.eq	LBB8_9
; %bb.3:
	fcmp	d9, #0.0
	b.mi	LBB8_9
; %bb.4:
	fmov	d12, #1.00000000
	fcmp	d9, d12
	b.ge	LBB8_9
; %bb.5:
	fmov	d8, d2
	mov	x19, x0
Lloh46:
	adrp	x8, _methods@PAGE
Lloh47:
	add	x8, x8, _methods@PAGEOFF
	ldr	x21, [x8, w1, uxtw #3]
	fmov	d0, d10
	bl	_libmin_fabs
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16409, lsl #48
	fmov	d13, x8
	fdiv	d11, d0, d13
	fmov	d0, d11
	bl	_libmin_floor
	fsub	d0, d11, d0
	fadd	d0, d0, d0
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d11, x8
	fmul	d1, d0, d11
	fnmul	d0, d0, d11
	fcmp	d10, #0.0
	fcsel	d0, d1, d0, gt
	fcmp	d0, #0.0
	fmov	d14, #-1.00000000
	fcsel	d12, d12, d14, gt
	bl	_libmin_fabs
	fsub	d1, d13, d0
	fcmp	d0, d11
	fcsel	d10, d1, d0, gt
	fcsel	d12, d14, d12, gt
	mov	x8, #12010                      ; =0x2eea
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16377, lsl #48
	fmov	d11, x8
	fmov	d0, d11
	fmov	d1, d9
	fmov	d2, d10
	mov	w0, #0                          ; =0x0
	blr	x21
	str	d0, [x19]
	fsub	d0, d11, d0
	bl	_libmin_fabs
	mov	w20, #0                         ; =0x0
	fcmp	d0, d8
	b.lt	LBB8_8
; %bb.6:
	mov	w20, #0                         ; =0x0
LBB8_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d11, [x19]
	add	w20, w20, #1
	fmov	d0, d11
	fmov	d1, d9
	fmov	d2, d10
	mov	w0, #0                          ; =0x0
	blr	x21
	str	d0, [x19]
	fsub	d0, d11, d0
	bl	_libmin_fabs
	fcmp	d0, d8
	b.ge	LBB8_7
LBB8_8:
	ldr	d0, [x19]
	fmul	d0, d12, d0
	str	d0, [x19]
	movi	d0, #0000000000000000
	movi	d1, #0000000000000000
	movi	d2, #0000000000000000
	mov	w0, #1                          ; =0x1
	blr	x21
LBB8_9:
	mov	x0, x20
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #112            ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh46, Lloh47
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.p2align	3, 0x0                          ; @binary.scale
_binary.scale:
	.quad	0x3fe921fb54442eea              ; double 0.78539816339750002

.zerofill __DATA,__bss,_e_series.n,4,2  ; @e_series.n
.zerofill __DATA,__bss,_j_series.n,4,2  ; @j_series.n
	.globl	_argc                           ; @argc
	.p2align	2, 0x0
_argc:
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"kepler"

l_.str.1:                               ; @.str.1
	.asciz	"-m"

l_.str.2:                               ; @.str.2
	.asciz	"3"

l_.str.3:                               ; @.str.3
	.asciz	"0.34"

l_.str.4:                               ; @.str.4
	.asciz	"0.25"

	.section	__DATA,__data
	.globl	_argv                           ; @argv
	.p2align	3, 0x0
_argv:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"-h"

l_.str.6:                               ; @.str.6
	.asciz	"%s\n"

l_.str.7:                               ; @.str.7
	.asciz	"kepler [-h -v -a <.nnnn...> -m <k>] M e\n-h: print this helpful message\n-v: print version number and exit\n-a: obtain solution to accuracy of  < .nnnn (default .0000001)\n-m: use selected calculation method k, where\n\tk = 1: Simple iteration.\n\tk = 2: Newton's method.\n\tk = 3: Binary search.\n\tk = 4: Series in powers of e. (e<.6627434193.)\n\tk = 5: Fourier Bessel series.\nM = mean anomaly (radians)\ne = orbit eccentricty."

l_.str.8:                               ; @.str.8
	.asciz	"-v"

l_.str.9:                               ; @.str.9
	.asciz	"1.11"

l_.str.10:                              ; @.str.10
	.asciz	"-a"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @derror
_derror:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7

	.section	__TEXT,__cstring,cstring_literals
l_.str.11:                              ; @.str.11
	.asciz	"Warning: requested precision may exceed implementation limit.\n"

l_.str.12:                              ; @.str.12
	.asciz	"Bad method number %d\n"

l_.str.13:                              ; @.str.13
	.asciz	"kepler: Unknown option %s\n"

l_.str.14:                              ; @.str.14
	.asciz	"kepler [-h -v -a <.nnnn...> -m <k>] M e"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @methods
_methods:
	.quad	_strict_iteration
	.quad	_newton
	.quad	_binary
	.quad	_e_series
	.quad	_j_series

	.section	__TEXT,__cstring,cstring_literals
l_.str.15:                              ; @.str.15
	.asciz	"e cannot exceed %f for this method.\n"

l_.str.16:                              ; @.str.16
	.asciz	"Eccentricity %f out of range.\n"

l_.str.17:                              ; @.str.17
	.asciz	"n = %d\tE = %f\n"

.subsections_via_symbols
