	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	setl	%al
	movl	$58, %ecx
	movl	$48, %r8d
	cmovll	%ecx, %r8d
	addb	%dil, %r8b
	subb	%sil, %r8b
	movb	%r8b, (%rdx)
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
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rsi, %rsi
	je	LBB1_13
## %bb.1:
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	LBB1_14
## %bb.2:
	movq	%rsi, %r15
	leaq	L_.str(%rip), %r12
	movq	%r12, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%r12, %rsi
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
	movzbl	(%r15,%rcx), %esi
	cmpb	%sil, %dl
	jg	LBB1_13
## %bb.9:                               ##   in Loop: Header=BB1_8 Depth=1
	jl	LBB1_18
## %bb.10:                              ##   in Loop: Header=BB1_8 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	jne	LBB1_8
LBB1_13:
	movl	$1, %ebx
LBB1_14:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_18:
	xorl	%ebx, %ebx
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
	movabsq	$-4294967296, %r14              ## imm = 0xFFFFFFFF00000000
	movl	%eax, %r13d
	movq	%rbx, %rdi
	movl	$48, %esi
	movq	%r13, %rdx
	callq	_memset
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
	movq	%rdx, %rax
	shlq	$32, %rax
	movslq	%edx, %rcx
	movq	%rdx, %rsi
	movb	$0, (%rbx,%rcx)
	addq	%rbx, %rcx
	decq	%rcx
	movslq	%r15d, %rdx
	decl	%esi
	decl	%r15d
	addq	%r14, %rax
	xorl	%edi, %edi
	movl	$58, %r8d
	xorl	%r10d, %r10d
	jmp	LBB2_9
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_9 Depth=1
	movq	%rax, %r9
	sarq	$32, %r9
	movzbl	(%r12,%r9), %r9d
	cmpb	$48, %r9b
	movl	$48, %ebx
	cmovll	%r8d, %ebx
	setl	%r11b
	addb	%r9b, %bl
	addb	$-48, %bl
LBB2_14:                                ##   in Loop: Header=BB2_9 Depth=1
	movb	%bl, (%rcx)
	movzbl	%r11b, %r9d
	orl	%r9d, %r10d
	incq	%rdi
	decl	%esi
	decl	%r15d
	addq	%r14, %rax
	decq	%rcx
	cmpq	%rdi, %r13
	je	LBB2_15
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	testl	%r10d, %r10d
	movl	$0, %r10d
	je	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	%rax, %r11
	sarq	$32, %r11
	movzbl	(%r12,%r11), %r9d
	leal	-1(%r9), %ebx
	xorl	%r10d, %r10d
	cmpb	$48, %r9b
	sete	%r10b
	movzbl	%bl, %r9d
	movl	$57, %ebx
	cmovel	%ebx, %r9d
	movb	%r9b, (%r12,%r11)
LBB2_11:                                ##   in Loop: Header=BB2_9 Depth=1
	cmpq	%rdx, %rdi
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movslq	%esi, %r9
	movzbl	(%r12,%r9), %r9d
	movslq	%r15d, %r11
	movq	-64(%rbp), %rbx                 ## 8-byte Reload
	subb	(%rbx,%r11), %r9b
	setl	%r11b
	movl	$48, %ebx
	cmovll	%r8d, %ebx
	addb	%r9b, %bl
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
	movq	%rdi, %r14
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%rax, %r13
	shlq	$32, %r13
	movabsq	$8589934592, %rdi               ## imm = 0x200000000
	addq	%r13, %rdi
	sarq	$32, %rdi
	callq	_libmin_malloc
	movq	%rax, %rbx
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
	movb	$0, (%rbx,%rdi)
	testl	%r12d, %r12d
	jle	LBB3_5
## %bb.9:
	movsbl	%r15b, %eax
	addl	$-48, %eax
	movq	%r13, %rcx
	sarq	$32, %rcx
	movl	%r12d, %edx
	leaq	(%rcx,%r14), %rsi
	decq	%rsi
	addq	%rbx, %rcx
	negq	%rdx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB3_10:                                ## =>This Inner Loop Header: Depth=1
	movsbl	(%rsi,%r9), %r10d
	addl	$-48, %r10d
	imull	%eax, %r10d
	addl	%r8d, %r10d
	movslq	%r10d, %r10
	imulq	$1717986919, %r10, %r8          ## imm = 0x66666667
	movq	%r8, %r11
	shrq	$63, %r11
	sarq	$34, %r8
	addl	%r11d, %r8d
	leal	(%r8,%r8), %r11d
	leal	(%r11,%r11,4), %r11d
	subl	%r11d, %r10d
	addb	$48, %r10b
	movb	%r10b, (%rcx,%r9)
	decq	%r9
	cmpq	%r9, %rdx
	jne	LBB3_10
