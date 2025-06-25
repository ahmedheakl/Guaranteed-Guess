	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_gcd                            ; -- Begin function gcd
	.p2align	2
_gcd:                                   ; @gcd
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	ldr	w0, [x0]
	cmp	w1, #2
	b.lo	LBB0_3
; %bb.1:
	mov	w9, #1                          ; =0x1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x8, w9, uxtw #2]
	udiv	w11, w10, w0
	msub	w10, w11, w0, w10
	cmp	w10, #0
	csel	w0, w0, w10, eq
	cinc	w9, w9, eq
	cmp	w9, w1
	b.lo	LBB0_2
LBB0_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	w0, #256                        ; =0x100
	bl	_libmin_malloc
	mov	x19, x0
	mov	x20, #0                         ; =0x0
	mov	w21, #51819                     ; =0xca6b
	movk	w21, #27487, lsl #16
	mov	w22, #38528                     ; =0x9680
	movk	w22, #152, lsl #16
	mov	w23, #37                        ; =0x25
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	umull	x8, w0, w21
	lsr	x8, x8, #54
	msub	w8, w8, w22, w0
	mul	w8, w8, w23
	str	w8, [x19, x20]
	add	x20, x20, #4
	cmp	x20, #256
	b.ne	LBB1_1
; %bb.2:
	mov	w8, #64                         ; =0x40
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	x21, #0                         ; =0x0
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19, x21]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	x21, x21, #4
	cmp	x21, #256
	b.ne	LBB1_3
; %bb.4:
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x19]
	mov	w9, #1                          ; =0x1
LBB1_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x19, w9, uxtw #2]
	udiv	w11, w10, w8
	msub	w10, w11, w8, w10
	cmp	w10, #0
	csel	w8, w8, w10, eq
	cinc	w9, w9, eq
	cmp	w9, #64
	b.lo	LBB1_5
; %bb.6:
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_free
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"INFO: a[%d] = { "

l_.str.1:                               ; @.str.1
	.asciz	"%d, "

l_.str.2:                               ; @.str.2
	.asciz	" }\n"

l_.str.3:                               ; @.str.3
	.asciz	"GCD of list: %u\n"

.subsections_via_symbols
