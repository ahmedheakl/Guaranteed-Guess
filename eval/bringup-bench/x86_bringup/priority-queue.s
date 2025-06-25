	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_newNode                        ## -- Begin function newNode
	.p2align	4, 0x90
_newNode:                               ## @newNode
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
	movl	%esi, %r14d
	movl	%edi, %ebx
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%ebx, (%rax)
	movl	%r14d, 4(%rax)
	movq	$0, 8(%rax)
	popq	%rbx
	popq	%r14
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
	movq	(%rdi), %rax
	movl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_priopeek                       ## -- Begin function priopeek
	.p2align	4, 0x90
_priopeek:                              ## @priopeek
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movl	4(%rax), %eax
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
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movq	%rax, %rdi
	popq	%rbp
	jmp	_libmin_free                    ## TAILCALL
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%r15d, (%rax)
	movl	%r14d, 4(%rax)
	movq	$0, 8(%rax)
	movq	(%rbx), %rcx
	cmpl	%r14d, 4(%rcx)
	jg	LBB4_5
## %bb.1:
	movq	%r12, %rcx
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	LBB4_4
## %bb.3:                               ##   in Loop: Header=BB4_2 Depth=1
	cmpl	%r14d, 4(%rcx)
	jl	LBB4_2
LBB4_4:
	addq	$8, %rbx
LBB4_5:
	movq	%rcx, 8(%rax)
	movq	%rax, (%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	cmpq	$0, (%rdi)
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_printPQ                        ## -- Begin function printPQ
	.p2align	4, 0x90
_printPQ:                               ## @printPQ
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
	movq	%rdi, %rbx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	LBB6_3
## %bb.1:
	leaq	L_.str.1(%rip), %r14
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	movl	4(%rax), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%rbx), %rdi
	movq	8(%rdi), %rax
	movq	%rax, (%rbx)
	callq	_libmin_free
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	LBB6_2
LBB6_3:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movabsq	$4294967300, %r15               ## imm = 0x100000004
	movq	%r15, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	_libmin_malloc
	movabsq	$8589934597, %rcx               ## imm = 0x200000005
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	leaq	-48(%rbp), %r14
	cmpl	$2, 4(%rbx)
	movq	%r14, %rcx
	jg	LBB7_5
	.p2align	4, 0x90
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB7_2
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	cmpl	$2, 4(%rbx)
	jl	LBB7_1
	jmp	LBB7_4
LBB7_2:
	xorl	%ebx, %ebx
LBB7_4:
	addq	$8, %rcx
LBB7_5:
	movq	%rbx, 8(%rax)
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rbx
	movl	$16, %edi
	callq	_libmin_malloc
	movabsq	$12884901894, %rcx              ## imm = 0x300000006
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	cmpl	$3, 4(%rbx)
	jle	LBB7_7
## %bb.6:
	movq	%r14, %rcx
	jmp	LBB7_11
	.p2align	4, 0x90
LBB7_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB7_8
## %bb.9:                               ##   in Loop: Header=BB7_7 Depth=1
	cmpl	$3, 4(%rbx)
	jl	LBB7_7
	jmp	LBB7_10
LBB7_8:
	xorl	%ebx, %ebx
LBB7_10:
	addq	$8, %rcx
LBB7_11:
	movq	%rbx, 8(%rax)
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rbx
	movl	$16, %edi
	callq	_libmin_malloc
	movq	$7, (%rax)
	movq	$0, 8(%rax)
	cmpl	$0, 4(%rbx)
	jg	LBB7_16
	jmp	LBB7_12
	.p2align	4, 0x90
LBB7_14:                                ##   in Loop: Header=BB7_12 Depth=1
	cmpl	$0, 4(%rbx)
	jns	LBB7_15
LBB7_12:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB7_14
## %bb.13:
	xorl	%ebx, %ebx
LBB7_15:
	addq	$8, %r14
LBB7_16:
	movq	%rbx, 8(%rax)
	movq	%rax, (%r14)
	leaq	L_.str(%rip), %rdi
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-48(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB7_19
## %bb.17:
	leaq	L_.str.1(%rip), %r14
	.p2align	4, 0x90
LBB7_18:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edx
	movl	4(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	8(%rbx), %r13
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r13, %rbx
	testq	%r13, %r13
	jne	LBB7_18
LBB7_19:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$42, %edi
	callq	_libmin_srand
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %r13
	.p2align	4, 0x90
LBB7_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_26 Depth 2
	callq	_libmin_rand
	movl	%eax, %r15d
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax          ## imm = 0x10624DD3
	shrq	$36, %rax
	imull	$250, %eax, %eax
	subl	%eax, %r15d
	callq	_libmin_rand
	movl	%eax, %r14d
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax          ## imm = 0x10624DD3
	shrq	$36, %rax
	imull	$250, %eax, %eax
	subl	%eax, %r14d
	movl	$16, %edi
	callq	_libmin_malloc
	movl	%r15d, (%rax)
	movl	%r14d, 4(%rax)
	movq	$0, 8(%rax)
	cmpl	%r14d, 4(%rbx)
	jle	LBB7_26
## %bb.21:                              ##   in Loop: Header=BB7_20 Depth=1
	movq	%r13, %rcx
	jmp	LBB7_30
	.p2align	4, 0x90
LBB7_26:                                ##   Parent Loop BB7_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rcx
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB7_27
## %bb.28:                              ##   in Loop: Header=BB7_26 Depth=2
	cmpl	%r14d, 4(%rbx)
	jl	LBB7_26
	jmp	LBB7_29
	.p2align	4, 0x90
LBB7_27:                                ##   in Loop: Header=BB7_20 Depth=1
	xorl	%ebx, %ebx
LBB7_29:                                ##   in Loop: Header=BB7_20 Depth=1
	addq	$8, %rcx
LBB7_30:                                ##   in Loop: Header=BB7_20 Depth=1
	movq	%rbx, 8(%rax)
	movq	%rax, (%rcx)
	incl	%r12d
	cmpl	$250, %r12d
	je	LBB7_22
## %bb.31:                              ##   in Loop: Header=BB7_20 Depth=1
	movq	-48(%rbp), %rbx
	jmp	LBB7_20
LBB7_22:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-48(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB7_25
## %bb.23:
	leaq	L_.str.1(%rip), %r14
	.p2align	4, 0x90
LBB7_24:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edx
	movl	4(%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r15, %rbx
	testq	%r15, %r15
	jne	LBB7_24
LBB7_25:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"priorityQ: "

L_.str.1:                               ## @.str.1
	.asciz	"<prio:%d, val:%d> "

L_.str.2:                               ## @.str.2
	.asciz	"\n"

.subsections_via_symbols
