	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_print_data                     ; -- Begin function print_data
	.p2align	2
_print_data:                            ; @print_data
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
	mov	x20, x1
	mov	x19, x0
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	cbz	w20, LBB0_3
; %bb.1:
	mov	x21, #0                         ; =0x0
	mov	w22, w20
Lloh2:
	adrp	x20, l_.str.1@PAGE
Lloh3:
	add	x20, x20, l_.str.1@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19, x21, lsl #2]
	stp	x21, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	x21, x21, #1
	cmp	x22, x21
	b.ne	LBB0_2
LBB0_3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_bubblesort                     ; -- Begin function bubblesort
	.p2align	2
_bubblesort:                            ; @bubblesort
	.cfi_startproc
; %bb.0:
	subs	w8, w1, #1
	b.eq	LBB1_12
; %bb.1:
	mov	w9, #0                          ; =0x0
	adrp	x10, _swaps@PAGE
	ldr	x11, [x10, _swaps@PAGEOFF]
	add	x12, x0, #8
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
                                        ;       Child Loop BB1_6 Depth 3
	mov	x17, #0                         ; =0x0
	mov	w15, #0                         ; =0x0
	ldr	w13, [x0]
	b	LBB1_4
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=2
	mov	x13, x16
	mov	x17, x14
	cmp	x14, x8
	b.eq	LBB1_11
