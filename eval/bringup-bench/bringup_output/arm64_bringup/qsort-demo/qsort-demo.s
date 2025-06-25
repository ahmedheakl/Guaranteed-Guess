	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_int_cmp                        ; -- Begin function int_cmp
	.p2align	2
_int_cmp:                               ; @int_cmp
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0]
	ldr	w9, [x1]
	sub	w0, w8, w9
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_print_int_array                ; -- Begin function print_int_array
	.p2align	2
_print_int_array:                       ; @print_int_array
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB1_4
; %bb.1:
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
Lloh0:
	adrp	x21, l_.str@PAGE
Lloh1:
	add	x21, x21, l_.str@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x20], #4
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	subs	x19, x19, #1
	b.ne	LBB1_2
; %bb.3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
LBB1_4:
	mov	w0, #10                         ; =0xa
	b	_libmin_putc
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_sort_integers_example          ; -- Begin function sort_integers_example
	.p2align	2
_sort_integers_example:                 ; @sort_integers_example
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
Lloh5:
	adrp	x8, l___const.sort_integers_example.numbers@PAGE
Lloh6:
	add	x8, x8, l___const.sort_integers_example.numbers@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #16]
	ldur	q0, [x8, #28]
	stur	q0, [sp, #44]
Lloh7:
	adrp	x0, l_.str.1@PAGE
Lloh8:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_puts
	mov	w8, #7                          ; =0x7
	str	x8, [sp]
Lloh9:
	adrp	x19, l_.str@PAGE
Lloh10:
	add	x19, x19, l_.str@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #3                          ; =0x3
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #4                          ; =0x4
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #-1                         ; =0xffffffff
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #23                         ; =0x17
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #12                         ; =0xc
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #43                         ; =0x2b
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #2                          ; =0x2
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #-4                         ; =0xfffffffc
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w8, #5                          ; =0x5
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
Lloh11:
	adrp	x3, _int_cmp@PAGE
Lloh12:
	add	x3, x3, _int_cmp@PAGEOFF
	add	x0, sp, #16
	mov	w1, #11                         ; =0xb
	mov	w2, #4                          ; =0x4
	bl	_libmin_qsort
	ldr	w8, [sp, #16]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #20]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #24]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #28]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #32]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #36]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #40]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #44]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #48]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #52]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	w8, [sp, #56]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	ldur	x8, [x29, #-24]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_2
; %bb.1:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB2_2:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.cfi_endproc
                                        ; -- End function
	.globl	_cstring_cmp                    ; -- Begin function cstring_cmp
	.p2align	2
_cstring_cmp:                           ; @cstring_cmp
	.cfi_startproc
; %bb.0:
	ldr	x0, [x0]
	ldr	x1, [x1]
	b	_libmin_strcmp
	.cfi_endproc
                                        ; -- End function
	.globl	_print_cstring_array            ; -- Begin function print_cstring_array
	.p2align	2
_print_cstring_array:                   ; @print_cstring_array
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB4_4
; %bb.1:
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
Lloh16:
	adrp	x21, l_.str.2@PAGE
Lloh17:
	add	x21, x21, l_.str.2@PAGEOFF
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x20], #8
	str	x8, [sp]
	mov	x0, x21
	bl	_libmin_printf
	subs	x19, x19, #1
	b.ne	LBB4_2
; %bb.3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
LBB4_4:
	mov	w0, #10                         ; =0xa
	b	_libmin_putc
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_sort_cstrings_example          ; -- Begin function sort_cstrings_example
	.p2align	2
_sort_cstrings_example:                 ; @sort_cstrings_example
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh18:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh19:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh20:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
Lloh21:
	adrp	x8, l___const.sort_cstrings_example.strings@PAGE
Lloh22:
	add	x8, x8, l___const.sort_cstrings_example.strings@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #16]
	ldr	q0, [x8, #32]
	str	q0, [sp, #48]
Lloh23:
	adrp	x0, l_.str.9@PAGE
Lloh24:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_libmin_puts
Lloh25:
	adrp	x8, l_.str.3@PAGE
Lloh26:
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [sp]
Lloh27:
	adrp	x19, l_.str.2@PAGE
Lloh28:
	add	x19, x19, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
Lloh29:
	adrp	x8, l_.str.4@PAGE
Lloh30:
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh31:
	adrp	x8, l_.str.5@PAGE
Lloh32:
	add	x8, x8, l_.str.5@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh33:
	adrp	x8, l_.str.6@PAGE
Lloh34:
	add	x8, x8, l_.str.6@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh35:
	adrp	x8, l_.str.7@PAGE
Lloh36:
	add	x8, x8, l_.str.7@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh37:
	adrp	x8, l_.str.8@PAGE
Lloh38:
	add	x8, x8, l_.str.8@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
Lloh39:
	adrp	x3, _cstring_cmp@PAGE
Lloh40:
	add	x3, x3, _cstring_cmp@PAGEOFF
	add	x0, sp, #16
	mov	w1, #6                          ; =0x6
	mov	w2, #8                          ; =0x8
	bl	_libmin_qsort
	ldr	x8, [sp, #16]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	x8, [sp, #24]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	x8, [sp, #32]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	x8, [sp, #40]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	x8, [sp, #48]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	x8, [sp, #56]
	str	x8, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #10                         ; =0xa
	bl	_libmin_putc
	ldur	x8, [x29, #-24]
Lloh41:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh42:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh43:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB5_2
; %bb.1:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB5_2:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh18, Lloh19, Lloh20
	.cfi_endproc
                                        ; -- End function
	.globl	_struct_cmp_by_price            ; -- Begin function struct_cmp_by_price
	.p2align	2
_struct_cmp_by_price:                   ; @struct_cmp_by_price
	.cfi_startproc
; %bb.0:
	ldr	s0, [x0, #16]
	ldr	s1, [x1, #16]
	mov	w8, #-1027080192                ; =0xc2c80000
	fmov	s2, w8
	fmul	s1, s1, s2
	mov	w8, #1120403456                 ; =0x42c80000
	fmov	s2, w8
	fmadd	s0, s0, s2, s1
	fcvtzs	w0, s0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_struct_cmp_by_product          ; -- Begin function struct_cmp_by_product
	.p2align	2
_struct_cmp_by_product:                 ; @struct_cmp_by_product
	.cfi_startproc
; %bb.0:
	b	_libmin_strcmp
	.cfi_endproc
                                        ; -- End function
	.globl	_print_struct_array             ; -- Begin function print_struct_array
	.p2align	2
_print_struct_array:                    ; @print_struct_array
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB8_4
; %bb.1:
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
Lloh44:
	adrp	x21, l_.str.10@PAGE
Lloh45:
	add	x21, x21, l_.str.10@PAGEOFF
LBB8_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s0, [x20, #16]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x20, [sp]
	mov	x0, x21
	bl	_libmin_printf
	add	x20, x20, #20
	subs	x19, x19, #1
	b.ne	LBB8_2
; %bb.3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
LBB8_4:
Lloh46:
	adrp	x0, l_.str.11@PAGE
Lloh47:
	add	x0, x0, l_.str.11@PAGEOFF
	b	_libmin_puts
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh46, Lloh47
	.cfi_endproc
                                        ; -- End function
	.globl	_sort_structs_example           ; -- Begin function sort_structs_example
	.p2align	2
_sort_structs_example:                  ; @sort_structs_example
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #224
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
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
Lloh48:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh49:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh50:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
Lloh51:
	adrp	x8, l___const.sort_structs_example.structs@PAGE
Lloh52:
	add	x8, x8, l___const.sort_structs_example.structs@PAGEOFF
	ldp	q0, q1, [x8, #64]
	stp	q0, q1, [sp, #80]
	ldr	q0, [x8, #96]
	str	q0, [sp, #112]
	ldr	x9, [x8, #112]
	str	x9, [sp, #128]
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #16]
	ldp	q0, q1, [x8, #32]
	add	x22, sp, #16
	add	x21, x22, #80
	stp	q0, q1, [sp, #48]
Lloh53:
	adrp	x0, l_.str.12@PAGE
Lloh54:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_libmin_puts
	mov	x8, #193514046488576            ; =0xb00000000000
	movk	x8, #16498, lsl #48
	stp	x22, x8, [sp]
Lloh55:
	adrp	x19, l_.str.10@PAGE
Lloh56:
	add	x19, x19, l_.str.10@PAGEOFF
	mov	x0, x19
	bl	_libmin_printf
	add	x23, x22, #20
	ldr	s0, [sp, #52]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x23, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x24, x22, #40
	ldr	s0, [sp, #72]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x24, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x25, x22, #60
	ldr	s0, [sp, #92]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x25, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #112]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x26, x22, #100
	ldr	s0, [sp, #132]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x26, [sp]
	mov	x0, x19
	bl	_libmin_printf
Lloh57:
	adrp	x20, l_.str.11@PAGE
Lloh58:
	add	x20, x20, l_.str.11@PAGEOFF
	mov	x0, x20
	bl	_libmin_puts
Lloh59:
	adrp	x3, _struct_cmp_by_price@PAGE
Lloh60:
	add	x3, x3, _struct_cmp_by_price@PAGEOFF
	add	x0, sp, #16
	mov	w1, #6                          ; =0x6
	mov	w2, #20                         ; =0x14
	bl	_libmin_qsort
	ldr	s0, [sp, #32]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #52]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x23, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #72]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x24, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #92]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x25, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #112]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #132]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x26, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_puts
Lloh61:
	adrp	x0, l_.str.13@PAGE
Lloh62:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_libmin_puts
Lloh63:
	adrp	x3, _struct_cmp_by_product@PAGE
Lloh64:
	add	x3, x3, _struct_cmp_by_product@PAGEOFF
	add	x0, sp, #16
	mov	w1, #6                          ; =0x6
	mov	w2, #20                         ; =0x14
	bl	_libmin_qsort
	ldr	s0, [sp, #32]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x22, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #52]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x23, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #72]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x24, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #92]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x25, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #112]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x21, [sp]
	mov	x0, x19
	bl	_libmin_printf
	ldr	s0, [sp, #132]
	fcvt	d0, s0
	str	d0, [sp, #8]
	str	x26, [sp]
	mov	x0, x19
	bl	_libmin_printf
	mov	x0, x20
	bl	_libmin_puts
	ldur	x8, [x29, #-72]
Lloh65:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh66:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh67:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB9_2
; %bb.1:
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB9_2:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh65, Lloh66, Lloh67
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdrGotLdr	Lloh48, Lloh49, Lloh50
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
	bl	_sort_integers_example
	bl	_sort_cstrings_example
	bl	_sort_structs_example
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d | "

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.sort_integers_example.numbers
l___const.sort_integers_example.numbers:
	.long	7                               ; 0x7
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	1                               ; 0x1
	.long	4294967295                      ; 0xffffffff
	.long	23                              ; 0x17
	.long	12                              ; 0xc
	.long	43                              ; 0x2b
	.long	2                               ; 0x2
	.long	4294967292                      ; 0xfffffffc
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"*** Integer sorting..."

l_.str.2:                               ; @.str.2
	.asciz	"%s | "

l_.str.3:                               ; @.str.3
	.asciz	"Zorro"

l_.str.4:                               ; @.str.4
	.asciz	"Alex"

l_.str.5:                               ; @.str.5
	.asciz	"Celine"

l_.str.6:                               ; @.str.6
	.asciz	"Bill"

l_.str.7:                               ; @.str.7
	.asciz	"Forest"

l_.str.8:                               ; @.str.8
	.asciz	"Dexter"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.sort_cstrings_example.strings
l___const.sort_cstrings_example.strings:
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8

	.section	__TEXT,__cstring,cstring_literals
l_.str.9:                               ; @.str.9
	.asciz	"*** String sorting..."

l_.str.10:                              ; @.str.10
	.asciz	"[ product: %s \t price: $%.2f ]\n"

l_.str.11:                              ; @.str.11
	.asciz	"--"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.sort_structs_example.structs
l___const.sort_structs_example.structs:
	.asciz	"mp3 player\000\000\000\000\000"
	.long	0x43958000                      ; float 299
	.asciz	"plasma tv\000\000\000\000\000\000"
	.long	0x45098000                      ; float 2200
	.asciz	"notebook\000\000\000\000\000\000\000"
	.long	0x44a28000                      ; float 1300
	.asciz	"smartphone\000\000\000\000\000"
	.long	0x43f9feb8                      ; float 499.98999
	.asciz	"dvd player\000\000\000\000\000"
	.long	0x43160000                      ; float 150
	.asciz	"matches\000\000\000\000\000\000\000\000"
	.long	0x3e4ccccd                      ; float 0.200000003

	.section	__TEXT,__cstring,cstring_literals
l_.str.12:                              ; @.str.12
	.asciz	"*** Struct sorting (price)..."

l_.str.13:                              ; @.str.13
	.asciz	"*** Struct sorting (product)..."

.subsections_via_symbols
