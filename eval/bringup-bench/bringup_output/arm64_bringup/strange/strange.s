	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	w8, #9                          ; =0x9
	str	x8, [sp]
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
	mov	w21, #8                         ; =0x8
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #7                          ; =0x7
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #6                          ; =0x6
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #5                          ; =0x5
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #4                          ; =0x4
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #3                          ; =0x3
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #2                          ; =0x2
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	xzr, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh2:
	adrp	x19, l_.str.1@PAGE
Lloh3:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh4:
	adrp	x20, l_.str.2@PAGE
Lloh5:
	add	x20, x20, l_.str.2@PAGEOFF
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	xzr, [sp]
	mov	x0, x20
	bl	_libmin_printf
	bl	_libmin_success
	b	LBB0_1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d "

l_.str.1:                               ; @.str.1
	.asciz	"\n| %d |"

l_.str.2:                               ; @.str.2
	.asciz	"\n %d"

.subsections_via_symbols
