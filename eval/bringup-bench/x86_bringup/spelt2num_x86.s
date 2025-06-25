	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
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
	movq	_n@GOTPCREL(%rip), %r8
	movq	(%r8), %rax
	movq	_b@GOTPCREL(%rip), %rsi
	movq	_m@GOTPCREL(%rip), %r10
	leaq	L_.str.1(%rip), %rdi
	movabsq	$3353953467947191203, %r9       ## imm = 0x2E8BA2E8BA2E8BA3
	leaq	L_.str.2(%rip), %r11
                                        ## implicit-def: $r12d
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_1:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %rbx
LBB0_2:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdx,%rax,2), %rax
	subq	%rax, %rcx
	movq	%rcx, (%r8)
	movsbl	(%r11,%rcx), %eax
	cmpl	%eax, %r12d
	leaq	(%rcx,%rbx,8), %rax
	cmovneq	%rbx, %rax
	movq	%rax, (%rsi)
	movq	%rcx, %rax
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_8 Depth 2
	leaq	1(%rax), %rcx
	movq	%rcx, (%r8)
	testq	%rax, %rax
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	_p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, _p(%rip)
	movsbl	(%rax), %r12d
	testl	%r12d, %r12d
	jle	LBB0_25
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	(%rsi), %r14
	cmpl	$46, %r12d
	jg	LBB0_1
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	testq	%r14, %r14
	je	LBB0_1
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	63(%r14), %rax
	testq	%r14, %r14
	cmovnsq	%r14, %rax
	movq	(%r10), %rsi
	andq	$-64, %rax
	movq	%r14, %r8
	subq	%rax, %r8
	xorl	%r13d, %r13d
	cmpq	$25, %r8
	sete	%r13b
	shlq	$4, %r13
	movl	$19, %r11d
	.p2align	4, 0x90
LBB0_8:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	-1(%r11), %r15
	movl	$6177, %ecx                     ## imm = 0x1821
	cmpq	$6177, %r11                     ## imm = 0x1821
	ja	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=2
	movl	$6177, %eax                     ## imm = 0x1821
	xorl	%edx, %edx
	divl	%r11d
	movl	%edx, %ecx
LBB0_10:                                ##   in Loop: Header=BB0_8 Depth=2
	shll	$2, %ecx
	movl	$1, %r9d
                                        ## kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r9
	movzbl	(%r15,%rdi), %eax
	addb	$-42, %al
	movzbl	%al, %eax
	cmpq	%rax, %r14
	jne	LBB0_21
## %bb.11:                              ##   in Loop: Header=BB0_8 Depth=2
	movq	%r15, %rax
	cmpq	$16, %r11
	ja	LBB0_20
## %bb.12:                              ##   in Loop: Header=BB0_8 Depth=2
	cmpq	$11, %r11
	jb	LBB0_15
## %bb.13:                              ##   in Loop: Header=BB0_8 Depth=2
	movq	%rsi, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	je	LBB0_18
## %bb.14:                              ##   in Loop: Header=BB0_8 Depth=2
	movq	%rsi, %rax
	cqto
	idivq	%r9
	jmp	LBB0_19
LBB0_15:                                ##   in Loop: Header=BB0_8 Depth=2
	cmpq	$24, %r8
	jne	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_8 Depth=2
	movq	%r15, %rax
	shlq	$4, %rax
	jmp	LBB0_20
LBB0_17:                                ##   in Loop: Header=BB0_8 Depth=2
	leaq	(%r15,%r13), %rax
	jmp	LBB0_20
LBB0_18:                                ##   in Loop: Header=BB0_8 Depth=2
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        ## kill: def $edx killed $edx def $rdx
LBB0_19:                                ##   in Loop: Header=BB0_8 Depth=2
	decq	%r9
	imulq	%rdx, %r9
	movq	%r9, %rax
LBB0_20:                                ##   in Loop: Header=BB0_8 Depth=2
	addq	%rax, %rsi
	movq	%rsi, (%r10)
	xorl	%r14d, %r14d
LBB0_21:                                ##   in Loop: Header=BB0_8 Depth=2
	movq	%r15, %r11
	testq	%r15, %r15
	jne	LBB0_8
## %bb.22:                              ##   in Loop: Header=BB0_8 Depth=2
	leaq	7(%r14), %rbx
	testq	%r14, %r14
	cmovnsq	%r14, %rbx
	sarq	$3, %rbx
	addq	$-8, %r14
	movl	$19, %r11d
	cmpq	$-15, %r14
	movq	%rbx, %r14
	jb	LBB0_8
## %bb.23:                              ##   in Loop: Header=BB0_3 Depth=1
	movq	_u@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	xorl	%ecx, %ecx
	movq	_n@GOTPCREL(%rip), %r8
	movq	_b@GOTPCREL(%rip), %rsi
	movabsq	$3353953467947191203, %r9       ## imm = 0x2E8BA2E8BA2E8BA3
	leaq	L_.str.2(%rip), %r11
	jmp	LBB0_2
LBB0_25:
	movq	(%r10), %rsi
	leaq	L_.str.3(%rip), %rdi
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
	.asciz	"fifty-two trillion six-hundred and seventy five million and sixty-one thousand and five-hundred sixty-two\n"

	.section	__DATA,__data
	.globl	_p                              ## @p
	.p2align	3
_p:
	.quad	L_.str

	.comm	_n,8,3                          ## @n
	.comm	_b,8,3                          ## @b
	.comm	_u,8,3                          ## @u
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"1+DIY/.K430x9G(kC["

	.comm	_m,8,3                          ## @m
L_.str.2:                               ## @.str.2
	.asciz	"ynwtsflrabg"

L_.str.3:                               ## @.str.3
	.asciz	"%llx\n"

.subsections_via_symbols
