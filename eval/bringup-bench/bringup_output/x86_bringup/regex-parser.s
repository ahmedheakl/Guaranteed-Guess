	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_re_match                       ## -- Begin function re_match
	.p2align	4, 0x90
_re_match:                              ## @re_match
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	callq	_re_compile
	movq	%rax, %r12
	movl	$0, (%r15)
	movl	$-1, %eax
	testq	%r12, %r12
	je	LBB0_7
## %bb.1:
	cmpb	$2, (%r12)
	jne	LBB0_2
## %bb.8:
	addq	$16, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_matchpattern
	decl	%eax
	jmp	LBB0_7
LBB0_2:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	leaq	(%r14,%rbx), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	jne	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	incq	%rbx
	cmpb	$0, (%r13)
	jne	LBB0_3
## %bb.5:
	movl	$-1, %eax
	jmp	LBB0_7
LBB0_6:
	xorl	%eax, %eax
	cmpb	$1, (%r14,%rbx)
	sbbl	%eax, %eax
	orl	%ebx, %eax
LBB0_7:
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
	.globl	_re_matchp                      ## -- Begin function re_matchp
	.p2align	4, 0x90
_re_matchp:                             ## @re_matchp
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
	movl	$0, (%rdx)
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	LBB1_7
## %bb.1:
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpb	$2, (%rdi)
	jne	LBB1_2
## %bb.8:
	addq	$16, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_matchpattern
	decl	%eax
	jmp	LBB1_7
LBB1_2:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	leaq	(%r14,%rbx), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	jne	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	incq	%rbx
	cmpb	$0, (%r13)
	jne	LBB1_3
## %bb.5:
	movl	$-1, %eax
	jmp	LBB1_7
LBB1_6:
	xorl	%eax, %eax
	cmpb	$1, (%r14,%rbx)
	sbbl	%eax, %eax
	orl	%ebx, %eax
LBB1_7:
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
	.globl	_re_compile                     ## -- Begin function re_compile
	.p2align	4, 0x90
_re_compile:                            ## @re_compile
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
	movzbl	(%rdi), %r11d
	xorl	%ecx, %ecx
	testb	%r11b, %r11b
	je	LBB2_42
