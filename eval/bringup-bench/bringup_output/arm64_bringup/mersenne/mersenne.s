	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_sgenrand                       ; -- Begin function sgenrand
	.p2align	2
_sgenrand:                              ; @sgenrand
	.cfi_startproc
; %bb.0:
	mov	x8, #0                          ; =0x0
	mov	w9, #3533                       ; =0xdcd
	movk	w9, #1, lsl #16
	mov	w10, #1                         ; =0x1
Lloh0:
	adrp	x11, _mt@PAGE
Lloh1:
	add	x11, x11, _mt@PAGEOFF
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	madd	w12, w0, w9, w10
	bfxil	w0, w12, #16, #16
	str	w0, [x11, x8]
	madd	w0, w12, w9, w10
	add	x8, x8, #4
	cmp	x8, #2496
	b.ne	LBB0_1
; %bb.2:
	mov	w8, #624                        ; =0x270
	adrp	x9, _mti@PAGE
	str	w8, [x9, _mti@PAGEOFF]
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_lsgenrand                      ; -- Begin function lsgenrand
	.p2align	2
_lsgenrand:                             ; @lsgenrand
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x1, x0
Lloh2:
	adrp	x0, _mt@PAGE
Lloh3:
	add	x0, x0, _mt@PAGEOFF
	mov	w2, #2496                       ; =0x9c0
	bl	_memcpy
	mov	w8, #624                        ; =0x270
	adrp	x9, _mti@PAGE
	str	w8, [x9, _mti@PAGEOFF]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_genrand                        ; -- Begin function genrand
	.p2align	2
_genrand:                               ; @genrand
	.cfi_startproc
; %bb.0:
	adrp	x8, _mti@PAGE
	ldrsw	x9, [x8, _mti@PAGEOFF]
	cmp	w9, #623
	b.le	LBB2_9
; %bb.1:
	cmp	w9, #625
	b.ne	LBB2_4
; %bb.2:
	mov	x9, #0                          ; =0x0
	mov	w10, #4357                      ; =0x1105
	mov	w11, #3533                      ; =0xdcd
	movk	w11, #1, lsl #16
	mov	w12, #1                         ; =0x1
Lloh4:
	adrp	x13, _mt@PAGE
Lloh5:
	add	x13, x13, _mt@PAGEOFF
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	madd	w14, w10, w11, w12
	bfxil	w10, w14, #16, #16
	str	w10, [x13, x9]
	madd	w10, w14, w11, w12
	add	x9, x9, #4
	cmp	x9, #2496
	b.ne	LBB2_3
LBB2_4:
	mov	x11, #0                         ; =0x0
Lloh6:
	adrp	x9, _mt@PAGE
Lloh7:
	ldr	w12, [x9, _mt@PAGEOFF]
Lloh8:
	adrp	x9, _mt@PAGE
Lloh9:
	add	x9, x9, _mt@PAGEOFF
Lloh10:
	adrp	x10, _genrand.mag01@PAGE
