	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_color                          ; -- Begin function color
	.p2align	2
_color:                                 ; @color
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
                                        ; kill: def $w2 killed $w2 def $x2
                                        ; kill: def $w1 killed $w1 def $x1
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x1, x2, [sp, #8]
	str	x0, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	mov	w8, #48                         ; =0x30
	mov	w9, #78                         ; =0x4e
	stp	x9, x8, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w20, #1                         ; =0x1
	fmov	d8, #-0.50000000
	mov	w22, #1117519872                ; =0x429c0000
	mov	x23, #7378697629483820646       ; =0x6666666666666666
	movk	x23, #49126, lsl #48
	fmov	d9, #3.00000000
	mov	x24, #4636737291354636288       ; =0x4059000000000000
Lloh6:
	adrp	x25, l_.str.4@PAGE
Lloh7:
	add	x25, x25, l_.str.4@PAGEOFF
	mov	w26, #16960                     ; =0x4240
	movk	w26, #15, lsl #16
Lloh8:
	adrp	x27, l_.str.3@PAGE
Lloh9:
	add	x27, x27, l_.str.3@PAGEOFF
	mov	w28, #34463                     ; =0x869f
	movk	w28, #1, lsl #16
Lloh10:
	adrp	x19, l_.str.5@PAGE
Lloh11:
	add	x19, x19, l_.str.5@PAGEOFF
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_2 Depth 2
                                        ;       Child Loop BB1_3 Depth 3
	scvtf	s0, w20
	mov	w8, #1111490560                 ; =0x42400000
	fmov	s1, w8
	fdiv	s0, s0, s1
	fcvt	d0, s0
	fadd	d0, d0, d8
	fmul	d10, d0, d9
	mov	w21, #1                         ; =0x1
LBB1_2:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_3 Depth 3
	scvtf	s0, w21
	fmov	s1, w22
	fdiv	s0, s0, s1
	fcvt	d0, s0
	fadd	d0, d0, d8
	fmov	d1, x23
	fmadd	d0, d0, d9, d1
	movi	d2, #0000000000000000
	mov	w8, #2                          ; =0x2
	movi	d1, #0000000000000000
LBB1_3:                                 ;   Parent Loop BB1_1 Depth=1
                                        ;     Parent Loop BB1_2 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	fnmul	d3, d1, d1
	fmadd	d3, d2, d2, d3
	fadd	d2, d2, d2
	fadd	d3, d0, d3
	fmadd	d1, d2, d1, d10
	fmul	d2, d1, d1
	fmadd	d2, d3, d3, d2
	fmov	d4, x24
	fcmp	d2, d4
	csel	w9, w26, w8, gt
	add	w8, w8, #1
	fmov	d2, d3
	cmp	w9, #100
	b.lo	LBB1_3
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=2
	cmp	w9, w28
	csel	x0, x27, x25, lo
	bl	_libmin_printf
	add	w21, w21, #1
	cmp	w21, #79
	b.ne	LBB1_2
; %bb.5:                                ;   in Loop: Header=BB1_1 Depth=1
	mov	x0, x19
	bl	_libmin_printf
	add	w20, w20, #1
	cmp	w20, #49
	b.ne	LBB1_1
; %bb.6:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"<%d,%d,%d>\n"

l_.str.1:                               ; @.str.1
	.asciz	"** Mandelbrot ASCII image\n"

l_.str.2:                               ; @.str.2
	.asciz	"** xres: %d, yres: %d\n"

l_.str.3:                               ; @.str.3
	.asciz	" "

l_.str.4:                               ; @.str.4
	.asciz	"0"

l_.str.5:                               ; @.str.5
	.asciz	"\n"

.subsections_via_symbols
