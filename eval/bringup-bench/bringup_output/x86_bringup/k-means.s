	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function calculateNearst
LCPI0_0:
	.quad	0x7fefffffffffffff              ## double 1.7976931348623157E+308
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calculateNearst
	.p2align	4, 0x90
_calculateNearst:                       ## @calculateNearst
	.cfi_startproc
## %bb.0:
	testl	%edx, %edx
	jle	LBB0_1
## %bb.3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm1                   ## xmm1 = mem[0],zero
	movsd	8(%rdi), %xmm0                  ## xmm0 = mem[0],zero
	movl	%edx, %edi
	cmpl	$1, %edx
	jne	LBB0_5
## %bb.4:
	movsd	LCPI0_0(%rip), %xmm2            ## xmm2 = mem[0],zero
	movl	$-1, %eax
	xorl	%ecx, %ecx
	jmp	LBB0_7
LBB0_1:
	movl	$-1, %eax
	retq
LBB0_5:
	movl	%edi, %edx
	andl	$-2, %edx
	leaq	32(%rsi), %r8
	movsd	LCPI0_0(%rip), %xmm2            ## xmm2 = mem[0],zero
	movl	$-1, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movsd	-32(%r8), %xmm3                 ## xmm3 = mem[0],zero
	movsd	-24(%r8), %xmm4                 ## xmm4 = mem[0],zero
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm2
	minsd	%xmm2, %xmm3
	movl	%eax, %r9d
	cmoval	%ecx, %r9d
	movsd	-8(%r8), %xmm2                  ## xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	(%r8), %xmm4                    ## xmm4 = mem[0],zero
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm2, %xmm2
	addsd	%xmm4, %xmm2
	ucomisd	%xmm2, %xmm3
	leal	1(%rcx), %eax
	cmovbel	%r9d, %eax
	minsd	%xmm3, %xmm2
	addq	$2, %rcx
	addq	$48, %r8
	cmpq	%rdx, %rcx
	jne	LBB0_6
LBB0_7:
	testb	$1, %dil
	je	LBB0_9
## %bb.8:
	leaq	(%rcx,%rcx,2), %rdx
	movsd	(%rsi,%rdx,8), %xmm3            ## xmm3 = mem[0],zero
	movsd	8(%rsi,%rdx,8), %xmm4           ## xmm4 = mem[0],zero
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm2
	cmoval	%ecx, %eax
LBB0_9:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function calculateCentroid
LCPI1_0:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI1_1:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_calculateCentroid
	.p2align	4, 0x90
_calculateCentroid:                     ## @calculateCentroid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rdx)
	movq	%rsi, 16(%rdx)
	testq	%rsi, %rsi
	je	LBB1_7
## %bb.1:
	cmpq	$1, %rsi
	jne	LBB1_3
## %bb.2:
	xorl	%eax, %eax
	jmp	LBB1_5
LBB1_3:
	movq	%rsi, %rcx
	andq	$-2, %rcx
	leaq	40(%rdi), %r8
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movupd	-40(%r8), %xmm1
	addpd	%xmm0, %xmm1
	movupd	-16(%r8), %xmm0
	addpd	%xmm1, %xmm0
	movl	$0, -24(%r8)
	movl	$0, (%r8)
	addq	$2, %rax
	addq	$48, %r8
	cmpq	%rax, %rcx
	jne	LBB1_4
LBB1_5:
	testb	$1, %sil
	je	LBB1_7
## %bb.6:
	leaq	(%rax,%rax,2), %rax
	movupd	(%rdi,%rax,8), %xmm1
	addpd	%xmm1, %xmm0
	movl	$0, 16(%rdi,%rax,8)
