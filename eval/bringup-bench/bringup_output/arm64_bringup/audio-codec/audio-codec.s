	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_encode                         ; -- Begin function encode
	.p2align	2
_encode:                                ; @encode
	.cfi_startproc
; %bb.0:
	cbz	x2, LBB0_8
; %bb.1:
	mov	w8, #8                          ; =0x8
	mov	w9, #80                         ; =0x50
	mov	w10, #7                         ; =0x7
	mov	w11, #64                        ; =0x40
	mov	w12, #6                         ; =0x6
	mov	w13, #48                        ; =0x30
	mov	w14, #5                         ; =0x5
	mov	w15, #32                        ; =0x20
	mov	w16, #4                         ; =0x4
	mov	w17, #213                       ; =0xd5
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w5, #10                         ; =0xa
	mov	w6, #112                        ; =0x70
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	asr	w4, w4, w5
	and	w4, w4, #0xf
	orr	w3, w6, w3
	orr	w3, w4, w3
	eor	w3, w3, w17
	strb	w3, [x0], #1
	subs	x2, x2, #1
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrh	w4, [x1], #2
	lsr	w3, w4, #8
	and	w3, w3, #0x80
	lsl	w5, w3, #24
	eor	w4, w4, w5, asr #31
	sxth	w4, w4
	tbnz	w4, #14, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	tbnz	w4, #13, LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	lsr	w5, w4, #4
	and	w5, w5, #0x10
	tst	w4, #0x200
	csel	w5, w15, w5, ne
	csel	w6, w14, w16, ne
	tst	w4, #0x400
	csel	w5, w13, w5, ne
	csel	w6, w12, w6, ne
	tst	w4, #0x800
	csel	w5, w11, w5, ne
	csel	w7, w10, w6, ne
	tst	w4, #0x1000
	csel	w6, w9, w5, ne
	csel	w5, w8, w7, ne
	b	LBB0_3
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w5, #9                          ; =0x9
	mov	w6, #96                         ; =0x60
	b	LBB0_3
LBB0_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function decode
lCPI1_0:
	.byte	0                               ; 0x0
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	1                               ; 0x1
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	2                               ; 0x2
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	3                               ; 0x3
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
lCPI1_1:
	.byte	4                               ; 0x4
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	5                               ; 0x5
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	6                               ; 0x6
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	7                               ; 0x7
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
lCPI1_2:
	.byte	8                               ; 0x8
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	9                               ; 0x9
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	10                              ; 0xa
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	11                              ; 0xb
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
lCPI1_3:
	.byte	12                              ; 0xc
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	13                              ; 0xd
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	14                              ; 0xe
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	15                              ; 0xf
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_decode
	.p2align	2
_decode:                                ; @decode
	.cfi_startproc
; %bb.0:
	cbz	x2, LBB1_7
; %bb.1:
	cmp	x2, #8
	b.lo	LBB1_4
; %bb.2:
	add	x8, x1, x2
	cmp	x8, x0
	b.ls	LBB1_8
; %bb.3:
	add	x8, x0, x2, lsl #1
	cmp	x8, x1
	b.ls	LBB1_8
LBB1_4:
	mov	x8, #0                          ; =0x0
	mov	x11, x0
	mov	x12, x1
LBB1_5:
	sub	x8, x2, x8
	mov	w9, #213                        ; =0xd5
	mov	w10, #7                         ; =0x7
LBB1_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w13, [x12], #1
	sxtb	w14, w13
	eor	w13, w13, w9
	ands	w15, w10, w13, lsr #4
	cset	w16, ne
	lsl	w16, w16, #8
	bfi	w16, w13, #4, #4
	orr	w13, w16, #0x8
	subs	w15, w15, #1
	csel	w15, wzr, w15, lo
	lsl	w13, w13, w15
	cmp	w14, #0
	cneg	w13, w13, ge
	strh	w13, [x11], #2
	subs	x8, x8, #1
	b.ne	LBB1_6
LBB1_7:
	ret
LBB1_8:
	adrp	x9, lCPI1_0@PAGE
	adrp	x10, lCPI1_1@PAGE
	cmp	x2, #16
	b.hs	LBB1_10
; %bb.9:
	mov	x8, #0                          ; =0x0
	b	LBB1_15
