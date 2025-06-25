	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_lz77_compress                  ## -- Begin function lz77_compress
	.p2align	4, 0x90
_lz77_compress:                         ## @lz77_compress
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
                                        ## kill: def $esi killed $esi def $rsi
	movl	%esi, (%rdx)
	movb	%r15b, 4(%rdx)
	testl	%esi, %esi
	je	LBB0_1
## %bb.2:
	movl	$1, %r9d
	movl	%r15d, %ecx
	shll	%cl, %r9d
	movl	$1, %r8d
	movb	$16, %cl
	subb	%r15b, %cl
	shll	%cl, %r8d
	movzwl	%r8w, %ecx
	movl	%ecx, -48(%rbp)                 ## 4-byte Spill
	leal	-1(%rsi), %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	decl	%r9d
	movl	$5, %eax
	xorl	%r8d, %r8d
	movl	%r15d, -44(%rbp)                ## 4-byte Spill
	movq	%rdx, -64(%rbp)                 ## 8-byte Spill
	movq	%rsi, -80(%rbp)                 ## 8-byte Spill
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_3 Depth=1
	xorl	%ecx, %ecx
	movl	%r8d, %r10d
LBB0_23:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %r11d
	movw	%cx, (%rdx,%r11)
	leal	2(%rax), %r11d
	movl	%r10d, %ecx
	movzbl	(%rdi,%rcx), %ecx
	addl	$3, %eax
	movb	%cl, (%rdx,%r11)
	incl	%r8d
	cmpl	%esi, %r8d
	movl	-44(%rbp), %r15d                ## 4-byte Reload
	jae	LBB0_24
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
                                        ##       Child Loop BB0_10 Depth 3
	cmpl	$2, -48(%rbp)                   ## 4-byte Folded Reload
	jb	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	testl	%r8d, %r8d
	je	LBB0_4
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movl	%r8d, %ecx
	movzbl	(%rdi,%rcx), %ecx
	leal	1(%r8), %r13d
	movl	$1, %r11d
	movl	$1, %ebx
	xorl	%eax, %eax
	movl	%r8d, %r14d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
LBB0_7:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_10 Depth 3
	movl	%r8d, %edx
	subl	%r11d, %edx
	xorl	%r12d, %r12d
	cmpb	(%rdi,%rdx), %cl
	jne	LBB0_16
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	cmpb	$15, %r15b
	ja	LBB0_16
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	movl	%eax, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB0_10:                                ##   Parent Loop BB0_3 Depth=1
                                        ##     Parent Loop BB0_7 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%r12d, %esi
	leal	(%r14,%rsi), %edx
	leal	(%rsi,%r13), %r12d
	movzbl	(%rdi,%r12), %eax
	leal	1(%rsi), %r12d
	cmpb	(%rdi,%rdx), %al
	jne	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=3
	cmpw	%si, %r9w
	jne	LBB0_10
LBB0_12:                                ##   in Loop: Header=BB0_7 Depth=2
	cmpw	%r10w, %r12w
	seta	%dl
	testb	$1, %dl
	je	LBB0_15
## %bb.13:                              ##   in Loop: Header=BB0_7 Depth=2
	cmpw	%si, %r9w
	je	LBB0_14
LBB0_15:                                ##   in Loop: Header=BB0_7 Depth=2
	testb	$1, %dl
	movl	%r15d, %eax
	cmovnel	%ebx, %eax
	movl	-44(%rbp), %r15d                ## 4-byte Reload
LBB0_16:                                ##   in Loop: Header=BB0_7 Depth=2
	cmpw	%r10w, %r12w
	cmoval	%r12d, %r10d
	leal	1(%rbx), %edx
	cmpl	%edx, -48(%rbp)                 ## 4-byte Folded Reload
	jbe	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_7 Depth=2
	incq	%r11
	decl	%r14d
	cmpl	%ebx, %r8d
	movl	%edx, %ebx
	ja	LBB0_7
	jmp	LBB0_18
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	%r12d, %r10d
	movl	%ebx, %eax
	movl	-44(%rbp), %r15d                ## 4-byte Reload
LBB0_18:                                ##   in Loop: Header=BB0_3 Depth=1
	movzwl	%r10w, %r10d
	addl	%r10d, %r8d
	testw	%r10w, %r10w
	movq	-80(%rbp), %rsi                 ## 8-byte Reload
	je	LBB0_21
## %bb.19:                              ##   in Loop: Header=BB0_3 Depth=1
	cmpl	%esi, %r8d
	jne	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_3 Depth=1
	movzwl	%ax, %edx
	movl	%r15d, %ecx
	shll	%cl, %edx
	leal	-2(%r10), %ecx
	orl	%edx, %ecx
	cmpl	$1, %r10d
	movl	$0, %eax
	cmovel	%eax, %ecx
	movl	-52(%rbp), %r10d                ## 4-byte Reload
	jmp	LBB0_22
	.p2align	4, 0x90
LBB0_21:                                ##   in Loop: Header=BB0_3 Depth=1
	movzwl	%ax, %edx
	movl	%r15d, %ecx
	shll	%cl, %edx
	leal	65535(%r10), %ecx
	testl	%r10d, %r10d
	cmovel	%r10d, %ecx
	orl	%edx, %ecx
	movl	%r8d, %r10d
LBB0_22:                                ##   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rdx                 ## 8-byte Reload
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	jmp	LBB0_23
LBB0_1:
	movl	$5, %eax
LBB0_24:
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_lz77_decompress                ## -- Begin function lz77_decompress
	.p2align	4, 0x90
_lz77_decompress:                       ## @lz77_decompress
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	LBB1_27
## %bb.1:
	movzbl	4(%rdi), %ecx
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movl	$5, %r8d
	xorl	%ebx, %ebx
	movzwl	%ax, %r9d
	jmp	LBB1_4
	.p2align	4, 0x90
LBB1_2:                                 ##   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, %eax
LBB1_3:                                 ##   in Loop: Header=BB1_4 Depth=1
	leal	2(%r8), %r10d
	addl	$3, %r8d
	movl	%r10d, %r10d
	movzbl	(%rdi,%r10), %r10d
	movl	%eax, %r11d
	movb	%r10b, (%rsi,%r11)
	incl	%eax
	movl	%eax, %ebx
	cmpl	%edx, %eax
	jae	LBB1_28
LBB1_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_25 Depth 2
                                        ##     Child Loop BB1_11 Depth 2
                                        ##     Child Loop BB1_20 Depth 2
	movl	%r8d, %eax
	movzwl	(%rdi,%rax), %eax
	movl	%eax, %r14d
	shrl	%cl, %r14d
	testl	%r14d, %r14d
	je	LBB1_2
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	andl	%r9d, %eax
	movl	%eax, %r11d
	incw	%r11w
	je	LBB1_2
## %bb.7:                               ##   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, %r10d
	subl	%r14d, %r10d
	cmpw	$32, %r11w
	jae	LBB1_13
LBB1_8:                                 ##   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, %eax
LBB1_9:                                 ##   in Loop: Header=BB1_4 Depth=1
	testb	$3, %r11b
	je	LBB1_17
## %bb.10:                              ##   in Loop: Header=BB1_4 Depth=1
	movl	%r11d, %ebx
	andl	$3, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB1_11:                                ##   Parent Loop BB1_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	(%r10,%r14), %r15d
	leal	(%rax,%r14), %r12d
	movzbl	(%rsi,%r15), %r15d
	movb	%r15b, (%rsi,%r12)
	incl	%r14d
	cmpw	%r14w, %bx
	jne	LBB1_11
## %bb.12:                              ##   in Loop: Header=BB1_4 Depth=1
	movl	%r11d, %ebx
	subl	%r14d, %ebx
	addl	%r14d, %r10d
	addl	%r14d, %eax
	jmp	LBB1_18
LBB1_13:                                ##   in Loop: Header=BB1_4 Depth=1
	movzwl	%ax, %r15d
	addl	%r10d, %r15d
	setb	%r15b
	addl	%ebx, %eax
	jb	LBB1_8
## %bb.14:                              ##   in Loop: Header=BB1_4 Depth=1
	testb	%r15b, %r15b
	jne	LBB1_8
## %bb.15:                              ##   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, %eax
	addq	%rsi, %rax
	movl	%r10d, %r15d
	addq	%rsi, %r15
	subq	%r15, %rax
	cmpq	$32, %rax
	jb	LBB1_8
## %bb.24:                              ##   in Loop: Header=BB1_4 Depth=1
	movzwl	%r11w, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	movl	%eax, %r12d
	andl	$-32, %r12d
	subl	%r12d, %r11d
	addl	%r12d, %r10d
	leal	(%rbx,%r12), %eax
	negl	%r14d
	movl	%r12d, %r13d
	.p2align	4, 0x90
LBB1_25:                                ##   Parent Loop BB1_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	(%r14,%rbx), %r15d
	movups	(%rsi,%r15), %xmm0
	movups	16(%rsi,%r15), %xmm1
	movl	%ebx, %r15d
	movups	%xmm0, (%rsi,%r15)
	movups	%xmm1, 16(%rsi,%r15)
	addl	$32, %ebx
	addl	$-32, %r13d
	jne	LBB1_25
