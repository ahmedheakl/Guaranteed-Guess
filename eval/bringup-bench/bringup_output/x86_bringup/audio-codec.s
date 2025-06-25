	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_encode                         ## -- Begin function encode
	.p2align	4, 0x90
_encode:                                ## @encode
	.cfi_startproc
## %bb.0:
	testq	%rdx, %rdx
	je	LBB0_17
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$10, %ecx
	movl	$112, %r10d
LBB0_15:                                ##   in Loop: Header=BB0_2 Depth=1
                                        ## kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r9d
	andl	$15, %r9d
	orl	%r8d, %r10d
	orl	%r9d, %r10d
	xorb	$-43, %r10b
	movb	%r10b, (%rdi,%rax)
	incq	%rax
	cmpq	%rax, %rdx
	je	LBB0_16
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%rax,2), %ecx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	andl	$128, %r8d
	movsbl	%r8b, %r9d
	shrl	$7, %r9d
	xorl	%ecx, %r9d
	movswl	%r9w, %r9d
	testl	$16384, %r9d                    ## imm = 0x4000
	jne	LBB0_3
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$8192, %r9d                     ## imm = 0x2000
	jne	LBB0_5
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$4096, %r9d                     ## imm = 0x1000
	jne	LBB0_7
## %bb.8:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$2048, %r9d                     ## imm = 0x800
	jne	LBB0_9
## %bb.10:                              ##   in Loop: Header=BB0_2 Depth=1
	testl	$1024, %r9d                     ## imm = 0x400
	jne	LBB0_11
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	testl	$512, %r9d                      ## imm = 0x200
	jne	LBB0_13
## %bb.14:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	%r9d, %r10d
	shrl	$4, %r10d
	andl	$16, %r10d
	movl	$4, %ecx
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$9, %ecx
	movl	$96, %r10d
	jmp	LBB0_15
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$8, %ecx
	movl	$80, %r10d
	jmp	LBB0_15
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$7, %ecx
	movl	$64, %r10d
	jmp	LBB0_15
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$6, %ecx
	movl	$48, %r10d
	jmp	LBB0_15
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$5, %ecx
	movl	$32, %r10d
	jmp	LBB0_15
LBB0_16:
	popq	%rbp
LBB0_17:
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function decode
LCPI1_0:
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.byte	213                             ## 0xd5
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
LCPI1_1:
	.long	7                               ## 0x7
	.long	7                               ## 0x7
	.long	7                               ## 0x7
	.long	7                               ## 0x7
LCPI1_2:
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
LCPI1_3:
	.long	256                             ## 0x100
	.long	256                             ## 0x100
	.long	256                             ## 0x100
	.long	256                             ## 0x100
LCPI1_4:
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
LCPI1_5:
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
LCPI1_6:
	.long	1065353216                      ## 0x3f800000
	.long	1065353216                      ## 0x3f800000
	.long	1065353216                      ## 0x3f800000
	.long	1065353216                      ## 0x3f800000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_decode
	.p2align	4, 0x90
_decode:                                ## @decode
	.cfi_startproc
## %bb.0:
	testq	%rdx, %rdx
	je	LBB1_11
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpq	$8, %rdx
	jb	LBB1_2
## %bb.3:
	leaq	(%rsi,%rdx), %rcx
	cmpq	%rdi, %rcx
	jbe	LBB1_5
## %bb.4:
	leaq	(%rdi,%rdx,2), %rcx
	cmpq	%rsi, %rcx
	jbe	LBB1_5
LBB1_2:
	xorl	%ecx, %ecx
	movq	%rdi, %r8
	movq	%rsi, %r9
LBB1_8:
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%rsi), %edi
	movl	%edi, %r10d
	xorl	$213, %r10d
	movl	%r10d, %ecx
	shrl	$4, %ecx
	xorl	%r11d, %r11d
	andl	$7, %ecx
	setne	%r11b
	shll	$4, %r10d
	movzbl	%r10b, %r10d
	shll	$8, %r11d
	addl	%r11d, %r10d
	addl	$8, %r10d
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	testb	%dil, %dil
	cmovsl	%r10d, %ecx
	movw	%cx, (%r8,%rsi,2)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB1_9
LBB1_10:
	popq	%rbp
LBB1_11:
	retq