LBB1_7:
	movq	%rsi, %xmm1
	punpckldq	LCPI1_0(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm1
	haddpd	%xmm1, %xmm1
	divpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function kMeans
LCPI2_0:
	.quad	4841369599423283200             ## 0x4330000000000000
	.quad	4841369599423283200             ## 0x4330000000000000
LCPI2_1:
	.quad	4985484787499139072             ## 0x4530000000000000
	.quad	4985484787499139072             ## 0x4530000000000000
LCPI2_2:
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
LCPI2_3:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI2_4:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI2_5:
	.quad	0x7fefffffffffffff              ## double 1.7976931348623157E+308
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_kMeans
	.p2align	4, 0x90
_kMeans:                                ## @kMeans
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$1, %edx
	jg	LBB2_9
## %bb.1:
	movl	$24, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$24, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_libmin_memset
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rbx)
	movq	%r15, 16(%rbx)
	testq	%r15, %r15
	je	LBB2_8
## %bb.2:
	cmpq	$1, %r15
	jne	LBB2_4
## %bb.3:
	xorl	%eax, %eax
	jmp	LBB2_6
LBB2_9:
	movl	%edx, %r12d
	movq	%r15, -56(%rbp)                 ## 8-byte Spill
	movl	%edx, %r13d
	leaq	(,%r13,8), %rax
	leaq	(%rax,%rax,2), %r15
	movq	%r15, %rdi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_libmin_memset
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	cmpq	%rdi, %r13
	jae	LBB2_33
## %bb.10:
	movq	%r13, %rax
	movq	%r15, -64(%rbp)                 ## 8-byte Spill
	movq	%r13, -48(%rbp)                 ## 8-byte Spill
	movq	%rdi, %r15
	leaq	16(%r14), %r13
	.p2align	4, 0x90
LBB2_11:                                ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	xorl	%edx, %edx
	divl	%r12d
	movl	%edx, (%r13)
	addq	$24, %r13
	decq	%r15
	jne	LBB2_11
