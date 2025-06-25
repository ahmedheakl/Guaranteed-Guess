	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_strict_iteration               ## -- Begin function strict_iteration
	.p2align	4, 0x90
_strict_iteration:                      ## @strict_iteration
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm2, -16(%rbp)                ## 8-byte Spill
	movsd	%xmm1, -8(%rbp)                 ## 8-byte Spill
	callq	_libmin_sin
	mulsd	-8(%rbp), %xmm0                 ## 8-byte Folded Reload
	addsd	-16(%rbp), %xmm0                ## 8-byte Folded Reload
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function newton
LCPI1_0:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_newton
	.p2align	4, 0x90
_newton:                                ## @newton
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm2, -8(%rbp)                 ## 8-byte Spill
	movsd	%xmm1, -24(%rbp)                ## 8-byte Spill
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	callq	_libmin_sin
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1                ## 8-byte Folded Reload
	addsd	-8(%rbp), %xmm1                 ## 8-byte Folded Reload
	movsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)                 ## 8-byte Spill
	callq	_libmin_cos
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	LCPI1_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	addsd	-16(%rbp), %xmm0                ## 8-byte Folded Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function binary
LCPI2_0:
	.quad	0x3fe921fb54442eea              ## double 0.78539816339750002
LCPI2_2:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI2_1:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_binary
	.p2align	4, 0x90
_binary:                                ## @binary
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	testl	%edi, %edi
	je	LBB2_2
## %bb.1:
	xorpd	%xmm0, %xmm0
	movsd	LCPI2_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	jmp	LBB2_3
