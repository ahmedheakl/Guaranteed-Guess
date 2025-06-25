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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	_rec1(%rip), %rax
	movq	%rax, _Next_Ptr_Glob(%rip)
	leaq	_rec2(%rip), %rcx
	movq	%rcx, _Ptr_Glob(%rip)
	movq	%rax, _rec2(%rip)
	movabsq	$8589934592, %rax               ## imm = 0x200000000
	movq	%rax, _rec2+8(%rip)
	movl	$40, _rec2+16(%rip)
	leaq	_rec2+20(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_libmin_strcpy
	leaq	L_.str.1(%rip), %rsi
	leaq	-80(%rbp), %rdi
	callq	_libmin_strcpy
	movl	$10, _Arr_2_Glob.0(%rip)
	leaq	L_.str.2(%rip), %rbx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.4(%rip), %rdi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %r14d
	leaq	-112(%rbp), %r12
	movl	$66, %r15d
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$3, %eax
	movl	$1, %ebx
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	incl	%r14d
	cmpl	$11, %r14d
	je	LBB0_22
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_16 Depth 2
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	movb	$65, (%rax)
	movl	$1, _Bool_Glob(%rip)
	movb	$1, _Ch_2_Glob(%rip)
	movq	%r12, %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	_libmin_strcpy
	movb	-78(%rbp), %al
	cmpb	-109(%rbp), %al
	je	LBB0_2
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-80(%rbp), %rdi
	movq	%r12, %rsi
	callq	_libmin_strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setle	%cl
	movl	%ecx, _Bool_Glob(%rip)
	movb	$1, _Arr_1_Glob.0(%rip)
	incl	_Arr_2_Glob.0(%rip)
	movq	_Int_Glob@GOTPCREL(%rip), %rsi
	movl	$5, (%rsi)
	movq	_Ptr_Glob(%rip), %rcx
	movq	_rec2(%rip), %rax
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm1, 16(%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm0, (%rax)
	movl	$5, 16(%rax)
	movq	_rec2(%rip), %rdx
	movq	%rdx, (%rax)
	movq	_rec2(%rip), %rdx
	movq	%rdx, (%rax)
	movl	(%rsi), %edx
	leal	12(%rdx), %esi
	movl	%esi, _rec2+16(%rip)
	cmpl	$0, 8(%rax)
	je	LBB0_5
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	_rec2(%rip), %rax
	movq	48(%rax), %rdx
	movq	%rdx, 48(%rcx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	cmpb	$1, _Ch_2_Glob(%rip)
	jne	LBB0_14
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$6, 16(%rax)
	movl	_rec2+12(%rip), %ecx
	xorl	%esi, %esi
	cmpq	$2, %rcx
	sete	%sil
	xorl	$3, %esi
	movl	%esi, 12(%rax)
	cmpq	$4, %rcx
	ja	LBB0_11
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	LJTI0_0(%rip), %rdi
	movslq	(%rdi,%rcx,4), %rsi
	addq	%rdi, %rsi
	jmpq	*%rsi
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
	cmpl	$101, %edx
	setl	%cl
	leal	(%rcx,%rcx,2), %ecx
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, %ecx
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$2, %ecx
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	%ecx, 12(%rax)
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	_rec2(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$18, 16(%rax)
	cmpb	$1, _Ch_2_Glob(%rip)
	jne	LBB0_14
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, %ebx
	movl	$3, %eax
	movb	$1, %cl
	movb	$66, %r13b
	jmp	LBB0_16
	.p2align	4, 0x90
LBB0_20:                                ##   in Loop: Header=BB0_16 Depth=2
	movsbl	%r13b, %edx
	testb	$1, %cl
	movl	$0, %esi
	cmovnel	%r15d, %esi
	incb	%r13b
	cmpl	%edx, %esi
	jl	LBB0_21
LBB0_16:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	cmpb	$68, %r13b
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=2
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rdx
	movb	$67, (%rdx)
	movl	$1, %edx
LBB0_18:                                ##   in Loop: Header=BB0_16 Depth=2
	cmpl	%edx, %ebx
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_16 Depth=2
	movq	%r12, %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	_libmin_strcpy
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	%r14d, (%rax)
	xorl	%ebx, %ebx
	movzbl	_Ch_2_Glob(%rip), %ecx
	movl	%r14d, %eax
	jmp	LBB0_20
LBB0_2:
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	jmp	LBB0_3
LBB0_22:
	leal	(%rax,%rax,2), %ecx
	movslq	%ecx, %rcx
	imulq	$-1840700269, %rcx, %rdx        ## imm = 0x92492493
	shrq	$32, %rdx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$2, %ecx
	addl	%edx, %ecx
	leal	(%rax,%rax,4), %edx
	leal	(%rax,%rdx,4), %eax
	subl	%ecx, %eax
	addl	$-49, %eax
	movl	%eax, -116(%rbp)                ## 4-byte Spill
	movl	%ecx, %r13d
	movq	_Int_Glob@GOTPCREL(%rip), %r12
	subl	(%r12), %r13d
	addl	$9, %r13d
	movq	_Ch_1_Glob@GOTPCREL(%rip), %r15
	cmpb	$65, (%r15)
	cmovnel	%ecx, %r13d
	leaq	L_.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.8(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	(%r12), %esi
	leaq	L_.str.9(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.10(%rip), %r12
	movq	%r12, %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_Bool_Glob(%rip), %esi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	(%r15), %esi
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.13(%rip), %r14
	movq	%r14, %rdi
	movl	$65, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpb	$0, _Ch_2_Glob(%rip)
	movl	$66, %eax
	movl	$0, %esi
	cmovnel	%eax, %esi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r14, %rdi
	movl	$66, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpb	$0, _Arr_1_Glob.0(%rip)
	movl	$7, %eax
	movl	$0, %esi
	cmovnel	%eax, %esi
	leaq	L_.str.15(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_Arr_2_Glob.0(%rip), %esi
	leaq	L_.str.16(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.17(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.19(%rip), %r15
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.20(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec2+8(%rip), %esi
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec2+12(%rip), %esi
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec2+16(%rip), %esi
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$17, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_Ptr_Glob(%rip), %rsi
	addq	$20, %rsi
	leaq	L_.str.24(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.25(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.26(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.27(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec1+8(%rip), %esi
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec1+12(%rip), %esi
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_rec1+16(%rip), %esi
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$18, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_Next_Ptr_Glob(%rip), %rsi
	addq	$20, %rsi
	leaq	L_.str.24(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.28(%rip), %rdi
	movl	%r13d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.29(%rip), %rdi
	movl	-116(%rbp), %esi                ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$13, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.30(%rip), %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.31(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.32(%rip), %rdi
	leaq	-80(%rbp), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.33(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.34(%rip), %rdi
	leaq	-112(%rbp), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.35(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_24
## %bb.23:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_24:
	callq	___stack_chk_fail
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_10, LBB0_10-LJTI0_0
.set L0_0_set_7, LBB0_7-LJTI0_0
.set L0_0_set_8, LBB0_8-LJTI0_0
.set L0_0_set_11, LBB0_11-LJTI0_0
.set L0_0_set_9, LBB0_9-LJTI0_0
LJTI0_0:
	.long	L0_0_set_10
	.long	L0_0_set_7
	.long	L0_0_set_8
	.long	L0_0_set_11
	.long	L0_0_set_9
	.end_data_region
                                        ## -- End function
	.globl	_PFunc_2                        ## -- Begin function PFunc_2
	.p2align	4, 0x90
_PFunc_2:                               ## @PFunc_2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	2(%rdi), %al
	cmpb	3(%rsi), %al
	jne	LBB1_3
## %bb.1:
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rcx
	movb	%al, (%rcx)
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	jmp	LBB1_2
LBB1_3:
	callq	_libmin_strcmp
	testl	%eax, %eax
	jle	LBB1_4
## %bb.5:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	$10, (%rax)
	movl	$1, %eax
	popq	%rbp
	retq
LBB1_4:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_PProc_7                        ## -- Begin function PProc_7
	.p2align	4, 0x90
_PProc_7:                               ## @PProc_7
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $esi killed $esi def $rsi
                                        ## kill: def $edi killed $edi def $rdi
	leal	(%rdi,%rsi), %eax
	addl	$2, %eax
	movl	%eax, (%rdx)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_PProc_8                        ## -- Begin function PProc_8
	.p2align	4, 0x90
_PProc_8:                               ## @PProc_8
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edx, %rax
	leaq	5(%rax), %r8
	leal	5(%rax), %edx
	movl	%ecx, 20(%rdi,%rax,4)
	movl	%ecx, 24(%rdi,%rax,4)
	movl	%edx, 140(%rdi,%rax,4)
	imulq	$200, %r8, %rcx
	addq	%rsi, %rcx
	movl	%edx, 20(%rcx,%rax,4)
	movl	%edx, 24(%rcx,%rax,4)
	incl	16(%rcx,%rax,4)
	movl	20(%rdi,%rax,4), %ecx
	leal	25(%rax), %edx
	movslq	%edx, %rdx
	imulq	$200, %rdx, %rdx
	addq	%rsi, %rdx
	movl	%ecx, 20(%rdx,%rax,4)
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	$5, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_PFunc_1                        ## -- Begin function PFunc_1
	.p2align	4, 0x90
_PFunc_1:                               ## @PFunc_1
	.cfi_startproc
## %bb.0:
	xorl	%eax, %eax
	cmpb	%sil, %dil
	jne	LBB4_2
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	movb	%dil, (%rax)
	movl	$1, %eax
	popq	%rbp
LBB4_2:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_PProc_6                        ## -- Begin function PProc_6
	.p2align	4, 0x90
_PProc_6:                               ## @PProc_6
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	xorl	$3, %eax
	movl	%eax, (%rsi)
	cmpl	$4, %edi
	ja	LBB5_6
## %bb.1:
	movl	%edi, %eax
	leaq	LJTI5_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB5_2:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	cmpl	$101, (%rax)
	setl	%cl
	leal	(%rcx,%rcx,2), %edi
	jmp	LBB5_5
LBB5_3:
	movl	$1, %edi
	jmp	LBB5_5
LBB5_4:
	movl	$2, %edi
LBB5_5:
	movl	%edi, (%rsi)
LBB5_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L5_0_set_5, LBB5_5-LJTI5_0
.set L5_0_set_2, LBB5_2-LJTI5_0
.set L5_0_set_3, LBB5_3-LJTI5_0
.set L5_0_set_6, LBB5_6-LJTI5_0
.set L5_0_set_4, LBB5_4-LJTI5_0
LJTI5_0:
	.long	L5_0_set_5
	.long	L5_0_set_2
	.long	L5_0_set_3
	.long	L5_0_set_6
	.long	L5_0_set_4
	.end_data_region
                                        ## -- End function
	.globl	_PFunc_3                        ## -- Begin function PFunc_3
	.p2align	4, 0x90
_PFunc_3:                               ## @PFunc_3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_rec1,56,3       ## @rec1
.zerofill __DATA,__bss,_Next_Ptr_Glob,8,3 ## @Next_Ptr_Glob
.zerofill __DATA,__bss,_rec2,56,3       ## @rec2
.zerofill __DATA,__bss,_Ptr_Glob,8,3    ## @Ptr_Glob
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"

L_.str.1:                               ## @.str.1
	.asciz	"DHRYSTONE PROGRAM, 1'ST STRING"

.zerofill __DATA,__bss,_Arr_2_Glob.0,4,4 ## @Arr_2_Glob.0
L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"

L_.str.4:                               ## @.str.4
	.asciz	"Execution starts, %d runs through Dhrystone\n"

L_.str.5:                               ## @.str.5
	.asciz	"DHRYSTONE PROGRAM, 2'ND STRING"

.zerofill __DATA,__bss,_Bool_Glob,4,2   ## @Bool_Glob
.zerofill __DATA,__bss,_Arr_1_Glob.0,1,4 ## @Arr_1_Glob.0
.zerofill __DATA,__bss,_Ch_2_Glob,1,0   ## @Ch_2_Glob
L_.str.6:                               ## @.str.6
	.asciz	"DHRYSTONE PROGRAM, 3'RD STRING"

	.comm	_Int_Glob,4,2                   ## @Int_Glob
L_.str.7:                               ## @.str.7
	.asciz	"Execution ends\n"

L_.str.8:                               ## @.str.8
	.asciz	"Final values of the variables used in the benchmark:\n"

L_.str.9:                               ## @.str.9
	.asciz	"Int_Glob:            %d\n"

L_.str.10:                              ## @.str.10
	.asciz	"        should be:   %d\n"

L_.str.11:                              ## @.str.11
	.asciz	"Bool_Glob:           %d\n"

L_.str.12:                              ## @.str.12
	.asciz	"Ch_1_Glob:           %c\n"

	.comm	_Ch_1_Glob,1,0                  ## @Ch_1_Glob
L_.str.13:                              ## @.str.13
	.asciz	"        should be:   %c\n"

L_.str.14:                              ## @.str.14
	.asciz	"Ch_2_Glob:           %c\n"

L_.str.15:                              ## @.str.15
	.asciz	"Arr_1_Glob[8]:       %d\n"

L_.str.16:                              ## @.str.16
	.asciz	"Arr_2_Glob[8][7]:    %d\n"

L_.str.17:                              ## @.str.17
	.asciz	"        should be:   Pnumber_of_runs + 10\n"

L_.str.18:                              ## @.str.18
	.asciz	"Ptr_Glob->\n"

L_.str.19:                              ## @.str.19
	.asciz	"  Ptr_Comp:          (implementation-dependent)\n"

L_.str.20:                              ## @.str.20
	.asciz	"        should be:   (implementation-dependent)\n"

L_.str.21:                              ## @.str.21
	.asciz	"  Discr:             %d\n"

L_.str.22:                              ## @.str.22
	.asciz	"  Enum_Comp:         %d\n"

L_.str.23:                              ## @.str.23
	.asciz	"  Int_Comp:          %d\n"

L_.str.24:                              ## @.str.24
	.asciz	"  Str_Comp:          %s\n"

L_.str.25:                              ## @.str.25
	.asciz	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"

L_.str.26:                              ## @.str.26
	.asciz	"Next_Ptr_Glob->\n"

L_.str.27:                              ## @.str.27
	.asciz	"        should be:   (implementation-dependent), same as above\n"

L_.str.28:                              ## @.str.28
	.asciz	"Int_1_Loc:           %d\n"

L_.str.29:                              ## @.str.29
	.asciz	"Int_2_Loc:           %d\n"

L_.str.30:                              ## @.str.30
	.asciz	"Int_3_Loc:           %d\n"

L_.str.31:                              ## @.str.31
	.asciz	"Enum_Loc:            %d\n"

L_.str.32:                              ## @.str.32
	.asciz	"Str_1_Loc:           %s\n"

L_.str.33:                              ## @.str.33
	.asciz	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"

L_.str.34:                              ## @.str.34
	.asciz	"Str_2_Loc:           %s\n"

L_.str.35:                              ## @.str.35
	.asciz	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"

	.comm	_Pnumber_of_runs,4,2            ## @Pnumber_of_runs
.subsections_via_symbols
