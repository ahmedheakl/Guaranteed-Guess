	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_g_deriv                        ; -- Begin function g_deriv
	.p2align	2
_g_deriv:                               ; @g_deriv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	fneg	d0, d0
	bl	_libmin_exp
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	fdiv	d0, d1, d0
	fsub	d1, d1, d0
	fmul	d0, d0, d1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_g                              ; -- Begin function g
	.p2align	2
_g:                                     ; @g
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	fneg	d0, d0
	bl	_libmin_exp
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	fdiv	d0, d1, d0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sampleSine                     ; -- Begin function sampleSine
	.p2align	2
_sampleSine:                            ; @sampleSine
	.cfi_startproc
; %bb.0:
	cbz	w2, LBB2_4
; %bb.1:
	stp	d9, d8, [sp, #-80]!             ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	fmov	d8, d0
	mov	x19, x1
	mov	x20, x0
	mov	x21, #0                         ; =0x0
	fsub	d0, d1, d0
	ucvtf	d1, w2
	fdiv	d9, d0, d1
	mov	w22, w2
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	ucvtf	d0, w21
	fmadd	d0, d9, d0, d8
	lsl	x23, x21, #3
	str	d0, [x20, x23]
	bl	_libmin_sin
	str	d0, [x19, x23]
	add	x21, x21, #1
	cmp	x22, x21
	b.ne	LBB2_2
; %bb.3:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #80               ; 16-byte Folded Reload
LBB2_4:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_fillArrayRand                  ; -- Begin function fillArrayRand
	.p2align	2
_fillArrayRand:                         ; @fillArrayRand
	.cfi_startproc
; %bb.0:
	cbz	w1, LBB3_4
; %bb.1:
	stp	d9, d8, [sp, #-64]!             ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	mov	x19, x0
	mov	w20, w1
	mov	x21, #281474972516352           ; =0xffffffc00000
	movk	x21, #16863, lsl #48
	fmov	d8, #-0.50000000
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x21
	fdiv	d0, d0, d1
	fadd	d0, d0, d8
	str	d0, [x19], #8
	subs	x20, x20, #1
	b.ne	LBB3_2
; %bb.3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #64               ; 16-byte Folded Reload
LBB3_4:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_fillArrayNull                  ; -- Begin function fillArrayNull
	.p2align	2
_fillArrayNull:                         ; @fillArrayNull
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w1 killed $w1 def $x1
	cbz	w1, LBB4_2
; %bb.1:
	ubfiz	x1, x1, #3, #32
	b	_bzero
LBB4_2:
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function train
lCPI5_0:
	.quad	0x0000000000000000              ; double 0
	.quad	0x3fc4189374bc6a7f              ; double 0.157
lCPI5_1:
	.quad	0x3fd4189374bc6a7f              ; double 0.314
	.quad	0x3fde24dd2f1a9fbe              ; double 0.47099999999999997
lCPI5_2:
	.quad	0x3fe4189374bc6a7f              ; double 0.628
	.quad	0x3fe91eb851eb851f              ; double 0.78500000000000003
lCPI5_3:
	.quad	0x3fee24dd2f1a9fbe              ; double 0.94199999999999995
	.quad	0x3ff195810624dd2f              ; double 1.099
lCPI5_4:
	.quad	0x3ff4189374bc6a7f              ; double 1.256
	.quad	0x3ff69ba5e353f7cf              ; double 1.413
lCPI5_5:
	.quad	0x3ff91eb851eb851f              ; double 1.5700000000000001
	.quad	0x3ffba1cac083126f              ; double 1.7270000000000001
lCPI5_6:
	.quad	0x3ffe24dd2f1a9fbe              ; double 1.8839999999999999
	.quad	0x400053f7ced91687              ; double 2.0409999999999999
lCPI5_7:
	.quad	0x400195810624dd2f              ; double 2.198
	.quad	0x4002d70a3d70a3d7              ; double 2.355
lCPI5_8:
	.quad	0x4004189374bc6a7f              ; double 2.512
	.quad	0x40055a1cac083127              ; double 2.669
lCPI5_9:
	.quad	0x40069ba5e353f7cf              ; double 2.8260000000000001
	.quad	0x4007dd2f1a9fbe77              ; double 2.9830000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_train
	.p2align	2
_train:                                 ; @train
	.cfi_startproc
; %bb.0:
	stp	d13, d12, [sp, #-144]!          ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	sub	sp, sp, #1712
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
	stp	q3, q2, [sp, #48]               ; 32-byte Folded Spill
	fmov	d8, d1
	str	q0, [sp, #80]                   ; 16-byte Folded Spill
	mov	x19, #0                         ; =0x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-144]
	mov	x20, #281474972516352           ; =0xffffffc00000
	movk	x20, #16863, lsl #48
	fmov	d9, #-0.50000000
	add	x21, sp, #1056
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x20
	fdiv	d0, d0, d1
	fadd	d0, d0, d9
	str	d0, [x21, x19]
	add	x19, x19, #8
	cmp	x19, #320
	b.ne	LBB5_1
; %bb.2:
	mov	x19, #0                         ; =0x0
	mov	x20, #281474972516352           ; =0xffffffc00000
	movk	x20, #16863, lsl #48
	fmov	d9, #-0.50000000
	add	x21, sp, #896
LBB5_3:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x20
	fdiv	d0, d0, d1
	fadd	d0, d0, d9
	str	d0, [x21, x19]
	add	x19, x19, #8
	cmp	x19, #160
	b.ne	LBB5_3
; %bb.4:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #864]
	stp	q0, q0, [sp, #832]
	stp	q0, q0, [sp, #800]
	stp	q0, q0, [sp, #768]
	stp	q0, q0, [sp, #736]
	stp	q0, q0, [sp, #704]
	stp	q0, q0, [sp, #672]
	stp	q0, q0, [sp, #640]
	stp	q0, q0, [sp, #608]
	stp	q0, q0, [sp, #576]
	stp	q0, q0, [sp, #544]
	stp	q0, q0, [sp, #512]
	stp	q0, q0, [sp, #480]
	stp	q0, q0, [sp, #448]
	stp	q0, q0, [sp, #416]
	movi	d0, #0000000000000000
	bl	_libmin_sin
	str	d0, [sp, #1376]
Lloh3:
	adrp	x8, lCPI5_0@PAGE
Lloh4:
	ldr	q0, [x8, lCPI5_0@PAGEOFF]
	str	q0, [sp, #1536]
	mov	x8, #27263                      ; =0x6a7f
	movk	x8, #29884, lsl #16
	movk	x8, #6291, lsl #32
	movk	x8, #16324, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1384]
	mov	x8, #27263                      ; =0x6a7f
	movk	x8, #29884, lsl #16
	movk	x8, #6291, lsl #32
	movk	x8, #16340, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1392]
Lloh5:
	adrp	x8, lCPI5_1@PAGE
Lloh6:
	ldr	q0, [x8, lCPI5_1@PAGEOFF]
	str	q0, [sp, #1552]
	mov	x8, #40894                      ; =0x9fbe
	movk	x8, #12058, lsl #16
	movk	x8, #9437, lsl #32
	movk	x8, #16350, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1400]
	mov	x8, #27263                      ; =0x6a7f
	movk	x8, #29884, lsl #16
	movk	x8, #6291, lsl #32
	movk	x8, #16356, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1408]
Lloh7:
	adrp	x8, lCPI5_2@PAGE
Lloh8:
	ldr	q0, [x8, lCPI5_2@PAGEOFF]
	str	q0, [sp, #1568]
	mov	x8, #34079                      ; =0x851f
	movk	x8, #20971, lsl #16
	movk	x8, #7864, lsl #32
	movk	x8, #16361, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1416]
	mov	x8, #40894                      ; =0x9fbe
	movk	x8, #12058, lsl #16
	movk	x8, #9437, lsl #32
	movk	x8, #16366, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1424]
Lloh9:
	adrp	x8, lCPI5_3@PAGE
Lloh10:
	ldr	q0, [x8, lCPI5_3@PAGEOFF]
	str	q0, [sp, #1584]
	mov	x8, #56623                      ; =0xdd2f
	movk	x8, #1572, lsl #16
	movk	x8, #38273, lsl #32
	movk	x8, #16369, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1432]
	mov	x8, #27263                      ; =0x6a7f
	movk	x8, #29884, lsl #16
	movk	x8, #6291, lsl #32
	movk	x8, #16372, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1440]
Lloh11:
	adrp	x8, lCPI5_4@PAGE
Lloh12:
	ldr	q0, [x8, lCPI5_4@PAGEOFF]
	str	q0, [sp, #1600]
	mov	x8, #63439                      ; =0xf7cf
	movk	x8, #58195, lsl #16
	movk	x8, #39845, lsl #32
	movk	x8, #16374, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1448]
	mov	x8, #34079                      ; =0x851f
	movk	x8, #20971, lsl #16
	movk	x8, #7864, lsl #32
	movk	x8, #16377, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1456]
Lloh13:
	adrp	x8, lCPI5_5@PAGE
Lloh14:
	ldr	q0, [x8, lCPI5_5@PAGEOFF]
	str	q0, [sp, #1616]
	mov	x8, #4719                       ; =0x126f
	movk	x8, #49283, lsl #16
	movk	x8, #41418, lsl #32
	movk	x8, #16379, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1464]
	mov	x8, #40894                      ; =0x9fbe
	movk	x8, #12058, lsl #16
	movk	x8, #9437, lsl #32
	movk	x8, #16382, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1472]
Lloh15:
	adrp	x8, lCPI5_6@PAGE
Lloh16:
	ldr	q0, [x8, lCPI5_6@PAGEOFF]
	str	q0, [sp, #1632]
	mov	x8, #5767                       ; =0x1687
	movk	x8, #52953, lsl #16
	movk	x8, #21495, lsl #32
	movk	x8, #16384, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1480]
	mov	x8, #56623                      ; =0xdd2f
	movk	x8, #1572, lsl #16
	movk	x8, #38273, lsl #32
	movk	x8, #16385, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1488]
Lloh17:
	adrp	x8, lCPI5_7@PAGE
Lloh18:
	ldr	q0, [x8, lCPI5_7@PAGEOFF]
	str	q0, [sp, #1648]
	mov	x8, #41943                      ; =0xa3d7
	movk	x8, #15728, lsl #16
	movk	x8, #55050, lsl #32
	movk	x8, #16386, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1496]
	mov	x8, #27263                      ; =0x6a7f
	movk	x8, #29884, lsl #16
	movk	x8, #6291, lsl #32
	movk	x8, #16388, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1504]
Lloh19:
	adrp	x8, lCPI5_8@PAGE
Lloh20:
	ldr	q0, [x8, lCPI5_8@PAGEOFF]
	str	q0, [sp, #1664]
	mov	x8, #12583                      ; =0x3127
	movk	x8, #44040, lsl #16
	movk	x8, #23068, lsl #32
	movk	x8, #16389, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1512]
	mov	x8, #63439                      ; =0xf7cf
	movk	x8, #58195, lsl #16
	movk	x8, #39845, lsl #32
	movk	x8, #16390, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1520]
Lloh21:
	adrp	x8, lCPI5_9@PAGE
Lloh22:
	ldr	q0, [x8, lCPI5_9@PAGEOFF]
	str	q0, [sp, #1680]
	mov	x8, #48759                      ; =0xbe77
	movk	x8, #6815, lsl #16
	movk	x8, #56623, lsl #32
	movk	x8, #16391, lsl #48
	fmov	d0, x8
	bl	_libmin_sin
	str	d0, [sp, #1528]
	fmov	d10, #1.00000000
	fadd	d0, d8, d10
	fcmp	d0, d8
	b.le	LBB5_14
; %bb.5:
	mov	w8, #0                          ; =0x0
	add	x21, sp, #1056
	add	x27, x21, #8
	ldr	q0, [sp, #80]                   ; 16-byte Folded Reload
	dup.2d	v0, v0[0]
	str	q0, [sp, #32]                   ; 16-byte Folded Spill
	add	x24, sp, #256
	add	x25, sp, #96
	add	x26, sp, #896
	add	x28, sp, #416
	add	x19, sp, #576
LBB5_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_7 Depth 2
                                        ;       Child Loop BB5_8 Depth 3
                                        ;       Child Loop BB5_10 Depth 3
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	mov	x20, #0                         ; =0x0
	movi	d11, #0000000000000000
	ldr	q19, [sp, #64]                  ; 16-byte Folded Reload
LBB5_7:                                 ;   Parent Loop BB5_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB5_8 Depth 3
                                        ;       Child Loop BB5_10 Depth 3
	mov	x23, #0                         ; =0x0
	add	x8, sp, #1536
	ldr	d21, [x8, x20, lsl #3]
	mov	x22, x27
	movi	d12, #0000000000000000
	str	q21, [sp, #80]                  ; 16-byte Folded Spill
LBB5_8:                                 ;   Parent Loop BB5_6 Depth=1
                                        ;     Parent Loop BB5_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	d0, d1, [x22, #-8]
	fmul	d1, d1, d19
	fnmadd	d9, d21, d0, d1
	fmov	d0, d9
	bl	_libmin_exp
	fadd	d0, d0, d10
	fdiv	d13, d10, d0
	str	d13, [x24, x23]
	fmov	d0, d9
	bl	_libmin_exp
	ldp	q19, q21, [sp, #64]             ; 32-byte Folded Reload
	fadd	d0, d0, d10
	fdiv	d0, d10, d0
	fsub	d1, d10, d0
	fmul	d0, d0, d1
	str	d0, [x25, x23]
	ldr	d0, [x26, x23]
	fmadd	d12, d0, d13, d12
	add	x23, x23, #8
	add	x22, x22, #16
	cmp	x23, #160
	b.ne	LBB5_8
; %bb.9:                                ;   in Loop: Header=BB5_7 Depth=2
	mov	x8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
	add	x10, sp, #1376
	ldr	d0, [x10, x20, lsl #3]
	fsub	d0, d12, d0
	ldp	q20, q18, [sp, #32]             ; 32-byte Folded Reload
LBB5_10:                                ;   Parent Loop BB5_6 Depth=1
                                        ;     Parent Loop BB5_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	q1, [x25, x9]
	ldr	q2, [x26, x9]
	fmul.2d	v1, v1, v2
	fmul.2d	v1, v1, v0[0]
	fmul.2d	v3, v1, v21[0]
	add	x10, x19, x8
	ld2.2d	{ v4, v5 }, [x10]
	fmul.2d	v6, v4, v18[0]
	fmla.2d	v6, v20, v3
	fmul.2d	v1, v1, v19[0]
	fmul.2d	v7, v5, v18[0]
	fmla.2d	v7, v20, v1
	add	x11, x21, x8
	ld2.2d	{ v3, v4 }, [x11]
	fsub.2d	v16, v3, v6
	fsub.2d	v17, v4, v7
	ldr	q1, [x24, x9]
	fmul.2d	v1, v1, v0[0]
	ldr	q3, [x28, x9]
	fmul.2d	v3, v3, v18[0]
	fmla.2d	v3, v20, v1
	fsub.2d	v1, v2, v3
	st2.2d	{ v16, v17 }, [x11]
	str	q1, [x26, x9]
	st2.2d	{ v6, v7 }, [x10]
	str	q3, [x28, x9]
	add	x9, x9, #16
	add	x8, x8, #32
	cmp	x9, #160
	b.ne	LBB5_10
; %bb.11:                               ;   in Loop: Header=BB5_7 Depth=2
	fmadd	d11, d0, d0, d11
	add	x20, x20, #1
	cmp	x20, #20
	b.ne	LBB5_7
; %bb.12:                               ;   in Loop: Header=BB5_6 Depth=1
	ldr	w22, [sp, #28]                  ; 4-byte Folded Reload
	add	w20, w22, #1
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #864]
	stp	q0, q0, [sp, #832]
	stp	q0, q0, [sp, #800]
	stp	q0, q0, [sp, #768]
	stp	q0, q0, [sp, #736]
	stp	q0, q0, [sp, #704]
	stp	q0, q0, [sp, #672]
	stp	q0, q0, [sp, #640]
	stp	q0, q0, [sp, #608]
	stp	q0, q0, [sp, #576]
	stp	q0, q0, [sp, #544]
	stp	q0, q0, [sp, #512]
	stp	q0, q0, [sp, #480]
	stp	q0, q0, [sp, #448]
	stp	q0, q0, [sp, #416]
	str	d11, [sp, #8]
	str	x20, [sp]
Lloh23:
	adrp	x0, l_.str@PAGE
Lloh24:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	fcmp	d11, d8
	b.le	LBB5_14
; %bb.13:                               ;   in Loop: Header=BB5_6 Depth=1
	cmp	w22, #9
	mov	x8, x20
	b.lo	LBB5_6
LBB5_14:
	ldur	x8, [x29, #-144]
Lloh25:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh26:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh27:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB5_16
; %bb.15:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1712
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #144            ; 16-byte Folded Reload
	ret
LBB5_16:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdr	Lloh21, Lloh22
	.loh AdrpLdr	Lloh19, Lloh20
	.loh AdrpLdr	Lloh17, Lloh18
	.loh AdrpLdr	Lloh15, Lloh16
	.loh AdrpLdr	Lloh13, Lloh14
	.loh AdrpLdr	Lloh11, Lloh12
	.loh AdrpLdr	Lloh9, Lloh10
	.loh AdrpLdr	Lloh7, Lloh8
	.loh AdrpLdr	Lloh5, Lloh6
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16244, lsl #48
	fmov	d0, x8
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d3, x8
	fmov	d2, #1.00000000
	bl	_train
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"iteration %d Total error %f\n"

.subsections_via_symbols
