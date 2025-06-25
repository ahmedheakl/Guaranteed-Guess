	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_max                            ; -- Begin function max
	.p2align	2
_max:                                   ; @max
	.cfi_startproc
; %bb.0:
	cmp	w0, w1
	csel	w0, w0, w1, gt
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_knapSack                       ; -- Begin function knapSack
	.p2align	2
_knapSack:                              ; @knapSack
	.cfi_startproc
; %bb.0:
	mov	x8, #0                          ; =0x0
	b	LBB1_2
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	add	x8, x8, #1
	add	x2, x2, #1004
	cmp	x8, #51
	b.eq	LBB1_9
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	mov	x9, #0                          ; =0x0
	sub	x10, x8, #1
	mov	x11, #-251                      ; =0xffffffffffffff05
	b	LBB1_5
LBB1_3:                                 ;   in Loop: Header=BB1_5 Depth=2
	add	x12, x2, x9
	sub	x12, x12, #1004
	ldr	w12, [x12]
LBB1_4:                                 ;   in Loop: Header=BB1_5 Depth=2
	str	w12, [x2, x9]
	add	x9, x9, #4
	adds	x11, x11, #1
	b.hs	LBB1_1
LBB1_5:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w12, #0                         ; =0x0
	cbz	x8, LBB1_4
; %bb.6:                                ;   in Loop: Header=BB1_5 Depth=2
	cmn	x11, #251
	b.eq	LBB1_4
