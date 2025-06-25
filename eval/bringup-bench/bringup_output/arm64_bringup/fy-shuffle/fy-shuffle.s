	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fy_shuffle                     ; -- Begin function fy_shuffle
	.p2align	2
_fy_shuffle:                            ; @fy_shuffle
	.cfi_startproc
; %bb.0:
	cmp	w1, #2
	b.lt	LBB0_9
; %bb.1:
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
	mov	x19, x1
	mov	x20, x0
	mov	w21, w1
	mov	w22, #2147483647                ; =0x7fffffff
	mov	x23, x21
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	sub	x8, x23, #1
	sbfiz	x9, x24, #2, #32
	ldr	w10, [x20, x9]
	and	x11, x8, #0xffffffff
	lsl	x11, x11, #2
	ldr	w12, [x20, x11]
	str	w12, [x20, x9]
	str	w10, [x20, x11]
	cmp	x23, #2
	mov	x23, x8
	b.le	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	udiv	w8, w22, w23
	mul	w24, w8, w23
LBB0_5:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_libmin_rand
	cmp	w0, w24
	b.ge	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	sdiv	w8, w0, w23
	msub	w24, w8, w23, w0
	cmp	w24, w19
	ccmp	x23, x21, #0, lt
	b.gt	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	tbz	w24, #31, LBB0_3
	b	LBB0_2
LBB0_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
LBB0_9:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print                          ; -- Begin function print
	.p2align	2
_print:                                 ; @print
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
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
	mov	x20, x2
	mov	x19, x1
	str	x0, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	cmp	w20, #1
	b.lt	LBB1_3
; %bb.1:
	mov	w21, w20
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19], #4
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	subs	x21, x21, #1
	b.ne	LBB1_2
LBB1_3:
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_libmin_printf
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
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
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	w22, #0                         ; =0x0
Lloh6:
	adrp	x19, l_.str@PAGE
Lloh7:
	add	x19, x19, l_.str@PAGEOFF
Lloh8:
	adrp	x24, _a@PAGE
Lloh9:
	add	x24, x24, _a@PAGEOFF
Lloh10:
	adrp	x20, l_.str.1@PAGE
Lloh11:
	add	x20, x20, l_.str.1@PAGEOFF
Lloh12:
	adrp	x21, l_.str.2@PAGE
Lloh13:
	add	x21, x21, l_.str.2@PAGEOFF
	mov	w25, #2147483647                ; =0x7fffffff
Lloh14:
	adrp	x28, _b@PAGE
Lloh15:
	add	x28, x28, _b@PAGEOFF
Lloh16:
	adrp	x23, l_.str.6@PAGE
Lloh17:
	add	x23, x23, l_.str.6@PAGEOFF
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	str	x23, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #4]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #12]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #20]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #36]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #44]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #48]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #52]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #56]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #60]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #64]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #68]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #72]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	add	w22, w22, #1
	cmp	w22, #8
	b.eq	LBB2_14
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_4 Depth 2
                                        ;       Child Loop BB2_5 Depth 3
                                        ;     Child Loop BB2_10 Depth 2
                                        ;       Child Loop BB2_11 Depth 3
Lloh18:
	adrp	x8, l_.str.3@PAGE
Lloh19:
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #4]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #12]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #20]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #36]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	mov	w26, #11                        ; =0xb
	b	LBB2_4
LBB2_3:                                 ;   in Loop: Header=BB2_4 Depth=2
	sub	x8, x26, #1
	sbfiz	x9, x27, #2, #32
	ldr	w10, [x24, x9]
	lsl	x11, x8, #2
	ldr	w12, [x24, x11]
	str	w12, [x24, x9]
	str	w10, [x24, x11]
	cmp	x26, #2
	mov	x26, x8
	b.ls	LBB2_8
LBB2_4:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_5 Depth 3
	udiv	w8, w25, w26
	mul	w27, w8, w26
LBB2_5:                                 ;   Parent Loop BB2_2 Depth=1
                                        ;     Parent Loop BB2_4 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	bl	_libmin_rand
	cmp	w0, w27
	b.ge	LBB2_5
; %bb.6:                                ;   in Loop: Header=BB2_4 Depth=2
	sdiv	w8, w0, w26
	msub	w27, w8, w26, w0
	cmp	w27, #11
	b.lo	LBB2_3
; %bb.7:                                ;   in Loop: Header=BB2_4 Depth=2
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB2_3
LBB2_8:                                 ;   in Loop: Header=BB2_2 Depth=1
Lloh20:
	adrp	x8, l_.str.4@PAGE
Lloh21:
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #4]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #12]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #20]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #36]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x24, #40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
Lloh22:
	adrp	x8, l_.str.5@PAGE
Lloh23:
	add	x8, x8, l_.str.5@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #4]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #12]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #20]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #36]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #44]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #48]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #52]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #56]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #60]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #64]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #68]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x28, #72]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	mov	w26, #19                        ; =0x13
	b	LBB2_10
LBB2_9:                                 ;   in Loop: Header=BB2_10 Depth=2
	sub	x8, x26, #1
	sbfiz	x9, x27, #2, #32
	ldr	w10, [x28, x9]
	lsl	x11, x8, #2
	ldr	w12, [x28, x11]
	str	w12, [x28, x9]
	str	w10, [x28, x11]
	cmp	x26, #2
	mov	x26, x8
	b.ls	LBB2_1
LBB2_10:                                ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_11 Depth 3
	udiv	w8, w25, w26
	mul	w27, w8, w26
LBB2_11:                                ;   Parent Loop BB2_2 Depth=1
                                        ;     Parent Loop BB2_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	bl	_libmin_rand
	cmp	w0, w27
	b.ge	LBB2_11
; %bb.12:                               ;   in Loop: Header=BB2_10 Depth=2
	sdiv	w8, w0, w26
	msub	w27, w8, w26, w0
	cmp	w27, #19
	b.lo	LBB2_9
; %bb.13:                               ;   in Loop: Header=BB2_10 Depth=2
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB2_9
LBB2_14:
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
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s"

l_.str.1:                               ; @.str.1
	.asciz	"%2d "

l_.str.2:                               ; @.str.2
	.asciz	"\n"

	.section	__DATA,__data
	.globl	_a                              ; @a
	.p2align	2, 0x0
_a:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9
	.long	10                              ; 0xa

	.globl	_b                              ; @b
	.p2align	2, 0x0
_b:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9
	.long	10                              ; 0xa
	.long	11                              ; 0xb
	.long	12                              ; 0xc
	.long	13                              ; 0xd
	.long	14                              ; 0xe
	.long	15                              ; 0xf
	.long	16                              ; 0x10
	.long	17                              ; 0x11
	.long	18                              ; 0x12

	.section	__TEXT,__cstring,cstring_literals
l_.str.3:                               ; @.str.3
	.asciz	"A (before): "

l_.str.4:                               ; @.str.4
	.asciz	"A (after):  "

l_.str.5:                               ; @.str.5
	.asciz	"B (before): "

l_.str.6:                               ; @.str.6
	.asciz	"B (after):  "

.subsections_via_symbols
