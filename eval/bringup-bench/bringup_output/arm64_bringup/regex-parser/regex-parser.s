	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_re_match                       ; -- Begin function re_match
	.p2align	2
_re_match:                              ; @re_match
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
	mov	x19, x2
	mov	x20, x1
	bl	_re_compile
	str	wzr, [x19]
	cbz	x0, LBB0_6
; %bb.1:
	mov	x21, x0
	ldrb	w8, [x0]
	cmp	w8, #2
	b.ne	LBB0_3
; %bb.2:
	add	x0, x21, #16
	mov	x1, x20
	mov	x2, x19
	bl	_matchpattern
	sub	w0, w0, #1
	b	LBB0_8
LBB0_3:
	mov	x23, #0                         ; =0x0
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	add	x22, x20, x23
	mov	x0, x21
	mov	x1, x22
	mov	x2, x19
	bl	_matchpattern
	cbnz	w0, LBB0_7
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldrb	w8, [x22]
	add	x23, x23, #1
	cbnz	w8, LBB0_4
LBB0_6:
	mov	w0, #-1                         ; =0xffffffff
	b	LBB0_8
LBB0_7:
	ldrb	w8, [x20, x23]
	cmp	w8, #0
	csinv	w0, w23, wzr, ne
LBB0_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_re_matchp                      ; -- Begin function re_matchp
	.p2align	2
_re_matchp:                             ; @re_matchp
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
	str	wzr, [x2]
	cbz	x0, LBB1_6
; %bb.1:
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	ldrb	w8, [x0]
	cmp	w8, #2
	b.ne	LBB1_3
; %bb.2:
	add	x0, x21, #16
	mov	x1, x20
	mov	x2, x19
	bl	_matchpattern
	sub	w0, w0, #1
	b	LBB1_8
LBB1_3:
	mov	x23, #0                         ; =0x0
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	add	x22, x20, x23
	mov	x0, x21
	mov	x1, x22
	mov	x2, x19
	bl	_matchpattern
	cbnz	w0, LBB1_7
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	ldrb	w8, [x22]
	add	x23, x23, #1
	cbnz	w8, LBB1_4
LBB1_6:
	mov	w0, #-1                         ; =0xffffffff
	b	LBB1_8
LBB1_7:
	ldrb	w8, [x20, x23]
	cmp	w8, #0
	csinv	w0, w23, wzr, ne
LBB1_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_re_compile                     ; -- Begin function re_compile
	.p2align	2
_re_compile:                            ; @re_compile
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
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
	mov	x8, x0
	ldrb	w26, [x0]
Lloh0:
	adrp	x0, _re_compile.re_compiled@PAGE
Lloh1:
	add	x0, x0, _re_compile.re_compiled@PAGEOFF
	cbz	w26, LBB2_39
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w25, #0                         ; =0x0
	mov	w10, #1                         ; =0x1
	mov	w11, #7                         ; =0x7
Lloh2:
	adrp	x12, lJTI2_0@PAGE
Lloh3:
	add	x12, x12, lJTI2_0@PAGEOFF
	mov	w13, #3                         ; =0x3
	mov	w14, #5                         ; =0x5
	mov	w15, #6                         ; =0x6
	mov	w16, #4                         ; =0x4
	mov	w17, #9                         ; =0x9
Lloh4:
	adrp	x1, _re_compile.ccl_buf@PAGE
Lloh5:
	add	x1, x1, _re_compile.ccl_buf@PAGEOFF
	mov	w2, #92                         ; =0x5c
	mov	w3, #8                          ; =0x8
	mov	w4, #11                         ; =0xb
	mov	w5, #15                         ; =0xf
	mov	w6, #13                         ; =0xd
	mov	w7, #10                         ; =0xa
	mov	w19, #14                        ; =0xe
	mov	w20, #12                        ; =0xc
	mov	w21, #2                         ; =0x2
	mov	w27, #1                         ; =0x1
	mov	w23, #1                         ; =0x1
Lloh6:
	adrp	x22, lJTI2_1@PAGE
Lloh7:
	add	x22, x22, lJTI2_1@PAGEOFF
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_20 Depth 2
	mov	x24, x27
	sxtb	w27, w26
	sub	w27, w27, #36
	cmp	w27, #58
	b.hi	LBB2_5
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
	adr	x28, LBB2_4
	ldrb	w30, [x12, x27]
	add	x28, x28, x30, lsl #2
	br	x28
LBB2_4:                                 ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w13, [x0, x26]
	b	LBB2_29
