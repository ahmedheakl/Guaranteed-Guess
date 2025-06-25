	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_search                         ## -- Begin function search
	.p2align	4, 0x90
_search:                                ## @search
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
                                        ## kill: def $ecx killed $ecx def $rcx
                                        ## kill: def $esi killed $esi def $rsi
	movl	$1, %r9d
	cmpl	$2, %ecx
	jl	LBB0_5
## %bb.1:
	leal	-2(%rcx), %ebx
	leal	-1(%rcx), %r11d
	movl	%r11d, %r10d
	andl	$3, %r10d
	cmpl	$3, %ebx
	jae	LBB0_13
## %bb.2:
	movl	$1, %r9d
	jmp	LBB0_3
LBB0_13:
	andl	$-4, %r11d
	movl	$1, %r9d
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %r9d
	movslq	%r9d, %rax
	movq	%rax, %rbx
	shlq	$30, %rbx
	addq	%rax, %rbx
	movq	%rbx, %r9
	shrq	$63, %r9
	sarq	$61, %rbx
	addl	%r9d, %ebx
	addl	%ebx, %eax
	shll	$8, %eax
	movslq	%eax, %rbx
	movq	%rbx, %rax
	shlq	$30, %rax
	addq	%rbx, %rax
	movq	%rax, %r9
	shrq	$63, %r9
	sarq	$61, %rax
	addl	%r9d, %eax
	addl	%eax, %ebx
	shll	$8, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rax
	shlq	$30, %rax
	addq	%rbx, %rax
	movq	%rax, %r9
	shrq	$63, %r9
	sarq	$61, %rax
	addl	%r9d, %eax
	addl	%eax, %ebx
	shll	$8, %ebx
	movslq	%ebx, %r9
	movq	%r9, %rax
	shlq	$30, %rax
	addq	%r9, %rax
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$61, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$31, %ebx
	addl	%eax, %ebx
	addl	%ebx, %r9d
	addl	$-4, %r11d
	jne	LBB0_14
LBB0_3:
	testl	%r10d, %r10d
	je	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	shll	$8, %r9d
	movslq	%r9d, %r9
	movq	%r9, %rax
	shlq	$30, %rax
	addq	%r9, %rax
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$61, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$31, %ebx
	addl	%eax, %ebx
	addl	%ebx, %r9d
	decl	%r10d
	jne	LBB0_4
LBB0_5:
	testl	%ecx, %ecx
	jle	LBB0_6
## %bb.15:
	movl	%ecx, %r11d
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
LBB0_16:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %r10d
	movsbl	(%rdx,%r14), %ebx
	addl	%r10d, %ebx
	movslq	%ebx, %r10
	movq	%r10, %rbx
	shlq	$30, %rbx
	addq	%r10, %rbx
	movq	%rbx, %r15
	shrq	$63, %r15
	sarq	$61, %rbx
	addl	%r15d, %ebx
	movl	%ebx, %eax
	shll	$31, %eax
	addl	%ebx, %eax
	addl	%eax, %r10d
	shll	$8, %r12d
	movsbl	(%rdi,%r14), %eax
	addl	%r12d, %eax
	movslq	%eax, %r12
	movq	%r12, %rax
	shlq	$30, %rax
	addq	%r12, %rax
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$61, %rax
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$31, %ebx
	addl	%eax, %ebx
	addl	%ebx, %r12d
	incq	%r14
	cmpq	%r14, %r11
	jne	LBB0_16
## %bb.7:
	subl	%ecx, %esi
	jns	LBB0_8
	jmp	LBB0_12
LBB0_6:
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	subl	%ecx, %esi
	js	LBB0_12
