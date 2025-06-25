	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function main
LCPI0_0:
	.long	0x40000000                      ## float 2
LCPI0_1:
	.long	0x40a00000                      ## float 5
LCPI0_2:
	.long	0x3f800000                      ## float 1
LCPI0_3:
	.long	0x41f00000                      ## float 30
LCPI0_4:
	.long	0x42200000                      ## float 40
LCPI0_5:
	.long	0x41700000                      ## float 15
LCPI0_6:
	.long	0x41400000                      ## float 12
LCPI0_8:
	.long	0x41000000                      ## float 8
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI0_7:
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
LCPI0_12:
	.quad	0x3fa47ae147ae147b              ## double 0.040000000000000001
	.quad	0x3f947ae147ae147b              ## double 0.02
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI0_9:
	.quad	0x3f947ae147ae147b              ## double 0.02
LCPI0_10:
	.quad	0x40191eb851eb851f              ## double 6.2800000000000002
LCPI0_11:
	.quad	0x3fb1eb851eb851ec              ## double 0.070000000000000007
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
	movl	$8936, %eax                     ## imm = 0x22E8
	callq	____chkstk_darwin
	subq	%rax, %rsp
	popq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	L_.str(%rip), %rdi
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	callq	_libmin_printf
	xorpd	%xmm0, %xmm0
	leaq	L_.str.1(%rip), %r13
	movq	_k@GOTPCREL(%rip), %rbx
	xorl	%r14d, %r14d
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	movapd	-8944(%rbp), %xmm0              ## 16-byte Reload
	addpd	LCPI0_12(%rip), %xmm0
	cvtpd2ps	%xmm0, %xmm0
	incl	%r14d
	cmpl	$64, %r14d
	je	LBB0_13
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
                                        ##       Child Loop BB0_3 Depth 3
                                        ##     Child Loop BB0_11 Depth 2
	movapd	%xmm0, -8928(%rbp)              ## 16-byte Spill
	movl	$1760, %edx                     ## imm = 0x6E0
	leaq	-8848(%rbp), %rdi
	movl	$32, %esi
	callq	_libmin_memset
	movl	$7040, %edx                     ## imm = 0x1B80
	leaq	-7088(%rbp), %rdi
	xorl	%esi, %esi
	callq	_libmin_memset
	cvtps2pd	-8928(%rbp), %xmm0              ## 16-byte Folded Reload
	movaps	%xmm0, -8944(%rbp)              ## 16-byte Spill
	movhlps	%xmm0, %xmm0                    ## xmm0 = xmm0[1,1]
	movaps	%xmm0, -8960(%rbp)              ## 16-byte Spill
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8872(%rbp)              ## 8-byte Spill
	jmp	LBB0_2
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=2
	movsd	-8872(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI0_11(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	LCPI0_10(%rip), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm1, -8872(%rbp)              ## 8-byte Spill
	ucomisd	%xmm1, %xmm0
	jbe	LBB0_10
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_3 Depth 3
	xorps	%xmm1, %xmm1
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=3
	movsd	-8928(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI0_9(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	LCPI0_10(%rip), %xmm0           ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB0_9
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_2 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	%xmm1, -8928(%rbp)              ## 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	_libmin_sin
	cvtsd2ss	%xmm0, %xmm0
	movaps	%xmm0, -8976(%rbp)              ## 16-byte Spill
	movsd	-8872(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8860(%rbp)              ## 4-byte Spill
	movaps	-8944(%rbp), %xmm0              ## 16-byte Reload
	callq	_libmin_sin
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8856(%rbp)              ## 4-byte Spill
	movsd	-8872(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8852(%rbp)              ## 4-byte Spill
	movaps	-8944(%rbp), %xmm0              ## 16-byte Reload
	callq	_libmin_cos
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -8892(%rbp)              ## 4-byte Spill
	movss	-8860(%rbp), %xmm0              ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	addss	LCPI0_0(%rip), %xmm0
	movss	%xmm0, -8896(%rbp)              ## 4-byte Spill
	mulss	-8976(%rbp), %xmm0              ## 16-byte Folded Reload
	movss	%xmm0, -8888(%rbp)              ## 4-byte Spill
	movss	-8852(%rbp), %xmm1              ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	movss	%xmm1, -8900(%rbp)              ## 4-byte Spill
	mulss	-8856(%rbp), %xmm0              ## 4-byte Folded Reload
	addss	%xmm1, %xmm0
	addss	LCPI0_1(%rip), %xmm0
	movss	LCPI0_2(%rip), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -8876(%rbp)              ## 4-byte Spill
	movsd	-8928(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8884(%rbp)              ## 4-byte Spill
	movaps	-8960(%rbp), %xmm0              ## 16-byte Reload
	callq	_libmin_cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8880(%rbp)              ## 4-byte Spill
	movaps	-8960(%rbp), %xmm0              ## 16-byte Reload
	callq	_libmin_sin
	movss	-8876(%rbp), %xmm3              ## 4-byte Reload
                                        ## xmm3 = mem[0],zero,zero,zero
	cvtsd2ss	%xmm0, %xmm0
	movss	-8892(%rbp), %xmm6              ## 4-byte Reload
                                        ## xmm6 = mem[0],zero,zero,zero
	movss	-8888(%rbp), %xmm1              ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	movss	-8856(%rbp), %xmm5              ## 4-byte Reload
                                        ## xmm5 = mem[0],zero,zero,zero
	movss	-8852(%rbp), %xmm7              ## 4-byte Reload
                                        ## xmm7 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm7
	subss	%xmm7, %xmm1
	movss	-8896(%rbp), %xmm4              ## 4-byte Reload
                                        ## xmm4 = mem[0],zero,zero,zero
	movss	-8884(%rbp), %xmm8              ## 4-byte Reload
                                        ## xmm8 = mem[0],zero,zero,zero
	mulss	%xmm8, %xmm4
	movaps	%xmm1, %xmm2
	movaps	%xmm1, %xmm9
	mulss	%xmm0, %xmm2
	movaps	%xmm4, %xmm1
	movss	-8880(%rbp), %xmm10             ## 4-byte Reload
                                        ## xmm10 = mem[0],zero,zero,zero
	mulss	%xmm10, %xmm1
	subss	%xmm2, %xmm1
	mulss	%xmm10, %xmm9
	mulss	%xmm0, %xmm4
	addss	%xmm9, %xmm4
	movaps	%xmm3, %xmm2
	mulss	LCPI0_5(%rip), %xmm2
	mulss	%xmm2, %xmm4
	addss	LCPI0_6(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	movaps	%xmm3, %xmm2
	mulss	LCPI0_3(%rip), %xmm2
	mulss	%xmm2, %xmm1
	movaps	-8976(%rbp), %xmm4              ## 16-byte Reload
	xorps	LCPI0_7(%rip), %xmm4
	movss	-8860(%rbp), %xmm2              ## 4-byte Reload
                                        ## xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	mulss	%xmm4, %xmm6
	addss	%xmm7, %xmm6
	mulss	%xmm5, %xmm4
	mulss	%xmm10, %xmm6
	addss	%xmm4, %xmm6
	subss	-8900(%rbp), %xmm6              ## 4-byte Folded Reload
	movaps	%xmm6, %xmm4
	mulss	%xmm8, %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm6, %xmm0
	subss	%xmm2, %xmm0
	addss	LCPI0_4(%rip), %xmm1
	mulss	LCPI0_8(%rip), %xmm0
	leal	-1(%rax), %ecx
	cmpl	$20, %ecx
	ja	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=3
	cvttss2si	%xmm1, %ecx
	testl	%ecx, %ecx
	jle	LBB0_8
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=3
	cmpl	$79, %ecx
	jg	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=3
	shll	$4, %eax
	leal	(%rax,%rax,4), %edx
	movl	%ecx, %eax
	addq	%rdx, %rax
	ucomiss	-7088(%rbp,%rax,4), %xmm3
	jbe	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=3
	cvttss2si	%xmm0, %ecx
	movss	%xmm3, -7088(%rbp,%rax,4)
	testl	%ecx, %ecx
	cmovlel	%r12d, %ecx
	movzbl	(%rcx,%r13), %ecx
	movb	%cl, -8848(%rbp,%rax)
	jmp	LBB0_8
	.p2align	4, 0x90
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	xorl	%r15d, %r15d
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, (%rbx)
	jmp	LBB0_11
	.p2align	4, 0x90
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	movslq	%r15d, %rax
	movzbl	-8848(%rbp,%rax), %eax
LBB0_16:                                ##   in Loop: Header=BB0_11 Depth=2
	movsbl	%al, %edi
	callq	_libmin_putc
	movl	(%rbx), %eax
	leal	1(%rax), %r15d
	movl	%r15d, (%rbx)
	cmpl	$1760, %eax                     ## imm = 0x6E0
	jge	LBB0_17
LBB0_11:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	imull	$-858993459, %r15d, %eax        ## imm = 0xCCCCCCCD
	addl	$429496720, %eax                ## imm = 0x19999990
	rorl	$4, %eax
	cmpl	$53687091, %eax                 ## imm = 0x3333333
	jae	LBB0_15
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movb	$10, %al
	jmp	LBB0_16
LBB0_13:
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_18
## %bb.14:
	xorl	%eax, %eax
	addq	$8936, %rsp                     ## imm = 0x22E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_18:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\033[2J"

L_.str.1:                               ## @.str.1
	.asciz	".,-~:;=!*#$@"

L_.str.2:                               ## @.str.2
	.asciz	"\033[H"

	.comm	_k,4,2                          ## @k
.subsections_via_symbols
