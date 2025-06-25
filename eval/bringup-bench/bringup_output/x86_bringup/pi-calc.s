	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	movl	_c(%rip), %ecx
	addl	$-14, %ecx
	movl	%ecx, _c(%rip)
	movq	_b@GOTPCREL(%rip), %r14
	movl	%ecx, (%r14)
	je	LBB0_10
## %bb.1:
	movq	_d@GOTPCREL(%rip), %r15
	leaq	L_.str(%rip), %rbx
	movq	_h@GOTPCREL(%rip), %r12
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	%eax, (%r15)
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r14)
	movq	_g@GOTPCREL(%rip), %rcx
	movl	$0, (%rcx)
	cltd
	idivl	%edi
	addl	%eax, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	%eax, (%r12)
	movl	_c(%rip), %ecx
	addl	$-14, %ecx
	movl	%ecx, _c(%rip)
	movl	%ecx, (%r14)
	je	LBB0_10
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	_f(%rip), %edi
	movl	(%r15), %eax
	cltd
	idivl	%edi
	movl	%edx, %esi
	movl	%edx, (%r15)
	movq	_e@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movl	%ecx, %r8d
	decl	%r8d
	je	LBB0_3
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	(%r12), %r9d
	movslq	%edi, %rax
	imulq	$1717986919, %rax, %r10         ## imm = 0x66666667
	movq	%r10, %rax
	shrq	$63, %rax
	sarq	$33, %r10
	addl	%eax, %r10d
	movslq	%ecx, %rax
	movq	_a@GOTPCREL(%rip), %rdx
	leaq	(%rdx,%rax,4), %r11
	addq	$-4, %r11
	leal	-3(,%rcx,2), %r13d
	movl	%esi, %eax
	jmp	LBB0_5
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=2
	imull	%r8d, %eax
	imull	%edi, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r13d
	movl	%edx, (%r11)
	addq	$-4, %r11
	addl	$-2, %r13d
	decl	%r8d
	je	LBB0_8
LBB0_5:                                 ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ecx
	testl	%r9d, %r9d
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movl	(%r11), %ecx
	jmp	LBB0_7
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %eax
	jmp	LBB0_9
LBB0_10:
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
	.section	__DATA,__data
	.globl	_c                              ## @c
	.p2align	2, 0x0
_c:
	.long	52514                           ## 0xcd22

	.globl	_f                              ## @f
	.p2align	2, 0x0
_f:
	.long	10000                           ## 0x2710

	.comm	_b,4,2                          ## @b
	.comm	_d,4,2                          ## @d
	.comm	_e,4,2                          ## @e
	.comm	_g,4,2                          ## @g
	.comm	_h,4,2                          ## @h
	.comm	_a,210056,4                     ## @a
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%04d"

.subsections_via_symbols