LBB0_8:
	movslq	%ecx, %r11
	movl	%esi, %r14d
	incl	%esi
	addq	%rdi, %r11
	xorl	%ebx, %ebx
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_9 Depth=1
	incq	%rbx
	cmpq	%rbx, %rsi
	je	LBB0_12
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	%r12d, %r10d
	sete	%al
	movl	%eax, (%r8,%rbx,4)
	cmpq	%r14, %rbx
	jae	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movsbl	(%rdi,%rbx), %eax
	imull	%r9d, %eax
	subl	%eax, %r12d
	shll	$8, %r12d
	movsbl	(%r11,%rbx), %eax
	addl	%r12d, %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	shlq	$30, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$61, %rax
	addl	%edx, %eax
	movl	%eax, %edx
	shll	$31, %edx
	addl	%eax, %edx
	leal	(%rcx,%rdx), %r12d
	addl	$2147483647, %r12d              ## imm = 0x7FFFFFFF
	movl	%ecx, %eax
	addl	%edx, %eax
	cmovnsl	%eax, %r12d
	jmp	LBB0_11
LBB0_12:
	popq	%rbx
	popq	%r12
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movabsq	$4294967296, %r12               ## imm = 0x100000000
	leaq	_inp_txt(%rip), %r15
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %rbx
	leaq	_inp_pat(%rip), %r14
	movq	%r14, %rdi
	callq	_libmin_strlen
	leaq	L_.str(%rip), %rdi
	xorl	%r13d, %r13d
	movl	%ebx, %esi
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rax
	shlq	$32, %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	leaq	(%rax,%r12), %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	%rbx, %rdi
	movq	%rax, %r12
	testl	%edi, %edi
	movq	%rbx, -72(%rbp)                 ## 8-byte Spill
	jle	LBB1_16
## %bb.1:
	movl	%edi, %r13d
	xorl	%eax, %eax
	cmpq	$8, %r13
	jb	LBB1_12
## %bb.2:
	movq	%r12, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	LBB1_12
## %bb.3:
	cmpl	$32, %r13d
	jae	LBB1_5
## %bb.4:
	xorl	%eax, %eax
	jmp	LBB1_9
LBB1_5:
	movl	%edi, %ecx
	andl	$31, %ecx
	movq	%r13, %rax
	subq	%rcx, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movaps	(%rdx,%r15), %xmm0
	movaps	16(%rdx,%r15), %xmm1
	movups	%xmm0, (%r12,%rdx)
	movups	%xmm1, 16(%r12,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %rax
	jne	LBB1_6
## %bb.7:
	testq	%rcx, %rcx
	je	LBB1_16
## %bb.8:
	cmpl	$8, %ecx
	jb	LBB1_12
LBB1_9:
	movq	%rax, %rcx
	movl	%edi, %edx
	andl	$7, %edx
	movq	%r13, %rax
	subq	%rdx, %rax
	.p2align	4, 0x90
LBB1_10:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rcx,%r15), %rsi
	movq	%rsi, (%r12,%rcx)
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	LBB1_10
## %bb.11:
	testq	%rdx, %rdx
	je	LBB1_16
LBB1_12:
	movl	%edi, %edx
	subl	%eax, %edx
	movq	%rax, %rcx
	notq	%rcx
	addq	%r13, %rcx
	andq	$3, %rdx
	je	LBB1_14
	.p2align	4, 0x90
LBB1_13:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%r15), %ebx
	movb	%bl, (%r12,%rax)
	incq	%rax
	decq	%rdx
	jne	LBB1_13
LBB1_14:
	cmpq	$3, %rcx
	jb	LBB1_16
	.p2align	4, 0x90
LBB1_15:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%r15), %ecx
	movb	%cl, (%r12,%rax)
	movzbl	1(%rax,%r15), %ecx
	movb	%cl, 1(%r12,%rax)
	movzbl	2(%rax,%r15), %ecx
	movb	%cl, 2(%r12,%rax)
	movzbl	3(%rax,%r15), %ecx
	movb	%cl, 3(%r12,%rax)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	LBB1_15
LBB1_16:
	movabsq	$4294967296, %rdi               ## imm = 0x100000000
	movb	$0, (%r12,%r13)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %r13
	shlq	$32, %r13
	addq	%r13, %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	%rax, %r15
	testl	%ebx, %ebx
	movq	%r13, -64(%rbp)                 ## 8-byte Spill
	jle	LBB1_17
## %bb.18:
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	cmpq	$8, %rax
	jb	LBB1_30
## %bb.19:
	movq	%r15, %rdx
	subq	%r14, %rdx
	cmpq	$32, %rdx
	jb	LBB1_30
## %bb.20:
	cmpl	$32, %eax
	jae	LBB1_22