LBB1_10:
	and	x8, x2, #0xfffffffffffffff0
	movi.16b	v0, #213
	ldr	q1, [x9, lCPI1_0@PAGEOFF]
	ldr	q2, [x10, lCPI1_1@PAGEOFF]
Lloh0:
	adrp	x11, lCPI1_2@PAGE
Lloh1:
	ldr	q3, [x11, lCPI1_2@PAGEOFF]
Lloh2:
	adrp	x11, lCPI1_3@PAGE
Lloh3:
	ldr	q4, [x11, lCPI1_3@PAGEOFF]
	movi.4s	v5, #1, lsl #8
	movi.4s	v6, #1
	mov	x11, x8
	mov	x12, x0
	mov	x13, x1
LBB1_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	q7, [x13], #16
	eor.16b	v16, v7, v0
	tbl.16b	v17, { v16 }, v1
	tbl.16b	v18, { v16 }, v2
	tbl.16b	v19, { v16 }, v3
	tbl.16b	v16, { v16 }, v4
	ushr.4s	v20, v16, #4
	ushr.4s	v21, v19, #4
	ushr.4s	v22, v18, #4
	ushr.4s	v23, v17, #4
	bic.4s	v23, #8
	bic.4s	v22, #8
	bic.4s	v21, #8
	bic.4s	v20, #8
	shl.4s	v16, v16, #4
	shl.4s	v19, v19, #4
	shl.4s	v18, v18, #4
	shl.4s	v17, v17, #4
	bic.4s	v17, #15, lsl #8
	bic.4s	v18, #15, lsl #8
	bic.4s	v19, #15, lsl #8
	bic.4s	v16, #15, lsl #8
	cmeq.4s	v24, v20, #0
	cmeq.4s	v25, v21, #0
	cmeq.4s	v26, v22, #0
	cmeq.4s	v27, v23, #0
	bic.16b	v27, v5, v27
	bic.16b	v26, v5, v26
	bic.16b	v25, v5, v25
	bic.16b	v24, v5, v24
	orr.16b	v16, v16, v24
	orr.16b	v19, v19, v25
	orr.16b	v18, v18, v26
	orr.16b	v17, v17, v27
	orr.4s	v17, #8
	orr.4s	v18, #8
	orr.4s	v19, #8
	orr.4s	v16, #8
	uqsub.4s	v23, v23, v6
	uqsub.4s	v22, v22, v6
	uqsub.4s	v21, v21, v6
	uqsub.4s	v20, v20, v6
	ushl.4s	v16, v16, v20
	ushl.4s	v19, v19, v21
	ushl.4s	v18, v18, v22
	ushl.4s	v17, v17, v23
	cmlt.16b	v7, v7, #0
	sshll.8h	v20, v7, #0
	sshll.4s	v21, v20, #0
	sshll2.4s	v20, v20, #0
	sshll2.8h	v7, v7, #0
	sshll.4s	v22, v7, #0
	sshll2.4s	v7, v7, #0
	neg.4s	v23, v17
	neg.4s	v24, v18
	neg.4s	v25, v19
	neg.4s	v26, v16
	bsl.16b	v7, v16, v26
	mov.16b	v16, v22
	bsl.16b	v16, v19, v25
	bif.16b	v18, v24, v20
	bif.16b	v17, v23, v21
	uzp1.8h	v17, v17, v18
	uzp1.8h	v7, v16, v7
	stp	q17, q7, [x12], #32
	subs	x11, x11, #16
	b.ne	LBB1_11
; %bb.12:
	cmp	x8, x2
	b.eq	LBB1_7
; %bb.13:
	tbnz	w2, #3, LBB1_15
; %bb.14:
	add	x12, x1, x8
	add	x11, x0, x8, lsl #1
	b	LBB1_5
LBB1_15:
	mov	x15, x8
	and	x8, x2, #0xfffffffffffffff8
	add	x11, x0, x8, lsl #1
	add	x12, x1, x8
	add	x13, x1, x15
	sub	x14, x15, x8
	movi.8b	v0, #213
	ldr	q1, [x9, lCPI1_0@PAGEOFF]
	ldr	q2, [x10, lCPI1_1@PAGEOFF]
	movi.4s	v3, #1, lsl #8
	movi.4s	v4, #1
	add	x9, x0, x15, lsl #1
