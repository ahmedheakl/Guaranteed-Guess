	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_quat_from_euler                ; -- Begin function quat_from_euler
	.p2align	2
_quat_from_euler:                       ; @quat_from_euler
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	.cfi_offset b12, -72
	.cfi_offset b13, -80
	cbz	x0, LBB0_2
; %bb.1:
	mov	x19, x0
	ldr	d0, [x0, #16]
	fmov	d13, #0.50000000
	fmul	d0, d0, d13
	bl	_libmin_cos
	fmov	d8, d0
	ldr	d0, [x19, #16]
	fmul	d0, d0, d13
	bl	_libmin_sin
	fmov	d9, d0
	ldr	d0, [x19, #8]
	fmul	d0, d0, d13
	bl	_libmin_cos
	fmov	d10, d0
	ldr	d0, [x19, #8]
	fmul	d0, d0, d13
	bl	_libmin_sin
	fmov	d11, d0
	ldr	d0, [x19]
	fmul	d0, d0, d13
	bl	_libmin_cos
	fmov	d12, d0
	ldr	d0, [x19]
	fmul	d0, d0, d13
	bl	_libmin_sin
	fmov	d1, d0
	fmul	d3, d10, d12
	fmul	d4, d11, d0
	fmul	d0, d9, d4
	fmadd	d0, d3, d8, d0
	fmul	d2, d10, d1
	fmul	d5, d11, d12
	fnmul	d1, d5, d9
	fmadd	d1, d2, d8, d1
	fmul	d2, d9, d2
	fmadd	d2, d5, d8, d2
	fnmul	d4, d4, d8
	fmadd	d3, d3, d9, d4
	b	LBB0_3
LBB0_2:
Lloh0:
	adrp	x8, l___func__.quat_from_euler@PAGE
Lloh1:
	add	x8, x8, l___func__.quat_from_euler@PAGEOFF
	str	x8, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	movi	d0, #0000000000000000
	movi	d1, #0000000000000000
	movi	d2, #0000000000000000
	movi	d3, #0000000000000000
LBB0_3:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_euler_from_quat                ; -- Begin function euler_from_quat
	.p2align	2
_euler_from_quat:                       ; @euler_from_quat
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	cbz	x0, LBB1_2
; %bb.1:
	mov	x19, x0
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x0, #16]
	fmul	d3, d2, d3
	fmadd	d0, d0, d1, d3
	fadd	d0, d0, d0
	fmul	d2, d2, d2
	fmadd	d1, d1, d1, d2
	fmov	d10, #1.00000000
	fmov	d11, #-2.00000000
	fmadd	d1, d1, d11, d10
	bl	_libmin_atan2
	fmov	d8, d0
	ldp	d0, d1, [x19]
	ldp	d2, d3, [x19, #16]
	fmul	d1, d1, d3
	fmadd	d0, d0, d2, d1
	fadd	d0, d0, d0
	bl	_libmin_asin
	fmov	d9, d0
	ldp	d0, d1, [x19]
	ldp	d3, d2, [x19, #16]
	fmul	d1, d1, d3
	fmadd	d0, d0, d2, d1
	fadd	d0, d0, d0
	fmul	d1, d2, d2
	fmadd	d1, d3, d3, d1
	fmadd	d1, d1, d11, d10
	bl	_libmin_atan2
	fmov	d2, d0
	b	LBB1_3
LBB1_2:
Lloh4:
	adrp	x8, l___func__.euler_from_quat@PAGE
Lloh5:
	add	x8, x8, l___func__.euler_from_quat@PAGEOFF
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str@PAGE
Lloh7:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	movi	d9, #0000000000000000
	movi	d2, #0000000000000000
	movi	d8, #0000000000000000
LBB1_3:
	fmov	d0, d8
	fmov	d1, d9
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.globl	_quaternion_multiply            ; -- Begin function quaternion_multiply
	.p2align	2
_quaternion_multiply:                   ; @quaternion_multiply
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	cbz	x0, LBB2_3
; %bb.1:
	cbz	x1, LBB2_3
; %bb.2:
	ldp	d3, d4, [x0]
	ldp	d5, d6, [x1]
	fnmul	d0, d4, d6
	fmadd	d0, d3, d5, d0
	ldp	d7, d16, [x0, #16]
	ldp	d17, d18, [x1, #16]
	fmsub	d0, d7, d17, d0
	fmsub	d0, d16, d18, d0
	fmul	d1, d5, d4
	fmadd	d1, d3, d6, d1
	fmadd	d1, d7, d18, d1
	fmsub	d1, d16, d17, d1
	fnmul	d2, d4, d18
	fmadd	d2, d3, d17, d2
	fmadd	d2, d7, d5, d2
	fmadd	d2, d16, d6, d2
	fmul	d4, d4, d17
	fmadd	d3, d3, d18, d4
	fmsub	d3, d7, d6, d3
	fmadd	d3, d16, d5, d3
	b	LBB2_4
LBB2_3:
Lloh8:
	adrp	x8, l___func__.quaternion_multiply@PAGE
Lloh9:
	add	x8, x8, l___func__.quaternion_multiply@PAGEOFF
	str	x8, [sp]
Lloh10:
	adrp	x0, l_.str@PAGE
Lloh11:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	movi	d2, #0000000000000000
	movi	d3, #0000000000000000
	movi	d1, #0000000000000000
	movi	d0, #0000000000000000
LBB2_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d15, d14, [sp, #32]             ; 16-byte Folded Spill
	stp	d13, d12, [sp, #48]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	.cfi_offset b14, -72
	.cfi_offset b15, -80
	mov	x8, #57173                      ; =0xdf55
	movk	x8, #50896, lsl #16
	movk	x8, #65495, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d0, x8
	mov	x8, #32768                      ; =0x8000
	movk	x8, #36949, lsl #16
	movk	x8, #7319, lsl #32
	movk	x8, #16116, lsl #48
	fmov	d1, x8
	bl	_libmin_atan2
	fmov	d8, d0
	movi	d0, #0000000000000000
	bl	_libmin_asin
	fmov	d9, d0
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	bl	_libmin_atan2
	fmov	d10, d0
	stp	d8, d0, [sp, #8]
	str	d9, [sp]
Lloh12:
	adrp	x0, l_.str.1@PAGE
Lloh13:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	fmov	d13, #0.50000000
	fmul	d10, d10, d13
	fmov	d0, d10
	bl	_libmin_cos
	fmov	d11, d0
	fmov	d0, d10
	bl	_libmin_sin
	fmov	d10, d0
	fmul	d9, d9, d13
	fmov	d0, d9
	bl	_libmin_cos
	fmov	d12, d0
	fmov	d0, d9
	bl	_libmin_sin
	fmov	d9, d0
	fmul	d8, d8, d13
	fmov	d0, d8
	bl	_libmin_cos
	fmov	d13, d0
	fmov	d0, d8
	bl	_libmin_sin
	fmul	d1, d12, d13
	fmul	d2, d9, d0
	fmul	d3, d10, d2
	fmadd	d14, d1, d11, d3
	fmul	d0, d12, d0
	fmul	d3, d9, d13
	fnmul	d4, d3, d10
	fmadd	d12, d0, d11, d4
	fmul	d0, d10, d0
	fmadd	d9, d3, d11, d0
	fnmul	d0, d2, d11
	fmadd	d8, d1, d10, d0
	stp	d9, d8, [sp, #16]
	stp	d14, d12, [sp]
Lloh14:
	adrp	x0, l_.str.2@PAGE
Lloh15:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	x8, #3355                       ; =0xd1b
	movk	x8, #11744, lsl #16
	movk	x8, #41104, lsl #32
	movk	x8, #49126, lsl #48
	fmov	d0, x8
	fadd	d0, d14, d0
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB3_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_2:
	mov	x8, #3355                       ; =0xd1b
	movk	x8, #11744, lsl #16
	movk	x8, #41104, lsl #32
	movk	x8, #49126, lsl #48
	fmov	d0, x8
	fadd	d0, d12, d0
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB3_4
; %bb.3:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_4:
	fmov	d0, d9
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB3_6
; %bb.5:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_6:
	fmov	d0, d8
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB3_8
; %bb.7:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB3_8:
Lloh16:
	adrp	x0, l_.str.3@PAGE
Lloh17:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #48]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s: Invalid input."

l___func__.quat_from_euler:             ; @__func__.quat_from_euler
	.asciz	"quat_from_euler"

l___func__.euler_from_quat:             ; @__func__.euler_from_quat
	.asciz	"euler_from_quat"

l___func__.quaternion_multiply:         ; @__func__.quaternion_multiply
	.asciz	"quaternion_multiply"

l_.str.1:                               ; @.str.1
	.asciz	"Euler: %.4lf, %.4lf, %.4lf\n"

l_.str.2:                               ; @.str.2
	.asciz	"Quaternion: %.4lf %+.4lf %+.4lf %+.4lf\n"

l_.str.3:                               ; @.str.3
	.asciz	"All tests passed!\n"

.subsections_via_symbols
