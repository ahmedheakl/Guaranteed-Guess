	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_encode                         ## -- Begin function encode
	.p2align	4, 0x90
_encode:                                ## @encode
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testq	%rdx, %rdx
	je	LBB0_16
## %bb.1:
	xorl	%r9d, %r9d
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$10, %ecx
	movl	$112, %eax
LBB0_15:                                ##   in Loop: Header=BB0_2 Depth=1
                                        ## kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r10d
	andl	$15, %r10d
	orl	%r8d, %eax
	orl	%r10d, %eax
	xorb	$-43, %al
	movb	%al, (%rdi,%r9)
	incq	%r9
	cmpq	%r9, %rdx
	je	LBB0_16
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r9,2), %eax
	movl	%eax, %r8d
	shrl	$8, %r8d
	andl	$128, %r8d
	movsbl	%r8b, %ecx
	shrl	$7, %ecx
	xorl	%eax, %ecx
	movswl	%cx, %r10d
	testl	$16384, %r10d                   ## imm = 0x4000
	jne	LBB0_3
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$8192, %r10d                    ## imm = 0x2000
	jne	LBB0_5
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$4096, %r10d                    ## imm = 0x1000
	jne	LBB0_7
## %bb.8:                               ##   in Loop: Header=BB0_2 Depth=1
	testl	$2048, %r10d                    ## imm = 0x800
	jne	LBB0_9
## %bb.10:                              ##   in Loop: Header=BB0_2 Depth=1
	testl	$1024, %r10d                    ## imm = 0x400
	jne	LBB0_11
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	testl	$512, %r10d                     ## imm = 0x200
	jne	LBB0_13
## %bb.14:                              ##   in Loop: Header=BB0_2 Depth=1
	movl	%r10d, %eax
	shrl	$4, %eax
	andl	$16, %eax
	movl	$4, %ecx
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$9, %ecx
	movl	$96, %eax
	jmp	LBB0_15
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$8, %ecx
	movl	$80, %eax
	jmp	LBB0_15
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	$7, %ecx
	movl	$64, %eax
	jmp	LBB0_15
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$6, %ecx
	movl	$48, %eax
	jmp	LBB0_15
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	movl	$5, %ecx
	movl	$32, %eax
	jmp	LBB0_15
LBB0_16:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function decode
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
	.long	128                             ## 0x80
	.long	128                             ## 0x80
	.long	128                             ## 0x80
	.long	128                             ## 0x80
LCPI1_2:
	.long	7                               ## 0x7
	.long	7                               ## 0x7
	.long	7                               ## 0x7
	.long	7                               ## 0x7
LCPI1_3:
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
	.long	240                             ## 0xf0
LCPI1_4:
	.long	256                             ## 0x100
	.long	256                             ## 0x100
	.long	256                             ## 0x100
	.long	256                             ## 0x100
LCPI1_5:
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
	.long	8                               ## 0x8
LCPI1_6:
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
LCPI1_7:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testq	%rdx, %rdx
	je	LBB1_10
## %bb.1:
	xorl	%r8d, %r8d
	cmpq	$8, %rdx
	jb	LBB1_2
## %bb.3:
	leaq	(%rsi,%rdx), %rax
	cmpq	%rdi, %rax
	jbe	LBB1_5
## %bb.4:
	leaq	(%rdi,%rdx,2), %rax
	cmpq	%rsi, %rax
	jbe	LBB1_5
LBB1_2:
	xorl	%r10d, %r10d
	movq	%rdi, %r9
	movq	%rsi, %r11
LBB1_8:
	subq	%r10, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r11,%rsi), %r10d
	xorl	$213, %r10d
	movl	%r10d, %ecx
	shrl	$4, %ecx
	xorl	%eax, %eax
	andl	$7, %ecx
	setne	%al
	movl	%r10d, %edi
	shll	$4, %edi
	movzbl	%dil, %edi
	shll	$8, %eax
	subl	$1, %ecx
	cmovbl	%r8d, %ecx
	addl	%edi, %eax
	addl	$8, %eax
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	negl	%ecx
	testb	$-128, %r10b
	cmovel	%eax, %ecx
	movw	%cx, (%r9,%rsi,2)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	LBB1_9
LBB1_10:
	popq	%rbp
	retq
