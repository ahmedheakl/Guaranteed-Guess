	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	jb	LBB0_2
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
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
	ja	LBB0_1
LBB0_2:
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
	movl	%esi, %ebx
	movl	%edi, %r14d
	leal	9(%r14), %ecx
	movl	$1, %r15d
	movl	$1, %eax
	cmpl	$19, %ecx
	jb	LBB1_3
## %bb.1:
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
	subl	%eax, %ebx
	jl	LBB1_10
## %bb.4:
	movl	%ebx, %r12d
	shrl	$31, %r12d
	addl	%ebx, %r12d
	sarl	%r12d
	cmpl	$2, %ebx
	jl	LBB1_7
## %bb.5:
	leaq	L_.str(%rip), %r15
	movl	%r12d, %r13d
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decl	%r13d
	jne	LBB1_6
LBB1_7:
	leaq	L_.str.1(%rip), %rdi
	xorl	%r15d, %r15d
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	subl	%r12d, %ebx
	jle	LBB1_10
## %bb.8:
	xorl	%r15d, %r15d
	leaq	L_.str(%rip), %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r12d
	cmpl	%ebx, %r12d
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
	movl	$1, %eax
	leaq	_triangle+140(%rip), %rcx
	leaq	_triangle(%rip), %rdx
	leaq	_triangle+120(%rip), %rsi
	xorl	%edi, %edi
	movq	%rdx, %r8
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	addq	%rdx, %r9
	movl	$1, (%r9,%rax,4)
	incq	%rax
	incq	%rdi
	addq	$120, %rcx
	addq	$120, %r8
	addq	$120, %rsi
	cmpq	$20, %rax
	je	LBB2_10
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_4 Depth 2
                                        ##     Child Loop BB2_8 Depth 2
	imulq	$120, %rax, %r9
	movl	$1, (%r9,%rdx)
	cmpq	$2, %rax
	jb	LBB2_9
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-120(%r9,%rdx), %r11d
	movl	$1, %r10d
	cmpq	$8, %rdi
	jb	LBB2_7
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, %rbx
	andq	$-8, %rbx
	leaq	1(%rbx), %r10
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0                ## xmm0 = xmm0[0,0,0,0]
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB2_4:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqu	-136(%rcx,%r11,4), %xmm1
	movdqa	%xmm1, %xmm2
	palignr	$12, %xmm0, %xmm2               ## xmm2 = xmm0[12,13,14,15],xmm2[0,1,2,3,4,5,6,7,8,9,10,11]
	movdqu	-120(%rcx,%r11,4), %xmm0
	movdqa	%xmm0, %xmm3
	palignr	$12, %xmm1, %xmm3               ## xmm3 = xmm1[12,13,14,15],xmm3[0,1,2,3,4,5,6,7,8,9,10,11]
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm3
	movdqu	%xmm2, -16(%rcx,%r11,4)
	movdqu	%xmm3, (%rcx,%r11,4)
	addq	$8, %r11
	cmpq	%r11, %rbx
	jne	LBB2_4
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	cmpq	%rbx, %rdi
	je	LBB2_9
## %bb.6:                               ##   in Loop: Header=BB2_1 Depth=1
	pextrd	$3, %xmm0, %r11d
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	leaq	(%r8,%r10,4), %rbx
	leaq	(%rsi,%r10,4), %r14
	movq	%rax, %r15
	subq	%r10, %r15
	xorl	%r10d, %r10d
	.p2align	4, 0x90
LBB2_8:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%r10,4), %r12d
	addl	%r12d, %r11d
	movl	%r11d, (%r14,%r10,4)
	incq	%r10
	movl	%r12d, %r11d
	cmpq	%r10, %r15
	jne	LBB2_8
	jmp	LBB2_9
LBB2_10:
	movl	_triangle+2320(%rip), %ecx
	leal	9(%rcx), %edx
	movl	$1, %eax
	cmpl	$19, %edx
	jb	LBB2_13
## %bb.11:
	movl	$1, %eax
	.p2align	4, 0x90
LBB2_12:                                ## =>This Inner Loop Header: Depth=1
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
	ja	LBB2_12
