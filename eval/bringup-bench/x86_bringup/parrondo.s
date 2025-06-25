	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function cointoss
LCPI0_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_cointoss
	.p2align	4, 0x90
_cointoss:                              ## @cointoss
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI0_0(%rip), %xmm0
	xorl	%eax, %eax
	ucomisd	-8(%rbp), %xmm0                 ## 8-byte Folded Reload
	setb	%al
	addl	%eax, %eax
	decl	%eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function play_s
LCPI1_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI1_1:
	.quad	0x3fdfae147ae147ae              ## double 0.495
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_play_s
	.p2align	4, 0x90
_play_s:                                ## @play_s
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_libmin_rand
	movl	%eax, %eax
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI1_0(%rip), %xmm0
	xorl	%eax, %eax
	ucomisd	LCPI1_1(%rip), %xmm0
	setb	%al
	addl	%eax, %eax
	decl	%eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function play_c
LCPI2_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
	.section	__TEXT,__literal16,16byte_literals
	.p2align	3
LCPI2_1:
	.quad	0x3fe7d70a3d70a3d7              ## double 0.745
	.quad	0x3fb851eb851eb852              ## double 0.095000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_play_c
	.p2align	4, 0x90
_play_c:                                ## @play_c
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
	imull	$-1431655765, %edi, %eax        ## imm = 0xAAAAAAAB
	addl	$715827882, %eax                ## imm = 0x2AAAAAAA
	xorl	%ebx, %ebx
	cmpl	$1431655765, %eax               ## imm = 0x55555555
	setb	%bl
	callq	_libmin_rand
	movl	%eax, %eax
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI2_0(%rip), %xmm0
	leaq	LCPI2_1(%rip), %rax
	xorl	%ecx, %ecx
	ucomisd	(%rax,%rbx,8), %xmm0
	setb	%cl
	leal	(%rcx,%rcx), %eax
	decl	%eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI3_0:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI3_1:
	.quad	0x3ff0000000000000              ## double 1
LCPI3_2:
	.quad	0x41dfffffffc00000              ## double 2147483647
LCPI3_3:
	.quad	0x3fdfae147ae147ae              ## double 0.495
LCPI3_5:
	.quad	0x4059000000000000              ## double 100
	.section	__TEXT,__literal16,16byte_literals
	.p2align	3
LCPI3_4:
	.quad	0x3fe7d70a3d70a3d7              ## double 0.745
	.quad	0x3fb851eb851eb852              ## double 0.095000000000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	movl	_argc(%rip), %eax
	cmpl	$2, %eax
	jl	LBB3_1
## %bb.2:
	movl	$1000, -84(%rbp)                ## 4-byte Folded Spill
                                        ## imm = 0x3E8
	movl	$50, -104(%rbp)                 ## 4-byte Folded Spill
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)                ## 8-byte Spill
	movl	$1, %r14d
	leaq	_argv(%rip), %rdx
	leaq	LJTI3_0(%rip), %r13
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	jmp	LBB3_3
LBB3_1:
	movl	$1000, -84(%rbp)                ## 4-byte Folded Spill
                                        ## imm = 0x3E8
	movl	$50, -104(%rbp)                 ## 4-byte Folded Spill
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)                ## 8-byte Spill
	jmp	LBB3_27
LBB3_22:                                ##   in Loop: Header=BB3_3 Depth=1
	movsd	LCPI3_1(%rip), %xmm0            ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB3_23:                                ##   in Loop: Header=BB3_3 Depth=1
	movsd	%xmm0, -96(%rbp)                ## 8-byte Spill
LBB3_24:                                ##   in Loop: Header=BB3_3 Depth=1
	leal	1(%r12), %r14d
LBB3_25:                                ##   in Loop: Header=BB3_3 Depth=1
	movl	_argc(%rip), %eax
	cmpl	%eax, %r14d
	jge	LBB3_26
LBB3_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
	movslq	%r12d, %rbx
	leal	3(%rbx), %ecx
	addq	$2, %rbx
	movl	%r14d, %r12d
	jmp	LBB3_4
	.p2align	4, 0x90
