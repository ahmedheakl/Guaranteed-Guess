	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_floydWarshall                  ## -- Begin function floydWarshall
	.p2align	4, 0x90
_floydWarshall:                         ## @floydWarshall
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movups	(%rdi), %xmm0
	movq	_dist@GOTPCREL(%rip), %rax
	movaps	%xmm0, (%rax)
	movups	16(%rdi), %xmm0
	movaps	%xmm0, 16(%rax)
	movups	32(%rdi), %xmm0
	movaps	%xmm0, 32(%rax)
	movups	48(%rdi), %xmm0
	movaps	%xmm0, 48(%rax)
	movups	64(%rdi), %xmm0
	movaps	%xmm0, 64(%rax)
	movups	80(%rdi), %xmm0
	movaps	%xmm0, 80(%rax)
	movups	96(%rdi), %xmm0
	movaps	%xmm0, 96(%rax)
	movups	112(%rdi), %xmm0
	movaps	%xmm0, 112(%rax)
	movups	128(%rdi), %xmm0
	movaps	%xmm0, 128(%rax)
	movups	144(%rdi), %xmm0
	movaps	%xmm0, 144(%rax)
	movups	160(%rdi), %xmm0
	movaps	%xmm0, 160(%rax)
	movups	176(%rdi), %xmm0
	movaps	%xmm0, 176(%rax)
	movups	192(%rdi), %xmm0
	movaps	%xmm0, 192(%rax)
	movups	208(%rdi), %xmm0
	movaps	%xmm0, 208(%rax)
	movups	224(%rdi), %xmm0
	movaps	%xmm0, 224(%rax)
	movups	240(%rdi), %xmm0
	movaps	%xmm0, 240(%rax)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	incq	%rcx
	addq	$4, %rdx
	cmpq	$8, %rcx
	je	LBB0_20
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movq	%rcx, %rdi
	shlq	$5, %rdi
	leaq	(%rax,%rdi), %rsi
	addq	%rax, %rdi
	addq	$4, %rdi
	xorl	%r8d, %r8d
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_18:                                ##   in Loop: Header=BB0_2 Depth=2
	addq	$32, %r8
	cmpq	$256, %r8                       ## imm = 0x100
	je	LBB0_19
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdx,%r8), %r9d
	movl	(%rsi), %r10d
	addl	%r9d, %r10d
	cmpl	(%rax,%r8), %r10d
	jge	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, (%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=2
	movl	(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	4(%rax,%r8), %r10d
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 4(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=2
	movl	4(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	8(%rax,%r8), %r10d
	jge	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 8(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=2
	movl	8(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	12(%rax,%r8), %r10d
	jge	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 12(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_10:                                ##   in Loop: Header=BB0_2 Depth=2
	movl	12(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	16(%rax,%r8), %r10d
	jge	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 16(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_12:                                ##   in Loop: Header=BB0_2 Depth=2
	movl	16(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	20(%rax,%r8), %r10d
	jge	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 20(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_14:                                ##   in Loop: Header=BB0_2 Depth=2
	movl	20(%rdi), %r10d
	addl	%r9d, %r10d
	cmpl	24(%rax,%r8), %r10d
	jge	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_2 Depth=2
	movl	%r10d, 24(%rax,%r8)
	movl	(%rdx,%r8), %r9d
LBB0_16:                                ##   in Loop: Header=BB0_2 Depth=2
	addl	24(%rdi), %r9d
	cmpl	28(%rax,%r8), %r9d
	jge	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_2 Depth=2
	movl	%r9d, 28(%rax,%r8)
	jmp	LBB0_18
LBB0_20:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printSolution                  ## -- Begin function printSolution
	.p2align	4, 0x90
_printSolution:                         ## @printSolution
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
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %r14
	leaq	L_.str.2(%rip), %r15
	leaq	L_.str.3(%rip), %r13
	xorl	%r12d, %r12d
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_24:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_25:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	addq	$32, %r12
	cmpq	$256, %r12                      ## imm = 0x100
	je	LBB1_26
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_4
	.p2align	4, 0x90
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	4(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_5
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_7
	.p2align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	8(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_8
## %bb.9:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_10
	.p2align	4, 0x90
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	12(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_11
## %bb.12:                              ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_13
	.p2align	4, 0x90
LBB1_11:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_13:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	16(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_14
## %bb.15:                              ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_16
	.p2align	4, 0x90
LBB1_14:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_16:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	20(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_17
## %bb.18:                              ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_19
	.p2align	4, 0x90
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_19:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	24(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	jne	LBB1_20
## %bb.21:                              ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_22
	.p2align	4, 0x90
LBB1_20:                                ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_22:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	28(%rbx,%r12), %esi
	cmpl	$99999, %esi                    ## imm = 0x1869F
	je	LBB1_24
## %bb.23:                              ##   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_25
LBB1_26:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	leaq	l___const.main.graph(%rip), %rdi
	callq	_floydWarshall
	movq	_dist@GOTPCREL(%rip), %rdi
	callq	_printSolution
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_dist,256,4                     ## @dist
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Following matrix shows the shortest distances between every pair of vertices \n"

L_.str.1:                               ## @.str.1
	.asciz	"%7s"

L_.str.2:                               ## @.str.2
	.asciz	"INF"

L_.str.3:                               ## @.str.3
	.asciz	"%7d"

L_.str.4:                               ## @.str.4
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const.main.graph
l___const.main.graph:
	.long	0                               ## 0x0
	.long	99999                           ## 0x1869f
	.long	4                               ## 0x4
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	7                               ## 0x7
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	0                               ## 0x0
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	9                               ## 0x9
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	99999                           ## 0x1869f
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	99999                           ## 0x1869f
	.long	2                               ## 0x2
	.long	9                               ## 0x9
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	3                               ## 0x3
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	99999                           ## 0x1869f
	.long	7                               ## 0x7
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	9                               ## 0x9
	.long	99999                           ## 0x1869f
	.long	3                               ## 0x3
	.long	0                               ## 0x0
	.long	99999                           ## 0x1869f
	.long	2                               ## 0x2
	.long	7                               ## 0x7
	.long	7                               ## 0x7
	.long	99999                           ## 0x1869f
	.long	2                               ## 0x2
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	0                               ## 0x0
	.long	8                               ## 0x8
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	9                               ## 0x9
	.long	7                               ## 0x7
	.long	2                               ## 0x2
	.long	8                               ## 0x8
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	99999                           ## 0x1869f
	.long	3                               ## 0x3
	.long	99999                           ## 0x1869f
	.long	99999                           ## 0x1869f
	.long	7                               ## 0x7
	.long	99999                           ## 0x1869f
	.long	3                               ## 0x3
	.long	0                               ## 0x0

.subsections_via_symbols
