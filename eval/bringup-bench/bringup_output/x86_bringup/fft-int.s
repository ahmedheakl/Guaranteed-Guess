	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fix_fft                        ## -- Begin function fix_fft
	.p2align	4, 0x90
_fix_fft:                               ## @fix_fft
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
	movl	%ecx, -68(%rbp)                 ## 4-byte Spill
	movl	%edx, %ecx
	movl	$1, %r10d
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	$-1, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	cmpl	$1024, %r10d                    ## imm = 0x400
	jg	LBB0_26
## %bb.1:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	cmpl	$2, %r10d
	jl	LBB0_26
## %bb.2:
	movl	%r10d, %r11d
	xorl	%ecx, %ecx
	movl	$1, %eax
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	incq	%rax
	cmpq	%r11, %rax
	je	LBB0_8
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	movl	%r10d, %edx
	.p2align	4, 0x90
LBB0_4:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	sarl	%edx
	leal	(%rdx,%rcx), %r8d
	cmpl	%r10d, %r8d
	jge	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	leal	-1(%rdx), %r8d
	andl	%ecx, %r8d
	movl	%r8d, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	(%rdi,%rax,4), %r8d
	movl	(%rdi,%rdx,4), %r9d
	movl	%r9d, (%rdi,%rax,4)
	movl	%r8d, (%rdi,%rdx,4)
	movl	(%rsi,%rax,4), %r8d
	movl	(%rsi,%rdx,4), %r9d
	movl	%r9d, (%rsi,%rax,4)
	movl	%r8d, (%rsi,%rdx,4)
	jmp	LBB0_7