LBB1_5:
	movq	%rdx, %rcx
	andq	$-8, %rcx
	leaq	(%rdi,%rcx,2), %r8
	leaq	(%rsi,%rcx), %r9
	xorl	%r10d, %r10d
	movdqa	LCPI1_0(%rip), %xmm0            ## xmm0 = <213,213,213,213,213,213,213,213,u,u,u,u,u,u,u,u>
	movdqa	LCPI1_1(%rip), %xmm1            ## xmm1 = [7,7,7,7]
	movdqa	LCPI1_2(%rip), %xmm2            ## xmm2 = [240,240,240,240]
	pxor	%xmm3, %xmm3
	movdqa	LCPI1_3(%rip), %xmm4            ## xmm4 = [256,256,256,256]
	movdqa	LCPI1_4(%rip), %xmm5            ## xmm5 = [8,8,8,8]
	movdqa	LCPI1_5(%rip), %xmm6            ## xmm6 = [1,1,1,1]
	pcmpeqd	%xmm7, %xmm7
	movdqa	LCPI1_6(%rip), %xmm8            ## xmm8 = [1065353216,1065353216,1065353216,1065353216]
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rsi,%r10), %xmm9              ## xmm9 = mem[0],zero
	pxor	%xmm10, %xmm10
	pcmpgtb	%xmm9, %xmm10
	pxor	%xmm0, %xmm9
	pmovzxbd	%xmm9, %xmm11                   ## xmm11 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero
	pshufd	$85, %xmm9, %xmm9               ## xmm9 = xmm9[1,1,1,1]
	pmovzxbd	%xmm9, %xmm9                    ## xmm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero
	movdqa	%xmm9, %xmm12
	psrld	$4, %xmm12
	movdqa	%xmm11, %xmm13
	psrld	$4, %xmm13
	pand	%xmm1, %xmm13
	pand	%xmm1, %xmm12
	pslld	$4, %xmm11
	pslld	$4, %xmm9
	pand	%xmm2, %xmm9
	pand	%xmm2, %xmm11
	movdqa	%xmm12, %xmm14
	pcmpgtd	%xmm3, %xmm14
	pand	%xmm4, %xmm14
	movdqa	%xmm13, %xmm15
	pcmpgtd	%xmm3, %xmm15
	pand	%xmm4, %xmm15
	por	%xmm5, %xmm9
	por	%xmm14, %xmm9
	por	%xmm5, %xmm11
	por	%xmm15, %xmm11
	pmaxud	%xmm6, %xmm12
	paddd	%xmm7, %xmm12
	pmaxud	%xmm6, %xmm13
	paddd	%xmm7, %xmm13
	pslld	$23, %xmm13
	paddd	%xmm8, %xmm13
	cvttps2dq	%xmm13, %xmm13
	pmulld	%xmm11, %xmm13
	pslld	$23, %xmm12
	paddd	%xmm8, %xmm12
	cvttps2dq	%xmm12, %xmm11
	pmulld	%xmm9, %xmm11
	pmovsxbd	%xmm10, %xmm9
	pshufd	$85, %xmm10, %xmm10             ## xmm10 = xmm10[1,1,1,1]
	pmovsxbd	%xmm10, %xmm10
	pxor	%xmm10, %xmm11
	psubd	%xmm11, %xmm10
	pxor	%xmm9, %xmm13
	psubd	%xmm13, %xmm9
	pblendw	$170, %xmm3, %xmm9              ## xmm9 = xmm9[0],xmm3[1],xmm9[2],xmm3[3],xmm9[4],xmm3[5],xmm9[6],xmm3[7]
	pblendw	$170, %xmm3, %xmm10             ## xmm10 = xmm10[0],xmm3[1],xmm10[2],xmm3[3],xmm10[4],xmm3[5],xmm10[6],xmm3[7]
	packusdw	%xmm10, %xmm9
	movdqu	%xmm9, (%rdi,%r10,2)
	addq	$8, %r10
	cmpq	%r10, %rcx
	jne	LBB1_6
## %bb.7:
	cmpq	%rdx, %rcx
	jne	LBB1_8
	jmp	LBB1_10
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
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-56(%rbp), %rax
	xorl	%edx, %edx
	leaq	_pcm(%rip), %rsi
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_2:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$10, %ecx
	movl	$112, %r9d
