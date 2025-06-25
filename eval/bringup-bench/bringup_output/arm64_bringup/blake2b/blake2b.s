	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_blake2b                        ; -- Begin function blake2b
	.p2align	2
_blake2b:                               ; @blake2b
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
	mov	x24, x2
	mov	x23, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	cmp	x0, #0
	csel	x25, xzr, x1, eq
	mov	w8, #64                         ; =0x40
	cmp	w3, #64
	csel	w9, w3, w8, lo
	cmp	x2, #0
	csel	w26, wzr, w9, eq
	cmp	w4, #64
	csel	w19, w4, w8, lo
	lsr	x8, x25, #7
	tst	x25, #0x7f
	cinc	x8, x8, ne
	cmp	w26, #0
	cset	w28, ne
	cinc	x27, x8, ne
	cmp	x27, #1
	csinc	x22, x27, xzr, hi
	mov	x0, x22
	mov	w1, #128                        ; =0x80
	bl	_libmin_calloc
	cbz	x0, LBB0_23
; %bb.1:
	mov	x21, x0
	mov	x0, x19
	bl	_libmin_malloc
	mov	x20, x0
	cbz	x0, LBB0_22
; %bb.2:
	cbz	w26, LBB0_5
; %bb.3:
	mov	x8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x24, x9]
	and	x11, x8, #0x38
	lsl	x10, x10, x11
	and	x11, x9, #0x78
	ldr	x12, [x21, x11]
	orr	x10, x10, x12
	str	x10, [x21, x11]
	add	x9, x9, #1
	add	x8, x8, #8
	cmp	x26, x9
	b.ne	LBB0_4
LBB0_5:
	cbz	x25, LBB0_8
; %bb.6:
	mov	x8, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x23, x9]
	and	x11, x8, #0x38
	lsl	x10, x10, x11
	add	x11, x28, x9, lsr #7
	add	x11, x21, x11, lsl #7
	and	x12, x9, #0x78
	ldr	x13, [x11, x12]
	orr	x10, x10, x13
	str	x10, [x11, x12]
	add	x9, x9, #1
	add	x8, x8, #8
	cmp	x25, x9
	b.ne	LBB0_7
LBB0_8:
	stp	x25, xzr, [sp]
Lloh3:
	adrp	x8, _blake2b_iv@PAGE
