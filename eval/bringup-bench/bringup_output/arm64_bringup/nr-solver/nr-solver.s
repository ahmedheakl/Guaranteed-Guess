	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_f                              ; -- Begin function f
	.p2align	2
_f:                                     ; @f
	.cfi_startproc
; %bb.0:
Lloh0:
	adrp	x8, _sqrt_value@GOTPAGE
Lloh1:
	ldr	x8, [x8, _sqrt_value@GOTPAGEOFF]
Lloh2:
	ldr	d1, [x8]
	fnmsub	d0, d0, d0, d1
	ret
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.cfi_endproc
                                        ; -- End function
	.globl	_df                             ; -- Begin function df
	.p2align	2
_df:                                    ; @df
	.cfi_startproc
; %bb.0:
	fadd	d0, d0, d0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_myfabs                         ; -- Begin function myfabs
	.p2align	2
_myfabs:                                ; @myfabs
	.cfi_startproc
; %bb.0:
	fneg	d1, d0
	fcmp	d0, #0.0
	fcsel	d0, d1, d0, mi
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_rn_solver                      ; -- Begin function rn_solver
	.p2align	2
_rn_solver:                             ; @rn_solver
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-80]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	.cfi_offset b10, -72
	.cfi_offset b11, -80
	str	wzr, [x0]
	cbz	w1, LBB3_4
; %bb.1:
	mov	x19, x3
	mov	x20, x2
	mov	x21, x1
	fmov	d9, d0
	mov	x22, x0
	fmov	d8, #1.00000000
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	fmov	d0, d8
	blr	x20
	fneg	d1, d0
	fcmp	d0, #0.0
	fcsel	d0, d1, d0, mi
	fcmp	d0, d9
	cset	w8, ls
	str	w8, [x22]
	b.ls	LBB3_5
; %bb.3:                                ;   in Loop: Header=BB3_2 Depth=1
	fmov	d0, d8
	blr	x20
	fmov	d10, d0
	fmov	d0, d8
	blr	x19
	fdiv	d0, d10, d0
	fsub	d8, d8, d0
	subs	w21, w21, #1
	b.ne	LBB3_2
	b	LBB3_5
LBB3_4:
	fmov	d8, #1.00000000
LBB3_5:
	fmov	d0, d8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
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
	mov	x20, #0                         ; =0x0
Lloh3:
	adrp	x21, _testdata@PAGE
Lloh4:
	add	x21, x21, _testdata@PAGEOFF
Lloh5:
	adrp	x22, _sqrt_value@GOTPAGE
Lloh6:
	ldr	x22, [x22, _sqrt_value@GOTPAGEOFF]
	mov	x23, #26865                     ; =0x68f1
	movk	x23, #35043, lsl #16
	movk	x23, #63669, lsl #32
	movk	x23, #16100, lsl #48
Lloh7:
	adrp	x19, l_.str@PAGE
Lloh8:
	add	x19, x19, l_.str@PAGEOFF
	b	LBB4_3
LBB4_1:                                 ;   in Loop: Header=BB4_3 Depth=1
	mov	w8, #116                        ; =0x74
