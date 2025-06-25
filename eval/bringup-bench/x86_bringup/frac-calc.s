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
	subq	$776, %rsp                      ## imm = 0x308
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_opterr@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	leaq	L_.str.1(%rip), %r15
	leaq	L_.str.16(%rip), %r12
	leaq	L_.str.17(%rip), %r13
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	incl	_verb(%rip)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_libmin_getopt
	cmpl	$103, %eax
	jle	LBB0_2
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$118, %eax
	je	LBB0_11
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$104, %eax
	jne	LBB0_4
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	callq	_help
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$86, %eax
	jne	LBB0_3
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.18(%rip), %rdi
	leaq	L_.str.6(%rip), %rsi
	leaq	L_.str.19(%rip), %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.20(%rip), %rdi
	movl	$2018, %esi                     ## imm = 0x7E2
	movq	%r12, %rdx
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_verb(%rip), %esi
	cmpl	$4, %esi
	jl	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB0_1
LBB0_3:
	cmpl	$-1, %eax
	jne	LBB0_4
## %bb.12:
	movl	_verb(%rip), %esi
	testl	%esi, %esi
	je	LBB0_14
## %bb.13:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB0_14:
	leaq	-656(%rbp), %r13
	leaq	L_.str.24(%rip), %rbx
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=1
	movl	%r12d, -668(%rbp)
	leaq	-592(%rbp), %rdi
	leaq	-704(%rbp), %r14
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	_avaliatokens
	movq	%r14, %rdi
	leaq	-752(%rbp), %rsi
	callq	_calcula
	movl	-664(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	sete	%cl
	leal	(%rcx,%rcx), %r8d
	addl	$43, %r8d
	cmpl	$3, %eax
	movl	$42, %ecx
	cmovel	%ecx, %r8d
	cmpl	$4, %eax
	movl	$47, %eax
	cmovel	%eax, %r8d
	movl	-668(%rbp), %edx
	movl	-672(%rbp), %ecx
	movl	-680(%rbp), %r10d
	movl	-676(%rbp), %r9d
	movl	-752(%rbp), %r11d
	movl	-748(%rbp), %r12d
	movl	-740(%rbp), %r15d
	movl	-736(%rbp), %r14d
	cvtss2sd	%xmm0, %xmm0
	subq	$8, %rsp
	leaq	L_.str.29(%rip), %rdi
	movq	%r13, %rsi
	movb	$1, %al
	pushq	%r14
	pushq	%r15
	pushq	%r11
	pushq	%r12
	pushq	%r10
	callq	_libmin_printf
	addq	$48, %rsp
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_minput(%rip), %rdx
	movl	$60, %esi
	leaq	-816(%rbp), %r14
	movq	%r14, %rdi
	callq	_libmin_mgets
	movq	%r14, %rdi
	callq	_libmin_atoi
	cmpl	$1, %eax
	jne	LBB0_19
LBB0_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_17 Depth 2
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_minput(%rip), %rdx
	movl	$60, %esi
	movq	%r13, %rdi
	callq	_libmin_mgets
	leaq	-112(%rbp), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_libmin_strcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strtok
	movl	$0, %r12d
	testq	%rax, %rax
	je	LBB0_18
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB0_17:                                ##   Parent Loop BB0_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, -592(%rbp,%r12,8)
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	_libmin_strtok
	incq	%r12
	testq	%rax, %rax
	jne	LBB0_17
	jmp	LBB0_18
LBB0_19:
	callq	_libmin_success
	xorl	%eax, %eax
	jmp	LBB0_20
LBB0_4:
	movq	(%r14), %rdx
	leaq	L_.str.2(%rip), %rdi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %eax
LBB0_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-48(%rbp), %rcx
	jne	LBB0_22
## %bb.21:
	addq	$776, %rsp                      ## imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_22:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_help                           ## -- Begin function help
	.p2align	4, 0x90
_help:                                  ## @help
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	leaq	L_.str.5(%rip), %rdi
	leaq	L_.str.6(%rip), %rbx
	leaq	L_.str.7(%rip), %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.9(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.15(%rip), %rdi
	leaq	L_.str.16(%rip), %rsi
	leaq	L_.str.17(%rip), %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_libmin_fail                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_copyr                          ## -- Begin function copyr
	.p2align	4, 0x90
_copyr:                                 ## @copyr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.18(%rip), %rdi
	leaq	L_.str.6(%rip), %rsi
	leaq	L_.str.19(%rip), %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.20(%rip), %rdi
	leaq	L_.str.16(%rip), %rdx
	leaq	L_.str.17(%rip), %rcx
	movl	$2018, %esi                     ## imm = 0x7E2
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_verb(%rip), %esi
	cmpl	$4, %esi
	jl	LBB2_2
## %bb.1:
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_2:
	movl	$1, %edi
	popq	%rbp
	jmp	_libmin_fail                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_frac_init                      ## -- Begin function frac_init
	.p2align	4, 0x90
_frac_init:                             ## @frac_init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_minput(%rip), %rdx
	movl	$60, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_libmin_mgets                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_divtokens                      ## -- Begin function divtokens
	.p2align	4, 0x90
_divtokens:                             ## @divtokens
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
	subq	$552, %rsp                      ## imm = 0x228
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strcpy
	leaq	L_.str.24(%rip), %rsi
	movq	%rbx, %rdi
	callq	_libmin_strtok
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	LBB4_3
## %bb.1:
	leaq	L_.str.24(%rip), %r15
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rax, -576(%rbp,%rbx,8)
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	_libmin_strtok
	incq	%rbx
	testq	%rax, %rax
	jne	LBB4_2
LBB4_3:
	movl	%ebx, 36(%r14)
	leaq	-576(%rbp), %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	_avaliatokens
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB4_5
## %bb.4:
	addq	$552, %rsp                      ## imm = 0x228
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_calcula                        ## -- Begin function calcula
	.p2align	4, 0x90
_calcula:                               ## @calcula
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	12(%rdi), %r9d
	imull	4(%rdi), %r9d
	movl	%r9d, (%rsi)
	movl	40(%rdi), %eax
	decl	%eax
	cmpl	$3, %eax
	ja	LBB5_1
## %bb.2:
	leaq	LJTI5_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB5_3:
	movl	%r9d, %eax
	cltd
	idivl	4(%rdi)
	movl	%eax, %ecx
	imull	(%rdi), %ecx
	movl	%r9d, %eax
	cltd
	idivl	12(%rdi)
	movl	%eax, %r8d
	imull	8(%rdi), %r8d
	addl	%ecx, %r8d
	movl	%r8d, 4(%rsi)
	movl	$1, %edi
	movl	%r9d, %r10d
	movl	%r8d, %r11d
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_6:                                 ##   in Loop: Header=BB5_4 Depth=1
	incl	%edi
	cmpl	$13, %edi
	je	LBB5_19
LBB5_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r11d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	LBB5_6
## %bb.5:                               ##   in Loop: Header=BB5_4 Depth=1
	movl	%eax, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	cmovel	%ecx, %r11d
	cmovel	%eax, %r10d
	jmp	LBB5_6
LBB5_1:
	xorps	%xmm0, %xmm0
	popq	%rbp
	retq
LBB5_7:
	movl	%r9d, %eax
	cltd
	idivl	4(%rdi)
	movl	%eax, %r8d
	imull	(%rdi), %r8d
	movl	%r9d, %eax
	cltd
	idivl	12(%rdi)
	imull	8(%rdi), %eax
	subl	%eax, %r8d
	movl	%r8d, 4(%rsi)
	movl	$1, %edi
	movl	%r9d, %r10d
	movl	%r8d, %r11d
	jmp	LBB5_8
	.p2align	4, 0x90
LBB5_10:                                ##   in Loop: Header=BB5_8 Depth=1
	incl	%edi
	cmpl	$13, %edi
	je	LBB5_19
LBB5_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r11d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	LBB5_10
## %bb.9:                               ##   in Loop: Header=BB5_8 Depth=1
	movl	%eax, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	cmovel	%ecx, %r11d
	cmovel	%eax, %r10d
	jmp	LBB5_10
LBB5_11:
	movl	8(%rdi), %r8d
	imull	(%rdi), %r8d
	movl	%r8d, 4(%rsi)
	movl	$1, %edi
	movl	%r9d, %r10d
	movl	%r8d, %r11d
	jmp	LBB5_12
	.p2align	4, 0x90
LBB5_14:                                ##   in Loop: Header=BB5_12 Depth=1
	incl	%edi
	cmpl	$13, %edi
	je	LBB5_19
LBB5_12:                                ## =>This Inner Loop Header: Depth=1
	movl	%r11d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	LBB5_14
## %bb.13:                              ##   in Loop: Header=BB5_12 Depth=1
	movl	%eax, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	cmovel	%ecx, %r11d
	cmovel	%eax, %r10d
	jmp	LBB5_14
LBB5_15:
	movl	8(%rdi), %r9d
	imull	4(%rdi), %r9d
	movl	%r9d, (%rsi)
	movl	12(%rdi), %r8d
	imull	(%rdi), %r8d
	movl	%r8d, 4(%rsi)
	movl	$1, %edi
	movl	%r9d, %r10d
	movl	%r8d, %r11d
	jmp	LBB5_16
	.p2align	4, 0x90
LBB5_18:                                ##   in Loop: Header=BB5_16 Depth=1
	incl	%edi
	cmpl	$13, %edi
	je	LBB5_19
LBB5_16:                                ## =>This Inner Loop Header: Depth=1
	movl	%r11d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	LBB5_18
## %bb.17:                              ##   in Loop: Header=BB5_16 Depth=1
	movl	%eax, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	cmovel	%ecx, %r11d
	cmovel	%eax, %r10d
	jmp	LBB5_18
LBB5_19:
	cvtsi2ss	%r9d, %xmm1
	cvtsi2ss	%r8d, %xmm0
	divss	%xmm1, %xmm0
	movl	%r11d, 12(%rsi)
	movl	%r10d, 16(%rsi)
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L5_0_set_3, LBB5_3-LJTI5_0
.set L5_0_set_7, LBB5_7-LJTI5_0
.set L5_0_set_11, LBB5_11-LJTI5_0
.set L5_0_set_15, LBB5_15-LJTI5_0
LJTI5_0:
	.long	L5_0_set_3
	.long	L5_0_set_7
	.long	L5_0_set_11
	.long	L5_0_set_15
	.end_data_region
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
	movq	%rdi, %r10
	movl	40(%rdx), %eax
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	sete	%cl
	addl	%ecx, %ecx
	addl	$43, %ecx
	cmpl	$3, %eax
	movl	$42, %edi
	cmovnel	%ecx, %edi
	cmpl	$4, %eax
	movl	$47, %r8d
	cmovnel	%edi, %r8d
	movl	36(%rdx), %eax
	movl	32(%rdx), %ecx
	movl	24(%rdx), %r11d
	movl	28(%rdx), %r9d
	movl	(%rsi), %r15d
	movl	4(%rsi), %r14d
	movl	12(%rsi), %r12d
	movl	16(%rsi), %ebx
	cvtss2sd	%xmm0, %xmm0
	subq	$8, %rsp
	leaq	L_.str.29(%rip), %rdi
	movq	%r10, %rsi
	movl	%eax, %edx
	movb	$1, %al
	pushq	%rbx
	pushq	%r12
	pushq	%r15
	pushq	%r14
	pushq	%r11
	callq	_libmin_printf
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_avaliatokens                   ## -- Begin function avaliatokens
	.p2align	4, 0x90
_avaliatokens:                          ## @avaliatokens
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
	movl	%edx, -44(%rbp)                 ## 4-byte Spill
	movq	%rsi, -56(%rbp)                 ## 8-byte Spill
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	leaq	L_.str.25(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_4
## %bb.1:
	movq	16(%r15), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_4
## %bb.2:
	movq	16(%r15), %rdi
	leaq	L_.str.27(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_4
## %bb.3:
	movq	16(%r15), %rdi
	leaq	L_.str.28(%rip), %rsi
	callq	_libmin_strcmp
LBB7_4:
	movq	8(%r15), %rdi
	leaq	L_.str.25(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_9
## %bb.5:
	movq	8(%r15), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_9
## %bb.6:
	movq	8(%r15), %rdi
	leaq	L_.str.27(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB7_9
## %bb.7:
	movq	8(%r15), %rdi
	leaq	L_.str.28(%rip), %rsi
	callq	_libmin_strcmp
	cmpl	$4, -44(%rbp)                   ## 4-byte Folded Reload
	jne	LBB7_10
## %bb.8:
	movl	$2, %edi
	testl	%eax, %eax
	je	LBB7_11
	jmp	LBB7_10
LBB7_9:
	movl	$2, %edi
	cmpl	$4, -44(%rbp)                   ## 4-byte Folded Reload
	je	LBB7_11
LBB7_10:
	movl	$1, %edi
	cmpl	$0, -44(%rbp)                   ## 4-byte Folded Reload
	jle	LBB7_25
LBB7_11:
	movl	%edi, -60(%rbp)                 ## 4-byte Spill
	xorl	%r13d, %r13d
	leaq	L_.str.28(%rip), %r12
	xorl	%r14d, %r14d
	jmp	LBB7_12
	.p2align	4, 0x90
LBB7_23:                                ##   in Loop: Header=BB7_12 Depth=1
	incl	%r14d
	cmpl	-44(%rbp), %r14d                ## 4-byte Folded Reload
	jge	LBB7_24
LBB7_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_22 Depth 2
	movq	%r15, %rax
	movslq	%r14d, %r15
	movq	%rax, %rbx
	movq	(%rax,%r15,8), %rdi
	leaq	L_.str.25(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_14
## %bb.13:                              ##   in Loop: Header=BB7_12 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movl	$1, 40(%rax)
	incl	%r14d
	movslq	%r14d, %r15
LBB7_14:                                ##   in Loop: Header=BB7_12 Depth=1
	movq	(%rbx,%r15,8), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_16
## %bb.15:                              ##   in Loop: Header=BB7_12 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movl	$2, 40(%rax)
	incl	%r14d
	movslq	%r14d, %r15
LBB7_16:                                ##   in Loop: Header=BB7_12 Depth=1
	movq	(%rbx,%r15,8), %rdi
	leaq	L_.str.27(%rip), %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_18
## %bb.17:                              ##   in Loop: Header=BB7_12 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movl	$3, 40(%rax)
	incl	%r14d
	movslq	%r14d, %r15
LBB7_18:                                ##   in Loop: Header=BB7_12 Depth=1
	movq	(%rbx,%r15,8), %rdi
	movq	%r12, %rsi
	callq	_libmin_strcmp
	testl	%eax, %eax
	jne	LBB7_20
## %bb.19:                              ##   in Loop: Header=BB7_12 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movl	$4, 40(%rax)
	incl	%r14d
	movslq	%r14d, %r15
LBB7_20:                                ##   in Loop: Header=BB7_12 Depth=1
	movq	(%rbx,%r15,8), %rdi
	movq	%rbx, %r15
	movq	%r12, %rsi
	callq	_libmin_strtok
	testq	%rax, %rax
	je	LBB7_23
## %bb.21:                              ##   in Loop: Header=BB7_12 Depth=1
	movslq	%r13d, %rcx
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
	leaq	(%rdx,%rcx,4), %rbx
	.p2align	4, 0x90
LBB7_22:                                ##   Parent Loop BB7_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdi
	callq	_libmin_atoi
	movl	%eax, (%rbx)
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	_libmin_strtok
	addq	$4, %rbx
	incl	%r13d
	testq	%rax, %rax
	jne	LBB7_22
	jmp	LBB7_23
LBB7_24:
	movl	-60(%rbp), %edi                 ## 4-byte Reload
LBB7_25:
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	movl	-44(%rbp), %edx                 ## 4-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_misto                          ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_misto                          ## -- Begin function misto
	.p2align	4, 0x90
_misto:                                 ## @misto
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$3, %edx
	jne	LBB8_2
## %bb.1:
	movl	(%rsi), %eax
	movl	%eax, 36(%rsi)
	movq	4(%rsi), %rax
	rolq	$32, %rax
	movq	%rax, 28(%rsi)
	movl	12(%rsi), %eax
	jmp	LBB8_8
LBB8_2:
	cmpl	$2, %edi
	je	LBB8_5
## %bb.3:
	cmpl	$1, %edi
	jne	LBB8_6
## %bb.4:
	movl	8(%rsi), %ecx
	movl	12(%rsi), %edx
	movl	(%rsi), %edi
	imull	%ecx, %edi
	addl	4(%rsi), %edi
	movl	%edi, (%rsi)
	movl	%ecx, 4(%rsi)
	movl	%edx, 8(%rsi)
	movl	16(%rsi), %eax
	movl	%eax, 12(%rsi)
	movl	%edi, 36(%rsi)
	movl	%ecx, 32(%rsi)
	movl	%edx, 28(%rsi)
	jmp	LBB8_8
LBB8_5:
	movl	16(%rsi), %eax
	movl	8(%rsi), %ecx
	imull	%eax, %ecx
	addl	12(%rsi), %ecx
	movl	%ecx, 8(%rsi)
	movl	%eax, 12(%rsi)
	movq	(%rsi), %rdx
	rolq	$32, %rdx
	movq	%rdx, 32(%rsi)
	movl	%ecx, 28(%rsi)
	jmp	LBB8_8
LBB8_6:
	cmpl	$5, %edx
	jne	LBB8_9
## %bb.7:
	movl	8(%rsi), %ecx
	movl	(%rsi), %edx
	imull	%ecx, %edx
	addl	4(%rsi), %edx
	movl	20(%rsi), %eax
	movl	%edx, (%rsi)
	movl	%ecx, 4(%rsi)
	movl	12(%rsi), %edi
	imull	%eax, %edi
	addl	16(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	%eax, 12(%rsi)
	movl	%edx, 36(%rsi)
	movl	%ecx, 32(%rsi)
	movl	%edi, 28(%rsi)
LBB8_8:
	movl	%eax, 24(%rsi)
LBB8_9:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_simplifica                     ## -- Begin function simplifica
	.p2align	4, 0x90
_simplifica:                            ## @simplifica
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %r8d
	movl	4(%rdi), %r9d
	movl	$1, %esi
	jmp	LBB9_1
	.p2align	4, 0x90
LBB9_3:                                 ##   in Loop: Header=BB9_1 Depth=1
	incl	%esi
	cmpl	$13, %esi
	je	LBB9_4
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r9d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	LBB9_3
## %bb.2:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	%eax, %ecx
	movl	%r8d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	cmovel	%ecx, %r9d
	cmovel	%eax, %r8d
	jmp	LBB9_3
LBB9_4:
	movl	%r9d, 12(%rdi)
	movl	%r8d, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	___input                        ## @__input
	.p2align	4
___input:
	.ascii	" 3/4 + 6 7/19\n1\n7/19 + 21/7\n0\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"input.h"

	.section	__DATA,__data
	.globl	_input                          ## @input
	.p2align	3
_input:
	.quad	L_.str
	.quad	30                              ## 0x1e
	.quad	___input
	.long	0                               ## 0x0
	.space	4

	.globl	_minput                         ## @minput
	.p2align	3
_minput:
	.quad	_input

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"vhV"

.zerofill __DATA,__bss,_verb,4,2        ## @verb
L_.str.2:                               ## @.str.2
	.asciz	"Type\n\t$man %s\nor\n\t$%s -h\nfor help.\n\n"

L_.str.3:                               ## @.str.3
	.asciz	"Verbose level set at: %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"\nDo you want to do another operation?\nenter 1 for yes\n"

L_.str.5:                               ## @.str.5
	.asciz	"%s - %s\n"

L_.str.6:                               ## @.str.6
	.asciz	"frac"

L_.str.7:                               ## @.str.7
	.asciz	"Fraction Calculator"

L_.str.8:                               ## @.str.8
	.asciz	"\nUsage: %s [-h|-v]\n"

L_.str.9:                               ## @.str.9
	.asciz	"\nOptions:\n"

L_.str.10:                              ## @.str.10
	.asciz	"\t-h,  --help\n\t\tShow this help.\n"

L_.str.11:                              ## @.str.11
	.asciz	"\t-V,  --version\n\t\tShow version and copyright information.\n"

L_.str.12:                              ## @.str.12
	.asciz	"\t-v,  --verbose\n\t\tSet verbose level (cumulative).\n"

L_.str.13:                              ## @.str.13
	.asciz	"\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n"

L_.str.14:                              ## @.str.14
	.asciz	"\nTodo:\n\tLong options not implemented yet.\n"

L_.str.15:                              ## @.str.15
	.asciz	"\nAuthor:\n\tWritten by %s <%s>\n\n"

L_.str.16:                              ## @.str.16
	.asciz	"Iago Gade Gusmao Carrazzoni"

L_.str.17:                              ## @.str.17
	.asciz	"iagocarrazzoni@gmail.com"

L_.str.18:                              ## @.str.18
	.asciz	"%s - Version %s\n"

L_.str.19:                              ## @.str.19
	.asciz	"20180915.214818"

L_.str.20:                              ## @.str.20
	.asciz	"\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n"

L_.str.21:                              ## @.str.21
	.asciz	"copyr(): Verbose: %d\n"

L_.str.22:                              ## @.str.22
	.asciz	"-------------------\n"

L_.str.23:                              ## @.str.23
	.asciz	"FRACTION CALCULATOR\nPlease entry the desired operation:\n(It is necessary to add a space between the fractions, like a/b + c/d)\n-> "

L_.str.24:                              ## @.str.24
	.asciz	" "

L_.str.25:                              ## @.str.25
	.asciz	"+"

L_.str.26:                              ## @.str.26
	.asciz	"-"

L_.str.27:                              ## @.str.27
	.asciz	"*"

L_.str.28:                              ## @.str.28
	.asciz	"/"

L_.str.29:                              ## @.str.29
	.asciz	"\nEXPRESSION: %sFRACTION: %d/%d %c %d/%d\nINTERMEDIATE: %d/%d\nRESULT: %d/%d\nDECIMAL: %.3f\n"

.subsections_via_symbols
