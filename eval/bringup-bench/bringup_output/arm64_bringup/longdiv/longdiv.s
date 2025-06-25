	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_sub                            ; -- Begin function sub
	.p2align	2
_sub:                                   ; @sub
	.cfi_startproc
; %bb.0:
	mov	w8, #48                         ; =0x30
	mov	w9, #58                         ; =0x3a
	cmp	w0, w1
	csel	w9, w9, w8, lt
	cset	w8, lt
	add	w9, w9, w0
	sub	w9, w9, w1
	strb	w9, [x2]
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_isgte                          ; -- Begin function isgte
	.p2align	2
_isgte:                                 ; @isgte
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB1_6
; %bb.1:
	cbz	x0, LBB1_7
; %bb.2:
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
	mov	x20, x1
Lloh0:
	adrp	x21, l_.str@PAGE
Lloh1:
	add	x21, x21, l_.str@PAGEOFF
	mov	x1, x21
	bl	_libmin_strpbrk
	mov	x19, x0
	mov	x0, x20
	mov	x1, x21
	bl	_libmin_strpbrk
	cbz	x0, LBB1_14
; %bb.3:
	cbz	x19, LBB1_5
; %bb.4:
	mov	x20, x0
	bl	_libmin_strlen
	mov	x21, x0
	mov	x0, x19
	bl	_libmin_strlen
	mov	x8, x0
	cmp	w21, w8
	b.le	LBB1_8
LBB1_5:
	mov	w0, #0                          ; =0x0
	b	LBB1_15
LBB1_6:
	mov	w0, #1                          ; =0x1
LBB1_7:
	ret
LBB1_8:
	mov	w0, #1                          ; =0x1
	cmp	w8, w21
	b.gt	LBB1_15
; %bb.9:
	cmp	w21, #1
	b.lt	LBB1_15
; %bb.10:
	and	x8, x21, #0xffffffff
LBB1_11:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w9, [x19], #1
	ldrsb	w10, [x20], #1
	cmp	w9, w10
	b.gt	LBB1_14
; %bb.12:                               ;   in Loop: Header=BB1_11 Depth=1
	b.lt	LBB1_5
; %bb.13:                               ;   in Loop: Header=BB1_11 Depth=1
	subs	x8, x8, #1
	b.ne	LBB1_11
	b	LBB1_15
LBB1_14:
	mov	w0, #1                          ; =0x1
LBB1_15:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_sbc                            ; -- Begin function sbc
	.p2align	2
_sbc:                                   ; @sbc
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
	mov	x19, x1
	mov	x22, x0
	bl	_isgte
	cbz	w0, LBB2_13
; %bb.1:
	mov	x0, x22
	bl	_libmin_strlen
	mov	x23, x0
	mov	x0, x19
	bl	_libmin_strlen
	mov	x24, x0
	mov	x0, x22
	bl	_libmin_strlen
	add	x0, x0, #1
	bl	_libmin_malloc
	mov	x20, x0
	cbnz	x0, LBB2_3
; %bb.2:
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_3:
	mov	x0, x22
	bl	_libmin_strlen
	add	x0, x0, #1
	bl	_libmin_malloc
	mov	x21, x0
	cbnz	x0, LBB2_5
; %bb.4:
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB2_5:
	mov	x0, x21
	mov	x1, x22
	bl	_libmin_strcpy
	cmp	w23, #0
	b.le	LBB2_14
; %bb.6:
	and	x22, x23, #0xffffffff
	mov	w25, #48                        ; =0x30
	mov	x0, x20
	mov	w1, #48                         ; =0x30
	mov	x2, x22
	bl	_memset
	mov	x8, #0                          ; =0x0
	mov	w17, #0                         ; =0x0
	add	x9, x20, w23, sxtw
	strb	wzr, [x9], #-1
	sxtw	x10, w24
	sub	w11, w23, #1
	sub	w12, w24, #1
	mov	x13, #-4294967296               ; =0xffffffff00000000
	mov	w14, #58                        ; =0x3a
	mov	w15, #57                        ; =0x39
	add	x16, x13, x23, lsl #32
	b	LBB2_9
