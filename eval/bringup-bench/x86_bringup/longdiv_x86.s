	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sub                            ## -- Begin function sub
	.p2align	4, 0x90
_sub:                                   ## @sub
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpb	%sil, %dil
	movl	$58, %r8d
	movl	$48, %ecx
	cmovll	%r8d, %ecx
	setl	%al
	addb	%dil, %cl
	subb	%sil, %cl
	movb	%cl, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_isgte                          ## -- Begin function isgte
	.p2align	4, 0x90
_isgte:                                 ## @isgte
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
	testq	%rsi, %rsi
	je	LBB1_13
## %bb.1:
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	LBB1_14
## %bb.2:
	movq	%rsi, %rbx
	leaq	L_.str(%rip), %r15
	movq	%r15, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_libmin_strpbrk
	testq	%rax, %rax
	je	LBB1_13
## %bb.3:
	testq	%r14, %r14
	je	LBB1_14
## %bb.4:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	_libmin_strlen
	cmpl	%eax, %r12d
	jg	LBB1_14
## %bb.5:
	jl	LBB1_13
## %bb.6:
	testl	%r12d, %r12d
	jle	LBB1_13
## %bb.7:
	movl	%r12d, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rcx), %edx
	movzbl	(%r15,%rcx), %ebx
	cmpb	%bl, %dl
	jg	LBB1_13
## %bb.9:                               ##   in Loop: Header=BB1_8 Depth=1
	jl	LBB1_18
## %bb.10:                              ##   in Loop: Header=BB1_8 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	jne	LBB1_8
LBB1_13:
	movl	$1, %r13d
LBB1_14:
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_18:
	xorl	%r13d, %r13d
	jmp	LBB1_14
	.cfi_endproc
                                        ## -- End function
	.globl	_sbc                            ## -- Begin function sbc
	.p2align	4, 0x90
_sbc:                                   ## @sbc
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
	movq	%rsi, %rbx
	movq	%rdi, %r13
	callq	_isgte
	testl	%eax, %eax
	je	LBB2_1
## %bb.2:
	movq	%r13, %rdi
	callq	_libmin_strlen
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	_libmin_strlen
	leaq	1(%rax), %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	testq	%rax, %rax
	jne	LBB2_4
## %bb.3:
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB2_4:
	movq	%r13, %rdi
	callq	_libmin_strlen
	leaq	1(%rax), %rdi
	callq	_libmin_malloc
	movq	%rax, %r12
	testq	%rax, %rax
	jne	LBB2_6
## %bb.5:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB2_6:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_libmin_strcpy
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	testl	%eax, %eax
	movq	%r14, -56(%rbp)                 ## 8-byte Spill
	jle	LBB2_7
## %bb.8:
	movq	%rbx, -64(%rbp)                 ## 8-byte Spill
	movq	%r14, %rbx
	movl	%eax, %r13d
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r13, %rdx
	movq	%rax, %r14
	callq	_memset
	movq	%r14, %r9
	shlq	$32, %r9
	movslq	%r14d, %rcx
	movb	$0, (%rbx,%rcx)
	movslq	%r15d, %r11
	leaq	(%rbx,%rcx), %rdx
	decq	%rdx
	decl	%r14d
	decl	%r15d
	movabsq	$-4294967296, %rax              ## imm = 0xFFFFFFFF00000000
	addq	%rax, %r9
	movl	$58, %r10d
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	LBB2_9
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_9 Depth=1
	movq	%r9, %rax
	sarq	$32, %rax
	movzbl	(%r12,%rax), %eax
	cmpb	$48, %al
	movl	$48, %ebx
	cmovll	%r10d, %ebx
	setl	%cl
	addb	%al, %bl
	addb	$-48, %bl