## %bb.21:
	xorl	%ecx, %ecx
	jmp	LBB1_27
LBB1_17:
	xorl	%eax, %eax
	movq	%rbx, %r14
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	jmp	LBB1_36
LBB1_22:
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
                                        ## kill: def $edx killed $edx killed $rdx def $rdx
	andl	$31, %edx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_23:                                ## =>This Inner Loop Header: Depth=1
	movaps	(%rsi,%r14), %xmm0
	movaps	16(%rsi,%r14), %xmm1
	movups	%xmm0, (%r15,%rsi)
	movups	%xmm1, 16(%r15,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	jne	LBB1_23
## %bb.24:
	testq	%rdx, %rdx
	je	LBB1_25
## %bb.26:
	cmpl	$8, %edx
	jb	LBB1_30
LBB1_27:
	movq	%rcx, %rdx
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
                                        ## kill: def $esi killed $esi killed $rsi def $rsi
	andl	$7, %esi
	movq	%rax, %rcx
	subq	%rsi, %rcx
	.p2align	4, 0x90
LBB1_28:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdx,%r14), %rdi
	movq	%rdi, (%r15,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_28
## %bb.29:
	testq	%rsi, %rsi
	je	LBB1_25
LBB1_30:
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
                                        ## kill: def $esi killed $esi killed $rsi def $rsi
	subl	%ecx, %esi
	movq	%rcx, %rdi
	notq	%rdi
	addq	%rax, %rdi
	andq	$3, %rsi
	je	LBB1_32
	.p2align	4, 0x90
LBB1_31:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r14), %edx
	movb	%dl, (%r15,%rcx)
	incq	%rcx
	decq	%rsi
	jne	LBB1_31
LBB1_32:
	cmpq	$3, %rdi
	jae	LBB1_33
