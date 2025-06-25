	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_printTree                      ; -- Begin function printTree
	.p2align	2
_printTree:                             ; @printTree
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
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
	cbz	x0, LBB0_8
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	ldp	x9, x8, [x0, #16]
	ldrsh	x10, [x0, #32]
	ldr	w9, [x9]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	cmp	x19, #1
	b.lt	LBB0_4
; %bb.2:
Lloh2:
	adrp	x21, l_.str.1@PAGE
Lloh3:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	x22, x19
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	_libmin_printf
	subs	x22, x22, #1
	b.ne	LBB0_3
LBB0_4:
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	ldr	x0, [x20]
	add	x21, x19, #1
	mov	x1, x21
	bl	_printTree
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	cmp	x19, #1
	b.lt	LBB0_7
; %bb.5:
Lloh8:
	adrp	x22, l_.str.1@PAGE
Lloh9:
	add	x22, x22, l_.str.1@PAGEOFF
	mov	x23, x19
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x22
	bl	_libmin_printf
	subs	x23, x23, #1
	b.ne	LBB0_6
LBB0_7:
Lloh10:
	adrp	x0, l_.str.4@PAGE
Lloh11:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	x0, [x20, #8]
	mov	x1, x21
	bl	_printTree
	cbz	x19, LBB0_9
LBB0_8:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB0_9:
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	b	_libmin_printf
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_breadth                        ; -- Begin function breadth
	.p2align	2
_breadth:                               ; @breadth
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB1_7
; %bb.1:
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
	mov	x19, x0
	mov	x20, #0                         ; =0x0
	mov	w21, #1                         ; =0x1
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	bl	_breadth
	ldr	x19, [x19, #8]
	add	x20, x0, x20
	cbz	x19, LBB1_5
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x19]
	cbnz	x0, LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	ldr	x8, [x19, #8]
	cbnz	x8, LBB1_2
	b	LBB1_6
LBB1_5:
	mov	x21, #0                         ; =0x0
LBB1_6:
	add	x0, x21, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
LBB1_7:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
Lloh14:
	adrp	x0, l_.str.5@PAGE
Lloh15:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	mov	x27, #0                         ; =0x0
	mov	x26, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
Lloh16:
	adrp	x20, l_.str.6@PAGE
Lloh17:
	add	x20, x20, l_.str.6@PAGEOFF
Lloh18:
	adrp	x21, l_.str.7@PAGE
Lloh19:
	add	x21, x21, l_.str.7@PAGEOFF
Lloh20:
	adrp	x22, l_.str.8@PAGE
Lloh21:
	add	x22, x22, l_.str.8@PAGEOFF
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	mov	x0, x22
	bl	_libmin_printf
	add	x26, x26, #1
	cmp	x26, #25
	b.eq	LBB2_6
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
	mov	x24, x19
	mov	w0, #8                          ; =0x8
	bl	_libmin_malloc
	mov	x23, x0
	mov	w0, #11                         ; =0xb
	bl	_libmin_malloc
	mov	x25, x0
	str	x26, [sp]
	mov	w1, #11                         ; =0xb
	mov	x2, x20
	bl	_libmin_snprintf
	mov	x8, x27
LBB2_3:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x27, x8
	bl	_libmin_rand
	str	w0, [x23]
	mov	x0, x24
	mov	x1, x23
	mov	x2, x25
	bl	_Insert
	mov	x19, x0
	cbnz	x0, LBB2_1
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=2
	ldrsw	x8, [x23]
	cmp	x27, x8
	b.ne	LBB2_3
; %bb.5:                                ;   in Loop: Header=BB2_2 Depth=1
	mov	x0, x25
	bl	_libmin_free
	mov	x0, x23
	bl	_libmin_free
	ldr	w8, [x23]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	b	LBB2_1
LBB2_6:
Lloh22:
	adrp	x0, l_.str.3@PAGE
Lloh23:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	ldr	x8, [x19, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh24:
	adrp	x0, l_.str.9@PAGE
Lloh25:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x19, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_8
; %bb.7:
	mov	x20, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh26:
	adrp	x0, l_.str.11@PAGE
Lloh27:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	mov	x19, x20
	b	LBB2_9
LBB2_8:
Lloh28:
	adrp	x0, l_.str.10@PAGE
Lloh29:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_9:
Lloh30:
	adrp	x0, l_.str.12@PAGE
Lloh31:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
	mov	x8, x19
LBB2_10:                                ; =>This Inner Loop Header: Depth=1
	mov	x20, x8
	ldr	x8, [x8]
	cbnz	x8, LBB2_10
; %bb.11:
	ldr	x8, [x20, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh32:
	adrp	x0, l_.str.13@PAGE
Lloh33:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x20, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_13
; %bb.12:
	mov	x20, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh34:
	adrp	x0, l_.str.14@PAGE
Lloh35:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	x19, x20
	b	LBB2_14
LBB2_13:
Lloh36:
	adrp	x0, l_.str.10@PAGE
Lloh37:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_14:
Lloh38:
	adrp	x0, l_.str.15@PAGE
Lloh39:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_libmin_printf
	mov	x8, x19
LBB2_15:                                ; =>This Inner Loop Header: Depth=1
	cbz	x8, LBB2_20
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	mov	x20, x8
	ldr	x8, [x8, #8]
	cbnz	x8, LBB2_15
; %bb.17:
	ldr	x8, [x20, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh40:
	adrp	x0, l_.str.13@PAGE
Lloh41:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x20, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_19
; %bb.18:
	mov	x20, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh42:
	adrp	x0, l_.str.14@PAGE
Lloh43:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	x19, x20
	b	LBB2_20
LBB2_19:
Lloh44:
	adrp	x0, l_.str.10@PAGE
Lloh45:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_20:
Lloh46:
	adrp	x21, l_.str.3@PAGE
Lloh47:
	add	x21, x21, l_.str.3@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
	mov	x0, x19
	mov	x1, #0                          ; =0x0
	bl	_printTree
	ldr	x0, [x19]
	bl	_breadth
	mov	x20, x0
	ldr	x0, [x19, #8]
	bl	_breadth
	stp	x20, x0, [sp]
Lloh48:
	adrp	x0, l_.str.16@PAGE
Lloh49:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
	ldr	x0, [x19]
	bl	_Height
	mov	x20, x0
	ldr	x0, [x19, #8]
	bl	_Height
	stp	x20, x0, [sp]
Lloh50:
	adrp	x0, l_.str.17@PAGE
Lloh51:
	add	x0, x0, l_.str.17@PAGEOFF
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	bl	_libmin_rand
	mov	w8, w0
	sdiv	x9, x8, x20
	msub	x21, x9, x20, x8
	stp	x20, x21, [sp]
Lloh52:
	adrp	x0, l_.str.18@PAGE
Lloh53:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
	add	x22, x21, #1
	mov	w23, #1073741823                ; =0x3fffffff
	mov	x21, x19
	b	LBB2_24
LBB2_21:                                ;   in Loop: Header=BB2_24 Depth=1
	cbz	x8, LBB2_27
LBB2_22:                                ;   in Loop: Header=BB2_24 Depth=1
	mov	x21, x24
LBB2_23:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	x21, [x21]
	sub	x22, x22, #1
	cmp	x22, #1
	b.le	LBB2_27
LBB2_24:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x21]
	mov	x24, x21
	ldr	x8, [x24, #8]!
	cbz	x9, LBB2_21
; %bb.25:                               ;   in Loop: Header=BB2_24 Depth=1
	cbz	x8, LBB2_23
; %bb.26:                               ;   in Loop: Header=BB2_24 Depth=1
	bl	_libmin_rand
	cmp	w0, w23
	b.hs	LBB2_22
	b	LBB2_23
LBB2_27:
	ldp	x9, x8, [x21, #16]
	ldr	w9, [x9]
	stp	x8, x9, [sp]
Lloh54:
	adrp	x0, l_.str.19@PAGE
Lloh55:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x21, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_29
; %bb.28:
	mov	x21, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh56:
	adrp	x0, l_.str.14@PAGE
Lloh57:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	x19, x21
	b	LBB2_30
LBB2_29:
Lloh58:
	adrp	x0, l_.str.10@PAGE
Lloh59:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_30:
	scvtf	d0, x20
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16355, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	fcvtzs	w21, d0
	sxtw	x20, w21
Lloh60:
	adrp	x0, l_.str.3@PAGE
Lloh61:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_rand
	mov	w8, w0
	sdiv	x9, x8, x20
	msub	x22, x9, x20, x8
	stp	x20, x22, [sp]
Lloh62:
	adrp	x0, l_.str.18@PAGE
Lloh63:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
	add	x22, x22, #1
	mov	w23, #1073741822                ; =0x3ffffffe
	mov	x20, x19
	b	LBB2_34
LBB2_31:                                ;   in Loop: Header=BB2_34 Depth=1
	cbz	x8, LBB2_37
LBB2_32:                                ;   in Loop: Header=BB2_34 Depth=1
	mov	x20, x24
LBB2_33:                                ;   in Loop: Header=BB2_34 Depth=1
	ldr	x20, [x20]
	sub	x22, x22, #1
	cmp	x22, #1
	b.le	LBB2_37
LBB2_34:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x20]
	mov	x24, x20
	ldr	x8, [x24, #8]!
	cbz	x9, LBB2_31
; %bb.35:                               ;   in Loop: Header=BB2_34 Depth=1
	cbz	x8, LBB2_33
; %bb.36:                               ;   in Loop: Header=BB2_34 Depth=1
	bl	_libmin_rand
	cmp	w0, w23
	b.hi	LBB2_32
	b	LBB2_33
LBB2_37:
	ldp	x9, x8, [x20, #16]
	ldr	w9, [x9]
	stp	x8, x9, [sp]
Lloh64:
	adrp	x0, l_.str.19@PAGE
Lloh65:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x20, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_39
; %bb.38:
	mov	x20, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh66:
	adrp	x0, l_.str.14@PAGE
Lloh67:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	x19, x20
	b	LBB2_40
LBB2_39:
Lloh68:
	adrp	x0, l_.str.10@PAGE
Lloh69:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_40:
	scvtf	d0, w21
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16355, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	sxtw	x20, w8
Lloh70:
	adrp	x0, l_.str.3@PAGE
Lloh71:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_rand
	mov	w8, w0
	sdiv	x9, x8, x20
	msub	x21, x9, x20, x8
	stp	x20, x21, [sp]
Lloh72:
	adrp	x0, l_.str.18@PAGE
Lloh73:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
	add	x21, x21, #1
	mov	w22, #1073741822                ; =0x3ffffffe
	mov	x20, x19
	b	LBB2_44
LBB2_41:                                ;   in Loop: Header=BB2_44 Depth=1
	cbz	x8, LBB2_47
LBB2_42:                                ;   in Loop: Header=BB2_44 Depth=1
	mov	x20, x23
LBB2_43:                                ;   in Loop: Header=BB2_44 Depth=1
	ldr	x20, [x20]
	sub	x21, x21, #1
	cmp	x21, #1
	b.le	LBB2_47
LBB2_44:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x20]
	mov	x23, x20
	ldr	x8, [x23, #8]!
	cbz	x9, LBB2_41
; %bb.45:                               ;   in Loop: Header=BB2_44 Depth=1
	cbz	x8, LBB2_43
; %bb.46:                               ;   in Loop: Header=BB2_44 Depth=1
	bl	_libmin_rand
	cmp	w0, w22
	b.hi	LBB2_42
	b	LBB2_43
LBB2_47:
	ldp	x9, x8, [x20, #16]
	ldr	w9, [x9]
	stp	x8, x9, [sp]
Lloh74:
	adrp	x0, l_.str.19@PAGE
Lloh75:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_libmin_printf
	ldr	x1, [x20, #16]
	mov	x0, x19
	bl	_DeleteByElement
	cbz	x0, LBB2_49
; %bb.48:
	mov	x20, x0
	ldr	x8, [x0, #16]
	ldr	w8, [x8]
	str	x8, [sp]
Lloh76:
	adrp	x0, l_.str.14@PAGE
Lloh77:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	x19, x20
	b	LBB2_50
LBB2_49:
Lloh78:
	adrp	x0, l_.str.10@PAGE
Lloh79:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
LBB2_50:
	mov	x0, x19
	bl	_MakeEmpty
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh78, Lloh79
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s -> %ld, Balance %d\n"

l_.str.1:                               ; @.str.1
	.asciz	" "

l_.str.2:                               ; @.str.2
	.asciz	"Left: "

l_.str.3:                               ; @.str.3
	.asciz	"\n"

l_.str.4:                               ; @.str.4
	.asciz	"Right: "

l_.str.5:                               ; @.str.5
	.asciz	"Start  -->  Finished\n"

l_.str.6:                               ; @.str.6
	.asciz	"Name%ld"

l_.str.7:                               ; @.str.7
	.asciz	"going to try and skip: %ld\n"

l_.str.8:                               ; @.str.8
	.asciz	"."

l_.str.9:                               ; @.str.9
	.asciz	"\nGoing to delete the rootNode: %ld\n"

l_.str.10:                              ; @.str.10
	.asciz	"failure!\n"

l_.str.11:                              ; @.str.11
	.asciz	"success! new root is %ld\n"

l_.str.12:                              ; @.str.12
	.asciz	"\nGoing to delete leftMost child... "

l_.str.13:                              ; @.str.13
	.asciz	"found item: %ld\n"

l_.str.14:                              ; @.str.14
	.asciz	"success! new root: %ld\n"

l_.str.15:                              ; @.str.15
	.asciz	"\nGoing to delete rightMost child... "

l_.str.16:                              ; @.str.16
	.asciz	"breadth of left tree: %ld right subtree: %ld\n"

l_.str.17:                              ; @.str.17
	.asciz	"height of left subtree: %ld right subtree: %ld\n"

l_.str.18:                              ; @.str.18
	.asciz	"Going to delete a node at depth (max depth %ld): %ld\n"

l_.str.19:                              ; @.str.19
	.asciz	"Found a node to delete with Name '%s' and Item %ld\n"

.subsections_via_symbols