LBB0_8:
	movl	$1, %ecx
	movl	$9, -64(%rbp)                   ## 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	%rsi, -88(%rbp)                 ## 8-byte Spill
	movq	%rdi, -80(%rbp)                 ## 8-byte Spill
	movl	%r10d, -72(%rbp)                ## 4-byte Spill
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_25:                                ##   in Loop: Header=BB0_9 Depth=1
	decl	-64(%rbp)                       ## 4-byte Folded Spill
	movl	-60(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, %ecx
	cmpl	%r10d, %eax
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	jge	LBB0_26
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_14 Depth 2
                                        ##     Child Loop BB0_21 Depth 2
                                        ##       Child Loop BB0_23 Depth 3
	cmpl	$0, -68(%rbp)                   ## 4-byte Folded Reload
	je	LBB0_10
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	(%rdi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movl	(%rsi), %r8d
	movl	%r8d, %eax
	negl	%eax
	cmovsl	%r8d, %eax
	movb	$1, %r8b
	cmpl	$16383, %edx                    ## imm = 0x3FFF
	ja	LBB0_18
## %bb.12:                              ##   in Loop: Header=BB0_9 Depth=1
	cmpl	$16383, %eax                    ## imm = 0x3FFF
	ja	LBB0_18
## %bb.13:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	$1, %r8d
	.p2align	4, 0x90
LBB0_14:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r8, %rax
	cmpq	%r8, %r11
	je	LBB0_17
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=2
	movl	(%rdi,%rax,4), %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	movl	(%rsi,%rax,4), %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	cmpl	$16383, %r8d                    ## imm = 0x3FFF
	ja	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_14 Depth=2
	leaq	1(%rax), %r8
	cmpl	$16384, %edx                    ## imm = 0x4000
	jb	LBB0_14
LBB0_17:                                ##   in Loop: Header=BB0_9 Depth=1
	cmpq	%r11, %rax
	setb	%r8b
LBB0_18:                                ##   in Loop: Header=BB0_9 Depth=1
	movzbl	%r8b, %eax
	movq	-56(%rbp), %rdx                 ## 8-byte Reload
	addl	%eax, %edx
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB0_19
	.p2align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_9 Depth=1
	movb	$1, %r8b
LBB0_19:                                ##   in Loop: Header=BB0_9 Depth=1
	leal	(%rcx,%rcx), %eax
	movl	%eax, -60(%rbp)                 ## 4-byte Spill
	testl	%ecx, %ecx
	jle	LBB0_25
## %bb.20:                              ##   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %r13                 ## 4-byte Folded Reload
	movl	%ecx, %r12d
	leaq	(,%r13,4), %rbx
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movq	-80(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	xorl	%edi, %edi
	movb	%r8b, -41(%rbp)                 ## 1-byte Spill
	movq	%rbx, -120(%rbp)                ## 8-byte Spill
	jmp	LBB0_21
	.p2align	4, 0x90
LBB0_24:                                ##   in Loop: Header=BB0_21 Depth=2
	movq	-112(%rbp), %rdi                ## 8-byte Reload
	incq	%rdi
	addq	$4, -96(%rbp)                   ## 8-byte Folded Spill
	addq	$4, -104(%rbp)                  ## 8-byte Folded Spill
	cmpq	%r12, %rdi
	movl	-72(%rbp), %r10d                ## 4-byte Reload
	movzbl	-41(%rbp), %r8d                 ## 1-byte Folded Reload
	je	LBB0_25
LBB0_21:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_23 Depth 3
	movl	%edi, %eax
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movslq	%eax, %rcx
	leaq	_Sinewave(%rip), %rsi
	movl	(%rsi,%rcx,4), %edx
	movl	%edx, %eax
	negl	%eax
	cmpl	$0, -68(%rbp)                   ## 4-byte Folded Reload
	movl	1024(%rsi,%rcx,4), %r15d
	cmovnel	%edx, %eax
	movl	%r8d, %ecx
	sarl	%cl, %r15d
	sarl	%cl, %eax
	movq	%rdi, -112(%rbp)                ## 8-byte Spill
	cmpl	%edi, %r10d
	jle	LBB0_24
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=2
	movq	-104(%rbp), %rsi                ## 8-byte Reload
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	-112(%rbp), %r14                ## 8-byte Reload
	.p2align	4, 0x90
LBB0_23:                                ##   Parent Loop BB0_9 Depth=1
                                        ##     Parent Loop BB0_21 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	(%rdi,%r12,4), %ebx
	movl	%ebx, %edx
	imull	%r15d, %edx
	sarl	$15, %edx
	movq	%r11, %r9
	movl	(%rsi,%r12,4), %r11d
	movl	%r11d, %ecx
	imull	%eax, %ecx
	sarl	$15, %ecx
	subl	%ecx, %edx
	imull	%r15d, %r11d
	sarl	$15, %r11d
	imull	%eax, %ebx
	movl	(%rdi), %r10d
	movl	%eax, %r8d
	movl	%r15d, %eax
	movl	(%rsi), %r15d
	movzbl	-41(%rbp), %ecx                 ## 1-byte Folded Reload
	sarl	%cl, %r10d
	sarl	%cl, %r15d
	sarl	$15, %ebx
	addl	%r11d, %ebx
	movq	%r9, %r11
	movl	%r10d, %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rdi,%r12,4)
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	movl	%ecx, (%rsi,%r12,4)
	addl	%edx, %r10d
	movl	%r10d, (%rdi)
	addl	%ebx, %r15d
	movq	-120(%rbp), %rbx                ## 8-byte Reload
	movl	%r15d, (%rsi)
	movl	%eax, %r15d
	movl	%r8d, %eax
	addq	%r13, %r14
	addq	%rbx, %rdi
	addq	%rbx, %rsi
	cmpq	%r9, %r14
	jl	LBB0_23
	jmp	LBB0_24
LBB0_26:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
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
	.globl	_fix_mpy                        ## -- Begin function fix_mpy
	.p2align	4, 0x90
_fix_mpy:                               ## @fix_mpy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	imull	%esi, %eax
	sarl	$15, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function window
LCPI2_0:
	.long	16384                           ## 0x4000
	.long	16384                           ## 0x4000
	.long	16384                           ## 0x4000
	.long	16384                           ## 0x4000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_window
	.p2align	4, 0x90
_window:                                ## @window
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%r8d, %r8d
	movl	$1024, %eax                     ## imm = 0x400
	xorl	%edx, %edx
	idivl	%esi
                                        ## kill: def $eax killed $eax def $rax
	movl	$256, %ecx                      ## imm = 0x100
	cmpl	$2, %esi
	jl	LBB2_15
## %bb.1:
	movl	%esi, %r8d
	shrl	%r8d
	movslq	%eax, %rdx
	xorl	%r9d, %r9d
	movl	$256, %ecx                      ## imm = 0x100
	cmpl	$16, %esi
	jb	LBB2_9
## %bb.2:
	cmpl	$1, %eax
	jne	LBB2_9
## %bb.3:
	leaq	_Sinewave(%rip), %r9
	leaq	(%r9,%r8,4), %r9
	addq	$1024, %r9                      ## imm = 0x400
	cmpq	%rdi, %r9
	jbe	LBB2_6
## %bb.4:
	leaq	(%rdi,%r8,4), %r9
	leaq	_Sinewave+1024(%rip), %r10
	cmpq	%r10, %r9
	jbe	LBB2_6
## %bb.5:
	xorl	%r9d, %r9d
	jmp	LBB2_9
LBB2_6:
	movl	%r8d, %r9d
	andl	$-8, %r9d
	movq	%r9, %rcx
	imulq	%rdx, %rcx
	addq	$256, %rcx                      ## imm = 0x100
	movl	%esi, %r10d
	shrl	$4, %r10d
	shlq	$5, %r10
	movq	%rdx, %r11
	shlq	$5, %r11
	leaq	_Sinewave+1040(%rip), %rbx
	xorl	%r14d, %r14d
	movdqa	LCPI2_0(%rip), %xmm0            ## xmm0 = [16384,16384,16384,16384]
	.p2align	4, 0x90
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%r14), %xmm1
	movdqu	16(%rdi,%r14), %xmm2
	movdqa	-16(%rbx), %xmm3
	movdqa	(%rbx), %xmm4
	psrad	$1, %xmm3
	psrad	$1, %xmm4
	movdqa	%xmm0, %xmm5
	psubd	%xmm3, %xmm5
	pmulld	%xmm1, %xmm5
	movdqa	%xmm0, %xmm1
	psubd	%xmm4, %xmm1
	pmulld	%xmm2, %xmm1
	psrad	$15, %xmm5
	psrad	$15, %xmm1
	movdqu	%xmm5, (%rdi,%r14)
	movdqu	%xmm1, 16(%rdi,%r14)
	addq	$32, %r14
	addq	%r11, %rbx
	cmpq	%r14, %r10
	jne	LBB2_7
## %bb.8:
	cmpq	%r8, %r9
	je	LBB2_15
LBB2_9:
	movq	%r9, %r10
	notq	%r10
	testb	$1, %r8b
	je	LBB2_11
## %bb.10:
	leaq	_Sinewave(%rip), %r11
	movl	(%r11,%rcx,4), %r11d
	sarl	%r11d
	movl	$16384, %ebx                    ## imm = 0x4000
	subl	%r11d, %ebx
	imull	(%rdi,%r9,4), %ebx
	sarl	$15, %ebx
	movl	%ebx, (%rdi,%r9,4)
	orq	$1, %r9
	addq	%rdx, %rcx
LBB2_11:
	addq	%r8, %r10
	je	LBB2_15
## %bb.12:
	leaq	_Sinewave(%rip), %r10
	leaq	(%r10,%rcx,4), %r10
	leaq	(%r10,%rdx,4), %r11
	addq	%rdx, %rdx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_13:                                ## =>This Inner Loop Header: Depth=1
	movl	(%r10,%rbx,4), %r14d
	sarl	%r14d
	movl	$16384, %r15d                   ## imm = 0x4000
	subl	%r14d, %r15d
	imull	(%rdi,%r9,4), %r15d
	sarl	$15, %r15d
	movl	%r15d, (%rdi,%r9,4)
	movl	(%r11,%rbx,4), %r14d
	sarl	%r14d
	movl	$16384, %r15d                   ## imm = 0x4000
	subl	%r14d, %r15d
	imull	4(%rdi,%r9,4), %r15d
	sarl	$15, %r15d
	movl	%r15d, 4(%rdi,%r9,4)
	addq	$2, %r9
	addq	%rdx, %rbx
	cmpq	%r9, %r8
	jne	LBB2_13
## %bb.14:
	addq	%rbx, %rcx
LBB2_15:
	andl	$-2, %esi
	cmpl	%esi, %r8d
	jge	LBB2_21
## %bb.16:
	movl	%r8d, %edx
	movl	%esi, %esi
	movq	%rdx, %r8
	notq	%r8
	testb	$1, %dl
	je	LBB2_18
## %bb.17:
	subl	%eax, %ecx
	movslq	%ecx, %r9
	leaq	_Sinewave(%rip), %r10
	movl	(%r10,%r9,4), %r9d
	sarl	%r9d
	movl	$16384, %r10d                   ## imm = 0x4000
	subl	%r9d, %r10d
	imull	(%rdi,%rdx,4), %r10d
	sarl	$15, %r10d
	movl	%r10d, (%rdi,%rdx,4)
	incq	%rdx
LBB2_18:
	addq	%rsi, %r8
	je	LBB2_21
## %bb.19:
	leal	(%rax,%rax), %r8d
	movl	%ecx, %r9d
	subl	%r8d, %r9d
	subl	%eax, %ecx
	leaq	_Sinewave(%rip), %rax
	.p2align	4, 0x90
LBB2_20:                                ## =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %r10d
	sarl	%r10d
	movl	$16384, %r11d                   ## imm = 0x4000
	subl	%r10d, %r11d
	imull	(%rdi,%rdx,4), %r11d
	sarl	$15, %r11d
	movl	%r11d, (%rdi,%rdx,4)
	movslq	%r9d, %r9
	movl	(%rax,%r9,4), %r10d
	sarl	%r10d
	movl	$16384, %r11d                   ## imm = 0x4000
	subl	%r10d, %r11d
	imull	4(%rdi,%rdx,4), %r11d
	sarl	$15, %r11d
	movl	%r11d, 4(%rdi,%rdx,4)
	addq	$2, %rdx
	subl	%r8d, %r9d
	subl	%r8d, %ecx
	cmpq	%rdx, %rsi
	jne	LBB2_20
LBB2_21:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fix_loud                       ## -- Begin function fix_loud
	.p2align	4, 0x90
_fix_loud:                              ## @fix_loud
	.cfi_startproc
## %bb.0:
                                        ## kill: def $r8d killed $r8d def $r8
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	movl	$10, %eax
	cmovlel	%r9d, %eax
	testl	%ecx, %ecx
	jle	LBB3_20
## %bb.1:
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
	leal	(%r8,%r8,2), %r8d
	leal	6(,%r8,2), %r8d
	movl	%ecx, %ecx
	xorl	%r9d, %r9d
	leaq	_Loudampl(%rip), %r10
	leaq	_db_from_ampl.loud2(%rip), %r11
	jmp	LBB3_2
LBB3_15:                                ##   in Loop: Header=BB3_2 Depth=1
	addq	$-4, %r14
	.p2align	4, 0x90
LBB3_18:                                ##   in Loop: Header=BB3_2 Depth=1
	movl	%r8d, %ebx
	subl	%r14d, %ebx
	cmpl	%eax, %ebx
	cmovgel	%eax, %ebx
	movl	%ebx, (%rdi,%r9,4)
	incq	%r9
	cmpq	%rcx, %r9
	je	LBB3_19
LBB3_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
                                        ##     Child Loop BB3_7 Depth 2
	movl	(%rsi,%r9,4), %r14d
	movl	(%rdx,%r9,4), %ebx
	cmpl	$0, _db_from_ampl.loud2(%rip)
	jne	LBB3_6
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=1
	movl	_Loudampl(%rip), %r15d
	imull	%r15d, %r15d
	movl	%r15d, _db_from_ampl.loud2(%rip)
	movd	%r15d, %xmm0
	pshufd	$0, %xmm0, %xmm0                ## xmm0 = xmm0[0,0,0,0]
	movl	$5, %r15d
	.p2align	4, 0x90
LBB3_4:                                 ##   Parent Loop BB3_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqu	-16(%r10,%r15,4), %xmm1
	pmulld	%xmm1, %xmm1
	movdqa	%xmm1, %xmm2
	palignr	$12, %xmm0, %xmm2               ## xmm2 = xmm0[12,13,14,15],xmm2[0,1,2,3,4,5,6,7,8,9,10,11]
	movdqu	(%r10,%r15,4), %xmm0
	pmulld	%xmm0, %xmm0
	movdqa	%xmm0, %xmm3
	palignr	$12, %xmm1, %xmm3               ## xmm3 = xmm1[12,13,14,15],xmm3[0,1,2,3,4,5,6,7,8,9,10,11]
	movdqu	%xmm1, -16(%r11,%r15,4)
	movdqu	%xmm0, (%r11,%r15,4)
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm3
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqa	%xmm2, -20(%r11,%r15,4)
	movdqa	%xmm3, -4(%r11,%r15,4)
	addq	$8, %r15
	cmpq	$101, %r15
	jne	LBB3_4
## %bb.5:                               ##   in Loop: Header=BB3_2 Depth=1
	pextrd	$3, %xmm0, %r15d
	movl	_Loudampl+388(%rip), %r12d
	imull	%r12d, %r12d
	addl	%r12d, %r15d
	shrl	%r15d
	movl	%r15d, _db_from_ampl.loud2+384(%rip)
	movl	_Loudampl+392(%rip), %r15d
	imull	%r15d, %r15d
	addl	%r15d, %r12d
	shrl	%r12d
	movl	%r12d, _db_from_ampl.loud2+388(%rip)
	movl	_Loudampl+396(%rip), %r12d
	imull	%r12d, %r12d
	movl	%r12d, _db_from_ampl.loud2+396(%rip)
	addl	%r15d, %r12d
	shrl	%r12d
	movl	%r12d, _db_from_ampl.loud2+392(%rip)
LBB3_6:                                 ##   in Loop: Header=BB3_2 Depth=1
	imull	%r14d, %r14d
	imull	%ebx, %ebx
	addl	%r14d, %ebx
	movl	$4, %r14d
	.p2align	4, 0x90
LBB3_7:                                 ##   Parent Loop BB3_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	%ebx, -16(%r11,%r14,4)
	jle	LBB3_15
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	cmpl	%ebx, -12(%r11,%r14,4)
	jle	LBB3_14
## %bb.9:                               ##   in Loop: Header=BB3_7 Depth=2
	cmpl	%ebx, -8(%r11,%r14,4)
	jle	LBB3_16
## %bb.10:                              ##   in Loop: Header=BB3_7 Depth=2
	cmpl	%ebx, -4(%r11,%r14,4)
	jle	LBB3_17
## %bb.11:                              ##   in Loop: Header=BB3_7 Depth=2
	cmpl	%ebx, (%r11,%r14,4)
	jle	LBB3_18
## %bb.12:                              ##   in Loop: Header=BB3_7 Depth=2
	addq	$5, %r14
	cmpq	$104, %r14
	jne	LBB3_7
## %bb.13:                              ##   in Loop: Header=BB3_2 Depth=1
	movl	$100, %r14d
	jmp	LBB3_18
LBB3_14:                                ##   in Loop: Header=BB3_2 Depth=1
	addq	$-3, %r14
	jmp	LBB3_18
LBB3_16:                                ##   in Loop: Header=BB3_2 Depth=1
	addq	$-2, %r14
	jmp	LBB3_18
LBB3_17:                                ##   in Loop: Header=BB3_2 Depth=1
	decq	%r14
	jmp	LBB3_18
LBB3_19:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
LBB3_20:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_db_from_ampl                   ## -- Begin function db_from_ampl
	.p2align	4, 0x90
_db_from_ampl:                          ## @db_from_ampl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$0, _db_from_ampl.loud2(%rip)
	jne	LBB4_4
## %bb.1:
	movl	_Loudampl(%rip), %eax
	imull	%eax, %eax
	movl	%eax, _db_from_ampl.loud2(%rip)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                ## xmm0 = xmm0[0,0,0,0]
	movl	$5, %eax
	leaq	_Loudampl(%rip), %rcx
	leaq	_db_from_ampl.loud2(%rip), %rdx
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%rcx,%rax,4), %xmm1
	pmulld	%xmm1, %xmm1
	movdqa	%xmm1, %xmm2
	palignr	$12, %xmm0, %xmm2               ## xmm2 = xmm0[12,13,14,15],xmm2[0,1,2,3,4,5,6,7,8,9,10,11]
	movdqu	(%rcx,%rax,4), %xmm0
	pmulld	%xmm0, %xmm0
	movdqa	%xmm0, %xmm3
	palignr	$12, %xmm1, %xmm3               ## xmm3 = xmm1[12,13,14,15],xmm3[0,1,2,3,4,5,6,7,8,9,10,11]
	movdqu	%xmm1, -16(%rdx,%rax,4)
	movdqu	%xmm0, (%rdx,%rax,4)
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm3
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqa	%xmm2, -20(%rdx,%rax,4)
	movdqa	%xmm3, -4(%rdx,%rax,4)
	addq	$8, %rax
	cmpq	$101, %rax
	jne	LBB4_2
