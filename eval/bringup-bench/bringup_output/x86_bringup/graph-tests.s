	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_createNode                     ## -- Begin function createNode
	.p2align	4, 0x90
_createNode:                            ## @createNode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%ebx, (%rax)
	movq	$0, 8(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_createGraph                    ## -- Begin function createGraph
	.p2align	4, 0x90
_createGraph:                           ## @createGraph
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
	movl	%edi, %r14d
	movl	$24, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	%r14d, (%rax)
	movslq	%r14d, %r15
	leaq	(,%r15,8), %rdi
	callq	_libmin_malloc
	movq	%rax, 8(%rbx)
	leaq	(,%r15,4), %rdi
	callq	_libmin_malloc
	movq	%rax, 16(%rbx)
	testl	%r15d, %r15d
	jle	LBB1_7
## %bb.1:
	movl	%r14d, %eax
	cmpl	$1, %r14d
	jne	LBB1_3
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB1_5
LBB1_3:
	movl	%eax, %edx
	andl	$-2, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movq	$0, (%rsi,%rcx,8)
	movq	16(%rbx), %rsi
	movl	$0, (%rsi,%rcx,4)
	movq	8(%rbx), %rsi
	movq	$0, 8(%rsi,%rcx,8)
	movq	16(%rbx), %rsi
	movl	$0, 4(%rsi,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	LBB1_4
LBB1_5:
	testb	$1, %al
	je	LBB1_7
## %bb.6:
	movq	8(%rbx), %rax
	movq	$0, (%rax,%rcx,8)
	movq	16(%rbx), %rax
	movl	$0, (%rax,%rcx,4)
LBB1_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addEdge                        ## -- Begin function addEdge
	.p2align	4, 0x90
_addEdge:                               ## @addEdge
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
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%ebx, (%rax)
	movq	$0, 8(%rax)
	movq	8(%r15), %rcx
	movslq	%r14d, %r14
	movq	(%rcx,%r14,8), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, (%rcx,%r14,8)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%r14d, (%rax)
	movq	$0, 8(%rax)
	movq	8(%r15), %rcx
	movslq	%ebx, %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, 8(%rax)
	movq	%rax, (%rcx,%rdx,8)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_createQueue                    ## -- Begin function createQueue
	.p2align	4, 0x90
_createQueue:                           ## @createQueue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$168, %edi
	callq	_libmin_malloc
	movq	$-1, 160(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_isEmpty                        ## -- Begin function isEmpty
	.p2align	4, 0x90
_isEmpty:                               ## @isEmpty
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$-1, 164(%rdi)
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enqueue                        ## -- Begin function enqueue
	.p2align	4, 0x90
_enqueue:                               ## @enqueue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	164(%rdi), %rax
	cmpq	$39, %rax
	jne	LBB5_1
## %bb.4:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
LBB5_1:
	cmpl	$-1, 160(%rdi)
	jne	LBB5_3
## %bb.2:
	movl	$0, 160(%rdi)
LBB5_3:
	leaq	1(%rax), %rcx
	movl	%ecx, 164(%rdi)
	movl	%esi, 4(%rdi,%rax,4)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dequeue                        ## -- Begin function dequeue
	.p2align	4, 0x90
_dequeue:                               ## @dequeue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	164(%rdi), %eax
	cmpl	$-1, %eax
	je	LBB6_1
## %bb.2:
	movq	%rdi, %r14
	movslq	160(%rdi), %rcx
	movl	(%rdi,%rcx,4), %ebx
	leal	1(%rcx), %edx
	movl	%edx, 160(%rdi)
	cmpl	%eax, %ecx
	jl	LBB6_4
## %bb.3:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	$-1, 160(%r14)
	jmp	LBB6_4
LBB6_1:
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %ebx
LBB6_4:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printQueue                     ## -- Begin function printQueue
	.p2align	4, 0x90
_printQueue:                            ## @printQueue
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpl	$-1, 164(%rdi)
	je	LBB7_1
## %bb.2:
	movq	%rdi, %rbx
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	160(%rbx), %r12
	leaq	L_.str.5(%rip), %r14
	cmpl	164(%rbx), %r12d
	jg	LBB7_5
## %bb.3:
	decq	%r12
	leaq	L_.str.4(%rip), %r15
	.p2align	4, 0x90
LBB7_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%r12,4), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	164(%rbx), %rax
	incq	%r12
	cmpq	%rax, %r12
	jl	LBB7_4
	jmp	LBB7_5
LBB7_1:
	leaq	L_.str.1(%rip), %r14
LBB7_5:
	movq	%r14, %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_bfs                            ## -- Begin function bfs
	.p2align	4, 0x90
_bfs:                                   ## @bfs
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
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$168, %edi
	callq	_libmin_malloc
	movq	%rax, %r14
	movq	$-1, 160(%rax)
	movq	16(%rbx), %rax
	movslq	%r15d, %rcx
	movl	$1, (%rax,%rcx,4)
	movslq	164(%r14), %rax
	cmpq	$39, %rax
	jne	LBB8_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpl	$-1, 164(%r14)
	jne	LBB8_6
	jmp	LBB8_24
LBB8_2:
	cmpl	$-1, 160(%r14)
	jne	LBB8_4
## %bb.3:
	movl	$0, 160(%r14)
LBB8_4:
	leaq	1(%rax), %rcx
	movl	%ecx, 164(%r14)
	movl	%r15d, 4(%r14,%rax,4)
	cmpl	$-1, 164(%r14)
	je	LBB8_24
LBB8_6:
	leaq	L_.str(%rip), %r15
	leaq	L_.str.4(%rip), %r12
	jmp	LBB8_8
	.p2align	4, 0x90
LBB8_7:                                 ##   in Loop: Header=BB8_8 Depth=1
	cmpl	$-1, 164(%r14)
	je	LBB8_24
LBB8_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_10 Depth 2
                                        ##     Child Loop BB8_23 Depth 2
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	160(%r14), %r13
	cmpl	164(%r14), %r13d
	jg	LBB8_11
## %bb.9:                               ##   in Loop: Header=BB8_8 Depth=1
	decq	%r13
	.p2align	4, 0x90
LBB8_10:                                ##   Parent Loop BB8_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	4(%r14,%r13,4), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movslq	164(%r14), %rax
	incq	%r13
	cmpq	%rax, %r13
	jl	LBB8_10
LBB8_11:                                ##   in Loop: Header=BB8_8 Depth=1
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	164(%r14), %eax
	cmpl	$-1, %eax
	je	LBB8_12
## %bb.13:                              ##   in Loop: Header=BB8_8 Depth=1
	movslq	160(%r14), %rcx
	movl	(%r14,%rcx,4), %r13d
	leal	1(%rcx), %edx
	movl	%edx, 160(%r14)
	cmpl	%eax, %ecx
	jl	LBB8_15
## %bb.14:                              ##   in Loop: Header=BB8_8 Depth=1
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	$-1, 160(%r14)
	jmp	LBB8_15
	.p2align	4, 0x90
LBB8_12:                                ##   in Loop: Header=BB8_8 Depth=1
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %r13d
LBB8_15:                                ##   in Loop: Header=BB8_8 Depth=1
	leaq	L_.str.6(%rip), %rdi
	movl	%r13d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	8(%rbx), %rax
	movslq	%r13d, %rcx
	movq	(%rax,%rcx,8), %r13
	jmp	LBB8_23
LBB8_18:                                ##   in Loop: Header=BB8_23 Depth=2
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	.p2align	4, 0x90
LBB8_22:                                ##   in Loop: Header=BB8_23 Depth=2
	movq	8(%r13), %r13
LBB8_23:                                ##   Parent Loop BB8_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%r13, %r13
	je	LBB8_7
## %bb.16:                              ##   in Loop: Header=BB8_23 Depth=2
	movl	(%r13), %eax
	movq	16(%rbx), %rcx
	movslq	%eax, %rdx
	cmpl	$0, (%rcx,%rdx,4)
	jne	LBB8_22
## %bb.17:                              ##   in Loop: Header=BB8_23 Depth=2
	movl	$1, (%rcx,%rdx,4)
	movslq	164(%r14), %rcx
	cmpq	$39, %rcx
	je	LBB8_18
## %bb.19:                              ##   in Loop: Header=BB8_23 Depth=2
	cmpl	$-1, 160(%r14)
	jne	LBB8_21
## %bb.20:                              ##   in Loop: Header=BB8_23 Depth=2
	movl	$0, 160(%r14)
LBB8_21:                                ##   in Loop: Header=BB8_23 Depth=2
	leaq	1(%rcx), %rdx
	movl	%edx, 164(%r14)
	movl	%eax, 4(%r14,%rcx,4)
	jmp	LBB8_22
LBB8_24:
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
	.globl	_bfs_test                       ## -- Begin function bfs_test
	.p2align	4, 0x90
_bfs_test:                              ## @bfs_test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$24, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$6, (%rax)
	movl	$48, %edi
	callq	_libmin_malloc
	movq	%rax, 8(%rbx)
	movl	$24, %edi
	callq	_libmin_malloc
	movq	%rax, 16(%rbx)
	movq	8(%rbx), %rax
	movq	$0, (%rax)
	movq	16(%rbx), %rax
	movl	$0, (%rax)
	movq	8(%rbx), %rax
	movq	$0, 8(%rax)
	movq	16(%rbx), %rax
	movl	$0, 4(%rax)
	movq	8(%rbx), %rax
	movq	$0, 16(%rax)
	movq	16(%rbx), %rax
	movl	$0, 8(%rax)
	movq	8(%rbx), %rax
	movq	$0, 24(%rax)
	movq	16(%rbx), %rax
	movl	$0, 12(%rax)
	movq	8(%rbx), %rax
	movq	$0, 32(%rax)
	movq	16(%rbx), %rax
	movl	$0, 16(%rax)
	movq	8(%rbx), %rax
	movq	$0, 40(%rax)
	movq	16(%rbx), %rax
	movl	$0, 20(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, (%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$2, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, (%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 16(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$2, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 16(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$4, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 32(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$3, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 24(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$4, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 16(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$2, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 32(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$4, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 24(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$3, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 32(%rcx)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_bfs                            ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_insertAtTheBegin               ## -- Begin function insertAtTheBegin
	.p2align	4, 0x90
_insertAtTheBegin:                      ## @insertAtTheBegin
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%ebx, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, (%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_swap                           ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bubbleSort                     ## -- Begin function bubbleSort
	.p2align	4, 0x90
_bubbleSort:                            ## @bubbleSort
	.cfi_startproc
## %bb.0:
	testq	%rdi, %rdi
	je	LBB12_10
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	xorl	%ecx, %ecx
	jmp	LBB12_2
	.p2align	4, 0x90
LBB12_8:                                ##   in Loop: Header=BB12_2 Depth=1
	movq	%r8, %rcx
	testl	%esi, %esi
	je	LBB12_9
LBB12_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_4 Depth 2
	cmpq	%rcx, %rax
	je	LBB12_9
## %bb.3:                               ##   in Loop: Header=BB12_2 Depth=1
	movl	(%rdi), %edx
	xorl	%esi, %esi
	movq	%rax, %r10
	movq	%rdi, %r9
	jmp	LBB12_4
	.p2align	4, 0x90
LBB12_6:                                ##   in Loop: Header=BB12_4 Depth=2
	movl	%r10d, (%r9)
	movl	%edx, (%r8)
	movl	$1, %esi
LBB12_7:                                ##   in Loop: Header=BB12_4 Depth=2
	movq	8(%r8), %r10
	movq	%r8, %r9
	cmpq	%rcx, %r10
	je	LBB12_8
LBB12_4:                                ##   Parent Loop BB12_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r10, %r8
	movl	(%r10), %r10d
	cmpl	%r10d, %edx
	jg	LBB12_6
## %bb.5:                               ##   in Loop: Header=BB12_4 Depth=2
	movl	%r10d, %edx
	jmp	LBB12_7
LBB12_9:
	popq	%rbp
LBB12_10:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_link_list                      ## -- Begin function link_list
	.p2align	4, 0x90
_link_list:                             ## @link_list
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$12, (%rax)
	movq	$0, 8(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %r14
	movl	$56, (%rax)
	movq	%rbx, 8(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$2, (%rax)
	movq	%r14, 8(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %r14
	movl	$11, (%rax)
	movq	%rbx, 8(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$1, (%rax)
	movq	%r14, 8(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$90, (%rax)
	movq	%rbx, 8(%rax)
	xorl	%ecx, %ecx
	jmp	LBB13_1
	.p2align	4, 0x90
LBB13_7:                                ##   in Loop: Header=BB13_1 Depth=1
	movq	%rdi, %rcx
	testl	%esi, %esi
	je	LBB13_8
LBB13_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_3 Depth 2
	cmpq	%rcx, %rbx
	je	LBB13_8
## %bb.2:                               ##   in Loop: Header=BB13_1 Depth=1
	movl	(%rax), %edx
	xorl	%esi, %esi
	movq	%rbx, %r9
	movq	%rax, %r8
	jmp	LBB13_3
	.p2align	4, 0x90
LBB13_5:                                ##   in Loop: Header=BB13_3 Depth=2
	movl	%r9d, (%r8)
	movl	%edx, (%rdi)
	movl	$1, %esi
LBB13_6:                                ##   in Loop: Header=BB13_3 Depth=2
	movq	8(%rdi), %r9
	movq	%rdi, %r8
	cmpq	%rcx, %r9
	je	LBB13_7
LBB13_3:                                ##   Parent Loop BB13_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r9, %rdi
	movl	(%r9), %r9d
	cmpl	%r9d, %edx
	jg	LBB13_5
## %bb.4:                               ##   in Loop: Header=BB13_3 Depth=2
	movl	%r9d, %edx
	jmp	LBB13_6
LBB13_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_push                           ## -- Begin function push
	.p2align	4, 0x90
_push:                                  ## @push
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	_top(%rip), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, _top(%rip)
	movq	_stack@GOTPCREL(%rip), %rcx
	movl	%edi, 4(%rcx,%rax,4)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_pop                            ## -- Begin function pop
	.p2align	4, 0x90
_pop:                                   ## @pop
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	_top(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, _top(%rip)
	movq	_stack@GOTPCREL(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_peek                           ## -- Begin function peek
	.p2align	4, 0x90
_peek:                                  ## @peek
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	_top(%rip), %rax
	movq	_stack@GOTPCREL(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_isStackEmpty                   ## -- Begin function isStackEmpty
	.p2align	4, 0x90
_isStackEmpty:                          ## @isStackEmpty
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$-1, _top(%rip)
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addVertex                      ## -- Begin function addVertex
	.p2align	4, 0x90
_addVertex:                             ## @addVertex
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	_lstVertices@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addEdge_DFS                    ## -- Begin function addEdge_DFS
	.p2align	4, 0x90
_addEdge_DFS:                           ## @addEdge_DFS
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edi, %rax
	movslq	%esi, %rcx
	leaq	(%rax,%rax,4), %rdx
	movq	_adjMatrix@GOTPCREL(%rip), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	movl	$1, (%rdx,%rcx,4)
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rcx
	movl	$1, (%rcx,%rax,4)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getAdjUnvisitedVertex          ## -- Begin function getAdjUnvisitedVertex
	.p2align	4, 0x90
_getAdjUnvisitedVertex:                 ## @getAdjUnvisitedVertex
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_vertexCount(%rip), %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jle	LBB20_6
## %bb.1:
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	shlq	$2, %rdx
	addq	_adjMatrix@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movq	_lstVertices@GOTPCREL(%rip), %rdi
	jmp	LBB20_2
	.p2align	4, 0x90
LBB20_4:                                ##   in Loop: Header=BB20_2 Depth=1
	incq	%rsi
	cmpq	%rsi, %rcx
	je	LBB20_6
LBB20_2:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$1, (%rdx,%rsi,4)
	jne	LBB20_4
## %bb.3:                               ##   in Loop: Header=BB20_2 Depth=1
	movq	(%rdi,%rsi,8), %r8
	cmpl	$0, (%r8)
	jne	LBB20_4
## %bb.5:
	movl	%esi, %eax
LBB20_6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_depthFirstSearch               ## -- Begin function depthFirstSearch
	.p2align	4, 0x90
_depthFirstSearch:                      ## @depthFirstSearch
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_lstVertices@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$1, (%rcx)
	movslq	_top(%rip), %rsi
	leaq	1(%rsi), %rdx
	movl	%edx, _top(%rip)
	movq	_stack@GOTPCREL(%rip), %rcx
	movl	$0, 4(%rcx,%rsi,4)
	movl	_vertexCount(%rip), %edi
	cmpl	$-1, %edx
	je	LBB21_7
## %bb.1:
	movq	_adjMatrix@GOTPCREL(%rip), %rsi
	jmp	LBB21_2
	.p2align	4, 0x90
LBB21_12:                               ##   in Loop: Header=BB21_2 Depth=1
	decl	%edx
	movl	%edx, _top(%rip)
LBB21_14:                               ##   in Loop: Header=BB21_2 Depth=1
	cmpl	$-1, %edx
	je	LBB21_7
LBB21_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB21_4 Depth 2
	testl	%edi, %edi
	jle	LBB21_12
## %bb.3:                               ##   in Loop: Header=BB21_2 Depth=1
	movslq	%edx, %r8
	movslq	(%rcx,%r8,4), %r8
	movl	%edi, %r9d
	leaq	(%r8,%r8,4), %r10
	shlq	$2, %r10
	addq	%rsi, %r10
	xorl	%r8d, %r8d
	jmp	LBB21_4
	.p2align	4, 0x90
LBB21_6:                                ##   in Loop: Header=BB21_4 Depth=2
	incq	%r8
	cmpq	%r8, %r9
	je	LBB21_12
LBB21_4:                                ##   Parent Loop BB21_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$1, (%r10,%r8,4)
	jne	LBB21_6
## %bb.5:                               ##   in Loop: Header=BB21_4 Depth=2
	movq	(%rax,%r8,8), %r11
	cmpl	$0, (%r11)
	jne	LBB21_6
## %bb.11:                              ##   in Loop: Header=BB21_2 Depth=1
	cmpl	$-1, %r8d
	je	LBB21_12
## %bb.13:                              ##   in Loop: Header=BB21_2 Depth=1
	movq	(%rax,%r8,8), %rdx
	movl	$1, (%rdx)
	movslq	_top(%rip), %rdi
	leaq	1(%rdi), %rdx
	movl	%edx, _top(%rip)
	movl	%r8d, 4(%rcx,%rdi,4)
	movl	_vertexCount(%rip), %edi
	jmp	LBB21_14
LBB21_7:
	testl	%edi, %edi
	jle	LBB21_10
## %bb.8:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB21_9:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rax,%rcx,8), %rdx
	movl	$0, (%rdx)
	incq	%rcx
	movslq	_vertexCount(%rip), %rdx
	cmpq	%rdx, %rcx
	jl	LBB21_9
LBB21_10:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_DFS_test                       ## -- Begin function DFS_test
	.p2align	4, 0x90
_DFS_test:                              ## @DFS_test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	xorps	%xmm0, %xmm0
	movq	_adjMatrix@GOTPCREL(%rip), %rbx
	movaps	%xmm0, 80(%rbx)
	movaps	%xmm0, 64(%rbx)
	movaps	%xmm0, 48(%rbx)
	movaps	%xmm0, 32(%rbx)
	movaps	%xmm0, 16(%rbx)
	movaps	%xmm0, (%rbx)
	movl	$0, 96(%rbx)
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	_lstVertices@GOTPCREL(%rip), %r14
	movq	%rax, (%r14,%rcx,8)
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	%rax, (%r14,%rcx,8)
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	%rax, (%r14,%rcx,8)
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	%rax, (%r14,%rcx,8)
	movl	$4, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movslq	_vertexCount(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, _vertexCount(%rip)
	movq	%rax, (%r14,%rcx,8)
	movl	$1, 4(%rbx)
	movl	$1, 20(%rbx)
	movabsq	$4294967297, %rax               ## imm = 0x100000001
	movq	%rax, 8(%rbx)
	movq	%rax, 36(%rbx)
	movl	$1, 84(%rbx)
	movq	%rax, 56(%rbx)
	movq	%rax, 88(%rbx)
	movl	$1, 76(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_depthFirstSearch               ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_towers                         ## -- Begin function towers
	.p2align	4, 0x90
_towers:                                ## @towers
	.cfi_startproc
## %bb.0:
	cmpl	$1, %edi
	je	LBB23_4
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %ebx
	movl	%edi, %r14d
	decl	%r14d
	movsbl	%dl, %r15d
	.p2align	4, 0x90
LBB23_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %r12d
	movsbl	%bl, %esi
	movsbl	%cl, %edx
	movl	%r14d, %edi
	movl	%r15d, %ecx
	callq	_towers
	movl	%ebx, %ecx
	movl	%r12d, %ebx
	decl	%r14d
	jne	LBB23_2
## %bb.3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
LBB23_4:
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_towers_test                    ## -- Begin function towers_test
	.p2align	4, 0x90
_towers_test:                           ## @towers_test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$5, %edi
	movl	$65, %esi
	movl	$67, %edx
	movl	$66, %ecx
	popq	%rbp
	jmp	_towers                         ## TAILCALL
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
	callq	_bfs_test
	callq	_link_list
	callq	_DFS_test
	movl	$5, %edi
	movl	$65, %esi
	movl	$67, %edx
	movl	$66, %ecx
	callq	_towers
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Queue is Full!!\n"

L_.str.1:                               ## @.str.1
	.asciz	"Queue is empty\n"

L_.str.2:                               ## @.str.2
	.asciz	"Resetting queue...\n"

L_.str.3:                               ## @.str.3
	.asciz	"Queue contains: "

L_.str.4:                               ## @.str.4
	.asciz	"%d "

L_.str.5:                               ## @.str.5
	.asciz	"\n"

L_.str.6:                               ## @.str.6
	.asciz	"Visited %d\n"

	.section	__DATA,__data
	.globl	_top                            ## @top
	.p2align	2, 0x0
_top:
	.long	4294967295                      ## 0xffffffff

	.globl	_vertexCount                    ## @vertexCount
.zerofill __DATA,__common,_vertexCount,4,2
	.comm	_stack,20,4                     ## @stack
	.comm	_lstVertices,40,4               ## @lstVertices
	.comm	_adjMatrix,100,4                ## @adjMatrix
.subsections_via_symbols
