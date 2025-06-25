	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI0_0:
	.quad	0x3fa47ae147ae147b              ; double 0.040000000000000001
	.quad	0x3f947ae147ae147b              ; double 0.02
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	mov	w9, #8896                       ; =0x22c0
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #2, lsl #12             ; =8192
	sub	sp, sp, #704
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
	.cfi_offset b14, -152
	.cfi_offset b15, -160
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-160]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	w9, #0                          ; =0x0
	movi	d8, #0000000000000000
	add	x21, sp, #80
	add	x22, sp, #1840
	mov	w23, #1109393408                ; =0x42200000
	mov	x24, #5243                      ; =0x147b
	movk	x24, #18350, lsl #16
	movk	x24, #31457, lsl #32
	movk	x24, #16276, lsl #48
	mov	x25, #34079                     ; =0x851f
	movk	x25, #20971, lsl #16
	movk	x25, #7864, lsl #32
	movk	x25, #16409, lsl #48
Lloh7:
	adrp	x27, _k@GOTPAGE
Lloh8:
	ldr	x27, [x27, _k@GOTPAGEOFF]
	mov	w28, #52429                     ; =0xcccd
	movk	w28, #52428, lsl #16
	mov	w19, #39312                     ; =0x9990
	movk	w19, #6553, lsl #16
	mov	w20, #13107                     ; =0x3333
	movk	w20, #819, lsl #16
Lloh9:
	adrp	x8, lCPI0_0@PAGE
Lloh10:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	str	q0, [sp]                        ; 16-byte Folded Spill
Lloh11:
	adrp	x26, l_.str.1@PAGE