LBB1_5:
	movq	%rdx, %r10
	andq	$-8, %r10
	leaq	(%rdi,%r10,2), %r9
	leaq	(%rsi,%r10), %r11
	xorl	%ecx, %ecx
	movdqa	LCPI1_2(%rip), %xmm10           ## xmm10 = [7,7,7,7]
	movdqa	LCPI1_3(%rip), %xmm11           ## xmm11 = [240,240,240,240]
	pxor	%xmm4, %xmm4
	movdqa	LCPI1_4(%rip), %xmm12           ## xmm12 = [256,256,256,256]
	movdqa	LCPI1_5(%rip), %xmm13           ## xmm13 = [8,8,8,8]
	movdqa	LCPI1_6(%rip), %xmm14           ## xmm14 = [1,1,1,1]
	pcmpeqd	%xmm15, %xmm15
	movdqa	LCPI1_7(%rip), %xmm9            ## xmm9 = [1065353216,1065353216,1065353216,1065353216]
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rcx), %xmm0              ## xmm0 = mem[0],zero
	pxor	LCPI1_0(%rip), %xmm0
	pmovzxbd	%xmm0, %xmm6                    ## xmm6 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
	pshufd	$85, %xmm0, %xmm0               ## xmm0 = xmm0[1,1,1,1]
	pmovzxbd	%xmm0, %xmm5                    ## xmm5 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
	movdqa	%xmm5, %xmm7
	movdqa	%xmm6, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$4, %xmm2
	movdqa	%xmm6, %xmm3
	psrld	$4, %xmm3
	pand	%xmm10, %xmm3
	pand	%xmm10, %xmm2
	pslld	$4, %xmm6
	pslld	$4, %xmm5
	pand	%xmm11, %xmm5
	pand	%xmm11, %xmm6
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm4, %xmm8
	pand	%xmm12, %xmm8
	por	%xmm13, %xmm5
	por	%xmm8, %xmm5
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm12, %xmm1
	por	%xmm13, %xmm6
	por	%xmm1, %xmm6
	pmaxud	%xmm14, %xmm3
	paddd	%xmm15, %xmm3
	pslld	$23, %xmm3
	paddd	%xmm9, %xmm3
	cvttps2dq	%xmm3, %xmm1
	pmulld	%xmm6, %xmm1
	pmaxud	%xmm14, %xmm2
	paddd	%xmm15, %xmm2
	pslld	$23, %xmm2
	paddd	%xmm9, %xmm2
	cvttps2dq	%xmm2, %xmm2
	pmulld	%xmm5, %xmm2
	movdqa	LCPI1_1(%rip), %xmm3            ## xmm3 = [128,128,128,128]
	pand	%xmm3, %xmm7
	pcmpeqd	%xmm4, %xmm7
	pxor	%xmm7, %xmm2
	psubd	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm4, %xmm0
	pxor	%xmm0, %xmm1
	psubd	%xmm1, %xmm0
	pblendw	$170, %xmm4, %xmm0              ## xmm0 = xmm0[0],xmm4[1],xmm0[2],xmm4[3],xmm0[4],xmm4[5],xmm0[6],xmm4[7]
	pblendw	$170, %xmm4, %xmm7              ## xmm7 = xmm7[0],xmm4[1],xmm7[2],xmm4[3],xmm7[4],xmm4[5],xmm7[6],xmm4[7]
	packusdw	%xmm7, %xmm0
	movdqu	%xmm0, (%rdi,%rcx,2)
	addq	$8, %rcx
	cmpq	%rcx, %r10
	jne	LBB1_6
## %bb.7:
	cmpq	%rdx, %r10
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
	leaq	_pcm(%rip), %r8
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_2:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$10, %ecx
	movl	$112, %ebx
LBB2_14:                                ##   in Loop: Header=BB2_1 Depth=1
                                        ## kill: def $cl killed $cl killed $ecx
	sarl	%cl, %esi
	andl	$15, %esi
	orl	%edi, %ebx
	orl	%esi, %ebx
	xorb	$-43, %bl
	movb	%bl, (%rax)
	incq	%rax
	addq	$2, %rdx
	cmpq	$16, %rdx
	je	LBB2_15
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	(%rdx,%r8), %ecx
	movl	%ecx, %edi
	shrl	$8, %edi
	andl	$128, %edi
	movsbl	%dil, %esi
	shrl	$7, %esi
	xorl	%ecx, %esi
	movswl	%si, %esi
	testl	$16384, %esi                    ## imm = 0x4000
	jne	LBB2_2
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$8192, %esi                     ## imm = 0x2000
	jne	LBB2_4
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$4096, %esi                     ## imm = 0x1000
	jne	LBB2_6
## %bb.7:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$2048, %esi                     ## imm = 0x800
	jne	LBB2_8
## %bb.9:                               ##   in Loop: Header=BB2_1 Depth=1
	testl	$1024, %esi                     ## imm = 0x400
	jne	LBB2_10
## %bb.11:                              ##   in Loop: Header=BB2_1 Depth=1
	testl	$512, %esi                      ## imm = 0x200
	jne	LBB2_12
## %bb.13:                              ##   in Loop: Header=BB2_1 Depth=1
	movl	%esi, %ebx
	shrl	$4, %ebx
	andl	$16, %ebx
	movl	$4, %ecx
	jmp	LBB2_14
	.p2align	4, 0x90
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$9, %ecx
	movl	$96, %ebx
	jmp	LBB2_14
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$8, %ecx
	movl	$80, %ebx
	jmp	LBB2_14
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	$7, %ecx
	movl	$64, %ebx
	jmp	LBB2_14
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$6, %ecx
	movl	$48, %ebx
	jmp	LBB2_14
LBB2_12:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$5, %ecx
	movl	$32, %ebx
	jmp	LBB2_14
LBB2_15:
	movzbl	-56(%rbp), %r12d
	cmpb	_r_coded(%rip), %r12b
	je	LBB2_17
