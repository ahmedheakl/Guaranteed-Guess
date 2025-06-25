	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_derivateWRTWeight              ; -- Begin function derivateWRTWeight
	.p2align	2
_derivateWRTWeight:                     ; @derivateWRTWeight
	.cfi_startproc
; %bb.0:
                                        ; kill: def $d1 killed $d1 def $q1
                                        ; kill: def $d0 killed $d0 def $q0
	mov	x8, #0                          ; =0x0
	dup.2d	v2, v0[0]
	dup.2d	v4, v1[0]
	movi	d3, #0000000000000000
Lloh0:
	adrp	x9, _X@PAGE
Lloh1:
	add	x9, x9, _X@PAGEOFF
Lloh2:
	adrp	x10, _Y@PAGE
Lloh3:
	add	x10, x10, _Y@PAGEOFF
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x11, x9, x8
	ldp	q5, q6, [x11]
	ldp	q7, q16, [x11, #32]
	add	x11, x10, x8
	ldp	q17, q18, [x11]
	ldp	q19, q20, [x11, #32]
	mov.16b	v21, v4
	fmla.2d	v21, v5, v2
	mov.16b	v22, v4
	fmla.2d	v22, v6, v2
	mov.16b	v23, v4
	fmla.2d	v23, v7, v2
	mov.16b	v24, v4
	fmla.2d	v24, v16, v2
	fsub.2d	v17, v17, v21
	fsub.2d	v18, v18, v22
	fsub.2d	v19, v19, v23
	fsub.2d	v20, v20, v24
	fmul.2d	v5, v5, v17
	mov	d17, v5[1]
	fmul.2d	v6, v6, v18
	mov	d18, v6[1]
	fmul.2d	v7, v7, v19
	mov	d19, v7[1]
	fmul.2d	v16, v16, v20
	mov	d20, v16[1]
	fadd	d3, d3, d5
	fadd	d3, d3, d17
	fadd	d3, d3, d6
	fadd	d3, d3, d18
	fadd	d3, d3, d7
	fadd	d3, d3, d19
	fadd	d3, d3, d16
	fadd	d3, d3, d20
	add	x8, x8, #64
	cmp	x8, #384
	b.ne	LBB0_1
; %bb.2:
Lloh4:
	adrp	x8, _X@PAGE+384
Lloh5:
	add	x8, x8, _X@PAGEOFF+384
Lloh6:
	adrp	x9, _Y@PAGE+384
Lloh7:
	add	x9, x9, _Y@PAGEOFF+384
	ldp	d2, d4, [x8]
	fmadd	d5, d0, d2, d1
	ldp	d6, d7, [x9]
	fsub	d5, d6, d5
	fmadd	d2, d2, d5, d3
	fmadd	d0, d0, d4, d1
	fsub	d0, d7, d0
	fmadd	d0, d4, d0, d2
	fmov	d1, #-2.00000000
	fmul	d0, d0, d1
	mov	x8, #4632233691727265792        ; =0x4049000000000000
	fmov	d1, x8
	fdiv	d0, d0, d1
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_derivateWRTBias                ; -- Begin function derivateWRTBias
	.p2align	2
_derivateWRTBias:                       ; @derivateWRTBias
	.cfi_startproc
; %bb.0:
                                        ; kill: def $d1 killed $d1 def $q1
                                        ; kill: def $d0 killed $d0 def $q0
	mov	x8, #0                          ; =0x0
	dup.2d	v3, v0[0]
	dup.2d	v4, v1[0]
	movi	d2, #0000000000000000
Lloh8:
	adrp	x9, _Y@PAGE
Lloh9:
	add	x9, x9, _Y@PAGEOFF
Lloh10:
	adrp	x10, _X@PAGE
Lloh11:
	add	x10, x10, _X@PAGEOFF
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x11, x9, x8
	ldp	q5, q6, [x11]
	ldp	q7, q16, [x11, #32]
	add	x11, x10, x8
	ldp	q17, q18, [x11]
	ldp	q19, q20, [x11, #32]
	mov.16b	v21, v4
	fmla.2d	v21, v17, v3
	mov.16b	v17, v4
	fmla.2d	v17, v18, v3
	mov.16b	v18, v4
	fmla.2d	v18, v19, v3
	mov.16b	v19, v4
	fmla.2d	v19, v20, v3
	fsub.2d	v5, v5, v21
	mov	d20, v5[1]
	fsub.2d	v6, v6, v17
	mov	d17, v6[1]
	fsub.2d	v7, v7, v18
	mov	d18, v7[1]
	fsub.2d	v16, v16, v19
	mov	d19, v16[1]
	fadd	d2, d2, d5
	fadd	d2, d2, d20
	fadd	d2, d2, d6
	fadd	d2, d2, d17
	fadd	d2, d2, d7
	fadd	d2, d2, d18
	fadd	d2, d2, d16
	fadd	d2, d2, d19
	add	x8, x8, #64
	cmp	x8, #384
	b.ne	LBB1_1
; %bb.2:
Lloh12:
	adrp	x8, _Y@PAGE+384
Lloh13:
	add	x8, x8, _Y@PAGEOFF+384
Lloh14:
	adrp	x9, _X@PAGE+384
Lloh15:
	add	x9, x9, _X@PAGEOFF+384
	ldp	d3, d4, [x9]
	fmadd	d3, d0, d3, d1
	ldp	d5, d6, [x8]
	fsub	d3, d5, d3
	fadd	d2, d2, d3
	fmadd	d0, d0, d4, d1
	fsub	d0, d6, d0
	fadd	d0, d2, d0
	fmov	d1, #-2.00000000
	fmul	d0, d0, d1
	mov	x8, #4632233691727265792        ; =0x4049000000000000
	fmov	d1, x8
	fdiv	d0, d0, d1
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_gradientDescent                ; -- Begin function gradientDescent
	.p2align	2
_gradientDescent:                       ; @gradientDescent
	.cfi_startproc
; %bb.0:
	mov	w8, #0                          ; =0x0
	ldr	d0, [x1]
Lloh16:
	adrp	x9, _X@PAGE
Lloh17:
	add	x9, x9, _X@PAGEOFF
Lloh18:
	adrp	x10, _Y@PAGE
Lloh19:
	add	x10, x10, _Y@PAGEOFF
	adrp	x11, _L@PAGE
Lloh20:
	adrp	x12, _X@PAGE+384
Lloh21:
	add	x12, x12, _X@PAGEOFF+384
	mov	x13, #4632233691727265792       ; =0x4049000000000000
Lloh22:
	adrp	x14, _Y@PAGE+384
Lloh23:
	add	x14, x14, _Y@PAGEOFF+384
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_2 Depth 2
                                        ;     Child Loop BB2_4 Depth 2
	mov	x15, #0                         ; =0x0
	ldr	d1, [x0]
	ldr	d2, [x11, _L@PAGEOFF]
	dup.2d	v3, v1[0]
	dup.2d	v4, v0[0]
	movi	d5, #0000000000000000
LBB2_2:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x9, x15
	ldp	q6, q7, [x16]
	ldp	q16, q17, [x16, #32]
	add	x16, x10, x15
	ldp	q18, q19, [x16]
	ldp	q20, q21, [x16, #32]
	mov.16b	v22, v4
	fmla.2d	v22, v6, v3
	mov.16b	v23, v4
	fmla.2d	v23, v7, v3
	mov.16b	v24, v4
	fmla.2d	v24, v16, v3
	mov.16b	v25, v4
	fmla.2d	v25, v17, v3
	fsub.2d	v18, v18, v22
	fsub.2d	v19, v19, v23
	fsub.2d	v20, v20, v24
	fsub.2d	v21, v21, v25
	fmul.2d	v6, v6, v18
	mov	d18, v6[1]
	fmul.2d	v7, v7, v19
	mov	d19, v7[1]
	fmul.2d	v16, v16, v20
	mov	d20, v16[1]
	fmul.2d	v17, v17, v21
	mov	d21, v17[1]
	fadd	d5, d5, d6
	fadd	d5, d5, d18
	fadd	d5, d5, d7
	fadd	d5, d5, d19
	fadd	d5, d5, d16
	fadd	d5, d5, d20
	fadd	d5, d5, d17
	fadd	d5, d5, d21
	add	x15, x15, #64
	cmp	x15, #384
	b.ne	LBB2_2
; %bb.3:                                ;   in Loop: Header=BB2_1 Depth=1
	mov	x15, #0                         ; =0x0
	ldp	d3, d4, [x12]
	fmadd	d6, d1, d3, d0
	ldp	d7, d16, [x14]
	fsub	d6, d7, d6
	fmadd	d3, d3, d6, d5
	fmadd	d0, d1, d4, d0
	fsub	d0, d16, d0
	fmadd	d0, d4, d0, d3
	fadd	d0, d0, d0
	fmov	d3, x13
	fdiv	d0, d0, d3
	fmadd	d2, d2, d0, d1
	str	d2, [x0]
	ldr	d0, [x1]
	ldr	d1, [x11, _L@PAGEOFF]
	dup.2d	v3, v2[0]
	dup.2d	v5, v0[0]
	movi	d4, #0000000000000000
LBB2_4:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x10, x15
	ldp	q6, q7, [x16]
	ldp	q16, q17, [x16, #32]
	add	x16, x9, x15
	ldp	q18, q19, [x16]
	ldp	q20, q21, [x16, #32]
	mov.16b	v22, v5
	fmla.2d	v22, v18, v3
	mov.16b	v18, v5
	fmla.2d	v18, v19, v3
	mov.16b	v19, v5
	fmla.2d	v19, v20, v3
	mov.16b	v20, v5
	fmla.2d	v20, v21, v3
	fsub.2d	v6, v6, v22
	mov	d21, v6[1]
	fsub.2d	v7, v7, v18
	mov	d18, v7[1]
	fsub.2d	v16, v16, v19
	mov	d19, v16[1]
	fsub.2d	v17, v17, v20
	mov	d20, v17[1]
	fadd	d4, d4, d6
	fadd	d4, d4, d21
	fadd	d4, d4, d7
	fadd	d4, d4, d18
	fadd	d4, d4, d16
	fadd	d4, d4, d19
	fadd	d4, d4, d17
	fadd	d4, d4, d20
	add	x15, x15, #64
	cmp	x15, #384
	b.ne	LBB2_4
; %bb.5:                                ;   in Loop: Header=BB2_1 Depth=1
	ldp	d3, d5, [x12]
	fmadd	d3, d2, d3, d0
	ldp	d6, d7, [x14]
	fsub	d3, d6, d3
	fadd	d3, d4, d3
	fmadd	d2, d2, d5, d0
	fsub	d2, d7, d2
	fadd	d2, d3, d2
	fadd	d2, d2, d2
	fmov	d3, x13
	fdiv	d2, d2, d3
	fmadd	d0, d1, d2, d0
	str	d0, [x1]
	add	w8, w8, #1
	cmp	w8, #200
	b.ne	LBB2_1
; %bb.6:
	ret
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
Lloh24:
	adrp	x9, _L@PAGE
Lloh25:
	ldr	d0, [x9, _L@PAGEOFF]
	fneg	d0, d0
Lloh26:
	adrp	x9, _X@PAGE+384
Lloh27:
	add	x9, x9, _X@PAGEOFF+384
Lloh28:
	adrp	x10, _Y@PAGE+384
Lloh29:
	add	x10, x10, _Y@PAGEOFF+384
	ldp	d1, d2, [x9]
	ldp	d3, d4, [x10]
Lloh30:
	adrp	x9, _X@PAGE
Lloh31:
	add	x9, x9, _X@PAGEOFF
	movi	d5, #0000000000000000
Lloh32:
	adrp	x10, _Y@PAGE
Lloh33:
	add	x10, x10, _Y@PAGEOFF
	fmov	d7, #-2.00000000
	mov	x11, #4632233691727265792       ; =0x4049000000000000
	movi	d6, #0000000000000000
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_2 Depth 2
                                        ;     Child Loop BB3_4 Depth 2
	mov	x12, #0                         ; =0x0
	dup.2d	v16, v5[0]
	dup.2d	v17, v6[0]
	movi	d18, #0000000000000000
LBB3_2:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x13, x9, x12
	ldp	q19, q20, [x13]
	ldp	q21, q22, [x13, #32]
	add	x13, x10, x12
	ldp	q23, q24, [x13]
	ldp	q25, q26, [x13, #32]
	mov.16b	v27, v17
	fmla.2d	v27, v19, v16
	mov.16b	v28, v17
	fmla.2d	v28, v20, v16
	mov.16b	v29, v17
	fmla.2d	v29, v21, v16
	mov.16b	v30, v17
	fmla.2d	v30, v22, v16
	fsub.2d	v23, v23, v27
	fsub.2d	v24, v24, v28
	fsub.2d	v25, v25, v29
	fsub.2d	v26, v26, v30
	fmul.2d	v19, v19, v23
	mov	d23, v19[1]
	fmul.2d	v20, v20, v24
	mov	d24, v20[1]
	fmul.2d	v21, v21, v25
	mov	d25, v21[1]
	fmul.2d	v22, v22, v26
	mov	d26, v22[1]
	fadd	d18, d18, d19
	fadd	d18, d18, d23
	fadd	d18, d18, d20
	fadd	d18, d18, d24
	fadd	d18, d18, d21
	fadd	d18, d18, d25
	fadd	d18, d18, d22
	fadd	d18, d18, d26
	add	x12, x12, #64
	cmp	x12, #384
	b.ne	LBB3_2
; %bb.3:                                ;   in Loop: Header=BB3_1 Depth=1
	mov	x12, #0                         ; =0x0
	fmadd	d16, d5, d1, d6
	fsub	d16, d3, d16
	fmadd	d16, d1, d16, d18
	fmadd	d17, d5, d2, d6
	fsub	d17, d4, d17
	fmadd	d16, d2, d17, d16
	fmul	d16, d16, d7
	fmov	d17, x11
	fdiv	d16, d16, d17
	fmadd	d5, d0, d16, d5
	dup.2d	v16, v5[0]
	dup.2d	v17, v6[0]
	movi	d18, #0000000000000000
LBB3_4:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x13, x10, x12
	ldp	q19, q20, [x13]
	ldp	q21, q22, [x13, #32]
	add	x13, x9, x12
	ldp	q23, q24, [x13]
	ldp	q25, q26, [x13, #32]
	mov.16b	v27, v17
	fmla.2d	v27, v23, v16
	mov.16b	v23, v17
	fmla.2d	v23, v24, v16
	mov.16b	v24, v17
	fmla.2d	v24, v25, v16
	mov.16b	v25, v17
	fmla.2d	v25, v26, v16
	fsub.2d	v19, v19, v27
	mov	d26, v19[1]
	fsub.2d	v20, v20, v23
	mov	d23, v20[1]
	fsub.2d	v21, v21, v24
	mov	d24, v21[1]
	fsub.2d	v22, v22, v25
	mov	d25, v22[1]
	fadd	d18, d18, d19
	fadd	d18, d18, d26
	fadd	d18, d18, d20
	fadd	d18, d18, d23
	fadd	d18, d18, d21
	fadd	d18, d18, d24
	fadd	d18, d18, d22
	fadd	d18, d18, d25
	add	x12, x12, #64
	cmp	x12, #384
	b.ne	LBB3_4
; %bb.5:                                ;   in Loop: Header=BB3_1 Depth=1
	fmadd	d16, d5, d1, d6
	fsub	d16, d3, d16
	fadd	d16, d18, d16
	fmadd	d17, d5, d2, d6
	fsub	d17, d4, d17
	fadd	d16, d16, d17
	fmul	d16, d16, d7
	fmov	d17, x11
	fdiv	d16, d16, d17
	fmadd	d6, d0, d16, d6
	add	w8, w8, #1
	cmp	w8, #200
	b.ne	LBB3_1
; %bb.6:
	stp	d5, d6, [sp]
Lloh34:
	adrp	x0, l_.str@PAGE
Lloh35:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdrp	Lloh24, Lloh26
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_L                              ; @L
	.p2align	3, 0x0
_L:
	.quad	0x3f50624dd2f1a9fc              ; double 0.001

	.globl	_Y                              ; @Y
	.p2align	3, 0x0
_Y:
	.quad	0x404c000000000000              ; double 56
	.quad	0x4034000000000000              ; double 20
	.quad	0x4092b80000000000              ; double 1198
	.quad	0x4022000000000000              ; double 9
	.quad	0x403e000000000000              ; double 30
	.quad	0x4032000000000000              ; double 18
	.quad	0x4026000000000000              ; double 11
	.quad	0x404a000000000000              ; double 52
	.quad	0x4096c00000000000              ; double 1456
	.quad	0x4020000000000000              ; double 8
	.quad	0x4028000000000000              ; double 12
	.quad	0x4051800000000000              ; double 70
	.quad	0x4051000000000000              ; double 68
	.quad	0x4032000000000000              ; double 18
	.quad	0x40e0eec000000000              ; double 34678
	.quad	0x0000000000000000              ; double 0
	.quad	0x4049800000000000              ; double 51
	.quad	0x4067600000000000              ; double 187
	.quad	0x4065a00000000000              ; double 173
	.quad	0x4076100000000000              ; double 353
	.quad	0x40c87d8000000000              ; double 12539
	.quad	0x406f000000000000              ; double 248
	.quad	0x4069200000000000              ; double 201
	.quad	0x4031000000000000              ; double 17
	.quad	0x403b000000000000              ; double 27
	.quad	0x4014000000000000              ; double 5
	.quad	0x4034000000000000              ; double 20
	.quad	0x402e000000000000              ; double 15
	.quad	0x4099480000000000              ; double 1618
	.quad	0x409bf80000000000              ; double 1790
	.quad	0x407c500000000000              ; double 453
	.quad	0x40a31c0000000000              ; double 2446
	.quad	0x4044800000000000              ; double 41
	.quad	0x4008000000000000              ; double 3
	.quad	0x4038000000000000              ; double 24
	.quad	0x4041800000000000              ; double 35
	.quad	0x4038000000000000              ; double 24
	.quad	0x4063c00000000000              ; double 158
	.quad	0x403d000000000000              ; double 29
	.quad	0x40b3910000000000              ; double 5009
	.quad	0x4055400000000000              ; double 85
	.quad	0x40b4510000000000              ; double 5201
	.quad	0x401c000000000000              ; double 7
	.quad	0x0000000000000000              ; double 0
	.quad	0x40a82a0000000000              ; double 3093
	.quad	0x4035000000000000              ; double 21
	.quad	0x4018000000000000              ; double 6
	.quad	0x407a100000000000              ; double 417
	.quad	0x4090e00000000000              ; double 1080
	.quad	0x4026000000000000              ; double 11

	.globl	_X                              ; @X
	.p2align	3, 0x0
_X:
	.quad	0x4021333333333333              ; double 8.5999999999999996
	.quad	0x401e666666666666              ; double 7.5999999999999996
	.quad	0x4024666666666666              ; double 10.199999999999999
	.quad	0x4029000000000000              ; double 12.5
	.quad	0x402e000000000000              ; double 15
	.quad	0x403e666666666666              ; double 30.399999999999999
	.quad	0x400c000000000000              ; double 3.5
	.quad	0x4015333333333333              ; double 5.2999999999999998
	.quad	0x3fe0000000000000              ; double 0.5
	.quad	0x401f333333333333              ; double 7.7999999999999998
	.quad	0x401d333333333333              ; double 7.2999999999999998
	.quad	0x4031333333333333              ; double 17.199999999999999
	.quad	0x4024000000000000              ; double 10
	.quad	0x40314ccccccccccd              ; double 17.300000000000001
	.quad	0x4020000000000000              ; double 8
	.quad	0x3ff6666666666666              ; double 1.3999999999999999
	.quad	0x4018cccccccccccd              ; double 6.2000000000000002
	.quad	0x4011333333333333              ; double 4.2999999999999998
	.quad	0x403ecccccccccccd              ; double 30.800000000000001
	.quad	0x4025666666666666              ; double 10.699999999999999
	.quad	0x401799999999999a              ; double 5.9000000000000004
	.quad	0x3ff6666666666666              ; double 1.3999999999999999
	.quad	0x4023cccccccccccd              ; double 9.9000000000000003
	.quad	0x4035b33333333333              ; double 21.699999999999999
	.quad	0x4013333333333333              ; double 4.7999999999999998
	.quad	0x4042333333333333              ; double 36.399999999999999
	.quad	0x40304ccccccccccd              ; double 16.300000000000001
	.quad	0x4028000000000000              ; double 12
	.quad	0x4014666666666666              ; double 5.0999999999999996
	.quad	0x3ff4cccccccccccd              ; double 1.3
	.quad	0x400c000000000000              ; double 3.5
	.quad	0x4017333333333333              ; double 5.7999999999999998
	.quad	0x4018cccccccccccd              ; double 6.2000000000000002
	.quad	0x4022666666666666              ; double 9.1999999999999993
	.quad	0x4046a66666666666              ; double 45.299999999999997
	.quad	0x401d333333333333              ; double 7.2999999999999998
	.quad	0x403e4ccccccccccd              ; double 30.300000000000001
	.quad	0x4036800000000000              ; double 22.5
	.quad	0x402a333333333333              ; double 13.1
	.quad	0x402d333333333333              ; double 14.6
	.quad	0x4018cccccccccccd              ; double 6.2000000000000002
	.quad	0x4016000000000000              ; double 5.5
	.quad	0x403e4ccccccccccd              ; double 30.300000000000001
	.quad	0x4010cccccccccccd              ; double 4.2000000000000002
	.quad	0x4021333333333333              ; double 8.5999999999999996
	.quad	0x401d333333333333              ; double 7.2999999999999998
	.quad	0x4027cccccccccccd              ; double 11.9
	.quad	0x4020333333333333              ; double 8.0999999999999996
	.quad	0x3fe3333333333333              ; double 0.59999999999999998
	.quad	0x4027000000000000              ; double 11.5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"The function is: %.4lfx + %.4lf\n"

.subsections_via_symbols