## %bb.11:
	leal	48(%r8), %eax
	movb	%al, (%rbx)
	testb	%r8b, %r8b
	je	LBB3_6
## %bb.12:
	movq	%rbx, %r14
	jmp	LBB3_13
LBB3_1:
	xorl	%r14d, %r14d
	jmp	LBB3_13
LBB3_5:
	movb	$48, (%rbx)
LBB3_6:
	callq	_libmin_malloc
	movq	%rax, %r14
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
	movb	$0, (%r14,%r13)
	movq	%rbx, %rsi
	incq	%rsi
	movq	%r14, %rdi
	callq	_libmin_strcpy
	movq	%rbx, %rdi
	callq	_libmin_free
LBB3_13:
	movq	%r14, %rax
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
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	LBB5_5
## %bb.1:
	movl	%esi, %r15d
	testl	%esi, %esi
	jle	LBB5_5
## %bb.2:
	movq	%rdi, %rbx
	callq	_libmin_strlen
	cmpl	%r15d, %eax
	cmovll	%eax, %r15d
	leal	1(%r15), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB5_3
## %bb.4:
	movq	%rax, %r14
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strncpy
	jmp	LBB5_5
LBB5_3:
	leaq	L_.str.5(%rip), %rdi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	_libmin_printf
LBB5_5:
	movq	%r14, %rax
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
	je	LBB6_4
## %bb.1:
	xorl	%ebx, %ebx
	movq	__pctype@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	_argv+8(%rip), %rdx
	movsbq	(%rdx,%rbx), %rcx
	testb	$4, (%rax,%rcx,2)
	je	LBB6_13
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	incq	%rbx
	movq	%rdx, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_2
LBB6_4:
	movq	_argv+16(%rip), %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_8
## %bb.5:
	xorl	%ebx, %ebx
	movq	__pctype@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
LBB6_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	_argv+16(%rip), %rdx
	movsbq	(%rdx,%rbx), %rcx
	testb	$4, (%rax,%rcx,2)
	je	LBB6_15
## %bb.7:                               ##   in Loop: Header=BB6_6 Depth=1
	incq	%rbx
	movq	%rdx, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_6
LBB6_8:
	movq	_argv+16(%rip), %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_12
## %bb.9:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_10:                                ## =>This Inner Loop Header: Depth=1
	movq	_argv+16(%rip), %rdi
	cmpb	$48, (%rdi,%rbx)
	jne	LBB6_18
