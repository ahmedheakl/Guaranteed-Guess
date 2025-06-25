	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_search                         ; -- Begin function search
	.p2align	2
_search:                                ; @search
	.cfi_startproc
; %bb.0:
	mov	w8, #1                          ; =0x1
	subs	w9, w3, #1
	b.le	LBB0_2
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	lsl	w8, w8, #8
	sxtw	x10, w8
	add	x10, x10, x10, lsl #30
	lsr	x11, x10, #63
	asr	x10, x10, #61
	add	w10, w10, w11
	add	w10, w10, w10, lsl #31
	add	w8, w8, w10
	subs	w9, w9, #1
	b.ne	LBB0_1
LBB0_2:
	cmp	w3, #1
	b.lt	LBB0_6
; %bb.3:
	mov	w10, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	mov	x11, x0
	mov	w12, w3
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w13, [x2], #1
	add	w9, w13, w9, lsl #8
	sxtw	x13, w9
	add	x13, x13, x13, lsl #30
	lsr	x14, x13, #63
	asr	x13, x13, #61
	add	w13, w13, w14
	add	w13, w13, w13, lsl #31
	add	w9, w9, w13
	ldrsb	w13, [x11], #1
	add	w10, w13, w10, lsl #8
	sxtw	x13, w10
	add	x13, x13, x13, lsl #30
	lsr	x14, x13, #63
	asr	x13, x13, #61
	add	w13, w13, w14
	add	w13, w13, w13, lsl #31
	add	w10, w10, w13
	subs	x12, x12, #1
	b.ne	LBB0_4
; %bb.5:
	subs	w11, w1, w3
	b.pl	LBB0_7
	b	LBB0_11
LBB0_6:
	mov	w9, #0                          ; =0x0
	mov	w10, #0                         ; =0x0
	subs	w11, w1, w3
	b.mi	LBB0_11
LBB0_7:
	mov	x12, #0                         ; =0x0
	add	w13, w11, #1
	mov	w14, #2147483647                ; =0x7fffffff
	add	x15, x0, w3, sxtw
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=1
	add	x12, x12, #1
	cmp	x13, x12
	b.eq	LBB0_11
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w9, w10
	cset	w16, eq
	str	w16, [x4, x12, lsl #2]
	cmp	x12, x11
	b.hs	LBB0_8
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=1
	ldrsb	w16, [x0, x12]
	ldrsb	w17, [x15, x12]
	msub	w10, w8, w16, w10
	add	w10, w17, w10, lsl #8
	sxtw	x16, w10
	add	x16, x16, x16, lsl #30
	lsr	x17, x16, #63
	asr	x16, x16, #61
	add	w16, w16, w17
	add	w16, w16, w16, lsl #31
	add	w10, w10, w16
	add	w16, w10, w14
	cmp	w10, #0
	csel	w10, w16, w10, lt
	b	LBB0_8
LBB0_11:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
Lloh0:
	adrp	x23, _inp_txt@PAGE
Lloh1:
	add	x23, x23, _inp_txt@PAGEOFF
	mov	x0, x23
	bl	_libmin_strlen
	mov	x19, x0
Lloh2:
	adrp	x22, _inp_pat@PAGE
Lloh3:
	add	x22, x22, _inp_pat@PAGEOFF
	mov	x0, x22
	bl	_libmin_strlen
	mov	x21, x0
	stp	x19, x0, [sp]
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	lsl	x24, x19, #32
	mov	x26, #4294967296                ; =0x100000000
	add	x8, x24, x26
	asr	x0, x8, #32
	bl	_libmin_malloc
	mov	x20, x0
	cmp	w19, #1
	b.lt	LBB1_5
; %bb.1:
	mov	x9, #0                          ; =0x0
	and	x8, x19, #0xffffffff
	cmp	x8, #8
	b.lo	LBB1_13
; %bb.2:
	sub	x10, x20, x23
	cmp	x10, #64
	b.lo	LBB1_13
; %bb.3:
	cmp	x8, #64
	b.hs	LBB1_6
; %bb.4:
	mov	x9, #0                          ; =0x0
	b	LBB1_10
LBB1_5:
	mov	x8, #0                          ; =0x0
	b	LBB1_15
LBB1_6:
	and	x10, x19, #0x3f
	sub	x9, x8, x10
	add	x11, x20, #32
Lloh6:
	adrp	x12, _inp_txt@PAGE+32
Lloh7:
	add	x12, x12, _inp_txt@PAGEOFF+32
	mov	x13, x9
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x12, #-32]
	ldp	q2, q3, [x12], #64
	stp	q0, q1, [x11, #-32]
	stp	q2, q3, [x11], #64
	subs	x13, x13, #64
	b.ne	LBB1_7
; %bb.8:
	cbz	x10, LBB1_15
; %bb.9:
	cmp	x10, #8
	b.lo	LBB1_13
LBB1_10:
	mov	x13, x9
	and	x10, x19, #0x7
	add	x11, x23, x9
	add	x12, x20, x9
	sub	x9, x8, x10
	add	x13, x13, x10
	sub	x13, x13, x8
LBB1_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x11], #8
	str	d0, [x12], #8
	adds	x13, x13, #8
	b.ne	LBB1_11
; %bb.12:
	cbz	x10, LBB1_15
LBB1_13:
	add	x10, x20, x9
	add	x11, x23, x9
	sub	x9, x8, x9
LBB1_14:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11], #1
	strb	w12, [x10], #1
	subs	x9, x9, #1
	b.ne	LBB1_14