Lloh4:
	add	x8, x8, _blake2b_iv@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #32]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [sp, #64]
	orr	x8, x19, x26, lsl #8
	mov	x9, #51464                      ; =0xc908
	movk	x9, #62141, lsl #16
	movk	x9, #58983, lsl #32
	movk	x9, #27145, lsl #48
	eor	x8, x8, x9
	stp	xzr, x8, [sp, #24]
	cmp	x27, #2
	b.lo	LBB0_13
; %bb.9:
	mov	x23, #0                         ; =0x0
	mov	x8, #0                          ; =0x0
	sub	x24, x22, #1
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	add	x27, x8, #128
	str	x27, [sp, #16]
	add	x1, x21, x8
	add	x0, sp, #32
	add	x2, sp, #16
	mov	w3, #0                          ; =0x0
	bl	_F
	mov	x8, x27
	subs	x24, x24, #1
	b.eq	LBB0_13
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	cmn	x8, #129
	b.lo	LBB0_10
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=1
	add	x23, x23, #1
	str	x23, [sp, #24]
	b	LBB0_10
LBB0_13:
	cbz	w26, LBB0_17
; %bb.14:
	cmn	x25, #129
	b.lo	LBB0_16
; %bb.15:
	mov	w8, #1                          ; =0x1
	str	x8, [sp, #8]
LBB0_16:
	add	x8, x25, #128
	str	x8, [sp]
LBB0_17:
	add	x8, x21, x22, lsl #7
	sub	x1, x8, #128
	add	x22, sp, #32
	add	x0, sp, #32
	mov	x2, sp
	mov	w3, #1                          ; =0x1
	bl	_F
	cbz	w19, LBB0_22
; %bb.18:
	mov	x8, #0                          ; =0x0
	add	x9, sp, #96
	b	LBB0_20
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=1
	ldrb	w10, [x9, x10]
	strb	w10, [x20, x8]
	add	x8, x8, #1
	cmp	x19, x8
	b.eq	LBB0_22
LBB0_20:                                ; =>This Inner Loop Header: Depth=1
	ands	x10, x8, #0x7
	b.ne	LBB0_19
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=1
	and	x11, x8, #0xfffffffffffffff8
	ldr	x11, [x22, x11]
	str	x11, [sp, #96]
	b	LBB0_19
LBB0_22:
	mov	x0, x21
	bl	_libmin_free
	b	LBB0_24
LBB0_23:
	mov	x20, #0                         ; =0x0
LBB0_24:
	ldur	x8, [x29, #-88]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_26
; %bb.25:
	mov	x0, x20
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB0_26:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #608
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w27, -40
	.cfi_offset w28, -48
	add	x20, sp, #208
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	mov	w8, #99                         ; =0x63
	strb	w8, [sp, #78]
	mov	w8, #25185                      ; =0x6261
	strh	w8, [sp, #76]
Lloh11:
	adrp	x8, l___const.test.abc_answer@PAGE
Lloh12:
	add	x8, x8, l___const.test.abc_answer@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x20, #320]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [x20, #352]
	add	x0, sp, #76
	mov	w1, #3                          ; =0x3
	mov	x2, #0                          ; =0x0
	mov	w3, #0                          ; =0x0
	mov	w4, #64                         ; =0x40
	bl	_blake2b
	mov	x19, x0
	sub	x0, x29, #112
	mov	x1, x19
	bl	_assert_bytes
	mov	x0, x19
	bl	_libmin_free
Lloh13:
	adrp	x8, l___const.test.filled_key@PAGE
Lloh14:
	add	x8, x8, l___const.test.filled_key@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #32]               ; 32-byte Folded Spill
	stp	q0, q1, [x20, #256]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [sp]                    ; 32-byte Folded Spill
	stp	q0, q1, [x20, #288]
Lloh15:
	adrp	x8, l___const.test.key_answer@PAGE
Lloh16:
	add	x8, x8, l___const.test.key_answer@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x20, #192]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [x20, #224]
	sub	x2, x29, #176
	mov	x0, #0                          ; =0x0
	mov	x1, #0                          ; =0x0
	mov	w3, #64                         ; =0x40
	mov	w4, #64                         ; =0x40
	bl	_blake2b
	mov	x19, x0
	sub	x0, x29, #240
	mov	x1, x19
	bl	_assert_bytes
	mov	x0, x19
	bl	_libmin_free
	strb	wzr, [sp, #75]
	ldr	q2, [sp, #32]                   ; 16-byte Folded Reload
	ldr	q0, [sp, #48]                   ; 16-byte Folded Reload
	stp	q2, q0, [x20, #128]
	ldr	q2, [sp]                        ; 16-byte Folded Reload
	ldr	q0, [sp, #16]                   ; 16-byte Folded Reload
	stp	q2, q0, [x20, #160]
Lloh17:
	adrp	x8, l___const.test.zero_answer@PAGE
Lloh18:
	add	x8, x8, l___const.test.zero_answer@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x20, #64]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [x20, #96]
	add	x0, sp, #75
	add	x2, sp, #336
	mov	w1, #1                          ; =0x1
	mov	w3, #64                         ; =0x40
	mov	w4, #64                         ; =0x40
	bl	_blake2b
	mov	x19, x0
	add	x0, sp, #272
	mov	x1, x19
	bl	_assert_bytes
	mov	x0, x19
	bl	_libmin_free
	ldp	q1, q0, [sp, #32]               ; 32-byte Folded Reload
	stp	q1, q0, [x20]
	ldp	q3, q2, [sp]                    ; 32-byte Folded Reload
	stp	q3, q2, [x20, #32]
	stp	q1, q0, [sp, #144]
	stp	q3, q2, [sp, #176]
Lloh19:
	adrp	x8, l___const.test.filled_answer@PAGE
Lloh20:
	add	x8, x8, l___const.test.filled_answer@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #80]
	ldp	q0, q1, [x8, #32]
	stp	q0, q1, [sp, #112]
	add	x0, sp, #208
	add	x2, sp, #144
	mov	w1, #64                         ; =0x40
	mov	w3, #64                         ; =0x40
	mov	w4, #64                         ; =0x40
	bl	_blake2b
	mov	x19, x0
	add	x0, sp, #80
	mov	x1, x19
	bl	_assert_bytes
	mov	x0, x19
	bl	_libmin_free
Lloh21:
	adrp	x0, l_.str@PAGE
Lloh22:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	ldur	x8, [x29, #-40]
Lloh23:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh24:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh25:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_2
; %bb.1:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #608
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #48             ; 16-byte Folded Reload
	ret
LBB1_2:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh23, Lloh24, Lloh25
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function F
_F:                                     ; @F
	.cfi_startproc
; %bb.0:
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
	mov	x8, #0                          ; =0x0
	ldp	x16, x12, [x0]
	ldp	x11, x13, [x0, #16]
	ldp	x7, x4, [x0, #32]
	mov	x9, #33489                      ; =0x82d1
	movk	x9, #44518, lsl #16
	movk	x9, #21119, lsl #32
	movk	x9, #20750, lsl #48
	ldp	x10, x14, [x2]
	eor	x19, x10, x9
	mov	x9, #27679                      ; =0x6c1f
	movk	x9, #11070, lsl #16
	movk	x9, #26764, lsl #32
	movk	x9, #39685, lsl #48
	eor	x6, x14, x9
	cmp	w3, #0
	mov	x9, #48491                      ; =0xbd6b
	movk	x9, #64321, lsl #16
	movk	x9, #55723, lsl #32
	movk	x9, #8067, lsl #48
	ldp	x17, x14, [x0, #48]
	cinv	x2, x9, ne
	mov	x15, #14065                     ; =0x36f1
	movk	x15, #24349, lsl #16
	movk	x15, #62778, lsl #32
	movk	x15, #42319, lsl #48
	mov	x10, #8569                      ; =0x2179
	movk	x10, #4990, lsl #16
	movk	x10, #52505, lsl #32
	movk	x10, #23520, lsl #48
	mov	x5, #63531                      ; =0xf82b
	movk	x5, #65172, lsl #16
	movk	x5, #62322, lsl #32
	movk	x5, #15470, lsl #48
	mov	x21, #42811                     ; =0xa73b
	movk	x21, #33994, lsl #16
	movk	x21, #44677, lsl #32
	movk	x21, #47975, lsl #48
	mov	x20, #51464                     ; =0xc908
	movk	x20, #62396, lsl #16
	movk	x20, #58983, lsl #32
	movk	x20, #27145, lsl #48
Lloh26:
	adrp	x9, _blake2b_sigma@PAGE
Lloh27:
	add	x9, x9, _blake2b_sigma@PAGEOFF
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	add	x3, x9, x8
	ldrb	w22, [x3]
	ldr	x22, [x1, x22, lsl #3]
	ldrb	w23, [x3, #1]
	ldr	x23, [x1, x23, lsl #3]
	add	x16, x7, x16
	add	x16, x16, x22
	eor	x19, x19, x16
	ldrb	w22, [x3, #2]
	ldr	x22, [x1, x22, lsl #3]
	ldrb	w24, [x3, #3]
	ror	x19, x19, #32
	ldr	x24, [x1, x24, lsl #3]
	add	x12, x4, x12
	add	x12, x12, x22
	add	x20, x20, x19
	eor	x7, x20, x7
	eor	x6, x6, x12
	ror	x6, x6, #32
	add	x21, x21, x6
	ror	x7, x7, #24
	eor	x4, x21, x4
	ldrb	w22, [x3, #4]
	ldr	x22, [x1, x22, lsl #3]
	ror	x4, x4, #24
	ldrb	w25, [x3, #5]
	ldr	x25, [x1, x25, lsl #3]
	add	x11, x17, x11
	add	x16, x16, x23
	add	x16, x16, x7
	add	x11, x11, x22
	eor	x2, x2, x11
	ror	x22, x2, #32
	add	x12, x12, x24
	add	x12, x12, x4
	add	x5, x5, x22
	eor	x17, x5, x17
	ror	x23, x17, #24
	ldrb	w17, [x3, #6]
	eor	x2, x16, x19
	ldr	x17, [x1, x17, lsl #3]
	eor	x6, x12, x6
	add	x11, x11, x25
	ror	x19, x2, #16
	add	x2, x11, x23
	ldrb	w11, [x3, #7]
	ldr	x24, [x1, x11, lsl #3]
	ror	x11, x6, #16
	eor	x6, x2, x22
	add	x13, x14, x13
	add	x22, x13, x17
	eor	x10, x10, x22
	ror	x13, x6, #16
	ror	x6, x10, #32
	add	x25, x15, x6
	eor	x14, x25, x14
	add	x10, x19, x20
	eor	x15, x10, x7
	ror	x7, x14, #24
	add	x17, x11, x21
	eor	x4, x17, x4
	ror	x14, x15, #63
	add	x5, x13, x5
	eor	x20, x5, x23
	add	x15, x22, x24
	add	x15, x15, x7
	ror	x4, x4, #63
	eor	x6, x15, x6
	ror	x6, x6, #16
	add	x21, x6, x25
	ror	x20, x20, #63
	eor	x7, x21, x7
	ldrb	w22, [x3, #8]
	ldr	x22, [x1, x22, lsl #3]
	ror	x7, x7, #63
	ldrb	w23, [x3, #9]
	ldr	x23, [x1, x23, lsl #3]
	add	x16, x16, x22
	add	x16, x4, x16
	eor	x6, x16, x6
	ldrb	w22, [x3, #10]
	ldr	x22, [x1, x22, lsl #3]
	ldrb	w24, [x3, #11]
	ror	x6, x6, #32
	ldr	x24, [x1, x24, lsl #3]
	add	x12, x12, x22
	add	x12, x20, x12
	add	x5, x6, x5
	eor	x4, x5, x4
	eor	x19, x12, x19
	ror	x19, x19, #32
	add	x21, x19, x21
	ror	x4, x4, #24
	eor	x20, x21, x20
	ror	x20, x20, #24
	add	x12, x12, x24
	add	x16, x16, x23
	add	x16, x16, x4
	add	x12, x12, x20
	ldrb	w22, [x3, #12]
	ldr	x22, [x1, x22, lsl #3]
	ldrb	w23, [x3, #13]
	eor	x6, x16, x6
	ldr	x23, [x1, x23, lsl #3]
	add	x2, x2, x22
	add	x2, x7, x2
	eor	x11, x2, x11
	eor	x19, x12, x19
	ror	x22, x11, #32
	add	x24, x22, x10
	eor	x11, x24, x7
	ror	x10, x6, #16
	ror	x7, x11, #24
	add	x11, x2, x23
	add	x11, x11, x7
	ror	x19, x19, #16
	eor	x2, x11, x22
	ldrb	w6, [x3, #14]
	ldr	x22, [x1, x6, lsl #3]
	ror	x6, x2, #16
	ldrb	w2, [x3, #15]
	ldr	x2, [x1, x2, lsl #3]
	add	x5, x10, x5
	eor	x3, x5, x4
	add	x15, x15, x22
	add	x4, x15, x14
	eor	x13, x4, x13
	ror	x22, x13, #32
	add	x15, x19, x21
	eor	x21, x15, x20
	add	x23, x22, x17
	eor	x13, x23, x14
	ror	x25, x13, #24
	add	x20, x6, x24
	eor	x14, x20, x7
	add	x13, x4, x2
	add	x13, x13, x25
	eor	x2, x13, x22
	ror	x4, x3, #63
	ror	x17, x21, #63
	ror	x2, x2, #16
	ror	x14, x14, #63
	add	x21, x2, x23
	eor	x3, x21, x25
	ror	x7, x3, #63
	add	x8, x8, #16
	cmp	x8, #192
	b.ne	LBB2_1
; %bb.2:
	ldp	x8, x9, [x0]
	eor	x8, x16, x8
	eor	x8, x8, x20
	eor	x9, x12, x9
	eor	x9, x9, x21
	stp	x8, x9, [x0]
	ldp	x8, x9, [x0, #16]
	eor	x8, x11, x8
	eor	x8, x8, x5
	eor	x9, x13, x9
	eor	x9, x9, x15
	stp	x8, x9, [x0, #16]
	ldp	x8, x9, [x0, #32]
	eor	x8, x8, x19
	eor	x8, x7, x8
	eor	x9, x9, x6
	eor	x9, x4, x9
	stp	x8, x9, [x0, #32]
	ldp	x8, x9, [x0, #48]
	eor	x8, x8, x2
	eor	x8, x17, x8
	eor	x9, x9, x10
	eor	x9, x14, x9
	stp	x8, x9, [x0, #48]
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function assert_bytes
_assert_bytes:                          ; @assert_bytes
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
	mov	x19, x1
	mov	x20, x0
	cbz	x0, LBB3_7
; %bb.1:
	cbz	x19, LBB3_8
LBB3_2:
	adrp	x8, _testnum@PAGE
	ldr	w9, [x8, _testnum@PAGEOFF]
	add	w10, w9, #1
	str	w10, [x8, _testnum@PAGEOFF]
	str	x9, [sp]
Lloh28:
	adrp	x0, l_.str.1@PAGE
Lloh29:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
Lloh30:
	adrp	x0, l_.str.2@PAGE
Lloh31:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	x22, #0                         ; =0x0
Lloh32:
	adrp	x21, l_.str.3@PAGE
Lloh33:
	add	x21, x21, l_.str.3@PAGEOFF
	b	LBB3_4
LBB3_3:                                 ;   in Loop: Header=BB3_4 Depth=1
	add	x22, x22, #1
	cmp	x22, #64
	b.eq	LBB3_6
LBB3_4:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19, x22]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrb	w8, [x20, x22]
	ldrb	w9, [x19, x22]
	cmp	w8, w9
	b.eq	LBB3_3
; %bb.5:                                ;   in Loop: Header=BB3_4 Depth=1
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB3_3
LBB3_6:
Lloh34:
	adrp	x0, l_.str.4@PAGE
Lloh35:
	add	x0, x0, l_.str.4@PAGEOFF
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_libmin_printf
LBB3_7:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	cbnz	x19, LBB3_2
LBB3_8:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB3_2
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.globl	_testnum                        ; @testnum
.zerofill __DATA,__common,_testnum,4,2
	.section	__TEXT,__const
	.p2align	3, 0x0                          ; @blake2b_iv
_blake2b_iv:
	.quad	7640891576956012808             ; 0x6a09e667f3bcc908
	.quad	-4942790177534073029            ; 0xbb67ae8584caa73b
	.quad	4354685564936845355             ; 0x3c6ef372fe94f82b
	.quad	-6534734903238641935            ; 0xa54ff53a5f1d36f1
	.quad	5840696475078001361             ; 0x510e527fade682d1
	.quad	-7276294671716946913            ; 0x9b05688c2b3e6c1f
	.quad	2270897969802886507             ; 0x1f83d9abfb41bd6b
	.quad	6620516959819538809             ; 0x5be0cd19137e2179

_blake2b_sigma:                         ; @blake2b_sigma
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\016\n\004\b\t\017\r\006\001\f\000\002\013\007\005\003"
	.ascii	"\013\b\f\000\005\002\017\r\n\016\003\006\007\001\t\004"
	.ascii	"\007\t\003\001\r\f\013\016\002\006\005\n\004\000\017\b"
	.ascii	"\t\000\005\007\002\004\n\017\016\001\013\f\006\b\003\r"
	.ascii	"\002\f\006\n\000\013\b\003\004\r\007\005\017\016\001\t"
	.ascii	"\f\005\001\017\016\r\004\n\000\007\006\003\t\002\b\013"
	.ascii	"\r\013\007\016\f\001\003\t\005\000\017\004\b\006\002\n"
	.ascii	"\006\017\016\t\013\003\000\b\f\002\r\007\001\004\n\005"
	.asciz	"\n\002\b\004\007\006\001\005\017\013\t\016\003\f\r"
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\016\n\004\b\t\017\r\006\001\f\000\002\013\007\005\003"

l___const.test.abc:                     ; @__const.test.abc
	.ascii	"abc"

l___const.test.abc_answer:              ; @__const.test.abc_answer
	.ascii	"\272\200\245?\230\034M\rj'\227\266\237\022\366\351L!/\024hZ\304\267K\022\273o\333\377\242\321}\207\3059*\253y-\302R\325\336E3\314\225\030\323\212\250\333\361\222Z\271#\206\355\324\000\231#"

l___const.test.key_answer:              ; @__const.test.key_answer
	.ascii	"\020\353\266w\000\261\206\216\373D\027\230z\317F\220\256\235\227/\267\245\220\302\360(qy\232\252G\206\265\351\226\350\360\364\353\230\037\302\024\260\005\364-/\364#4\2319\026S\337z\357\313\301?\305\025h"

l___const.test.zero_answer:             ; @__const.test.zero_answer
	.ascii	"\226\037m\321\344\3350\3669\001i\fQ.x\344\264^GB\355\031|<^E\305I\375%\362\344\030{\013\311\3760I+\026\260\320\274N\371\260\363Lp\003\372\300\232^\361S.iC\0024\316\275"

l___const.test.filled_key:              ; @__const.test.filled_key
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?"

l___const.test.filled_answer:           ; @__const.test.filled_answer
	.ascii	"egm\200\006\027\227/\275\207\344\271QN\034g@+z3\020\226\323\277\254\"\361\253\271St\253\311B\361n\232\260\352\323;\207\311\031h\246\345\t\341\031\377\007x{>\364\203\341\334\334\317n0\""

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"INFO: All tests have successfully passed!\n"

l_.str.1:                               ; @.str.1
	.asciz	"Test #%d:\n"

l_.str.2:                               ; @.str.2
	.asciz	"Expected[] = { "

l_.str.3:                               ; @.str.3
	.asciz	"0x%02x "

l_.str.4:                               ; @.str.4
	.asciz	" }\n"

.subsections_via_symbols
