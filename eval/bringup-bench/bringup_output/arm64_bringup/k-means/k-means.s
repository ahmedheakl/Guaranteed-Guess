	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_calculateNearst                ; -- Begin function calculateNearst
	.p2align	2
_calculateNearst:                       ; @calculateNearst
	.cfi_startproc
; %bb.0:
	cmp	w2, #1
	b.lt	LBB0_4
; %bb.1:
	mov	x8, #0                          ; =0x0
	ldp	d0, d1, [x0]
	mov	w9, w2
	add	x10, x1, #8
	mov	w0, #-1                         ; =0xffffffff
	mov	x11, #9218868437227405311       ; =0x7fefffffffffffff
	fmov	d2, x11
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldp	d3, d4, [x10, #-8]
	fsub	d3, d3, d0
	fsub	d4, d4, d1
	fmul	d4, d4, d4
	fmadd	d3, d3, d3, d4
	fcmp	d3, d2
	fcsel	d2, d3, d2, mi
	csel	w0, w8, w0, mi
	add	x8, x8, #1
	add	x10, x10, #24
	cmp	x9, x8
	b.ne	LBB0_2
; %bb.3:
	ret
LBB0_4:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_calculateCentroid              ; -- Begin function calculateCentroid
	.p2align	2
_calculateCentroid:                     ; @calculateCentroid
	.cfi_startproc
; %bb.0:
	stp	xzr, xzr, [x2]
	str	x1, [x2, #16]
	cbz	x1, LBB1_3
; %bb.1:
	cmp	x1, #4
	b.hs	LBB1_4
; %bb.2:
	mov	x8, #0                          ; =0x0
	movi.2d	v0, #0000000000000000
	b	LBB1_7
LBB1_3:
	movi.2d	v0, #0000000000000000
	b	LBB1_9
LBB1_4:
	and	x8, x1, #0xfffffffffffffffc
	add	x9, x0, #48
	movi.2d	v0, #0000000000000000
	mov	x10, x8
LBB1_5:                                 ; =>This Inner Loop Header: Depth=1
	stur	wzr, [x9, #-32]
	stur	wzr, [x9, #-8]
	str	wzr, [x9, #16]
	str	wzr, [x9, #40]
	ldur	q1, [x9, #-48]
	ldur	q2, [x9, #-24]
	ldr	q3, [x9]
	ldur	q4, [x9, #24]
	fadd.2d	v0, v0, v1
	fadd.2d	v0, v0, v2
	fadd.2d	v0, v0, v3
	fadd.2d	v0, v0, v4
	add	x9, x9, #96
	subs	x10, x10, #4
	b.ne	LBB1_5
; %bb.6:
	cmp	x8, x1
	b.eq	LBB1_9
LBB1_7:
	sub	x9, x1, x8
	mov	w10, #24                        ; =0x18
	madd	x8, x8, x10, x0
	add	x8, x8, #16
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	ldur	q1, [x8, #-16]
	fadd.2d	v0, v1, v0
	str	wzr, [x8], #24
	subs	x9, x9, #1
	b.ne	LBB1_8
LBB1_9:
	ucvtf	d1, x1
	dup.2d	v1, v1[0]
	fdiv.2d	v0, v0, v1
	str	q0, [x2]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_kMeans                         ; -- Begin function kMeans
	.p2align	2
_kMeans:                                ; @kMeans
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
	mov	x19, x1
	mov	x21, x0
	cmp	w2, #1
	b.gt	LBB2_4
; %bb.1:
	mov	w0, #24                         ; =0x18
	bl	_libmin_malloc
	mov	x20, x0
	mov	w1, #0                          ; =0x0
	mov	w2, #24                         ; =0x18
	bl	_libmin_memset
	stp	xzr, xzr, [x20]
	str	x19, [x20, #16]
	cbz	x19, LBB2_27
; %bb.2:
	cmp	x19, #4
	b.hs	LBB2_28
; %bb.3:
	mov	x8, #0                          ; =0x0
	movi.2d	v0, #0000000000000000
	b	LBB2_31
LBB2_4:
	mov	x22, x2
	mov	w24, w2
	add	x8, x24, w2, uxtw #1
	lsl	x23, x8, #3
	mov	x0, x23
	bl	_libmin_malloc
	mov	x20, x0
	mov	w1, #0                          ; =0x0
	mov	x2, x23
	bl	_libmin_memset
	cmp	x24, x19
	b.hs	LBB2_24
; %bb.5:
	str	x23, [sp, #8]                   ; 8-byte Folded Spill
	add	x23, x21, #16
	mov	x25, x19
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	udiv	w8, w0, w22
	msub	w8, w8, w22, w0
	str	w8, [x23], #24
	subs	x25, x25, #1
	b.ne	LBB2_6
; %bb.7:
	mov	x8, #22859                      ; =0x594b
	movk	x8, #14470, lsl #16
	movk	x8, #50646, lsl #32
	movk	x8, #13421, lsl #48
	umulh	x8, x19, x8
	lsr	x25, x8, #11
	and	x26, x24, #0xfffffffe
	add	x27, x21, #16
	add	x28, x20, #8
	mov	w23, #24                        ; =0x18
	b	LBB2_9
LBB2_8:                                 ;   in Loop: Header=BB2_9 Depth=1
	cmp	x8, x25
	b.ls	LBB2_38
LBB2_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_10 Depth 2
                                        ;     Child Loop BB2_14 Depth 2
                                        ;     Child Loop BB2_17 Depth 2
                                        ;     Child Loop BB2_20 Depth 2
                                        ;       Child Loop BB2_21 Depth 3
	mov	x0, x20
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	_bzero
	mov	x8, x27
	mov	x9, x19
LBB2_10:                                ;   Parent Loop BB2_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x10, [x8]
	smaddl	x10, w10, w23, x20
	ldur	q0, [x8, #-16]
	ldr	q1, [x10]
	fadd.2d	v0, v0, v1
	str	q0, [x10]
	ldr	x11, [x10, #16]
	add	x11, x11, #1
	str	x11, [x10, #16]
	add	x8, x8, #24
	subs	x9, x9, #1
	b.ne	LBB2_10
; %bb.11:                               ;   in Loop: Header=BB2_9 Depth=1
	cmp	w22, #2
	b.hs	LBB2_13
; %bb.12:                               ;   in Loop: Header=BB2_9 Depth=1
	mov	x9, #0                          ; =0x0
	b	LBB2_16
LBB2_13:                                ;   in Loop: Header=BB2_9 Depth=1
	mov	x8, x26
	mov	x10, x20
	mov	x9, x20
LBB2_14:                                ;   Parent Loop BB2_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld3.2d	{ v0, v1, v2 }, [x9], #48
	ucvtf.2d	v3, v2
	fdiv.2d	v4, v0, v3
	fdiv.2d	v0, v1, v3
	zip1.2d	v1, v4, v0
	str	q1, [x10]
	zip2.2d	v0, v4, v0
	stur	q0, [x10, #24]
	mov	x10, x9
	subs	x8, x8, #2
	b.ne	LBB2_14
; %bb.15:                               ;   in Loop: Header=BB2_9 Depth=1
	mov	x9, x26
	cmp	x26, x24
	b.eq	LBB2_18
LBB2_16:                                ;   in Loop: Header=BB2_9 Depth=1
	umaddl	x8, w9, w23, x20
	sub	x9, x24, x9
LBB2_17:                                ;   Parent Loop BB2_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x8, #16]
	ucvtf	d0, d0
	ldr	q1, [x8]
	dup.2d	v0, v0[0]
	fdiv.2d	v0, v1, v0
	str	q0, [x8], #24
	subs	x9, x9, #1
	b.ne	LBB2_17
LBB2_18:                                ;   in Loop: Header=BB2_9 Depth=1
	mov	x9, #0                          ; =0x0
	mov	x8, #0                          ; =0x0
	b	LBB2_20
LBB2_19:                                ;   in Loop: Header=BB2_20 Depth=2
	add	x9, x9, #1
	cmp	x9, x19
	b.eq	LBB2_8
LBB2_20:                                ;   Parent Loop BB2_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_21 Depth 3
	mov	x11, #0                         ; =0x0
	madd	x10, x9, x23, x21
	ldp	d0, d1, [x10]
	mov	w10, #-1                        ; =0xffffffff
	mov	x12, #9218868437227405311       ; =0x7fefffffffffffff
	fmov	d2, x12
	mov	x12, x28
LBB2_21:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_20 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	d3, d4, [x12, #-8]
	fsub	d3, d3, d0
	fsub	d4, d4, d1
	fmul	d4, d4, d4
	fmadd	d3, d3, d3, d4
	fcmp	d3, d2
	fcsel	d2, d3, d2, mi
	csel	w10, w11, w10, mi
	add	x11, x11, #1
	add	x12, x12, #24
	cmp	x24, x11
	b.ne	LBB2_21
; %bb.22:                               ;   in Loop: Header=BB2_20 Depth=2
	madd	x11, x9, x23, x21
	ldr	w12, [x11, #16]!
	cmp	w10, w12
	b.eq	LBB2_19
; %bb.23:                               ;   in Loop: Header=BB2_20 Depth=2
	add	x8, x8, #1
	str	w10, [x11]
	b	LBB2_19
LBB2_24:
	cbz	x19, LBB2_38
; %bb.25:
	cmp	x19, #5
	b.hs	LBB2_34
; %bb.26:
	mov	x8, #0                          ; =0x0
	b	LBB2_36
LBB2_27:
	movi.2d	v0, #0000000000000000
	b	LBB2_33
LBB2_28:
	and	x8, x19, #0xfffffffffffffffc
	add	x9, x21, #48
	movi.2d	v0, #0000000000000000
	mov	x10, x8
LBB2_29:                                ; =>This Inner Loop Header: Depth=1
	stur	wzr, [x9, #-32]
	stur	wzr, [x9, #-8]
	str	wzr, [x9, #16]
	str	wzr, [x9, #40]
	ldur	q1, [x9, #-48]
	ldur	q2, [x9, #-24]
	ldr	q3, [x9]
	ldur	q4, [x9, #24]
	fadd.2d	v0, v0, v1
	fadd.2d	v0, v0, v2
	fadd.2d	v0, v0, v3
	fadd.2d	v0, v0, v4
	add	x9, x9, #96
	subs	x10, x10, #4
	b.ne	LBB2_29
; %bb.30:
	cmp	x8, x19
	b.eq	LBB2_33
LBB2_31:
	sub	x9, x19, x8
	mov	w10, #24                        ; =0x18
	madd	x8, x8, x10, x21
	add	x8, x8, #16
LBB2_32:                                ; =>This Inner Loop Header: Depth=1
	ldur	q1, [x8, #-16]
	fadd.2d	v0, v0, v1
	str	wzr, [x8], #24
	subs	x9, x9, #1
	b.ne	LBB2_32
LBB2_33:
	ucvtf	d1, x19
	dup.2d	v1, v1[0]
	fdiv.2d	v0, v0, v1
	str	q0, [x20]
	b	LBB2_38
LBB2_34:
	mov	x9, #0                          ; =0x0
	ands	x8, x19, #0x3
	mov	w10, #4                         ; =0x4
	csel	x8, x10, x8, eq
	sub	x8, x19, x8
	add	x10, x21, #48
	mov	w11, #1                         ; =0x1
	dup.2d	v0, x11
	mov	x11, x20
LBB2_35:                                ; =>This Inner Loop Header: Depth=1
	sub	x12, x10, #48
	ld3.2d	{ v1, v2, v3 }, [x12]
	ld3.2d	{ v4, v5, v6 }, [x10]
	mov.16b	v3, v0
	mov.16b	v6, v0
	add	x12, x11, #96
	st3.2d	{ v1, v2, v3 }, [x11], #48
	st3.2d	{ v4, v5, v6 }, [x11]
	add	w11, w9, #1
	add	w13, w9, #2
	add	w14, w9, #3
	stur	w9, [x10, #-32]
	stur	w11, [x10, #-8]
	add	x9, x9, #4
	str	w13, [x10, #16]
	str	w14, [x10, #40]
	add	x10, x10, #96
	mov	x11, x12
	cmp	x8, x9
	b.ne	LBB2_35
LBB2_36:
	add	x9, x8, x8, lsl #1
	lsl	x9, x9, #3
	mov	w10, #1                         ; =0x1
LBB2_37:                                ; =>This Inner Loop Header: Depth=1
	add	x11, x21, x9
	add	x12, x20, x9
	ldr	q0, [x11]
	str	q0, [x12]
	str	x10, [x12, #16]
	str	w8, [x11, #16]
	add	x8, x8, #1
	add	x9, x9, #24
	cmp	x19, x8
	b.ne	LBB2_37
LBB2_38:
	mov	x0, x20
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printEPS                       ; -- Begin function printEPS
	.p2align	2
_printEPS:                              ; @printEPS
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	stp	d13, d12, [sp, #48]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
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
	mov	x23, x3
	str	x2, [sp, #24]                   ; 8-byte Folded Spill
	mov	x21, x1
	mov	x22, x0
	add	w8, w3, w3, lsl #1
	sbfiz	x0, x8, #3, #32
	bl	_libmin_malloc
	mov	w8, w23
	stp	x8, x0, [sp, #32]               ; 16-byte Folded Spill
	cmp	w23, #1
	b.lt	LBB3_3
; %bb.1:
	mov	x8, #0                          ; =0x0
	mov	w9, #0                          ; =0x0
	scvtf	d0, w23
	ldp	x12, x10, [sp, #32]             ; 16-byte Folded Reload
	add	x10, x10, #8
	ubfiz	x11, x23, #3, #32
	sub	x11, x11, x12
	mov	w12, #3                         ; =0x3
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	sdiv	w13, w12, w23
	msub	w13, w13, w23, w12
	scvtf	d1, w13
	fdiv	d3, d1, d0
	sdiv	w13, w8, w23
	msub	w13, w13, w23, w8
	scvtf	d1, w13
	fdiv	d1, d1, d0
	sdiv	w13, w9, w23
	msub	w13, w13, w23, w9
	scvtf	d2, w13
	fdiv	d2, d2, d0
	stp	d3, d1, [x10, #-8]
	str	d2, [x10, #8]
	add	w9, w9, #9
	add	x8, x8, #7
	add	w12, w12, #3
	add	x10, x10, #24
	cmp	x11, x8
	b.ne	LBB3_2
LBB3_3:
	cbz	x21, LBB3_6
; %bb.4:
	add	x8, x22, #8
	mov	x9, #4503599627370496           ; =0x10000000000000
	fmov	d9, x9
	mov	x9, #9218868437227405311        ; =0x7fefffffffffffff
	fmov	d12, x9
	mov	x9, x21
	fmov	d10, d9
	fmov	d11, d12
LBB3_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	d0, [x8, #-8]
	fcmp	d9, d0
	fcsel	d9, d0, d9, mi
	fcmp	d12, d0
	fcsel	d12, d0, d12, gt
	ldr	d0, [x8], #24
	fcmp	d10, d0
	fcsel	d10, d0, d10, mi
	fcmp	d11, d0
	fcsel	d11, d0, d11, gt
	subs	x9, x9, #1
	b.ne	LBB3_5
	b	LBB3_7
LBB3_6:
	mov	x8, #4503599627370496           ; =0x10000000000000
	fmov	d10, x8
	mov	x8, #9218868437227405311        ; =0x7fefffffffffffff
	fmov	d11, x8
	fmov	d9, d10
	fmov	d12, d11
LBB3_7:
	fsub	d0, d9, d12
	mov	x8, #4645744490609377280        ; =0x4079000000000000
	fmov	d1, x8
	fdiv	d0, d1, d0
	fsub	d2, d10, d11
	fdiv	d1, d1, d2
	fcmp	d0, d1
	fcsel	d8, d1, d0, gt
	mov	w8, #410                        ; =0x19a
	stp	x8, x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	cmp	w23, #1
	b.lt	LBB3_15
; %bb.8:
	mov	x26, #0                         ; =0x0
	fadd	d0, d9, d12
	fmov	d1, #0.50000000
	fmul	d9, d0, d1
	fadd	d0, d11, d10
	add	x25, x22, #16
	fmul	d10, d0, d1
Lloh4:
	adrp	x22, l_.str.2@PAGE
Lloh5:
	add	x22, x22, l_.str.2@PAGEOFF
	mov	w28, #24                        ; =0x18
	mov	x19, #4641240890982006784       ; =0x4069000000000000
Lloh6:
	adrp	x23, l_.str.4@PAGE
Lloh7:
	add	x23, x23, l_.str.4@PAGEOFF
Lloh8:
	adrp	x24, l_.str.3@PAGE
Lloh9:
	add	x24, x24, l_.str.3@PAGEOFF
	b	LBB3_10
LBB3_9:                                 ;   in Loop: Header=BB3_10 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	madd	x8, x26, x28, x8
	ldp	d0, d1, [x8]
	fsub	d0, d0, d9
	fmov	d2, x19
	fmadd	d0, d0, d8, d2
	fsub	d1, d1, d10
	fmadd	d1, d1, d8, d2
	stp	d0, d1, [sp]
	mov	x0, x23
	bl	_libmin_printf
	add	x26, x26, #1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	cmp	x26, x8
	b.eq	LBB3_15
LBB3_10:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_13 Depth 2
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	madd	x8, x26, x28, x8
	ldr	q0, [x8]
	ldr	d1, [x8, #16]
	str	d1, [sp, #16]
	str	q0, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x21, LBB3_9
; %bb.11:                               ;   in Loop: Header=BB3_10 Depth=1
	mov	x27, x25
	mov	x20, x21
	b	LBB3_13
LBB3_12:                                ;   in Loop: Header=BB3_13 Depth=2
	add	x27, x27, #24
	subs	x20, x20, #1
	b.eq	LBB3_9
LBB3_13:                                ;   Parent Loop BB3_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x27]
	cmp	x26, x8
	b.ne	LBB3_12
; %bb.14:                               ;   in Loop: Header=BB3_13 Depth=2
	ldp	d0, d1, [x27, #-16]
	fsub	d0, d0, d9
	fmov	d2, x19
	fmadd	d0, d0, d8, d2
	fsub	d1, d1, d10
	fmadd	d1, d1, d8, d2
	stp	d0, d1, [sp]
	mov	x0, x24
	bl	_libmin_printf
	b	LBB3_12
LBB3_15:
Lloh10:
	adrp	x0, l_.str.5@PAGE
Lloh11:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #192
	b	_libmin_free
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	_test2                          ; -- Begin function test2
	.p2align	2
_test2:                                 ; @test2
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-96]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	mov	w20, #13824                     ; =0x3600
	movk	w20, #366, lsl #16
	mov	w0, #13824                      ; =0x3600
	movk	w0, #366, lsl #16
	bl	_libmin_malloc
	mov	x19, x0
	mov	x21, #0                         ; =0x0
	mov	x22, #281474972516352           ; =0xffffffc00000
	movk	x22, #16863, lsl #48
	fmov	d9, #20.00000000
	mov	x23, #11544                     ; =0x2d18
	movk	x23, #21572, lsl #16
	movk	x23, #8699, lsl #32
	movk	x23, #16409, lsl #48
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d8, x22
	fdiv	d0, d0, d8
	fmul	d10, d0, d9
	bl	_libmin_rand
	ucvtf	d0, w0
	fdiv	d0, d0, d8
	fmov	d1, x23
	fmul	d8, d0, d1
	fmov	d0, d8
	bl	_libmin_cos
	fmul	d0, d0, d10
	add	x24, x19, x21
	str	d0, [x24]
	fmov	d0, d8
	bl	_libmin_sin
	fmul	d0, d10, d0
	str	d0, [x24, #8]
	add	x21, x21, #24
	cmp	x20, x21
	b.ne	LBB4_1
; %bb.2:
	mov	x0, x19
	mov	w1, #16960                      ; =0x4240
	movk	w1, #15, lsl #16
	mov	w2, #11                         ; =0xb
	bl	_kMeans
	mov	x20, x0
	mov	x0, x19
	mov	w1, #16960                      ; =0x4240
	movk	w1, #15, lsl #16
	mov	x2, x20
	mov	w3, #11                         ; =0xb
	bl	_printEPS
	mov	x0, x19
	bl	_libmin_free
	mov	x0, x20
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #96             ; 16-byte Folded Reload
	b	_libmin_free
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-96]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	w0, #4800                       ; =0x12c0
	bl	_libmin_malloc
	mov	x19, x0
	mov	x20, #-4800                     ; =0xffffffffffffed40
	mov	x21, #281474972516352           ; =0xffffffc00000
	movk	x21, #16863, lsl #48
	fmov	d9, #20.00000000
	mov	x22, #11544                     ; =0x2d18
	movk	x22, #21572, lsl #16
	movk	x22, #8699, lsl #32
	movk	x22, #16409, lsl #48
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d8, x21
	fdiv	d0, d0, d8
	fmul	d10, d0, d9
	bl	_libmin_rand
	ucvtf	d0, w0
	fdiv	d0, d0, d8
	fmov	d1, x22
	fmul	d8, d0, d1
	fmov	d0, d8
	bl	_libmin_cos
	fmul	d0, d0, d10
	add	x23, x19, x20
	str	d0, [x23, #4800]
	fmov	d0, d8
	bl	_libmin_sin
	fmul	d0, d10, d0
	str	d0, [x23, #4808]
	adds	x20, x20, #24
	b.ne	LBB5_1
; %bb.2:
	mov	x0, x19
	mov	w1, #200                        ; =0xc8
	mov	w2, #5                          ; =0x5
	bl	_kMeans
	mov	x20, x0
	mov	x0, x19
	mov	w1, #200                        ; =0xc8
	mov	x2, x20
	mov	w3, #5                          ; =0x5
	bl	_printEPS
	mov	x0, x19
	bl	_libmin_free
	mov	x0, x20
	bl	_libmin_free
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #96             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%%!PS-Adobe-3.0 EPSF-3.0\n%%%%BoundingBox: -5 -5 %d %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"/l {rlineto} def /m {rmoveto} def\n/c { .25 sub exch .25 sub exch .5 0 360 arc fill } def\n/s { moveto -2 0 m 2 2 l 2 -2 l -2 -2 l closepath \tgsave 1 setgray fill grestore gsave 3 setlinewidth 1 setgray stroke grestore 0 setgray stroke }def\n"

l_.str.2:                               ; @.str.2
	.asciz	"%g %g %g setrgbcolor\n"

l_.str.3:                               ; @.str.3
	.asciz	"%.3f %.3f c\n"

l_.str.4:                               ; @.str.4
	.asciz	"\n0 setgray %g %g s\n"

l_.str.5:                               ; @.str.5
	.asciz	"\n%%%%EOF\n"

.subsections_via_symbols
