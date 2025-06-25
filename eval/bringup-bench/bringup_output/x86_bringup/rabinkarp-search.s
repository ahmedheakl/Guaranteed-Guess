	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $ecx killed $ecx def $rcx
                                        ## kill: def $esi killed $esi def $rsi
	movl	$1, %eax
	cmpl	$2, %ecx
	jl	LBB0_5
## %bb.1:
	leal	-2(%rcx), %eax
	leal	-1(%rcx), %r10d
	movl	%r10d, %r9d
	andl	$3, %r9d
	cmpl	$3, %eax
	jae	LBB0_13
## %bb.2:
	movl	$1, %eax
	jmp	LBB0_3
LBB0_13:
	andl	$-4, %r10d
	movl	$1, %eax
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	cltq
	movq	%rax, %r11
	shlq	$30, %r11
	addq	%rax, %r11
	movq	%r11, %rbx
	shrq	$63, %rbx
	sarq	$61, %r11
	addl	%ebx, %r11d
	addl	%r11d, %eax
	shll	$8, %eax
	cltq
	movq	%rax, %r11
	shlq	$30, %r11
	addq	%rax, %r11
	movq	%r11, %rbx
	shrq	$63, %rbx
	sarq	$61, %r11
	addl	%ebx, %r11d
	addl	%r11d, %eax
	shll	$8, %eax
	cltq
	movq	%rax, %r11
	shlq	$30, %r11
	addq	%rax, %r11
	movq	%r11, %rbx
	shrq	$63, %rbx
	sarq	$61, %r11
	addl	%ebx, %r11d
	addl	%r11d, %eax
	shll	$8, %eax
	movslq	%eax, %r11
	movq	%r11, %rax
	shlq	$30, %rax
	addq	%r11, %rax
	movq	%rax, %rbx
	shrq	$63, %rbx
	sarq	$61, %rax
	addl	%ebx, %eax
	addl	%eax, %r11d
	shll	$31, %eax
	addl	%r11d, %eax
	addl	$-4, %r10d
	jne	LBB0_14
LBB0_3:
	testl	%r9d, %r9d
	je	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movslq	%eax, %r10
	movq	%r10, %rax
	shlq	$30, %rax
	addq	%r10, %rax
	movq	%rax, %r11
	shrq	$63, %r11
	sarq	$61, %rax
	addl	%r11d, %eax
	addl	%eax, %r10d
	shll	$31, %eax
	addl	%r10d, %eax
	decl	%r9d
	jne	LBB0_4
LBB0_5:
	testl	%ecx, %ecx
	jle	LBB0_6
## %bb.15:
	movl	%ecx, %r11d
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
LBB0_16:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %r9d
	movsbl	(%rdx,%rbx), %r14d
	addl	%r9d, %r14d
	movslq	%r14d, %r9
	movq	%r9, %r14
	shlq	$30, %r14
	addq	%r9, %r14
	movq	%r14, %r15
	shrq	$63, %r15
	sarq	$61, %r14
	addl	%r15d, %r14d
	movl	%r14d, %r15d
	shll	$31, %r15d
	addl	%r14d, %r15d
	addl	%r15d, %r9d
	shll	$8, %r10d
	movsbl	(%rdi,%rbx), %r14d
	addl	%r10d, %r14d
	movslq	%r14d, %r10
	movq	%r10, %r14
	shlq	$30, %r14
	addq	%r10, %r14
	movq	%r14, %r15
	shrq	$63, %r15
	sarq	$61, %r14
	addl	%r15d, %r14d
	movl	%r14d, %r15d
	shll	$31, %r15d
	addl	%r14d, %r15d
	addl	%r15d, %r10d
	incq	%rbx
	cmpq	%rbx, %r11
	jne	LBB0_16
## %bb.7:
	subl	%ecx, %esi
	jns	LBB0_8
	jmp	LBB0_12
LBB0_6:
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	subl	%ecx, %esi
	js	LBB0_12
