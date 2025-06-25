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
	adrp	x20, _c@PAGE
	ldr	w8, [x20, _c@PAGEOFF]
	subs	w12, w8, #14
	str	w12, [x20, _c@PAGEOFF]
Lloh0:
	adrp	x21, _b@GOTPAGE
Lloh1:
	ldr	x21, [x21, _b@GOTPAGEOFF]
	str	w12, [x21]
	b.eq	LBB0_10
; %bb.1:
Lloh2:
	adrp	x22, _d@GOTPAGE
Lloh3:
	ldr	x22, [x22, _d@GOTPAGEOFF]
Lloh4:
	adrp	x23, _e@GOTPAGE
Lloh5:
	ldr	x23, [x23, _e@GOTPAGEOFF]
Lloh6:
	adrp	x24, _g@GOTPAGE
Lloh7:
	ldr	x24, [x24, _g@GOTPAGEOFF]
Lloh8:
	adrp	x19, l_.str@PAGE
Lloh9:
	add	x19, x19, l_.str@PAGEOFF
	adrp	x25, _f@PAGE
Lloh10:
	adrp	x26, _h@GOTPAGE
Lloh11:
	ldr	x26, [x26, _h@GOTPAGEOFF]
	mov	w27, #26215                     ; =0x6667
	movk	w27, #26214, lsl #16
Lloh12:
	adrp	x28, _a@GOTPAGE
Lloh13:
	ldr	x28, [x28, _a@GOTPAGEOFF]
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	w12, [x22]
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	wzr, [x21]
	str	wzr, [x24]
	sdiv	w8, w12, w8
	add	w8, w8, w9
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	w0, [x26]
	ldr	w8, [x20, _c@PAGEOFF]
	subs	w12, w8, #14
	str	w12, [x20, _c@PAGEOFF]
	str	w12, [x21]
	b.eq	LBB0_10
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	ldr	w8, [x25, _f@PAGEOFF]
	ldr	w9, [x22]
	sdiv	w10, w9, w8
	msub	w9, w10, w8, w9
	str	w9, [x22]
	str	w9, [x23]
	subs	w10, w12, #1
	b.eq	LBB0_9
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w11, [x26]
	smull	x13, w8, w27
	lsr	x14, x13, #63
	asr	x13, x13, #33
	add	w13, w13, w14
	add	x14, x28, w12, sxtw #2
	sub	x14, x14, #4
	lsl	w12, w12, #1
	sub	w15, w12, #3
	mov	x12, x9
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	mul	w12, w12, w10
	madd	w16, w16, w8, w12
	sdiv	w12, w16, w15
	msub	w16, w12, w15, w16
	str	w16, [x14], #-4
	sub	w15, w15, #2
	sub	w10, w10, #1
	cbz	w10, LBB0_2
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x16, x13
	cbz	w11, LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w16, [x14]
	b	LBB0_6
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x12, x9
	b	LBB0_3
LBB0_10:
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
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_c                              ; @c
	.p2align	2, 0x0
_c:
	.long	52514                           ; 0xcd22

	.globl	_f                              ; @f
	.p2align	2, 0x0
_f:
	.long	10000                           ; 0x2710

	.comm	_b,4,2                          ; @b
	.comm	_d,4,2                          ; @d
	.comm	_e,4,2                          ; @e
	.comm	_g,4,2                          ; @g
	.comm	_h,4,2                          ; @h
	.comm	_a,210056,2                     ; @a
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%04d"

.subsections_via_symbols