## %bb.26:                              ##   in Loop: Header=BB1_4 Depth=1
	cmpl	-44(%rbp), %r12d                ## 4-byte Folded Reload
	je	LBB1_3
	jmp	LBB1_9
LBB1_17:                                ##   in Loop: Header=BB1_4 Depth=1
	movl	%r11d, %ebx
LBB1_18:                                ##   in Loop: Header=BB1_4 Depth=1
	decl	%r11d
	cmpw	$3, %r11w
	jb	LBB1_3
## %bb.19:                              ##   in Loop: Header=BB1_4 Depth=1
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB1_20:                                ##   Parent Loop BB1_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	(%r10,%r11), %r14d
	leal	(%rax,%r11), %r15d
	leal	(%r10,%r11), %r12d
	incl	%r12d
	movzbl	(%rsi,%r14), %r14d
	leal	1(%rax,%r11), %r13d
	movb	%r14b, (%rsi,%r15)
	leal	2(%r10,%r11), %r14d
	movzbl	(%rsi,%r12), %r15d
	leal	2(%rax,%r11), %r12d
	movb	%r15b, (%rsi,%r13)
	leal	3(%r10,%r11), %r15d
	movzbl	(%rsi,%r14), %r14d
	leal	3(%rax,%r11), %r13d
	movb	%r14b, (%rsi,%r12)
	movzbl	(%rsi,%r15), %r14d
	movb	%r14b, (%rsi,%r13)
	addl	$4, %r11d
	cmpw	%r11w, %bx
	jne	LBB1_20
## %bb.21:                              ##   in Loop: Header=BB1_4 Depth=1
	addl	%r11d, %eax
	jmp	LBB1_3
LBB1_27:
	xorl	%eax, %eax
