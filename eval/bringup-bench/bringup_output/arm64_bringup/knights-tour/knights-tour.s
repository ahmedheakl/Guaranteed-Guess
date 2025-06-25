	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_isSafe                         ; -- Begin function isSafe
	.p2align	2
_isSafe:                                ; @isSafe
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	mov	w0, #0                          ; =0x0
	cmp	w8, #4
	b.hi	LBB0_3
; %bb.1:
	cmp	w1, #4
	b.hi	LBB0_3
; %bb.2:
	mov	w9, #20                         ; =0x14
	umaddl	x8, w8, w9, x2
	ldr	w8, [x8, w1, uxtw #2]
	cmn	w8, #1
	cset	w0, eq
LBB0_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printSolution                  ; -- Begin function printSolution
	.p2align	2
_printSolution:                         ; @printSolution
	.cfi_startproc
; %bb.0:
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
	mov	x19, x0
	ldr	w8, [x0]
	str	x8, [sp]
Lloh0:
	adrp	x20, l_.str@PAGE
Lloh1:
	add	x20, x20, l_.str@PAGEOFF
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #4]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #12]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #16]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
Lloh2:
	adrp	x21, l_.str.1@PAGE
Lloh3:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	x0, x21
	bl	_libmin_printf
	ldr	w8, [x19, #20]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #24]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #28]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #32]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #36]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	ldr	w8, [x19, #40]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #44]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #48]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #52]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #56]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	ldr	w8, [x19, #60]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #64]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #68]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #72]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #76]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_printf
	ldr	w8, [x19, #80]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #84]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #88]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #92]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	ldr	w8, [x19, #96]
	str	x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	mov	x0, x21
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_libmin_printf
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_solveKT                        ; -- Begin function solveKT
	.p2align	2
_solveKT:                               ; @solveKT
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh4:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh5:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh6:
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	movi.2d	v0, #0xffffffffffffffff
	stur	q0, [sp, #88]
	stur	q0, [sp, #72]
	stur	q0, [sp, #56]
	stur	q0, [sp, #40]
	stur	q0, [sp, #24]
	stur	q0, [sp, #8]
	str	wzr, [sp, #4]
Lloh7:
	adrp	x4, l___const.solveKT.xMove@PAGE
Lloh8:
	add	x4, x4, l___const.solveKT.xMove@PAGEOFF
Lloh9:
	adrp	x5, l___const.solveKT.yMove@PAGE
Lloh10:
	add	x5, x5, l___const.solveKT.yMove@PAGEOFF
	add	x3, sp, #4
	mov	w0, #0                          ; =0x0
	mov	w1, #0                          ; =0x0
	mov	w2, #1                          ; =0x1
	bl	_solveKTUtil
	cbz	w0, LBB2_2
; %bb.1:
	add	x0, sp, #4
	bl	_printSolution
	mov	w0, #1                          ; =0x1
	b	LBB2_3
LBB2_2:
Lloh11:
	adrp	x0, l_.str.2@PAGE
Lloh12:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w0, #0                          ; =0x0
LBB2_3:
	ldur	x8, [x29, #-8]
Lloh13:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh14:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh15:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_5
; %bb.4:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB2_5:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh4, Lloh5, Lloh6
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGotLdr	Lloh13, Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.globl	_solveKTUtil                    ; -- Begin function solveKTUtil
	.p2align	2
_solveKTUtil:                           ; @solveKTUtil
	.cfi_startproc
; %bb.0:
	cmp	w2, #25
	b.ne	LBB3_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ret
LBB3_2:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
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
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x5
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x23, x1
	mov	x24, x0
	mov	x26, #0                         ; =0x0
	add	w25, w2, #1
	mov	w27, #20                        ; =0x14
	b	LBB3_4
LBB3_3:                                 ;   in Loop: Header=BB3_4 Depth=1
	add	x26, x26, #4
	cmp	x26, #32
	b.eq	LBB3_8
LBB3_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x20, x26]
	add	w0, w8, w24
	ldr	w8, [x19, x26]
	add	w1, w8, w23
	cmp	w0, #4
	ccmp	w1, #4, #2, ls
	b.hi	LBB3_3
; %bb.5:                                ;   in Loop: Header=BB3_4 Depth=1
	umaddl	x8, w0, w27, x21
	add	x28, x8, w1, uxtw #2
	ldr	w8, [x28]
	cmn	w8, #1
	b.ne	LBB3_3
; %bb.6:                                ;   in Loop: Header=BB3_4 Depth=1
	str	w22, [x28]
	mov	x2, x25
	mov	x3, x21
	mov	x4, x20
	mov	x5, x19
	bl	_solveKTUtil
	cbnz	w0, LBB3_10
; %bb.7:                                ;   in Loop: Header=BB3_4 Depth=1
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x28]
	b	LBB3_3
LBB3_8:
	mov	w0, #0                          ; =0x0
LBB3_9:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB3_10:
	mov	w0, #1                          ; =0x1
	b	LBB3_9
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh16:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh17:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh18:
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	movi.2d	v0, #0xffffffffffffffff
	stur	q0, [sp, #88]
	stur	q0, [sp, #72]
	stur	q0, [sp, #56]
	stur	q0, [sp, #40]
	stur	q0, [sp, #24]
	stur	q0, [sp, #8]
	str	wzr, [sp, #4]
Lloh19:
	adrp	x4, l___const.solveKT.xMove@PAGE
Lloh20:
	add	x4, x4, l___const.solveKT.xMove@PAGEOFF
Lloh21:
	adrp	x5, l___const.solveKT.yMove@PAGE
Lloh22:
	add	x5, x5, l___const.solveKT.yMove@PAGEOFF
	add	x3, sp, #4
	mov	w0, #0                          ; =0x0
	mov	w1, #0                          ; =0x0
	mov	w2, #1                          ; =0x1
	bl	_solveKTUtil
	cbz	w0, LBB4_2
; %bb.1:
	add	x0, sp, #4
	bl	_printSolution
	b	LBB4_3
LBB4_2:
Lloh23:
	adrp	x0, l_.str.2@PAGE
Lloh24:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
LBB4_3:
	bl	_libmin_success
	ldur	x8, [x29, #-8]
Lloh25:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh26:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh27:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB4_5
; %bb.4:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB4_5:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGotLdr	Lloh16, Lloh17, Lloh18
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" %2d "

l_.str.1:                               ; @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.solveKT.xMove
l___const.solveKT.xMove:
	.long	2                               ; 0x2
	.long	1                               ; 0x1
	.long	4294967295                      ; 0xffffffff
	.long	4294967294                      ; 0xfffffffe
	.long	4294967294                      ; 0xfffffffe
	.long	4294967295                      ; 0xffffffff
	.long	1                               ; 0x1
	.long	2                               ; 0x2

	.p2align	2, 0x0                          ; @__const.solveKT.yMove
l___const.solveKT.yMove:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	2                               ; 0x2
	.long	1                               ; 0x1
	.long	4294967295                      ; 0xffffffff
	.long	4294967294                      ; 0xfffffffe
	.long	4294967294                      ; 0xfffffffe
	.long	4294967295                      ; 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Solution does not exist"

.subsections_via_symbols
