	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_badCharHeuristic               ; -- Begin function badCharHeuristic
	.p2align	2
_badCharHeuristic:                      ; @badCharHeuristic
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
	mov	x0, x2
	mov	w1, #255                        ; =0xff
	mov	w2, #1024                       ; =0x400
	bl	_memset
	cmp	w21, #1
	b.lt	LBB0_3
; %bb.1:
	mov	x8, #0                          ; =0x0
	mov	w9, w21
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	x10, [x20, x8]
	str	w8, [x19, x10, lsl #2]
	add	x8, x8, #1
	cmp	x9, x8
	b.ne	LBB0_2
LBB0_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_search                         ; -- Begin function search
	.p2align	2
_search:                                ; @search
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #1040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	mov	x22, x1
	mov	x23, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	add	x0, sp, #8
	mov	w1, #255                        ; =0xff
	mov	w2, #1024                       ; =0x400
	bl	_memset
	cmp	w20, #1
	b.lt	LBB1_8
; %bb.1:
	mov	w8, w20
	cmp	w20, #4
	b.hs	LBB1_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB1_6
LBB1_3:
	mov	x10, #0                         ; =0x0
	and	x9, x8, #0xfffffffc
	add	x11, sp, #8
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	add	w12, w10, #1
	add	w13, w10, #2
	add	w14, w10, #3
	add	x15, x21, x10
	ldrsb	x16, [x15]
	ldrsb	x17, [x15, #1]
	ldrsb	x0, [x15, #2]
	ldrsb	x15, [x15, #3]
	str	w10, [x11, x16, lsl #2]
	str	w12, [x11, x17, lsl #2]
	str	w13, [x11, x0, lsl #2]
	str	w14, [x11, x15, lsl #2]
	add	x10, x10, #4
	cmp	x9, x10
	b.ne	LBB1_4
; %bb.5:
	cmp	x9, x8
	b.eq	LBB1_8
LBB1_6:
	add	x10, sp, #8
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	x11, [x21, x9]
	str	w9, [x10, x11, lsl #2]
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB1_7
LBB1_8:
	subs	w8, w22, w20
	b.mi	LBB1_18
; %bb.9:
	mov	w13, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	sxtw	x10, w20
	sub	x11, x23, #1
	add	x12, sp, #8
LBB1_10:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_11 Depth 2
	sxtw	x13, w13
	add	x15, x11, x13
	mov	x16, x10
LBB1_11:                                ;   Parent Loop BB1_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	subs	x14, x16, #1
	b.lt	LBB1_14
; %bb.12:                               ;   in Loop: Header=BB1_11 Depth=2
	ldrb	w17, [x21, w14, uxtw]
	ldrb	w0, [x15, x16]
	mov	x16, x14
	cmp	w17, w0
	b.eq	LBB1_11
; %bb.13:                               ;   in Loop: Header=BB1_10 Depth=1
	add	w15, w13, w14
	ldrsb	x15, [x23, w15, sxtw]
	ldr	w15, [x12, x15, lsl #2]
	sub	w14, w14, w15
	cmp	w14, #1
	csinc	w14, w14, wzr, gt
	b	LBB1_16
LBB1_14:                                ;   in Loop: Header=BB1_10 Depth=1
	mov	w14, #1                         ; =0x1
	str	w14, [x19, x13, lsl #2]
	add	x15, x13, w20, sxtw
	cmp	w15, w22
	b.ge	LBB1_16
; %bb.15:                               ;   in Loop: Header=BB1_10 Depth=1
	ldrsb	x14, [x23, x15]
	ldr	w14, [x12, x14, lsl #2]
	sub	w14, w20, w14
LBB1_16:                                ;   in Loop: Header=BB1_10 Depth=1
	cmp	w9, w8
	b.ge	LBB1_18
; %bb.17:                               ;   in Loop: Header=BB1_10 Depth=1
	add	w9, w9, #1
	add	w13, w14, w13
	cmp	w13, w8
	b.le	LBB1_10
LBB1_18:
	ldur	x8, [x29, #-56]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_20
; %bb.19:
	add	sp, sp, #1040
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB1_20:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	sub	sp, sp, #1040
	mov	x19, sp
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
Lloh6:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh7:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh8:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
Lloh9:
	adrp	x0, _inp_txt@PAGE
Lloh10:
	add	x0, x0, _inp_txt@PAGEOFF
	bl	_libmin_strlen
	mov	x21, x0
Lloh11:
	adrp	x0, _inp_pat@PAGE
Lloh12:
	add	x0, x0, _inp_pat@PAGEOFF
	bl	_libmin_strlen
	mov	x22, x0
	stp	x21, x0, [sp, #-16]!
Lloh13:
	adrp	x0, l_.str@PAGE
Lloh14:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	add	sp, sp, #16
	and	x20, x21, #0xffffffff
	mov	x9, x20
Lloh15:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh16:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	mov	x8, sp
	add	x9, x20, #15
	and	x9, x9, #0x1fffffff0
	sub	x23, x8, x9
	mov	sp, x23
	cmp	w21, #1
	b.lt	LBB2_2
; %bb.1:
Lloh17:
	adrp	x1, _inp_txt@PAGE
Lloh18:
	add	x1, x1, _inp_txt@PAGEOFF
	mov	x0, x23
	mov	x2, x20
	bl	_memcpy
LBB2_2:
	and	x26, x22, #0xffffffff
	mov	x9, x26
Lloh19:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh20:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	mov	x8, sp
	add	x9, x26, #15
	and	x9, x9, #0x1fffffff0
	sub	x25, x8, x9
	mov	sp, x25
	cmp	w22, #1
	b.lt	LBB2_4
; %bb.3:
Lloh21:
	adrp	x1, _inp_pat@PAGE
Lloh22:
	add	x1, x1, _inp_pat@PAGEOFF
	mov	x0, x25
	mov	x2, x26
	bl	_memcpy
LBB2_4:
	lsl	x8, x20, #2
	mov	x9, x8
Lloh23:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh24:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	mov	x9, sp
	add	x8, x8, #15
	and	x8, x8, #0x7fffffff0
	sub	x24, x9, x8
	mov	sp, x24
	cmp	w21, #1
	b.lt	LBB2_6
; %bb.5:
	ubfiz	x1, x21, #2, #32
	mov	x0, x24
	bl	_bzero
LBB2_6:
	add	x0, x19, #8
	mov	w1, #255                        ; =0xff
	mov	w2, #1024                       ; =0x400
	bl	_memset
	cmp	w22, #1
	b.lt	LBB2_14
; %bb.7:
	cmp	x26, #4
	b.hs	LBB2_9
; %bb.8:
	mov	x8, #0                          ; =0x0
	b	LBB2_12
LBB2_9:
	mov	x10, #0                         ; =0x0
	and	x9, x22, #0x3
	sub	x8, x26, x9
	add	x11, x19, #8
LBB2_10:                                ; =>This Inner Loop Header: Depth=1
	add	w12, w10, #1
	add	w13, w10, #2
	add	w14, w10, #3
	add	x15, x25, x10
	ldrsb	x16, [x15]
	ldrsb	x17, [x15, #1]
	ldrsb	x0, [x15, #2]
	ldrsb	x15, [x15, #3]
	str	w10, [x11, x16, lsl #2]
	str	w12, [x11, x17, lsl #2]
	str	w13, [x11, x0, lsl #2]
	str	w14, [x11, x15, lsl #2]
	add	x10, x10, #4
	cmp	x8, x10
	b.ne	LBB2_10
; %bb.11:
	cbz	x9, LBB2_14
LBB2_12:
	add	x9, x19, #8
LBB2_13:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	x10, [x25, x8]
	str	w8, [x9, x10, lsl #2]
	add	x8, x8, #1
	cmp	x26, x8
	b.ne	LBB2_13
LBB2_14:
	subs	w8, w21, w22
	b.mi	LBB2_24
; %bb.15:
	mov	w12, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	sxtw	x10, w22
	sub	x10, x10, #1
	add	x11, x19, #8
LBB2_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_17 Depth 2
	sxtw	x12, w12
	add	x14, x23, x12
	mov	x15, x10
	mov	x13, x22
LBB2_17:                                ;   Parent Loop BB2_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x16, x15, #1
	cmp	x16, #1
	b.lt	LBB2_20
; %bb.18:                               ;   in Loop: Header=BB2_17 Depth=2
	ldrb	w16, [x25, w15, uxtw]
	ldrb	w17, [x14, x15]
	sub	w13, w13, #1
	sub	x15, x15, #1
	cmp	w16, w17
	b.eq	LBB2_17
; %bb.19:                               ;   in Loop: Header=BB2_16 Depth=1
	add	w14, w12, w13
	ldrsb	x14, [x23, w14, sxtw]
	ldr	w14, [x11, x14, lsl #2]
	sub	w13, w13, w14
	cmp	w13, #1
	csinc	w13, w13, wzr, gt
	b	LBB2_22
LBB2_20:                                ;   in Loop: Header=BB2_16 Depth=1
	mov	w13, #1                         ; =0x1
	str	w13, [x24, x12, lsl #2]
	add	x14, x12, w22, sxtw
	cmp	w14, w21
	b.ge	LBB2_22
; %bb.21:                               ;   in Loop: Header=BB2_16 Depth=1
	ldrsb	x13, [x23, x14]
	ldr	w13, [x11, x13, lsl #2]
	sub	w13, w22, w13
LBB2_22:                                ;   in Loop: Header=BB2_16 Depth=1
	cmp	w9, w8
	b.ge	LBB2_24
; %bb.23:                               ;   in Loop: Header=BB2_16 Depth=1
	add	w9, w9, #1
	add	w12, w13, w12
	cmp	w12, w8
	b.le	LBB2_16
LBB2_24:
	cmp	w21, #1
	b.lt	LBB2_29
; %bb.25:
	mov	x22, #0                         ; =0x0
Lloh25:
	adrp	x21, l_.str.1@PAGE
Lloh26:
	add	x21, x21, l_.str.1@PAGEOFF
	b	LBB2_27
LBB2_26:                                ;   in Loop: Header=BB2_27 Depth=1
	add	x22, x22, #1
	cmp	x20, x22
	b.eq	LBB2_29
LBB2_27:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x24, x22, lsl #2]
	cbz	w8, LBB2_26
; %bb.28:                               ;   in Loop: Header=BB2_27 Depth=1
	str	x22, [sp, #-16]!
	mov	x0, x21
	bl	_libmin_printf
	add	sp, sp, #16
	b	LBB2_26
LBB2_29:
	bl	_libmin_success
	ldur	x8, [x29, #-88]
Lloh27:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh28:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh29:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_31
; %bb.30:
	mov	w0, #0                          ; =0x0
	sub	sp, x29, #80
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB2_31:
	bl	___stack_chk_fail
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh6, Lloh7, Lloh8
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGotLdr	Lloh27, Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_inp_pat                        ; @inp_pat
_inp_pat:
	.asciz	"NzZVOzZXNoGXMl8yxesyY"

	.globl	_inp_txt                        ; @inp_txt
_inp_txt:
	.asciz	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyjzZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2facymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2JacyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZuzJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfMlsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"n = %d, m = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"pattern occurs at shift = %d\n"

.subsections_via_symbols
