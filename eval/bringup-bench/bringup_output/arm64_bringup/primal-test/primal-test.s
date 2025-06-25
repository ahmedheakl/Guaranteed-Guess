	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_get_random_int                 ; -- Begin function get_random_int
	.p2align	2
_get_random_int:                        ; @get_random_int
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
	mov	x19, x1
	mov	x20, x0
	bl	_libmin_rand
	mov	w8, w0
	sub	x9, x19, x20
	add	x9, x9, #1
	udiv	x10, x8, x9
	msub	x8, x10, x9, x8
	add	x0, x8, x20
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_split_int                      ; -- Begin function split_int
	.p2align	2
_split_int:                             ; @split_int
	.cfi_startproc
; %bb.0:
	str	xzr, [x0]
	sub	x8, x2, #1
	str	x8, [x1]
	tbnz	w8, #0, LBB1_2
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	ldr	x8, [x1]
	lsr	x9, x8, #1
	str	x9, [x1]
	tbz	w8, #1, LBB1_1
LBB1_2:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_miller_rabin_int               ; -- Begin function miller_rabin_int
	.p2align	2
_miller_rabin_int:                      ; @miller_rabin_int
	.cfi_startproc
; %bb.0:
	tbnz	w0, #0, LBB2_2
; %bb.1:
	cmp	w0, #2
	cset	w0, eq
	ret
LBB2_2:
	cmp	w0, #3
	b.ne	LBB2_4
; %bb.3:
	mov	w0, #1                          ; =0x1
	ret
LBB2_4:
	b.hs	LBB2_6
; %bb.5:
	mov	w0, #0                          ; =0x0
	ret
LBB2_6:
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
	mov	w20, w0
	mov	x22, #0                         ; =0x0
	sub	x21, x20, #1
	tbnz	w21, #0, LBB2_9
; %bb.7:
	mov	x8, x21
LBB2_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x22, x22, #1
	lsr	x21, x8, #1
	mov	x9, x8
	mov	x8, x21
	tbz	w9, #1, LBB2_8
LBB2_9:
	cbz	w19, LBB2_23
; %bb.10:
	mov	w23, #0                         ; =0x0
	sub	w24, w0, #1
	sub	w8, w0, #2
	sub	x25, x8, #1
	b	LBB2_13
LBB2_11:                                ;   in Loop: Header=BB2_13 Depth=1
	cmp	x8, x24
	b.ne	LBB2_22
LBB2_12:                                ;   in Loop: Header=BB2_13 Depth=1
	add	w23, w23, #1
	mov	w0, #2                          ; =0x2
	cmp	w23, w19
	b.eq	LBB2_24
LBB2_13:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_15 Depth 2
                                        ;     Child Loop BB2_20 Depth 2
	bl	_libmin_rand
	cbz	x21, LBB2_12
; %bb.14:                               ;   in Loop: Header=BB2_13 Depth=1
	mov	w8, w0
	udiv	x9, x8, x25
	msub	x8, x9, x25, x8
	add	x9, x8, #2
	mov	w8, #1                          ; =0x1
	mov	x10, x21
LBB2_15:                                ;   Parent Loop BB2_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mul	x11, x9, x8
	udiv	x12, x11, x20
	msub	x11, x12, x20, x11
	tst	w10, #0x1
	csel	x8, x8, x11, eq
	mul	x9, x9, x9
	udiv	x11, x9, x20
	msub	x9, x11, x20, x9
	lsr	x11, x10, #1
	cmp	x10, #1
	mov	x10, x11
	b.hi	LBB2_15
; %bb.16:                               ;   in Loop: Header=BB2_13 Depth=1
	cmp	x8, #1
	b.eq	LBB2_12
; %bb.17:                               ;   in Loop: Header=BB2_13 Depth=1
	cmp	x8, x24
	b.eq	LBB2_12
; %bb.18:                               ;   in Loop: Header=BB2_13 Depth=1
	cbz	x22, LBB2_11