## %bb.12:
	movabsq	$3777893186295716171, %rcx      ## imm = 0x346DC5D63886594B
	movq	-56(%rbp), %r15                 ## 8-byte Reload
	movq	%r15, %rax
	mulq	%rcx
	shrq	$11, %rdx
	movq	%rdx, -96(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movl	%eax, %r13d
	andl	$-2, %r13d
	leaq	16(%r14), %rcx
	movq	%rcx, -88(%rbp)                 ## 8-byte Spill
                                        ## kill: def $eax killed $eax killed $rax def $rax
	shrl	%eax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	leaq	32(%rbx), %r11
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	movq	%r11, -80(%rbp)                 ## 8-byte Spill
	jmp	LBB2_13
	.p2align	4, 0x90
LBB2_32:                                ##   in Loop: Header=BB2_13 Depth=1
	cmpq	-96(%rbp), %rax                 ## 8-byte Folded Reload
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	jbe	LBB2_40
LBB2_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_14 Depth 2
                                        ##     Child Loop BB2_18 Depth 2
                                        ##     Child Loop BB2_21 Depth 2
                                        ##     Child Loop BB2_23 Depth 2
                                        ##       Child Loop BB2_26 Depth 3
	movq	%rbx, %rdi
	callq	___bzero
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	movq	%r15, %rcx
	.p2align	4, 0x90
LBB2_14:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	(%rax), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movupd	-16(%rax), %xmm0
	movupd	(%rbx,%rdx,8), %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, (%rbx,%rdx,8)
	incq	16(%rbx,%rdx,8)
	addq	$24, %rax
	decq	%rcx
	jne	LBB2_14
## %bb.15:                              ##   in Loop: Header=BB2_13 Depth=1
	cmpl	$2, %r12d
	movq	-80(%rbp), %r11                 ## 8-byte Reload
	movapd	LCPI2_3(%rip), %xmm3            ## xmm3 = [1127219200,1160773632,0,0]
	movapd	LCPI2_4(%rip), %xmm4            ## xmm4 = [4.503599627370496E+15,1.9342813113834067E+25]
	movsd	LCPI2_5(%rip), %xmm5            ## xmm5 = mem[0],zero
	pxor	%xmm6, %xmm6
	movdqa	LCPI2_0(%rip), %xmm7            ## xmm7 = [4841369599423283200,4841369599423283200]
	movdqa	LCPI2_1(%rip), %xmm8            ## xmm8 = [4985484787499139072,4985484787499139072]
	movapd	LCPI2_2(%rip), %xmm9            ## xmm9 = [1.9342813118337666E+25,1.9342813118337666E+25]
	jae	LBB2_17
## %bb.16:                              ##   in Loop: Header=BB2_13 Depth=1
	xorl	%edx, %edx
	movq	-48(%rbp), %r10                 ## 8-byte Reload
	jmp	LBB2_20
	.p2align	4, 0x90
LBB2_17:                                ##   in Loop: Header=BB2_13 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx                 ## 8-byte Reload
	.p2align	4, 0x90
LBB2_18:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	40(%rbx,%rax), %xmm0            ## xmm0 = mem[0],zero
	movq	16(%rbx,%rax), %xmm1            ## xmm1 = mem[0],zero
	punpcklqdq	%xmm0, %xmm1            ## xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, %xmm0
	pblendw	$204, %xmm6, %xmm0              ## xmm0 = xmm0[0,1],xmm6[2,3],xmm0[4,5],xmm6[6,7]
	por	%xmm7, %xmm0
	psrlq	$32, %xmm1
	por	%xmm8, %xmm1
	subpd	%xmm9, %xmm1
	addpd	%xmm0, %xmm1
	movsd	(%rbx,%rax), %xmm0              ## xmm0 = mem[0],zero
	movhpd	24(%rbx,%rax), %xmm0            ## xmm0 = xmm0[0],mem[0]
	movsd	8(%rbx,%rax), %xmm2             ## xmm2 = mem[0],zero
	divpd	%xmm1, %xmm0
	movhpd	32(%rbx,%rax), %xmm2            ## xmm2 = xmm2[0],mem[0]
	divpd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm2, %xmm1                    ## xmm1 = xmm1[0],xmm2[0]
	movupd	%xmm1, (%rbx,%rax)
	movhlps	%xmm0, %xmm2                    ## xmm2 = xmm0[1],xmm2[1]
	movups	%xmm2, 24(%rbx,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	LBB2_18
## %bb.19:                              ##   in Loop: Header=BB2_13 Depth=1
	movq	%r13, %rdx
	movq	-48(%rbp), %r10                 ## 8-byte Reload
	cmpq	%r10, %r13
	je	LBB2_22
LBB2_20:                                ##   in Loop: Header=BB2_13 Depth=1
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%r10, %rcx
	subq	%rdx, %rcx
	.p2align	4, 0x90
LBB2_21:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	16(%rax), %xmm0                 ## xmm0 = mem[0],zero
	unpcklps	%xmm3, %xmm0                    ## xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	subpd	%xmm4, %xmm0
	movupd	(%rax), %xmm1
	haddpd	%xmm0, %xmm0
	divpd	%xmm0, %xmm1
	movupd	%xmm1, (%rax)
	addq	$24, %rax
	decq	%rcx
	jne	LBB2_21
LBB2_22:                                ##   in Loop: Header=BB2_13 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	LBB2_23
	.p2align	4, 0x90
LBB2_31:                                ##   in Loop: Header=BB2_23 Depth=2
	incq	%rcx
	cmpq	%r15, %rcx
	je	LBB2_32
LBB2_23:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_26 Depth 3
	leaq	(%rcx,%rcx,2), %rdx
	movsd	(%r14,%rdx,8), %xmm1            ## xmm1 = mem[0],zero
	movsd	8(%r14,%rdx,8), %xmm0           ## xmm0 = mem[0],zero
	movl	$-1, %edi
	cmpl	$1, %r12d
	jne	LBB2_25
## %bb.24:                              ##   in Loop: Header=BB2_23 Depth=2
	xorl	%esi, %esi
	movapd	%xmm5, %xmm2
	jmp	LBB2_27
	.p2align	4, 0x90
LBB2_25:                                ##   in Loop: Header=BB2_23 Depth=2
	movq	%r11, %r8
	xorl	%esi, %esi
	movapd	%xmm5, %xmm2
	.p2align	4, 0x90
LBB2_26:                                ##   Parent Loop BB2_13 Depth=1
                                        ##     Parent Loop BB2_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	-32(%r8), %xmm3                 ## xmm3 = mem[0],zero
	movsd	-24(%r8), %xmm4                 ## xmm4 = mem[0],zero
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm2
	minsd	%xmm2, %xmm3
	movl	%edi, %r9d
	cmoval	%esi, %r9d
	movsd	-8(%r8), %xmm2                  ## xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	(%r8), %xmm4                    ## xmm4 = mem[0],zero
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm2, %xmm2
	addsd	%xmm4, %xmm2
	ucomisd	%xmm2, %xmm3
	leal	1(%rsi), %edi
	cmovbel	%r9d, %edi
	minsd	%xmm3, %xmm2
	addq	$2, %rsi
	addq	$48, %r8
	cmpq	%r13, %rsi
	jne	LBB2_26
LBB2_27:                                ##   in Loop: Header=BB2_23 Depth=2
	testb	$1, %r10b
	je	LBB2_29
## %bb.28:                              ##   in Loop: Header=BB2_23 Depth=2
	leaq	(%rsi,%rsi,2), %r8
	movsd	(%rbx,%r8,8), %xmm3             ## xmm3 = mem[0],zero
	movsd	8(%rbx,%r8,8), %xmm4            ## xmm4 = mem[0],zero
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	addsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm2
	cmoval	%esi, %edi
LBB2_29:                                ##   in Loop: Header=BB2_23 Depth=2
	cmpl	16(%r14,%rdx,8), %edi
	je	LBB2_31
## %bb.30:                              ##   in Loop: Header=BB2_23 Depth=2
	leaq	(%r14,%rdx,8), %rdx
	addq	$16, %rdx
	incq	%rax
	movl	%edi, (%rdx)
	jmp	LBB2_31
LBB2_33:
	testq	%rdi, %rdi
	je	LBB2_40
## %bb.34:
	cmpq	$1, %rdi
	jne	LBB2_36
## %bb.35:
	xorl	%eax, %eax
	jmp	LBB2_38
LBB2_4:
	movq	%r15, %rcx
	andq	$-2, %rcx
	leaq	40(%r14), %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movupd	-40(%rdx), %xmm1
	addpd	%xmm0, %xmm1
	movupd	-16(%rdx), %xmm0
	addpd	%xmm1, %xmm0
	movl	$0, -24(%rdx)
	movl	$0, (%rdx)
	addq	$2, %rax
	addq	$48, %rdx
	cmpq	%rax, %rcx
	jne	LBB2_5
LBB2_6:
	testb	$1, %r15b
	je	LBB2_8
## %bb.7:
	leaq	(%rax,%rax,2), %rax
	movupd	(%r14,%rax,8), %xmm1
	addpd	%xmm1, %xmm0
	movl	$0, 16(%r14,%rax,8)
LBB2_8:
	movq	%r15, %xmm1
	punpckldq	LCPI2_3(%rip), %xmm1    ## xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	LCPI2_4(%rip), %xmm1
	haddpd	%xmm1, %xmm1
	divpd	%xmm1, %xmm0
	movupd	%xmm0, (%rbx)
LBB2_40:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_36:
	movq	%rdi, %rcx
	andq	$-2, %rcx
	movl	$40, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_37:                                ## =>This Inner Loop Header: Depth=1
	movups	-40(%r14,%rdx), %xmm0
	movups	%xmm0, -40(%rbx,%rdx)
	movq	$1, -24(%rbx,%rdx)
	movl	%eax, -24(%r14,%rdx)
	movupd	-16(%r14,%rdx), %xmm0
	movupd	%xmm0, -16(%rbx,%rdx)
	movq	$1, (%rbx,%rdx)
	leal	1(%rax), %esi
	movl	%esi, (%r14,%rdx)
	addq	$2, %rax
	addq	$48, %rdx
	cmpq	%rcx, %rax
	jne	LBB2_37
LBB2_38:
	testb	$1, %dil
	je	LBB2_40
## %bb.39:
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movupd	(%r14,%rcx), %xmm0
	movupd	%xmm0, (%rbx,%rcx)
	movq	$1, 16(%rbx,%rcx)
	movl	%eax, 16(%r14,%rcx)
	jmp	LBB2_40
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function printEPS
LCPI3_0:
	.quad	0x7fefffffffffffff              ## double 1.7976931348623157E+308
	.quad	0x7fefffffffffffff              ## double 1.7976931348623157E+308
LCPI3_1:
	.quad	0x0010000000000000              ## double 2.2250738585072014E-308
	.quad	0x0010000000000000              ## double 2.2250738585072014E-308
LCPI3_2:
	.quad	0x4079000000000000              ## double 400
	.quad	0x4079000000000000              ## double 400
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI3_3:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI3_4:
	.quad	0x4069000000000000              ## double 200
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_printEPS
	.p2align	4, 0x90
_printEPS:                              ## @printEPS
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
	movl	%ecx, %r13d
	movq	%rdx, -112(%rbp)                ## 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, -48(%rbp)                 ## 8-byte Spill
	leal	(%r13,%r13,2), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	_libmin_malloc
	movq	%rax, %r12
	movl	%r13d, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	testl	%r13d, %r13d
	jle	LBB3_3
## %bb.1:
	cvtsi2sd	%r13d, %xmm0
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	leaq	(,%rax,8), %rdi
	subq	%rax, %rdi
	xorl	%ecx, %ecx
	movl	$2, %r8d
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	leal	1(%r8), %eax
	cltd
	idivl	%r13d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%r12,%r8,8)
	movl	%ecx, %eax
	cltd
	idivl	%r13d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%r12,%r8,8)
	movl	%esi, %eax
	cltd
	idivl	%r13d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12,%r8,8)
	addl	$9, %esi
	addq	$7, %rcx
	addq	$3, %r8
	cmpq	%rcx, %rdi
	jne	LBB3_2
