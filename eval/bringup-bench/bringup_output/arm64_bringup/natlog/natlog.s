	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	fmov	d0, #1.00000000
	mov	w8, #34465                      ; =0x86a1
	movk	w8, #1, lsl #16
	mov	x9, #50290                      ; =0xc472
	movk	x9, #31834, lsl #16
	movk	x9, #10, lsl #32
	movk	x9, #16368, lsl #48
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	fmov	d1, x9
	fmul	d0, d0, d1
	sub	w8, w8, #1
	cmp	w8, #1
	b.hi	LBB0_1
; %bb.2:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"natlog: e=%f\n"

.subsections_via_symbols
