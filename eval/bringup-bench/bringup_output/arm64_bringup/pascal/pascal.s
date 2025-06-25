	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_num_digits                     ; -- Begin function num_digits
	.p2align	2
_num_digits:                            ; @num_digits
	.cfi_startproc
; %bb.0:
	add	w9, w0, #9
	cmp	w9, #19
	b.hs	LBB0_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ret
LBB0_2:
	mov	x8, x0
	mov	w0, #1                          ; =0x1
	mov	w9, #26215                      ; =0x6667
	movk	w9, #26214, lsl #16
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	smull	x8, w8, w9
	lsr	x10, x8, #63
	asr	x8, x8, #34
	add	w8, w8, w10
	add	w0, w0, #1
	add	w10, w8, #9
	cmp	w10, #18
	b.hi	LBB0_3
; %bb.4:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print_centered                 ; -- Begin function print_centered
	.p2align	2
_print_centered:                        ; @print_centered
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
	add	w8, w0, #9
	cmp	w8, #19
	b.hs	LBB1_2
; %bb.1:
	mov	w8, #1                          ; =0x1
	b	LBB1_4
LBB1_2:
	mov	w8, #1                          ; =0x1
	mov	w9, #26215                      ; =0x6667
	movk	w9, #26214, lsl #16
	mov	x10, x19
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	smull	x10, w10, w9
	lsr	x11, x10, #63
	asr	x10, x10, #34
	add	w10, w10, w11
	add	w8, w8, #1
	add	w11, w10, #9
	cmp	w11, #18
	b.hi	LBB1_3
LBB1_4:
	subs	w21, w1, w8
	b.ge	LBB1_6
; %bb.5:
	mov	w0, #1                          ; =0x1
	b	LBB1_13
LBB1_6:
	cmp	w21, #0
	cinc	w8, w21, lt
	asr	w22, w8, #1
	cmp	w21, #1
	b.le	LBB1_9
; %bb.7:
Lloh0:
	adrp	x20, l_.str@PAGE
Lloh1:
	add	x20, x20, l_.str@PAGEOFF
	mov	x23, x22
LBB1_8:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	bl	_libmin_printf
	subs	w23, w23, #1
	b.ne	LBB1_8
LBB1_9:
	str	x19, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	sub	w20, w21, w22
	cmp	w20, #1
	b.lt	LBB1_12
; %bb.10:
	mov	w21, #0                         ; =0x0
Lloh4:
	adrp	x19, l_.str@PAGE
Lloh5:
	add	x19, x19, l_.str@PAGEOFF
LBB1_11:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	bl	_libmin_printf
	add	w21, w21, #1
	cmp	w21, w20
	b.lt	LBB1_11
LBB1_12:
	mov	w0, #0                          ; =0x0
LBB1_13:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	mov	x8, #0                          ; =0x0
Lloh6:
	adrp	x28, _triangle@PAGE
