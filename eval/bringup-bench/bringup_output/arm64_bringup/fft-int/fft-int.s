	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fix_fft                        ; -- Begin function fix_fft
	.p2align	2
_fix_fft:                               ; @fix_fft
	.cfi_startproc
; %bb.0:
	mov	w8, #1                          ; =0x1
	lsl	w9, w8, w2
	cmp	w9, #1024
	b.le	LBB0_2
; %bb.1:
	mov	w0, #-1                         ; =0xffffffff
	ret
LBB0_2:
	cmp	w9, #2
	b.lt	LBB0_9
; %bb.3:
	stp	x26, x25, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	mov	w8, #0                          ; =0x0
	mov	w10, #1                         ; =0x1
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	add	x10, x10, #1
	cmp	x10, x9
	b.eq	LBB0_10
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	mov	x11, x9
LBB0_6:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	asr	w11, w11, #1
	add	w12, w11, w8
	cmp	w12, w9
	b.ge	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	sub	w12, w11, #1
	and	w8, w12, w8
	add	w8, w8, w11
	sxtw	x11, w8
	cmp	x10, x11
	b.ge	LBB0_4
; %bb.8:                                ;   in Loop: Header=BB0_5 Depth=1
	lsl	x12, x10, #2
	ldr	w13, [x0, x12]
	lsl	x11, x11, #2
	ldr	w14, [x0, x11]
	str	w14, [x0, x12]
	str	w13, [x0, x11]
	ldr	w13, [x1, x12]
	ldr	w14, [x1, x11]
	str	w14, [x1, x12]
	str	w13, [x1, x11]
	b	LBB0_4
LBB0_9:
	mov	w0, #0                          ; =0x0
	ret
LBB0_10:
	mov	w8, #0                          ; =0x0
	mov	w13, #1                         ; =0x1
	mov	w10, #9                         ; =0x9
Lloh0:
	adrp	x11, _Sinewave@PAGE
Lloh1:
	add	x11, x11, _Sinewave@PAGEOFF
	b	LBB0_12
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	sub	w10, w10, #1
	mov	x13, x14
	cmp	w14, w9
	b.ge	LBB0_28
LBB0_12:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_25 Depth 2
                                        ;       Child Loop BB0_27 Depth 3
	cbz	w3, LBB0_15
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=1
	ldr	w12, [x0]
	cmp	w12, #0
	cneg	w12, w12, mi
	ldr	w14, [x1]
	cmp	w14, #0
	cneg	w14, w14, mi
	lsr	w12, w12, #14
	cmp	w12, #0
	lsr	w12, w14, #14
	ccmp	w12, #0, #0, eq
	b.eq	LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=1
	mov	w12, #1                         ; =0x1
	b	LBB0_21
LBB0_15:                                ;   in Loop: Header=BB0_12 Depth=1
	mov	w12, #1                         ; =0x1
	b	LBB0_22
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	mov	w14, #1                         ; =0x1
LBB0_17:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x12, x14
	cmp	x9, x14
	b.eq	LBB0_20
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=2
	lsl	x14, x12, #2
	ldr	w15, [x0, x14]
	cmp	w15, #0
	cneg	w16, w15, mi
	ldr	w14, [x1, x14]
	cmp	w14, #0
	cneg	w15, w14, mi
	lsr	w14, w16, #14
	cbnz	w14, LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_17 Depth=2
	add	x14, x12, #1
	cmp	w15, #4, lsl #12                ; =16384
	b.lo	LBB0_17
LBB0_20:                                ;   in Loop: Header=BB0_12 Depth=1
	cmp	x12, x9
	cset	w12, lo
LBB0_21:                                ;   in Loop: Header=BB0_12 Depth=1
	add	w8, w8, w12
LBB0_22:                                ;   in Loop: Header=BB0_12 Depth=1
	lsl	w14, w13, #1
	cmp	w13, #1
	b.lt	LBB0_11
; %bb.23:                               ;   in Loop: Header=BB0_12 Depth=1
	mov	x15, #0                         ; =0x0
	sxtw	x16, w14
	sbfiz	x17, x14, #2, #32
	mov	x2, x1
	mov	x4, x0
	mov	w13, w13
	b	LBB0_25
LBB0_24:                                ;   in Loop: Header=BB0_25 Depth=2
	add	x15, x15, #1
	add	x4, x4, #4
	add	x2, x2, #4
	cmp	x15, x13
	b.eq	LBB0_11
LBB0_25:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_27 Depth 3
	lsl	w5, w15, w10
	add	x5, x11, w5, sxtw #2
	ldr	w6, [x5]
	cmp	w3, #0
	cneg	w6, w6, eq
	cmp	w9, w15
	b.le	LBB0_24
