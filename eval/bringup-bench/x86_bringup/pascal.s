	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_num_digits                     ## -- Begin function num_digits
	.p2align	4, 0x90
_num_digits:                            ## @num_digits
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edi killed $edi def $rdi
	leal	9(%rdi), %ecx
	movl	$1, %eax
	cmpl	$19, %ecx
	jb	LBB0_3
## %bb.1:
	movl	$1, %eax
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%edi, %rcx
	imulq	$1717986919, %rcx, %rcx         ## imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	leal	(%rcx,%rdx), %edi
	incl	%eax
	addl	%edx, %ecx
	addl	$9, %ecx
	cmpl	$18, %ecx
	ja	LBB0_2
LBB0_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_centered                 ## -- Begin function print_centered
	.p2align	4, 0x90
_print_centered:                        ## @print_centered
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
	movl	%esi, %r12d
	movl	%edi, %r14d
	leal	9(%r14), %ecx
	movl	$1, %r15d
	movl	$1, %eax
	cmpl	$19, %ecx
	jb	LBB1_3
## %bb.1:
	movl	$1, %eax
	movl	%r14d, %ecx
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rdx         ## imm = 0x66666667
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$34, %rdx
	leal	(%rdx,%rsi), %ecx
	incl	%eax
	addl	%esi, %edx
	addl	$9, %edx
	cmpl	$18, %edx
	ja	LBB1_2
LBB1_3:
	cmpl	%r12d, %eax
	jg	LBB1_10
## %bb.4:
	subl	%eax, %r12d
	movl	%r12d, %r13d
	shrl	$31, %r13d
	addl	%r12d, %r13d
	sarl	%r13d
	cmpl	$2, %r12d
	jl	LBB1_7
## %bb.5:
	leaq	L_.str(%rip), %r15
	movl	%r13d, %ebx
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decl	%ebx
	jne	LBB1_6
LBB1_7:
	leaq	L_.str.1(%rip), %rdi
	xorl	%r15d, %r15d
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	subl	%r13d, %r12d
	jle	LBB1_10
## %bb.8:
	xorl	%r15d, %r15d
	leaq	L_.str(%rip), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%ebx
	cmpl	%r12d, %ebx
	jl	LBB1_9
LBB1_10:
	movl	%r15d, %eax
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$1, _triangle(%rip)
	movl	$1, %r8d
	leaq	_triangle+132(%rip), %r10
	movq	$-2, %r9
	leaq	_triangle(%rip), %r11
	leaq	_triangle+120(%rip), %r15
	xorl	%r13d, %r13d
	movq	%r11, %r12
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_1 Depth=1
	addq	%r11, %r14
	movl	$1, (%r14,%r8,4)
	incq	%r8
	incq	%r13
	addq	$120, %r10
	incq	%r9
	addq	$120, %r12
	addq	$120, %r15
	cmpq	$20, %r8
	je	LBB2_14
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_6 Depth 2
                                        ##     Child Loop BB2_12 Depth 2
	imulq	$120, %r8, %r14
	movl	$1, (%r14,%r11)
	cmpq	$2, %r8
	jb	LBB2_13
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-1(%r8), %rax
	imulq	$120, %rax, %rcx
	movl	(%rcx,%r11), %edx
	movl	$1, %r11d
	cmpq	$2, %r13
	jb	LBB2_11
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-2(%r13), %rax
	movq	%rax, %r11
	shrq	%r11
	incq	%r11
	movd	%edx, %xmm0
	pshufd	$80, %xmm0, %xmm0               ## xmm0 = xmm0[0,0,1,1]
	cmpq	$2, %rax
	jae	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_1 Depth=1
	xorl	%edx, %edx
	jmp	LBB2_7
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	%r9, %rdi
	shrq	%rdi
	incq	%rdi
	andq	$-2, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB2_6:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-128(%r10,%rdx,4), %xmm1        ## xmm1 = mem[0],zero
	pblendw	$243, %xmm1, %xmm0              ## xmm0 = xmm1[0,1],xmm0[2,3],xmm1[4,5,6,7]
	pshufd	$225, %xmm0, %xmm2              ## xmm2 = xmm0[1,0,2,3]
	movq	-120(%r10,%rdx,4), %xmm0        ## xmm0 = mem[0],zero
	pblendw	$243, %xmm0, %xmm1              ## xmm1 = xmm0[0,1],xmm1[2,3],xmm0[4,5,6,7]
	pshufd	$225, %xmm1, %xmm1              ## xmm1 = xmm1[1,0,2,3]
	punpcklqdq	%xmm1, %xmm2            ## xmm2 = xmm2[0],xmm1[0]
	movdqu	-128(%r10,%rdx,4), %xmm1
	paddd	%xmm2, %xmm1
	movdqu	%xmm1, -8(%r10,%rdx,4)
	addq	$4, %rdx
	addq	$-2, %rdi
	jne	LBB2_6
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	andq	$-2, %rdi
	testb	$1, %r11b
	leaq	_triangle(%rip), %r11
	je	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_1 Depth=1
	shlq	$2, %rdx
	addq	%r11, %rcx
	orq	$4, %rdx
	movq	(%rdx,%rcx), %xmm1              ## xmm1 = mem[0],zero
	pblendw	$243, %xmm1, %xmm0              ## xmm0 = xmm1[0,1],xmm0[2,3],xmm1[4,5,6,7]
	pshufd	$225, %xmm0, %xmm0              ## xmm0 = xmm0[1,0,2,3]
	paddd	%xmm1, %xmm0
	leaq	(%r11,%r14), %rax
	movq	%xmm0, (%rdx,%rax)
	movdqa	%xmm1, %xmm0
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmpq	%rdi, %r13
	je	LBB2_13