; %bb.7:                                ;   in Loop: Header=BB1_5 Depth=2
	add	x13, x11, #251
	ldrsw	x12, [x0, x10, lsl #2]
	cmp	x13, x12
	b.lt	LBB1_3
; %bb.8:                                ;   in Loop: Header=BB1_5 Depth=2
	ldr	w13, [x1, x10, lsl #2]
	sub	x12, x2, x12, lsl #2
	ldr	w12, [x12, x11, lsl #2]
	add	x14, x2, x9
	sub	x14, x14, #1004
	ldr	w14, [x14]
	add	w12, w12, w13
	cmp	w12, w14
	csel	w12, w12, w14, gt
	b	LBB1_4
LBB1_9:
	ret
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
	mov	w9, #51248                      ; =0xc830
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #12, lsl #12            ; =49152
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
	mov	x8, #0                          ; =0x0
Lloh2:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x9, [x9]
	stur	x9, [x29, #-88]
	mov	x9, #-1004                      ; =0xfffffffffffffc14
	add	x10, sp, #36
Lloh5:
	adrp	x20, _wt@PAGE
Lloh6:
	add	x20, x20, _wt@PAGEOFF
Lloh7:
	adrp	x21, _val@PAGE
Lloh8:
	add	x21, x21, _val@PAGEOFF
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	add	x8, x8, #1
	add	x9, x9, #1004
	cmp	x8, #51
	b.eq	LBB2_9
LBB2_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_5 Depth 2
	mov	x11, #0                         ; =0x0
	sub	x12, x8, #1
	mov	w13, #251                       ; =0xfb
	mov	x14, x9
	b	LBB2_5
LBB2_3:                                 ;   in Loop: Header=BB2_5 Depth=2
	ldr	w15, [x10, x14]
LBB2_4:                                 ;   in Loop: Header=BB2_5 Depth=2
	add	x16, x10, x14
	str	w15, [x16, #1004]
	add	x11, x11, #1
	add	x14, x14, #4
	subs	x13, x13, #1
	b.eq	LBB2_1
LBB2_5:                                 ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w15, #0                         ; =0x0
	cbz	x8, LBB2_4
; %bb.6:                                ;   in Loop: Header=BB2_5 Depth=2
	cbz	x11, LBB2_4
; %bb.7:                                ;   in Loop: Header=BB2_5 Depth=2
	ldrsw	x15, [x20, x12, lsl #2]
	cmp	x11, x15
	b.lt	LBB2_3
; %bb.8:                                ;   in Loop: Header=BB2_5 Depth=2
	ldr	w16, [x21, x12, lsl #2]
	add	x17, x10, x14
	sub	x15, x17, x15, lsl #2
	ldr	w15, [x15]
	ldr	w17, [x17]
	add	w15, w15, w16
	cmp	w15, w17
	csel	w15, w15, w17, gt
	b	LBB2_4
LBB2_9:
	mov	w8, #51200                      ; =0xc800
	add	x22, sp, #36
	ldr	w8, [x22, x8]
	str	x8, [sp]
Lloh9:
	adrp	x0, l_.str@PAGE
Lloh10:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
Lloh11:
	adrp	x0, l_.str.1@PAGE
Lloh12:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	w23, #250                       ; =0xfa
	mov	w24, #49                        ; =0x31
	mov	w25, #49196                     ; =0xc02c
Lloh13:
	adrp	x19, l_.str.2@PAGE
Lloh14:
	add	x19, x19, l_.str.2@PAGEOFF
	b	LBB2_11
LBB2_10:                                ;   in Loop: Header=BB2_11 Depth=1
	sub	x24, x24, #1
	sub	x25, x25, #1004
	cmn	x24, #1
	b.eq	LBB2_13
LBB2_11:                                ; =>This Inner Loop Header: Depth=1
	add	x8, x25, w23, sxtw #2
	add	x8, x22, x8
	ldr	w9, [x8, #1004]
	ldr	w8, [x8]
	cmp	w9, w8
	b.eq	LBB2_10
; %bb.12:                               ;   in Loop: Header=BB2_11 Depth=1
	lsl	x26, x24, #2
	add	x8, x24, #1
	ldr	w9, [x20, x26]
	ldr	w10, [x21, x26]
	stp	x9, x10, [sp, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x20, x26]
	sub	w23, w23, w8
	b	LBB2_10
LBB2_13:
	mov	w8, #250                        ; =0xfa
	sub	w8, w8, w23
	str	x8, [sp]
Lloh15:
	adrp	x0, l_.str.3@PAGE
Lloh16:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	ldur	x8, [x29, #-88]
Lloh17:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh18:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh19:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_15
; %bb.14:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #12, lsl #12            ; =49152
	add	sp, sp, #2096
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB2_15:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.loh AdrpAdd	Lloh15, Lloh16
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_val                            ; @val
	.p2align	2, 0x0
_val:
	.long	27                              ; 0x1b
	.long	34                              ; 0x22
	.long	9                               ; 0x9
	.long	22                              ; 0x16
	.long	8                               ; 0x8
	.long	17                              ; 0x11
	.long	22                              ; 0x16
	.long	21                              ; 0x15
	.long	23                              ; 0x17
	.long	19                              ; 0x13
	.long	7                               ; 0x7
	.long	36                              ; 0x24
	.long	11                              ; 0xb
	.long	42                              ; 0x2a
	.long	37                              ; 0x25
	.long	16                              ; 0x10
	.long	10                              ; 0xa
	.long	26                              ; 0x1a
	.long	10                              ; 0xa
	.long	50                              ; 0x32
	.long	23                              ; 0x17
	.long	46                              ; 0x2e
	.long	37                              ; 0x25
	.long	3                               ; 0x3
	.long	14                              ; 0xe
	.long	16                              ; 0x10
	.long	35                              ; 0x23
	.long	14                              ; 0xe
	.long	15                              ; 0xf
	.long	44                              ; 0x2c
	.long	49                              ; 0x31
	.long	2                               ; 0x2
	.long	45                              ; 0x2d
	.long	3                               ; 0x3
	.long	15                              ; 0xf
	.long	1                               ; 0x1
	.long	34                              ; 0x22
	.long	44                              ; 0x2c
	.long	19                              ; 0x13
	.long	25                              ; 0x19
	.long	43                              ; 0x2b
	.long	28                              ; 0x1c
	.long	26                              ; 0x1a
	.long	4                               ; 0x4
	.long	30                              ; 0x1e
	.long	24                              ; 0x18
	.long	49                              ; 0x31
	.long	11                              ; 0xb
	.long	48                              ; 0x30
	.long	13                              ; 0xd

	.globl	_wt                             ; @wt
	.p2align	2, 0x0
_wt:
	.long	23                              ; 0x17
	.long	47                              ; 0x2f
	.long	22                              ; 0x16
	.long	15                              ; 0xf
	.long	42                              ; 0x2a
	.long	30                              ; 0x1e
	.long	15                              ; 0xf
	.long	32                              ; 0x20
	.long	47                              ; 0x2f
	.long	33                              ; 0x21
	.long	15                              ; 0xf
	.long	38                              ; 0x26
	.long	44                              ; 0x2c
	.long	7                               ; 0x7
	.long	16                              ; 0x10
	.long	34                              ; 0x22
	.long	30                              ; 0x1e
	.long	33                              ; 0x21
	.long	3                               ; 0x3
	.long	2                               ; 0x2
	.long	43                              ; 0x2b
	.long	31                              ; 0x1f
	.long	46                              ; 0x2e
	.long	17                              ; 0x11
	.long	30                              ; 0x1e
	.long	1                               ; 0x1
	.long	34                              ; 0x22
	.long	21                              ; 0x15
	.long	30                              ; 0x1e
	.long	21                              ; 0x15
	.long	29                              ; 0x1d
	.long	21                              ; 0x15
	.long	36                              ; 0x24
	.long	14                              ; 0xe
	.long	18                              ; 0x12
	.long	21                              ; 0x15
	.long	13                              ; 0xd
	.long	3                               ; 0x3
	.long	27                              ; 0x1b
	.long	44                              ; 0x2c
	.long	33                              ; 0x21
	.long	11                              ; 0xb
	.long	9                               ; 0x9
	.long	31                              ; 0x1f
	.long	40                              ; 0x28
	.long	40                              ; 0x28
	.long	30                              ; 0x1e
	.long	9                               ; 0x9
	.long	41                              ; 0x29
	.long	31                              ; 0x1f

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Max value: %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"Selected packs:\n"

l_.str.2:                               ; @.str.2
	.asciz	"  Package %d with wt=%d and val=%d\n"

l_.str.3:                               ; @.str.3
	.asciz	"Total weight: %d\n"

.subsections_via_symbols