LBB3_3:
	testq	%rbx, %rbx
	je	LBB3_4
## %bb.5:
	cmpq	$1, %rbx
	jne	LBB3_7
## %bb.6:
	movapd	LCPI3_0(%rip), %xmm4            ## xmm4 = [1.7976931348623157E+308,1.7976931348623157E+308]
	movapd	LCPI3_1(%rip), %xmm3            ## xmm3 = [2.2250738585072014E-308,2.2250738585072014E-308]
	xorl	%eax, %eax
	jmp	LBB3_9
LBB3_4:
	movapd	LCPI3_0(%rip), %xmm4            ## xmm4 = [1.7976931348623157E+308,1.7976931348623157E+308]
	movapd	LCPI3_1(%rip), %xmm3            ## xmm3 = [2.2250738585072014E-308,2.2250738585072014E-308]
	jmp	LBB3_11
LBB3_7:
	movq	%rbx, %rcx
	andq	$-2, %rcx
	movapd	LCPI3_0(%rip), %xmm0            ## xmm0 = [1.7976931348623157E+308,1.7976931348623157E+308]
	movapd	LCPI3_1(%rip), %xmm3            ## xmm3 = [2.2250738585072014E-308,2.2250738585072014E-308]
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
	.p2align	4, 0x90
LBB3_8:                                 ## =>This Inner Loop Header: Depth=1
	movupd	(%rdx), %xmm1
	movupd	24(%rdx), %xmm4
	movapd	%xmm1, %xmm2
	maxpd	%xmm3, %xmm2
	minpd	%xmm0, %xmm1
	movapd	%xmm4, %xmm3
	maxpd	%xmm2, %xmm3
	minpd	%xmm1, %xmm4
	addq	$2, %rax
	addq	$48, %rdx
	movapd	%xmm4, %xmm0
	cmpq	%rax, %rcx
	jne	LBB3_8