LBB2_2:
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	movsd	%xmm2, -24(%rbp)                ## 8-byte Spill
	movsd	%xmm1, -8(%rbp)                 ## 8-byte Spill
	callq	_libmin_sin
	movsd	-8(%rbp), %xmm1                 ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm4                ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movapd	%xmm4, %xmm0
	subsd	%xmm1, %xmm0
	movsd	_binary.scale(%rip), %xmm1      ## xmm1 = mem[0],zero
	movapd	LCPI2_1(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm1, %xmm2
	cmpltsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movapd	%xmm0, %xmm3
	andpd	%xmm1, %xmm3
	andnpd	%xmm2, %xmm0
	orpd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	mulsd	LCPI2_2(%rip), %xmm1
LBB2_3:
	movsd	%xmm1, _binary.scale(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function e_series
LCPI3_0:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI3_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI3_2:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_e_series
	.p2align	4, 0x90
_e_series:                              ## @e_series
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testl	%edi, %edi
	je	LBB3_2
## %bb.1:
	movl	$0, _e_series.n(%rip)
	xorpd	%xmm2, %xmm2
LBB3_19:
	movapd	%xmm2, %xmm0
	jmp	LBB3_20
LBB3_2:
	movl	_e_series.n(%rip), %eax
	testl	%eax, %eax
	je	LBB3_18
## %bb.3:
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movsd	%xmm1, -32(%rbp)                ## 8-byte Spill
	js	LBB3_4
## %bb.5:
	xorl	%ebx, %ebx
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	movl	$1, %r14d
	movsd	LCPI3_1(%rip), %xmm3            ## xmm3 = mem[0],zero
	movsd	%xmm2, -48(%rbp)                ## 8-byte Spill
	jmp	LBB3_6
	.p2align	4, 0x90
LBB3_16:                                ##   in Loop: Header=BB3_6 Depth=1
	movapd	%xmm1, -64(%rbp)                ## 16-byte Spill
	addsd	%xmm8, %xmm8
	subsd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	callq	_libmin_sin
	movsd	-48(%rbp), %xmm2                ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm0                ## 16-byte Folded Reload
	movsd	-24(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)                ## 8-byte Spill
	leal	(%rbx,%rbx), %ecx
	addl	$2, %ecx
	movl	%ebx, %edx
	incl	%edx
	movl	_e_series.n(%rip), %eax
	decl	%r14d
	movl	%edx, %ebx
	cmpl	%eax, %ecx
	movsd	LCPI3_1(%rip), %xmm3            ## xmm3 = mem[0],zero
	jg	LBB3_17
LBB3_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_8 Depth 2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	xorps	%xmm8, %xmm8
	cvtsi2sd	%ebx, %xmm8
	movapd	%xmm0, %xmm7
	mulsd	LCPI3_0(%rip), %xmm7
	movl	%eax, %ecx
	subl	%ebx, %ecx
	movapd	%xmm3, %xmm1
	cmpl	$2, %ecx
	jl	LBB3_14
## %bb.7:                               ##   in Loop: Header=BB3_6 Depth=1
	subsd	%xmm8, %xmm7
	movapd	%xmm0, %xmm9
	subsd	%xmm8, %xmm9
	addl	%r14d, %eax
	xorl	%ecx, %ecx
	movapd	%xmm3, %xmm1
	jmp	LBB3_8
	.p2align	4, 0x90
LBB3_13:                                ##   in Loop: Header=BB3_8 Depth=2
	mulsd	%xmm4, %xmm5
	mulsd	%xmm7, %xmm6
	divsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm1
	incl	%ecx
	cmpl	$2, %eax
	jbe	LBB3_14
LBB3_8:                                 ##   Parent Loop BB3_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decl	%eax
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	cmpl	%ebx, %ecx
	jl	LBB3_9
## %bb.10:                              ##   in Loop: Header=BB3_8 Depth=2
	movapd	%xmm3, %xmm5
	movapd	%xmm7, %xmm6
	jl	LBB3_13
	jmp	LBB3_12
	.p2align	4, 0x90
LBB3_9:                                 ##   in Loop: Header=BB3_8 Depth=2
	movapd	%xmm9, %xmm5
	subsd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	movapd	%xmm7, %xmm6
	jl	LBB3_13
LBB3_12:                                ##   in Loop: Header=BB3_8 Depth=2
	movapd	%xmm3, %xmm6
	jmp	LBB3_13
	.p2align	4, 0x90
LBB3_14:                                ##   in Loop: Header=BB3_6 Depth=1
	testb	$1, %bl
	je	LBB3_16
## %bb.15:                              ##   in Loop: Header=BB3_6 Depth=1
	xorpd	LCPI3_2(%rip), %xmm1
	jmp	LBB3_16
LBB3_18:
	movl	$1, _e_series.n(%rip)
	jmp	LBB3_19
LBB3_4:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
LBB3_17:
	leal	1(%rax), %ecx
	movl	%ecx, _e_series.n(%rip)
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_pow
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	addsd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
LBB3_20:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function bin_fact
LCPI4_0:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI4_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_bin_fact
	.p2align	4, 0x90
_bin_fact:                              ## @bin_fact
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	subl	%esi, %eax
	cmpl	$2, %eax
	jl	LBB4_7
## %bb.1:
	cvtsi2sd	%edi, %xmm1
	movsd	LCPI4_0(%rip), %xmm2            ## xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	cvtsi2sd	%esi, %xmm0
	subsd	%xmm0, %xmm2
	subsd	%xmm0, %xmm1
	movsd	LCPI4_1(%rip), %xmm3            ## xmm3 = mem[0],zero
	xorl	%ecx, %ecx
	movapd	%xmm3, %xmm0
	jmp	LBB4_3
	.p2align	4, 0x90
LBB4_6:                                 ##   in Loop: Header=BB4_3 Depth=1
	movapd	%xmm3, %xmm6
LBB4_2:                                 ##   in Loop: Header=BB4_3 Depth=1
	mulsd	%xmm4, %xmm5
	mulsd	%xmm2, %xmm6
	divsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm0
	leal	-1(%rax), %edx
	incl	%ecx
	cmpl	$2, %eax
	movl	%edx, %eax
	jbe	LBB4_8
LBB4_3:                                 ## =>This Inner Loop Header: Depth=1
	xorps	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm4
	cmpl	%esi, %ecx
	jl	LBB4_5
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movapd	%xmm3, %xmm5
	movapd	%xmm2, %xmm6
	jl	LBB4_2
	jmp	LBB4_6
	.p2align	4, 0x90
LBB4_5:                                 ##   in Loop: Header=BB4_3 Depth=1
	movapd	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	movapd	%xmm2, %xmm6
	jl	LBB4_2
	jmp	LBB4_6
LBB4_7:
	movsd	LCPI4_1(%rip), %xmm0            ## xmm0 = mem[0],zero
LBB4_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function j_series
LCPI5_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI5_1:
	.quad	0x4000000000000000              ## double 2
LCPI5_2:
	.quad	0x4010000000000000              ## double 4
LCPI5_4:
	.quad	0x3cb0000000000000              ## double 2.2204460492503131E-16
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI5_3:
	.quad	0xbff0000000000000              ## double -1
	.quad	0x3ff0000000000000              ## double 1
LCPI5_5:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_j_series
	.p2align	4, 0x90
_j_series:                              ## @j_series
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	testl	%edi, %edi
	je	LBB5_3
## %bb.1:
	movl	$0, _j_series.n(%rip)
	xorpd	%xmm8, %xmm8
	jmp	LBB5_2
LBB5_3:
	movapd	%xmm2, %xmm8
	movl	_j_series.n(%rip), %eax
	testl	%eax, %eax
	je	LBB5_4
## %bb.5:
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	cmpl	$1, %ecx
	jne	LBB5_17
## %bb.6:
	movsd	LCPI5_0(%rip), %xmm3            ## xmm3 = mem[0],zero
	movsd	LCPI5_1(%rip), %xmm4            ## xmm4 = mem[0],zero
	testb	$1, %cl
	jne	LBB5_9
	jmp	LBB5_10
LBB5_4:
	movl	$1, _j_series.n(%rip)
	jmp	LBB5_2
LBB5_17:
	movl	%ecx, %edx
	andl	$2147483646, %edx               ## imm = 0x7FFFFFFE
	movsd	LCPI5_0(%rip), %xmm3            ## xmm3 = mem[0],zero
	movl	$1, %esi
	.p2align	4, 0x90
LBB5_18:                                ## =>This Inner Loop Header: Depth=1
	xorps	%xmm4, %xmm4
	cvtsi2sd	%esi, %xmm4
	addsd	%xmm4, %xmm4
	movapd	%xmm1, %xmm5
	divsd	%xmm4, %xmm5
	mulsd	%xmm3, %xmm5
	leal	1(%rsi), %edi
	xorps	%xmm4, %xmm4
	cvtsi2sd	%edi, %xmm4
	addsd	%xmm4, %xmm4
	movapd	%xmm1, %xmm3
	divsd	%xmm4, %xmm3
	mulsd	%xmm5, %xmm3
	addl	$2, %esi
	cmpl	%edx, %edi
	jne	LBB5_18
## %bb.7:
	xorps	%xmm4, %xmm4
	cvtsi2sd	%esi, %xmm4
	addsd	%xmm4, %xmm4
	testb	$1, %cl
	je	LBB5_10
LBB5_9:
	movapd	%xmm1, %xmm5
	divsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm3
LBB5_10:
	cvtsi2sd	%ecx, %xmm6
	mulsd	%xmm1, %xmm1
	movl	$1, %edx
	movsd	LCPI5_2(%rip), %xmm9            ## xmm9 = mem[0],zero
	leaq	LCPI5_3(%rip), %rsi
	movsd	LCPI5_4(%rip), %xmm7            ## xmm7 = mem[0],zero
	movapd	%xmm3, %xmm4
	.p2align	4, 0x90
LBB5_11:                                ## =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	xorl	%edi, %edi
	testb	$1, %dl
	sete	%dil
	movapd	%xmm6, %xmm5
	addsd	%xmm2, %xmm5
	mulsd	%xmm9, %xmm2
	mulsd	%xmm5, %xmm2
	movapd	%xmm1, %xmm5
	divsd	%xmm2, %xmm5
	mulsd	%xmm5, %xmm3
	movsd	(%rsi,%rdi,8), %xmm2            ## xmm2 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm4
	incl	%edx
	ucomisd	%xmm7, %xmm3
	ja	LBB5_11
## %bb.12:
	movsd	LCPI5_1(%rip), %xmm2            ## xmm2 = mem[0],zero
	movapd	%xmm4, %xmm1
	testb	$1, %cl
	je	LBB5_14
## %bb.13:
	movapd	LCPI5_5(%rip), %xmm1            ## xmm1 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm4, %xmm1
LBB5_14:
	divsd	%xmm0, %xmm2
	testl	%eax, %eax
	js	LBB5_16
## %bb.15:
	movapd	%xmm4, %xmm1
LBB5_16:
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -8(%rbp)                 ## 8-byte Spill
	mulsd	%xmm8, %xmm0
	callq	_libmin_sin
	movapd	%xmm0, %xmm8
	mulsd	-8(%rbp), %xmm8                 ## 8-byte Folded Reload
	incl	_j_series.n(%rip)
	addsd	-16(%rbp), %xmm8                ## 8-byte Folded Reload
LBB5_2:
	movapd	%xmm8, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function J
LCPI6_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI6_1:
	.quad	0x4000000000000000              ## double 2
LCPI6_2:
	.quad	0x4010000000000000              ## double 4
LCPI6_4:
	.quad	0x3cb0000000000000              ## double 2.2204460492503131E-16
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI6_3:
	.quad	0xbff0000000000000              ## double -1
	.quad	0x3ff0000000000000              ## double 1
LCPI6_5:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_J
	.p2align	4, 0x90
_J:                                     ## @J
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	jae	LBB6_1
## %bb.2:
	movl	$1, %edx
	movl	$1, %r8d
	cmpl	$2, %eax
	cmovael	%eax, %r8d
	jae	LBB6_14
## %bb.3:
	movsd	LCPI6_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI6_1(%rip), %xmm2            ## xmm2 = mem[0],zero
	testb	$1, %r8b
	jne	LBB6_6
	jmp	LBB6_7
LBB6_1:
	movsd	LCPI6_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	jmp	LBB6_7
LBB6_14:
	movl	%r8d, %esi
	andl	$2147483646, %esi               ## imm = 0x7FFFFFFE
	movsd	LCPI6_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB6_15:                                ## =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	addsd	%xmm2, %xmm2
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	leal	1(%rdx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	addsd	%xmm2, %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	addl	$2, %edx
	cmpl	%esi, %ecx
	jne	LBB6_15
## %bb.4:
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	addsd	%xmm2, %xmm2
	testb	$1, %r8b
	je	LBB6_7
LBB6_6:
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
LBB6_7:
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	%xmm0, %xmm0
	movl	$1, %ecx
	movsd	LCPI6_2(%rip), %xmm4            ## xmm4 = mem[0],zero
	leaq	LCPI6_3(%rip), %rdx
	movsd	LCPI6_4(%rip), %xmm5            ## xmm5 = mem[0],zero
	movapd	%xmm1, %xmm2
	.p2align	4, 0x90
LBB6_8:                                 ## =>This Inner Loop Header: Depth=1
	xorps	%xmm6, %xmm6
	cvtsi2sd	%ecx, %xmm6
	xorl	%esi, %esi
	testb	$1, %cl
	sete	%sil
	movapd	%xmm3, %xmm7
	addsd	%xmm6, %xmm7
	mulsd	%xmm4, %xmm6
	mulsd	%xmm7, %xmm6
	movapd	%xmm0, %xmm7
	divsd	%xmm6, %xmm7
	mulsd	%xmm7, %xmm1
	movsd	(%rdx,%rsi,8), %xmm6            ## xmm6 = mem[0],zero
	mulsd	%xmm1, %xmm6
	addsd	%xmm6, %xmm2
	incl	%ecx
	ucomisd	%xmm5, %xmm1
	ja	LBB6_8
## %bb.9:
	movapd	%xmm2, %xmm0
	testb	$1, %al
	jne	LBB6_10
## %bb.11:
	testl	%edi, %edi
	jns	LBB6_12
LBB6_13:
	popq	%rbp
	retq
LBB6_10:
	movapd	LCPI6_5(%rip), %xmm0            ## xmm0 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm2, %xmm0
	testl	%edi, %edi
	js	LBB6_13
LBB6_12:
	movapd	%xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI7_0:
	.quad	0x3cb0000000000000              ## double 2.2204460492503131E-16
LCPI7_1:
	.quad	0x3fe53531aff10c01              ## double 0.66274341930000003
LCPI7_2:
	.quad	0x3ff0000000000000              ## double 1
LCPI7_3:
	.quad	0x401921fb54442eea              ## double 6.2831853071800001
LCPI7_4:
	.quad	0x400921fb54442eea              ## double 3.1415926535900001
LCPI7_6:
	.quad	0x3ff921fb54442eea              ## double 1.570796326795
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI7_5:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	_argv+8(%rip), %rdi
	movl	$1, %r15d
	cmpb	$45, (%rdi)
	jne	LBB7_15
## %bb.1:
	movl	$1, %r15d
	leaq	_argv+8(%rip), %rbx
	movabsq	$4294967296, %rcx               ## imm = 0x100000000
	leaq	_argv(%rip), %r13
	leaq	L_.str.10(%rip), %r12
	movl	$1, %eax
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	%r15, -64(%rbp)                 ## 8-byte Spill
	movslq	%eax, %r15
	leaq	16(%r13,%r15,8), %r13
	shlq	$32, %r15
	addq	%rcx, %r15
	movl	%eax, %r14d
	jmp	LBB7_4
	.p2align	4, 0x90
LBB7_3:                                 ##   in Loop: Header=BB7_4 Depth=2
	movq	%r13, %rbx
	movq	(%r13), %rdi
	movabsq	$8589934592, %rax               ## imm = 0x200000000
	addq	%rax, %r15
	addl	$2, %r14d
	addq	$16, %r13
	cmpb	$45, (%rdi)
	jne	LBB7_16
LBB7_4:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	L_.str.5(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_6
## %bb.5:                               ##   in Loop: Header=BB7_4 Depth=2
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
LBB7_6:                                 ##   in Loop: Header=BB7_4 Depth=2
	movq	(%rbx), %rdi
	leaq	L_.str.8(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_8
## %bb.7:                               ##   in Loop: Header=BB7_4 Depth=2
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
LBB7_8:                                 ##   in Loop: Header=BB7_4 Depth=2
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_11
## %bb.9:                               ##   in Loop: Header=BB7_4 Depth=2
	movq	-8(%r13), %rdi
	callq	_libmin_atof
	movsd	%xmm0, _derror(%rip)
	movsd	LCPI7_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	LBB7_3
## %bb.10:                              ##   in Loop: Header=BB7_4 Depth=2
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB7_3
	.p2align	4, 0x90
LBB7_11:                                ##   in Loop: Header=BB7_2 Depth=1
	movq	(%rbx), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_32
## %bb.12:                              ##   in Loop: Header=BB7_2 Depth=1
	sarq	$29, %r15
	leaq	_argv(%rip), %r13
	movq	(%r15,%r13), %rdi
	callq	_libmin_atoi
	movl	%eax, %r15d
	addl	$-6, %eax
	cmpl	$-6, %eax
	jbe	LBB7_33
## %bb.13:                              ##   in Loop: Header=BB7_2 Depth=1
	leal	2(%r14), %eax
	movslq	%eax, %rcx
	leaq	(,%rcx,8), %rbx
	addq	%r13, %rbx
	movq	(%r13,%rcx,8), %rdi
	cmpb	$45, (%rdi)
	movabsq	$4294967296, %rcx               ## imm = 0x100000000
	je	LBB7_2
## %bb.14:
	addl	$2, %r14d
	jmp	LBB7_17
LBB7_15:
	movl	$1, %r14d
	jmp	LBB7_17
LBB7_16:
	movq	-64(%rbp), %r15                 ## 8-byte Reload
LBB7_17:
	leal	2(%r14), %eax
	cmpl	_argc(%rip), %eax
	jle	LBB7_19
LBB7_18:
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.14(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB7_30
LBB7_19:
	callq	_libmin_atof
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movslq	%r14d, %rax
	leaq	_argv(%rip), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	_libmin_atof
	movapd	%xmm0, %xmm1
	cmpl	$4, %r15d
	jne	LBB7_22
## %bb.20:
	ucomisd	LCPI7_1(%rip), %xmm1
	jbe	LBB7_22
## %bb.21:
	leaq	L_.str.15(%rip), %rdi
	movsd	LCPI7_1(%rip), %xmm0            ## xmm0 = mem[0],zero
	jmp	LBB7_29
LBB7_22:
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	ja	LBB7_28
## %bb.23:
	ucomisd	LCPI7_2(%rip), %xmm1
	jae	LBB7_28
## %bb.24:
	decl	%r15d
	leaq	_methods(%rip), %rax
	movq	(%rax,%r15,8), %r15
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm1, -88(%rbp)                ## 8-byte Spill
	callq	_libmin_fabs
	movsd	LCPI7_3(%rip), %xmm1            ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movapd	%xmm0, -80(%rbp)                ## 16-byte Spill
	callq	_libmin_floor
	movapd	-80(%rbp), %xmm2                ## 16-byte Reload
	subsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm2
	movsd	LCPI7_4(%rip), %xmm1            ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movapd	LCPI7_5(%rip), %xmm0            ## xmm0 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm2, %xmm0
	xorpd	%xmm3, %xmm3
	cmpltsd	-64(%rbp), %xmm3                ## 8-byte Folded Reload
	andpd	%xmm3, %xmm2
	andnpd	%xmm0, %xmm3
	orpd	%xmm2, %xmm3
	movsd	LCPI7_3(%rip), %xmm0            ## xmm0 = mem[0],zero
	subsd	%xmm3, %xmm0
	movapd	%xmm1, -112(%rbp)               ## 16-byte Spill
	movapd	%xmm1, %xmm2
	cmpltsd	%xmm3, %xmm2
	andpd	%xmm2, %xmm0
	movapd	%xmm3, -80(%rbp)                ## 16-byte Spill
	andnpd	%xmm3, %xmm2
	orpd	%xmm0, %xmm2
	movsd	LCPI7_6(%rip), %xmm0            ## xmm0 = mem[0],zero
	xorl	%r12d, %r12d
	movsd	-88(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movapd	%xmm2, -128(%rbp)               ## 16-byte Spill
	xorl	%edi, %edi
	callq	*%r15
	movapd	%xmm0, %xmm1
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
	movsd	LCPI7_6(%rip), %xmm0            ## xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	_libmin_fabs
	movapd	-64(%rbp), %xmm1                ## 16-byte Reload
	ucomisd	_derror(%rip), %xmm0
	jb	LBB7_27
## %bb.25:
	movl	$1, %esi
	movapd	-112(%rbp), %xmm0               ## 16-byte Reload
	cmpltsd	-80(%rbp), %xmm0                ## 16-byte Folded Reload
	movapd	%xmm0, -112(%rbp)               ## 16-byte Spill
	leaq	L_.str.17(%rip), %r14
	.p2align	4, 0x90
LBB7_26:                                ## =>This Inner Loop Header: Depth=1
	leal	1(%rsi), %ebx
	movapd	%xmm1, %xmm2
	movapd	%xmm1, -64(%rbp)                ## 16-byte Spill
	xorpd	LCPI7_5(%rip), %xmm1
	movapd	-112(%rbp), %xmm0               ## 16-byte Reload
	andpd	%xmm0, %xmm1
	andnpd	%xmm2, %xmm0
	orpd	%xmm1, %xmm0
	movq	%r14, %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	movb	$1, %al
	callq	_libmin_printf
	movapd	-64(%rbp), %xmm0                ## 16-byte Reload
	movsd	-88(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movapd	-128(%rbp), %xmm2               ## 16-byte Reload
	xorl	%edi, %edi
	callq	*%r15
	movapd	%xmm0, %xmm1
	movsd	%xmm0, -80(%rbp)                ## 8-byte Spill
	movapd	-64(%rbp), %xmm0                ## 16-byte Reload
	subsd	%xmm1, %xmm0
	callq	_libmin_fabs
	ucomisd	_derror(%rip), %xmm0
	movsd	-80(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movl	%ebx, %esi
	jae	LBB7_26
LBB7_27:
	callq	_libmin_success
	jmp	LBB7_31
LBB7_28:
	leaq	L_.str.16(%rip), %rdi
	movapd	%xmm1, %xmm0
LBB7_29:
	movb	$1, %al
	callq	_libmin_printf
LBB7_30:
	movl	$1, %r12d
LBB7_31:
	movl	%r12d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_32:
	movq	(%rbx), %rsi
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB7_18
LBB7_33:
	leaq	L_.str.12(%rip), %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB7_30
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function kepler
LCPI8_0:
	.quad	0x3fe53531aff10c01              ## double 0.66274341930000003
LCPI8_1:
	.quad	0x3ff0000000000000              ## double 1
LCPI8_2:
	.quad	0x401921fb54442eea              ## double 6.2831853071800001
LCPI8_3:
	.quad	0x400921fb54442eea              ## double 3.1415926535900001
LCPI8_6:
	.quad	0xbff0000000000000              ## double -1
LCPI8_7:
	.quad	0x3ff921fb54442eea              ## double 1.570796326795
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI8_4:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
LCPI8_5:
	.quad	0xbff0000000000000              ## double -1
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_kepler
	.p2align	4, 0x90
_kepler:                                ## @kepler
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
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$-1, %ebx
	cmpl	$4, %esi
	ja	LBB8_12
## %bb.1:
	movq	%rdi, %r14
	ucomisd	LCPI8_0(%rip), %xmm1
	jbe	LBB8_3
## %bb.2:
	cmpl	$3, %esi
	je	LBB8_12
LBB8_3:
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm1, %xmm3
	ja	LBB8_12
## %bb.4:
	ucomisd	LCPI8_1(%rip), %xmm1
	jae	LBB8_12
## %bb.5:
	movsd	%xmm1, -48(%rbp)                ## 8-byte Spill
	movsd	%xmm2, -56(%rbp)                ## 8-byte Spill
	movl	%esi, %eax
	leaq	_methods(%rip), %rcx
	movq	(%rcx,%rax,8), %r15
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	callq	_libmin_fabs
	divsd	LCPI8_2(%rip), %xmm0
	movapd	%xmm0, -80(%rbp)                ## 16-byte Spill
	callq	_libmin_floor
	movapd	-80(%rbp), %xmm3                ## 16-byte Reload
	subsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm3
	movsd	LCPI8_3(%rip), %xmm0            ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movapd	LCPI8_4(%rip), %xmm1            ## xmm1 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	cmpltsd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	xorl	%ebx, %ebx
	ucomisd	%xmm2, %xmm0
	seta	%r12b
	callq	_libmin_fabs
	movsd	LCPI8_3(%rip), %xmm3            ## xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	ja	LBB8_6
## %bb.7:
	movapd	%xmm0, %xmm2
	jmp	LBB8_8
LBB8_6:
	movsd	LCPI8_2(%rip), %xmm2            ## xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
LBB8_8:
	movb	%r12b, %bl
	leaq	LCPI8_5(%rip), %rax
	movsd	(%rax,%rbx,8), %xmm1            ## xmm1 = mem[0],zero
	cmpltsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	andnpd	%xmm1, %xmm0
	movsd	LCPI8_6(%rip), %xmm1            ## xmm1 = mem[0],zero
	andpd	%xmm3, %xmm1
	orpd	%xmm0, %xmm1
	movapd	%xmm1, -96(%rbp)                ## 16-byte Spill
	movsd	LCPI8_7(%rip), %xmm0            ## xmm0 = mem[0],zero
	xorl	%ebx, %ebx
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	%xmm2, -80(%rbp)                ## 8-byte Spill
	xorl	%edi, %edi
	callq	*%r15
	movsd	%xmm0, (%r14)
	movsd	LCPI8_7(%rip), %xmm1            ## xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_libmin_fabs
	ucomisd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	jb	LBB8_11
## %bb.9:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB8_10:                                ## =>This Inner Loop Header: Depth=1
	movsd	(%r14), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	incl	%ebx
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2                ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	xorl	%edi, %edi
	callq	*%r15
	movsd	%xmm0, (%r14)
	movsd	-40(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_libmin_fabs
	ucomisd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	jae	LBB8_10
LBB8_11:
	movapd	-96(%rbp), %xmm0                ## 16-byte Reload
	mulsd	(%r14), %xmm0
	movsd	%xmm0, (%r14)
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	movl	$1, %edi
	callq	*%r15
LBB8_12:
	movl	%ebx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	3                               ## @binary.scale
_binary.scale:
	.quad	0x3fe921fb54442eea              ## double 0.78539816339750002

.zerofill __DATA,__bss,_e_series.n,4,2  ## @e_series.n
.zerofill __DATA,__bss,_j_series.n,4,2  ## @j_series.n
	.globl	_argc                           ## @argc
	.p2align	2
_argc:
	.long	5                               ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"kepler"

L_.str.1:                               ## @.str.1
	.asciz	"-m"

L_.str.2:                               ## @.str.2
	.asciz	"3"

L_.str.3:                               ## @.str.3
	.asciz	"0.34"

L_.str.4:                               ## @.str.4
	.asciz	"0.25"

	.section	__DATA,__data
	.globl	_argv                           ## @argv
	.p2align	4
_argv:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"-h"

L_.str.6:                               ## @.str.6
	.asciz	"%s\n"

L_.str.7:                               ## @.str.7
	.asciz	"kepler [-h -v -a <.nnnn...> -m <k>] M e\n-h: print this helpful message\n-v: print version number and exit\n-a: obtain solution to accuracy of  < .nnnn (default .0000001)\n-m: use selected calculation method k, where\n\tk = 1: Simple iteration.\n\tk = 2: Newton's method.\n\tk = 3: Binary search.\n\tk = 4: Series in powers of e. (e<.6627434193.)\n\tk = 5: Fourier Bessel series.\nM = mean anomaly (radians)\ne = orbit eccentricty."

L_.str.8:                               ## @.str.8
	.asciz	"-v"

L_.str.9:                               ## @.str.9
	.asciz	"1.11"

L_.str.10:                              ## @.str.10
	.asciz	"-a"

	.section	__DATA,__data
	.p2align	3                               ## @derror
_derror:
	.quad	0x3eb0c6f7a0b5ed8d              ## double 9.9999999999999995E-7

	.section	__TEXT,__cstring,cstring_literals
L_.str.11:                              ## @.str.11
	.asciz	"Warning: requested precision may exceed implementation limit.\n"

L_.str.12:                              ## @.str.12
	.asciz	"Bad method number %d\n"

L_.str.13:                              ## @.str.13
	.asciz	"kepler: Unknown option %s\n"

L_.str.14:                              ## @.str.14
	.asciz	"kepler [-h -v -a <.nnnn...> -m <k>] M e"

	.section	__DATA,__const
	.p2align	4                               ## @methods
_methods:
	.quad	_strict_iteration
	.quad	_newton
	.quad	_binary
	.quad	_e_series
	.quad	_j_series

	.section	__TEXT,__cstring,cstring_literals
L_.str.15:                              ## @.str.15
	.asciz	"e cannot exceed %f for this method.\n"

L_.str.16:                              ## @.str.16
	.asciz	"Eccentricity %f out of range.\n"

L_.str.17:                              ## @.str.17
	.asciz	"n = %d\tE = %f\n"

.subsections_via_symbols