## %bb.3:
	pextrd	$3, %xmm0, %eax
	movl	_Loudampl+388(%rip), %ecx
	imull	%ecx, %ecx
	addl	%ecx, %eax
	shrl	%eax
	movl	%eax, _db_from_ampl.loud2+384(%rip)
	movl	_Loudampl+392(%rip), %eax
	imull	%eax, %eax
	addl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, _db_from_ampl.loud2+388(%rip)
	movl	_Loudampl+396(%rip), %ecx
	imull	%ecx, %ecx
	movl	%ecx, _db_from_ampl.loud2+396(%rip)
	addl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, _db_from_ampl.loud2+392(%rip)
LBB4_4:
	imull	%edi, %edi
	imull	%esi, %esi
	addl	%edi, %esi
	movl	$4, %eax
	leaq	_db_from_ampl.loud2(%rip), %rcx
	.p2align	4, 0x90
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%esi, -16(%rcx,%rax,4)
	jle	LBB4_13
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=1
	cmpl	%esi, -12(%rcx,%rax,4)
	jle	LBB4_12
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=1
	cmpl	%esi, -8(%rcx,%rax,4)
	jle	LBB4_14
## %bb.8:                               ##   in Loop: Header=BB4_5 Depth=1
	cmpl	%esi, -4(%rcx,%rax,4)
	jle	LBB4_15
## %bb.9:                               ##   in Loop: Header=BB4_5 Depth=1
	cmpl	%esi, (%rcx,%rax,4)
	jle	LBB4_16
## %bb.10:                              ##   in Loop: Header=BB4_5 Depth=1
	addq	$5, %rax
	cmpq	$104, %rax
	jne	LBB4_5
## %bb.11:
	movl	$100, %eax
	jmp	LBB4_16
LBB4_13:
	addq	$-4, %rax
	jmp	LBB4_16
LBB4_12:
	addq	$-3, %rax
	jmp	LBB4_16
LBB4_14:
	addq	$-2, %rax
	jmp	LBB4_16
LBB4_15:
	decq	%rax
LBB4_16:
	negl	%eax
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_iscale                         ## -- Begin function iscale
	.p2align	4, 0x90
_iscale:                                ## @iscale
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edx, %ecx
	movl	%edi, %eax
	imull	%esi, %eax
	cltd
	idivl	%ecx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI6_0:
	.quad	0x400921fb54411744              ## double 3.1415926535000001
LCPI6_1:
	.quad	0x3f70000000000000              ## double 0.00390625
LCPI6_2:
	.quad	0x408f400000000000              ## double 1000
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
	pushq	%r14
	pushq	%rbx
	subq	$2064, %rsp                     ## imm = 0x810
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	LCPI6_0(%rip), %xmm0
	mulsd	LCPI6_1(%rip), %xmm0
	callq	_libmin_cos
	mulsd	LCPI6_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -1056(%rbp,%rbx,2)
	movl	$0, -2080(%rbp,%rbx,2)
	addq	$2, %rbx
	cmpq	$512, %rbx                      ## imm = 0x200
	jne	LBB6_1
## %bb.2:
	leaq	-1056(%rbp), %rdi
	leaq	-2080(%rbp), %rsi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	_fix_fft
	leaq	L_.str(%rip), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB6_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-1056(%rbp,%r14,4), %edx
	movl	-2080(%rbp,%r14,4), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	cmpq	$256, %r14                      ## imm = 0x100
	jne	LBB6_3
## %bb.4:
	leaq	-1056(%rbp), %rdi
	leaq	-2080(%rbp), %rsi
	movl	$8, %edx
	movl	$1, %ecx
	callq	_fix_fft
	leaq	L_.str(%rip), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-1056(%rbp,%r14,4), %edx
	movl	-2080(%rbp,%r14,4), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	cmpq	$256, %r14                      ## imm = 0x100
	jne	LBB6_5
## %bb.6:
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB6_8
## %bb.7:
	xorl	%eax, %eax
	addq	$2064, %rsp                     ## imm = 0x810
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB6_8:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_Sinewave                       ## @Sinewave
	.p2align	4, 0x0
