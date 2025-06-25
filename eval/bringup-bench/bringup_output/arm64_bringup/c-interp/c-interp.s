	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_next                           ; -- Begin function next
	.p2align	2
_next:                                  ; @next
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	adrp	x25, _src@GOTPAGE
Lloh1:
	ldr	x25, [x25, _src@GOTPAGEOFF]
	ldr	x19, [x25]
	ldrsb	x26, [x19]
Lloh2:
	adrp	x24, _token@GOTPAGE
Lloh3:
	ldr	x24, [x24, _token@GOTPAGEOFF]
	str	x26, [x24]
	cbz	x26, LBB0_91
; %bb.1:
	and	w11, w26, #0xff
Lloh4:
	adrp	x12, _line@GOTPAGE
Lloh5:
	ldr	x12, [x12, _line@GOTPAGEOFF]
Lloh6:
	adrp	x27, _old_text@GOTPAGE
Lloh7:
	ldr	x27, [x27, _old_text@GOTPAGEOFF]
Lloh8:
	adrp	x20, l_.str.3@PAGE
Lloh9:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh10:
	adrp	x28, _text@GOTPAGE
Lloh11:
	ldr	x28, [x28, _text@GOTPAGEOFF]
Lloh12:
	adrp	x21, l_.str.2@PAGE
Lloh13:
	add	x21, x21, l_.str.2@PAGEOFF
Lloh14:
	adrp	x22, l_.str.4@PAGE
Lloh15:
	add	x22, x22, l_.str.4@PAGEOFF
Lloh16:
	adrp	x23, l_.str.5@PAGE
Lloh17:
	add	x23, x23, l_.str.5@PAGEOFF
	b	LBB0_6
LBB0_2:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [x25]
	mov	x12, x19
LBB0_3:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldr	x9, [x12]
	add	x9, x9, #1
	str	x9, [x12]
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	ldrb	w11, [x8]
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	sxtb	x26, w11
	str	x26, [x24]
	mov	x19, x8
	cbz	w11, LBB0_91
LBB0_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_24 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
	add	x8, x19, #1
	str	x8, [x25]
	cmp	x26, #10
	b.eq	LBB0_10
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	cmp	x26, #35
	b.ne	LBB0_16
LBB0_8:                                 ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x8]
	cmp	w11, #0
	ccmp	w11, #10, #4, ne
	b.eq	LBB0_5
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	add	x8, x8, #1
	str	x8, [x25]
	b	LBB0_8
LBB0_10:                                ;   in Loop: Header=BB0_6 Depth=1
Lloh18:
	adrp	x9, _assembly@GOTPAGE
Lloh19:
	ldr	x9, [x9, _assembly@GOTPAGEOFF]
Lloh20:
	ldr	x9, [x9]
	cbz	x9, LBB0_3
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	ldr	x9, [x12]
Lloh21:
	adrp	x26, _old_src@GOTPAGE