LBB0_8:
	movslq	%ecx, %rcx
	movl	%esi, %edx
	incl	%esi
	addq	%rdi, %rcx
	xorl	%r11d, %r11d
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_9 Depth=1
	incq	%r11
	cmpq	%r11, %rsi
	je	LBB0_12
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%ebx, %ebx
	cmpl	%r10d, %r9d
	sete	%bl
	movl	%ebx, (%r8,%r11,4)
	cmpq	%rdx, %r11
	jae	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movsbl	(%rdi,%r11), %ebx
	imull	%eax, %ebx
	subl	%ebx, %r10d
	shll	$8, %r10d
	movsbl	(%rcx,%r11), %ebx
	addl	%r10d, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %r10
	shlq	$30, %r10
	addq	%rbx, %r10
	movq	%r10, %r14
	shrq	$63, %r14
	sarq	$61, %r10
	addl	%r14d, %r10d
	movl	%r10d, %r14d
	shll	$31, %r14d
	addl	%r10d, %r14d
	leal	(%rbx,%r14), %r10d
	addl	$2147483647, %r10d              ## imm = 0x7FFFFFFF
                                        ## kill: def $ebx killed $ebx killed $rbx
	addl	%r14d, %ebx
	cmovnsl	%ebx, %r10d
	jmp	LBB0_11
LBB0_12:
	popq	%rbx
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movabsq	$4294967296, %r14               ## imm = 0x100000000
	leaq	_inp_txt(%rip), %r15
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	leaq	_inp_pat(%rip), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strlen
	leaq	L_.str(%rip), %rdi
	xorl	%r13d, %r13d
	movl	%r12d, %esi
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rax
	shlq	$32, %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	leaq	(%rax,%r14), %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	testl	%r12d, %r12d
	movq	%r12, -48(%rbp)                 ## 8-byte Spill
	jle	LBB1_1
## %bb.2:
	movl	%r12d, %r13d
	xorl	%eax, %eax
	cmpq	$8, %r13
	jb	LBB1_3
## %bb.4:
	movq	%r14, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	movq	-64(%rbp), %r8                  ## 8-byte Reload
	jb	LBB1_14
## %bb.5:
	cmpl	$32, %r13d
	jae	LBB1_7
## %bb.6:
	xorl	%eax, %eax
	jmp	LBB1_11
LBB1_1:
	movq	-64(%rbp), %r8                  ## 8-byte Reload
	jmp	LBB1_18
LBB1_3:
	movq	-64(%rbp), %r8                  ## 8-byte Reload
	jmp	LBB1_14
LBB1_7:
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
                                        ## kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$31, %ecx
	movq	%r13, %rax
	subq	%rcx, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	movaps	(%rdx,%r15), %xmm0
	movaps	16(%rdx,%r15), %xmm1
	movups	%xmm0, (%r14,%rdx)
	movups	%xmm1, 16(%r14,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %rax
	jne	LBB1_8
## %bb.9:
	testq	%rcx, %rcx
	je	LBB1_18
## %bb.10:
	cmpl	$8, %ecx
	jb	LBB1_14
LBB1_11:
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
                                        ## kill: def $edx killed $edx killed $rdx def $rdx
	andl	$7, %edx
	movq	%r13, %rax
	subq	%rdx, %rax
	.p2align	4, 0x90
LBB1_12:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rcx,%r15), %rsi
	movq	%rsi, (%r14,%rcx)
	addq	$8, %rcx
	cmpq	%rcx, %rax
	jne	LBB1_12
## %bb.13:
	testq	%rdx, %rdx
	je	LBB1_18
LBB1_14:
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
                                        ## kill: def $edx killed $edx killed $rdx def $rdx
	subl	%eax, %edx
	movq	%rax, %rcx
	notq	%rcx
	addq	%r13, %rcx
	andl	$3, %edx
	je	LBB1_16
	.p2align	4, 0x90
LBB1_15:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%r15), %esi
	movb	%sil, (%r14,%rax)
	incq	%rax
	decq	%rdx
	jne	LBB1_15
LBB1_16:
	cmpq	$3, %rcx
	jb	LBB1_18
	.p2align	4, 0x90
LBB1_17:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%r15), %ecx
	movb	%cl, (%r14,%rax)
	movzbl	1(%rax,%r15), %ecx
	movb	%cl, 1(%r14,%rax)
	movzbl	2(%rax,%r15), %ecx
	movb	%cl, 2(%r14,%rax)
	movzbl	3(%rax,%r15), %ecx
	movb	%cl, 3(%r14,%rax)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	LBB1_17
