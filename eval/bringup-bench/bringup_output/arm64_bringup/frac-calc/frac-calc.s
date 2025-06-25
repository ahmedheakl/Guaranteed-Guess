	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	sub	sp, sp, #864
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
Lloh0:
	adrp	x8, _opterr@GOTPAGE
Lloh1:
	ldr	x8, [x8, _opterr@GOTPAGEOFF]
Lloh2:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x9, [x9]
Lloh5:
	adrp	x21, l_.str.1@PAGE
Lloh6:
	add	x21, x21, l_.str.1@PAGEOFF
	stur	x9, [x29, #-96]
Lloh7:
	str	wzr, [x8]
Lloh8:
	adrp	x26, l_.str.6@PAGE
Lloh9:
	add	x26, x26, l_.str.6@PAGEOFF
Lloh10:
	adrp	x22, l_.str.18@PAGE
Lloh11:
	add	x22, x22, l_.str.18@PAGEOFF
Lloh12:
	adrp	x28, l_.str.17@PAGE
Lloh13:
	add	x28, x28, l_.str.17@PAGEOFF
Lloh14:
	adrp	x24, l_.str.16@PAGE
Lloh15:
	add	x24, x24, l_.str.16@PAGEOFF
	mov	w25, #2018                      ; =0x7e2
Lloh16:
	adrp	x23, l_.str.20@PAGE
Lloh17:
	add	x23, x23, l_.str.20@PAGEOFF
	adrp	x27, _verb@PAGE
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [x27, _verb@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x27, _verb@PAGEOFF]
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	bl	_libmin_getopt
	cmp	w0, #103
	b.le	LBB0_6
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w0, #118
	b.eq	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w0, #104
	b.ne	LBB0_20
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	bl	_help
	b	LBB0_2
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w0, #86
	b.ne	LBB0_10
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
Lloh18:
	adrp	x8, l_.str.19@PAGE
Lloh19:
	add	x8, x8, l_.str.19@PAGEOFF
	stp	x26, x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	stp	x24, x28, [sp, #8]
	str	x25, [sp]
	mov	x0, x23
	bl	_libmin_printf
	ldr	w8, [x27, _verb@PAGEOFF]
	cmp	w8, #4
	b.lt	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_2 Depth=1
	str	x8, [sp]
Lloh20:
	adrp	x0, l_.str.21@PAGE
Lloh21:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_libmin_printf
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB0_2
LBB0_10:
	cmn	w0, #1
	b.ne	LBB0_20
; %bb.11:
	ldr	w8, [x27, _verb@PAGEOFF]
	cbz	w8, LBB0_13
; %bb.12:
	str	x8, [sp]
Lloh22:
	adrp	x0, l_.str.3@PAGE
Lloh23:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
LBB0_13:
	adrp	x25, _minput@PAGE
Lloh24:
	adrp	x21, l_.str.24@PAGE
Lloh25:
	add	x21, x21, l_.str.24@PAGEOFF
	add	x27, sp, #304
	mov	w28, #43                        ; =0x2b
	mov	w19, #45                        ; =0x2d
	mov	w20, #42                        ; =0x2a
	mov	w26, #47                        ; =0x2f
Lloh26:
	adrp	x22, l_.str.29@PAGE
Lloh27:
	add	x22, x22, l_.str.29@PAGEOFF
Lloh28:
	adrp	x23, l_.str.4@PAGE
Lloh29:
	add	x23, x23, l_.str.4@PAGEOFF
	b	LBB0_16
LBB0_14:                                ;   in Loop: Header=BB0_16 Depth=1
	mov	w24, #0                         ; =0x0
LBB0_15:                                ;   in Loop: Header=BB0_16 Depth=1
	str	w24, [sp, #236]
	add	x0, sp, #304
	add	x1, sp, #200
	mov	x2, x24
	bl	_avaliatokens
	add	x0, sp, #200
	add	x1, sp, #156
	bl	_calcula
	ldr	w8, [sp, #240]
	cmp	w8, #2
	csel	w9, w19, w28, eq
	cmp	w8, #3
	csel	w9, w20, w9, eq
	cmp	w8, #4
	csel	w8, w26, w9, eq
	fcvt	d0, s0
	ldp	w10, w9, [sp, #232]
	ldp	w12, w11, [sp, #224]
	ldp	w14, w13, [sp, #156]
	ldp	w15, w16, [sp, #168]
	str	d0, [sp, #80]
	stp	x15, x16, [sp, #64]
	stp	x13, x14, [sp, #48]
	stp	x11, x12, [sp, #32]
	stp	x9, x10, [sp, #8]
	add	x9, sp, #244
	str	x9, [sp]
	str	x8, [sp, #24]
	mov	x0, x22
	bl	_libmin_printf
	mov	x0, x23
	bl	_libmin_printf
	ldr	x2, [x25, _minput@PAGEOFF]
	add	x0, sp, #96
	mov	w1, #60                         ; =0x3c
	bl	_libmin_mgets
	add	x0, sp, #96
	bl	_libmin_atoi
	cmp	w0, #1
	b.ne	LBB0_19
LBB0_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_18 Depth 2
Lloh30:
	adrp	x0, l_.str.22@PAGE
Lloh31:
	add	x0, x0, l_.str.22@PAGEOFF
	bl	_libmin_printf
Lloh32:
	adrp	x0, l_.str.23@PAGE
Lloh33:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_libmin_printf
	ldr	x2, [x25, _minput@PAGEOFF]
	add	x0, sp, #244
	mov	w1, #60                         ; =0x3c
	bl	_libmin_mgets
	sub	x0, x29, #156
	add	x1, sp, #244
	bl	_libmin_strcpy
	sub	x0, x29, #156
	mov	x1, x21
	bl	_libmin_strtok
	cbz	x0, LBB0_14
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	mov	x24, #0                         ; =0x0
LBB0_18:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x0, [x27, x24, lsl #3]
	mov	x0, #0                          ; =0x0
	mov	x1, x21
	bl	_libmin_strtok
	add	x24, x24, #1
	cbnz	x0, LBB0_18
	b	LBB0_15
LBB0_19:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	b	LBB0_21
LBB0_20:
	ldr	x8, [x19]
	stp	x8, x8, [sp]
Lloh34:
	adrp	x0, l_.str.2@PAGE
Lloh35:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
LBB0_21:
	ldur	x8, [x29, #-96]
Lloh36:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh37:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh38:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_23
; %bb.22:
	add	sp, sp, #864
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_23:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGotStr	Lloh0, Lloh1, Lloh7
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdrGotLdr	Lloh36, Lloh37, Lloh38
	.cfi_endproc
                                        ; -- End function
	.globl	_help                           ; -- Begin function help
	.p2align	2
_help:                                  ; @help
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh39:
	adrp	x8, l_.str.7@PAGE
Lloh40:
	add	x8, x8, l_.str.7@PAGEOFF
Lloh41:
	adrp	x19, l_.str.6@PAGE
Lloh42:
	add	x19, x19, l_.str.6@PAGEOFF
	stp	x19, x8, [sp]
Lloh43:
	adrp	x0, l_.str.5@PAGE
Lloh44:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	str	x19, [sp]
Lloh45:
	adrp	x0, l_.str.8@PAGE
Lloh46:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_libmin_printf
Lloh47:
	adrp	x0, l_.str.9@PAGE
Lloh48:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
Lloh49:
	adrp	x0, l_.str.10@PAGE
Lloh50:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
Lloh51:
	adrp	x0, l_.str.11@PAGE
Lloh52:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
Lloh53:
	adrp	x0, l_.str.12@PAGE
Lloh54:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
Lloh55:
	adrp	x0, l_.str.13@PAGE
Lloh56:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
Lloh57:
	adrp	x0, l_.str.14@PAGE
Lloh58:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
Lloh59:
	adrp	x8, l_.str.17@PAGE
Lloh60:
	add	x8, x8, l_.str.17@PAGEOFF
Lloh61:
	adrp	x9, l_.str.16@PAGE
Lloh62:
	add	x9, x9, l_.str.16@PAGEOFF
	stp	x9, x8, [sp]
Lloh63:
	adrp	x0, l_.str.15@PAGE
Lloh64:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	b	_libmin_fail
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh39, Lloh40
	.cfi_endproc
                                        ; -- End function
	.globl	_copyr                          ; -- Begin function copyr
	.p2align	2
_copyr:                                 ; @copyr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh65:
	adrp	x8, l_.str.19@PAGE
Lloh66:
	add	x8, x8, l_.str.19@PAGEOFF
Lloh67:
	adrp	x9, l_.str.6@PAGE
Lloh68:
	add	x9, x9, l_.str.6@PAGEOFF
	stp	x9, x8, [sp]
Lloh69:
	adrp	x0, l_.str.18@PAGE
Lloh70:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
Lloh71:
	adrp	x8, l_.str.17@PAGE
Lloh72:
	add	x10, x8, l_.str.17@PAGEOFF
Lloh73:
	adrp	x8, l_.str.16@PAGE
Lloh74:
	add	x8, x8, l_.str.16@PAGEOFF
	mov	w9, #2018                       ; =0x7e2
	stp	x8, x10, [sp, #8]
	str	x9, [sp]
Lloh75:
	adrp	x0, l_.str.20@PAGE
Lloh76:
	add	x0, x0, l_.str.20@PAGEOFF
	bl	_libmin_printf
Lloh77:
	adrp	x8, _verb@PAGE
Lloh78:
	ldr	w8, [x8, _verb@PAGEOFF]
	cmp	w8, #4
	b.lt	LBB2_2
; %bb.1:
	str	x8, [sp]
Lloh79:
	adrp	x0, l_.str.21@PAGE
Lloh80:
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_libmin_printf
LBB2_2:
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	b	_libmin_fail
	.loh AdrpLdr	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdrp	Lloh71, Lloh73
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh79, Lloh80
	.cfi_endproc
                                        ; -- End function
	.globl	_frac_init                      ; -- Begin function frac_init
	.p2align	2
_frac_init:                             ; @frac_init
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
	mov	x19, x0
Lloh81:
	adrp	x0, l_.str.22@PAGE
Lloh82:
	add	x0, x0, l_.str.22@PAGEOFF
	bl	_libmin_printf
Lloh83:
	adrp	x0, l_.str.23@PAGE
Lloh84:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_libmin_printf
Lloh85:
	adrp	x8, _minput@PAGE
Lloh86:
	ldr	x2, [x8, _minput@PAGEOFF]
	mov	x0, x19
	mov	w1, #60                         ; =0x3c
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	_libmin_mgets
	.loh AdrpLdr	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.cfi_endproc
                                        ; -- End function
	.globl	_divtokens                      ; -- Begin function divtokens
	.p2align	2
_divtokens:                             ; @divtokens
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #560
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	mov	x19, x1
	mov	x1, x0
Lloh87:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh88:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh89:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	sub	x0, x29, #116
	bl	_libmin_strcpy
Lloh90:
	adrp	x1, l_.str.24@PAGE
Lloh91:
	add	x1, x1, l_.str.24@PAGEOFF
	sub	x0, x29, #116
	bl	_libmin_strtok
	cbz	x0, LBB4_3
; %bb.1:
	mov	x20, #0                         ; =0x0
	add	x22, sp, #8
Lloh92:
	adrp	x21, l_.str.24@PAGE
Lloh93:
	add	x21, x21, l_.str.24@PAGEOFF
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	str	x0, [x22, x20, lsl #3]
	mov	x0, #0                          ; =0x0
	mov	x1, x21
	bl	_libmin_strtok
	add	x20, x20, #1
	cbnz	x0, LBB4_2
	b	LBB4_4
LBB4_3:
	mov	w20, #0                         ; =0x0
LBB4_4:
	str	w20, [x19, #36]
	add	x0, sp, #8
	mov	x1, x19
	mov	x2, x20
	bl	_avaliatokens
	ldur	x8, [x29, #-56]
Lloh94:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh95:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh96:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB4_6
; %bb.5:
	add	sp, sp, #560
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB4_6:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpLdrGotLdr	Lloh87, Lloh88, Lloh89
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpLdrGotLdr	Lloh94, Lloh95, Lloh96
	.cfi_endproc
                                        ; -- End function
	.globl	_calcula                        ; -- Begin function calcula
	.p2align	2
_calcula:                               ; @calcula
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #4]
	ldr	w9, [x0, #12]
	mul	w8, w9, w8
	str	w8, [x1]
	ldr	w9, [x0, #40]
	sub	w9, w9, #1
	cmp	w9, #3
	b.hi	LBB5_6
; %bb.1:
Lloh97:
	adrp	x10, lJTI5_0@PAGE
Lloh98:
	add	x10, x10, lJTI5_0@PAGEOFF
	adr	x11, LBB5_2
	ldrb	w12, [x10, x9]
	add	x11, x11, x12, lsl #2
	br	x11
LBB5_2:
	ldp	w10, w9, [x0]
	sdiv	w9, w8, w9
	mul	w9, w10, w9
	ldp	w11, w10, [x0, #8]
	sdiv	w10, w8, w10
	madd	w9, w11, w10, w9
	str	w9, [x1, #4]
	mov	w12, #1                         ; =0x1
	mov	x10, x8
	mov	x11, x9
	b	LBB5_4
LBB5_3:                                 ;   in Loop: Header=BB5_4 Depth=1
	add	w12, w12, #1
	cmp	w12, #13
	b.eq	LBB5_19
LBB5_4:                                 ; =>This Inner Loop Header: Depth=1
	sdiv	w13, w11, w12
	msub	w14, w13, w12, w11
	cbnz	w14, LBB5_3
; %bb.5:                                ;   in Loop: Header=BB5_4 Depth=1
	sdiv	w14, w10, w12
	msub	w15, w14, w12, w10
	cmp	w15, #0
	csel	w11, w13, w11, eq
	csel	w10, w14, w10, eq
	b	LBB5_3
LBB5_6:
	movi	d0, #0000000000000000
	ret
LBB5_7:
	ldp	w10, w9, [x0]
	sdiv	w9, w8, w9
	mul	w9, w10, w9
	ldp	w11, w10, [x0, #8]
	sdiv	w10, w8, w10
	msub	w9, w11, w10, w9
	str	w9, [x1, #4]
	mov	w12, #1                         ; =0x1
	mov	x10, x8
	mov	x11, x9
	b	LBB5_9
LBB5_8:                                 ;   in Loop: Header=BB5_9 Depth=1
	add	w12, w12, #1
	cmp	w12, #13
	b.eq	LBB5_19
LBB5_9:                                 ; =>This Inner Loop Header: Depth=1
	sdiv	w13, w11, w12
	msub	w14, w13, w12, w11
	cbnz	w14, LBB5_8
; %bb.10:                               ;   in Loop: Header=BB5_9 Depth=1
	sdiv	w14, w10, w12
	msub	w15, w14, w12, w10
	cmp	w15, #0
	csel	w11, w13, w11, eq
	csel	w10, w14, w10, eq
	b	LBB5_8
LBB5_11:
	ldr	w9, [x0]
	ldr	w10, [x0, #8]
	mul	w9, w10, w9
	str	w9, [x1, #4]
	mov	w12, #1                         ; =0x1
	mov	x10, x8
	mov	x11, x9
	b	LBB5_13
LBB5_12:                                ;   in Loop: Header=BB5_13 Depth=1
	add	w12, w12, #1
	cmp	w12, #13
	b.eq	LBB5_19
LBB5_13:                                ; =>This Inner Loop Header: Depth=1
	sdiv	w13, w11, w12
	msub	w14, w13, w12, w11
	cbnz	w14, LBB5_12
; %bb.14:                               ;   in Loop: Header=BB5_13 Depth=1
	sdiv	w14, w10, w12
	msub	w15, w14, w12, w10
	cmp	w15, #0
	csel	w11, w13, w11, eq
	csel	w10, w14, w10, eq
	b	LBB5_12
LBB5_15:
	ldp	w8, w9, [x0, #4]
	mul	w8, w9, w8
	str	w8, [x1]
	ldr	w9, [x0]
	ldr	w10, [x0, #12]
	mul	w9, w10, w9
	str	w9, [x1, #4]
	mov	w12, #1                         ; =0x1
	mov	x10, x8
	mov	x11, x9
	b	LBB5_17
LBB5_16:                                ;   in Loop: Header=BB5_17 Depth=1
	add	w12, w12, #1
	cmp	w12, #13
	b.eq	LBB5_19
LBB5_17:                                ; =>This Inner Loop Header: Depth=1
	sdiv	w13, w11, w12
	msub	w14, w13, w12, w11
	cbnz	w14, LBB5_16
; %bb.18:                               ;   in Loop: Header=BB5_17 Depth=1
	sdiv	w14, w10, w12
	msub	w15, w14, w12, w10
	cmp	w15, #0
	csel	w11, w13, w11, eq
	csel	w10, w14, w10, eq
	b	LBB5_16
LBB5_19:
	scvtf	s0, w8
	scvtf	s1, w9
	fdiv	s0, s1, s0
	stp	w11, w10, [x1, #12]
	ret
	.loh AdrpAdd	Lloh97, Lloh98
	.cfi_endproc
	.section	__TEXT,__const
lJTI5_0:
	.byte	(LBB5_2-LBB5_2)>>2
	.byte	(LBB5_7-LBB5_2)>>2
	.byte	(LBB5_11-LBB5_2)>>2
	.byte	(LBB5_15-LBB5_2)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_print                          ; -- Begin function print
	.p2align	2
_print:                                 ; @print
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	w8, [x2, #40]
	mov	w9, #43                         ; =0x2b
	mov	w10, #45                        ; =0x2d
	cmp	w8, #2
	csel	w9, w10, w9, eq
	mov	w10, #42                        ; =0x2a
	cmp	w8, #3
	csel	w9, w10, w9, eq
	mov	w10, #47                        ; =0x2f
	cmp	w8, #4
	csel	w8, w10, w9, eq
	fcvt	d0, s0
	ldp	w10, w9, [x2, #32]
	ldp	w12, w11, [x2, #24]
	ldp	w14, w13, [x1]
	ldp	w15, w16, [x1, #12]
	str	d0, [sp, #80]
	stp	x15, x16, [sp, #64]
	stp	x13, x14, [sp, #48]
	stp	x11, x12, [sp, #32]
	stp	x0, x9, [sp]
Lloh99:
	adrp	x0, l_.str.29@PAGE
Lloh100:
	add	x0, x0, l_.str.29@PAGEOFF
	stp	x10, x8, [sp, #16]
	bl	_libmin_printf
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh99, Lloh100
	.cfi_endproc
                                        ; -- End function
	.globl	_avaliatokens                   ; -- Begin function avaliatokens
	.p2align	2
_avaliatokens:                          ; @avaliatokens
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
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	ldr	x0, [x0, #16]
Lloh101:
	adrp	x1, l_.str.25@PAGE
Lloh102:
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_4
; %bb.1:
	ldr	x0, [x21, #16]
Lloh103:
	adrp	x1, l_.str.26@PAGE
Lloh104:
	add	x1, x1, l_.str.26@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_4
; %bb.2:
	ldr	x0, [x21, #16]
Lloh105:
	adrp	x1, l_.str.27@PAGE
Lloh106:
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_4
; %bb.3:
	ldr	x0, [x21, #16]
Lloh107:
	adrp	x1, l_.str.28@PAGE
Lloh108:
	add	x1, x1, l_.str.28@PAGEOFF
	bl	_libmin_strcmp
LBB7_4:
	ldr	x0, [x21, #8]
Lloh109:
	adrp	x1, l_.str.25@PAGE
Lloh110:
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_10
; %bb.5:
	ldr	x0, [x21, #8]
Lloh111:
	adrp	x1, l_.str.26@PAGE
Lloh112:
	add	x1, x1, l_.str.26@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_10
; %bb.6:
	ldr	x0, [x21, #8]
Lloh113:
	adrp	x1, l_.str.27@PAGE
Lloh114:
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB7_10
; %bb.7:
	ldr	x0, [x21, #8]
Lloh115:
	adrp	x1, l_.str.28@PAGE
Lloh116:
	add	x1, x1, l_.str.28@PAGEOFF
	bl	_libmin_strcmp
	cmp	w19, #4
	b.ne	LBB7_11
; %bb.8:
	cbnz	w0, LBB7_11
LBB7_9:
	mov	w0, #2                          ; =0x2
	b	LBB7_12
LBB7_10:
	cmp	w19, #4
	b.eq	LBB7_9
LBB7_11:
	mov	w0, #1                          ; =0x1
	cmp	w19, #1
	b.lt	LBB7_27
LBB7_12:
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	mov	w27, #0                         ; =0x0
	mov	w28, #0                         ; =0x0
Lloh117:
	adrp	x23, l_.str.25@PAGE
Lloh118:
	add	x23, x23, l_.str.25@PAGEOFF
Lloh119:
	adrp	x24, l_.str.26@PAGE
Lloh120:
	add	x24, x24, l_.str.26@PAGEOFF
Lloh121:
	adrp	x25, l_.str.27@PAGE
Lloh122:
	add	x25, x25, l_.str.27@PAGEOFF
Lloh123:
	adrp	x26, l_.str.28@PAGE
Lloh124:
	add	x26, x26, l_.str.28@PAGEOFF
	b	LBB7_14
LBB7_13:                                ;   in Loop: Header=BB7_14 Depth=1
	add	w28, w28, #1
	cmp	w28, w19
	b.ge	LBB7_26
LBB7_14:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_25 Depth 2
	ldr	x0, [x21, w28, sxtw #3]
	mov	x1, x23
	bl	_libmin_strcmp
	cbz	w0, LBB7_16
; %bb.15:                               ;   in Loop: Header=BB7_14 Depth=1
	sxtw	x22, w28
	b	LBB7_17
LBB7_16:                                ;   in Loop: Header=BB7_14 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [x20, #40]
	add	w28, w28, #1
	sxtw	x22, w28
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
LBB7_17:                                ;   in Loop: Header=BB7_14 Depth=1
	ldr	x0, [x21, x22, lsl #3]
	mov	x1, x24
	bl	_libmin_strcmp
	cbnz	w0, LBB7_19
; %bb.18:                               ;   in Loop: Header=BB7_14 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [x20, #40]
	add	w28, w28, #1
	sxtw	x22, w28
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
LBB7_19:                                ;   in Loop: Header=BB7_14 Depth=1
	ldr	x0, [x21, x22, lsl #3]
	mov	x1, x25
	bl	_libmin_strcmp
	cbnz	w0, LBB7_21
; %bb.20:                               ;   in Loop: Header=BB7_14 Depth=1
	mov	w8, #3                          ; =0x3
	str	w8, [x20, #40]
	add	w28, w28, #1
	sxtw	x22, w28
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
LBB7_21:                                ;   in Loop: Header=BB7_14 Depth=1
	ldr	x0, [x21, x22, lsl #3]
	mov	x1, x26
	bl	_libmin_strcmp
	cbnz	w0, LBB7_23
; %bb.22:                               ;   in Loop: Header=BB7_14 Depth=1
	mov	w8, #4                          ; =0x4
	str	w8, [x20, #40]
	add	w28, w28, #1
	sxtw	x22, w28
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
LBB7_23:                                ;   in Loop: Header=BB7_14 Depth=1
	ldr	x0, [x21, x22, lsl #3]
	mov	x1, x26
	bl	_libmin_strtok
	cbz	x0, LBB7_13
; %bb.24:                               ;   in Loop: Header=BB7_14 Depth=1
	add	x22, x20, w27, sxtw #2
LBB7_25:                                ;   Parent Loop BB7_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_libmin_atoi
	str	w0, [x22], #4
	mov	x0, #0                          ; =0x0
	mov	x1, x26
	bl	_libmin_strtok
	add	w27, w27, #1
	cbnz	x0, LBB7_25
	b	LBB7_13
LBB7_26:
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
LBB7_27:
	mov	x1, x20
	mov	x2, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_misto
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.cfi_endproc
                                        ; -- End function
	.globl	_misto                          ; -- Begin function misto
	.p2align	2
_misto:                                 ; @misto
	.cfi_startproc
; %bb.0:
	cmp	w2, #3
	b.ne	LBB8_2
; %bb.1:
	ldr	w8, [x1]
	str	w8, [x1, #36]
	ldur	d0, [x1, #4]
	rev64.2s	v0, v0
	stur	d0, [x1, #28]
	ldr	w8, [x1, #12]
	b	LBB8_9
LBB8_2:
	cmp	w0, #2
	b.eq	LBB8_5
; %bb.3:
	cmp	w0, #1
	b.ne	LBB8_6
; %bb.4:
	ldp	w8, w9, [x1]
	ldp	w10, w11, [x1, #8]
	madd	w9, w8, w10, w9
	stp	w9, w10, [x1]
	ldr	w8, [x1, #16]
	b	LBB8_8
LBB8_5:
	ldp	w10, w8, [x1, #12]
	ldr	w9, [x1, #8]
	madd	w9, w9, w8, w10
	stp	w9, w8, [x1, #8]
	ldr	d0, [x1]
	rev64.2s	v0, v0
	str	d0, [x1, #32]
	str	w9, [x1, #28]
	b	LBB8_9
LBB8_6:
	cmp	w2, #5
	b.ne	LBB8_10
; %bb.7:
	ldp	w8, w9, [x1]
	ldp	w10, w11, [x1, #8]
	madd	w9, w8, w10, w9
	stp	w9, w10, [x1]
	ldp	w12, w8, [x1, #16]
	madd	w11, w11, w8, w12
LBB8_8:
	stp	w11, w8, [x1, #8]
	stp	w10, w9, [x1, #32]
	str	w11, [x1, #28]
LBB8_9:
	str	w8, [x1, #24]
LBB8_10:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_simplifica                     ; -- Begin function simplifica
	.p2align	2
_simplifica:                            ; @simplifica
	.cfi_startproc
; %bb.0:
	ldp	w9, w8, [x0]
	mov	w10, #1                         ; =0x1
	b	LBB9_2
LBB9_1:                                 ;   in Loop: Header=BB9_2 Depth=1
	add	w10, w10, #1
	cmp	w10, #13
	b.eq	LBB9_4
LBB9_2:                                 ; =>This Inner Loop Header: Depth=1
	sdiv	w11, w8, w10
	msub	w12, w11, w10, w8
	cbnz	w12, LBB9_1
; %bb.3:                                ;   in Loop: Header=BB9_2 Depth=1
	sdiv	w12, w9, w10
	msub	w13, w12, w10, w9
	cmp	w13, #0
	csel	w8, w11, w8, eq
	csel	w9, w12, w9, eq
	b	LBB9_1
LBB9_4:
	stp	w8, w9, [x0, #12]
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	___input                        ; @__input
___input:
	.ascii	" 3/4 + 6 7/19\n1\n7/19 + 21/7\n0\n"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"input.h"

	.section	__DATA,__data
	.globl	_input                          ; @input
	.p2align	3, 0x0
_input:
	.quad	l_.str
	.quad	30                              ; 0x1e
	.quad	___input
	.long	0                               ; 0x0
	.space	4

	.globl	_minput                         ; @minput
	.p2align	3, 0x0
_minput:
	.quad	_input

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"vhV"

.zerofill __DATA,__bss,_verb,4,2        ; @verb
l_.str.2:                               ; @.str.2
	.asciz	"Type\n\t$man %s\nor\n\t$%s -h\nfor help.\n\n"

l_.str.3:                               ; @.str.3
	.asciz	"Verbose level set at: %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"\nDo you want to do another operation?\nenter 1 for yes\n"

l_.str.5:                               ; @.str.5
	.asciz	"%s - %s\n"

l_.str.6:                               ; @.str.6
	.asciz	"frac"

l_.str.7:                               ; @.str.7
	.asciz	"Fraction Calculator"

l_.str.8:                               ; @.str.8
	.asciz	"\nUsage: %s [-h|-v]\n"

l_.str.9:                               ; @.str.9
	.asciz	"\nOptions:\n"

l_.str.10:                              ; @.str.10
	.asciz	"\t-h,  --help\n\t\tShow this help.\n"

l_.str.11:                              ; @.str.11
	.asciz	"\t-V,  --version\n\t\tShow version and copyright information.\n"

l_.str.12:                              ; @.str.12
	.asciz	"\t-v,  --verbose\n\t\tSet verbose level (cumulative).\n"

l_.str.13:                              ; @.str.13
	.asciz	"\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n"

l_.str.14:                              ; @.str.14
	.asciz	"\nTodo:\n\tLong options not implemented yet.\n"

l_.str.15:                              ; @.str.15
	.asciz	"\nAuthor:\n\tWritten by %s <%s>\n\n"

l_.str.16:                              ; @.str.16
	.asciz	"Iago Gade Gusmao Carrazzoni"

l_.str.17:                              ; @.str.17
	.asciz	"iagocarrazzoni@gmail.com"

l_.str.18:                              ; @.str.18
	.asciz	"%s - Version %s\n"

l_.str.19:                              ; @.str.19
	.asciz	"20180915.214818"

l_.str.20:                              ; @.str.20
	.asciz	"\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n"

l_.str.21:                              ; @.str.21
	.asciz	"copyr(): Verbose: %d\n"

l_.str.22:                              ; @.str.22
	.asciz	"-------------------\n"

l_.str.23:                              ; @.str.23
	.asciz	"FRACTION CALCULATOR\nPlease entry the desired operation:\n(It is necessary to add a space between the fractions, like a/b + c/d)\n-> "

l_.str.24:                              ; @.str.24
	.asciz	" "

l_.str.25:                              ; @.str.25
	.asciz	"+"

l_.str.26:                              ; @.str.26
	.asciz	"-"

l_.str.27:                              ; @.str.27
	.asciz	"*"

l_.str.28:                              ; @.str.28
	.asciz	"/"

l_.str.29:                              ; @.str.29
	.asciz	"\nEXPRESSION: %sFRACTION: %d/%d %c %d/%d\nINTERMEDIATE: %d/%d\nRESULT: %d/%d\nDECIMAL: %.3f\n"

.subsections_via_symbols