LBB3_9:                                 ##   in Loop: Header=BB3_4 Depth=2
	movq	(%rdx,%rbx,8), %rdi
	callq	_libmin_atol
	movq	%rax, %r15
	movslq	_argc(%rip), %rax
	leal	2(%r14), %ecx
	leaq	2(%rbx), %rdx
	incq	%rbx
	movl	%r14d, %r12d
	cmpq	%rax, %rbx
	movq	%rdx, %rbx
	leaq	_argv(%rip), %rdx
	jge	LBB3_26
LBB3_4:                                 ##   Parent Loop BB3_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r14d
	movslq	%r12d, %rcx
	movq	(%rdx,%rcx,8), %rsi
	cmpb	$45, (%rsi)
	jne	LBB3_21
## %bb.5:                               ##   in Loop: Header=BB3_4 Depth=2
	movsbl	1(%rsi), %ecx
	addl	$-49, %ecx
	cmpl	$69, %ecx
	ja	LBB3_19
## %bb.6:                               ##   in Loop: Header=BB3_4 Depth=2
	movslq	(%r13,%rcx,4), %rcx
	addq	%r13, %rcx
	jmpq	*%rcx
LBB3_7:                                 ##   in Loop: Header=BB3_4 Depth=2
	cltq
	cmpq	%rax, %rbx
	jl	LBB3_9
## %bb.8:                               ##   in Loop: Header=BB3_4 Depth=2
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	leaq	_argv(%rip), %rdx
	jmp	LBB3_9
LBB3_21:                                ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	jmp	LBB3_20
LBB3_13:                                ##   in Loop: Header=BB3_3 Depth=1
	leal	-1(%r14), %r12d
	cmpl	%eax, %r12d
	jl	LBB3_15
## %bb.14:                              ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	leaq	_argv(%rip), %rdx
LBB3_15:                                ##   in Loop: Header=BB3_3 Depth=1
	movslq	%r12d, %rax
	movq	(%rdx,%rax,8), %rdi
	callq	_libmin_atoi
	leaq	_argv(%rip), %rdx
	movl	%eax, -104(%rbp)                ## 4-byte Spill
	jmp	LBB3_25
LBB3_10:                                ##   in Loop: Header=BB3_3 Depth=1
	leal	-1(%r14), %r12d
	cmpl	%eax, %r12d
	jl	LBB3_12
## %bb.11:                              ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	leaq	_argv(%rip), %rdx
LBB3_12:                                ##   in Loop: Header=BB3_3 Depth=1
	movslq	%r12d, %rax
	movq	(%rdx,%rax,8), %rdi
	callq	_libmin_atoi
	leaq	_argv(%rip), %rdx
	movl	%eax, -84(%rbp)                 ## 4-byte Spill
	jmp	LBB3_25