; %bb.19:                               ;   in Loop: Header=BB2_13 Depth=1
	mov	w9, #2                          ; =0x2
LBB2_20:                                ;   Parent Loop BB2_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mul	x8, x8, x8
	udiv	x10, x8, x20
	msub	x8, x10, x20, x8
	cmp	x8, #1
	b.eq	LBB2_22
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=2
	cmp	x8, x24
	ccmp	x9, x22, #2, ne
	add	x9, x9, #1
	b.ls	LBB2_20
	b	LBB2_11
LBB2_22:
	mov	w0, #0                          ; =0x0
	b	LBB2_24
LBB2_23:
	mov	w0, #2                          ; =0x2
LBB2_24:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	w19, #3                         ; =0x3
	mov	w20, #200                       ; =0xc8
	adrp	x21, _q_head@PAGE
Lloh0:
	adrp	x22, _q@GOTPAGE
Lloh1:
	ldr	x22, [x22, _q@GOTPAGEOFF]
	b	LBB3_2
LBB3_1:                                 ;   in Loop: Header=BB3_2 Depth=1
	bl	_libmin_rand
	mov	x19, x0
	subs	w20, w20, #1
	b.eq	LBB3_5
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	mov	w1, #16                         ; =0x10
	bl	_miller_rabin_int
	cbz	w0, LBB3_1
; %bb.3:                                ;   in Loop: Header=BB3_2 Depth=1
	ldrsw	x8, [x21, _q_head@PAGEOFF]
	add	x9, x22, x8, lsl #3
	stp	w19, w0, [x9]
	cmp	w8, #62
	b.gt	LBB3_1
; %bb.4:                                ;   in Loop: Header=BB3_2 Depth=1
	add	w8, w8, #1
	str	w8, [x21, _q_head@PAGEOFF]
	b	LBB3_1
LBB3_5:
	ldr	w8, [x21, _q_head@PAGEOFF]
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x21, _q_head@PAGEOFF]
	cmp	w8, #1
	b.lt	LBB3_13
; %bb.6:
	mov	x22, #0                         ; =0x0
Lloh4:
	adrp	x23, _q@GOTPAGE
Lloh5:
	ldr	x23, [x23, _q@GOTPAGEOFF]
Lloh6:
	adrp	x19, l_.str.2@PAGE
Lloh7:
	add	x19, x19, l_.str.2@PAGEOFF
Lloh8:
	adrp	x20, l_.str.1@PAGE
Lloh9:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB3_10
LBB3_7:                                 ;   in Loop: Header=BB3_10 Depth=1
	ldr	w24, [x23]
	fmov	d0, #4.00000000
	fmov	d1, #16.00000000
	bl	_libmin_pow
	str	d0, [sp, #8]
	str	x24, [sp]
	mov	x0, x19
LBB3_8:                                 ;   in Loop: Header=BB3_10 Depth=1
	bl	_libmin_printf
LBB3_9:                                 ;   in Loop: Header=BB3_10 Depth=1
	add	x22, x22, #1
	ldrsw	x8, [x21, _q_head@PAGEOFF]
	add	x23, x23, #8
	cmp	x22, x8
	b.ge	LBB3_13
LBB3_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x23, #4]
	cmp	w8, #2
	b.eq	LBB3_7
; %bb.11:                               ;   in Loop: Header=BB3_10 Depth=1
	cmp	w8, #1
	b.ne	LBB3_9
; %bb.12:                               ;   in Loop: Header=BB3_10 Depth=1
	ldr	w8, [x23]
	str	x8, [sp]
	mov	x0, x20
	b	LBB3_8
LBB3_13:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_q_head                         ; @q_head
.zerofill __DATA,__common,_q_head,4,2
	.comm	_q,512,2                        ; @q
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Primality tests found %d primes...\n"

l_.str.1:                               ; @.str.1
	.asciz	"Value %u is `prime' with failure probability (0)\n"

l_.str.2:                               ; @.str.2
	.asciz	"Value %u is `likely prime' with failure probability (1 in %.0lf)\n"

.subsections_via_symbols
