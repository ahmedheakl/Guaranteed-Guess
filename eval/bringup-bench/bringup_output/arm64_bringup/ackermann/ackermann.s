	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_ack                            ; -- Begin function ack
	.p2align	2
_ack:                                   ; @ack
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
	adrp	x8, _depth@PAGE
	ldr	w9, [x8, _depth@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, _depth@PAGEOFF]
	lsr	w8, w9, #24
	cbz	w8, LBB0_2
; %bb.1:
	mov	w8, #16777215                   ; =0xffffff
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB0_2:
	mov	w8, #65535                      ; =0xffff
	cmp	w20, w8
	b.lo	LBB0_4
; %bb.3:
	mov	w8, #65535                      ; =0xffff
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB0_4:
	cmp	w19, #16
	b.lo	LBB0_6
; %bb.5:
	mov	w8, #16                         ; =0x10
	str	x8, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB0_6:
	mov	w8, w20
Lloh6:
	adrp	x22, _a@PAGE
Lloh7:
	add	x22, x22, _a@PAGEOFF
	add	x8, x22, x8, lsl #6
	add	x21, x8, w19, uxtw #2
	ldr	w0, [x21]
	cbz	w0, LBB0_8
LBB0_7:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB0_8:
	cbz	w19, LBB0_11
; %bb.9:
	cbz	w20, LBB0_12
; %bb.10:
	sub	w0, w20, #1
	mov	x1, x19
	bl	_ack
	sub	w1, w19, #1
	bl	_ack
	str	w0, [x21]
	b	LBB0_7
LBB0_11:
	add	w0, w20, #1
	str	w0, [x8]
	b	LBB0_7
