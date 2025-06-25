	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_foo                            ; -- Begin function foo
	.p2align	2
_foo:                                   ; @foo
	.cfi_startproc
; %bb.0:
	mul	w0, w0, w0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_bar                            ; -- Begin function bar
	.p2align	2
_bar:                                   ; @bar
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
	mov	x8, x0
	adrp	x19, _aglobal@PAGE
	ldr	w0, [x19, _aglobal@PAGEOFF]
	blr	x8
	and	w8, w0, #0x7
	cmp	w8, #4
	b.hi	LBB1_3
; %bb.1:
Lloh0:
	adrp	x9, lJTI1_0@PAGE
Lloh1:
	add	x9, x9, lJTI1_0@PAGEOFF
	adr	x10, LBB1_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
LBB1_2:
	add	w8, w0, #1
	b	LBB1_8
LBB1_3:
	neg	w8, w0
	b	LBB1_8
LBB1_4:
	sub	w8, w0, #1
	b	LBB1_8
LBB1_5:
	lsl	w8, w0, #1
	b	LBB1_8
LBB1_6:
	cmp	w0, #0
	cinc	w8, w0, lt
	asr	w8, w8, #1
	b	LBB1_8
LBB1_7:
	and	w8, w0, #0x1
	cmp	w0, #0
	cneg	w8, w8, lt
LBB1_8:
	str	w8, [x19, _aglobal@PAGEOFF]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
	.section	__TEXT,__const
lJTI1_0:
	.byte	(LBB1_2-LBB1_2)>>2
	.byte	(LBB1_4-LBB1_2)>>2
	.byte	(LBB1_5-LBB1_2)>>2
	.byte	(LBB1_6-LBB1_2)>>2
	.byte	(LBB1_7-LBB1_2)>>2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	adrp	x20, _pbar@PAGE
	ldr	x8, [x20, _pbar@PAGEOFF]
Lloh2:
	adrp	x19, _foo@PAGE
Lloh3:
	add	x19, x19, _foo@PAGEOFF
	mov	x0, x19
	blr	x8
	ldr	x8, [x20, _pbar@PAGEOFF]
	mov	x0, x19
	blr	x8
	ldr	x8, [x20, _pbar@PAGEOFF]
	mov	x0, x19
	blr	x8
Lloh4:
	adrp	x8, _aglobal@PAGE
Lloh5:
	ldr	w8, [x8, _aglobal@PAGEOFF]
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str@PAGE
Lloh7:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_aglobal                        ; @aglobal
	.p2align	2, 0x0
_aglobal:
	.long	56                              ; 0x38

	.globl	_pbar                           ; @pbar
	.p2align	3, 0x0
_pbar:
	.quad	_bar

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aglobal = %d\n"

.subsections_via_symbols