LBB1_16:                                ; =>This Inner Loop Header: Depth=1
	ldr	d5, [x13], #8
	eor.8b	v6, v5, v0
	tbl.16b	v7, { v6 }, v1
	tbl.16b	v6, { v6 }, v2
	ushr.4s	v16, v6, #4
	ushr.4s	v17, v7, #4
	bic.4s	v17, #8
	bic.4s	v16, #8
	shl.4s	v6, v6, #4
	shl.4s	v7, v7, #4
	bic.4s	v7, #15, lsl #8
	bic.4s	v6, #15, lsl #8
	cmeq.4s	v18, v16, #0
	cmeq.4s	v19, v17, #0
	bic.16b	v19, v3, v19
	bic.16b	v18, v3, v18
	orr.16b	v6, v6, v18
	orr.16b	v7, v7, v19
	orr.4s	v7, #8
	orr.4s	v6, #8
	uqsub.4s	v17, v17, v4
	uqsub.4s	v16, v16, v4
	ushl.4s	v6, v6, v16
	ushl.4s	v7, v7, v17
	sshll.8h	v5, v5, #0
	cmlt.8h	v5, v5, #0
	sshll.4s	v16, v5, #0
	sshll2.4s	v5, v5, #0
	neg.4s	v17, v7
	neg.4s	v18, v6
	bsl.16b	v5, v6, v18
	mov.16b	v6, v16
	bsl.16b	v6, v7, v17
	uzp1.8h	v5, v6, v5
	str	q5, [x9], #16
	adds	x14, x14, #8
	b.ne	LBB1_16
; %bb.17:
	cmp	x8, x2
	b.ne	LBB1_5
	b	LBB1_7
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpAdrp	Lloh0, Lloh2
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	x8, #0                          ; =0x0
Lloh4:
	adrp	x10, ___stack_chk_guard@GOTPAGE
Lloh5:
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
Lloh6:
	ldr	x10, [x10]
Lloh7:
	adrp	x20, _pcm@PAGE