LBB0_12:
	mov	w20, w19
	sub	w1, w19, #1
	mov	w0, #1                          ; =0x1
	bl	_ack
	str	w0, [x22, x20, lsl #2]
	b	LBB0_7
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
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
	adrp	x19, _max_depth@PAGE
	str	wzr, [x19, _max_depth@PAGEOFF]
	str	xzr, [sp]
Lloh8:
	adrp	x0, l_.str.3@PAGE
Lloh9:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	adrp	x20, _depth@PAGE
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #0                          ; =0x0
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, xzr, [sp]
	str	x0, [sp, #16]
Lloh10:
	adrp	x0, l_.str.4@PAGE
Lloh11:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_2
; %bb.1:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_2:
	mov	w21, #1                         ; =0x1
	str	x21, [sp]
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #1                          ; =0x1
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, x0, [sp, #8]
	str	x21, [sp]
Lloh14:
	adrp	x0, l_.str.4@PAGE
Lloh15:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_4
; %bb.3:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_4:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #1                         ; =0x1
	mov	w0, #0                          ; =0x0
	mov	w1, #1                          ; =0x1
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	xzr, [sp]
Lloh16:
	adrp	x0, l_.str.4@PAGE
Lloh17:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_6
; %bb.5:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_6:
	mov	w21, #2                         ; =0x2
	str	x21, [sp]
Lloh18:
	adrp	x0, l_.str.3@PAGE
Lloh19:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #2                          ; =0x2
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, x0, [sp, #8]
	str	x21, [sp]
Lloh20:
	adrp	x0, l_.str.4@PAGE
Lloh21:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_8
; %bb.7:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_8:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #1                         ; =0x1
	mov	w0, #1                          ; =0x1
	mov	w1, #1                          ; =0x1
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	x21, [sp]
Lloh22:
	adrp	x0, l_.str.4@PAGE
Lloh23:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_10
; %bb.9:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_10:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #2                         ; =0x2
	mov	w0, #0                          ; =0x0
	mov	w1, #2                          ; =0x2
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	xzr, [sp]
Lloh24:
	adrp	x0, l_.str.4@PAGE
Lloh25:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_12
; %bb.11:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_12:
	mov	w21, #3                         ; =0x3
	str	x21, [sp]
Lloh26:
	adrp	x0, l_.str.3@PAGE
Lloh27:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #3                          ; =0x3
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, x0, [sp, #8]
	str	x21, [sp]
Lloh28:
	adrp	x0, l_.str.4@PAGE
Lloh29:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_14
; %bb.13:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_14:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #2                         ; =0x2
	mov	w22, #1                         ; =0x1
	mov	w0, #2                          ; =0x2
	mov	w1, #1                          ; =0x1
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh30:
	adrp	x0, l_.str.4@PAGE
Lloh31:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_16
; %bb.15:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_16:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #1                         ; =0x1
	mov	w22, #2                         ; =0x2
	mov	w0, #1                          ; =0x1
	mov	w1, #2                          ; =0x2
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh32:
	adrp	x0, l_.str.4@PAGE
Lloh33:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_18
; %bb.17:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_18:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #3                         ; =0x3
	mov	w0, #0                          ; =0x0
	mov	w1, #3                          ; =0x3
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	xzr, [sp]
Lloh34:
	adrp	x0, l_.str.4@PAGE
Lloh35:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_20
; %bb.19:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_20:
	mov	w21, #4                         ; =0x4
	str	x21, [sp]
Lloh36:
	adrp	x0, l_.str.3@PAGE
Lloh37:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #4                          ; =0x4
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, x0, [sp, #8]
	str	x21, [sp]
Lloh38:
	adrp	x0, l_.str.4@PAGE
Lloh39:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_22
; %bb.21:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_22:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #3                         ; =0x3
	mov	w22, #1                         ; =0x1
	mov	w0, #3                          ; =0x3
	mov	w1, #1                          ; =0x1
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh40:
	adrp	x0, l_.str.4@PAGE
Lloh41:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_24
; %bb.23:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_24:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #2                         ; =0x2
	mov	w0, #2                          ; =0x2
	mov	w1, #2                          ; =0x2
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	x21, [sp]
Lloh42:
	adrp	x0, l_.str.4@PAGE
Lloh43:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_26
; %bb.25:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_26:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #1                         ; =0x1
	mov	w22, #3                         ; =0x3
	mov	w0, #1                          ; =0x1
	mov	w1, #3                          ; =0x3
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh44:
	adrp	x0, l_.str.4@PAGE
Lloh45:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_28
; %bb.27:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_28:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #4                         ; =0x4
	mov	w0, #0                          ; =0x0
	mov	w1, #4                          ; =0x4
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	xzr, [sp]
Lloh46:
	adrp	x0, l_.str.4@PAGE
Lloh47:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_30
; %bb.29:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_30:
	mov	w21, #5                         ; =0x5
	str	x21, [sp]
Lloh48:
	adrp	x0, l_.str.3@PAGE
Lloh49:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w0, #5                          ; =0x5
	mov	w1, #0                          ; =0x0
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	xzr, x0, [sp, #8]
	str	x21, [sp]
Lloh50:
	adrp	x0, l_.str.4@PAGE
Lloh51:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_32
; %bb.31:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_32:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #4                         ; =0x4
	mov	w22, #1                         ; =0x1
	mov	w0, #4                          ; =0x4
	mov	w1, #1                          ; =0x1
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh52:
	adrp	x0, l_.str.4@PAGE
Lloh53:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_34
; %bb.33:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_34:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #3                         ; =0x3
	mov	w22, #2                         ; =0x2
	mov	w0, #3                          ; =0x3
	mov	w1, #2                          ; =0x2
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh54:
	adrp	x0, l_.str.4@PAGE
Lloh55:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_36
; %bb.35:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_36:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #2                         ; =0x2
	mov	w22, #3                         ; =0x3
	mov	w0, #2                          ; =0x2
	mov	w1, #3                          ; =0x3
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh56:
	adrp	x0, l_.str.4@PAGE
Lloh57:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_38
; %bb.37:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_38:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #1                         ; =0x1
	mov	w22, #4                         ; =0x4
	mov	w0, #1                          ; =0x1
	mov	w1, #4                          ; =0x4
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x22, x0, [sp, #8]
	str	x21, [sp]
Lloh58:
	adrp	x0, l_.str.4@PAGE
Lloh59:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w8, [x20, _depth@PAGEOFF]
	ldr	w9, [x19, _max_depth@PAGEOFF]
	cmp	w8, w9
	b.ls	LBB1_40
; %bb.39:
	str	w8, [x19, _max_depth@PAGEOFF]
LBB1_40:
	str	wzr, [x20, _depth@PAGEOFF]
	mov	w21, #5                         ; =0x5
	mov	w0, #0                          ; =0x0
	mov	w1, #5                          ; =0x5
	bl	_ack
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x21, x0, [sp, #8]
	str	xzr, [sp]
Lloh60:
	adrp	x0, l_.str.4@PAGE
Lloh61:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	ldr	w9, [x20, _depth@PAGEOFF]
	ldr	w8, [x19, _max_depth@PAGEOFF]
	cmp	w9, w8
	b.ls	LBB1_42
; %bb.41:
	str	w9, [x19, _max_depth@PAGEOFF]
	mov	x8, x9
LBB1_42:
	str	x8, [sp]
Lloh62:
	adrp	x0, l_.str.5@PAGE
Lloh63:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh62, Lloh63
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_depth,4,2       ; @depth
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Maximum stack depth %d exceeded. Abort.\n"

l_.str.1:                               ; @.str.1
	.asciz	"Maximum x value %d exceeded. Abort. \n"

l_.str.2:                               ; @.str.2
	.asciz	"Maximum y value %d exceeded. Abort. \n"

.zerofill __DATA,__bss,_a,4194240,2     ; @a
.zerofill __DATA,__bss,_max_depth,4,2   ; @max_depth
l_.str.3:                               ; @.str.3
	.asciz	"\nx+y=%d:\n\n"

l_.str.4:                               ; @.str.4
	.asciz	"A(%d,%d) = %d\n"

l_.str.5:                               ; @.str.5
	.asciz	"Max recursive depth = %u\n"

.subsections_via_symbols