LBB2_7:                                 ;   in Loop: Header=BB2_9 Depth=1
	ldrsb	w1, [x21, x0]
	cmp	w1, #48
	csel	w2, w14, w25, lt
	cset	w0, lt
	add	w1, w1, w2
	sub	w1, w1, #48
LBB2_8:                                 ;   in Loop: Header=BB2_9 Depth=1
	strb	w1, [x9], #-1
	orr	w17, w17, w0
	add	x8, x8, #1
	sub	w11, w11, #1
	sub	w12, w12, #1
	add	x16, x16, x13
	cmp	x22, x8
	b.eq	LBB2_15
LBB2_9:                                 ; =>This Inner Loop Header: Depth=1
	asr	x0, x16, #32
	cbz	w17, LBB2_11
; %bb.10:                               ;   in Loop: Header=BB2_9 Depth=1
	ldrb	w17, [x21, x0]
	sub	w1, w17, #1
	cmp	w17, #48
	csel	w1, w15, w1, eq
	cset	w17, eq
	strb	w1, [x21, x0]
LBB2_11:                                ;   in Loop: Header=BB2_9 Depth=1
	cmp	x8, x10
	b.ge	LBB2_7
; %bb.12:                               ;   in Loop: Header=BB2_9 Depth=1
	ldrsb	w0, [x21, w11, sxtw]
	ldrsb	w1, [x19, w12, sxtw]
	subs	w0, w0, w1
	csel	w1, w14, w25, lt
	add	w1, w0, w1
	cset	w0, lt
	b	LBB2_8
LBB2_13:
	mov	x20, #0                         ; =0x0
	b	LBB2_16
LBB2_14:
	strb	wzr, [x20, w23, sxtw]
LBB2_15:
	mov	x0, x21
	bl	_libmin_free
LBB2_16:
	mov	x0, x20
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_times_digit                    ; -- Begin function times_digit
	.p2align	2
_times_digit:                           ; @times_digit
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
	mov	x20, x0
	cbz	x0, LBB3_12
; %bb.1:
	mov	x21, x1
	mov	x0, x20
	bl	_libmin_strlen
	mov	x22, x0
	lsl	x23, x0, #32
	mov	x8, #8589934592                 ; =0x200000000
	add	x8, x23, x8
	asr	x0, x8, #32
	bl	_libmin_malloc
	mov	x19, x0
	cbnz	x0, LBB3_3
; %bb.2:
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_3:
	mov	x8, #4294967296                 ; =0x100000000
	add	x8, x23, x8
	asr	x0, x8, #32
	strb	wzr, [x19, x0]
	asr	x23, x23, #32
	cmp	w22, #0
	b.le	LBB3_8
; %bb.4:
	mov	w9, #0                          ; =0x0
	sub	w8, w21, #48
	and	x10, x22, #0xffffffff
	sub	x11, x20, #1
	mov	w12, #26215                     ; =0x6667
	movk	w12, #26214, lsl #16
	mov	w13, #10                        ; =0xa
	mov	x14, x23
LBB3_5:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w15, [x11, x14]
	sub	w15, w15, #48
	madd	w15, w15, w8, w9
	smull	x9, w15, w12
	lsr	x16, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w16
	msub	w15, w9, w13, w15
	add	w15, w15, #48
	strb	w15, [x19, x14]
	sub	x14, x14, #1
	subs	x10, x10, #1
	b.ne	LBB3_5
; %bb.6:
	add	w8, w9, #48
	strb	w8, [x19]
	tst	w9, #0xff
	b.eq	LBB3_9
; %bb.7:
	mov	x20, x19
	b	LBB3_12
LBB3_8:
	mov	w8, #48                         ; =0x30
	strb	w8, [x19]
LBB3_9:
	bl	_libmin_malloc
	mov	x20, x0
	cbnz	x0, LBB3_11
; %bb.10:
Lloh8:
	adrp	x0, l_.str.3@PAGE
Lloh9:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_11:
	strb	wzr, [x20, x23]
	add	x1, x19, #1
	mov	x0, x20
	bl	_libmin_strcpy
	mov	x0, x19
	bl	_libmin_free
LBB3_12:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_splice                         ; -- Begin function splice
	.p2align	2
_splice:                                ; @splice
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
	mov	x19, x1
	cbz	x0, LBB4_6
; %bb.1:
	mov	x20, x0
	cbz	x19, LBB4_4
