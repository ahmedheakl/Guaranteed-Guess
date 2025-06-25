	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_HSORT                          ; -- Begin function HSORT
	.p2align	2
_HSORT:                                 ; @HSORT
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
	mov	x20, x1
	mov	x19, x0
	adrp	x8, _bplong@PAGE
	ldrb	w8, [x8, _bplong@PAGEOFF]
	cmp	w8, #0
	mov	w8, #8                          ; =0x8
	csel	x22, x8, xzr, ne
	sub	x21, x0, #1
	cmp	x0, #2048
	b.lt	LBB0_2
; %bb.1:
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB0_3
LBB0_2:
	cmp	x19, #2
	b.lt	LBB0_5
LBB0_3:
	mov	w9, #47                         ; =0x2f
	mov	w8, #106                        ; =0x6a
	mov	w10, #1283                      ; =0x503
	mov	w11, #29699                     ; =0x7403
	movk	w11, #22093, lsl #16
	mov	w12, #6075                      ; =0x17bb
	mov	w13, #1001                      ; =0x3e9
	mov	w14, #39657                     ; =0x9ae9
	movk	w14, #172, lsl #16
	mov	x15, x21
Lloh2:
	adrp	x16, _base@PAGE+8
Lloh3:
	add	x16, x16, _base@PAGEOFF+8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	madd	w9, w9, w8, w10
	umull	x17, w9, w11
	lsr	x17, x17, #43
	msub	w9, w17, w12, w9
	mul	w17, w9, w13
	umull	x17, w17, w14
	lsr	x17, x17, #36
	add	w17, w17, #1
	str	x17, [x16], #8
	subs	x15, x15, #1
	b.ne	LBB0_4
LBB0_5:
	mul	x8, x22, x19
	asr	x9, x21, #1
	add	x9, x9, #1
Lloh4:
	adrp	x10, _base@PAGE
Lloh5:
	add	x10, x10, _base@PAGEOFF
	cmp	x9, #2
	b.lt	LBB0_16
	b	LBB0_7
LBB0_6:
	str	x11, [x10, x14, lsl #3]
	cmp	x9, #2
	b.lt	LBB0_16
LBB0_7:
	sub	x9, x9, #1
	ldr	x11, [x10, x9, lsl #3]
LBB0_8:
	lsl	x13, x9, #1
	mov	x14, x9
	cmp	x13, x21
	b.gt	LBB0_6
; %bb.9:
	mov	x12, x9
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	cmp	x13, x21
	b.ge	LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	add	x14, x10, x13, lsl #3
	ldp	x15, x14, [x14]
	cmp	x15, x14
	cset	w14, lt
	orr	x14, x13, x14
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_10 Depth=1
	mov	x14, x13
LBB0_13:                                ;   in Loop: Header=BB0_10 Depth=1
	ldr	x13, [x10, x14, lsl #3]
	cmp	x11, x13
	b.ge	LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_10 Depth=1
	str	x13, [x10, x12, lsl #3]
	lsl	x13, x14, #1
	mov	x12, x14
	cmp	x13, x21
	b.le	LBB0_10
	b	LBB0_6
LBB0_15:
	mov	x14, x12
	str	x11, [x10, x12, lsl #3]
	cmp	x9, #2
	b.ge	LBB0_7
LBB0_16:
	lsl	x12, x21, #3
	ldr	x11, [x10, x12]
	ldr	x13, [x10, #8]
	str	x13, [x10, x12]
	sub	x21, x21, #1
	cmp	x21, #1
	b.ne	LBB0_8
; %bb.17:
	adrp	x9, _base@PAGE+8
	str	x11, [x9, _base@PAGEOFF+8]
	cbz	x20, LBB0_19
; %bb.18:
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str.1@PAGE
Lloh7:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
LBB0_19:
	cmp	x19, #3
	b.lt	LBB0_24
; %bb.20:
	sub	x20, x19, #2
Lloh8:
	adrp	x21, _base@PAGE+8
Lloh9:
	add	x21, x21, _base@PAGEOFF+8
Lloh10:
	adrp	x19, l_.str.2@PAGE
Lloh11:
	add	x19, x19, l_.str.2@PAGEOFF
	b	LBB0_22
LBB0_21:                                ;   in Loop: Header=BB0_22 Depth=1
	add	x21, x21, #8
	subs	x20, x20, #1
	b.eq	LBB0_24
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
	ldp	x8, x9, [x21, #-8]
	cmp	x8, x9
	b.le	LBB0_21
; %bb.23:                               ;   in Loop: Header=BB0_22 Depth=1
	mov	x0, x19
	bl	_libmin_printf
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	b	LBB0_21
LBB0_24:
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #1                          ; =0x1
	adrp	x9, _bplong@PAGE
	strb	w8, [x9, _bplong@PAGEOFF]
Lloh14:
	adrp	x0, l_.str.4@PAGE
Lloh15:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	mov	w8, #8                          ; =0x8
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.5@PAGE
Lloh17:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_libmin_printf
Lloh18:
	adrp	x0, l_.str.6@PAGE
Lloh19:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_libmin_printf
	mov	w0, #1024                       ; =0x400
	mov	w1, #1                          ; =0x1
	bl	_HSORT
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_bplong,1,3      ; @bplong
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"base buffer overflow!\n"

.zerofill __DATA,__bss,_base,16384,3    ; @base
l_.str.1:                               ; @.str.1
	.asciz	"   %10ld\n"

l_.str.2:                               ; @.str.2
	.asciz	"ERROR: base array is not properly sorted!\n"

l_.str.3:                               ; @.str.3
	.asciz	"INFO: base array is properly sorted!\n"

l_.str.4:                               ; @.str.4
	.asciz	"\n   Heap Sort C Program\n"

l_.str.5:                               ; @.str.5
	.asciz	"   Size of long (bytes): %ld\n\n"

l_.str.6:                               ; @.str.6
	.asciz	"   Array Size (bytes)\n"

.subsections_via_symbols