LBB1_18:
	movabsq	$4294967296, %rdi               ## imm = 0x100000000
	movb	$0, (%r14,%r13)
	movq	%r8, %r15
	shlq	$32, %r15
	addq	%r15, %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	-64(%rbp), %r8                  ## 8-byte Reload
	movq	%rax, %r12
	testl	%r8d, %r8d
	jle	LBB1_19
## %bb.20:
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	cmpq	$8, %rax
	jb	LBB1_31
## %bb.21:
	movq	%r12, %rdx
	subq	%rbx, %rdx
	cmpq	$32, %rdx
	jb	LBB1_31
## %bb.22:
	cmpl	$32, %eax
	jae	LBB1_24
## %bb.23:
	xorl	%ecx, %ecx
	jmp	LBB1_28
LBB1_19:
	xorl	%eax, %eax
	jmp	LBB1_35
LBB1_24:
	movl	%r8d, %edx
	andl	$31, %edx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_25:                                ## =>This Inner Loop Header: Depth=1
	movaps	(%rsi,%rbx), %xmm0
	movaps	16(%rsi,%rbx), %xmm1
	movups	%xmm0, (%r12,%rsi)
	movups	%xmm1, 16(%r12,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	jne	LBB1_25
## %bb.26:
	testq	%rdx, %rdx
	je	LBB1_35
## %bb.27:
	cmpl	$8, %edx
	jb	LBB1_31
LBB1_28:
	movq	%rcx, %rdx
	movl	%r8d, %esi
	andl	$7, %esi
	movq	%rax, %rcx
	subq	%rsi, %rcx
	.p2align	4, 0x90
LBB1_29:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rbx), %rdi
	movq	%rdi, (%r12,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_29
## %bb.30:
	testq	%rsi, %rsi
	je	LBB1_35
LBB1_31:
	movl	%r8d, %esi
	subl	%ecx, %esi
	movq	%rcx, %rdx
	notq	%rdx
	addq	%rax, %rdx
	andl	$3, %esi
	je	LBB1_33
	.p2align	4, 0x90
LBB1_32:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rbx), %edi
	movb	%dil, (%r12,%rcx)
	incq	%rcx
	decq	%rsi
	jne	LBB1_32
LBB1_33:
	cmpq	$3, %rdx
	jb	LBB1_35
	.p2align	4, 0x90
