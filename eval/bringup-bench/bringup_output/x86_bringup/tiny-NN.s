	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function g_deriv
LCPI0_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI0_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_g_deriv
	.p2align	4, 0x90
_g_deriv:                               ## @g_deriv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	LCPI0_0(%rip), %xmm0
	callq	_libmin_exp
	movsd	LCPI0_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function g
LCPI1_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI1_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_g
	.p2align	4, 0x90
_g:                                     ## @g
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	LCPI1_0(%rip), %xmm0
	callq	_libmin_exp
	movsd	LCPI1_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sampleSine                     ## -- Begin function sampleSine
	.p2align	4, 0x90
_sampleSine:                            ## @sampleSine
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	testl	%edx, %edx
	je	LBB2_3
## %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	subsd	-40(%rbp), %xmm1                ## 8-byte Folded Reload
	movl	%edx, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)                ## 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0                ## 8-byte Folded Reload
	addsd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, (%r14,%r12,8)
	callq	_libmin_sin
	movsd	%xmm0, (%rbx,%r12,8)
	incq	%r12
	cmpq	%r12, %r15
	jne	LBB2_2
LBB2_3:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function fillArrayRand
LCPI3_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI3_1:
	.quad	0xbfe0000000000000              ## double -0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fillArrayRand
	.p2align	4, 0x90
_fillArrayRand:                         ## @fillArrayRand
	.cfi_startproc
## %bb.0:
	testl	%esi, %esi
	je	LBB3_4
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	%esi, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI3_0(%rip), %xmm0
	addsd	LCPI3_1(%rip), %xmm0
	movsd	%xmm0, (%rbx,%r15,8)
	incq	%r15
	cmpq	%r15, %r14
	jne	LBB3_2
## %bb.3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
LBB3_4:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fillArrayNull                  ## -- Begin function fillArrayNull
	.p2align	4, 0x90
_fillArrayNull:                         ## @fillArrayNull
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	je	LBB4_1
## %bb.2:
	movl	%esi, %esi
	shlq	$3, %rsi
	popq	%rbp
	jmp	___bzero                        ## TAILCALL
LBB4_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function train
LCPI5_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI5_1:
	.quad	0xbfe0000000000000              ## double -0.5
LCPI5_5:
	.quad	0x3fc4189374bc6a7f              ## double 0.157
LCPI5_6:
	.quad	0x3ff0000000000000              ## double 1
LCPI5_8:
	.quad	0x0000000000000000              ## double 0
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI5_2:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4330000000000000              ## double 4503599627370496
LCPI5_3:
	.quad	0x41dfffffffc00000              ## double 2147483647
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI5_4:
	.quad	0xbfe0000000000000              ## double -0.5
	.quad	0xbfe0000000000000              ## double -0.5
LCPI5_7:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_train
	.p2align	4, 0x90
_train:                                 ## @train
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1752, %rsp                     ## imm = 0x6D8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movapd	%xmm3, -1696(%rbp)              ## 16-byte Spill
	movapd	%xmm2, -1712(%rbp)              ## 16-byte Spill
	movsd	%xmm1, -1664(%rbp)              ## 8-byte Spill
	movapd	%xmm0, -1680(%rbp)              ## 16-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI5_0(%rip), %xmm0
	addsd	LCPI5_1(%rip), %xmm0
	movsd	%xmm0, -688(%rbp,%rbx,8)
	incq	%rbx
	cmpq	$40, %rbx
	jne	LBB5_1