LBB2_14:                                ##   in Loop: Header=BB2_1 Depth=1
                                        ## kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r8d
	andl	$15, %r8d
	orl	%edi, %r9d
	orl	%r8d, %r9d
	xorb	$-43, %r9b
	movb	%r9b, (%rax)
	incq	%rax
	addq	$2, %rdx
	cmpq	$16, %rdx
	je	LBB2_15
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	(%rdx,%rsi), %ecx
	movl	%ecx, %edi
	shrl	$8, %edi
	andl	$128, %edi
	movsbl	%dil, %r8d
	shrl	$7, %r8d
	xorl	%ecx, %r8d
	movswl	%r8w, %r8d
	testl	$16384, %r8d                    ## imm = 0x4000
	jne	LBB2_2
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$8192, %r8d                     ## imm = 0x2000
	jne	LBB2_4
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$4096, %r8d                     ## imm = 0x1000
	jne	LBB2_6
## %bb.7:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$2048, %r8d                     ## imm = 0x800
	jne	LBB2_8
## %bb.9:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$1024, %r8d                     ## imm = 0x400
	jne	LBB2_10
## %bb.11:                              ##   in Loop: Header=BB2_1 Depth=1
	testl	$512, %r8d                      ## imm = 0x200
	jne	LBB2_12
## %bb.13:                              ##   in Loop: Header=BB2_1 Depth=1
	movl	%r8d, %r9d
	shrl	$4, %r9d
	andl	$16, %r9d
	movl	$4, %ecx
	jmp	LBB2_14
	.p2align	4, 0x90
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$9, %ecx
	movl	$96, %r9d
	jmp	LBB2_14
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$8, %ecx
	movl	$80, %r9d
	jmp	LBB2_14
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$7, %ecx
	movl	$64, %r9d
	jmp	LBB2_14
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$6, %ecx
	movl	$48, %r9d
	jmp	LBB2_14
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$5, %ecx
	movl	$32, %r9d
	jmp	LBB2_14
LBB2_15:
	movzbl	-56(%rbp), %r14d
	cmpb	_r_coded(%rip), %r14b
	je	LBB2_17
## %bb.16:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_17:
	movzbl	-55(%rbp), %r15d
	cmpb	_r_coded+1(%rip), %r15b
	je	LBB2_19
## %bb.18:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_19:
	movzbl	-54(%rbp), %r12d
	cmpb	_r_coded+2(%rip), %r12b
	je	LBB2_21
## %bb.20:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_21:
	movzbl	-53(%rbp), %r13d
	cmpb	_r_coded+3(%rip), %r13b
	je	LBB2_23
## %bb.22:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_23:
	movzbl	-52(%rbp), %ebx
	cmpb	_r_coded+4(%rip), %bl
	je	LBB2_25
## %bb.24:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_25:
	movzbl	-51(%rbp), %eax
	movl	%eax, -64(%rbp)                 ## 4-byte Spill
	cmpb	_r_coded+5(%rip), %al
	je	LBB2_27
## %bb.26:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_27:
	movzbl	-50(%rbp), %eax
	movl	%eax, -68(%rbp)                 ## 4-byte Spill
	cmpb	_r_coded+6(%rip), %al
	je	LBB2_29
## %bb.28:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_29:
	movzbl	-49(%rbp), %r8d
	cmpb	_r_coded+7(%rip), %r8b
	je	LBB2_31
## %bb.30:
	movl	$1, %edi
	movl	%r14d, -60(%rbp)                ## 4-byte Spill
	movl	%r15d, %r14d
	movl	%r12d, %r15d
	movl	%r13d, %r12d
	movl	%ebx, %r13d
	movl	%r8d, %ebx
	callq	_libmin_fail
	movl	%ebx, %r8d
	movl	%r13d, %ebx
	movl	%r12d, %r13d
	movl	%r15d, %r12d
	movl	%r14d, %r15d
	movl	-60(%rbp), %r14d                ## 4-byte Reload
