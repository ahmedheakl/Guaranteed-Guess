	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_printTree                      ## -- Begin function printTree
	.p2align	4, 0x90
_printTree:                             ## @printTree
	.cfi_startproc
## %bb.0:
	testq	%rdi, %rdi
	je	LBB0_8
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rax
	movq	24(%rdi), %rsi
	movl	(%rax), %edx
	movswl	32(%rdi), %ecx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%rbx, %rbx
	jle	LBB0_4
## %bb.2:
	leaq	L_.str.1(%rip), %r15
	movq	%rbx, %r12
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decq	%r12
	jne	LBB0_3
LBB0_4:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%r14), %rdi
	leaq	1(%rbx), %r15
	movq	%r15, %rsi
	callq	_printTree
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%rbx, %rbx
	jle	LBB0_7
## %bb.5:
	leaq	L_.str.1(%rip), %r12
	movq	%rbx, %r13
	.p2align	4, 0x90
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decq	%r13
	jne	LBB0_6
LBB0_7:
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	_printTree
	testq	%rbx, %rbx
	leaq	8(%rsp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	je	LBB0_9
LBB0_8:
	retq
LBB0_9:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_breadth                        ## -- Begin function breadth
	.p2align	4, 0x90
_breadth:                               ## @breadth
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
	testq	%rdi, %rdi
	je	LBB1_1
## %bb.2:
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	callq	_breadth
	movq	8(%r14), %r14
	addq	%rax, %rbx
	testq	%r14, %r14
	je	LBB1_7
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	jne	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, 8(%r14)
	jne	LBB1_6
## %bb.5:
	movl	$1, %r15d
LBB1_7:
	addq	%r15, %rbx
	jmp	LBB1_8
LBB1_1:
	xorl	%ebx, %ebx
LBB1_8:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI2_0:
	.quad	0x3fe3333333333333              ## double 0.59999999999999998
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$42, %edi
	callq	_libmin_srand
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	leaq	L_.str.8(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	incq	%rax
	cmpq	$25, %rax
	je	LBB2_6
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	movq	%r12, %rbx
	movl	$8, %edi
	movq	%rax, %r12
	callq	_libmin_malloc
	movq	%rax, %r15
	movl	$11, %edi
	callq	_libmin_malloc
	movq	%rax, %r14
	movl	$11, %esi
	movq	%rax, %rdi
	leaq	L_.str.6(%rip), %rdx
	movq	%r12, -48(%rbp)                 ## 8-byte Spill
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	_libmin_snprintf
	movq	%r13, %rax
	.p2align	4, 0x90
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %r13
	callq	_libmin_rand
	movl	%eax, (%r15)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_Insert
	movq	%rax, %r12
	testq	%rax, %rax
	jne	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	movslq	(%r15), %rax
	cmpq	%rax, %r13
	jne	LBB2_2
## %bb.4:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r15, %rdi
	callq	_libmin_free
	movl	(%r15), %esi
	leaq	L_.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_5
LBB2_6:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%r12), %rax
	movl	(%rax), %esi
	leaq	L_.str.9(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%r12), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_7
## %bb.8:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_9
LBB2_7:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_9:
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rax
	.p2align	4, 0x90
LBB2_10:                                ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB2_10
## %bb.11:
	movq	16(%rbx), %rax
	movl	(%rax), %esi
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_12
## %bb.13:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_14
LBB2_12:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_14:
	leaq	L_.str.15(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rax
	.p2align	4, 0x90
LBB2_15:                                ## =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	LBB2_20
## %bb.16:                              ##   in Loop: Header=BB2_15 Depth=1
	movq	%rax, %rbx
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	LBB2_15
## %bb.17:
	movq	16(%rbx), %rax
	movl	(%rax), %esi
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_18
## %bb.19:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_20
LBB2_18:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_20:
	leaq	L_.str.3(%rip), %r15
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	_printTree
	movq	(%r12), %rdi
	callq	_breadth
	movq	%rax, %rbx
	movq	8(%r12), %rdi
	callq	_breadth
	leaq	L_.str.16(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%r12), %rdi
	callq	_Height
	movq	%rax, %r14
	movq	8(%r12), %rdi
	callq	_Height
	leaq	L_.str.17(%rip), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_rand
	movl	%eax, %eax
	movq	%r14, %rcx
	shrq	$32, %rcx
	je	LBB2_21
## %bb.22:
	xorl	%edx, %edx
	idivq	%r14
	movq	%rdx, %r15
	jmp	LBB2_23
LBB2_21:
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r14d
	movl	%edx, %r15d
LBB2_23:
	leaq	L_.str.18(%rip), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r15
	movq	%r12, %rbx
	jmp	LBB2_24
	.p2align	4, 0x90
LBB2_25:                                ##   in Loop: Header=BB2_24 Depth=1
	testq	%rax, %rax
	je	LBB2_30
LBB2_28:                                ##   in Loop: Header=BB2_24 Depth=1
	addq	$8, %rbx
LBB2_29:                                ##   in Loop: Header=BB2_24 Depth=1
	movq	(%rbx), %rbx
	decq	%r15
	cmpq	$1, %r15
	jle	LBB2_30
LBB2_24:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbx)
	movq	8(%rbx), %rax
	je	LBB2_25
## %bb.26:                              ##   in Loop: Header=BB2_24 Depth=1
	testq	%rax, %rax
	je	LBB2_29
## %bb.27:                              ##   in Loop: Header=BB2_24 Depth=1
	callq	_libmin_rand
	cmpl	$1073741823, %eax               ## imm = 0x3FFFFFFF
	jae	LBB2_28
	jmp	LBB2_29
LBB2_30:
	movq	16(%rbx), %rax
	movq	24(%rbx), %rsi
	movl	(%rax), %edx
	leaq	L_.str.19(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_31
## %bb.32:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_33
LBB2_31:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_33:
	cvtsi2sd	%r14, %xmm0
	mulsd	LCPI2_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r15d
	movslq	%r15d, %rbx
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_rand
	movl	%eax, %eax
	movq	%rbx, %rcx
	shrq	$32, %rcx
	je	LBB2_34
## %bb.35:
	xorl	%edx, %edx
	idivq	%rbx
	movq	%rdx, %r14
	jmp	LBB2_36
LBB2_34:
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r15d
	movl	%edx, %r14d
LBB2_36:
	leaq	L_.str.18(%rip), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	movq	%r12, %rbx
	jmp	LBB2_37
	.p2align	4, 0x90
LBB2_40:                                ##   in Loop: Header=BB2_37 Depth=1
	testq	%rax, %rax
	je	LBB2_43
LBB2_41:                                ##   in Loop: Header=BB2_37 Depth=1
	addq	$8, %rbx
LBB2_42:                                ##   in Loop: Header=BB2_37 Depth=1
	movq	(%rbx), %rbx
	decq	%r14
	cmpq	$1, %r14
	jle	LBB2_43
LBB2_37:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbx)
	movq	8(%rbx), %rax
	je	LBB2_40
## %bb.38:                              ##   in Loop: Header=BB2_37 Depth=1
	testq	%rax, %rax
	je	LBB2_42
## %bb.39:                              ##   in Loop: Header=BB2_37 Depth=1
	callq	_libmin_rand
	cmpl	$1073741822, %eax               ## imm = 0x3FFFFFFE
	ja	LBB2_41
	jmp	LBB2_42
LBB2_43:
	movq	16(%rbx), %rax
	movq	24(%rbx), %rsi
	movl	(%rax), %edx
	leaq	L_.str.19(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_45
## %bb.44:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_46
LBB2_45:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_46:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	mulsd	LCPI2_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r14d
	movslq	%r14d, %rbx
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_rand
	movl	%eax, %eax
	movq	%rbx, %rcx
	shrq	$32, %rcx
	je	LBB2_47
## %bb.48:
	xorl	%edx, %edx
	idivq	%rbx
	movq	%rdx, %r14
	jmp	LBB2_49
LBB2_47:
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r14d
	movl	%edx, %r14d
LBB2_49:
	leaq	L_.str.18(%rip), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	movq	%r12, %rbx
	jmp	LBB2_50
	.p2align	4, 0x90
LBB2_53:                                ##   in Loop: Header=BB2_50 Depth=1
	testq	%rax, %rax
	je	LBB2_56
LBB2_54:                                ##   in Loop: Header=BB2_50 Depth=1
	addq	$8, %rbx
LBB2_55:                                ##   in Loop: Header=BB2_50 Depth=1
	movq	(%rbx), %rbx
	decq	%r14
	cmpq	$1, %r14
	jle	LBB2_56
LBB2_50:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbx)
	movq	8(%rbx), %rax
	je	LBB2_53
## %bb.51:                              ##   in Loop: Header=BB2_50 Depth=1
	testq	%rax, %rax
	je	LBB2_55
## %bb.52:                              ##   in Loop: Header=BB2_50 Depth=1
	callq	_libmin_rand
	cmpl	$1073741822, %eax               ## imm = 0x3FFFFFFE
	ja	LBB2_54
	jmp	LBB2_55
LBB2_56:
	movq	16(%rbx), %rax
	movq	24(%rbx), %rsi
	movl	(%rax), %edx
	leaq	L_.str.19(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	_DeleteByElement
	testq	%rax, %rax
	je	LBB2_58
## %bb.57:
	movq	%rax, %rbx
	movq	16(%rax), %rax
	movl	(%rax), %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %r12
	jmp	LBB2_59
LBB2_58:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_59:
	movq	%r12, %rdi
	callq	_MakeEmpty
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
	.asciz	"%s -> %ld, Balance %d\n"

L_.str.1:                               ## @.str.1
	.asciz	" "

L_.str.2:                               ## @.str.2
	.asciz	"Left: "

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"Right: "

L_.str.5:                               ## @.str.5
	.asciz	"Start  -->  Finished\n"

L_.str.6:                               ## @.str.6
	.asciz	"Name%ld"

L_.str.7:                               ## @.str.7
	.asciz	"going to try and skip: %ld\n"

L_.str.8:                               ## @.str.8
	.asciz	"."

L_.str.9:                               ## @.str.9
	.asciz	"\nGoing to delete the rootNode: %ld\n"

L_.str.10:                              ## @.str.10
	.asciz	"failure!\n"

L_.str.11:                              ## @.str.11
	.asciz	"success! new root is %ld\n"

L_.str.12:                              ## @.str.12
	.asciz	"\nGoing to delete leftMost child... "

L_.str.13:                              ## @.str.13
	.asciz	"found item: %ld\n"

L_.str.14:                              ## @.str.14
	.asciz	"success! new root: %ld\n"

L_.str.15:                              ## @.str.15
	.asciz	"\nGoing to delete rightMost child... "

L_.str.16:                              ## @.str.16
	.asciz	"breadth of left tree: %ld right subtree: %ld\n"

L_.str.17:                              ## @.str.17
	.asciz	"height of left subtree: %ld right subtree: %ld\n"

L_.str.18:                              ## @.str.18
	.asciz	"Going to delete a node at depth (max depth %ld): %ld\n"

L_.str.19:                              ## @.str.19
	.asciz	"Found a node to delete with Name '%s' and Item %ld\n"

.subsections_via_symbols
