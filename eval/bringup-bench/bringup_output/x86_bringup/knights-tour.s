	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_isSafe                         ## -- Begin function isSafe
	.p2align	4, 0x90
_isSafe:                                ## @isSafe
	.cfi_startproc
## %bb.0:
	xorl	%eax, %eax
	cmpl	$4, %edi
	ja	LBB0_3
## %bb.1:
	cmpl	$4, %esi
	ja	LBB0_3
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	movl	%esi, %ecx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,4), %rdx
	xorl	%eax, %eax
	cmpl	$-1, (%rdx,%rcx,4)
	sete	%al
	popq	%rbp
LBB0_3:
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	(%rdi), %esi
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	4(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	8(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	12(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	16(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %r15
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	20(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	28(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	32(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	36(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	40(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	44(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	48(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	52(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	56(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	60(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	64(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	68(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	72(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	76(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	80(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	84(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	88(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	92(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	96(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_solveKT                        ## -- Begin function solveKT
	.p2align	4, 0x90
_solveKT:                               ## @solveKT
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, -128(%rbp)
	movdqa	%xmm0, -48(%rbp)
	movdqa	%xmm0, -64(%rbp)
	movdqa	%xmm0, -80(%rbp)
	movdqa	%xmm0, -96(%rbp)
	movdqa	%xmm0, -112(%rbp)
	movl	$-1, -32(%rbp)
	movl	$0, -128(%rbp)
	leaq	l___const.solveKT.xMove(%rip), %r8
	leaq	l___const.solveKT.yMove(%rip), %r9
	xorl	%ebx, %ebx
	leaq	-128(%rbp), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_solveKTUtil
	testl	%eax, %eax
	je	LBB2_1
## %bb.2:
	leaq	-128(%rbp), %rdi
	callq	_printSolution
	movl	$1, %ebx
	jmp	LBB2_3
LBB2_1:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB2_5
## %bb.4:
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB2_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_solveKTUtil                    ## -- Begin function solveKTUtil
	.p2align	4, 0x90
_solveKTUtil:                           ## @solveKTUtil
	.cfi_startproc
## %bb.0:
                                        ## kill: def $edx killed $edx def $rdx
	movl	$1, %eax
	cmpl	$25, %edx
	je	LBB3_11
## %bb.1:
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r11d
	movl	%edi, %ebx
	leal	1(%rdx), %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	xorl	%r12d, %r12d
	movq	%rdx, -64(%rbp)                 ## 8-byte Spill
	movl	%esi, -48(%rbp)                 ## 4-byte Spill
	movl	%edi, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB3_2
	.p2align	4, 0x90
LBB3_8:                                 ##   in Loop: Header=BB3_2 Depth=1
	incq	%r12
	cmpq	$8, %r12
	je	LBB3_9
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r8,%r12,4), %edi
	addl	%ebx, %edi
	cmpl	$4, %edi
	ja	LBB3_8
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=1
	movl	(%r9,%r12,4), %esi
	addl	%r11d, %esi
	cmpl	$4, %esi
	ja	LBB3_8
## %bb.4:                               ##   in Loop: Header=BB3_2 Depth=1
	movl	%edi, %r10d
	movl	%esi, %eax
	leaq	(%r10,%r10,4), %r10
	leaq	(%rcx,%r10,4), %r10
	cmpl	$-1, (%r10,%rax,4)
	jne	LBB3_8
## %bb.5:                               ##   in Loop: Header=BB3_2 Depth=1
	leaq	(%r10,%rax,4), %rbx
	movl	%edx, (%rbx)
	movl	-52(%rbp), %edx                 ## 4-byte Reload
	movq	%rcx, %r14
	movq	%r8, %r15
	movq	%r9, %r13
	callq	_solveKTUtil
	testl	%eax, %eax
	jne	LBB3_6
## %bb.7:                               ##   in Loop: Header=BB3_2 Depth=1
	movl	$-1, (%rbx)
	movq	%r14, %rcx
	movq	%r13, %r9
	movq	-64(%rbp), %rdx                 ## 8-byte Reload
	movq	%r15, %r8
	movl	-48(%rbp), %r11d                ## 4-byte Reload
	movl	-44(%rbp), %ebx                 ## 4-byte Reload
	jmp	LBB3_8
LBB3_9:
	xorl	%eax, %eax
LBB3_10:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LBB3_11:
	retq
LBB3_6:
	movl	$1, %eax
	jmp	LBB3_10
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
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, -112(%rbp)
	movdqa	%xmm0, -32(%rbp)
	movdqa	%xmm0, -48(%rbp)
	movdqa	%xmm0, -64(%rbp)
	movdqa	%xmm0, -80(%rbp)
	movdqa	%xmm0, -96(%rbp)
	movl	$-1, -16(%rbp)
	movl	$0, -112(%rbp)
	leaq	l___const.solveKT.xMove(%rip), %r8
	leaq	l___const.solveKT.yMove(%rip), %r9
	leaq	-112(%rbp), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	_solveKTUtil
	testl	%eax, %eax
	je	LBB4_1
## %bb.2:
	leaq	-112(%rbp), %rdi
	callq	_printSolution
	jmp	LBB4_3
LBB4_1:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB4_3:
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB4_5
## %bb.4:
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
LBB4_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %2d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const.solveKT.xMove
l___const.solveKT.xMove:
	.long	2                               ## 0x2
	.long	1                               ## 0x1
	.long	4294967295                      ## 0xffffffff
	.long	4294967294                      ## 0xfffffffe
	.long	4294967294                      ## 0xfffffffe
	.long	4294967295                      ## 0xffffffff
	.long	1                               ## 0x1
	.long	2                               ## 0x2

	.p2align	4, 0x0                          ## @__const.solveKT.yMove
l___const.solveKT.yMove:
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	2                               ## 0x2
	.long	1                               ## 0x1
	.long	4294967295                      ## 0xffffffff
	.long	4294967294                      ## 0xfffffffe
	.long	4294967294                      ## 0xfffffffe
	.long	4294967295                      ## 0xffffffff

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"Solution does not exist"

.subsections_via_symbols
