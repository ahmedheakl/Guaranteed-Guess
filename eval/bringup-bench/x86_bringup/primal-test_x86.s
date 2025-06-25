	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_get_random_int                 ## -- Begin function get_random_int
	.p2align	4, 0x90
_get_random_int:                        ## @get_random_int
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_libmin_rand
	movl	%eax, %eax
	subq	%r14, %rbx
	incq	%rbx
	cmpq	%rbx, %rax
	jb	LBB0_2
## %bb.1:
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %eax
LBB0_2:
	addq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_split_int                      ## -- Begin function split_int
	.p2align	4, 0x90
_split_int:                             ## @split_int
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	decq	%rdx
	movq	%rdx, (%rsi)
	testb	$1, %dl
	jne	LBB1_2
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	incq	(%rdi)
	movq	(%rsi), %rax
	movq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, (%rsi)
	testb	$2, %al
	je	LBB1_1
LBB1_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_miller_rabin_int               ## -- Begin function miller_rabin_int
	.p2align	4, 0x90
_miller_rabin_int:                      ## @miller_rabin_int
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
                                        ## kill: def $edi killed $edi def $rdi
	testb	$1, %dil
	jne	LBB2_2
## %bb.1:
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	jmp	LBB2_34
LBB2_2:
	movl	$1, %eax
	cmpl	$3, %edi
	je	LBB2_34
## %bb.3:
	xorl	%eax, %eax
	cmpl	$3, %edi
	jb	LBB2_34
## %bb.4:
	movl	%edi, %ebx
	leaq	-1(%rbx), %r13
	xorl	%r14d, %r14d
	testb	$1, %r13b
	jne	LBB2_7
## %bb.5:
	movq	%r13, %rax
	.p2align	4, 0x90
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	incq	%r14
	shrq	%r13
	testb	$2, %al
	movq	%r13, %rax
	je	LBB2_6
LBB2_7:
	movl	$2, %eax
	testl	%esi, %esi
	je	LBB2_34
## %bb.8:
	leal	-1(%rdi), %r12d
	addl	$-2, %edi
	decq	%rdi
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	xorl	%r15d, %r15d
	movl	%esi, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB2_11
LBB2_9:                                 ##   in Loop: Header=BB2_11 Depth=1
	cmpq	%r12, %rcx
	jne	LBB2_32
LBB2_10:                                ##   in Loop: Header=BB2_11 Depth=1
	incl	%r15d
	movl	-44(%rbp), %esi                 ## 4-byte Reload
	cmpl	%esi, %r15d
	je	LBB2_33
LBB2_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_19 Depth 2
                                        ##     Child Loop BB2_27 Depth 2
	callq	_libmin_rand
	testq	%r13, %r13
	je	LBB2_10
## %bb.12:                              ##   in Loop: Header=BB2_11 Depth=1
	movl	%eax, %esi
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	cmpq	%rcx, %rsi
	jb	LBB2_14
## %bb.13:                              ##   in Loop: Header=BB2_11 Depth=1
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %esi
LBB2_14:                                ##   in Loop: Header=BB2_11 Depth=1
	addq	$2, %rsi
	movl	$1, %ecx
	movq	%r13, %rdi
	jmp	LBB2_19
	.p2align	4, 0x90
LBB2_15:                                ##   in Loop: Header=BB2_19 Depth=2
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %rcx
LBB2_16:                                ##   in Loop: Header=BB2_19 Depth=2
	imulq	%rsi, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	je	LBB2_22
## %bb.17:                              ##   in Loop: Header=BB2_19 Depth=2
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %rsi
LBB2_18:                                ##   in Loop: Header=BB2_19 Depth=2
	movq	%rdi, %rax
	shrq	%rax
	cmpq	$1, %rdi
	movq	%rax, %rdi
	jbe	LBB2_23
LBB2_19:                                ##   Parent Loop BB2_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testb	$1, %dil
	je	LBB2_16
## %bb.20:                              ##   in Loop: Header=BB2_19 Depth=2
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	jne	LBB2_15
## %bb.21:                              ##   in Loop: Header=BB2_19 Depth=2
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %ecx
	jmp	LBB2_16
	.p2align	4, 0x90
