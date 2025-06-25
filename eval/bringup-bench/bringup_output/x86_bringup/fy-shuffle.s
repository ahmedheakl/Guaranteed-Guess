	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fy_shuffle                     ## -- Begin function fy_shuffle
	.p2align	4, 0x90
_fy_shuffle:                            ## @fy_shuffle
	.cfi_startproc
## %bb.0:
	cmpl	$2, %esi
	jl	LBB0_10
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	%esi, %r12d
	movq	%r12, %r13
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r13), %rax
	movslq	%r15d, %rcx
	movl	(%r14,%rcx,4), %edx
	movl	%eax, %esi
	movl	(%r14,%rsi,4), %edi
	movl	%edi, (%r14,%rcx,4)
	movl	%edx, (%r14,%rsi,4)
	cmpq	$2, %r13
	movq	%rax, %r13
	jle	LBB0_9
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %r15d
	xorl	$2147483647, %r15d              ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB0_3:                                 ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_libmin_rand
	cmpl	%r15d, %eax
	jge	LBB0_3
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	cltd
	idivl	%r13d
	movl	%edx, %r15d
	cmpl	%ebx, %edx
	jge	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpq	%r12, %r13
	jg	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	%r15d, %r15d
	jns	LBB0_8
	jmp	LBB0_7
LBB0_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LBB0_10:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print                          ## -- Begin function print
	.p2align	4, 0x90
_print:                                 ## @print
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
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%r14d, %r14d
	jle	LBB1_3
## %bb.1:
	movl	%r14d, %r15d
	leaq	L_.str.1(%rip), %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12,4), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r12
	cmpq	%r12, %r15
	jne	LBB1_2
LBB1_3:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$42, %edi
	callq	_libmin_srand
	leaq	L_.str(%rip), %r14
	leaq	L_.str.1(%rip), %r15
	leaq	L_.str.2(%rip), %r12
	leaq	_a(%rip), %r13
	leaq	_b(%rip), %rbx
	xorl	%eax, %eax
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	leaq	L_.str.6(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+16(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+20(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+24(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+28(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+32(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+36(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+40(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+44(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+48(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+52(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+56(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+60(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+64(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+68(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+72(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %r12
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	incl	%eax
	cmpl	$8, %eax
	je	LBB2_14
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##       Child Loop BB2_3 Depth 3
                                        ##     Child Loop BB2_8 Depth 2
                                        ##       Child Loop BB2_9 Depth 3
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	movq	%r14, %rdi
	leaq	L_.str.3(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+16(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+20(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+24(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+28(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+32(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+36(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+40(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$11, %r12d
	jmp	LBB2_2
	.p2align	4, 0x90
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=2
	leaq	-1(%r12), %rax
	movslq	%r14d, %rcx
	movl	(%r13,%rcx,4), %edx
	movl	(%r13,%rax,4), %esi
	movl	%esi, (%r13,%rcx,4)
	movl	%edx, (%r13,%rax,4)
	cmpq	$2, %r12
	movq	%rax, %r12
	jbe	LBB2_7
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_3 Depth 3
	movl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	xorl	%edx, %edx
	divl	%r12d
	movl	%edx, %r14d
	xorl	$2147483647, %r14d              ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ##     Parent Loop BB2_2 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	callq	_libmin_rand
	cmpl	%r14d, %eax
	jge	LBB2_3
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=2
	cltd
	idivl	%r12d
	movl	%edx, %r14d
	cmpl	$11, %edx
	jb	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_2 Depth=2
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB2_6
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	leaq	L_.str.4(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+16(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+20(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+24(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+28(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+32(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+36(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_a+40(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %r12
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r14, %rdi
	leaq	L_.str.5(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+16(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+20(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+24(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+28(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+32(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+36(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+40(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+44(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+48(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+52(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+56(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+60(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+64(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+68(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_b+72(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$19, %r12d
	jmp	LBB2_8
	.p2align	4, 0x90
LBB2_12:                                ##   in Loop: Header=BB2_8 Depth=2
	leaq	-1(%r12), %rax
	movslq	%r14d, %rcx
	movl	(%rbx,%rcx,4), %edx
	movl	(%rbx,%rax,4), %esi
	movl	%esi, (%rbx,%rcx,4)
	movl	%edx, (%rbx,%rax,4)
	cmpq	$2, %r12
	movq	%rax, %r12
	jbe	LBB2_13
LBB2_8:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_9 Depth 3
	movl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	xorl	%edx, %edx
	divl	%r12d
	movl	%edx, %r14d
	xorl	$2147483647, %r14d              ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB2_9:                                 ##   Parent Loop BB2_1 Depth=1
                                        ##     Parent Loop BB2_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	callq	_libmin_rand
	cmpl	%r14d, %eax
	jge	LBB2_9
## %bb.10:                              ##   in Loop: Header=BB2_8 Depth=2
	cltd
	idivl	%r12d
	movl	%edx, %r14d
	cmpl	$19, %edx
	jb	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_8 Depth=2
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB2_12
LBB2_14:
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
	.asciz	"%s"

L_.str.1:                               ## @.str.1
	.asciz	"%2d "

L_.str.2:                               ## @.str.2
	.asciz	"\n"

	.section	__DATA,__data
	.globl	_a                              ## @a
	.p2align	4, 0x0
_a:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	5                               ## 0x5
	.long	6                               ## 0x6
	.long	7                               ## 0x7
	.long	8                               ## 0x8
	.long	9                               ## 0x9
	.long	10                              ## 0xa

	.globl	_b                              ## @b
	.p2align	4, 0x0
_b:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	5                               ## 0x5
	.long	6                               ## 0x6
	.long	7                               ## 0x7
	.long	8                               ## 0x8
	.long	9                               ## 0x9
	.long	10                              ## 0xa
	.long	11                              ## 0xb
	.long	12                              ## 0xc
	.long	13                              ## 0xd
	.long	14                              ## 0xe
	.long	15                              ## 0xf
	.long	16                              ## 0x10
	.long	17                              ## 0x11
	.long	18                              ## 0x12

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"A (before): "

L_.str.4:                               ## @.str.4
	.asciz	"A (after):  "

L_.str.5:                               ## @.str.5
	.asciz	"B (before): "

L_.str.6:                               ## @.str.6
	.asciz	"B (after):  "

.subsections_via_symbols