Lloh12:
	add	x26, x26, l_.str.1@PAGEOFF
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	q0, [sp]                        ; 16-byte Folded Reload
	ldr	q1, [sp, #64]                   ; 16-byte Folded Reload
	fadd.2d	v0, v1, v0
	fcvtn	v8.2s, v0.2d
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	add	w9, w9, #1
	cmp	w9, #64
	b.eq	LBB0_15
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
                                        ;     Child Loop BB0_13 Depth 2
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	add	x0, sp, #80
	mov	w1, #32                         ; =0x20
	mov	w2, #1760                       ; =0x6e0
	bl	_libmin_memset
	add	x0, sp, #1840
	mov	w1, #0                          ; =0x0
	mov	w2, #7040                       ; =0x1b80
	bl	_libmin_memset
	fcvtl	v0.2d, v8.2s
	str	q0, [sp, #64]                   ; 16-byte Folded Spill
	mov	d1, v0[1]
	movi	d0, #0000000000000000
	stp	d1, d0, [sp, #24]               ; 16-byte Folded Spill
	b	LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=2
	mov	x8, #20972                      ; =0x51ec
	movk	x8, #7864, lsl #16
	movk	x8, #60293, lsl #32
	movk	x8, #16305, lsl #48
	fmov	d0, x8
	ldr	d1, [sp, #32]                   ; 8-byte Folded Reload
	fadd	d0, d1, d0
	fcvt	s0, d0
	fcvt	d1, s0
	fmov	d0, x25
	str	d1, [sp, #32]                   ; 8-byte Folded Spill
	fcmp	d1, d0
	b.pl	LBB0_10
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	movi	d10, #0000000000000000
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=3
	fmov	d0, x24
	ldr	d1, [sp, #56]                   ; 8-byte Folded Reload
	fadd	d0, d1, d0
	fcvt	s0, d0
	fcvt	d10, s0
	fmov	d0, x25
	fcmp	d10, d0
	b.pl	LBB0_3
LBB0_6:                                 ;   Parent Loop BB0_2 Depth=1
                                        ;     Parent Loop BB0_4 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	fmov	d0, d10
	bl	_libmin_sin
	fcvt	s9, d0
	ldr	d8, [sp, #32]                   ; 8-byte Folded Reload
	fmov	d0, d8
	bl	_libmin_cos
	fcvt	s12, d0
	ldr	q0, [sp, #64]                   ; 16-byte Folded Reload
                                        ; kill: def $d0 killed $d0 killed $q0
	bl	_libmin_sin
	fcvt	s14, d0
	str	s14, [sp, #52]                  ; 4-byte Folded Spill
	fmov	d0, d8
	bl	_libmin_sin
	fcvt	s11, d0
	ldr	q0, [sp, #64]                   ; 16-byte Folded Reload
                                        ; kill: def $d0 killed $d0 killed $q0
	bl	_libmin_cos
	fcvt	s8, d0
	fmov	s0, #2.00000000
	stp	s12, s9, [sp, #44]              ; 8-byte Folded Spill
	fadd	s13, s12, s0
	fmul	s9, s13, s9
	fmul	s0, s11, s8
	fmadd	s0, s9, s14, s0
	fmov	s1, #5.00000000
	fadd	s0, s0, s1
	fmov	s1, #1.00000000
	fdiv	s12, s1, s0
	str	d10, [sp, #56]                  ; 8-byte Folded Spill
	fmov	d0, d10
	bl	_libmin_cos
	fcvt	s15, d0
	ldr	d14, [sp, #24]                  ; 8-byte Folded Reload
	fmov	d0, d14
	bl	_libmin_cos
	fcvt	s10, d0
	fmov	d0, d14
	bl	_libmin_sin
	ldr	s6, [sp, #52]                   ; 4-byte Folded Reload
	fcvt	s0, d0
	fnmul	s1, s11, s6
	fmadd	s1, s9, s8, s1
	fmov	s2, #30.00000000
	fmul	s2, s12, s2
	fmul	s3, s13, s15
	fnmul	s4, s1, s0
	fmadd	s4, s3, s10, s4
	fmov	s5, w23
	fmadd	s2, s2, s4, s5
	fcvtzs	w8, s2
	fmov	s2, #15.00000000
	fmul	s2, s12, s2
	fmul	s1, s1, s10
	fmadd	s1, s3, s0, s1
	fmov	s3, #12.00000000
	fmadd	s1, s2, s1, s3
	fcvtzs	w9, s1
	sub	w10, w9, #1
	cmp	w10, #20
	ccmp	w8, #1, #8, ls
	b.lt	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=3
	cmp	w8, #79
	b.gt	LBB0_5
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=3
	add	w9, w9, w9, lsl #2
	lsl	w9, w9, #4
	add	x8, x9, w8, uxtw
	ldr	s1, [x22, x8, lsl #2]
	fcmp	s12, s1
	b.le	LBB0_5
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=3
	ldp	s3, s1, [sp, #44]               ; 8-byte Folded Reload
	fnmul	s1, s1, s3
	fmul	s2, s1, s8
	fmadd	s2, s11, s6, s2
	fmul	s1, s1, s6
	fmadd	s1, s2, s10, s1
	fmsub	s1, s11, s8, s1
	fnmul	s2, s15, s3
	fmadd	s0, s2, s0, s1
	fcvtzs	w9, s0, #3
	str	s12, [x22, x8, lsl #2]
	bic	w9, w9, w9, asr #31
	ldrb	w9, [x26, w9, uxtw]
	strb	w9, [x21, x8]
	b	LBB0_5
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
Lloh13:
	adrp	x0, l_.str.2@PAGE
Lloh14:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w8, #0                          ; =0x0
	str	wzr, [x27]
	b	LBB0_13
LBB0_11:                                ;   in Loop: Header=BB0_13 Depth=2
	ldrb	w8, [x21, w8, sxtw]
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=2
	sxtb	w0, w8
	bl	_libmin_putc
	ldr	w9, [x27]
	add	w8, w9, #1
	str	w8, [x27]
	cmp	w9, #1760
	b.ge	LBB0_1
LBB0_13:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	madd	w9, w8, w28, w19
	ror	w9, w9, #4
	cmp	w9, w20
	b.hs	LBB0_11
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
	mov	w8, #10                         ; =0xa
	b	LBB0_12
LBB0_15:
	bl	_libmin_success
	ldur	x8, [x29, #-160]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_17
; %bb.16:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2, lsl #12             ; =8192
	add	sp, sp, #704
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
LBB0_17:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdr	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\033[2J"

l_.str.1:                               ; @.str.1
	.asciz	".,-~:;=!*#$@"

l_.str.2:                               ; @.str.2
	.asciz	"\033[H"

	.comm	_k,4,2                          ; @k
.subsections_via_symbols