Lloh8:
	add	x20, x20, _pcm@PAGEOFF
	mov	w9, #8                          ; =0x8
	str	x10, [sp, #24]
	mov	w10, #80                        ; =0x50
	mov	w11, #7                         ; =0x7
	mov	w12, #64                        ; =0x40
	mov	w13, #6                         ; =0x6
	mov	w14, #48                        ; =0x30
	mov	w15, #5                         ; =0x5
	mov	w16, #32                        ; =0x20
	mov	w17, #4                         ; =0x4
	mov	w0, #213                        ; =0xd5
	add	x1, sp, #16
	b	LBB2_3
LBB2_1:                                 ;   in Loop: Header=BB2_3 Depth=1
	mov	w4, #10                         ; =0xa
	mov	w5, #112                        ; =0x70
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	asr	w3, w3, w4
	and	w3, w3, #0xf
	orr	w2, w5, w2
	orr	w2, w3, w2
	eor	w2, w2, w0
	strb	w2, [x1, x8]
	add	x8, x8, #1
	cmp	x8, #8
	b.eq	LBB2_7
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrh	w3, [x20, x8, lsl #1]
	lsr	w2, w3, #8
	and	w2, w2, #0x80
	lsl	w4, w2, #24
	eor	w3, w3, w4, asr #31
	sxth	w3, w3
	tbnz	w3, #14, LBB2_1
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	tbnz	w3, #13, LBB2_6
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=1
	lsr	w4, w3, #4
	and	w4, w4, #0x10
	tst	w3, #0x200
	csel	w4, w16, w4, ne
	csel	w5, w15, w17, ne
	tst	w3, #0x400
	csel	w4, w14, w4, ne
	csel	w5, w13, w5, ne
	tst	w3, #0x800
	csel	w4, w12, w4, ne
	csel	w6, w11, w5, ne
	tst	w3, #0x1000
	csel	w5, w10, w4, ne
	csel	w4, w9, w6, ne
	b	LBB2_2
LBB2_6:                                 ;   in Loop: Header=BB2_3 Depth=1
	mov	w4, #9                          ; =0x9
	mov	w5, #96                         ; =0x60
	b	LBB2_2
LBB2_7:
	ldrb	w24, [sp, #16]
	adrp	x8, _r_coded@PAGE
	ldrb	w8, [x8, _r_coded@PAGEOFF]
	cmp	w24, w8
	b.eq	LBB2_9
; %bb.8:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_9:
	ldrb	w19, [sp, #17]
	adrp	x8, _r_coded@PAGE+1
	ldrb	w8, [x8, _r_coded@PAGEOFF+1]
	cmp	w19, w8
	b.eq	LBB2_11
; %bb.10:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_11:
	ldrb	w21, [sp, #18]
	adrp	x8, _r_coded@PAGE+2
	ldrb	w8, [x8, _r_coded@PAGEOFF+2]
	cmp	w21, w8
	b.eq	LBB2_13
; %bb.12:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_13:
	ldrb	w22, [sp, #19]
	adrp	x8, _r_coded@PAGE+3
	ldrb	w8, [x8, _r_coded@PAGEOFF+3]
	cmp	w22, w8
	b.eq	LBB2_15
; %bb.14:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_15:
	ldrb	w26, [sp, #20]
	adrp	x8, _r_coded@PAGE+4
	ldrb	w8, [x8, _r_coded@PAGEOFF+4]
	cmp	w26, w8
	b.eq	LBB2_17
; %bb.16:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_17:
	ldrb	w27, [sp, #21]
	adrp	x8, _r_coded@PAGE+5
	ldrb	w8, [x8, _r_coded@PAGEOFF+5]
	cmp	w27, w8
	b.eq	LBB2_19
; %bb.18:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_19:
	ldrb	w28, [sp, #22]
	adrp	x8, _r_coded@PAGE+6
	ldrb	w8, [x8, _r_coded@PAGEOFF+6]
	cmp	w28, w8
	b.eq	LBB2_21
; %bb.20:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_21:
	ldrb	w23, [sp, #23]
	adrp	x8, _r_coded@PAGE+7
	ldrb	w8, [x8, _r_coded@PAGEOFF+7]
	cmp	w23, w8
	b.eq	LBB2_23
; %bb.22:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_23:
	mov	w8, #213                        ; =0xd5
	eor	w10, w24, w8
	mov	w9, #7                          ; =0x7
	ands	w11, w9, w10, lsr #4
	cset	w12, ne
	lsl	w12, w12, #8
	bfi	w12, w10, #4, #4
	orr	w10, w12, #0x8
	subs	w11, w11, #1
	csel	w11, wzr, w11, lo
	lsl	w10, w10, w11
	sxtb	w11, w24
	cmp	w11, #0
	cneg	w10, w10, ge
	str	x10, [sp, #8]                   ; 8-byte Folded Spill
	and	w10, w10, #0xfff8
	eor	w11, w19, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w19
	cmp	w12, #0
	cneg	w19, w11, ge
	eor	w11, w21, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w21
	cmp	w12, #0
	cneg	w24, w11, ge
	eor	w11, w22, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w22
	cmp	w12, #0
	cneg	w25, w11, ge
	eor	w11, w26, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w26
	cmp	w12, #0
	cneg	w26, w11, ge
	eor	w11, w27, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w27
	cmp	w12, #0
	cneg	w27, w11, ge
	eor	w11, w28, w8
	ands	w12, w9, w11, lsr #4
	cset	w13, ne
	lsl	w13, w13, #8
	bfi	w13, w11, #4, #4
	orr	w11, w13, #0x8
	subs	w12, w12, #1
	csel	w12, wzr, w12, lo
	lsl	w11, w11, w12
	sxtb	w12, w28
	cmp	w12, #0
	cneg	w28, w11, ge
	eor	w8, w23, w8
	ands	w9, w9, w8, lsr #4
	cset	w11, ne
	lsl	w11, w11, #8
	bfi	w11, w8, #4, #4
	orr	w8, w11, #0x8
	subs	w9, w9, #1
	csel	w9, wzr, w9, lo
	lsl	w8, w8, w9
	sxtb	w9, w23
	cmp	w9, #0
	cneg	w22, w8, ge
	adrp	x8, _r_decoded@PAGE
	ldrh	w8, [x8, _r_decoded@PAGEOFF]
	cmp	w8, w10
	b.eq	LBB2_25
; %bb.24:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_25:
	adrp	x8, _r_decoded@PAGE+2
	ldrh	w8, [x8, _r_decoded@PAGEOFF+2]
	cmp	w8, w19, uxth
	b.eq	LBB2_27
; %bb.26:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_27:
	adrp	x8, _r_decoded@PAGE+4
	ldrh	w8, [x8, _r_decoded@PAGEOFF+4]
	cmp	w8, w24, uxth
	b.eq	LBB2_29
; %bb.28:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_29:
	adrp	x8, _r_decoded@PAGE+6
	ldrh	w8, [x8, _r_decoded@PAGEOFF+6]
	cmp	w8, w25, uxth
	b.eq	LBB2_31
; %bb.30:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_31:
	adrp	x8, _r_decoded@PAGE+8
	ldrh	w8, [x8, _r_decoded@PAGEOFF+8]
	cmp	w8, w26, uxth
	b.eq	LBB2_33
; %bb.32:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_33:
	adrp	x8, _r_decoded@PAGE+10
	ldrh	w8, [x8, _r_decoded@PAGEOFF+10]
	cmp	w8, w27, uxth
	b.eq	LBB2_35
; %bb.34:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_35:
	adrp	x8, _r_decoded@PAGE+12
	ldrh	w8, [x8, _r_decoded@PAGEOFF+12]
	cmp	w8, w28, uxth
	b.eq	LBB2_37
; %bb.36:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_37:
	mov	x23, x19
	adrp	x8, _r_decoded@PAGE+14
	ldrh	w8, [x8, _r_decoded@PAGEOFF+14]
	cmp	w8, w22, uxth
	b.eq	LBB2_39
; %bb.38:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_39:
Lloh9:
	adrp	x0, l_.str@PAGE
Lloh10:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldrsh	x8, [x20]
	str	x8, [sp]
Lloh11:
	adrp	x19, l_.str.1@PAGE
Lloh12:
	add	x19, x19, l_.str.1@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #4]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #6]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #10]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #12]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldrsh	x8, [x20, #14]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh13:
	adrp	x20, l_.str.2@PAGE
Lloh14:
	add	x20, x20, l_.str.2@PAGEOFF
	mov	x0, x20
	bl	_libmin_printf
Lloh15:
	adrp	x0, l_.str.3@PAGE
Lloh16:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	ldrb	w8, [sp, #16]
	str	x8, [sp]
Lloh17:
	adrp	x21, l_.str.4@PAGE
Lloh18:
	add	x21, x21, l_.str.4@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #17]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #18]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #19]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #20]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #21]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #22]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [sp, #23]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_printf
Lloh19:
	adrp	x0, l_.str.5@PAGE
Lloh20:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x23, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x24, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x25, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x26, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x27, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x28, [sp]
	mov	x0, x19
	bl	_libmin_printf
	str	x22, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_printf
	bl	_libmin_success
	ldr	x8, [sp, #24]
Lloh21:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh22:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh23:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_41
; %bb.40:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB2_41:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh4, Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh21, Lloh22, Lloh23
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_pcm                            ; @pcm
	.p2align	1, 0x0
_pcm:
	.short	1000                            ; 0x3e8
	.short	64536                           ; 0xfc18
	.short	1234                            ; 0x4d2
	.short	3200                            ; 0xc80
	.short	64222                           ; 0xfade
	.short	0                               ; 0x0
	.short	32767                           ; 0x7fff
	.short	32768                           ; 0x8000

	.globl	_r_coded                        ; @r_coded
_r_coded:
	.ascii	"\372z\346\234a\325\252*"

	.globl	_r_decoded                      ; @r_decoded
	.p2align	1, 0x0
_r_decoded:
	.short	1008                            ; 0x3f0
	.short	64528                           ; 0xfc10
	.short	1248                            ; 0x4e0
	.short	3264                            ; 0xcc0
	.short	64224                           ; 0xfae0
	.short	8                               ; 0x8
	.short	32256                           ; 0x7e00
	.short	33280                           ; 0x8200

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"inputs: "

l_.str.1:                               ; @.str.1
	.asciz	"%d "

l_.str.2:                               ; @.str.2
	.asciz	"\n"

l_.str.3:                               ; @.str.3
	.asciz	"encode: "

l_.str.4:                               ; @.str.4
	.asciz	"%u "

l_.str.5:                               ; @.str.5
	.asciz	"decode: "

.subsections_via_symbols