## %bb.10:                              ##   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %r11
	orq	$1, %r11
	pextrd	$1, %xmm0, %edx
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	leaq	(%r12,%r11,4), %rdi
	leaq	(%r15,%r11,4), %rsi
	movq	%r8, %rax
	subq	%r11, %rax
	xorl	%ebx, %ebx
	leaq	_triangle(%rip), %r11
	.p2align	4, 0x90
LBB2_12:                                ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%rbx,4), %ecx
	addl	%ecx, %edx
	movl	%edx, (%rsi,%rbx,4)
	incq	%rbx
	movl	%ecx, %edx
	cmpq	%rbx, %rax
	jne	LBB2_12
	jmp	LBB2_13
LBB2_14:
	movl	_triangle+2320(%rip), %ecx
	leal	9(%rcx), %edx
	movl	$1, %eax
	cmpl	$19, %edx
	jb	LBB2_17
## %bb.15:
	movl	$1, %eax
	.p2align	4, 0x90
LBB2_16:                                ## =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rdx         ## imm = 0x66666667
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$34, %rdx
	leal	(%rdx,%rsi), %ecx
	incl	%eax
	addl	%esi, %edx
	addl	$9, %edx
	cmpl	$18, %edx
	ja	LBB2_16
LBB2_17:
	movl	%eax, %ecx
	andl	$1, %ecx
	leal	(%rcx,%rax), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	incl	%esi
	movl	%esi, -44(%rbp)                 ## 4-byte Spill
	leal	(%rcx,%rax), %r12d
	addl	$2, %r12d
	movl	$1, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	leaq	L_.str(%rip), %r15
	xorl	%ebx, %ebx
	movl	%r12d, -48(%rbp)                ## 4-byte Spill
	jmp	LBB2_18
	.p2align	4, 0x90
LBB2_34:                                ##   in Loop: Header=BB2_18 Depth=1
	movq	-64(%rbp), %rbx                 ## 8-byte Reload
	incq	%rbx
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	-56(%rbp)                       ## 8-byte Folded Spill
	cmpq	$20, %rbx
	je	LBB2_35
LBB2_18:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_20 Depth 2
                                        ##     Child Loop BB2_22 Depth 2
                                        ##       Child Loop BB2_24 Depth 3
                                        ##       Child Loop BB2_28 Depth 3
                                        ##       Child Loop BB2_31 Depth 3
	movl	$19, %r14d
	movq	%rbx, -64(%rbp)                 ## 8-byte Spill
	subl	%ebx, %r14d
	imull	-44(%rbp), %r14d                ## 4-byte Folded Reload
	testl	%r14d, %r14d
	jle	LBB2_21