LBB3_16:                                ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.8(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
LBB3_17:                                ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	leaq	_argv(%rip), %rdx
LBB3_18:                                ##   in Loop: Header=BB3_3 Depth=1
	xorpd	%xmm0, %xmm0
	jmp	LBB3_23
LBB3_19:                                ##   in Loop: Header=BB3_3 Depth=1
	leaq	L_.str.10(%rip), %rdi
LBB3_20:                                ##   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	leaq	_argv(%rip), %rdx
	jmp	LBB3_24
LBB3_26:
	testq	%r15, %r15
	jne	LBB3_28
LBB3_27:
	leaq	L_.str.11(%rip), %rdi
	movl	$3445, %esi                     ## imm = 0xD75
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$3445, %r15d                    ## imm = 0xD75
LBB3_28:
	movl	%r15d, %edi
	callq	_libmin_srand
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	leaq	L_.str.12(%rip), %rdi
	xorl	%r14d, %r14d
	movl	-84(%rbp), %ebx                 ## 4-byte Reload
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%ebx, %ebx
	jle	LBB3_29
## %bb.30:
	movl	-104(%rbp), %ebx                ## 4-byte Reload
	movl	%ebx, %r14d
	negl	%r14d
	xorpd	%xmm1, %xmm1
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	LBB3_31
	.p2align	4, 0x90
LBB3_39:                                ##   in Loop: Header=BB3_31 Depth=1
	xorl	%eax, %eax
	cmpl	%ebx, %r13d
	setne	%cl
	sete	%al
	cmpl	%r14d, %r13d
	sete	%dl
	movq	-112(%rbp), %rsi                ## 8-byte Reload
	addl	%eax, %esi
	andb	%cl, %dl
	movzbl	%dl, %eax
	movq	-120(%rbp), %rdx                ## 8-byte Reload
	addl	%eax, %edx
	movl	-132(%rbp), %eax                ## 4-byte Reload
	incl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12, %xmm0
	addsd	%xmm0, %xmm1
	cmpl	-84(%rbp), %eax                 ## 4-byte Folded Reload
	je	LBB3_40
LBB3_31:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_32 Depth 2
	movl	%eax, -132(%rbp)                ## 4-byte Spill
	movq	%rsi, -112(%rbp)                ## 8-byte Spill
	movq	%rdx, -120(%rbp)                ## 8-byte Spill
	movsd	%xmm1, -128(%rbp)               ## 8-byte Spill
	callq	_libmin_rand
	movl	%eax, %edi
	callq	_libmin_srand
	movl	$1, %r12d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
LBB3_32:                                ##   Parent Loop BB3_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movsd	LCPI3_2(%rip), %xmm1            ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	ucomisd	-96(%rbp), %xmm0                ## 8-byte Folded Reload
	jae	LBB3_34
## %bb.33:                              ##   in Loop: Header=BB3_32 Depth=2
	imull	$-1431655765, %r13d, %eax       ## imm = 0xAAAAAAAB
	addl	$715827882, %eax                ## imm = 0x2AAAAAAA
	xorl	%r15d, %r15d
	cmpl	$1431655765, %eax               ## imm = 0x55555555
	setb	%r15b
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI3_2(%rip), %xmm0
	leaq	LCPI3_4(%rip), %rax
	ucomisd	(%rax,%r15,8), %xmm0
	movl	-104(%rbp), %ebx                ## 4-byte Reload
	jmp	LBB3_35
	.p2align	4, 0x90
LBB3_34:                                ##   in Loop: Header=BB3_32 Depth=2
	callq	_libmin_rand
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI3_2(%rip), %xmm0
	ucomisd	LCPI3_3(%rip), %xmm0
LBB3_35:                                ##   in Loop: Header=BB3_32 Depth=2
	setae	%al
	xorb	$1, %al
	movzbl	%al, %eax
	leal	-1(%r13,%rax,2), %r13d
	cmpl	%ebx, %r13d
	movsd	-128(%rbp), %xmm1               ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	jge	LBB3_39
## %bb.36:                              ##   in Loop: Header=BB3_32 Depth=2
	cmpl	%r14d, %r13d
	jle	LBB3_39
## %bb.37:                              ##   in Loop: Header=BB3_32 Depth=2
	movl	%r13d, %eax
	negl	%eax
	cmovsl	%r13d, %eax
	movq	%rax, %rcx
	movl	$2863311531, %edx               ## imm = 0xAAAAAAAB
	imulq	%rdx, %rcx
	shrq	$33, %rcx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	incq	-80(%rbp,%rax,8)
	incq	%r12
	cmpq	$1000001, %r12                  ## imm = 0xF4241
	jne	LBB3_32
## %bb.38:                              ##   in Loop: Header=BB3_31 Depth=1
	movl	$1000001, %r12d                 ## imm = 0xF4241
	movsd	-128(%rbp), %xmm1               ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	jmp	LBB3_39
LBB3_40:
	cvtsi2sdq	-80(%rbp), %xmm2
	movsd	LCPI3_5(%rip), %xmm0            ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -96(%rbp)                ## 8-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sdq	-72(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%rbp)               ## 8-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sdq	-64(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -120(%rbp)               ## 8-byte Spill
	movl	-84(%rbp), %r14d                ## 4-byte Reload
	jmp	LBB3_41
LBB3_29:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)               ## 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)               ## 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)                ## 8-byte Spill
	xorpd	%xmm1, %xmm1
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	-104(%rbp), %ebx                ## 4-byte Reload
LBB3_41:
	movsd	%xmm1, -128(%rbp)               ## 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)               ## 8-byte Spill
	subl	%esi, %r14d
	subl	%edx, %r14d
	leaq	L_.str.13(%rip), %rdi
                                        ## kill: def $esi killed $esi killed $rsi
                                        ## kill: def $edx killed $edx killed $rdx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.14(%rip), %rdi
	movl	$1000000, %ecx                  ## imm = 0xF4240
	movl	%ebx, %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.15(%rip), %rdi
	movsd	-104(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_libmin_printf
	movsd	-96(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm2               ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	-112(%rbp), %xmm1               ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	movapd	%xmm2, %xmm3
	movsd	-120(%rbp), %xmm2               ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	divsd	%xmm3, %xmm2
	leaq	L_.str.16(%rip), %rdi
	movb	$3, %al
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB3_43
## %bb.42:
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_43:
	callq	___stack_chk_fail
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L3_0_set_18, LBB3_18-LJTI3_0
.set L3_0_set_22, LBB3_22-LJTI3_0
.set L3_0_set_19, LBB3_19-LJTI3_0
.set L3_0_set_17, LBB3_17-LJTI3_0
.set L3_0_set_13, LBB3_13-LJTI3_0
.set L3_0_set_7, LBB3_7-LJTI3_0
.set L3_0_set_10, LBB3_10-LJTI3_0
.set L3_0_set_16, LBB3_16-LJTI3_0
LJTI3_0:
	.long	L3_0_set_18
	.long	L3_0_set_22
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_17
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_17
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_13
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_7
	.long	L3_0_set_10
	.long	L3_0_set_19
	.long	L3_0_set_16
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_17
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_13
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_19
	.long	L3_0_set_7
	.long	L3_0_set_10
	.long	L3_0_set_19
	.long	L3_0_set_16
	.end_data_region
                                        ## -- End function
	.section	__DATA,__data
	.globl	_argc                           ## @argc
	.p2align	2
_argc:
	.long	6                               ## 0x6

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"parrondo"

L_.str.1:                               ## @.str.1
	.asciz	"-2"

L_.str.2:                               ## @.str.2
	.asciz	"-t"

L_.str.3:                               ## @.str.3
	.asciz	"10"

L_.str.4:                               ## @.str.4
	.asciz	"-S"

L_.str.5:                               ## @.str.5
	.asciz	"1"

	.section	__DATA,__data
	.globl	_argv                           ## @argv
	.p2align	4
_argv:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"%s\n"

L_.str.7:                               ## @.str.7
	.asciz	"parrondo [ -s number -t number -m number -1 -2 -h -v]"

L_.str.8:                               ## @.str.8
	.asciz	"1.1"

L_.str.9:                               ## @.str.9
	.asciz	"parrondo [ -s number -t number -m number -1 -2 ]\n\nPrint information on simulations of Parrondo's paradoxical game.\n\n-s: Use next argument as RNG seed. (otherwise use system time as seed.)\n-t: Use next argument as number of trials. Default 10000.\n-m: Use number as max fortune (win), -number as min fortune(loss). Default 50. \n-v: Print version number and exit. \n-h: Print this helpful information. \n-1: Simulate simple game alone.\n-2: Simulate complex game alone.\n\n"

L_.str.10:                              ## @.str.10
	.asciz	"parrondo: unkown option %s\n"

L_.str.11:                              ## @.str.11
	.asciz	"Using seed = %d\n"

L_.str.12:                              ## @.str.12
	.asciz	"Simulating %d trials ...\n"

L_.str.13:                              ## @.str.13
	.asciz	"%d wins, %d losses, %d draws\n"

L_.str.14:                              ## @.str.14
	.asciz	"(Win/loss = %d/-%d, draw = no win/loss in %ld plays.)\n"

L_.str.15:                              ## @.str.15
	.asciz	"Average trial length = %lf\n"

L_.str.16:                              ## @.str.16
	.asciz	"Site occupancy: 0 mod 3: %lf%%, 1 mod 3: %lf%%, 2 mod 3: %lf%%\n"

.subsections_via_symbols