; %bb.2:
	mov	x0, x20
	bl	_libmin_strlen
	mov	x21, x0
	mov	x0, x19
	bl	_libmin_strlen
	add	w8, w0, w21
	add	w8, w8, #1
	sxtw	x0, w8
	bl	_libmin_malloc
	cbz	x0, LBB4_5
; %bb.3:
	mov	x21, x0
	mov	x1, x20
	bl	_libmin_strcpy
	mov	x0, x21
	mov	x1, x19
	bl	_libmin_strcat
	mov	x19, x21
	b	LBB4_6
LBB4_4:
	mov	x19, x20
	b	LBB4_6
LBB4_5:
Lloh10:
	adrp	x0, l_.str.4@PAGE
Lloh11:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	x19, #0                         ; =0x0
LBB4_6:
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	_cut_off                        ; -- Begin function cut_off
	.p2align	2
_cut_off:                               ; @cut_off
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
	mov	x20, #0                         ; =0x0
	cbz	x0, LBB5_5
; %bb.1:
	mov	x21, x1
	cmp	w1, #1
	b.lt	LBB5_5
; %bb.2:
	mov	x19, x0
	bl	_libmin_strlen
	cmp	w0, w21
	csel	w21, w0, w21, lt
	add	w8, w21, #1
	sxtw	x1, w8
	mov	w0, #1                          ; =0x1
	bl	_libmin_calloc
	mov	x20, x0
	cbz	x0, LBB5_4
; %bb.3:
	sxtw	x2, w21
	mov	x0, x20
	mov	x1, x19
	bl	_libmin_strncpy
	b	LBB5_5
LBB5_4:
Lloh12:
	adrp	x0, l_.str.5@PAGE
Lloh13:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
LBB5_5:
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh12, Lloh13
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
	sub	sp, sp, #2096
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
Lloh14:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh15:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh16:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	adrp	x19, _argv@PAGE+8
	ldr	x0, [x19, _argv@PAGEOFF+8]
	bl	_libmin_strlen
Lloh17:
	adrp	x21, __pctype@GOTPAGE
Lloh18:
	ldr	x21, [x21, __pctype@GOTPAGEOFF]
	cbz	x0, LBB6_4
; %bb.1:
	mov	x20, #0                         ; =0x0
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x0, [x19, _argv@PAGEOFF+8]
	ldrsb	x9, [x0, x20]
	ldrh	w8, [x8, x9, lsl #1]
	tbz	w8, #2, LBB6_13
; %bb.3:                                ;   in Loop: Header=BB6_2 Depth=1
	add	x20, x20, #1
	bl	_libmin_strlen
	cmp	x0, x20
	b.hi	LBB6_2
LBB6_4:
	adrp	x20, _argv@PAGE+16
	ldr	x0, [x20, _argv@PAGEOFF+16]
	bl	_libmin_strlen
	cbz	x0, LBB6_8
; %bb.5:
	mov	x22, #0                         ; =0x0
LBB6_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x21]
	ldr	x0, [x20, _argv@PAGEOFF+16]
	ldrsb	x9, [x0, x22]
	ldrh	w8, [x8, x9, lsl #1]
	tbz	w8, #2, LBB6_15
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=1
	add	x22, x22, #1
	bl	_libmin_strlen
	cmp	x0, x22
	b.hi	LBB6_6
LBB6_8:
	ldr	x0, [x20, _argv@PAGEOFF+16]
	bl	_libmin_strlen
	cbz	x0, LBB6_12
; %bb.9:
	mov	x21, #0                         ; =0x0
LBB6_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x20, _argv@PAGEOFF+16]
	ldrb	w8, [x0, x21]
	cmp	w8, #48
	b.ne	LBB6_18
; %bb.11:                               ;   in Loop: Header=BB6_10 Depth=1
	add	x21, x21, #1
	bl	_libmin_strlen
	cmp	x0, x21
	b.hi	LBB6_10
LBB6_12:
Lloh19:
	adrp	x8, l_.str.12@PAGE
Lloh20:
	add	x8, x8, l_.str.12@PAGEOFF
	str	x8, [sp]
Lloh21:
	adrp	x0, l_.str.11@PAGE