LBB2_14:                                ##   in Loop: Header=BB2_9 Depth=1
	movb	%bl, (%rdx)
	movzbl	%cl, %eax
	orl	%eax, %r8d
	incq	%rdi
	decl	%r14d
	decl	%r15d
	movabsq	$-4294967296, %rax              ## imm = 0xFFFFFFFF00000000
	addq	%rax, %r9
	decq	%rdx
	movl	%r8d, %ecx
	cmpq	%rdi, %r13
	je	LBB2_15
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	$0, %r8d
	testl	%ecx, %ecx
	je	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	%r9, %rax
	sarq	$32, %rax
	movzbl	(%r12,%rax), %ebx
	leal	-1(%rbx), %r8d
	cmpb	$48, %bl
	movzbl	%r8b, %ebx
	movl	$57, %esi
	cmovel	%esi, %ebx
	movl	$0, %esi
	cmovnel	%esi, %ecx
	movb	%bl, (%r12,%rax)
	movl	%ecx, %r8d
LBB2_11:                                ##   in Loop: Header=BB2_9 Depth=1
	cmpq	%r11, %rdi
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movslq	%r14d, %rax
	movzbl	(%r12,%rax), %eax
	movslq	%r15d, %rcx
	movq	-64(%rbp), %rbx                 ## 8-byte Reload
	subb	(%rbx,%rcx), %al
	setl	%cl
	movl	$48, %ebx
	cmovll	%r10d, %ebx
	addb	%al, %bl
	jmp	LBB2_14
LBB2_1:
	xorl	%eax, %eax
	jmp	LBB2_16
LBB2_7:
	cltq
	movb	$0, (%r14,%rax)
LBB2_15:
	movq	%r12, %rdi
	callq	_libmin_free
	movq	-56(%rbp), %rax                 ## 8-byte Reload
LBB2_16:
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
	.globl	_times_digit                    ## -- Begin function times_digit
	.p2align	4, 0x90
_times_digit:                           ## @times_digit
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
	testq	%rdi, %rdi
	je	LBB3_1
## %bb.2:
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%rax, %r13
	shlq	$32, %r13
	movabsq	$8589934592, %rdi               ## imm = 0x200000000
	addq	%r13, %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	testq	%rax, %rax
	jne	LBB3_4
## %bb.3:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB3_4:
	movabsq	$4294967296, %rdi               ## imm = 0x100000000
	addq	%r13, %rdi
	sarq	$32, %rdi
	movb	$0, (%r14,%rdi)
	testl	%r12d, %r12d
	jle	LBB3_5
## %bb.9:
	movsbl	%r15b, %r8d
	addl	$-48, %r8d
	movq	%r13, %rcx
	sarq	$32, %rcx
	movl	%r12d, %r10d
	leaq	(%rcx,%rbx), %r9
	decq	%r9
	addq	%r14, %rcx
	negq	%r10
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB3_10:                                ## =>This Inner Loop Header: Depth=1
	movsbl	(%r9,%rax), %esi
	addl	$-48, %esi
	imull	%r8d, %esi
	addl	%ebx, %esi
	movslq	%esi, %rsi
	imulq	$1717986919, %rsi, %rbx         ## imm = 0x66666667
	movq	%rbx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rbx
	addl	%edx, %ebx
	leal	(%rbx,%rbx), %edx
	leal	(%rdx,%rdx,4), %edx
	subl	%edx, %esi
	addb	$48, %sil
	movb	%sil, (%rcx,%rax)
	decq	%rax
	cmpq	%rax, %r10
	jne	LBB3_10
## %bb.11:
	leal	48(%rbx), %eax
	movb	%al, (%r14)
	testb	%bl, %bl
	je	LBB3_6
## %bb.12:
	movq	%r14, %rbx
	jmp	LBB3_13
LBB3_1:
	xorl	%ebx, %ebx
	jmp	LBB3_13
LBB3_5:
	movb	$48, (%r14)
LBB3_6:
	callq	_libmin_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	LBB3_8
## %bb.7:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB3_8:
	sarq	$32, %r13
	movb	$0, (%rbx,%r13)
	movq	%r14, %rsi
	incq	%rsi
	movq	%rbx, %rdi
	callq	_libmin_strcpy
	movq	%r14, %rdi
	callq	_libmin_free
