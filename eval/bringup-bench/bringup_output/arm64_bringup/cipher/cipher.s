	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_encipher                       ; -- Begin function encipher
	.p2align	2
_encipher:                              ; @encipher
	.cfi_startproc
; %bb.0:
	mov	w8, #31161                      ; =0x79b9
	movk	w8, #40503, lsl #16
	ldp	w9, w10, [x0]
	ldp	w11, w12, [x2]
	mov	w13, #-32                       ; =0xffffffe0
	mov	w14, #31161                     ; =0x79b9
	movk	w14, #40503, lsl #16
	ldp	w15, w16, [x2, #8]
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	add	w17, w11, w10, lsl #4
	add	w0, w10, w14
	eor	w17, w17, w0
	add	w0, w12, w10, lsr #5
	eor	w17, w17, w0
	add	w9, w17, w9
	add	w17, w14, w9
	add	w0, w15, w9, lsl #4
	eor	w17, w0, w17
	add	w0, w16, w9, lsr #5
	eor	w17, w17, w0
	add	w10, w17, w10
	add	w14, w14, w8
	adds	w13, w13, #1
	b.lo	LBB0_1
; %bb.2:
	stp	w9, w10, [x1]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_decipher                       ; -- Begin function decipher
	.p2align	2
_decipher:                              ; @decipher
	.cfi_startproc
; %bb.0:
	ldp	w8, w9, [x0]
	ldp	w10, w11, [x2]
	mov	w12, #14112                     ; =0x3720
	movk	w12, #50927, lsl #16
	mov	w13, #-32                       ; =0xffffffe0
	mov	w14, #34375                     ; =0x8647
	movk	w14, #25032, lsl #16
	ldp	w15, w16, [x2, #8]
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	add	w17, w15, w8, lsl #4
	add	w0, w8, w12
	eor	w17, w17, w0
	add	w0, w16, w8, lsr #5
	eor	w17, w17, w0
	sub	w9, w9, w17
	add	w17, w12, w9
	add	w0, w10, w9, lsl #4
	eor	w17, w0, w17
	add	w0, w11, w9, lsr #5
	eor	w17, w17, w0
	sub	w8, w8, w17
	add	w12, w12, w14
	adds	w13, w13, #1
	b.lo	LBB1_1
; %bb.2:
	stp	w8, w9, [x1]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
	mov	w14, #31161                     ; =0x79b9
	movk	w14, #40503, lsl #16
Lloh0:
	adrp	x19, _plaintext@PAGE
Lloh1:
	add	x19, x19, _plaintext@PAGEOFF
	ldp	w8, w9, [x19]
Lloh2:
	adrp	x21, _keytext@PAGE
Lloh3:
	add	x21, x21, _keytext@PAGEOFF
	ldp	w10, w11, [x21]
	ldp	w12, w13, [x21, #8]
	mov	w15, #-32                       ; =0xffffffe0
	mov	w16, #31161                     ; =0x79b9
	movk	w16, #40503, lsl #16
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	add	w17, w10, w9, lsl #4
	add	w0, w11, w9, lsr #5
	eor	w17, w0, w17
	add	w0, w9, w16
	eor	w17, w17, w0
	add	w8, w17, w8
	add	w17, w16, w8
	add	w0, w12, w8, lsl #4
	eor	w17, w0, w17
	add	w0, w13, w8, lsr #5
	eor	w17, w17, w0
	add	w9, w17, w9
	add	w16, w16, w14
	adds	w15, w15, #1
	b.lo	LBB2_1
; %bb.2:
Lloh4:
	adrp	x20, _ciphertext@GOTPAGE
Lloh5:
	ldr	x20, [x20, _ciphertext@GOTPAGEOFF]
	stp	w8, w9, [x20]
Lloh6:
	adrp	x14, _cipherref@PAGE
Lloh7:
	add	x14, x14, _cipherref@PAGEOFF
	ldr	w15, [x14]
	cmp	w8, w15
	b.ne	LBB2_4
; %bb.3:
	ldr	w14, [x14, #4]
	cmp	w9, w14
	b.eq	LBB2_5
LBB2_4:
	mov	w0, #1                          ; =0x1
	bl	_libmin_fail
	ldp	w8, w9, [x20]
	ldp	w10, w11, [x21]
	ldp	w12, w13, [x21, #8]
LBB2_5:
	mov	w14, #14112                     ; =0x3720
	movk	w14, #50927, lsl #16
	mov	w15, #-32                       ; =0xffffffe0
	mov	w16, #34375                     ; =0x8647
	movk	w16, #25032, lsl #16
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
	add	w17, w12, w8, lsl #4
	add	w0, w13, w8, lsr #5
	eor	w17, w0, w17
	add	w0, w8, w14
	eor	w17, w17, w0
	sub	w9, w9, w17
	add	w17, w14, w9
	add	w0, w10, w9, lsl #4
	eor	w17, w0, w17
	add	w0, w11, w9, lsr #5
	eor	w17, w17, w0
	sub	w8, w8, w17
	add	w14, w14, w16
	adds	w15, w15, #1
	b.lo	LBB2_6
; %bb.7:
Lloh8:
	adrp	x21, _newplain@GOTPAGE
Lloh9:
	ldr	x21, [x21, _newplain@GOTPAGEOFF]
	stp	w8, w9, [x21]
	ldp	w10, w11, [x19]
	cmp	w8, w10
	ccmp	w9, w11, #0, eq
	b.eq	LBB2_9
; %bb.8:
	mov	w0, #2                          ; =0x2
	bl	_libmin_fail
LBB2_9:
Lloh10:
	adrp	x0, l_.str@PAGE
Lloh11:
	add	x0, x0, l_.str@PAGEOFF
	bl	_libmin_printf
	ldp	w8, w9, [x19]
	stp	x8, x9, [sp]
Lloh12:
	adrp	x0, l_.str.1@PAGE
Lloh13:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_libmin_printf
	ldp	w8, w9, [x20]
	stp	x8, x9, [sp]
Lloh14:
	adrp	x0, l_.str.2@PAGE
Lloh15:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_libmin_printf
	ldp	w8, w9, [x21]
	stp	x8, x9, [sp]
Lloh16:
	adrp	x0, l_.str.3@PAGE
Lloh17:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_keytext                        ; @keytext
	.p2align	2, 0x0
_keytext:
	.long	358852050                       ; 0x1563a5d2
	.long	311606025                       ; 0x1292bb09
	.long	739108171                       ; 0x2c0de54b
	.long	861449956                       ; 0x3358aee4

	.globl	_plaintext                      ; @plaintext
	.p2align	2, 0x0
_plaintext:
	.long	765625614                       ; 0x2da2850e
	.long	14247501                        ; 0xd9664d

	.globl	_cipherref                      ; @cipherref
	.p2align	2, 0x0
_cipherref:
	.long	2682439780                      ; 0x9fe2c864
	.long	3621408164                      ; 0xd7da4da4

	.comm	_ciphertext,8,2                 ; @ciphertext
	.comm	_newplain,8,2                   ; @newplain
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"TEA Cipher results:\n"

l_.str.1:                               ; @.str.1
	.asciz	"  plaintext:  0x%08lx 0x%08lx\n"

l_.str.2:                               ; @.str.2
	.asciz	"  ciphertext: 0x%08lx 0x%08lx\n"

l_.str.3:                               ; @.str.3
	.asciz	"  newplain:   0x%08lx 0x%08lx\n"

.subsections_via_symbols