Lloh22:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	b	LBB6_88
LBB6_13:
Lloh23:
	adrp	x8, l_.str.10@PAGE
Lloh24:
	add	x8, x8, l_.str.10@PAGEOFF
	stp	x8, x0, [sp]
Lloh25:
	adrp	x0, l_.str.9@PAGE
Lloh26:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	cbz	x20, LBB6_17
LBB6_14:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	subs	w20, w20, #1
	b.ne	LBB6_14
	b	LBB6_17
LBB6_15:
Lloh27:
	adrp	x8, l_.str.10@PAGE
Lloh28:
	add	x8, x8, l_.str.10@PAGEOFF
	stp	x8, x0, [sp]
Lloh29:
	adrp	x0, l_.str.9@PAGE
Lloh30:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	cbz	x22, LBB6_17
LBB6_16:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	subs	w22, w22, #1
	b.ne	LBB6_16
LBB6_17:
	mov	w0, #94                         ; =0x5e
	bl	_libmin_putc
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	b	LBB6_88
LBB6_18:
	ldr	x0, [x19, _argv@PAGEOFF+8]
Lloh31:
	adrp	x1, l_.str@PAGE
Lloh32:
	add	x1, x1, l_.str@PAGEOFF
	bl	_libmin_strpbrk
	cbz	x0, LBB6_20
; %bb.19:
	mov	x19, x0
	bl	_libmin_strlen
	mov	x23, x0
	b	LBB6_21
LBB6_20:
	mov	w23, #1                         ; =0x1
Lloh33:
	adrp	x19, l_.str.13@PAGE
Lloh34:
	add	x19, x19, l_.str.13@PAGEOFF
