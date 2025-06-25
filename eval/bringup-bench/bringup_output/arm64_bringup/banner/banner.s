	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	adrp	x24, _argc@PAGE
	adrp	x22, _argv@PAGE
Lloh0:
	adrp	x19, l_.str.2@PAGE
Lloh1:
	add	x19, x19, l_.str.2@PAGEOFF
Lloh2:
	adrp	x23, _debug@GOTPAGE
Lloh3:
	ldr	x23, [x23, _debug@GOTPAGEOFF]
Lloh4:
	adrp	x26, _optarg@GOTPAGE
Lloh5:
	ldr	x26, [x26, _optarg@GOTPAGEOFF]
	mov	w27, #1                         ; =0x1
	adrp	x25, _width@PAGE
Lloh6:
	adrp	x20, l_.str.3@PAGE
Lloh7:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh8:
	adrp	x21, l_.str.4@PAGE
Lloh9:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [x26]
	bl	_libmin_atoi
	str	w0, [x25, _width@PAGEOFF]
	cmp	w0, #0
	b.le	LBB0_7
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w0, [x24, _argc@PAGEOFF]
	ldr	x1, [x22, _argv@PAGEOFF]
	mov	x2, x19
	bl	_libmin_getopt
	cmp	w0, #100
	b.eq	LBB0_6
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w0, #119
	b.eq	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	cmn	w0, #1
	b.eq	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, x21
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB0_2
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	str	w27, [x23]
	b	LBB0_2
LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
	mov	x0, x20
	bl	_libmin_printf
	b	LBB0_2
LBB0_8:
Lloh10:
	adrp	x8, _optind@GOTPAGE
Lloh11:
	ldr	x8, [x8, _optind@GOTPAGEOFF]
Lloh12:
	ldrsw	x8, [x8]
	ldr	w9, [x24, _argc@PAGEOFF]
	sub	w9, w9, w8
	str	w9, [x24, _argc@PAGEOFF]
	ldr	x9, [x22, _argv@PAGEOFF]
	add	x8, x9, x8, lsl #3
	str	x8, [x22, _argv@PAGEOFF]
	ldr	w9, [x25, _width@PAGEOFF]
Lloh13:
	adrp	x21, _j@GOTPAGE
Lloh14:
	ldr	x21, [x21, _j@GOTPAGEOFF]
	cmp	w9, #1
	b.lt	LBB0_11
; %bb.9:
	cmp	w9, #4
	b.hs	LBB0_12
; %bb.10:
	mov	w10, #0                         ; =0x0
	b	LBB0_15
LBB0_11:
	mov	w9, #0                          ; =0x0
	b	LBB0_18
LBB0_12:
	and	w10, w9, #0xfffffffc
	mov	w12, #396                       ; =0x18c
Lloh15:
	adrp	x13, _print@GOTPAGE
Lloh16:
	ldr	x13, [x13, _print@GOTPAGEOFF]
	mov	w14, #1                         ; =0x1
	mov	x15, x10
LBB0_13:                                ; =>This Inner Loop Header: Depth=1
	sub	w11, w12, #396
	sub	w16, w12, #264
	sub	w17, w12, #132
	sdiv	w11, w11, w9
	sdiv	w16, w16, w9
	sdiv	w17, w17, w9
	strb	w14, [x13, w11, sxtw]
	strb	w14, [x13, w16, sxtw]
	strb	w14, [x13, w17, sxtw]
	sdiv	w11, w12, w9
	strb	w14, [x13, w11, sxtw]
	add	w12, w12, #528
	subs	w15, w15, #4
	b.ne	LBB0_13
; %bb.14:
	cmp	w9, w10
	b.eq	LBB0_17
LBB0_15:
	add	w11, w10, w10, lsl #5
	lsl	w12, w11, #2
Lloh17:
	adrp	x13, _print@GOTPAGE
Lloh18:
	ldr	x13, [x13, _print@GOTPAGEOFF]
	mov	w14, #1                         ; =0x1
LBB0_16:                                ; =>This Inner Loop Header: Depth=1
	sdiv	w11, w12, w9
	strb	w14, [x13, w11, sxtw]
	add	w10, w10, #1
	add	w12, w12, #132
	cmp	w9, w10
	b.ne	LBB0_16
LBB0_17:
	str	w11, [x21]
LBB0_18:
Lloh19:
	adrp	x24, _i@GOTPAGE
Lloh20:
	ldr	x24, [x24, _i@GOTPAGEOFF]
	str	w9, [x24]
	ldr	x1, [x8]
Lloh21:
	adrp	x27, _nchars@GOTPAGE
Lloh22:
	ldr	x27, [x27, _nchars@GOTPAGEOFF]
	cbz	x1, LBB0_23
; %bb.19:
Lloh23:
	adrp	x0, _message@GOTPAGE
