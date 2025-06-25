	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_infile(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_libmin_mopen
	movl	$64, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	_fill_print_initial
	movq	%rbx, %rdi
	callq	_print_board
	movq	_infile(%rip), %rdx
	leaq	-112(%rbp), %r14
	movl	$64, %esi
	movq	%r14, %rdi
	callq	_libmin_mgets
	leaq	L_.str.2(%rip), %rsi
	leaq	-113(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-115(%rbp), %r8
	leaq	-114(%rbp), %r9
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_sscanf
	movl	$1, %r14d
	movl	$1, %r13d
	cmpl	$4, %eax
	jne	LBB0_13
## %bb.1:
	leaq	_main.valid_moves(%rip), %r15
	movl	$1, %r14d
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_2 Depth=1
	testl	%eax, %eax
	je	LBB0_12
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$6, %edi
	callq	_print_error_message
	movl	$6, %edi
	callq	_libmin_fail
LBB0_12:                                ##   in Loop: Header=BB0_2 Depth=1
	movsbl	-113(%rbp), %esi
	movsbl	-116(%rbp), %edx
	movsbl	-115(%rbp), %ecx
	movsbl	-114(%rbp), %r8d
	movq	%rbx, %rdi
	callq	_change_board
	movsbl	-113(%rbp), %ecx
	movsbl	-116(%rbp), %r8d
	movsbl	-115(%rbp), %r9d
	movsbl	-114(%rbp), %eax
	xorl	%edi, %edi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	pushq	%r14
	pushq	%rax
	callq	_print_move_information
	addq	$16, %rsp
	movq	%rbx, %rdi
	callq	_print_board
	xorl	$1, %r13d
	incl	%r14d
	movq	_infile(%rip), %rdx
	movl	$64, %esi
	leaq	-112(%rbp), %r12
	movq	%r12, %rdi
	callq	_libmin_mgets
	movq	%r12, %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-113(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-115(%rbp), %r8
	leaq	-114(%rbp), %r9
	xorl	%eax, %eax
	callq	_libmin_sscanf
	cmpl	$4, %eax
	jne	LBB0_13
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_28 Depth 2
	movsbl	-113(%rbp), %esi
	movsbl	-116(%rbp), %edx
	movsbl	-115(%rbp), %ecx
	movsbl	-114(%rbp), %r8d
	movq	%rbx, %rdi
	movl	%r13d, %r12d
	movl	%r13d, %r9d
	callq	_check_move_error_1_to_5
	testl	%eax, %eax
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %r13d
	movl	%eax, %edi
	callq	_print_error_message
	movl	%r13d, %edi
	callq	_libmin_fail
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	movsbl	-113(%rbp), %esi
	movsbl	-116(%rbp), %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movl	%r12d, %r13d
	movl	%r12d, %r8d
	callq	_all_possible_moves
	testl	%eax, %eax
	jle	LBB0_11
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	movzbl	-115(%rbp), %edx
	movzbl	-114(%rbp), %ecx
	movl	%eax, %esi
	cmpl	$1, %eax
	jne	LBB0_27
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	xorl	%edi, %edi
	xorl	%r9d, %r9d
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	testb	$1, %sil
	je	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpb	%dl, (%r15,%rdi,2)
	jne	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_2 Depth=1
	cmpb	%cl, 1(%r15,%rdi,2)
	cmovel	%r9d, %eax
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_27:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r8d
	andl	$-2, %r8d
	movl	$1, %eax
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	jmp	LBB0_28
	.p2align	4, 0x90
LBB0_32:                                ##   in Loop: Header=BB0_28 Depth=2
	addq	$2, %rdi
	cmpq	%rdi, %r8
	je	LBB0_7
LBB0_28:                                ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpb	%dl, (%r15,%rdi,2)
	jne	LBB0_30
## %bb.29:                              ##   in Loop: Header=BB0_28 Depth=2
	cmpb	%cl, 1(%r15,%rdi,2)
	cmovel	%r9d, %eax
LBB0_30:                                ##   in Loop: Header=BB0_28 Depth=2
	cmpb	%dl, 2(%r15,%rdi,2)
	jne	LBB0_32
## %bb.31:                              ##   in Loop: Header=BB0_28 Depth=2
	cmpb	%cl, 3(%r15,%rdi,2)
	cmovel	%r9d, %eax
	jmp	LBB0_32
LBB0_13:
	movzbl	-113(%rbp), %eax
	xorl	%ecx, %ecx
	cmpb	$65, %al
	sete	%cl
	cmpb	$80, %al
	movl	$100, %eax
	cmovnel	%ecx, %eax
	movl	%eax, -120(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB0_25
## %bb.14:
	addl	%r14d, -120(%rbp)               ## 4-byte Folded Spill
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_24:                                ##   in Loop: Header=BB0_15 Depth=1
	movsbl	4(%r13), %esi
	movsbl	5(%r13), %edx
	movsbl	6(%r13), %ecx
	movsbl	7(%r13), %r8d
	movq	%rbx, %rdi
	callq	_change_board
	movsbl	4(%r13), %ecx
	movsbl	5(%r13), %r8d
	movsbl	6(%r13), %r9d
	movsbl	7(%r13), %eax
	movl	$1, %edi
	movl	-124(%rbp), %r13d               ## 4-byte Reload
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movq	-136(%rbp), %r12                ## 8-byte Reload
	pushq	%r12
	pushq	%rax
	callq	_print_move_information
	addq	$16, %rsp
	movq	%rbx, %rdi
	callq	_print_board
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	sete	%r15b
	incl	%r12d
	movq	%r14, %rdi
	movq	%r12, %r14
	callq	_free_tree
	movl	%r15d, %r13d
	cmpl	-120(%rbp), %r14d               ## 4-byte Folded Reload
	je	LBB0_25
LBB0_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
                                        ##     Child Loop BB0_22 Depth 2
	movq	%r14, -136(%rbp)                ## 8-byte Spill
	movl	$96, %edi
	callq	_libmin_malloc
	movq	%rax, %r14
	movl	$0, (%rax)
	movl	$1, %eax
	.p2align	4, 0x90
LBB0_16:                                ##   Parent Loop BB0_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	-8(%rbx,%rax,8), %ecx
	movb	%cl, (%r14,%rax,8)
	movzbl	-7(%rbx,%rax,8), %ecx
	movb	%cl, 1(%r14,%rax,8)
	movzbl	-6(%rbx,%rax,8), %ecx
	movb	%cl, 2(%r14,%rax,8)
	movzbl	-5(%rbx,%rax,8), %ecx
	movb	%cl, 3(%r14,%rax,8)
	movzbl	-4(%rbx,%rax,8), %ecx
	movb	%cl, 4(%r14,%rax,8)
	movzbl	-3(%rbx,%rax,8), %ecx
	movb	%cl, 5(%r14,%rax,8)
	movzbl	-2(%rbx,%rax,8), %ecx
	movb	%cl, 6(%r14,%rax,8)
	movzbl	-1(%rbx,%rax,8), %ecx
	movb	%cl, 7(%r14,%rax,8)
	incq	%rax
	cmpq	$9, %rax
	jne	LBB0_16
## %bb.17:                              ##   in Loop: Header=BB0_15 Depth=1
	movl	%r13d, 72(%r14)
	movl	$0, 76(%r14)
	movq	_initial_children@GOTPCREL(%rip), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 80(%r14)
	movq	%r14, %rdi
	callq	_generate_tree_depth_3
	cmpl	$0, 76(%r14)
	jne	LBB0_21
## %bb.18:                              ##   in Loop: Header=BB0_15 Depth=1
	movq	_WHITE@GOTPCREL(%rip), %rsi
	testl	%r13d, %r13d
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_15 Depth=1
	movq	_BLACK@GOTPCREL(%rip), %rsi
LBB0_20:                                ##   in Loop: Header=BB0_15 Depth=1
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
LBB0_21:                                ##   in Loop: Header=BB0_15 Depth=1
	movl	%r13d, -124(%rbp)               ## 4-byte Spill
	movq	%r14, %r12
	addq	$80, %r12
	movq	%r14, %rdi
	callq	_move_score_forced
	movl	%eax, -128(%rbp)                ## 4-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB0_22:                                ##   Parent Loop BB0_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r12), %r12
	movq	(%r12), %r13
	movq	%r13, %rdi
	callq	_move_score_forced
	cmpl	-128(%rbp), %eax                ## 4-byte Folded Reload
	je	LBB0_24
## %bb.23:                              ##   in Loop: Header=BB0_22 Depth=2
	addq	$8, %r12
	incl	%r15d
	cmpl	76(%r14), %r15d
	jl	LBB0_22
	jmp	LBB0_24
LBB0_25:
	movq	%rbx, %rdi
	callq	_libmin_free
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_33
## %bb.26:
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_33:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	___test0                        ## @__test0
	.p2align	4, 0x0
___test0:
	.ascii	"G6-H5\nH3-G4\nH7-G6\nF3-E4\nH5-F3\nE2-G4\nG8-H7\nE4-F5\nG6-H5\nG2-F3\nP\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"test0.txt"

	.section	__DATA,__data
	.globl	___infile                       ## @__infile
	.p2align	3, 0x0
___infile:
	.quad	L_.str
	.quad	62                              ## 0x3e
	.quad	___test0
	.long	0                               ## 0x0
	.space	4

	.globl	_infile                         ## @infile
	.p2align	3, 0x0
_infile:
	.quad	___infile

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"r"

L_.str.2:                               ## @.str.2
	.asciz	"%c%c-%c%c\n"

.zerofill __DATA,__bss,_main.valid_moves,8,0 ## @main.valid_moves
L_.str.3:                               ## @.str.3
	.asciz	"%s WIN!\n"

.subsections_via_symbols