Lloh22:
	ldr	x26, [x26, _old_src@GOTPAGEOFF]
	ldr	x10, [x26]
	sub	x8, x8, x10
	stp	x8, x10, [sp, #8]
	str	x9, [sp]
Lloh23:
	adrp	x0, l_.str.1@PAGE
Lloh24:
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x19, x12
	bl	_libmin_printf
	mov	x12, x19
	ldr	x8, [x25]
	str	x8, [x26]
	ldr	x9, [x27]
	ldr	x10, [x28]
	cmp	x9, x10
	b.lo	LBB0_14
	b	LBB0_3
LBB0_12:                                ;   in Loop: Header=BB0_14 Depth=2
	mov	x0, x23
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=2
	bl	_libmin_printf
	ldr	x9, [x27]
	ldr	x8, [x28]
	cmp	x9, x8
	b.hs	LBB0_2
LBB0_14:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x9, #8]!
	str	x9, [x27]
	add	x8, x8, x8, lsl #2
	add	x8, x20, x8
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldr	x8, [x27]
	ldr	x9, [x8]
	cmp	x9, #7
	b.gt	LBB0_12
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=2
	ldr	x9, [x8, #8]!
	str	x8, [x27]
	str	x9, [sp]
	mov	x0, x22
	b	LBB0_13
LBB0_16:                                ;   in Loop: Header=BB0_6 Depth=1
	sub	x9, x26, #97
	cmp	x9, #26
	b.lo	LBB0_27
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	and	w9, w11, #0xff
	cmp	w9, #95
	b.eq	LBB0_27
; %bb.18:                               ;   in Loop: Header=BB0_6 Depth=1
	sub	x9, x26, #65
	cmp	x9, #25
	b.ls	LBB0_27
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	sub	x9, x26, #48
	cmp	x9, #9
	b.ls	LBB0_37
; %bb.20:                               ;   in Loop: Header=BB0_6 Depth=1
	sub	x9, x26, #33
	cmp	x9, #93
	b.hi	LBB0_4
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
Lloh25:
	adrp	x13, lJTI0_0@PAGE
Lloh26:
	add	x13, x13, lJTI0_0@PAGEOFF
	adr	x10, LBB0_4
	ldrh	w11, [x13, x9, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
LBB0_22:                                ;   in Loop: Header=BB0_6 Depth=1
	ldrb	w8, [x8]
	cmp	w8, #47
	b.ne	LBB0_80
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	add	x8, x19, #2
	mov	w9, #47                         ; =0x2f
	ands	w9, w9, #0xff
	b.eq	LBB0_26
LBB0_24:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w9, #10
	b.eq	LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_24 Depth=2
	str	x8, [x25]
	ldrb	w9, [x8], #1
	ands	w9, w9, #0xff
	b.ne	LBB0_24
LBB0_26:                                ;   in Loop: Header=BB0_6 Depth=1
	sub	x8, x8, #1
	b	LBB0_4
LBB0_27:
	add	x8, x19, #2
	mov	w9, #147                        ; =0x93
	b	LBB0_29
LBB0_28:                                ;   in Loop: Header=BB0_29 Depth=1
	madd	x26, x26, x9, x10
	str	x8, [x25]
	add	x8, x8, #1
LBB0_29:                                ; =>This Inner Loop Header: Depth=1
	ldurb	w10, [x8, #-1]
	and	w11, w10, #0xffffffdf
	sub	w11, w11, #65
	cmp	w11, #26
	b.lo	LBB0_28
; %bb.30:                               ;   in Loop: Header=BB0_29 Depth=1
	sub	w11, w10, #48
	cmp	w10, #95
	ccmp	w11, #9, #0, ne
	b.ls	LBB0_28
; %bb.31:
Lloh27:
	adrp	x8, _symbols@GOTPAGE
Lloh28:
	ldr	x8, [x8, _symbols@GOTPAGEOFF]
Lloh29:
	ldr	x8, [x8]
Lloh30:
	adrp	x20, _current_id@GOTPAGE
Lloh31:
	ldr	x20, [x20, _current_id@GOTPAGEOFF]
	str	x8, [x20]
	ldr	x9, [x8]
	cbnz	x9, LBB0_34
LBB0_32:
	stp	x26, x19, [x8, #8]
	mov	w9, #133                        ; =0x85
	str	x9, [x8]
	str	x9, [x24]
	b	LBB0_91
LBB0_33:                                ;   in Loop: Header=BB0_34 Depth=1
	ldr	x9, [x8, #72]!
	str	x8, [x20]
	cbz	x9, LBB0_32
LBB0_34:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x8, #8]
	cmp	x9, x26
	b.ne	LBB0_33
; %bb.35:                               ;   in Loop: Header=BB0_34 Depth=1
	ldr	x0, [x8, #16]
	ldr	x8, [x25]
	sub	x2, x8, x19
	mov	x1, x19
	bl	_libmin_memcmp
	ldr	x8, [x20]
	cbnz	w0, LBB0_33
; %bb.36:
	ldr	x8, [x8]
	b	LBB0_90
LBB0_37:
Lloh32:
	adrp	x10, _token_val@GOTPAGE
Lloh33:
	ldr	x10, [x10, _token_val@GOTPAGEOFF]
	str	x9, [x10]
	and	w11, w11, #0xff
	ldrb	w8, [x8]
	cmp	w11, #49
	b.lo	LBB0_52
; %bb.38:
	sub	w8, w8, #48
	cmp	w8, #9
	b.hi	LBB0_89
; %bb.39:
	add	x8, x19, #2
	mov	w11, #10                        ; =0xa
LBB0_40:                                ; =>This Inner Loop Header: Depth=1
	str	x8, [x25]
	ldursb	x12, [x8, #-1]
	madd	x9, x9, x11, x12
	sub	x9, x9, #48
	str	x9, [x10]
	ldrb	w12, [x8], #1
	sub	w12, w12, #48
	cmp	w12, #10
	b.lo	LBB0_40
	b	LBB0_89
LBB0_41:
Lloh34:
	adrp	x10, _data@GOTPAGE
Lloh35:
	ldr	x10, [x10, _data@GOTPAGEOFF]
	ldr	x9, [x10]
	ldrsb	x11, [x8]
	cbz	x11, LBB0_50
; %bb.42:
	cmp	x26, x11
	b.eq	LBB0_50
; %bb.43:
Lloh36:
	adrp	x11, _token_val@GOTPAGE
Lloh37:
	ldr	x11, [x11, _token_val@GOTPAGEOFF]
	mov	w12, #10                        ; =0xa
	b	LBB0_45
LBB0_44:                                ;   in Loop: Header=BB0_45 Depth=1
	ldrsb	x13, [x8]
	cmp	x13, #0
	ccmp	x26, x13, #4, ne
	b.eq	LBB0_50
LBB0_45:                                ; =>This Inner Loop Header: Depth=1
	add	x14, x8, #1
	str	x14, [x25]
	ldrsb	x13, [x8]
	str	x13, [x11]
	cmp	x13, #92
	b.ne	LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_45 Depth=1
	add	x14, x8, #2
	str	x14, [x25]
	ldrb	w8, [x8, #1]
	cmp	w8, #110
	csel	w13, w12, w8, eq
	sxtb	x8, w13
	str	x8, [x11]
	b	LBB0_48
LBB0_47:                                ;   in Loop: Header=BB0_45 Depth=1
	and	w13, w13, #0xff
LBB0_48:                                ;   in Loop: Header=BB0_45 Depth=1
	mov	x8, x14
	cmp	x26, #34
	b.ne	LBB0_44
; %bb.49:                               ;   in Loop: Header=BB0_45 Depth=1
	ldr	x8, [x10]
	add	x14, x8, #1
	str	x14, [x10]
	strb	w13, [x8]
	ldr	x8, [x25]
	ldr	x26, [x24]
	b	LBB0_44
LBB0_50:
	add	x8, x8, #1
	str	x8, [x25]
	cmp	x26, #34
	b.ne	LBB0_89
; %bb.51:
Lloh38:
	adrp	x8, _token_val@GOTPAGE
Lloh39:
	ldr	x8, [x8, _token_val@GOTPAGEOFF]
Lloh40:
	str	x9, [x8]
	b	LBB0_91
LBB0_52:
	orr	w11, w8, #0x20
	cmp	w11, #120
	b.ne	LBB0_86
; %bb.53:
	add	x8, x19, #2
	mov	w11, #9                         ; =0x9
	mov	w12, #1                         ; =0x1
	b	LBB0_55
LBB0_54:                                ;   in Loop: Header=BB0_55 Depth=1
	and	x14, x13, #0xf
	cmp	w13, #64
	csel	x13, x11, xzr, hi
	add	x13, x13, x14
	add	x9, x13, x9, lsl #4
	str	x9, [x10]
LBB0_55:                                ; =>This Inner Loop Header: Depth=1
	str	x8, [x25]
	ldrb	w14, [x8], #1
	sxtb	x13, w14
	str	x13, [x24]
	sub	w14, w14, #48
	and	w14, w14, #0xff
	cmp	w14, #10
	b.lo	LBB0_54
; %bb.56:                               ;   in Loop: Header=BB0_55 Depth=1
	and	w14, w13, #0xff
	sub	w14, w14, #65
	cmp	w14, #37
	lsl	x14, x12, x14
	and	x14, x14, #0x3f0000003f
	ccmp	x14, #0, #4, ls
	b.ne	LBB0_54
	b	LBB0_89
LBB0_57:
	ldrb	w8, [x8]
	cmp	w8, #61
	b.ne	LBB0_91
; %bb.58:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #150                        ; =0x96
	b	LBB0_90
LBB0_59:
	mov	w8, #161                        ; =0xa1
	b	LBB0_90
LBB0_60:
	ldrb	w8, [x8]
	cmp	w8, #38
	b.ne	LBB0_81
; %bb.61:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #145                        ; =0x91
	b	LBB0_90
LBB0_62:
	mov	w8, #159                        ; =0x9f
	b	LBB0_90
LBB0_63:
	ldrb	w8, [x8]
	cmp	w8, #43
	b.ne	LBB0_82
; %bb.64:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #162                        ; =0xa2
	b	LBB0_90
LBB0_65:
	ldrb	w8, [x8]
	cmp	w8, #45
	b.ne	LBB0_83
; %bb.66:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #163                        ; =0xa3
	b	LBB0_90
LBB0_67:
	ldrb	w8, [x8]
	cmp	w8, #60
	b.eq	LBB0_92
; %bb.68:
	cmp	w8, #61
	b.ne	LBB0_93
; %bb.69:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #153                        ; =0x99
	b	LBB0_90
LBB0_70:
	ldrb	w8, [x8]
	cmp	w8, #61
	b.ne	LBB0_84
; %bb.71:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #149                        ; =0x95
	b	LBB0_90
LBB0_72:
	ldrb	w8, [x8]
	cmp	w8, #62
	b.eq	LBB0_94
; %bb.73:
	cmp	w8, #61
	b.ne	LBB0_95
; %bb.74:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #154                        ; =0x9a
	b	LBB0_90
LBB0_75:
	mov	w8, #143                        ; =0x8f
	b	LBB0_90
LBB0_76:
	mov	w8, #164                        ; =0xa4
	b	LBB0_90
LBB0_77:
	mov	w8, #147                        ; =0x93
	b	LBB0_90
LBB0_78:
	ldrb	w8, [x8]
	cmp	w8, #124
	b.ne	LBB0_85
; %bb.79:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #144                        ; =0x90
	b	LBB0_90
LBB0_80:
	mov	w8, #160                        ; =0xa0
	b	LBB0_90
LBB0_81:
	mov	w8, #148                        ; =0x94
	b	LBB0_90
LBB0_82:
	mov	w8, #157                        ; =0x9d
	b	LBB0_90
LBB0_83:
	mov	w8, #158                        ; =0x9e
	b	LBB0_90
LBB0_84:
	mov	w8, #142                        ; =0x8e
	b	LBB0_90
LBB0_85:
	mov	w8, #146                        ; =0x92
	b	LBB0_90
LBB0_86:
	and	w8, w8, #0xf8
	cmp	w8, #48
	b.ne	LBB0_89
; %bb.87:
	add	x8, x19, #2
LBB0_88:                                ; =>This Inner Loop Header: Depth=1
	str	x8, [x25]
	ldursb	x11, [x8, #-1]
	add	x9, x11, x9, lsl #3
	sub	x9, x9, #48
	str	x9, [x10]
	ldrb	w11, [x8], #1
	and	w11, w11, #0xf8
	cmp	w11, #48
	b.eq	LBB0_88
LBB0_89:
	mov	w8, #128                        ; =0x80
LBB0_90:
	str	x8, [x24]
LBB0_91:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB0_92:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #155                        ; =0x9b
	b	LBB0_90
LBB0_93:
	mov	w8, #151                        ; =0x97
	b	LBB0_90
LBB0_94:
	add	x8, x19, #2
	str	x8, [x25]
	mov	w8, #156                        ; =0x9c
	b	LBB0_90
LBB0_95:
	mov	w8, #152                        ; =0x98
	b	LBB0_90
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh18, Lloh19, Lloh20
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpLdrGotLdr	Lloh27, Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpLdrGotStr	Lloh38, Lloh39, Lloh40
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	1, 0x0
lJTI0_0:
	.short	(LBB0_57-LBB0_4)>>2
	.short	(LBB0_41-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_59-LBB0_4)>>2
	.short	(LBB0_60-LBB0_4)>>2
	.short	(LBB0_41-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_62-LBB0_4)>>2
	.short	(LBB0_63-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_65-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_22-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_67-LBB0_4)>>2
	.short	(LBB0_70-LBB0_4)>>2
	.short	(LBB0_72-LBB0_4)>>2
	.short	(LBB0_75-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_76-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_77-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_4-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_78-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
	.short	(LBB0_91-LBB0_4)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_match                          ; -- Begin function match
	.p2align	2
_match:                                 ; @match
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh41:
	adrp	x8, _token@GOTPAGE
Lloh42:
	ldr	x8, [x8, _token@GOTPAGEOFF]
Lloh43:
	ldr	x8, [x8]
	cmp	x8, x0
	b.ne	LBB1_2
; %bb.1:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	b	_next
LBB1_2:
Lloh44:
	adrp	x8, _line@GOTPAGE
Lloh45:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh46:
	ldr	x8, [x8]
	stp	x8, x0, [sp]
Lloh47:
	adrp	x0, l_.str.6@PAGE
Lloh48:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	b	_libmin_fail
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGotLdr	Lloh44, Lloh45, Lloh46
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function expression
lCPI2_0:
	.quad	-1                              ; 0xffffffffffffffff
	.quad	13                              ; 0xd
lCPI2_1:
	.quad	13                              ; 0xd
	.quad	1                               ; 0x1
lCPI2_2:
	.quad	-1                              ; 0xffffffffffffffff
	.quad	15                              ; 0xf
lCPI2_3:
	.quad	0                               ; 0x0
	.quad	17                              ; 0x11
lCPI2_4:
	.quad	13                              ; 0xd
	.quad	9                               ; 0x9
lCPI2_5:
	.quad	13                              ; 0xd
	.quad	10                              ; 0xa
lCPI2_6:
	.quad	8                               ; 0x8
	.quad	27                              ; 0x1b
lCPI2_7:
	.quad	26                              ; 0x1a
	.quad	13                              ; 0xd
lCPI2_8:
	.quad	1                               ; 0x1
	.quad	8                               ; 0x8
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_expression
	.p2align	2
_expression:                            ; @expression
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
	mov	x19, x0
Lloh49:
	adrp	x26, _token@GOTPAGE
Lloh50:
	ldr	x26, [x26, _token@GOTPAGEOFF]
	ldr	x20, [x26]
	cbz	x20, LBB2_5
; %bb.1:
	cmp	x20, #125
	b.le	LBB2_6
LBB2_2:
	sub	x8, x20, #126
	cmp	x8, #33
	b.hi	LBB2_35
; %bb.3:
Lloh51:
	adrp	x9, lJTI2_0@PAGE
Lloh52:
	add	x9, x9, lJTI2_0@PAGEOFF
	adr	x10, LBB2_4
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB2_4:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh53:
	adrp	x8, _text@GOTPAGE
Lloh54:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
Lloh55:
	adrp	x10, lCPI2_1@PAGE
Lloh56:
	ldr	q0, [x10, lCPI2_1@PAGEOFF]
	stur	q0, [x9, #8]
	add	x10, x9, #32
	str	x10, [x8]
Lloh57:
	adrp	x8, lCPI2_2@PAGE
Lloh58:
	ldr	q0, [x8, lCPI2_2@PAGEOFF]
	stur	q0, [x9, #24]
	b	LBB2_48
LBB2_5:
Lloh59:
	adrp	x8, _line@GOTPAGE
Lloh60:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh61:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh62:
	adrp	x0, l_.str.7@PAGE
Lloh63:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	ldr	x20, [x26]
	cmp	x20, #125
	b.gt	LBB2_2
LBB2_6:
	cmp	x20, #33
	b.eq	LBB2_31
; %bb.7:
	cmp	x20, #34
	b.eq	LBB2_32
; %bb.8:
	cmp	x20, #40
	b.ne	LBB2_35
; %bb.9:
	bl	_next
	ldr	x8, [x26]
	cmp	x8, #138
	b.eq	LBB2_11
; %bb.10:
	cmp	x8, #134
	b.ne	LBB2_117
LBB2_11:
	cmp	x8, #134
	cset	w20, ne
	bl	_next
LBB2_12:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x26]
	cmp	x8, #159
	b.ne	LBB2_39
; %bb.13:                               ;   in Loop: Header=BB2_12 Depth=1
	bl	_next
	add	x20, x20, #2
	b	LBB2_12
LBB2_14:
	bl	_next
Lloh64:
	adrp	x8, _current_id@GOTPAGE
Lloh65:
	ldr	x8, [x8, _current_id@GOTPAGEOFF]
Lloh66:
	ldr	x20, [x8]
	ldr	x8, [x26]
	cmp	x8, #40
	b.ne	LBB2_41
; %bb.15:
	bl	_next
	ldr	x8, [x26]
	cmp	x8, #41
	b.ne	LBB2_128
; %bb.16:
	mov	x21, #0                         ; =0x0
LBB2_17:
	bl	_next
	ldr	x8, [x20, #32]
	cmp	x8, #129
	b.eq	LBB2_132
; %bb.18:
	cmp	x8, #130
	b.ne	LBB2_133
; %bb.19:
	ldr	x8, [x20, #40]
Lloh67:
	adrp	x9, _text@GOTPAGE
Lloh68:
	ldr	x9, [x9, _text@GOTPAGEOFF]
	ldr	x10, [x9]
	str	x8, [x10, #8]!
	str	x10, [x9]
	b	LBB2_134
LBB2_20:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh69:
	adrp	x8, _text@GOTPAGE
Lloh70:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	ldr	x10, [x9]
	sub	x10, x10, #9
	cmp	x10, #1
	b.hi	LBB2_45
; %bb.21:
	sub	x9, x9, #8
	str	x9, [x8]
	b	LBB2_46
LBB2_22:
	bl	_next
	ldr	x9, [x26]
Lloh71:
	adrp	x20, _text@GOTPAGE
Lloh72:
	ldr	x20, [x20, _text@GOTPAGEOFF]
	ldr	x8, [x20]
	mov	w10, #1                         ; =0x1
	str	x10, [x8, #8]
	cmp	x9, #128
	b.ne	LBB2_47
; %bb.23:
Lloh73:
	adrp	x9, _token_val@GOTPAGE
Lloh74:
	ldr	x9, [x9, _token_val@GOTPAGEOFF]
Lloh75:
	ldr	x9, [x9]
	neg	x9, x9
	str	x9, [x8, #16]!
	str	x8, [x20]
	bl	_next
	b	LBB2_48
LBB2_24:
	bl	_next
Lloh76:
	adrp	x8, _text@GOTPAGE
Lloh77:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
Lloh78:
	adrp	x10, _token_val@GOTPAGE
Lloh79:
	ldr	x10, [x10, _token_val@GOTPAGEOFF]
Lloh80:
	ldr	x10, [x10]
	str	x10, [x9, #16]!
	mov	w10, #1                         ; =0x1
	stur	x10, [x9, #-8]
LBB2_25:
	str	x9, [x8]
Lloh81:
	adrp	x8, _expr_type@GOTPAGE
Lloh82:
	ldr	x8, [x8, _expr_type@GOTPAGEOFF]
Lloh83:
	str	x10, [x8]
	b	LBB2_50
LBB2_26:
	bl	_next
	ldr	x8, [x26]
	cmp	x8, #40
	b.ne	LBB2_110
; %bb.27:
	bl	_next
	b	LBB2_111
LBB2_28:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
	b	LBB2_48
LBB2_29:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh84:
	adrp	x20, _expr_type@GOTPAGE
Lloh85:
	ldr	x20, [x20, _expr_type@GOTPAGEOFF]
	ldr	x8, [x20]
	subs	x8, x8, #2
	b.lt	LBB2_114
; %bb.30:
	str	x8, [x20]
	b	LBB2_115
LBB2_31:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh86:
	adrp	x8, _text@GOTPAGE
Lloh87:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
Lloh88:
	adrp	x10, lCPI2_1@PAGE
Lloh89:
	ldr	q0, [x10, lCPI2_1@PAGEOFF]
	stur	q0, [x9, #8]
	add	x10, x9, #32
	str	x10, [x8]
Lloh90:
	adrp	x8, lCPI2_3@PAGE
Lloh91:
	ldr	q0, [x8, lCPI2_3@PAGEOFF]
	stur	q0, [x9, #24]
	b	LBB2_48
LBB2_32:
Lloh92:
	adrp	x8, _text@GOTPAGE
Lloh93:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
Lloh94:
	adrp	x10, _token_val@GOTPAGE
Lloh95:
	ldr	x10, [x10, _token_val@GOTPAGEOFF]
Lloh96:
	ldr	x10, [x10]
	str	x10, [x9, #16]!
	mov	w10, #1                         ; =0x1
	stur	x10, [x9, #-8]
	str	x9, [x8]
LBB2_33:                                ; =>This Inner Loop Header: Depth=1
	bl	_next
	ldr	x8, [x26]
	cmp	x8, #34
	b.eq	LBB2_33
; %bb.34:
Lloh97:
	adrp	x8, _data@GOTPAGE
Lloh98:
	ldr	x8, [x8, _data@GOTPAGEOFF]
	ldr	x9, [x8]
	and	x9, x9, #0xfffffffffffffff8
	add	x9, x9, #8
	str	x9, [x8]
Lloh99:
	adrp	x8, _expr_type@GOTPAGE
Lloh100:
	ldr	x8, [x8, _expr_type@GOTPAGEOFF]
	mov	w9, #2                          ; =0x2
	b	LBB2_49
LBB2_35:
	and	x8, x20, #0xfffffffffffffffe
	cmp	x8, #162
	b.ne	LBB2_116
; %bb.36:
	bl	_next
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh101:
	adrp	x21, _text@GOTPAGE
Lloh102:
	ldr	x21, [x21, _text@GOTPAGEOFF]
	ldr	x8, [x21]
	ldr	x9, [x8]
	cmp	x9, #9
	b.eq	LBB2_139
; %bb.37:
	cmp	x9, #10
	b.ne	LBB2_140
; %bb.38:
Lloh103:
	adrp	x9, lCPI2_5@PAGE
Lloh104:
	ldr	q0, [x9, lCPI2_5@PAGEOFF]
	str	q0, [x8], #8
	b	LBB2_141
LBB2_39:
	cmp	x8, #41
	b.ne	LBB2_119
; %bb.40:
	bl	_next
	b	LBB2_120
LBB2_41:
	ldr	x8, [x20, #32]
	cmp	x8, #132
	b.eq	LBB2_142
; %bb.42:
	cmp	x8, #131
	b.eq	LBB2_143
; %bb.43:
	cmp	x8, #128
	b.ne	LBB2_144
; %bb.44:
Lloh105:
	adrp	x8, _text@GOTPAGE
Lloh106:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	mov	w10, #1                         ; =0x1
	str	x10, [x9, #8]
	ldr	x11, [x20, #40]
	str	x11, [x9, #16]!
	b	LBB2_25
LBB2_45:
Lloh107:
	adrp	x8, _line@GOTPAGE
Lloh108:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh109:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh110:
	adrp	x0, l_.str.11@PAGE
Lloh111:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_46:
Lloh112:
	adrp	x8, _expr_type@GOTPAGE
Lloh113:
	ldr	x8, [x8, _expr_type@GOTPAGEOFF]
	ldr	x9, [x8]
	add	x9, x9, #2
	b	LBB2_49
LBB2_47:
	add	x9, x8, #24
	str	x9, [x20]
Lloh114:
	adrp	x9, lCPI2_0@PAGE
Lloh115:
	ldr	q0, [x9, lCPI2_0@PAGEOFF]
	str	q0, [x8, #16]
	mov	w0, #162                        ; =0xa2
	bl	_expression
	ldr	x8, [x20]
	mov	w9, #27                         ; =0x1b
	str	x9, [x8, #8]!
	str	x8, [x20]
LBB2_48:
Lloh116:
	adrp	x8, _expr_type@GOTPAGE
Lloh117:
	ldr	x8, [x8, _expr_type@GOTPAGEOFF]
	mov	w9, #1                          ; =0x1
LBB2_49:
	str	x9, [x8]
LBB2_50:
	ldr	x8, [x26]
	cmp	x8, x19
	b.ge	LBB2_52
LBB2_51:
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB2_52:
Lloh118:
	adrp	x27, _expr_type@GOTPAGE
Lloh119:
	ldr	x27, [x27, _expr_type@GOTPAGEOFF]
Lloh120:
	adrp	x28, _text@GOTPAGE
Lloh121:
	ldr	x28, [x28, _text@GOTPAGEOFF]
	mov	w22, #25                        ; =0x19
	mov	w25, #11                        ; =0xb
Lloh122:
	adrp	x9, lCPI2_5@PAGE
Lloh123:
	ldr	q0, [x9, lCPI2_5@PAGEOFF]
	str	q0, [sp, #32]                   ; 16-byte Folded Spill
Lloh124:
	adrp	x9, lCPI2_1@PAGE
Lloh125:
	ldr	q0, [x9, lCPI2_1@PAGEOFF]
	str	q0, [sp, #96]                   ; 16-byte Folded Spill
	mov	w21, #13                        ; =0xd
Lloh126:
	adrp	x9, lCPI2_4@PAGE
Lloh127:
	ldr	q0, [x9, lCPI2_4@PAGEOFF]
	str	q0, [sp, #16]                   ; 16-byte Folded Spill
Lloh128:
	adrp	x9, lCPI2_6@PAGE
Lloh129:
	ldr	q0, [x9, lCPI2_6@PAGEOFF]
	str	q0, [sp, #80]                   ; 16-byte Folded Spill
Lloh130:
	adrp	x24, lJTI2_1@PAGE
Lloh131:
	add	x24, x24, lJTI2_1@PAGEOFF
	mov	w20, #1                         ; =0x1
Lloh132:
	adrp	x9, lCPI2_7@PAGE
Lloh133:
	ldr	q0, [x9, lCPI2_7@PAGEOFF]
	str	q0, [sp, #64]                   ; 16-byte Folded Spill
Lloh134:
	adrp	x9, lCPI2_8@PAGE
Lloh135:
	ldr	q0, [x9, lCPI2_8@PAGEOFF]
	str	q0, [sp, #48]                   ; 16-byte Folded Spill
	b	LBB2_57
LBB2_53:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x23, [x28]
	mov	w8, #5                          ; =0x5
	str	x8, [x23, #8]
	add	x8, x23, #16
	str	x8, [x28]
	mov	w0, #145                        ; =0x91
LBB2_54:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_expression
	ldr	x8, [x28]
	add	x8, x8, #8
	str	x8, [x23, #16]
LBB2_55:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x20, [x27]
LBB2_56:                                ;   in Loop: Header=BB2_57 Depth=1
	ldr	x8, [x26]
	cmp	x8, x19
	b.lt	LBB2_51
LBB2_57:                                ; =>This Inner Loop Header: Depth=1
	ldr	x23, [x27]
	sub	x9, x8, #142
	cmp	x9, #19
	b.hi	LBB2_61
; %bb.58:                               ;   in Loop: Header=BB2_57 Depth=1
	adr	x8, LBB2_53
	ldrb	w10, [x24, x9]
	add	x8, x8, x10, lsl #2
	br	x8
LBB2_59:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	ldr	x9, [x8]
	sub	x9, x9, #9
	cmp	x9, #1
	b.hi	LBB2_92
; %bb.60:                               ;   in Loop: Header=BB2_57 Depth=1
	str	x21, [x8]
	b	LBB2_93
LBB2_61:                                ;   in Loop: Header=BB2_57 Depth=1
	and	x9, x8, #0xfffffffffffffffe
	cmp	x9, #162
	b.ne	LBB2_94
; %bb.62:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	x8, [x28]
	ldr	x9, [x8]
	cmp	x9, #10
	b.eq	LBB2_104
; %bb.63:                               ;   in Loop: Header=BB2_57 Depth=1
	cmp	x9, #9
	b.ne	LBB2_105
; %bb.64:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	str	q0, [x8], #8
	b	LBB2_106
LBB2_65:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	mov	w9, #4                          ; =0x4
	str	x9, [x8, #8]
	add	x23, x8, #16
	str	x23, [x28]
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x26]
	cmp	x8, #58
	b.ne	LBB2_99
; %bb.66:                               ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	b	LBB2_100
LBB2_67:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x23, [x28]
	mov	w8, #4                          ; =0x4
	str	x8, [x23, #8]
	add	x8, x23, #16
	str	x8, [x28]
	mov	w0, #146                        ; =0x92
	b	LBB2_54
LBB2_68:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #147                        ; =0x93
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #14                         ; =0xe
	b	LBB2_79
LBB2_69:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #148                        ; =0x94
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #15                         ; =0xf
	b	LBB2_79
LBB2_70:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #149                        ; =0x95
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #16                         ; =0x10
	b	LBB2_79
LBB2_71:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #150                        ; =0x96
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #17                         ; =0x11
	b	LBB2_79
LBB2_72:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #151                        ; =0x97
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #18                         ; =0x12
	b	LBB2_79
LBB2_73:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #155                        ; =0x9b
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #19                         ; =0x13
	b	LBB2_79
LBB2_74:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #155                        ; =0x9b
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #20                         ; =0x14
	b	LBB2_79
LBB2_75:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #155                        ; =0x9b
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #21                         ; =0x15
	b	LBB2_79
LBB2_76:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #155                        ; =0x9b
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #22                         ; =0x16
	b	LBB2_79
LBB2_77:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #157                        ; =0x9d
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #23                         ; =0x17
	b	LBB2_79
LBB2_78:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #157                        ; =0x9d
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #24                         ; =0x18
LBB2_79:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x9, [x8, #8]!
LBB2_80:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x8, [x28]
	b	LBB2_55
LBB2_81:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #159                        ; =0x9f
	bl	_expression
	str	x23, [x27]
	ldr	x8, [x28]
	cmp	x23, #3
	b.lt	LBB2_83
; %bb.82:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	stur	q0, [x8, #8]
	ldr	q0, [sp, #80]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	add	x8, x8, #32
LBB2_83:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x22, [x8, #8]!
	str	x8, [x28]
	b	LBB2_56
LBB2_84:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #159                        ; =0x9f
	bl	_expression
	ldr	x9, [x27]
	ldr	x8, [x28]
	cmp	x23, #3
	ccmp	x23, x9, #0, ge
	b.eq	LBB2_101
; %bb.85:                               ;   in Loop: Header=BB2_57 Depth=1
	cmp	x23, #3
	b.lt	LBB2_102
; %bb.86:                               ;   in Loop: Header=BB2_57 Depth=1
	mov	w9, #26                         ; =0x1a
	str	x9, [x8, #40]!
	ldr	q1, [sp, #96]                   ; 16-byte Folded Reload
	ldr	q0, [sp, #80]                   ; 16-byte Folded Reload
	stp	q1, q0, [x8, #-32]
	b	LBB2_91
LBB2_87:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #162                        ; =0xa2
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #27                         ; =0x1b
	b	LBB2_90
LBB2_88:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #162                        ; =0xa2
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #28                         ; =0x1c
	b	LBB2_90
LBB2_89:                                ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #162                        ; =0xa2
	bl	_expression
	ldr	x8, [x28]
	mov	w9, #29                         ; =0x1d
LBB2_90:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x9, [x8, #8]!
LBB2_91:                                ;   in Loop: Header=BB2_57 Depth=1
	str	x8, [x28]
	str	x23, [x27]
	b	LBB2_56
LBB2_92:                                ;   in Loop: Header=BB2_57 Depth=1
Lloh136:
	adrp	x8, _line@GOTPAGE
Lloh137:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh138:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh139:
	adrp	x0, l_.str.14@PAGE
Lloh140:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_93:                                ;   in Loop: Header=BB2_57 Depth=1
	mov	w0, #142                        ; =0x8e
	bl	_expression
	str	x23, [x27]
	cmp	x23, #0
	cinc	x8, x25, eq
	ldr	x9, [x28]
	str	x8, [x9, #8]!
	str	x9, [x28]
	b	LBB2_56
LBB2_94:                                ;   in Loop: Header=BB2_57 Depth=1
	cmp	x8, #164
	b.ne	LBB2_103
; %bb.95:                               ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	ldr	x8, [x28]
	str	x21, [x8, #8]!
	str	x8, [x28]
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x26]
	cmp	x8, #93
	b.ne	LBB2_107
; %bb.96:                               ;   in Loop: Header=BB2_57 Depth=1
	bl	_next
	cmp	x23, #3
	b.ge	LBB2_108
LBB2_97:                                ;   in Loop: Header=BB2_57 Depth=1
	cmp	x23, #2
	b.eq	LBB2_109
; %bb.98:                               ;   in Loop: Header=BB2_57 Depth=1
Lloh141:
	adrp	x8, _line@GOTPAGE
Lloh142:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh143:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh144:
	adrp	x0, l_.str.17@PAGE
Lloh145:
	add	x0, x0, l_.str.17@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	b	LBB2_109
LBB2_99:                                ;   in Loop: Header=BB2_57 Depth=1
Lloh146:
	adrp	x8, _line@GOTPAGE
Lloh147:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh148:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh149:
	adrp	x0, l_.str.15@PAGE
Lloh150:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_100:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	x25, [x28]
	add	x8, x25, #24
	str	x8, [x23]
	mov	w8, #2                          ; =0x2
	str	x8, [x25, #8]
	add	x8, x25, #16
	str	x8, [x28]
	mov	w0, #143                        ; =0x8f
	bl	_expression
	ldr	x8, [x28]
	add	x8, x8, #8
	str	x8, [x25, #16]
	mov	w25, #11                        ; =0xb
	b	LBB2_56
LBB2_101:                               ;   in Loop: Header=BB2_57 Depth=1
	mov	w9, #28                         ; =0x1c
	str	x9, [x8, #40]!
	ldr	q1, [sp, #64]                   ; 16-byte Folded Reload
	ldr	q0, [sp, #48]                   ; 16-byte Folded Reload
	stp	q1, q0, [x8, #-32]
	b	LBB2_80
LBB2_102:                               ;   in Loop: Header=BB2_57 Depth=1
	add	x8, x8, #8
	str	x8, [x28]
	mov	w9, #26                         ; =0x1a
	str	x9, [x8]
	str	x23, [x27]
	b	LBB2_56
LBB2_103:                               ;   in Loop: Header=BB2_57 Depth=1
Lloh151:
	adrp	x9, _line@GOTPAGE
Lloh152:
	ldr	x9, [x9, _line@GOTPAGEOFF]
Lloh153:
	ldr	x9, [x9]
	stp	x9, x8, [sp]
Lloh154:
	adrp	x0, l_.str.18@PAGE
Lloh155:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	b	LBB2_56
LBB2_104:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	q0, [sp, #32]                   ; 16-byte Folded Reload
	str	q0, [x8], #8
	b	LBB2_106
LBB2_105:                               ;   in Loop: Header=BB2_57 Depth=1
Lloh156:
	adrp	x8, _line@GOTPAGE
Lloh157:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh158:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh159:
	adrp	x0, l_.str.16@PAGE
Lloh160:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	ldr	x8, [x28]
LBB2_106:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	x9, [x27]
	cmp	x9, #2
	mov	w10, #8                         ; =0x8
	csinc	x10, x10, xzr, gt
	ldr	x11, [x26]
	cmp	x11, #162
	cinc	x11, x22, eq
	str	x11, [x8, #72]!
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	stur	q0, [x8, #-64]
	cinc	x11, x22, ne
	stp	x10, x11, [x8, #-48]
	cmp	x9, #0
	cinc	x9, x25, eq
	stur	x9, [x8, #-32]
	stur	q0, [x8, #-24]
	stur	x10, [x8, #-8]
	str	x8, [x28]
	bl	_next
	b	LBB2_56
LBB2_107:                               ;   in Loop: Header=BB2_57 Depth=1
Lloh161:
	adrp	x8, _line@GOTPAGE
Lloh162:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh163:
	ldr	x8, [x8]
	mov	w9, #93                         ; =0x5d
	stp	x8, x9, [sp]
Lloh164:
	adrp	x0, l_.str.6@PAGE
Lloh165:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	cmp	x23, #3
	b.lt	LBB2_97
LBB2_108:                               ;   in Loop: Header=BB2_57 Depth=1
	ldr	x8, [x28]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	stur	q0, [x8, #8]
	add	x9, x8, #32
	str	x9, [x28]
	ldr	q0, [sp, #80]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
LBB2_109:                               ;   in Loop: Header=BB2_57 Depth=1
	subs	x8, x23, #2
	str	x8, [x27]
	ldr	x8, [x28]
	mov	w9, #9                          ; =0x9
	cinc	x9, x9, eq
	str	x9, [x8, #16]!
	stur	x22, [x8, #-8]
	str	x8, [x28]
	b	LBB2_56
LBB2_110:
Lloh166:
	adrp	x8, _line@GOTPAGE
Lloh167:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh168:
	ldr	x8, [x8]
	mov	w9, #40                         ; =0x28
	stp	x8, x9, [sp]
Lloh169:
	adrp	x0, l_.str.6@PAGE
Lloh170:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_111:
Lloh171:
	adrp	x20, _expr_type@GOTPAGE
Lloh172:
	ldr	x20, [x20, _expr_type@GOTPAGEOFF]
	mov	w8, #1                          ; =0x1
	str	x8, [x20]
	ldr	x8, [x26]
	cmp	x8, #134
	b.eq	LBB2_121
; %bb.112:
	cmp	x8, #138
	b.ne	LBB2_123
; %bb.113:
	bl	_next
	b	LBB2_123
LBB2_114:
Lloh173:
	adrp	x8, _line@GOTPAGE
Lloh174:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh175:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh176:
	adrp	x0, l_.str.10@PAGE
Lloh177:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	ldr	x8, [x20]
LBB2_115:
	cmp	x8, #0
	mov	w8, #9                          ; =0x9
	cinc	x8, x8, eq
Lloh178:
	adrp	x9, _text@GOTPAGE
Lloh179:
	ldr	x9, [x9, _text@GOTPAGEOFF]
	ldr	x10, [x9]
	str	x8, [x10, #8]!
	str	x10, [x9]
	b	LBB2_50
LBB2_116:
Lloh180:
	adrp	x8, _line@GOTPAGE
Lloh181:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh182:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh183:
	adrp	x0, l_.str.13@PAGE
Lloh184:
	add	x0, x0, l_.str.13@PAGEOFF
	b	LBB2_138
LBB2_117:
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x26]
	cmp	x8, #41
	b.ne	LBB2_137
; %bb.118:
	bl	_next
	b	LBB2_50
LBB2_119:
Lloh185:
	adrp	x8, _line@GOTPAGE
Lloh186:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh187:
	ldr	x8, [x8]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh188:
	adrp	x0, l_.str.6@PAGE
Lloh189:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_120:
	mov	w0, #162                        ; =0xa2
	bl	_expression
Lloh190:
	adrp	x8, _expr_type@GOTPAGE
Lloh191:
	ldr	x8, [x8, _expr_type@GOTPAGEOFF]
Lloh192:
	str	x20, [x8]
	b	LBB2_50
LBB2_121:
	bl	_next
	str	xzr, [x20]
	b	LBB2_123
LBB2_122:                               ;   in Loop: Header=BB2_123 Depth=1
	bl	_next
	ldr	x8, [x20]
	add	x8, x8, #2
	str	x8, [x20]
LBB2_123:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x26]
	cmp	x8, #159
	b.eq	LBB2_122
; %bb.124:
	cmp	x8, #41
	b.ne	LBB2_126
; %bb.125:
	bl	_next
	b	LBB2_127
LBB2_126:
Lloh193:
	adrp	x8, _line@GOTPAGE
Lloh194:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh195:
	ldr	x8, [x8]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh196:
	adrp	x0, l_.str.6@PAGE
Lloh197:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_127:
Lloh198:
	adrp	x8, _text@GOTPAGE
Lloh199:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	ldr	x10, [x20]
	cmp	x10, #0
	mov	w10, #8                         ; =0x8
	csinc	x10, x10, xzr, ne
	str	x10, [x9, #16]!
	mov	w10, #1                         ; =0x1
	stur	x10, [x9, #-8]
	str	x9, [x8]
	str	x10, [x20]
	b	LBB2_50
LBB2_128:
	mov	x21, #0                         ; =0x0
Lloh200:
	adrp	x22, _text@GOTPAGE
Lloh201:
	ldr	x22, [x22, _text@GOTPAGEOFF]
	mov	w23, #13                        ; =0xd
	b	LBB2_130
LBB2_129:                               ;   in Loop: Header=BB2_130 Depth=1
	add	x21, x21, #1
	cmp	x8, #41
	b.eq	LBB2_17
LBB2_130:                               ; =>This Inner Loop Header: Depth=1
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x22]
	str	x23, [x8, #8]!
	str	x8, [x22]
	ldr	x8, [x26]
	cmp	x8, #44
	b.ne	LBB2_129
; %bb.131:                              ;   in Loop: Header=BB2_130 Depth=1
	bl	_next
	ldr	x8, [x26]
	b	LBB2_129
LBB2_132:
Lloh202:
	adrp	x8, _text@GOTPAGE
Lloh203:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	mov	w10, #3                         ; =0x3
	str	x10, [x9, #8]
	ldr	x10, [x20, #40]
	str	x10, [x9, #16]!
	str	x9, [x8]
	b	LBB2_134
LBB2_133:
Lloh204:
	adrp	x8, _line@GOTPAGE
Lloh205:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh206:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh207:
	adrp	x0, l_.str.8@PAGE
Lloh208:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB2_134:
	cbz	x21, LBB2_136
; %bb.135:
Lloh209:
	adrp	x8, _text@GOTPAGE
Lloh210:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	str	x21, [x9, #16]!
	mov	w10, #7                         ; =0x7
	stur	x10, [x9, #-8]
	str	x9, [x8]
LBB2_136:
	ldr	x8, [x20, #24]
Lloh211:
	adrp	x9, _expr_type@GOTPAGE
Lloh212:
	ldr	x9, [x9, _expr_type@GOTPAGEOFF]
Lloh213:
	str	x8, [x9]
	b	LBB2_50
LBB2_137:
Lloh214:
	adrp	x8, _line@GOTPAGE
Lloh215:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh216:
	ldr	x8, [x8]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh217:
	adrp	x0, l_.str.6@PAGE
Lloh218:
	add	x0, x0, l_.str.6@PAGEOFF
LBB2_138:
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	b	LBB2_50
LBB2_139:
Lloh219:
	adrp	x9, lCPI2_4@PAGE
Lloh220:
	ldr	q0, [x9, lCPI2_4@PAGEOFF]
	str	q0, [x8], #8
	b	LBB2_141
LBB2_140:
Lloh221:
	adrp	x8, _line@GOTPAGE
Lloh222:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh223:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh224:
	adrp	x0, l_.str.12@PAGE
Lloh225:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
	ldr	x8, [x21]
LBB2_141:
Lloh226:
	adrp	x9, lCPI2_1@PAGE
Lloh227:
	ldr	q0, [x9, lCPI2_1@PAGEOFF]
Lloh228:
	adrp	x9, _expr_type@GOTPAGE
Lloh229:
	ldr	x9, [x9, _expr_type@GOTPAGEOFF]
Lloh230:
	ldr	x9, [x9]
	cmp	x9, #0
	mov	w10, #11                        ; =0xb
	cinc	x10, x10, eq
	str	x10, [x8, #40]!
	stur	q0, [x8, #-32]
	cmp	x9, #2
	mov	w9, #8                          ; =0x8
	csinc	x9, x9, xzr, gt
	cmp	x20, #162
	mov	w10, #25                        ; =0x19
	cinc	x10, x10, ne
	stp	x9, x10, [x8, #-16]
	str	x8, [x21]
	b	LBB2_50
LBB2_142:
Lloh231:
	adrp	x8, _text@GOTPAGE
Lloh232:
	ldr	x8, [x8, _text@GOTPAGEOFF]
Lloh233:
	ldr	x8, [x8]
Lloh234:
	adrp	x9, _index_of_bp@GOTPAGE
Lloh235:
	ldr	x9, [x9, _index_of_bp@GOTPAGEOFF]
	str	xzr, [x8, #8]
Lloh236:
	ldr	x9, [x9]
	ldr	x10, [x20, #40]
	sub	x9, x9, x10
	str	x9, [x8, #16]!
	b	LBB2_145
LBB2_143:
Lloh237:
	adrp	x8, _text@GOTPAGE
Lloh238:
	ldr	x8, [x8, _text@GOTPAGEOFF]
Lloh239:
	ldr	x8, [x8]
	mov	w9, #1                          ; =0x1
	str	x9, [x8, #8]
	ldr	x9, [x20, #40]
	str	x9, [x8, #16]!
	b	LBB2_145
LBB2_144:
Lloh240:
	adrp	x8, _line@GOTPAGE
Lloh241:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh242:
	ldr	x8, [x8]
	str	x8, [sp]
Lloh243:
	adrp	x0, l_.str.9@PAGE
Lloh244:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
Lloh245:
	adrp	x8, _text@GOTPAGE
Lloh246:
	ldr	x8, [x8, _text@GOTPAGEOFF]
Lloh247:
	ldr	x8, [x8]
LBB2_145:
	ldr	x9, [x20, #24]
Lloh248:
	adrp	x10, _expr_type@GOTPAGE
Lloh249:
	ldr	x10, [x10, _expr_type@GOTPAGEOFF]
Lloh250:
	str	x9, [x10]
	cmp	x9, #0
	mov	w9, #9                          ; =0x9
	cinc	x9, x9, eq
Lloh251:
	adrp	x10, _text@GOTPAGE
Lloh252:
	ldr	x10, [x10, _text@GOTPAGEOFF]
	str	x9, [x8, #8]!
Lloh253:
	str	x8, [x10]
	b	LBB2_50
	.loh AdrpLdrGot	Lloh49, Lloh50
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdr	Lloh57, Lloh58
	.loh AdrpLdr	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpLdrGotLdr	Lloh59, Lloh60, Lloh61
	.loh AdrpLdrGotLdr	Lloh64, Lloh65, Lloh66
	.loh AdrpLdrGot	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpLdrGotLdr	Lloh73, Lloh74, Lloh75
	.loh AdrpLdrGotLdr	Lloh78, Lloh79, Lloh80
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpLdrGotStr	Lloh81, Lloh82, Lloh83
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpLdr	Lloh90, Lloh91
	.loh AdrpLdr	Lloh88, Lloh89
	.loh AdrpLdrGot	Lloh86, Lloh87
	.loh AdrpLdrGotLdr	Lloh94, Lloh95, Lloh96
	.loh AdrpLdrGot	Lloh92, Lloh93
	.loh AdrpLdrGot	Lloh99, Lloh100
	.loh AdrpLdrGot	Lloh97, Lloh98
	.loh AdrpLdrGot	Lloh101, Lloh102
	.loh AdrpLdr	Lloh103, Lloh104
	.loh AdrpLdrGot	Lloh105, Lloh106
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpLdrGotLdr	Lloh107, Lloh108, Lloh109
	.loh AdrpLdrGot	Lloh112, Lloh113
	.loh AdrpLdr	Lloh114, Lloh115
	.loh AdrpLdrGot	Lloh116, Lloh117
	.loh AdrpLdr	Lloh134, Lloh135
	.loh AdrpAdrp	Lloh132, Lloh134
	.loh AdrpLdr	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdrp	Lloh128, Lloh132
	.loh AdrpLdr	Lloh128, Lloh129
	.loh AdrpAdrp	Lloh126, Lloh128
	.loh AdrpLdr	Lloh126, Lloh127
	.loh AdrpAdrp	Lloh124, Lloh126
	.loh AdrpLdr	Lloh124, Lloh125
	.loh AdrpAdrp	Lloh122, Lloh124
	.loh AdrpLdr	Lloh122, Lloh123
	.loh AdrpLdrGot	Lloh120, Lloh121
	.loh AdrpLdrGot	Lloh118, Lloh119
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpLdrGotLdr	Lloh136, Lloh137, Lloh138
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpLdrGotLdr	Lloh141, Lloh142, Lloh143
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpLdrGotLdr	Lloh146, Lloh147, Lloh148
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpLdrGotLdr	Lloh151, Lloh152, Lloh153
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpLdrGotLdr	Lloh156, Lloh157, Lloh158
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpLdrGotLdr	Lloh161, Lloh162, Lloh163
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpLdrGotLdr	Lloh166, Lloh167, Lloh168
	.loh AdrpLdrGot	Lloh171, Lloh172
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpLdrGotLdr	Lloh173, Lloh174, Lloh175
	.loh AdrpLdrGot	Lloh178, Lloh179
	.loh AdrpAdd	Lloh183, Lloh184
	.loh AdrpLdrGotLdr	Lloh180, Lloh181, Lloh182
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpLdrGotLdr	Lloh185, Lloh186, Lloh187
	.loh AdrpLdrGotStr	Lloh190, Lloh191, Lloh192
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpLdrGotLdr	Lloh193, Lloh194, Lloh195
	.loh AdrpLdrGot	Lloh198, Lloh199
	.loh AdrpLdrGot	Lloh200, Lloh201
	.loh AdrpLdrGot	Lloh202, Lloh203
	.loh AdrpAdd	Lloh207, Lloh208
	.loh AdrpLdrGotLdr	Lloh204, Lloh205, Lloh206
	.loh AdrpLdrGot	Lloh209, Lloh210
	.loh AdrpLdrGotStr	Lloh211, Lloh212, Lloh213
	.loh AdrpAdd	Lloh217, Lloh218
	.loh AdrpLdrGotLdr	Lloh214, Lloh215, Lloh216
	.loh AdrpLdr	Lloh219, Lloh220
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpLdrGotLdr	Lloh221, Lloh222, Lloh223
	.loh AdrpLdrGotLdr	Lloh228, Lloh229, Lloh230
	.loh AdrpAdrp	Lloh226, Lloh228
	.loh AdrpLdr	Lloh226, Lloh227
	.loh AdrpLdrGotLdr	Lloh234, Lloh235, Lloh236
	.loh AdrpLdrGotLdr	Lloh231, Lloh232, Lloh233
	.loh AdrpLdrGotLdr	Lloh237, Lloh238, Lloh239
	.loh AdrpLdrGotLdr	Lloh245, Lloh246, Lloh247
	.loh AdrpAdd	Lloh243, Lloh244
	.loh AdrpLdrGotLdr	Lloh240, Lloh241, Lloh242
	.loh AdrpLdrGotStr	Lloh251, Lloh252, Lloh253
	.loh AdrpLdrGotStr	Lloh248, Lloh249, Lloh250
	.cfi_endproc
	.section	__TEXT,__const
lJTI2_0:
	.byte	(LBB2_4-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_24-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_14-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_26-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_20-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_35-LBB2_4)>>2
	.byte	(LBB2_28-LBB2_4)>>2
	.byte	(LBB2_22-LBB2_4)>>2
	.byte	(LBB2_29-LBB2_4)>>2
lJTI2_1:
	.byte	(LBB2_59-LBB2_53)>>2
	.byte	(LBB2_65-LBB2_53)>>2
	.byte	(LBB2_53-LBB2_53)>>2
	.byte	(LBB2_67-LBB2_53)>>2
	.byte	(LBB2_68-LBB2_53)>>2
	.byte	(LBB2_69-LBB2_53)>>2
	.byte	(LBB2_70-LBB2_53)>>2
	.byte	(LBB2_71-LBB2_53)>>2
	.byte	(LBB2_72-LBB2_53)>>2
	.byte	(LBB2_73-LBB2_53)>>2
	.byte	(LBB2_74-LBB2_53)>>2
	.byte	(LBB2_75-LBB2_53)>>2
	.byte	(LBB2_76-LBB2_53)>>2
	.byte	(LBB2_77-LBB2_53)>>2
	.byte	(LBB2_78-LBB2_53)>>2
	.byte	(LBB2_81-LBB2_53)>>2
	.byte	(LBB2_84-LBB2_53)>>2
	.byte	(LBB2_87-LBB2_53)>>2
	.byte	(LBB2_88-LBB2_53)>>2
	.byte	(LBB2_89-LBB2_53)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_statement                      ; -- Begin function statement
	.p2align	2
_statement:                             ; @statement
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
Lloh254:
	adrp	x19, _token@GOTPAGE
Lloh255:
	ldr	x19, [x19, _token@GOTPAGEOFF]
	ldr	x9, [x19]
	sub	x8, x9, #123
	cmp	x8, #18
	b.hi	LBB3_5
; %bb.1:
Lloh256:
	adrp	x9, lJTI3_0@PAGE
Lloh257:
	add	x9, x9, lJTI3_0@PAGEOFF
	adr	x10, LBB3_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB3_2:
	bl	_next
LBB3_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	cmp	x8, #125
	b.eq	LBB3_7
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	bl	_statement
	b	LBB3_3
LBB3_5:
	cmp	x9, #59
	b.eq	LBB3_7
LBB3_6:
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x19]
	cmp	x8, #59
	b.ne	LBB3_15
LBB3_7:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_next
LBB3_8:
	bl	_next
	ldr	x8, [x19]
	cmp	x8, #59
	b.eq	LBB3_10
; %bb.9:
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x19]
	cmp	x8, #59
	b.ne	LBB3_28
LBB3_10:
	bl	_next
	b	LBB3_29
LBB3_11:
	bl	_next
	ldr	x8, [x19]
	cmp	x8, #40
	b.ne	LBB3_16
; %bb.12:
	bl	_next
	b	LBB3_17
LBB3_13:
	bl	_next
Lloh258:
	adrp	x20, _text@GOTPAGE
Lloh259:
	ldr	x20, [x20, _text@GOTPAGEOFF]
	ldr	x8, [x20]
	add	x21, x8, #8
	ldr	x8, [x19]
	cmp	x8, #40
	b.ne	LBB3_19
; %bb.14:
	bl	_next
	b	LBB3_20
LBB3_15:
Lloh260:
	adrp	x8, _line@GOTPAGE
Lloh261:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh262:
	ldr	x8, [x8]
	mov	w9, #59                         ; =0x3b
	stp	x8, x9, [sp]
Lloh263:
	adrp	x0, l_.str.6@PAGE
Lloh264:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_libmin_fail
LBB3_16:
Lloh265:
	adrp	x8, _line@GOTPAGE
Lloh266:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh267:
	ldr	x8, [x8]
	mov	w9, #40                         ; =0x28
	stp	x8, x9, [sp]
Lloh268:
	adrp	x0, l_.str.6@PAGE
Lloh269:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB3_17:
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x19]
	cmp	x8, #41
	b.ne	LBB3_22
; %bb.18:
	bl	_next
	b	LBB3_23
LBB3_19:
Lloh270:
	adrp	x8, _line@GOTPAGE
Lloh271:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh272:
	ldr	x8, [x8]
	mov	w9, #40                         ; =0x28
	stp	x8, x9, [sp]
Lloh273:
	adrp	x0, l_.str.6@PAGE
Lloh274:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB3_20:
	mov	w0, #142                        ; =0x8e
	bl	_expression
	ldr	x8, [x19]
	cmp	x8, #41
	b.ne	LBB3_26
; %bb.21:
	bl	_next
	b	LBB3_27
LBB3_22:
Lloh275:
	adrp	x8, _line@GOTPAGE
Lloh276:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh277:
	ldr	x8, [x8]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh278:
	adrp	x0, l_.str.6@PAGE
Lloh279:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB3_23:
Lloh280:
	adrp	x20, _text@GOTPAGE
Lloh281:
	ldr	x20, [x20, _text@GOTPAGEOFF]
	ldr	x8, [x20]
	mov	w9, #4                          ; =0x4
	str	x9, [x8, #8]
	add	x21, x8, #16
	str	x21, [x20]
	bl	_statement
	ldr	x8, [x19]
	cmp	x8, #135
	b.ne	LBB3_25
; %bb.24:
	bl	_next
	ldr	x8, [x20]
	add	x9, x8, #24
	str	x9, [x21]
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #8]
	add	x21, x8, #16
	str	x21, [x20]
	bl	_statement
LBB3_25:
	ldr	x8, [x20]
	add	x8, x8, #8
	str	x8, [x21]
	b	LBB3_30
LBB3_26:
Lloh282:
	adrp	x8, _line@GOTPAGE
Lloh283:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh284:
	ldr	x8, [x8]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh285:
	adrp	x0, l_.str.6@PAGE
Lloh286:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB3_27:
	ldr	x19, [x20]
	mov	w8, #4                          ; =0x4
	str	x8, [x19, #8]
	add	x8, x19, #16
	str	x8, [x20]
	bl	_statement
	ldr	x8, [x20]
	str	x21, [x8, #16]!
	mov	w9, #2                          ; =0x2
	stur	x9, [x8, #-8]
	str	x8, [x20]
	add	x8, x8, #8
	str	x8, [x19, #16]
	b	LBB3_30
LBB3_28:
Lloh287:
	adrp	x8, _line@GOTPAGE
Lloh288:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh289:
	ldr	x8, [x8]
	mov	w9, #59                         ; =0x3b
	stp	x8, x9, [sp]
Lloh290:
	adrp	x0, l_.str.6@PAGE
Lloh291:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB3_29:
Lloh292:
	adrp	x8, _text@GOTPAGE
Lloh293:
	ldr	x8, [x8, _text@GOTPAGEOFF]
	ldr	x9, [x8]
	mov	w10, #8                         ; =0x8
	str	x10, [x9, #8]!
	str	x9, [x8]
LBB3_30:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpLdrGot	Lloh254, Lloh255
	.loh AdrpAdd	Lloh256, Lloh257
	.loh AdrpLdrGot	Lloh258, Lloh259
	.loh AdrpAdd	Lloh263, Lloh264
	.loh AdrpLdrGotLdr	Lloh260, Lloh261, Lloh262
	.loh AdrpAdd	Lloh268, Lloh269
	.loh AdrpLdrGotLdr	Lloh265, Lloh266, Lloh267
	.loh AdrpAdd	Lloh273, Lloh274
	.loh AdrpLdrGotLdr	Lloh270, Lloh271, Lloh272
	.loh AdrpAdd	Lloh278, Lloh279
	.loh AdrpLdrGotLdr	Lloh275, Lloh276, Lloh277
	.loh AdrpLdrGot	Lloh280, Lloh281
	.loh AdrpAdd	Lloh285, Lloh286
	.loh AdrpLdrGotLdr	Lloh282, Lloh283, Lloh284
	.loh AdrpAdd	Lloh290, Lloh291
	.loh AdrpLdrGotLdr	Lloh287, Lloh288, Lloh289
	.loh AdrpLdrGot	Lloh292, Lloh293
	.cfi_endproc
	.section	__TEXT,__const
lJTI3_0:
	.byte	(LBB3_2-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_11-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_8-LBB3_2)>>2
	.byte	(LBB3_6-LBB3_2)>>2
	.byte	(LBB3_13-LBB3_2)>>2
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function enum_declaration
lCPI4_0:
	.quad	1                               ; 0x1
	.quad	128                             ; 0x80
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_enum_declaration
	.p2align	2
_enum_declaration:                      ; @enum_declaration
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
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
	mov	x25, #0                         ; =0x0
Lloh294:
	adrp	x21, _token@GOTPAGE
Lloh295:
	ldr	x21, [x21, _token@GOTPAGEOFF]
	ldr	x8, [x21]
Lloh296:
	adrp	x22, _token_val@GOTPAGE
Lloh297:
	ldr	x22, [x22, _token_val@GOTPAGEOFF]
Lloh298:
	adrp	x23, _line@GOTPAGE
Lloh299:
	ldr	x23, [x23, _line@GOTPAGEOFF]
Lloh300:
	adrp	x19, l_.str.20@PAGE
Lloh301:
	add	x19, x19, l_.str.20@PAGEOFF
Lloh302:
	adrp	x24, _current_id@GOTPAGE
Lloh303:
	ldr	x24, [x24, _current_id@GOTPAGEOFF]
Lloh304:
	adrp	x9, lCPI4_0@PAGE
Lloh305:
	ldr	q0, [x9, lCPI4_0@PAGEOFF]
	str	q0, [sp, #16]                   ; 16-byte Folded Spill
Lloh306:
	adrp	x20, l_.str.19@PAGE
Lloh307:
	add	x20, x20, l_.str.19@PAGEOFF
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	cmp	x8, #133
	b.eq	LBB4_4
; %bb.2:                                ;   in Loop: Header=BB4_1 Depth=1
	cmp	x8, #125
	b.eq	LBB4_10
; %bb.3:                                ;   in Loop: Header=BB4_1 Depth=1
	ldr	x9, [x23]
	stp	x9, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB4_4:                                 ;   in Loop: Header=BB4_1 Depth=1
	bl	_next
	ldr	x8, [x21]
	cmp	x8, #142
	b.ne	LBB4_8
; %bb.5:                                ;   in Loop: Header=BB4_1 Depth=1
	bl	_next
	ldr	x8, [x21]
	cmp	x8, #128
	b.eq	LBB4_7
; %bb.6:                                ;   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [x23]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB4_7:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x25, [x22]
	bl	_next
	ldr	x8, [x21]
LBB4_8:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x9, [x24]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x9, #24]
	str	x25, [x9, #40]
	add	x25, x25, #1
	cmp	x8, #44
	b.ne	LBB4_1
; %bb.9:                                ;   in Loop: Header=BB4_1 Depth=1
	bl	_next
	ldr	x8, [x21]
	b	LBB4_1
LBB4_10:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh306, Lloh307
	.loh AdrpLdr	Lloh304, Lloh305
	.loh AdrpLdrGot	Lloh302, Lloh303
	.loh AdrpAdd	Lloh300, Lloh301
	.loh AdrpLdrGot	Lloh298, Lloh299
	.loh AdrpLdrGot	Lloh296, Lloh297
	.loh AdrpLdrGot	Lloh294, Lloh295
	.cfi_endproc
                                        ; -- End function
	.globl	_function_parameter             ; -- Begin function function_parameter
	.p2align	2
_function_parameter:                    ; @function_parameter
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
	mov	x26, #0                         ; =0x0
Lloh308:
	adrp	x22, _token@GOTPAGE
Lloh309:
	ldr	x22, [x22, _token@GOTPAGEOFF]
Lloh310:
	adrp	x23, _current_id@GOTPAGE
Lloh311:
	ldr	x23, [x23, _current_id@GOTPAGEOFF]
Lloh312:
	adrp	x24, _line@GOTPAGE
Lloh313:
	ldr	x24, [x24, _line@GOTPAGEOFF]
	ldr	x8, [x22]
Lloh314:
	adrp	x19, l_.str.22@PAGE
Lloh315:
	add	x19, x19, l_.str.22@PAGEOFF
	mov	w25, #132                       ; =0x84
	mov	w27, #133                       ; =0x85
Lloh316:
	adrp	x20, l_.str.6@PAGE
Lloh317:
	add	x20, x20, l_.str.6@PAGEOFF
Lloh318:
	adrp	x21, l_.str.21@PAGE
Lloh319:
	add	x21, x21, l_.str.21@PAGEOFF
LBB5_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_7 Depth 2
	cmp	x8, #134
	b.eq	LBB5_4
; %bb.2:                                ;   in Loop: Header=BB5_1 Depth=1
	mov	w28, #1                         ; =0x1
	cmp	x8, #138
	b.eq	LBB5_5
; %bb.3:                                ;   in Loop: Header=BB5_1 Depth=1
	cmp	x8, #41
	b.ne	LBB5_7
	b	LBB5_17
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	mov	x28, #0                         ; =0x0
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	bl	_next
	b	LBB5_7
LBB5_6:                                 ;   in Loop: Header=BB5_7 Depth=2
	bl	_next
	add	x28, x28, #2
LBB5_7:                                 ;   Parent Loop BB5_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [x22]
	cmp	x8, #159
	b.eq	LBB5_6
; %bb.8:                                ;   in Loop: Header=BB5_1 Depth=1
	cmp	x8, #133
	b.eq	LBB5_10
; %bb.9:                                ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x24]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB5_10:                                ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x23]
	ldr	x8, [x8, #32]
	cmp	x8, #132
	b.ne	LBB5_12
; %bb.11:                               ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x24]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB5_12:                                ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x22]
	cmp	x8, #133
	b.ne	LBB5_14
; %bb.13:                               ;   in Loop: Header=BB5_1 Depth=1
	bl	_next
	b	LBB5_15
LBB5_14:                                ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x24]
	stp	x8, x27, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB5_15:                                ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [x23]
	ldur	q0, [x8, #24]
	str	q0, [x8, #48]
	stp	x28, x25, [x8, #24]
	ldr	x9, [x8, #40]
	str	x9, [x8, #64]
	add	x28, x26, #1
	str	x26, [x8, #40]
	ldr	x8, [x22]
	mov	x26, x28
	cmp	x8, #44
	b.ne	LBB5_1
; %bb.16:                               ;   in Loop: Header=BB5_1 Depth=1
	bl	_next
	ldr	x8, [x22]
	mov	x26, x28
	b	LBB5_1
LBB5_17:
	add	x8, x26, #1
Lloh320:
	adrp	x9, _index_of_bp@GOTPAGE
Lloh321:
	ldr	x9, [x9, _index_of_bp@GOTPAGEOFF]
Lloh322:
	str	x8, [x9]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh318, Lloh319
	.loh AdrpAdd	Lloh316, Lloh317
	.loh AdrpAdd	Lloh314, Lloh315
	.loh AdrpLdrGot	Lloh312, Lloh313
	.loh AdrpLdrGot	Lloh310, Lloh311
	.loh AdrpLdrGot	Lloh308, Lloh309
	.loh AdrpLdrGotStr	Lloh320, Lloh321, Lloh322
	.cfi_endproc
                                        ; -- End function
	.globl	_function_body                  ; -- Begin function function_body
	.p2align	2
_function_body:                         ; @function_body
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
Lloh323:
	adrp	x8, _index_of_bp@GOTPAGE
Lloh324:
	ldr	x8, [x8, _index_of_bp@GOTPAGEOFF]
Lloh325:
	adrp	x22, _token@GOTPAGE
Lloh326:
	ldr	x22, [x22, _token@GOTPAGEOFF]
Lloh327:
	adrp	x25, _basetype@GOTPAGE
Lloh328:
	ldr	x25, [x25, _basetype@GOTPAGEOFF]
Lloh329:
	adrp	x26, _current_id@GOTPAGE
Lloh330:
	ldr	x26, [x26, _current_id@GOTPAGEOFF]
Lloh331:
	adrp	x27, _line@GOTPAGE
Lloh332:
	ldr	x27, [x27, _line@GOTPAGEOFF]
Lloh333:
	ldr	x24, [x8]
	mov	w28, #132                       ; =0x84
	mov	w23, #133                       ; =0x85
Lloh334:
	adrp	x20, l_.str.6@PAGE
Lloh335:
	add	x20, x20, l_.str.6@PAGEOFF
Lloh336:
	adrp	x21, l_.str.23@PAGE
Lloh337:
	add	x21, x21, l_.str.23@PAGEOFF
	b	LBB6_2
LBB6_1:                                 ;   in Loop: Header=BB6_2 Depth=1
	bl	_next
LBB6_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_5 Depth 2
                                        ;       Child Loop BB6_6 Depth 3
                                        ;         Child Loop BB6_8 Depth 4
	ldr	x9, [x22]
	cmp	x9, #138
	b.eq	LBB6_4
; %bb.3:                                ;   in Loop: Header=BB6_2 Depth=1
	cmp	x9, #134
	b.ne	LBB6_17
LBB6_4:                                 ;   in Loop: Header=BB6_2 Depth=1
	cmp	x9, #138
	cset	w8, eq
	str	x8, [x25]
LBB6_5:                                 ;   Parent Loop BB6_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB6_6 Depth 3
                                        ;         Child Loop BB6_8 Depth 4
	bl	_next
	ldr	x8, [x22]
LBB6_6:                                 ;   Parent Loop BB6_2 Depth=1
                                        ;     Parent Loop BB6_5 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB6_8 Depth 4
	cmp	x8, #59
	b.eq	LBB6_1
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=3
	ldr	x19, [x25]
	cmp	x8, #159
	b.ne	LBB6_9
LBB6_8:                                 ;   Parent Loop BB6_2 Depth=1
                                        ;     Parent Loop BB6_5 Depth=2
                                        ;       Parent Loop BB6_6 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	bl	_next
	add	x19, x19, #2
	ldr	x8, [x22]
	cmp	x8, #159
	b.eq	LBB6_8
LBB6_9:                                 ;   in Loop: Header=BB6_6 Depth=3
	cmp	x8, #133
	b.eq	LBB6_11
; %bb.10:                               ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x27]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB6_11:                                ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x26]
	ldr	x8, [x8, #32]
	cmp	x8, #132
	b.ne	LBB6_13
; %bb.12:                               ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x27]
	str	x8, [sp]
Lloh338:
	adrp	x0, l_.str.24@PAGE
Lloh339:
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB6_13:                                ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x22]
	cmp	x8, #133
	b.ne	LBB6_15
; %bb.14:                               ;   in Loop: Header=BB6_6 Depth=3
	bl	_next
	b	LBB6_16
LBB6_15:                                ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x27]
	stp	x8, x23, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB6_16:                                ;   in Loop: Header=BB6_6 Depth=3
	ldr	x8, [x26]
	ldur	q0, [x8, #24]
	str	q0, [x8, #48]
	stp	x19, x28, [x8, #24]
	ldr	x9, [x8, #40]
	str	x9, [x8, #64]
	add	x24, x24, #1
	str	x24, [x8, #40]
	ldr	x8, [x22]
	cmp	x8, #44
	b.eq	LBB6_5
	b	LBB6_6
LBB6_17:
Lloh340:
	adrp	x19, _text@GOTPAGE
Lloh341:
	ldr	x19, [x19, _text@GOTPAGEOFF]
	ldr	x8, [x19]
Lloh342:
	adrp	x10, _index_of_bp@GOTPAGE
Lloh343:
	ldr	x10, [x10, _index_of_bp@GOTPAGEOFF]
Lloh344:
	ldr	x10, [x10]
	sub	x10, x24, x10
	str	x10, [x8, #16]!
	mov	w10, #6                         ; =0x6
	stur	x10, [x8, #-8]
	str	x8, [x19]
	cmp	x9, #125
	b.eq	LBB6_20
LBB6_18:                                ; =>This Inner Loop Header: Depth=1
	bl	_statement
	ldr	x8, [x22]
	cmp	x8, #125
	b.ne	LBB6_18
; %bb.19:
	ldr	x8, [x19]
LBB6_20:
	mov	w9, #8                          ; =0x8
	str	x9, [x8, #8]!
	str	x8, [x19]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh336, Lloh337
	.loh AdrpAdd	Lloh334, Lloh335
	.loh AdrpLdrGot	Lloh331, Lloh332
	.loh AdrpLdrGot	Lloh329, Lloh330
	.loh AdrpLdrGot	Lloh327, Lloh328
	.loh AdrpLdrGot	Lloh325, Lloh326
	.loh AdrpLdrGotLdr	Lloh323, Lloh324, Lloh333
	.loh AdrpAdd	Lloh338, Lloh339
	.loh AdrpLdrGotLdr	Lloh342, Lloh343, Lloh344
	.loh AdrpLdrGot	Lloh340, Lloh341
	.cfi_endproc
                                        ; -- End function
	.globl	_function_declaration           ; -- Begin function function_declaration
	.p2align	2
_function_declaration:                  ; @function_declaration
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
Lloh345:
	adrp	x20, _token@GOTPAGE
Lloh346:
	ldr	x20, [x20, _token@GOTPAGEOFF]
	ldr	x8, [x20]
Lloh347:
	adrp	x19, _line@GOTPAGE
Lloh348:
	ldr	x19, [x19, _line@GOTPAGEOFF]
	cmp	x8, #40
	b.ne	LBB7_2
; %bb.1:
	bl	_next
	b	LBB7_3
LBB7_2:
	ldr	x8, [x19]
	mov	w9, #40                         ; =0x28
	stp	x8, x9, [sp]
Lloh349:
	adrp	x0, l_.str.6@PAGE
Lloh350:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB7_3:
	bl	_function_parameter
	ldr	x8, [x20]
	cmp	x8, #41
	b.ne	LBB7_5
; %bb.4:
	bl	_next
	b	LBB7_6
LBB7_5:
	ldr	x8, [x19]
	mov	w9, #41                         ; =0x29
	stp	x8, x9, [sp]
Lloh351:
	adrp	x0, l_.str.6@PAGE
Lloh352:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB7_6:
	ldr	x8, [x20]
	cmp	x8, #123
	b.ne	LBB7_8
; %bb.7:
	bl	_next
	b	LBB7_9
LBB7_8:
	ldr	x8, [x19]
	mov	w9, #123                        ; =0x7b
	stp	x8, x9, [sp]
Lloh353:
	adrp	x0, l_.str.6@PAGE
Lloh354:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB7_9:
	bl	_function_body
Lloh355:
	adrp	x8, _symbols@GOTPAGE
Lloh356:
	ldr	x8, [x8, _symbols@GOTPAGEOFF]
Lloh357:
	ldr	x8, [x8]
	ldr	x9, [x8]
	cbnz	x9, LBB7_12
LBB7_10:
Lloh358:
	adrp	x9, _current_id@GOTPAGE
Lloh359:
	ldr	x9, [x9, _current_id@GOTPAGEOFF]
Lloh360:
	str	x8, [x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB7_11:                                ;   in Loop: Header=BB7_12 Depth=1
	ldr	x9, [x8, #72]!
	cbz	x9, LBB7_10
LBB7_12:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x8, #32]
	cmp	x9, #132
	b.ne	LBB7_11
; %bb.13:                               ;   in Loop: Header=BB7_12 Depth=1
	ldr	q0, [x8, #48]
	stur	q0, [x8, #24]
	ldr	x9, [x8, #64]
	str	x9, [x8, #40]
	b	LBB7_11
	.loh AdrpLdrGot	Lloh347, Lloh348
	.loh AdrpLdrGot	Lloh345, Lloh346
	.loh AdrpAdd	Lloh349, Lloh350
	.loh AdrpAdd	Lloh351, Lloh352
	.loh AdrpAdd	Lloh353, Lloh354
	.loh AdrpLdrGotLdr	Lloh355, Lloh356, Lloh357
	.loh AdrpLdrGotStr	Lloh358, Lloh359, Lloh360
	.cfi_endproc
                                        ; -- End function
	.globl	_global_declaration             ; -- Begin function global_declaration
	.p2align	2
_global_declaration:                    ; @global_declaration
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
Lloh361:
	adrp	x23, _basetype@GOTPAGE
Lloh362:
	ldr	x23, [x23, _basetype@GOTPAGEOFF]
	mov	w8, #1                          ; =0x1
	str	x8, [x23]
Lloh363:
	adrp	x22, _token@GOTPAGE
Lloh364:
	ldr	x22, [x22, _token@GOTPAGEOFF]
	ldr	x8, [x22]
	cmp	x8, #134
	b.eq	LBB8_6
; %bb.1:
	cmp	x8, #138
	b.eq	LBB8_7
; %bb.2:
	cmp	x8, #136
	b.ne	LBB8_8
; %bb.3:
	bl	_next
	ldr	x8, [x22]
	cmp	x8, #123
	b.eq	LBB8_26
; %bb.4:
	cmp	x8, #133
	b.ne	LBB8_24
; %bb.5:
	bl	_next
	b	LBB8_25
LBB8_6:
	bl	_next
	str	xzr, [x23]
	b	LBB8_8
LBB8_7:
	bl	_next
LBB8_8:
	ldr	x8, [x22]
Lloh365:
	adrp	x24, _current_id@GOTPAGE
Lloh366:
	ldr	x24, [x24, _current_id@GOTPAGEOFF]
Lloh367:
	adrp	x28, _text@GOTPAGE
Lloh368:
	ldr	x28, [x28, _text@GOTPAGEOFF]
Lloh369:
	adrp	x25, _data@GOTPAGE
Lloh370:
	ldr	x25, [x25, _data@GOTPAGEOFF]
Lloh371:
	adrp	x19, l_.str.6@PAGE
Lloh372:
	add	x19, x19, l_.str.6@PAGEOFF
Lloh373:
	adrp	x26, _line@GOTPAGE
Lloh374:
	ldr	x26, [x26, _line@GOTPAGEOFF]
Lloh375:
	adrp	x20, l_.str.26@PAGE
Lloh376:
	add	x20, x20, l_.str.26@PAGEOFF
Lloh377:
	adrp	x21, l_.str.25@PAGE
Lloh378:
	add	x21, x21, l_.str.25@PAGEOFF
LBB8_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_12 Depth 2
	cmp	x8, #59
	b.eq	LBB8_31
; %bb.10:                               ;   in Loop: Header=BB8_9 Depth=1
	cmp	x8, #125
	b.eq	LBB8_31
; %bb.11:                               ;   in Loop: Header=BB8_9 Depth=1
	ldr	x27, [x23]
	cmp	x8, #159
	b.ne	LBB8_13
LBB8_12:                                ;   Parent Loop BB8_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_next
	add	x27, x27, #2
	ldr	x8, [x22]
	cmp	x8, #159
	b.eq	LBB8_12
LBB8_13:                                ;   in Loop: Header=BB8_9 Depth=1
	cmp	x8, #133
	b.eq	LBB8_15
; %bb.14:                               ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x26]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB8_15:                                ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x24]
	ldr	x8, [x8, #32]
	cbz	x8, LBB8_17
; %bb.16:                               ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x26]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB8_17:                                ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x22]
	cmp	x8, #133
	b.ne	LBB8_19
; %bb.18:                               ;   in Loop: Header=BB8_9 Depth=1
	bl	_next
	b	LBB8_20
LBB8_19:                                ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x26]
	mov	w9, #133                        ; =0x85
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB8_20:                                ;   in Loop: Header=BB8_9 Depth=1
	ldr	x9, [x24]
	str	x27, [x9, #24]
	ldr	x8, [x22]
	cmp	x8, #40
	b.ne	LBB8_22
; %bb.21:                               ;   in Loop: Header=BB8_9 Depth=1
	ldr	x8, [x28]
	add	x8, x8, #8
	mov	w10, #129                       ; =0x81
	stp	x10, x8, [x9, #32]
	bl	_function_declaration
	ldr	x8, [x22]
	cmp	x8, #44
	b.ne	LBB8_9
	b	LBB8_23
LBB8_22:                                ;   in Loop: Header=BB8_9 Depth=1
	ldr	x10, [x25]
	mov	w11, #131                       ; =0x83
	stp	x11, x10, [x9, #32]
	add	x9, x10, #8
	str	x9, [x25]
	cmp	x8, #44
	b.ne	LBB8_9
LBB8_23:                                ;   in Loop: Header=BB8_9 Depth=1
	bl	_next
	ldr	x8, [x22]
	b	LBB8_9
LBB8_24:
Lloh379:
	adrp	x8, _line@GOTPAGE
Lloh380:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh381:
	ldr	x8, [x8]
	mov	w9, #133                        ; =0x85
	stp	x8, x9, [sp]
Lloh382:
	adrp	x0, l_.str.6@PAGE
Lloh383:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB8_25:
	ldr	x8, [x22]
	cmp	x8, #123
	b.ne	LBB8_30
LBB8_26:
	bl	_next
	bl	_enum_declaration
	ldr	x8, [x22]
	cmp	x8, #125
	b.ne	LBB8_28
; %bb.27:
	bl	_next
	b	LBB8_29
LBB8_28:
Lloh384:
	adrp	x8, _line@GOTPAGE
Lloh385:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh386:
	ldr	x8, [x8]
	mov	w9, #125                        ; =0x7d
	stp	x8, x9, [sp]
Lloh387:
	adrp	x0, l_.str.6@PAGE
Lloh388:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	bl	_libmin_fail
LBB8_29:
	ldr	x8, [x22]
LBB8_30:
	cmp	x8, #59
	b.ne	LBB8_32
LBB8_31:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_next
LBB8_32:
Lloh389:
	adrp	x8, _line@GOTPAGE
Lloh390:
	ldr	x8, [x8, _line@GOTPAGEOFF]
Lloh391:
	ldr	x8, [x8]
	mov	w9, #59                         ; =0x3b
	stp	x8, x9, [sp]
Lloh392:
	adrp	x0, l_.str.6@PAGE
Lloh393:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_libmin_fail
	.loh AdrpLdrGot	Lloh363, Lloh364
	.loh AdrpLdrGot	Lloh361, Lloh362
	.loh AdrpAdd	Lloh377, Lloh378
	.loh AdrpAdd	Lloh375, Lloh376
	.loh AdrpLdrGot	Lloh373, Lloh374
	.loh AdrpAdd	Lloh371, Lloh372
	.loh AdrpLdrGot	Lloh369, Lloh370
	.loh AdrpLdrGot	Lloh367, Lloh368
	.loh AdrpLdrGot	Lloh365, Lloh366
	.loh AdrpAdd	Lloh382, Lloh383
	.loh AdrpLdrGotLdr	Lloh379, Lloh380, Lloh381
	.loh AdrpAdd	Lloh387, Lloh388
	.loh AdrpLdrGotLdr	Lloh384, Lloh385, Lloh386
	.loh AdrpAdd	Lloh392, Lloh393
	.loh AdrpLdrGotLdr	Lloh389, Lloh390, Lloh391
	.cfi_endproc
                                        ; -- End function
	.globl	_program                        ; -- Begin function program
	.p2align	2
_program:                               ; @program
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
	bl	_next
Lloh394:
	adrp	x19, _token@GOTPAGE
Lloh395:
	ldr	x19, [x19, _token@GOTPAGEOFF]
	ldr	x8, [x19]
	cmp	x8, #1
	b.lt	LBB9_2
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	bl	_global_declaration
	ldr	x8, [x19]
	cmp	x8, #0
	b.gt	LBB9_1
LBB9_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh394, Lloh395
	.cfi_endproc
                                        ; -- End function
	.globl	_eval                           ; -- Begin function eval
	.p2align	2
_eval:                                  ; @eval
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
Lloh396:
	adrp	x23, _cycle@GOTPAGE
Lloh397:
	ldr	x23, [x23, _cycle@GOTPAGEOFF]
Lloh398:
	adrp	x24, _pc@GOTPAGE
Lloh399:
	ldr	x24, [x24, _pc@GOTPAGEOFF]
Lloh400:
	adrp	x25, _debug@GOTPAGE
Lloh401:
	ldr	x25, [x25, _debug@GOTPAGEOFF]
Lloh402:
	adrp	x26, lJTI10_0@PAGE
Lloh403:
	add	x26, x26, lJTI10_0@PAGEOFF
Lloh404:
	adrp	x22, _sp@GOTPAGE
Lloh405:
	ldr	x22, [x22, _sp@GOTPAGEOFF]
Lloh406:
	adrp	x27, _ax@GOTPAGE
Lloh407:
	ldr	x27, [x27, _ax@GOTPAGEOFF]
Lloh408:
	adrp	x28, l_.str.3@PAGE
Lloh409:
	add	x28, x28, l_.str.3@PAGEOFF
Lloh410:
	adrp	x19, l_.str.27@PAGE
Lloh411:
	add	x19, x19, l_.str.27@PAGEOFF
Lloh412:
	adrp	x21, l_.str.5@PAGE
Lloh413:
	add	x21, x21, l_.str.5@PAGEOFF
	b	LBB10_2
LBB10_1:                                ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	sdiv	x10, x9, x8
	msub	x8, x10, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
LBB10_2:                                ; =>This Inner Loop Header: Depth=1
	add	x8, x8, #1
	str	x8, [x23]
	ldr	x9, [x24]
	ldr	x20, [x9], #8
	str	x9, [x24]
	ldr	x9, [x25]
	cbz	x9, LBB10_7
; %bb.3:                                ;   in Loop: Header=BB10_2 Depth=1
	add	x9, x20, x20, lsl #2
	add	x9, x28, x9
	stp	x8, x9, [sp]
	mov	x0, x19
	bl	_libmin_printf
	cmp	x20, #7
	b.gt	LBB10_5
; %bb.4:                                ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x24]
	ldr	x8, [x8]
	str	x8, [sp]
Lloh414:
	adrp	x0, l_.str.4@PAGE
Lloh415:
	add	x0, x0, l_.str.4@PAGEOFF
	b	LBB10_6
LBB10_5:                                ;   in Loop: Header=BB10_2 Depth=1
	mov	x0, x21
LBB10_6:                                ;   in Loop: Header=BB10_2 Depth=1
	bl	_libmin_printf
LBB10_7:                                ;   in Loop: Header=BB10_2 Depth=1
	cmp	x20, #37
	b.hi	LBB10_41
; %bb.8:                                ;   in Loop: Header=BB10_2 Depth=1
	adr	x8, LBB10_1
	ldrh	w9, [x26, x20, lsl #1]
	add	x8, x8, x9, lsl #2
	br	x8
LBB10_9:                                ;   in Loop: Header=BB10_2 Depth=1
Lloh416:
	adrp	x8, _bp@GOTPAGE
Lloh417:
	ldr	x8, [x8, _bp@GOTPAGEOFF]
Lloh418:
	ldr	x8, [x8]
	ldr	x9, [x24]
	ldr	x10, [x9], #8
	str	x9, [x24]
	add	x8, x8, x10, lsl #3
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_10:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x24]
	ldr	x9, [x8], #8
	str	x8, [x24]
	str	x9, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_11:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x24]
	b	LBB10_13
LBB10_12:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x24]
	add	x9, x8, #8
	ldr	x10, [x22]
	str	x9, [x10, #-8]!
	str	x10, [x22]
LBB10_13:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x8]
	str	x8, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_14:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x9, [x27]
	ldr	x8, [x24]
	cbz	x9, LBB10_47
; %bb.15:                               ;   in Loop: Header=BB10_2 Depth=1
	add	x8, x8, #8
	str	x8, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_16:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x9, [x27]
	ldr	x8, [x24]
	cbz	x9, LBB10_48
; %bb.17:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x8]
	str	x8, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_18:                               ;   in Loop: Header=BB10_2 Depth=1
Lloh419:
	adrp	x8, _bp@GOTPAGE
Lloh420:
	ldr	x8, [x8, _bp@GOTPAGEOFF]
	ldr	x9, [x8]
	ldr	x10, [x22]
	str	x9, [x10, #-8]!
	str	x10, [x8]
	ldr	x8, [x24]
	ldr	x9, [x8], #8
	str	x8, [x24]
	sub	x8, x10, x9, lsl #3
	str	x8, [x22]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_19:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x24]
	ldr	x10, [x9], #8
	str	x9, [x24]
	add	x8, x8, x10, lsl #3
	str	x8, [x22]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_20:                               ;   in Loop: Header=BB10_2 Depth=1
Lloh421:
	adrp	x8, _bp@GOTPAGE
Lloh422:
	ldr	x8, [x8, _bp@GOTPAGEOFF]
	ldr	x9, [x8]
	ldp	x10, x11, [x9]
	str	x10, [x8]
	add	x8, x9, #16
	str	x8, [x22]
	str	x11, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_21:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x27]
	ldr	x8, [x8]
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_22:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x27]
	ldrsb	x8, [x8]
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_23:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x27]
	ldr	x9, [x22]
	ldr	x10, [x9], #8
	str	x9, [x22]
	str	x8, [x10]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_24:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x27]
	ldr	x9, [x22]
	ldr	x10, [x9], #8
	str	x9, [x22]
	strb	w8, [x10]
	sxtb	x8, w8
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_25:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x27]
	ldr	x9, [x22]
	str	x8, [x9, #-8]!
	str	x9, [x22]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_26:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	orr	x8, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_27:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	eor	x8, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_28:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	and	x8, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_29:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, eq
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_30:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, ne
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_31:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, lt
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_32:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, gt
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_33:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, le
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_34:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	cmp	x9, x8
	cset	w8, ge
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_35:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	lsl	x8, x9, x8
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_36:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	asr	x8, x9, x8
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_37:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	add	x8, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_38:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	sub	x8, x9, x8
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_39:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	mul	x8, x8, x9
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_40:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x8], #8
	str	x8, [x22]
	ldr	x8, [x27]
	sdiv	x8, x9, x8
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_41:                               ;   in Loop: Header=BB10_2 Depth=1
	cmp	x20, #36
	b.eq	LBB10_45
; %bb.42:                               ;   in Loop: Header=BB10_2 Depth=1
	cmp	x20, #35
	b.ne	LBB10_50
; %bb.43:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x0, [x8, #16]
	ldr	w1, [x8, #8]
	ldr	x2, [x8]
	bl	_libmin_memset
	str	x0, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_44:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldr	x9, [x24]
	ldr	x9, [x9, #8]
	add	x8, x8, x9, lsl #3
	ldp	x9, x0, [x8, #-16]
	ldp	x11, x10, [x8, #-32]
	ldp	x8, x12, [x8, #-48]
	stp	x12, x8, [sp, #24]
	stp	x10, x11, [sp, #8]
	str	x9, [sp]
	bl	_libmin_printf
	b	LBB10_46
LBB10_45:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x22]
	ldp	x1, x0, [x8, #8]
	ldr	x2, [x8]
	bl	_libmin_memcmp
LBB10_46:                               ;   in Loop: Header=BB10_2 Depth=1
                                        ; kill: def $w0 killed $w0 def $x0
	sxtw	x8, w0
	str	x8, [x27]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_47:                               ;   in Loop: Header=BB10_2 Depth=1
	ldr	x8, [x8]
	str	x8, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_48:                               ;   in Loop: Header=BB10_2 Depth=1
	add	x8, x8, #8
	str	x8, [x24]
	ldr	x8, [x23]
	b	LBB10_2
LBB10_49:
	ldr	x8, [x22]
	ldr	x8, [x8]
	str	x8, [sp]
Lloh423:
	adrp	x0, l_.str.28@PAGE
Lloh424:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_libmin_printf
	ldr	x8, [x22]
	ldr	x0, [x8]
	b	LBB10_51
LBB10_50:
	str	x20, [sp]
Lloh425:
	adrp	x0, l_.str.29@PAGE
Lloh426:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_libmin_printf
	mov	x0, #-1                         ; =0xffffffffffffffff
LBB10_51:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh412, Lloh413
	.loh AdrpAdd	Lloh410, Lloh411
	.loh AdrpAdd	Lloh408, Lloh409
	.loh AdrpLdrGot	Lloh406, Lloh407
	.loh AdrpLdrGot	Lloh404, Lloh405
	.loh AdrpAdd	Lloh402, Lloh403
	.loh AdrpLdrGot	Lloh400, Lloh401
	.loh AdrpLdrGot	Lloh398, Lloh399
	.loh AdrpLdrGot	Lloh396, Lloh397
	.loh AdrpAdd	Lloh414, Lloh415
	.loh AdrpLdrGotLdr	Lloh416, Lloh417, Lloh418
	.loh AdrpLdrGot	Lloh419, Lloh420
	.loh AdrpLdrGot	Lloh421, Lloh422
	.loh AdrpAdd	Lloh423, Lloh424
	.loh AdrpAdd	Lloh425, Lloh426
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	1, 0x0
lJTI10_0:
	.short	(LBB10_9-LBB10_1)>>2
	.short	(LBB10_10-LBB10_1)>>2
	.short	(LBB10_11-LBB10_1)>>2
	.short	(LBB10_12-LBB10_1)>>2
	.short	(LBB10_14-LBB10_1)>>2
	.short	(LBB10_16-LBB10_1)>>2
	.short	(LBB10_18-LBB10_1)>>2
	.short	(LBB10_19-LBB10_1)>>2
	.short	(LBB10_20-LBB10_1)>>2
	.short	(LBB10_21-LBB10_1)>>2
	.short	(LBB10_22-LBB10_1)>>2
	.short	(LBB10_23-LBB10_1)>>2
	.short	(LBB10_24-LBB10_1)>>2
	.short	(LBB10_25-LBB10_1)>>2
	.short	(LBB10_26-LBB10_1)>>2
	.short	(LBB10_27-LBB10_1)>>2
	.short	(LBB10_28-LBB10_1)>>2
	.short	(LBB10_29-LBB10_1)>>2
	.short	(LBB10_30-LBB10_1)>>2
	.short	(LBB10_31-LBB10_1)>>2
	.short	(LBB10_32-LBB10_1)>>2
	.short	(LBB10_33-LBB10_1)>>2
	.short	(LBB10_34-LBB10_1)>>2
	.short	(LBB10_35-LBB10_1)>>2
	.short	(LBB10_36-LBB10_1)>>2
	.short	(LBB10_37-LBB10_1)>>2
	.short	(LBB10_38-LBB10_1)>>2
	.short	(LBB10_39-LBB10_1)>>2
	.short	(LBB10_40-LBB10_1)>>2
	.short	(LBB10_1-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_44-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_41-LBB10_1)>>2
	.short	(LBB10_49-LBB10_1)>>2
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI11_0:
	.quad	1                               ; 0x1
	.quad	130                             ; 0x82
lCPI11_1:
	.quad	13                              ; 0xd
	.quad	37                              ; 0x25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
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
	cmp	w0, #2
	b.lt	LBB11_19
; %bb.1:
	sub	w19, w0, #1
	add	x20, x1, #8
	ldr	x8, [x20]
	ldrb	w9, [x8]
	cmp	w9, #45
	b.ne	LBB11_8
; %bb.2:
	ldrb	w9, [x8, #1]
	cmp	w9, #115
	b.ne	LBB11_5
; %bb.3:
Lloh427:
	adrp	x8, _assembly@GOTPAGE
Lloh428:
	ldr	x8, [x8, _assembly@GOTPAGEOFF]
	mov	w9, #1                          ; =0x1
Lloh429:
	str	x9, [x8]
	subs	w19, w0, #2
	b.eq	LBB11_19
; %bb.4:
	ldr	x8, [x1, #16]!
	ldrb	w9, [x8]
	mov	x20, x1
	cmp	w9, #45
	b.ne	LBB11_8
LBB11_5:
	ldrb	w8, [x8, #1]
	cmp	w8, #100
	b.ne	LBB11_8
; %bb.6:
Lloh430:
	adrp	x8, _debug@GOTPAGE
Lloh431:
	ldr	x8, [x8, _debug@GOTPAGEOFF]
	mov	w9, #1                          ; =0x1
Lloh432:
	str	x9, [x8]
	subs	w19, w19, #1
	b.eq	LBB11_19
; %bb.7:
	add	x20, x20, #8
LBB11_8:
	adrp	x22, _mhello@PAGE
	ldr	x0, [x22, _mhello@PAGEOFF]
Lloh433:
	adrp	x1, l_.str.31@PAGE
Lloh434:
	add	x1, x1, l_.str.31@PAGEOFF
	bl	_libmin_mopen
Lloh435:
	adrp	x21, _poolsize@GOTPAGE
Lloh436:
	ldr	x21, [x21, _poolsize@GOTPAGEOFF]
	mov	w8, #262144                     ; =0x40000
	str	x8, [x21]
Lloh437:
	adrp	x8, _line@GOTPAGE
Lloh438:
	ldr	x8, [x8, _line@GOTPAGEOFF]
	mov	w9, #1                          ; =0x1
Lloh439:
	str	x9, [x8]
	mov	w0, #262144                     ; =0x40000
	bl	_libmin_malloc
	mov	x8, x0
Lloh440:
	adrp	x24, _text@GOTPAGE
Lloh441:
	ldr	x24, [x24, _text@GOTPAGEOFF]
	str	x0, [x24]
	ldr	x0, [x21]
	cbz	x8, LBB11_20
; %bb.9:
	bl	_libmin_malloc
	mov	x8, x0
Lloh442:
	adrp	x25, _data@GOTPAGE
Lloh443:
	ldr	x25, [x25, _data@GOTPAGEOFF]
	str	x0, [x25]
	ldr	x0, [x21]
	cbz	x8, LBB11_21
; %bb.10:
	bl	_libmin_malloc
	mov	x8, x0
Lloh444:
	adrp	x23, _stack@GOTPAGE
Lloh445:
	ldr	x23, [x23, _stack@GOTPAGEOFF]
	str	x0, [x23]
	ldr	x0, [x21]
	cbz	x8, LBB11_22
; %bb.11:
	bl	_libmin_malloc
Lloh446:
	adrp	x26, _symbols@GOTPAGE
Lloh447:
	ldr	x26, [x26, _symbols@GOTPAGEOFF]
	str	x0, [x26]
	cbz	x0, LBB11_23
; %bb.12:
	ldr	x0, [x24]
	ldr	x2, [x21]
	mov	w1, #0                          ; =0x0
	bl	_libmin_memset
	ldr	x0, [x25]
	ldr	x2, [x21]
	mov	w1, #0                          ; =0x0
	bl	_libmin_memset
	ldr	x0, [x23]
	ldr	x2, [x21]
	mov	w1, #0                          ; =0x0
	bl	_libmin_memset
	ldr	x0, [x26]
	ldr	x2, [x21]
	mov	w1, #0                          ; =0x0
	bl	_libmin_memset
	ldr	x8, [x24]
Lloh448:
	adrp	x9, _old_text@GOTPAGE
Lloh449:
	ldr	x9, [x9, _old_text@GOTPAGEOFF]
Lloh450:
	str	x8, [x9]
Lloh451:
	adrp	x24, _src@GOTPAGE
Lloh452:
	ldr	x24, [x24, _src@GOTPAGEOFF]
Lloh453:
	adrp	x8, l_.str.36@PAGE
Lloh454:
	add	x8, x8, l_.str.36@PAGEOFF
	str	x8, [x24]
	bl	_next
Lloh455:
	adrp	x25, _current_id@GOTPAGE
Lloh456:
	ldr	x25, [x25, _current_id@GOTPAGEOFF]
	ldr	x8, [x25]
	mov	w26, #134                       ; =0x86
	str	x26, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #135                        ; =0x87
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #136                        ; =0x88
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #137                        ; =0x89
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #138                        ; =0x8a
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #139                        ; =0x8b
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #140                        ; =0x8c
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
	mov	w9, #141                        ; =0x8d
	str	x9, [x8]
	bl	_next
	ldr	x8, [x25]
Lloh457:
	adrp	x9, lCPI11_0@PAGE
Lloh458:
	ldr	q0, [x9, lCPI11_0@PAGEOFF]
	str	q0, [sp, #16]                   ; 16-byte Folded Spill
	stur	q0, [x8, #24]
	mov	w9, #30                         ; =0x1e
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #31                         ; =0x1f
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #32                         ; =0x20
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #33                         ; =0x21
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #34                         ; =0x22
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #35                         ; =0x23
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #36                         ; =0x24
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stur	q0, [x8, #24]
	mov	w9, #37                         ; =0x25
	str	x9, [x8, #40]
	bl	_next
	ldr	x8, [x25]
	str	x26, [x8]
	bl	_next
	ldr	x8, [x25]
Lloh459:
	adrp	x25, _idmain@GOTPAGE
Lloh460:
	ldr	x25, [x25, _idmain@GOTPAGEOFF]
	str	x8, [x25]
	ldr	x0, [x21]
	bl	_libmin_malloc
Lloh461:
	adrp	x8, _old_src@GOTPAGE
Lloh462:
	ldr	x8, [x8, _old_src@GOTPAGEOFF]
Lloh463:
	str	x0, [x8]
	str	x0, [x24]
	ldr	x8, [x21]
	cbz	x0, LBB11_24
; %bb.13:
	sub	x1, x8, #1
	ldr	x2, [x22, _mhello@PAGEOFF]
	bl	_libmin_mread
	cmp	x0, #0
	b.le	LBB11_25
; %bb.14:
	ldr	x8, [x24]
	strb	wzr, [x8, x0]
	ldr	x0, [x22, _mhello@PAGEOFF]
	bl	_libmin_mclose
	bl	_next
Lloh464:
	adrp	x22, _token@GOTPAGE
Lloh465:
	ldr	x22, [x22, _token@GOTPAGEOFF]
	ldr	x8, [x22]
	cmp	x8, #1
	b.lt	LBB11_16
LBB11_15:                               ; =>This Inner Loop Header: Depth=1
	bl	_global_declaration
	ldr	x8, [x22]
	cmp	x8, #0
	b.gt	LBB11_15
LBB11_16:
	ldr	x8, [x25]
	ldr	x8, [x8, #40]
Lloh466:
	adrp	x9, _pc@GOTPAGE
Lloh467:
	ldr	x9, [x9, _pc@GOTPAGEOFF]
Lloh468:
	str	x8, [x9]
	cbz	x8, LBB11_26
; %bb.17:
Lloh469:
	adrp	x8, _assembly@GOTPAGE
Lloh470:
	ldr	x8, [x8, _assembly@GOTPAGEOFF]
Lloh471:
	ldr	x8, [x8]
	cbz	x8, LBB11_29
; %bb.18:
	mov	w0, #0                          ; =0x0
	b	LBB11_28
LBB11_19:
Lloh472:
	adrp	x0, l_.str.30@PAGE
Lloh473:
	add	x0, x0, l_.str.30@PAGEOFF
	b	LBB11_27
LBB11_20:
	str	x0, [sp]
Lloh474:
	adrp	x0, l_.str.32@PAGE
Lloh475:
	add	x0, x0, l_.str.32@PAGEOFF
	b	LBB11_27
LBB11_21:
	str	x0, [sp]
Lloh476:
	adrp	x0, l_.str.33@PAGE
Lloh477:
	add	x0, x0, l_.str.33@PAGEOFF
	b	LBB11_27
LBB11_22:
	str	x0, [sp]
Lloh478:
	adrp	x0, l_.str.34@PAGE
Lloh479:
	add	x0, x0, l_.str.34@PAGEOFF
	b	LBB11_27
LBB11_23:
	ldr	x8, [x21]
	str	x8, [sp]
Lloh480:
	adrp	x0, l_.str.35@PAGE
Lloh481:
	add	x0, x0, l_.str.35@PAGEOFF
	b	LBB11_27
LBB11_24:
	str	x8, [sp]
Lloh482:
	adrp	x0, l_.str.37@PAGE
Lloh483:
	add	x0, x0, l_.str.37@PAGEOFF
	b	LBB11_27
LBB11_25:
	str	x0, [sp]
Lloh484:
	adrp	x0, l_.str.38@PAGE
Lloh485:
	add	x0, x0, l_.str.38@PAGEOFF
	b	LBB11_27
LBB11_26:
Lloh486:
	adrp	x0, l_.str.39@PAGE
Lloh487:
	add	x0, x0, l_.str.39@PAGEOFF
LBB11_27:
	bl	_libmin_printf
	mov	w0, #-1                         ; =0xffffffff
LBB11_28:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB11_29:
	ldr	x8, [x23]
	ldr	x9, [x21]
	add	x8, x9, x8
Lloh488:
	adrp	x9, lCPI11_1@PAGE
Lloh489:
	ldr	q0, [x9, lCPI11_1@PAGEOFF]
	mov	x9, x8
	str	q0, [x9, #-16]!
	str	x9, [x8, #-40]!
	mov	w9, w19
	stp	x20, x9, [x8, #8]
Lloh490:
	adrp	x9, _sp@GOTPAGE
Lloh491:
	ldr	x9, [x9, _sp@GOTPAGEOFF]
Lloh492:
	str	x8, [x9]
	bl	_eval
	bl	_libmin_success
	mov	w0, #9                          ; =0x9
	b	LBB11_28
	.loh AdrpLdrGotStr	Lloh427, Lloh428, Lloh429
	.loh AdrpLdrGotStr	Lloh430, Lloh431, Lloh432
	.loh AdrpLdrGot	Lloh440, Lloh441
	.loh AdrpLdrGotStr	Lloh437, Lloh438, Lloh439
	.loh AdrpLdrGot	Lloh435, Lloh436
	.loh AdrpAdd	Lloh433, Lloh434
	.loh AdrpLdrGot	Lloh442, Lloh443
	.loh AdrpLdrGot	Lloh444, Lloh445
	.loh AdrpLdrGot	Lloh446, Lloh447
	.loh AdrpLdrGotStr	Lloh461, Lloh462, Lloh463
	.loh AdrpLdrGot	Lloh459, Lloh460
	.loh AdrpLdr	Lloh457, Lloh458
	.loh AdrpLdrGot	Lloh455, Lloh456
	.loh AdrpAdd	Lloh453, Lloh454
	.loh AdrpLdrGot	Lloh451, Lloh452
	.loh AdrpLdrGotStr	Lloh448, Lloh449, Lloh450
	.loh AdrpLdrGot	Lloh464, Lloh465
	.loh AdrpLdrGotStr	Lloh466, Lloh467, Lloh468
	.loh AdrpLdrGotLdr	Lloh469, Lloh470, Lloh471
	.loh AdrpAdd	Lloh472, Lloh473
	.loh AdrpAdd	Lloh474, Lloh475
	.loh AdrpAdd	Lloh476, Lloh477
	.loh AdrpAdd	Lloh478, Lloh479
	.loh AdrpAdd	Lloh480, Lloh481
	.loh AdrpAdd	Lloh482, Lloh483
	.loh AdrpAdd	Lloh484, Lloh485
	.loh AdrpAdd	Lloh486, Lloh487
	.loh AdrpLdrGotStr	Lloh490, Lloh491, Lloh492
	.loh AdrpLdr	Lloh488, Lloh489
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	___hello                        ; @__hello
___hello:
	.ascii	"#include <stdio.h>\n\nint fibonacci(int i) {\n    if (i <= 1) {\n        return 1;\n    }\n    return fibonacci(i-1) + fibonacci(i-2);\n}\n\nint main()\n{\n    int i;\n    i = 0;\n    while (i <= 10) {\n        printf(\"fibonacci(%2d) = %d\\n\", i, fibonacci(i));\n        i = i + 1;\n    }\n    return 0;\n}\n"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"hello.c"

	.section	__DATA,__data
	.globl	_hello                          ; @hello
	.p2align	3, 0x0
_hello:
	.quad	l_.str
	.quad	288                             ; 0x120
	.quad	___hello
	.long	0                               ; 0x0
	.space	4

	.globl	_mhello                         ; @mhello
	.p2align	3, 0x0
_mhello:
	.quad	_hello

	.comm	_src,8,3                        ; @src
	.comm	_token,8,3                      ; @token
	.comm	_assembly,8,3                   ; @assembly
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"%ld: %.*s"

	.comm	_line,8,3                       ; @line
	.comm	_old_src,8,3                    ; @old_src
	.comm	_old_text,8,3                   ; @old_text
	.comm	_text,8,3                       ; @text
l_.str.2:                               ; @.str.2
	.asciz	"%8.4s"

l_.str.3:                               ; @.str.3
	.asciz	"LEA ,IMM ,JMP ,CALL,JZ  ,JNZ ,ENT ,ADJ ,LEV ,LI  ,LC  ,SI  ,SC  ,PUSH,OR  ,XOR ,AND ,EQ  ,NE  ,LT  ,GT  ,LE  ,GE  ,SHL ,SHR ,ADD ,SUB ,MUL ,DIV ,MOD ,OPEN,READ,CLOS,PRTF,MALC,MSET,MCMP,EXIT"

l_.str.4:                               ; @.str.4
	.asciz	" %ld\n"

l_.str.5:                               ; @.str.5
	.asciz	"\n"

	.comm	_symbols,8,3                    ; @symbols
	.comm	_current_id,8,3                 ; @current_id
	.comm	_token_val,8,3                  ; @token_val
	.comm	_data,8,3                       ; @data
l_.str.6:                               ; @.str.6
	.asciz	"%ld: expected token: %ld\n"

l_.str.7:                               ; @.str.7
	.asciz	"%ld: unexpected token EOF of expression\n"

	.comm	_expr_type,8,3                  ; @expr_type
l_.str.8:                               ; @.str.8
	.asciz	"%ld: bad function call\n"

	.comm	_index_of_bp,8,3                ; @index_of_bp
l_.str.9:                               ; @.str.9
	.asciz	"%ld: undefined variable\n"

l_.str.10:                              ; @.str.10
	.asciz	"%ld: bad dereference\n"

l_.str.11:                              ; @.str.11
	.asciz	"%ld: bad address of\n"

l_.str.12:                              ; @.str.12
	.asciz	"%ld: bad lvalue of pre-increment\n"

l_.str.13:                              ; @.str.13
	.asciz	"%ld: bad expression\n"

l_.str.14:                              ; @.str.14
	.asciz	"%ld: bad lvalue in assignment\n"

l_.str.15:                              ; @.str.15
	.asciz	"%ld: missing colon in conditional\n"

l_.str.16:                              ; @.str.16
	.asciz	"%ld: bad value in increment\n"

l_.str.17:                              ; @.str.17
	.asciz	"%ld: pointer type expected\n"

l_.str.18:                              ; @.str.18
	.asciz	"%ld: compiler error, token = %ld\n"

l_.str.19:                              ; @.str.19
	.asciz	"%ld: bad enum identifier %ld\n"

l_.str.20:                              ; @.str.20
	.asciz	"%ld: bad enum initializer\n"

l_.str.21:                              ; @.str.21
	.asciz	"%ld: bad parameter declaration\n"

l_.str.22:                              ; @.str.22
	.asciz	"%ld: duplicate parameter declaration\n"

	.comm	_basetype,8,3                   ; @basetype
l_.str.23:                              ; @.str.23
	.asciz	"%ld: bad local declaration\n"

l_.str.24:                              ; @.str.24
	.asciz	"%ld: duplicate local declaration\n"

l_.str.25:                              ; @.str.25
	.asciz	"%ld: bad global declaration\n"

l_.str.26:                              ; @.str.26
	.asciz	"%ld: duplicate global declaration\n"

	.comm	_cycle,8,3                      ; @cycle
	.comm	_pc,8,3                         ; @pc
	.comm	_debug,8,3                      ; @debug
l_.str.27:                              ; @.str.27
	.asciz	"%ld> %.4s"

	.comm	_ax,8,3                         ; @ax
	.comm	_sp,8,3                         ; @sp
	.comm	_bp,8,3                         ; @bp
l_.str.28:                              ; @.str.28
	.asciz	"exit(%ld)"

l_.str.29:                              ; @.str.29
	.asciz	"unknown instruction:%ld\n"

l_.str.30:                              ; @.str.30
	.asciz	"usage: xc [-s] [-d] file ...\n"

l_.str.31:                              ; @.str.31
	.asciz	"r"

	.comm	_poolsize,8,3                   ; @poolsize
l_.str.32:                              ; @.str.32
	.asciz	"could not malloc(%ld) for text area\n"

l_.str.33:                              ; @.str.33
	.asciz	"could not malloc(%ld) for data area\n"

	.comm	_stack,8,3                      ; @stack
l_.str.34:                              ; @.str.34
	.asciz	"could not malloc(%ld) for stack area\n"

l_.str.35:                              ; @.str.35
	.asciz	"could not malloc(%ld) for symbol table\n"

l_.str.36:                              ; @.str.36
	.asciz	"char else enum if int return sizeof while open read close printf malloc memset memcmp exit void main"

	.comm	_idmain,8,3                     ; @idmain
l_.str.37:                              ; @.str.37
	.asciz	"could not malloc(%ld) for source area\n"

l_.str.38:                              ; @.str.38
	.asciz	"read() returned %ld\n"

l_.str.39:                              ; @.str.39
	.asciz	"main() not defined\n"

.subsections_via_symbols