## %bb.2:
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -848(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -832(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -816(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -800(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -784(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -768(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -752(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -736(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -720(%rbp)
	callq	_libmin_rand
	movl	%eax, %ebx
	callq	_libmin_rand
	movd	%ebx, %xmm0
	pinsrd	$1, %eax, %xmm0
	pmovzxdq	%xmm0, %xmm0                    ## xmm0 = xmm0[0],zero,xmm0[1],zero
	movdqa	LCPI5_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,4.503599627370496E+15]
	por	%xmm1, %xmm0
	subpd	%xmm1, %xmm0
	divpd	LCPI5_3(%rip), %xmm0
	addpd	LCPI5_4(%rip), %xmm0
	movapd	%xmm0, -704(%rbp)
	leaq	-1168(%rbp), %rdi
	movl	$320, %esi                      ## imm = 0x140
	callq	___bzero
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -1184(%rbp)
	movapd	%xmm0, -1200(%rbp)
	movapd	%xmm0, -1216(%rbp)
	movapd	%xmm0, -1232(%rbp)
	movapd	%xmm0, -1248(%rbp)
	movapd	%xmm0, -1264(%rbp)
	movapd	%xmm0, -1280(%rbp)
	movapd	%xmm0, -1296(%rbp)
	movapd	%xmm0, -1312(%rbp)
	movapd	%xmm0, -1328(%rbp)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB5_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	mulsd	LCPI5_5(%rip), %xmm0
	addsd	LCPI5_8(%rip), %xmm0
	movsd	%xmm0, -208(%rbp,%rbx,8)
	callq	_libmin_sin
	movsd	%xmm0, -368(%rbp,%rbx,8)
	incq	%rbx
	cmpq	$20, %rbx
	jne	LBB5_3
## %bb.4:
	movsd	LCPI5_6(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	-1664(%rbp), %xmm1              ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	LBB5_14
## %bb.5:
	movddup	-1696(%rbp), %xmm0              ## 16-byte Folded Reload
                                        ## xmm0 = mem[0,0]
	movapd	%xmm0, -1776(%rbp)              ## 16-byte Spill
	movddup	-1680(%rbp), %xmm0              ## 16-byte Folded Reload
                                        ## xmm0 = mem[0,0]
	movapd	%xmm0, -1760(%rbp)              ## 16-byte Spill
	movddup	-1712(%rbp), %xmm0              ## 16-byte Folded Reload
                                        ## xmm0 = mem[0,0]
	movapd	%xmm0, -1744(%rbp)              ## 16-byte Spill
	xorl	%r12d, %r12d
	leaq	-1168(%rbp), %rbx
	leaq	L_.str(%rip), %r14
	.p2align	4, 0x90
LBB5_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_7 Depth 2
                                        ##       Child Loop BB5_8 Depth 3
                                        ##       Child Loop BB5_10 Depth 3
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -1656(%rbp)              ## 8-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB5_7:                                 ##   Parent Loop BB5_6 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_8 Depth 3
                                        ##       Child Loop BB5_10 Depth 3
	movsd	-208(%rbp,%r15,8), %xmm0        ## xmm0 = mem[0],zero
	movaps	%xmm0, -1728(%rbp)              ## 16-byte Spill
	xorl	%r13d, %r13d
	xorps	%xmm11, %xmm11
	.p2align	4, 0x90
LBB5_8:                                 ##   Parent Loop BB5_6 Depth=1
                                        ##     Parent Loop BB5_7 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movaps	%xmm11, -1696(%rbp)             ## 16-byte Spill
	movsd	-680(%rbp,%r13,2), %xmm1        ## xmm1 = mem[0],zero
	mulsd	-1712(%rbp), %xmm1              ## 16-byte Folded Reload
	movsd	-688(%rbp,%r13,2), %xmm0        ## xmm0 = mem[0],zero
	mulsd	-1728(%rbp), %xmm0              ## 16-byte Folded Reload
	addsd	%xmm1, %xmm0
	xorpd	LCPI5_7(%rip), %xmm0
	movapd	%xmm0, -1792(%rbp)              ## 16-byte Spill
	callq	_libmin_exp
	movsd	LCPI5_6(%rip), %xmm1            ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -1680(%rbp)              ## 8-byte Spill
	movsd	%xmm1, -1488(%rbp,%r13)
	movapd	-1792(%rbp), %xmm0              ## 16-byte Reload
	callq	_libmin_exp
	movapd	-1696(%rbp), %xmm11             ## 16-byte Reload
	movsd	LCPI5_6(%rip), %xmm2            ## xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-1680(%rbp), %xmm1              ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	-848(%rbp,%r13), %xmm1
	movsd	%xmm0, -1648(%rbp,%r13)
	addsd	%xmm1, %xmm11
	addq	$8, %r13
	cmpq	$160, %r13
	jne	LBB5_8
## %bb.9:                               ##   in Loop: Header=BB5_7 Depth=2
	subsd	-368(%rbp,%r15,8), %xmm11
	movddup	%xmm11, %xmm0                   ## xmm0 = xmm11[0,0]
	movddup	-1728(%rbp), %xmm1              ## 16-byte Folded Reload
                                        ## xmm1 = mem[0,0]
	xorl	%eax, %eax
	movapd	-1776(%rbp), %xmm8              ## 16-byte Reload
	movapd	-1760(%rbp), %xmm9              ## 16-byte Reload
	movapd	-1744(%rbp), %xmm10             ## 16-byte Reload
	.p2align	4, 0x90
LBB5_10:                                ##   Parent Loop BB5_6 Depth=1
                                        ##     Parent Loop BB5_7 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movapd	-848(%rbp,%rax), %xmm3
	movapd	-1648(%rbp,%rax), %xmm2
	mulpd	%xmm3, %xmm2
	mulpd	%xmm0, %xmm2
	movapd	-1488(%rbp,%rax), %xmm4
	mulpd	%xmm0, %xmm4
	movapd	-1328(%rbp,%rax), %xmm5
	mulpd	%xmm8, %xmm5
	mulpd	%xmm9, %xmm4
	addpd	%xmm5, %xmm4
	subpd	%xmm4, %xmm3
	movapd	%xmm3, -848(%rbp,%rax)
	movapd	%xmm4, -1328(%rbp,%rax)
	movapd	%xmm2, %xmm3
	mulpd	%xmm1, %xmm3
	movapd	-1168(%rbp,%rax,2), %xmm4
	movapd	-1152(%rbp,%rax,2), %xmm5
	movapd	%xmm4, %xmm6
	unpcklpd	%xmm5, %xmm6                    ## xmm6 = xmm6[0],xmm5[0]
	unpckhpd	%xmm5, %xmm4                    ## xmm4 = xmm4[1],xmm5[1]
	mulpd	%xmm8, %xmm6
	mulpd	%xmm9, %xmm3
	addpd	%xmm6, %xmm3
	movapd	-688(%rbp,%rax,2), %xmm5
	movapd	-672(%rbp,%rax,2), %xmm6
	movapd	%xmm5, %xmm7
	unpcklpd	%xmm6, %xmm7                    ## xmm7 = xmm7[0],xmm6[0]
	unpckhpd	%xmm6, %xmm5                    ## xmm5 = xmm5[1],xmm6[1]
	subpd	%xmm3, %xmm7
	mulpd	%xmm10, %xmm2
	mulpd	%xmm8, %xmm4
	mulpd	%xmm9, %xmm2
	addpd	%xmm4, %xmm2
	subpd	%xmm2, %xmm5
	movapd	%xmm7, %xmm4
	unpckhpd	%xmm5, %xmm4                    ## xmm4 = xmm4[1],xmm5[1]
	unpcklpd	%xmm5, %xmm7                    ## xmm7 = xmm7[0],xmm5[0]
	movapd	%xmm7, -688(%rbp,%rax,2)
	movapd	%xmm4, -672(%rbp,%rax,2)
	movapd	%xmm3, %xmm4
	unpckhpd	%xmm2, %xmm4                    ## xmm4 = xmm4[1],xmm2[1]
	unpcklpd	%xmm2, %xmm3                    ## xmm3 = xmm3[0],xmm2[0]
	movapd	%xmm3, -1168(%rbp,%rax,2)
	movapd	%xmm4, -1152(%rbp,%rax,2)
	addq	$16, %rax
	cmpq	$160, %rax
	jne	LBB5_10
## %bb.11:                              ##   in Loop: Header=BB5_7 Depth=2
	mulsd	%xmm11, %xmm11
	movsd	-1656(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm11, %xmm0
	movsd	%xmm0, -1656(%rbp)              ## 8-byte Spill
	incq	%r15
	cmpq	$20, %r15
	jne	LBB5_7
## %bb.12:                              ##   in Loop: Header=BB5_6 Depth=1
	leal	1(%r12), %r15d
	movl	$320, %esi                      ## imm = 0x140
	movq	%rbx, %rdi
	callq	___bzero
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -1184(%rbp)
	movapd	%xmm0, -1200(%rbp)
	movapd	%xmm0, -1216(%rbp)
	movapd	%xmm0, -1232(%rbp)
	movapd	%xmm0, -1248(%rbp)
	movapd	%xmm0, -1264(%rbp)
	movapd	%xmm0, -1280(%rbp)
	movapd	%xmm0, -1296(%rbp)
	movapd	%xmm0, -1312(%rbp)
	movapd	%xmm0, -1328(%rbp)
	movq	%r14, %rdi
	movl	%r15d, %esi
	movsd	-1656(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_libmin_printf
	movsd	-1656(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	ucomisd	-1664(%rbp), %xmm0              ## 8-byte Folded Reload
	jbe	LBB5_14
## %bb.13:                              ##   in Loop: Header=BB5_6 Depth=1
	cmpl	$9, %r12d
	movl	%r15d, %r12d
	jb	LBB5_6
LBB5_14:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB5_16
## %bb.15:
	xorl	%eax, %eax
	addq	$1752, %rsp                     ## imm = 0x6D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_16:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI6_0:
	.quad	0x3f747ae147ae147b              ## double 0.0050000000000000001
LCPI6_1:
	.quad	0x3f847ae147ae147b              ## double 0.01
LCPI6_2:
	.quad	0x3ff0000000000000              ## double 1
LCPI6_3:
	.quad	0x3fd999999999999a              ## double 0.40000000000000002
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$42, %edi
	callq	_libmin_srand
	movsd	LCPI6_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI6_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI6_2(%rip), %xmm2            ## xmm2 = mem[0],zero
	movsd	LCPI6_3(%rip), %xmm3            ## xmm3 = mem[0],zero
	callq	_train
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"iteration %d Total error %f\n"

.subsections_via_symbols