LBB2_13:
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
	leaq	L_.str(%rip), %rbx
	xorl	%r15d, %r15d
	movl	%r12d, -48(%rbp)                ## 4-byte Spill
	jmp	LBB2_14
	.p2align	4, 0x90
LBB2_30:                                ##   in Loop: Header=BB2_14 Depth=1
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	incq	%r15
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	-56(%rbp)                       ## 8-byte Folded Spill
	cmpq	$20, %r15
	je	LBB2_31
LBB2_14:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_16 Depth 2
                                        ##     Child Loop BB2_18 Depth 2
                                        ##       Child Loop BB2_20 Depth 3
                                        ##       Child Loop BB2_24 Depth 3
                                        ##       Child Loop BB2_27 Depth 3
	movl	$19, %r14d
	movq	%r15, -64(%rbp)                 ## 8-byte Spill
	subl	%r15d, %r14d
	imull	-44(%rbp), %r14d                ## 4-byte Folded Reload
	testl	%r14d, %r14d
	jle	LBB2_17
## %bb.15:                              ##   in Loop: Header=BB2_14 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB2_16:                                ##   Parent Loop BB2_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r15d
	cmpl	%r14d, %r15d
	jl	LBB2_16
LBB2_17:                                ##   in Loop: Header=BB2_14 Depth=1
	xorl	%r14d, %r14d
	jmp	LBB2_18
	.p2align	4, 0x90
LBB2_28:                                ##   in Loop: Header=BB2_18 Depth=2
	leaq	L_.str.11(%rip), %rdi
	leaq	L_.str.8(%rip), %rsi
                                        ## kill: def $edx killed $edx killed $rdx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB2_29:                                ##   in Loop: Header=BB2_18 Depth=2
	incq	%r14
	cmpq	-56(%rbp), %r14                 ## 8-byte Folded Reload
	je	LBB2_30
LBB2_18:                                ##   Parent Loop BB2_14 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_20 Depth 3
                                        ##       Child Loop BB2_24 Depth 3
                                        ##       Child Loop BB2_27 Depth 3
	movq	-64(%rbp), %rdx                 ## 8-byte Reload
	imulq	$120, %rdx, %rax
	leaq	_triangle(%rip), %rcx
	addq	%rcx, %rax
	movl	(%rax,%r14,4), %r8d
	leal	9(%r8), %ecx
	movl	$1, %eax
	cmpl	$19, %ecx
	jb	LBB2_21
## %bb.19:                              ##   in Loop: Header=BB2_18 Depth=2
	movl	%r8d, %ecx
	.p2align	4, 0x90
LBB2_20:                                ##   Parent Loop BB2_14 Depth=1
                                        ##     Parent Loop BB2_18 Depth=2
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
	ja	LBB2_20
LBB2_21:                                ##   in Loop: Header=BB2_18 Depth=2
	movl	%r12d, %r13d
	subl	%eax, %r13d
	jl	LBB2_28
## %bb.22:                              ##   in Loop: Header=BB2_18 Depth=2
	movq	%r8, -72(%rbp)                  ## 8-byte Spill
	movl	%r13d, %r15d
	shrl	$31, %r15d
	addl	%r13d, %r15d
	sarl	%r15d
	cmpl	$2, %r13d
	jl	LBB2_25
## %bb.23:                              ##   in Loop: Header=BB2_18 Depth=2
	movl	%r15d, %r12d
	.p2align	4, 0x90
LBB2_24:                                ##   Parent Loop BB2_14 Depth=1
                                        ##     Parent Loop BB2_18 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	decl	%r12d
	jne	LBB2_24
LBB2_25:                                ##   in Loop: Header=BB2_18 Depth=2
	leaq	L_.str.1(%rip), %rdi
	movq	-72(%rbp), %rsi                 ## 8-byte Reload
                                        ## kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	subl	%r15d, %r13d
	movl	-48(%rbp), %r12d                ## 4-byte Reload
	jle	LBB2_29
## %bb.26:                              ##   in Loop: Header=BB2_18 Depth=2
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB2_27:                                ##   Parent Loop BB2_14 Depth=1
                                        ##     Parent Loop BB2_18 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r15d
	cmpl	%r13d, %r15d
	jl	LBB2_27
	jmp	LBB2_29
LBB2_31:
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