## %bb.1:
	movl	$1, %ecx
	movl	$1, %r14d
	leaq	_re_compile.re_compiled(%rip), %rax
	leaq	LJTI2_0(%rip), %rdx
	leaq	_re_compile.ccl_buf(%rip), %rsi
	leaq	LJTI2_1(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_25 Depth 2
	movq	%r14, %r10
	movsbl	%r11b, %r14d
	addl	$-36, %r14d
	cmpl	$58, %r14d
	ja	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	movslq	(%rdx,%r14,4), %r14
	addq	%rdx, %r14
	jmpq	*%r14
LBB2_4:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$3, (%r11,%rax)
	jmp	LBB2_18
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r14
	shlq	$4, %r14
	movb	$7, (%r14,%rax)
	movb	%r11b, 8(%r14,%rax)
	jmp	LBB2_18
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$5, (%r11,%rax)
	jmp	LBB2_18
LBB2_7:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$6, (%r11,%rax)
	jmp	LBB2_18
LBB2_8:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$1, (%r11,%rax)
	jmp	LBB2_18
LBB2_9:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$4, (%r11,%rax)
	jmp	LBB2_18
LBB2_10:                                ##   in Loop: Header=BB2_2 Depth=1
	movslq	%ebx, %r11
	movq	%r9, %r14
	shlq	$4, %r14
	leaq	(%rax,%r14), %r15
	cmpb	$94, 1(%rdi,%r11)
	jne	LBB2_22
## %bb.11:                              ##   in Loop: Header=BB2_2 Depth=1
	movb	$9, (%r15)
	cmpb	$0, 2(%r11,%rdi)
	je	LBB2_47
## %bb.12:                              ##   in Loop: Header=BB2_2 Depth=1
	incq	%r11
	movl	%r11d, %ebx
	jmp	LBB2_23
LBB2_13:                                ##   in Loop: Header=BB2_2 Depth=1
	movslq	%ebx, %r11
	movsbl	1(%rdi,%r11), %r14d
	testl	%r14d, %r14d
	je	LBB2_18
## %bb.14:                              ##   in Loop: Header=BB2_2 Depth=1
	incq	%r11
	addl	$-68, %r14d
	cmpl	$51, %r14d
	ja	LBB2_34
## %bb.15:                              ##   in Loop: Header=BB2_2 Depth=1
	movslq	(%r8,%r14,4), %rbx
	addq	%r8, %rbx
	jmpq	*%rbx
LBB2_16:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$11, (%rbx,%rax)
	jmp	LBB2_19
LBB2_17:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r11
	shlq	$4, %r11
	movb	$2, (%r11,%rax)
	.p2align	4, 0x90
LBB2_18:                                ##   in Loop: Header=BB2_2 Depth=1
	movl	%ebx, %r11d
LBB2_19:                                ##   in Loop: Header=BB2_2 Depth=1
	movslq	%r11d, %rbx
	cmpb	$0, (%rdi,%rbx)
	je	LBB2_47
## %bb.20:                              ##   in Loop: Header=BB2_2 Depth=1
	movzbl	1(%rdi,%rbx), %r11d
	testb	%r11b, %r11b
	je	LBB2_41
## %bb.21:                              ##   in Loop: Header=BB2_2 Depth=1
	incq	%rbx
	leaq	1(%r10), %r14
	incq	%r9
	cmpq	$28, %r10
	jbe	LBB2_2
	jmp	LBB2_41
LBB2_22:                                ##   in Loop: Header=BB2_2 Depth=1
	movb	$8, (%r15)
LBB2_23:                                ##   in Loop: Header=BB2_2 Depth=1
	movl	%ecx, %r15d
	movl	%ebx, %r11d
	jmp	LBB2_25
	.p2align	4, 0x90
LBB2_24:                                ##   in Loop: Header=BB2_25 Depth=2
	movslq	%r15d, %r12
	incl	%r15d
	movb	%bl, (%r12,%rsi)
LBB2_25:                                ##   Parent Loop BB2_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	%r11d, %r11
	movzbl	1(%rdi,%r11), %ebx
	cmpl	$92, %ebx
	je	LBB2_29
## %bb.26:                              ##   in Loop: Header=BB2_25 Depth=2
	incq	%r11
	testl	%ebx, %ebx
	je	LBB2_32
## %bb.27:                              ##   in Loop: Header=BB2_25 Depth=2
	cmpl	$93, %ebx
	je	LBB2_32
## %bb.28:                              ##   in Loop: Header=BB2_25 Depth=2
	cmpl	$39, %r15d
	jle	LBB2_24
	jmp	LBB2_47
	.p2align	4, 0x90
LBB2_29:                                ##   in Loop: Header=BB2_25 Depth=2
	cmpl	$38, %r15d
	jg	LBB2_47
## %bb.30:                              ##   in Loop: Header=BB2_25 Depth=2
	cmpb	$0, 2(%rdi,%r11)
	je	LBB2_47
## %bb.31:                              ##   in Loop: Header=BB2_25 Depth=2
	addq	$2, %r11
	movslq	%r15d, %rbx
	incl	%r15d
	movb	$92, (%rbx,%rsi)
	movzbl	(%rdi,%r11), %ebx
	jmp	LBB2_24
LBB2_32:                                ##   in Loop: Header=BB2_2 Depth=1
	cmpl	$39, %r15d
	jg	LBB2_47
## %bb.33:                              ##   in Loop: Header=BB2_2 Depth=1
	movslq	%r15d, %rbx
	incl	%r15d
	movb	$0, (%rbx,%rsi)
	movslq	%ecx, %rcx
	addq	%rsi, %rcx
	movq	%rcx, 8(%r14,%rax)
	movl	%r15d, %ecx
	jmp	LBB2_19
LBB2_34:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$7, (%rbx,%rax)
	movzbl	(%rdi,%r11), %r14d
	movb	%r14b, 8(%rbx,%rax)
	jmp	LBB2_19
LBB2_35:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$15, (%rbx,%rax)
	jmp	LBB2_19
LBB2_36:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$13, (%rbx,%rax)
	jmp	LBB2_19
LBB2_37:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$10, (%rbx,%rax)
	jmp	LBB2_19
LBB2_38:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$14, (%rbx,%rax)
	jmp	LBB2_19
LBB2_39:                                ##   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	shlq	$4, %rbx
	movb	$12, (%rbx,%rax)
	jmp	LBB2_19
LBB2_47:
	xorl	%eax, %eax
	jmp	LBB2_43
LBB2_41:
	movl	%r10d, %ecx
LBB2_42:
	shlq	$4, %rcx
	leaq	_re_compile.re_compiled(%rip), %rax
	movb	$0, (%rcx,%rax)
LBB2_43:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L2_0_set_4, LBB2_4-LJTI2_0
.set L2_0_set_5, LBB2_5-LJTI2_0
.set L2_0_set_6, LBB2_6-LJTI2_0
.set L2_0_set_7, LBB2_7-LJTI2_0
.set L2_0_set_8, LBB2_8-LJTI2_0
.set L2_0_set_9, LBB2_9-LJTI2_0
.set L2_0_set_10, LBB2_10-LJTI2_0
.set L2_0_set_13, LBB2_13-LJTI2_0
.set L2_0_set_17, LBB2_17-LJTI2_0
LJTI2_0:
	.long	L2_0_set_4
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_6
	.long	L2_0_set_7
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_8
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_9
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_10
	.long	L2_0_set_13
	.long	L2_0_set_5
	.long	L2_0_set_17
.set L2_1_set_16, LBB2_16-LJTI2_1
.set L2_1_set_34, LBB2_34-LJTI2_1
.set L2_1_set_35, LBB2_35-LJTI2_1
.set L2_1_set_36, LBB2_36-LJTI2_1
.set L2_1_set_37, LBB2_37-LJTI2_1
.set L2_1_set_38, LBB2_38-LJTI2_1
.set L2_1_set_39, LBB2_39-LJTI2_1
LJTI2_1:
	.long	L2_1_set_16
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_35
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_36
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_37
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_38
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_34
	.long	L2_1_set_39
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function matchpattern
_matchpattern:                          ## @matchpattern
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
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	(%rdx), %r13d
	addq	$32, %r15
	movl	%r13d, %ebx
	.p2align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	-32(%r15), %r12d
	movl	$1, %eax
	testb	%r12b, %r12b
	je	LBB3_35
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movzbl	-16(%r15), %eax
	cmpl	$6, %eax
	je	LBB3_10
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	cmpl	$5, %eax
	je	LBB3_18
## %bb.4:                               ##   in Loop: Header=BB3_1 Depth=1
	cmpl	$4, %eax
	je	LBB3_27
## %bb.5:                               ##   in Loop: Header=BB3_1 Depth=1
	cmpb	$3, %r12b
	jne	LBB3_7
## %bb.6:                               ##   in Loop: Header=BB3_1 Depth=1
	testb	%al, %al
	je	LBB3_29
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	incl	%ebx
	movl	%ebx, (%r14)
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	LBB3_9
## %bb.8:                               ##   in Loop: Header=BB3_1 Depth=1
	incq	%rsi
	movq	%rsi, %r12
	movq	-24(%r15), %rsi
	movl	-32(%r15), %edi
	movsbl	%al, %edx
	callq	_matchone
	movq	%r12, %rsi
	addq	$16, %r15
	testl	%eax, %eax
	jne	LBB3_1
LBB3_9:
	movl	%r13d, (%r14)
	jmp	LBB3_26
LBB3_10:
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	LBB3_26
## %bb.11:
	movq	-24(%r15), %rcx
	movq	%rcx, -48(%rbp)                 ## 8-byte Spill
	incl	%ebx
	movzbl	%r12b, %ecx
	movl	%ecx, -56(%rbp)                 ## 4-byte Spill
	movq	%rsi, %r12
	movq	%rsi, %r13
	.p2align	4, 0x90
LBB3_12:                                ## =>This Inner Loop Header: Depth=1
	movsbl	%al, %edx
	movl	-56(%rbp), %edi                 ## 4-byte Reload
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	callq	_matchone
	testl	%eax, %eax
	je	LBB3_15
## %bb.13:                              ##   in Loop: Header=BB3_12 Depth=1
	movl	%ebx, (%r14)
	movzbl	1(%r13), %eax
	incq	%r13
	incl	%ebx
	testb	%al, %al
	jne	LBB3_12
	jmp	LBB3_15
	.p2align	4, 0x90
LBB3_14:                                ##   in Loop: Header=BB3_15 Depth=1
	decq	%r13
	decl	(%r14)
LBB3_15:                                ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rax
	cmpq	%r12, %r13
	jbe	LBB3_26
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	je	LBB3_14
	jmp	LBB3_34
LBB3_18:
	movzbl	(%rsi), %eax
	movq	%rsi, %r13
	testb	%al, %al
	je	LBB3_23
## %bb.19:
	movq	%r14, -48(%rbp)                 ## 8-byte Spill
	movq	-24(%r15), %rcx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	leal	1(%rbx), %r14d
	movzbl	%r12b, %ecx
	movl	%ecx, -60(%rbp)                 ## 4-byte Spill
	movq	%rsi, %r12
	movq	%rsi, %r13
	.p2align	4, 0x90
LBB3_20:                                ## =>This Inner Loop Header: Depth=1
	movsbl	%al, %edx
	movl	-60(%rbp), %edi                 ## 4-byte Reload
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	callq	_matchone
	testl	%eax, %eax
	je	LBB3_22
## %bb.21:                              ##   in Loop: Header=BB3_20 Depth=1
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movl	%r14d, (%rax)
	movzbl	1(%r13), %eax
	incq	%r13
	incl	%r14d
	testb	%al, %al
	jne	LBB3_20
LBB3_22:
	movq	%r12, %rsi
	cmpq	%r12, %r13
	movq	-48(%rbp), %r14                 ## 8-byte Reload
	jb	LBB3_25
	.p2align	4, 0x90
LBB3_23:                                ## =>This Inner Loop Header: Depth=1
	movq	%rsi, %r12
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	jne	LBB3_34
## %bb.24:                              ##   in Loop: Header=BB3_23 Depth=1
	decq	%r13
	decl	(%r14)
	movq	%r12, %rsi
	cmpq	%r12, %r13
	jae	LBB3_23
LBB3_25:
	movl	%ebx, (%r14)
LBB3_26:
	xorl	%eax, %eax
	jmp	LBB3_35
LBB3_27:
	movq	-24(%r15), %r13
	movq	%r15, %rdi
	movq	%rsi, %rbx
	movq	%r14, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	je	LBB3_30
LBB3_34:
	movl	$1, %eax
	jmp	LBB3_35
LBB3_29:
	xorl	%eax, %eax
	cmpb	$0, (%rsi)
	sete	%al
LBB3_35:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_30:
	movzbl	(%rbx), %ecx
	xorl	%eax, %eax
	testb	%cl, %cl
	je	LBB3_35
## %bb.31:
	movzbl	%r12b, %edi
	movsbl	%cl, %edx
	movq	%r13, %rsi
	callq	_matchone
	testl	%eax, %eax
	je	LBB3_26
## %bb.32:
	incq	%rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_matchpattern
	testl	%eax, %eax
	movl	$0, %eax
	je	LBB3_35
## %bb.33:
	incl	(%r14)
	jmp	LBB3_34
	.cfi_endproc
                                        ## -- End function
	.globl	_re_print                       ## -- Begin function re_print
	.p2align	4, 0x90
_re_print:                              ## @re_print
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
	leaq	L_.str.19(%rip), %r13
	xorl	%r15d, %r15d
	jmp	LBB4_1
	.p2align	4, 0x90
LBB4_9:                                 ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.20(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB4_10:                                ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r15
	cmpq	$30, %r15
	je	LBB4_11
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_6 Depth 2
	movq	%r15, %r14
	shlq	$4, %r14
	movzbl	(%rbx,%r14), %eax
	testq	%rax, %rax
	je	LBB4_11
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	leaq	(%rbx,%r14), %r12
	leaq	l_reltable.re_print(%rip), %rcx
	movslq	(%rcx,%rax,4), %rsi
	addq	%rcx, %rsi
	leaq	L_.str.17(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	(%r12), %eax
	leal	-8(%rax), %ecx
	cmpl	$2, %ecx
	jae	LBB4_3
## %bb.5:                               ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	addq	%rbx, %r14
	addq	$8, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB4_6:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rax
	movzbl	(%rax,%r12), %eax
	testl	%eax, %eax
	je	LBB4_9
## %bb.7:                               ##   in Loop: Header=BB4_6 Depth=2
	cmpl	$93, %eax
	je	LBB4_9
## %bb.8:                               ##   in Loop: Header=BB4_6 Depth=2
	movsbl	%al, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r12
	cmpq	$40, %r12
	jne	LBB4_6
	jmp	LBB4_9
	.p2align	4, 0x90
LBB4_3:                                 ##   in Loop: Header=BB4_1 Depth=1
	cmpl	$7, %eax
	jne	LBB4_10
## %bb.4:                               ##   in Loop: Header=BB4_1 Depth=1
	movzbl	8(%rbx,%r14), %esi
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB4_10
LBB4_11:
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	_test_vector(%rip), %r13
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_1:                                 ##   in Loop: Header=BB5_4 Depth=1
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	movq	%r15, %rdi
	callq	_re_compile
	movq	%rax, %rdi
	callq	_re_print
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	leaq	1(%rbx), %rsi
	movl	$68, %edx
	leaq	L_.str.113(%rip), %rdi
	movq	%r15, %rcx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	_libmin_printf
LBB5_2:                                 ##   in Loop: Header=BB5_4 Depth=1
	incq	%r14
LBB5_3:                                 ##   in Loop: Header=BB5_4 Depth=1
	incq	%rbx
	cmpq	$68, %rbx
	je	LBB5_20
LBB5_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_8 Depth 2
	movq	%rbx, -56(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rax
	shlq	$5, %rax
	movq	(%rax,%r13), %rcx
	movq	%rcx, -64(%rbp)                 ## 8-byte Spill
	movq	8(%rax,%r13), %rdi
	movq	16(%rax,%r13), %r12
	movl	24(%rax,%r13), %eax
	movl	%eax, -76(%rbp)                 ## 4-byte Spill
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	callq	_re_compile
	movl	$0, -44(%rbp)
	movl	$-1, %r15d
	testq	%rax, %rax
	je	LBB5_12
## %bb.5:                               ##   in Loop: Header=BB5_4 Depth=1
	movq	%rax, %rbx
	cmpb	$2, (%rax)
	jne	LBB5_7
## %bb.6:                               ##   in Loop: Header=BB5_4 Depth=1
	addq	$16, %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	leaq	-44(%rbp), %rdx
	callq	_matchpattern
	movl	%eax, %r15d
	decl	%r15d
	jmp	LBB5_12
	.p2align	4, 0x90
LBB5_7:                                 ##   in Loop: Header=BB5_4 Depth=1
	movq	%r14, -88(%rbp)                 ## 8-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB5_8:                                 ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%r14), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	-44(%rbp), %rdx
	callq	_matchpattern
	testl	%eax, %eax
	jne	LBB5_10
## %bb.9:                               ##   in Loop: Header=BB5_8 Depth=2
	incq	%r14
	cmpb	$0, (%r13)
	jne	LBB5_8
	jmp	LBB5_11
LBB5_10:                                ##   in Loop: Header=BB5_4 Depth=1
	cmpb	$1, (%r12,%r14)
	movl	$0, %r15d
	sbbl	%r15d, %r15d
	orl	%r14d, %r15d
LBB5_11:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-88(%rbp), %r14                 ## 8-byte Reload
	leaq	_test_vector(%rip), %r13
LBB5_12:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	testq	%rax, %rax
	je	LBB5_16
## %bb.13:                              ##   in Loop: Header=BB5_4 Depth=1
	cmpl	$-1, %r15d
	je	LBB5_1
## %bb.14:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-44(%rbp), %r8d
	movl	-76(%rbp), %eax                 ## 4-byte Reload
	cmpl	%eax, %r8d
	je	LBB5_19
## %bb.18:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	leaq	1(%rbx), %rsi
	movl	%eax, (%rsp)
	movl	$68, %edx
	leaq	L_.str.114(%rip), %rdi
	movq	-72(%rbp), %rcx                 ## 8-byte Reload
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB5_2
	.p2align	4, 0x90
LBB5_16:                                ##   in Loop: Header=BB5_4 Depth=1
	cmpl	$-1, %r15d
	je	LBB5_19
## %bb.17:                              ##   in Loop: Header=BB5_4 Depth=1
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	movq	%r15, %rdi
	callq	_re_compile
	movq	%rax, %rdi
	callq	_re_print
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	leaq	1(%rbx), %rsi
	movl	-44(%rbp), %r9d
	movl	$68, %edx
	leaq	L_.str.112(%rip), %rdi
	movq	%r15, %rcx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB5_2
	.p2align	4, 0x90
LBB5_19:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-56(%rbp), %rbx                 ## 8-byte Reload
	jmp	LBB5_3
LBB5_20:
	movl	$68, %esi
	subq	%r14, %rsi
	leaq	L_.str.115(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$68, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%r14, %r14
	je	LBB5_22
## %bb.21:
	movl	%r14d, %ebx
	jmp	LBB5_23
LBB5_22:
	callq	_libmin_success
LBB5_23:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function matchone
_matchone:                              ## @matchone
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movzbl	%dil, %eax
	leal	-1(%rax), %ecx
	cmpl	$14, %ecx
	ja	LBB6_3
## %bb.1:
	leaq	LJTI6_0(%rip), %rdi
	movslq	(%rdi,%rcx,4), %rcx
	addq	%rdi, %rcx
	jmpq	*%rcx
LBB6_2:
	movsbl	%dl, %edi
	popq	%rbp
	jmp	_matchcharclass                 ## TAILCALL
LBB6_3:
	movzbl	%sil, %ecx
	movsbl	%dl, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jmp	LBB6_15
LBB6_4:
	movsbl	%dl, %edi
	callq	_matchcharclass
                                        ## kill: def $eax killed $eax def $rax
	xorl	$1, %eax
LBB6_16:
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
LBB6_5:
	movq	__pctype@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movsbq	%dl, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$4, %eax
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
LBB6_6:
	movq	__pctype@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movsbq	%dl, %rdx
	xorl	%eax, %eax
	testb	$4, (%rcx,%rdx,2)
	jmp	LBB6_15
LBB6_7:
	movl	$1, %eax
	cmpb	$95, %dl
	je	LBB6_16
## %bb.8:
	movq	__pctype@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movsbq	%dl, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	testb	$3, %cl
	jne	LBB6_16
## %bb.9:
	shrl	$2, %ecx
	andl	$1, %ecx
	movl	%ecx, %eax
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
LBB6_10:
	xorl	%eax, %eax
	cmpb	$95, %dl
	je	LBB6_16
## %bb.11:
	movq	__pctype@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movsbq	%dl, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	testb	$3, %cl
	jne	LBB6_16
## %bb.12:
	xorl	%eax, %eax
	testb	$4, %cl
	jmp	LBB6_15
LBB6_13:
	movq	__pctype@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movsbq	%dl, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$8, %eax
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
LBB6_14:
	movq	__pctype@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movsbq	%dl, %rdx
	xorl	%eax, %eax
	testb	$8, (%rcx,%rdx,2)
LBB6_15:
	sete	%al
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L6_0_set_16, LBB6_16-LJTI6_0
.set L6_0_set_3, LBB6_3-LJTI6_0
.set L6_0_set_2, LBB6_2-LJTI6_0
.set L6_0_set_4, LBB6_4-LJTI6_0
.set L6_0_set_5, LBB6_5-LJTI6_0
.set L6_0_set_6, LBB6_6-LJTI6_0
.set L6_0_set_7, LBB6_7-LJTI6_0
.set L6_0_set_10, LBB6_10-LJTI6_0
.set L6_0_set_13, LBB6_13-LJTI6_0
.set L6_0_set_14, LBB6_14-LJTI6_0
LJTI6_0:
	.long	L6_0_set_16
	.long	L6_0_set_3
	.long	L6_0_set_3
	.long	L6_0_set_3
	.long	L6_0_set_3
	.long	L6_0_set_3
	.long	L6_0_set_3
	.long	L6_0_set_2
	.long	L6_0_set_4
	.long	L6_0_set_5
	.long	L6_0_set_6
	.long	L6_0_set_7
	.long	L6_0_set_10
	.long	L6_0_set_13
	.long	L6_0_set_14
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function matchcharclass
_matchcharclass:                        ## @matchcharclass
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__pctype@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movslq	%edi, %rdx
	movabsq	$2392541597564929, %r8          ## imm = 0x8800100088001
	leaq	LJTI7_0(%rip), %r9
	jmp	LBB7_1
	.p2align	4, 0x90
LBB7_33:                                ##   in Loop: Header=BB7_1 Depth=1
	cmpb	%dil, %r10b
	je	LBB7_34
LBB7_27:                                ##   in Loop: Header=BB7_1 Depth=1
	incq	%rsi
	testb	%r10b, %r10b
	je	LBB7_28
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %r10d
	cmpb	$45, %dil
	jne	LBB7_2
LBB7_8:                                 ##   in Loop: Header=BB7_1 Depth=1
	cmpb	$92, %r10b
	jne	LBB7_29
## %bb.9:                               ##   in Loop: Header=BB7_1 Depth=1
	movsbl	1(%rsi), %r10d
	movl	%r10d, %eax
	addl	$-68, %eax
	cmpl	$51, %eax
	ja	LBB7_21
## %bb.10:                              ##   in Loop: Header=BB7_1 Depth=1
	movslq	(%r9,%rax,4), %rax
	addq	%r9, %rax
	jmpq	*%rax
LBB7_12:                                ##   in Loop: Header=BB7_1 Depth=1
	xorl	%r11d, %r11d
	testb	$4, (%rcx,%rdx,2)
	jmp	LBB7_22
	.p2align	4, 0x90
LBB7_2:                                 ##   in Loop: Header=BB7_1 Depth=1
	movzbl	%r10b, %eax
	testl	%eax, %eax
	je	LBB7_33
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	cmpl	$45, %eax
	je	LBB7_33
## %bb.4:                               ##   in Loop: Header=BB7_1 Depth=1
	cmpb	$45, 1(%rsi)
	jne	LBB7_8
## %bb.5:                               ##   in Loop: Header=BB7_1 Depth=1
	movzbl	2(%rsi), %eax
	cmpb	%dil, %al
	jl	LBB7_8
## %bb.6:                               ##   in Loop: Header=BB7_1 Depth=1
	cmpb	%dil, %r10b
	jg	LBB7_8
## %bb.7:                               ##   in Loop: Header=BB7_1 Depth=1
	testb	%al, %al
	je	LBB7_8
	jmp	LBB7_34
	.p2align	4, 0x90
LBB7_29:                                ##   in Loop: Header=BB7_1 Depth=1
	cmpb	%dil, %r10b
	jne	LBB7_27
	jmp	LBB7_30
LBB7_21:                                ##   in Loop: Header=BB7_1 Depth=1
	xorl	%r11d, %r11d
	cmpb	%dil, %r10b
	jmp	LBB7_22
LBB7_20:                                ##   in Loop: Header=BB7_1 Depth=1
	xorl	%r11d, %r11d
	testb	$8, (%rcx,%rdx,2)
LBB7_22:                                ##   in Loop: Header=BB7_1 Depth=1
	sete	%r11b
	testl	%r11d, %r11d
	je	LBB7_24
	jmp	LBB7_34
LBB7_16:                                ##   in Loop: Header=BB7_1 Depth=1
	cmpb	$95, %dil
	je	LBB7_24
## %bb.17:                              ##   in Loop: Header=BB7_1 Depth=1
	movzwl	(%rcx,%rdx,2), %eax
	testb	$3, %al
	jne	LBB7_24
## %bb.18:                              ##   in Loop: Header=BB7_1 Depth=1
	xorl	%r11d, %r11d
	testb	$4, %al
	jmp	LBB7_22
LBB7_11:                                ##   in Loop: Header=BB7_1 Depth=1
	movzwl	(%rcx,%rdx,2), %r11d
	andl	$4, %r11d
	testl	%r11d, %r11d
	je	LBB7_24
	jmp	LBB7_34
LBB7_19:                                ##   in Loop: Header=BB7_1 Depth=1
	movzwl	(%rcx,%rdx,2), %r11d
	andl	$8, %r11d
	testl	%r11d, %r11d
	je	LBB7_24
	jmp	LBB7_34
LBB7_13:                                ##   in Loop: Header=BB7_1 Depth=1
	movl	$1, %eax
	cmpb	$95, %dil
	je	LBB7_35
## %bb.14:                              ##   in Loop: Header=BB7_1 Depth=1
	movzwl	(%rcx,%rdx,2), %r11d
	testb	$3, %r11b
	jne	LBB7_35
## %bb.15:                              ##   in Loop: Header=BB7_1 Depth=1
	shrl	$2, %r11d
	andl	$1, %r11d
	testl	%r11d, %r11d
	jne	LBB7_34
	.p2align	4, 0x90
LBB7_24:                                ##   in Loop: Header=BB7_1 Depth=1
	incq	%rsi
	cmpb	%dil, %r10b
	jne	LBB7_27
## %bb.25:                              ##   in Loop: Header=BB7_1 Depth=1
	movsbl	%dil, %r11d
	movl	$1, %eax
	addl	$-68, %r11d
	cmpl	$51, %r11d
	ja	LBB7_35
## %bb.26:                              ##   in Loop: Header=BB7_1 Depth=1
	btq	%r11, %r8
	jb	LBB7_27
	jmp	LBB7_35
LBB7_28:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB7_34:
	movl	$1, %eax
LBB7_35:
	popq	%rbp
	retq
LBB7_30:
	movl	$1, %eax
	cmpb	$45, %dil
	jne	LBB7_35
## %bb.31:
	cmpb	$0, -1(%rsi)
	je	LBB7_35
## %bb.32:
	xorl	%eax, %eax
	cmpb	$0, 1(%rsi)
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L7_0_set_12, LBB7_12-LJTI7_0
.set L7_0_set_21, LBB7_21-LJTI7_0
.set L7_0_set_20, LBB7_20-LJTI7_0
.set L7_0_set_16, LBB7_16-LJTI7_0
.set L7_0_set_11, LBB7_11-LJTI7_0
.set L7_0_set_19, LBB7_19-LJTI7_0
.set L7_0_set_13, LBB7_13-LJTI7_0
LJTI7_0:
	.long	L7_0_set_12
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_20
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_16
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_11
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_19
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_21
	.long	L7_0_set_13
	.end_data_region
                                        ## -- End function
.zerofill __DATA,__bss,_re_compile.re_compiled,480,4 ## @re_compile.re_compiled
.zerofill __DATA,__bss,_re_compile.ccl_buf,40,4 ## @re_compile.ccl_buf
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"UNUSED"

L_.str.1:                               ## @.str.1
	.asciz	"DOT"

L_.str.2:                               ## @.str.2
	.asciz	"BEGIN"

L_.str.3:                               ## @.str.3
	.asciz	"END"

L_.str.4:                               ## @.str.4
	.asciz	"QUESTIONMARK"

L_.str.5:                               ## @.str.5
	.asciz	"STAR"

L_.str.6:                               ## @.str.6
	.asciz	"PLUS"

L_.str.7:                               ## @.str.7
	.asciz	"CHAR"

L_.str.8:                               ## @.str.8
	.asciz	"CHAR_CLASS"

L_.str.9:                               ## @.str.9
	.asciz	"INV_CHAR_CLASS"

L_.str.10:                              ## @.str.10
	.asciz	"DIGIT"

L_.str.11:                              ## @.str.11
	.asciz	"NOT_DIGIT"

L_.str.12:                              ## @.str.12
	.asciz	"ALPHA"

L_.str.13:                              ## @.str.13
	.asciz	"NOT_ALPHA"

L_.str.14:                              ## @.str.14
	.asciz	"WHITESPACE"

L_.str.15:                              ## @.str.15
	.asciz	"NOT_WHITESPACE"

L_.str.16:                              ## @.str.16
	.asciz	"BRANCH"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ## @reltable.re_print
l_reltable.re_print:
	.long	L_.str-l_reltable.re_print
	.long	L_.str.1-l_reltable.re_print
	.long	L_.str.2-l_reltable.re_print
	.long	L_.str.3-l_reltable.re_print
	.long	L_.str.4-l_reltable.re_print
	.long	L_.str.5-l_reltable.re_print
	.long	L_.str.6-l_reltable.re_print
	.long	L_.str.7-l_reltable.re_print
	.long	L_.str.8-l_reltable.re_print
	.long	L_.str.9-l_reltable.re_print
	.long	L_.str.10-l_reltable.re_print
	.long	L_.str.11-l_reltable.re_print
	.long	L_.str.12-l_reltable.re_print
	.long	L_.str.13-l_reltable.re_print
	.long	L_.str.14-l_reltable.re_print
	.long	L_.str.15-l_reltable.re_print
	.long	L_.str.16-l_reltable.re_print

	.section	__TEXT,__cstring,cstring_literals
L_.str.17:                              ## @.str.17
	.asciz	"type: %s"

L_.str.18:                              ## @.str.18
	.asciz	" ["

L_.str.19:                              ## @.str.19
	.asciz	"%c"

L_.str.20:                              ## @.str.20
	.asciz	"]"

L_.str.21:                              ## @.str.21
	.asciz	" '%c'"

L_.str.22:                              ## @.str.22
	.asciz	"\n"

L_.str.23:                              ## @.str.23
	.asciz	"\\d"

L_.str.24:                              ## @.str.24
	.asciz	"5"

L_.str.25:                              ## @.str.25
	.asciz	"\\w+"

L_.str.26:                              ## @.str.26
	.asciz	"hej"

L_.str.27:                              ## @.str.27
	.asciz	"\\s"

L_.str.28:                              ## @.str.28
	.asciz	"\t \n"

L_.str.29:                              ## @.str.29
	.asciz	"\\S"

L_.str.30:                              ## @.str.30
	.asciz	"[\\s]"

L_.str.31:                              ## @.str.31
	.asciz	"[\\S]"

L_.str.32:                              ## @.str.32
	.asciz	"\\D"

L_.str.33:                              ## @.str.33
	.asciz	"\\W+"

L_.str.34:                              ## @.str.34
	.asciz	"[0-9]+"

L_.str.35:                              ## @.str.35
	.asciz	"12345"

L_.str.36:                              ## @.str.36
	.asciz	"[^\\w]"

L_.str.37:                              ## @.str.37
	.asciz	"\\"

L_.str.38:                              ## @.str.38
	.asciz	"[\\W]"

L_.str.39:                              ## @.str.39
	.asciz	"[\\w]"

L_.str.40:                              ## @.str.40
	.asciz	"[^\\d]"

L_.str.41:                              ## @.str.41
	.asciz	"d"

L_.str.42:                              ## @.str.42
	.asciz	"[\\d]"

L_.str.43:                              ## @.str.43
	.asciz	"[^\\D]"

L_.str.44:                              ## @.str.44
	.asciz	"[\\D]"

L_.str.45:                              ## @.str.45
	.asciz	"^.*\\\\.*$"

L_.str.46:                              ## @.str.46
	.asciz	"c:\\Tools"

L_.str.47:                              ## @.str.47
	.asciz	"^[\\+-]*[\\d]+$"

L_.str.48:                              ## @.str.48
	.asciz	"+27"

L_.str.49:                              ## @.str.49
	.asciz	"[abc]"

L_.str.50:                              ## @.str.50
	.asciz	"1c2"

L_.str.51:                              ## @.str.51
	.asciz	"1C2"

L_.str.52:                              ## @.str.52
	.asciz	"[1-5]+"

L_.str.53:                              ## @.str.53
	.asciz	"0123456789"

L_.str.54:                              ## @.str.54
	.asciz	"[.2]"

L_.str.55:                              ## @.str.55
	.asciz	"a*$"

L_.str.56:                              ## @.str.56
	.asciz	"Xaa"

L_.str.57:                              ## @.str.57
	.asciz	"[a-h]+"

L_.str.58:                              ## @.str.58
	.asciz	"abcdefghxxx"

L_.str.59:                              ## @.str.59
	.asciz	"ABCDEFGH"

L_.str.60:                              ## @.str.60
	.asciz	"[A-H]+"

L_.str.61:                              ## @.str.61
	.asciz	"abcdefgh"

L_.str.62:                              ## @.str.62
	.asciz	"[^\\s]+"

L_.str.63:                              ## @.str.63
	.asciz	"abc def"

L_.str.64:                              ## @.str.64
	.asciz	"[^fc]+"

L_.str.65:                              ## @.str.65
	.asciz	"[^d\\sf]+"

L_.str.66:                              ## @.str.66
	.asciz	"abc\ndef"

L_.str.67:                              ## @.str.67
	.asciz	"b.\\s*\n"

L_.str.68:                              ## @.str.68
	.asciz	"aa\r\nbb\r\ncc\r\n\r\n"

L_.str.69:                              ## @.str.69
	.asciz	".*c"

L_.str.70:                              ## @.str.70
	.asciz	"abcabc"

L_.str.71:                              ## @.str.71
	.asciz	".+c"

L_.str.72:                              ## @.str.72
	.asciz	"[b-z].*"

L_.str.73:                              ## @.str.73
	.asciz	"ab"

L_.str.74:                              ## @.str.74
	.asciz	"b[k-z]*"

L_.str.75:                              ## @.str.75
	.asciz	"[0-9]"

L_.str.76:                              ## @.str.76
	.asciz	"  - "

L_.str.77:                              ## @.str.77
	.asciz	"[^0-9]"

L_.str.78:                              ## @.str.78
	.asciz	"0|"

L_.str.79:                              ## @.str.79
	.asciz	"\\d\\d:\\d\\d:\\d\\d"

L_.str.80:                              ## @.str.80
	.asciz	"0s:00:00"

L_.str.81:                              ## @.str.81
	.asciz	"000:00"

L_.str.82:                              ## @.str.82
	.asciz	"00:0000"

L_.str.83:                              ## @.str.83
	.asciz	"100:0:00"

L_.str.84:                              ## @.str.84
	.asciz	"00:100:00"

L_.str.85:                              ## @.str.85
	.asciz	"0:00:100"

L_.str.86:                              ## @.str.86
	.asciz	"\\d\\d?:\\d\\d?:\\d\\d?"

L_.str.87:                              ## @.str.87
	.asciz	"0:0:0"

L_.str.88:                              ## @.str.88
	.asciz	"0:00:0"

L_.str.89:                              ## @.str.89
	.asciz	"0:0:00"

L_.str.90:                              ## @.str.90
	.asciz	"00:0:0"

L_.str.91:                              ## @.str.91
	.asciz	"00:00:0"

L_.str.92:                              ## @.str.92
	.asciz	"00:0:00"

L_.str.93:                              ## @.str.93
	.asciz	"0:00:00"

L_.str.94:                              ## @.str.94
	.asciz	"00:00:00"

L_.str.95:                              ## @.str.95
	.asciz	"[Hh]ello [Ww]orld\\s*[!]?"

L_.str.96:                              ## @.str.96
	.asciz	"Hello world !"

L_.str.97:                              ## @.str.97
	.asciz	"hello world !"

L_.str.98:                              ## @.str.98
	.asciz	"Hello World !"

L_.str.99:                              ## @.str.99
	.asciz	"Hello world!   "

L_.str.100:                             ## @.str.100
	.asciz	"Hello world  !"

L_.str.101:                             ## @.str.101
	.asciz	"hello World    !"

L_.str.102:                             ## @.str.102
	.asciz	"a:0"

L_.str.103:                             ## @.str.103
	.asciz	".?bar"

L_.str.104:                             ## @.str.104
	.asciz	"real_bar"

L_.str.105:                             ## @.str.105
	.asciz	"real_foo"

L_.str.106:                             ## @.str.106
	.asciz	"X?Y"

L_.str.107:                             ## @.str.107
	.asciz	"Z"

L_.str.108:                             ## @.str.108
	.asciz	"[a-z]+\nbreak"

L_.str.109:                             ## @.str.109
	.asciz	"blahblah\nbreak"

L_.str.110:                             ## @.str.110
	.asciz	"[a-z\\s]+\nbreak"

L_.str.111:                             ## @.str.111
	.asciz	"bla bla \nbreak"

	.section	__DATA,__data
	.globl	_test_vector                    ## @test_vector
	.p2align	4, 0x0
_test_vector:
	.quad	1
	.quad	L_.str.23
	.quad	L_.str.24
	.quad	1
	.quad	1
	.quad	L_.str.25
	.quad	L_.str.26
	.quad	3
	.quad	1
	.quad	L_.str.27
	.quad	L_.str.28
	.quad	1
	.quad	0
	.quad	L_.str.29
	.quad	L_.str.28
	.quad	0
	.quad	1
	.quad	L_.str.30
	.quad	L_.str.28
	.quad	1
	.quad	0
	.quad	L_.str.31
	.quad	L_.str.28
	.quad	0
	.quad	0
	.quad	L_.str.32
	.quad	L_.str.24
	.quad	0
	.quad	0
	.quad	L_.str.33
	.quad	L_.str.26
	.quad	0
	.quad	1
	.quad	L_.str.34
	.quad	L_.str.35
	.quad	5
	.quad	1
	.quad	L_.str.32
	.quad	L_.str.26
	.quad	1
	.quad	0
	.quad	L_.str.23
	.quad	L_.str.26
	.quad	0
	.quad	1
	.quad	L_.str.36
	.quad	L_.str.37
	.quad	1
	.quad	1
	.quad	L_.str.38
	.quad	L_.str.37
	.quad	1
	.quad	0
	.quad	L_.str.39
	.quad	L_.str.37
	.quad	0
	.quad	1
	.quad	L_.str.40
	.quad	L_.str.41
	.quad	1
	.quad	0
	.quad	L_.str.42
	.quad	L_.str.41
	.quad	0
	.quad	0
	.quad	L_.str.43
	.quad	L_.str.41
	.quad	0
	.quad	1
	.quad	L_.str.44
	.quad	L_.str.41
	.quad	1
	.quad	1
	.quad	L_.str.45
	.quad	L_.str.46
	.quad	8
	.quad	1
	.quad	L_.str.47
	.quad	L_.str.48
	.quad	3
	.quad	1
	.quad	L_.str.49
	.quad	L_.str.50
	.quad	1
	.quad	0
	.quad	L_.str.49
	.quad	L_.str.51
	.quad	0
	.quad	1
	.quad	L_.str.52
	.quad	L_.str.53
	.quad	5
	.quad	1
	.quad	L_.str.54
	.quad	L_.str.51
	.quad	1
	.quad	1
	.quad	L_.str.55
	.quad	L_.str.56
	.quad	2
	.quad	1
	.quad	L_.str.55
	.quad	L_.str.56
	.quad	2
	.quad	1
	.quad	L_.str.57
	.quad	L_.str.58
	.quad	8
	.quad	0
	.quad	L_.str.57
	.quad	L_.str.59
	.quad	0
	.quad	1
	.quad	L_.str.60
	.quad	L_.str.59
	.quad	8
	.quad	0
	.quad	L_.str.60
	.quad	L_.str.61
	.quad	0
	.quad	1
	.quad	L_.str.62
	.quad	L_.str.63
	.quad	3
	.quad	1
	.quad	L_.str.64
	.quad	L_.str.63
	.quad	2
	.quad	1
	.quad	L_.str.65
	.quad	L_.str.63
	.quad	3
	.quad	1
	.quad	L_.str.22
	.quad	L_.str.66
	.quad	1
	.quad	1
	.quad	L_.str.67
	.quad	L_.str.68
	.quad	4
	.quad	1
	.quad	L_.str.69
	.quad	L_.str.70
	.quad	6
	.quad	1
	.quad	L_.str.71
	.quad	L_.str.70
	.quad	6
	.quad	1
	.quad	L_.str.72
	.quad	L_.str.73
	.quad	1
	.quad	1
	.quad	L_.str.74
	.quad	L_.str.73
	.quad	1
	.quad	0
	.quad	L_.str.75
	.quad	L_.str.76
	.quad	0
	.quad	1
	.quad	L_.str.77
	.quad	L_.str.76
	.quad	1
	.quad	1
	.quad	L_.str.78
	.quad	L_.str.78
	.quad	2
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.80
	.quad	0
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.81
	.quad	0
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.82
	.quad	0
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.83
	.quad	0
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.84
	.quad	0
	.quad	0
	.quad	L_.str.79
	.quad	L_.str.85
	.quad	0
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.87
	.quad	5
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.88
	.quad	6
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.89
	.quad	5
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.90
	.quad	6
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.91
	.quad	7
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.92
	.quad	6
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.93
	.quad	6
	.quad	1
	.quad	L_.str.86
	.quad	L_.str.94
	.quad	7
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.96
	.quad	12
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.97
	.quad	12
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.98
	.quad	12
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.99
	.quad	11
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.100
	.quad	13
	.quad	1
	.quad	L_.str.95
	.quad	L_.str.101
	.quad	15
	.quad	0
	.quad	L_.str.86
	.quad	L_.str.102
	.quad	0
	.quad	1
	.quad	L_.str.103
	.quad	L_.str.104
	.quad	4
	.quad	0
	.quad	L_.str.103
	.quad	L_.str.105
	.quad	0
	.quad	0
	.quad	L_.str.106
	.quad	L_.str.107
	.quad	0
	.quad	1
	.quad	L_.str.108
	.quad	L_.str.109
	.quad	14
	.quad	1
	.quad	L_.str.110
	.quad	L_.str.111
	.quad	14

	.section	__TEXT,__cstring,cstring_literals
L_.str.112:                             ## @.str.112
	.asciz	"[%lu/%lu]: pattern '%s' matched '%s' unexpectedly, matched %i chars. \n"

L_.str.113:                             ## @.str.113
	.asciz	"[%lu/%lu]: pattern '%s' didn't match '%s' as expected. \n"

L_.str.114:                             ## @.str.114
	.asciz	"[%lu/%lu]: pattern '%s' matched '%i' chars of '%s'; expected '%i'. \n"

L_.str.115:                             ## @.str.115
	.asciz	"%lu/%lu tests succeeded.\n"

.subsections_via_symbols