Lloh7:
	add	x28, x28, _triangle@PAGEOFF
	mov	w9, #1                          ; =0x1
	mov	x10, x28
	str	w9, [x10], #124
	mov	w11, #120                       ; =0x78
	mov	x12, x28
	mov	w13, #1                         ; =0x1
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	madd	x14, x13, x11, x28
	str	w9, [x14, x13, lsl #2]
	add	x13, x13, #1
	add	x8, x8, #1
	add	x10, x10, #120
	add	x12, x12, #120
	cmp	x13, #20
	b.eq	LBB2_10
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_6 Depth 2
                                        ;     Child Loop BB2_9 Depth 2
	mul	x14, x13, x11
	str	w9, [x28, x14]
	cmp	x13, #2
	b.lo	LBB2_1
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
	madd	x14, x13, x11, x28
	ldur	w15, [x14, #-120]
	cmp	x8, #8
	b.hs	LBB2_5
; %bb.4:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	w14, #1                         ; =0x1
	b	LBB2_9
LBB2_5:                                 ;   in Loop: Header=BB2_2 Depth=1
	and	x16, x8, #0xfffffffffffffff8
	and	x17, x8, #0xfffffffffffffff8
	orr	x14, x17, #0x1
	dup.4s	v0, w15
	mov	x15, x10
LBB2_6:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	q1, [x15, #-120]
	ext.16b	v2, v0, v1, #12
	ldur	q0, [x15, #-104]
	ext.16b	v3, v1, v0, #12
	add.4s	v1, v1, v2
	add.4s	v2, v0, v3
	stp	q1, q2, [x15], #32
	subs	x16, x16, #8
	b.ne	LBB2_6
; %bb.7:                                ;   in Loop: Header=BB2_2 Depth=1
	cmp	x8, x17
	b.eq	LBB2_1
; %bb.8:                                ;   in Loop: Header=BB2_2 Depth=1
	mov.s	w15, v0[3]
LBB2_9:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x12, x14, lsl #2
	ldr	w17, [x16]
	add	w15, w17, w15
	str	w15, [x16, #120]
	add	x14, x14, #1
	mov	x15, x17
	cmp	x13, x14
	b.ne	LBB2_9
	b	LBB2_1
LBB2_10:
Lloh8:
	adrp	x8, _triangle@PAGE+2320
Lloh9:
	ldr	w9, [x8, _triangle@PAGEOFF+2320]
	add	w8, w9, #9
	cmp	w8, #19
	b.hs	LBB2_12
; %bb.11:
	mov	w8, #1                          ; =0x1
	b	LBB2_14
LBB2_12:
	mov	w8, #1                          ; =0x1
	mov	w10, #26215                     ; =0x6667
	movk	w10, #26214, lsl #16
LBB2_13:                                ; =>This Inner Loop Header: Depth=1
	smull	x9, w9, w10
	lsr	x11, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w11
	add	w8, w8, #1
	add	w11, w9, #9
	cmp	w11, #18
	b.hi	LBB2_13
LBB2_14:
	mov	x24, #0                         ; =0x0
	and	w9, w8, #0x1
	adds	w8, w9, w8
	cinc	w9, w8, lt
	asr	w9, w9, #1
	add	w9, w9, #1
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	add	w26, w8, #2
	mov	w27, #1                         ; =0x1
Lloh10:
	adrp	x19, l_.str@PAGE
Lloh11:
	add	x19, x19, l_.str@PAGEOFF
	mov	w25, #26215                     ; =0x6667
	movk	w25, #26214, lsl #16
	b	LBB2_16
LBB2_15:                                ;   in Loop: Header=BB2_16 Depth=1
	add	x24, x24, #1
Lloh12:
	adrp	x0, l_.str.12@PAGE
Lloh13:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
	add	x27, x27, #1
	cmp	x24, #20
	b.eq	LBB2_33
LBB2_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_18 Depth 2
                                        ;     Child Loop BB2_22 Depth 2
                                        ;       Child Loop BB2_25 Depth 3
                                        ;       Child Loop BB2_29 Depth 3
                                        ;       Child Loop BB2_32 Depth 3
	mov	x9, x24
	mov	w8, #19                         ; =0x13
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	sub	w8, w8, w9
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	mul	w20, w8, w9
	cmp	w20, #1
	b.lt	LBB2_19
; %bb.17:                               ;   in Loop: Header=BB2_16 Depth=1
	mov	w21, #0                         ; =0x0
LBB2_18:                                ;   Parent Loop BB2_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x19
	bl	_libmin_printf
	add	w21, w21, #1
	cmp	w21, w20
	b.lt	LBB2_18
LBB2_19:                                ;   in Loop: Header=BB2_16 Depth=1
	mov	x20, #0                         ; =0x0
	str	x24, [sp, #40]                  ; 8-byte Folded Spill
	b	LBB2_22
LBB2_20:                                ;   in Loop: Header=BB2_22 Depth=2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stp	x8, x20, [sp, #8]
Lloh14:
	adrp	x8, l_.str.8@PAGE
Lloh15:
	add	x8, x8, l_.str.8@PAGEOFF
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.11@PAGE
Lloh17:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_21:                                ;   in Loop: Header=BB2_22 Depth=2
	add	x20, x20, #1
	cmp	x20, x27
	b.eq	LBB2_15
LBB2_22:                                ;   Parent Loop BB2_16 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_25 Depth 3
                                        ;       Child Loop BB2_29 Depth 3
                                        ;       Child Loop BB2_32 Depth 3
	mov	w8, #120                        ; =0x78
	madd	x8, x24, x8, x28
	ldr	w22, [x8, x20, lsl #2]
	add	w8, w22, #9
	cmp	w8, #19
	b.hs	LBB2_24
; %bb.23:                               ;   in Loop: Header=BB2_22 Depth=2
	mov	w8, #1                          ; =0x1
	b	LBB2_26
LBB2_24:                                ;   in Loop: Header=BB2_22 Depth=2
	mov	w8, #1                          ; =0x1
	mov	x9, x22
LBB2_25:                                ;   Parent Loop BB2_16 Depth=1
                                        ;     Parent Loop BB2_22 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	smull	x9, w9, w25
	lsr	x10, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w10
	add	w8, w8, #1
	add	w10, w9, #9
	cmp	w10, #18
	b.hi	LBB2_25
LBB2_26:                                ;   in Loop: Header=BB2_22 Depth=2
	subs	w23, w26, w8
	b.lt	LBB2_20
; %bb.27:                               ;   in Loop: Header=BB2_22 Depth=2
	mov	x24, x27
	mov	x27, x26
	mov	x26, x28
	cmp	w23, #0
	cinc	w8, w23, lt
	asr	w28, w8, #1
	cmp	w23, #1
	b.le	LBB2_30
; %bb.28:                               ;   in Loop: Header=BB2_22 Depth=2
	mov	x21, x28
LBB2_29:                                ;   Parent Loop BB2_16 Depth=1
                                        ;     Parent Loop BB2_22 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x0, x19
	bl	_libmin_printf
	subs	w21, w21, #1
	b.ne	LBB2_29
LBB2_30:                                ;   in Loop: Header=BB2_22 Depth=2
	str	x22, [sp]
Lloh18:
	adrp	x0, l_.str.1@PAGE
Lloh19:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	sub	w21, w23, w28
	cmp	w21, #1
	mov	x28, x26
	mov	x26, x27
	mov	x27, x24
	ldr	x24, [sp, #40]                  ; 8-byte Folded Reload
	b.lt	LBB2_21
; %bb.31:                               ;   in Loop: Header=BB2_22 Depth=2
	mov	w22, #0                         ; =0x0
LBB2_32:                                ;   Parent Loop BB2_16 Depth=1
                                        ;     Parent Loop BB2_22 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x0, x19
	bl	_libmin_printf
	add	w22, w22, #1
	cmp	w22, w21
	b.lt	LBB2_32
	b	LBB2_21
LBB2_33:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh18, Lloh19
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" "

l_.str.1:                               ; @.str.1
	.asciz	"%d"

l_.str.8:                               ; @.str.8
	.asciz	"pascal"

.zerofill __DATA,__bss,_triangle,3720,2 ; @triangle
l_.str.11:                              ; @.str.11
	.asciz	"%s: error printing element %d,%d\n"

l_.str.12:                              ; @.str.12
	.asciz	"\n"

.subsections_via_symbols