LBB2_22:                                ##   in Loop: Header=BB2_19 Depth=2
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %esi
	jmp	LBB2_18
	.p2align	4, 0x90
LBB2_23:                                ##   in Loop: Header=BB2_11 Depth=1
	cmpq	$1, %rcx
	je	LBB2_10
## %bb.24:                              ##   in Loop: Header=BB2_11 Depth=1
	cmpq	%r12, %rcx
	je	LBB2_10
## %bb.25:                              ##   in Loop: Header=BB2_11 Depth=1
	testq	%r14, %r14
	je	LBB2_9
## %bb.26:                              ##   in Loop: Header=BB2_11 Depth=1
	movl	$2, %esi
	.p2align	4, 0x90
LBB2_27:                                ##   Parent Loop BB2_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	je	LBB2_29
## %bb.28:                              ##   in Loop: Header=BB2_27 Depth=2
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %rcx
	cmpq	$1, %rcx
	jne	LBB2_30
	jmp	LBB2_32
	.p2align	4, 0x90
LBB2_29:                                ##   in Loop: Header=BB2_27 Depth=2
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%edx, %ecx
	cmpq	$1, %rcx
	je	LBB2_32
LBB2_30:                                ##   in Loop: Header=BB2_27 Depth=2
	cmpq	%r12, %rcx
	je	LBB2_9
## %bb.31:                              ##   in Loop: Header=BB2_27 Depth=2
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	movq	%rax, %rsi
	jbe	LBB2_27
	jmp	LBB2_9
LBB2_32:
	xorl	%eax, %eax
	jmp	LBB2_34
LBB2_33:
	movl	$2, %eax
LBB2_34:
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
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI3_0:
	.quad	0x4010000000000000              ## double 4
LCPI3_1:
	.quad	0x4030000000000000              ## double 16
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$42, %edi
	callq	_libmin_srand
	movl	$3, %r14d
	movl	$200, %ebx
	movq	_q@GOTPCREL(%rip), %r12
	jmp	LBB3_1
	.p2align	4, 0x90
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	callq	_libmin_rand
	movl	%eax, %r14d
	decl	%ebx
	je	LBB3_5
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r14d, %edi
	movl	$16, %esi
	callq	_miller_rabin_int
	testl	%eax, %eax
	je	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	_q_head(%rip), %rcx
	movl	%r14d, (%r12,%rcx,8)
	movl	%eax, 4(%r12,%rcx,8)
	cmpq	$62, %rcx
	jg	LBB3_4
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	incl	%ecx
	movl	%ecx, _q_head(%rip)
	jmp	LBB3_4
LBB3_5:
	movl	_q_head(%rip), %esi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpl	$0, _q_head(%rip)
	jle	LBB3_12
## %bb.6:
	leaq	L_.str.2(%rip), %r14
	leaq	L_.str.1(%rip), %r15
	xorl	%ebx, %ebx
	jmp	LBB3_7
	.p2align	4, 0x90
LBB3_10:                                ##   in Loop: Header=BB3_7 Depth=1
	movl	(%r12,%rbx,8), %r13d
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI3_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	callq	_libmin_pow
	movq	%r14, %rdi
	movl	%r13d, %esi
	movb	$1, %al
	callq	_libmin_printf
LBB3_11:                                ##   in Loop: Header=BB3_7 Depth=1
	incq	%rbx
	movslq	_q_head(%rip), %rax
	cmpq	%rax, %rbx
	jge	LBB3_12
LBB3_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	4(%r12,%rbx,8), %eax
	cmpl	$2, %eax
	je	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=1
	cmpl	$1, %eax
	jne	LBB3_11
## %bb.9:                               ##   in Loop: Header=BB3_7 Depth=1
	movl	(%r12,%rbx,8), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB3_11
LBB3_12:
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
	.globl	_q_head                         ## @q_head
.zerofill __DATA,__common,_q_head,4,2
	.comm	_q,512,4                        ## @q
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Primality tests found %d primes...\n"

L_.str.1:                               ## @.str.1
	.asciz	"Value %u is `prime' with failure probability (0)\n"

L_.str.2:                               ## @.str.2
	.asciz	"Value %u is `likely prime' with failure probability (1 in %.0lf)\n"

.subsections_via_symbols
