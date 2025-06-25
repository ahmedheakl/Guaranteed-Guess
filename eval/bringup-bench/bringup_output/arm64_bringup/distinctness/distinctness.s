	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_isDistinct                     ; -- Begin function isDistinct
	.p2align	2
_isDistinct:                            ; @isDistinct
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1552
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	mov	x19, x1
	mov	x20, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	mov	w21, #2147483647                ; =0x7fffffff
	str	w21, [x1]
Lloh3:
	adrp	x1, l_.memset_pattern@PAGE
Lloh4:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	add	x22, sp, #8
	add	x0, sp, #8
	mov	w2, #1536                       ; =0x600
	bl	_memset_pattern16
	mov	w11, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	ldr	w14, [x20]
	str	w14, [sp, #8]
	mov	w9, #1                          ; =0x1
	mov	w8, #12                         ; =0xc
	cmp	w14, w21
	b.ne	LBB0_3
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x12, x9, #1
	cmp	x12, #128
	b.eq	LBB0_12
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	cmp	x9, #126
	cset	w11, hi
	ldr	w14, [sp, #8]
	mov	x9, x12
	cmp	w14, w21
	b.eq	LBB0_1
LBB0_3:
	mov	w13, #0                         ; =0x0
	ldp	w16, w15, [sp, #12]
	ldr	w12, [x20, x9, lsl #2]
	b	LBB0_6
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	cmp	w15, w21
	b.eq	LBB0_10
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	x13, x15
	smaddl	x14, w15, w8, x22
	ldp	w16, w15, [x14, #4]
	ldr	w14, [x14]
	cmp	w14, w21
	b.eq	LBB0_1
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w12, w14
	b.gt	LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	b.ge	LBB0_11
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=1
	mov	x15, x16
	cmp	w16, w21
	b.ne	LBB0_5
; %bb.9:
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	sxtw	x10, w10
	add	x10, x10, #1
	smaddl	x11, w13, w8, x22
	str	w10, [x11, #4]
	mul	x11, x10, x8
	str	w12, [x22, x11]
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	b	LBB0_1
LBB0_10:
	sxtw	x10, w10
	add	x10, x10, #1
	mul	x11, x10, x8
	str	w12, [x22, x11]
	smaddl	x11, w13, w8, x22
	str	w10, [x11, #8]
                                        ; kill: def $w10 killed $w10 killed $x10 def $x10
	b	LBB0_1
LBB0_11:
	str	w12, [x19]
	b	LBB0_13
LBB0_12:
	mov	w11, #1                         ; =0x1
LBB0_13:
	ldur	x8, [x29, #-56]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_15
; %bb.14:
	and	w0, w11, #0x1
	add	sp, sp, #1552
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB0_15:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1552
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
Lloh11:
	adrp	x1, l_.memset_pattern@PAGE
Lloh12:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	add	x21, sp, #8
	add	x0, sp, #8
	mov	w2, #1536                       ; =0x600
	bl	_memset_pattern16
	mov	w19, #0                         ; =0x0
	mov	w12, #0                         ; =0x0
Lloh13:
	adrp	x8, _elements1@PAGE
Lloh14:
	ldr	w14, [x8, _elements1@PAGEOFF]
	str	w14, [sp, #8]
	mov	w11, #1                         ; =0x1
	mov	w8, #2147483647                 ; =0x7fffffff
Lloh15:
	adrp	x9, _elements1@PAGE
Lloh16:
	add	x9, x9, _elements1@PAGEOFF
	mov	w10, #12                        ; =0xc
	cmp	w14, w8
	b.ne	LBB1_3
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x13, x11, #1
	cmp	x13, #128
	b.eq	LBB1_11
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	cmp	x11, #126
	cset	w19, hi
	ldr	w14, [sp, #8]
	mov	x11, x13
	cmp	w14, w8
	b.eq	LBB1_1
LBB1_3:
	mov	w13, #0                         ; =0x0
	ldp	w16, w15, [sp, #12]
	ldr	w20, [x9, x11, lsl #2]
	b	LBB1_6
LBB1_4:                                 ;   in Loop: Header=BB1_6 Depth=1
	cmp	w15, w8
	b.eq	LBB1_10
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=1
	mov	x13, x15
	smaddl	x14, w15, w10, x21
	ldp	w16, w15, [x14, #4]
	ldr	w14, [x14]
	cmp	w14, w8
	b.eq	LBB1_1
LBB1_6:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w20, w14
	b.gt	LBB1_4
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=1
	b.ge	LBB1_12
; %bb.8:                                ;   in Loop: Header=BB1_6 Depth=1
	mov	x15, x16
	cmp	w16, w8
	b.ne	LBB1_5
; %bb.9:
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	sxtw	x12, w12
	add	x12, x12, #1
	smaddl	x13, w13, w10, x21
	str	w12, [x13, #4]
	mul	x13, x12, x10
	str	w20, [x21, x13]
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	b	LBB1_1
LBB1_10:
	sxtw	x12, w12
	add	x12, x12, #1
	mul	x14, x12, x10
	str	w20, [x21, x14]
	smaddl	x13, w13, w10, x21
	str	w12, [x13, #8]
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	b	LBB1_1
LBB1_11:
	mov	w19, #1                         ; =0x1
	mov	w20, #2147483647                ; =0x7fffffff
LBB1_12:
Lloh17:
	adrp	x1, l_.memset_pattern@PAGE
Lloh18:
	add	x1, x1, l_.memset_pattern@PAGEOFF
	add	x21, sp, #8
	add	x0, sp, #8
	mov	w2, #1536                       ; =0x600
	bl	_memset_pattern16
	mov	w22, #0                         ; =0x0
	mov	w12, #0                         ; =0x0
Lloh19:
	adrp	x8, _elements2@PAGE
Lloh20:
	ldr	w14, [x8, _elements2@PAGEOFF]
	str	w14, [sp, #8]
	mov	w11, #1                         ; =0x1
	mov	w8, #2147483647                 ; =0x7fffffff
Lloh21:
	adrp	x9, _elements2@PAGE
Lloh22:
	add	x9, x9, _elements2@PAGEOFF
	mov	w10, #12                        ; =0xc
	cmp	w14, w8
	b.ne	LBB1_15
LBB1_13:                                ; =>This Inner Loop Header: Depth=1
	add	x13, x11, #1
	cmp	x13, #128
	b.eq	LBB1_23
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=1
	cmp	x11, #126
	cset	w22, hi
	ldr	w14, [sp, #8]
	mov	x11, x13
	cmp	w14, w8
	b.eq	LBB1_13
LBB1_15:
	mov	w13, #0                         ; =0x0
	ldp	w16, w15, [sp, #12]
	ldr	w23, [x9, x11, lsl #2]
	b	LBB1_18
LBB1_16:                                ;   in Loop: Header=BB1_18 Depth=1
	cmp	w15, w8
	b.eq	LBB1_22
LBB1_17:                                ;   in Loop: Header=BB1_18 Depth=1
	mov	x13, x15
	smaddl	x14, w15, w10, x21
	ldp	w16, w15, [x14, #4]
	ldr	w14, [x14]
	cmp	w14, w8
	b.eq	LBB1_13
LBB1_18:                                ; =>This Inner Loop Header: Depth=1
	cmp	w23, w14
	b.gt	LBB1_16
; %bb.19:                               ;   in Loop: Header=BB1_18 Depth=1
	b.ge	LBB1_24
; %bb.20:                               ;   in Loop: Header=BB1_18 Depth=1
	mov	x15, x16
	cmp	w16, w8
	b.ne	LBB1_17
; %bb.21:
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	sxtw	x12, w12
	add	x12, x12, #1
	smaddl	x13, w13, w10, x21
	str	w12, [x13, #4]
	mul	x13, x12, x10
	str	w23, [x21, x13]
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	b	LBB1_13
LBB1_22:
	sxtw	x12, w12
	add	x12, x12, #1
	mul	x14, x12, x10
	str	w23, [x21, x14]
	smaddl	x13, w13, w10, x21
	str	w12, [x13, #8]
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	b	LBB1_13
LBB1_23:
	mov	w22, #1                         ; =0x1
	mov	w23, #2147483647                ; =0x7fffffff
LBB1_24:
	tbz	w19, #0, LBB1_27
; %bb.25:
Lloh23:
	adrp	x0, l_.str@PAGE
Lloh24:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	tbnz	w22, #0, LBB1_28
LBB1_26:
	str	x23, [sp]
Lloh25:
	adrp	x0, l_.str.3@PAGE
Lloh26:
	add	x0, x0, l_.str.3@PAGEOFF
	b	LBB1_29
LBB1_27:
	str	x20, [sp]
Lloh27:
	adrp	x0, l_.str.1@PAGE
Lloh28:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	tbz	w22, #0, LBB1_26
LBB1_28:
Lloh29:
	adrp	x0, l_.str.2@PAGE
Lloh30:
	add	x0, x0, l_.str.2@PAGEOFF
LBB1_29:
	bl	_libmin_printf
	bl	_libmin_success
	ldur	x8, [x29, #-56]
Lloh31:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh32:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh33:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_31
; %bb.30:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1552
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB1_31:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdr	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdr	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpLdrGotLdr	Lloh31, Lloh32, Lloh33
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_elements1                      ; @elements1
	.p2align	2, 0x0
_elements1:
	.long	25                              ; 0x19
	.long	97                              ; 0x61
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	36                              ; 0x24
	.long	22                              ; 0x16
	.long	74                              ; 0x4a
	.long	3                               ; 0x3
	.long	9                               ; 0x9
	.long	12                              ; 0xc
	.long	30                              ; 0x1e
	.long	81                              ; 0x51
	.long	63                              ; 0x3f
	.long	148                             ; 0x94
	.long	99                              ; 0x63
	.long	13                              ; 0xd
	.long	64                              ; 0x40
	.long	49                              ; 0x31
	.long	80                              ; 0x50
	.long	15                              ; 0xf
	.long	125                             ; 0x7d
	.long	197                             ; 0xc5
	.long	101                             ; 0x65
	.long	100                             ; 0x64
	.long	136                             ; 0x88
	.long	122                             ; 0x7a
	.long	174                             ; 0xae
	.long	103                             ; 0x67
	.long	109                             ; 0x6d
	.long	112                             ; 0x70
	.long	130                             ; 0x82
	.long	181                             ; 0xb5
	.long	163                             ; 0xa3
	.long	1148                            ; 0x47c
	.long	199                             ; 0xc7
	.long	113                             ; 0x71
	.long	164                             ; 0xa4
	.long	149                             ; 0x95
	.long	180                             ; 0xb4
	.long	115                             ; 0x73
	.long	225                             ; 0xe1
	.long	297                             ; 0x129
	.long	201                             ; 0xc9
	.long	200                             ; 0xc8
	.long	236                             ; 0xec
	.long	222                             ; 0xde
	.long	274                             ; 0x112
	.long	203                             ; 0xcb
	.long	209                             ; 0xd1
	.long	212                             ; 0xd4
	.long	230                             ; 0xe6
	.long	281                             ; 0x119
	.long	263                             ; 0x107
	.long	2148                            ; 0x864
	.long	299                             ; 0x12b
	.long	213                             ; 0xd5
	.long	264                             ; 0x108
	.long	249                             ; 0xf9
	.long	280                             ; 0x118
	.long	215                             ; 0xd7
	.long	325                             ; 0x145
	.long	397                             ; 0x18d
	.long	301                             ; 0x12d
	.long	300                             ; 0x12c
	.long	336                             ; 0x150
	.long	322                             ; 0x142
	.long	374                             ; 0x176
	.long	303                             ; 0x12f
	.long	309                             ; 0x135
	.long	312                             ; 0x138
	.long	330                             ; 0x14a
	.long	381                             ; 0x17d
	.long	363                             ; 0x16b
	.long	3148                            ; 0xc4c
	.long	399                             ; 0x18f
	.long	313                             ; 0x139
	.long	364                             ; 0x16c
	.long	349                             ; 0x15d
	.long	380                             ; 0x17c
	.long	315                             ; 0x13b
	.long	425                             ; 0x1a9
	.long	497                             ; 0x1f1
	.long	401                             ; 0x191
	.long	400                             ; 0x190
	.long	436                             ; 0x1b4
	.long	422                             ; 0x1a6
	.long	474                             ; 0x1da
	.long	403                             ; 0x193
	.long	409                             ; 0x199
	.long	412                             ; 0x19c
	.long	430                             ; 0x1ae
	.long	481                             ; 0x1e1
	.long	463                             ; 0x1cf
	.long	4148                            ; 0x1034
	.long	499                             ; 0x1f3
	.long	413                             ; 0x19d
	.long	464                             ; 0x1d0
	.long	449                             ; 0x1c1
	.long	480                             ; 0x1e0
	.long	415                             ; 0x19f
	.long	525                             ; 0x20d
	.long	597                             ; 0x255
	.long	501                             ; 0x1f5
	.long	500                             ; 0x1f4
	.long	536                             ; 0x218
	.long	522                             ; 0x20a
	.long	574                             ; 0x23e
	.long	503                             ; 0x1f7
	.long	509                             ; 0x1fd
	.long	512                             ; 0x200
	.long	530                             ; 0x212
	.long	581                             ; 0x245
	.long	563                             ; 0x233
	.long	5148                            ; 0x141c
	.long	599                             ; 0x257
	.long	513                             ; 0x201
	.long	564                             ; 0x234
	.long	549                             ; 0x225
	.long	580                             ; 0x244
	.long	515                             ; 0x203
	.long	625                             ; 0x271
	.long	697                             ; 0x2b9
	.long	601                             ; 0x259
	.long	600                             ; 0x258
	.long	636                             ; 0x27c
	.long	622                             ; 0x26e
	.long	674                             ; 0x2a2
	.long	603                             ; 0x25b

	.globl	_elements2                      ; @elements2
	.p2align	2, 0x0
_elements2:
	.long	25                              ; 0x19
	.long	97                              ; 0x61
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	36                              ; 0x24
	.long	22                              ; 0x16
	.long	74                              ; 0x4a
	.long	3                               ; 0x3
	.long	99                              ; 0x63
	.long	12                              ; 0xc
	.long	30                              ; 0x1e
	.long	81                              ; 0x51
	.long	63                              ; 0x3f
	.long	148                             ; 0x94
	.long	99                              ; 0x63
	.long	13                              ; 0xd
	.long	64                              ; 0x40
	.long	49                              ; 0x31
	.long	99                              ; 0x63
	.long	15                              ; 0xf
	.long	125                             ; 0x7d
	.long	197                             ; 0xc5
	.long	101                             ; 0x65
	.long	100                             ; 0x64
	.long	136                             ; 0x88
	.long	122                             ; 0x7a
	.long	174                             ; 0xae
	.long	103                             ; 0x67
	.long	199                             ; 0xc7
	.long	112                             ; 0x70
	.long	130                             ; 0x82
	.long	181                             ; 0xb5
	.long	163                             ; 0xa3
	.long	1148                            ; 0x47c
	.long	119                             ; 0x77
	.long	113                             ; 0x71
	.long	164                             ; 0xa4
	.long	149                             ; 0x95
	.long	199                             ; 0xc7
	.long	115                             ; 0x73
	.long	225                             ; 0xe1
	.long	297                             ; 0x129
	.long	201                             ; 0xc9
	.long	200                             ; 0xc8
	.long	236                             ; 0xec
	.long	222                             ; 0xde
	.long	274                             ; 0x112
	.long	203                             ; 0xcb
	.long	299                             ; 0x12b
	.long	212                             ; 0xd4
	.long	230                             ; 0xe6
	.long	281                             ; 0x119
	.long	263                             ; 0x107
	.long	2148                            ; 0x864
	.long	229                             ; 0xe5
	.long	213                             ; 0xd5
	.long	264                             ; 0x108
	.long	249                             ; 0xf9
	.long	299                             ; 0x12b
	.long	215                             ; 0xd7
	.long	325                             ; 0x145
	.long	397                             ; 0x18d
	.long	301                             ; 0x12d
	.long	300                             ; 0x12c
	.long	336                             ; 0x150
	.long	322                             ; 0x142
	.long	374                             ; 0x176
	.long	303                             ; 0x12f
	.long	399                             ; 0x18f
	.long	312                             ; 0x138
	.long	330                             ; 0x14a
	.long	381                             ; 0x17d
	.long	363                             ; 0x16b
	.long	3148                            ; 0xc4c
	.long	339                             ; 0x153
	.long	313                             ; 0x139
	.long	364                             ; 0x16c
	.long	349                             ; 0x15d
	.long	399                             ; 0x18f
	.long	315                             ; 0x13b
	.long	425                             ; 0x1a9
	.long	497                             ; 0x1f1
	.long	401                             ; 0x191
	.long	400                             ; 0x190
	.long	436                             ; 0x1b4
	.long	422                             ; 0x1a6
	.long	474                             ; 0x1da
	.long	403                             ; 0x193
	.long	409                             ; 0x199
	.long	412                             ; 0x19c
	.long	430                             ; 0x1ae
	.long	481                             ; 0x1e1
	.long	463                             ; 0x1cf
	.long	4148                            ; 0x1034
	.long	499                             ; 0x1f3
	.long	413                             ; 0x19d
	.long	464                             ; 0x1d0
	.long	449                             ; 0x1c1
	.long	480                             ; 0x1e0
	.long	415                             ; 0x19f
	.long	525                             ; 0x20d
	.long	597                             ; 0x255
	.long	501                             ; 0x1f5
	.long	500                             ; 0x1f4
	.long	536                             ; 0x218
	.long	522                             ; 0x20a
	.long	574                             ; 0x23e
	.long	503                             ; 0x1f7
	.long	509                             ; 0x1fd
	.long	512                             ; 0x200
	.long	530                             ; 0x212
	.long	581                             ; 0x245
	.long	563                             ; 0x233
	.long	5148                            ; 0x141c
	.long	599                             ; 0x257
	.long	513                             ; 0x201
	.long	564                             ; 0x234
	.long	549                             ; 0x225
	.long	580                             ; 0x244
	.long	515                             ; 0x203
	.long	625                             ; 0x271
	.long	697                             ; 0x2b9
	.long	601                             ; 0x259
	.long	600                             ; 0x258
	.long	636                             ; 0x27c
	.long	622                             ; 0x26e
	.long	674                             ; 0x2a2
	.long	603                             ; 0x25b

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"The elements of `elements1' are distinct\n"

l_.str.1:                               ; @.str.1
	.asciz	"The elements of `elements1' are not distinct (e.g., %d is duplicated)\n"

l_.str.2:                               ; @.str.2
	.asciz	"The elements of `elements2' are distinct\n"

l_.str.3:                               ; @.str.3
	.asciz	"The elements of `elements2' are not distinct (e.g., %d is duplicated)\n"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; @.memset_pattern
l_.memset_pattern:
	.long	2147483647                      ; 0x7fffffff
	.long	2147483647                      ; 0x7fffffff
	.long	2147483647                      ; 0x7fffffff
	.long	2147483647                      ; 0x7fffffff

.subsections_via_symbols