; %bb.26:                               ;   in Loop: Header=BB0_25 Depth=2
	ldr	w5, [x5, #1024]
	asr	w5, w5, w12
	asr	w6, w6, w12
	mov	x7, x2
	mov	x19, x4
	mov	x20, x15
LBB0_27:                                ;   Parent Loop BB0_12 Depth=1
                                        ;     Parent Loop BB0_25 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lsl	x21, x13, #2
	ldr	w22, [x19, x21]
	mul	w23, w22, w5
	asr	w23, w23, #15
	ldr	w24, [x7, x21]
	mul	w25, w24, w6
	sub	w23, w23, w25, asr #15
	mul	w24, w24, w5
	asr	w24, w24, #15
	mul	w22, w22, w6
	add	w22, w24, w22, asr #15
	ldr	w24, [x19]
	ldr	w25, [x7]
	asr	w24, w24, w12
	sub	w26, w24, w23
	str	w26, [x19, x21]
	asr	w25, w25, w12
	sub	w26, w25, w22
	str	w26, [x7, x21]
	add	w21, w23, w24
	str	w21, [x19]
	add	w21, w25, w22
	str	w21, [x7]
	add	x19, x19, x17
	add	x7, x7, x17
	add	x20, x20, x16
	cmp	x20, x9
	b.lt	LBB0_27
	b	LBB0_24
LBB0_28:
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	mov	x0, x8
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_fix_mpy                        ; -- Begin function fix_mpy
	.p2align	2
_fix_mpy:                               ; @fix_mpy
	.cfi_startproc
; %bb.0:
	mul	w8, w1, w0
	asr	w0, w8, #15
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_window                         ; -- Begin function window
	.p2align	2
_window:                                ; @window
	.cfi_startproc
; %bb.0:
	mov	w8, #1024                       ; =0x400
	sdiv	w8, w8, w1
	cmp	w1, #2
	b.lt	LBB2_6
; %bb.1:
	mov	x12, #0                         ; =0x0
	lsr	w9, w1, #1
	sxtw	x10, w8
	mov	w11, #256                       ; =0x100
	cmp	w1, #32
	b.lo	LBB2_10
; %bb.2:
	cmp	w8, #1
	b.ne	LBB2_10
; %bb.3:
	lsl	x11, x9, #2
Lloh2:
	adrp	x12, _Sinewave@PAGE
Lloh3:
	add	x12, x12, _Sinewave@PAGEOFF
	add	x12, x11, x12
	add	x12, x12, #1024
	cmp	x12, x0
	b.ls	LBB2_7
; %bb.4:
Lloh4:
	adrp	x12, _Sinewave@PAGE+1024
Lloh5:
	add	x12, x12, _Sinewave@PAGEOFF+1024
	add	x11, x0, x11
	cmp	x11, x12
	b.ls	LBB2_7
; %bb.5:
	mov	x12, #0                         ; =0x0
	mov	w11, #256                       ; =0x100
	b	LBB2_10
LBB2_6:
	mov	w9, #0                          ; =0x0
	mov	w11, #256                       ; =0x100
	b	LBB2_12
LBB2_7:
	and	x12, x9, #0x7ffffff0
	smull	x11, w12, w10
	add	x11, x11, #256
	lsl	x13, x10, #6
	add	x14, x0, #32
Lloh6:
	adrp	x15, _Sinewave@PAGE+1072
Lloh7:
	add	x15, x15, _Sinewave@PAGEOFF+1072
	movi.4s	v0, #64, lsl #8
	mov	x16, x12
LBB2_8:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x14, #-32]
	ldp	q3, q4, [x14]
	ldp	q5, q6, [x15, #-48]
	ldp	q7, q16, [x15, #-16]
	sshr.4s	v5, v5, #1
	sshr.4s	v6, v6, #1
	sshr.4s	v7, v7, #1
	sshr.4s	v16, v16, #1
	sub.4s	v5, v0, v5
	sub.4s	v6, v0, v6
	sub.4s	v7, v0, v7
	sub.4s	v16, v0, v16
	mul.4s	v1, v5, v1
	mul.4s	v2, v6, v2
	mul.4s	v3, v7, v3
	mul.4s	v4, v16, v4
	sshr.4s	v1, v1, #15
	sshr.4s	v2, v2, #15
	sshr.4s	v3, v3, #15
	stp	q1, q2, [x14, #-32]
	sshr.4s	v1, v4, #15
	stp	q3, q1, [x14], #64
	add	x15, x15, x13
	subs	x16, x16, #16
	b.ne	LBB2_8
; %bb.9:
	cmp	x12, x9
	b.eq	LBB2_12
LBB2_10:
	add	x13, x0, x12, lsl #2
	sub	x12, x9, x12
	mov	w14, #16384                     ; =0x4000
Lloh8:
	adrp	x15, _Sinewave@PAGE
Lloh9:
	add	x15, x15, _Sinewave@PAGEOFF
LBB2_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	w16, [x13]
	ldr	w17, [x15, x11, lsl #2]
	sub	w17, w14, w17, asr #1
	mul	w16, w17, w16
	asr	w16, w16, #15
	str	w16, [x13], #4
	add	x11, x11, x10
	subs	x12, x12, #1
	b.ne	LBB2_11
LBB2_12:
	and	w10, w1, #0xfffffffe
	cmp	w9, w10
	b.ge	LBB2_15
; %bb.13:
	mov	w12, w9
	add	x9, x0, w9, uxtw #2
	sub	x10, x12, w10, uxtw
	sub	w11, w11, w8
Lloh10:
	adrp	x12, _Sinewave@PAGE
Lloh11:
	add	x12, x12, _Sinewave@PAGEOFF
	mov	w13, #16384                     ; =0x4000
LBB2_14:                                ; =>This Inner Loop Header: Depth=1
	ldr	w14, [x9]
	ldr	w15, [x12, w11, sxtw #2]
	sub	w15, w13, w15, asr #1
	mul	w14, w15, w14
	asr	w14, w14, #15
	str	w14, [x9], #4
	sub	w11, w11, w8
	adds	x10, x10, #1
	b.lo	LBB2_14
LBB2_15:
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	_fix_loud                       ; -- Begin function fix_loud
	.p2align	2
_fix_loud:                              ; @fix_loud
	.cfi_startproc
; %bb.0:
	mov	w8, #10                         ; =0xa
	cmp	w4, #0
	csel	w8, w8, wzr, gt
	cmp	w3, #1
	b.lt	LBB3_10
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w10, #6                         ; =0x6
	mov	w11, #6                         ; =0x6
	madd	w10, w4, w10, w11
	mov	w11, w3
	adrp	x12, _db_from_ampl.loud2@PAGE
	adrp	x13, _Loudampl@PAGE
Lloh12:
	adrp	x14, _Loudampl@PAGE
Lloh13:
	add	x14, x14, _Loudampl@PAGEOFF
Lloh14:
	adrp	x15, _db_from_ampl.loud2@PAGE
Lloh15:
	add	x15, x15, _db_from_ampl.loud2@PAGEOFF
Lloh16:
	adrp	x16, _Loudampl@PAGE+388
Lloh17:
	add	x16, x16, _Loudampl@PAGEOFF+388
Lloh18:
	adrp	x17, _db_from_ampl.loud2@PAGE+384
Lloh19:
	add	x17, x17, _db_from_ampl.loud2@PAGEOFF+384
	b	LBB3_3
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	sub	w3, w10, w5
	cmp	w3, w8
	csel	w3, w3, w8, lt
	str	w3, [x0, x9, lsl #2]
	add	x9, x9, #1
	cmp	x9, x11
	b.eq	LBB3_10
LBB3_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_5 Depth 2
                                        ;     Child Loop BB3_8 Depth 2
	lsl	x4, x9, #2
	ldr	w3, [x1, x4]
	ldr	w4, [x2, x4]
	ldr	w5, [x12, _db_from_ampl.loud2@PAGEOFF]
	cbnz	w5, LBB3_7
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x5, #0                          ; =0x0
	ldr	w6, [x13, _Loudampl@PAGEOFF]
	mul	w6, w6, w6
	str	w6, [x12, _db_from_ampl.loud2@PAGEOFF]
	dup.4s	v0, w6
LBB3_5:                                 ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x6, x14, x5
	ldur	q1, [x6, #4]
	ldur	q2, [x6, #20]
	ldur	q3, [x6, #36]
	ldur	q4, [x6, #52]
	mul.4s	v1, v1, v1
	mul.4s	v2, v2, v2
	mul.4s	v3, v3, v3
	ext.16b	v5, v0, v1, #12
	mul.4s	v0, v4, v4
	ext.16b	v4, v1, v2, #12
	ext.16b	v6, v2, v3, #12
	ext.16b	v7, v3, v0, #12
	add	x6, x15, x5
	stur	q1, [x6, #4]
	stur	q2, [x6, #20]
	stur	q3, [x6, #36]
	stur	q0, [x6, #52]
	add.4s	v1, v1, v5
	ushr.4s	v1, v1, #1
	uhadd.4s	v2, v2, v4
	uhadd.4s	v3, v3, v6
	uhadd.4s	v4, v0, v7
	stp	q1, q2, [x6]
	stp	q3, q4, [x6, #32]
	add	x5, x5, #64
	cmp	x5, #384
	b.ne	LBB3_5
; %bb.6:                                ;   in Loop: Header=BB3_3 Depth=1
	mov.s	w5, v0[3]
	ldp	w6, w7, [x16]
	mul	w6, w6, w6
	add	w5, w6, w5
	lsr	w5, w5, #1
	mul	w7, w7, w7
	add	w6, w7, w6
	lsr	w6, w6, #1
	stp	w5, w6, [x17]
	ldr	w5, [x16, #8]
	mul	w5, w5, w5
	add	w6, w5, w7
	lsr	w6, w6, #1
	stp	w6, w5, [x17, #8]
LBB3_7:                                 ;   in Loop: Header=BB3_3 Depth=1
	mov	x5, #0                          ; =0x0
	mul	w3, w3, w3
	madd	w3, w4, w4, w3
LBB3_8:                                 ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w4, [x15, x5, lsl #2]
	cmp	w4, w3
	b.le	LBB3_2
; %bb.9:                                ;   in Loop: Header=BB3_8 Depth=2
	add	x5, x5, #1
	cmp	x5, #100
	b.ne	LBB3_8
	b	LBB3_2
LBB3_10:
	ret
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_db_from_ampl                   ; -- Begin function db_from_ampl
	.p2align	2
_db_from_ampl:                          ; @db_from_ampl
	.cfi_startproc
; %bb.0:
	adrp	x10, _db_from_ampl.loud2@PAGE
	ldr	w9, [x10, _db_from_ampl.loud2@PAGEOFF]
Lloh20:
	adrp	x8, _db_from_ampl.loud2@PAGE
Lloh21:
	add	x8, x8, _db_from_ampl.loud2@PAGEOFF
	cbnz	w9, LBB4_4
; %bb.1:
	mov	x9, #0                          ; =0x0
Lloh22:
	adrp	x11, _Loudampl@PAGE
Lloh23:
	ldr	w11, [x11, _Loudampl@PAGEOFF]
	mul	w11, w11, w11
	str	w11, [x10, _db_from_ampl.loud2@PAGEOFF]
	dup.4s	v0, w11
Lloh24:
	adrp	x10, _Loudampl@PAGE
Lloh25:
	add	x10, x10, _Loudampl@PAGEOFF
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x11, x10, x9
	ldur	q1, [x11, #4]
	ldur	q2, [x11, #20]
	ldur	q3, [x11, #36]
	ldur	q4, [x11, #52]
	mul.4s	v1, v1, v1
	mul.4s	v2, v2, v2
	mul.4s	v3, v3, v3
	ext.16b	v5, v0, v1, #12
	mul.4s	v0, v4, v4
	ext.16b	v4, v1, v2, #12
	ext.16b	v6, v2, v3, #12
	ext.16b	v7, v3, v0, #12
	add	x11, x8, x9
	stur	q1, [x11, #4]
	stur	q2, [x11, #20]
	stur	q3, [x11, #36]
	stur	q0, [x11, #52]
	add.4s	v1, v5, v1
	ushr.4s	v1, v1, #1
	uhadd.4s	v2, v4, v2
	uhadd.4s	v3, v6, v3
	uhadd.4s	v4, v7, v0
	stp	q1, q2, [x11]
	stp	q3, q4, [x11, #32]
	add	x9, x9, #64
	cmp	x9, #384
	b.ne	LBB4_2
; %bb.3:
	mov.s	w9, v0[3]
Lloh26:
	adrp	x10, _Loudampl@PAGE+388
Lloh27:
	add	x10, x10, _Loudampl@PAGEOFF+388
	ldp	w11, w12, [x10]
	mul	w11, w11, w11
Lloh28:
	adrp	x13, _db_from_ampl.loud2@PAGE+384
Lloh29:
	add	x13, x13, _db_from_ampl.loud2@PAGEOFF+384
	add	w9, w9, w11
	lsr	w9, w9, #1
	mul	w12, w12, w12
	add	w11, w11, w12
	lsr	w11, w11, #1
	stp	w9, w11, [x13]
	ldr	w9, [x10, #8]
	mul	w9, w9, w9
	add	w10, w12, w9
	lsr	w10, w10, #1
	stp	w10, w9, [x13, #8]
LBB4_4:
	mov	x9, #0                          ; =0x0
	mul	w10, w0, w0
	madd	w10, w1, w1, w10
LBB4_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x8, x9, lsl #2]
	cmp	w11, w10
	b.le	LBB4_7
; %bb.6:                                ;   in Loop: Header=BB4_5 Depth=1
	add	x9, x9, #1
	cmp	x9, #100
	b.ne	LBB4_5
LBB4_7:
	neg	w0, w9
	ret
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.globl	_iscale                         ; -- Begin function iscale
	.p2align	2
_iscale:                                ; @iscale
	.cfi_startproc
; %bb.0:
	mul	w8, w1, w0
	sdiv	w0, w8, w2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #2080
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
	mov	x19, #0                         ; =0x0
	mov	x20, #0                         ; =0x0
Lloh30:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh31:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh32:
	ldr	x8, [x8]
	mov	x21, #5956                      ; =0x1744
	movk	x21, #21569, lsl #16
	movk	x21, #8699, lsl #32
	movk	x21, #16393, lsl #48
	stur	x8, [x29, #-72]
	mov	x22, #4571153621781053440       ; =0x3f70000000000000
	mov	x23, #70368744177664            ; =0x400000000000
	movk	x23, #16527, lsl #48
	add	x24, sp, #1048
	add	x25, sp, #24
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	scvtf	d0, w20
	fmov	d1, x21
	fmul	d0, d0, d1
	fmov	d1, x22
	fmul	d0, d0, d1
	bl	_libmin_cos
	fmov	d1, x23
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [x24, x19]
	str	wzr, [x25, x19]
	add	x20, x20, #2
	add	x19, x19, #4
	cmp	x20, #512
	b.ne	LBB6_1
; %bb.2:
	add	x20, sp, #1048
	add	x21, sp, #24
	add	x0, sp, #1048
	add	x1, sp, #24
	mov	w3, #0                          ; =0x0
	mov	w2, #8                          ; =0x8
	bl	_fix_fft
	mov	x22, #0                         ; =0x0
Lloh33:
	adrp	x19, l_.str@PAGE
Lloh34:
	add	x19, x19, l_.str@PAGEOFF
LBB6_3:                                 ; =>This Inner Loop Header: Depth=1
	lsl	x8, x22, #2
	ldr	w9, [x20, x8]
	ldr	w8, [x21, x8]
	stp	x9, x8, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x22, x22, #1
	cmp	x22, #256
	b.ne	LBB6_3
; %bb.4:
	add	x20, sp, #1048
	add	x21, sp, #24
	add	x0, sp, #1048
	add	x1, sp, #24
	mov	w2, #8                          ; =0x8
	mov	w3, #1                          ; =0x1
	bl	_fix_fft
	mov	x22, #0                         ; =0x0
Lloh35:
	adrp	x19, l_.str@PAGE
Lloh36:
	add	x19, x19, l_.str@PAGEOFF
LBB6_5:                                 ; =>This Inner Loop Header: Depth=1
	lsl	x8, x22, #2
	ldr	w9, [x20, x8]
	ldr	w8, [x21, x8]
	stp	x9, x8, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x22, x22, #1
	cmp	x22, #256
	b.ne	LBB6_5
; %bb.6:
	bl	_libmin_success
	ldur	x8, [x29, #-72]
Lloh37:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh38:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh39:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_8
; %bb.7:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2080
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB6_8:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh30, Lloh31, Lloh32
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGotLdr	Lloh37, Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_Sinewave                       ; @Sinewave
	.p2align	2, 0x0
_Sinewave:
	.long	0                               ; 0x0
	.long	201                             ; 0xc9
	.long	402                             ; 0x192
	.long	603                             ; 0x25b
	.long	804                             ; 0x324
	.long	1005                            ; 0x3ed
	.long	1206                            ; 0x4b6
	.long	1406                            ; 0x57e
	.long	1607                            ; 0x647
	.long	1808                            ; 0x710
	.long	2009                            ; 0x7d9
	.long	2209                            ; 0x8a1
	.long	2410                            ; 0x96a
	.long	2610                            ; 0xa32
	.long	2811                            ; 0xafb
	.long	3011                            ; 0xbc3
	.long	3211                            ; 0xc8b
	.long	3411                            ; 0xd53
	.long	3611                            ; 0xe1b
	.long	3811                            ; 0xee3
	.long	4011                            ; 0xfab
	.long	4210                            ; 0x1072
	.long	4409                            ; 0x1139
	.long	4608                            ; 0x1200
	.long	4807                            ; 0x12c7
	.long	5006                            ; 0x138e
	.long	5205                            ; 0x1455
	.long	5403                            ; 0x151b
	.long	5601                            ; 0x15e1
	.long	5799                            ; 0x16a7
	.long	5997                            ; 0x176d
	.long	6195                            ; 0x1833
	.long	6392                            ; 0x18f8
	.long	6589                            ; 0x19bd
	.long	6786                            ; 0x1a82
	.long	6982                            ; 0x1b46
	.long	7179                            ; 0x1c0b
	.long	7375                            ; 0x1ccf
	.long	7571                            ; 0x1d93
	.long	7766                            ; 0x1e56
	.long	7961                            ; 0x1f19
	.long	8156                            ; 0x1fdc
	.long	8351                            ; 0x209f
	.long	8545                            ; 0x2161
	.long	8739                            ; 0x2223
	.long	8932                            ; 0x22e4
	.long	9126                            ; 0x23a6
	.long	9319                            ; 0x2467
	.long	9511                            ; 0x2527
	.long	9703                            ; 0x25e7
	.long	9895                            ; 0x26a7
	.long	10087                           ; 0x2767
	.long	10278                           ; 0x2826
	.long	10469                           ; 0x28e5
	.long	10659                           ; 0x29a3
	.long	10849                           ; 0x2a61
	.long	11038                           ; 0x2b1e
	.long	11227                           ; 0x2bdb
	.long	11416                           ; 0x2c98
	.long	11604                           ; 0x2d54
	.long	11792                           ; 0x2e10
	.long	11980                           ; 0x2ecc
	.long	12166                           ; 0x2f86
	.long	12353                           ; 0x3041
	.long	12539                           ; 0x30fb
	.long	12724                           ; 0x31b4
	.long	12909                           ; 0x326d
	.long	13094                           ; 0x3326
	.long	13278                           ; 0x33de
	.long	13462                           ; 0x3496
	.long	13645                           ; 0x354d
	.long	13827                           ; 0x3603
	.long	14009                           ; 0x36b9
	.long	14191                           ; 0x376f
	.long	14372                           ; 0x3824
	.long	14552                           ; 0x38d8
	.long	14732                           ; 0x398c
	.long	14911                           ; 0x3a3f
	.long	15090                           ; 0x3af2
	.long	15268                           ; 0x3ba4
	.long	15446                           ; 0x3c56
	.long	15623                           ; 0x3d07
	.long	15799                           ; 0x3db7
	.long	15975                           ; 0x3e67
	.long	16150                           ; 0x3f16
	.long	16325                           ; 0x3fc5
	.long	16499                           ; 0x4073
	.long	16672                           ; 0x4120
	.long	16845                           ; 0x41cd
	.long	17017                           ; 0x4279
	.long	17189                           ; 0x4325
	.long	17360                           ; 0x43d0
	.long	17530                           ; 0x447a
	.long	17699                           ; 0x4523
	.long	17868                           ; 0x45cc
	.long	18036                           ; 0x4674
	.long	18204                           ; 0x471c
	.long	18371                           ; 0x47c3
	.long	18537                           ; 0x4869
	.long	18702                           ; 0x490e
	.long	18867                           ; 0x49b3
	.long	19031                           ; 0x4a57
	.long	19194                           ; 0x4afa
	.long	19357                           ; 0x4b9d
	.long	19519                           ; 0x4c3f
	.long	19680                           ; 0x4ce0
	.long	19840                           ; 0x4d80
	.long	20000                           ; 0x4e20
	.long	20159                           ; 0x4ebf
	.long	20317                           ; 0x4f5d
	.long	20474                           ; 0x4ffa
	.long	20631                           ; 0x5097
	.long	20787                           ; 0x5133
	.long	20942                           ; 0x51ce
	.long	21096                           ; 0x5268
	.long	21249                           ; 0x5301
	.long	21402                           ; 0x539a
	.long	21554                           ; 0x5432
	.long	21705                           ; 0x54c9
	.long	21855                           ; 0x555f
	.long	22004                           ; 0x55f4
	.long	22153                           ; 0x5689
	.long	22301                           ; 0x571d
	.long	22448                           ; 0x57b0
	.long	22594                           ; 0x5842
	.long	22739                           ; 0x58d3
	.long	22883                           ; 0x5963
	.long	23027                           ; 0x59f3
	.long	23169                           ; 0x5a81
	.long	23311                           ; 0x5b0f
	.long	23452                           ; 0x5b9c
	.long	23592                           ; 0x5c28
	.long	23731                           ; 0x5cb3
	.long	23869                           ; 0x5d3d
	.long	24006                           ; 0x5dc6
	.long	24143                           ; 0x5e4f
	.long	24278                           ; 0x5ed6
	.long	24413                           ; 0x5f5d
	.long	24546                           ; 0x5fe2
	.long	24679                           ; 0x6067
	.long	24811                           ; 0x60eb
	.long	24942                           ; 0x616e
	.long	25072                           ; 0x61f0
	.long	25201                           ; 0x6271
	.long	25329                           ; 0x62f1
	.long	25456                           ; 0x6370
	.long	25582                           ; 0x63ee
	.long	25707                           ; 0x646b
	.long	25831                           ; 0x64e7
	.long	25954                           ; 0x6562
	.long	26077                           ; 0x65dd
	.long	26198                           ; 0x6656
	.long	26318                           ; 0x66ce
	.long	26437                           ; 0x6745
	.long	26556                           ; 0x67bc
	.long	26673                           ; 0x6831
	.long	26789                           ; 0x68a5
	.long	26905                           ; 0x6919
	.long	27019                           ; 0x698b
	.long	27132                           ; 0x69fc
	.long	27244                           ; 0x6a6c
	.long	27355                           ; 0x6adb
	.long	27466                           ; 0x6b4a
	.long	27575                           ; 0x6bb7
	.long	27683                           ; 0x6c23
	.long	27790                           ; 0x6c8e
	.long	27896                           ; 0x6cf8
	.long	28001                           ; 0x6d61
	.long	28105                           ; 0x6dc9
	.long	28208                           ; 0x6e30
	.long	28309                           ; 0x6e95
	.long	28410                           ; 0x6efa
	.long	28510                           ; 0x6f5e
	.long	28608                           ; 0x6fc0
	.long	28706                           ; 0x7022
	.long	28802                           ; 0x7082
	.long	28897                           ; 0x70e1
	.long	28992                           ; 0x7140
	.long	29085                           ; 0x719d
	.long	29177                           ; 0x71f9
	.long	29268                           ; 0x7254
	.long	29358                           ; 0x72ae
	.long	29446                           ; 0x7306
	.long	29534                           ; 0x735e
	.long	29621                           ; 0x73b5
	.long	29706                           ; 0x740a
	.long	29790                           ; 0x745e
	.long	29873                           ; 0x74b1
	.long	29955                           ; 0x7503
	.long	30036                           ; 0x7554
	.long	30116                           ; 0x75a4
	.long	30195                           ; 0x75f3
	.long	30272                           ; 0x7640
	.long	30349                           ; 0x768d
	.long	30424                           ; 0x76d8
	.long	30498                           ; 0x7722
	.long	30571                           ; 0x776b
	.long	30643                           ; 0x77b3
	.long	30713                           ; 0x77f9
	.long	30783                           ; 0x783f
	.long	30851                           ; 0x7883
	.long	30918                           ; 0x78c6
	.long	30984                           ; 0x7908
	.long	31049                           ; 0x7949
	.long	31113                           ; 0x7989
	.long	31175                           ; 0x79c7
	.long	31236                           ; 0x7a04
	.long	31297                           ; 0x7a41
	.long	31356                           ; 0x7a7c
	.long	31413                           ; 0x7ab5
	.long	31470                           ; 0x7aee
	.long	31525                           ; 0x7b25
	.long	31580                           ; 0x7b5c
	.long	31633                           ; 0x7b91
	.long	31684                           ; 0x7bc4
	.long	31735                           ; 0x7bf7
	.long	31785                           ; 0x7c29
	.long	31833                           ; 0x7c59
	.long	31880                           ; 0x7c88
	.long	31926                           ; 0x7cb6
	.long	31970                           ; 0x7ce2
	.long	32014                           ; 0x7d0e
	.long	32056                           ; 0x7d38
	.long	32097                           ; 0x7d61
	.long	32137                           ; 0x7d89
	.long	32176                           ; 0x7db0
	.long	32213                           ; 0x7dd5
	.long	32249                           ; 0x7df9
	.long	32284                           ; 0x7e1c
	.long	32318                           ; 0x7e3e
	.long	32350                           ; 0x7e5e
	.long	32382                           ; 0x7e7e
	.long	32412                           ; 0x7e9c
	.long	32441                           ; 0x7eb9
	.long	32468                           ; 0x7ed4
	.long	32495                           ; 0x7eef
	.long	32520                           ; 0x7f08
	.long	32544                           ; 0x7f20
	.long	32567                           ; 0x7f37
	.long	32588                           ; 0x7f4c
	.long	32609                           ; 0x7f61
	.long	32628                           ; 0x7f74
	.long	32646                           ; 0x7f86
	.long	32662                           ; 0x7f96
	.long	32678                           ; 0x7fa6
	.long	32692                           ; 0x7fb4
	.long	32705                           ; 0x7fc1
	.long	32717                           ; 0x7fcd
	.long	32727                           ; 0x7fd7
	.long	32736                           ; 0x7fe0
	.long	32744                           ; 0x7fe8
	.long	32751                           ; 0x7fef
	.long	32757                           ; 0x7ff5
	.long	32761                           ; 0x7ff9
	.long	32764                           ; 0x7ffc
	.long	32766                           ; 0x7ffe
	.long	32767                           ; 0x7fff
	.long	32766                           ; 0x7ffe
	.long	32764                           ; 0x7ffc
	.long	32761                           ; 0x7ff9
	.long	32757                           ; 0x7ff5
	.long	32751                           ; 0x7fef
	.long	32744                           ; 0x7fe8
	.long	32736                           ; 0x7fe0
	.long	32727                           ; 0x7fd7
	.long	32717                           ; 0x7fcd
	.long	32705                           ; 0x7fc1
	.long	32692                           ; 0x7fb4
	.long	32678                           ; 0x7fa6
	.long	32662                           ; 0x7f96
	.long	32646                           ; 0x7f86
	.long	32628                           ; 0x7f74
	.long	32609                           ; 0x7f61
	.long	32588                           ; 0x7f4c
	.long	32567                           ; 0x7f37
	.long	32544                           ; 0x7f20
	.long	32520                           ; 0x7f08
	.long	32495                           ; 0x7eef
	.long	32468                           ; 0x7ed4
	.long	32441                           ; 0x7eb9
	.long	32412                           ; 0x7e9c
	.long	32382                           ; 0x7e7e
	.long	32350                           ; 0x7e5e
	.long	32318                           ; 0x7e3e
	.long	32284                           ; 0x7e1c
	.long	32249                           ; 0x7df9
	.long	32213                           ; 0x7dd5
	.long	32176                           ; 0x7db0
	.long	32137                           ; 0x7d89
	.long	32097                           ; 0x7d61
	.long	32056                           ; 0x7d38
	.long	32014                           ; 0x7d0e
	.long	31970                           ; 0x7ce2
	.long	31926                           ; 0x7cb6
	.long	31880                           ; 0x7c88
	.long	31833                           ; 0x7c59
	.long	31785                           ; 0x7c29
	.long	31735                           ; 0x7bf7
	.long	31684                           ; 0x7bc4
	.long	31633                           ; 0x7b91
	.long	31580                           ; 0x7b5c
	.long	31525                           ; 0x7b25
	.long	31470                           ; 0x7aee
	.long	31413                           ; 0x7ab5
	.long	31356                           ; 0x7a7c
	.long	31297                           ; 0x7a41
	.long	31236                           ; 0x7a04
	.long	31175                           ; 0x79c7
	.long	31113                           ; 0x7989
	.long	31049                           ; 0x7949
	.long	30984                           ; 0x7908
	.long	30918                           ; 0x78c6
	.long	30851                           ; 0x7883
	.long	30783                           ; 0x783f
	.long	30713                           ; 0x77f9
	.long	30643                           ; 0x77b3
	.long	30571                           ; 0x776b
	.long	30498                           ; 0x7722
	.long	30424                           ; 0x76d8
	.long	30349                           ; 0x768d
	.long	30272                           ; 0x7640
	.long	30195                           ; 0x75f3
	.long	30116                           ; 0x75a4
	.long	30036                           ; 0x7554
	.long	29955                           ; 0x7503
	.long	29873                           ; 0x74b1
	.long	29790                           ; 0x745e
	.long	29706                           ; 0x740a
	.long	29621                           ; 0x73b5
	.long	29534                           ; 0x735e
	.long	29446                           ; 0x7306
	.long	29358                           ; 0x72ae
	.long	29268                           ; 0x7254
	.long	29177                           ; 0x71f9
	.long	29085                           ; 0x719d
	.long	28992                           ; 0x7140
	.long	28897                           ; 0x70e1
	.long	28802                           ; 0x7082
	.long	28706                           ; 0x7022
	.long	28608                           ; 0x6fc0
	.long	28510                           ; 0x6f5e
	.long	28410                           ; 0x6efa
	.long	28309                           ; 0x6e95
	.long	28208                           ; 0x6e30
	.long	28105                           ; 0x6dc9
	.long	28001                           ; 0x6d61
	.long	27896                           ; 0x6cf8
	.long	27790                           ; 0x6c8e
	.long	27683                           ; 0x6c23
	.long	27575                           ; 0x6bb7
	.long	27466                           ; 0x6b4a
	.long	27355                           ; 0x6adb
	.long	27244                           ; 0x6a6c
	.long	27132                           ; 0x69fc
	.long	27019                           ; 0x698b
	.long	26905                           ; 0x6919
	.long	26789                           ; 0x68a5
	.long	26673                           ; 0x6831
	.long	26556                           ; 0x67bc
	.long	26437                           ; 0x6745
	.long	26318                           ; 0x66ce
	.long	26198                           ; 0x6656
	.long	26077                           ; 0x65dd
	.long	25954                           ; 0x6562
	.long	25831                           ; 0x64e7
	.long	25707                           ; 0x646b
	.long	25582                           ; 0x63ee
	.long	25456                           ; 0x6370
	.long	25329                           ; 0x62f1
	.long	25201                           ; 0x6271
	.long	25072                           ; 0x61f0
	.long	24942                           ; 0x616e
	.long	24811                           ; 0x60eb
	.long	24679                           ; 0x6067
	.long	24546                           ; 0x5fe2
	.long	24413                           ; 0x5f5d
	.long	24278                           ; 0x5ed6
	.long	24143                           ; 0x5e4f
	.long	24006                           ; 0x5dc6
	.long	23869                           ; 0x5d3d
	.long	23731                           ; 0x5cb3
	.long	23592                           ; 0x5c28
	.long	23452                           ; 0x5b9c
	.long	23311                           ; 0x5b0f
	.long	23169                           ; 0x5a81
	.long	23027                           ; 0x59f3
	.long	22883                           ; 0x5963
	.long	22739                           ; 0x58d3
	.long	22594                           ; 0x5842
	.long	22448                           ; 0x57b0
	.long	22301                           ; 0x571d
	.long	22153                           ; 0x5689
	.long	22004                           ; 0x55f4
	.long	21855                           ; 0x555f
	.long	21705                           ; 0x54c9
	.long	21554                           ; 0x5432
	.long	21402                           ; 0x539a
	.long	21249                           ; 0x5301
	.long	21096                           ; 0x5268
	.long	20942                           ; 0x51ce
	.long	20787                           ; 0x5133
	.long	20631                           ; 0x5097
	.long	20474                           ; 0x4ffa
	.long	20317                           ; 0x4f5d
	.long	20159                           ; 0x4ebf
	.long	20000                           ; 0x4e20
	.long	19840                           ; 0x4d80
	.long	19680                           ; 0x4ce0
	.long	19519                           ; 0x4c3f
	.long	19357                           ; 0x4b9d
	.long	19194                           ; 0x4afa
	.long	19031                           ; 0x4a57
	.long	18867                           ; 0x49b3
	.long	18702                           ; 0x490e
	.long	18537                           ; 0x4869
	.long	18371                           ; 0x47c3
	.long	18204                           ; 0x471c
	.long	18036                           ; 0x4674
	.long	17868                           ; 0x45cc
	.long	17699                           ; 0x4523
	.long	17530                           ; 0x447a
	.long	17360                           ; 0x43d0
	.long	17189                           ; 0x4325
	.long	17017                           ; 0x4279
	.long	16845                           ; 0x41cd
	.long	16672                           ; 0x4120
	.long	16499                           ; 0x4073
	.long	16325                           ; 0x3fc5
	.long	16150                           ; 0x3f16
	.long	15975                           ; 0x3e67
	.long	15799                           ; 0x3db7
	.long	15623                           ; 0x3d07
	.long	15446                           ; 0x3c56
	.long	15268                           ; 0x3ba4
	.long	15090                           ; 0x3af2
	.long	14911                           ; 0x3a3f
	.long	14732                           ; 0x398c
	.long	14552                           ; 0x38d8
	.long	14372                           ; 0x3824
	.long	14191                           ; 0x376f
	.long	14009                           ; 0x36b9
	.long	13827                           ; 0x3603
	.long	13645                           ; 0x354d
	.long	13462                           ; 0x3496
	.long	13278                           ; 0x33de
	.long	13094                           ; 0x3326
	.long	12909                           ; 0x326d
	.long	12724                           ; 0x31b4
	.long	12539                           ; 0x30fb
	.long	12353                           ; 0x3041
	.long	12166                           ; 0x2f86
	.long	11980                           ; 0x2ecc
	.long	11792                           ; 0x2e10
	.long	11604                           ; 0x2d54
	.long	11416                           ; 0x2c98
	.long	11227                           ; 0x2bdb
	.long	11038                           ; 0x2b1e
	.long	10849                           ; 0x2a61
	.long	10659                           ; 0x29a3
	.long	10469                           ; 0x28e5
	.long	10278                           ; 0x2826
	.long	10087                           ; 0x2767
	.long	9895                            ; 0x26a7
	.long	9703                            ; 0x25e7
	.long	9511                            ; 0x2527
	.long	9319                            ; 0x2467
	.long	9126                            ; 0x23a6
	.long	8932                            ; 0x22e4
	.long	8739                            ; 0x2223
	.long	8545                            ; 0x2161
	.long	8351                            ; 0x209f
	.long	8156                            ; 0x1fdc
	.long	7961                            ; 0x1f19
	.long	7766                            ; 0x1e56
	.long	7571                            ; 0x1d93
	.long	7375                            ; 0x1ccf
	.long	7179                            ; 0x1c0b
	.long	6982                            ; 0x1b46
	.long	6786                            ; 0x1a82
	.long	6589                            ; 0x19bd
	.long	6392                            ; 0x18f8
	.long	6195                            ; 0x1833
	.long	5997                            ; 0x176d
	.long	5799                            ; 0x16a7
	.long	5601                            ; 0x15e1
	.long	5403                            ; 0x151b
	.long	5205                            ; 0x1455
	.long	5006                            ; 0x138e
	.long	4807                            ; 0x12c7
	.long	4608                            ; 0x1200
	.long	4409                            ; 0x1139
	.long	4210                            ; 0x1072
	.long	4011                            ; 0xfab
	.long	3811                            ; 0xee3
	.long	3611                            ; 0xe1b
	.long	3411                            ; 0xd53
	.long	3211                            ; 0xc8b
	.long	3011                            ; 0xbc3
	.long	2811                            ; 0xafb
	.long	2610                            ; 0xa32
	.long	2410                            ; 0x96a
	.long	2209                            ; 0x8a1
	.long	2009                            ; 0x7d9
	.long	1808                            ; 0x710
	.long	1607                            ; 0x647
	.long	1406                            ; 0x57e
	.long	1206                            ; 0x4b6
	.long	1005                            ; 0x3ed
	.long	804                             ; 0x324
	.long	603                             ; 0x25b
	.long	402                             ; 0x192
	.long	201                             ; 0xc9
	.long	0                               ; 0x0
	.long	4294967095                      ; 0xffffff37
	.long	4294966894                      ; 0xfffffe6e
	.long	4294966693                      ; 0xfffffda5
	.long	4294966492                      ; 0xfffffcdc
	.long	4294966291                      ; 0xfffffc13
	.long	4294966090                      ; 0xfffffb4a
	.long	4294965890                      ; 0xfffffa82
	.long	4294965689                      ; 0xfffff9b9
	.long	4294965488                      ; 0xfffff8f0
	.long	4294965287                      ; 0xfffff827
	.long	4294965087                      ; 0xfffff75f
	.long	4294964886                      ; 0xfffff696
	.long	4294964686                      ; 0xfffff5ce
	.long	4294964485                      ; 0xfffff505
	.long	4294964285                      ; 0xfffff43d
	.long	4294964085                      ; 0xfffff375
	.long	4294963885                      ; 0xfffff2ad
	.long	4294963685                      ; 0xfffff1e5
	.long	4294963485                      ; 0xfffff11d
	.long	4294963285                      ; 0xfffff055
	.long	4294963086                      ; 0xffffef8e
	.long	4294962887                      ; 0xffffeec7
	.long	4294962688                      ; 0xffffee00
	.long	4294962489                      ; 0xffffed39
	.long	4294962290                      ; 0xffffec72
	.long	4294962091                      ; 0xffffebab
	.long	4294961893                      ; 0xffffeae5
	.long	4294961695                      ; 0xffffea1f
	.long	4294961497                      ; 0xffffe959
	.long	4294961299                      ; 0xffffe893
	.long	4294961101                      ; 0xffffe7cd
	.long	4294960904                      ; 0xffffe708
	.long	4294960707                      ; 0xffffe643
	.long	4294960510                      ; 0xffffe57e
	.long	4294960314                      ; 0xffffe4ba
	.long	4294960117                      ; 0xffffe3f5
	.long	4294959921                      ; 0xffffe331
	.long	4294959725                      ; 0xffffe26d
	.long	4294959530                      ; 0xffffe1aa
	.long	4294959335                      ; 0xffffe0e7
	.long	4294959140                      ; 0xffffe024
	.long	4294958945                      ; 0xffffdf61
	.long	4294958751                      ; 0xffffde9f
	.long	4294958557                      ; 0xffffdddd
	.long	4294958364                      ; 0xffffdd1c
	.long	4294958170                      ; 0xffffdc5a
	.long	4294957977                      ; 0xffffdb99
	.long	4294957785                      ; 0xffffdad9
	.long	4294957593                      ; 0xffffda19
	.long	4294957401                      ; 0xffffd959
	.long	4294957209                      ; 0xffffd899
	.long	4294957018                      ; 0xffffd7da
	.long	4294956827                      ; 0xffffd71b
	.long	4294956637                      ; 0xffffd65d
	.long	4294956447                      ; 0xffffd59f
	.long	4294956258                      ; 0xffffd4e2
	.long	4294956069                      ; 0xffffd425
	.long	4294955880                      ; 0xffffd368
	.long	4294955692                      ; 0xffffd2ac
	.long	4294955504                      ; 0xffffd1f0
	.long	4294955316                      ; 0xffffd134
	.long	4294955130                      ; 0xffffd07a
	.long	4294954943                      ; 0xffffcfbf
	.long	4294954757                      ; 0xffffcf05
	.long	4294954572                      ; 0xffffce4c
	.long	4294954387                      ; 0xffffcd93
	.long	4294954202                      ; 0xffffccda
	.long	4294954018                      ; 0xffffcc22
	.long	4294953834                      ; 0xffffcb6a
	.long	4294953651                      ; 0xffffcab3
	.long	4294953469                      ; 0xffffc9fd
	.long	4294953287                      ; 0xffffc947
	.long	4294953105                      ; 0xffffc891
	.long	4294952924                      ; 0xffffc7dc
	.long	4294952744                      ; 0xffffc728
	.long	4294952564                      ; 0xffffc674
	.long	4294952385                      ; 0xffffc5c1
	.long	4294952206                      ; 0xffffc50e
	.long	4294952028                      ; 0xffffc45c
	.long	4294951850                      ; 0xffffc3aa
	.long	4294951673                      ; 0xffffc2f9
	.long	4294951497                      ; 0xffffc249
	.long	4294951321                      ; 0xffffc199
	.long	4294951146                      ; 0xffffc0ea
	.long	4294950971                      ; 0xffffc03b
	.long	4294950797                      ; 0xffffbf8d
	.long	4294950624                      ; 0xffffbee0
	.long	4294950451                      ; 0xffffbe33
	.long	4294950279                      ; 0xffffbd87
	.long	4294950107                      ; 0xffffbcdb
	.long	4294949936                      ; 0xffffbc30
	.long	4294949766                      ; 0xffffbb86
	.long	4294949597                      ; 0xffffbadd
	.long	4294949428                      ; 0xffffba34
	.long	4294949260                      ; 0xffffb98c
	.long	4294949092                      ; 0xffffb8e4
	.long	4294948925                      ; 0xffffb83d
	.long	4294948759                      ; 0xffffb797
	.long	4294948594                      ; 0xffffb6f2
	.long	4294948429                      ; 0xffffb64d
	.long	4294948265                      ; 0xffffb5a9
	.long	4294948102                      ; 0xffffb506
	.long	4294947939                      ; 0xffffb463
	.long	4294947777                      ; 0xffffb3c1
	.long	4294947616                      ; 0xffffb320
	.long	4294947456                      ; 0xffffb280
	.long	4294947296                      ; 0xffffb1e0
	.long	4294947137                      ; 0xffffb141
	.long	4294946979                      ; 0xffffb0a3
	.long	4294946822                      ; 0xffffb006
	.long	4294946665                      ; 0xffffaf69
	.long	4294946509                      ; 0xffffaecd
	.long	4294946354                      ; 0xffffae32
	.long	4294946200                      ; 0xffffad98
	.long	4294946047                      ; 0xffffacff
	.long	4294945894                      ; 0xffffac66
	.long	4294945742                      ; 0xffffabce
	.long	4294945591                      ; 0xffffab37
	.long	4294945441                      ; 0xffffaaa1
	.long	4294945292                      ; 0xffffaa0c
	.long	4294945143                      ; 0xffffa977
	.long	4294944995                      ; 0xffffa8e3
	.long	4294944848                      ; 0xffffa850
	.long	4294944702                      ; 0xffffa7be
	.long	4294944557                      ; 0xffffa72d
	.long	4294944413                      ; 0xffffa69d
	.long	4294944269                      ; 0xffffa60d
	.long	4294944127                      ; 0xffffa57f
	.long	4294943985                      ; 0xffffa4f1
	.long	4294943844                      ; 0xffffa464
	.long	4294943704                      ; 0xffffa3d8
	.long	4294943565                      ; 0xffffa34d
	.long	4294943427                      ; 0xffffa2c3
	.long	4294943290                      ; 0xffffa23a
	.long	4294943153                      ; 0xffffa1b1
	.long	4294943018                      ; 0xffffa12a
	.long	4294942883                      ; 0xffffa0a3
	.long	4294942750                      ; 0xffffa01e
	.long	4294942617                      ; 0xffff9f99
	.long	4294942485                      ; 0xffff9f15
	.long	4294942354                      ; 0xffff9e92
	.long	4294942224                      ; 0xffff9e10
	.long	4294942095                      ; 0xffff9d8f
	.long	4294941967                      ; 0xffff9d0f
	.long	4294941840                      ; 0xffff9c90
	.long	4294941714                      ; 0xffff9c12
	.long	4294941589                      ; 0xffff9b95
	.long	4294941465                      ; 0xffff9b19
	.long	4294941342                      ; 0xffff9a9e
	.long	4294941219                      ; 0xffff9a23
	.long	4294941098                      ; 0xffff99aa
	.long	4294940978                      ; 0xffff9932
	.long	4294940859                      ; 0xffff98bb
	.long	4294940740                      ; 0xffff9844
	.long	4294940623                      ; 0xffff97cf
	.long	4294940507                      ; 0xffff975b
	.long	4294940391                      ; 0xffff96e7
	.long	4294940277                      ; 0xffff9675
	.long	4294940164                      ; 0xffff9604
	.long	4294940052                      ; 0xffff9594
	.long	4294939941                      ; 0xffff9525
	.long	4294939830                      ; 0xffff94b6
	.long	4294939721                      ; 0xffff9449
	.long	4294939613                      ; 0xffff93dd
	.long	4294939506                      ; 0xffff9372
	.long	4294939400                      ; 0xffff9308
	.long	4294939295                      ; 0xffff929f
	.long	4294939191                      ; 0xffff9237
	.long	4294939088                      ; 0xffff91d0
	.long	4294938987                      ; 0xffff916b
	.long	4294938886                      ; 0xffff9106
	.long	4294938786                      ; 0xffff90a2
	.long	4294938688                      ; 0xffff9040
	.long	4294938590                      ; 0xffff8fde
	.long	4294938494                      ; 0xffff8f7e
	.long	4294938399                      ; 0xffff8f1f
	.long	4294938304                      ; 0xffff8ec0
	.long	4294938211                      ; 0xffff8e63
	.long	4294938119                      ; 0xffff8e07
	.long	4294938028                      ; 0xffff8dac
	.long	4294937938                      ; 0xffff8d52
	.long	4294937850                      ; 0xffff8cfa
	.long	4294937762                      ; 0xffff8ca2
	.long	4294937675                      ; 0xffff8c4b
	.long	4294937590                      ; 0xffff8bf6
	.long	4294937506                      ; 0xffff8ba2
	.long	4294937423                      ; 0xffff8b4f
	.long	4294937341                      ; 0xffff8afd
	.long	4294937260                      ; 0xffff8aac
	.long	4294937180                      ; 0xffff8a5c
	.long	4294937101                      ; 0xffff8a0d
	.long	4294937024                      ; 0xffff89c0
	.long	4294936947                      ; 0xffff8973
	.long	4294936872                      ; 0xffff8928
	.long	4294936798                      ; 0xffff88de
	.long	4294936725                      ; 0xffff8895
	.long	4294936653                      ; 0xffff884d
	.long	4294936583                      ; 0xffff8807
	.long	4294936513                      ; 0xffff87c1
	.long	4294936445                      ; 0xffff877d
	.long	4294936378                      ; 0xffff873a
	.long	4294936312                      ; 0xffff86f8
	.long	4294936247                      ; 0xffff86b7
	.long	4294936183                      ; 0xffff8677
	.long	4294936121                      ; 0xffff8639
	.long	4294936060                      ; 0xffff85fc
	.long	4294935999                      ; 0xffff85bf
	.long	4294935940                      ; 0xffff8584
	.long	4294935883                      ; 0xffff854b
	.long	4294935826                      ; 0xffff8512
	.long	4294935771                      ; 0xffff84db
	.long	4294935716                      ; 0xffff84a4
	.long	4294935663                      ; 0xffff846f
	.long	4294935612                      ; 0xffff843c
	.long	4294935561                      ; 0xffff8409
	.long	4294935511                      ; 0xffff83d7
	.long	4294935463                      ; 0xffff83a7
	.long	4294935416                      ; 0xffff8378
	.long	4294935370                      ; 0xffff834a
	.long	4294935326                      ; 0xffff831e
	.long	4294935282                      ; 0xffff82f2
	.long	4294935240                      ; 0xffff82c8
	.long	4294935199                      ; 0xffff829f
	.long	4294935159                      ; 0xffff8277
	.long	4294935120                      ; 0xffff8250
	.long	4294935083                      ; 0xffff822b
	.long	4294935047                      ; 0xffff8207
	.long	4294935012                      ; 0xffff81e4
	.long	4294934978                      ; 0xffff81c2
	.long	4294934946                      ; 0xffff81a2
	.long	4294934914                      ; 0xffff8182
	.long	4294934884                      ; 0xffff8164
	.long	4294934855                      ; 0xffff8147
	.long	4294934828                      ; 0xffff812c
	.long	4294934801                      ; 0xffff8111
	.long	4294934776                      ; 0xffff80f8
	.long	4294934752                      ; 0xffff80e0
	.long	4294934729                      ; 0xffff80c9
	.long	4294934708                      ; 0xffff80b4
	.long	4294934687                      ; 0xffff809f
	.long	4294934668                      ; 0xffff808c
	.long	4294934650                      ; 0xffff807a
	.long	4294934634                      ; 0xffff806a
	.long	4294934618                      ; 0xffff805a
	.long	4294934604                      ; 0xffff804c
	.long	4294934591                      ; 0xffff803f
	.long	4294934579                      ; 0xffff8033
	.long	4294934569                      ; 0xffff8029
	.long	4294934560                      ; 0xffff8020
	.long	4294934552                      ; 0xffff8018
	.long	4294934545                      ; 0xffff8011
	.long	4294934539                      ; 0xffff800b
	.long	4294934535                      ; 0xffff8007
	.long	4294934532                      ; 0xffff8004
	.long	4294934530                      ; 0xffff8002
	.long	4294934529                      ; 0xffff8001
	.long	4294934530                      ; 0xffff8002
	.long	4294934532                      ; 0xffff8004
	.long	4294934535                      ; 0xffff8007
	.long	4294934539                      ; 0xffff800b
	.long	4294934545                      ; 0xffff8011
	.long	4294934552                      ; 0xffff8018
	.long	4294934560                      ; 0xffff8020
	.long	4294934569                      ; 0xffff8029
	.long	4294934579                      ; 0xffff8033
	.long	4294934591                      ; 0xffff803f
	.long	4294934604                      ; 0xffff804c
	.long	4294934618                      ; 0xffff805a
	.long	4294934634                      ; 0xffff806a
	.long	4294934650                      ; 0xffff807a
	.long	4294934668                      ; 0xffff808c
	.long	4294934687                      ; 0xffff809f
	.long	4294934708                      ; 0xffff80b4
	.long	4294934729                      ; 0xffff80c9
	.long	4294934752                      ; 0xffff80e0
	.long	4294934776                      ; 0xffff80f8
	.long	4294934801                      ; 0xffff8111
	.long	4294934828                      ; 0xffff812c
	.long	4294934855                      ; 0xffff8147
	.long	4294934884                      ; 0xffff8164
	.long	4294934914                      ; 0xffff8182
	.long	4294934946                      ; 0xffff81a2
	.long	4294934978                      ; 0xffff81c2
	.long	4294935012                      ; 0xffff81e4
	.long	4294935047                      ; 0xffff8207
	.long	4294935083                      ; 0xffff822b
	.long	4294935120                      ; 0xffff8250
	.long	4294935159                      ; 0xffff8277
	.long	4294935199                      ; 0xffff829f
	.long	4294935240                      ; 0xffff82c8
	.long	4294935282                      ; 0xffff82f2
	.long	4294935326                      ; 0xffff831e
	.long	4294935370                      ; 0xffff834a
	.long	4294935416                      ; 0xffff8378
	.long	4294935463                      ; 0xffff83a7
	.long	4294935511                      ; 0xffff83d7
	.long	4294935561                      ; 0xffff8409
	.long	4294935612                      ; 0xffff843c
	.long	4294935663                      ; 0xffff846f
	.long	4294935716                      ; 0xffff84a4
	.long	4294935771                      ; 0xffff84db
	.long	4294935826                      ; 0xffff8512
	.long	4294935883                      ; 0xffff854b
	.long	4294935940                      ; 0xffff8584
	.long	4294935999                      ; 0xffff85bf
	.long	4294936060                      ; 0xffff85fc
	.long	4294936121                      ; 0xffff8639
	.long	4294936183                      ; 0xffff8677
	.long	4294936247                      ; 0xffff86b7
	.long	4294936312                      ; 0xffff86f8
	.long	4294936378                      ; 0xffff873a
	.long	4294936445                      ; 0xffff877d
	.long	4294936513                      ; 0xffff87c1
	.long	4294936583                      ; 0xffff8807
	.long	4294936653                      ; 0xffff884d
	.long	4294936725                      ; 0xffff8895
	.long	4294936798                      ; 0xffff88de
	.long	4294936872                      ; 0xffff8928
	.long	4294936947                      ; 0xffff8973
	.long	4294937024                      ; 0xffff89c0
	.long	4294937101                      ; 0xffff8a0d
	.long	4294937180                      ; 0xffff8a5c
	.long	4294937260                      ; 0xffff8aac
	.long	4294937341                      ; 0xffff8afd
	.long	4294937423                      ; 0xffff8b4f
	.long	4294937506                      ; 0xffff8ba2
	.long	4294937590                      ; 0xffff8bf6
	.long	4294937675                      ; 0xffff8c4b
	.long	4294937762                      ; 0xffff8ca2
	.long	4294937850                      ; 0xffff8cfa
	.long	4294937938                      ; 0xffff8d52
	.long	4294938028                      ; 0xffff8dac
	.long	4294938119                      ; 0xffff8e07
	.long	4294938211                      ; 0xffff8e63
	.long	4294938304                      ; 0xffff8ec0
	.long	4294938399                      ; 0xffff8f1f
	.long	4294938494                      ; 0xffff8f7e
	.long	4294938590                      ; 0xffff8fde
	.long	4294938688                      ; 0xffff9040
	.long	4294938786                      ; 0xffff90a2
	.long	4294938886                      ; 0xffff9106
	.long	4294938987                      ; 0xffff916b
	.long	4294939088                      ; 0xffff91d0
	.long	4294939191                      ; 0xffff9237
	.long	4294939295                      ; 0xffff929f
	.long	4294939400                      ; 0xffff9308
	.long	4294939506                      ; 0xffff9372
	.long	4294939613                      ; 0xffff93dd
	.long	4294939721                      ; 0xffff9449
	.long	4294939830                      ; 0xffff94b6
	.long	4294939941                      ; 0xffff9525
	.long	4294940052                      ; 0xffff9594
	.long	4294940164                      ; 0xffff9604
	.long	4294940277                      ; 0xffff9675
	.long	4294940391                      ; 0xffff96e7
	.long	4294940507                      ; 0xffff975b
	.long	4294940623                      ; 0xffff97cf
	.long	4294940740                      ; 0xffff9844
	.long	4294940859                      ; 0xffff98bb
	.long	4294940978                      ; 0xffff9932
	.long	4294941098                      ; 0xffff99aa
	.long	4294941219                      ; 0xffff9a23
	.long	4294941342                      ; 0xffff9a9e
	.long	4294941465                      ; 0xffff9b19
	.long	4294941589                      ; 0xffff9b95
	.long	4294941714                      ; 0xffff9c12
	.long	4294941840                      ; 0xffff9c90
	.long	4294941967                      ; 0xffff9d0f
	.long	4294942095                      ; 0xffff9d8f
	.long	4294942224                      ; 0xffff9e10
	.long	4294942354                      ; 0xffff9e92
	.long	4294942485                      ; 0xffff9f15
	.long	4294942617                      ; 0xffff9f99
	.long	4294942750                      ; 0xffffa01e
	.long	4294942883                      ; 0xffffa0a3
	.long	4294943018                      ; 0xffffa12a
	.long	4294943153                      ; 0xffffa1b1
	.long	4294943290                      ; 0xffffa23a
	.long	4294943427                      ; 0xffffa2c3
	.long	4294943565                      ; 0xffffa34d
	.long	4294943704                      ; 0xffffa3d8
	.long	4294943844                      ; 0xffffa464
	.long	4294943985                      ; 0xffffa4f1
	.long	4294944127                      ; 0xffffa57f
	.long	4294944269                      ; 0xffffa60d
	.long	4294944413                      ; 0xffffa69d
	.long	4294944557                      ; 0xffffa72d
	.long	4294944702                      ; 0xffffa7be
	.long	4294944848                      ; 0xffffa850
	.long	4294944995                      ; 0xffffa8e3
	.long	4294945143                      ; 0xffffa977
	.long	4294945292                      ; 0xffffaa0c
	.long	4294945441                      ; 0xffffaaa1
	.long	4294945591                      ; 0xffffab37
	.long	4294945742                      ; 0xffffabce
	.long	4294945894                      ; 0xffffac66
	.long	4294946047                      ; 0xffffacff
	.long	4294946200                      ; 0xffffad98
	.long	4294946354                      ; 0xffffae32
	.long	4294946509                      ; 0xffffaecd
	.long	4294946665                      ; 0xffffaf69
	.long	4294946822                      ; 0xffffb006
	.long	4294946979                      ; 0xffffb0a3
	.long	4294947137                      ; 0xffffb141
	.long	4294947296                      ; 0xffffb1e0
	.long	4294947456                      ; 0xffffb280
	.long	4294947616                      ; 0xffffb320
	.long	4294947777                      ; 0xffffb3c1
	.long	4294947939                      ; 0xffffb463
	.long	4294948102                      ; 0xffffb506
	.long	4294948265                      ; 0xffffb5a9
	.long	4294948429                      ; 0xffffb64d
	.long	4294948594                      ; 0xffffb6f2
	.long	4294948759                      ; 0xffffb797
	.long	4294948925                      ; 0xffffb83d
	.long	4294949092                      ; 0xffffb8e4
	.long	4294949260                      ; 0xffffb98c
	.long	4294949428                      ; 0xffffba34
	.long	4294949597                      ; 0xffffbadd
	.long	4294949766                      ; 0xffffbb86
	.long	4294949936                      ; 0xffffbc30
	.long	4294950107                      ; 0xffffbcdb
	.long	4294950279                      ; 0xffffbd87
	.long	4294950451                      ; 0xffffbe33
	.long	4294950624                      ; 0xffffbee0
	.long	4294950797                      ; 0xffffbf8d
	.long	4294950971                      ; 0xffffc03b
	.long	4294951146                      ; 0xffffc0ea
	.long	4294951321                      ; 0xffffc199
	.long	4294951497                      ; 0xffffc249
	.long	4294951673                      ; 0xffffc2f9
	.long	4294951850                      ; 0xffffc3aa
	.long	4294952028                      ; 0xffffc45c
	.long	4294952206                      ; 0xffffc50e
	.long	4294952385                      ; 0xffffc5c1
	.long	4294952564                      ; 0xffffc674
	.long	4294952744                      ; 0xffffc728
	.long	4294952924                      ; 0xffffc7dc
	.long	4294953105                      ; 0xffffc891
	.long	4294953287                      ; 0xffffc947
	.long	4294953469                      ; 0xffffc9fd
	.long	4294953651                      ; 0xffffcab3
	.long	4294953834                      ; 0xffffcb6a
	.long	4294954018                      ; 0xffffcc22
	.long	4294954202                      ; 0xffffccda
	.long	4294954387                      ; 0xffffcd93
	.long	4294954572                      ; 0xffffce4c
	.long	4294954757                      ; 0xffffcf05
	.long	4294954943                      ; 0xffffcfbf
	.long	4294955130                      ; 0xffffd07a
	.long	4294955316                      ; 0xffffd134
	.long	4294955504                      ; 0xffffd1f0
	.long	4294955692                      ; 0xffffd2ac
	.long	4294955880                      ; 0xffffd368
	.long	4294956069                      ; 0xffffd425
	.long	4294956258                      ; 0xffffd4e2
	.long	4294956447                      ; 0xffffd59f
	.long	4294956637                      ; 0xffffd65d
	.long	4294956827                      ; 0xffffd71b
	.long	4294957018                      ; 0xffffd7da
	.long	4294957209                      ; 0xffffd899
	.long	4294957401                      ; 0xffffd959
	.long	4294957593                      ; 0xffffda19
	.long	4294957785                      ; 0xffffdad9
	.long	4294957977                      ; 0xffffdb99
	.long	4294958170                      ; 0xffffdc5a
	.long	4294958364                      ; 0xffffdd1c
	.long	4294958557                      ; 0xffffdddd
	.long	4294958751                      ; 0xffffde9f
	.long	4294958945                      ; 0xffffdf61
	.long	4294959140                      ; 0xffffe024
	.long	4294959335                      ; 0xffffe0e7
	.long	4294959530                      ; 0xffffe1aa
	.long	4294959725                      ; 0xffffe26d
	.long	4294959921                      ; 0xffffe331
	.long	4294960117                      ; 0xffffe3f5
	.long	4294960314                      ; 0xffffe4ba
	.long	4294960510                      ; 0xffffe57e
	.long	4294960707                      ; 0xffffe643
	.long	4294960904                      ; 0xffffe708
	.long	4294961101                      ; 0xffffe7cd
	.long	4294961299                      ; 0xffffe893
	.long	4294961497                      ; 0xffffe959
	.long	4294961695                      ; 0xffffea1f
	.long	4294961893                      ; 0xffffeae5
	.long	4294962091                      ; 0xffffebab
	.long	4294962290                      ; 0xffffec72
	.long	4294962489                      ; 0xffffed39
	.long	4294962688                      ; 0xffffee00
	.long	4294962887                      ; 0xffffeec7
	.long	4294963086                      ; 0xffffef8e
	.long	4294963285                      ; 0xfffff055
	.long	4294963485                      ; 0xfffff11d
	.long	4294963685                      ; 0xfffff1e5
	.long	4294963885                      ; 0xfffff2ad
	.long	4294964085                      ; 0xfffff375
	.long	4294964285                      ; 0xfffff43d
	.long	4294964485                      ; 0xfffff505
	.long	4294964686                      ; 0xfffff5ce
	.long	4294964886                      ; 0xfffff696
	.long	4294965087                      ; 0xfffff75f
	.long	4294965287                      ; 0xfffff827
	.long	4294965488                      ; 0xfffff8f0
	.long	4294965689                      ; 0xfffff9b9
	.long	4294965890                      ; 0xfffffa82
	.long	4294966090                      ; 0xfffffb4a
	.long	4294966291                      ; 0xfffffc13
	.long	4294966492                      ; 0xfffffcdc
	.long	4294966693                      ; 0xfffffda5
	.long	4294966894                      ; 0xfffffe6e
	.long	4294967095                      ; 0xffffff37

.zerofill __DATA,__bss,_db_from_ampl.loud2,400,2 ; @db_from_ampl.loud2
	.globl	_Loudampl                       ; @Loudampl
	.p2align	2, 0x0
_Loudampl:
	.long	32767                           ; 0x7fff
	.long	29203                           ; 0x7213
	.long	26027                           ; 0x65ab
	.long	23197                           ; 0x5a9d
	.long	20674                           ; 0x50c2
	.long	18426                           ; 0x47fa
	.long	16422                           ; 0x4026
	.long	14636                           ; 0x392c
	.long	13044                           ; 0x32f4
	.long	11626                           ; 0x2d6a
	.long	10361                           ; 0x2879
	.long	9234                            ; 0x2412
	.long	8230                            ; 0x2026
	.long	7335                            ; 0x1ca7
	.long	6537                            ; 0x1989
	.long	5826                            ; 0x16c2
	.long	5193                            ; 0x1449
	.long	4628                            ; 0x1214
	.long	4125                            ; 0x101d
	.long	3676                            ; 0xe5c
	.long	3276                            ; 0xccc
	.long	2920                            ; 0xb68
	.long	2602                            ; 0xa2a
	.long	2319                            ; 0x90f
	.long	2067                            ; 0x813
	.long	1842                            ; 0x732
	.long	1642                            ; 0x66a
	.long	1463                            ; 0x5b7
	.long	1304                            ; 0x518
	.long	1162                            ; 0x48a
	.long	1036                            ; 0x40c
	.long	923                             ; 0x39b
	.long	823                             ; 0x337
	.long	733                             ; 0x2dd
	.long	653                             ; 0x28d
	.long	582                             ; 0x246
	.long	519                             ; 0x207
	.long	462                             ; 0x1ce
	.long	412                             ; 0x19c
	.long	367                             ; 0x16f
	.long	327                             ; 0x147
	.long	292                             ; 0x124
	.long	260                             ; 0x104
	.long	231                             ; 0xe7
	.long	206                             ; 0xce
	.long	184                             ; 0xb8
	.long	164                             ; 0xa4
	.long	146                             ; 0x92
	.long	130                             ; 0x82
	.long	116                             ; 0x74
	.long	103                             ; 0x67
	.long	92                              ; 0x5c
	.long	82                              ; 0x52
	.long	73                              ; 0x49
	.long	65                              ; 0x41
	.long	58                              ; 0x3a
	.long	51                              ; 0x33
	.long	46                              ; 0x2e
	.long	41                              ; 0x29
	.long	36                              ; 0x24
	.long	32                              ; 0x20
	.long	29                              ; 0x1d
	.long	26                              ; 0x1a
	.long	23                              ; 0x17
	.long	20                              ; 0x14
	.long	18                              ; 0x12
	.long	16                              ; 0x10
	.long	14                              ; 0xe
	.long	13                              ; 0xd
	.long	11                              ; 0xb
	.long	10                              ; 0xa
	.long	9                               ; 0x9
	.long	8                               ; 0x8
	.long	7                               ; 0x7
	.long	6                               ; 0x6
	.long	5                               ; 0x5
	.long	5                               ; 0x5
	.long	4                               ; 0x4
	.long	4                               ; 0x4
	.long	3                               ; 0x3
	.long	3                               ; 0x3
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.space	36

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d: %d, %d\n"

.subsections_via_symbols