## %bb.16:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_17:
	movzbl	-55(%rbp), %r13d
	cmpb	_r_coded+1(%rip), %r13b
	je	LBB2_19
## %bb.18:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_19:
	movzbl	-54(%rbp), %r15d
	cmpb	_r_coded+2(%rip), %r15b
	je	LBB2_21
## %bb.20:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_21:
	movzbl	-53(%rbp), %ebx
	cmpb	_r_coded+3(%rip), %bl
	je	LBB2_23
## %bb.22:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_23:
	movzbl	-52(%rbp), %r14d
	cmpb	_r_coded+4(%rip), %r14b
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
	movl	%ebx, -60(%rbp)                 ## 4-byte Spill
	movl	%r14d, %ebx
	movl	%r8d, %r14d
	callq	_libmin_fail
	movl	%r14d, %r8d
	movl	%ebx, %r14d
	movl	-60(%rbp), %ebx                 ## 4-byte Reload
LBB2_31:
	xorl	$213, %r12d
	movl	%r12d, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%r12d, %eax
	shll	$4, %eax
	movzbl	%al, %esi
	shll	$8, %edx
	xorl	%r9d, %r9d
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %edi
	negl	%edi
	testb	$-128, %r12b
	cmovel	%edx, %edi
	xorl	$213, %r13d
	movl	%r13d, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%r13d, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	testb	$-128, %r13b
	cmovel	%edx, %ecx
	movl	%ecx, -60(%rbp)                 ## 4-byte Spill
	xorl	$213, %r15d
	movl	%r15d, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%r15d, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	testb	$-128, %r15b
	cmovel	%edx, %ecx
	movl	%ecx, -72(%rbp)                 ## 4-byte Spill
	xorl	$213, %ebx
	movl	%ebx, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%ebx, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r15d
	negl	%r15d
	testb	$-128, %bl
	cmovel	%edx, %r15d
	xorl	$213, %r14d
	movl	%r14d, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%r14d, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ebx
	negl	%ebx
	testb	$-128, %r14b
	cmovel	%edx, %ebx
	movl	-64(%rbp), %eax                 ## 4-byte Reload
	xorl	$213, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%eax, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r14d
	negl	%r14d
	testb	$-128, %al
	cmovel	%edx, %r14d
	movl	-68(%rbp), %eax                 ## 4-byte Reload
	xorl	$213, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%eax, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	addl	%esi, %edx
	addl	$8, %edx
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %r12d
	negl	%r12d
	testb	$-128, %al
	cmovel	%edx, %r12d
	xorl	$213, %r8d
	movl	%r8d, %ecx
	shrl	$4, %ecx
	xorl	%edx, %edx
	andl	$7, %ecx
	setne	%dl
	movl	%r8d, %esi
	shll	$4, %esi
	movzbl	%sil, %esi
	shll	$8, %edx
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	leal	(%rsi,%rdx), %eax
	addl	$8, %eax
                                        ## kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %r13d
	negl	%r13d
	testb	$-128, %r8b
	cmovel	%eax, %r13d
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
	cmpw	%r15w, _r_decoded+6(%rip)
	jne	LBB2_38
LBB2_39:
	cmpw	%bx, _r_decoded+8(%rip)
	jne	LBB2_40
LBB2_41:
	cmpw	%r14w, _r_decoded+10(%rip)
	jne	LBB2_42
LBB2_43:
	cmpw	%r12w, _r_decoded+12(%rip)
	je	LBB2_45
LBB2_44:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_45:
	movl	%ebx, -76(%rbp)                 ## 4-byte Spill
	movl	%r15d, -64(%rbp)                ## 4-byte Spill
	cmpw	%r13w, _r_decoded+14(%rip)
	je	LBB2_47
## %bb.46:
	movl	$1, %edi
	callq	_libmin_fail
LBB2_47:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm(%rip), %esi
	leaq	L_.str.1(%rip), %r15
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+2(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+4(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+6(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+8(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+10(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+12(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	_pcm+14(%rip), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-56(%rbp), %esi
	leaq	L_.str.4(%rip), %rbx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-55(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-54(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-53(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-52(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-51(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-50(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	-49(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rbx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	-68(%rbp), %esi                 ## 2-byte Folded Reload
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	-60(%rbp), %esi                 ## 2-byte Folded Reload
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	-72(%rbp), %esi                 ## 2-byte Folded Reload
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	-64(%rbp), %esi                 ## 2-byte Folded Reload
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	-76(%rbp), %esi                 ## 2-byte Folded Reload
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	%r14w, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	%r12w, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movswl	%r13w, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
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
	cmpw	%r15w, _r_decoded+6(%rip)
	je	LBB2_39
LBB2_38:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%bx, _r_decoded+8(%rip)
	je	LBB2_41
LBB2_40:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%r14w, _r_decoded+10(%rip)
	je	LBB2_43
LBB2_42:
	movl	$1, %edi
	callq	_libmin_fail
	cmpw	%r12w, _r_decoded+12(%rip)
	jne	LBB2_44
	jmp	LBB2_45
LBB2_49:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_pcm                            ## @pcm
	.p2align	4
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
	.p2align	4
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
