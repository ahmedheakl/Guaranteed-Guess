	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	mov	w19, #45457                     ; =0xb191
	mov	w0, #45457                      ; =0xb191
	mov	w1, #2                          ; =0x2
	bl	_phiphi
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x19, x0, [sp]
Lloh0:
	adrp	x0, l_.str.6@PAGE
Lloh1:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function phiphi
_phiphi:                                ; @phiphi
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
	sub	w0, w0, #1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w0, w1
	b.eq	LBB1_26
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	sdiv	w20, w8, w1
	msub	w9, w20, w1, w8
	add	w1, w1, #1
	cbnz	w9, LBB1_1
; %bb.3:
	sub	w19, w1, #1
	mov	x8, x19
	mov	x9, x20
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	cbz	w8, LBB1_10
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	cbz	w9, LBB1_10
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w8, #0
	cneg	w8, w8, mi
	cmp	w9, #0
	cneg	w9, w9, mi
	cmp	w9, w8
	csel	w10, w9, w8, hi
	csel	w8, w9, w8, lo
	sdiv	w9, w10, w8
	msub	w9, w9, w8, w10
	cbnz	w9, LBB1_4
; %bb.7:
	cmp	w8, #1
	b.ne	LBB1_10
; %bb.8:
	cmp	w19, #0
	cneg	w0, w19, mi
	cmp	w0, #2
	b.hs	LBB1_14
; %bb.9:
	mov	w19, #0                         ; =0x0
	b	LBB1_19
LBB1_10:
	cmp	w20, #0
	cneg	w0, w20, mi
	cmp	w0, #2
	b.lo	LBB1_20
; %bb.11:
	b.eq	LBB1_24
; %bb.12:
	cmp	w0, #3
	b.eq	LBB1_23
LBB1_13:
	mov	w1, #2                          ; =0x2
	bl	_phiphi
	b	LBB1_25
LBB1_14:
	b.eq	LBB1_17
; %bb.15:
	cmp	w0, #3
	b.ne	LBB1_18
; %bb.16:
	mov	w19, #2                         ; =0x2
	b	LBB1_19
LBB1_17:
	mov	w19, #1                         ; =0x1
	b	LBB1_19
LBB1_18:
	mov	w1, #2                          ; =0x2
	bl	_phiphi
	mov	x19, x0
LBB1_19:
	cmp	w20, #0
	cneg	w0, w20, mi
	cmp	w0, #2
	b.hs	LBB1_21
LBB1_20:
	mov	w0, #0                          ; =0x0
	b	LBB1_25
LBB1_21:
	b.eq	LBB1_24
; %bb.22:
	cmp	w0, #3
	b.ne	LBB1_13
LBB1_23:
	mov	w0, #2                          ; =0x2
	b	LBB1_25
LBB1_24:
	mov	w0, #1                          ; =0x1
LBB1_25:
	mul	w0, w0, w19
LBB1_26:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"phi(%d) = %d\n"

.subsections_via_symbols
