	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_lcsAlgo                        ; -- Begin function lcsAlgo
	.p2align	2
_lcsAlgo:                               ; @lcsAlgo
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
Lloh3:
	adrp	x8, _m@GOTPAGE
Lloh4:
	ldr	x8, [x8, _m@GOTPAGEOFF]
Lloh5:
	ldr	w20, [x8]
Lloh6:
	adrp	x19, _LCS_table@GOTPAGE
Lloh7:
	ldr	x19, [x19, _LCS_table@GOTPAGEOFF]
	tbnz	w20, #31, LBB0_8
; %bb.1:
	add	x8, x20, #1
	cmp	w20, #3
	b.hs	LBB0_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB0_6
LBB0_3:
	and	x9, x8, #0xfffffffc
Lloh8:
	adrp	x10, _LCS_table@GOTPAGE
Lloh9:
	ldr	x10, [x10, _LCS_table@GOTPAGEOFF]
	mov	x11, x9
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	str	wzr, [x10]
	str	wzr, [x10, #160]
	str	wzr, [x10, #320]
	str	wzr, [x10, #480]
	add	x10, x10, #640
	subs	x11, x11, #4
	b.ne	LBB0_4
; %bb.5:
	cmp	x9, x8
	b.eq	LBB0_8
LBB0_6:
	mov	w10, #160                       ; =0xa0
	umaddl	x10, w9, w10, x19
	sub	x8, x8, x9
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	str	wzr, [x10], #160
	subs	x8, x8, #1
	b.ne	LBB0_7
LBB0_8:
	sxtw	x22, w20
Lloh10:
	adrp	x8, _n@GOTPAGE
Lloh11:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh12:
	ldr	w21, [x8]
	tbnz	w21, #31, LBB0_10
; %bb.9:
	lsl	x8, x21, #2
	add	x1, x8, #4
Lloh13:
	adrp	x0, _LCS_table@GOTPAGE
Lloh14:
	ldr	x0, [x0, _LCS_table@GOTPAGEOFF]
	bl	_bzero
LBB0_10:
	sxtw	x9, w21
Lloh15:
	adrp	x8, _S1@PAGE
Lloh16:
	add	x8, x8, _S1@PAGEOFF
	cmp	w20, #1
	b.lt	LBB0_24
; %bb.11:
	add	w11, w21, #1
	add	x10, x20, #1
	add	x12, x19, #164
	sub	x13, x11, #1
	mov	w14, #1                         ; =0x1
Lloh17:
	adrp	x15, _S2@PAGE
Lloh18:
	add	x15, x15, _S2@PAGEOFF
	b	LBB0_14
LBB0_12:                                ;   in Loop: Header=BB0_14 Depth=1
	mov	x16, x11
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=1
	add	x14, x14, #1
	add	x12, x12, #160
	cmp	x14, x10
	b.eq	LBB0_23
LBB0_14:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_19 Depth 2
	cmp	w21, #1
	b.lt	LBB0_22
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=1
	add	x16, x14, x8
	ldurb	w16, [x16, #-1]
	mov	x17, x12
	mov	x0, x13
	mov	x1, x15
	b	LBB0_19
LBB0_16:                                ;   in Loop: Header=BB0_19 Depth=2
	ldur	w2, [x17, #-164]
	add	w2, w2, #1
LBB0_17:                                ;   in Loop: Header=BB0_19 Depth=2
	str	w2, [x17]
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=2
	add	x17, x17, #4
	subs	x0, x0, #1
	b.eq	LBB0_12
LBB0_19:                                ;   Parent Loop BB0_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w2, [x1], #1
	cmp	w16, w2
	b.eq	LBB0_16
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=2
	ldur	w2, [x17, #-160]
	ldur	w3, [x17, #-4]
	cmp	w2, w3
	b.ge	LBB0_17
; %bb.21:                               ;   in Loop: Header=BB0_19 Depth=2
	str	w3, [x17]
	b	LBB0_18
LBB0_22:                                ;   in Loop: Header=BB0_14 Depth=1
	mov	w16, #1                         ; =0x1
	b	LBB0_13
LBB0_23:
Lloh19:
	adrp	x11, _j@GOTPAGE
Lloh20:
	ldr	x11, [x11, _j@GOTPAGEOFF]
Lloh21:
	str	w16, [x11]
	b	LBB0_25
LBB0_24:
	mov	w10, #1                         ; =0x1
LBB0_25:
Lloh22:
	adrp	x11, _i@GOTPAGE
Lloh23:
	ldr	x11, [x11, _i@GOTPAGEOFF]
Lloh24:
	str	w10, [x11]
	mov	w10, #160                       ; =0xa0
	smaddl	x10, w22, w10, x19
	ldrsw	x13, [x10, x9, lsl #2]
	mov	x12, x13
	add	w9, w13, #1
	add	x10, x9, #15
	and	x14, x10, #0x1fffffff0
Lloh25:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh26:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	mov	x9, sp
	sub	x9, x9, x14
	mov	sp, x9
	strb	wzr, [x9, x13]
	cmp	w20, #1
	b.lt	LBB0_32
; %bb.26:
	cmp	w21, #1
	b.lt	LBB0_32
; %bb.27:
Lloh27:
	adrp	x10, _S2@PAGE
Lloh28:
	add	x10, x10, _S2@PAGEOFF
	mov	w11, #160                       ; =0xa0
	b	LBB0_30
LBB0_28:                                ;   in Loop: Header=BB0_30 Depth=1
	umaddl	x15, w13, w11, x19
	ldr	w15, [x15, w21, uxtw #2]
	umaddl	x16, w20, w11, x19
	ldr	w16, [x16, x14, lsl #2]
	cmp	w15, w16
	csel	w20, w13, w20, gt
	csel	w21, w21, w14, gt
LBB0_29:                                ;   in Loop: Header=BB0_30 Depth=1
	cmp	w20, #1
	ccmp	w21, #0, #4, ge
	b.le	LBB0_32
LBB0_30:                                ; =>This Inner Loop Header: Depth=1
	sub	w13, w20, #1
	ldrb	w15, [x8, x13]
	sub	w14, w21, #1
	ldrb	w16, [x10, x14]
	cmp	w15, w16
	b.ne	LBB0_28
; %bb.31:                               ;   in Loop: Header=BB0_30 Depth=1
	sxtw	x12, w12
	sub	x12, x12, #1
	strb	w15, [x9, x12]
                                        ; kill: def $w12 killed $w12 killed $x12 def $x12
	mov	x20, x13
	mov	x21, x14
	b	LBB0_29
LBB0_32:
	str	x9, [sp, #-16]!
Lloh29:
	adrp	x0, l_.str@PAGE
Lloh30:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	add	sp, sp, #16
	ldur	x8, [x29, #-40]
Lloh31:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh32:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh33:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_34
; %bb.33:
	sub	sp, x29, #32
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB0_34:
	bl	___stack_chk_fail
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGotStr	Lloh19, Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpLdrGotStr	Lloh22, Lloh23, Lloh24
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGotLdr	Lloh31, Lloh32, Lloh33
	.loh AdrpAdd	Lloh29, Lloh30
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
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
Lloh34:
	adrp	x19, _S1@PAGE
Lloh35:
	add	x19, x19, _S1@PAGEOFF
	mov	x0, x19
	bl	_libmin_strlen
Lloh36:
	adrp	x21, _m@GOTPAGE
Lloh37:
	ldr	x21, [x21, _m@GOTPAGEOFF]
	str	w0, [x21]
Lloh38:
	adrp	x20, _S2@PAGE
Lloh39:
	add	x20, x20, _S2@PAGEOFF
	mov	x0, x20
	bl	_libmin_strlen
Lloh40:
	adrp	x8, _n@GOTPAGE
Lloh41:
	ldr	x8, [x8, _n@GOTPAGEOFF]
Lloh42:
	str	w0, [x8]
	ldr	w8, [x21]
	stp	x20, x0, [sp, #16]
	stp	x19, x8, [sp]
Lloh43:
	adrp	x0, l_.str.1@PAGE
Lloh44:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	bl	_lcsAlgo
Lloh45:
	adrp	x0, l_.str.2@PAGE
Lloh46:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGotStr	Lloh40, Lloh41, Lloh42
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_S1                             ; @S1
_S1:
	.asciz	"ACADBFEDSFSDFDSEFE\000"

	.globl	_S2                             ; @S2
_S2:
	.asciz	"CBDAEFEFESAFEASDD\000\000"

	.comm	_i,4,2                          ; @i
	.comm	_m,4,2                          ; @m
	.comm	_LCS_table,6400,2               ; @LCS_table
	.comm	_n,4,2                          ; @n
	.comm	_j,4,2                          ; @j
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"LCS: %s"

l_.str.1:                               ; @.str.1
	.asciz	"S1 : %s (%d) \nS2 : %s  (%d)\n"

l_.str.2:                               ; @.str.2
	.asciz	"\n"

	.comm	_b,1600,0                       ; @b
.subsections_via_symbols