_Sinewave:
	.long	0                               ## 0x0
	.long	201                             ## 0xc9
	.long	402                             ## 0x192
	.long	603                             ## 0x25b
	.long	804                             ## 0x324
	.long	1005                            ## 0x3ed
	.long	1206                            ## 0x4b6
	.long	1406                            ## 0x57e
	.long	1607                            ## 0x647
	.long	1808                            ## 0x710
	.long	2009                            ## 0x7d9
	.long	2209                            ## 0x8a1
	.long	2410                            ## 0x96a
	.long	2610                            ## 0xa32
	.long	2811                            ## 0xafb
	.long	3011                            ## 0xbc3
	.long	3211                            ## 0xc8b
	.long	3411                            ## 0xd53
	.long	3611                            ## 0xe1b
	.long	3811                            ## 0xee3
	.long	4011                            ## 0xfab
	.long	4210                            ## 0x1072
	.long	4409                            ## 0x1139
	.long	4608                            ## 0x1200
	.long	4807                            ## 0x12c7
	.long	5006                            ## 0x138e
	.long	5205                            ## 0x1455
	.long	5403                            ## 0x151b
	.long	5601                            ## 0x15e1
	.long	5799                            ## 0x16a7
	.long	5997                            ## 0x176d
	.long	6195                            ## 0x1833
	.long	6392                            ## 0x18f8
	.long	6589                            ## 0x19bd
	.long	6786                            ## 0x1a82
	.long	6982                            ## 0x1b46
	.long	7179                            ## 0x1c0b
	.long	7375                            ## 0x1ccf
	.long	7571                            ## 0x1d93
	.long	7766                            ## 0x1e56
	.long	7961                            ## 0x1f19
	.long	8156                            ## 0x1fdc
	.long	8351                            ## 0x209f
	.long	8545                            ## 0x2161
	.long	8739                            ## 0x2223
	.long	8932                            ## 0x22e4
	.long	9126                            ## 0x23a6
	.long	9319                            ## 0x2467
	.long	9511                            ## 0x2527
	.long	9703                            ## 0x25e7
	.long	9895                            ## 0x26a7
	.long	10087                           ## 0x2767
	.long	10278                           ## 0x2826
	.long	10469                           ## 0x28e5
	.long	10659                           ## 0x29a3
	.long	10849                           ## 0x2a61
	.long	11038                           ## 0x2b1e
	.long	11227                           ## 0x2bdb
	.long	11416                           ## 0x2c98
	.long	11604                           ## 0x2d54
	.long	11792                           ## 0x2e10
	.long	11980                           ## 0x2ecc
	.long	12166                           ## 0x2f86
	.long	12353                           ## 0x3041
	.long	12539                           ## 0x30fb
	.long	12724                           ## 0x31b4
	.long	12909                           ## 0x326d
	.long	13094                           ## 0x3326
	.long	13278                           ## 0x33de
	.long	13462                           ## 0x3496
	.long	13645                           ## 0x354d
	.long	13827                           ## 0x3603
	.long	14009                           ## 0x36b9
	.long	14191                           ## 0x376f
	.long	14372                           ## 0x3824
	.long	14552                           ## 0x38d8
	.long	14732                           ## 0x398c
	.long	14911                           ## 0x3a3f
	.long	15090                           ## 0x3af2
	.long	15268                           ## 0x3ba4
	.long	15446                           ## 0x3c56
	.long	15623                           ## 0x3d07
	.long	15799                           ## 0x3db7
	.long	15975                           ## 0x3e67
	.long	16150                           ## 0x3f16
	.long	16325                           ## 0x3fc5
	.long	16499                           ## 0x4073
	.long	16672                           ## 0x4120
	.long	16845                           ## 0x41cd
	.long	17017                           ## 0x4279
	.long	17189                           ## 0x4325
	.long	17360                           ## 0x43d0
	.long	17530                           ## 0x447a
	.long	17699                           ## 0x4523
	.long	17868                           ## 0x45cc
	.long	18036                           ## 0x4674
	.long	18204                           ## 0x471c
	.long	18371                           ## 0x47c3
	.long	18537                           ## 0x4869
	.long	18702                           ## 0x490e
	.long	18867                           ## 0x49b3
	.long	19031                           ## 0x4a57
	.long	19194                           ## 0x4afa
	.long	19357                           ## 0x4b9d
	.long	19519                           ## 0x4c3f
	.long	19680                           ## 0x4ce0
	.long	19840                           ## 0x4d80
	.long	20000                           ## 0x4e20
	.long	20159                           ## 0x4ebf
	.long	20317                           ## 0x4f5d
	.long	20474                           ## 0x4ffa
	.long	20631                           ## 0x5097
	.long	20787                           ## 0x5133
	.long	20942                           ## 0x51ce
	.long	21096                           ## 0x5268
	.long	21249                           ## 0x5301
	.long	21402                           ## 0x539a
	.long	21554                           ## 0x5432
	.long	21705                           ## 0x54c9
	.long	21855                           ## 0x555f
	.long	22004                           ## 0x55f4
	.long	22153                           ## 0x5689
	.long	22301                           ## 0x571d
	.long	22448                           ## 0x57b0
	.long	22594                           ## 0x5842
	.long	22739                           ## 0x58d3
	.long	22883                           ## 0x5963
	.long	23027                           ## 0x59f3
	.long	23169                           ## 0x5a81
	.long	23311                           ## 0x5b0f
	.long	23452                           ## 0x5b9c
	.long	23592                           ## 0x5c28
	.long	23731                           ## 0x5cb3
	.long	23869                           ## 0x5d3d
	.long	24006                           ## 0x5dc6
	.long	24143                           ## 0x5e4f
	.long	24278                           ## 0x5ed6
	.long	24413                           ## 0x5f5d
	.long	24546                           ## 0x5fe2
	.long	24679                           ## 0x6067
	.long	24811                           ## 0x60eb
	.long	24942                           ## 0x616e
	.long	25072                           ## 0x61f0
	.long	25201                           ## 0x6271
	.long	25329                           ## 0x62f1
	.long	25456                           ## 0x6370
	.long	25582                           ## 0x63ee
	.long	25707                           ## 0x646b
	.long	25831                           ## 0x64e7
	.long	25954                           ## 0x6562
	.long	26077                           ## 0x65dd
	.long	26198                           ## 0x6656
	.long	26318                           ## 0x66ce
	.long	26437                           ## 0x6745
	.long	26556                           ## 0x67bc
	.long	26673                           ## 0x6831
	.long	26789                           ## 0x68a5
	.long	26905                           ## 0x6919
	.long	27019                           ## 0x698b
	.long	27132                           ## 0x69fc
	.long	27244                           ## 0x6a6c
	.long	27355                           ## 0x6adb
	.long	27466                           ## 0x6b4a
	.long	27575                           ## 0x6bb7
	.long	27683                           ## 0x6c23
	.long	27790                           ## 0x6c8e
	.long	27896                           ## 0x6cf8
	.long	28001                           ## 0x6d61
	.long	28105                           ## 0x6dc9
	.long	28208                           ## 0x6e30
	.long	28309                           ## 0x6e95
	.long	28410                           ## 0x6efa
	.long	28510                           ## 0x6f5e
	.long	28608                           ## 0x6fc0
	.long	28706                           ## 0x7022
	.long	28802                           ## 0x7082
	.long	28897                           ## 0x70e1
	.long	28992                           ## 0x7140
	.long	29085                           ## 0x719d
	.long	29177                           ## 0x71f9
	.long	29268                           ## 0x7254
	.long	29358                           ## 0x72ae
	.long	29446                           ## 0x7306
	.long	29534                           ## 0x735e
	.long	29621                           ## 0x73b5
	.long	29706                           ## 0x740a
	.long	29790                           ## 0x745e
	.long	29873                           ## 0x74b1
	.long	29955                           ## 0x7503
	.long	30036                           ## 0x7554
	.long	30116                           ## 0x75a4
	.long	30195                           ## 0x75f3
	.long	30272                           ## 0x7640
	.long	30349                           ## 0x768d
	.long	30424                           ## 0x76d8
	.long	30498                           ## 0x7722
	.long	30571                           ## 0x776b
	.long	30643                           ## 0x77b3
	.long	30713                           ## 0x77f9
	.long	30783                           ## 0x783f
	.long	30851                           ## 0x7883
	.long	30918                           ## 0x78c6
	.long	30984                           ## 0x7908
	.long	31049                           ## 0x7949
	.long	31113                           ## 0x7989
	.long	31175                           ## 0x79c7
	.long	31236                           ## 0x7a04
	.long	31297                           ## 0x7a41
	.long	31356                           ## 0x7a7c
	.long	31413                           ## 0x7ab5
	.long	31470                           ## 0x7aee
	.long	31525                           ## 0x7b25
	.long	31580                           ## 0x7b5c
	.long	31633                           ## 0x7b91
	.long	31684                           ## 0x7bc4
	.long	31735                           ## 0x7bf7
	.long	31785                           ## 0x7c29
	.long	31833                           ## 0x7c59
	.long	31880                           ## 0x7c88
	.long	31926                           ## 0x7cb6
	.long	31970                           ## 0x7ce2
	.long	32014                           ## 0x7d0e
	.long	32056                           ## 0x7d38
	.long	32097                           ## 0x7d61
	.long	32137                           ## 0x7d89
	.long	32176                           ## 0x7db0
	.long	32213                           ## 0x7dd5
	.long	32249                           ## 0x7df9
	.long	32284                           ## 0x7e1c
	.long	32318                           ## 0x7e3e
	.long	32350                           ## 0x7e5e
	.long	32382                           ## 0x7e7e
	.long	32412                           ## 0x7e9c
	.long	32441                           ## 0x7eb9
	.long	32468                           ## 0x7ed4
	.long	32495                           ## 0x7eef
	.long	32520                           ## 0x7f08
	.long	32544                           ## 0x7f20
	.long	32567                           ## 0x7f37
	.long	32588                           ## 0x7f4c
	.long	32609                           ## 0x7f61
	.long	32628                           ## 0x7f74
	.long	32646                           ## 0x7f86
	.long	32662                           ## 0x7f96
	.long	32678                           ## 0x7fa6
	.long	32692                           ## 0x7fb4
	.long	32705                           ## 0x7fc1
	.long	32717                           ## 0x7fcd
	.long	32727                           ## 0x7fd7
	.long	32736                           ## 0x7fe0
	.long	32744                           ## 0x7fe8
	.long	32751                           ## 0x7fef
	.long	32757                           ## 0x7ff5
	.long	32761                           ## 0x7ff9
	.long	32764                           ## 0x7ffc
	.long	32766                           ## 0x7ffe
	.long	32767                           ## 0x7fff
	.long	32766                           ## 0x7ffe
	.long	32764                           ## 0x7ffc
	.long	32761                           ## 0x7ff9
	.long	32757                           ## 0x7ff5
	.long	32751                           ## 0x7fef
	.long	32744                           ## 0x7fe8
	.long	32736                           ## 0x7fe0
	.long	32727                           ## 0x7fd7
	.long	32717                           ## 0x7fcd
	.long	32705                           ## 0x7fc1
	.long	32692                           ## 0x7fb4
	.long	32678                           ## 0x7fa6
	.long	32662                           ## 0x7f96
	.long	32646                           ## 0x7f86
	.long	32628                           ## 0x7f74
	.long	32609                           ## 0x7f61
	.long	32588                           ## 0x7f4c
	.long	32567                           ## 0x7f37
	.long	32544                           ## 0x7f20
	.long	32520                           ## 0x7f08
	.long	32495                           ## 0x7eef
	.long	32468                           ## 0x7ed4
	.long	32441                           ## 0x7eb9
	.long	32412                           ## 0x7e9c
	.long	32382                           ## 0x7e7e
	.long	32350                           ## 0x7e5e
	.long	32318                           ## 0x7e3e
	.long	32284                           ## 0x7e1c
	.long	32249                           ## 0x7df9
	.long	32213                           ## 0x7dd5
	.long	32176                           ## 0x7db0
	.long	32137                           ## 0x7d89
	.long	32097                           ## 0x7d61
	.long	32056                           ## 0x7d38
	.long	32014                           ## 0x7d0e
	.long	31970                           ## 0x7ce2
	.long	31926                           ## 0x7cb6
	.long	31880                           ## 0x7c88
	.long	31833                           ## 0x7c59
	.long	31785                           ## 0x7c29
	.long	31735                           ## 0x7bf7
	.long	31684                           ## 0x7bc4
	.long	31633                           ## 0x7b91
	.long	31580                           ## 0x7b5c
	.long	31525                           ## 0x7b25
	.long	31470                           ## 0x7aee
	.long	31413                           ## 0x7ab5
	.long	31356                           ## 0x7a7c
	.long	31297                           ## 0x7a41
	.long	31236                           ## 0x7a04
	.long	31175                           ## 0x79c7
	.long	31113                           ## 0x7989
	.long	31049                           ## 0x7949
	.long	30984                           ## 0x7908
	.long	30918                           ## 0x78c6
	.long	30851                           ## 0x7883
	.long	30783                           ## 0x783f
	.long	30713                           ## 0x77f9
	.long	30643                           ## 0x77b3
	.long	30571                           ## 0x776b
	.long	30498                           ## 0x7722
	.long	30424                           ## 0x76d8
	.long	30349                           ## 0x768d
	.long	30272                           ## 0x7640
	.long	30195                           ## 0x75f3
	.long	30116                           ## 0x75a4
	.long	30036                           ## 0x7554
	.long	29955                           ## 0x7503
	.long	29873                           ## 0x74b1
	.long	29790                           ## 0x745e
	.long	29706                           ## 0x740a
	.long	29621                           ## 0x73b5
	.long	29534                           ## 0x735e
	.long	29446                           ## 0x7306
	.long	29358                           ## 0x72ae
	.long	29268                           ## 0x7254
	.long	29177                           ## 0x71f9
	.long	29085                           ## 0x719d
	.long	28992                           ## 0x7140
	.long	28897                           ## 0x70e1
	.long	28802                           ## 0x7082
	.long	28706                           ## 0x7022
	.long	28608                           ## 0x6fc0
	.long	28510                           ## 0x6f5e
	.long	28410                           ## 0x6efa
	.long	28309                           ## 0x6e95
	.long	28208                           ## 0x6e30
	.long	28105                           ## 0x6dc9
	.long	28001                           ## 0x6d61
	.long	27896                           ## 0x6cf8
	.long	27790                           ## 0x6c8e
	.long	27683                           ## 0x6c23
	.long	27575                           ## 0x6bb7
	.long	27466                           ## 0x6b4a
	.long	27355                           ## 0x6adb
	.long	27244                           ## 0x6a6c
	.long	27132                           ## 0x69fc
	.long	27019                           ## 0x698b
	.long	26905                           ## 0x6919
	.long	26789                           ## 0x68a5
	.long	26673                           ## 0x6831
	.long	26556                           ## 0x67bc
	.long	26437                           ## 0x6745
	.long	26318                           ## 0x66ce
	.long	26198                           ## 0x6656
	.long	26077                           ## 0x65dd
	.long	25954                           ## 0x6562
	.long	25831                           ## 0x64e7
	.long	25707                           ## 0x646b
	.long	25582                           ## 0x63ee
	.long	25456                           ## 0x6370
	.long	25329                           ## 0x62f1
	.long	25201                           ## 0x6271
	.long	25072                           ## 0x61f0
	.long	24942                           ## 0x616e
	.long	24811                           ## 0x60eb
	.long	24679                           ## 0x6067
	.long	24546                           ## 0x5fe2
	.long	24413                           ## 0x5f5d
	.long	24278                           ## 0x5ed6
	.long	24143                           ## 0x5e4f
	.long	24006                           ## 0x5dc6
	.long	23869                           ## 0x5d3d
	.long	23731                           ## 0x5cb3
	.long	23592                           ## 0x5c28
	.long	23452                           ## 0x5b9c
	.long	23311                           ## 0x5b0f
	.long	23169                           ## 0x5a81
	.long	23027                           ## 0x59f3
	.long	22883                           ## 0x5963
	.long	22739                           ## 0x58d3
	.long	22594                           ## 0x5842
	.long	22448                           ## 0x57b0
	.long	22301                           ## 0x571d
	.long	22153                           ## 0x5689
	.long	22004                           ## 0x55f4
	.long	21855                           ## 0x555f
	.long	21705                           ## 0x54c9
	.long	21554                           ## 0x5432
	.long	21402                           ## 0x539a
	.long	21249                           ## 0x5301
	.long	21096                           ## 0x5268
	.long	20942                           ## 0x51ce
	.long	20787                           ## 0x5133
	.long	20631                           ## 0x5097
	.long	20474                           ## 0x4ffa
	.long	20317                           ## 0x4f5d
	.long	20159                           ## 0x4ebf
	.long	20000                           ## 0x4e20
	.long	19840                           ## 0x4d80
	.long	19680                           ## 0x4ce0
	.long	19519                           ## 0x4c3f
	.long	19357                           ## 0x4b9d
	.long	19194                           ## 0x4afa
	.long	19031                           ## 0x4a57
	.long	18867                           ## 0x49b3
	.long	18702                           ## 0x490e
	.long	18537                           ## 0x4869
	.long	18371                           ## 0x47c3
	.long	18204                           ## 0x471c
	.long	18036                           ## 0x4674
	.long	17868                           ## 0x45cc
	.long	17699                           ## 0x4523
	.long	17530                           ## 0x447a
	.long	17360                           ## 0x43d0
	.long	17189                           ## 0x4325
	.long	17017                           ## 0x4279
	.long	16845                           ## 0x41cd
	.long	16672                           ## 0x4120
	.long	16499                           ## 0x4073
	.long	16325                           ## 0x3fc5
	.long	16150                           ## 0x3f16
	.long	15975                           ## 0x3e67
	.long	15799                           ## 0x3db7
	.long	15623                           ## 0x3d07
	.long	15446                           ## 0x3c56
	.long	15268                           ## 0x3ba4
	.long	15090                           ## 0x3af2
	.long	14911                           ## 0x3a3f
	.long	14732                           ## 0x398c
	.long	14552                           ## 0x38d8
	.long	14372                           ## 0x3824
	.long	14191                           ## 0x376f
	.long	14009                           ## 0x36b9
	.long	13827                           ## 0x3603
	.long	13645                           ## 0x354d
	.long	13462                           ## 0x3496
	.long	13278                           ## 0x33de
	.long	13094                           ## 0x3326
	.long	12909                           ## 0x326d
	.long	12724                           ## 0x31b4
	.long	12539                           ## 0x30fb
	.long	12353                           ## 0x3041
	.long	12166                           ## 0x2f86
	.long	11980                           ## 0x2ecc
	.long	11792                           ## 0x2e10
	.long	11604                           ## 0x2d54
	.long	11416                           ## 0x2c98
	.long	11227                           ## 0x2bdb
	.long	11038                           ## 0x2b1e
	.long	10849                           ## 0x2a61
	.long	10659                           ## 0x29a3
	.long	10469                           ## 0x28e5
	.long	10278                           ## 0x2826
	.long	10087                           ## 0x2767
	.long	9895                            ## 0x26a7
	.long	9703                            ## 0x25e7
	.long	9511                            ## 0x2527
	.long	9319                            ## 0x2467
	.long	9126                            ## 0x23a6
	.long	8932                            ## 0x22e4
	.long	8739                            ## 0x2223
	.long	8545                            ## 0x2161
	.long	8351                            ## 0x209f
	.long	8156                            ## 0x1fdc
	.long	7961                            ## 0x1f19
	.long	7766                            ## 0x1e56
	.long	7571                            ## 0x1d93
	.long	7375                            ## 0x1ccf
	.long	7179                            ## 0x1c0b
	.long	6982                            ## 0x1b46
	.long	6786                            ## 0x1a82
	.long	6589                            ## 0x19bd
	.long	6392                            ## 0x18f8
	.long	6195                            ## 0x1833
	.long	5997                            ## 0x176d
	.long	5799                            ## 0x16a7
	.long	5601                            ## 0x15e1
	.long	5403                            ## 0x151b
	.long	5205                            ## 0x1455
	.long	5006                            ## 0x138e
	.long	4807                            ## 0x12c7
	.long	4608                            ## 0x1200
	.long	4409                            ## 0x1139
	.long	4210                            ## 0x1072
	.long	4011                            ## 0xfab
	.long	3811                            ## 0xee3
	.long	3611                            ## 0xe1b
	.long	3411                            ## 0xd53
	.long	3211                            ## 0xc8b
	.long	3011                            ## 0xbc3
	.long	2811                            ## 0xafb
	.long	2610                            ## 0xa32
	.long	2410                            ## 0x96a
	.long	2209                            ## 0x8a1
	.long	2009                            ## 0x7d9
	.long	1808                            ## 0x710
	.long	1607                            ## 0x647
	.long	1406                            ## 0x57e
	.long	1206                            ## 0x4b6
	.long	1005                            ## 0x3ed
	.long	804                             ## 0x324
	.long	603                             ## 0x25b
	.long	402                             ## 0x192
	.long	201                             ## 0xc9
	.long	0                               ## 0x0
	.long	4294967095                      ## 0xffffff37
	.long	4294966894                      ## 0xfffffe6e
	.long	4294966693                      ## 0xfffffda5
	.long	4294966492                      ## 0xfffffcdc
	.long	4294966291                      ## 0xfffffc13
	.long	4294966090                      ## 0xfffffb4a
	.long	4294965890                      ## 0xfffffa82
	.long	4294965689                      ## 0xfffff9b9
	.long	4294965488                      ## 0xfffff8f0
	.long	4294965287                      ## 0xfffff827
	.long	4294965087                      ## 0xfffff75f
	.long	4294964886                      ## 0xfffff696
	.long	4294964686                      ## 0xfffff5ce
	.long	4294964485                      ## 0xfffff505
	.long	4294964285                      ## 0xfffff43d
	.long	4294964085                      ## 0xfffff375
	.long	4294963885                      ## 0xfffff2ad
	.long	4294963685                      ## 0xfffff1e5
	.long	4294963485                      ## 0xfffff11d
	.long	4294963285                      ## 0xfffff055
	.long	4294963086                      ## 0xffffef8e
	.long	4294962887                      ## 0xffffeec7
	.long	4294962688                      ## 0xffffee00
	.long	4294962489                      ## 0xffffed39
	.long	4294962290                      ## 0xffffec72
	.long	4294962091                      ## 0xffffebab
	.long	4294961893                      ## 0xffffeae5
	.long	4294961695                      ## 0xffffea1f
	.long	4294961497                      ## 0xffffe959
	.long	4294961299                      ## 0xffffe893
	.long	4294961101                      ## 0xffffe7cd
	.long	4294960904                      ## 0xffffe708
	.long	4294960707                      ## 0xffffe643
	.long	4294960510                      ## 0xffffe57e
	.long	4294960314                      ## 0xffffe4ba
	.long	4294960117                      ## 0xffffe3f5
	.long	4294959921                      ## 0xffffe331
	.long	4294959725                      ## 0xffffe26d
	.long	4294959530                      ## 0xffffe1aa
	.long	4294959335                      ## 0xffffe0e7
	.long	4294959140                      ## 0xffffe024
	.long	4294958945                      ## 0xffffdf61
	.long	4294958751                      ## 0xffffde9f
	.long	4294958557                      ## 0xffffdddd
	.long	4294958364                      ## 0xffffdd1c
	.long	4294958170                      ## 0xffffdc5a
	.long	4294957977                      ## 0xffffdb99
	.long	4294957785                      ## 0xffffdad9
	.long	4294957593                      ## 0xffffda19
	.long	4294957401                      ## 0xffffd959
	.long	4294957209                      ## 0xffffd899
	.long	4294957018                      ## 0xffffd7da
	.long	4294956827                      ## 0xffffd71b
	.long	4294956637                      ## 0xffffd65d
	.long	4294956447                      ## 0xffffd59f
	.long	4294956258                      ## 0xffffd4e2
	.long	4294956069                      ## 0xffffd425
	.long	4294955880                      ## 0xffffd368
	.long	4294955692                      ## 0xffffd2ac
	.long	4294955504                      ## 0xffffd1f0
	.long	4294955316                      ## 0xffffd134
	.long	4294955130                      ## 0xffffd07a
	.long	4294954943                      ## 0xffffcfbf
	.long	4294954757                      ## 0xffffcf05
	.long	4294954572                      ## 0xffffce4c
	.long	4294954387                      ## 0xffffcd93
	.long	4294954202                      ## 0xffffccda
	.long	4294954018                      ## 0xffffcc22
	.long	4294953834                      ## 0xffffcb6a
	.long	4294953651                      ## 0xffffcab3
	.long	4294953469                      ## 0xffffc9fd
	.long	4294953287                      ## 0xffffc947
	.long	4294953105                      ## 0xffffc891
	.long	4294952924                      ## 0xffffc7dc
	.long	4294952744                      ## 0xffffc728
	.long	4294952564                      ## 0xffffc674
	.long	4294952385                      ## 0xffffc5c1
	.long	4294952206                      ## 0xffffc50e
	.long	4294952028                      ## 0xffffc45c
	.long	4294951850                      ## 0xffffc3aa
	.long	4294951673                      ## 0xffffc2f9
	.long	4294951497                      ## 0xffffc249
	.long	4294951321                      ## 0xffffc199
	.long	4294951146                      ## 0xffffc0ea
	.long	4294950971                      ## 0xffffc03b
	.long	4294950797                      ## 0xffffbf8d
	.long	4294950624                      ## 0xffffbee0
	.long	4294950451                      ## 0xffffbe33
	.long	4294950279                      ## 0xffffbd87
	.long	4294950107                      ## 0xffffbcdb
	.long	4294949936                      ## 0xffffbc30
	.long	4294949766                      ## 0xffffbb86
	.long	4294949597                      ## 0xffffbadd
	.long	4294949428                      ## 0xffffba34
	.long	4294949260                      ## 0xffffb98c
	.long	4294949092                      ## 0xffffb8e4
	.long	4294948925                      ## 0xffffb83d
	.long	4294948759                      ## 0xffffb797
	.long	4294948594                      ## 0xffffb6f2
	.long	4294948429                      ## 0xffffb64d
	.long	4294948265                      ## 0xffffb5a9
	.long	4294948102                      ## 0xffffb506
	.long	4294947939                      ## 0xffffb463
	.long	4294947777                      ## 0xffffb3c1
	.long	4294947616                      ## 0xffffb320
	.long	4294947456                      ## 0xffffb280
	.long	4294947296                      ## 0xffffb1e0
	.long	4294947137                      ## 0xffffb141
	.long	4294946979                      ## 0xffffb0a3
	.long	4294946822                      ## 0xffffb006
	.long	4294946665                      ## 0xffffaf69
	.long	4294946509                      ## 0xffffaecd
	.long	4294946354                      ## 0xffffae32
	.long	4294946200                      ## 0xffffad98
	.long	4294946047                      ## 0xffffacff
	.long	4294945894                      ## 0xffffac66
	.long	4294945742                      ## 0xffffabce
	.long	4294945591                      ## 0xffffab37
	.long	4294945441                      ## 0xffffaaa1
	.long	4294945292                      ## 0xffffaa0c
	.long	4294945143                      ## 0xffffa977
	.long	4294944995                      ## 0xffffa8e3
	.long	4294944848                      ## 0xffffa850
	.long	4294944702                      ## 0xffffa7be
	.long	4294944557                      ## 0xffffa72d
	.long	4294944413                      ## 0xffffa69d
	.long	4294944269                      ## 0xffffa60d
	.long	4294944127                      ## 0xffffa57f
	.long	4294943985                      ## 0xffffa4f1
	.long	4294943844                      ## 0xffffa464
	.long	4294943704                      ## 0xffffa3d8
	.long	4294943565                      ## 0xffffa34d
	.long	4294943427                      ## 0xffffa2c3
	.long	4294943290                      ## 0xffffa23a
	.long	4294943153                      ## 0xffffa1b1
	.long	4294943018                      ## 0xffffa12a
	.long	4294942883                      ## 0xffffa0a3
	.long	4294942750                      ## 0xffffa01e
	.long	4294942617                      ## 0xffff9f99
	.long	4294942485                      ## 0xffff9f15
	.long	4294942354                      ## 0xffff9e92
	.long	4294942224                      ## 0xffff9e10
	.long	4294942095                      ## 0xffff9d8f
	.long	4294941967                      ## 0xffff9d0f
	.long	4294941840                      ## 0xffff9c90
	.long	4294941714                      ## 0xffff9c12
	.long	4294941589                      ## 0xffff9b95
	.long	4294941465                      ## 0xffff9b19
	.long	4294941342                      ## 0xffff9a9e
	.long	4294941219                      ## 0xffff9a23
	.long	4294941098                      ## 0xffff99aa
	.long	4294940978                      ## 0xffff9932
	.long	4294940859                      ## 0xffff98bb
	.long	4294940740                      ## 0xffff9844
	.long	4294940623                      ## 0xffff97cf
	.long	4294940507                      ## 0xffff975b
	.long	4294940391                      ## 0xffff96e7
	.long	4294940277                      ## 0xffff9675
	.long	4294940164                      ## 0xffff9604
	.long	4294940052                      ## 0xffff9594
	.long	4294939941                      ## 0xffff9525
	.long	4294939830                      ## 0xffff94b6
	.long	4294939721                      ## 0xffff9449
	.long	4294939613                      ## 0xffff93dd
	.long	4294939506                      ## 0xffff9372
	.long	4294939400                      ## 0xffff9308
	.long	4294939295                      ## 0xffff929f
	.long	4294939191                      ## 0xffff9237
	.long	4294939088                      ## 0xffff91d0
	.long	4294938987                      ## 0xffff916b
	.long	4294938886                      ## 0xffff9106
	.long	4294938786                      ## 0xffff90a2
	.long	4294938688                      ## 0xffff9040
	.long	4294938590                      ## 0xffff8fde
	.long	4294938494                      ## 0xffff8f7e
	.long	4294938399                      ## 0xffff8f1f
	.long	4294938304                      ## 0xffff8ec0
	.long	4294938211                      ## 0xffff8e63
	.long	4294938119                      ## 0xffff8e07
	.long	4294938028                      ## 0xffff8dac
	.long	4294937938                      ## 0xffff8d52
	.long	4294937850                      ## 0xffff8cfa
	.long	4294937762                      ## 0xffff8ca2
	.long	4294937675                      ## 0xffff8c4b
	.long	4294937590                      ## 0xffff8bf6
	.long	4294937506                      ## 0xffff8ba2
	.long	4294937423                      ## 0xffff8b4f
	.long	4294937341                      ## 0xffff8afd
	.long	4294937260                      ## 0xffff8aac
	.long	4294937180                      ## 0xffff8a5c
	.long	4294937101                      ## 0xffff8a0d
	.long	4294937024                      ## 0xffff89c0
	.long	4294936947                      ## 0xffff8973
	.long	4294936872                      ## 0xffff8928
	.long	4294936798                      ## 0xffff88de
	.long	4294936725                      ## 0xffff8895
	.long	4294936653                      ## 0xffff884d
	.long	4294936583                      ## 0xffff8807
	.long	4294936513                      ## 0xffff87c1
	.long	4294936445                      ## 0xffff877d
	.long	4294936378                      ## 0xffff873a
	.long	4294936312                      ## 0xffff86f8
	.long	4294936247                      ## 0xffff86b7
	.long	4294936183                      ## 0xffff8677
	.long	4294936121                      ## 0xffff8639
	.long	4294936060                      ## 0xffff85fc
	.long	4294935999                      ## 0xffff85bf
	.long	4294935940                      ## 0xffff8584
	.long	4294935883                      ## 0xffff854b
	.long	4294935826                      ## 0xffff8512
	.long	4294935771                      ## 0xffff84db
	.long	4294935716                      ## 0xffff84a4
	.long	4294935663                      ## 0xffff846f
	.long	4294935612                      ## 0xffff843c
	.long	4294935561                      ## 0xffff8409
	.long	4294935511                      ## 0xffff83d7
	.long	4294935463                      ## 0xffff83a7
	.long	4294935416                      ## 0xffff8378
	.long	4294935370                      ## 0xffff834a
	.long	4294935326                      ## 0xffff831e
	.long	4294935282                      ## 0xffff82f2
	.long	4294935240                      ## 0xffff82c8
	.long	4294935199                      ## 0xffff829f
	.long	4294935159                      ## 0xffff8277
	.long	4294935120                      ## 0xffff8250
	.long	4294935083                      ## 0xffff822b
	.long	4294935047                      ## 0xffff8207
	.long	4294935012                      ## 0xffff81e4
	.long	4294934978                      ## 0xffff81c2
	.long	4294934946                      ## 0xffff81a2
	.long	4294934914                      ## 0xffff8182
	.long	4294934884                      ## 0xffff8164
	.long	4294934855                      ## 0xffff8147
	.long	4294934828                      ## 0xffff812c
	.long	4294934801                      ## 0xffff8111
	.long	4294934776                      ## 0xffff80f8
	.long	4294934752                      ## 0xffff80e0
	.long	4294934729                      ## 0xffff80c9
	.long	4294934708                      ## 0xffff80b4
	.long	4294934687                      ## 0xffff809f
	.long	4294934668                      ## 0xffff808c
	.long	4294934650                      ## 0xffff807a
	.long	4294934634                      ## 0xffff806a
	.long	4294934618                      ## 0xffff805a
	.long	4294934604                      ## 0xffff804c
	.long	4294934591                      ## 0xffff803f
	.long	4294934579                      ## 0xffff8033
	.long	4294934569                      ## 0xffff8029
	.long	4294934560                      ## 0xffff8020
	.long	4294934552                      ## 0xffff8018
	.long	4294934545                      ## 0xffff8011
	.long	4294934539                      ## 0xffff800b
	.long	4294934535                      ## 0xffff8007
	.long	4294934532                      ## 0xffff8004
	.long	4294934530                      ## 0xffff8002
	.long	4294934529                      ## 0xffff8001
	.long	4294934530                      ## 0xffff8002
	.long	4294934532                      ## 0xffff8004
	.long	4294934535                      ## 0xffff8007
	.long	4294934539                      ## 0xffff800b
	.long	4294934545                      ## 0xffff8011
	.long	4294934552                      ## 0xffff8018
	.long	4294934560                      ## 0xffff8020
	.long	4294934569                      ## 0xffff8029
	.long	4294934579                      ## 0xffff8033
	.long	4294934591                      ## 0xffff803f
	.long	4294934604                      ## 0xffff804c
	.long	4294934618                      ## 0xffff805a
	.long	4294934634                      ## 0xffff806a
	.long	4294934650                      ## 0xffff807a
	.long	4294934668                      ## 0xffff808c
	.long	4294934687                      ## 0xffff809f
	.long	4294934708                      ## 0xffff80b4
	.long	4294934729                      ## 0xffff80c9
	.long	4294934752                      ## 0xffff80e0
	.long	4294934776                      ## 0xffff80f8
	.long	4294934801                      ## 0xffff8111
	.long	4294934828                      ## 0xffff812c
	.long	4294934855                      ## 0xffff8147
	.long	4294934884                      ## 0xffff8164
	.long	4294934914                      ## 0xffff8182
	.long	4294934946                      ## 0xffff81a2
	.long	4294934978                      ## 0xffff81c2
	.long	4294935012                      ## 0xffff81e4
	.long	4294935047                      ## 0xffff8207
	.long	4294935083                      ## 0xffff822b
	.long	4294935120                      ## 0xffff8250
	.long	4294935159                      ## 0xffff8277
	.long	4294935199                      ## 0xffff829f
	.long	4294935240                      ## 0xffff82c8
	.long	4294935282                      ## 0xffff82f2
	.long	4294935326                      ## 0xffff831e
	.long	4294935370                      ## 0xffff834a
	.long	4294935416                      ## 0xffff8378
	.long	4294935463                      ## 0xffff83a7
	.long	4294935511                      ## 0xffff83d7
	.long	4294935561                      ## 0xffff8409
	.long	4294935612                      ## 0xffff843c
	.long	4294935663                      ## 0xffff846f
	.long	4294935716                      ## 0xffff84a4
	.long	4294935771                      ## 0xffff84db
	.long	4294935826                      ## 0xffff8512
	.long	4294935883                      ## 0xffff854b
	.long	4294935940                      ## 0xffff8584
	.long	4294935999                      ## 0xffff85bf
	.long	4294936060                      ## 0xffff85fc
	.long	4294936121                      ## 0xffff8639
	.long	4294936183                      ## 0xffff8677
	.long	4294936247                      ## 0xffff86b7
	.long	4294936312                      ## 0xffff86f8
	.long	4294936378                      ## 0xffff873a
	.long	4294936445                      ## 0xffff877d
	.long	4294936513                      ## 0xffff87c1
	.long	4294936583                      ## 0xffff8807
	.long	4294936653                      ## 0xffff884d
	.long	4294936725                      ## 0xffff8895
	.long	4294936798                      ## 0xffff88de
	.long	4294936872                      ## 0xffff8928
	.long	4294936947                      ## 0xffff8973
	.long	4294937024                      ## 0xffff89c0
	.long	4294937101                      ## 0xffff8a0d
	.long	4294937180                      ## 0xffff8a5c
	.long	4294937260                      ## 0xffff8aac
	.long	4294937341                      ## 0xffff8afd
	.long	4294937423                      ## 0xffff8b4f
	.long	4294937506                      ## 0xffff8ba2
	.long	4294937590                      ## 0xffff8bf6
	.long	4294937675                      ## 0xffff8c4b
	.long	4294937762                      ## 0xffff8ca2
	.long	4294937850                      ## 0xffff8cfa
	.long	4294937938                      ## 0xffff8d52
	.long	4294938028                      ## 0xffff8dac
	.long	4294938119                      ## 0xffff8e07
	.long	4294938211                      ## 0xffff8e63
	.long	4294938304                      ## 0xffff8ec0
	.long	4294938399                      ## 0xffff8f1f
	.long	4294938494                      ## 0xffff8f7e
	.long	4294938590                      ## 0xffff8fde
	.long	4294938688                      ## 0xffff9040
	.long	4294938786                      ## 0xffff90a2
	.long	4294938886                      ## 0xffff9106
	.long	4294938987                      ## 0xffff916b
	.long	4294939088                      ## 0xffff91d0
	.long	4294939191                      ## 0xffff9237
	.long	4294939295                      ## 0xffff929f
	.long	4294939400                      ## 0xffff9308
	.long	4294939506                      ## 0xffff9372
	.long	4294939613                      ## 0xffff93dd
	.long	4294939721                      ## 0xffff9449
	.long	4294939830                      ## 0xffff94b6
	.long	4294939941                      ## 0xffff9525
	.long	4294940052                      ## 0xffff9594
	.long	4294940164                      ## 0xffff9604
	.long	4294940277                      ## 0xffff9675
	.long	4294940391                      ## 0xffff96e7
	.long	4294940507                      ## 0xffff975b
	.long	4294940623                      ## 0xffff97cf
	.long	4294940740                      ## 0xffff9844
	.long	4294940859                      ## 0xffff98bb
	.long	4294940978                      ## 0xffff9932
	.long	4294941098                      ## 0xffff99aa
	.long	4294941219                      ## 0xffff9a23
	.long	4294941342                      ## 0xffff9a9e
	.long	4294941465                      ## 0xffff9b19
	.long	4294941589                      ## 0xffff9b95
	.long	4294941714                      ## 0xffff9c12
	.long	4294941840                      ## 0xffff9c90
	.long	4294941967                      ## 0xffff9d0f
	.long	4294942095                      ## 0xffff9d8f
	.long	4294942224                      ## 0xffff9e10
	.long	4294942354                      ## 0xffff9e92
	.long	4294942485                      ## 0xffff9f15
	.long	4294942617                      ## 0xffff9f99
	.long	4294942750                      ## 0xffffa01e
	.long	4294942883                      ## 0xffffa0a3
	.long	4294943018                      ## 0xffffa12a
	.long	4294943153                      ## 0xffffa1b1
	.long	4294943290                      ## 0xffffa23a
	.long	4294943427                      ## 0xffffa2c3
	.long	4294943565                      ## 0xffffa34d
	.long	4294943704                      ## 0xffffa3d8
	.long	4294943844                      ## 0xffffa464
	.long	4294943985                      ## 0xffffa4f1
	.long	4294944127                      ## 0xffffa57f
	.long	4294944269                      ## 0xffffa60d
	.long	4294944413                      ## 0xffffa69d
	.long	4294944557                      ## 0xffffa72d
	.long	4294944702                      ## 0xffffa7be
	.long	4294944848                      ## 0xffffa850
	.long	4294944995                      ## 0xffffa8e3
	.long	4294945143                      ## 0xffffa977
	.long	4294945292                      ## 0xffffaa0c
	.long	4294945441                      ## 0xffffaaa1
	.long	4294945591                      ## 0xffffab37
	.long	4294945742                      ## 0xffffabce
	.long	4294945894                      ## 0xffffac66
	.long	4294946047                      ## 0xffffacff
	.long	4294946200                      ## 0xffffad98
	.long	4294946354                      ## 0xffffae32
	.long	4294946509                      ## 0xffffaecd
	.long	4294946665                      ## 0xffffaf69
	.long	4294946822                      ## 0xffffb006
	.long	4294946979                      ## 0xffffb0a3
	.long	4294947137                      ## 0xffffb141
	.long	4294947296                      ## 0xffffb1e0
	.long	4294947456                      ## 0xffffb280
	.long	4294947616                      ## 0xffffb320
	.long	4294947777                      ## 0xffffb3c1
	.long	4294947939                      ## 0xffffb463
	.long	4294948102                      ## 0xffffb506
	.long	4294948265                      ## 0xffffb5a9
	.long	4294948429                      ## 0xffffb64d
	.long	4294948594                      ## 0xffffb6f2
	.long	4294948759                      ## 0xffffb797
	.long	4294948925                      ## 0xffffb83d
	.long	4294949092                      ## 0xffffb8e4
	.long	4294949260                      ## 0xffffb98c
	.long	4294949428                      ## 0xffffba34
	.long	4294949597                      ## 0xffffbadd
	.long	4294949766                      ## 0xffffbb86
	.long	4294949936                      ## 0xffffbc30
	.long	4294950107                      ## 0xffffbcdb
	.long	4294950279                      ## 0xffffbd87
	.long	4294950451                      ## 0xffffbe33
	.long	4294950624                      ## 0xffffbee0
	.long	4294950797                      ## 0xffffbf8d
	.long	4294950971                      ## 0xffffc03b
	.long	4294951146                      ## 0xffffc0ea
	.long	4294951321                      ## 0xffffc199
	.long	4294951497                      ## 0xffffc249
	.long	4294951673                      ## 0xffffc2f9
	.long	4294951850                      ## 0xffffc3aa
	.long	4294952028                      ## 0xffffc45c
	.long	4294952206                      ## 0xffffc50e
	.long	4294952385                      ## 0xffffc5c1
	.long	4294952564                      ## 0xffffc674
	.long	4294952744                      ## 0xffffc728
	.long	4294952924                      ## 0xffffc7dc
	.long	4294953105                      ## 0xffffc891
	.long	4294953287                      ## 0xffffc947
	.long	4294953469                      ## 0xffffc9fd
	.long	4294953651                      ## 0xffffcab3
	.long	4294953834                      ## 0xffffcb6a
	.long	4294954018                      ## 0xffffcc22
	.long	4294954202                      ## 0xffffccda
	.long	4294954387                      ## 0xffffcd93
	.long	4294954572                      ## 0xffffce4c
	.long	4294954757                      ## 0xffffcf05
	.long	4294954943                      ## 0xffffcfbf
	.long	4294955130                      ## 0xffffd07a
	.long	4294955316                      ## 0xffffd134
	.long	4294955504                      ## 0xffffd1f0
	.long	4294955692                      ## 0xffffd2ac
	.long	4294955880                      ## 0xffffd368
	.long	4294956069                      ## 0xffffd425
	.long	4294956258                      ## 0xffffd4e2
	.long	4294956447                      ## 0xffffd59f
	.long	4294956637                      ## 0xffffd65d
	.long	4294956827                      ## 0xffffd71b
	.long	4294957018                      ## 0xffffd7da
	.long	4294957209                      ## 0xffffd899
	.long	4294957401                      ## 0xffffd959
	.long	4294957593                      ## 0xffffda19
	.long	4294957785                      ## 0xffffdad9
	.long	4294957977                      ## 0xffffdb99
	.long	4294958170                      ## 0xffffdc5a
	.long	4294958364                      ## 0xffffdd1c
	.long	4294958557                      ## 0xffffdddd
	.long	4294958751                      ## 0xffffde9f
	.long	4294958945                      ## 0xffffdf61
	.long	4294959140                      ## 0xffffe024
	.long	4294959335                      ## 0xffffe0e7
	.long	4294959530                      ## 0xffffe1aa
	.long	4294959725                      ## 0xffffe26d
	.long	4294959921                      ## 0xffffe331
	.long	4294960117                      ## 0xffffe3f5
	.long	4294960314                      ## 0xffffe4ba
	.long	4294960510                      ## 0xffffe57e
	.long	4294960707                      ## 0xffffe643
	.long	4294960904                      ## 0xffffe708
	.long	4294961101                      ## 0xffffe7cd
	.long	4294961299                      ## 0xffffe893
	.long	4294961497                      ## 0xffffe959
	.long	4294961695                      ## 0xffffea1f
	.long	4294961893                      ## 0xffffeae5
	.long	4294962091                      ## 0xffffebab
	.long	4294962290                      ## 0xffffec72
	.long	4294962489                      ## 0xffffed39
	.long	4294962688                      ## 0xffffee00
	.long	4294962887                      ## 0xffffeec7
	.long	4294963086                      ## 0xffffef8e
	.long	4294963285                      ## 0xfffff055
	.long	4294963485                      ## 0xfffff11d
	.long	4294963685                      ## 0xfffff1e5
	.long	4294963885                      ## 0xfffff2ad
	.long	4294964085                      ## 0xfffff375
	.long	4294964285                      ## 0xfffff43d
	.long	4294964485                      ## 0xfffff505
	.long	4294964686                      ## 0xfffff5ce
	.long	4294964886                      ## 0xfffff696
	.long	4294965087                      ## 0xfffff75f
	.long	4294965287                      ## 0xfffff827
	.long	4294965488                      ## 0xfffff8f0
	.long	4294965689                      ## 0xfffff9b9
	.long	4294965890                      ## 0xfffffa82
	.long	4294966090                      ## 0xfffffb4a
	.long	4294966291                      ## 0xfffffc13
	.long	4294966492                      ## 0xfffffcdc
	.long	4294966693                      ## 0xfffffda5
	.long	4294966894                      ## 0xfffffe6e
	.long	4294967095                      ## 0xffffff37