Lloh11:
	add	x10, x10, _genrand.mag01@PAGEOFF
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
                                        ; kill: def $w12 killed $w12 killed $x12
	add	x13, x9, x11
	ldp	w14, w15, [x13, #4]
	and	w16, w12, #0x80000000
	ldp	w17, w12, [x13, #12]
	and	w0, w14, #0x80000000
	and	w1, w15, #0x80000000
	and	w2, w17, #0x80000000
	and	w3, w14, #0x7ffffffe
	and	w4, w15, #0x7ffffffe
	and	w5, w17, #0x7ffffffe
	and	w6, w12, #0x7ffffffe
	orr	w16, w3, w16
	orr	w0, w4, w0
	orr	w1, w5, w1
	orr	w2, w6, w2
	ldr	w3, [x13, #1588]
	ldr	w4, [x13, #1592]
	ldr	w5, [x13, #1596]
	and	x14, x14, #0x1
	and	x15, x15, #0x1
	and	x17, x17, #0x1
	ldr	w14, [x10, x14, lsl #2]
	ldr	w15, [x10, x15, lsl #2]
	ldr	w17, [x10, x17, lsl #2]
	and	x6, x12, #0x1
	ldr	w6, [x10, x6, lsl #2]
	ldr	w7, [x13, #1600]
	eor	w14, w14, w3
	eor	w15, w15, w4
	eor	w17, w17, w5
	eor	w14, w14, w16, lsr #1
	eor	w16, w6, w7
	eor	w15, w15, w0, lsr #1
	eor	w17, w17, w1, lsr #1
	eor	w16, w16, w2, lsr #1
	stp	w14, w15, [x13]
	stp	w17, w16, [x13, #8]
	add	x11, x11, #16
	cmp	x11, #896
	b.ne	LBB2_5
; %bb.6:
	mov	x11, #0                         ; =0x0
	and	w12, w12, #0x80000000
Lloh12:
	adrp	x13, _mt@PAGE+896
Lloh13:
	add	x13, x13, _mt@PAGEOFF+896
	ldp	w14, w15, [x13, #4]
	and	w16, w14, #0x7ffffffe
	orr	w12, w16, w12
	ldr	w16, [x13, #1588]
	and	x17, x14, #0x1
	ldr	w17, [x10, x17, lsl #2]
	eor	w16, w17, w16
	eor	w12, w16, w12, lsr #1
	and	w14, w14, #0x80000000
	and	w16, w15, #0x7ffffffe
	orr	w14, w16, w14
	ldr	w16, [x13, #1592]
	and	x17, x15, #0x1
	ldr	w17, [x10, x17, lsl #2]
	eor	w16, w17, w16
	eor	w14, w16, w14, lsr #1
	stp	w12, w14, [x13]
	and	w12, w15, #0x80000000
	ldr	w14, [x13, #12]
	and	w15, w14, #0x7ffffffe
	orr	w12, w15, w12
	ldr	w15, [x13, #1596]
	and	x16, x14, #0x1
	ldr	w16, [x10, x16, lsl #2]
	eor	w15, w16, w15
	eor	w12, w15, w12, lsr #1
	str	w12, [x13, #8]
	mov	x12, x14
LBB2_7:                                 ; =>This Inner Loop Header: Depth=1
	add	x13, x9, x11
	and	w14, w12, #0x80000000
	ldr	w12, [x13, #912]
	and	w15, w12, #0x7ffffffe
	orr	w14, w15, w14
	and	x15, x12, #0x1
	ldr	w15, [x10, x15, lsl #2]
	ldr	w16, [x13]
	eor	w15, w15, w16
	eor	w14, w15, w14, lsr #1
	str	w14, [x13, #908]
	add	x11, x11, #4
	cmp	x11, #1584
	b.ne	LBB2_7
; %bb.8:
	ldr	w11, [x9, #2492]
	and	w12, w11, #0x80000000
	ldr	w11, [x9]
	and	w13, w11, #0x7ffffffe
	orr	w12, w13, w12
	ldr	w13, [x9, #1584]
	and	x14, x11, #0x1
	ldr	w10, [x10, x14, lsl #2]
	eor	w10, w10, w13
	eor	w10, w10, w12, lsr #1
	str	w10, [x9, #2492]
	mov	w9, #1                          ; =0x1
	b	LBB2_10
LBB2_9:
Lloh14:
	adrp	x10, _mt@PAGE
Lloh15:
	add	x10, x10, _mt@PAGEOFF
	ldr	w11, [x10, x9, lsl #2]
	add	w9, w9, #1
LBB2_10:
	str	w9, [x8, _mti@PAGEOFF]
	eor	w8, w11, w11, lsr #11
	mov	w9, #22144                      ; =0x5680
	movk	w9, #40236, lsl #16
	and	w9, w9, w8, lsl #7
	eor	w8, w9, w8
	mov	w9, #-272236544                 ; =0xefc60000
	and	w9, w9, w8, lsl #15
	eor	w8, w9, w8
	eor	w0, w8, w8, lsr #18
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdrp	Lloh6, Lloh8
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	x8, #0                          ; =0x0
	mov	w9, #4357                       ; =0x1105
	mov	w10, #3533                      ; =0xdcd
	movk	w10, #1, lsl #16
	mov	w11, #1                         ; =0x1
Lloh16:
	adrp	x12, _mt@PAGE
Lloh17:
	add	x12, x12, _mt@PAGEOFF
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	madd	w13, w9, w10, w11
	bfxil	w9, w13, #16, #16
	str	w9, [x12, x8]
	madd	w9, w13, w10, w11
	add	x8, x8, #4
	cmp	x8, #2496
	b.ne	LBB3_1
; %bb.2:
	mov	w21, #0                         ; =0x0
	mov	w22, #0                         ; =0x0
	mov	w8, #624                        ; =0x270
	adrp	x9, _mti@PAGE
	str	w8, [x9, _mti@PAGEOFF]
	mov	w23, #23593                     ; =0x5c29
	movk	w23, #49807, lsl #16
	mov	w24, #23592                     ; =0x5c28
	movk	w24, #655, lsl #16
Lloh18:
	adrp	x19, l_.str@PAGE
Lloh19:
	add	x19, x19, l_.str@PAGEOFF
	mov	w25, #52429                     ; =0xcccd
	movk	w25, #52428, lsl #16
	mov	w26, #39321                     ; =0x9999
	movk	w26, #6553, lsl #16
	mov	w27, #13106                     ; =0x3332
	movk	w27, #13107, lsl #16
	mov	w28, #10000                     ; =0x2710
Lloh20:
	adrp	x20, l_.str.1@PAGE
Lloh21:
	add	x20, x20, l_.str.1@PAGEOFF
	b	LBB3_4
LBB3_3:                                 ;   in Loop: Header=BB3_4 Depth=1
	add	w22, w22, #1
	cmp	w22, w28
	b.eq	LBB3_7
LBB3_4:                                 ; =>This Inner Loop Header: Depth=1
	and	w8, w22, #0xffff
	mul	w8, w8, w23
	ror	w8, w8, #2
	cmp	w8, w24
	b.hi	LBB3_3
; %bb.5:                                ;   in Loop: Header=BB3_4 Depth=1
	bl	_genrand
                                        ; kill: def $w0 killed $w0 def $x0
	str	x0, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	w21, w21, #1
	madd	w8, w21, w25, w26
	cmp	w8, w27
	b.hi	LBB3_3
; %bb.6:                                ;   in Loop: Header=BB3_4 Depth=1
	mov	x0, x20
	bl	_libmin_printf
	b	LBB3_3
LBB3_7:
Lloh22:
	adrp	x0, l_.str.1@PAGE
Lloh23:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_mt,2496,2       ; @mt
	.section	__DATA,__data
	.p2align	2, 0x0                          ; @mti
_mti:
	.long	625                             ; 0x271

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @genrand.mag01
_genrand.mag01:
	.long	0                               ; 0x0
	.long	2567483615                      ; 0x9908b0df

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%10u "

l_.str.1:                               ; @.str.1
	.asciz	"\n"

.subsections_via_symbols
