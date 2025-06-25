	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_lcsAlgo                        ## -- Begin function lcsAlgo
	.p2align	4, 0x90
_lcsAlgo:                               ## @lcsAlgo
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	_m@GOTPCREL(%rip), %rax
	movslq	(%rax), %rbx
	movl	%ebx, %r15d
	testq	%rbx, %rbx
	js	LBB0_8
## %bb.1:
	leaq	1(%r15), %rcx
	movl	%ecx, %eax
	andl	$3, %eax
	cmpl	$3, %ebx
	jae	LBB0_3
## %bb.2:
	xorl	%edx, %edx
	jmp	LBB0_5
LBB0_3:
	andl	$-4, %ecx
	movq	_LCS_table@GOTPCREL(%rip), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	movl	$0, 160(%rsi)
	movl	$0, 320(%rsi)
	movl	$0, 480(%rsi)
	addq	$4, %rdx
	addq	$640, %rsi                      ## imm = 0x280
	cmpq	%rdx, %rcx
	jne	LBB0_4
LBB0_5:
	testq	%rax, %rax
	je	LBB0_8
## %bb.6:
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$5, %rcx
	addq	_LCS_table@GOTPCREL(%rip), %rcx
	shlq	$5, %rax
	leaq	(%rax,%rax,4), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx,%rdx)
	addq	$160, %rdx
	cmpq	%rdx, %rax
	jne	LBB0_7
LBB0_8:
	movq	_n@GOTPCREL(%rip), %rax
	movslq	(%rax), %r14
	testq	%r14, %r14
	js	LBB0_10
## %bb.9:
	movl	%r14d, %eax
	leaq	4(,%rax,4), %rsi
	movq	_LCS_table@GOTPCREL(%rip), %rdi
	callq	___bzero
LBB0_10:
	testl	%ebx, %ebx
	jle	LBB0_25
## %bb.11:
	leal	1(%r14), %eax
	incq	%r15
	movl	$164, %ecx
	addq	_LCS_table@GOTPCREL(%rip), %rcx
	leaq	-1(%rax), %rdx
	movl	$1, %esi
	leaq	_S1(%rip), %rdi
	leaq	_S2(%rip), %r8
	jmp	LBB0_14
	.p2align	4, 0x90
LBB0_12:                                ##   in Loop: Header=BB0_14 Depth=1
	movl	%eax, %r9d
LBB0_13:                                ##   in Loop: Header=BB0_14 Depth=1
	incq	%rsi
	addq	$160, %rcx
	cmpq	%r15, %rsi
	je	LBB0_24
LBB0_14:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_19 Depth 2
	testl	%r14d, %r14d
	jle	LBB0_23
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=1
	movzbl	-1(%rsi,%rdi), %r9d
	xorl	%r10d, %r10d
	jmp	LBB0_19
	.p2align	4, 0x90
LBB0_16:                                ##   in Loop: Header=BB0_19 Depth=2
	movl	-164(%rcx,%r10,4), %r11d
	incl	%r11d
LBB0_17:                                ##   in Loop: Header=BB0_19 Depth=2
	movl	%r11d, (%rcx,%r10,4)
LBB0_18:                                ##   in Loop: Header=BB0_19 Depth=2
	incq	%r10
	cmpq	%r10, %rdx
	je	LBB0_12
LBB0_19:                                ##   Parent Loop BB0_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpb	(%r10,%r8), %r9b
	je	LBB0_16
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=2
	movl	-160(%rcx,%r10,4), %r11d
	movl	-4(%rcx,%r10,4), %r12d
	cmpl	%r12d, %r11d
	jge	LBB0_17
## %bb.21:                              ##   in Loop: Header=BB0_19 Depth=2
	movl	%r12d, (%rcx,%r10,4)
	jmp	LBB0_18
	.p2align	4, 0x90
LBB0_23:                                ##   in Loop: Header=BB0_14 Depth=1
	movl	$1, %r9d
	jmp	LBB0_13