LBB4_2:                                 ;   in Loop: Header=BB4_3 Depth=1
	str	x8, [sp, #16]
	stp	d0, d1, [sp]
	mov	x0, x19
	bl	_libmin_printf
	add	x20, x20, #1
	cmp	x20, #50
	b.eq	LBB4_7
LBB4_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_4 Depth 2
	ldr	d0, [x21, x20, lsl #3]
	str	d0, [x22]
	fneg	d2, d0
	fmov	d1, #1.00000000
	mov	w8, #20                         ; =0x14
LBB4_4:                                 ;   Parent Loop BB4_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmadd	d3, d1, d1, d2
	fnmadd	d4, d1, d1, d2
	fcmp	d3, #0.0
	fcsel	d4, d4, d3, mi
	fmov	d5, x23
	fcmp	d4, d5
	b.ls	LBB4_1
; %bb.5:                                ;   in Loop: Header=BB4_4 Depth=2
	fadd	d4, d1, d1
	fdiv	d3, d3, d4
	fsub	d1, d1, d3
	subs	w8, w8, #1
	b.ne	LBB4_4
; %bb.6:                                ;   in Loop: Header=BB4_3 Depth=1
	mov	w8, #102                        ; =0x66
	b	LBB4_2
LBB4_7:
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.cfi_endproc
                                        ; -- End function
	.comm	_sqrt_value,8,3                 ; @sqrt_value
	.section	__DATA,__data
	.globl	_testdata                       ; @testdata
	.p2align	3, 0x0
_testdata:
	.quad	0x411829430c7f6591              ; double 395856.76220473001
	.quad	0x41107f8b3914ad61              ; double 270306.80574293999
	.quad	0x412c74d77f262ae2              ; double 932459.74833806999
	.quad	0x412ae2fda394ffd7              ; double 881022.81949615001
	.quad	0x40f1349074858f07              ; double 70473.028447684002
	.quad	0x4121c3af9de87aa8              ; double 582103.80841429997
	.quad	0x40e2290436dc794e              ; double 37192.131696926997
	.quad	0x41228d853fda1a12              ; double 607938.62471085996
	.quad	0x411415e78f97c2d5              ; double 329081.89022736001
	.quad	0x40f32c3099a76ca7              ; double 78531.037513183997
	.quad	0x4113d744cf55f077              ; double 325073.20247626997
	.quad	0x4123cbe80613bca0              ; double 648692.01186932996
	.quad	0x4126bc2c40741ddf              ; double 744982.12588589999
	.quad	0x410cdcb9d9b63b3b              ; double 236439.23130461
	.quad	0x40bce5bd8fa19e20              ; double 7397.7404728900001
	.quad	0x412db34451315fc9              ; double 973218.15857981995
	.quad	0x4129d565510a6965              ; double 846514.65828255995
	.quad	0x41288d61b99a684c              ; double 804528.86250616005
	.quad	0x41288de1e943e1ac              ; double 804592.95559601998
	.quad	0x411359290a64005b              ; double 317002.26014710002
	.quad	0x412073f069662a81              ; double 539128.20585758996
	.quad	0x41125c162cfb3312              ; double 300805.54392700002
	.quad	0x4128ae2d0005f762              ; double 808726.50004551955
	.quad	0x411854bf2ed897b1              ; double 398639.79574810999
	.quad	0x4126cae695658a73              ; double 746867.29179031996
	.quad	0x41262f952b24795c              ; double 726986.58426264999
	.quad	0x40f5f361b9f06626              ; double 89910.107895277994
	.quad	0x41029c032ba8f480              ; double 152448.39631834999
	.quad	0x412da23386c51015              ; double 971033.76322222
	.quad	0x4129edb4e4d925a1              ; double 849626.44696920004
	.quad	0x412973dcd982fa1b              ; double 834030.42482740001
	.quad	0x410e2df8c19fa521              ; double 247231.09454277999
	.quad	0x412a5747b518ceae              ; double 863139.85370489
	.quad	0x411f91ef17668068              ; double 517243.77285195002
	.quad	0x41285ead76a064e5              ; double 798550.73169246002
	.quad	0x4115ae02d196ebbf              ; double 355200.70467727998
	.quad	0x40c42d862efd8a6b              ; double 10331.048309033
	.quad	0x4112aa305d4391d0              ; double 305804.09107806999
	.quad	0x412d3d53aae8aa23              ; double 958121.83380634
	.quad	0x40f8939066f74ad0              ; double 100665.02513818
	.quad	0x41207ddc3531fbd1              ; double 540398.10389697005
	.quad	0x41161065c595a0e7              ; double 361497.44295360002
	.quad	0x41216f740a967b82              ; double 571322.02067934
	.quad	0x410acc67895460d5              ; double 219532.94205546999
	.quad	0x40a9e7b8fe5c4d19              ; double 3315.8613156169999
	.quad	0x41b14fad5032e5c9              ; double 290434384.19881874
	.quad	0x411d4925e6ddb1a1              ; double 479817.47545506997
	.quad	0x4112c2153209c221              ; double 307333.29886535002
	.quad	0x40f1875d98b71f4d              ; double 71797.849784014004
	.quad	0x412a8d81b24284e0              ; double 870080.84816375002

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"sqrt(%lf) == %lf (converged:%c)\n"

.subsections_via_symbols
