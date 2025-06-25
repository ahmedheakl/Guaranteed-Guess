	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_spirograph                     ; -- Begin function spirograph
	.p2align	2
_spirograph:                            ; @spirograph
	.cfi_startproc
; %bb.0:
	cbz	x2, LBB0_4
; %bb.1:
	stp	d15, d14, [sp, #-112]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	.cfi_offset b12, -88
	.cfi_offset b13, -96
	.cfi_offset b14, -104
	.cfi_offset b15, -112
	mov	x19, x2
	fmov	d8, d1
	mov	x20, x1
	mov	x21, x0
	fadd	d1, d2, d2
	mov	x8, #11544                      ; =0x2d18
	movk	x8, #21572, lsl #16
	movk	x8, #8699, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d2, x8
	fmul	d1, d1, d2
	ucvtf	d2, x2
	fdiv	d12, d1, d2
	fmov	d1, #1.00000000
	fsub	d13, d1, d8
	fmul	d14, d0, d8
	fnmul	d15, d0, d8
	movi	d9, #0000000000000000
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	fmov	d0, d9
	bl	_libmin_cos
	fmov	d10, d0
	fmul	d0, d13, d9
	fdiv	d11, d0, d8
	fmov	d0, d11
	bl	_libmin_cos
	fmul	d0, d14, d0
	fmadd	d0, d13, d10, d0
	str	d0, [x21], #8
	fmov	d0, d9
	bl	_libmin_sin
	fmov	d10, d0
	fmov	d0, d11
	bl	_libmin_sin
	fmul	d0, d0, d15
	fmadd	d0, d13, d10, d0
	str	d0, [x20], #8
	fadd	d9, d12, d9
	subs	x19, x19, #1
	b.ne	LBB0_2
; %bb.3:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #112            ; 16-byte Folded Reload
LBB0_4:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test                           ; -- Begin function test
	.p2align	2
_test:                                  ; @test
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	mov	w0, #4000                       ; =0xfa0
	bl	_libmin_malloc
	mov	x19, x0
	mov	w0, #4000                       ; =0xfa0
	bl	_libmin_malloc
	mov	x20, x0
	mov	x21, #0                         ; =0x0
	movi	d8, #0000000000000000
	fmov	d11, #0.25000000
	fmov	d12, #0.75000000
	mov	x22, #-3689348814741910324      ; =0xcccccccccccccccc
	movk	x22, #16332, lsl #48
	mov	x23, #-3689348814741910324      ; =0xcccccccccccccccc
	movk	x23, #49100, lsl #48
	mov	x24, #10010                     ; =0x271a
	movk	x24, #37399, lsl #16
	movk	x24, #5567, lsl #32
	movk	x24, #16320, lsl #48
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	fmov	d0, d8
	bl	_libmin_cos
	fmov	d9, d0
	fmul	d0, d8, d11
	fdiv	d10, d0, d12
	fmov	d0, d10
	bl	_libmin_cos
	fmov	d1, x22
	fmul	d0, d0, d1
	fmadd	d0, d9, d11, d0
	str	d0, [x19, x21]
	fmov	d0, d8
	bl	_libmin_sin
	fmov	d9, d0
	fmov	d0, d10
	bl	_libmin_sin
	fmov	d1, x23
	fmul	d0, d0, d1
	fmadd	d0, d9, d11, d0
	str	d0, [x20, x21]
	fmov	d0, x24
	fadd	d8, d8, d0
	add	x21, x21, #8
	cmp	x21, #4000
	b.ne	LBB1_1
; %bb.2:
	mov	x22, #0                         ; =0x0
Lloh0:
	adrp	x21, l_.str@PAGE
Lloh1:
	add	x21, x21, l_.str@PAGEOFF
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x19, x22]
	ldr	d1, [x20, x22]
	stp	d0, d1, [sp]
	mov	x0, x21
	bl	_libmin_printf
	add	x22, x22, #8
	cmp	x22, #4000
	b.ne	LBB1_3
; %bb.4:
	mov	x0, x19
	bl	_libmin_free
	mov	x0, x20
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #128
	b	_libmin_free
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_test
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%.5lf, %.5lf\n"

.subsections_via_symbols
