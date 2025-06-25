	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x8, _n@GOTPAGE
Lloh1:
	ldr	x8, [x8, _n@GOTPAGEOFF]
	ldr	x6, [x8]
	adrp	x9, _p@PAGE
	ldr	x13, [x9, _p@PAGEOFF]
Lloh2:
	adrp	x10, _b@GOTPAGE
Lloh3:
	ldr	x10, [x10, _b@GOTPAGEOFF]
Lloh4:
	adrp	x12, _m@GOTPAGE
Lloh5:
	ldr	x12, [x12, _m@GOTPAGEOFF]
	ldr	x4, [x10]
	ldr	x11, [x12]
	mov	w14, #6177                      ; =0x1821
	mov	w15, #1                         ; =0x1
Lloh6:
	adrp	x16, l_.str.1@PAGE
Lloh7:
	add	x16, x16, l_.str.1@PAGEOFF
Lloh8:
	adrp	x17, _u@GOTPAGE
Lloh9:
	ldr	x17, [x17, _u@GOTPAGEOFF]
	mov	x0, #35747                      ; =0x8ba3
	movk	x0, #47662, lsl #16
	movk	x0, #41704, lsl #32
	movk	x0, #11915, lsl #48
	mov	w1, #11                         ; =0xb
Lloh10:
	adrp	x2, l_.str.2@PAGE
Lloh11:
	add	x2, x2, l_.str.2@PAGEOFF
                                        ; implicit-def: $w3
	b	LBB0_3
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x7, x4
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	smulh	x4, x5, x0
	asr	x6, x4, #1
	add	x4, x6, x4, lsr #63
	msub	x6, x4, x1, x5
	str	x6, [x8]
	ldrsb	w4, [x2, x6]
	add	x5, x6, x7, lsl #3
	cmp	w3, w4
	csel	x4, x5, x7, eq
	str	x4, [x10]
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_9 Depth 2
	add	x5, x6, #1
	str	x5, [x8]
	cbnz	x6, LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x6, x13, #1
	str	x6, [x9, _p@PAGEOFF]
	ldrsb	w13, [x13]
	cmp	w13, #1
	b.lt	LBB0_20
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	and	w3, w13, #0xff
	mov	x13, x6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w3, #46
	b.gt	LBB0_1
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	cbz	x4, LBB0_1
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	negs	x5, x4
	and	x5, x5, #0x3f
	and	x6, x4, #0x3f
	csneg	x5, x6, x5, mi
	cmp	x5, #25
	cset	w6, eq
	ubfiz	x6, x6, #4, #32
	mov	w19, #19                        ; =0x13
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x7, x19, #1
	ldrb	w20, [x16, x7]
	sub	w20, w20, #42
	cmp	x4, w20, uxtb
	b.ne	LBB0_17
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	mov	x20, x7
	cmp	x19, #16
	b.hi	LBB0_16
; %bb.11:                               ;   in Loop: Header=BB0_9 Depth=2
	cmp	x19, #11
	b.lo	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_9 Depth=2
	udiv	x4, x14, x19
	msub	x4, x4, x19, x14
	lsl	x4, x4, #2
	lsl	x4, x15, x4
	sdiv	x19, x11, x4
	msub	x19, x19, x4, x11
	sub	x4, x4, #1
	mul	x20, x19, x4
	b	LBB0_16
LBB0_13:                                ;   in Loop: Header=BB0_9 Depth=2
	cmp	x5, #24
	b.ne	LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_9 Depth=2
	lsl	x20, x7, #4
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_9 Depth=2
	add	x20, x7, x6
LBB0_16:                                ;   in Loop: Header=BB0_9 Depth=2
	mov	x4, #0                          ; =0x0
	add	x11, x11, x20
	str	x11, [x12]
LBB0_17:                                ;   in Loop: Header=BB0_9 Depth=2
	mov	x19, x7
	cbnz	x7, LBB0_9
; %bb.18:                               ;   in Loop: Header=BB0_9 Depth=2
	add	x7, x4, #7
	cmp	x4, #0
	csel	x7, x7, x4, lt
	asr	x7, x7, #3
	sub	x20, x4, #8
	mov	w19, #19                        ; =0x13
	mov	x4, x7
	cmn	x20, #15
	b.lo	LBB0_9
; %bb.19:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x5, #0                          ; =0x0
	str	x15, [x17]
	b	LBB0_2
LBB0_20:
	str	x11, [sp]
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"fifty-two trillion six-hundred and seventy five million and sixty-one thousand and five-hundred sixty-two\n"

	.section	__DATA,__data
	.globl	_p                              ; @p
	.p2align	3, 0x0
_p:
	.quad	l_.str

	.comm	_n,8,3                          ; @n
	.comm	_b,8,3                          ; @b
	.comm	_u,8,3                          ; @u
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"1+DIY/.K430x9G(kC["

	.comm	_m,8,3                          ; @m
l_.str.2:                               ; @.str.2
	.asciz	"ynwtsflrabg"

l_.str.3:                               ; @.str.3
	.asciz	"%llx\n"

.subsections_via_symbols