LBB1_4:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_6 Depth 3
	add	x14, x17, #1
	ldr	w16, [x0, x14, lsl #2]
	cmp	w13, w16
	b.le	LBB1_3
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=2
	add	x15, x12, x17, lsl #2
LBB1_6:                                 ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_4 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	stp	w16, w13, [x15, #-8]
	cmp	x8, x14
	b.eq	LBB1_9
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=3
	add	x14, x14, #1
	ldr	w16, [x15], #4
	add	x11, x11, #1
	cmp	w13, w16
	b.gt	LBB1_6
; %bb.8:                                ;   in Loop: Header=BB1_4 Depth=2
	str	x11, [x10, _swaps@PAGEOFF]
	mov	w15, #1                         ; =0x1
	b	LBB1_3
LBB1_9:                                 ;   in Loop: Header=BB1_2 Depth=1
	add	x11, x11, #1
	str	x11, [x10, _swaps@PAGEOFF]
LBB1_10:                                ;   in Loop: Header=BB1_2 Depth=1
	add	w9, w9, #1
	cmp	w9, w8
	b.ne	LBB1_2
	b	LBB1_12
LBB1_11:                                ;   in Loop: Header=BB1_2 Depth=1
	cbnz	w15, LBB1_10
LBB1_12:
	ret
	.cfi_endproc
                                        ; -- End function
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
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	x19, #0                         ; =0x0
Lloh4:
	adrp	x20, _data@GOTPAGE
Lloh5:
	ldr	x20, [x20, _data@GOTPAGEOFF]
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	str	w0, [x20, x19]
	add	x19, x19, #4
	cmp	x19, #1024
	b.ne	LBB2_1
; %bb.2:
Lloh6:
	adrp	x0, l_.str@PAGE
Lloh7:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	x21, #0                         ; =0x0
Lloh8:
	adrp	x19, l_.str.1@PAGE
Lloh9:
	add	x19, x19, l_.str.1@PAGEOFF
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x20, x21, lsl #2]
	stp	x21, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x21, x21, #1
	cmp	x21, #256
	b.ne	LBB2_3
; %bb.4:
	mov	w8, #0                          ; =0x0
	adrp	x21, _swaps@PAGE
	ldr	x9, [x21, _swaps@PAGEOFF]
	b	LBB2_7
LBB2_5:                                 ;   in Loop: Header=BB2_7 Depth=1
	tbnz	w12, #0, LBB2_16
LBB2_6:                                 ;   in Loop: Header=BB2_7 Depth=1
	add	w8, w8, #1
	cmp	w8, #255
	b.eq	LBB2_16
LBB2_7:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_8 Depth 2
                                        ;       Child Loop BB2_9 Depth 3
                                        ;       Child Loop BB2_12 Depth 3
	mov	x10, #0                         ; =0x0
	ldr	w11, [x20]
	mov	w12, #1                         ; =0x1
LBB2_8:                                 ;   Parent Loop BB2_7 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_9 Depth 3
                                        ;       Child Loop BB2_12 Depth 3
	lsl	x13, x10, #2
	neg	x15, x13
	add	x13, x20, x13
	add	x13, x13, #8
	mov	x14, x11
LBB2_9:                                 ;   Parent Loop BB2_7 Depth=1
                                        ;     Parent Loop BB2_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	add	x11, x20, x10, lsl #2
	ldr	w11, [x11, #4]
	cmp	w14, w11
	b.gt	LBB2_11
; %bb.10:                               ;   in Loop: Header=BB2_9 Depth=3
	add	x10, x10, #1
	sub	x15, x15, #4
	add	x13, x13, #4
	mov	x14, x11
	cmp	x10, #255
	b.ne	LBB2_9
	b	LBB2_5
LBB2_11:                                ;   in Loop: Header=BB2_8 Depth=2
	mov	x15, #0                         ; =0x0
	sub	x16, x10, #254
LBB2_12:                                ;   Parent Loop BB2_7 Depth=1
                                        ;     Parent Loop BB2_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	stp	w11, w14, [x13, #-8]
	cmp	x16, x15
	b.eq	LBB2_15
; %bb.13:                               ;   in Loop: Header=BB2_12 Depth=3
	ldr	w11, [x13], #4
	sub	x15, x15, #1
	cmp	w14, w11
	b.gt	LBB2_12
; %bb.14:                               ;   in Loop: Header=BB2_8 Depth=2
	mov	w12, #0                         ; =0x0
	sub	x9, x9, x15
	str	x9, [x21, _swaps@PAGEOFF]
	sub	x10, x10, x15
	add	x10, x10, #1
	cmp	x16, x15
	b.ne	LBB2_8
	b	LBB2_6
LBB2_15:                                ;   in Loop: Header=BB2_7 Depth=1
	sub	x9, x9, x10
	add	x9, x9, #255
	str	x9, [x21, _swaps@PAGEOFF]
	b	LBB2_6
LBB2_16:
Lloh10:
	adrp	x0, l_.str@PAGE
Lloh11:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	x22, #0                         ; =0x0
Lloh12:
	adrp	x19, l_.str.1@PAGE
Lloh13:
	add	x19, x19, l_.str.1@PAGEOFF
LBB2_17:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x20, x22, lsl #2]
	stp	x22, x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x22, x22, #1
	cmp	x22, #256
	b.ne	LBB2_17
; %bb.18:
	mov	x8, #0                          ; =0x0
LBB2_19:                                ; =>This Inner Loop Header: Depth=1
	cmp	x8, #1020
	b.eq	LBB2_22
; %bb.20:                               ;   in Loop: Header=BB2_19 Depth=1
	add	x9, x20, x8
	ldp	w10, w9, [x9]
	add	x8, x8, #4
	cmp	w10, w9
	b.le	LBB2_19
; %bb.21:
Lloh14:
	adrp	x0, l_.str.2@PAGE
Lloh15:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	b	LBB2_23
LBB2_22:
	ldr	x8, [x21, _swaps@PAGEOFF]
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.3@PAGE
Lloh17:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
Lloh18:
	adrp	x0, l_.str.4@PAGE
Lloh19:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
LBB2_23:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_swaps                          ; @swaps
.zerofill __DATA,__common,_swaps,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"DATA DUMP:\n"

l_.str.1:                               ; @.str.1
	.asciz	"  data[%u] = %d\n"

	.comm	_data,1024,2                    ; @data
l_.str.2:                               ; @.str.2
	.asciz	"ERROR: data is not properly sorted.\n"

l_.str.3:                               ; @.str.3
	.asciz	"INFO: %lu swaps executed.\n"

l_.str.4:                               ; @.str.4
	.asciz	"INFO: data is properly sorted.\n"

.subsections_via_symbols