LBB2_31:
	movl	%r14d, %eax
	xorl	$213, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	shll	$4, %eax
	movzbl	%al, %eax
	shll	$8, %edx
	addl	%eax, %edx
	addl	$8, %edx
	xorl	%eax, %eax
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %edi
	negl	%edi
	testb	%r14b, %r14b
	cmovsl	%edx, %edi
	movl	%r15d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	testb	%r15b, %r15b
	cmovsl	%edx, %ecx
	movl	%ecx, -60(%rbp)                 ## 4-byte Spill
	movl	%r12d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	testb	%r12b, %r12b
	cmovsl	%edx, %ecx
	movl	%ecx, -72(%rbp)                 ## 4-byte Spill
	movl	%r13d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r12d
	negl	%r12d
	testb	%r13b, %r13b
	cmovsl	%edx, %r12d
	movl	%ebx, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r13d
	negl	%r13d
	testb	%bl, %bl
	cmovsl	%edx, %r13d
	movl	-64(%rbp), %r9d                 ## 4-byte Reload
	movl	%r9d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ebx
	negl	%ebx
	testb	%r9b, %r9b
	cmovsl	%edx, %ebx
	movl	-68(%rbp), %r9d                 ## 4-byte Reload
	movl	%r9d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r14d
	negl	%r14d
	testb	%r9b, %r9b
	cmovsl	%edx, %r14d
	movl	%r8d, %edx
	xorl	$213, %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	xorl	%esi, %esi
	andl	$7, %ecx
	setne	%sil
	shll	$4, %edx
	movzbl	%dl, %edx
	shll	$8, %esi
	addl	%esi, %edx
	addl	$8, %edx
	subl	$1, %ecx
	cmovbl	%eax, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r15d
	negl	%r15d
	testb	%r8b, %r8b
	cmovsl	%edx, %r15d
	movl	%edi, -68(%rbp)                 ## 4-byte Spill
	cmpw	%di, _r_decoded(%rip)
	je	LBB2_33
## %bb.32:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_33:
	movl	-60(%rbp), %eax                 ## 4-byte Reload
	cmpw	%ax, _r_decoded+2(%rip)
	je	LBB2_35
## %bb.34:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_35:
	movl	-72(%rbp), %eax                 ## 4-byte Reload
	cmpw	%ax, _r_decoded+4(%rip)
	jne	LBB2_36
## %bb.37:
	cmpw	%r12w, _r_decoded+6(%rip)
	jne	LBB2_38
LBB2_39:
	cmpw	%r13w, _r_decoded+8(%rip)
	jne	LBB2_40
LBB2_41:
	cmpw	%bx, _r_decoded+10(%rip)
	jne	LBB2_42
LBB2_43:
	cmpw	%r14w, _r_decoded+12(%rip)
	je	LBB2_45
LBB2_44:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_45:
	movl	%r13d, -76(%rbp)                ## 4-byte Spill
	movl	%r12d, -64(%rbp)                ## 4-byte Spill
	cmpw	%r15w, _r_decoded+14(%rip)
	je	LBB2_47
## %bb.46:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_47:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm(%rip), %esi
	leaq	L_.str.1(%rip), %r12
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+2(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+4(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+6(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+8(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+10(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+12(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+14(%rip), %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-56(%rbp), %esi
	leaq	L_.str.4(%rip), %r13
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-55(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-54(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-53(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-52(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-51(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-50(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-49(%rbp), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %r13
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	-68(%rbp), %esi                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	-60(%rbp), %esi                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	-72(%rbp), %esi                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	-64(%rbp), %esi                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	-76(%rbp), %esi                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r12, %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB2_49
## %bb.48:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_36:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%r12w, _r_decoded+6(%rip)
	je	LBB2_39
LBB2_38:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%r13w, _r_decoded+8(%rip)
	je	LBB2_41
LBB2_40:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%bx, _r_decoded+10(%rip)
	je	LBB2_43
LBB2_42:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%r14w, _r_decoded+12(%rip)
	jne	LBB2_44
	jmp	LBB2_45
LBB2_49:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_pcm                            ## @pcm
	.p2align	4, 0x0
_pcm:
	.short	1000                            ## 0x3e8
	.short	64536                           ## 0xfc18
	.short	1234                            ## 0x4d2
	.short	3200                            ## 0xc80
	.short	64222                           ## 0xfade
	.short	0                               ## 0x0
	.short	32767                           ## 0x7fff
	.short	32768                           ## 0x8000

	.globl	_r_coded                        ## @r_coded
_r_coded:
	.ascii	"\372z\346\234a\325\252*"

	.globl	_r_decoded                      ## @r_decoded
	.p2align	4, 0x0
_r_decoded:
	.short	1008                            ## 0x3f0
	.short	64528                           ## 0xfc10
	.short	1248                            ## 0x4e0
	.short	3264                            ## 0xcc0
	.short	64224                           ## 0xfae0
	.short	8                               ## 0x8
	.short	32256                           ## 0x7e00
	.short	33280                           ## 0x8200

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"inputs: "

L_.str.1:                               ## @.str.1
	.asciz	"%d "

L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"encode: "

L_.str.4:                               ## @.str.4
	.asciz	"%u "

L_.str.5:                               ## @.str.5
	.asciz	"decode: "

.subsections_via_symbols