LBB3_9:
	testb	$1, %bl
	je	LBB3_11
## %bb.10:
	leaq	(%rax,%rax,2), %rax
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	movupd	(%rcx,%rax,8), %xmm0
	movapd	%xmm0, %xmm1
	maxpd	%xmm3, %xmm1
	minpd	%xmm4, %xmm0
	movapd	%xmm1, %xmm3
	movapd	%xmm0, %xmm4
LBB3_11:
	movapd	%xmm4, -80(%rbp)                ## 16-byte Spill
	movapd	%xmm3, -96(%rbp)                ## 16-byte Spill
	leaq	L_.str(%rip), %rdi
	movl	$410, %esi                      ## imm = 0x19A
	movl	$410, %edx                      ## imm = 0x19A
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%r13d, %r13d
	jle	LBB3_19
## %bb.12:
	movapd	-96(%rbp), %xmm2                ## 16-byte Reload
	movapd	%xmm2, %xmm0
	movapd	-80(%rbp), %xmm3                ## 16-byte Reload
	subpd	%xmm3, %xmm0
	movapd	LCPI3_2(%rip), %xmm1            ## xmm1 = [4.0E+2,4.0E+2]
	divpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	minsd	%xmm1, %xmm0
	movapd	%xmm0, -128(%rbp)               ## 16-byte Spill
	addpd	%xmm3, %xmm2
	movsd	LCPI3_3(%rip), %xmm0            ## xmm0 = mem[0],zero
	movapd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, -80(%rbp)                ## 16-byte Spill
	unpckhpd	%xmm2, %xmm2                    ## xmm2 = xmm2[1,1]
	mulsd	%xmm0, %xmm2
	movapd	%xmm2, -96(%rbp)                ## 16-byte Spill
	addq	$16, -48(%rbp)                  ## 8-byte Folded Spill
	xorl	%r15d, %r15d
	leaq	L_.str.3(%rip), %r13
	movq	%rbx, -64(%rbp)                 ## 8-byte Spill
	movq	%r12, -104(%rbp)                ## 8-byte Spill
	jmp	LBB3_13
	.p2align	4, 0x90