LBB3_13:
	movq	%rbx, %rax
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
	.globl	_splice                         ## -- Begin function splice
	.p2align	4, 0x90
_splice:                                ## @splice
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
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	LBB4_6
## %bb.1:
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	LBB4_2
## %bb.3:
	movq	%r14, %rdi
	callq	_libmin_strlen
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_libmin_strlen
	addl	%r15d, %eax
	incl	%eax
	movslq	%eax, %rdi
	callq	_libmin_malloc
	testq	%rax, %rax
	je	LBB4_4
## %bb.5:
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_libmin_strcpy
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strcat
	movq	%r15, %rbx
	jmp	LBB4_6
LBB4_2:
	movq	%r14, %rbx
	jmp	LBB4_6
LBB4_4:
	leaq	L_.str.4(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_libmin_printf
LBB4_6:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cut_off                        ## -- Begin function cut_off
	.p2align	4, 0x90
_cut_off:                               ## @cut_off
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
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	LBB5_5
## %bb.1:
	movl	%esi, %ebx
	testl	%esi, %esi
	jle	LBB5_5
## %bb.2:
	movq	%rdi, %r14
	callq	_libmin_strlen
	cmpl	%ebx, %eax
	cmovll	%eax, %ebx
	leal	1(%rbx), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB5_3
## %bb.4:
	movq	%rax, %r15
	movslq	%ebx, %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_libmin_strncpy
	jmp	LBB5_5
LBB5_3:
	leaq	L_.str.5(%rip), %rdi
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	callq	_libmin_printf
LBB5_5:
	movq	%r15, %rax
	addq	$8, %rsp
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
	subq	$2120, %rsp                     ## imm = 0x848
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_argv+8(%rip), %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_7
## %bb.1:
	xorl	%ebx, %ebx
	movq	__pctype@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	_argv+8(%rip), %rdx
	movsbq	(%rdx,%rbx), %rcx
	testb	$4, (%rax,%rcx,2)
	je	LBB6_3
## %bb.6:                               ##   in Loop: Header=BB6_2 Depth=1
	incq	%rbx
	movq	%rdx, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_2
LBB6_7:
	movq	_argv+16(%rip), %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_13
## %bb.8:
	xorl	%ebx, %ebx
	movq	__pctype@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
LBB6_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	_argv+16(%rip), %rdx
	movsbq	(%rdx,%rbx), %rcx
	testb	$4, (%rax,%rcx,2)
	je	LBB6_10
## %bb.12:                              ##   in Loop: Header=BB6_9 Depth=1
	incq	%rbx
	movq	%rdx, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_9
LBB6_13:
	movq	_argv+16(%rip), %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_108
## %bb.14:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_16:                                ## =>This Inner Loop Header: Depth=1
	movq	_argv+16(%rip), %rdi
	cmpb	$48, (%rdi,%rbx)
	jne	LBB6_17
## %bb.15:                              ##   in Loop: Header=BB6_16 Depth=1
	incq	%rbx
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_16
LBB6_108:
	leaq	L_.str.11(%rip), %rdi
	leaq	L_.str.12(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB6_106
LBB6_3:
	leaq	L_.str.9(%rip), %rdi
	leaq	L_.str.10(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%ebx, %ebx
	je	LBB6_5
	.p2align	4, 0x90
LBB6_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_4
	jmp	LBB6_5
LBB6_10:
	leaq	L_.str.9(%rip), %rdi
	leaq	L_.str.10(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%ebx, %ebx
	je	LBB6_5
	.p2align	4, 0x90
LBB6_11:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_11
LBB6_5:
	movl	$94, %edi
	callq	_libmin_putc
	movl	$10, %edi
	callq	_libmin_putc
	jmp	LBB6_106
LBB6_17:
	movq	_argv+8(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_libmin_strpbrk
	movq	%rax, %rbx
	testq	%rax, %rax
	je	LBB6_18
## %bb.19:
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movq	%rax, %r14
	jmp	LBB6_20
LBB6_18:
	movl	$1, %r14d
LBB6_20:
	leal	1(%r14), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	_libmin_malloc
	movq	%rax, -1072(%rbp)
	testq	%rbx, %rbx
	movq	%rax, -2152(%rbp)               ## 8-byte Spill
	movq	%r14, -2136(%rbp)               ## 8-byte Spill
	je	LBB6_21
## %bb.22:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	jmp	LBB6_23
LBB6_21:
	leaq	L_.str.13(%rip), %rsi
	movq	%rax, %rdi
LBB6_23:
	callq	_libmin_strcpy
	movq	_argv+16(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_libmin_strpbrk
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	incl	%eax
	movslq	%eax, %rdi
	callq	_libmin_malloc
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strcpy
	leal	-1(%r12), %r14d
	movl	$1, %edi
	movq	%r15, %rsi
	callq	_libmin_calloc
	movq	%rax, %rbx
	movq	%r12, -2144(%rbp)               ## 8-byte Spill
	cmpl	$2, %r12d
	jl	LBB6_25
## %bb.24:
	movl	%r14d, %edx
	movq	%rbx, %rdi
	movl	$48, %esi
	callq	_memset
LBB6_25:
	movq	-2152(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_isgte
	testl	%eax, %eax
	movq	%rbx, -2112(%rbp)               ## 8-byte Spill
	movq	-2136(%rbp), %r12               ## 8-byte Reload
	je	LBB6_26
## %bb.27:
	xorl	%eax, %eax
	movq	%rax, -2128(%rbp)               ## 8-byte Spill
	movq	%r15, -2120(%rbp)               ## 8-byte Spill
	movq	%r13, -2160(%rbp)               ## 8-byte Spill
	jmp	LBB6_28
	.p2align	4, 0x90
LBB6_73:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r15, -2128(%rbp)               ## 8-byte Spill
	movq	%r12, %rdi
	callq	_libmin_free
	movq	%rbx, -2120(%rbp)               ## 8-byte Spill
	movq	%rbx, %rdi
	movq	-2160(%rbp), %r13               ## 8-byte Reload
	movq	%r13, %rsi
	callq	_isgte
	testl	%eax, %eax
	movq	-2112(%rbp), %rbx               ## 8-byte Reload
	je	LBB6_74
LBB6_28:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_37 Depth 2
                                        ##     Child Loop BB6_69 Depth 2
	testl	%r14d, %r14d
	js	LBB6_29
## %bb.30:                              ##   in Loop: Header=BB6_28 Depth=1
	movl	$0, %r12d
	cmpq	$0, -2120(%rbp)                 ## 8-byte Folded Reload
	je	LBB6_35
## %bb.31:                              ##   in Loop: Header=BB6_28 Depth=1
	leal	1(%r14), %ebx
	movq	-2120(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpl	%ebx, %eax
	cmovll	%eax, %ebx
	leal	1(%rbx), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB6_32
## %bb.33:                              ##   in Loop: Header=BB6_28 Depth=1
	movq	%rax, %r12
	movslq	%ebx, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_libmin_strncpy
	jmp	LBB6_34
	.p2align	4, 0x90
LBB6_29:                                ##   in Loop: Header=BB6_28 Depth=1
	xorl	%r12d, %r12d
	jmp	LBB6_35
LBB6_32:                                ##   in Loop: Header=BB6_28 Depth=1
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%r12d, %r12d
LBB6_34:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	-2112(%rbp), %rbx               ## 8-byte Reload
LBB6_35:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_36
LBB6_45:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r12, %rdi
	callq	_libmin_strlen
	movq	%rax, -2104(%rbp)               ## 8-byte Spill
	movq	%r13, %rdi
	movl	$57, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	-2128(%rbp), %rbx               ## 8-byte Reload
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_47
## %bb.46:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$57, %r15b
	jmp	LBB6_64
	.p2align	4, 0x90
LBB6_36:                                ##   in Loop: Header=BB6_28 Depth=1
	addl	$2, %r14d
	jmp	LBB6_37
	.p2align	4, 0x90
LBB6_38:                                ##   in Loop: Header=BB6_37 Depth=2
	xorl	%r12d, %r12d
LBB6_44:                                ##   in Loop: Header=BB6_37 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_isgte
	incl	%r14d
	testl	%eax, %eax
	jne	LBB6_45
LBB6_37:                                ##   Parent Loop BB6_28 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	leaq	L_.str.13(%rip), %rsi
	callq	_libmin_strcat
	movq	%r12, %rdi
	callq	_libmin_free
	cmpq	$0, -2120(%rbp)                 ## 8-byte Folded Reload
	je	LBB6_38
## %bb.39:                              ##   in Loop: Header=BB6_37 Depth=2
	movl	%r14d, %eax
	decl	%eax
	movl	$0, %r12d
	js	LBB6_44
## %bb.40:                              ##   in Loop: Header=BB6_37 Depth=2
	movq	-2120(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %rbx
	cmpl	%r14d, %ebx
	cmovgel	%r14d, %ebx
	leal	1(%rbx), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB6_41
## %bb.42:                              ##   in Loop: Header=BB6_37 Depth=2
	movq	%rax, %r12
	movslq	%ebx, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_libmin_strncpy
	jmp	LBB6_43
LBB6_41:                                ##   in Loop: Header=BB6_37 Depth=2
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%r12d, %r12d
LBB6_43:                                ##   in Loop: Header=BB6_37 Depth=2
	movq	-2112(%rbp), %rbx               ## 8-byte Reload
	jmp	LBB6_44
	.p2align	4, 0x90
LBB6_47:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$56, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_49
## %bb.48:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$56, %r15b
	jmp	LBB6_64
LBB6_49:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$55, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_51
## %bb.50:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$55, %r15b
	jmp	LBB6_64
LBB6_51:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$54, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_53
## %bb.52:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$54, %r15b
	jmp	LBB6_64
LBB6_53:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$53, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_55
## %bb.54:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$53, %r15b
	jmp	LBB6_64
LBB6_55:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$52, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_57
## %bb.56:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$52, %r15b
	jmp	LBB6_64
LBB6_57:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$51, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_59
## %bb.58:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$51, %r15b
	jmp	LBB6_64
LBB6_59:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$50, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_61
## %bb.60:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$50, %r15b
	jmp	LBB6_64
LBB6_61:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movq	%r13, %rdi
	movl	$49, %esi
	callq	_times_digit
	movq	%rax, %r14
	movq	%rax, -2096(%rbp,%rbx,8)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_63
## %bb.62:                              ##   in Loop: Header=BB6_28 Depth=1
	movb	$49, %r15b
	jmp	LBB6_64
LBB6_63:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r14, %rdi
	callq	_libmin_free
	movb	$48, %r15b
	.p2align	4, 0x90
LBB6_64:                                ##   in Loop: Header=BB6_28 Depth=1
	leaq	L_.str.13(%rip), %r13
	movq	-2104(%rbp), %rax               ## 8-byte Reload
	addq	%rax, -2120(%rbp)               ## 8-byte Folded Spill
	movq	-2112(%rbp), %rbx               ## 8-byte Reload
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movb	%r15b, (%rbx,%rax)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_sbc
	movq	%rax, %r15
	movq	%rax, %rdi
	leaq	L_.str(%rip), %rbx
	movq	%rbx, %rsi
	callq	_libmin_strpbrk
	testq	%rax, %rax
	je	LBB6_67
## %bb.65:                              ##   in Loop: Header=BB6_28 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %rdi
	callq	_libmin_strlen
	movq	%rax, %r14
	testl	%r14d, %r14d
	je	LBB6_67
## %bb.66:                              ##   in Loop: Header=BB6_28 Depth=1
	movq	-2120(%rbp), %rsi               ## 8-byte Reload
	jmp	LBB6_71
	.p2align	4, 0x90
LBB6_67:                                ##   in Loop: Header=BB6_28 Depth=1
	xorl	%r14d, %r14d
	movq	-2120(%rbp), %rsi               ## 8-byte Reload
	cmpb	$48, (%rsi)
	jne	LBB6_71
## %bb.68:                              ##   in Loop: Header=BB6_28 Depth=1
	movq	%r15, -2104(%rbp)               ## 8-byte Spill
	movq	%r13, %r15
	movq	-2112(%rbp), %r13               ## 8-byte Reload
	.p2align	4, 0x90
LBB6_69:                                ##   Parent Loop BB6_28 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rbx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_libmin_strcat
	leaq	1(%rbx), %rsi
	cmpb	$48, 1(%rbx)
	je	LBB6_69
## %bb.70:                              ##   in Loop: Header=BB6_28 Depth=1
	movq	%r15, %r13
	leaq	L_.str(%rip), %rbx
	movq	-2104(%rbp), %r15               ## 8-byte Reload
LBB6_71:                                ##   in Loop: Header=BB6_28 Depth=1
	movq	%r15, %rdi
	callq	_splice
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %rbx
	movq	-2128(%rbp), %r15               ## 8-byte Reload
	movq	%rax, -1064(%rbp,%r15,8)
	incq	%r15
	testq	%rax, %rax
	jne	LBB6_73
## %bb.72:                              ##   in Loop: Header=BB6_28 Depth=1
	movl	$2, %edi
	callq	_libmin_malloc
	movq	%rax, %rbx
	movq	%rax, -1072(%rbp,%r15,8)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	_libmin_strcpy
	jmp	LBB6_73
LBB6_74:
	movq	-2136(%rbp), %r12               ## 8-byte Reload
	jmp	LBB6_75
LBB6_26:
	xorl	%eax, %eax
	movq	%rax, -2128(%rbp)               ## 8-byte Spill
LBB6_75:
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movq	%rbx, %r15
	movl	%r12d, %ebx
	subl	%eax, %ebx
	testl	%ebx, %ebx
	jle	LBB6_78
## %bb.76:
	leaq	L_.str.13(%rip), %r14
	.p2align	4, 0x90
LBB6_77:                                ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_libmin_strcat
	decl	%ebx
	jne	LBB6_77
LBB6_78:
	movq	-2144(%rbp), %rax               ## 8-byte Reload
	leal	2(%rax), %r14d
	cmpl	$-1, %eax
	jl	LBB6_81
## %bb.79:
	cmpl	$2, %r14d
	movl	$1, %ebx
	cmovgel	%r14d, %ebx
	.p2align	4, 0x90
LBB6_80:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_80
LBB6_81:
	movq	-2112(%rbp), %rbx               ## 8-byte Reload
	cmpb	$48, (%rbx)
	jne	LBB6_82
	.p2align	4, 0x90
LBB6_83:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	leaq	1(%rbx), %rsi
	cmpb	$48, 1(%rbx)
	movq	%rsi, %rbx
	je	LBB6_83
	jmp	LBB6_84
LBB6_82:
	movq	%rbx, %rsi
LBB6_84:
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpl	$-1, -2144(%rbp)                ## 4-byte Folded Reload
	jl	LBB6_87
## %bb.85:
	cmpl	$2, %r14d
	movl	$1, %ebx
	cmovgel	%r14d, %ebx
	.p2align	4, 0x90
LBB6_86:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_86
LBB6_87:
	testl	%r12d, %r12d
	jle	LBB6_90
## %bb.88:
	movl	%r12d, %ebx
	.p2align	4, 0x90
LBB6_89:                                ## =>This Inner Loop Header: Depth=1
	movl	$95, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_89
LBB6_90:
	leaq	L_.str.14(%rip), %rdi
	movq	%r13, %rsi
	movq	-2152(%rbp), %rdx               ## 8-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-2128(%rbp), %rax               ## 8-byte Reload
	testl	%eax, %eax
	je	LBB6_105
## %bb.91:
	addl	%r12d, %r14d
	movslq	%r14d, %r12
	movl	%eax, %eax
	movq	%rax, -2112(%rbp)               ## 8-byte Spill
	movq	-1072(%rbp), %r13
	leaq	L_.str.11(%rip), %r14
	xorl	%r15d, %r15d
	jmp	LBB6_92
	.p2align	4, 0x90
LBB6_104:                               ##   in Loop: Header=BB6_92 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpq	-2112(%rbp), %r15               ## 8-byte Folded Reload
	je	LBB6_105
LBB6_92:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_94 Depth 2
                                        ##     Child Loop BB6_97 Depth 2
                                        ##     Child Loop BB6_100 Depth 2
                                        ##     Child Loop BB6_103 Depth 2
	movq	%r13, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	je	LBB6_95
## %bb.93:                              ##   in Loop: Header=BB6_92 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_94:                                ##   Parent Loop BB6_92 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r13, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	LBB6_94
LBB6_95:                                ##   in Loop: Header=BB6_92 Depth=1
	movq	%r15, -2120(%rbp)               ## 8-byte Spill
	movq	-2096(%rbp,%r15,8), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r13, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	je	LBB6_98
## %bb.96:                              ##   in Loop: Header=BB6_92 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB6_97:                                ##   Parent Loop BB6_92 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%r14
	movq	%r13, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%r14, %rcx
	ja	LBB6_97
LBB6_98:                                ##   in Loop: Header=BB6_92 Depth=1
	movq	%r15, %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_101
## %bb.99:                              ##   in Loop: Header=BB6_92 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_100:                               ##   Parent Loop BB6_92 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$45, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_100
LBB6_101:                               ##   in Loop: Header=BB6_92 Depth=1
	movl	$10, %edi
	callq	_libmin_putc
	movq	-2120(%rbp), %r15               ## 8-byte Reload
	movq	-1064(%rbp,%r15,8), %r13
	incq	%r15
	movq	%r13, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	leaq	L_.str.11(%rip), %r14
	je	LBB6_104
## %bb.102:                             ##   in Loop: Header=BB6_92 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_103:                               ##   Parent Loop BB6_92 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r13, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	LBB6_103
	jmp	LBB6_104
LBB6_105:
	callq	_libmin_success
LBB6_106:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB6_109
## %bb.107:
	xorl	%eax, %eax
	addq	$2120, %rsp                     ## imm = 0x848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_109:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"123456789"

L_.str.1:                               ## @.str.1
	.asciz	"sbc: Unable to malloc space for result\n"

L_.str.2:                               ## @.str.2
	.asciz	"sbc: Unable to malloc\n"

L_.str.3:                               ## @.str.3
	.asciz	"Unable to malloc partial product array\n"

L_.str.4:                               ## @.str.4
	.asciz	"splice: unable to malloc\n"

L_.str.5:                               ## @.str.5
	.asciz	"cut_off: Unable to malloc\n"

	.section	__DATA,__data
	.globl	_argc                           ## @argc
	.p2align	2
_argc:
	.long	3                               ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"longdiv"

L_.str.7:                               ## @.str.7
	.asciz	"52333498"

L_.str.8:                               ## @.str.8
	.asciz	"27"

	.section	__DATA,__data
	.globl	_argv                           ## @argv
	.p2align	4
_argv:
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8

	.section	__TEXT,__cstring,cstring_literals
L_.str.9:                               ## @.str.9
	.asciz	"%s\n%s\n"

L_.str.10:                              ## @.str.10
	.asciz	"longdiv: syntax error"

L_.str.11:                              ## @.str.11
	.asciz	"%s\n"

L_.str.12:                              ## @.str.12
	.asciz	"longdiv: Cannot divide by 0.\n"

L_.str.13:                              ## @.str.13
	.asciz	"0"

L_.str.14:                              ## @.str.14
	.asciz	"\n %s)%s\n"

.subsections_via_symbols
