	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
Lloh8:
	adrp	x19, _flags@PAGE
Lloh9:
	add	x19, x19, _flags@PAGEOFF
	mov	w20, #1                         ; =0x1
	mov	x0, x19
	mov	w1, #1                          ; =0x1
	mov	w2, #1024                       ; =0x400
	bl	_memset
	mov	x9, #0                          ; =0x0
	mov	x10, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	mov	x8, #0                          ; =0x0
	mov	x11, #0                         ; =0x0
	mov	w13, #3                         ; =0x3
	mov	w14, #12                        ; =0xc
	mov	w15, #9                         ; =0x9
	mov	w16, #6                         ; =0x6
	mov	w17, #1018                      ; =0x3fa
	mov	w0, #12                         ; =0xc
	mov	w1, #3                          ; =0x3
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x12, x12, #1
	add	x10, x10, #5
	sub	x9, x9, #5
	add	x1, x1, #2
	add	x13, x13, #3
	add	x0, x0, #8
	add	x14, x14, #9
	add	x15, x15, #7
	add	x16, x16, #5
	cmp	x12, #1024
	b.eq	LBB0_9
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
	cmp	x10, #1018
	csel	x3, x10, x17, hi
	add	x2, x12, x12, lsl #2
	cmp	x2, #1018
	csel	x4, x2, x17, hi
	subs	x4, x4, x2
	cset	w6, ne
	csetm	x5, ne
	ldrb	w2, [x19, x12]
	cbz	w2, LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	lsl	x11, x12, #1
	add	x11, x11, #3
	add	x8, x8, #1
	add	x2, x11, x12
	cmp	x2, #1023
	b.hi	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	sub	x6, x4, x6
	cmp	x4, #0
	cinc	x7, x20, ne
	udiv	x4, x6, x11
	add	x4, x7, x4
	cmp	x4, #4
	b.lo	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	and	x6, x4, #0xfffffffffffffffc
	madd	x2, x6, x11, x2
	add	x3, x3, x9
	add	x3, x3, x5
	udiv	x3, x3, x1
	add	x3, x7, x3
	and	x3, x3, #0xfffffffffffffffc
	mov	x5, x19
LBB0_6:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	strb	wzr, [x5, x13]
	strb	wzr, [x5, x16]
	strb	wzr, [x5, x15]
	strb	wzr, [x5, x14]
	add	x5, x5, x0
	subs	x3, x3, #4
	b.ne	LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	x4, x6
	b.eq	LBB0_1
LBB0_8:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	strb	wzr, [x19, x2]
	add	x2, x2, x11
	cmp	x2, #1024
	b.lo	LBB0_8
	b	LBB0_1
LBB0_9:
	stp	x8, x11, [sp, #8]
	mov	w9, #1024                       ; =0x400
	str	x9, [sp]
Lloh10:
	adrp	x0, l_.str.4@PAGE
Lloh11:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\n   Sieve of Eratosthenes (Scaled to 10 Iterations)\n"

l_.str.1:                               ; @.str.1
	.asciz	"   Version 1.2b, 26 Sep 1992\n\n"

l_.str.2:                               ; @.str.2
	.asciz	"   Array Size   Number   Last Prime\n"

l_.str.3:                               ; @.str.3
	.asciz	"    (Bytes)   of Primes\n"

.zerofill __DATA,__bss,_flags,8192,0    ; @flags
l_.str.4:                               ; @.str.4
	.asciz	"  %9ld   %8ld     %8ld\n"

.subsections_via_symbols
