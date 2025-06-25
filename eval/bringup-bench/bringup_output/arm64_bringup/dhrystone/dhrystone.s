	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI0_0:
	.long	0                               ; 0x0
	.long	2                               ; 0x2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #72]
Lloh3:
	adrp	x20, _rec2@PAGE
Lloh4:
	add	x20, x20, _rec2@PAGEOFF
Lloh5:
	adrp	x8, _rec1@PAGE
Lloh6:
	add	x8, x8, _rec1@PAGEOFF
	str	x8, [x20]
Lloh7:
	adrp	x8, lCPI0_0@PAGE
Lloh8:
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	str	d0, [x20, #8]
	mov	w8, #40                         ; =0x28
	str	w8, [x20, #16]
	add	x0, x20, #20
Lloh9:
	adrp	x1, l_.str@PAGE
Lloh10:
	add	x1, x1, l_.str@PAGEOFF
	bl	_libmin_strcpy
Lloh11:
	adrp	x1, l_.str.1@PAGE
Lloh12:
	add	x1, x1, l_.str.1@PAGEOFF
	add	x0, sp, #41
	bl	_libmin_strcpy
	mov	w24, #10                        ; =0xa
	adrp	x22, _Arr_2_Glob.0@PAGE
	str	w24, [x22, _Arr_2_Glob.0@PAGEOFF]
Lloh13:
	adrp	x19, l_.str.2@PAGE
Lloh14:
	add	x19, x19, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
Lloh15:
	adrp	x0, l_.str.3@PAGE
Lloh16:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_printf
	str	x24, [sp]
Lloh17:
	adrp	x0, l_.str.4@PAGE
Lloh18:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
Lloh19:
	adrp	x21, _Ch_1_Glob@GOTPAGE
Lloh20:
	ldr	x21, [x21, _Ch_1_Glob@GOTPAGEOFF]
	mov	w26, #65                        ; =0x41
	adrp	x23, _Bool_Glob@PAGE
	mov	w27, #1                         ; =0x1
Lloh21:
	adrp	x19, l_.str.5@PAGE
Lloh22:
	add	x19, x19, l_.str.5@PAGEOFF
Lloh23:
	adrp	x25, _Int_Glob@GOTPAGE
Lloh24:
	ldr	x25, [x25, _Int_Glob@GOTPAGEOFF]
	mov	w28, #5                         ; =0x5
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [x20]
	ldp	q0, q1, [x8]
	ldr	q2, [x8, #32]
	ldr	x8, [x8, #48]
	str	x8, [x20, #48]
	stp	q1, q2, [x20, #16]
	str	q0, [x20]
	subs	w24, w24, #1
	b.eq	LBB0_11
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	strb	w26, [x21]
	str	w27, [x23, _Bool_Glob@PAGEOFF]
	add	x0, sp, #10
	mov	x1, x19
	bl	_libmin_strcpy
	ldrb	w8, [sp, #43]
	ldrb	w9, [sp, #13]
	cmp	w8, w9
	b.eq	LBB0_13
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	add	x0, sp, #41
	add	x1, sp, #10
	bl	_libmin_strcmp
	cmp	w0, #1
	cset	w8, lt
	str	w8, [x23, _Bool_Glob@PAGEOFF]
	ldr	w8, [x22, _Arr_2_Glob.0@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x22, _Arr_2_Glob.0@PAGEOFF]
	str	w28, [x25]
	ldr	x8, [x20]
	ldp	q0, q1, [x20]
	ldr	q2, [x20, #32]
	ldr	x9, [x20, #48]
	str	x9, [x8, #48]
	stp	q1, q2, [x8, #16]
	str	q0, [x8]
	str	w28, [x20, #16]
	str	w28, [x8, #16]
	ldr	x9, [x20]
	str	x9, [x8]
	ldr	x9, [x20]
	str	x9, [x8]
	ldr	w10, [x25]
	add	w9, w10, #12
	str	w9, [x20, #16]
	ldr	w9, [x8, #8]
	cbnz	w9, LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
Lloh25:
	adrp	x9, _rec2@PAGE+12
Lloh26:
	ldr	w9, [x9, _rec2@PAGEOFF+12]
	cmp	x9, #2
	mov	w11, #2                         ; =0x2
	cinc	w11, w11, ne
	str	w11, [x8, #12]
	cmp	w9, #4
	b.hi	LBB0_10
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
Lloh27:
	adrp	x13, lJTI0_0@PAGE
Lloh28:
	add	x13, x13, lJTI0_0@PAGEOFF
	adr	x11, LBB0_6
	ldrb	w12, [x13, x9]
	add	x11, x11, x12, lsl #2
	br	x11
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w10, #100
	mov	w9, #3                          ; =0x3
	csel	w9, wzr, w9, gt
	b	LBB0_9
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #1                          ; =0x1
	b	LBB0_9
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	w9, #2                          ; =0x2
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	str	w9, [x8, #12]
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
Lloh29:
	adrp	x9, _rec2@PAGE
Lloh30:
	ldr	x9, [x9, _rec2@PAGEOFF]
	str	x9, [x8]
	mov	w9, #18                         ; =0x12
	str	w9, [x8, #16]
	subs	w24, w24, #1
	b.ne	LBB0_2
LBB0_11:
	ldr	w8, [x25]
	ldrb	w9, [x21]
	mov	w10, #10                        ; =0xa
	sub	w8, w10, w8
	cmp	w9, #65
	csinc	w27, w8, wzr, eq
Lloh31:
	adrp	x0, l_.str.7@PAGE
Lloh32:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_libmin_printf
Lloh33:
	adrp	x19, l_.str.2@PAGE
Lloh34:
	add	x19, x19, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
Lloh35:
	adrp	x0, l_.str.8@PAGE
Lloh36:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x25]
	str	x8, [sp]
Lloh37:
	adrp	x0, l_.str.9@PAGE
Lloh38:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	mov	w8, #5                          ; =0x5
	str	x8, [sp]
Lloh39:
	adrp	x20, l_.str.10@PAGE
Lloh40:
	add	x20, x20, l_.str.10@PAGEOFF
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x23, _Bool_Glob@PAGEOFF]
	str	x8, [sp]
Lloh41:
	adrp	x0, l_.str.11@PAGE
Lloh42:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	mov	w28, #1                         ; =0x1
	str	x28, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldrsb	x8, [x21]
	str	x8, [sp]
Lloh43:
	adrp	x0, l_.str.12@PAGE
Lloh44:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
	mov	w8, #65                         ; =0x41
	str	x8, [sp]
Lloh45:
	adrp	x21, l_.str.13@PAGE
Lloh46:
	add	x21, x21, l_.str.13@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
	mov	w19, #66                        ; =0x42
	str	x19, [sp]
Lloh47:
	adrp	x0, l_.str.14@PAGE
Lloh48:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	str	x19, [sp]
	mov	x0, x21
	bl	_libmin_printf
	mov	w19, #7                         ; =0x7
	str	x19, [sp]
Lloh49:
	adrp	x0, l_.str.15@PAGE
Lloh50:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_libmin_printf
	str	x19, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x22, _Arr_2_Glob.0@PAGEOFF]
	str	x8, [sp]
Lloh51:
	adrp	x0, l_.str.16@PAGE
Lloh52:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
Lloh53:
	adrp	x0, l_.str.17@PAGE
Lloh54:
	add	x0, x0, l_.str.17@PAGEOFF
	bl	_libmin_printf
Lloh55:
	adrp	x0, l_.str.18@PAGE
Lloh56:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
Lloh57:
	adrp	x21, l_.str.19@PAGE
Lloh58:
	add	x21, x21, l_.str.19@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
Lloh59:
	adrp	x0, l_.str.20@PAGE
Lloh60:
	add	x0, x0, l_.str.20@PAGEOFF
	bl	_libmin_printf
Lloh61:
	adrp	x25, _rec2@PAGE+8
Lloh62:
	add	x25, x25, _rec2@PAGEOFF+8
	ldr	w8, [x25]
	str	x8, [sp]
Lloh63:
	adrp	x22, l_.str.21@PAGE
Lloh64:
	add	x22, x22, l_.str.21@PAGEOFF
	mov	x0, x22
	bl	_libmin_printf
	str	xzr, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x25, #4]
	str	x8, [sp]
Lloh65:
	adrp	x23, l_.str.22@PAGE
Lloh66:
	add	x23, x23, l_.str.22@PAGEOFF
	mov	x0, x23
	bl	_libmin_printf
	mov	w8, #2                          ; =0x2
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x25, #8]
	str	x8, [sp]
Lloh67:
	adrp	x24, l_.str.23@PAGE
Lloh68:
	add	x24, x24, l_.str.23@PAGEOFF
	mov	x0, x24
	bl	_libmin_printf
	mov	w8, #17                         ; =0x11
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	x8, x25, #12
	str	x8, [sp]
Lloh69:
	adrp	x25, l_.str.24@PAGE
Lloh70:
	add	x25, x25, l_.str.24@PAGEOFF
	mov	x0, x25
	bl	_libmin_printf
Lloh71:
	adrp	x26, l_.str.25@PAGE
Lloh72:
	add	x26, x26, l_.str.25@PAGEOFF
	mov	x0, x26
	bl	_libmin_printf
Lloh73:
	adrp	x0, l_.str.26@PAGE
Lloh74:
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
Lloh75:
	adrp	x0, l_.str.27@PAGE
Lloh76:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_libmin_printf
Lloh77:
	adrp	x21, _rec1@PAGE+8
Lloh78:
	add	x21, x21, _rec1@PAGEOFF+8
	ldr	w8, [x21]
	str	x8, [sp]
	mov	x0, x22
	bl	_libmin_printf
	str	xzr, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x21, #4]
	str	x8, [sp]
	mov	x0, x23
	bl	_libmin_printf
	str	x28, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x21, #8]
	str	x8, [sp]
	mov	x0, x24
	bl	_libmin_printf
	mov	w8, #18                         ; =0x12
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	x8, x21, #12
	str	x8, [sp]
	mov	x0, x25
	bl	_libmin_printf
	mov	x0, x26
	bl	_libmin_printf
	str	x27, [sp]
Lloh79:
	adrp	x0, l_.str.28@PAGE
Lloh80:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_libmin_printf
	mov	w8, #5                          ; =0x5
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	w21, #13                        ; =0xd
	str	x21, [sp]
Lloh81:
	adrp	x0, l_.str.29@PAGE
Lloh82:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_libmin_printf
	str	x21, [sp]
	mov	x0, x20
	bl	_libmin_printf
	str	x19, [sp]
Lloh83:
	adrp	x0, l_.str.30@PAGE
Lloh84:
	add	x0, x0, l_.str.30@PAGEOFF
	bl	_libmin_printf
	str	x19, [sp]
	mov	x0, x20
	bl	_libmin_printf
	str	x28, [sp]
Lloh85:
	adrp	x0, l_.str.31@PAGE
Lloh86:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_libmin_printf
	str	x28, [sp]
	mov	x0, x20
	bl	_libmin_printf
	add	x8, sp, #41
	str	x8, [sp]
Lloh87:
	adrp	x0, l_.str.32@PAGE
Lloh88:
	add	x0, x0, l_.str.32@PAGEOFF
	bl	_libmin_printf
Lloh89:
	adrp	x0, l_.str.33@PAGE
Lloh90:
	add	x0, x0, l_.str.33@PAGEOFF
	bl	_libmin_printf
	add	x8, sp, #10
	str	x8, [sp]
Lloh91:
	adrp	x0, l_.str.34@PAGE
Lloh92:
	add	x0, x0, l_.str.34@PAGEOFF
	bl	_libmin_printf
Lloh93:
	adrp	x0, l_.str.35@PAGE
Lloh94:
	add	x0, x0, l_.str.35@PAGEOFF
	bl	_libmin_printf
Lloh95:
	adrp	x0, l_.str.2@PAGE
Lloh96:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	ldr	x8, [sp, #72]
Lloh97:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh98:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh99:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_15
; %bb.12:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB0_13:
	strb	w8, [x21]
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	b	LBB0_14
LBB0_15:
	bl	___stack_chk_fail
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdr	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdr	Lloh25, Lloh26
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdr	Lloh29, Lloh30
	.loh AdrpLdrGotLdr	Lloh97, Lloh98, Lloh99
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
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
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh31, Lloh32
	.cfi_endproc
	.section	__TEXT,__const
lJTI0_0:
	.byte	(LBB0_9-LBB0_6)>>2
	.byte	(LBB0_6-LBB0_6)>>2
	.byte	(LBB0_7-LBB0_6)>>2
	.byte	(LBB0_10-LBB0_6)>>2
	.byte	(LBB0_8-LBB0_6)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_PFunc_2                        ; -- Begin function PFunc_2
	.p2align	2
_PFunc_2:                               ; @PFunc_2
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldrb	w8, [x0, #2]
	ldrb	w9, [x1, #3]
	cmp	w8, w9
	b.ne	LBB1_3
; %bb.1:
Lloh100:
	adrp	x9, _Ch_1_Glob@GOTPAGE
Lloh101:
	ldr	x9, [x9, _Ch_1_Glob@GOTPAGEOFF]
Lloh102:
	strb	w8, [x9]
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	b	LBB1_2
LBB1_3:
	bl	_libmin_strcmp
	cmp	w0, #1
	b.lt	LBB1_5
; %bb.4:
Lloh103:
	adrp	x8, _Int_Glob@GOTPAGE
Lloh104:
	ldr	x8, [x8, _Int_Glob@GOTPAGEOFF]
	mov	w9, #10                         ; =0xa
Lloh105:
	str	w9, [x8]
	mov	w0, #1                          ; =0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB1_5:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGotStr	Lloh100, Lloh101, Lloh102
	.loh AdrpLdrGotStr	Lloh103, Lloh104, Lloh105
	.cfi_endproc
                                        ; -- End function
	.globl	_PProc_7                        ; -- Begin function PProc_7
	.p2align	2
_PProc_7:                               ; @PProc_7
	.cfi_startproc
; %bb.0:
	add	w8, w0, w1
	add	w8, w8, #2
	str	w8, [x2]
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_PProc_8                        ; -- Begin function PProc_8
	.p2align	2
_PProc_8:                               ; @PProc_8
	.cfi_startproc
; %bb.0:
                                        ; kill: def $w2 killed $w2 def $x2
	sxtw	x8, w2
	add	x8, x8, #5
	lsl	x9, x8, #2
	str	w3, [x0, x9]
	sbfiz	x10, x2, #2, #32
	add	x11, x10, x0
	str	w3, [x11, #24]
	str	w8, [x11, #140]
	mov	w11, #200                       ; =0xc8
	smaddl	x11, w2, w11, x1
	add	x12, x11, #1000
	dup.2s	v0, w8
	str	d0, [x12, x9]
	add	x8, x10, x12
	ldr	w10, [x8, #16]
	add	w10, w10, #1
	str	w10, [x8, #16]
	ldr	w8, [x0, x9]
	add	x9, x11, x9
	str	w8, [x9, #5000]
Lloh106:
	adrp	x8, _Int_Glob@GOTPAGE
Lloh107:
	ldr	x8, [x8, _Int_Glob@GOTPAGEOFF]
	mov	w9, #5                          ; =0x5
Lloh108:
	str	w9, [x8]
	mov	w0, #0                          ; =0x0
	ret
	.loh AdrpLdrGotStr	Lloh106, Lloh107, Lloh108
	.cfi_endproc
                                        ; -- End function
	.globl	_PFunc_1                        ; -- Begin function PFunc_1
	.p2align	2
_PFunc_1:                               ; @PFunc_1
	.cfi_startproc
; %bb.0:
	cmp	w0, w1
	b.ne	LBB4_2
; %bb.1:
Lloh109:
	adrp	x8, _Ch_1_Glob@GOTPAGE
Lloh110:
	ldr	x8, [x8, _Ch_1_Glob@GOTPAGEOFF]
Lloh111:
	strb	w0, [x8]
	mov	w0, #1                          ; =0x1
	ret
LBB4_2:
	mov	w0, #0                          ; =0x0
	ret
	.loh AdrpLdrGotStr	Lloh109, Lloh110, Lloh111
	.cfi_endproc
                                        ; -- End function
	.globl	_PProc_6                        ; -- Begin function PProc_6
	.p2align	2
_PProc_6:                               ; @PProc_6
	.cfi_startproc
; %bb.0:
	cmp	w0, #2
	mov	w8, #2                          ; =0x2
	cinc	w8, w8, ne
	str	w8, [x1]
	cmp	w0, #4
	b.hi	LBB5_6
; %bb.1:
	mov	w8, w0
Lloh112:
	adrp	x9, lJTI5_0@PAGE
Lloh113:
	add	x9, x9, lJTI5_0@PAGEOFF
	adr	x10, LBB5_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB5_2:
Lloh114:
	adrp	x8, _Int_Glob@GOTPAGE
Lloh115:
	ldr	x8, [x8, _Int_Glob@GOTPAGEOFF]
Lloh116:
	ldr	w8, [x8]
	mov	w9, #3                          ; =0x3
	cmp	w8, #100
	csel	w0, wzr, w9, gt
	b	LBB5_5
LBB5_3:
	mov	w0, #1                          ; =0x1
	b	LBB5_5
LBB5_4:
	mov	w0, #2                          ; =0x2
LBB5_5:
	str	w0, [x1]
LBB5_6:
	mov	w0, #0                          ; =0x0
	ret
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpLdrGotLdr	Lloh114, Lloh115, Lloh116
	.cfi_endproc
	.section	__TEXT,__const
lJTI5_0:
	.byte	(LBB5_5-LBB5_2)>>2
	.byte	(LBB5_2-LBB5_2)>>2
	.byte	(LBB5_3-LBB5_2)>>2
	.byte	(LBB5_6-LBB5_2)>>2
	.byte	(LBB5_4-LBB5_2)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_PFunc_3                        ; -- Begin function PFunc_3
	.p2align	2
_PFunc_3:                               ; @PFunc_3
	.cfi_startproc
; %bb.0:
	cmp	w0, #2
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_rec1,56,3       ; @rec1
.zerofill __DATA,__bss,_rec2,56,3       ; @rec2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"

l_.str.1:                               ; @.str.1
	.asciz	"DHRYSTONE PROGRAM, 1'ST STRING"

.zerofill __DATA,__bss,_Arr_2_Glob.0,4,2 ; @Arr_2_Glob.0
l_.str.2:                               ; @.str.2
	.asciz	"\n"

l_.str.3:                               ; @.str.3
	.asciz	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"

l_.str.4:                               ; @.str.4
	.asciz	"Execution starts, %d runs through Dhrystone\n"

l_.str.5:                               ; @.str.5
	.asciz	"DHRYSTONE PROGRAM, 2'ND STRING"

.zerofill __DATA,__bss,_Bool_Glob,4,2   ; @Bool_Glob
	.comm	_Int_Glob,4,2                   ; @Int_Glob
l_.str.7:                               ; @.str.7
	.asciz	"Execution ends\n"

l_.str.8:                               ; @.str.8
	.asciz	"Final values of the variables used in the benchmark:\n"

l_.str.9:                               ; @.str.9
	.asciz	"Int_Glob:            %d\n"

l_.str.10:                              ; @.str.10
	.asciz	"        should be:   %d\n"

l_.str.11:                              ; @.str.11
	.asciz	"Bool_Glob:           %d\n"

l_.str.12:                              ; @.str.12
	.asciz	"Ch_1_Glob:           %c\n"

	.comm	_Ch_1_Glob,1,0                  ; @Ch_1_Glob
l_.str.13:                              ; @.str.13
	.asciz	"        should be:   %c\n"

l_.str.14:                              ; @.str.14
	.asciz	"Ch_2_Glob:           %c\n"

l_.str.15:                              ; @.str.15
	.asciz	"Arr_1_Glob[8]:       %d\n"

l_.str.16:                              ; @.str.16
	.asciz	"Arr_2_Glob[8][7]:    %d\n"

l_.str.17:                              ; @.str.17
	.asciz	"        should be:   Pnumber_of_runs + 10\n"

l_.str.18:                              ; @.str.18
	.asciz	"Ptr_Glob->\n"

l_.str.19:                              ; @.str.19
	.asciz	"  Ptr_Comp:          (implementation-dependent)\n"

l_.str.20:                              ; @.str.20
	.asciz	"        should be:   (implementation-dependent)\n"

l_.str.21:                              ; @.str.21
	.asciz	"  Discr:             %d\n"

l_.str.22:                              ; @.str.22
	.asciz	"  Enum_Comp:         %d\n"

l_.str.23:                              ; @.str.23
	.asciz	"  Int_Comp:          %d\n"

l_.str.24:                              ; @.str.24
	.asciz	"  Str_Comp:          %s\n"

l_.str.25:                              ; @.str.25
	.asciz	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"

l_.str.26:                              ; @.str.26
	.asciz	"Next_Ptr_Glob->\n"

l_.str.27:                              ; @.str.27
	.asciz	"        should be:   (implementation-dependent), same as above\n"

l_.str.28:                              ; @.str.28
	.asciz	"Int_1_Loc:           %d\n"

l_.str.29:                              ; @.str.29
	.asciz	"Int_2_Loc:           %d\n"

l_.str.30:                              ; @.str.30
	.asciz	"Int_3_Loc:           %d\n"

l_.str.31:                              ; @.str.31
	.asciz	"Enum_Loc:            %d\n"

l_.str.32:                              ; @.str.32
	.asciz	"Str_1_Loc:           %s\n"

l_.str.33:                              ; @.str.33
	.asciz	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"

l_.str.34:                              ; @.str.34
	.asciz	"Str_2_Loc:           %s\n"

l_.str.35:                              ; @.str.35
	.asciz	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"

	.comm	_Pnumber_of_runs,4,2            ; @Pnumber_of_runs
.subsections_via_symbols
