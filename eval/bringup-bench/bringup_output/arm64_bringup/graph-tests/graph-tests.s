	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_createNode                     ; -- Begin function createNode
	.p2align	2
_createNode:                            ; @createNode
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w19, [x0]
	str	xzr, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_createGraph                    ; -- Begin function createGraph
	.p2align	2
_createGraph:                           ; @createGraph
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #24                         ; =0x18
	bl	_libmin_malloc
	mov	x19, x0
	str	w20, [x0]
	sbfiz	x0, x20, #3, #32
	bl	_libmin_malloc
	str	x0, [x19, #8]
	sbfiz	x0, x20, #2, #32
	bl	_libmin_malloc
	str	x0, [x19, #16]
	cmp	w20, #1
	b.lt	LBB1_3
; %bb.1:
	mov	x8, #0                          ; =0x0
	mov	w9, w20
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x19, #8]
	str	xzr, [x10, x8, lsl #3]
	ldr	x10, [x19, #16]
	str	wzr, [x10, x8, lsl #2]
	add	x8, x8, #1
	cmp	x9, x8
	b.ne	LBB1_2
LBB1_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_addEdge                        ; -- Begin function addEdge
	.p2align	2
_addEdge:                               ; @addEdge
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w19, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x21, #8]
	sbfiz	x9, x20, #3, #32
	ldr	x10, [x8, x9]
	str	x10, [x0, #8]
	str	x0, [x8, x9]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x21, #8]
	sbfiz	x9, x19, #3, #32
	ldr	x10, [x8, x9]
	str	x10, [x0, #8]
	str	x0, [x8, x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_createQueue                    ; -- Begin function createQueue
	.p2align	2
_createQueue:                           ; @createQueue
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #168                        ; =0xa8
	bl	_libmin_malloc
	movi.2d	v0, #0xffffffffffffffff
	str	d0, [x0, #160]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_isEmpty                        ; -- Begin function isEmpty
	.p2align	2
_isEmpty:                               ; @isEmpty
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #164]
	cmn	w8, #1
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_enqueue                        ; -- Begin function enqueue
	.p2align	2
_enqueue:                               ; @enqueue
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #164]
	cmp	w8, #39
	b.ne	LBB5_2
; %bb.1:
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	b	_libmin_printf
LBB5_2:
	ldr	w9, [x0, #160]
	cmn	w9, #1
	b.ne	LBB5_4
; %bb.3:
	str	wzr, [x0, #160]
LBB5_4:
	add	w8, w8, #1
	str	w8, [x0, #164]
	str	w1, [x0, w8, sxtw #2]
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_dequeue                        ; -- Begin function dequeue
	.p2align	2
_dequeue:                               ; @dequeue
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	w8, [x0, #164]
	cmn	w8, #1
	b.eq	LBB6_3
; %bb.1:
	mov	x20, x0
	ldrsw	x9, [x0, #160]
	ldr	w19, [x0, x9, lsl #2]
	add	w10, w9, #1
	str	w10, [x0, #160]
	cmp	w9, w8
	b.lt	LBB6_4
; %bb.2:
Lloh2:
	adrp	x0, l_.str.2@PAGE
Lloh3:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	movi.2d	v0, #0xffffffffffffffff
	str	d0, [x20, #160]
	b	LBB6_4
LBB6_3:
Lloh4:
	adrp	x0, l_.str.1@PAGE
Lloh5:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	w19, #-1                        ; =0xffffffff
LBB6_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_printQueue                     ; -- Begin function printQueue
	.p2align	2
_printQueue:                            ; @printQueue
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
	ldr	w8, [x0, #164]
	cmn	w8, #1
	b.eq	LBB7_3
; %bb.1:
	mov	x19, x0
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	ldp	w22, w8, [x19, #160]
                                        ; kill: def $w22 killed $w22 def $x22
	sxtw	x22, w22
	cmp	w22, w8
	b.le	LBB7_4
; %bb.2:
Lloh8:
	adrp	x20, l_.str.5@PAGE
Lloh9:
	add	x20, x20, l_.str.5@PAGEOFF
	b	LBB7_6
LBB7_3:
Lloh10:
	adrp	x20, l_.str.1@PAGE
Lloh11:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB7_6
LBB7_4:
Lloh12:
	adrp	x21, l_.str.4@PAGE
Lloh13:
	add	x21, x21, l_.str.4@PAGEOFF
Lloh14:
	adrp	x20, l_.str.5@PAGE
Lloh15:
	add	x20, x20, l_.str.5@PAGEOFF
LBB7_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19, x22, lsl #2]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	add	x8, x22, #1
	ldrsw	x9, [x19, #164]
	cmp	x22, x9
	mov	x22, x8
	b.lt	LBB7_5
LBB7_6:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_libmin_printf
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_bfs                            ; -- Begin function bfs
	.p2align	2
_bfs:                                   ; @bfs
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
	mov	x21, x1
	mov	x19, x0
	mov	w0, #168                        ; =0xa8
	bl	_libmin_malloc
	mov	x20, x0
	movi.2d	v0, #0xffffffffffffffff
	str	d0, [x0, #160]
	ldr	x8, [x19, #16]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, w21, sxtw #2]
	ldr	w8, [x0, #164]
	cmp	w8, #39
	b.ne	LBB8_2
; %bb.1:
Lloh16:
	adrp	x0, l_.str@PAGE
Lloh17:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	b	LBB8_5
LBB8_2:
	ldr	w9, [x20, #160]
	cmn	w9, #1
	b.ne	LBB8_4
; %bb.3:
	str	wzr, [x20, #160]
LBB8_4:
	add	w8, w8, #1
	str	w8, [x20, #164]
	str	w21, [x20, w8, sxtw #2]
LBB8_5:
	ldr	w8, [x20, #164]
	cmn	w8, #1
	b.eq	LBB8_22
; %bb.6:
Lloh18:
	adrp	x21, l_.str.3@PAGE
Lloh19:
	add	x21, x21, l_.str.3@PAGEOFF
Lloh20:
	adrp	x22, l_.str.5@PAGE
Lloh21:
	add	x22, x22, l_.str.5@PAGEOFF
Lloh22:
	adrp	x23, l_.str.1@PAGE
Lloh23:
	add	x23, x23, l_.str.1@PAGEOFF
Lloh24:
	adrp	x24, l_.str.6@PAGE
Lloh25:
	add	x24, x24, l_.str.6@PAGEOFF
Lloh26:
	adrp	x25, l_.str@PAGE
Lloh27:
	add	x25, x25, l_.str@PAGEOFF
	mov	w28, #1                         ; =0x1
Lloh28:
	adrp	x27, l_.str.4@PAGE
Lloh29:
	add	x27, x27, l_.str.4@PAGEOFF
	b	LBB8_8
LBB8_7:                                 ;   in Loop: Header=BB8_8 Depth=1
	ldr	w8, [x20, #164]
	cmn	w8, #1
	b.eq	LBB8_22
LBB8_8:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_9 Depth 2
                                        ;     Child Loop BB8_17 Depth 2
	mov	x0, x21
	bl	_libmin_printf
	ldp	w26, w8, [x20, #160]
                                        ; kill: def $w26 killed $w26 def $x26
	sxtw	x26, w26
	cmp	w26, w8
	b.gt	LBB8_10
LBB8_9:                                 ;   Parent Loop BB8_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x20, x26, lsl #2]
	str	x8, [sp]
	mov	x0, x27
	bl	_libmin_printf
	add	x8, x26, #1
	ldrsw	x9, [x20, #164]
	cmp	x26, x9
	mov	x26, x8
	b.lt	LBB8_9
LBB8_10:                                ;   in Loop: Header=BB8_8 Depth=1
	mov	x0, x22
	bl	_libmin_printf
	ldr	w8, [x20, #164]
	cmn	w8, #1
	b.eq	LBB8_13
; %bb.11:                               ;   in Loop: Header=BB8_8 Depth=1
	ldrsw	x9, [x20, #160]
	ldr	w26, [x20, x9, lsl #2]
	add	w10, w9, #1
	str	w10, [x20, #160]
	cmp	w9, w8
	b.lt	LBB8_14
; %bb.12:                               ;   in Loop: Header=BB8_8 Depth=1
Lloh30:
	adrp	x0, l_.str.2@PAGE
Lloh31:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	movi.2d	v0, #0xffffffffffffffff
	str	d0, [x20, #160]
	b	LBB8_14
LBB8_13:                                ;   in Loop: Header=BB8_8 Depth=1
	mov	x0, x23
	bl	_libmin_printf
	mov	w26, #-1                        ; =0xffffffff
LBB8_14:                                ;   in Loop: Header=BB8_8 Depth=1
	str	x26, [sp]
	mov	x0, x24
	bl	_libmin_printf
	ldr	x8, [x19, #8]
	ldr	x26, [x8, w26, sxtw #3]
	cbnz	x26, LBB8_17
	b	LBB8_7
LBB8_15:                                ;   in Loop: Header=BB8_17 Depth=2
	mov	x0, x25
	bl	_libmin_printf
LBB8_16:                                ;   in Loop: Header=BB8_17 Depth=2
	ldr	x26, [x26, #8]
	cbz	x26, LBB8_7
LBB8_17:                                ;   Parent Loop BB8_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [x26]
	ldr	x9, [x19, #16]
	ldr	w10, [x9, w8, sxtw #2]
	cbnz	w10, LBB8_16
; %bb.18:                               ;   in Loop: Header=BB8_17 Depth=2
	sxtw	x10, w8
	str	w28, [x9, x10, lsl #2]
	ldr	w9, [x20, #164]
	cmp	w9, #39
	b.eq	LBB8_15
; %bb.19:                               ;   in Loop: Header=BB8_17 Depth=2
	ldr	w10, [x20, #160]
	cmn	w10, #1
	b.ne	LBB8_21
; %bb.20:                               ;   in Loop: Header=BB8_17 Depth=2
	str	wzr, [x20, #160]
LBB8_21:                                ;   in Loop: Header=BB8_17 Depth=2
	add	w9, w9, #1
	str	w9, [x20, #164]
	str	w8, [x20, w9, sxtw #2]
	b	LBB8_16
LBB8_22:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh30, Lloh31
	.cfi_endproc
                                        ; -- End function
	.globl	_bfs_test                       ; -- Begin function bfs_test
	.p2align	2
_bfs_test:                              ; @bfs_test
	.cfi_startproc
; %bb.0:
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
	mov	w0, #24                         ; =0x18
	bl	_libmin_malloc
	mov	x19, x0
	mov	w8, #6                          ; =0x6
	str	w8, [x0]
	mov	w0, #48                         ; =0x30
	bl	_libmin_malloc
	str	x0, [x19, #8]
	mov	w0, #24                         ; =0x18
	bl	_libmin_malloc
	str	x0, [x19, #16]
	ldr	x8, [x19, #8]
	str	xzr, [x8]
	ldp	x9, x8, [x19, #8]
	str	wzr, [x8]
	str	xzr, [x9, #8]
	ldp	x9, x8, [x19, #8]
	str	wzr, [x8, #4]
	str	xzr, [x9, #16]
	ldp	x9, x8, [x19, #8]
	str	wzr, [x8, #8]
	str	xzr, [x9, #24]
	ldp	x9, x8, [x19, #8]
	str	wzr, [x8, #12]
	str	xzr, [x9, #32]
	ldp	x9, x8, [x19, #8]
	str	wzr, [x8, #16]
	str	xzr, [x9, #40]
	ldr	x8, [x19, #16]
	str	wzr, [x8, #20]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w20, #1                         ; =0x1
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8]
	str	x9, [x0, #8]
	str	x0, [x8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	wzr, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	str	x0, [x8, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w21, #2                         ; =0x2
	str	w21, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8]
	str	x9, [x0, #8]
	str	x0, [x8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	wzr, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #16]
	str	x9, [x0, #8]
	str	x0, [x8, #16]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w21, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	str	x0, [x8, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #16]
	str	x9, [x0, #8]
	str	x0, [x8, #16]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w22, #4                         ; =0x4
	str	w22, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	str	x0, [x8, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #32]
	str	x9, [x0, #8]
	str	x0, [x8, #32]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w23, #3                         ; =0x3
	str	w23, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	str	x0, [x8, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #24]
	str	x9, [x0, #8]
	str	x0, [x8, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w22, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #16]
	str	x9, [x0, #8]
	str	x0, [x8, #16]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w21, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #32]
	str	x9, [x0, #8]
	str	x0, [x8, #32]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w22, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #24]
	str	x9, [x0, #8]
	str	x0, [x8, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w23, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #32]
	str	x9, [x0, #8]
	str	x0, [x8, #32]
	mov	x0, x19
	mov	w1, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	b	_bfs
	.cfi_endproc
                                        ; -- End function
	.globl	_insertAtTheBegin               ; -- Begin function insertAtTheBegin
	.p2align	2
_insertAtTheBegin:                      ; @insertAtTheBegin
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w19, [x0]
	ldr	x8, [x20]
	str	x8, [x0, #8]
	str	x0, [x20]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_swap                           ; -- Begin function swap
	.p2align	2
_swap:                                  ; @swap
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	ldr	w9, [x1]
	str	w9, [x0]
	str	w8, [x1]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bubbleSort                     ; -- Begin function bubbleSort
	.p2align	2
_bubbleSort:                            ; @bubbleSort
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB12_9
; %bb.1:
	mov	x9, #0                          ; =0x0
	ldr	x8, [x0, #8]
	b	LBB12_3
LBB12_2:                                ;   in Loop: Header=BB12_3 Depth=1
	mov	x9, x12
	cbz	w10, LBB12_9
LBB12_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_7 Depth 2
	cmp	x8, x9
	b.eq	LBB12_9
; %bb.4:                                ;   in Loop: Header=BB12_3 Depth=1
	mov	w10, #0                         ; =0x0
	ldr	w11, [x0]
	mov	x14, x8
	mov	x13, x0
	b	LBB12_7
LBB12_5:                                ;   in Loop: Header=BB12_7 Depth=2
	str	w14, [x13]
	str	w11, [x12]
	mov	w10, #1                         ; =0x1
LBB12_6:                                ;   in Loop: Header=BB12_7 Depth=2
	ldr	x14, [x12, #8]
	mov	x13, x12
	cmp	x14, x9
	b.eq	LBB12_2
LBB12_7:                                ;   Parent Loop BB12_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x12, x14
	ldr	w14, [x14]
	cmp	w11, w14
	b.gt	LBB12_5
; %bb.8:                                ;   in Loop: Header=BB12_7 Depth=2
	mov	x11, x14
	b	LBB12_6
LBB12_9:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_link_list                      ; -- Begin function link_list
	.p2align	2
_link_list:                             ; @link_list
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x19, x0
	mov	w8, #12                         ; =0xc
	str	w8, [x0]
	str	xzr, [x0, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x20, x0
	mov	w8, #56                         ; =0x38
	str	w8, [x0]
	str	x19, [x0, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x19, x0
	mov	w8, #2                          ; =0x2
	str	w8, [x0]
	str	x20, [x0, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x20, x0
	mov	w8, #11                         ; =0xb
	str	w8, [x0]
	str	x19, [x0, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x19, x0
	mov	w8, #1                          ; =0x1
	str	w8, [x0]
	str	x20, [x0, #8]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x8, #0                          ; =0x0
	mov	w9, #90                         ; =0x5a
	str	w9, [x0]
	str	x19, [x0, #8]
	b	LBB13_2
LBB13_1:                                ;   in Loop: Header=BB13_2 Depth=1
	mov	x8, x11
	cbz	w9, LBB13_8
LBB13_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB13_6 Depth 2
	cmp	x19, x8
	b.eq	LBB13_8
; %bb.3:                                ;   in Loop: Header=BB13_2 Depth=1
	mov	w9, #0                          ; =0x0
	ldr	w10, [x0]
	mov	x13, x19
	mov	x12, x0
	b	LBB13_6
LBB13_4:                                ;   in Loop: Header=BB13_6 Depth=2
	str	w13, [x12]
	str	w10, [x11]
	mov	w9, #1                          ; =0x1
LBB13_5:                                ;   in Loop: Header=BB13_6 Depth=2
	ldr	x13, [x11, #8]
	mov	x12, x11
	cmp	x13, x8
	b.eq	LBB13_1
LBB13_6:                                ;   Parent Loop BB13_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x11, x13
	ldr	w13, [x13]
	cmp	w10, w13
	b.gt	LBB13_4
; %bb.7:                                ;   in Loop: Header=BB13_6 Depth=2
	mov	x10, x13
	b	LBB13_5
LBB13_8:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_push                           ; -- Begin function push
	.p2align	2
_push:                                  ; @push
	.cfi_startproc
; %bb.0:
Lloh32:
	adrp	x8, _top@PAGE
	ldrsw	x9, [x8, _top@PAGEOFF]
	add	x9, x9, #1
	str	w9, [x8, _top@PAGEOFF]
Lloh33:
	adrp	x8, _stack@GOTPAGE
Lloh34:
	ldr	x8, [x8, _stack@GOTPAGEOFF]
	str	w0, [x8, x9, lsl #2]
	ret
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpAdrp	Lloh32, Lloh33
	.cfi_endproc
                                        ; -- End function
	.globl	_pop                            ; -- Begin function pop
	.p2align	2
_pop:                                   ; @pop
	.cfi_startproc
; %bb.0:
Lloh35:
	adrp	x8, _top@PAGE
	ldrsw	x9, [x8, _top@PAGEOFF]
	sub	w10, w9, #1
	str	w10, [x8, _top@PAGEOFF]
Lloh36:
	adrp	x8, _stack@GOTPAGE
Lloh37:
	ldr	x8, [x8, _stack@GOTPAGEOFF]
	ldr	w0, [x8, x9, lsl #2]
	ret
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdrp	Lloh35, Lloh36
	.cfi_endproc
                                        ; -- End function
	.globl	_peek                           ; -- Begin function peek
	.p2align	2
_peek:                                  ; @peek
	.cfi_startproc
; %bb.0:
Lloh38:
	adrp	x8, _top@PAGE
Lloh39:
	ldrsw	x8, [x8, _top@PAGEOFF]
Lloh40:
	adrp	x9, _stack@GOTPAGE
Lloh41:
	ldr	x9, [x9, _stack@GOTPAGEOFF]
	ldr	w0, [x9, x8, lsl #2]
	ret
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdr	Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.globl	_isStackEmpty                   ; -- Begin function isStackEmpty
	.p2align	2
_isStackEmpty:                          ; @isStackEmpty
	.cfi_startproc
; %bb.0:
Lloh42:
	adrp	x8, _top@PAGE
Lloh43:
	ldr	w8, [x8, _top@PAGEOFF]
	cmn	w8, #1
	cset	w0, eq
	ret
	.loh AdrpLdr	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.globl	_addVertex                      ; -- Begin function addVertex
	.p2align	2
_addVertex:                             ; @addVertex
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
Lloh44:
	adrp	x8, _vertexCount@PAGE
	ldrsw	x9, [x8, _vertexCount@PAGEOFF]
	add	w10, w9, #1
	str	w10, [x8, _vertexCount@PAGEOFF]
Lloh45:
	adrp	x8, _lstVertices@GOTPAGE
Lloh46:
	ldr	x8, [x8, _lstVertices@GOTPAGEOFF]
	str	x0, [x8, x9, lsl #3]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh45, Lloh46
	.loh AdrpAdrp	Lloh44, Lloh45
	.cfi_endproc
                                        ; -- End function
	.globl	_addEdge_DFS                    ; -- Begin function addEdge_DFS
	.p2align	2
_addEdge_DFS:                           ; @addEdge_DFS
	.cfi_startproc
; %bb.0:
Lloh47:
	adrp	x8, _adjMatrix@GOTPAGE
Lloh48:
	ldr	x8, [x8, _adjMatrix@GOTPAGEOFF]
	mov	w9, #20                         ; =0x14
	smaddl	x10, w0, w9, x8
	mov	w11, #1                         ; =0x1
	str	w11, [x10, w1, sxtw #2]
	smaddl	x8, w1, w9, x8
	str	w11, [x8, w0, sxtw #2]
	ret
	.loh AdrpLdrGot	Lloh47, Lloh48
	.cfi_endproc
                                        ; -- End function
	.globl	_getAdjUnvisitedVertex          ; -- Begin function getAdjUnvisitedVertex
	.p2align	2
_getAdjUnvisitedVertex:                 ; @getAdjUnvisitedVertex
	.cfi_startproc
; %bb.0:
Lloh49:
	adrp	x9, _vertexCount@PAGE
Lloh50:
	ldr	w9, [x9, _vertexCount@PAGEOFF]
	cmp	w9, #1
	b.lt	LBB20_6
; %bb.1:
	mov	x8, x0
	mov	x0, #0                          ; =0x0
Lloh51:
	adrp	x10, _adjMatrix@GOTPAGE
Lloh52:
	ldr	x10, [x10, _adjMatrix@GOTPAGEOFF]
	mov	w11, #20                        ; =0x14
	smaddl	x8, w8, w11, x10
Lloh53:
	adrp	x10, _lstVertices@GOTPAGE
Lloh54:
	ldr	x10, [x10, _lstVertices@GOTPAGEOFF]
	b	LBB20_3
LBB20_2:                                ;   in Loop: Header=BB20_3 Depth=1
	add	x0, x0, #1
	cmp	x9, x0
	b.eq	LBB20_6
LBB20_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x8, x0, lsl #2]
	cmp	w11, #1
	b.ne	LBB20_2
; %bb.4:                                ;   in Loop: Header=BB20_3 Depth=1
	ldr	x11, [x10, x0, lsl #3]
	ldr	w11, [x11]
	cbnz	w11, LBB20_2
; %bb.5:
                                        ; kill: def $w0 killed $w0 killed $x0
	ret
LBB20_6:
	mov	w0, #-1                         ; =0xffffffff
                                        ; kill: def $w0 killed $w0 killed $x0
	ret
	.loh AdrpLdr	Lloh49, Lloh50
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh51, Lloh52
	.cfi_endproc
                                        ; -- End function
	.globl	_depthFirstSearch               ; -- Begin function depthFirstSearch
	.p2align	2
_depthFirstSearch:                      ; @depthFirstSearch
	.cfi_startproc
; %bb.0:
Lloh55:
	adrp	x8, _lstVertices@GOTPAGE
Lloh56:
	ldr	x8, [x8, _lstVertices@GOTPAGEOFF]
	ldr	x9, [x8]
	mov	w10, #1                         ; =0x1
	str	w10, [x9]
	adrp	x11, _top@PAGE
	ldrsw	x9, [x11, _top@PAGEOFF]
	add	x13, x9, #1
Lloh57:
	adrp	x12, _stack@GOTPAGE
Lloh58:
	ldr	x12, [x12, _stack@GOTPAGEOFF]
	str	wzr, [x12, x13, lsl #2]
                                        ; kill: def $w13 killed $w13 killed $x13 def $x13
	str	w13, [x11, _top@PAGEOFF]
	adrp	x9, _vertexCount@PAGE
	ldr	w14, [x9, _vertexCount@PAGEOFF]
	cmn	w13, #1
	b.eq	LBB21_11
; %bb.1:
	mov	w15, #20                        ; =0x14
Lloh59:
	adrp	x16, _adjMatrix@GOTPAGE
Lloh60:
	ldr	x16, [x16, _adjMatrix@GOTPAGEOFF]
	b	LBB21_4
LBB21_2:                                ;   in Loop: Header=BB21_4 Depth=1
	sub	w13, w13, #1
	str	w13, [x11, _top@PAGEOFF]
LBB21_3:                                ;   in Loop: Header=BB21_4 Depth=1
	cmn	w13, #1
	b.eq	LBB21_11
LBB21_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB21_7 Depth 2
	cmp	w14, #1
	b.lt	LBB21_2
; %bb.5:                                ;   in Loop: Header=BB21_4 Depth=1
	mov	x17, #0                         ; =0x0
	ldrsw	x0, [x12, w13, sxtw #2]
	smaddl	x0, w0, w15, x16
	b	LBB21_7
LBB21_6:                                ;   in Loop: Header=BB21_7 Depth=2
	add	x17, x17, #1
	cmp	x14, x17
	b.eq	LBB21_2
LBB21_7:                                ;   Parent Loop BB21_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w1, [x0, x17, lsl #2]
	cmp	w1, #1
	b.ne	LBB21_6
; %bb.8:                                ;   in Loop: Header=BB21_7 Depth=2
	ldr	x1, [x8, x17, lsl #3]
	ldr	w1, [x1]
	cbnz	w1, LBB21_6
; %bb.9:                                ;   in Loop: Header=BB21_4 Depth=1
	cmn	w17, #1
	b.eq	LBB21_2
; %bb.10:                               ;   in Loop: Header=BB21_4 Depth=1
	ldr	x13, [x8, x17, lsl #3]
	str	w10, [x13]
	ldrsw	x13, [x11, _top@PAGEOFF]
	add	x13, x13, #1
	str	w13, [x11, _top@PAGEOFF]
	str	w17, [x12, x13, lsl #2]
	ldr	w14, [x9, _vertexCount@PAGEOFF]
	b	LBB21_3
LBB21_11:
	cmp	w14, #1
	b.lt	LBB21_14
; %bb.12:
	mov	x10, #0                         ; =0x0
LBB21_13:                               ; =>This Inner Loop Header: Depth=1
	ldr	x11, [x8, x10, lsl #3]
	str	wzr, [x11]
	add	x10, x10, #1
	ldrsw	x11, [x9, _vertexCount@PAGEOFF]
	cmp	x10, x11
	b.lt	LBB21_13
LBB21_14:
	ret
	.loh AdrpLdrGot	Lloh57, Lloh58
	.loh AdrpLdrGot	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh59, Lloh60
	.cfi_endproc
                                        ; -- End function
	.globl	_DFS_test                       ; -- Begin function DFS_test
	.p2align	2
_DFS_test:                              ; @DFS_test
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh61:
	adrp	x19, _adjMatrix@GOTPAGE
Lloh62:
	ldr	x19, [x19, _adjMatrix@GOTPAGEOFF]
	str	wzr, [x19, #96]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #64]
	stp	q0, q0, [x19, #32]
	stp	q0, q0, [x19]
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
	adrp	x20, _vertexCount@PAGE
	ldrsw	x8, [x20, _vertexCount@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x20, _vertexCount@PAGEOFF]
Lloh63:
	adrp	x21, _lstVertices@GOTPAGE
Lloh64:
	ldr	x21, [x21, _lstVertices@GOTPAGEOFF]
	str	x0, [x21, x8, lsl #3]
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
	ldrsw	x8, [x20, _vertexCount@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x20, _vertexCount@PAGEOFF]
	str	x0, [x21, x8, lsl #3]
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
	ldrsw	x8, [x20, _vertexCount@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x20, _vertexCount@PAGEOFF]
	str	x0, [x21, x8, lsl #3]
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
	ldrsw	x8, [x20, _vertexCount@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x20, _vertexCount@PAGEOFF]
	str	x0, [x21, x8, lsl #3]
	mov	w0, #4                          ; =0x4
	bl	_libmin_malloc
	str	wzr, [x0]
	ldrsw	x8, [x20, _vertexCount@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x20, _vertexCount@PAGEOFF]
	str	x0, [x21, x8, lsl #3]
	mov	w8, #1                          ; =0x1
	str	w8, [x19, #20]
	movi.2s	v0, #1
	stur	d0, [x19, #4]
	str	w8, [x19, #12]
	stur	d0, [x19, #36]
	str	d0, [x19, #56]
	stur	d0, [x19, #84]
	str	w8, [x19, #76]
	str	w8, [x19, #92]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_depthFirstSearch
	.loh AdrpLdrGot	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh61, Lloh62
	.cfi_endproc
                                        ; -- End function
	.globl	_towers                         ; -- Begin function towers
	.p2align	2
_towers:                                ; @towers
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	subs	w21, w0, #1
	b.eq	LBB23_3
; %bb.1:
	mov	x19, x2
	mov	x20, x1
LBB23_2:                                ; =>This Inner Loop Header: Depth=1
	mov	x22, x3
	sxtb	w1, w20
	sxtb	w2, w3
	mov	x0, x21
	mov	x3, x19
	bl	_towers
	mov	x3, x20
	mov	x20, x22
	subs	w21, w21, #1
	b.ne	LBB23_2
LBB23_3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_towers_test                    ; -- Begin function towers_test
	.p2align	2
_towers_test:                           ; @towers_test
	.cfi_startproc
; %bb.0:
	mov	w0, #5                          ; =0x5
	mov	w1, #65                         ; =0x41
	mov	w2, #67                         ; =0x43
	mov	w3, #66                         ; =0x42
	b	_towers
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
	bl	_bfs_test
	bl	_link_list
	bl	_DFS_test
	mov	w0, #5                          ; =0x5
	mov	w1, #65                         ; =0x41
	mov	w2, #67                         ; =0x43
	mov	w3, #66                         ; =0x42
	bl	_towers
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Queue is Full!!\n"

l_.str.1:                               ; @.str.1
	.asciz	"Queue is empty\n"

l_.str.2:                               ; @.str.2
	.asciz	"Resetting queue...\n"

l_.str.3:                               ; @.str.3
	.asciz	"Queue contains: "

l_.str.4:                               ; @.str.4
	.asciz	"%d "

l_.str.5:                               ; @.str.5
	.asciz	"\n"

l_.str.6:                               ; @.str.6
	.asciz	"Visited %d\n"

	.section	__DATA,__data
	.globl	_top                            ; @top
	.p2align	2, 0x0
_top:
	.long	4294967295                      ; 0xffffffff

	.globl	_vertexCount                    ; @vertexCount
.zerofill __DATA,__common,_vertexCount,4,2
	.comm	_stack,20,2                     ; @stack
	.comm	_lstVertices,40,3               ; @lstVertices
	.comm	_adjMatrix,100,2                ; @adjMatrix
.subsections_via_symbols
