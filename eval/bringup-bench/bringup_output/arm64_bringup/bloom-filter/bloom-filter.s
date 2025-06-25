	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_bad_search                     ; -- Begin function bad_search
	.p2align	2
_bad_search:                            ; @bad_search
	.cfi_startproc
; %bb.0:
	cbz	x2, LBB0_3
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x0], #4
	cmp	w8, w1
	b.eq	LBB0_4
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	subs	x2, x2, #1
	b.ne	LBB0_1
LBB0_3:
	mov	w0, #0                          ; =0x0
	ret
LBB0_4:
	mov	w0, #1                          ; =0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
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
	mov	w0, #8192                       ; =0x2000
	bl	_libmin_malloc
	mov	x19, x0
	mov	w0, #8192                       ; =0x2000
	bl	_libmin_malloc
	mov	x21, x0
	mov	w0, #8192                       ; =0x2000
	bl	_create_bfilter
	mov	x20, x0
	ldr	x8, [x0]
	ubfx	x8, x8, #8, #54
	str	x8, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	mov	w0, #42                         ; =0x2a
	bl	_libmin_srand
	mov	x23, #0                         ; =0x0
	b	LBB1_3
LBB1_1:                                 ;   in Loop: Header=BB1_3 Depth=1
	bl	_libmin_rand
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	str	w0, [x21, x23]
	add	x23, x23, #4
	cmp	x23, #2, lsl #12                ; =8192
	b.eq	LBB1_5
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	bl	_libmin_rand
	add	x22, x19, x23
	str	w0, [x22]
	mov	x0, x20
	mov	x1, x22
	bl	_bfilter_add
	bl	_libmin_rand
	tbz	w0, #0, LBB1_1
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	ldr	w0, [x22]
	b	LBB1_2
LBB1_5:
	mov	x27, #0                         ; =0x0
	mov	w26, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
	mov	w25, #0                         ; =0x0
	b	LBB1_8
LBB1_6:                                 ;   in Loop: Header=BB1_8 Depth=1
	cmp	w0, #0
	cinc	w23, w23, eq
	cinc	w24, w24, ne
LBB1_7:                                 ;   in Loop: Header=BB1_8 Depth=1
	add	x27, x27, #1
	cmp	x27, #2048
	b.eq	LBB1_12
LBB1_8:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_9 Depth 2
	add	x22, x21, x27, lsl #2
	mov	x0, x20
	mov	x1, x22
	bl	_bfilter_check
	mov	x8, #0                          ; =0x0
	ldr	w9, [x22]
LBB1_9:                                 ;   Parent Loop BB1_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w10, [x19, x8]
	cmp	w10, w9
	b.eq	LBB1_6
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=2
	add	x8, x8, #4
	cmp	x8, #2, lsl #12                 ; =8192
	b.ne	LBB1_9
; %bb.11:                               ;   in Loop: Header=BB1_8 Depth=1
	cmp	w0, #0
	cinc	w25, w25, eq
	cinc	w26, w26, ne
	b	LBB1_7
LBB1_12:
	stp	x26, x23, [sp, #16]
	stp	x24, x25, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	add	w8, w24, w25
	ucvtf	s0, w8
	mov	w8, #1028128768                 ; =0x3d480000
	fmov	s1, w8
	fmul	s8, s0, s1
	fcvt	d0, s8
	str	d0, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	mov	w8, #1117782016                 ; =0x42a00000
	fmov	s0, w8
	fcmp	s8, s0
	b.pl	LBB1_14
; %bb.13:
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
LBB1_14:
Lloh8:
	adrp	x8, l_.str.4@PAGE
Lloh9:
	add	x8, x8, l_.str.4@PAGEOFF
Lloh10:
	adrp	x9, l_.str.5@PAGE
Lloh11:
	add	x9, x9, l_.str.5@PAGEOFF
	cmp	w23, #0
	csel	x0, x9, x8, eq
	bl	_libmin_printf
	mov	x0, x21
	bl	_libmin_free
	mov	x0, x19
	bl	_libmin_free
	mov	x0, x20
	bl	_destroy_bfilter
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Using %lu kilobytes for filter.\n\n"

l_.str.1:                               ; @.str.1
	.asciz	"True positives: %i\nTrue negatives: %i\nFalse positives: %i\nFalse negatives: %i\n"

l_.str.2:                               ; @.str.2
	.asciz	"\n%3.2f%% success rate\n\n"

l_.str.3:                               ; @.str.3
	.asciz	"WARNING: Success rate less than 80%%.\n\n"

l_.str.4:                               ; @.str.4
	.asciz	"**ERROR:** Test FAILED.\n"

l_.str.5:                               ; @.str.5
	.asciz	"Test PASSED.\n"

.subsections_via_symbols