LBB1_25:
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	jmp	LBB1_36
LBB1_33:
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	.p2align	4, 0x90
LBB1_34:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r14), %edx
	movb	%dl, (%r15,%rcx)
	movzbl	1(%rcx,%r14), %edx
	movb	%dl, 1(%r15,%rcx)
	movzbl	2(%rcx,%r14), %edx
	movb	%dl, 2(%r15,%rcx)
	movzbl	3(%rcx,%r14), %edx
	movb	%dl, 3(%r15,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	LBB1_34
## %bb.35:
	movq	-48(%rbp), %r14                 ## 8-byte Reload
LBB1_36:
	movb	$0, (%r12,%rax)
	sarq	$30, %rdi
	callq	_libmin_malloc
	movq	%rax, %r13
	movq	-72(%rbp), %r11                 ## 8-byte Reload
	testl	%r11d, %r11d
	jle	LBB1_38
## %bb.37:
	movl	%r11d, %esi
	shlq	$2, %rsi
	movq	%r13, %rdi
	movq	%r11, %rbx
	callq	___bzero
	movq	%rbx, %r11
LBB1_38:
	movl	$1, %eax
	cmpl	$2, %r14d
	jl	LBB1_43
## %bb.39:
	leal	-2(%r14), %eax
	leal	-1(%r14), %edx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$3, %eax
	jae	LBB1_56
## %bb.40:
	movl	$1, %eax
	jmp	LBB1_41
LBB1_56:
	andl	$-4, %edx
	movl	$1, %eax
	.p2align	4, 0x90
LBB1_57:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	cltq
	movq	%rax, %rsi
	shlq	$30, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$61, %rsi
	addl	%edi, %esi
	addl	%esi, %eax
	shll	$8, %eax
	cltq
	movq	%rax, %rsi
	shlq	$30, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$61, %rsi
	addl	%edi, %esi
	addl	%esi, %eax
	shll	$8, %eax
	cltq
	movq	%rax, %rsi
	shlq	$30, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$61, %rsi
	addl	%edi, %esi
	addl	%esi, %eax
	shll	$8, %eax
	cltq
	movq	%rax, %rsi
	shlq	$30, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$61, %rsi
	addl	%edi, %esi
	movl	%esi, %edi
	shll	$31, %edi
	addl	%esi, %edi
	addl	%edi, %eax
	addl	$-4, %edx
	jne	LBB1_57
LBB1_41:
	testl	%ecx, %ecx
	je	LBB1_43
	.p2align	4, 0x90
LBB1_42:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	cltq
	movq	%rax, %rdx
	shlq	$30, %rdx
	addq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$61, %rdx
	addl	%esi, %edx
	movl	%edx, %esi
	shll	$31, %esi
	addl	%edx, %esi
	addl	%esi, %eax
	decl	%ecx
	jne	LBB1_42
LBB1_43:
	testl	%r14d, %r14d
	jle	LBB1_44
## %bb.58:
	movl	%r14d, %r8d
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_59:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %esi
	movsbl	(%r15,%rdi), %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rsi
	movq	%rsi, %rcx
	shlq	$30, %rcx
	addq	%rsi, %rcx
	movq	%rcx, %rbx
	shrq	$63, %rbx
	sarq	$61, %rcx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	shll	$31, %ebx
	addl	%ecx, %ebx
	addl	%ebx, %esi
	shll	$8, %edx
	movsbl	(%r12,%rdi), %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, %rcx
	shlq	$30, %rcx
	addq	%rdx, %rcx
	movq	%rcx, %rbx
	shrq	$63, %rbx
	sarq	$61, %rcx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	shll	$31, %ebx
	addl	%ecx, %ebx
	addl	%ebx, %edx
	incq	%rdi
	cmpq	%rdi, %r8
	jne	LBB1_59
	jmp	LBB1_45
LBB1_44:
	xorl	%esi, %esi
	xorl	%edx, %edx
LBB1_45:
	movl	%r11d, %ecx
	subl	%r14d, %ecx
	js	LBB1_50
## %bb.46:
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	sarq	$32, %rdi
	movl	%ecx, %r9d
	movl	%r11d, %r10d
	subl	%r14d, %r10d
	incl	%r10d
	movq	%r12, %r8
	addq	%rdi, %r8
	xorl	%ebx, %ebx
	jmp	LBB1_47
	.p2align	4, 0x90
LBB1_49:                                ##   in Loop: Header=BB1_47 Depth=1
	incq	%rbx
	cmpq	%rbx, %r10
	je	LBB1_50
LBB1_47:                                ## =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	cmpl	%edx, %esi
	sete	%cl
	movl	%ecx, (%r13,%rbx,4)
	cmpq	%r9, %rbx
	jae	LBB1_49
## %bb.48:                              ##   in Loop: Header=BB1_47 Depth=1
	movsbl	(%r12,%rbx), %ecx
	imull	%eax, %ecx
	subl	%ecx, %edx
	shll	$8, %edx
	movsbl	(%r8,%rbx), %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$30, %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$61, %rdx
	addl	%edi, %edx
	movl	%edx, %edi
	shll	$31, %edi
	addl	%edx, %edi
	leal	(%rcx,%rdi), %edx
	addl	$2147483647, %edx               ## imm = 0x7FFFFFFF
                                        ## kill: def $ecx killed $ecx killed $rcx
	addl	%edi, %ecx
	cmovnsl	%ecx, %edx
	jmp	LBB1_49
LBB1_50:
	testl	%r11d, %r11d
	jle	LBB1_55
## %bb.51:
	movl	%r11d, %r15d
	leaq	L_.str.1(%rip), %r14
	xorl	%ebx, %ebx
	jmp	LBB1_52
	.p2align	4, 0x90
LBB1_54:                                ##   in Loop: Header=BB1_52 Depth=1
	incq	%rbx
	cmpq	%rbx, %r15
	je	LBB1_55
LBB1_52:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r13,%rbx,4)
	je	LBB1_54
## %bb.53:                              ##   in Loop: Header=BB1_52 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_54
LBB1_55:
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_inp_pat                        ## @inp_pat
	.p2align	4
_inp_pat:
	.asciz	"NzZVOzZXNoGXMl8yxesyY"

	.globl	_inp_txt                        ## @inp_txt
	.p2align	4
_inp_txt:
	.asciz	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyjzZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2facymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2JacyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZuzJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfMlsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"n = %d, m = %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"pattern occurs at shift = %d\n"

.subsections_via_symbols
