	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_vector_sub                     ; -- Begin function vector_sub
	.p2align	2
_vector_sub:                            ; @vector_sub
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fsub	d0, d0, d2
	fsub	d1, d1, d3
	ldr	d2, [x0, #16]
	ldr	d3, [x1, #16]
	fsub	d2, d2, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_vector_add                     ; -- Begin function vector_add
	.p2align	2
_vector_add:                            ; @vector_add
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fadd	d0, d0, d2
	fadd	d1, d1, d3
	ldr	d2, [x0, #16]
	ldr	d3, [x1, #16]
	fadd	d2, d2, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_dot_prod                       ; -- Begin function dot_prod
	.p2align	2
_dot_prod:                              ; @dot_prod
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fmul	d0, d0, d2
	fmadd	d0, d1, d3, d0
	ldr	d1, [x0, #16]
	ldr	d2, [x1, #16]
	fmadd	d0, d1, d2, d0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_vector_prod                    ; -- Begin function vector_prod
	.p2align	2
_vector_prod:                           ; @vector_prod
	.cfi_startproc
; %bb.0:
	ldp	d3, d1, [x1, #8]
	ldp	d5, d2, [x0, #8]
	ldr	d4, [x1]
	fnmul	d0, d2, d3
	ldr	d6, [x0]
	fmadd	d0, d5, d1, d0
	fmul	d2, d2, d4
	fmsub	d1, d6, d1, d2
	fnmul	d2, d5, d4
	fmadd	d2, d6, d3, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print_vector                   ; -- Begin function print_vector
	.p2align	2
_print_vector:                          ; @print_vector
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	q0, [x0]
	ldr	d1, [x0, #16]
	str	d1, [sp, #24]
	stur	q0, [sp, #8]
Lloh0:
	adrp	x19, _print_vector.vec_str@PAGE
Lloh1:
	add	x19, x19, _print_vector.vec_str@PAGEOFF
	str	x1, [sp]
Lloh2:
	adrp	x2, l_.str@PAGE
Lloh3:
	add	x2, x2, l_.str@PAGEOFF
	mov	x0, x19
	mov	w1, #99                         ; =0x63
	bl	_libmin_snprintf
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_vector_norm                    ; -- Begin function vector_norm
	.p2align	2
_vector_norm:                           ; @vector_norm
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	fmul	d0, d0, d0
	fmadd	d0, d1, d1, d0
	ldr	d1, [x0, #16]
	fmadd	d0, d1, d1, d0
	b	_libmin_sqrt
	.cfi_endproc
                                        ; -- End function
	.globl	_unit_vec                       ; -- Begin function unit_vec
	.p2align	2
_unit_vec:                              ; @unit_vec
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov	x19, x0
	ldp	d0, d1, [x0]
	fmul	d0, d0, d0
	fmadd	d0, d1, d1, d0
	ldr	d1, [x0, #16]
	fmadd	d0, d1, d1, d0
	bl	_libmin_sqrt
	fmov	d8, d0
	bl	_libmin_fabs
	movi	d2, #0000000000000000
	fmov	d1, #1.00000000
	fcmp	d8, d1
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fccmp	d0, d1, #8, ne
	movi	d1, #0000000000000000
	movi	d0, #0000000000000000
	b.mi	LBB6_2
; %bb.1:
	ldp	d0, d1, [x19]
	fdiv	d0, d0, d8
	fdiv	d1, d1, d8
	ldr	d2, [x19, #16]
	fdiv	d2, d2, d8
LBB6_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_get_cross_matrix               ; -- Begin function get_cross_matrix
	.p2align	2
_get_cross_matrix:                      ; @get_cross_matrix
	.cfi_startproc
; %bb.0:
	str	xzr, [x8]
	ldr	d0, [x0, #16]
	fneg	d1, d0
	str	d1, [x8, #8]
	add	x9, x8, #16
	str	d0, [x8, #24]
	str	xzr, [x8, #32]
	ldr	q0, [x0]
	st1.d	{ v0 }[1], [x9]
	fneg.2d	v1, v0
	stur	q1, [x8, #40]
	str	d0, [x8, #56]
	str	xzr, [x8, #64]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_get_angle                      ; -- Begin function get_angle
	.p2align	2
_get_angle:                             ; @get_angle
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov	x19, x1
	mov	x20, x0
	ldp	d0, d1, [x0]
	fmul	d0, d0, d0
	fmadd	d0, d1, d1, d0
	ldr	d1, [x0, #16]
	fmadd	d0, d1, d1, d0
	bl	_libmin_sqrt
	fmov	d8, d0
	ldp	d0, d1, [x19]
	fmul	d0, d0, d0
	fmadd	d0, d1, d1, d0
	ldr	d1, [x19, #16]
	fmadd	d0, d1, d1, d0
	bl	_libmin_sqrt
	fmov	d9, d0
	fmov	d0, d8
	bl	_libmin_fabs
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB8_2
; %bb.1:
	fmov	d0, d9
	bl	_libmin_fabs
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB8_3
LBB8_2:
	mov	x8, #9221120237041090560        ; =0x7ff8000000000000
	fmov	d0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	ret
LBB8_3:
	ldp	d0, d1, [x20]
	ldp	d2, d3, [x19]
	fmul	d0, d0, d2
	fmadd	d0, d1, d3, d0
	ldr	d1, [x20, #16]
	ldr	d2, [x19, #16]
	fmadd	d0, d1, d2, d0
	fmul	d1, d8, d9
	fdiv	d0, d0, d1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	b	_libmin_acos
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
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
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	mov	x8, #4613937818241073152        ; =0x4008000000000000
	mov	x9, #4611686018427387904        ; =0x4000000000000000
	stp	x9, x8, [sp, #16]
	mov	x22, #4607182418800017408       ; =0x3ff0000000000000
Lloh4:
	adrp	x8, l_.str.2@PAGE
Lloh5:
	add	x8, x8, l_.str.2@PAGEOFF
Lloh6:
	adrp	x19, _print_vector.vec_str@PAGE
Lloh7:
	add	x19, x19, _print_vector.vec_str@PAGEOFF
	stp	x8, x22, [sp]
Lloh8:
	adrp	x20, l_.str@PAGE
Lloh9:
	add	x20, x20, l_.str@PAGEOFF
	mov	x0, x19
	mov	w1, #99                         ; =0x63
	mov	x2, x20
	bl	_libmin_snprintf
	str	x19, [sp]
Lloh10:
	adrp	x21, l_.str.1@PAGE
Lloh11:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
Lloh12:
	adrp	x8, l_.str.3@PAGE
Lloh13:
	add	x8, x8, l_.str.3@PAGEOFF
	stp	x22, x22, [sp, #16]
	stp	x8, x22, [sp]
	mov	x0, x19
	mov	w1, #99                         ; =0x63
	mov	x2, x20
	bl	_libmin_snprintf
	str	x19, [sp]
	mov	x0, x21
	bl	_libmin_printf
	fmov	d0, #14.00000000
	bl	_libmin_sqrt
	fmov	d8, d0
	str	d0, [sp]
Lloh14:
	adrp	x0, l_.str.4@PAGE
Lloh15:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	x8, #3670                       ; =0xe56
	movk	x8, #45613, lsl #16
	movk	x8, #61341, lsl #32
	movk	x8, #49165, lsl #48
	fmov	d0, x8
	fadd	d0, d8, d0
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_2:
	fmov	d0, #3.00000000
	bl	_libmin_sqrt
	fmov	d8, d0
	str	d0, [sp]
Lloh16:
	adrp	x0, l_.str.5@PAGE
Lloh17:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
	mov	x8, #49283                      ; =0xc083
	movk	x8, #41418, lsl #16
	movk	x8, #46661, lsl #32
	movk	x8, #49147, lsl #48
	fmov	d0, x8
	fadd	d0, d8, d0
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_4
; %bb.3:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_4:
	mov	x8, #4618441417868443648        ; =0x4018000000000000
	str	x8, [sp]
Lloh18:
	adrp	x0, l_.str.6@PAGE
Lloh19:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	movi	d0, #0000000000000000
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_6
; %bb.5:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_6:
Lloh20:
	adrp	x0, l_.str.7@PAGE
Lloh21:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_libmin_printf
	mov	x8, #-4616189618054758400       ; =0xbff0000000000000
	mov	x9, #4611686018427387904        ; =0x4000000000000000
	stp	x9, x8, [sp, #16]
Lloh22:
	adrp	x9, l_.str.8@PAGE
Lloh23:
	add	x9, x9, l_.str.8@PAGEOFF
	stp	x9, x8, [sp]
Lloh24:
	adrp	x2, l_.str@PAGE
Lloh25:
	add	x2, x2, l_.str@PAGEOFF
	mov	x0, x19
	mov	w1, #99                         ; =0x63
	bl	_libmin_snprintf
	str	x19, [sp]
Lloh26:
	adrp	x0, l_.str.1@PAGE
Lloh27:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	movi	d0, #0000000000000000
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_8
; %bb.7:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_8:
	movi	d0, #0000000000000000
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_10
; %bb.9:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_10:
	movi	d0, #0000000000000000
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_12
; %bb.11:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_12:
	fmov	d0, #14.00000000
	bl	_libmin_sqrt
	fmov	d8, d0
	fmov	d0, #3.00000000
	bl	_libmin_sqrt
	fmov	d9, d0
	fmov	d0, d8
	bl	_libmin_fabs
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_14
; %bb.13:
	fmov	d0, d9
	bl	_libmin_fabs
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB9_15
LBB9_14:
	mov	x8, #9221120237041090560        ; =0x7ff8000000000000
	fmov	d8, x8
	b	LBB9_16
LBB9_15:
	fmul	d0, d8, d9
	fmov	d1, #6.00000000
	fdiv	d0, d1, d0
	bl	_libmin_acos
	fmov	d8, d0
LBB9_16:
	str	d8, [sp]
Lloh28:
	adrp	x0, l_.str.9@PAGE
Lloh29:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_printf
	mov	x8, #50697                      ; =0xc609
	movk	x8, #42433, lsl #16
	movk	x8, #52835, lsl #32
	movk	x8, #49112, lsl #48
	fmov	d0, x8
	fadd	d0, d8, d0
	bl	_libmin_fabs
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.mi	LBB9_18
; %bb.17:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB9_18:
Lloh30:
	adrp	x0, l_.str.10@PAGE
Lloh31:
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_print_vector.vec_str,100,0 ; @print_vector.vec_str
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"vec(%s) = (%.0lf)i + (%.0lf)j + (%.0lf)k\n"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"a"

l_.str.3:                               ; @.str.3
	.asciz	"b"

l_.str.4:                               ; @.str.4
	.asciz	"|a| = %.4lf\n"

l_.str.5:                               ; @.str.5
	.asciz	"|b| = %.4lf\n"

l_.str.6:                               ; @.str.6
	.asciz	"Dot product: %lf\n"

l_.str.7:                               ; @.str.7
	.asciz	"Vector product "

l_.str.8:                               ; @.str.8
	.asciz	"c"

l_.str.9:                               ; @.str.9
	.asciz	"The angle is %lf\n"

l_.str.10:                              ; @.str.10
	.asciz	"All tests passed!\n"

.subsections_via_symbols