## %bb.19:                              ##   in Loop: Header=BB2_18 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_20:                                ##   Parent Loop BB2_18 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%ebx
	cmpl	%r14d, %ebx
	jl	LBB2_20
LBB2_21:                                ##   in Loop: Header=BB2_18 Depth=1
	xorl	%r14d, %r14d
	jmp	LBB2_22
	.p2align	4, 0x90
LBB2_32:                                ##   in Loop: Header=BB2_22 Depth=2
	leaq	L_.str.11(%rip), %rdi
	leaq	L_.str.8(%rip), %rsi
                                        ## kill: def $edx killed $edx killed $rdx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB2_33:                                ##   in Loop: Header=BB2_22 Depth=2
	incq	%r14
	cmpq	-56(%rbp), %r14                 ## 8-byte Folded Reload
	je	LBB2_34
LBB2_22:                                ##   Parent Loop BB2_18 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_24 Depth 3
                                        ##       Child Loop BB2_28 Depth 3
                                        ##       Child Loop BB2_31 Depth 3
	movq	-64(%rbp), %rdx                 ## 8-byte Reload
	imulq	$120, %rdx, %rax
	leaq	_triangle(%rip), %rcx
	addq	%rcx, %rax
	movl	(%rax,%r14,4), %ebx
	leal	9(%rbx), %ecx
	movl	$1, %eax
	cmpl	$19, %ecx
	jb	LBB2_25
## %bb.23:                              ##   in Loop: Header=BB2_22 Depth=2
	movl	$1, %eax
	movl	%ebx, %ecx
	.p2align	4, 0x90
LBB2_24:                                ##   Parent Loop BB2_18 Depth=1
                                        ##     Parent Loop BB2_22 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rdi         ## imm = 0x66666667
	movq	%rdi, %rsi
	shrq	$63, %rsi
	sarq	$34, %rdi
	leal	(%rdi,%rsi), %ecx
	incl	%eax
	addl	%edi, %esi
	addl	$9, %esi
	cmpl	$18, %esi
	ja	LBB2_24
LBB2_25:                                ##   in Loop: Header=BB2_22 Depth=2
	movl	%r12d, %r13d
	subl	%eax, %r13d
	jl	LBB2_32
## %bb.26:                              ##   in Loop: Header=BB2_22 Depth=2
	movq	%rbx, -72(%rbp)                 ## 8-byte Spill
	movl	%r13d, %ebx
	shrl	$31, %ebx
	addl	%r13d, %ebx
	sarl	%ebx
	cmpl	$2, %r13d
	jl	LBB2_29
## %bb.27:                              ##   in Loop: Header=BB2_22 Depth=2
	movl	%ebx, %r12d
	.p2align	4, 0x90
LBB2_28:                                ##   Parent Loop BB2_18 Depth=1
                                        ##     Parent Loop BB2_22 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decl	%r12d
	jne	LBB2_28
LBB2_29:                                ##   in Loop: Header=BB2_22 Depth=2
	leaq	L_.str.1(%rip), %rdi
	movq	-72(%rbp), %rsi                 ## 8-byte Reload
                                        ## kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	subl	%ebx, %r13d
	movl	-48(%rbp), %r12d                ## 4-byte Reload
	jle	LBB2_33
## %bb.30:                              ##   in Loop: Header=BB2_22 Depth=2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_31:                                ##   Parent Loop BB2_18 Depth=1
                                        ##     Parent Loop BB2_22 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%ebx
	cmpl	%r13d, %ebx
	jl	LBB2_31
	jmp	LBB2_33
LBB2_35:
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.8:                               ## @.str.8
	.asciz	"pascal"

.zerofill __DATA,__bss,_triangle,3720,4 ## @triangle
L_.str.11:                              ## @.str.11
	.asciz	"%s: error printing element %d,%d\n"

L_.str.12:                              ## @.str.12
	.asciz	"\n"

.subsections_via_symbols