.zerofill __DATA,__bss,_db_from_ampl.loud2,400,4 ## @db_from_ampl.loud2
	.globl	_Loudampl                       ## @Loudampl
	.p2align	4, 0x0
_Loudampl:
	.long	32767                           ## 0x7fff
	.long	29203                           ## 0x7213
	.long	26027                           ## 0x65ab
	.long	23197                           ## 0x5a9d
	.long	20674                           ## 0x50c2
	.long	18426                           ## 0x47fa
	.long	16422                           ## 0x4026
	.long	14636                           ## 0x392c
	.long	13044                           ## 0x32f4
	.long	11626                           ## 0x2d6a
	.long	10361                           ## 0x2879
	.long	9234                            ## 0x2412
	.long	8230                            ## 0x2026
	.long	7335                            ## 0x1ca7
	.long	6537                            ## 0x1989
	.long	5826                            ## 0x16c2
	.long	5193                            ## 0x1449
	.long	4628                            ## 0x1214
	.long	4125                            ## 0x101d
	.long	3676                            ## 0xe5c
	.long	3276                            ## 0xccc
	.long	2920                            ## 0xb68
	.long	2602                            ## 0xa2a
	.long	2319                            ## 0x90f
	.long	2067                            ## 0x813
	.long	1842                            ## 0x732
	.long	1642                            ## 0x66a
	.long	1463                            ## 0x5b7
	.long	1304                            ## 0x518
	.long	1162                            ## 0x48a
	.long	1036                            ## 0x40c
	.long	923                             ## 0x39b
	.long	823                             ## 0x337
	.long	733                             ## 0x2dd
	.long	653                             ## 0x28d
	.long	582                             ## 0x246
	.long	519                             ## 0x207
	.long	462                             ## 0x1ce
	.long	412                             ## 0x19c
	.long	367                             ## 0x16f
	.long	327                             ## 0x147
	.long	292                             ## 0x124
	.long	260                             ## 0x104
	.long	231                             ## 0xe7
	.long	206                             ## 0xce
	.long	184                             ## 0xb8
	.long	164                             ## 0xa4
	.long	146                             ## 0x92
	.long	130                             ## 0x82
	.long	116                             ## 0x74
	.long	103                             ## 0x67
	.long	92                              ## 0x5c
	.long	82                              ## 0x52
	.long	73                              ## 0x49
	.long	65                              ## 0x41
	.long	58                              ## 0x3a
	.long	51                              ## 0x33
	.long	46                              ## 0x2e
	.long	41                              ## 0x29
	.long	36                              ## 0x24
	.long	32                              ## 0x20
	.long	29                              ## 0x1d
	.long	26                              ## 0x1a
	.long	23                              ## 0x17
	.long	20                              ## 0x14
	.long	18                              ## 0x12
	.long	16                              ## 0x10
	.long	14                              ## 0xe
	.long	13                              ## 0xd
	.long	11                              ## 0xb
	.long	10                              ## 0xa
	.long	9                               ## 0x9
	.long	8                               ## 0x8
	.long	7                               ## 0x7
	.long	6                               ## 0x6
	.long	5                               ## 0x5
	.long	5                               ## 0x5
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.long	3                               ## 0x3
	.long	3                               ## 0x3
	.long	2                               ## 0x2
	.long	2                               ## 0x2
	.long	2                               ## 0x2
	.long	2                               ## 0x2
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.space	36

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d: %d, %d\n"

.subsections_via_symbols