LBB1_15:
	strb	wzr, [x20, x8]
	lsl	x25, x21, #32
	add	x8, x25, x26
	asr	x0, x8, #32
	bl	_libmin_malloc
	mov	x23, x0
	cmp	w21, #1
	b.lt	LBB1_20
; %bb.16:
	mov	x9, #0                          ; =0x0
	and	x8, x21, #0xffffffff
	cmp	x8, #8
	b.lo	LBB1_28
; %bb.17:
	sub	x10, x23, x22
	cmp	x10, #64
	b.lo	LBB1_28
; %bb.18:
	cmp	x8, #64
	b.hs	LBB1_21
; %bb.19:
	mov	x9, #0                          ; =0x0
	b	LBB1_25
LBB1_20:
	mov	x8, #0                          ; =0x0
	b	LBB1_30
LBB1_21:
	and	x10, x21, #0x3f
	sub	x9, x8, x10
	add	x11, x22, #32
	add	x12, x23, #32
	mov	x13, x9
LBB1_22:                                ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x11, #-32]
	ldp	q2, q3, [x11], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x13, x13, #64
	b.ne	LBB1_22
; %bb.23:
	cbz	x10, LBB1_30
; %bb.24:
	cmp	x10, #8
	b.lo	LBB1_28
LBB1_25:
	mov	x13, x9
	and	x10, x21, #0x7
	add	x11, x22, x9
	add	x12, x23, x9
	sub	x9, x8, x10
	add	x13, x13, x10
	sub	x13, x13, x8
LBB1_26:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x11], #8
	str	d0, [x12], #8
	adds	x13, x13, #8
	b.ne	LBB1_26
; %bb.27:
	cbz	x10, LBB1_30
LBB1_28:
	add	x10, x23, x9
	add	x11, x22, x9
	sub	x9, x8, x9
LBB1_29:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11], #1
	strb	w12, [x10], #1
	subs	x9, x9, #1
	b.ne	LBB1_29
LBB1_30:
	strb	wzr, [x20, x8]
	asr	x0, x24, #30
	bl	_libmin_malloc
	mov	x22, x0
	cmp	w19, #1
	b.lt	LBB1_32
; %bb.31:
	ubfiz	x1, x19, #2, #32
	mov	x0, x22
	bl	_bzero
LBB1_32:
	mov	w8, #1                          ; =0x1
	subs	w9, w21, #1
	b.le	LBB1_34