## %bb.11:                              ##   in Loop: Header=BB6_10 Depth=1
	incq	%rbx
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_10
LBB6_12:
	leaq	L_.str.11(%rip), %rdi
	leaq	L_.str.12(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB6_96
LBB6_13:
	leaq	L_.str.9(%rip), %rdi
	leaq	L_.str.10(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%rbx, %rbx
	je	LBB6_17
	.p2align	4, 0x90
LBB6_14:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_14
	jmp	LBB6_17
LBB6_15:
	leaq	L_.str.9(%rip), %rdi
	leaq	L_.str.10(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	testq	%rbx, %rbx
	je	LBB6_17
	.p2align	4, 0x90
LBB6_16:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%ebx
	jne	LBB6_16
LBB6_17:
	movl	$94, %edi
	callq	_libmin_putc
	movl	$10, %edi
	callq	_libmin_putc
	jmp	LBB6_96
LBB6_18:
	movq	_argv+8(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_libmin_strpbrk
	testq	%rax, %rax
	je	LBB6_20
## %bb.19:
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	_libmin_strlen
	jmp	LBB6_21
LBB6_20:
	movl	$1, %eax
	leaq	L_.str.13(%rip), %r14
LBB6_21:
	movq	%rax, -2144(%rbp)               ## 8-byte Spill
	incl	%eax
	movslq	%eax, %rbx
	movq	%rbx, %rdi
	callq	_libmin_malloc
	movq	%rax, %r15
	movq	%rax, -1072(%rbp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_libmin_strcpy
	movq	_argv+16(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_libmin_strpbrk
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	incl	%eax
	movslq	%eax, %rdi
	callq	_libmin_malloc
	movq	%rax, -2104(%rbp)               ## 8-byte Spill
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_libmin_strcpy
	leal	-1(%r12), %r13d
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	_libmin_calloc
	movq	%rax, -2120(%rbp)               ## 8-byte Spill
	movq	%r12, -2152(%rbp)               ## 8-byte Spill
	cmpl	$2, %r12d
	jl	LBB6_23
## %bb.22:
	movl	%r13d, %edx
	movq	-2120(%rbp), %rdi               ## 8-byte Reload
	movl	$48, %esi
	callq	_memset
LBB6_23:
	movq	%r15, %rdi
	movq	-2104(%rbp), %rsi               ## 8-byte Reload
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_64
## %bb.24:
	leaq	-1072(%rbp), %r12
	xorl	%r14d, %r14d
	jmp	LBB6_26
	.p2align	4, 0x90
LBB6_25:                                ##   in Loop: Header=BB6_26 Depth=1
	incq	%r14
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r15, %rdi
	movq	-2104(%rbp), %rsi               ## 8-byte Reload
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_63
LBB6_26:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_39 Depth 2
                                        ##     Child Loop BB6_59 Depth 2
	movq	%r14, -2128(%rbp)               ## 8-byte Spill
	testl	%r13d, %r13d
	js	LBB6_32
## %bb.27:                              ##   in Loop: Header=BB6_26 Depth=1
	movl	$0, %ebx
	testq	%r15, %r15
	je	LBB6_33
## %bb.28:                              ##   in Loop: Header=BB6_26 Depth=1
	leal	1(%r13), %r14d
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpl	%r14d, %eax
	cmovll	%eax, %r14d
	leal	1(%r14), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB6_31
## %bb.29:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%rax, %rbx
	movslq	%r14d, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_libmin_strncpy
	jmp	LBB6_33
LBB6_31:                                ##   in Loop: Header=BB6_26 Depth=1
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB6_32:                                ##   in Loop: Header=BB6_26 Depth=1
	xorl	%ebx, %ebx
LBB6_33:                                ##   in Loop: Header=BB6_26 Depth=1
	movq	%rbx, %rdi
	movq	-2104(%rbp), %r15               ## 8-byte Reload
	movq	%r15, %rsi
	callq	_isgte
	testl	%eax, %eax
	je	LBB6_36
LBB6_34:                                ##   in Loop: Header=BB6_26 Depth=1
	movq	(%r12), %rax
	movq	%rax, -2136(%rbp)               ## 8-byte Spill
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movq	%rax, -2112(%rbp)               ## 8-byte Spill
	movq	%r15, %rdi
	movl	$57, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	-2128(%rbp), %r12               ## 8-byte Reload
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$57, %r14b
	testl	%eax, %eax
	je	LBB6_45
## %bb.35:                              ##   in Loop: Header=BB6_26 Depth=1
	leaq	L_.str(%rip), %r15
	jmp	LBB6_54
	.p2align	4, 0x90
LBB6_36:                                ##   in Loop: Header=BB6_26 Depth=1
	addl	$2, %r13d
	jmp	LBB6_39
	.p2align	4, 0x90
LBB6_37:                                ##   in Loop: Header=BB6_39 Depth=2
	xorl	%ebx, %ebx
LBB6_38:                                ##   in Loop: Header=BB6_39 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_isgte
	incl	%r13d
	testl	%eax, %eax
	jne	LBB6_34
LBB6_39:                                ##   Parent Loop BB6_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-2120(%rbp), %rdi               ## 8-byte Reload
	leaq	L_.str.13(%rip), %rsi
	callq	_libmin_strcat
	movq	%rbx, %rdi
	callq	_libmin_free
	movl	%r13d, %eax
	decl	%eax
	js	LBB6_37
## %bb.40:                              ##   in Loop: Header=BB6_39 Depth=2
	movq	(%r12), %r14
	movl	$0, %ebx
	testq	%r14, %r14
	je	LBB6_38
## %bb.41:                              ##   in Loop: Header=BB6_39 Depth=2
	movq	%r14, %rdi
	callq	_libmin_strlen
	movq	%rax, %r15
	cmpl	%r13d, %r15d
	cmovgel	%r13d, %r15d
	leal	1(%r15), %eax
	movslq	%eax, %rsi
	movl	$1, %edi
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB6_43
## %bb.42:                              ##   in Loop: Header=BB6_39 Depth=2
	movq	%rax, %rbx
	movslq	%r15d, %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_libmin_strncpy
	jmp	LBB6_44
LBB6_43:                                ##   in Loop: Header=BB6_39 Depth=2
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%ebx, %ebx
LBB6_44:                                ##   in Loop: Header=BB6_39 Depth=2
	movq	-2104(%rbp), %r15               ## 8-byte Reload
	jmp	LBB6_38
	.p2align	4, 0x90
LBB6_45:                                ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	%r15, %rdi
	movl	$56, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$56, %r14b
	testl	%eax, %eax
	leaq	L_.str(%rip), %r15
	jne	LBB6_54
## %bb.46:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$55, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$55, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.47:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$54, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$54, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.48:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$53, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$53, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.49:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$52, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$52, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.50:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$51, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$51, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.51:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$50, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$50, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.52:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movq	-2104(%rbp), %rdi               ## 8-byte Reload
	movl	$49, %esi
	callq	_times_digit
	movq	%rax, %r13
	movq	%rax, -2096(%rbp,%r12,8)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_isgte
	movb	$49, %r14b
	testl	%eax, %eax
	jne	LBB6_54
## %bb.53:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r13, %rdi
	callq	_libmin_free
	movb	$48, %r14b
	.p2align	4, 0x90
LBB6_54:                                ##   in Loop: Header=BB6_26 Depth=1
	movq	-2112(%rbp), %rax               ## 8-byte Reload
	addq	%rax, -2136(%rbp)               ## 8-byte Folded Spill
	movq	-2120(%rbp), %r12               ## 8-byte Reload
	movq	%r12, %rdi
	callq	_libmin_strlen
	movb	%r14b, (%r12,%rax)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_sbc
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_libmin_strpbrk
	testq	%rax, %rax
	je	LBB6_57
## %bb.55:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %rdi
	callq	_libmin_strlen
	movq	%rax, %r13
	testl	%r13d, %r13d
	je	LBB6_57
## %bb.56:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	-2136(%rbp), %rsi               ## 8-byte Reload
	jmp	LBB6_61
	.p2align	4, 0x90
LBB6_57:                                ##   in Loop: Header=BB6_26 Depth=1
	xorl	%r13d, %r13d
	movq	-2136(%rbp), %rsi               ## 8-byte Reload
	cmpb	$48, (%rsi)
	jne	LBB6_61
## %bb.58:                              ##   in Loop: Header=BB6_26 Depth=1
	movq	%r14, -2112(%rbp)               ## 8-byte Spill
	movq	-2120(%rbp), %r14               ## 8-byte Reload
	leaq	L_.str.13(%rip), %r15
	.p2align	4, 0x90
LBB6_59:                                ##   Parent Loop BB6_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_libmin_strcat
	leaq	1(%r12), %rsi
	cmpb	$48, 1(%r12)
	je	LBB6_59
## %bb.60:                              ##   in Loop: Header=BB6_26 Depth=1
	leaq	L_.str(%rip), %r15
	movq	-2112(%rbp), %r14               ## 8-byte Reload
LBB6_61:                                ##   in Loop: Header=BB6_26 Depth=1
	movq	%r14, %rdi
	callq	_splice
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_libmin_strpbrk
	movq	%rax, %r15
	movq	-2128(%rbp), %r14               ## 8-byte Reload
	leaq	-1064(,%r14,8), %r12
	addq	%rbp, %r12
	movq	%rax, -1064(%rbp,%r14,8)
	testq	%rax, %rax
	jne	LBB6_25
## %bb.62:                              ##   in Loop: Header=BB6_26 Depth=1
	movl	$2, %edi
	callq	_libmin_malloc
	movq	%rax, %r15
	movq	%rax, (%r12)
	movq	%rax, %rdi
	leaq	L_.str.13(%rip), %rsi
	callq	_libmin_strcpy
	jmp	LBB6_25
LBB6_63:
	movq	%r14, -2128(%rbp)               ## 8-byte Spill
	jmp	LBB6_65
LBB6_64:
	xorl	%eax, %eax
	movq	%rax, -2128(%rbp)               ## 8-byte Spill
LBB6_65:
	movq	-2144(%rbp), %rbx               ## 8-byte Reload
	movq	-2120(%rbp), %r13               ## 8-byte Reload
	movq	%r13, %rdi
	callq	_libmin_strlen
	movq	%rbx, %r12
	movl	%ebx, %r14d
	subl	%eax, %r14d
	movq	-2152(%rbp), %r15               ## 8-byte Reload
	jle	LBB6_68
## %bb.66:
	leaq	L_.str.13(%rip), %rbx
	.p2align	4, 0x90
LBB6_67:                                ## =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strcat
	decl	%r14d
	jne	LBB6_67
LBB6_68:
	leal	2(%r15), %ebx
	cmpl	$-1, %r15d
	jl	LBB6_71
## %bb.69:
	cmpl	$2, %ebx
	movl	$1, %r14d
	cmovgel	%ebx, %r14d
	.p2align	4, 0x90
LBB6_70:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%r14d
	jne	LBB6_70
LBB6_71:
	cmpb	$48, (%r13)
	jne	LBB6_73
	.p2align	4, 0x90
LBB6_72:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	leaq	1(%r13), %rsi
	cmpb	$48, 1(%r13)
	movq	%rsi, %r13
	je	LBB6_72
	jmp	LBB6_74
LBB6_73:
	movq	%r13, %rsi
LBB6_74:
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpl	$-1, %r15d
	jl	LBB6_77
## %bb.75:
	cmpl	$2, %ebx
	movl	$1, %r14d
	cmovgel	%ebx, %r14d
	.p2align	4, 0x90
LBB6_76:                                ## =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	_libmin_putc
	decl	%r14d
	jne	LBB6_76
LBB6_77:
	testl	%r12d, %r12d
	jle	LBB6_80
## %bb.78:
	movl	%r12d, %r14d
	.p2align	4, 0x90
LBB6_79:                                ## =>This Inner Loop Header: Depth=1
	movl	$95, %edi
	callq	_libmin_putc
	decl	%r14d
	jne	LBB6_79
LBB6_80:
	movq	-1072(%rbp), %r15
	leaq	L_.str.14(%rip), %rdi
	movq	-2104(%rbp), %rsi               ## 8-byte Reload
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-2128(%rbp), %rax               ## 8-byte Reload
	testl	%eax, %eax
	je	LBB6_95
## %bb.81:
	addl	%r12d, %ebx
	movslq	%ebx, %r12
	movl	%eax, %eax
	movq	%rax, -2120(%rbp)               ## 8-byte Spill
	xorl	%r13d, %r13d
	jmp	LBB6_83
	.p2align	4, 0x90
LBB6_82:                                ##   in Loop: Header=BB6_83 Depth=1
	incq	%r13
	leaq	L_.str.11(%rip), %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpq	-2120(%rbp), %r13               ## 8-byte Folded Reload
	je	LBB6_95
LBB6_83:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_85 Depth 2
                                        ##     Child Loop BB6_88 Depth 2
                                        ##     Child Loop BB6_91 Depth 2
                                        ##     Child Loop BB6_94 Depth 2
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	je	LBB6_86
## %bb.84:                              ##   in Loop: Header=BB6_83 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_85:                                ##   Parent Loop BB6_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	LBB6_85
LBB6_86:                                ##   in Loop: Header=BB6_83 Depth=1
	movq	-2096(%rbp,%r13,8), %r14
	leaq	L_.str.11(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	je	LBB6_89
## %bb.87:                              ##   in Loop: Header=BB6_83 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_88:                                ##   Parent Loop BB6_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	LBB6_88
LBB6_89:                                ##   in Loop: Header=BB6_83 Depth=1
	movq	%r14, %rdi
	callq	_libmin_strlen
	testq	%rax, %rax
	je	LBB6_92
## %bb.90:                              ##   in Loop: Header=BB6_83 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_91:                                ##   Parent Loop BB6_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$45, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r14, %rdi
	callq	_libmin_strlen
	cmpq	%rbx, %rax
	ja	LBB6_91
LBB6_92:                                ##   in Loop: Header=BB6_83 Depth=1
	movl	$10, %edi
	callq	_libmin_putc
	movq	-1064(%rbp,%r13,8), %r15
	movq	%r15, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	je	LBB6_82
## %bb.93:                              ##   in Loop: Header=BB6_83 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_94:                                ##   Parent Loop BB6_83 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	_libmin_putc
	incq	%rbx
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	LBB6_94
	jmp	LBB6_82
LBB6_95:
	callq	_libmin_success
LBB6_96:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB6_98
## %bb.97:
	xorl	%eax, %eax
	addq	$2120, %rsp                     ## imm = 0x848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_98:
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
	.p2align	2, 0x0
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
	.p2align	4, 0x0
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
