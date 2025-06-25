	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_newNode                        ; -- Begin function newNode
	.p2align	2
_newNode:                               ; @newNode
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
	stp	w20, w19, [x0]
	str	xzr, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_peek                           ; -- Begin function peek
	.p2align	2
_peek:                                  ; @peek
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	ldr	w0, [x8]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_priopeek                       ; -- Begin function priopeek
	.p2align	2
_priopeek:                              ; @priopeek
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	ldr	w0, [x8, #4]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_pop                            ; -- Begin function pop
	.p2align	2
_pop:                                   ; @pop
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	ldr	x9, [x8, #8]
	str	x9, [x0]
	mov	x0, x8
	b	_libmin_free
	.cfi_endproc
                                        ; -- End function
	.globl	_push                           ; -- Begin function push
	.p2align	2
_push:                                  ; @push
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
	mov	x21, x1
	mov	x20, x0
	ldr	x22, [x0]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	stp	w21, w19, [x0]
	str	xzr, [x0, #8]
	ldr	x8, [x20]
	ldr	w9, [x8, #4]
	cmp	w9, w19
	b.gt	LBB4_5
; %bb.1:
	mov	x8, x22
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, x8
	ldr	x8, [x8, #8]
	cbz	x8, LBB4_4
; %bb.3:                                ;   in Loop: Header=BB4_2 Depth=1
	ldr	w10, [x8, #4]
	cmp	w10, w19
	b.lt	LBB4_2
LBB4_4:
	add	x20, x9, #8
LBB4_5:
	str	x8, [x0, #8]
	str	x0, [x20]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_isEmpty                        ; -- Begin function isEmpty
	.p2align	2
_isEmpty:                               ; @isEmpty
	.cfi_startproc
; %bb.0:
	ldr	x8, [x0]
	cmp	x8, #0
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printPQ                        ; -- Begin function printPQ
	.p2align	2
_printPQ:                               ; @printPQ
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldr	x8, [x19]
	cbz	x8, LBB6_3
; %bb.1:
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	ldp	w8, w9, [x8]
	stp	x9, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	x0, [x19]
	ldr	x8, [x0, #8]
	str	x8, [x19]
	bl	_libmin_free
	ldr	x8, [x19]
	cbnz	x8, LBB6_2
LBB6_3:
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	b	_libmin_printf
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI7_0:
	.long	4                               ; 0x4
	.long	1                               ; 0x1
lCPI7_1:
	.long	5                               ; 0x5
	.long	2                               ; 0x2
lCPI7_2:
	.long	6                               ; 0x6
	.long	3                               ; 0x3
lCPI7_3:
	.long	7                               ; 0x7
	.long	0                               ; 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	x19, x0
Lloh6:
	adrp	x8, lCPI7_0@PAGE
Lloh7:
	ldr	d8, [x8, lCPI7_0@PAGEOFF]
	str	d8, [x0]
	str	xzr, [x0, #8]
	str	x0, [sp, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
Lloh8:
	adrp	x8, lCPI7_1@PAGE
Lloh9:
	ldr	d0, [x8, lCPI7_1@PAGEOFF]
	str	d0, [x0]
	str	xzr, [x0, #8]
	ldr	w8, [x19, #4]
	cmp	w8, #3
	b.lt	LBB7_2
; %bb.1:
	add	x8, sp, #24
	b	LBB7_5
LBB7_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x8, x19
	ldr	x19, [x19, #8]
	cbz	x19, LBB7_4
; %bb.3:                                ;   in Loop: Header=BB7_2 Depth=1
	ldr	w9, [x19, #4]
	cmp	w9, #2
	b.lt	LBB7_2
LBB7_4:
	add	x8, x8, #8
LBB7_5:
	str	x19, [x0, #8]
	str	x0, [x8]
	ldr	x19, [sp, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
Lloh10:
	adrp	x8, lCPI7_2@PAGE
Lloh11:
	ldr	d0, [x8, lCPI7_2@PAGEOFF]
	str	d0, [x0]
	str	xzr, [x0, #8]
	ldr	w8, [x19, #4]
	cmp	w8, #3
	b.le	LBB7_7
; %bb.6:
	add	x8, sp, #24
	b	LBB7_10
LBB7_7:                                 ; =>This Inner Loop Header: Depth=1
	mov	x8, x19
	ldr	x19, [x19, #8]
	cbz	x19, LBB7_9
; %bb.8:                                ;   in Loop: Header=BB7_7 Depth=1
	ldr	w9, [x19, #4]
	cmp	w9, #3
	b.lt	LBB7_7
LBB7_9:
	add	x8, x8, #8
LBB7_10:
	str	x19, [x0, #8]
	str	x0, [x8]
	ldr	x19, [sp, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
Lloh12:
	adrp	x8, lCPI7_3@PAGE
Lloh13:
	ldr	d0, [x8, lCPI7_3@PAGEOFF]
	str	d0, [x0]
	str	xzr, [x0, #8]
	ldr	w8, [x19, #4]
	cmp	w8, #0
	b.le	LBB7_13
; %bb.11:
	add	x8, sp, #24
	b	LBB7_15
LBB7_12:                                ;   in Loop: Header=BB7_13 Depth=1
	ldr	w9, [x19, #4]
	tbz	w9, #31, LBB7_14
LBB7_13:                                ; =>This Inner Loop Header: Depth=1
	mov	x8, x19
	ldr	x19, [x19, #8]
	cbnz	x19, LBB7_12
LBB7_14:
	add	x8, x8, #8
LBB7_15:
	str	x19, [x0, #8]
	str	x0, [x8]
Lloh14:
	adrp	x0, l_.str@PAGE
Lloh15:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldr	x19, [sp, #24]
	cbz	x19, LBB7_18
; %bb.16:
Lloh16:
	adrp	x20, l_.str.1@PAGE
Lloh17:
	add	x20, x20, l_.str.1@PAGEOFF
LBB7_17:                                ; =>This Inner Loop Header: Depth=1
	ldp	w9, w8, [x19]
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	x21, [x19, #8]
	mov	x0, x19
	bl	_libmin_free
	mov	x19, x21
	cbnz	x21, LBB7_17
LBB7_18:
Lloh18:
	adrp	x0, l_.str.2@PAGE
Lloh19:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	mov	w19, #0                         ; =0x0
	str	d8, [x0]
	str	xzr, [x0, #8]
	str	x0, [sp, #24]
	mov	w20, #19923                     ; =0x4dd3
	movk	w20, #4194, lsl #16
	mov	w21, #250                       ; =0xfa
	b	LBB7_21
LBB7_19:                                ;   in Loop: Header=BB7_21 Depth=1
	add	x8, sp, #24
LBB7_20:                                ;   in Loop: Header=BB7_21 Depth=1
	str	x22, [x0, #8]
	str	x0, [x8]
	add	w19, w19, #1
	cmp	w19, #250
	b.eq	LBB7_25
LBB7_21:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_22 Depth 2
	bl	_libmin_rand
	umull	x8, w0, w20
	lsr	x8, x8, #36
	msub	w24, w8, w21, w0
	bl	_libmin_rand
	umull	x8, w0, w20
	lsr	x8, x8, #36
	msub	w23, w8, w21, w0
	ldr	x22, [sp, #24]
	mov	w0, #16                         ; =0x10
	bl	_libmin_malloc
	stp	w24, w23, [x0]
	str	xzr, [x0, #8]
	ldr	w8, [x22, #4]
	cmp	w8, w23
	b.gt	LBB7_19
LBB7_22:                                ;   Parent Loop BB7_21 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x8, x22
	ldr	x22, [x22, #8]
	cbz	x22, LBB7_24
; %bb.23:                               ;   in Loop: Header=BB7_22 Depth=2
	ldr	w9, [x22, #4]
	cmp	w9, w23
	b.lt	LBB7_22
LBB7_24:                                ;   in Loop: Header=BB7_21 Depth=1
	add	x8, x8, #8
	b	LBB7_20
LBB7_25:
Lloh20:
	adrp	x0, l_.str@PAGE
Lloh21:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldr	x19, [sp, #24]
	cbz	x19, LBB7_28
; %bb.26:
Lloh22:
	adrp	x20, l_.str.1@PAGE
Lloh23:
	add	x20, x20, l_.str.1@PAGEOFF
LBB7_27:                                ; =>This Inner Loop Header: Depth=1
	ldp	w9, w8, [x19]
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	x21, [x19, #8]
	mov	x0, x19
	bl	_libmin_free
	mov	x19, x21
	cbnz	x21, LBB7_27
LBB7_28:
Lloh24:
	adrp	x0, l_.str.2@PAGE
Lloh25:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"priorityQ: "

l_.str.1:                               ; @.str.1
	.asciz	"<prio:%d, val:%d> "

l_.str.2:                               ; @.str.2
	.asciz	"\n"

.subsections_via_symbols
