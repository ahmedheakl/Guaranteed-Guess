	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_run_length_encode              ; -- Begin function run_length_encode
	.p2align	2
_run_length_encode:                     ; @run_length_encode
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
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
	mov	x20, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #40]
	bl	_libmin_strlen
	mov	x21, x0
	mov	x0, x20
	bl	_libmin_strlen
	mov	w8, #1                          ; =0x1
	orr	x0, x8, x0, lsl #1
	bl	_libmin_malloc
	mov	x19, x0
	cmp	w21, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w24, #0                         ; =0x0
	mov	x8, #0                          ; =0x0
Lloh3:
	adrp	x22, l_.str@PAGE
Lloh4:
	add	x22, x22, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	and	x25, x8, #0xffffffff
	ldrb	w26, [x20, x25]
	mov	w9, #-1                         ; =0xffffffff
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x20, x25]
	add	w9, w9, #1
	add	x25, x25, #1
	cmp	w26, w10
	b.eq	LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	add	w27, w8, w9
	str	x9, [sp]
	add	x0, sp, #20
	mov	w1, #20                         ; =0x14
	mov	x2, x22
	bl	_libmin_snprintf
	add	x23, x19, w24, sxtw
	add	x0, sp, #20
	bl	_libmin_strlen
	mov	x2, x0
	add	x1, sp, #20
	mov	x0, x23
	bl	_libmin_strncpy
	add	x0, sp, #20
	bl	_libmin_strlen
	add	w8, w24, w0
	strb	w26, [x19, w8, sxtw]
	add	w24, w8, #1
	sub	x8, x25, #1
	cmp	w27, w21
	b.lt	LBB0_2
; %bb.5:
	sxtw	x8, w24
	b	LBB0_7
LBB0_6:
	mov	x8, #0                          ; =0x0
LBB0_7:
	strb	wzr, [x19, x8]
	mov	x0, x19
	bl	_libmin_strlen
	add	x0, x0, #1
	bl	_libmin_malloc
	mov	x20, x0
	mov	x1, x19
	bl	_libmin_strcpy
	mov	x0, x19
	bl	_libmin_free
	ldr	x8, [sp, #40]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_9
; %bb.8:
	mov	x0, x20
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_9:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
Lloh8:
	adrp	x20, l_.str.2@PAGE
Lloh9:
	add	x20, x20, l_.str.2@PAGEOFF
	mov	x0, x20
	bl	_run_length_encode
	mov	x19, x0
Lloh10:
	adrp	x1, l_.str.3@PAGE
Lloh11:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB1_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB1_2:
	stp	x20, x19, [sp]
Lloh12:
	adrp	x0, l_.str.4@PAGE
Lloh13:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_free
Lloh14:
	adrp	x20, l_.str.5@PAGE
Lloh15:
	add	x20, x20, l_.str.5@PAGEOFF
	mov	x0, x20
	bl	_run_length_encode
	mov	x19, x0
Lloh16:
	adrp	x1, l_.str.6@PAGE
Lloh17:
	add	x1, x1, l_.str.6@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB1_4
; %bb.3:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB1_4:
	stp	x20, x19, [sp]
Lloh18:
	adrp	x0, l_.str.4@PAGE
Lloh19:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_free
Lloh20:
	adrp	x20, l_.str.7@PAGE
Lloh21:
	add	x20, x20, l_.str.7@PAGEOFF
	mov	x0, x20
	bl	_run_length_encode
	mov	x19, x0
Lloh22:
	adrp	x1, l_.str.8@PAGE
Lloh23:
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_libmin_strcmp
	cbz	w0, LBB1_6
; %bb.5:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
LBB1_6:
	stp	x20, x19, [sp]
Lloh24:
	adrp	x0, l_.str.4@PAGE
Lloh25:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	x0, x19
	bl	_libmin_free
Lloh26:
	adrp	x0, l_.str.1@PAGE
Lloh27:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

l_.str.1:                               ; @.str.1
	.asciz	"All tests have passed!\n"

l_.str.2:                               ; @.str.2
	.asciz	"aaaaaaabbbaaccccdefaadr"

l_.str.3:                               ; @.str.3
	.asciz	"7a3b2a4c1d1e1f2a1d1r"

l_.str.4:                               ; @.str.4
	.asciz	"in: %s -> out: %s\n"

l_.str.5:                               ; @.str.5
	.asciz	"lidjhvipdurevbeirbgipeahapoeuhwaipefupwieofb"

l_.str.6:                               ; @.str.6
	.asciz	"1l1i1d1j1h1v1i1p1d1u1r1e1v1b1e1i1r1b1g1i1p1e1a1h1a1p1o1e1u1h1w1a1i1p1e1f1u1p1w1i1e1o1f1b"

l_.str.7:                               ; @.str.7
	.asciz	"htuuuurwuquququuuaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahghghrw"

l_.str.8:                               ; @.str.8
	.asciz	"1h1t4u1r1w1u1q1u1q1u1q3u76a1h1g1h1g1h1r1w"

.subsections_via_symbols
