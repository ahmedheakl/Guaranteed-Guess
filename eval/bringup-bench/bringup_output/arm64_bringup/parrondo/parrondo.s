	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_cointoss                       ; -- Begin function cointoss
	.p2align	2
_cointoss:                              ; @cointoss
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	fmov	d8, d0
	bl	_libmin_rand
	ucvtf	d0, w0
	mov	x8, #281474972516352            ; =0xffffffc00000
	movk	x8, #16863, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	fcmp	d0, d8
	mov	w8, #-1                         ; =0xffffffff
	csinc	w0, w8, wzr, ge
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_play_s                         ; -- Begin function play_s
	.p2align	2
_play_s:                                ; @play_s
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_libmin_rand
	ucvtf	d0, w0
	mov	x8, #281474972516352            ; =0xffffffc00000
	movk	x8, #16863, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x8, #18350                      ; =0x47ae
	movk	x8, #31457, lsl #16
	movk	x8, #44564, lsl #32
	movk	x8, #16351, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	mov	w8, #-1                         ; =0xffffffff
	csinc	w0, w8, wzr, ge
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_play_c                         ; -- Begin function play_c
	.p2align	2
_play_c:                                ; @play_c
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
	bl	_libmin_rand
	ucvtf	d0, w0
	mov	x8, #281474972516352            ; =0xffffffc00000
	movk	x8, #16863, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	w8, #43691                      ; =0xaaab
	movk	w8, #43690, lsl #16
	mov	w9, #43690                      ; =0xaaaa
	movk	w9, #10922, lsl #16
	madd	w8, w19, w8, w9
	mov	w9, #1431655765                 ; =0x55555555
	cmp	w8, w9
	mov	x8, #41943                      ; =0xa3d7
	movk	x8, #15728, lsl #16
	movk	x8, #55050, lsl #32
	movk	x8, #16359, lsl #48
	fmov	d1, x8
	mov	x8, #47186                      ; =0xb852
	movk	x8, #34078, lsl #16
	movk	x8, #20971, lsl #32
	movk	x8, #16312, lsl #48
	fmov	d2, x8
	fcsel	d1, d2, d1, lo
	fcmp	d0, d1
	mov	w8, #-1                         ; =0xffffffff
	csinc	w0, w8, wzr, ge
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	stp	d11, d10, [sp, #80]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #96]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #72]
	adrp	x24, _argc@PAGE
	ldr	w8, [x24, _argc@PAGEOFF]
	cmp	w8, #2
	b.lt	LBB3_25
; %bb.1:
	mov	x21, #0                         ; =0x0
	mov	w22, #0                         ; =0x0
	mov	w20, #1000                      ; =0x3e8
	mov	w19, #50                        ; =0x32
	fmov	d8, #0.50000000
	mov	w27, #1                         ; =0x1
Lloh3:
	adrp	x25, _argv@PAGE
Lloh4:
	add	x25, x25, _argv@PAGEOFF
Lloh5:
	adrp	x26, lJTI3_0@PAGE
Lloh6:
	add	x26, x26, lJTI3_0@PAGEOFF
Lloh7:
	adrp	x23, l_.str.6@PAGE
Lloh8:
	add	x23, x23, l_.str.6@PAGEOFF
Lloh9:
	adrp	x28, l_.str.7@PAGE
Lloh10:
	add	x28, x28, l_.str.7@PAGEOFF
LBB3_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
                                        ;       Child Loop BB3_5 Depth 3
	str	x20, [sp, #24]                  ; 8-byte Folded Spill
LBB3_3:                                 ;   Parent Loop BB3_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB3_5 Depth 3
	sxtw	x10, w22
	add	w9, w22, #3
	add	x20, x10, #2
	mov	x22, x27
	b	LBB3_5
LBB3_4:                                 ;   in Loop: Header=BB3_5 Depth=3
	ldr	x0, [x25, x20, lsl #3]
	bl	_libmin_atol
	mov	x21, x0
	ldrsw	x8, [x24, _argc@PAGEOFF]
	add	w9, w27, #2
	add	x10, x20, #1
	add	x20, x20, #2
	mov	x22, x27
	cmp	x10, x8
	b.ge	LBB3_26
LBB3_5:                                 ;   Parent Loop BB3_2 Depth=1
                                        ;     Parent Loop BB3_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x27, x9
	ldr	x9, [x25, w22, sxtw #3]
	ldrb	w10, [x9]
	cmp	w10, #45
	b.ne	LBB3_10
; %bb.6:                                ;   in Loop: Header=BB3_5 Depth=3
	ldrsb	w10, [x9, #1]
	sub	w10, w10, #49
	cmp	w10, #69
	b.hi	LBB3_18
; %bb.7:                                ;   in Loop: Header=BB3_5 Depth=3
	adr	x11, LBB3_8
	ldrb	w12, [x26, x10]
	add	x11, x11, x12, lsl #2
	br	x11
LBB3_8:                                 ;   in Loop: Header=BB3_5 Depth=3
	cmp	x20, w8, sxtw
	b.lt	LBB3_4
; %bb.9:                                ;   in Loop: Header=BB3_5 Depth=3
	str	x28, [sp]
	mov	x0, x23
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB3_4
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=2
	str	x28, [sp]
	mov	x0, x23
	b	LBB3_19
LBB3_11:                                ;   in Loop: Header=BB3_3 Depth=2
	sub	w22, w27, #1
	cmp	w22, w8
	b.lt	LBB3_13
; %bb.12:                               ;   in Loop: Header=BB3_3 Depth=2
	str	x28, [sp]
	mov	x0, x23
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_13:                                ;   in Loop: Header=BB3_3 Depth=2
	ldr	x0, [x25, w22, sxtw #3]
	bl	_libmin_atoi
	mov	x19, x0
	b	LBB3_21
LBB3_14:                                ;   in Loop: Header=BB3_3 Depth=2
Lloh11:
	adrp	x8, l_.str.8@PAGE
Lloh12:
	add	x8, x8, l_.str.8@PAGEOFF
	str	x8, [sp]
	mov	x0, x23
	bl	_libmin_printf
	bl	_libmin_success
LBB3_15:                                ;   in Loop: Header=BB3_3 Depth=2
Lloh13:
	adrp	x8, l_.str.9@PAGE
Lloh14:
	add	x8, x8, l_.str.9@PAGEOFF
	str	x8, [sp]
	mov	x0, x23
	bl	_libmin_printf
	bl	_libmin_success
LBB3_16:                                ;   in Loop: Header=BB3_3 Depth=2
	movi	d8, #0000000000000000
	b	LBB3_20
LBB3_17:                                ;   in Loop: Header=BB3_3 Depth=2
	fmov	d8, #1.00000000
	b	LBB3_20
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=2
	str	x9, [sp]
Lloh15:
	adrp	x0, l_.str.10@PAGE
Lloh16:
	add	x0, x0, l_.str.10@PAGEOFF
LBB3_19:                                ;   in Loop: Header=BB3_3 Depth=2
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_20:                                ;   in Loop: Header=BB3_3 Depth=2
	add	w27, w22, #1
LBB3_21:                                ;   in Loop: Header=BB3_3 Depth=2
	ldr	w8, [x24, _argc@PAGEOFF]
	cmp	w27, w8
	b.lt	LBB3_3
	b	LBB3_26
LBB3_22:                                ;   in Loop: Header=BB3_2 Depth=1
	sub	w22, w27, #1
	cmp	w22, w8
	b.lt	LBB3_24
; %bb.23:                               ;   in Loop: Header=BB3_2 Depth=1
	str	x28, [sp]
	mov	x0, x23
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_24:                                ;   in Loop: Header=BB3_2 Depth=1
	ldr	x0, [x25, w22, sxtw #3]
	bl	_libmin_atoi
	mov	x20, x0
	ldr	w8, [x24, _argc@PAGEOFF]
	cmp	w27, w8
	b.lt	LBB3_2
	b	LBB3_27
LBB3_25:
	mov	w20, #1000                      ; =0x3e8
	mov	w19, #50                        ; =0x32
	fmov	d8, #0.50000000
	b	LBB3_28
LBB3_26:
	ldr	x20, [sp, #24]                  ; 8-byte Folded Reload
LBB3_27:
	cbnz	x21, LBB3_29
LBB3_28:
	mov	w21, #3445                      ; =0xd75
	str	x21, [sp]
Lloh17:
	adrp	x0, l_.str.11@PAGE
Lloh18:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
LBB3_29:
	mov	w22, #16960                     ; =0x4240
	movk	w22, #15, lsl #16
	mov	x0, x21
	bl	_libmin_srand
	stp	xzr, xzr, [sp, #48]
	str	xzr, [sp, #64]
	str	x20, [sp]
Lloh19:
	adrp	x0, l_.str.12@PAGE
Lloh20:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_printf
	cmp	w20, #1
	b.lt	LBB3_41
; %bb.30:
	mov	w23, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	neg	w25, w19
	movi	d9, #0000000000000000
	mov	x26, #281474972516352           ; =0xffffffc00000
	movk	x26, #16863, lsl #48
	mov	w27, #43691                     ; =0xaaab
	movk	w27, #43690, lsl #16
	add	x28, sp, #48
	str	x20, [sp, #24]                  ; 8-byte Folded Spill
	b	LBB3_33
LBB3_31:                                ;   in Loop: Header=BB3_33 Depth=1
	add	x8, x21, #1
LBB3_32:                                ;   in Loop: Header=BB3_33 Depth=1
	cmp	w20, w19
	cset	w9, ne
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	cinc	w10, w10, eq
	cmp	w20, w25
	csel	w9, wzr, w9, ne
	add	w23, w23, w9
	add	w24, w24, #1
	scvtf	d0, x8
	fadd	d9, d9, d0
	ldr	x20, [sp, #24]                  ; 8-byte Folded Reload
	cmp	w24, w20
	b.eq	LBB3_40
LBB3_33:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_34 Depth 2
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
	bl	_libmin_rand
	bl	_libmin_srand
	mov	x21, #0                         ; =0x0
	mov	w20, #0                         ; =0x0
LBB3_34:                                ;   Parent Loop BB3_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x26
	fdiv	d0, d0, d1
	fcmp	d0, d8
	b.ge	LBB3_36
; %bb.35:                               ;   in Loop: Header=BB3_34 Depth=2
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x26
	fdiv	d0, d0, d1
	mov	w8, #43690                      ; =0xaaaa
	movk	w8, #10922, lsl #16
	madd	w8, w20, w27, w8
	mov	w9, #1431655765                 ; =0x55555555
	cmp	w8, w9
	mov	x8, #41943                      ; =0xa3d7
	movk	x8, #15728, lsl #16
	movk	x8, #55050, lsl #32
	movk	x8, #16359, lsl #48
	fmov	d1, x8
	mov	x8, #47186                      ; =0xb852
	movk	x8, #34078, lsl #16
	movk	x8, #20971, lsl #32
	movk	x8, #16312, lsl #48
	fmov	d2, x8
	fcsel	d1, d2, d1, lo
	b	LBB3_37
LBB3_36:                                ;   in Loop: Header=BB3_34 Depth=2
	bl	_libmin_rand
	ucvtf	d0, w0
	fmov	d1, x26
	fdiv	d0, d0, d1
	mov	x8, #18350                      ; =0x47ae
	movk	x8, #31457, lsl #16
	movk	x8, #44564, lsl #32
	movk	x8, #16351, lsl #48
	fmov	d1, x8
LBB3_37:                                ;   in Loop: Header=BB3_34 Depth=2
	fcmp	d0, d1
	cset	w8, ge
	sub	w9, w20, #1
	cmp	w8, #0
	csinc	w20, w9, w20, ne
	cmp	w20, w19
	ccmp	w20, w25, #4, lt
	b.le	LBB3_31
; %bb.38:                               ;   in Loop: Header=BB3_34 Depth=2
	cmp	w20, #0
	cneg	w8, w20, mi
	umull	x9, w8, w27
	lsr	x9, x9, #33
	add	w9, w9, w9, lsl #1
	sub	w8, w8, w9
	ubfiz	x8, x8, #3, #32
	ldr	x9, [x28, x8]
	add	x9, x9, #1
	str	x9, [x28, x8]
	add	x21, x21, #1
	cmp	x22, x21
	b.ne	LBB3_34
; %bb.39:                               ;   in Loop: Header=BB3_33 Depth=1
	add	x8, x22, #1
	b	LBB3_32
LBB3_40:
	ldr	d0, [sp, #48]
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	dup.2d	v1, x8
	scvtf	d0, d0
	fmov	d2, x8
	fmul	d8, d0, d2
	ldur	q0, [sp, #56]
	scvtf.2d	v0, v0
	fmul.2d	v0, v0, v1
	str	q0, [sp, #32]                   ; 16-byte Folded Spill
	b	LBB3_42
LBB3_41:
	mov	w20, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
	str	q0, [sp, #32]                   ; 16-byte Folded Spill
	movi	d8, #0000000000000000
	movi	d9, #0000000000000000
LBB3_42:
	scvtf	d0, w20
	fdiv	d10, d9, d0
	add	w8, w10, w23
	sub	w8, w20, w8
	stp	x10, x23, [sp]
	str	x8, [sp, #16]
Lloh21:
	adrp	x0, l_.str.13@PAGE
Lloh22:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
	stp	x19, x22, [sp, #8]
	str	x19, [sp]
Lloh23:
	adrp	x0, l_.str.14@PAGE
Lloh24:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_libmin_printf
	str	d10, [sp]
Lloh25:
	adrp	x0, l_.str.15@PAGE
Lloh26:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_libmin_printf
	fdiv	d0, d8, d9
	ldr	q2, [sp, #32]                   ; 16-byte Folded Reload
	fdiv	d1, d2, d9
	mov	d2, v2[1]
	fdiv	d2, d2, d9
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh27:
	adrp	x0, l_.str.16@PAGE
Lloh28:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	ldr	x8, [sp, #72]
Lloh29:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh30:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh31:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB3_44
; %bb.43:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #96]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB3_44:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGotLdr	Lloh29, Lloh30, Lloh31
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.cfi_endproc
	.section	__TEXT,__const
lJTI3_0:
	.byte	(LBB3_16-LBB3_8)>>2
	.byte	(LBB3_17-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_15-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_15-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_11-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_8-LBB3_8)>>2
	.byte	(LBB3_22-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_14-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_15-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_11-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_8-LBB3_8)>>2
	.byte	(LBB3_22-LBB3_8)>>2
	.byte	(LBB3_18-LBB3_8)>>2
	.byte	(LBB3_14-LBB3_8)>>2
                                        ; -- End function
	.section	__DATA,__data
	.globl	_argc                           ; @argc
	.p2align	2, 0x0
_argc:
	.long	6                               ; 0x6

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"parrondo"

l_.str.1:                               ; @.str.1
	.asciz	"-2"

l_.str.2:                               ; @.str.2
	.asciz	"-t"

l_.str.3:                               ; @.str.3
	.asciz	"10"

l_.str.4:                               ; @.str.4
	.asciz	"-S"

l_.str.5:                               ; @.str.5
	.asciz	"1"

	.section	__DATA,__data
	.globl	_argv                           ; @argv
	.p2align	3, 0x0
_argv:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5

	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"%s\n"

l_.str.7:                               ; @.str.7
	.asciz	"parrondo [ -s number -t number -m number -1 -2 -h -v]"

l_.str.8:                               ; @.str.8
	.asciz	"1.1"

l_.str.9:                               ; @.str.9
	.asciz	"parrondo [ -s number -t number -m number -1 -2 ]\n\nPrint information on simulations of Parrondo's paradoxical game.\n\n-s: Use next argument as RNG seed. (otherwise use system time as seed.)\n-t: Use next argument as number of trials. Default 10000.\n-m: Use number as max fortune (win), -number as min fortune(loss). Default 50. \n-v: Print version number and exit. \n-h: Print this helpful information. \n-1: Simulate simple game alone.\n-2: Simulate complex game alone.\n\n"

l_.str.10:                              ; @.str.10
	.asciz	"parrondo: unkown option %s\n"

l_.str.11:                              ; @.str.11
	.asciz	"Using seed = %d\n"

l_.str.12:                              ; @.str.12
	.asciz	"Simulating %d trials ...\n"

l_.str.13:                              ; @.str.13
	.asciz	"%d wins, %d losses, %d draws\n"

l_.str.14:                              ; @.str.14
	.asciz	"(Win/loss = %d/-%d, draw = no win/loss in %ld plays.)\n"

l_.str.15:                              ; @.str.15
	.asciz	"Average trial length = %lf\n"

l_.str.16:                              ; @.str.16
	.asciz	"Site occupancy: 0 mod 3: %lf%%, 1 mod 3: %lf%%, 2 mod 3: %lf%%\n"

.subsections_via_symbols
