	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_createStackNode                ; -- Begin function createStackNode
	.p2align	2
_createStackNode:                       ; @createStackNode
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
	.globl	_createListNode                 ; -- Begin function createListNode
	.p2align	2
_createListNode:                        ; @createListNode
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
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x19, x0
	str	w20, [x0]
	sbfiz	x0, x20, #4, #32
	bl	_libmin_malloc
	str	x0, [x19, #8]
	cmp	w20, #1
	b.lt	LBB2_8
; %bb.1:
	mov	w8, w20
	cmp	w20, #4
	b.hs	LBB2_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB2_6
LBB2_3:
	and	x9, x8, #0xfffffffc
	add	x10, x0, #40
	mov	x11, x9
LBB2_4:                                 ; =>This Inner Loop Header: Depth=1
	stur	xzr, [x10, #-32]
	stur	xzr, [x10, #-16]
	str	xzr, [x10]
	str	xzr, [x10, #16]
	add	x10, x10, #64
	subs	x11, x11, #4
	b.ne	LBB2_4
; %bb.5:
	cmp	x9, x8
	b.eq	LBB2_8
LBB2_6:
	add	x10, x0, x9, lsl #4
	add	x10, x10, #8
	sub	x8, x8, x9
LBB2_7:                                 ; =>This Inner Loop Header: Depth=1
	str	xzr, [x10], #16
	subs	x8, x8, #1
	b.ne	LBB2_7
LBB2_8:
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
	add	x8, x8, w20, sxtw #4
	ldr	x9, [x8, #8]
	str	x9, [x0, #8]
	str	x0, [x8, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_topologicalSortUtil            ; -- Begin function topologicalSortUtil
	.p2align	2
_topologicalSortUtil:                   ; @topologicalSortUtil
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
	mov	x19, x3
	mov	x20, x1
	mov	w8, #1                          ; =0x1
	str	w8, [x2, w1, sxtw #2]
	ldr	x8, [x0, #8]
	add	x8, x8, w1, sxtw #4
	ldr	x23, [x8, #8]
	cbz	x23, LBB4_5
; %bb.1:
	mov	x21, x2
	mov	x22, x0
	b	LBB4_3
LBB4_2:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	x23, [x23, #8]
	cbz	x23, LBB4_5
LBB4_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x1, [x23]
	ldr	w8, [x21, x1, lsl #2]
	cbnz	w8, LBB4_2
; %bb.4:                                ;   in Loop: Header=BB4_3 Depth=1
	mov	x0, x22
                                        ; kill: def $w1 killed $w1 killed $x1
	mov	x2, x21
	mov	x3, x19
	bl	_topologicalSortUtil
	b	LBB4_2
LBB4_5:
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19]
	str	x8, [x0, #8]
	str	x0, [x19]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_topologicalSort                ; -- Begin function topologicalSort
	.p2align	2
_topologicalSort:                       ; @topologicalSort
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
	mov	x19, x0
	str	xzr, [sp, #8]
	ldrsw	x8, [x0]
	lsl	x0, x8, #2
	bl	_libmin_malloc
	mov	x20, x0
	ldr	w8, [x19]
	cmp	w8, #1
	b.lt	LBB5_11
; %bb.1:
	mov	x9, #0                          ; =0x0
LBB5_2:                                 ; =>This Inner Loop Header: Depth=1
	str	wzr, [x20, x9, lsl #2]
	add	x9, x9, #1
	ldrsw	x8, [x19]
	cmp	x9, x8
	b.lt	LBB5_2
; %bb.3:
	cmp	w8, #1
	b.lt	LBB5_11
; %bb.4:
	mov	x21, #0                         ; =0x0
	b	LBB5_6
LBB5_5:                                 ;   in Loop: Header=BB5_6 Depth=1
	add	x21, x21, #1
	cmp	x21, w8, sxtw
	b.ge	LBB5_8
LBB5_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x20, x21, lsl #2]
	cbnz	w9, LBB5_5
; %bb.7:                                ;   in Loop: Header=BB5_6 Depth=1
	add	x3, sp, #8
	mov	x0, x19
	mov	x1, x21
	mov	x2, x20
	bl	_topologicalSortUtil
	ldr	w8, [x19]
	b	LBB5_5
LBB5_8:
	ldr	x21, [sp, #8]
	cbz	x21, LBB5_11
; %bb.9:
Lloh0:
	adrp	x22, l_.str@PAGE
Lloh1:
	add	x22, x22, l_.str@PAGEOFF
LBB5_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x21]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	ldr	x23, [x21, #8]
	mov	x0, x21
	bl	_libmin_free
	mov	x21, x23
	cbnz	x23, LBB5_10
LBB5_11:
	mov	x0, x20
	bl	_libmin_free
	ldr	x0, [x19, #8]
	bl	_libmin_free
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	b	_libmin_free
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	w8, #6                          ; =0x6
	str	w8, [x0]
	mov	w0, #96                         ; =0x60
	bl	_libmin_malloc
	str	x0, [x19, #8]
	str	xzr, [x0, #8]
	str	xzr, [x0, #24]
	str	xzr, [x0, #40]
	str	xzr, [x0, #56]
	str	xzr, [x0, #72]
	str	xzr, [x0, #88]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w8, #2                          ; =0x2
	str	w8, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #88]
	str	x9, [x0, #8]
	str	x0, [x8, #88]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	wzr, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #88]
	str	x9, [x0, #8]
	str	x0, [x8, #88]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	wzr, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #72]
	str	x9, [x0, #8]
	str	x0, [x8, #72]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w20, #1                         ; =0x1
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #72]
	str	x9, [x0, #8]
	str	x0, [x8, #72]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w8, #3                          ; =0x3
	str	w8, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #40]
	str	x9, [x0, #8]
	str	x0, [x8, #40]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	str	w20, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x19, #8]
	ldr	x9, [x8, #56]
	str	x9, [x0, #8]
	str	x0, [x8, #56]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_topologicalSort
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d "

l_.str.1:                               ; @.str.1
	.asciz	"Topological Sorting Order: "

l_.str.2:                               ; @.str.2
	.asciz	"\n"

.subsections_via_symbols
