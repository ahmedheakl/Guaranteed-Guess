	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_minVal                         ## -- Begin function minVal
	.p2align	4, 0x90
_minVal:                                ## @minVal
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %edx
	cmpl	$2147483647, %edx               ## imm = 0x7FFFFFFF
	jne	LBB0_2
## %bb.1:
	movl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	movl	$-1, %eax
	jmp	LBB0_3
LBB0_2:
	xorl	%eax, %eax
	cmpl	$0, (%rsi)
	setne	%al
	movl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	cmovel	%edx, %ecx
	negl	%eax
LBB0_3:
	movl	4(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_5
## %bb.4:
	cmpl	$0, 4(%rsi)
	movl	$1, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_5:
	movl	8(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_7
## %bb.6:
	cmpl	$0, 8(%rsi)
	movl	$2, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_7:
	movl	12(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_9
## %bb.8:
	cmpl	$0, 12(%rsi)
	movl	$3, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_9:
	movl	16(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_11
## %bb.10:
	cmpl	$0, 16(%rsi)
	movl	$4, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_11:
	movl	20(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_13
## %bb.12:
	cmpl	$0, 20(%rsi)
	movl	$5, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_13:
	movl	24(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_15
## %bb.14:
	cmpl	$0, 24(%rsi)
	movl	$6, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_15:
	movl	28(%rdi), %r8d
	cmpl	%r8d, %ecx
	jle	LBB0_17
## %bb.16:
	cmpl	$0, 28(%rsi)
	movl	$7, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
LBB0_17:
	movl	32(%rdi), %r8d
	cmpl	%r8d, %ecx
	jg	LBB0_18
## %bb.19:
	cmpl	36(%rdi), %ecx
	jg	LBB0_20
	jmp	LBB0_23
LBB0_18:
	cmpl	$0, 32(%rsi)
	movl	$8, %edx
	cmovel	%edx, %eax
	cmovel	%r8d, %ecx
	cmpl	36(%rdi), %ecx
	jle	LBB0_23
LBB0_20:
	cmpl	$0, 36(%rsi)
	je	LBB0_21
LBB0_23:
	cmpl	$-1, %eax
	jne	LBB0_22
## %bb.24:
	movl	$-1, %eax
	popq	%rbp
	retq
LBB0_21:
	movl	$9, %eax
LBB0_22:
	movl	%eax, %ecx
	movl	$1, (%rsi,%rcx,4)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function minSpanTree
LCPI1_0:
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
LCPI1_1:
	.long	0                               ## 0x0
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
LCPI1_2:
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minSpanTree
	.p2align	4, 0x90
_minSpanTree:                           ## @minSpanTree
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
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movaps	LCPI1_0(%rip), %xmm0            ## xmm0 = [2147483647,2147483647,2147483647,2147483647]
	movaps	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movabsq	$9223372034707292159, %rax      ## imm = 0x7FFFFFFF7FFFFFFF
	movq	%rax, -64(%rbp)
	movq	$0, -112(%rbp)
	movaps	LCPI1_1(%rip), %xmm0            ## xmm0 = [0,2147483647,2147483647,2147483647]
	movaps	%xmm0, -96(%rbp)
	movaps	LCPI1_2(%rip), %xmm0            ## xmm0 = [1,0,0,0]
	movaps	%xmm0, -144(%rbp)
	movl	$1, %edx
	movl	$0, -176(%rbp)                  ## 4-byte Folded Spill
	movl	$2147483647, -172(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$9, %ebx
	movl	$2147483647, -168(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, -164(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, -160(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, -156(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, -152(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, -148(%rbp)         ## 4-byte Folded Spill
                                        ## imm = 0x7FFFFFFF
	movl	$2147483647, %r15d              ## imm = 0x7FFFFFFF
	movl	$2147483647, %r12d              ## imm = 0x7FFFFFFF
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%eax, %rcx
	testl	%edx, %edx
	jne	LBB1_5
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_5
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-176(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -96(%rbp)
	movl	%eax, (%r14)
	movl	%edx, -176(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -140(%rbp)
	jne	LBB1_9
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	4(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_9
## %bb.7:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %edx
	jge	LBB1_9
## %bb.8:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -92(%rbp)
	movl	%eax, 4(%r14)
	movl	%edx, %r12d
	.p2align	4, 0x90
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -136(%rbp)
	jne	LBB1_13
## %bb.10:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	8(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_13
## %bb.11:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	%r15d, %edx
	jge	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -88(%rbp)
	movl	%eax, 8(%r14)
	movl	%edx, %r15d
	.p2align	4, 0x90
LBB1_13:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -132(%rbp)
	jne	LBB1_17
## %bb.14:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	12(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_17
## %bb.15:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-148(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_17
## %bb.16:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -84(%rbp)
	movl	%eax, 12(%r14)
	movl	%edx, -148(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -128(%rbp)
	jne	LBB1_21
## %bb.18:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	16(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_21
## %bb.19:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-152(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_21
## %bb.20:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -80(%rbp)
	movl	%eax, 16(%r14)
	movl	%edx, -152(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_21:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -124(%rbp)
	jne	LBB1_25
## %bb.22:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	20(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_25
## %bb.23:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-156(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_25
## %bb.24:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -76(%rbp)
	movl	%eax, 20(%r14)
	movl	%edx, -156(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_25:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -120(%rbp)
	jne	LBB1_29
## %bb.26:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	24(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_29
## %bb.27:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-160(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -72(%rbp)
	movl	%eax, 24(%r14)
	movl	%edx, -160(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_29:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -116(%rbp)
	jne	LBB1_33
## %bb.30:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	28(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_33
## %bb.31:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-164(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_33
## %bb.32:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -68(%rbp)
	movl	%eax, 28(%r14)
	movl	%edx, -164(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_33:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -112(%rbp)
	jne	LBB1_37
## %bb.34:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rdx
	movl	32(%r13,%rdx,8), %edx
	testl	%edx, %edx
	je	LBB1_37
## %bb.35:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-168(%rbp), %edx                ## 4-byte Folded Reload
	jge	LBB1_37
## %bb.36:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%edx, -64(%rbp)
	movl	%eax, 32(%r14)
	movl	%edx, -168(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_37:                                ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -108(%rbp)
	jne	LBB1_41
## %bb.38:                              ##   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%rcx,4), %rcx
	movl	36(%r13,%rcx,8), %ecx
	testl	%ecx, %ecx
	je	LBB1_41
## %bb.39:                              ##   in Loop: Header=BB1_1 Depth=1
	cmpl	-172(%rbp), %ecx                ## 4-byte Folded Reload
	jge	LBB1_41
## %bb.40:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, -60(%rbp)
	movl	%eax, 36(%r14)
	movl	%ecx, -172(%rbp)                ## 4-byte Spill
	.p2align	4, 0x90
LBB1_41:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	_minVal
	subl	$1, %ebx
	jb	LBB1_42
## %bb.44:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	-144(%rbp), %edx
	jmp	LBB1_1
LBB1_42:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB1_45
## %bb.43:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_45:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_initializeData                 ## -- Begin function initializeData
	.p2align	4, 0x90
_initializeData:                        ## @initializeData
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movl	$10, %edi
	callq	_libmin_srand
	xorl	%r15d, %r15d
	movq	%r14, %r12
	movq	%r14, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	incq	%r15
	addq	$40, %r14
	movq	-64(%rbp), %r12                 ## 8-byte Reload
	addq	$4, %r12
	cmpq	$10, %r15
	je	LBB2_5
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	leaq	(%r15,%r15,4), %rax
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rax,%r15,4), %rax
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movq	%r12, -64(%rbp)                 ## 8-byte Spill
	xorl	%r13d, %r13d
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB2_2
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_2 Depth=2
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	movl	$0, (%rax)
LBB2_12:                                ##   in Loop: Header=BB2_2 Depth=2
	incq	%r13
	addq	$40, %r12
	cmpq	$10, %r13
	je	LBB2_4
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %r15
	jbe	LBB2_6
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	movl	(%r12), %eax
LBB2_11:                                ##   in Loop: Header=BB2_2 Depth=2
	movl	%eax, (%r14,%r13,4)
	jmp	LBB2_12
	.p2align	4, 0x90
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=2
	je	LBB2_7
## %bb.8:                               ##   in Loop: Header=BB2_2 Depth=2
	movl	$3435973837, %r14d              ## imm = 0xCCCCCCCD
	callq	_libmin_rand
	movl	%eax, %ebx
	movl	%eax, %eax
	imulq	%r14, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ebx
	callq	_libmin_rand
	movl	$3435973837, %edx               ## imm = 0xCCCCCCCD
	movl	%eax, %ecx
	imulq	%rdx, %rcx
	shrq	$34, %rcx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	cmpl	%eax, %ebx
	jne	LBB2_10
## %bb.9:                               ##   in Loop: Header=BB2_2 Depth=2
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	movl	$0, (%r14,%r13,4)
	jmp	LBB2_12
LBB2_10:                                ##   in Loop: Header=BB2_2 Depth=2
	callq	_libmin_rand
	movl	$3435973837, %edx               ## imm = 0xCCCCCCCD
	movl	%eax, %ecx
	imulq	%rdx, %rcx
	shrq	$35, %rcx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	jmp	LBB2_11
LBB2_5:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_displayGraph                   ## -- Begin function displayGraph
	.p2align	4, 0x90
_displayGraph:                          ## @displayGraph
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	L_.str.11(%rip), %r15
	leaq	L_.str.12(%rip), %r13
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	LBB3_1
	.p2align	4, 0x90
LBB3_33:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+72(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB3_34:                                ##   in Loop: Header=BB3_1 Depth=1
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	addq	$40, %r14
	cmpq	$440, %r14                      ## imm = 0x1B8
	je	LBB3_35
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	%r12d, %r12
	leaq	_vertName(%rip), %rax
	movq	(%rax,%r12,8), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r12d
	testq	%r14, %r14
	je	LBB3_5
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-40(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_9
LBB3_8:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_12
LBB3_11:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_15
LBB3_14:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_18
LBB3_17:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_21
LBB3_20:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_24
LBB3_23:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-16(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_27
LBB3_26:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_30
LBB3_29:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-8(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_32
	jmp	LBB3_33
	.p2align	4, 0x90
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_6
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_8
LBB3_9:                                 ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+8(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_11
LBB3_12:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+16(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_14
LBB3_15:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+24(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_17
LBB3_18:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+32(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_20
LBB3_21:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+40(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_23
LBB3_24:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+48(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_26
LBB3_27:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+56(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	jne	LBB3_29
LBB3_30:                                ##   in Loop: Header=BB3_1 Depth=1
	movq	_vertName+64(%rip), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB3_33
LBB3_32:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbx,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB3_34
LBB3_35:
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_displayGraph1                  ## -- Begin function displayGraph1
	.p2align	4, 0x90
_displayGraph1:                         ## @displayGraph1
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	addq	$-4, %rbx
	leaq	L_.str.15(%rip), %r15
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	LBB4_1
	.p2align	4, 0x90
LBB4_33:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+72(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB4_34:                                ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	addq	$40, %rbx
	incq	%r13
	cmpq	$11, %r13
	je	LBB4_35
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	LBB4_3
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movslq	%r12d, %r12
	leaq	_vertName(%rip), %rax
	movq	(%rax,%r12,8), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r12d
	testq	%r13, %r13
	je	LBB4_5
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_9
LBB4_8:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-32(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_12
LBB4_11:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_15
LBB4_14:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_18
LBB4_17:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_21
LBB4_20:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-16(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_24
LBB4_23:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_27
LBB4_26:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-8(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_30
LBB4_29:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_32
	jmp	LBB4_33
	.p2align	4, 0x90
LBB4_3:                                 ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_6
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_8
LBB4_9:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+8(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_11
LBB4_12:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+16(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_14
LBB4_15:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+24(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_17
LBB4_18:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+32(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_20
LBB4_21:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+40(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_23
LBB4_24:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+48(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_26
LBB4_27:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+56(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	jne	LBB4_29
LBB4_30:                                ##   in Loop: Header=BB4_1 Depth=1
	movq	_vertName+64(%rip), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r13, %r13
	je	LBB4_33
LBB4_32:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	(%rbx), %esi
	movl	-4(%r14,%r13,4), %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB4_34
LBB4_35:
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_displayPath                    ## -- Begin function displayPath
	.p2align	4, 0x90
_displayPath:                           ## @displayPath
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movl	%edi, %r12d
	cmpl	$0, _displayPath.count(%rip)
	leaq	_vertName(%rip), %r15
	je	LBB5_2
## %bb.1:
	movslq	%esi, %rbx
	jmp	LBB5_3
LBB5_2:
	movslq	%r12d, %r13
	movq	(%r15,%r13,8), %rax
	movslq	%esi, %rbx
	movq	(%r15,%rbx,8), %rdx
	leaq	L_.str.16(%rip), %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%r15,%r13,8), %rsi
	leaq	L_.str.17(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	_displayPath.count(%rip)
LBB5_3:
	movl	(%r14,%rbx,4), %esi
	cmpl	%r12d, %esi
	je	LBB5_5
## %bb.4:
	movl	%r12d, %edi
	movq	%r14, %rdx
	callq	_displayPath
LBB5_5:
	movq	(%r15,%rbx,8), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_displayTree                    ## -- Begin function displayTree
	.p2align	4, 0x90
_displayTree:                           ## @displayTree
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	L_.str.19(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_vertName+8(%rip), %rsi
	leaq	_vertName(%rip), %r13
	movslq	4(%r15), %rax
	movl	40(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	leaq	L_.str.20(%rip), %r12
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	4(%r15), %rax
	movl	40(%r14,%rax,4), %ebx
	movq	_vertName+16(%rip), %rsi
	movslq	8(%r15), %rax
	movl	80(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	8(%r15), %rax
	addl	80(%r14,%rax,4), %ebx
	movq	_vertName+24(%rip), %rsi
	movslq	12(%r15), %rax
	movl	120(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	12(%r15), %rax
	addl	120(%r14,%rax,4), %ebx
	movq	_vertName+32(%rip), %rsi
	movslq	16(%r15), %rax
	movl	160(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	16(%r15), %rax
	addl	160(%r14,%rax,4), %ebx
	movq	_vertName+40(%rip), %rsi
	movslq	20(%r15), %rax
	movl	200(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	20(%r15), %rax
	addl	200(%r14,%rax,4), %ebx
	movq	_vertName+48(%rip), %rsi
	movslq	24(%r15), %rax
	movl	240(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	24(%r15), %rax
	addl	240(%r14,%rax,4), %ebx
	movq	_vertName+56(%rip), %rsi
	movslq	28(%r15), %rax
	movl	280(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	28(%r15), %rax
	addl	280(%r14,%rax,4), %ebx
	movq	_vertName+64(%rip), %rsi
	movslq	32(%r15), %rax
	movl	320(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	32(%r15), %rax
	addl	320(%r14,%rax,4), %ebx
	movq	_vertName+72(%rip), %rsi
	movslq	36(%r15), %rax
	movl	360(%r14,%rax,4), %edx
	movq	(%r13,%rax,8), %rcx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	36(%r15), %rax
	addl	360(%r14,%rax,4), %ebx
	leaq	L_.str.21(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
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
	subq	$488, %rsp                      ## imm = 0x1E8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, -480(%rbp)
	movdqa	%xmm0, -496(%rbp)
	movq	$-1, -464(%rbp)
	movl	$10, %edi
	callq	_libmin_srand
	leaq	-448(%rbp), %r12
	xorl	%r15d, %r15d
	movq	%r12, %rcx
	movl	$3435973837, %r13d              ## imm = 0xCCCCCCCD
	jmp	LBB7_1
	.p2align	4, 0x90
LBB7_11:                                ##   in Loop: Header=BB7_1 Depth=1
	incq	%r15
	addq	$40, %rcx
	movq	-512(%rbp), %r12                ## 8-byte Reload
	addq	$4, %r12
	cmpq	$10, %r15
	je	LBB7_12
LBB7_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_2 Depth 2
	leaq	(%r15,%r15,4), %rax
	leaq	-448(,%rax,8), %rax
	addq	%rbp, %rax
	leaq	(%rax,%r15,4), %rax
	movq	%rax, -520(%rbp)                ## 8-byte Spill
	movq	%r12, -512(%rbp)                ## 8-byte Spill
	xorl	%r14d, %r14d
	movq	%rcx, -504(%rbp)                ## 8-byte Spill
	jmp	LBB7_2
	.p2align	4, 0x90
LBB7_5:                                 ##   in Loop: Header=BB7_2 Depth=2
	movq	-520(%rbp), %rax                ## 8-byte Reload
	movl	$0, (%rax)
LBB7_10:                                ##   in Loop: Header=BB7_2 Depth=2
	incq	%r14
	addq	$40, %r12
	cmpq	$10, %r14
	je	LBB7_11
LBB7_2:                                 ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %r15
	jbe	LBB7_4
## %bb.3:                               ##   in Loop: Header=BB7_2 Depth=2
	movl	(%r12), %eax
LBB7_9:                                 ##   in Loop: Header=BB7_2 Depth=2
	movl	%eax, (%rcx,%r14,4)
	jmp	LBB7_10
	.p2align	4, 0x90
LBB7_4:                                 ##   in Loop: Header=BB7_2 Depth=2
	je	LBB7_5
## %bb.6:                               ##   in Loop: Header=BB7_2 Depth=2
	callq	_libmin_rand
	movl	%eax, %ebx
	movl	%eax, %eax
	imulq	%r13, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ebx
	callq	_libmin_rand
	movl	$3435973837, %edx               ## imm = 0xCCCCCCCD
	movl	%eax, %ecx
	imulq	%rdx, %rcx
	shrq	$34, %rcx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	cmpl	%eax, %ebx
	jne	LBB7_8
## %bb.7:                               ##   in Loop: Header=BB7_2 Depth=2
	movq	-504(%rbp), %rcx                ## 8-byte Reload
	movl	$0, (%rcx,%r14,4)
	jmp	LBB7_10
LBB7_8:                                 ##   in Loop: Header=BB7_2 Depth=2
	callq	_libmin_rand
	movl	$3435973837, %edx               ## imm = 0xCCCCCCCD
	movl	%eax, %ecx
	imulq	%rdx, %rcx
	shrq	$35, %rcx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	movq	-504(%rbp), %rcx                ## 8-byte Reload
	jmp	LBB7_9
LBB7_12:
	leaq	-448(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_displayGraph
	leaq	-496(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_minSpanTree
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_displayTree
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB7_14
## %bb.13:
	xorl	%eax, %eax
	addq	$488, %rsp                      ## imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_14:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_V                              ## @V
	.p2align	2
_V:
	.long	10                              ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Home"

L_.str.1:                               ## @.str.1
	.asciz	"z-mall"

L_.str.2:                               ## @.str.2
	.asciz	"st.pet"

L_.str.3:                               ## @.str.3
	.asciz	"office"

L_.str.4:                               ## @.str.4
	.asciz	"school"

L_.str.5:                               ## @.str.5
	.asciz	"motel"

L_.str.6:                               ## @.str.6
	.asciz	"restr."

L_.str.7:                               ## @.str.7
	.asciz	"library"

L_.str.8:                               ## @.str.8
	.asciz	"airport"

L_.str.9:                               ## @.str.9
	.asciz	"barber"

	.section	__DATA,__data
	.globl	_vertName                       ## @vertName
	.p2align	4
_vertName:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9

	.section	__TEXT,__cstring,cstring_literals
L_.str.10:                              ## @.str.10
	.asciz	"       "

L_.str.11:                              ## @.str.11
	.asciz	"%8s"

L_.str.12:                              ## @.str.12
	.asciz	"%8d"

L_.str.13:                              ## @.str.13
	.asciz	"\n"

L_.str.14:                              ## @.str.14
	.asciz	"\n\n"

L_.str.15:                              ## @.str.15
	.asciz	"%8d / %d"

.zerofill __DATA,__bss,_displayPath.count,4,2 ## @displayPath.count
L_.str.16:                              ## @.str.16
	.asciz	"\nSource: %s\tDestination: %s\n\n"

L_.str.17:                              ## @.str.17
	.asciz	"Path: %s"

L_.str.18:                              ## @.str.18
	.asciz	"-> %s"

L_.str.19:                              ## @.str.19
	.asciz	"minimum spanning tree:\n"

L_.str.20:                              ## @.str.20
	.asciz	"  %8s <-%d-> %8s\n"

L_.str.21:                              ## @.str.21
	.asciz	"total cost = %d\n"

.subsections_via_symbols
