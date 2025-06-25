	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_dayOfWeek                      ; -- Begin function dayOfWeek
	.p2align	2
_dayOfWeek:                             ; @dayOfWeek
	.cfi_startproc
; %bb.0:
	cmp	w1, #3
	cset	w8, lt
	sub	w8, w0, w8
	add	w9, w8, w2
	add	w10, w8, #3
	cmp	w8, #0
	csel	w10, w10, w8, lt
	mov	w11, #31457                     ; =0x7ae1
	movk	w11, #44564, lsl #16
	smull	x11, w8, w11
	lsr	x12, x11, #32
	lsr	x11, x11, #63
	add	w11, w11, w12, asr #5
	mov	w12, #34079                     ; =0x851f
	movk	w12, #20971, lsl #16
	smull	x8, w8, w12
	lsr	x12, x8, #32
	lsr	x8, x8, #63
	add	w8, w8, w12, asr #7
Lloh0:
	adrp	x12, l___const.dayOfWeek.t@PAGE
Lloh1:
	add	x12, x12, l___const.dayOfWeek.t@PAGEOFF
	add	x12, x12, w1, sxtw #2
	ldur	w12, [x12, #-4]
	add	w9, w9, w10, asr #2
	add	w9, w9, w11
	add	w8, w8, w12
	add	w8, w9, w8
	mov	w9, #9363                       ; =0x2493
	movk	w9, #37449, lsl #16
	smull	x9, w8, w9
	lsr	x9, x9, #32
	add	w9, w9, w8
	asr	w10, w9, #2
	add	w9, w10, w9, lsr #31
	sub	w9, w9, w9, lsl #3
	add	w0, w8, w9
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
Lloh2:
	adrp	x20, l_.str.2@PAGE
Lloh3:
	add	x20, x20, l_.str.2@PAGEOFF
	mov	w8, #2024                       ; =0x7e8
	stp	x8, x20, [sp, #16]
	mov	w8, #20                         ; =0x14
	mov	w21, #2                         ; =0x2
	stp	x21, x8, [sp]
Lloh4:
	adrp	x19, l_.str.7@PAGE
Lloh5:
	add	x19, x19, l_.str.7@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #1994                       ; =0x7ca
	stp	x8, x20, [sp, #16]
	mov	w8, #5                          ; =0x5
	mov	w9, #4                          ; =0x4
	stp	x9, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh6:
	adrp	x8, l_.str.3@PAGE
Lloh7:
	add	x8, x8, l_.str.3@PAGEOFF
	mov	w9, #1975                       ; =0x7b7
	stp	x9, x8, [sp, #16]
	mov	w8, #1                          ; =0x1
	stp	x8, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh8:
	adrp	x8, l_.str.5@PAGE
Lloh9:
	add	x8, x8, l_.str.5@PAGEOFF
	mov	w9, #1964                       ; =0x7ac
	stp	x9, x8, [sp, #16]
	mov	w8, #7                          ; =0x7
	stp	x21, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.dayOfWeek.t
l___const.dayOfWeek.t:
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	2                               ; 0x2
	.long	5                               ; 0x5
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	5                               ; 0x5
	.long	1                               ; 0x1
	.long	4                               ; 0x4
	.long	6                               ; 0x6
	.long	2                               ; 0x2
	.long	4                               ; 0x4

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Tuesday"

l_.str.3:                               ; @.str.3
	.asciz	"Wednesday"

l_.str.5:                               ; @.str.5
	.asciz	"Friday"

l_.str.7:                               ; @.str.7
	.asciz	"%02d/%02d/%04d was a `%s'\n"

.subsections_via_symbols