LBB6_21:
	add	w8, w23, #1
	sxtw	x22, w8
	mov	x0, x22
	bl	_libmin_malloc
	mov	x27, x0
	str	x0, [sp, #1056]
	mov	x1, x19
	bl	_libmin_strcpy
	ldr	x0, [x20, _argv@PAGEOFF+16]
Lloh35:
	adrp	x1, l_.str@PAGE
Lloh36:
	add	x1, x1, l_.str@PAGEOFF
	bl	_libmin_strpbrk
	mov	x19, x0
	bl	_libmin_strlen
	mov	x25, x0
	add	w8, w25, #1
	sxtw	x0, w8
	bl	_libmin_malloc
	mov	x20, x0
	mov	x1, x19
	bl	_libmin_strcpy
	sub	w28, w25, #1
	mov	w0, #1                          ; =0x1
	mov	x1, x22
	bl	_libmin_calloc
	mov	x22, x0
	cmp	w25, #2
	b.lt	LBB6_23
; %bb.22:
	mov	x0, x22
	mov	w1, #48                         ; =0x30
	mov	x2, x28
	bl	_memset
LBB6_23:
	mov	x0, x27
	mov	x1, x20
	bl	_isgte
	cbz	w0, LBB6_57
; %bb.24:
	stp	x25, x23, [sp, #16]             ; 16-byte Folded Spill
	mov	x24, #0                         ; =0x0
Lloh37:
	adrp	x23, l_.str.13@PAGE
Lloh38:
	add	x23, x23, l_.str.13@PAGEOFF
	add	x21, sp, #1056
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
	b	LBB6_26
LBB6_25:                                ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x26
	bl	_libmin_free
	mov	x0, x27
	mov	x1, x20
	bl	_isgte
	cbz	w0, LBB6_56
LBB6_26:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_52 Depth 2
                                        ;     Child Loop BB6_45 Depth 2
	mov	x26, #0                         ; =0x0
	tbnz	w28, #31, LBB6_31
; %bb.27:                               ;   in Loop: Header=BB6_26 Depth=1
	cbz	x27, LBB6_31
; %bb.28:                               ;   in Loop: Header=BB6_26 Depth=1
	add	w19, w28, #1
	mov	x0, x27
	bl	_libmin_strlen
	cmp	w0, w19
	csel	w19, w0, w19, lt
	add	w8, w19, #1
	sxtw	x1, w8
	mov	w0, #1                          ; =0x1
	bl	_libmin_calloc
	mov	x26, x0
	cbz	x0, LBB6_30
; %bb.29:                               ;   in Loop: Header=BB6_26 Depth=1
	sxtw	x2, w19
	mov	x0, x26
	mov	x1, x27
	bl	_libmin_strncpy
	b	LBB6_31
LBB6_30:                                ;   in Loop: Header=BB6_26 Depth=1
Lloh39:
	adrp	x0, l_.str.5@PAGE
Lloh40:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
LBB6_31:                                ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x26
	mov	x1, x20
	bl	_isgte
	cbz	w0, LBB6_49
LBB6_32:                                ;   in Loop: Header=BB6_26 Depth=1
	ldr	x19, [x21]
	mov	x0, x26
	bl	_libmin_strlen
	mov	x27, x0
	mov	w21, #57                        ; =0x39
	mov	x0, x20
	mov	w1, #57                         ; =0x39
	bl	_times_digit
	mov	x28, x0
	add	x25, sp, #32
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.33:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #56                        ; =0x38
	mov	x0, x20
	mov	w1, #56                         ; =0x38
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.34:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #55                        ; =0x37
	mov	x0, x20
	mov	w1, #55                         ; =0x37
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.35:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #54                        ; =0x36
	mov	x0, x20
	mov	w1, #54                         ; =0x36
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.36:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #53                        ; =0x35
	mov	x0, x20
	mov	w1, #53                         ; =0x35
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.37:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #52                        ; =0x34
	mov	x0, x20
	mov	w1, #52                         ; =0x34
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.38:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #51                        ; =0x33
	mov	x0, x20
	mov	w1, #51                         ; =0x33
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.39:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #50                        ; =0x32
	mov	x0, x20
	mov	w1, #50                         ; =0x32
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.40:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #49                        ; =0x31
	mov	x0, x20
	mov	w1, #49                         ; =0x31
	bl	_times_digit
	mov	x28, x0
	str	x0, [x25, x24, lsl #3]
	mov	x0, x26
	mov	x1, x28
	bl	_isgte
	cbnz	w0, LBB6_42
; %bb.41:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x28
	bl	_libmin_free
	mov	w21, #48                        ; =0x30
LBB6_42:                                ;   in Loop: Header=BB6_26 Depth=1
Lloh41:
	adrp	x25, l_.str@PAGE
Lloh42:
	add	x25, x25, l_.str@PAGEOFF
	add	x27, x19, x27
	mov	x0, x22
	bl	_libmin_strlen
	strb	w21, [x22, x0]
	mov	x0, x26
	mov	x1, x28
	bl	_sbc
	mov	x19, x0
	mov	x1, x25
	bl	_libmin_strpbrk
	cbz	x0, LBB6_44
; %bb.43:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x19
	mov	x1, x25
	bl	_libmin_strpbrk
	bl	_libmin_strlen
	mov	x28, x0
	cbnz	w28, LBB6_47
LBB6_44:                                ;   in Loop: Header=BB6_26 Depth=1
	ldrb	w8, [x27]
	cmp	w8, #48
	b.ne	LBB6_46
LBB6_45:                                ;   Parent Loop BB6_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x22
	mov	x1, x23
	bl	_libmin_strcat
	ldrb	w8, [x27, #1]!
	cmp	w8, #48
	b.eq	LBB6_45
LBB6_46:                                ;   in Loop: Header=BB6_26 Depth=1
	mov	w28, #0                         ; =0x0
LBB6_47:                                ;   in Loop: Header=BB6_26 Depth=1
	mov	x0, x19
	mov	x1, x27
	bl	_splice
	mov	x1, x25
	bl	_libmin_strpbrk
	mov	x27, x0
	add	x24, x24, #1
	add	x8, sp, #1056
	add	x21, x8, x24, lsl #3
	str	x0, [x21]
	cbnz	x0, LBB6_25
; %bb.48:                               ;   in Loop: Header=BB6_26 Depth=1
	mov	w0, #2                          ; =0x2
	bl	_libmin_malloc
	mov	x27, x0
	str	x0, [x21]
	mov	x1, x23
	bl	_libmin_strcpy
	b	LBB6_25
LBB6_49:                                ;   in Loop: Header=BB6_26 Depth=1
	add	w27, w28, #2
	b	LBB6_52
LBB6_50:                                ;   in Loop: Header=BB6_52 Depth=2
	sxtw	x2, w28
	mov	x0, x26
	mov	x1, x19
	bl	_libmin_strncpy
LBB6_51:                                ;   in Loop: Header=BB6_52 Depth=2
	mov	x0, x26
	mov	x1, x20
	bl	_isgte
	add	w27, w27, #1
	cbnz	w0, LBB6_32
LBB6_52:                                ;   Parent Loop BB6_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w19, w27, #1
	mov	x0, x22
	mov	x1, x23
	bl	_libmin_strcat
	mov	x0, x26
	bl	_libmin_free
	mov	x26, #0                         ; =0x0
	tbnz	w19, #31, LBB6_51
; %bb.53:                               ;   in Loop: Header=BB6_52 Depth=2
	ldr	x19, [x21]
	cbz	x19, LBB6_51
; %bb.54:                               ;   in Loop: Header=BB6_52 Depth=2
	mov	x0, x19
	bl	_libmin_strlen
	cmp	w0, w27
	csel	w28, w0, w27, lt
	add	w8, w28, #1
	sxtw	x1, w8
	mov	w0, #1                          ; =0x1
	bl	_libmin_calloc
	mov	x26, x0
	cbnz	x0, LBB6_50
; %bb.55:                               ;   in Loop: Header=BB6_52 Depth=2
Lloh43:
	adrp	x0, l_.str.5@PAGE
Lloh44:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	b	LBB6_51
LBB6_56:
	ldp	x25, x23, [sp, #16]             ; 16-byte Folded Reload
	b	LBB6_58
LBB6_57:
	mov	w24, #0                         ; =0x0
LBB6_58:
	mov	x0, x22
	bl	_libmin_strlen
	sub	w21, w23, w0
	cmp	w21, #1
	b.lt	LBB6_61
; %bb.59:
Lloh45:
	adrp	x19, l_.str.13@PAGE
Lloh46:
	add	x19, x19, l_.str.13@PAGEOFF
LBB6_60:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x22
	mov	x1, x19
	bl	_libmin_strcat
	subs	w21, w21, #1
	b.ne	LBB6_60
LBB6_61:
	add	w19, w25, #2
	cmn	w25, #1
	b.lt	LBB6_64
; %bb.62:
	cmp	w19, #1
	csinc	w21, w19, wzr, gt
LBB6_63:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	subs	w21, w21, #1
	b.ne	LBB6_63
LBB6_64:
	ldrb	w8, [x22]
	cmp	w8, #48
	b.ne	LBB6_66
LBB6_65:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	ldrb	w8, [x22, #1]!
	cmp	w8, #48
	b.eq	LBB6_65
LBB6_66:
	str	x22, [sp]
Lloh47:
	adrp	x0, l_.str.11@PAGE
Lloh48:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	cmn	w25, #1
	b.lt	LBB6_69
; %bb.67:
	cmp	w19, #1
	csinc	w21, w19, wzr, gt
LBB6_68:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	subs	w21, w21, #1
	b.ne	LBB6_68
LBB6_69:
	cmp	w23, #1
	b.lt	LBB6_72
; %bb.70:
	mov	x21, x23
LBB6_71:                                ; =>This Inner Loop Header: Depth=1
	mov	w0, #95                         ; =0x5f
	bl	_libmin_putc
	subs	w21, w21, #1
	b.ne	LBB6_71
LBB6_72:
	ldr	x21, [sp, #1056]
	stp	x20, x21, [sp]
Lloh49:
	adrp	x0, l_.str.14@PAGE
Lloh50:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	cbz	w24, LBB6_87
; %bb.73:
	mov	x22, #0                         ; =0x0
	add	w8, w19, w23
	sxtw	x23, w8
	mov	w24, w24
	add	x25, sp, #32
	add	x26, sp, #1056
Lloh51:
	adrp	x19, l_.str.11@PAGE
Lloh52:
	add	x19, x19, l_.str.11@PAGEOFF
	b	LBB6_75
LBB6_74:                                ;   in Loop: Header=BB6_75 Depth=1
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	cmp	x22, x24
	b.eq	LBB6_87
LBB6_75:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_77 Depth 2
                                        ;     Child Loop BB6_80 Depth 2
                                        ;     Child Loop BB6_83 Depth 2
                                        ;     Child Loop BB6_86 Depth 2
	mov	x0, x21
	bl	_libmin_strlen
	cmp	x0, x23
	b.eq	LBB6_78
; %bb.76:                               ;   in Loop: Header=BB6_75 Depth=1
	mov	x20, #0                         ; =0x0
LBB6_77:                                ;   Parent Loop BB6_75 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	add	x20, x20, #1
	mov	x0, x21
	bl	_libmin_strlen
	sub	x8, x23, x0
	cmp	x8, x20
	b.hi	LBB6_77
LBB6_78:                                ;   in Loop: Header=BB6_75 Depth=1
	ldr	x20, [x25, x22, lsl #3]
	str	x20, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_strlen
	cmp	x0, x23
	b.eq	LBB6_81
; %bb.79:                               ;   in Loop: Header=BB6_75 Depth=1
	mov	x27, #0                         ; =0x0
LBB6_80:                                ;   Parent Loop BB6_75 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	add	x27, x27, #1
	mov	x0, x21
	bl	_libmin_strlen
	sub	x8, x23, x0
	cmp	x8, x27
	b.hi	LBB6_80
LBB6_81:                                ;   in Loop: Header=BB6_75 Depth=1
	mov	x0, x20
	bl	_libmin_strlen
	cbz	x0, LBB6_84
; %bb.82:                               ;   in Loop: Header=BB6_75 Depth=1
	mov	x21, #0                         ; =0x0
LBB6_83:                                ;   Parent Loop BB6_75 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w0, #45                         ; =0x2d
	bl	_libmin_putc
	add	x21, x21, #1
	mov	x0, x20
	bl	_libmin_strlen
	cmp	x0, x21
	b.hi	LBB6_83
LBB6_84:                                ;   in Loop: Header=BB6_75 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	add	x22, x22, #1
	ldr	x21, [x26, x22, lsl #3]
	mov	x0, x21
	bl	_libmin_strlen
	cmp	x0, x23
	b.eq	LBB6_74
; %bb.85:                               ;   in Loop: Header=BB6_75 Depth=1
	mov	x20, #0                         ; =0x0
LBB6_86:                                ;   Parent Loop BB6_75 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w0, #32                         ; =0x20
	bl	_libmin_putc
	add	x20, x20, #1
	mov	x0, x21
	bl	_libmin_strlen
	sub	x8, x23, x0
	cmp	x8, x20
	b.hi	LBB6_86
	b	LBB6_74
LBB6_87:
	bl	_libmin_success
LBB6_88:
	ldur	x8, [x29, #-96]
Lloh53:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh54:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh55:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_90
; %bb.89:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #2096
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB6_90:
	bl	___stack_chk_fail
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh14, Lloh15, Lloh16
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh53, Lloh54, Lloh55
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"123456789"

l_.str.1:                               ; @.str.1
	.asciz	"sbc: Unable to malloc space for result\n"

l_.str.2:                               ; @.str.2
	.asciz	"sbc: Unable to malloc\n"

l_.str.3:                               ; @.str.3
	.asciz	"Unable to malloc partial product array\n"

l_.str.4:                               ; @.str.4
	.asciz	"splice: unable to malloc\n"

l_.str.5:                               ; @.str.5
	.asciz	"cut_off: Unable to malloc\n"

	.section	__DATA,__data
	.globl	_argc                           ; @argc
	.p2align	2, 0x0
_argc:
	.long	3                               ; 0x3

	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"longdiv"

l_.str.7:                               ; @.str.7
	.asciz	"52333498"

l_.str.8:                               ; @.str.8
	.asciz	"27"

	.section	__DATA,__data
	.globl	_argv                           ; @argv
	.p2align	3, 0x0
_argv:
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8

	.section	__TEXT,__cstring,cstring_literals
l_.str.9:                               ; @.str.9
	.asciz	"%s\n%s\n"

l_.str.10:                              ; @.str.10
	.asciz	"longdiv: syntax error"

l_.str.11:                              ; @.str.11
	.asciz	"%s\n"

l_.str.12:                              ; @.str.12
	.asciz	"longdiv: Cannot divide by 0.\n"

l_.str.13:                              ; @.str.13
	.asciz	"0"

l_.str.14:                              ; @.str.14
	.asciz	"\n %s)%s\n"

.subsections_via_symbols