LBB3_18:                                ##   in Loop: Header=BB3_13 Depth=1
	movq	-112(%rbp), %rax                ## 8-byte Reload
	movsd	(%rax,%r14,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	8(%rax,%r14,8), %xmm1           ## xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm0                ## 16-byte Folded Reload
	movapd	-128(%rbp), %xmm2               ## 16-byte Reload
	mulsd	%xmm2, %xmm0
	movsd	LCPI3_4(%rip), %xmm3            ## xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	subsd	-96(%rbp), %xmm1                ## 16-byte Folded Reload
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	leaq	L_.str.4(%rip), %rdi
	movb	$2, %al
	callq	_libmin_printf
	incq	%r15
	cmpq	-56(%rbp), %r15                 ## 8-byte Folded Reload
	movq	-64(%rbp), %rbx                 ## 8-byte Reload
	movq	-104(%rbp), %r12                ## 8-byte Reload
	je	LBB3_19
LBB3_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_15 Depth 2
	leaq	(%r15,%r15,2), %r14
	movsd	(%r12,%r14,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	8(%r12,%r14,8), %xmm1           ## xmm1 = mem[0],zero
	movsd	16(%r12,%r14,8), %xmm2          ## xmm2 = mem[0],zero
	leaq	L_.str.2(%rip), %rdi
	movb	$3, %al
	callq	_libmin_printf
	testq	%rbx, %rbx
	je	LBB3_18
## %bb.14:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	-64(%rbp), %r12                 ## 8-byte Reload
	jmp	LBB3_15
	.p2align	4, 0x90
LBB3_17:                                ##   in Loop: Header=BB3_15 Depth=2
	addq	$24, %rbx
	decq	%r12
	je	LBB3_18
LBB3_15:                                ##   Parent Loop BB3_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	cmpq	%rax, %r15
	jne	LBB3_17
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	movsd	-16(%rbx), %xmm0                ## xmm0 = mem[0],zero
	movsd	-8(%rbx), %xmm1                 ## xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm0                ## 16-byte Folded Reload
	movapd	-128(%rbp), %xmm2               ## 16-byte Reload
	mulsd	%xmm2, %xmm0
	movsd	LCPI3_4(%rip), %xmm3            ## xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	subsd	-96(%rbp), %xmm1                ## 16-byte Folded Reload
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	movq	%r13, %rdi
	movb	$2, %al
	callq	_libmin_printf
	jmp	LBB3_17
LBB3_19:
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_free                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function test2
LCPI4_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI4_1:
	.quad	0x4034000000000000              ## double 20
LCPI4_2:
	.quad	0x401921fb54442d18              ## double 6.2831853071795862
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test2
	.p2align	4, 0x90
_test2:                                 ## @test2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$24000000, %edi                 ## imm = 0x16E3600
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$8, %r14d
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	movsd	LCPI4_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	LCPI4_1(%rip), %xmm1
	movsd	%xmm1, -24(%rbp)                ## 8-byte Spill
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI4_0(%rip), %xmm0
	mulsd	LCPI4_2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	callq	_libmin_cos
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -8(%rbx,%r14)
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, (%rbx,%r14)
	addq	$24, %r14
	cmpq	$24000008, %r14                 ## imm = 0x16E3608
	jne	LBB4_1
## %bb.2:
	movl	$1000000, %esi                  ## imm = 0xF4240
	movq	%rbx, %rdi
	movl	$11, %edx
	callq	_kMeans
	movq	%rax, %r14
	movl	$1000000, %esi                  ## imm = 0xF4240
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movl	$11, %ecx
	callq	_printEPS
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r14, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_libmin_free                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI5_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI5_1:
	.quad	0x4034000000000000              ## double 20
LCPI5_2:
	.quad	0x401921fb54442d18              ## double 6.2831853071795862
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$42, %edi
	callq	_libmin_srand
	movl	$4800, %edi                     ## imm = 0x12C0
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$8, %r14d
	.p2align	4, 0x90
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	movsd	LCPI5_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	LCPI5_1(%rip), %xmm1
	movsd	%xmm1, -24(%rbp)                ## 8-byte Spill
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI5_0(%rip), %xmm0
	mulsd	LCPI5_2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	callq	_libmin_cos
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -8(%rbx,%r14)
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	mulsd	-24(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, (%rbx,%r14)
	addq	$24, %r14
	cmpq	$4808, %r14                     ## imm = 0x12C8
	jne	LBB5_1
## %bb.2:
	movl	$200, %esi
	movq	%rbx, %rdi
	movl	$5, %edx
	callq	_kMeans
	movq	%rax, %r14
	movl	$200, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movl	$5, %ecx
	callq	_printEPS
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r14, %rdi
	callq	_libmin_free
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%%!PS-Adobe-3.0 EPSF-3.0\n%%%%BoundingBox: -5 -5 %d %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"/l {rlineto} def /m {rmoveto} def\n/c { .25 sub exch .25 sub exch .5 0 360 arc fill } def\n/s { moveto -2 0 m 2 2 l 2 -2 l -2 -2 l closepath \tgsave 1 setgray fill grestore gsave 3 setlinewidth 1 setgray stroke grestore 0 setgray stroke }def\n"

L_.str.2:                               ## @.str.2
	.asciz	"%g %g %g setrgbcolor\n"

L_.str.3:                               ## @.str.3
	.asciz	"%.3f %.3f c\n"

L_.str.4:                               ## @.str.4
	.asciz	"\n0 setgray %g %g s\n"

L_.str.5:                               ## @.str.5
	.asciz	"\n%%%%EOF\n"

.subsections_via_symbols
