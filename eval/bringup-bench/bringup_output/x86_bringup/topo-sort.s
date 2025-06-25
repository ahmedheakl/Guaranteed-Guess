	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_createStackNode                ## -- Begin function createStackNode
	.p2align	4, 0x90
_createStackNode:                       ## @createStackNode
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
	.globl	_createListNode                 ## -- Begin function createListNode
	.p2align	4, 0x90
_createListNode:                        ## @createListNode
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
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	%r14d, (%rax)
	movslq	%r14d, %r15
	movq	%r15, %rdi
	shlq	$4, %rdi
	callq	_libmin_malloc
	movq	%rax, 8(%rbx)
	testl	%r15d, %r15d
	jle	LBB2_6
## %bb.1:
	movl	%r14d, %edx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$4, %r14d
	jae	LBB2_7
## %bb.2:
	xorl	%esi, %esi
	jmp	LBB2_3
LBB2_7:
	andl	$-4, %edx
	leaq	56(%rax), %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rdi)
	movq	$0, -32(%rdi)
	movq	$0, -16(%rdi)
	movq	$0, (%rdi)
	addq	$4, %rsi
	addq	$64, %rdi
	cmpq	%rsi, %rdx
	jne	LBB2_8
LBB2_3:
	testq	%rcx, %rcx
	je	LBB2_6
## %bb.4:
	shlq	$4, %rsi
	addq	%rsi, %rax
	addq	$8, %rax
	shlq	$4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	LBB2_5
LBB2_6:
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
	movslq	%r14d, %rdx
	shlq	$4, %rdx
	movq	8(%rcx,%rdx), %rsi
	movq	%rsi, 8(%rax)
	movq	%rax, 8(%rcx,%rdx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_topologicalSortUtil            ## -- Begin function topologicalSortUtil
	.p2align	4, 0x90
_topologicalSortUtil:                   ## @topologicalSortUtil
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
	movq	%rcx, %rbx
	movl	%esi, %r14d
	movslq	%esi, %rax
	movl	$1, (%rdx,%rax,4)
	movq	8(%rdi), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %r13
	testq	%r13, %r13
	je	LBB4_5
## %bb.1:
	movq	%rdx, %r15
	movq	%rdi, %r12
	jmp	LBB4_2
	.p2align	4, 0x90
LBB4_4:                                 ##   in Loop: Header=BB4_2 Depth=1
	movq	8(%r13), %r13
	testq	%r13, %r13
	je	LBB4_5
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	movslq	(%r13), %rsi
	cmpl	$0, (%r15,%rsi,4)
	jne	LBB4_4
## %bb.3:                               ##   in Loop: Header=BB4_2 Depth=1
	movq	%r12, %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_topologicalSortUtil
	jmp	LBB4_4
LBB4_5:
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%r14d, (%rax)
	movq	$0, 8(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, (%rbx)
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
	.globl	_topologicalSort                ## -- Begin function topologicalSort
	.p2align	4, 0x90
_topologicalSort:                       ## @topologicalSort
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
	movq	$0, -48(%rbp)
	movslq	(%rdi), %rdi
	shlq	$2, %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	cmpl	$0, (%rbx)
	jle	LBB5_11
## %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	$0, (%r14,%rcx,4)
	incq	%rcx
	movslq	(%rbx), %rax
	cmpq	%rax, %rcx
	jl	LBB5_2
## %bb.3:
	testl	%eax, %eax
	jle	LBB5_11
## %bb.4:
	xorl	%r15d, %r15d
	leaq	-48(%rbp), %r12
	jmp	LBB5_5
	.p2align	4, 0x90
LBB5_7:                                 ##   in Loop: Header=BB5_5 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jge	LBB5_8
LBB5_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r14,%r15,4)
	jne	LBB5_7
## %bb.6:                               ##   in Loop: Header=BB5_5 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	_topologicalSortUtil
	movl	(%rbx), %eax
	jmp	LBB5_7
LBB5_8:
	movq	-48(%rbp), %r15
	testq	%r15, %r15
	je	LBB5_11
## %bb.9:
	leaq	L_.str(%rip), %r12
	.p2align	4, 0x90
LBB5_10:                                ## =>This Inner Loop Header: Depth=1
	movl	(%r15), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	8(%r15), %r13
	movq	%r15, %rdi
	callq	_libmin_free
	movq	%r13, %r15
	testq	%r13, %r13
	jne	LBB5_10
LBB5_11:
	movq	%r14, %rdi
	callq	_libmin_free
	movq	8(%rbx), %rdi
	callq	_libmin_free
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_free                    ## TAILCALL
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$6, (%rax)
	movl	$96, %edi
	callq	_libmin_malloc
	movq	%rax, 8(%rbx)
	movq	$0, 8(%rax)
	movq	$0, 24(%rax)
	movq	$0, 40(%rax)
	movq	$0, 56(%rax)
	movq	$0, 72(%rax)
	movq	$0, 88(%rax)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$2, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	88(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 88(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	88(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 88(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 72(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 72(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$3, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	40(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 40(%rcx)
	movl	$16, %edi
	callq	_libmin_malloc
	movl	$1, (%rax)
	movq	$0, 8(%rax)
	movq	8(%rbx), %rcx
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 56(%rcx)
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	callq	_topologicalSort
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"Topological Sorting Order: "

L_.str.2:                               ## @.str.2
	.asciz	"\n"

.subsections_via_symbols