LBB1_34:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rbx), %edx
	movb	%dl, (%r12,%rcx)
	movzbl	1(%rcx,%rbx), %edx
	movb	%dl, 1(%r12,%rcx)
	movzbl	2(%rcx,%rbx), %edx
	movb	%dl, 2(%r12,%rcx)
	movzbl	3(%rcx,%rbx), %edx
	movb	%dl, 3(%r12,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	LBB1_34
LBB1_35:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movb	$0, (%r14,%rax)
	sarq	$30, %rdi
	callq	_libmin_malloc
	movq	%rax, %r13
	testl	%ebx, %ebx
	jle	LBB1_37
## %bb.36:
	movl	%ebx, %esi
	shlq	$2, %rsi
	movq	%r13, %rdi
	callq	___bzero
LBB1_37:
	movl	$1, %eax
	movq	-64(%rbp), %r10                 ## 8-byte Reload
	cmpl	$2, %r10d
	jl	LBB1_42
## %bb.38:
	leal	-2(%r10), %eax
	leal	-1(%r10), %edx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$3, %eax
	jae	LBB1_55
## %bb.39:
	movl	$1, %eax
	jmp	LBB1_40
LBB1_55:
	andl	$-4, %edx
	movl	$1, %eax
	.p2align	4, 0x90
LBB1_56:                                ## =>This Inner Loop Header: Depth=1
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
	movslq	%eax, %rsi
	movq	%rsi, %rax
	shlq	$30, %rax
	addq	%rsi, %rax
	movq	%rax, %rdi
	shrq	$63, %rdi
	sarq	$61, %rax
	addl	%edi, %eax
	addl	%eax, %esi
	shll	$31, %eax
	addl	%esi, %eax
	addl	$-4, %edx
	jne	LBB1_56
LBB1_40:
	testl	%ecx, %ecx
	je	LBB1_42
	.p2align	4, 0x90
LBB1_41:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	shlq	$30, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$63, %rsi
	sarq	$61, %rax
	addl	%esi, %eax
	addl	%eax, %edx
	shll	$31, %eax
	addl	%edx, %eax
	decl	%ecx
	jne	LBB1_41
LBB1_42:
	testl	%r10d, %r10d
	jle	LBB1_43
## %bb.57:
	movl	%r10d, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB1_58:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %ecx
	movsbl	(%r12,%rdi), %r8d
	addl	%ecx, %r8d
	movslq	%r8d, %rcx
	movq	%rcx, %r8
	shlq	$30, %r8
	addq	%rcx, %r8
	movq	%r8, %r9
	shrq	$63, %r9
	sarq	$61, %r8
	addl	%r9d, %r8d
	movl	%r8d, %r9d
	shll	$31, %r9d
	addl	%r8d, %r9d
	addl	%r9d, %ecx
	shll	$8, %edx
	movsbl	(%r14,%rdi), %r8d
	addl	%edx, %r8d
	movslq	%r8d, %rdx
	movq	%rdx, %r8
	shlq	$30, %r8
	addq	%rdx, %r8
	movq	%r8, %r9
	shrq	$63, %r9
	sarq	$61, %r8
	addl	%r9d, %r8d
	movl	%r8d, %r9d
	shll	$31, %r9d
	addl	%r8d, %r9d
	addl	%r9d, %edx
	incq	%rdi
	cmpq	%rdi, %rsi
	jne	LBB1_58
	jmp	LBB1_44
LBB1_43:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
LBB1_44:
	movl	%ebx, %esi
	subl	%r10d, %esi
	js	LBB1_49
## %bb.45:
	sarq	$32, %r15
	movl	%esi, %esi
	movl	%ebx, %edi
	subl	%r10d, %edi
	incl	%edi
	movq	%r14, %r8
	addq	%r15, %r8
	xorl	%r9d, %r9d
	jmp	LBB1_46
	.p2align	4, 0x90
LBB1_48:                                ##   in Loop: Header=BB1_46 Depth=1
	incq	%r9
	cmpq	%r9, %rdi
	je	LBB1_49
LBB1_46:                                ## =>This Inner Loop Header: Depth=1
	xorl	%r10d, %r10d
	cmpl	%edx, %ecx
	sete	%r10b
	movl	%r10d, (%r13,%r9,4)
	cmpq	%rsi, %r9
	jae	LBB1_48
## %bb.47:                              ##   in Loop: Header=BB1_46 Depth=1
	movsbl	(%r14,%r9), %r10d
	imull	%eax, %r10d
	subl	%r10d, %edx
	shll	$8, %edx
	movsbl	(%r8,%r9), %r10d
	addl	%edx, %r10d
	movslq	%r10d, %r10
	movq	%r10, %rdx
	shlq	$30, %rdx
	addq	%r10, %rdx
	movq	%rdx, %r11
	shrq	$63, %r11
	sarq	$61, %rdx
	addl	%r11d, %edx
	movl	%edx, %r11d
	shll	$31, %r11d
	addl	%edx, %r11d
	leal	(%r10,%r11), %edx
	addl	$2147483647, %edx               ## imm = 0x7FFFFFFF
                                        ## kill: def $r10d killed $r10d killed $r10
	addl	%r11d, %r10d
	cmovnsl	%r10d, %edx
	jmp	LBB1_48
LBB1_49:
	testl	%ebx, %ebx
	jle	LBB1_54
## %bb.50:
	movl	%ebx, %r15d
	leaq	L_.str.1(%rip), %rbx
	xorl	%r14d, %r14d
	jmp	LBB1_51
	.p2align	4, 0x90
LBB1_53:                                ##   in Loop: Header=BB1_51 Depth=1
	incq	%r14
	cmpq	%r14, %r15
	je	LBB1_54
LBB1_51:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r13,%r14,4)
	je	LBB1_53
## %bb.52:                              ##   in Loop: Header=BB1_51 Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_53
LBB1_54:
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$24, %rsp
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
	.p2align	4, 0x0
_inp_pat:
	.asciz	"NzZVOzZXNoGXMl8yxesyY"

	.globl	_inp_txt                        ## @inp_txt
	.p2align	4, 0x0
_inp_txt:
	.asciz	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyjzZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2facymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2JacyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZuzJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfMlsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1Xns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"n = %d, m = %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"pattern occurs at shift = %d\n"

.subsections_via_symbols