LBB1_33:                                ; =>This Inner Loop Header: Depth=1
	lsl	w8, w8, #8
	sxtw	x10, w8
	add	x10, x10, x10, lsl #30
	lsr	x11, x10, #63
	asr	x10, x10, #61
	add	w10, w10, w11
	add	w10, w10, w10, lsl #31
	add	w8, w8, w10
	subs	w9, w9, #1
	b.ne	LBB1_33
LBB1_34:
	cmp	w21, #1
	b.lt	LBB1_38
; %bb.35:
	mov	w10, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	and	x11, x21, #0xffffffff
	mov	x12, x20
LBB1_36:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w13, [x23], #1
	add	w9, w13, w9, lsl #8
	sxtw	x13, w9
	add	x13, x13, x13, lsl #30
	lsr	x14, x13, #63
	asr	x13, x13, #61
	add	w13, w13, w14
	add	w13, w13, w13, lsl #31
	add	w9, w9, w13
	ldrsb	w13, [x12], #1
	add	w10, w13, w10, lsl #8
	sxtw	x13, w10
	add	x13, x13, x13, lsl #30
	lsr	x14, x13, #63
	asr	x13, x13, #61
	add	w13, w13, w14
	add	w13, w13, w13, lsl #31
	add	w10, w10, w13
	subs	x11, x11, #1
	b.ne	LBB1_36
; %bb.37:
	subs	w11, w19, w21
	b.pl	LBB1_39
	b	LBB1_43
LBB1_38:
	mov	w9, #0                          ; =0x0
	mov	w10, #0                         ; =0x0
	subs	w11, w19, w21
	b.mi	LBB1_43
LBB1_39:
	mov	x12, #0                         ; =0x0
	sub	w13, w19, w21
	add	w13, w13, #1
	add	x14, x20, x25, asr #32
	mov	w15, #2147483647                ; =0x7fffffff
	b	LBB1_41
LBB1_40:                                ;   in Loop: Header=BB1_41 Depth=1
	add	x12, x12, #1
	cmp	x13, x12
	b.eq	LBB1_43
LBB1_41:                                ; =>This Inner Loop Header: Depth=1
	cmp	w9, w10
	cset	w16, eq
	str	w16, [x22, x12, lsl #2]
	cmp	x12, x11
	b.hs	LBB1_40
; %bb.42:                               ;   in Loop: Header=BB1_41 Depth=1
	ldrsb	w16, [x20, x12]
	ldrsb	w17, [x14, x12]
	msub	w10, w8, w16, w10
	add	w10, w17, w10, lsl #8
	sxtw	x16, w10
	add	x16, x16, x16, lsl #30
	lsr	x17, x16, #63
	asr	x16, x16, #61
	add	w16, w16, w17
	add	w16, w16, w16, lsl #31
	add	w10, w10, w16
	add	w16, w10, w15
	cmp	w10, #0
	csel	w10, w16, w10, lt
	b	LBB1_40
LBB1_43:
	cmp	w19, #1
	b.lt	LBB1_48
; %bb.44:
	mov	x20, #0                         ; =0x0
	and	x21, x19, #0xffffffff
Lloh8:
	adrp	x19, l_.str.1@PAGE
Lloh9:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB1_46
LBB1_45:                                ;   in Loop: Header=BB1_46 Depth=1
	add	x20, x20, #1
	cmp	x21, x20
	b.eq	LBB1_48
LBB1_46:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x22, x20, lsl #2]
	cbz	w8, LBB1_45
; %bb.47:                               ;   in Loop: Header=BB1_46 Depth=1
	str	x20, [sp]
	mov	x0, x19
	bl	_libmin_printf
	b	LBB1_45
LBB1_48:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_inp_pat                        ; @inp_pat
_inp_pat:
	.asciz	"NzZVOzZXNoGXMl8yxesyY"

	.globl	_inp_txt                        ; @inp_txt
_inp_txt:
	.asciz	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyjzZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2facymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2JacyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZuzJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfMlsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"n = %d, m = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"pattern occurs at shift = %d\n"

.subsections_via_symbols