LBB0_24:
	movq	_j@GOTPCREL(%rip), %rax
	movl	%r9d, (%rax)
	jmp	LBB0_26
LBB0_25:
	movl	$1, %r15d
LBB0_26:
	movq	_i@GOTPCREL(%rip), %rax
	movl	%r15d, (%rax)
	leaq	(%rbx,%rbx,4), %rax
	shlq	$5, %rax
	addq	_LCS_table@GOTPCREL(%rip), %rax
	movslq	(%rax,%r14,4), %r15
	leal	1(%r15), %eax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %rsi
	movb	$0, (%rsi,%r15)
	testl	%ebx, %ebx
	jle	LBB0_35
## %bb.27:
	testl	%r14d, %r14d
	jle	LBB0_35
## %bb.28:
	leaq	_S1(%rip), %rax
	leaq	_S2(%rip), %rcx
	movq	_LCS_table@GOTPCREL(%rip), %rdx
	jmp	LBB0_29
	.p2align	4, 0x90
LBB0_33:                                ##   in Loop: Header=BB0_29 Depth=1
	movl	%edi, %ebx
	testl	%ebx, %ebx
	jle	LBB0_35
LBB0_34:                                ##   in Loop: Header=BB0_29 Depth=1
	testl	%r14d, %r14d
	jle	LBB0_35
LBB0_29:                                ## =>This Inner Loop Header: Depth=1
	leal	-1(%rbx), %edi
	movzbl	(%rdi,%rax), %r9d
	leal	-1(%r14), %r8d
	cmpb	(%r8,%rcx), %r9b
	jne	LBB0_31
## %bb.30:                              ##   in Loop: Header=BB0_29 Depth=1
	movslq	%r15d, %r15
	movb	%r9b, -1(%rsi,%r15)
	decq	%r15
	movl	%edi, %ebx
	movl	%r8d, %r14d
	testl	%ebx, %ebx
	jg	LBB0_34
	jmp	LBB0_35
	.p2align	4, 0x90
LBB0_31:                                ##   in Loop: Header=BB0_29 Depth=1
	movl	%r14d, %r9d
	leaq	(%rdi,%rdi,4), %r10
	shlq	$5, %r10
	addq	%rdx, %r10
	movl	(%r10,%r9,4), %r9d
	movl	%ebx, %r10d
	leaq	(%r10,%r10,4), %r10
	shlq	$5, %r10
	addq	%rdx, %r10
	cmpl	(%r10,%r8,4), %r9d
	jg	LBB0_33
## %bb.32:                              ##   in Loop: Header=BB0_29 Depth=1
	movl	%ebx, %edi
	movl	%r8d, %r14d
	jmp	LBB0_33
LBB0_35:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB0_37
## %bb.36:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_37:
	callq	___stack_chk_fail
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	_S1(%rip), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movq	_m@GOTPCREL(%rip), %r15
	movl	%eax, (%r15)
	leaq	_S2(%rip), %r14
	movq	%r14, %rdi
	callq	_libmin_strlen
	movq	_n@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	(%r15), %edx
	leaq	L_.str.1(%rip), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_lcsAlgo
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_S1                             ## @S1
	.p2align	4, 0x0
_S1:
	.asciz	"ACADBFEDSFSDFDSEFE\000"

	.globl	_S2                             ## @S2
	.p2align	4, 0x0
_S2:
	.asciz	"CBDAEFEFESAFEASDD\000\000"

	.comm	_i,4,2                          ## @i
	.comm	_m,4,2                          ## @m
	.comm	_LCS_table,6400,4               ## @LCS_table
	.comm	_n,4,2                          ## @n
	.comm	_j,4,2                          ## @j
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"LCS: %s"

L_.str.1:                               ## @.str.1
	.asciz	"S1 : %s (%d) \nS2 : %s  (%d)\n"

L_.str.2:                               ## @.str.2
	.asciz	"\n"

	.comm	_b,1600,4                       ## @b
.subsections_via_symbols
