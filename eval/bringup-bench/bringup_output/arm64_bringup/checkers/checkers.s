	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	adrp	x20, _infile@PAGE
	ldr	x0, [x20, _infile@PAGEOFF]
Lloh3:
	adrp	x1, l_.str.1@PAGE
Lloh4:
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_libmin_mopen
	mov	w0, #64                         ; =0x40
	bl	_libmin_malloc
	mov	x19, x0
	bl	_fill_print_initial
	mov	x0, x19
	bl	_print_board
	ldr	x2, [x20, _infile@PAGEOFF]
	add	x0, sp, #40
	mov	w1, #64                         ; =0x40
	bl	_libmin_mgets
	add	x26, sp, #36
	add	x27, sp, #37
	stp	x27, x26, [sp, #16]
	add	x28, sp, #38
	add	x25, sp, #39
	stp	x25, x28, [sp]
Lloh5:
	adrp	x1, l_.str.2@PAGE
Lloh6:
	add	x1, x1, l_.str.2@PAGEOFF
	add	x0, sp, #40
	bl	_libmin_sscanf
	cmp	w0, #4
	b.ne	LBB0_12
; %bb.1:
Lloh7:
	adrp	x22, _main.valid_moves@PAGE
Lloh8:
	add	x22, x22, _main.valid_moves@PAGEOFF
	mov	w20, #1                         ; =0x1
	mov	w21, #1                         ; =0x1
Lloh9:
	adrp	x23, l_.str.2@PAGE
Lloh10:
	add	x23, x23, l_.str.2@PAGEOFF
	b	LBB0_5
LBB0_2:                                 ;   in Loop: Header=BB0_5 Depth=1
	cbz	w11, LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_5 Depth=1
	mov	w0, #6                          ; =0x6
	bl	_print_error_message
	mov	w0, #6                          ; =0x6
	bl	_libmin_fail
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldrsb	w1, [sp, #39]
	ldrsb	w2, [sp, #38]
	ldrsb	w3, [sp, #37]
	ldrsb	w4, [sp, #36]
	mov	x0, x19
	bl	_change_board
	ldrsb	w3, [sp, #39]
	ldrsb	w4, [sp, #38]
	ldrsb	w5, [sp, #37]
	ldrsb	w6, [sp, #36]
	mov	w0, #0                          ; =0x0
	mov	x1, x20
	mov	x2, x19
	mov	x7, x21
	bl	_print_move_information
	mov	x0, x19
	bl	_print_board
	eor	w20, w20, #0x1
	add	w21, w21, #1
Lloh11:
	adrp	x8, _infile@PAGE
Lloh12:
	ldr	x2, [x8, _infile@PAGEOFF]
	add	x0, sp, #40
	mov	w1, #64                         ; =0x40
	bl	_libmin_mgets
	stp	x27, x26, [sp, #16]
	add	x0, sp, #40
	stp	x25, x28, [sp]
	mov	x1, x23
	bl	_libmin_sscanf
	cmp	w0, #4
	b.ne	LBB0_13
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_10 Depth 2
	ldrsb	w1, [sp, #39]
	ldrsb	w2, [sp, #38]
	ldrsb	w3, [sp, #37]
	ldrsb	w4, [sp, #36]
	mov	x0, x19
	mov	x5, x20
	bl	_check_move_error_1_to_5
	cbz	w0, LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	x24, x0
	bl	_print_error_message
	mov	x0, x24
	bl	_libmin_fail
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldrsb	w1, [sp, #39]
	ldrsb	w2, [sp, #38]
	mov	x0, x19
	mov	x3, x22
	mov	x4, x20
	bl	_all_possible_moves
	cmp	w0, #1
	b.lt	LBB0_3
; %bb.8:                                ;   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #37]
	ldrb	w9, [sp, #36]
	mov	w10, w0
	mov	w11, #1                         ; =0x1
Lloh13:
	adrp	x12, _main.valid_moves@PAGE+1
Lloh14:
	add	x12, x12, _main.valid_moves@PAGEOFF+1
	b	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=2
	add	x12, x12, #2
	subs	x10, x10, #1
	b.eq	LBB0_2
LBB0_10:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldurb	w13, [x12, #-1]
	cmp	w13, w8
	b.ne	LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	ldrb	w13, [x12]
	cmp	w13, w9
	csel	w11, wzr, w11, eq
	b	LBB0_9
LBB0_12:
	mov	w21, #1                         ; =0x1
	mov	w20, #1                         ; =0x1
LBB0_13:
	ldrb	w8, [sp, #39]
	cmp	w8, #65
	cset	w9, eq
	mov	w10, #100                       ; =0x64
	cmp	w8, #80
	csel	w8, w10, w9, eq
	cbz	w8, LBB0_23
; %bb.14:
	add	w26, w8, w21
Lloh15:
	adrp	x27, _initial_children@GOTPAGE
Lloh16:
	ldr	x27, [x27, _initial_children@GOTPAGEOFF]
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_16 Depth=1
	ldrsb	w1, [x24, #4]
	ldrsb	w2, [x24, #5]
	ldrsb	w3, [x24, #6]
	ldrsb	w4, [x24, #7]
	mov	x0, x19
	bl	_change_board
	ldrsb	w3, [x24, #4]
	ldrsb	w4, [x24, #5]
	ldrsb	w5, [x24, #6]
	ldrsb	w6, [x24, #7]
	mov	w0, #1                          ; =0x1
	mov	x1, x20
	mov	x2, x19
	mov	x7, x21
	bl	_print_move_information
	mov	x0, x19
	bl	_print_board
	cmp	w20, #0
	cset	w20, eq
	add	w21, w21, #1
	mov	x0, x23
	bl	_free_tree
	cmp	w21, w26
	b.eq	LBB0_23
LBB0_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
	mov	w0, #96                         ; =0x60
	bl	_libmin_malloc
	mov	x23, x0
	mov	x8, #0                          ; =0x0
	str	wzr, [x0]
LBB0_17:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x9, x19, x8
	ldrb	w10, [x9]
	add	x11, x23, x8
	strb	w10, [x11, #8]
	ldrb	w10, [x9, #1]
	strb	w10, [x11, #9]
	ldrb	w10, [x9, #2]
	strb	w10, [x11, #10]
	ldrb	w10, [x9, #3]
	strb	w10, [x11, #11]
	ldrb	w10, [x9, #4]
	strb	w10, [x11, #12]
	ldrb	w10, [x9, #5]
	strb	w10, [x11, #13]
	ldrb	w10, [x9, #6]
	strb	w10, [x11, #14]
	ldrb	w9, [x9, #7]
	strb	w9, [x11, #15]
	add	x8, x8, #8
	cmp	x8, #64
	b.ne	LBB0_17
; %bb.18:                               ;   in Loop: Header=BB0_16 Depth=1
	stp	w20, wzr, [x23, #72]
	ldr	q0, [x27]
	str	q0, [x23, #80]
	mov	x0, x23
	bl	_generate_tree_depth_3
	ldr	w8, [x23, #76]
	cbnz	w8, LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	cmp	w20, #0
Lloh17:
	adrp	x8, _WHITE@GOTPAGE
Lloh18:
	ldr	x8, [x8, _WHITE@GOTPAGEOFF]
Lloh19:
	adrp	x9, _BLACK@GOTPAGE
Lloh20:
	ldr	x9, [x9, _BLACK@GOTPAGEOFF]
	csel	x8, x9, x8, eq
	str	x8, [sp]
Lloh21:
	adrp	x0, l_.str.3@PAGE
Lloh22:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
LBB0_20:                                ;   in Loop: Header=BB0_16 Depth=1
	add	x22, x23, #80
	mov	x0, x23
	bl	_move_score_forced
	mov	x25, x0
	mov	w28, #0                         ; =0x0
LBB0_21:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x22, [x22]
	ldr	x24, [x22]
	mov	x0, x24
	bl	_move_score_forced
	cmp	w0, w25
	b.eq	LBB0_15
; %bb.22:                               ;   in Loop: Header=BB0_21 Depth=2
	add	x22, x22, #8
	add	w28, w28, #1
	ldr	w8, [x23, #76]
	cmp	w28, w8
	b.lt	LBB0_21
	b	LBB0_15
LBB0_23:
	mov	x0, x19
	bl	_libmin_free
	bl	_libmin_success
	ldur	x8, [x29, #-88]
Lloh23:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh24:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh25:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_25
; %bb.24:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB0_25:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdr	Lloh11, Lloh12
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh23, Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	___test0                        ; @__test0
___test0:
	.ascii	"G6-H5\nH3-G4\nH7-G6\nF3-E4\nH5-F3\nE2-G4\nG8-H7\nE4-F5\nG6-H5\nG2-F3\nP\n"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"test0.txt"

	.section	__DATA,__data
	.globl	___infile                       ; @__infile
	.p2align	3, 0x0
___infile:
	.quad	l_.str
	.quad	62                              ; 0x3e
	.quad	___test0
	.long	0                               ; 0x0
	.space	4

	.globl	_infile                         ; @infile
	.p2align	3, 0x0
_infile:
	.quad	___infile

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"r"

l_.str.2:                               ; @.str.2
	.asciz	"%c%c-%c%c\n"

.zerofill __DATA,__bss,_main.valid_moves,8,0 ; @main.valid_moves
l_.str.3:                               ; @.str.3
	.asciz	"%s WIN!\n"

.subsections_via_symbols