LBB1_28:
                                        ## kill: def $eax killed $eax killed $rax
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
	movq	_infile(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_libmin_mopen
	movq	_infile(%rip), %rdi
	callq	_libmin_msize
	movq	%rax, %r15
	leaq	L_.str.2(%rip), %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	%r15d, %ebx
	movq	%rbx, %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	movq	_infile(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_libmin_mread
	cmpq	%rax, %rbx
	jne	LBB2_39
## %bb.1:
	movq	%rbx, -72(%rbp)                 ## 8-byte Spill
	movq	_infile(%rip), %rdi
	callq	_libmin_mclose
	movl	$262144, %edi                   ## imm = 0x40000
	callq	_libmin_malloc
	movq	%rax, %r12
	movl	$1, %ebx
	movq	%r15, -64(%rbp)                 ## 8-byte Spill
	jmp	LBB2_3
	.p2align	4, 0x90
LBB2_2:                                 ##   in Loop: Header=BB2_3 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movl	-52(%rbp), %ebx                 ## 4-byte Reload
	movl	%ebx, %esi
	movl	-48(%rbp), %edx                 ## 4-byte Reload
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%ebx
	cmpl	$16, %ebx
	je	LBB2_35
LBB2_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_9 Depth 2
                                        ##       Child Loop BB2_21 Depth 3
                                        ##       Child Loop BB2_25 Depth 3
                                        ##       Child Loop BB2_30 Depth 3
	movl	%ebx, -52(%rbp)                 ## 4-byte Spill
	movzbl	%bl, %ecx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	callq	_lz77_compress
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	cmpl	$262144, %eax                   ## imm = 0x40000
	jb	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
LBB2_5:                                 ##   in Loop: Header=BB2_3 Depth=1
	movl	(%r12), %eax
	testl	%eax, %eax
	je	LBB2_32
## %bb.6:                               ##   in Loop: Header=BB2_3 Depth=1
	movzbl	4(%r12), %ecx
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	movl	$5, %esi
	xorl	%r10d, %r10d
	jmp	LBB2_9
	.p2align	4, 0x90
LBB2_7:                                 ##   in Loop: Header=BB2_9 Depth=2
	movl	%r10d, %r8d
LBB2_8:                                 ##   in Loop: Header=BB2_9 Depth=2
	leal	2(%rsi), %edi
	addl	$3, %esi
	movl	%edi, %edi
	movzbl	(%r12,%rdi), %edi
	movl	%r8d, %r9d
	movb	%dil, (%r14,%r9)
	incl	%r8d
	movl	%r8d, %r10d
	cmpl	%eax, %r8d
	jae	LBB2_33
LBB2_9:                                 ##   Parent Loop BB2_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_21 Depth 3
                                        ##       Child Loop BB2_25 Depth 3
                                        ##       Child Loop BB2_30 Depth 3
	movl	%esi, %edi
	movzwl	(%r12,%rdi), %r8d
	movl	%r8d, %r11d
	shrl	%cl, %r11d
	testl	%r11d, %r11d
	je	LBB2_7
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=2
	movzwl	%dx, %edi
	andl	%edi, %r8d
	movl	%r8d, %r9d
	incw	%r9w
	je	LBB2_7
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=2
	movl	%r10d, %edi
	subl	%r11d, %edi
	cmpw	$32, %r9w
	jb	LBB2_13
## %bb.14:                              ##   in Loop: Header=BB2_9 Depth=2
	movzwl	%r8w, %ebx
	addl	%edi, %ebx
	setb	%bl
	addl	%r10d, %r8d
	jb	LBB2_13
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=2
	testb	%bl, %bl
	jne	LBB2_13
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=2
	movl	%r10d, %r8d
	addq	%r14, %r8
	movl	%edi, %ebx
	addq	%r14, %rbx
	subq	%rbx, %r8
	cmpq	$32, %r8
	jae	LBB2_20
	.p2align	4, 0x90
LBB2_13:                                ##   in Loop: Header=BB2_9 Depth=2
	movl	%r10d, %r8d
LBB2_23:                                ##   in Loop: Header=BB2_9 Depth=2
	testb	$3, %r9b
	je	LBB2_27
## %bb.24:                              ##   in Loop: Header=BB2_9 Depth=2
	movl	%r9d, %r10d
	andl	$3, %r10d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB2_25:                                ##   Parent Loop BB2_3 Depth=1
                                        ##     Parent Loop BB2_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%r11), %ebx
	leal	(%r8,%r11), %r15d
	movzbl	(%r14,%rbx), %ebx
	movb	%bl, (%r14,%r15)
	incl	%r11d
	cmpw	%r11w, %r10w
	jne	LBB2_25
## %bb.26:                              ##   in Loop: Header=BB2_9 Depth=2
	movl	%r9d, %r10d
	subl	%r11d, %r10d
	addl	%r11d, %edi
	addl	%r11d, %r8d
	jmp	LBB2_28
LBB2_27:                                ##   in Loop: Header=BB2_9 Depth=2
	movl	%r9d, %r10d
LBB2_28:                                ##   in Loop: Header=BB2_9 Depth=2
	decl	%r9d
	cmpw	$3, %r9w
	jb	LBB2_8
## %bb.29:                              ##   in Loop: Header=BB2_9 Depth=2
	xorl	%r9d, %r9d
	.p2align	4, 0x90
LBB2_30:                                ##   Parent Loop BB2_3 Depth=1
                                        ##     Parent Loop BB2_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%r9), %r11d
	leal	(%r8,%r9), %ebx
	leal	(%rdi,%r9), %r15d
	incl	%r15d
	movzbl	(%r14,%r11), %r11d
	leal	1(%r8,%r9), %r13d
	movb	%r11b, (%r14,%rbx)
	leal	2(%rdi,%r9), %r11d
	movzbl	(%r14,%r15), %ebx
	leal	2(%r8,%r9), %r15d
	movb	%bl, (%r14,%r13)
	leal	3(%rdi,%r9), %ebx
	movzbl	(%r14,%r11), %r11d
	leal	3(%r8,%r9), %r13d
	movb	%r11b, (%r14,%r15)
	movzbl	(%r14,%rbx), %r11d
	movb	%r11b, (%r14,%r13)
	addl	$4, %r9d
	cmpw	%r9w, %r10w
	jne	LBB2_30
## %bb.31:                              ##   in Loop: Header=BB2_9 Depth=2
	addl	%r9d, %r8d
	jmp	LBB2_8
LBB2_20:                                ##   in Loop: Header=BB2_9 Depth=2
	movzwl	%r9w, %r8d
	movl	%r8d, -44(%rbp)                 ## 4-byte Spill
	movl	%r8d, %ebx
	andl	$-32, %ebx
	subl	%ebx, %r9d
	addl	%ebx, %edi
	leal	(%r10,%rbx), %r8d
	negl	%r11d
	movl	%ebx, %r13d
	.p2align	4, 0x90
LBB2_21:                                ##   Parent Loop BB2_3 Depth=1
                                        ##     Parent Loop BB2_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	(%r11,%r10), %r15d
	movups	(%r14,%r15), %xmm0
	movups	16(%r14,%r15), %xmm1
	movl	%r10d, %r15d
	movups	%xmm0, (%r14,%r15)
	movups	%xmm1, 16(%r14,%r15)
	addl	$32, %r10d
	addl	$-32, %r13d
	jne	LBB2_21
## %bb.22:                              ##   in Loop: Header=BB2_9 Depth=2
	cmpl	-44(%rbp), %ebx                 ## 4-byte Folded Reload
	je	LBB2_8
	jmp	LBB2_23
	.p2align	4, 0x90
LBB2_32:                                ##   in Loop: Header=BB2_3 Depth=1
	xorl	%r8d, %r8d
LBB2_33:                                ##   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	cmpl	%r15d, %r8d
	je	LBB2_2
## %bb.34:                              ##   in Loop: Header=BB2_3 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	jmp	LBB2_2
LBB2_35:
	testl	%r15d, %r15d
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	je	LBB2_38
## %bb.36:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_37:                                ## =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %edi
	callq	_libmin_putc
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB2_37
LBB2_38:
	callq	_libmin_success
LBB2_39:
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
	.section	__TEXT,__const
	.globl	___lamia                        ## @__lamia
	.p2align	4, 0x0
___lamia:
	.ascii	"\n    The Project Gutenberg eBook of Lamia\n    \nThis ebook is for the use of anyone anywhere in the United States and \nmost other parts of the world at no cost and with almost no restrictions \nwhatsoever. You may copy it, give it away or re-use it under the terms \nof the Project Gutenberg License included with this ebook or online \nat www.gutenberg.org. If you are not located in the United States, \nyou will have to check the laws of the country where you are located \nbefore using this eBook.\n\n\n\n    \n        Title: Lamia\n        \n        Author: John Keats\n\n        \n        Release date: January 1, 2001 [eBook #2490]Most recently updated: December 23, 2008\n        Language: English\n        \n        \n    \n        \n            *** START OF THE PROJECT GUTENBERG EBOOK LAMIA ***\n        \n\n\n\nProduced by An Anonymous Volunteer\n\n\n\n\n\nLAMIA\n\nBy John Keats\n\n\n\n\nPart 1\n\n     Upon a time, before the faery broods\n     Drove Nymph and Satyr from the prosperous woods,\n     Before King Oberon's bright diadem,\n     Sceptre, and mantle, clasp'd with dewy gem,\n     Frighted away the Dryads and the Fauns\n     From rushes green, and brakes, and cowslip'd lawns,\n     The ever-smitten Hermes empty left\n     His golden throne, bent warm on amorous theft:\n     From high Olympus had he stolen light,\n     On this side of Jove's clouds, to escape the sight\n     Of his great summoner, and made retreat\n     Into a forest on the shores of Crete.\n     For somewhere in that sacred island dwelt\n     A nymph, to whom all hoofed Satyrs knelt;\n     At whose white feet the languid Tritons poured\n     Pearls, while on land they wither'd and adored.\n     Fast by the springs where she to bathe was wont,\n     And in those meads where sometime she might haunt,\n     Were strewn rich gifts, unknown to any Muse,\n     Though Fancy's casket were unlock'd to choose.\n     Ah, what a world of love was at her feet!\n     So Hermes thought, and a celestial heat\n     Burnt from his winged heels to either ear,\n     That from a whiteness, as the lily clear,\n     Blush'd into roses 'mid his golden hair,\n     Fallen in jealous curls about his shoulders bare.\n     From vale to vale, from wood to wood, he flew,\n     Breathing upon the flowers his passion new,\n     And wound with many a river to its head,\n     To find where this sweet nymph prepar'd her secret bed:\n     In vain; the sweet nymph might nowhere be found,\n     And so he rested, on the lonely ground,\n     Pensive, and full of painful jealousies\n     Of the Wood-Gods, and even the very trees.\n     There as he stood, he heard a mournful voice,\n     Such as once heard, in gentle heart, destroys\n     All pain but pity: thus the lone voice spake:\n     \"When from this wreathed tomb shall I awake!\n     When move in a sweet body fit for life,\n     And love, and pleasure, and the ruddy strife\n     Of hearts and lips! Ah, miserable me!\"\n     The God, dove-footed, glided silently\n     Round bush and tree, soft-brushing, in his speed,\n     The taller grasses and full-flowering weed,\n     Until he found a palpitating snake,\n     Bright, and cirque-couchant in a dusky brake.\n\n        She was a gordian shape of dazzling hue,\n     Vermilion-spotted, golden, green, and blue;\n     Striped like a zebra, freckled like a pard,\n     Eyed like a peacock, and all crimson barr'd;\n     And full of silver moons, that, as she breathed,\n     Dissolv'd, or brighter shone, or interwreathed\n     Their lustres with the gloomier tapestries--\n     So rainbow-sided, touch'd with miseries,\n     She seem'd, at once, some penanced lady elf,\n     Some demon's mistress, or the demon's self.\n     Upon her crest she wore a wannish fire\n     Sprinkled with stars, like Ariadne's tiar:\n     Her head was serpent, but ah, bitter-sweet!\n     She had a woman's mouth with all its pearls complete:\n     And for her eyes: what could such eyes do there\n     But weep, and weep, that they were born so fair?\n     As Proserpine still weeps for her Sicilian air.\n     Her throat was serpent, but the words she spake\n     Came, as through bubbling honey, for Love's sake,\n     And thus; while Hermes on his pinions lay,\n     Like a stoop'd falcon ere he takes his prey.\n\n        \"Fair Hermes, crown'd with feathers, fluttering light,\n     I had a splendid dream of thee last night:\n     I saw thee sitting, on a throne of gold,\n     Among the Gods, upon Olympus old,\n     The only sad one; for thou didst not hear\n     The soft, lute-finger'd Muses chaunting clear,\n     Nor even Apollo when he sang alone,\n     Deaf to his throbbing throat's long, long melodious moan.\n     I dreamt I saw thee, robed in purple flakes,\n     Break amorous through the clouds, as morning breaks,\n     And, swiftly as a bright Phoebean dart,\n     Strike for the Cretan isle; and here thou art!\n     Too gentle Hermes, hast thou found the maid?\"\n     Whereat the star of Lethe not delay'd\n     His rosy eloquence, and thus inquired:\n     \"Thou smooth-lipp'd serpent, surely high inspired!\n     Thou beauteous wreath, with melancholy eyes,\n     Possess whatever bliss thou canst devise,\n     Telling me only where my nymph is fled,--\n     Where she doth breathe!\" \"Bright planet, thou hast said,\"\n     Return'd the snake, \"but seal with oaths, fair God!\"\n     \"I swear,\" said Hermes, \"by my serpent rod,\n     And by thine eyes, and by thy starry crown!\"\n     Light flew his earnest words, among the blossoms blown.\n     Then thus again the brilliance feminine:\n     \"Too frail of heart! for this lost nymph of thine,\n     Free as the air, invisibly, she strays\n     About these thornless wilds; her pleasant days\n     She tastes unseen; unseen her nimble feet\n     Leave traces in the grass and flowers sweet;\n     From weary tendrils, and bow'd branches green,\n     She plucks the fruit unseen, she bathes unseen:\n     And by my power is her beauty veil'd\n     To keep it unaffronted, unassail'd\n     By the love-glances of unlovely eyes,\n     Of Satyrs, Fauns, and blear'd Silenus' sighs.\n     Pale grew her immortality, for woe\n     Of all these lovers, and she grieved so\n     I took compassion on her, bade her steep\n     Her hair in weird syrops, that would keep\n     Her loveliness invisible, yet free\n     To wander as she loves, in liberty.\n     Thou shalt behold her, Hermes, thou alone,\n     If thou wilt, as thou swearest, grant my boon!\"\n     Then, once again, the charmed God began\n     An oath, and through the serpent's ears it ran\n     Warm, tremulous, devout, psalterian.\n     Ravish'd, she lifted her Circean head,\n     Blush'd a live damask, and swift-lisping said,\n     \"I was a woman, let me have once more\n     A woman's shape, and charming as before.\n     I love a youth of Corinth--O the bliss!\n     Give me my woman's form, and place me where he is.\n     Stoop, Hermes, let me breathe upon thy brow,\n     And thou shalt see thy sweet nymph even now.\"\n     The God on half-shut feathers sank serene,\n     She breath'd upon his eyes, and swift was seen\n     Of both the guarded nymph near-smiling on the green.\n     It was no dream; or say a dream it was,\n     Real are the dreams of Gods, and smoothly pass\n     Their pleasures in a long immortal dream.\n     One warm, flush'd moment, hovering, it might seem\n     Dash'd by the wood-nymph's beauty, so he burn'd;\n     Then, lighting on the printless verdure, turn'd\n     To the swoon'd serpent, and with languid arm,\n     Delicate, put to proof the lythe Caducean charm.\n     So done, upon the nymph his eyes he bent,\n     Full of adoring tears and blandishment,\n     And towards her stept: she, like a moon in wane,\n     Faded before him, cower'd, nor could restrain\n     Her fearful sobs, self-folding like a flower\n     That faints into itself at evening hour:\n     But the God fostering her chilled hand,\n     She felt the warmth, her eyelids open'd bland,\n     And, like new flowers at morning song of bees,\n     Bloom'd, and gave up her honey to the lees.\n     Into the green-recessed woods they flew;\n     Nor grew they pale, as mortal lovers do.\n\n        Left to herself, the serpent now began\n     To change; her elfin blood in madness ran,\n     Her mouth foam'd, and the grass, therewith besprent,\n     Wither'd at dew so sweet and virulent;\n     Her eyes in torture fix'd, and anguish drear,\n     Hot, glaz'd, and wide, with lid-lashes all sear,\n     Flash'd phosphor and sharp sparks, without one cooling tear.\n     The colours all inflam'd throughout her train,\n     She writh'd about, convuls'd with scarlet pain:\n     A deep volcanian yellow took the place\n     Of all her milder-mooned body's grace;\n     And, as the lava ravishes the mead,\n     Spoilt all her silver mail, and golden brede;\n     Made gloom of all her frecklings, streaks and bars,\n     Eclips'd her crescents, and lick'd up her stars:\n     So that, in moments few, she was undrest\n     Of all her sapphires, greens, and amethyst,\n     And rubious-argent: of all these bereft,\n     Nothing but pain and ugliness were left.\n     Still shone her crown; that vanish'd, also she\n     Melted and disappear'd as suddenly;\n     And in the air, her new voice luting soft,\n     Cried, \"Lycius! gentle Lycius!\"--Borne aloft\n     With the bright mists about the mountains hoar\n     These words dissolv'd: Crete's forests heard no more.\n\n        Whither fled Lamia, now a lady bright,\n     A full-born beauty new and exquisite?\n     She fled into that valley they pass o'er\n     Who go to Corinth from Cenchreas' shore;\n     And rested at the foot of those wild hills,\n     The rugged founts of the Peraean rills,\n     And of that other ridge whose barren back\n     Stretches, with all its mist and cloudy rack,\n     South-westward to Cleone. There she stood\n     About a young bird's flutter from a wood,\n     Fair, on a sloping green of mossy tread,\n     By a clear pool, wherein she passioned\n     To see herself escap'd from so sore ills,\n     While her robes flaunted with the daffodils.\n\n        Ah, happy Lycius!--for she was a maid\n     More beautiful than ever twisted braid,\n     Or sigh'd, or blush'd, or on spring-flowered lea\n     Spread a green kirtle to the minstrelsy:\n     A virgin purest lipp'd, yet in the lore\n     Of love deep learned to the red heart's core:\n     Not one hour old, yet of sciential brain\n     To unperplex bliss from its neighbour pain;\n     Define their pettish limits, and estrange\n     Their points of contact, and swift counterchange;\n     Intrigue with the specious chaos, and dispart\n     Its most ambiguous atoms with sure art;\n     As though in Cupid's college she had spent\n     Sweet days a lovely graduate, still unshent,\n     And kept his rosy terms in idle languishment.\n\n        Why this fair creature chose so fairily\n     By the wayside to linger, we shall see;\n     But first 'tis fit to tell how she could muse\n     And dream, when in the serpent prison-house,\n     Of all she list, strange or magnificent:\n     How, ever, where she will'd, her spirit went;\n     Whether to faint Elysium, or where\n     Down through tress-lifting waves the Nereids fair\n     Wind into Thetis' bower by many a pearly stair;\n     Or where God Bacchus drains his cups divine,\n     Stretch'd out, at ease, beneath a glutinous pine;\n     Or where in Pluto's gardens palatine\n     Mulciber's columns gleam in far piazzian line.\n     And sometimes into cities she would send\n     Her dream, with feast and rioting to blend;\n     And once, while among mortals dreaming thus,\n     She saw the young Corinthian Lycius\n     Charioting foremost in the envious race,\n     Like a young Jove with calm uneager face,\n     And fell into a swooning love of him.\n     Now on the moth-time of that evening dim\n     He would return that way, as well she knew,\n     To Corinth from the shore; for freshly blew\n     The eastern soft wind, and his galley now\n     Grated the quaystones with her brazen prow\n     In port Cenchreas, from Egina isle\n     Fresh anchor'd; whither he had been awhile\n     To sacrifice to Jove, whose temple there\n     Waits with high marble doors for blood and incense rare.\n     Jove heard his vows, and better'd his desire;\n     For by some freakful chance he made retire\n     From his companions, and set forth to walk,\n     Perhaps grown wearied of their Corinth talk:\n     Over the solitary hills he fared,\n     Thoughtless at first, but ere eve's star appeared\n     His phantasy was lost, where reason fades,\n     In the calm'd twilight of Platonic shades.\n     Lamia beheld him coming, near, more near--\n     Close to her passing, in indifference drear,\n     His silent sandals swept the mossy green;\n     So neighbour'd to him, and yet so unseen\n     She stood: he pass'd, shut up in mysteries,\n     His mind wrapp'd like his mantle, while her eyes\n     Follow'd his steps, and her neck regal white\n     Turn'd--syllabling thus, \"Ah, Lycius bright,\n     And will you leave me on the hills alone?\n     Lycius, look back! and be some pity shown.\"\n     He did; not with cold wonder fearingly,\n     But Orpheus-like at an Eurydice;\n     For so delicious were the words she sung,\n     It seem'd he had lov'd them a whole summer long:\n     And soon his eyes had drunk her beauty up,\n     Leaving no drop in the bewildering cup,\n     And still the cup was full,--while he afraid\n     Lest she should vanish ere his lip had paid\n     Due adoration, thus began to adore;\n     Her soft look growing coy, she saw his chain so sure:\n     \"Leave thee alone! Look back! Ah, Goddess, see\n     Whether my eyes can ever turn from thee!\n     For pity do not this sad heart belie--\n     Even as thou vanishest so I shall die.\n     Stay! though a Naiad of the rivers, stay!\n     To thy far wishes will thy streams obey:\n     Stay! though the greenest woods be thy domain,\n     Alone they can drink up the morning rain:\n     Though a descended Pleiad, will not one\n     Of thine harmonious sisters keep in tune\n     Thy spheres, and as thy silver proxy shine?\n     So sweetly to these ravish'd ears of mine\n     Came thy sweet greeting, that if thou shouldst fade\n     Thy memory will waste me to a shade--\n     For pity do not melt!\"--\"If I should stay,\"\n     Said Lamia, \"here, upon this floor of clay,\n     And pain my steps upon these flowers too rough,\n     What canst thou say or do of charm enough\n     To dull the nice remembrance of my home?\n     Thou canst not ask me with thee here to roam\n     Over these hills and vales, where no joy is,--\n     Empty of immortality and bliss!\n     Thou art a scholar, Lycius, and must know\n     That finer spirits cannot breathe below\n     In human climes, and live: Alas! poor youth,\n     What taste of purer air hast thou to soothe\n     My essence? What serener palaces,\n     Where I may all my many senses please,\n     And by mysterious sleights a hundred thirsts appease?\n     It cannot be--Adieu!\" So said, she rose\n     Tiptoe with white arms spread. He, sick to lose\n     The amorous promise of her lone complain,\n     Swoon'd, murmuring of love, and pale with pain.\n     The cruel lady, without any show\n     Of sorrow for her tender favourite's woe,\n     But rather, if her eyes could brighter be,\n     With brighter eyes and slow amenity,\n     Put her new lips to his, and gave afresh\n     The life she had so tangled in her mesh:\n     And as he from one trance was wakening\n     Into another, she began to sing,\n     Happy in beauty, life, and love, and every thing,\n     A song of love, too sweet for earthly lyres,\n     While, like held breath, the stars drew in their panting fires\n     And then she whisper'd in such trembling tone,\n     As those who, safe together met alone\n     For the first time through many anguish'd days,\n     Use other speech than looks; bidding him raise\n     His drooping head, and clear his soul of doubt,\n     For that she was a woman, and without\n     Any more subtle fluid in her veins\n     Than throbbing blood, and that the self-same pains\n     Inhabited her frail-strung heart as his.\n     And next she wonder'd how his eyes could miss\n     Her face so long in Corinth, where, she said,\n     She dwelt but half retir'd, and there had led\n     Days happy as the gold coin could invent\n     Without the aid of love; yet in content\n     Till she saw him, as once she pass'd him by,\n     Where 'gainst a column he leant thoughtfully\n     At Venus' temple porch, 'mid baskets heap'd\n     Of amorous herbs and flowers, newly reap'd\n     Late on that eve, as 'twas the night before\n     The Adonian feast; whereof she saw no more,\n     But wept alone those days, for why should she adore?\n     Lycius from death awoke into amaze,\n     To see her still, and singing so sweet lays;\n     Then from amaze into delight he fell\n     To hear her whisper woman's lore so well;\n     And every word she spake entic'd him on\n     To unperplex'd delight and pleasure known.\n     Let the mad poets say whate'er they please\n     Of the sweets of Fairies, Peris, Goddesses,\n     There is not such a treat among them all,\n     Haunters of cavern, lake, and waterfall,\n     As a real woman, lineal indeed\n     From Pyrrha's pebbles or old Adam's seed.\n     Thus gentle Lamia judg'd, and judg'd aright,\n     That Lycius could not love in half a fright,\n     So threw the goddess off, and won his heart\n     More pleasantly by playing woman's part,\n     With no more awe than what her beauty gave,\n     That, while it smote, still guaranteed to save.\n     Lycius to all made eloquent reply,\n     Marrying to every word a twinborn sigh;\n     And last, pointing to Corinth, ask'd her sweet,\n     If 'twas too far that night for her soft feet.\n     The way was short, for Lamia's eagerness\n     Made, by a spell, the triple league decrease\n     To a few paces; not at all surmised\n     By blinded Lycius, so in her comprized.\n     They pass'd the city gates, he knew not how\n     So noiseless, and he never thought to know.\n\n        As men talk in a dream, so Corinth all,\n     Throughout her palaces imperial,\n     And all her populous streets and temples lewd,\n     Mutter'd, like tempest in the distance brew'd,\n     To the wide-spreaded night above her towers.\n     Men, women, rich and poor, in the cool hours,\n     Shuffled their sandals o'er the pavement white,\n     Companion'd or alone; while many a light\n     Flared, here and there, from wealthy festivals,\n     And threw their moving shadows on the walls,\n     Or found them cluster'd in the corniced shade\n     Of some arch'd temple door, or dusky colonnade.\n\n        Muffling his face, of greeting friends in fear,\n     Her fingers he press'd hard, as one came near\n     With curl'd gray beard, sharp eyes, and smooth bald crown,\n     Slow-stepp'd, and robed in philosophic gown:\n     Lycius shrank closer, as they met and past,\n     Into his mantle, adding wings to haste,\n     While hurried Lamia trembled: \"Ah,\" said he,\n     \"Why do you shudder, love, so ruefully?\n     Why does your tender palm dissolve in dew?\"--\n     \"I'm wearied,\" said fair Lamia: \"tell me who\n     Is that old man? I cannot bring to mind\n     His features--Lycius! wherefore did you blind\n     Yourself from his quick eyes?\" Lycius replied,\n     'Tis Apollonius sage, my trusty guide\n     And good instructor; but to-night he seems\n     The ghost of folly haunting my sweet dreams.\n\n        While yet he spake they had arrived before\n     A pillar'd porch, with lofty portal door,\n     Where hung a silver lamp, whose phosphor glow\n     Reflected in the slabbed steps below,\n     Mild as a star in water; for so new,\n     And so unsullied was the marble hue,\n     So through the crystal polish, liquid fine,\n     Ran the dark veins, that none but feet divine\n     Could e'er have touch'd there. Sounds Aeolian\n     Breath'd from the hinges, as the ample span\n     Of the wide doors disclos'd a place unknown\n     Some time to any, but those two alone,\n     And a few Persian mutes, who that same year\n     Were seen about the markets: none knew where\n     They could inhabit; the most curious\n     Were foil'd, who watch'd to trace them to their house:\n     And but the flitter-winged verse must tell,\n     For truth's sake, what woe afterwards befel,\n     'Twould humour many a heart to leave them thus,\n     Shut from the busy world of more incredulous.\n\n\n\n\nPart 2\n\n     Love in a hut, with water and a crust,\n     Is--Love, forgive us!--cinders, ashes, dust;\n     Love in a palace is perhaps at last\n     More grievous torment than a hermit's fast--\n     That is a doubtful tale from faery land,\n     Hard for the non-elect to understand.\n     Had Lycius liv'd to hand his story down,\n     He might have given the moral a fresh frown,\n     Or clench'd it quite: but too short was their bliss\n     To breed distrust and hate, that make the soft voice hiss.\n     Besides, there, nightly, with terrific glare,\n     Love, jealous grown of so complete a pair,\n     Hover'd and buzz'd his wings, with fearful roar,\n     Above the lintel of their chamber door,\n     And down the passage cast a glow upon the floor.\n\n        For all this came a ruin: side by side\n     They were enthroned, in the even tide,\n     Upon a couch, near to a curtaining\n     Whose airy texture, from a golden string,\n     Floated into the room, and let appear\n     Unveil'd the summer heaven, blue and clear,\n     Betwixt two marble shafts:--there they reposed,\n     Where use had made it sweet, with eyelids closed,\n     Saving a tythe which love still open kept,\n     That they might see each other while they almost slept;\n     When from the slope side of a suburb hill,\n     Deafening the swallow's twitter, came a thrill\n     Of trumpets--Lycius started--the sounds fled,\n     But left a thought, a buzzing in his head.\n     For the first time, since first he harbour'd in\n     That purple-lined palace of sweet sin,\n     His spirit pass'd beyond its golden bourn\n     Into the noisy world almost forsworn.\n     The lady, ever watchful, penetrant,\n     Saw this with pain, so arguing a want\n     Of something more, more than her empery\n     Of joys; and she began to moan and sigh\n     Because he mused beyond her, knowing well\n     That but a moment's thought is passion's passing bell.\n     \"Why do you sigh, fair creature?\" whisper'd he:\n     \"Why do you think?\" return'd she tenderly:\n     \"You have deserted me--where am I now?\n     Not in your heart while care weighs on your brow:\n     No, no, you have dismiss'd me; and I go\n     From your breast houseless: ay, it must be so.\"\n     He answer'd, bending to her open eyes,\n     Where he was mirror'd small in paradise,\n     My silver planet, both of eve and morn!\n     Why will you plead yourself so sad forlorn,\n     While I am striving how to fill my heart\n     With deeper crimson, and a double smart?\n     How to entangle, trammel up and snare\n     Your soul in mine, and labyrinth you there\n     Like the hid scent in an unbudded rose?\n     Ay, a sweet kiss--you see your mighty woes.\n     My thoughts! shall I unveil them? Listen then!\n     What mortal hath a prize, that other men\n     May be confounded and abash'd withal,\n     But lets it sometimes pace abroad majestical,\n     And triumph, as in thee I should rejoice\n     Amid the hoarse alarm of Corinth's voice.\n     \"Let my foes choke, and my friends shout afar,\n     While through the thronged streets your bridal car\n     Wheels round its dazzling spokes.\" The lady's cheek\n     Trembled; she nothing said, but, pale and meek,\n     Arose and knelt before him, wept a rain\n     Of sorrows at his words; at last with pain\n     Beseeching him, the while his hand she wrung,\n     To change his purpose. He thereat was stung,\n     Perverse, with stronger fancy to reclaim\n     Her wild and timid nature to his aim:\n     Besides, for all his love, in self despite,\n     Against his better self, he took delight\n     Luxurious in her sorrows, soft and new.\n     His passion, cruel grown, took on a hue\n     Fierce and sanguineous as 'twas possible\n     In one whose brow had no dark veins to swell.\n     Fine was the mitigated fury, like\n     Apollo's presence when in act to strike\n     The serpent--Ha, the serpent! certes, she\n     Was none. She burnt, she lov'd the tyranny,\n     And, all subdued, consented to the hour\n     When to the bridal he should lead his paramour.\n     Whispering in midnight silence, said the youth,\n     \"Sure some sweet name thou hast, though, by my truth,\n     I have not ask'd it, ever thinking thee\n     Not mortal, but of heavenly progeny,\n     As still I do. Hast any mortal name,\n     Fit appellation for this dazzling frame?\n     Or friends or kinsfolk on the citied earth,\n     To share our marriage feast and nuptial mirth?\"\n     \"I have no friends,\" said Lamia,\" no, not one;\n     My presence in wide Corinth hardly known:\n     My parents' bones are in their dusty urns\n     Sepulchred, where no kindled incense burns,\n     Seeing all their luckless race are dead, save me,\n     And I neglect the holy rite for thee.\n     Even as you list invite your many guests;\n     But if, as now it seems, your vision rests\n     With any pleasure on me, do not bid\n     Old Apollonius--from him keep me hid.\"\n     Lycius, perplex'd at words so blind and blank,\n     Made close inquiry; from whose touch she shrank,\n     Feigning a sleep; and he to the dull shade\n     Of deep sleep in a moment was betray'd\n\n        It was the custom then to bring away\n     The bride from home at blushing shut of day,\n     Veil'd, in a chariot, heralded along\n     By strewn flowers, torches, and a marriage song,\n     With other pageants: but this fair unknown\n     Had not a friend. So being left alone,\n     (Lycius was gone to summon all his kin)\n     And knowing surely she could never win\n     His foolish heart from its mad pompousness,\n     She set herself, high-thoughted, how to dress\n     The misery in fit magnificence.\n     She did so, but 'tis doubtful how and whence\n     Came, and who were her subtle servitors.\n     About the halls, and to and from the doors,\n     There was a noise of wings, till in short space\n     The glowing banquet-room shone with wide-arched grace.\n     A haunting music, sole perhaps and lone\n     Supportress of the faery-roof, made moan\n     Throughout, as fearful the whole charm might fade.\n     Fresh carved cedar, mimicking a glade\n     Of palm and plantain, met from either side,\n     High in the midst, in honour of the bride:\n     Two palms and then two plantains, and so on,\n     From either side their stems branch'd one to one\n     All down the aisled place; and beneath all\n     There ran a stream of lamps straight on from wall to wall.\n     So canopied, lay an untasted feast\n     Teeming with odours. Lamia, regal drest,\n     Silently paced about, and as she went,\n     In pale contented sort of discontent,\n     Mission'd her viewless servants to enrich\n     The fretted splendour of each nook and niche.\n     Between the tree-stems, marbled plain at first,\n     Came jasper pannels; then, anon, there burst\n     Forth creeping imagery of slighter trees,\n     And with the larger wove in small intricacies.\n     Approving all, she faded at self-will,\n     And shut the chamber up, close, hush'd and still,\n     Complete and ready for the revels rude,\n     When dreadful guests would come to spoil her solitude.\n\n        The day appear'd, and all the gossip rout.\n     O senseless Lycius! Madman! wherefore flout\n     The silent-blessing fate, warm cloister'd hours,\n     And show to common eyes these secret bowers?\n     The herd approach'd; each guest, with busy brain,\n     Arriving at the portal, gaz'd amain,\n     And enter'd marveling: for they knew the street,\n     Remember'd it from childhood all complete\n     Without a gap, yet ne'er before had seen\n     That royal porch, that high-built fair demesne;\n     So in they hurried all, maz'd, curious and keen:\n     Save one, who look'd thereon with eye severe,\n     And with calm-planted steps walk'd in austere;\n     'Twas Apollonius: something too he laugh'd,\n     As though some knotty problem, that had daft\n     His patient thought, had now begun to thaw,\n     And solve and melt--'twas just as he foresaw.\n\n        He met within the murmurous vestibule\n     His young disciple. \"'Tis no common rule,\n     Lycius,\" said he, \"for uninvited guest\n     To force himself upon you, and infest\n     With an unbidden presence the bright throng\n     Of younger friends; yet must I do this wrong,\n     And you forgive me.\" Lycius blush'd, and led\n     The old man through the inner doors broad-spread;\n     With reconciling words and courteous mien\n     Turning into sweet milk the sophist's spleen.\n\n        Of wealthy lustre was the banquet-room,\n     Fill'd with pervading brilliance and perfume:\n     Before each lucid pannel fuming stood\n     A censer fed with myrrh and spiced wood,\n     Each by a sacred tripod held aloft,\n     Whose slender feet wide-swerv'd upon the soft\n     Wool-woofed carpets: fifty wreaths of smoke\n     From fifty censers their light voyage took\n     To the high roof, still mimick'd as they rose\n     Along the mirror'd walls by twin-clouds odorous.\n     Twelve sphered tables, by silk seats insphered,\n     High as the level of a man's breast rear'd\n     On libbard's paws, upheld the heavy gold\n     Of cups and goblets, and the store thrice told\n     Of Ceres' horn, and, in huge vessels, wine\n     Come from the gloomy tun with merry shine.\n     Thus loaded with a feast the tables stood,\n     Each shrining in the midst the image of a God.\n\n        When in an antichamber every guest\n     Had felt the cold full sponge to pleasure press'd,\n     By minist'ring slaves, upon his hands and feet,\n     And fragrant oils with ceremony meet\n     Pour'd on his hair, they all mov'd to the feast\n     In white robes, and themselves in order placed\n     Around the silken couches, wondering\n     Whence all this mighty cost and blaze of wealth could spring.\n\n        Soft went the music the soft air along,\n     While fluent Greek a vowel'd undersong\n     Kept up among the guests discoursing low\n     At first, for scarcely was the wine at flow;\n     But when the happy vintage touch'd their brains,\n     Louder they talk, and louder come the strains\n     Of powerful instruments--the gorgeous dyes,\n     The space, the splendour of the draperies,\n     The roof of awful richness, nectarous cheer,\n     Beautiful slaves, and Lamia's self, appear,\n     Now, when the wine has done its rosy deed,\n     And every soul from human trammels freed,\n     No more so strange; for merry wine, sweet wine,\n     Will make Elysian shades not too fair, too divine.\n     Soon was God Bacchus at meridian height;\n     Flush'd were their cheeks, and bright eyes double bright:\n     Garlands of every green, and every scent\n     From vales deflower'd, or forest-trees branch rent,\n     In baskets of bright osier'd gold were brought\n     High as the handles heap'd, to suit the thought\n     Of every guest; that each, as he did please,\n     Might fancy-fit his brows, silk-pillow'd at his ease.\n\n        What wreath for Lamia? What for Lycius?\n     What for the sage, old Apollonius?\n     Upon her aching forehead be there hung\n     The leaves of willow and of adder's tongue;\n     And for the youth, quick, let us strip for him\n     The thyrsus, that his watching eyes may swim\n     Into forgetfulness; and, for the sage,\n     Let spear-grass and the spiteful thistle wage\n     War on his temples. Do not all charms fly\n     At the mere touch of cold philosophy?\n     There was an awful rainbow once in heaven:\n     We know her woof, her texture; she is given\n     In the dull catalogue of common things.\n     Philosophy will clip an Angel's wings,\n     Conquer all mysteries by rule and line,\n     Empty the haunted air, and gnomed mine--\n     Unweave a rainbow, as it erewhile made\n     The tender-person'd Lamia melt into a shade.\n\n        By her glad Lycius sitting, in chief place,\n     Scarce saw in all the room another face,\n     Till, checking his love trance, a cup he took\n     Full brimm'd, and opposite sent forth a look\n     'Cross the broad table, to beseech a glance\n     From his old teacher's wrinkled countenance,\n     And pledge him. The bald-head philosopher\n     Had fix'd his eye, without a twinkle or stir\n     Full on the alarmed beauty of the bride,\n     Brow-beating her fair form, and troubling her sweet pride.\n     Lycius then press'd her hand, with devout touch,\n     As pale it lay upon the rosy couch:\n     'Twas icy, and the cold ran through his veins;\n     Then sudden it grew hot, and all the pains\n     Of an unnatural heat shot to his heart.\n     \"Lamia, what means this? Wherefore dost thou start?\n     Know'st thou that man?\" Poor Lamia answer'd not.\n     He gaz'd into her eyes, and not a jot\n     Own'd they the lovelorn piteous appeal:\n     More, more he gaz'd: his human senses reel:\n     Some hungry spell that loveliness absorbs;\n     There was no recognition in those orbs.\n     \"Lamia!\" he cried--and no soft-toned reply.\n     The many heard, and the loud revelry\n     Grew hush; the stately music no more breathes;\n     The myrtle sicken'd in a thousand wreaths.\n     By faint degrees, voice, lute, and pleasure ceased;\n     A deadly silence step by step increased,\n     Until it seem'd a horrid presence there,\n     And not a man but felt the terror in his hair.\n     \"Lamia!\" he shriek'd; and nothing but the shriek\n     With its sad echo did the silence break.\n     \"Begone, foul dream!\" he cried, gazing again\n     In the bride's face, where now no azure vein\n     Wander'd on fair-spaced temples; no soft bloom\n     Misted the cheek; no passion to illume\n     The deep-recessed vision--all was blight;\n     Lamia, no longer fair, there sat a deadly white.\n     \"Shut, shut those juggling eyes, thou ruthless man!\n     Turn them aside, wretch! or the righteous ban\n     Of all the Gods, whose dreadful images\n     Here represent their shadowy presences,\n     May pierce them on the sudden with the thorn\n     Of painful blindness; leaving thee forlorn,\n     In trembling dotage to the feeblest fright\n     Of conscience, for their long offended might,\n     For all thine impious proud-heart sophistries,\n     Unlawful magic, and enticing lies.\n     Corinthians! look upon that gray-beard wretch!\n     Mark how, possess'd, his lashless eyelids stretch\n     Around his demon eyes! Corinthians, see!\n     My sweet bride withers at their potency.\"\n     \"Fool!\" said the sophist, in an under-tone\n     Gruff with contempt; which a death-nighing moan\n     From Lycius answer'd, as heart-struck and lost,\n     He sank supine beside the aching ghost.\n     \"Fool! Fool!\" repeated he, while his eyes still\n     Relented not, nor mov'd; \"from every ill\n     Of life have I preserv'd thee to this day,\n     And shall I see thee made a serpent's prey?\"\n     Then Lamia breath'd death breath; the sophist's eye,\n     Like a sharp spear, went through her utterly,\n     Keen, cruel, perceant, stinging: she, as well\n     As her weak hand could any meaning tell,\n     Motion'd him to be silent; vainly so,\n     He look'd and look'd again a level--No!\n     \"A Serpent!\" echoed he; no sooner said,\n     Than with a frightful scream she vanished:\n     And Lycius' arms were empty of delight,\n     As were his limbs of life, from that same night.\n     On the high couch he lay!--his friends came round\n     Supported him--no pulse, or breath they found,\n     And, in its marriage robe, the heavy body wound.\n\n\n\n\n\n\n        \n            *** END OF THE PROJECT GUTENBERG EBOOK LAMIA ***\n        \n\n    \n\nUpdated editions will replace the previous one\342\200\224the old editions will\nbe renamed.\n\n\nCreating the works from print editions not protected by U.S. copyright\nlaw means that no one owns a United States copyright in these works,\nso the Foundation (and you!) can copy and distribute it in the United\nStates without permission and without paying copyright\nroyalties. Special rules, set forth in the General Terms of Use part\nof this license, apply to copying and distributing Project\nGutenberg\342\204\242 electronic works to protect the PROJECT GUTENBERG\342\204\242\nconcept and trademark. Project Gutenberg is a registered trademark,\nand may not be used if you charge for an eBook, except by following\nthe terms of the trademark license, including paying royalties for use\nof the Project Gutenberg trademark. If you do not charge anything for\ncopies of this eBook, complying with the trademark license is very\neasy. You may use this eBook for nearly any purpose such as creation\nof derivative works, reports, performances and research. Project\nGutenberg eBooks may be modified and printed and given away\342\200\224you may\ndo practically ANYTHING in the United States with eBooks not protected\nby U.S. copyright law. Redistribution is subject to the trademark\nlicense, especially commercial redistribution.\n\n\nSTART: FULL LICENSE\nTHE FULL PROJECT GUTENBERG LICENSE\nPLEASE READ THIS BEFORE YOU DISTRIBUTE OR USE THIS WORK\n\n\nTo protect the Project Gutenberg\342\204\242 mission of promoting the free\ndistribution of electronic works, by using or distributing this work\n(or any other work associated in any way with the phrase \342\200\234Project\nGutenberg\342\200\235), you agree to comply with all the terms of the Full\nProject Gutenberg\342\204\242 License available with this file or online at\nwww.gutenberg.org/license.\n\n\nSection 1. General Terms of Use and Redistributing Project Gutenberg\342\204\242 electronic works\n\n\n1.A. By reading or using any part of this Project Gutenberg\342\204\242\nelectronic work, you indicate that you have read, understand, agree to\nand accept all the terms of this license and intellectual property\n(trademark/copyright) agreement. If you do not agree to abide by all\nthe terms of this agreement, you must cease using and return or\ndestroy all copies of Project Gutenberg\342\204\242 electronic works in your\npossession. If you paid a fee for obtaining a copy of or access to a\nProject Gutenberg\342\204\242 electronic work and you do not agree to be bound\nby the terms of this agreement, you may obtain a refund from the person\nor entity to whom you paid the fee as set forth in paragraph 1.E.8.\n\n\n1.B. \342\200\234Project Gutenberg\342\200\235 is a registered trademark. It may only be\nused on or associated in any way with an electronic work by people who\nagree to be bound by the terms of this agreement. There are a few\nthings that you can do with most Project Gutenberg\342\204\242 electronic works\neven without complying with the full terms of this agreement. See\nparagraph 1.C below. There are a lot of things you can do with Project\nGutenberg\342\204\242 electronic works if you follow the terms of this\nagreement and help preserve free future access to Project Gutenberg\342\204\242\nelectronic works. See paragraph 1.E below.\n\n\n1.C. The Project Gutenberg Literary Archive Foundation (\342\200\234the\nFoundation\342\200\235 or PGLAF), owns a compilation copyright in the collection\nof Project Gutenberg\342\204\242 electronic works. Nearly all the individual\nworks in the collection are in the public domain in the United\nStates. If an individual work is unprotected by copyright law in the\nUnited States and you are located in the United States, we do not\nclaim a right to prevent you from copying, distributing, performing,\ndisplaying or creating derivative works based on the work as long as\nall references to Project Gutenberg are removed. Of course, we hope\nthat you will support the Project Gutenberg\342\204\242 mission of promoting\nfree access to electronic works by freely sharing Project Gutenberg\342\204\242\nworks in compliance with the terms of this agreement for keeping the\nProject Gutenberg\342\204\242 name associated with the work. You can easily\ncomply with the terms of this agreement by keeping this work in the\nsame format with its attached full Project Gutenberg\342\204\242 License when\nyou share it without charge with others.\n\n\n\n1.D. The copyright laws of the place where you are located also govern\nwhat you can do with this work. Copyright laws in most countries are\nin a constant state of change. If you are outside the United States,\ncheck the laws of your country in addition to the terms of this\nagreement before downloading, copying, displaying, performing,\ndistributing or creating derivative works based on this work or any\nother Project Gutenberg\342\204\242 work. The Foundation makes no\nrepresentations concerning the copyright status of any work in any\ncountry other than the United States.\n\n\n1.E. Unless you have removed all references to Project Gutenberg:\n\n\n1.E.1. The following sentence, with active links to, or other\nimmediate access to, the full Project Gutenberg\342\204\242 License must appear\nprominently whenever any copy of a Project Gutenberg\342\204\242 work (any work\non which the phrase \342\200\234Project Gutenberg\342\200\235 appears, or with which the\nphrase \342\200\234Project Gutenberg\342\200\235 is associated) is accessed, displayed,\nperformed, viewed, copied or distributed:\n\n\n  \n    This eBook is for the use of anyone anywhere in the United States and most\n    other parts of the world at no cost and with almost no restrictions\n    whatsoever. You may copy it, give it away or re-use it under the terms\n    of the Project Gutenberg License included with this eBook or online\n    at www.gutenberg.org. If you\n    are not located in the United States, you will have to check the laws\n    of the country where you are located before using this eBook.\n  \n\n\n1.E.2. If an individual Project Gutenberg\342\204\242 electronic work is\nderived from texts not protected by U.S. copyright law (does not\ncontain a notice indicating that it is posted with permission of the\ncopyright holder), the work can be copied and distributed to anyone in\nthe United States without paying any fees or charges. If you are\nredistributing or providing access to a work with the phrase \342\200\234Project\nGutenberg\342\200\235 associated with or appearing on the work, you must comply\neither with the requirements of paragraphs 1.E.1 through 1.E.7 or\nobtain permission for the use of the work and the Project Gutenberg\342\204\242\ntrademark as set forth in paragraphs 1.E.8 or 1.E.9.\n\n\n1.E.3. If an individual Project Gutenberg\342\204\242 electronic work is posted\nwith the permission of the copyright holder, your use and distribution\nmust comply with both paragraphs 1.E.1 through 1.E.7 and any\nadditional terms imposed by the copyright holder. Additional terms\nwill be linked to the Project Gutenberg\342\204\242 License for all works\nposted with the permission of the copyright holder found at the\nbeginning of this work.\n\n\n1.E.4. Do not unlink or detach or remove the full Project Gutenberg\342\204\242\nLicense terms from this work, or any files containing a part of this\nwork or any other work associated with Project Gutenberg\342\204\242.\n\n\n1.E.5. Do not copy, display, perform, distribute or redistribute this\nelectronic work, or any part of this electronic work, without\nprominently displaying the sentence set forth in paragraph 1.E.1 with\nactive links or immediate access to the full terms of the Project\nGutenberg\342\204\242 License.\n\n\n1.E.6. You may convert to and distribute this work in any binary,\ncompressed, marked up, nonproprietary or proprietary form, including\nany word processing or hypertext form. However, if you provide access\nto or distribute copies of a Project Gutenberg\342\204\242 work in a format\nother than \342\200\234Plain Vanilla ASCII\342\200\235 or other format used in the official\nversion posted on the official Project Gutenberg\342\204\242 website\n(www.gutenberg.org), you must, at no additional cost, fee or expense\nto the user, provide a copy, a means of exporting a copy, or a means\nof obtaining a copy upon request, of the work in its original \342\200\234Plain\nVanilla ASCII\342\200\235 or other form. Any alternate format must include the\nfull Project Gutenberg\342\204\242 License as specified in paragraph 1.E.1.\n\n\n1.E.7. Do not charge a fee for access to, viewing, displaying,\nperforming, copying or distributing any Project Gutenberg\342\204\242 works\nunless you comply with paragraph 1.E.8 or 1.E.9.\n\n\n1.E.8. You may charge a reasonable fee for copies of or providing\naccess to or distributing Project Gutenberg\342\204\242 electronic works\nprovided that:\n\n\n    \342\200\242 You pay a royalty fee of 20% of the gross profits you derive from\n        the use of Project Gutenberg\342\204\242 works calculated using the method\n        you already use to calculate your applicable taxes. The fee is owed\n        to the owner of the Project Gutenberg\342\204\242 trademark, but he has\n        agreed to donate royalties under this paragraph to the Project\n        Gutenberg Literary Archive Foundation. Royalty payments must be paid\n        within 60 days following each date on which you prepare (or are\n        legally required to prepare) your periodic tax returns. Royalty\n        payments should be clearly marked as such and sent to the Project\n        Gutenberg Literary Archive Foundation at the address specified in\n        Section 4, \342\200\234Information about donations to the Project Gutenberg\n        Literary Archive Foundation.\342\200\235\n    \n    \342\200\242 You provide a full refund of any money paid by a user who notifies\n        you in writing (or by e-mail) within 30 days of receipt that s/he\n        does not agree to the terms of the full Project Gutenberg\342\204\242\n        License. You must require such a user to return or destroy all\n        copies of the works possessed in a physical medium and discontinue\n        all use of and all access to other copies of Project Gutenberg\342\204\242\n        works.\n    \n    \342\200\242 You provide, in accordance with paragraph 1.F.3, a full refund of\n        any money paid for a work or a replacement copy, if a defect in the\n        electronic work is discovered and reported to you within 90 days of\n        receipt of the work.\n    \n    \342\200\242 You comply with all other terms of this agreement for free\n        distribution of Project Gutenberg\342\204\242 works.\n    \n\n\n1.E.9. If you wish to charge a fee or distribute a Project\nGutenberg\342\204\242 electronic work or group of works on different terms than\nare set forth in this agreement, you must obtain permission in writing\nfrom the Project Gutenberg Literary Archive Foundation, the manager of\nthe Project Gutenberg\342\204\242 trademark. Contact the Foundation as set\nforth in Section 3 below.\n\n\n1.F.\n\n\n1.F.1. Project Gutenberg volunteers and employees expend considerable\neffort to identify, do copyright research on, transcribe and proofread\nworks not protected by U.S. copyright law in creating the Project\nGutenberg\342\204\242 collection. Despite these efforts, Project Gutenberg\342\204\242\nelectronic works, and the medium on which they may be stored, may\ncontain \342\200\234Defects,\342\200\235 such as, but not limited to, incomplete, inaccurate\nor corrupt data, transcription errors, a copyright or other\nintellectual property infringement, a defective or damaged disk or\nother medium, a computer virus, or computer codes that damage or\ncannot be read by your equipment.\n\n\n1.F.2. LIMITED WARRANTY, DISCLAIMER OF DAMAGES - Except for the \342\200\234Right\nof Replacement or Refund\342\200\235 described in paragraph 1.F.3, the Project\nGutenberg Literary Archive Foundation, the owner of the Project\nGutenberg\342\204\242 trademark, and any other party distributing a Project\nGutenberg\342\204\242 electronic work under this agreement, disclaim all\nliability to you for damages, costs and expenses, including legal\nfees. YOU AGREE THAT YOU HAVE NO REMEDIES FOR NEGLIGENCE, STRICT\nLIABILITY, BREACH OF WARRANTY OR BREACH OF CONTRACT EXCEPT THOSE\nPROVIDED IN PARAGRAPH 1.F.3. YOU AGREE THAT THE FOUNDATION, THE\nTRADEMARK OWNER, AND ANY DISTRIBUTOR UNDER THIS AGREEMENT WILL NOT BE\nLIABLE TO YOU FOR ACTUAL, DIRECT, INDIRECT, CONSEQUENTIAL, PUNITIVE OR\nINCIDENTAL DAMAGES EVEN IF YOU GIVE NOTICE OF THE POSSIBILITY OF SUCH\nDAMAGE.\n\n\n1.F.3. LIMITED RIGHT OF REPLACEMENT OR REFUND - If you discover a\ndefect in this electronic work within 90 days of receiving it, you can\nreceive a refund of the money (if any) you paid for it by sending a\nwritten explanation to the person you received the work from. If you\nreceived the work on a physical medium, you must return the medium\nwith your written explanation. The person or entity that provided you\nwith the defective work may elect to provide a replacement copy in\nlieu of a refund. If you received the work electronically, the person\nor entity providing it to you may choose to give you a second\nopportunity to receive the work electronically in lieu of a refund. If\nthe second copy is also defective, you may demand a refund in writing\nwithout further opportunities to fix the problem.\n\n\n1.F.4. Except for the limited right of replacement or refund set forth\nin paragraph 1.F.3, this work is provided to you \342\200\230AS-IS\342\200\231, WITH NO\nOTHER WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT\nLIMITED TO WARRANTIES OF MERCHANTABILITY OR FITNESS FOR ANY PURPOSE.\n\n\n1.F.5. Some states do not allow disclaimers of certain implied\nwarranties or the exclusion or limitation of certain types of\ndamages. If any disclaimer or limitation set forth in this agreement\nviolates the law of the state applicable to this agreement, the\nagreement shall be interpreted to make the maximum disclaimer or\nlimitation permitted by the applicable state law. The invalidity or\nunenforceability of any provision of this agreement shall not void the\nremaining provisions.\n\n\n1.F.6. INDEMNITY - You agree to indemnify and hold the Foundation, the\ntrademark owner, any agent or employee of the Foundation, anyone\nproviding copies of Project Gutenberg\342\204\242 electronic works in\naccordance with this agreement, and any volunteers associated with the\nproduction, promotion and distribution of Project Gutenberg\342\204\242\nelectronic works, harmless from all liability, costs and expenses,\nincluding legal fees, that arise directly or indirectly from any of\nthe following which you do or cause to occur: (a) distribution of this\nor any Project Gutenberg\342\204\242 work, (b) alteration, modification, or\nadditions or deletions to any Project Gutenberg\342\204\242 work, and (c) any\nDefect you cause.\n\n\nSection 2. Information about the Mission of Project Gutenberg\342\204\242\n\n\nProject Gutenberg\342\204\242 is synonymous with the free distribution of\nelectronic works in formats readable by the widest variety of\ncomputers including obsolete, old, middle-aged and new computers. It\nexists because of the efforts of hundreds of volunteers and donations\nfrom people in all walks of life.\n\n\nVolunteers and financial support to provide volunteers with the\nassistance they need are critical to reaching Project Gutenberg\342\204\242\342\200\231s\ngoals and ensuring that the Project Gutenberg\342\204\242 collection will\nremain freely available for generations to come. In 2001, the Project\nGutenberg Literary Archive Foundation was created to provide a secure\nand permanent future for Project Gutenberg\342\204\242 and future\ngenerations. To learn more about the Project Gutenberg Literary\nArchive Foundation and how your efforts and donations can help, see\nSections 3 and 4 and the Foundation information page at www.gutenberg.org.\n\n\nSection 3. Information about the Project Gutenberg Literary Archive Foundation\n\n\nThe Project Gutenberg Literary Archive Foundation is a non-profit\n501(c)(3) educational corporation organized under the laws of the\nstate of Mississippi and granted tax exempt status by the Internal\nRevenue Service. The Foundation\342\200\231s EIN or federal tax identification\nnumber is 64-6221541. Contributions to the Project Gutenberg Literary\nArchive Foundation are tax deductible to the full extent permitted by\nU.S. federal laws and your state\342\200\231s laws.\n\n\nThe Foundation\342\200\231s business office is located at 809 North 1500 West,\nSalt Lake City, UT 84116, (801) 596-1887. Email contact links and up\nto date contact information can be found at the Foundation\342\200\231s website\nand official page at www.gutenberg.org/contact\n\n\nSection 4. Information about Donations to the Project Gutenberg Literary Archive Foundation\n\n\nProject Gutenberg\342\204\242 depends upon and cannot survive without widespread\npublic support and donations to carry out its mission of\nincreasing the number of public domain and licensed works that can be\nfreely distributed in machine-readable form accessible by the widest\narray of equipment including outdated equipment. Many small donations\n($1 to $5,000) are particularly important to maintaining tax exempt\nstatus with the IRS.\n\n\nThe Foundation is committed to complying with the laws regulating\ncharities and charitable donations in all 50 states of the United\nStates. Compliance requirements are not uniform and it takes a\nconsiderable effort, much paperwork and many fees to meet and keep up\nwith these requirements. We do not solicit donations in locations\nwhere we have not received written confirmation of compliance. To SEND\nDONATIONS or determine the status of compliance for any particular state\nvisit www.gutenberg.org/donate.\n\n\nWhile we cannot and do not solicit contributions from states where we\nhave not met the solicitation requirements, we know of no prohibition\nagainst accepting unsolicited donations from donors in such states who\napproach us with offers to donate.\n\n\nInternational donations are gratefully accepted, but we cannot make\nany statements concerning tax treatment of donations received from\noutside the United States. U.S. laws alone swamp our small staff.\n\n\nPlease check the Project Gutenberg web pages for current donation\nmethods and addresses. Donations are accepted in a number of other\nways including checks, online payments and credit card donations. To\ndonate, please visit: www.gutenberg.org/donate.\n\n\nSection 5. General Information About Project Gutenberg\342\204\242 electronic works\n\n\nProfessor Michael S. Hart was the originator of the Project\nGutenberg\342\204\242 concept of a library of electronic works that could be\nfreely shared with anyone. For forty years, he produced and\ndistributed Project Gutenberg\342\204\242 eBooks with only a loose network of\nvolunteer support.\n\n\nProject Gutenberg\342\204\242 eBooks are often created from several printed\neditions, all of which are confirmed as not protected by copyright in\nthe U.S. unless a copyright notice is included. Thus, we do not\nnecessarily keep eBooks in compliance with any particular paper\nedition.\n\n\nMost people start at our website which has the main PG search\nfacility: www.gutenberg.org.\n\n\nThis website includes information about Project Gutenberg\342\204\242,\nincluding how to make donations to the Project Gutenberg Literary\nArchive Foundation, how to help produce our new eBooks, and how to\nsubscribe to our email newsletter to hear about new eBooks.\n\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"lamia.txt"

	.section	__DATA,__data
	.globl	___infile                       ## @__infile
	.p2align	3, 0x0
___infile:
	.quad	L_.str
	.quad	54185                           ## 0xd3a9
	.quad	___lamia
	.long	0                               ## 0x0
	.space	4

	.globl	_infile                         ## @infile
	.p2align	3, 0x0
_infile:
	.quad	___infile

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"r"

L_.str.2:                               ## @.str.2
	.asciz	"Original size: %ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"Compressed (%i): %u, decompressed: (%u)\n"

.subsections_via_symbols
