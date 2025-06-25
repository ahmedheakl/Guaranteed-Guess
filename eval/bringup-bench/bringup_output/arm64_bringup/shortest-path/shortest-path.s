	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_floydWarshall                  ; -- Begin function floydWarshall
	.p2align	2
_floydWarshall:                         ; @floydWarshall
	.cfi_startproc
; %bb.0:
	mov	x8, #0                          ; =0x0
Lloh0:
	adrp	x9, _dist@GOTPAGE
Lloh1:
	ldr	x9, [x9, _dist@GOTPAGEOFF]
	ldp	q0, q1, [x0]
	stp	q0, q1, [x9]
	ldp	q0, q1, [x0, #32]
	stp	q0, q1, [x9, #32]
	ldp	q0, q1, [x0, #64]
	stp	q0, q1, [x9, #64]
	ldp	q0, q1, [x0, #96]
	stp	q0, q1, [x9, #96]
	ldp	q0, q1, [x0, #128]
	stp	q0, q1, [x9, #128]
	ldp	q0, q1, [x0, #160]
	stp	q0, q1, [x9, #160]
	ldp	q0, q1, [x0, #192]
	stp	q0, q1, [x9, #192]
	ldp	q0, q1, [x0, #224]
	mov	x10, x9
	stp	q0, q1, [x9, #224]
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x8, x8, #1
	add	x10, x10, #4
	cmp	x8, #8
	b.eq	LBB0_20
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	mov	x11, #0                         ; =0x0
	add	x12, x9, x8, lsl #5
	add	x13, x12, #4
	add	x14, x12, #8
	add	x15, x12, #12
	add	x16, x12, #16
	add	x17, x12, #20
	add	x0, x12, #24
	add	x1, x12, #28
	b	LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=2
	add	x11, x11, #32
	cmp	x11, #256
	b.eq	LBB0_1
LBB0_4:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w2, [x10, x11]
	ldr	w3, [x12]
	ldr	w4, [x9, x11]
	add	w3, w3, w2
	cmp	w3, w4
	b.ge	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	str	w3, [x9, x11]
	ldr	w2, [x10, x11]
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=2
	ldr	w5, [x13]
	add	x4, x9, x11
	add	x3, x4, #16
	ldr	w6, [x4, #4]
	add	w5, w5, w2
	cmp	w5, w6
	b.ge	LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=2
	stur	w5, [x3, #-12]
	ldr	w2, [x10, x11]
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=2
	ldr	w5, [x14]
	ldr	w6, [x4, #8]
	add	w4, w5, w2
	cmp	w4, w6
	b.ge	LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=2
	stur	w4, [x3, #-8]
	ldr	w2, [x10, x11]
LBB0_10:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w4, [x15]
	add	x3, x9, x11
	ldr	w5, [x3, #12]
	add	w4, w4, w2
	cmp	w4, w5
	b.ge	LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_4 Depth=2
	add	x2, x3, #16
	stur	w4, [x2, #-4]
	ldr	w2, [x10, x11]
LBB0_12:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w4, [x16]
	ldr	w5, [x3, #16]
	add	w3, w4, w2
	cmp	w3, w5
	b.ge	LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_4 Depth=2
	add	x2, x9, x11
	str	w3, [x2, #16]
	ldr	w2, [x10, x11]
LBB0_14:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w5, [x17]
	add	x4, x9, x11
	add	x3, x4, #16
	ldr	w6, [x4, #20]
	add	w5, w5, w2
	cmp	w5, w6
	b.ge	LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_4 Depth=2
	str	w5, [x3, #4]
	ldr	w2, [x10, x11]
LBB0_16:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w5, [x0]
	ldr	w6, [x4, #24]
	add	w4, w5, w2
	cmp	w4, w6
	b.ge	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_4 Depth=2
	str	w4, [x3, #8]
	ldr	w2, [x10, x11]
LBB0_18:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w4, [x1]
	add	x3, x9, x11
	ldr	w5, [x3, #28]
	add	w2, w4, w2
	cmp	w2, w5
	b.ge	LBB0_3
; %bb.19:                               ;   in Loop: Header=BB0_4 Depth=2
	add	x3, x3, #16
	str	w2, [x3, #12]
	b	LBB0_3
LBB0_20:
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_printSolution                  ; -- Begin function printSolution
	.p2align	2
_printSolution:                         ; @printSolution
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
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
	mov	x19, x0
	mov	w22, #34463                     ; =0x869f
	movk	w22, #1, lsl #16
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	x23, #0                         ; =0x0
	add	x24, x19, #16
Lloh4:
	adrp	x25, l_.str.2@PAGE
Lloh5:
	add	x25, x25, l_.str.2@PAGEOFF
Lloh6:
	adrp	x19, l_.str.1@PAGE
Lloh7:
	add	x19, x19, l_.str.1@PAGEOFF
Lloh8:
	adrp	x20, l_.str.4@PAGE
Lloh9:
	add	x20, x20, l_.str.4@PAGEOFF
Lloh10:
	adrp	x21, l_.str.3@PAGE
Lloh11:
	add	x21, x21, l_.str.3@PAGEOFF
	b	LBB1_3
LBB1_1:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_printf
	add	x23, x23, #32
	cmp	x23, #256
	b.eq	LBB1_26
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, x24, x23
	ldur	w8, [x8, #-16]
	cmp	w8, w22
	b.ne	LBB1_5
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_6
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_6:                                 ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldur	w8, [x8, #-12]
	cmp	w8, w22
	b.ne	LBB1_8
; %bb.7:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_9:                                 ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldur	w8, [x8, #-8]
	cmp	w8, w22
	b.ne	LBB1_11
; %bb.10:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_12
LBB1_11:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_12:                                ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldur	w8, [x8, #-4]
	cmp	w8, w22
	b.ne	LBB1_14
; %bb.13:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_15
LBB1_14:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_15:                                ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	ldr	w8, [x24, x23]
	cmp	w8, w22
	b.ne	LBB1_17
; %bb.16:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_18
LBB1_17:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_18:                                ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldr	w8, [x8, #4]
	cmp	w8, w22
	b.ne	LBB1_20
; %bb.19:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_21
LBB1_20:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_21:                                ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldr	w8, [x8, #8]
	cmp	w8, w22
	b.ne	LBB1_23
; %bb.22:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x25, [sp]
	mov	x0, x19
	b	LBB1_24
LBB1_23:                                ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
LBB1_24:                                ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_printf
	add	x8, x24, x23
	ldr	w8, [x8, #12]
	cmp	w8, w22
	b.eq	LBB1_1
; %bb.25:                               ;   in Loop: Header=BB1_3 Depth=1
	str	x8, [sp]
	mov	x0, x21
	b	LBB1_2
LBB1_26:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh12:
	adrp	x0, l___const.main.graph@PAGE
Lloh13:
	add	x0, x0, l___const.main.graph@PAGEOFF
	bl	_floydWarshall
Lloh14:
	adrp	x0, _dist@GOTPAGE
Lloh15:
	ldr	x0, [x0, _dist@GOTPAGEOFF]
	bl	_printSolution
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.comm	_dist,256,2                     ; @dist
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Following matrix shows the shortest distances between every pair of vertices \n"

l_.str.1:                               ; @.str.1
	.asciz	"%7s"

l_.str.2:                               ; @.str.2
	.asciz	"INF"

l_.str.3:                               ; @.str.3
	.asciz	"%7d"

l_.str.4:                               ; @.str.4
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.graph
l___const.main.graph:
	.long	0                               ; 0x0
	.long	99999                           ; 0x1869f
	.long	4                               ; 0x4
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	7                               ; 0x7
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	0                               ; 0x0
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	9                               ; 0x9
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	99999                           ; 0x1869f
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	99999                           ; 0x1869f
	.long	2                               ; 0x2
	.long	9                               ; 0x9
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	3                               ; 0x3
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	99999                           ; 0x1869f
	.long	7                               ; 0x7
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	9                               ; 0x9
	.long	99999                           ; 0x1869f
	.long	3                               ; 0x3
	.long	0                               ; 0x0
	.long	99999                           ; 0x1869f
	.long	2                               ; 0x2
	.long	7                               ; 0x7
	.long	7                               ; 0x7
	.long	99999                           ; 0x1869f
	.long	2                               ; 0x2
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	0                               ; 0x0
	.long	8                               ; 0x8
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	9                               ; 0x9
	.long	7                               ; 0x7
	.long	2                               ; 0x2
	.long	8                               ; 0x8
	.long	0                               ; 0x0
	.long	3                               ; 0x3
	.long	99999                           ; 0x1869f
	.long	3                               ; 0x3
	.long	99999                           ; 0x1869f
	.long	99999                           ; 0x1869f
	.long	7                               ; 0x7
	.long	99999                           ; 0x1869f
	.long	3                               ; 0x3
	.long	0                               ; 0x0

.subsections_via_symbols
