	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_minVal                         ; -- Begin function minVal
	.p2align	2
_minVal:                                ; @minVal
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	ldr	w10, [x0]
	mov	w9, #2147483647                 ; =0x7fffffff
	cmp	w10, w9
	b.ne	LBB0_2
; %bb.1:
	mov	w0, #-1                         ; =0xffffffff
	b	LBB0_3
LBB0_2:
	ldr	w11, [x1]
	cmp	w11, #0
	csel	w9, w9, w10, ne
	csetm	w0, ne
LBB0_3:
	ldr	w10, [x8, #4]
	cmp	w9, w10
	b.le	LBB0_5
; %bb.4:
	ldr	w11, [x1, #4]
	cmp	w11, #0
	csel	w9, w10, w9, eq
	csinc	w0, w0, wzr, ne
LBB0_5:
	ldr	w10, [x8, #8]
	cmp	w9, w10
	b.le	LBB0_7
; %bb.6:
	ldr	w11, [x1, #8]
	mov	w12, #2                         ; =0x2
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_7:
	ldr	w10, [x8, #12]
	cmp	w9, w10
	b.le	LBB0_9
; %bb.8:
	ldr	w11, [x1, #12]
	mov	w12, #3                         ; =0x3
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_9:
	ldr	w10, [x8, #16]
	cmp	w9, w10
	b.le	LBB0_11
; %bb.10:
	ldr	w11, [x1, #16]
	mov	w12, #4                         ; =0x4
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_11:
	ldr	w10, [x8, #20]
	cmp	w9, w10
	b.le	LBB0_13
; %bb.12:
	ldr	w11, [x1, #20]
	mov	w12, #5                         ; =0x5
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_13:
	ldr	w10, [x8, #24]
	cmp	w9, w10
	b.le	LBB0_15
; %bb.14:
	ldr	w11, [x1, #24]
	mov	w12, #6                         ; =0x6
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_15:
	ldr	w10, [x8, #28]
	cmp	w9, w10
	b.le	LBB0_17
; %bb.16:
	ldr	w11, [x1, #28]
	mov	w12, #7                         ; =0x7
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_17:
	ldr	w10, [x8, #32]
	cmp	w9, w10
	b.le	LBB0_19
; %bb.18:
	ldr	w11, [x1, #32]
	mov	w12, #8                         ; =0x8
	cmp	w11, #0
	csel	w0, w12, w0, eq
	csel	w9, w10, w9, eq
LBB0_19:
	ldr	w8, [x8, #36]
	cmp	w9, w8
	b.le	LBB0_21
; %bb.20:
	ldr	w8, [x1, #36]
	cbz	w8, LBB0_23
LBB0_21:
	cmn	w0, #1
	b.ne	LBB0_24
; %bb.22:
	ret
LBB0_23:
	mov	w0, #9                          ; =0x9
LBB0_24:
	mov	w8, #1                          ; =0x1
	str	w8, [x1, w0, uxtw #2]
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function minSpanTree
lCPI1_0:
	.long	0                               ; 0x0
	.long	2147483647                      ; 0x7fffffff
	.long	2147483647                      ; 0x7fffffff
	.long	2147483647                      ; 0x7fffffff
lCPI1_1:
	.long	1                               ; 0x1
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minSpanTree
	.p2align	2
_minSpanTree:                           ; @minSpanTree
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
	mov	x19, x1
	mov	x20, x0
	mov	w21, #0                         ; =0x0
	mov	w0, #0                          ; =0x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
	stp	xzr, xzr, [sp, #32]
	mvni.4s	v0, #128, lsl #24
	mvni.2s	v1, #128, lsl #24
	str	d1, [sp, #96]
	str	xzr, [sp, #48]
Lloh3:
	adrp	x8, lCPI1_0@PAGE
Lloh4:
	ldr	q1, [x8, lCPI1_0@PAGEOFF]
	mov	w8, #2147483647                 ; =0x7fffffff
	stp	w8, w8, [sp, #8]                ; 8-byte Folded Spill
	mov	w22, #10                        ; =0xa
	mov	w23, #40                        ; =0x28
	stp	w8, w8, [sp]                    ; 8-byte Folded Spill
	mov	w28, #2147483647                ; =0x7fffffff
	stp	q1, q0, [sp, #64]
	mov	w24, #2147483647                ; =0x7fffffff
Lloh5:
	adrp	x8, lCPI1_1@PAGE
Lloh6:
	ldr	q0, [x8, lCPI1_1@PAGEOFF]
	mov	w25, #2147483647                ; =0x7fffffff
	mov	w26, #2147483647                ; =0x7fffffff
	mov	w27, #2147483647                ; =0x7fffffff
	str	q0, [sp, #16]
	b	LBB1_2
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	add	x0, sp, #64
	add	x1, sp, #16
	bl	_minVal
                                        ; kill: def $w0 killed $w0 def $x0
	subs	w22, w22, #1
	b.eq	LBB1_36
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	sxtw	x8, w0
	ldr	w9, [sp, #16]
	cbnz	w9, LBB1_5
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	smull	x9, w8, w23
	ldr	w9, [x20, x9]
	cmp	w9, #0
	ccmp	w9, w21, #0, ne
	b.ge	LBB1_5
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #64]
	str	w0, [x19]
	mov	x21, x9
LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #20]
	cbnz	w9, LBB1_8
; %bb.6:                                ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #4]
	cmp	w9, #0
	ccmp	w9, w27, #0, ne
	b.ge	LBB1_8
; %bb.7:                                ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #68]
	str	w0, [x19, #4]
	mov	x27, x9
LBB1_8:                                 ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #24]
	cbnz	w9, LBB1_11
; %bb.9:                                ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #8]
	cmp	w9, #0
	ccmp	w9, w26, #0, ne
	b.ge	LBB1_11
; %bb.10:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #72]
	str	w0, [x19, #8]
	mov	x26, x9
LBB1_11:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #28]
	cbnz	w9, LBB1_14
; %bb.12:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #12]
	cmp	w9, #0
	ccmp	w9, w25, #0, ne
	b.ge	LBB1_14
; %bb.13:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #76]
	str	w0, [x19, #12]
	mov	x25, x9
LBB1_14:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #32]
	cbnz	w9, LBB1_17
; %bb.15:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #16]
	cmp	w9, #0
	ccmp	w9, w24, #0, ne
	b.ge	LBB1_17
; %bb.16:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #80]
	str	w0, [x19, #16]
	mov	x24, x9
LBB1_17:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #36]
	cbnz	w9, LBB1_20
; %bb.18:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #20]
	cmp	w9, #0
	ccmp	w9, w28, #0, ne
	b.ge	LBB1_20
; %bb.19:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #84]
	str	w0, [x19, #20]
	mov	x28, x9
LBB1_20:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #40]
	cbnz	w9, LBB1_24
; %bb.21:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #24]
	cbz	w9, LBB1_24
; %bb.22:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	w10, [sp]                       ; 4-byte Folded Reload
	cmp	w9, w10
	b.ge	LBB1_24
; %bb.23:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #88]
	str	w0, [x19, #24]
	str	w9, [sp]                        ; 4-byte Folded Spill
LBB1_24:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #44]
	cbnz	w9, LBB1_28
; %bb.25:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #28]
	cbz	w9, LBB1_28
; %bb.26:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	w10, [sp, #4]                   ; 4-byte Folded Reload
	cmp	w9, w10
	b.ge	LBB1_28
; %bb.27:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #92]
	str	w0, [x19, #28]
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
LBB1_28:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #48]
	cbnz	w9, LBB1_32
; %bb.29:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x9, w8, w23, x20
	ldr	w9, [x9, #32]
	cbz	w9, LBB1_32
; %bb.30:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	w10, [sp, #8]                   ; 4-byte Folded Reload
	cmp	w9, w10
	b.ge	LBB1_32
; %bb.31:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w9, [sp, #96]
	str	w0, [x19, #32]
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
LBB1_32:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #52]
	cbnz	w9, LBB1_1
; %bb.33:                               ;   in Loop: Header=BB1_2 Depth=1
	smaddl	x8, w8, w23, x20
	ldr	w8, [x8, #36]
	cbz	w8, LBB1_1
; %bb.34:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	cmp	w8, w9
	b.ge	LBB1_1
; %bb.35:                               ;   in Loop: Header=BB1_2 Depth=1
	str	w8, [sp, #100]
	str	w0, [x19, #36]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB1_1
LBB1_36:
	ldur	x8, [x29, #-88]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_38
; %bb.37:
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB1_38:
	bl	___stack_chk_fail
	.loh AdrpLdr	Lloh5, Lloh6
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_initializeData                 ; -- Begin function initializeData
	.p2align	2
_initializeData:                        ; @initializeData
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	mov	w20, #10                        ; =0xa
	mov	w0, #10                         ; =0xa
	bl	_libmin_srand
	mov	x21, #0                         ; =0x0
	mov	w23, #52429                     ; =0xcccd
	movk	w23, #52428, lsl #16
	mov	x24, x19
	mov	x25, x19
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	add	x21, x21, #1
	add	x25, x25, #40
	add	x24, x24, #4
	cmp	x21, #10
	b.eq	LBB2_12
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_5 Depth 2
	mov	x26, #0                         ; =0x0
	mov	w8, #40                         ; =0x28
	madd	x8, x21, x8, x19
	add	x27, x8, x21, lsl #2
	mov	x28, x24
	b	LBB2_5
LBB2_3:                                 ;   in Loop: Header=BB2_5 Depth=2
	str	wzr, [x27]
LBB2_4:                                 ;   in Loop: Header=BB2_5 Depth=2
	add	x26, x26, #1
	add	x28, x28, #40
	cmp	x26, #10
	b.eq	LBB2_1
LBB2_5:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x21, x26
	b.ls	LBB2_8
; %bb.6:                                ;   in Loop: Header=BB2_5 Depth=2
	ldr	w8, [x28]
LBB2_7:                                 ;   in Loop: Header=BB2_5 Depth=2
	str	w8, [x25, x26, lsl #2]
	b	LBB2_4
LBB2_8:                                 ;   in Loop: Header=BB2_5 Depth=2
	b.eq	LBB2_3
; %bb.9:                                ;   in Loop: Header=BB2_5 Depth=2
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #34
	add	w8, w8, w8, lsl #2
	sub	w22, w0, w8
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #34
	add	w8, w8, w8, lsl #2
	sub	w8, w0, w8
	cmp	w22, w8
	b.ne	LBB2_11
; %bb.10:                               ;   in Loop: Header=BB2_5 Depth=2
	str	wzr, [x25, x26, lsl #2]
	b	LBB2_4
LBB2_11:                                ;   in Loop: Header=BB2_5 Depth=2
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #35
	msub	w8, w8, w20, w0
	b	LBB2_7
LBB2_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_displayGraph                   ; -- Begin function displayGraph
	.p2align	2
_displayGraph:                          ; @displayGraph
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
	mov	x23, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	sub	x25, x0, #20
Lloh10:
	adrp	x20, l_.str.11@PAGE
Lloh11:
	add	x20, x20, l_.str.11@PAGEOFF
	adrp	x26, _vertName@PAGE+56
	adrp	x19, _vertName@PAGE+64
	adrp	x27, _vertName@PAGE+72
Lloh12:
	adrp	x21, l_.str.13@PAGE
Lloh13:
	add	x21, x21, l_.str.13@PAGEOFF
Lloh14:
	adrp	x22, l_.str.12@PAGE
Lloh15:
	add	x22, x22, l_.str.12@PAGEOFF
Lloh16:
	adrp	x28, _vertName@PAGE
Lloh17:
	add	x28, x28, _vertName@PAGEOFF
	b	LBB3_3
LBB3_1:                                 ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x27, _vertName@PAGEOFF+72]
	str	x8, [sp]
	mov	x0, x20
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	add	x23, x23, #40
	cmp	x23, #440
	b.eq	LBB3_25
LBB3_3:                                 ; =>This Inner Loop Header: Depth=1
	cbz	x23, LBB3_14
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x28, w24, sxtw #3]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	w24, w24, #1
	cbz	x23, LBB3_15
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldur	w8, [x8, #-20]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_16
LBB3_6:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldur	w8, [x8, #-16]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_17
LBB3_7:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldur	w8, [x8, #-12]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_18
LBB3_8:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldur	w8, [x8, #-8]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_19
LBB3_9:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldur	w8, [x8, #-4]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_20
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	w8, [x25, x23]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_21
LBB3_11:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldr	w8, [x8, #4]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_22
LBB3_12:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldr	w8, [x8, #8]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB3_23
LBB3_13:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldr	w8, [x8, #12]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbnz	x23, LBB3_24
	b	LBB3_1
LBB3_14:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh18:
	adrp	x0, l_.str.10@PAGE
Lloh19:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
	cbnz	x23, LBB3_5
LBB3_15:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh20:
	adrp	x8, _vertName@PAGE
Lloh21:
	ldr	x8, [x8, _vertName@PAGEOFF]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_6
LBB3_16:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh22:
	adrp	x8, _vertName@PAGE+8
Lloh23:
	ldr	x8, [x8, _vertName@PAGEOFF+8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_7
LBB3_17:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh24:
	adrp	x8, _vertName@PAGE+16
Lloh25:
	ldr	x8, [x8, _vertName@PAGEOFF+16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_8
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh26:
	adrp	x8, _vertName@PAGE+24
Lloh27:
	ldr	x8, [x8, _vertName@PAGEOFF+24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_9
LBB3_19:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh28:
	adrp	x8, _vertName@PAGE+32
Lloh29:
	ldr	x8, [x8, _vertName@PAGEOFF+32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_10
LBB3_20:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh30:
	adrp	x8, _vertName@PAGE+40
Lloh31:
	ldr	x8, [x8, _vertName@PAGEOFF+40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_11
LBB3_21:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh32:
	adrp	x8, _vertName@PAGE+48
Lloh33:
	ldr	x8, [x8, _vertName@PAGEOFF+48]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_12
LBB3_22:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x26, _vertName@PAGEOFF+56]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB3_13
LBB3_23:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x19, _vertName@PAGEOFF+64]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbz	x23, LBB3_1
LBB3_24:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x25, x23
	ldr	w8, [x8, #16]
	str	x8, [sp]
	mov	x0, x22
	b	LBB3_2
LBB3_25:
Lloh34:
	adrp	x0, l_.str.14@PAGE
Lloh35:
	add	x0, x0, l_.str.14@PAGEOFF
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_libmin_printf
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpLdr	Lloh26, Lloh27
	.loh AdrpLdr	Lloh28, Lloh29
	.loh AdrpLdr	Lloh30, Lloh31
	.loh AdrpLdr	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.globl	_displayGraph1                  ; -- Begin function displayGraph1
	.p2align	2
_displayGraph1:                         ; @displayGraph1
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
	mov	x23, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	sub	x25, x1, #4
	sub	x26, x0, #20
Lloh36:
	adrp	x20, l_.str.11@PAGE
Lloh37:
	add	x20, x20, l_.str.11@PAGEOFF
	adrp	x27, _vertName@PAGE+64
	adrp	x28, _vertName@PAGE+72
Lloh38:
	adrp	x21, l_.str.13@PAGE
Lloh39:
	add	x21, x21, l_.str.13@PAGEOFF
Lloh40:
	adrp	x22, l_.str.15@PAGE
Lloh41:
	add	x22, x22, l_.str.15@PAGEOFF
Lloh42:
	adrp	x19, _vertName@PAGE
Lloh43:
	add	x19, x19, _vertName@PAGEOFF
	b	LBB4_3
LBB4_1:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	x8, [x28, _vertName@PAGEOFF+72]
	str	x8, [sp]
	mov	x0, x20
LBB4_2:                                 ;   in Loop: Header=BB4_3 Depth=1
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	add	x23, x23, #4
	add	x26, x26, #40
	cmp	x23, #44
	b.eq	LBB4_25
LBB4_3:                                 ; =>This Inner Loop Header: Depth=1
	cbz	x23, LBB4_14
; %bb.4:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	x8, [x19, w24, sxtw #3]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	w24, w24, #1
	cbz	x23, LBB4_15
LBB4_5:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldur	w9, [x26, #-20]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_16
LBB4_6:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldur	w9, [x26, #-16]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_17
LBB4_7:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldur	w9, [x26, #-12]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_18
LBB4_8:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldur	w9, [x26, #-8]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_19
LBB4_9:                                 ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldur	w9, [x26, #-4]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_20
LBB4_10:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldr	w9, [x26]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_21
LBB4_11:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldr	w9, [x26, #4]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_22
LBB4_12:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldr	w9, [x26, #8]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbz	x23, LBB4_23
LBB4_13:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldr	w9, [x26, #12]
	stp	x9, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	cbnz	x23, LBB4_24
	b	LBB4_1
LBB4_14:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh44:
	adrp	x0, l_.str.10@PAGE
Lloh45:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
	cbnz	x23, LBB4_5
LBB4_15:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh46:
	adrp	x8, _vertName@PAGE
Lloh47:
	ldr	x8, [x8, _vertName@PAGEOFF]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_6
LBB4_16:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh48:
	adrp	x8, _vertName@PAGE+8
Lloh49:
	ldr	x8, [x8, _vertName@PAGEOFF+8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_7
LBB4_17:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh50:
	adrp	x8, _vertName@PAGE+16
Lloh51:
	ldr	x8, [x8, _vertName@PAGEOFF+16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_8
LBB4_18:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh52:
	adrp	x8, _vertName@PAGE+24
Lloh53:
	ldr	x8, [x8, _vertName@PAGEOFF+24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_9
LBB4_19:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh54:
	adrp	x8, _vertName@PAGE+32
Lloh55:
	ldr	x8, [x8, _vertName@PAGEOFF+32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_10
LBB4_20:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh56:
	adrp	x8, _vertName@PAGE+40
Lloh57:
	ldr	x8, [x8, _vertName@PAGEOFF+40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_11
LBB4_21:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh58:
	adrp	x8, _vertName@PAGE+48
Lloh59:
	ldr	x8, [x8, _vertName@PAGEOFF+48]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_12
LBB4_22:                                ;   in Loop: Header=BB4_3 Depth=1
Lloh60:
	adrp	x8, _vertName@PAGE+56
Lloh61:
	ldr	x8, [x8, _vertName@PAGEOFF+56]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbnz	x23, LBB4_13
LBB4_23:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	x8, [x27, _vertName@PAGEOFF+64]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	cbz	x23, LBB4_1
LBB4_24:                                ;   in Loop: Header=BB4_3 Depth=1
	ldr	w8, [x25, x23]
	ldr	w9, [x26, #16]
	stp	x9, x8, [sp]
	mov	x0, x22
	b	LBB4_2
LBB4_25:
Lloh62:
	adrp	x0, l_.str.14@PAGE
Lloh63:
	add	x0, x0, l_.str.14@PAGEOFF
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_libmin_printf
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpLdr	Lloh46, Lloh47
	.loh AdrpLdr	Lloh48, Lloh49
	.loh AdrpLdr	Lloh50, Lloh51
	.loh AdrpLdr	Lloh52, Lloh53
	.loh AdrpLdr	Lloh54, Lloh55
	.loh AdrpLdr	Lloh56, Lloh57
	.loh AdrpLdr	Lloh58, Lloh59
	.loh AdrpLdr	Lloh60, Lloh61
	.loh AdrpAdd	Lloh62, Lloh63
	.cfi_endproc
                                        ; -- End function
	.globl	_displayPath                    ; -- Begin function displayPath
	.p2align	2
_displayPath:                           ; @displayPath
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
	mov	x19, x2
                                        ; kill: def $w1 killed $w1 def $x1
	mov	x20, x0
	adrp	x23, _displayPath.count@PAGE
	ldr	w8, [x23, _displayPath.count@PAGEOFF]
Lloh64:
	adrp	x21, _vertName@PAGE
Lloh65:
	add	x21, x21, _vertName@PAGEOFF
	cbz	w8, LBB5_2
; %bb.1:
	sxtw	x22, w1
	b	LBB5_3
LBB5_2:
	sbfiz	x24, x20, #3, #32
	ldr	x8, [x21, x24]
	mov	x9, x1
	sxtw	x22, w9
	ldr	x9, [x21, w1, sxtw #3]
	stp	x8, x9, [sp]
Lloh66:
	adrp	x0, l_.str.16@PAGE
Lloh67:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
	ldr	x8, [x21, x24]
	str	x8, [sp]
Lloh68:
	adrp	x0, l_.str.17@PAGE
Lloh69:
	add	x0, x0, l_.str.17@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x23, _displayPath.count@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x23, _displayPath.count@PAGEOFF]
LBB5_3:
	ldr	w1, [x19, x22, lsl #2]
	cmp	w1, w20
	b.eq	LBB5_5
; %bb.4:
	mov	x0, x20
	mov	x2, x19
	bl	_displayPath
LBB5_5:
	ldr	x8, [x21, x22, lsl #3]
	str	x8, [sp]
Lloh70:
	adrp	x0, l_.str.18@PAGE
Lloh71:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
Lloh72:
	adrp	x0, l_.str.13@PAGE
Lloh73:
	add	x0, x0, l_.str.13@PAGEOFF
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	b	_libmin_printf
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.cfi_endproc
                                        ; -- End function
	.globl	_displayTree                    ; -- Begin function displayTree
	.p2align	2
_displayTree:                           ; @displayTree
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
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
	mov	x19, x1
	mov	x20, x0
Lloh74:
	adrp	x0, l_.str.19@PAGE
Lloh75:
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_libmin_printf
Lloh76:
	adrp	x22, _vertName@PAGE
Lloh77:
	add	x22, x22, _vertName@PAGEOFF
	ldr	x8, [x22, #8]
	ldrsw	x9, [x19, #4]
	add	x23, x20, #40
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x23, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
Lloh78:
	adrp	x21, l_.str.20@PAGE
Lloh79:
	add	x21, x21, l_.str.20@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #4]
	ldr	w23, [x23, x8, lsl #2]
	ldr	x8, [x22, #16]
	add	x24, x20, #80
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x24, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #8]
	ldr	w8, [x24, x8, lsl #2]
	add	w23, w8, w23
	ldr	x8, [x22, #24]
	add	x24, x20, #120
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x24, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #12]
	ldr	w24, [x24, x8, lsl #2]
	ldr	x8, [x22, #32]
	add	x25, x20, #160
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x25, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #16]
	ldr	w8, [x25, x8, lsl #2]
	add	w8, w8, w24
	add	w23, w8, w23
	ldr	x8, [x22, #40]
	add	x24, x20, #200
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x24, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #20]
	ldr	w24, [x24, x8, lsl #2]
	ldr	x8, [x22, #48]
	add	x25, x20, #240
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x25, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #24]
	ldr	w8, [x25, x8, lsl #2]
	add	w24, w8, w24
	ldr	x8, [x22, #56]
	add	x25, x20, #280
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x25, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #28]
	ldr	w8, [x25, x8, lsl #2]
	add	w8, w8, w24
	add	w23, w8, w23
	ldr	x8, [x22, #64]
	add	x24, x20, #320
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x24, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldpsw	x8, x9, [x19, #32]
	ldr	w24, [x24, x8, lsl #2]
	ldr	x8, [x22, #72]
	add	x20, x20, #360
	ldr	x10, [x22, x9, lsl #3]
	ldr	w9, [x20, x9, lsl #2]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	ldrsw	x8, [x19, #36]
	ldr	w8, [x20, x8, lsl #2]
	add	w8, w8, w24
	add	w8, w8, w23
	str	x8, [sp]
Lloh80:
	adrp	x0, l_.str.21@PAGE
Lloh81:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_libmin_printf
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
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
	sub	sp, sp, #464
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
Lloh82:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh83:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh84:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	mov	x8, #-1                         ; =0xffffffffffffffff
	str	x8, [sp, #32]
	movi.2d	v0, #0xffffffffffffffff
	stp	q0, q0, [sp]
	mov	w19, #10                        ; =0xa
	mov	w0, #10                         ; =0xa
	bl	_libmin_srand
	mov	x20, #0                         ; =0x0
	mov	w22, #40                        ; =0x28
	mov	w23, #52429                     ; =0xcccd
	movk	w23, #52428, lsl #16
	add	x24, sp, #48
	add	x25, sp, #48
	b	LBB7_2
LBB7_1:                                 ;   in Loop: Header=BB7_2 Depth=1
	add	x20, x20, #1
	add	x25, x25, #40
	add	x24, x24, #4
	cmp	x20, #10
	b.eq	LBB7_12
LBB7_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_5 Depth 2
	mov	x26, #0                         ; =0x0
	add	x8, sp, #48
	madd	x8, x20, x22, x8
	add	x27, x8, x20, lsl #2
	mov	x28, x24
	b	LBB7_5
LBB7_3:                                 ;   in Loop: Header=BB7_5 Depth=2
	str	wzr, [x27]
LBB7_4:                                 ;   in Loop: Header=BB7_5 Depth=2
	add	x26, x26, #1
	add	x28, x28, #40
	cmp	x26, #10
	b.eq	LBB7_1
LBB7_5:                                 ;   Parent Loop BB7_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x20, x26
	b.ls	LBB7_8
; %bb.6:                                ;   in Loop: Header=BB7_5 Depth=2
	ldr	w8, [x28]
LBB7_7:                                 ;   in Loop: Header=BB7_5 Depth=2
	str	w8, [x25, x26, lsl #2]
	b	LBB7_4
LBB7_8:                                 ;   in Loop: Header=BB7_5 Depth=2
	b.eq	LBB7_3
; %bb.9:                                ;   in Loop: Header=BB7_5 Depth=2
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #34
	add	w8, w8, w8, lsl #2
	sub	w21, w0, w8
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #34
	add	w8, w8, w8, lsl #2
	sub	w8, w0, w8
	cmp	w21, w8
	b.ne	LBB7_11
; %bb.10:                               ;   in Loop: Header=BB7_5 Depth=2
	str	wzr, [x25, x26, lsl #2]
	b	LBB7_4
LBB7_11:                                ;   in Loop: Header=BB7_5 Depth=2
	bl	_libmin_rand
	umull	x8, w0, w23
	lsr	x8, x8, #35
	msub	w8, w8, w19, w0
	b	LBB7_7
LBB7_12:
	add	x0, sp, #48
	bl	_displayGraph
	add	x0, sp, #48
	mov	x1, sp
	bl	_minSpanTree
	add	x0, sp, #48
	mov	x1, sp
	bl	_displayTree
	bl	_libmin_success
	ldur	x8, [x29, #-96]
Lloh85:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh86:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh87:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB7_14
; %bb.13:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #464
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB7_14:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh82, Lloh83, Lloh84
	.loh AdrpLdrGotLdr	Lloh85, Lloh86, Lloh87
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_V                              ; @V
	.p2align	2, 0x0
_V:
	.long	10                              ; 0xa

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Home"

l_.str.1:                               ; @.str.1
	.asciz	"z-mall"

l_.str.2:                               ; @.str.2
	.asciz	"st.pet"

l_.str.3:                               ; @.str.3
	.asciz	"office"

l_.str.4:                               ; @.str.4
	.asciz	"school"

l_.str.5:                               ; @.str.5
	.asciz	"motel"

l_.str.6:                               ; @.str.6
	.asciz	"restr."

l_.str.7:                               ; @.str.7
	.asciz	"library"

l_.str.8:                               ; @.str.8
	.asciz	"airport"

l_.str.9:                               ; @.str.9
	.asciz	"barber"

	.section	__DATA,__data
	.globl	_vertName                       ; @vertName
	.p2align	3, 0x0
_vertName:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9

	.section	__TEXT,__cstring,cstring_literals
l_.str.10:                              ; @.str.10
	.asciz	"       "

l_.str.11:                              ; @.str.11
	.asciz	"%8s"

l_.str.12:                              ; @.str.12
	.asciz	"%8d"

l_.str.13:                              ; @.str.13
	.asciz	"\n"

l_.str.14:                              ; @.str.14
	.asciz	"\n\n"

l_.str.15:                              ; @.str.15
	.asciz	"%8d / %d"

.zerofill __DATA,__bss,_displayPath.count,4,2 ; @displayPath.count
l_.str.16:                              ; @.str.16
	.asciz	"\nSource: %s\tDestination: %s\n\n"

l_.str.17:                              ; @.str.17
	.asciz	"Path: %s"

l_.str.18:                              ; @.str.18
	.asciz	"-> %s"

l_.str.19:                              ; @.str.19
	.asciz	"minimum spanning tree:\n"

l_.str.20:                              ; @.str.20
	.asciz	"  %8s <-%d-> %8s\n"

l_.str.21:                              ; @.str.21
	.asciz	"total cost = %d\n"

.subsections_via_symbols
