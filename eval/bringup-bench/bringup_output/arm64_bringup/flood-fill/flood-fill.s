	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_floodfill                      ; -- Begin function floodfill
	.p2align	2
_floodfill:                             ; @floodfill
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
	mov	x19, x3
	mov	x20, x2
	mov	x21, x1
	mov	x22, x0
	mov	x23, #0                         ; =0x0
	sxtw	x8, w20
	mov	w24, #10                        ; =0xa
	smaddl	x9, w1, w24, x0
	ldrb	w25, [x9, x8]
	strb	w3, [x9, x8]
Lloh0:
	adrp	x26, _row@PAGE
Lloh1:
	add	x26, x26, _row@PAGEOFF
Lloh2:
	adrp	x27, _col@PAGE
Lloh3:
	add	x27, x27, _col@PAGEOFF
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x23, x23, #4
	cmp	x23, #32
	b.eq	LBB0_6
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x26, x23]
	add	w8, w8, w21
	cmp	w8, #9
	b.hi	LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [x27, x23]
	add	w9, w9, w20
	cmp	w9, #9
	b.hi	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	umaddl	x10, w8, w24, x22
	ldrb	w10, [x10, w9, uxtw]
	cmp	w10, w25
	b.ne	LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	sxtb	w1, w8
	sxtb	w2, w9
	mov	x0, x22
	mov	x3, x19
	bl	_floodfill
	b	LBB0_1
LBB0_6:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_printMatrix                    ; -- Begin function printMatrix
	.p2align	2
_printMatrix:                           ; @printMatrix
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
	mov	x21, #0                         ; =0x0
	add	x22, x0, #4
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
Lloh6:
	adrp	x20, l_.str.1@PAGE
Lloh7:
	add	x20, x20, l_.str.1@PAGEOFF
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x23, x22, x21
	ldursb	x8, [x23, #-4]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldursb	x8, [x23, #-3]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldursb	x8, [x23, #-2]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldursb	x8, [x23, #-1]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23, #1]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23, #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23, #3]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23, #4]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsb	x8, [x23, #5]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_printf
	add	x21, x21, #10
	cmp	x21, #100
	b.ne	LBB1_1
; %bb.2:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w8, #9                          ; =0x9
	str	x8, [sp, #16]
	mov	w8, #3                          ; =0x3
	mov	w9, #67                         ; =0x43
	stp	x9, x8, [sp]
Lloh8:
	adrp	x0, l_.str.2@PAGE
Lloh9:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
Lloh10:
	adrp	x19, _mat@PAGE
Lloh11:
	add	x19, x19, _mat@PAGEOFF
	mov	x0, x19
	bl	_printMatrix
	mov	x0, x19
	mov	w1, #3                          ; =0x3
	mov	w2, #9                          ; =0x9
	mov	w3, #67                         ; =0x43
	bl	_floodfill
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_printMatrix
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_mat                            ; @mat
_mat:
	.ascii	"YYYGGGGGGG"
	.ascii	"YYYYYYGXXX"
	.ascii	"GXGGGGGXXX"
	.ascii	"WXXWWGGGGX"
	.ascii	"WRRRRRGXXX"
	.ascii	"WWWRRGGXXX"
	.ascii	"WBWRRRRRRX"
	.ascii	"WBBBBRRXXX"
	.ascii	"WBBXBBBBXX"
	.ascii	"WBBXXXXXXX"

	.globl	_row                            ; @row
	.p2align	2, 0x0
_row:
	.long	4294967295                      ; 0xffffffff
	.long	4294967295                      ; 0xffffffff
	.long	4294967295                      ; 0xffffffff
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1

	.globl	_col                            ; @col
	.p2align	2, 0x0
_col:
	.long	4294967295                      ; 0xffffffff
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	4294967295                      ; 0xffffffff
	.long	1                               ; 0x1
	.long	4294967295                      ; 0xffffffff
	.long	0                               ; 0x0
	.long	1                               ; 0x1

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"  %c"

l_.str.1:                               ; @.str.1
	.asciz	"\n"

l_.str.2:                               ; @.str.2
	.asciz	"\nBEFORE flooding `%c' @ (%d,%d):\n"

l_.str.3:                               ; @.str.3
	.asciz	"\nAFTER:\n"

.subsections_via_symbols