Lloh24:
	ldr	x0, [x0, _message@GOTPAGEOFF]
	mov	w2, #1024                       ; =0x400
	bl	_libmin_strncpy
	ldr	x8, [x22, _argv@PAGEOFF]
	ldr	x9, [x8, #8]!
	str	x8, [x22, _argv@PAGEOFF]
	cbz	x9, LBB0_22
; %bb.20:
Lloh25:
	adrp	x19, _message@GOTPAGE
Lloh26:
	ldr	x19, [x19, _message@GOTPAGEOFF]
Lloh27:
	adrp	x20, l_.str.5@PAGE
Lloh28:
	add	x20, x20, l_.str.5@PAGEOFF
LBB0_21:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x19
	mov	x1, x20
	mov	w2, #1024                       ; =0x400
	bl	_libmin_strncat
	ldr	x8, [x22, _argv@PAGEOFF]
	ldr	x1, [x8]
	mov	x0, x19
	mov	w2, #1024                       ; =0x400
	bl	_libmin_strncat
	ldr	x8, [x22, _argv@PAGEOFF]
	ldr	x9, [x8, #8]!
	str	x8, [x22, _argv@PAGEOFF]
	cbnz	x9, LBB0_21
LBB0_22:
Lloh29:
	adrp	x0, _message@GOTPAGE
Lloh30:
	ldr	x0, [x0, _message@GOTPAGEOFF]
	bl	_libmin_strlen
	str	w0, [x27]
	b	LBB0_24
LBB0_23:
Lloh31:
	adrp	x0, l_.str.6@PAGE
Lloh32:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB0_24:
	ldr	w8, [x23]
Lloh33:
	adrp	x22, _asc_ptr@PAGE
Lloh34:
	add	x22, x22, _asc_ptr@PAGEOFF
Lloh35:
	adrp	x25, _x@GOTPAGE
Lloh36:
	ldr	x25, [x25, _x@GOTPAGEOFF]
Lloh37:
	adrp	x26, _data_table@PAGE
Lloh38:
	add	x26, x26, _data_table@PAGEOFF
	cbz	w8, LBB0_36
; %bb.25:
Lloh39:
	adrp	x0, l_.str.7@PAGE
Lloh40:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_libmin_printf
	mov	w8, #0                          ; =0x0
	str	wzr, [x24]
Lloh41:
	adrp	x19, l_.str.8@PAGE
Lloh42:
	add	x19, x19, l_.str.8@PAGEOFF
Lloh43:
	adrp	x20, l_.str.9@PAGE
Lloh44:
	add	x20, x20, l_.str.9@PAGEOFF
	b	LBB0_27
LBB0_26:                                ;   in Loop: Header=BB0_27 Depth=1
	str	w8, [x24]
	cmp	w9, #127
	b.ge	LBB0_29
LBB0_27:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x22, w8, sxtw #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w9, [x24]
	add	w8, w9, #1
	tst	w8, #0x7
	b.ne	LBB0_26
; %bb.28:                               ;   in Loop: Header=BB0_27 Depth=1
	mov	x0, x20
	bl	_libmin_printf
	ldr	w9, [x24]
	add	w8, w9, #1
	b	LBB0_26
LBB0_29:
Lloh45:
	adrp	x0, l_.str.10@PAGE
Lloh46:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
Lloh47:
	adrp	x0, l_.str.11@PAGE
Lloh48:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_libmin_printf
	mov	w8, #0                          ; =0x0
	str	wzr, [x24]
Lloh49:
	adrp	x19, l_.str.12@PAGE
Lloh50:
	add	x19, x19, l_.str.12@PAGEOFF
LBB0_30:                                ; =>This Inner Loop Header: Depth=1
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w9, [x24]
	add	w8, w9, #1
	str	w8, [x24]
	cmp	w9, #9
	b.lt	LBB0_30
; %bb.31:
Lloh51:
	adrp	x0, l_.str.13@PAGE
Lloh52:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_printf
	mov	w8, #0                          ; =0x0
	str	wzr, [x24]
Lloh53:
	adrp	x19, l_.str.14@PAGE
Lloh54:
	add	x19, x19, l_.str.14@PAGEOFF
	mov	w22, #9261                      ; =0x242d
Lloh55:
	adrp	x20, l_.str.15@PAGE
Lloh56:
	add	x20, x20, l_.str.15@PAGEOFF
LBB0_32:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_33 Depth 2
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x24]
	str	w8, [x21]
LBB0_33:                                ;   Parent Loop BB0_32 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w8, [x26, w8, sxtw]
	str	w8, [x25]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w9, [x21]
	add	w8, w9, #1
	str	w8, [x21]
	ldr	w10, [x24]
	add	w10, w10, #9
	cmp	w9, w10
	b.lt	LBB0_33
; %bb.34:                               ;   in Loop: Header=BB0_32 Depth=1
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	ldr	w9, [x24]
	add	w8, w9, #10
	str	w8, [x24]
	cmp	w9, w22
	b.lt	LBB0_32
; %bb.35:
Lloh57:
	adrp	x0, l_.str.16@PAGE
Lloh58:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_libmin_printf
LBB0_36:
	str	wzr, [x21]
	str	wzr, [x24]
	ldr	w8, [x27]
	cmp	w8, #1
	b.lt	LBB0_70
; %bb.37:
	mov	w9, #0                          ; =0x0
	mov	w10, #0                         ; =0x0
Lloh59:
	adrp	x24, _message@GOTPAGE
Lloh60:
	ldr	x24, [x24, _message@GOTPAGEOFF]
Lloh61:
	adrp	x19, l_.str.17@PAGE
Lloh62:
	add	x19, x19, l_.str.17@PAGEOFF
Lloh63:
	adrp	x20, _i@GOTPAGE
Lloh64:
	ldr	x20, [x20, _i@GOTPAGEOFF]
Lloh65:
	adrp	x22, _nchars@GOTPAGE
Lloh66:
	ldr	x22, [x22, _nchars@GOTPAGEOFF]
Lloh67:
	adrp	x23, _asc_ptr@PAGE
Lloh68:
	add	x23, x23, _asc_ptr@PAGEOFF
	b	LBB0_40
LBB0_38:                                ;   in Loop: Header=BB0_40 Depth=1
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [x21]
	add	w9, w8, #1
	str	w9, [x21]
	ldr	w10, [x20]
	ldr	w8, [x22]
LBB0_39:                                ;   in Loop: Header=BB0_40 Depth=1
	add	w10, w10, #1
	str	w10, [x20]
	cmp	w10, w8
	b.ge	LBB0_42
LBB0_40:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w11, [x24, w10, sxtw]
	tbnz	w11, #31, LBB0_38
; %bb.41:                               ;   in Loop: Header=BB0_40 Depth=1
	and	x11, x11, #0xff
	ldr	w11, [x23, x11, lsl #2]
	cbnz	w11, LBB0_39
	b	LBB0_38
LBB0_42:
	cbz	w9, LBB0_44
; %bb.43:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	ldr	w8, [x22]
LBB0_44:
	str	wzr, [x20]
	cmp	w8, #1
	b.lt	LBB0_70
; %bb.45:
	mov	w8, #0                          ; =0x0
Lloh69:
	adrp	x27, _line@GOTPAGE
Lloh70:
	ldr	x27, [x27, _line@GOTPAGEOFF]
Lloh71:
	adrp	x23, _pc@GOTPAGE
Lloh72:
	ldr	x23, [x23, _pc@GOTPAGEOFF]
Lloh73:
	adrp	x28, _max@GOTPAGE
Lloh74:
	ldr	x28, [x28, _max@GOTPAGEOFF]
Lloh75:
	adrp	x20, _linen@GOTPAGE
Lloh76:
	ldr	x20, [x20, _linen@GOTPAGEOFF]
Lloh77:
	adrp	x22, _print@GOTPAGE
Lloh78:
	ldr	x22, [x22, _print@GOTPAGEOFF]
	b	LBB0_47
LBB0_46:                                ;   in Loop: Header=BB0_47 Depth=1
Lloh79:
	adrp	x9, _i@GOTPAGE
Lloh80:
	ldr	x9, [x9, _i@GOTPAGEOFF]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
Lloh81:
	adrp	x9, _nchars@GOTPAGE
Lloh82:
	ldr	x9, [x9, _nchars@GOTPAGEOFF]
Lloh83:
	ldr	w9, [x9]
	cmp	w8, w9
	b.ge	LBB0_70
LBB0_47:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_50 Depth 2
                                        ;       Child Loop BB0_61 Depth 3
                                        ;         Child Loop BB0_65 Depth 4
	mov	w9, #538976288                  ; =0x20202020
	str	w9, [x27, #128]
	movi.16b	v0, #32
	stp	q0, q0, [x27, #96]
	stp	q0, q0, [x27, #64]
	stp	q0, q0, [x27, #32]
	stp	q0, q0, [x27]
	mov	w9, #132                        ; =0x84
	str	w9, [x21]
Lloh84:
	adrp	x9, _message@GOTPAGE
Lloh85:
	ldr	x9, [x9, _message@GOTPAGEOFF]
	ldrb	w8, [x9, w8, sxtw]
Lloh86:
	adrp	x9, _asc_ptr@PAGE
Lloh87:
	add	x9, x9, _asc_ptr@PAGEOFF
	ldr	w19, [x9, x8, lsl #2]
	str	w19, [x23]
Lloh88:
	adrp	x8, _term@GOTPAGE
Lloh89:
	ldr	x8, [x8, _term@GOTPAGEOFF]
Lloh90:
	str	wzr, [x8]
	str	wzr, [x28]
	str	wzr, [x20]
	b	LBB0_50
LBB0_48:                                ;   in Loop: Header=BB0_50 Depth=2
	add	w19, w19, #2
LBB0_49:                                ;   in Loop: Header=BB0_50 Depth=2
	str	w19, [x23]
Lloh91:
	adrp	x8, _term@GOTPAGE
Lloh92:
	ldr	x8, [x8, _term@GOTPAGEOFF]
Lloh93:
	ldr	w8, [x8]
	cbnz	w8, LBB0_46
LBB0_50:                                ;   Parent Loop BB0_47 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_61 Depth 3
                                        ;         Child Loop BB0_65 Depth 4
	mov	w8, #9271                       ; =0x2437
	cmp	w19, w8
	b.lo	LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_50 Depth=2
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	str	x19, [sp]
Lloh94:
	adrp	x0, l_.str.18@PAGE
Lloh95:
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	ldr	w19, [x23]
LBB0_52:                                ;   in Loop: Header=BB0_50 Depth=2
	sxtw	x9, w19
	ldrsb	w10, [x26, x9]
	and	w8, w10, #0xff
	str	w8, [x25]
	tbnz	w10, #31, LBB0_55
; %bb.53:                               ;   in Loop: Header=BB0_50 Depth=2
	add	x9, x9, x26
	ldrsb	w2, [x9, #1]
Lloh96:
	adrp	x9, _y@GOTPAGE
Lloh97:
	ldr	x9, [x9, _y@GOTPAGEOFF]
Lloh98:
	str	w2, [x9]
	add	w24, w2, w8
	str	w24, [x28]
	cmp	w2, #1
	b.lt	LBB0_48
; %bb.54:                               ;   in Loop: Header=BB0_50 Depth=2
	add	x0, x27, w8, uxtw
	mov	w1, #35                         ; =0x23
	bl	_memset
	str	w24, [x25]
	b	LBB0_48
LBB0_55:                                ;   in Loop: Header=BB0_50 Depth=2
	cmp	w8, #193
	b.lo	LBB0_57
; %bb.56:                               ;   in Loop: Header=BB0_50 Depth=2
Lloh99:
	adrp	x10, _term@GOTPAGE
Lloh100:
	ldr	x10, [x10, _term@GOTPAGEOFF]
	ldr	w9, [x10]
	add	w9, w9, #1
	str	w9, [x10]
LBB0_57:                                ;   in Loop: Header=BB0_50 Depth=2
	and	w9, w8, #0x3f
	sub	w8, w9, #1
	str	w8, [x25]
	cbz	w9, LBB0_69
; %bb.58:                               ;   in Loop: Header=BB0_50 Depth=2
	ldr	w9, [x20]
	b	LBB0_61
LBB0_59:                                ;   in Loop: Header=BB0_61 Depth=3
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	ldr	w9, [x20]
	ldr	w8, [x25]
LBB0_60:                                ;   in Loop: Header=BB0_61 Depth=3
	mov	x10, x8
	sub	w8, w8, #1
	str	w8, [x25]
	cbz	w10, LBB0_68
LBB0_61:                                ;   Parent Loop BB0_47 Depth=1
                                        ;     Parent Loop BB0_50 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_65 Depth 4
	add	w10, w9, #1
	str	w10, [x20]
	ldrb	w9, [x22, w9, sxtw]
	cbz	w9, LBB0_67
; %bb.62:                               ;   in Loop: Header=BB0_61 Depth=3
	str	wzr, [x21]
	ldr	w8, [x28]
	tbnz	w8, #31, LBB0_59
; %bb.63:                               ;   in Loop: Header=BB0_61 Depth=3
	mov	w9, #0                          ; =0x0
	b	LBB0_65
LBB0_64:                                ;   in Loop: Header=BB0_65 Depth=4
	add	w10, w9, #1
	str	w10, [x21]
	cmp	w9, w8
	mov	x9, x10
	b.ge	LBB0_59
LBB0_65:                                ;   Parent Loop BB0_47 Depth=1
                                        ;     Parent Loop BB0_50 Depth=2
                                        ;       Parent Loop BB0_61 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	sxtw	x10, w9
	ldrb	w11, [x22, x10]
	cbz	w11, LBB0_64
; %bb.66:                               ;   in Loop: Header=BB0_65 Depth=4
	ldrsb	w0, [x27, x10]
	bl	_libmin_putc
	ldr	w9, [x21]
	ldr	w8, [x28]
	b	LBB0_64
LBB0_67:                                ;   in Loop: Header=BB0_61 Depth=3
	mov	x9, x10
	b	LBB0_60
LBB0_68:                                ;   in Loop: Header=BB0_50 Depth=2
	ldr	w19, [x23]
LBB0_69:                                ;   in Loop: Header=BB0_50 Depth=2
	mov	w8, #538976288                  ; =0x20202020
	str	w8, [x27, #128]
	movi.16b	v0, #32
	stp	q0, q0, [x27, #96]
	stp	q0, q0, [x27, #64]
	stp	q0, q0, [x27, #32]
	stp	q0, q0, [x27]
	add	w19, w19, #1
	mov	w8, #132                        ; =0x84
	str	w8, [x21]
	b	LBB0_49
LBB0_70:
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
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh65, Lloh66
	.loh AdrpLdrGot	Lloh63, Lloh64
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh59, Lloh60
	.loh AdrpLdrGot	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpLdrGot	Lloh73, Lloh74
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpLdrGotLdr	Lloh81, Lloh82, Lloh83
	.loh AdrpLdrGot	Lloh79, Lloh80
	.loh AdrpLdrGotStr	Lloh88, Lloh89, Lloh90
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh84, Lloh85
	.loh AdrpLdrGotLdr	Lloh91, Lloh92, Lloh93
	.loh AdrpAdd	Lloh94, Lloh95
	.loh AdrpLdrGotStr	Lloh96, Lloh97, Lloh98
	.loh AdrpLdrGot	Lloh99, Lloh100
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	_asc_ptr                        ; @asc_ptr
	.p2align	2, 0x0
_asc_ptr:
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	3                               ; 0x3
	.long	50                              ; 0x32
	.long	81                              ; 0x51
	.long	104                             ; 0x68
	.long	281                             ; 0x119
	.long	483                             ; 0x1e3
	.long	590                             ; 0x24e
	.long	621                             ; 0x26d
	.long	685                             ; 0x2ad
	.long	749                             ; 0x2ed
	.long	851                             ; 0x353
	.long	862                             ; 0x35e
	.long	893                             ; 0x37d
	.long	898                             ; 0x382
	.long	921                             ; 0x399
	.long	1019                            ; 0x3fb
	.long	1150                            ; 0x47e
	.long	1200                            ; 0x4b0
	.long	1419                            ; 0x58b
	.long	1599                            ; 0x63f
	.long	1744                            ; 0x6d0
	.long	1934                            ; 0x78e
	.long	2111                            ; 0x83f
	.long	2235                            ; 0x8bb
	.long	2445                            ; 0x98d
	.long	2622                            ; 0xa3e
	.long	2659                            ; 0xa63
	.long	0                               ; 0x0
	.long	2708                            ; 0xa94
	.long	0                               ; 0x0
	.long	2715                            ; 0xa9b
	.long	2857                            ; 0xb29
	.long	3072                            ; 0xc00
	.long	3273                            ; 0xcc9
	.long	3403                            ; 0xd4b
	.long	3560                            ; 0xde8
	.long	3662                            ; 0xe4e
	.long	3730                            ; 0xe92
	.long	3785                            ; 0xec9
	.long	3965                            ; 0xf7d
	.long	4000                            ; 0xfa0
	.long	4015                            ; 0xfaf
	.long	4115                            ; 0x1013
	.long	4281                            ; 0x10b9
	.long	4314                            ; 0x10da
	.long	4432                            ; 0x1150
	.long	4548                            ; 0x11c4
	.long	4709                            ; 0x1265
	.long	4790                            ; 0x12b6
	.long	4999                            ; 0x1387
	.long	5188                            ; 0x1444
	.long	5397                            ; 0x1515
	.long	5448                            ; 0x1548
	.long	5576                            ; 0x15c8
	.long	5710                            ; 0x164e
	.long	5892                            ; 0x1704
	.long	6106                            ; 0x17da
	.long	6257                            ; 0x1871
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	50                              ; 0x32
	.long	6503                            ; 0x1967
	.long	6642                            ; 0x19f2
	.long	6733                            ; 0x1a4d
	.long	6837                            ; 0x1ab5
	.long	6930                            ; 0x1b12
	.long	7073                            ; 0x1ba1
	.long	7157                            ; 0x1bf5
	.long	7380                            ; 0x1cd4
	.long	7452                            ; 0x1d1c
	.long	7499                            ; 0x1d4b
	.long	7584                            ; 0x1da0
	.long	7689                            ; 0x1e09
	.long	7702                            ; 0x1e16
	.long	7797                            ; 0x1e75
	.long	7869                            ; 0x1ebd
	.long	7978                            ; 0x1f2a
	.long	8069                            ; 0x1f85
	.long	8160                            ; 0x1fe0
	.long	8222                            ; 0x201e
	.long	8381                            ; 0x20bd
	.long	8442                            ; 0x20fa
	.long	8508                            ; 0x213c
	.long	8605                            ; 0x219d
	.long	8732                            ; 0x221c
	.long	8888                            ; 0x22b8
	.long	9016                            ; 0x2338
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0
	.long	0                               ; 0x0

	.globl	_data_table                     ; @data_table
_data_table:
	.ascii	"\201\343\202\"\006Z\023\201 \nJ(\201\037\f@5\201\036\0166A\201\036\0165C\201\036\0166A\201\037\f@5\201 \nJ(\201\"\006Z\023\201\302\202c\t\201a\016\201`\022\201_\026\201_\020u\002\201_\016\201`\013\201a\t\201c\006\201\302\201W\004e\004\203R\034\203W\004e\004\205R\034\203W\004e\004\203\301\201'\001T\033\201&\003Q \201%\005O#\201$\005M&\201#\005L(\201\"\005K\025g\016\201!\005J\023k\013\201 \005I\021n\t\201 \004I\020p\007\201\037\004H\017r\006\201\037\004H\016s\005\201\036\004G\017t\005\201\033a\203\036\004E\016u\004\201\036\004D\017u\004\204\036\004D\016u\004\201\033a\203\036\005A\017t\005\201\037\004A\016t\004\201\037\006@\017t\004\201 \007>\020s\004\201 \t=\021r\005\201!\013:\023q\005\201\"\0167\025p\005\201#(o\005\201$&n\005\201%#m\005\201& n\003\201(\033o\001\201\301\201\036\004g\t\201\036\007d\017\201\036\nc\021\201!\na\006p\006\201$\n`\005r\005\201'\n`\004s\004\201*\n_\004t\004\201-\n_\003u\003\2010\n_\003u\003\2013\n_\004t\004\2016\n`\004s\004\2019\n`\005r\005\201<\na\006p\006\201?\nc\021\201B\nd\017\201E\ng\t\201'\tH\n\201$\017K\n\201#\021N\n\201!\0060\006Q\n\201 \0052\005T\n\201 \0043\004W\n\201\037\0044\004Z\n\201\037\0035\003]\n\201\037\0035\003`\n\201\037\0044\004c\n\201 \0043\004f\n\201 \0052\005i\n\201!\0060\006l\n\201#\021o\n\201$\017r\007\201(\tv\004\201\301\2010\022\201+\034\201) \201'$\201%(\201#,\201\".\201!\rD\r\201 \tI\t\201 \007K\007\201\037\006M\006\201\037\005N\005\201\036\005O\005\201\024J\204\036\004P\004\201\037\003O\004\201\037\004O\004\201 \003N\004\201 \004L\006\201!\004J\007\201\"\004H\b\201#\005H\007\201%\005I\004\201'\004J\001\201\201\301\202o\006\201m\n\201l\f\201k\016\201a\002i\020\201c\026\201f\022\201i\016\201l\t\201\302\202?\031\2019%\2014/\20107\201,?\201)E\201&K\201$O\201\"S\201!\034Z\034\201 \027`\027\201 \021f\021\201\037\rk\r\201\036\tp\t\201\036\005t\005\201\036\001x\001\201\302\202\036\001x\001\201\036\005t\005\201\036\tp\t\201\037\rk\r\201 \021f\021\201 \027`\027\201!\034Z\034\201\"S\201$O\201&K\201)E\201,?\20107\2014/\2019%\201?\031\201\302\201P\004\202P\004\201D\002P\004^\002\201B\006P\004\\\006\201C\007P\004Z\007\201E\007P\004X\007\201G\006P\004W\006\201H\024\201J\020\201L\f\201>(\203L\f\201J\020\201H\024\201G\006P\004W\006\201E\007P\004X\007\201C\007P\004Z\007\201B\006P\004\\\006\201D\002P\004^\002\201P\004\202\301\201<\004\213)*\203<\004\213\301\202\"\006\201 \n\201\037\f\201\036\016\201\024\002\034\020\201\026\026\201\030\023\201\033\017\201\037\t\201\302\201<\004\230\301\202\"\006\201 \n\201\037\f\201\036\016\203\037\f\201 \n\201\"\006\201\302\201\036\004\201\036\007\201\036\n\201!\n\201$\n\201'\n\201*\n\201-\n\2010\n\2013\n\2016\n\2019\n\201<\n\201?\n\201B\n\201E\n\201H\n\201K\n\201N\n\201Q\n\201T\n\201W\n\201Z\n\201]\n\201`\n\201c\n\201f\n\201i\n\201l\n\201o\n\201r\007\201u\004\201\301\201<\037\2015-\20115\201.;\201+A\201)E\201'I\201%M\201$O\201#\017e\017\201\"\013j\013\201!\tm\t\201 \007p\007\201\037\006r\006\201\037\005s\005\201\036\005t\005\201\036\004u\004\204\036\005t\005\201\037\005s\005\201\037\006r\006\201 \007p\007\201!\tm\t\201\"\013j\013\201#\017e\017\201$O\201%M\201'I\201)E\201+A\201.;\20115\2015-\201<\037\201\301\201\036\004\201\036\004d\001\201\036\004d\003\201\036\004d\005\201\036L\201\036N\201\036P\201\036R\201\036S\201\036U\201\036W\201\036Y\201\036[\201\036\004\204\301\201\036\003\201\036\007\201\036\np\001\201\036\rp\002\201\036\020p\003\201\036\022o\005\201\036\025o\006\201\036\027p\006\201\036\016/\bq\006\201\036\0161\br\005\201\036\0163\bs\005\201\036\0165\bt\004\201\036\0167\bt\005\201\036\0168\tu\004\201\036\0169\tu\004\201\036\016:\nu\004\201\036\016;\nu\004\201\036\016<\013u\004\201\036\016=\013t\005\201\036\016>\013t\005\201\036\016?\fs\006\201\036\016@\rr\007\201\036\016A\rq\b\201\036\016A\017o\t\201\036\016B\020m\013\201\036\016C\021k\f\201\036\016D\024g\020\201\036\016E1\201\036\016F/\201\036\016G-\201\036\016I*\201\036\017K&\201!\fM\"\201$\nO\036\201(\006R\027\201,\003V\017\201/\001\201\301\201\201&\003\201%\005o\001\201$\007o\002\201#\tn\005\201\"\bn\006\201!\007m\b\201 \007n\b\201 \006p\007\201\037\006q\006\201\037\005r\006\201\036\005s\005\201\036\005t\004\201\036\004u\004\203\036\004u\004\201\036\004O\002u\004\201\036\005N\004u\004\201\036\005M\006t\005\201\036\006L\bs\006\201\036\007K\013r\006\201\036\bI\017p\b\201\037\tG\023n\t\201\037\013D\032k\f\201 \rA\016R$\201 \020=\021S\"\201!,T \201\"*U\036\201#(W\033\201$&Y\027\201&\"\\\021\201(\036_\013\201*\032\201-\024\2011\013\201\301\2011\001\2011\004\2011\006\2011\b\2011\n\2011\f\2011\016\2011\021\2011\023\2011\025\2011\027\2011\016A\t\2011\016C\t\2011\016E\t\2011\016G\n\2011\016J\t\2011\016L\t\2011\016N\t\2011\016P\t\2011\016R\t\2011\016T\t\201\036\0041\016V\n\201\036\0041\016Y\t\201\036\0041\016[\t\201\036\0041\016]\t\201\036J\201\036L\201\036N\201\036Q\201\036S\201\036U\201\036W\201\036Y\201\036[\201\036\0041\016\204\301\201%\001\201$\003M\003\201#\005N\013\201\"\007N\025\201!\007O\035\201 \007O&\201 \006P\004\\\035\201\037\006P\005f\023\201\037\005P\006k\016\201\037\004Q\005k\016\201\036\005Q\006k\016\201\036\004Q\006k\016\202\036\004Q\007k\016\201\036\004P\bk\016\202\036\005P\bk\016\201\036\005O\tk\016\201\037\005O\tk\016\201\037\006N\nk\016\201 \006L\013k\016\201 \bJ\rk\016\201!\nG\020k\016\201!\017C\023k\016\201\"3k\016\201#1k\016\201$/k\016\201%-k\016\201')k\016\201)%k\016\201, k\016\201/\031o\n\2013\020s\006\201w\002\201\301\2018'\20131\201/9\201,?\201*C\201(G\201&K\201%M\201#Q\201\"\020J\005e\020\201!\013L\005k\013\201 \tM\005n\t\201 \007O\004p\007\201\037\006P\004r\006\201\037\005Q\004s\005\201\036\005R\004t\005\201\036\004R\004t\005\201\036\004R\005u\004\203\036\005R\005u\004\201\037\005Q\006u\004\201\037\006P\007u\004\201 \007O\bu\004\201 \tM\tt\005\201!\013K\013t\004\201\"\020E\020s\005\201#1r\005\201%.q\005\201&,p\006\201()p\005\201*%q\003\201,!r\001\201/\033\2013\021\201\301\201g\002\201g\006\201h\t\201i\f\201j\017\201k\016\207\036\nk\016\201\036\021k\016\201\036\031k\016\201\036\037k\016\201\036%k\016\201\036*k\016\201\036.k\016\201\0362k\016\201\0366k\016\201\036:k\016\201; k\016\201@\036k\016\201J\027k\016\201Q\022k\016\201V\020k\016\201[\016k\016\201`\031\201d\025\201h\021\201k\016\201o\n\201r\007\201u\004\201x\001\201\301\2010\r\201,\025\201*\032\201(\036\\\f\201&\"X\024\201$%V\031\201#'T\035\201\"\r?\fR!\201!\013C\tP$\201 \tF\007O&\201\037\bH.\201\036\007J\026l\013\201\036\006K\023o\t\201\036\005K\021q\007\201\036\005J\020r\006\201\036\004I\020s\006\201\036\004H\020t\005\201\036\004H\017u\004\201\036\004G\020u\004\201\036\005F\020u\004\201\036\005F\017u\004\201\036\006E\017t\005\201\036\007D\021s\005\201\036\tC\023r\006\201\036\nA\026q\006\201\037\f?\033n\t\201 \016<\025T\tj\f\201!/U \201\"-V\036\201#+X\032\201$(Z\026\201&$]\021\201( `\n\201*\034\201,\027\2010\017\201\301\201S\021\201M\033\201$\001J!\201#\003H%\201\"\005F)\201!\006E,\201!\005D.\201 \005C1\201\037\005B\021e\020\201\037\005B\013l\n\201\036\004A\tn\t\201\036\004@\bp\007\201\036\004@\007r\006\201\036\004@\006s\005\201\036\004@\005t\005\201\036\004@\005u\004\203\036\004A\004u\004\201\036\005A\004t\005\201\037\005B\004s\005\201\037\006C\004r\006\201 \007D\004p\007\201 \tE\005n\t\201!\013F\005k\013\201\"\020H\005e\020\201#Q\201%M\201&K\201(G\201*C\201,?\201/9\20131\2018'\201\301\202\"\006J\006\201 \nH\n\201\037\fG\f\201\036\016F\016\203\037\fG\f\201 \nH\n\201\"\006J\006\201\302\202\"\006J\006\201 \nH\n\201\037\fG\f\201\036\016F\016\201\024\002\034\020F\016\201\026\026F\016\201\030\023G\f\201\033\017H\n\201\037\tJ\006\201\302\2015\004?\004\230\301\202c\007\201a\r\201`\020\201`\022\201`\023\201a\023\201c\006n\007\201p\006\201r\005\201\"\0069\005s\004\201 \n6\ft\004\201\037\f5\020u\003\201\036\0164\024u\004\201\036\0164\027u\004\201\036\0164\031u\004\201\037\f4\033u\004\201 \n5\nF\013t\005\201\"\0067\005I\ns\006\201J\013r\007\201K\fp\t\201L\rn\n\201M\020j\016\201N)\201P&\201Q$\201R\"\201T\036\201V\032\201X\026\201\\\016\201\302\2017\017\2012\031\201/ \201-\rF\f\201+\tL\n\201*\006O\b\201)\005Q\007\201(\004T\006\201'\004;\fU\006\201&\0047\023W\005\201%\0045\027X\004\201$\0043\bG\006Y\004\201$\0043\006I\004Y\004\201$\0042\006J\004Z\003\201#\0042\005K\003Z\004\201#\0042\004K\004Z\004\203#\0042\005K\004Z\004\201$\0043\005K\004Z\004\201$\0043\006K\004Z\004\201$\0045\032Z\004\201%\0046\031Z\004\201%\0044\033Z\003\201&\0044\004Y\004\201'\0043\004X\004\201(\0042\004W\005\201)\0042\004V\005\201*\0042\004U\005\201+\0032\004S\006\201,\0023\005P\007\201.\0014\006L\t\2016\034\2018\027\201<\020\201\301\201\036\004\204\036\005\201\036\b\201\036\f\201\036\020\201\036\004%\f\201\036\004)\f\201\036\004,\r\201\036\0040\r\2014\r\2018\f\201:\016\201:\004@\f\201:\004D\f\201:\004H\f\201:\004K\r\201:\004O\r\201:\004S\r\201:\004W\r\201:\004[\f\201:\004_\f\201:\004`\017\201:\004]\026\201:\004Y\036\201:\004U$\201:\004Q&\201:\004M&\201:\004I&\201:\004F%\201:\004B%\201:)\201:%\2016&\201\036\0042&\201\036\004.&\201\036\004*&\201\036\004&'\201\036+\201\036'\201\036#\201\036\037\201\036\033\201\036\030\201\036\024\201\036\020\201\036\f\201\036\b\201\036\005\201\036\004\204\301\201\036\004u\004\204\036[\211\036\004P\004u\004\212\036\004P\005t\005\201\036\005O\006t\005\202\036\006N\bs\006\201\037\006M\ts\006\201\037\007L\013r\006\201\037\bK\016p\b\201 \bJ\020o\t\201 \tI\023m\n\201!\nG\030j\r\201!\rD\fS#\201\"\020@\017T!\201#+U\037\201$)V\035\201%'X\031\201&%Z\025\201(!]\017\201*\035`\t\201-\030\2011\020\201\301\201?\031\2019%\2015-\20123\201/9\201-=\201+A\201)E\201'I\201&\031\\\025\201$\025a\022\201#\022f\016\201\"\020j\013\201!\016l\n\201 \fo\b\201 \nq\006\201\037\nr\006\201\037\bs\005\201\036\bt\005\201\036\007t\005\201\036\006u\004\202\036\005u\004\203\037\004t\005\201 \004t\004\201 \005s\005\201!\004r\005\201\"\004p\006\201#\004n\007\201%\004k\t\201'\004g\f\201)\004g\022\201+\004g\022\201-\005g\022\2010\005g\022\2013\001\201\301\201\036\004u\004\204\036[\211\036\004u\004\207\036\005t\005\202\036\006s\006\202\037\006r\006\201\037\007q\007\201 \007p\007\201 \bo\b\201!\tm\t\201!\fj\f\201\"\rh\r\201#\017e\017\201$\023`\023\201%\030Z\030\201'I\201(G\201*C\201,?\201.;\20115\2014/\2018'\201=\035\201\301\201\036\004u\004\204\036[\211\036\004P\004u\004\214\036\004O\006u\004\201\036\004M\nu\004\201\036\004I\022u\004\204\036\004u\004\202\036\005t\005\202\036\007r\007\201\036\bq\b\201\036\013n\013\201\036\022g\022\204\301\201\036\004u\004\204\036[\211\036\004P\004u\004\204P\004u\004\210O\006u\004\201M\nu\004\201I\022u\004\204u\004\202t\005\202r\007\201q\b\201n\013\201g\022\204\301\201?\031\2019%\2015-\20123\201/9\201-=\201+A\201)E\201'I\201&\031\\\025\201$\025a\022\201#\022f\016\201\"\020j\013\201!\016l\n\201 \fo\b\201 \nq\006\201\037\nr\006\201\037\bs\005\201\036\bt\005\201\036\007t\005\201\036\006u\004\202\036\005u\004\203\036\005K\004t\005\201\037\005K\004t\004\201\037\006K\004s\005\201 \007K\004r\005\201 \tK\004p\006\201!\013K\004n\007\201\"\017K\004k\t\201#,g\f\201$+g\022\201&)g\022\201'(g\022\201)&g\022\201,#\2010\037\2014\033\201=\022\201\301\201\036\004u\004\204\036[\211\036\004P\004u\004\204P\004\214\036\004P\004u\004\204\036[\211\036\004u\004\204\301\201\036\004u\004\204\036[\211\036\004u\004\204\301\201,\007\201(\r\201%\021\201#\024\201\"\026\201!\027\201 \030\201 \027\201\037\006)\r\201\037\005*\013\201\036\005,\007\201\036\004\204\036\005\202\037\005\201\037\006u\004\201\037\bu\004\201 \tu\004\201!\013u\004\201\"W\201#V\201$U\201%T\201&S\201(Q\201*O\201-L\2012G\201u\004\204\301\201\036\004u\004\204\036[\211\036\004L\bu\004\201\036\004I\ru\004\201\036\004F\022u\004\201\036\004C\027u\004\201A\032\201>\037\201;#\2018\035Y\007\2015\035[\007\2012\035]\007\201/\035_\006\201\036\004-\035`\007\201\036\004*\035b\007\201\036\004'\036d\006\201\036\004$\036e\007\201\036!g\007u\004\201\036\036i\006u\004\201\036\033j\007u\004\201\036\031l\007u\004\201\036\026n\013\201\036\023o\n\201\036\020q\b\201\036\rs\006\201\036\013t\005\201\036\bu\004\201\036\005u\004\201\036\004u\004\202\036\004\202\301\201\036\004u\004\204\036[\211\036\004u\004\204\036\004\220\036\005\202\036\007\201\036\b\201\036\013\201\036\022\204\301\201\036\004u\004\204\036[\204\036\004g\022\201\036\004a\030\201\036\004\\\035\201\036\004W\"\201Q(\201L-\201F1\201A1\201<1\20171\20120\201,1\201'0\201!1\201\036/\201\"%\201(\032\201.\023\2014\023\201:\023\201@\023\201F\023\201L\023\201R\023\201\036\004X\022\201\036\004^\022\201\036\004d\022\201\036\004j\017\201\036[\211\036\004u\004\204\301\201\036\004u\004\204\036[\204\036\004k\016\201\036\004h\021\201\036\004e\024\201\036\004c\026\201`\031\201]\034\201[\034\201X\035\201U\035\201R\035\201O\035\201L\035\201J\035\201G\035\201D\035\201A\035\201>\035\201<\035\2019\035\2016\035\2013\035\2011\034\201.\035\201+\035\201(\035u\004\201%\035u\004\201#\035u\004\201 \035u\004\201\036[\204u\004\204\301\201?\031\2019%\2015-\20123\201/9\201-=\201+A\201)E\201'I\201&\025\\\025\201$\022a\022\201#\016f\016\201\"\013j\013\201!\nl\n\201 \bo\b\201 \006q\006\201\037\006r\006\201\037\005s\005\201\036\005t\005\202\036\004u\004\204\036\005t\005\202\037\005s\005\201\037\006r\006\201 \006q\006\201 \bo\b\201!\nl\n\201\"\013j\013\201#\016f\016\201$\022a\022\201&\025\\\025\201'I\201)E\201+A\201-=\201/9\20123\2015-\2019%\201?\031\201\301\201\036\004u\004\204\036[\211\036\004P\004u\004\204P\004u\004\206P\005t\005\203P\006s\006\202Q\006r\006\201Q\bp\b\201Q\to\t\201R\nm\n\201R\rj\r\201S#\201T!\201U\037\201V\035\201X\031\201Z\025\201]\017\201`\t\201\301\201?\031\2019%\2015-\20123\201/9\201-=\201+A\201)E\201'I\201&\025\\\025\201$\022a\022\201#\016f\016\201\"\013j\013\201!\nl\n\201 \bo\b\201 \006q\006\201\037\006r\006\201\037\005s\005\201\036\005t\005\202\036\004'\002u\004\201\036\004(\004u\004\201\036\004)\005u\004\201\036\004)\006u\004\201\036\005(\bt\005\201\036\005'\nt\005\201\037\005&\013s\005\201\037\022r\006\201 \021q\006\201 \020o\b\201!\017l\n\201!\016j\013\201 \021f\016\201\037\027a\022\201\037\034\\\025\201\036R\201\036P\201\036\013+A\201\036\n-=\201\037\b/9\201 \00623\201!\0055-\201#\0049%\201&\002?\031\201\301\201\036\004u\004\204\036[\211\036\004L\bu\004\201\036\004I\013u\004\201\036\004F\016u\004\201\036\004C\021u\004\201A\023u\004\201>\026u\004\201;\031u\004\2018\034u\004\2015\037u\004\2012\"u\004\201/\035P\005t\005\201\036\004-\035P\005t\005\201\036\004*\035P\005t\005\201\036\004'\036P\006s\006\201\036\004$\036P\006s\006\201\036!Q\006r\006\201\036\036Q\bp\b\201\036\033Q\to\t\201\036\031R\nm\n\201\036\026R\rj\r\201\036\023S#\201\036\020T!\201\036\rU\037\201\036\013V\035\201\036\bX\031\201\036\005Z\025\201\036\004]\017\201\036\004`\t\201\036\004\202\301\201\036\022\202\036\022Y\017\201\036\022U\027\201\"\013S\033\201\"\tQ\037\201!\bO#\201!\006N\020j\t\201 \006M\017m\007\201 \005L\016o\006\201\037\005K\016q\005\201\037\004J\017r\005\201\037\004J\016s\004\201\036\004I\017t\004\201\036\004I\016t\004\201\036\004I\016u\004\201\036\004H\017u\004\202\036\004G\017u\004\202\036\004F\017u\004\201\036\005F\017u\004\201\036\005E\017t\005\201\036\006D\020s\005\201\037\006C\020r\006\201\037\007B\021q\006\201 \007@\022o\b\201 \b>\023m\t\201!\t<\024k\n\201\"\0139\026g\r\201#+g\022\201$)g\022\201&&g\022\201'#g\022\201)\037\201+\033\201.\026\2011\016\201\301\201g\022\204n\013\201q\b\201r\007\201t\005\202u\004\204\036\004u\004\204\036[\211\036\004u\004\204u\004\204t\005\202r\007\201q\b\201n\013\201g\022\204\301\201u\004\2048A\2012G\201.K\201,M\201*O\201(Q\201&S\201$U\201#V\201\"\024u\004\201!\021u\004\201 \017u\004\201 \ru\004\201\037\f\201\037\n\201\037\t\201\036\t\201\036\b\202\036\007\204\037\006\202\037\007\201 \006\201 \007\201!\007\201\"\007\201#\b\201$\tu\004\201&\tu\004\201(\nu\004\201*\fu\004\201,M\201.K\2012G\2018+d\025\201u\004\204\301\201u\004\204s\006\201n\013\201i\020\201e\024\201`\031\201\\\035\201W\"\201S&\201N+\201J/\201F*u\004\201A*u\004\201<+u\004\2018*\2013*\201.+\201*+\201%,\201!+\201\036*\201!\"\201&\031\201*\020\201/\017\2014\017\2019\017\201=\020\201B\020\201G\020\201L\020\201P\020\201U\020u\004\201Z\020u\004\201_\020u\004\201d\025\201i\020\201n\013\201r\007\201u\004\204\301\201u\004\204s\006\201n\013\201i\020\201e\024\201`\031\201\\\035\201W\"\201S&\201N+\201J/\201F*u\004\201A*u\004\201<+u\004\2018*\2013*\201.+\201*+\201%,\201!+\201\036*\201!\"\201&\031\201*\020\201/\017\2014\017\2019\017\201=\020\201A\021\201<\033\2018$\2013*\201.+\201*+\201%,\201!+\201\036*\201!\"\201&\031\201*\020\201/\017\2014\017\2019\017\201=\020\201B\020\201G\020\201L\020\201P\020\201U\020u\004\201Z\020u\004\201_\020u\004\201d\025\201i\020\201n\013\201r\007\201u\004\204\301\201\036\004u\004\204\036\004s\006\201\036\004p\t\201\036\006m\f\201\036\tj\017\201\036\013g\022\201\036\016d\025\201\036\004&\tb\027\201\036\004(\n_\032\201\036\004+\t\\\035\201.\tY \2011\bV\034u\004\2013\tS\034u\004\2016\tP\034u\004\2019\bM\034u\004\201;\tJ\034\201>%\201@!\201B\034\201?\034\201<\034\2019\034\2016!\2013'\2010\035S\t\201\036\004-\035V\t\201\036\004*\035Y\t\201\036\004'\035\\\b\201\036\004$\035^\t\201\036 a\t\201\036\035d\bu\004\201\036\032g\bu\004\201\036\027i\tu\004\201\036\024l\r\201\036\022o\n\201\036\017q\b\201\036\ft\005\201\036\tu\004\201\036\006u\004\201\036\004u\004\204\301\201u\004\204r\007\201o\n\201l\r\201i\020\201f\023\201d\025\201`\031\201]\034\201Z\037\201W\"\201T\036u\004\201\036\004Q\036u\004\201\036\004N\036u\004\201\036\004K\036u\004\201\036\004H\036\201\036E\201\036B\201\036?\201\036<\201\0369\201\0366\201\0363\201\0360\201\0363\201\036\004I\f\201\036\004L\f\201\036\004P\f\201\036\004S\f\201W\f\201Z\fu\004\201^\013u\004\201a\fu\004\201e\fu\004\201h\021\201l\r\201o\n\201s\006\201u\004\206\301\201\036\001g\022\201\036\004g\022\201\036\007g\022\201\036\tg\022\201\036\fn\013\201\036\017q\b\201\036\022r\007\201\036\025t\005\201\036\030t\005\201\036\033u\004\201\036\036u\004\201\036!u\004\201\036\004%\034u\004\201\036\004(\034u\004\201\036\004*\035u\004\201\036\004-\035u\004\201\036\0040\035u\004\201\036\0043\035u\004\201\036\0046\035u\004\201\036\0049\035u\004\201\036\004;\036u\004\201\036\004>\036u\004\201\036\004A\036u\004\201\036\004D\036u\004\201\036\004G\036u\004\201\036\004J\036u\004\201\036\004M\036u\004\201\036\004P\036u\004\201\036\004S\036u\004\201\036\004V#\201\036\004Y \201\036\004[\036\201\036\004^\033\201\036\005a\030\201\036\005d\025\201\036\007g\022\201\036\bj\017\201\036\013m\f\201\036\022p\t\201\036\022s\006\201\036\022u\004\201\036\022x\001\201\301\201*\b\201&\020\201$\024\201\"\030G\005\201!\032E\n\201 \034D\r\201\037\036D\016\201\037\t4\tD\017\201\036\b6\bE\016\201\036\0077\007G\004N\006\201\036\0068\006O\005\201\036\0068\006P\004\202\037\0058\005P\004\201\037\0058\005O\005\201 \0057\005N\006\201!\0056\005M\007\201\"\0064\006J\t\201#0\201!1\201 1\201\0371\201\0361\201\036/\201\036-\201\036)\201\036\006\201\036\004\201\036\003\201\036\002\201\301\201\036\004u\004\202\037Z\210%\005H\005\201#\005J\005\201!\005L\005\201 \005M\005\201\037\005N\005\201\037\004O\004\201\036\005O\005\203\036\006N\006\201\036\007M\007\201\037\bK\b\201\037\013H\013\201 \017C\017\201!0\201\".\201#,\201%(\201'$\201*\036\201.\026\201\301\2010\022\201+\034\201) \201'$\201%(\201#,\201\".\201!\rD\r\201 \tI\t\201 \007K\007\201\037\006M\006\201\037\005N\005\201\036\005O\005\201\036\004P\004\205\037\003O\004\201\037\004O\004\201 \003N\004\201 \004L\006\201!\004J\007\201\"\004H\b\201#\005H\007\201%\005I\004\201'\004J\001\201\201\301\201.\026\201*\036\201'$\201%(\201#,\201\".\201!0\201 \017C\017\201\037\013H\013\201\037\bK\b\201\036\007M\007\201\036\006N\006\201\036\005O\005\203\037\004O\004\201\037\005N\005\201 \005M\005\201!\005L\005\201#\005J\005u\004\201%\005H\005u\004\201\036[\210\036\004\202\301\2010\022\201+\034\201) \201'$\201%(\201#,\201\".\201!\r7\004D\r\201 \t7\004I\t\201 \0077\004K\007\201\037\0067\004M\006\201\037\0057\004N\005\201\036\0057\004O\005\201\036\0047\004P\004\204\036\0047\004O\005\201\037\0037\004N\005\201\037\0047\004M\006\201 \0037\004K\007\201 \0047\004I\t\201!\0047\004D\r\201\"\0047\031\201#\0057\030\201%\0057\026\201'\0047\024\2017\022\2017\020\2017\013\201\301\201P\004\201\036\004P\004\202\036N\201\036R\201\036U\201\036W\201\036X\201\036Y\201\036Z\202\036\004P\004s\006\201\036\004P\004u\004\201P\004i\006u\004\201P\004g\nt\005\201P\004f\023\201P\004e\023\201e\023\201e\022\201f\020\201g\f\201i\006\201\301\201\f\n;\013\201\t\0207\023\201\007\0245\027\201\006\007\027\005 \0063\033\201\004\007\031\0202\035\201\003\006\033\0201\037\201\002\006\034\0200!\201\001\006\033\022/#\201\001\006\033\037G\f\201\001\005\032\017,\nK\b\201\001\005\031\016-\007M\007\201\001\005\031\r-\005O\005\201\001\005\030\016-\004P\004\201\001\005\030\r-\004P\004\201\001\005\027\016-\004P\004\201\001\005\027\r-\004P\004\201\001\006\026\r-\005O\005\201\001\006\025\016-\007M\007\201\001\007\025\r.\bK\b\201\001\b\024\r.\fG\f\201\001\n\022\017/#\201\002\0360!\201\003\0351 \201\004\0332\037\201\005\0313\033P\002V\004\201\007\0255\027P\003U\006\201\t\0217\023P\f\201\f\f;\013Q\013\201R\n\201T\007\201V\004\201\301\201\036\004u\004\202\036[\210\036\004H\005\201\036\004J\005\201K\005\201L\005\201L\006\201M\006\202M\007\202L\b\201\036\004K\t\201\036\004H\f\201\0366\201\0365\202\0364\201\0363\201\0361\201\036.\201\036*\201\036\004\202\301\201\036\004P\004\201\036\004P\004d\006\201\0366b\n\201\0366a\f\201\0366`\016\203\0366a\f\201\0366b\n\201\0366d\006\201\036\004\202\301\201\007\006\201\004\013\201\003\r\201\002\016\201\001\017\202\001\003\006\t\201\001\003\007\006\201\001\003\202\001\004\201\001\005P\004\201\001\007P\004d\006\201\002Rb\n\201\003Qa\f\201\004P`\016\201\005O`\016\201\007M`\016\201\nJa\f\201\016Fb\n\201\023Ad\006\201\301\201\036\004u\004\202\036[\210\036\0049\t\201\036\0047\f\2014\021\2012\024\2010\030\201.\033\201,\025E\006\201)\026F\006P\004\201\036\004'\025H\006P\004\201\036\004$\026I\013\201\036\032K\t\201\036\027L\b\201\036\025N\006\201\036\023O\005\201\036\020P\004\201\036\016P\004\201\036\f\201\036\n\201\036\007\201\036\005\201\036\004\202\301\201\036\004u\004\202\036[\210\036\004\202\301\201\036\004P\004\202\0366\210\036\004H\005\201\036\004J\005\201K\005\201L\005\201\036\004K\007\201\036\004J\t\201\0366\204\0365\201\0364\201\0363\201\0360\201\036\004H\005\201\036\004J\005\201K\005\201L\005\201\036\004K\007\201\036\004J\t\201\0366\204\0365\201\0364\201\0363\201\0360\201\036\004\202\301\201\036\004P\004\202\0366\210\036\004H\005\201\036\004J\005\201K\005\201L\005\201L\006\201M\006\202M\007\202L\b\201\036\004K\t\201\036\004H\f\201\0366\201\0365\202\0364\201\0363\201\0361\201\036.\201\036*\201\036\004\202\301\2010\022\201+\034\201) \201'$\201%(\201#,\201\".\201!\rD\r\201 \tI\t\201 \007K\007\201\037\006M\006\201\037\005N\005\201\036\005O\005\201\036\004P\004\204\036\005O\005\202\037\005N\005\201\037\006M\006\201 \007K\007\201 \tI\t\201!\rD\r\201\".\201#,\201%(\201'$\201) \201+\034\2010\022\201\301\201\001\003P\004\202\001S\211%\005H\005\201#\005J\005\201!\005L\005\201 \005M\005\201\037\005N\005\201\037\004O\004\201\036\005O\005\203\036\006N\006\201\036\007M\007\201\037\bK\b\201\037\013H\013\201 \017C\017\201!0\201\".\201#,\201%(\201'$\201*\036\201.\026\201\301\201.\026\201*\036\201'$\201%(\201#,\201\".\201!0\201 \017C\017\201\037\013H\013\201\037\bK\b\201\036\007M\007\201\036\006N\006\201\036\005O\005\203\037\004O\004\201\037\005N\005\201 \005M\005\201!\005L\005\201#\005J\005\201%\005H\005\201\001S\210\001\003P\004\202\301\201\036\004P\004\202\0366\210\036\004D\006\201\036\004F\006\201G\007\201H\007\201I\007\201J\007\201J\b\201K\b\202E\017\201C\021\201B\022\201A\023\202A\022\202B\020\201C\r\201E\b\201\301\201\036\r@\b\201\036\r=\016\201\036\r;\022\201\036\r9\026\201!\b8\030\201 \0077\032\201 \0066\034\201\037\0065\020M\006\201\037\0055\016O\004\201\036\0054\016P\004\201\036\0054\rP\004\201\036\0044\rP\004\201\036\0044\fP\004\201\036\0043\rP\004\202\036\0042\rO\005\201\036\0042\rN\005\201\036\0051\016M\006\201\037\0041\rL\006\201\037\0050\016K\007\201 \005/\016I\b\201 \006-\020G\r\201!\033G\r\201\"\032G\r\201#\030G\r\201%\024\201'\020\201+\t\201\301\201P\004\203)8\201%<\201#>\201!@\201 A\201\037B\201\036C\202\036\013P\004\201\036\tP\004\201\036\bP\004\201\037\007P\004\201\037\006\201 \005\201!\005\201#\004\201&\003\201\301\201P\004\202**\201&.\201#1\201!3\201 4\201\0375\202\0366\201\036\f\201\036\t\201\036\b\201\036\007\202\037\006\202 \006\201!\005\201\"\005\201#\005P\004\201%\005P\004\201\0366\210\036\004\202\301\201P\004\202M\007\201J\n\201F\016\201B\022\201>\026\201;\031\2017\035\2013!\201/%\201, P\004\201( P\004\201$ \201 !\201\036\037\201!\030\201$\021\201(\f\201,\f\2010\f\2013\r\2017\r\201;\rP\004\201?\rP\004\201C\021\201G\r\201J\n\201N\006\201P\004\203\301\201P\004\202M\007\201J\n\201F\016\201B\022\201>\026\201;\031\2017\035\2013!\201/%\201, P\004\201( P\004\201$ \201 !\201\036\037\201!\030\201$\021\201(\f\201,\f\201/\r\201,\024\201(\034\201$\037\201  \201\036\036\201!\030\201$\021\201(\f\201,\f\2010\f\2013\r\2017\r\201;\rP\004\201?\rP\004\201C\021\201G\r\201J\n\201N\006\201P\004\203\301\201\036\004P\004\202\036\004O\005\201\036\005M\007\201\036\006J\n\201\036\bH\f\201\036\013E\017\201\036\rC\021\201\036\004%\b@\024\201\036\004'\b>\026\201)\b;\031\201+\b9\033\201-\b7\026P\004\201/\033P\004\2011\027\201/\026\201,\027\201*\026\201\036\004'\033\201\036\004%\037\201\036\033>\b\201\036\031@\b\201\036\026B\bP\004\201\036\024D\bP\004\201\036\021F\bP\004\201\036\017I\013\201\036\fK\t\201\036\nM\007\201\036\007O\005\201\036\005P\004\201\036\004P\004\202\301\201\004\005P\004\201\002\tP\004\201\001\013M\007\201\001\fJ\n\201\001\fF\016\201\001\fB\022\201\001\013>\026\201\002\t;\031\201\004\0137\035\201\007\f3!\201\n\f/%\201\016\f, P\004\201\021\r( P\004\201\025\r$ \201\031(\201\035 \201!\030\201$\021\201(\f\201,\f\2010\f\2013\r\2017\r\201;\rP\004\201?\rP\004\201C\021\201G\r\201J\n\201N\006\201P\004\203\301\201\036\001G\r\201\036\003G\r\201\036\006G\r\201\036\tK\t\201\036\013M\007\201\036\016O\005\201\036\021O\005\201\036\023P\004\201\036\026P\004\201\036\031P\004\201\036\033P\004\201\036\004$\030P\004\201\036\004&\031P\004\201\036\004)\030P\004\201\036\004,\030P\004\201\036\004.\031P\004\201\036\0041\031P\004\201\036\0044\030P\004\201\036\0046\036\201\036\0049\033\201\036\004;\031\201\036\004>\026\201\036\004A\023\201\036\005C\021\201\036\005F\016\201\036\007I\013\201\036\tL\b\201\036\rN\006\201\036\rQ\003\201\036\r\201\301\002\t;\031\201\004\0137\035\201\007\f3!\201\n\f/%\201\016\f, P\004\201\021\r( P\004\201\025\r$ \201\031(\201\035 \201!\030\201$\021\201(\f\201,\f\2010\f\2013\r\2017\r\201;\rP\004\201?\rP\004\201C\021\201G\r\201J\n\201N\006\201P\004\203\301"

	.section	__DATA,__data
	.globl	_width                          ; @width
	.p2align	2, 0x0
_width:
	.long	132                             ; 0x84

	.globl	_argc                           ; @argc
	.p2align	2, 0x0
_argc:
	.long	2                               ; 0x2

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"banner"

l_.str.1:                               ; @.str.1
	.asciz	"Come wit' it now!"

	.section	__DATA,__data
	.globl	__argv                          ; @_argv
	.p2align	3, 0x0
__argv:
	.quad	l_.str
	.quad	l_.str.1
	.quad	0

	.globl	_argv                           ; @argv
	.p2align	3, 0x0
_argv:
	.quad	__argv

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"w:tdh"

	.comm	_debug,4,2                      ; @debug
l_.str.3:                               ; @.str.3
	.asciz	"error: illegal argument for -w option\n"

l_.str.4:                               ; @.str.4
	.asciz	"usage: banner [-w width]\n"

	.comm	_i,4,2                          ; @i
	.comm	_j,4,2                          ; @j
	.comm	_print,132,0                    ; @print
	.comm	_message,1024,0                 ; @message
l_.str.5:                               ; @.str.5
	.asciz	" "

	.comm	_nchars,4,2                     ; @nchars
l_.str.6:                               ; @.str.6
	.asciz	"No message to print.\n"

l_.str.7:                               ; @.str.7
	.asciz	"int asc_ptr[128] = {\n"

l_.str.8:                               ; @.str.8
	.asciz	"%4d,   "

l_.str.9:                               ; @.str.9
	.asciz	"\n"

l_.str.10:                              ; @.str.10
	.asciz	"};\nchar data_table[NBYTES] = {\n"

l_.str.11:                              ; @.str.11
	.asciz	"  /*   "

l_.str.12:                              ; @.str.12
	.asciz	" %3d  "

l_.str.13:                              ; @.str.13
	.asciz	"   */\n"

l_.str.14:                              ; @.str.14
	.asciz	"/* %4d */  "

	.comm	_x,4,2                          ; @x
l_.str.15:                              ; @.str.15
	.asciz	" %3d, "

l_.str.16:                              ; @.str.16
	.asciz	"};\n"

l_.str.17:                              ; @.str.17
	.asciz	"The character is not in my character set\n"

	.comm	_line,132,0                     ; @line
	.comm	_pc,4,2                         ; @pc
	.comm	_term,4,2                       ; @term
	.comm	_max,4,2                        ; @max
	.comm	_linen,4,2                      ; @linen
l_.str.18:                              ; @.str.18
	.asciz	"bad pc: %d\n"

	.comm	_y,4,2                          ; @y
.subsections_via_symbols