LBB2_5:                                 ;   in Loop: Header=BB2_2 Depth=1
	add	x27, x0, x9, lsl #4
	strb	w11, [x27]
	strb	w26, [x27, #8]
	b	LBB2_29
LBB2_6:                                 ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w14, [x0, x26]
	b	LBB2_29
LBB2_7:                                 ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w15, [x0, x26]
	b	LBB2_29
LBB2_8:                                 ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w10, [x0, x26]
	b	LBB2_29
LBB2_9:                                 ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w16, [x0, x26]
	b	LBB2_29
LBB2_10:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	x26, x25
	sxtw	x27, w26
	add	x26, x27, #1
	ldrb	w30, [x8, x26]
	add	x28, x0, x9, lsl #4
	cmp	w30, #94
	b.ne	LBB2_17
; %bb.11:                               ;   in Loop: Header=BB2_2 Depth=1
	strb	w17, [x28]
	add	x25, x27, x8
	ldrb	w27, [x25, #2]
	mov	x25, x26
	cbnz	w27, LBB2_18
	b	LBB2_38
LBB2_12:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	x26, x25
	sxtw	x26, w26
	add	x26, x26, #1
	ldrsb	w27, [x8, x26]
	cbz	w27, LBB2_29
; %bb.13:                               ;   in Loop: Header=BB2_2 Depth=1
	sub	w25, w27, #68
	cmp	w25, #51
	b.hi	LBB2_32
; %bb.14:                               ;   in Loop: Header=BB2_2 Depth=1
	adr	x27, LBB2_15
	ldrb	w28, [x22, x25]
	add	x27, x27, x28, lsl #2
	br	x27
LBB2_15:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w4, [x0, x25]
	b	LBB2_30
LBB2_16:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x26, x9, #4
	strb	w21, [x0, x26]
	b	LBB2_29
LBB2_17:                                ;   in Loop: Header=BB2_2 Depth=1
	strb	w3, [x28]
LBB2_18:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	x26, x23
	b	LBB2_20
LBB2_19:                                ;   in Loop: Header=BB2_20 Depth=2
	strb	w27, [x1, w26, sxtw]
	add	w26, w26, #1
LBB2_20:                                ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; kill: def $w25 killed $w25 killed $x25 def $x25
	sxtw	x28, w25
	add	x25, x28, #1
	ldrb	w27, [x8, x25]
	cmp	w27, #92
	b.eq	LBB2_24
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=2
	cbz	w27, LBB2_27
; %bb.22:                               ;   in Loop: Header=BB2_20 Depth=2
	cmp	w27, #93
	b.eq	LBB2_27
; %bb.23:                               ;   in Loop: Header=BB2_20 Depth=2
	cmp	w26, #39
	b.le	LBB2_19
	b	LBB2_38
LBB2_24:                                ;   in Loop: Header=BB2_20 Depth=2
	cmp	w26, #38
	b.gt	LBB2_38
; %bb.25:                               ;   in Loop: Header=BB2_20 Depth=2
	add	x25, x28, #2
	ldrb	w27, [x8, x25]
	cbz	w27, LBB2_38
; %bb.26:                               ;   in Loop: Header=BB2_20 Depth=2
	strb	w2, [x1, w26, sxtw]
	add	w26, w26, #1
	ldrb	w27, [x8, x25]
                                        ; kill: def $w25 killed $w25 killed $x25 def $x25
	b	LBB2_19
LBB2_27:                                ;   in Loop: Header=BB2_2 Depth=1
	cmp	w26, #39
	b.gt	LBB2_38
; %bb.28:                               ;   in Loop: Header=BB2_2 Depth=1
	add	x23, x1, w23, sxtw
	add	w27, w26, #1
	strb	wzr, [x1, w26, sxtw]
	add	x26, x0, x9, lsl #4
	str	x23, [x26, #8]
	mov	x23, x27
LBB2_29:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	x26, x25
LBB2_30:                                ;   in Loop: Header=BB2_2 Depth=1
                                        ; kill: def $w26 killed $w26 killed $x26 def $x26
	sxtw	x25, w26
	ldrb	w26, [x8, x25]
	cbz	w26, LBB2_38
; %bb.31:                               ;   in Loop: Header=BB2_2 Depth=1
	add	x25, x25, #1
	ldrb	w26, [x8, x25]
	add	x27, x24, #1
	add	x9, x9, #1
	cmp	w26, #0
	ccmp	x24, #28, #2, ne
	b.ls	LBB2_2
	b	LBB2_40
LBB2_32:                                ;   in Loop: Header=BB2_2 Depth=1
	add	x25, x0, x9, lsl #4
	strb	w11, [x25]
	ldrb	w27, [x8, x26]
	strb	w27, [x25, #8]
	b	LBB2_30
LBB2_33:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w5, [x0, x25]
	b	LBB2_30
LBB2_34:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w6, [x0, x25]
	b	LBB2_30
LBB2_35:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w7, [x0, x25]
	b	LBB2_30
LBB2_36:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w19, [x0, x25]
	b	LBB2_30
LBB2_37:                                ;   in Loop: Header=BB2_2 Depth=1
	lsl	x25, x9, #4
	strb	w20, [x0, x25]
	b	LBB2_30
LBB2_38:
	mov	x0, #0                          ; =0x0
	b	LBB2_42
LBB2_39:
	mov	x8, #0                          ; =0x0
	b	LBB2_41
LBB2_40:
	and	x8, x24, #0xffffffff
LBB2_41:
	lsl	x8, x8, #4
	strb	wzr, [x0, x8]
LBB2_42:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
	.section	__TEXT,__const
lJTI2_0:
	.byte	(LBB2_4-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_6-LBB2_4)>>2
	.byte	(LBB2_7-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_8-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_9-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_10-LBB2_4)>>2
	.byte	(LBB2_12-LBB2_4)>>2
	.byte	(LBB2_5-LBB2_4)>>2
	.byte	(LBB2_16-LBB2_4)>>2
lJTI2_1:
	.byte	(LBB2_15-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_33-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_34-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_35-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_36-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_32-LBB2_15)>>2
	.byte	(LBB2_37-LBB2_15)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function matchpattern
_matchpattern:                          ; @matchpattern
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x2
	mov	x21, x1
	mov	x20, x0
	mov	x25, #0                         ; =0x0
	ldr	w24, [x2]
	ldrb	w8, [x20], #32
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	cbz	w8, LBB3_9
; %bb.2:                                ;   in Loop: Header=BB3_1 Depth=1
	ldurb	w22, [x20, #-16]
	cmp	w22, #6
	b.eq	LBB3_15
; %bb.3:                                ;   in Loop: Header=BB3_1 Depth=1
	cmp	w22, #5
	b.eq	LBB3_22
; %bb.4:                                ;   in Loop: Header=BB3_1 Depth=1
	cmp	w22, #4
	b.eq	LBB3_9
; %bb.5:                                ;   in Loop: Header=BB3_1 Depth=1
	cmp	w8, #3
	b.ne	LBB3_7
; %bb.6:                                ;   in Loop: Header=BB3_1 Depth=1
	cbz	w22, LBB3_26
LBB3_7:                                 ;   in Loop: Header=BB3_1 Depth=1
	add	w8, w24, w25
	add	w8, w8, #1
	str	w8, [x19]
	ldrb	w8, [x21, x25]
	cbz	w8, LBB3_29
; %bb.8:                                ;   in Loop: Header=BB3_1 Depth=1
	ldp	x0, x1, [x20, #-32]
	sxtb	w2, w8
	bl	_matchone
	add	x25, x25, #1
	add	x20, x20, #16
	mov	x8, x22
	cbnz	w0, LBB3_1
	b	LBB3_29
LBB3_9:
	ldur	x22, [x20, #-32]
	tst	x22, #0xff
	b.eq	LBB3_33
; %bb.10:
	ldur	x23, [x20, #-24]
	add	x24, x21, x25
	mov	x0, x20
	mov	x1, x24
	mov	x2, x19
	bl	_matchpattern
	cbnz	w0, LBB3_33
; %bb.11:
	ldrb	w8, [x24]
	cbz	w8, LBB3_27
; %bb.12:
	sxtb	w2, w8
	mov	x0, x22
	mov	x1, x23
	bl	_matchone
	cbz	w0, LBB3_34
; %bb.13:
	add	x8, x21, x25
	add	x1, x8, #1
	mov	x0, x20
	mov	x2, x19
	bl	_matchpattern
	cbz	w0, LBB3_34
; %bb.14:
	ldr	w8, [x19]
	add	w8, w8, #1
	str	w8, [x19]
	mov	w0, #1                          ; =0x1
	b	LBB3_34
LBB3_15:
	add	x26, x21, x25
	ldrb	w8, [x26]
	cbz	w8, LBB3_27
; %bb.16:
	ldp	x22, x23, [x20, #-32]
	add	x9, x24, x25
	add	x24, x9, #1
	mov	x21, x26
LBB3_17:                                ; =>This Inner Loop Header: Depth=1
	sxtb	w2, w8
	mov	x0, x22
	mov	x1, x23
	bl	_matchone
	cbz	w0, LBB3_19
; %bb.18:                               ;   in Loop: Header=BB3_17 Depth=1
	str	w24, [x19]
	ldrb	w8, [x21, #1]!
	add	w24, w24, #1
	cbnz	w8, LBB3_17
LBB3_19:
	cmp	x21, x26
	b.ls	LBB3_27
LBB3_20:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x21
	mov	x2, x19
	bl	_matchpattern
	cbnz	w0, LBB3_33
; %bb.21:                               ;   in Loop: Header=BB3_20 Depth=1
	sub	x21, x21, #1
	ldr	w8, [x19]
	sub	w8, w8, #1
	str	w8, [x19]
	cmp	x21, x26
	b.hi	LBB3_20
	b	LBB3_34
LBB3_22:
	add	x26, x21, x25
	ldrb	w8, [x26]
	add	x24, x24, x25
	cbz	w8, LBB3_28
; %bb.23:
	ldp	x22, x23, [x20, #-32]
	add	x25, x24, #1
	mov	x21, x26
LBB3_24:                                ; =>This Inner Loop Header: Depth=1
	sxtb	w2, w8
	mov	x0, x22
	mov	x1, x23
	bl	_matchone
	cbz	w0, LBB3_30
; %bb.25:                               ;   in Loop: Header=BB3_24 Depth=1
	str	w25, [x19]
	ldrb	w8, [x21, #1]!
	add	w25, w25, #1
	cbnz	w8, LBB3_24
	b	LBB3_30
LBB3_26:
	ldrb	w8, [x21, x25]
	cmp	w8, #0
	cset	w0, eq
	b	LBB3_34
LBB3_27:
	mov	w0, #0                          ; =0x0
	b	LBB3_34
LBB3_28:
	mov	x21, x26
	b	LBB3_31
LBB3_29:
	mov	w0, #0                          ; =0x0
	str	w24, [x19]
	b	LBB3_34
LBB3_30:
	cmp	x21, x26
	b.lo	LBB3_29
LBB3_31:
	mov	x0, x20
	mov	x1, x21
	mov	x2, x19
	bl	_matchpattern
	cbnz	w0, LBB3_33
; %bb.32:
	sub	x21, x21, #1
	ldr	w8, [x19]
	sub	w8, w8, #1
	str	w8, [x19]
	b	LBB3_30
LBB3_33:
	mov	w0, #1                          ; =0x1
LBB3_34:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_re_print                       ; -- Begin function re_print
	.p2align	2
_re_print:                              ; @re_print
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
	mov	x19, x0
	mov	x26, #0                         ; =0x0
Lloh8:
	adrp	x27, l___const.re_print.types@PAGE
Lloh9:
	add	x27, x27, l___const.re_print.types@PAGEOFF
Lloh10:
	adrp	x20, l_.str.17@PAGE
Lloh11:
	add	x20, x20, l_.str.17@PAGEOFF
Lloh12:
	adrp	x21, l_.str.18@PAGE
Lloh13:
	add	x21, x21, l_.str.18@PAGEOFF
Lloh14:
	adrp	x22, l_.str.20@PAGE
Lloh15:
	add	x22, x22, l_.str.20@PAGEOFF
Lloh16:
	adrp	x23, l_.str.19@PAGE
Lloh17:
	add	x23, x23, l_.str.19@PAGEOFF
Lloh18:
	adrp	x24, l_.str.22@PAGE
Lloh19:
	add	x24, x24, l_.str.22@PAGEOFF
	b	LBB4_4
LBB4_1:                                 ;   in Loop: Header=BB4_4 Depth=1
	mov	x0, x22
LBB4_2:                                 ;   in Loop: Header=BB4_4 Depth=1
	bl	_libmin_printf
LBB4_3:                                 ;   in Loop: Header=BB4_4 Depth=1
	mov	x0, x24
	bl	_libmin_printf
	add	x26, x26, #1
	cmp	x26, #30
	b.eq	LBB4_12
LBB4_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_7 Depth 2
	add	x25, x19, x26, lsl #4
	ldrb	w8, [x25]
	cbz	x8, LBB4_12
; %bb.5:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x27, x8, lsl #3]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldrb	w8, [x25]
	sub	w9, w8, #8
	cmp	w9, #2
	b.hs	LBB4_10
; %bb.6:                                ;   in Loop: Header=BB4_4 Depth=1
	mov	x0, x21
	bl	_libmin_printf
	mov	x28, #0                         ; =0x0
	add	x8, x19, x26, lsl #4
	add	x25, x8, #8
LBB4_7:                                 ;   Parent Loop BB4_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x25]
	ldrb	w8, [x8, x28]
	cbz	w8, LBB4_1
; %bb.8:                                ;   in Loop: Header=BB4_7 Depth=2
	cmp	w8, #93
	b.eq	LBB4_1
; %bb.9:                                ;   in Loop: Header=BB4_7 Depth=2
	sxtb	w8, w8
	str	x8, [sp]
	mov	x0, x23
	bl	_libmin_printf
	add	x28, x28, #1
	cmp	x28, #40
	b.ne	LBB4_7
	b	LBB4_1
LBB4_10:                                ;   in Loop: Header=BB4_4 Depth=1
	cmp	w8, #7
	b.ne	LBB4_3
; %bb.11:                               ;   in Loop: Header=BB4_4 Depth=1
	add	x8, x19, x26, lsl #4
	ldrb	w8, [x8, #8]
	str	x8, [sp]
Lloh20:
	adrp	x0, l_.str.21@PAGE
Lloh21:
	add	x0, x0, l_.str.21@PAGEOFF
	b	LBB4_2
LBB4_12:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
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
	mov	x28, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
Lloh22:
	adrp	x23, _test_vector@PAGE
Lloh23:
	add	x23, x23, _test_vector@PAGEOFF
	mov	w21, #68                        ; =0x44
	b	LBB5_4
LBB5_1:                                 ;   in Loop: Header=BB5_4 Depth=1
Lloh24:
	adrp	x0, l_.str.22@PAGE
Lloh25:
	add	x0, x0, l_.str.22@PAGEOFF
	bl	_libmin_printf
	mov	x0, x24
	bl	_re_compile
	bl	_re_print
	add	x8, x28, #1
	stp	x24, x25, [sp, #16]
	stp	x8, x21, [sp]
Lloh26:
	adrp	x0, l_.str.113@PAGE
Lloh27:
	add	x0, x0, l_.str.113@PAGEOFF
LBB5_2:                                 ;   in Loop: Header=BB5_4 Depth=1
	bl	_libmin_printf
	add	x19, x19, #1
LBB5_3:                                 ;   in Loop: Header=BB5_4 Depth=1
	add	x28, x28, #1
	cmp	x28, #68
	b.eq	LBB5_19
LBB5_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_12 Depth 2
	add	x8, x23, x28, lsl #5
	ldp	x24, x25, [x8, #8]
	ldr	x20, [x8]
	ldr	w22, [x8, #24]
	mov	x0, x24
	bl	_re_compile
	str	wzr, [sp, #60]
	cbz	x0, LBB5_7
; %bb.5:                                ;   in Loop: Header=BB5_4 Depth=1
	mov	x26, x0
	ldrb	w8, [x0]
	cmp	w8, #2
	b.ne	LBB5_11
; %bb.6:                                ;   in Loop: Header=BB5_4 Depth=1
	add	x0, x26, #16
	add	x2, sp, #60
	mov	x1, x25
	bl	_matchpattern
	sub	w8, w0, #1
	cmn	w8, #1
	cbnz	x20, LBB5_8
	b	LBB5_17
LBB5_7:                                 ;   in Loop: Header=BB5_4 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	cmn	w8, #1
	cbz	x20, LBB5_17
LBB5_8:                                 ;   in Loop: Header=BB5_4 Depth=1
	b.eq	LBB5_1
; %bb.9:                                ;   in Loop: Header=BB5_4 Depth=1
	ldr	w8, [sp, #60]
	cmp	w8, w22
	b.eq	LBB5_3
; %bb.10:                               ;   in Loop: Header=BB5_4 Depth=1
	add	x9, x28, #1
	stp	x25, x22, [sp, #32]
	stp	x24, x8, [sp, #16]
	stp	x9, x21, [sp]
Lloh28:
	adrp	x0, l_.str.114@PAGE
Lloh29:
	add	x0, x0, l_.str.114@PAGEOFF
	b	LBB5_2
LBB5_11:                                ;   in Loop: Header=BB5_4 Depth=1
	mov	x21, #0                         ; =0x0
LBB5_12:                                ;   Parent Loop BB5_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x27, x25, x21
	add	x2, sp, #60
	mov	x0, x26
	mov	x1, x27
	bl	_matchpattern
	cbnz	w0, LBB5_15
; %bb.13:                               ;   in Loop: Header=BB5_12 Depth=2
	ldrb	w8, [x27]
	add	x21, x21, #1
	cbnz	w8, LBB5_12
; %bb.14:                               ;   in Loop: Header=BB5_4 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	b	LBB5_16
LBB5_15:                                ;   in Loop: Header=BB5_4 Depth=1
	ldrb	w8, [x25, x21]
	cmp	w8, #0
	csinv	w8, w21, wzr, ne
LBB5_16:                                ;   in Loop: Header=BB5_4 Depth=1
	mov	w21, #68                        ; =0x44
	cmn	w8, #1
	cbnz	x20, LBB5_8
LBB5_17:                                ;   in Loop: Header=BB5_4 Depth=1
	b.eq	LBB5_3
; %bb.18:                               ;   in Loop: Header=BB5_4 Depth=1
Lloh30:
	adrp	x0, l_.str.22@PAGE
Lloh31:
	add	x0, x0, l_.str.22@PAGEOFF
	bl	_libmin_printf
	mov	x0, x24
	bl	_re_compile
	bl	_re_print
	add	x8, x28, #1
	ldr	w9, [sp, #60]
	stp	x25, x9, [sp, #24]
	stp	x21, x24, [sp, #8]
	str	x8, [sp]
Lloh32:
	adrp	x0, l_.str.112@PAGE
Lloh33:
	add	x0, x0, l_.str.112@PAGEOFF
	b	LBB5_2
LBB5_19:
	mov	w8, #68                         ; =0x44
	sub	x9, x8, x19
	stp	x9, x8, [sp]
Lloh34:
	adrp	x0, l_.str.115@PAGE
Lloh35:
	add	x0, x0, l_.str.115@PAGEOFF
	bl	_libmin_printf
	cbnz	x19, LBB5_21
; %bb.20:
	bl	_libmin_success
LBB5_21:
	mov	x0, x19
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function matchone
_matchone:                              ; @matchone
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	and	w0, w0, #0xff
	sub	w8, w0, #1
	cmp	w8, #14
	b.hi	LBB6_3
; %bb.1:
Lloh36:
	adrp	x9, lJTI6_0@PAGE
Lloh37:
	add	x9, x9, lJTI6_0@PAGEOFF
	adr	x10, LBB6_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB6_2:
	mov	x0, x2
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	_matchcharclass
LBB6_3:
	cmp	w2, w1, uxtb
	b	LBB6_15
LBB6_4:
	mov	x0, x2
	bl	_matchcharclass
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_5:
Lloh38:
	adrp	x8, __pctype@GOTPAGE
Lloh39:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh40:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	and	w0, w8, #0x4
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_6:
Lloh41:
	adrp	x8, __pctype@GOTPAGE
Lloh42:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh43:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	tst	w8, #0x4
	b	LBB6_15
LBB6_7:
	cmp	w2, #95
	b.eq	LBB6_9
; %bb.8:
Lloh44:
	adrp	x8, __pctype@GOTPAGE
Lloh45:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh46:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	tst	w8, #0x3
	b.eq	LBB6_17
LBB6_9:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_10:
	cmp	w2, #95
	b.eq	LBB6_12
; %bb.11:
Lloh47:
	adrp	x8, __pctype@GOTPAGE
Lloh48:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh49:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	tst	w8, #0x3
	b.eq	LBB6_18
LBB6_12:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_13:
Lloh50:
	adrp	x8, __pctype@GOTPAGE
Lloh51:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh52:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	and	w0, w8, #0x8
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_14:
Lloh53:
	adrp	x8, __pctype@GOTPAGE
Lloh54:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh55:
	ldr	x8, [x8]
	ldrh	w8, [x8, w2, sxtw #1]
	tst	w8, #0x8
LBB6_15:
	cset	w0, eq
LBB6_16:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_17:
	ubfx	w0, w8, #2, #1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB6_18:
	mov	w9, #1                          ; =0x1
	bic	w0, w9, w8, lsr #2
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpLdrGotLdr	Lloh38, Lloh39, Lloh40
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
	.loh AdrpLdrGotLdr	Lloh44, Lloh45, Lloh46
	.loh AdrpLdrGotLdr	Lloh47, Lloh48, Lloh49
	.loh AdrpLdrGotLdr	Lloh50, Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh53, Lloh54, Lloh55
	.cfi_endproc
	.section	__TEXT,__const
lJTI6_0:
	.byte	(LBB6_16-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_3-LBB6_2)>>2
	.byte	(LBB6_2-LBB6_2)>>2
	.byte	(LBB6_4-LBB6_2)>>2
	.byte	(LBB6_5-LBB6_2)>>2
	.byte	(LBB6_6-LBB6_2)>>2
	.byte	(LBB6_7-LBB6_2)>>2
	.byte	(LBB6_10-LBB6_2)>>2
	.byte	(LBB6_13-LBB6_2)>>2
	.byte	(LBB6_14-LBB6_2)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function matchcharclass
_matchcharclass:                        ; @matchcharclass
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w0 killed $w0 def $x0
Lloh56:
	adrp	x8, __pctype@GOTPAGE
Lloh57:
	ldr	x8, [x8, __pctype@GOTPAGEOFF]
Lloh58:
	ldr	x9, [x8]
	sxtw	x10, w0
	sub	w11, w0, #68
	mov	w12, #1                         ; =0x1
	lsl	x13, x12, x11
	mov	x14, #-9222949817947160575      ; =0x8001800180018001
	movk	x14, #8, lsl #16
	movk	x14, #8, lsl #48
Lloh59:
	adrp	x15, lJTI7_0@PAGE
Lloh60:
	add	x15, x15, lJTI7_0@PAGEOFF
	b	LBB7_3
LBB7_1:                                 ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, w0
	b.eq	LBB7_34
LBB7_2:                                 ;   in Loop: Header=BB7_3 Depth=1
	add	x1, x1, #1
	tst	w16, #0xff
	b.eq	LBB7_29
LBB7_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x1]
	sxtb	w16, w8
	cmp	w0, #45
	b.ne	LBB7_8
LBB7_4:                                 ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, #92
	b.ne	LBB7_14
; %bb.5:                                ;   in Loop: Header=BB7_3 Depth=1
	ldrsb	w8, [x1, #1]!
	and	w16, w8, #0xff
	sub	w8, w8, #68
	cmp	w8, #51
	b.hi	LBB7_15
; %bb.6:                                ;   in Loop: Header=BB7_3 Depth=1
	adr	x17, LBB7_7
	ldrb	w2, [x15, x8]
	add	x17, x17, x2, lsl #2
	br	x17
LBB7_7:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	tst	w8, #0x4
	b	LBB7_17
LBB7_8:                                 ;   in Loop: Header=BB7_3 Depth=1
	cbz	w8, LBB7_1
; %bb.9:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w8, #45
	b.eq	LBB7_1
; %bb.10:                               ;   in Loop: Header=BB7_3 Depth=1
	ldrb	w8, [x1, #1]
	cmp	w8, #45
	b.ne	LBB7_4
; %bb.11:                               ;   in Loop: Header=BB7_3 Depth=1
	ldrsb	w8, [x1, #2]
	cmp	w8, w0
	b.lt	LBB7_4
; %bb.12:                               ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, w0
	b.gt	LBB7_4
; %bb.13:                               ;   in Loop: Header=BB7_3 Depth=1
	cbz	w8, LBB7_4
	b	LBB7_34
LBB7_14:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, w0
	b.ne	LBB7_2
	b	LBB7_30
LBB7_15:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, w0, uxtb
	b	LBB7_17
LBB7_16:                                ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	tst	w8, #0x8
LBB7_17:                                ;   in Loop: Header=BB7_3 Depth=1
	cset	w8, eq
	cbz	w8, LBB7_26
	b	LBB7_34
LBB7_18:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w0, #95
	b.eq	LBB7_26
; %bb.19:                               ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	tst	w8, #0x3
	b.ne	LBB7_26
; %bb.20:                               ;   in Loop: Header=BB7_3 Depth=1
	bic	w8, w12, w8, lsr #2
	cbz	w8, LBB7_26
	b	LBB7_34
LBB7_21:                                ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	and	w8, w8, #0x4
	cbz	w8, LBB7_26
	b	LBB7_34
LBB7_22:                                ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	and	w8, w8, #0x8
	cbz	w8, LBB7_26
	b	LBB7_34
LBB7_23:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w0, #95
	b.eq	LBB7_34
; %bb.24:                               ;   in Loop: Header=BB7_3 Depth=1
	ldrh	w8, [x9, x10, lsl #1]
	tst	w8, #0x3
	b.ne	LBB7_34
; %bb.25:                               ;   in Loop: Header=BB7_3 Depth=1
	ubfx	w8, w8, #2, #1
	cbnz	w8, LBB7_34
LBB7_26:                                ;   in Loop: Header=BB7_3 Depth=1
	cmp	w16, w0, uxtb
	b.ne	LBB7_2
; %bb.27:                               ;   in Loop: Header=BB7_3 Depth=1
	mov	w8, #1                          ; =0x1
	cmp	w11, #51
	b.hi	LBB7_33
; %bb.28:                               ;   in Loop: Header=BB7_3 Depth=1
	tst	x13, x14
	b.ne	LBB7_2
	b	LBB7_33
LBB7_29:
	mov	w0, #0                          ; =0x0
	ret
LBB7_30:
	cmp	w0, #45
	b.ne	LBB7_34
; %bb.31:
	ldurb	w8, [x1, #-1]
	cbz	w8, LBB7_34
; %bb.32:
	ldrb	w8, [x1, #1]
	cmp	w8, #0
	cset	w8, eq
LBB7_33:
	mov	x0, x8
	ret
LBB7_34:
	mov	w0, #1                          ; =0x1
	ret
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdrGotLdr	Lloh56, Lloh57, Lloh58
	.cfi_endproc
	.section	__TEXT,__const
lJTI7_0:
	.byte	(LBB7_7-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_16-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_18-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_21-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_22-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_15-LBB7_7)>>2
	.byte	(LBB7_23-LBB7_7)>>2
                                        ; -- End function
.zerofill __DATA,__bss,_re_compile.re_compiled,480,3 ; @re_compile.re_compiled
.zerofill __DATA,__bss,_re_compile.ccl_buf,40,0 ; @re_compile.ccl_buf
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"UNUSED"

l_.str.1:                               ; @.str.1
	.asciz	"DOT"

l_.str.2:                               ; @.str.2
	.asciz	"BEGIN"

l_.str.3:                               ; @.str.3
	.asciz	"END"

l_.str.4:                               ; @.str.4
	.asciz	"QUESTIONMARK"

l_.str.5:                               ; @.str.5
	.asciz	"STAR"

l_.str.6:                               ; @.str.6
	.asciz	"PLUS"

l_.str.7:                               ; @.str.7
	.asciz	"CHAR"

l_.str.8:                               ; @.str.8
	.asciz	"CHAR_CLASS"

l_.str.9:                               ; @.str.9
	.asciz	"INV_CHAR_CLASS"

l_.str.10:                              ; @.str.10
	.asciz	"DIGIT"

l_.str.11:                              ; @.str.11
	.asciz	"NOT_DIGIT"

l_.str.12:                              ; @.str.12
	.asciz	"ALPHA"

l_.str.13:                              ; @.str.13
	.asciz	"NOT_ALPHA"

l_.str.14:                              ; @.str.14
	.asciz	"WHITESPACE"

l_.str.15:                              ; @.str.15
	.asciz	"NOT_WHITESPACE"

l_.str.16:                              ; @.str.16
	.asciz	"BRANCH"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.re_print.types
l___const.re_print.types:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"type: %s"

l_.str.18:                              ; @.str.18
	.asciz	" ["

l_.str.19:                              ; @.str.19
	.asciz	"%c"

l_.str.20:                              ; @.str.20
	.asciz	"]"

l_.str.21:                              ; @.str.21
	.asciz	" '%c'"

l_.str.22:                              ; @.str.22
	.asciz	"\n"

l_.str.23:                              ; @.str.23
	.asciz	"\\d"

l_.str.24:                              ; @.str.24
	.asciz	"5"

l_.str.25:                              ; @.str.25
	.asciz	"\\w+"

l_.str.26:                              ; @.str.26
	.asciz	"hej"

l_.str.27:                              ; @.str.27
	.asciz	"\\s"

l_.str.28:                              ; @.str.28
	.asciz	"\t \n"

l_.str.29:                              ; @.str.29
	.asciz	"\\S"

l_.str.30:                              ; @.str.30
	.asciz	"[\\s]"

l_.str.31:                              ; @.str.31
	.asciz	"[\\S]"

l_.str.32:                              ; @.str.32
	.asciz	"\\D"

l_.str.33:                              ; @.str.33
	.asciz	"\\W+"

l_.str.34:                              ; @.str.34
	.asciz	"[0-9]+"

l_.str.35:                              ; @.str.35
	.asciz	"12345"

l_.str.36:                              ; @.str.36
	.asciz	"[^\\w]"

l_.str.37:                              ; @.str.37
	.asciz	"\\"

l_.str.38:                              ; @.str.38
	.asciz	"[\\W]"

l_.str.39:                              ; @.str.39
	.asciz	"[\\w]"

l_.str.40:                              ; @.str.40
	.asciz	"[^\\d]"

l_.str.41:                              ; @.str.41
	.asciz	"d"

l_.str.42:                              ; @.str.42
	.asciz	"[\\d]"

l_.str.43:                              ; @.str.43
	.asciz	"[^\\D]"

l_.str.44:                              ; @.str.44
	.asciz	"[\\D]"

l_.str.45:                              ; @.str.45
	.asciz	"^.*\\\\.*$"

l_.str.46:                              ; @.str.46
	.asciz	"c:\\Tools"

l_.str.47:                              ; @.str.47
	.asciz	"^[\\+-]*[\\d]+$"

l_.str.48:                              ; @.str.48
	.asciz	"+27"

l_.str.49:                              ; @.str.49
	.asciz	"[abc]"

l_.str.50:                              ; @.str.50
	.asciz	"1c2"

l_.str.51:                              ; @.str.51
	.asciz	"1C2"

l_.str.52:                              ; @.str.52
	.asciz	"[1-5]+"

l_.str.53:                              ; @.str.53
	.asciz	"0123456789"

l_.str.54:                              ; @.str.54
	.asciz	"[.2]"

l_.str.55:                              ; @.str.55
	.asciz	"a*$"

l_.str.56:                              ; @.str.56
	.asciz	"Xaa"

l_.str.57:                              ; @.str.57
	.asciz	"[a-h]+"

l_.str.58:                              ; @.str.58
	.asciz	"abcdefghxxx"

l_.str.59:                              ; @.str.59
	.asciz	"ABCDEFGH"

l_.str.60:                              ; @.str.60
	.asciz	"[A-H]+"

l_.str.61:                              ; @.str.61
	.asciz	"abcdefgh"

l_.str.62:                              ; @.str.62
	.asciz	"[^\\s]+"

l_.str.63:                              ; @.str.63
	.asciz	"abc def"

l_.str.64:                              ; @.str.64
	.asciz	"[^fc]+"

l_.str.65:                              ; @.str.65
	.asciz	"[^d\\sf]+"

l_.str.66:                              ; @.str.66
	.asciz	"abc\ndef"

l_.str.67:                              ; @.str.67
	.asciz	"b.\\s*\n"

l_.str.68:                              ; @.str.68
	.asciz	"aa\r\nbb\r\ncc\r\n\r\n"

l_.str.69:                              ; @.str.69
	.asciz	".*c"

l_.str.70:                              ; @.str.70
	.asciz	"abcabc"

l_.str.71:                              ; @.str.71
	.asciz	".+c"

l_.str.72:                              ; @.str.72
	.asciz	"[b-z].*"

l_.str.73:                              ; @.str.73
	.asciz	"ab"

l_.str.74:                              ; @.str.74
	.asciz	"b[k-z]*"

l_.str.75:                              ; @.str.75
	.asciz	"[0-9]"

l_.str.76:                              ; @.str.76
	.asciz	"  - "

l_.str.77:                              ; @.str.77
	.asciz	"[^0-9]"

l_.str.78:                              ; @.str.78
	.asciz	"0|"

l_.str.79:                              ; @.str.79
	.asciz	"\\d\\d:\\d\\d:\\d\\d"

l_.str.80:                              ; @.str.80
	.asciz	"0s:00:00"

l_.str.81:                              ; @.str.81
	.asciz	"000:00"

l_.str.82:                              ; @.str.82
	.asciz	"00:0000"

l_.str.83:                              ; @.str.83
	.asciz	"100:0:00"

l_.str.84:                              ; @.str.84
	.asciz	"00:100:00"

l_.str.85:                              ; @.str.85
	.asciz	"0:00:100"

l_.str.86:                              ; @.str.86
	.asciz	"\\d\\d?:\\d\\d?:\\d\\d?"

l_.str.87:                              ; @.str.87
	.asciz	"0:0:0"

l_.str.88:                              ; @.str.88
	.asciz	"0:00:0"

l_.str.89:                              ; @.str.89
	.asciz	"0:0:00"

l_.str.90:                              ; @.str.90
	.asciz	"00:0:0"

l_.str.91:                              ; @.str.91
	.asciz	"00:00:0"

l_.str.92:                              ; @.str.92
	.asciz	"00:0:00"

l_.str.93:                              ; @.str.93
	.asciz	"0:00:00"

l_.str.94:                              ; @.str.94
	.asciz	"00:00:00"

l_.str.95:                              ; @.str.95
	.asciz	"[Hh]ello [Ww]orld\\s*[!]?"

l_.str.96:                              ; @.str.96
	.asciz	"Hello world !"

l_.str.97:                              ; @.str.97
	.asciz	"hello world !"

l_.str.98:                              ; @.str.98
	.asciz	"Hello World !"

l_.str.99:                              ; @.str.99
	.asciz	"Hello world!   "

l_.str.100:                             ; @.str.100
	.asciz	"Hello world  !"

l_.str.101:                             ; @.str.101
	.asciz	"hello World    !"

l_.str.102:                             ; @.str.102
	.asciz	"a:0"

l_.str.103:                             ; @.str.103
	.asciz	".?bar"

l_.str.104:                             ; @.str.104
	.asciz	"real_bar"

l_.str.105:                             ; @.str.105
	.asciz	"real_foo"

l_.str.106:                             ; @.str.106
	.asciz	"X?Y"

l_.str.107:                             ; @.str.107
	.asciz	"Z"

l_.str.108:                             ; @.str.108
	.asciz	"[a-z]+\nbreak"

l_.str.109:                             ; @.str.109
	.asciz	"blahblah\nbreak"

l_.str.110:                             ; @.str.110
	.asciz	"[a-z\\s]+\nbreak"

l_.str.111:                             ; @.str.111
	.asciz	"bla bla \nbreak"

	.section	__DATA,__data
	.globl	_test_vector                    ; @test_vector
	.p2align	3, 0x0
_test_vector:
	.quad	1
	.quad	l_.str.23
	.quad	l_.str.24
	.quad	1
	.quad	1
	.quad	l_.str.25
	.quad	l_.str.26
	.quad	3
	.quad	1
	.quad	l_.str.27
	.quad	l_.str.28
	.quad	1
	.quad	0
	.quad	l_.str.29
	.quad	l_.str.28
	.quad	0
	.quad	1
	.quad	l_.str.30
	.quad	l_.str.28
	.quad	1
	.quad	0
	.quad	l_.str.31
	.quad	l_.str.28
	.quad	0
	.quad	0
	.quad	l_.str.32
	.quad	l_.str.24
	.quad	0
	.quad	0
	.quad	l_.str.33
	.quad	l_.str.26
	.quad	0
	.quad	1
	.quad	l_.str.34
	.quad	l_.str.35
	.quad	5
	.quad	1
	.quad	l_.str.32
	.quad	l_.str.26
	.quad	1
	.quad	0
	.quad	l_.str.23
	.quad	l_.str.26
	.quad	0
	.quad	1
	.quad	l_.str.36
	.quad	l_.str.37
	.quad	1
	.quad	1
	.quad	l_.str.38
	.quad	l_.str.37
	.quad	1
	.quad	0
	.quad	l_.str.39
	.quad	l_.str.37
	.quad	0
	.quad	1
	.quad	l_.str.40
	.quad	l_.str.41
	.quad	1
	.quad	0
	.quad	l_.str.42
	.quad	l_.str.41
	.quad	0
	.quad	0
	.quad	l_.str.43
	.quad	l_.str.41
	.quad	0
	.quad	1
	.quad	l_.str.44
	.quad	l_.str.41
	.quad	1
	.quad	1
	.quad	l_.str.45
	.quad	l_.str.46
	.quad	8
	.quad	1
	.quad	l_.str.47
	.quad	l_.str.48
	.quad	3
	.quad	1
	.quad	l_.str.49
	.quad	l_.str.50
	.quad	1
	.quad	0
	.quad	l_.str.49
	.quad	l_.str.51
	.quad	0
	.quad	1
	.quad	l_.str.52
	.quad	l_.str.53
	.quad	5
	.quad	1
	.quad	l_.str.54
	.quad	l_.str.51
	.quad	1
	.quad	1
	.quad	l_.str.55
	.quad	l_.str.56
	.quad	2
	.quad	1
	.quad	l_.str.55
	.quad	l_.str.56
	.quad	2
	.quad	1
	.quad	l_.str.57
	.quad	l_.str.58
	.quad	8
	.quad	0
	.quad	l_.str.57
	.quad	l_.str.59
	.quad	0
	.quad	1
	.quad	l_.str.60
	.quad	l_.str.59
	.quad	8
	.quad	0
	.quad	l_.str.60
	.quad	l_.str.61
	.quad	0
	.quad	1
	.quad	l_.str.62
	.quad	l_.str.63
	.quad	3
	.quad	1
	.quad	l_.str.64
	.quad	l_.str.63
	.quad	2
	.quad	1
	.quad	l_.str.65
	.quad	l_.str.63
	.quad	3
	.quad	1
	.quad	l_.str.22
	.quad	l_.str.66
	.quad	1
	.quad	1
	.quad	l_.str.67
	.quad	l_.str.68
	.quad	4
	.quad	1
	.quad	l_.str.69
	.quad	l_.str.70
	.quad	6
	.quad	1
	.quad	l_.str.71
	.quad	l_.str.70
	.quad	6
	.quad	1
	.quad	l_.str.72
	.quad	l_.str.73
	.quad	1
	.quad	1
	.quad	l_.str.74
	.quad	l_.str.73
	.quad	1
	.quad	0
	.quad	l_.str.75
	.quad	l_.str.76
	.quad	0
	.quad	1
	.quad	l_.str.77
	.quad	l_.str.76
	.quad	1
	.quad	1
	.quad	l_.str.78
	.quad	l_.str.78
	.quad	2
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.80
	.quad	0
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.81
	.quad	0
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.82
	.quad	0
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.83
	.quad	0
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.84
	.quad	0
	.quad	0
	.quad	l_.str.79
	.quad	l_.str.85
	.quad	0
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.87
	.quad	5
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.88
	.quad	6
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.89
	.quad	5
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.90
	.quad	6
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.91
	.quad	7
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.92
	.quad	6
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.93
	.quad	6
	.quad	1
	.quad	l_.str.86
	.quad	l_.str.94
	.quad	7
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.96
	.quad	12
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.97
	.quad	12
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.98
	.quad	12
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.99
	.quad	11
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.100
	.quad	13
	.quad	1
	.quad	l_.str.95
	.quad	l_.str.101
	.quad	15
	.quad	0
	.quad	l_.str.86
	.quad	l_.str.102
	.quad	0
	.quad	1
	.quad	l_.str.103
	.quad	l_.str.104
	.quad	4
	.quad	0
	.quad	l_.str.103
	.quad	l_.str.105
	.quad	0
	.quad	0
	.quad	l_.str.106
	.quad	l_.str.107
	.quad	0
	.quad	1
	.quad	l_.str.108
	.quad	l_.str.109
	.quad	14
	.quad	1
	.quad	l_.str.110
	.quad	l_.str.111
	.quad	14

	.section	__TEXT,__cstring,cstring_literals
l_.str.112:                             ; @.str.112
	.asciz	"[%lu/%lu]: pattern '%s' matched '%s' unexpectedly, matched %i chars. \n"

l_.str.113:                             ; @.str.113
	.asciz	"[%lu/%lu]: pattern '%s' didn't match '%s' as expected. \n"

l_.str.114:                             ; @.str.114
	.asciz	"[%lu/%lu]: pattern '%s' matched '%i' chars of '%s'; expected '%i'. \n"

l_.str.115:                             ; @.str.115
	.asciz	"%lu/%lu tests succeeded.\n"

.subsections_via_symbols
