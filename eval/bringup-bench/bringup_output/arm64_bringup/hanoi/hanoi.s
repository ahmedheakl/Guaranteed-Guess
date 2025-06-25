	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI0_0:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_1:
	.long	0                               ; 0x0
	.long	2                               ; 0x2
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_2:
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_3:
	.long	0                               ; 0x0
	.long	4                               ; 0x4
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_4:
	.long	0                               ; 0x0
	.long	5                               ; 0x5
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_5:
	.long	0                               ; 0x0
	.long	6                               ; 0x6
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_6:
	.long	0                               ; 0x0
	.long	7                               ; 0x7
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_7:
	.long	0                               ; 0x0
	.long	8                               ; 0x8
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_8:
	.long	0                               ; 0x0
	.long	9                               ; 0x9
	.long	0                               ; 0x0
	.long	0                               ; 0x0
lCPI0_9:
	.long	0                               ; 0x0
	.long	10                              ; 0xa
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
Lloh4:
	adrp	x8, lCPI0_0@PAGE
Lloh5:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	adrp	x21, _num@PAGE
	str	q0, [x21, _num@PAGEOFF]
	adrp	x20, _count@PAGE
	str	xzr, [x20, _count@PAGEOFF]
	mov	w19, #1                         ; =0x1
	mov	w22, #3                         ; =0x3
	mov	w0, #1                          ; =0x1
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x19, x8, [sp]
Lloh6:
	adrp	x19, l_.str.2@PAGE
Lloh7:
	add	x19, x19, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
Lloh8:
	adrp	x8, lCPI0_1@PAGE
Lloh9:
	ldr	q0, [x8, lCPI0_1@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w23, #2                         ; =0x2
	mov	w0, #2                          ; =0x2
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x23, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh10:
	adrp	x8, lCPI0_2@PAGE
Lloh11:
	ldr	q0, [x8, lCPI0_2@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w0, #3                          ; =0x3
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh12:
	adrp	x8, lCPI0_3@PAGE
Lloh13:
	ldr	q0, [x8, lCPI0_3@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #4                         ; =0x4
	mov	w0, #4                          ; =0x4
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh14:
	adrp	x8, lCPI0_4@PAGE
Lloh15:
	ldr	q0, [x8, lCPI0_4@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #5                         ; =0x5
	mov	w0, #5                          ; =0x5
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh16:
	adrp	x8, lCPI0_5@PAGE
Lloh17:
	ldr	q0, [x8, lCPI0_5@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #6                         ; =0x6
	mov	w0, #6                          ; =0x6
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh18:
	adrp	x8, lCPI0_6@PAGE
Lloh19:
	ldr	q0, [x8, lCPI0_6@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #7                         ; =0x7
	mov	w0, #7                          ; =0x7
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh20:
	adrp	x8, lCPI0_7@PAGE
Lloh21:
	ldr	q0, [x8, lCPI0_7@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #8                         ; =0x8
	mov	w0, #8                          ; =0x8
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh22:
	adrp	x8, lCPI0_8@PAGE
Lloh23:
	ldr	q0, [x8, lCPI0_8@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w22, #9                         ; =0x9
	mov	w0, #9                          ; =0x9
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh24:
	adrp	x8, lCPI0_9@PAGE
Lloh25:
	ldr	q0, [x8, lCPI0_9@PAGEOFF]
	str	q0, [x21, _num@PAGEOFF]
	str	xzr, [x20, _count@PAGEOFF]
	mov	w21, #10                        ; =0xa
	mov	w0, #10                         ; =0xa
	mov	w1, #1                          ; =0x1
	mov	w2, #3                          ; =0x3
	bl	_mov
	ldr	x8, [x20, _count@PAGEOFF]
	stp	x21, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpLdr	Lloh16, Lloh17
	.loh AdrpLdr	Lloh14, Lloh15
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function mov
_mov:                                   ; @mov
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
	mov	x20, x2
	mov	x19, x1
Lloh26:
	adrp	x24, _num@PAGE
Lloh27:
	add	x24, x24, _num@PAGEOFF
	adrp	x23, _count@PAGE
	subs	w21, w0, #1
	b.ne	LBB1_2
; %bb.1:
	ldr	x8, [x23, _count@PAGEOFF]
	sxtw	x25, w20
	b	LBB1_4
LBB1_2:
	mov	x8, x20
	sxtw	x25, w8
	mov	w26, #6                         ; =0x6
	lsl	x27, x25, #2
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x22, x19
	add	w8, w19, w20
	sub	w19, w26, w8
	mov	x0, x21
	mov	x1, x22
	mov	x2, x19
	bl	_mov
	sbfiz	x8, x22, #2, #32
	ldr	w9, [x24, x8]
	sub	w9, w9, #1
	str	w9, [x24, x8]
	ldr	w8, [x24, x27]
	add	w8, w8, #1
	str	w8, [x24, x27]
	ldr	x8, [x23, _count@PAGEOFF]
	add	x8, x8, #1
	str	x8, [x23, _count@PAGEOFF]
	subs	w21, w21, #1
	b.ne	LBB1_3
LBB1_4:
	sbfiz	x9, x19, #2, #32
	ldr	w10, [x24, x9]
	sub	w10, w10, #1
	str	w10, [x24, x9]
	lsl	x9, x25, #2
	ldr	w10, [x24, x9]
	add	w10, w10, #1
	str	w10, [x24, x9]
	add	x8, x8, #1
	str	x8, [x23, _count@PAGEOFF]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Towers of Hanoi Puzzle Test Program\n"

l_.str.1:                               ; @.str.1
	.asciz	"Disks     Moves\n"

.zerofill __DATA,__bss,_num,16,4        ; @num
.zerofill __DATA,__bss,_count,8,3       ; @count
l_.str.2:                               ; @.str.2
	.asciz	"%3d  %10ld\n"

.subsections_via_symbols
