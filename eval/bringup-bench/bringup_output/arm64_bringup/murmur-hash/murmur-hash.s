	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_murmurhash                     ; -- Begin function murmurhash
	.p2align	2
_murmurhash:                            ; @murmurhash
	.cfi_startproc
; %bb.0:
	mov	w9, #11601                      ; =0x2d51
	movk	w9, #52382, lsl #16
	mov	w8, #13715                      ; =0x3593
	movk	w8, #7047, lsl #16
	mov	w10, #32768                     ; =0x8000
	movk	w10, #5800, lsl #16
	and	w11, w1, #0xfffffffc
	add	x11, x0, w11, sxtw
	cmp	w1, #4
	b.lo	LBB0_3
; %bb.1:
	neg	w12, w1, lsr #2
	sxtw	x12, w12
	mov	w13, #27492                     ; =0x6b64
	movk	w13, #58964, lsl #16
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w14, [x11, x12, lsl #2]
	mul	w15, w14, w9
	mul	w14, w14, w10
	orr	w14, w14, w15, lsr #17
	mul	w14, w14, w8
	eor	w14, w14, w2
	ror	w14, w14, #19
	add	w14, w14, w14, lsl #2
	add	w2, w14, w13
	adds	x12, x12, #1
	b.lo	LBB0_2
LBB0_3:
	mov	w12, #0                         ; =0x0
	and	w13, w1, #0x3
	cmp	w13, #1
	b.eq	LBB0_8
; %bb.4:
	cmp	w13, #2
	b.eq	LBB0_7
; %bb.5:
	cmp	w13, #3
	b.ne	LBB0_9
; %bb.6:
	ldrb	w12, [x11, #2]
	lsl	w12, w12, #16
LBB0_7:
	ldrb	w13, [x11, #1]
	orr	w12, w12, w13, lsl #8
LBB0_8:
	ldrb	w11, [x11]
	eor	w11, w12, w11
	mul	w9, w11, w9
	mul	w10, w11, w10
	orr	w9, w10, w9, lsr #17
	mul	w8, w9, w8
	eor	w2, w8, w2
LBB0_9:
	eor	w8, w2, w1
	eor	w8, w8, w8, lsr #16
	mov	w9, #51819                      ; =0xca6b
	movk	w9, #34283, lsl #16
	mul	w8, w8, w9
	eor	w8, w8, w8, lsr #13
	mov	w9, #44597                      ; =0xae35
	movk	w9, #49842, lsl #16
	mul	w8, w8, w9
	eor	w0, w8, w8, lsr #16
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
	mov	w23, #27492                     ; =0x6b64
	movk	w23, #58964, lsl #16
	mov	w21, #11601                     ; =0x2d51
	movk	w21, #52382, lsl #16
	mov	w20, #13715                     ; =0x3593
	movk	w20, #7047, lsl #16
	mov	w22, #32768                     ; =0x8000
	movk	w22, #5800, lsl #16
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
	mov	x0, x19
	bl	_libmin_strlen
	sxtw	x8, w0
	and	x8, x8, #0xfffffffffffffffc
	add	x9, x19, x8
	cmp	w0, #4
	b.hs	LBB1_2
; %bb.1:
	mov	w8, #0                          ; =0x0
	b	LBB1_4
LBB1_2:
	mov	w8, #0                          ; =0x0
	neg	w10, w0, lsr #2
	sxtw	x10, w10
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9, x10, lsl #2]
	mul	w12, w11, w21
	mul	w11, w11, w22
	orr	w11, w11, w12, lsr #17
	mul	w11, w11, w20
	eor	w8, w11, w8
	ror	w8, w8, #19
	add	w8, w8, w8, lsl #2
	add	w8, w8, w23
	adds	x10, x10, #1
	b.lo	LBB1_3
LBB1_4:
	mov	w10, #0                         ; =0x0
	and	w11, w0, #0x3
	cmp	w11, #1
	b.eq	LBB1_9
; %bb.5:
	cmp	w11, #2
	b.eq	LBB1_8
; %bb.6:
	cmp	w11, #3
	b.ne	LBB1_10
; %bb.7:
	ldrb	w10, [x9, #2]
	lsl	w10, w10, #16
LBB1_8:
	ldrb	w11, [x9, #1]
	orr	w10, w10, w11, lsl #8
LBB1_9:
	ldrb	w9, [x9]
	eor	w9, w10, w9
	mul	w10, w9, w21
	mul	w9, w9, w22
	orr	w9, w9, w10, lsr #17
	mul	w9, w9, w20
	eor	w8, w9, w8
LBB1_10:
	mov	w24, #44597                     ; =0xae35
	movk	w24, #49842, lsl #16
	mov	w25, #51819                     ; =0xca6b
	movk	w25, #34283, lsl #16
	eor	w8, w8, w0
	eor	w8, w8, w8, lsr #16
	mul	w8, w8, w25
	eor	w8, w8, w8, lsr #13
	mul	w8, w8, w24
	eor	w8, w8, w8, lsr #16
	stp	x19, x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
Lloh4:
	adrp	x19, l_.str.2@PAGE
Lloh5:
	add	x19, x19, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_libmin_strlen
	sxtw	x8, w0
	and	x8, x8, #0xfffffffffffffffc
	add	x9, x19, x8
	cmp	w0, #4
	b.hs	LBB1_12
; %bb.11:
	mov	w8, #0                          ; =0x0
	b	LBB1_14
LBB1_12:
	mov	w8, #0                          ; =0x0
	neg	w10, w0, lsr #2
	sxtw	x10, w10
LBB1_13:                                ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9, x10, lsl #2]
	mul	w12, w11, w21
	mul	w11, w11, w22
	orr	w11, w11, w12, lsr #17
	mul	w11, w11, w20
	eor	w8, w11, w8
	ror	w8, w8, #19
	add	w8, w8, w8, lsl #2
	add	w8, w8, w23
	adds	x10, x10, #1
	b.lo	LBB1_13
LBB1_14:
	mov	w10, #0                         ; =0x0
	and	w11, w0, #0x3
	cmp	w11, #1
	b.eq	LBB1_19
; %bb.15:
	cmp	w11, #2
	b.eq	LBB1_18
; %bb.16:
	cmp	w11, #3
	b.ne	LBB1_20
; %bb.17:
	ldrb	w10, [x9, #2]
	lsl	w10, w10, #16
LBB1_18:
	ldrb	w11, [x9, #1]
	orr	w10, w10, w11, lsl #8
LBB1_19:
	ldrb	w9, [x9]
	eor	w9, w10, w9
	mul	w10, w9, w21
	mul	w9, w9, w22
	orr	w9, w9, w10, lsr #17
	mul	w9, w9, w20
	eor	w8, w9, w8
LBB1_20:
	eor	w8, w8, w0
	eor	w8, w8, w8, lsr #16
	mul	w8, w8, w25
	eor	w8, w8, w8, lsr #13
	mul	w8, w8, w24
	eor	w8, w8, w8, lsr #16
	stp	x19, x8, [sp]
Lloh6:
	adrp	x0, l_.str.1@PAGE
Lloh7:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
Lloh8:
	adrp	x19, l_.str.3@PAGE
Lloh9:
	add	x19, x19, l_.str.3@PAGEOFF
	mov	x0, x19
	bl	_libmin_strlen
	sxtw	x8, w0
	and	x8, x8, #0xfffffffffffffffc
	add	x9, x19, x8
	cmp	w0, #4
	b.hs	LBB1_22
; %bb.21:
	mov	w8, #0                          ; =0x0
	b	LBB1_24
LBB1_22:
	mov	w8, #0                          ; =0x0
	neg	w10, w0, lsr #2
	sxtw	x10, w10
LBB1_23:                                ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9, x10, lsl #2]
	mul	w12, w11, w21
	mul	w11, w11, w22
	orr	w11, w11, w12, lsr #17
	mul	w11, w11, w20
	eor	w8, w11, w8
	ror	w8, w8, #19
	add	w8, w8, w8, lsl #2
	add	w8, w8, w23
	adds	x10, x10, #1
	b.lo	LBB1_23
LBB1_24:
	mov	w10, #0                         ; =0x0
	and	w11, w0, #0x3
	cmp	w11, #1
	b.eq	LBB1_29
; %bb.25:
	cmp	w11, #2
	b.eq	LBB1_28
; %bb.26:
	cmp	w11, #3
	b.ne	LBB1_30
; %bb.27:
	ldrb	w10, [x9, #2]
	lsl	w10, w10, #16
LBB1_28:
	ldrb	w11, [x9, #1]
	orr	w10, w10, w11, lsl #8
LBB1_29:
	ldrb	w9, [x9]
	eor	w9, w10, w9
	mul	w10, w9, w21
	mul	w9, w9, w22
	orr	w9, w9, w10, lsr #17
	mul	w9, w9, w20
	eor	w8, w9, w8
LBB1_30:
	eor	w8, w8, w0
	eor	w8, w8, w8, lsr #16
	mul	w8, w8, w25
	eor	w8, w8, w8, lsr #13
	mul	w8, w8, w24
	eor	w8, w8, w8, lsr #16
	stp	x19, x8, [sp]
Lloh10:
	adrp	x0, l_.str.1@PAGE
Lloh11:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"kinkajou"

l_.str.1:                               ; @.str.1
	.asciz	"murmurhash(\"%s\") = 0x%x\n"

l_.str.2:                               ; @.str.2
	.asciz	"The bringup-bench benchmark MURMUR made this."

l_.str.3:                               ; @.str.3
	.asciz	"It has to start somewhere, it has to start sometime, what better place than here? What better time than now?"

.subsections_via_symbols
