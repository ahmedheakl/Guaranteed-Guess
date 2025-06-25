	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function derivateWRTWeight
LCPI0_0:
	.quad	0xc000000000000000              ## double -2
LCPI0_1:
	.quad	0x4049000000000000              ## double 50
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_derivateWRTWeight
	.p2align	4, 0x90
_derivateWRTWeight:                     ## @derivateWRTWeight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorpd	%xmm2, %xmm2
	movl	$1, %eax
	leaq	_X(%rip), %rcx
	leaq	_Y(%rip), %rdx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	-8(%rcx,%rax,8), %xmm3          ## xmm3 = mem[0],zero
	movsd	(%rcx,%rax,8), %xmm4            ## xmm4 = mem[0],zero
	movapd	%xmm0, %xmm5
	mulsd	%xmm3, %xmm5
	addsd	%xmm1, %xmm5
	movsd	-8(%rdx,%rax,8), %xmm6          ## xmm6 = mem[0],zero
	subsd	%xmm5, %xmm6
	mulsd	%xmm3, %xmm6
	addsd	%xmm2, %xmm6
	movsd	(%rdx,%rax,8), %xmm2            ## xmm2 = mem[0],zero
	movapd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm6, %xmm2
	addq	$2, %rax
	cmpq	$51, %rax
	jne	LBB0_1
## %bb.2:
	mulsd	LCPI0_0(%rip), %xmm2
	divsd	LCPI0_1(%rip), %xmm2
	movapd	%xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function derivateWRTBias
LCPI1_0:
	.quad	0xc000000000000000              ## double -2
LCPI1_1:
	.quad	0x4049000000000000              ## double 50
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_derivateWRTBias
	.p2align	4, 0x90
_derivateWRTBias:                       ## @derivateWRTBias
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movapd	%xmm0, %xmm2
	xorpd	%xmm0, %xmm0
	movl	$1, %eax
	leaq	_Y(%rip), %rcx
	leaq	_X(%rip), %rdx
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	-8(%rdx,%rax,8), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	-8(%rcx,%rax,8), %xmm4          ## xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm4
	movsd	(%rcx,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	(%rdx,%rax,8), %xmm3            ## xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	addq	$2, %rax
	cmpq	$51, %rax
	jne	LBB1_1
## %bb.2:
	mulsd	LCPI1_0(%rip), %xmm0
	divsd	LCPI1_1(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function gradientDescent
LCPI2_0:
	.quad	0x4049000000000000              ## double 50
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_gradientDescent
	.p2align	4, 0x90
_gradientDescent:                       ## @gradientDescent
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rsi), %xmm1                   ## xmm1 = mem[0],zero
	xorl	%r8d, %r8d
	leaq	_X(%rip), %rcx
	leaq	_Y(%rip), %rdx
	movsd	LCPI2_0(%rip), %xmm8            ## xmm8 = mem[0],zero
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##     Child Loop BB2_4 Depth 2
	movsd	(%rdi), %xmm2                   ## xmm2 = mem[0],zero
	xorpd	%xmm4, %xmm4
	movl	$1, %eax
	movsd	_L(%rip), %xmm3                 ## xmm3 = mem[0],zero
	.p2align	4, 0x90
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-8(%rcx,%rax,8), %xmm5          ## xmm5 = mem[0],zero
	movsd	(%rcx,%rax,8), %xmm6            ## xmm6 = mem[0],zero
	movapd	%xmm2, %xmm7
	mulsd	%xmm5, %xmm7
	addsd	%xmm1, %xmm7
	movsd	-8(%rdx,%rax,8), %xmm0          ## xmm0 = mem[0],zero
	subsd	%xmm7, %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm0
	movsd	(%rdx,%rax,8), %xmm4            ## xmm4 = mem[0],zero
	movapd	%xmm2, %xmm5
	mulsd	%xmm6, %xmm5
	addsd	%xmm1, %xmm5
	subsd	%xmm5, %xmm4
	mulsd	%xmm6, %xmm4
	addsd	%xmm0, %xmm4
	addq	$2, %rax
	cmpq	$51, %rax
	jne	LBB2_2
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	addsd	%xmm4, %xmm4
	divsd	%xmm8, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, (%rdi)
	movsd	(%rsi), %xmm1                   ## xmm1 = mem[0],zero
	xorpd	%xmm4, %xmm4
	movl	$1, %eax
	movsd	_L(%rip), %xmm3                 ## xmm3 = mem[0],zero
	.p2align	4, 0x90
LBB2_4:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-8(%rcx,%rax,8), %xmm0          ## xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	-8(%rdx,%rax,8), %xmm5          ## xmm5 = mem[0],zero
	subsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm5
	movsd	(%rdx,%rax,8), %xmm4            ## xmm4 = mem[0],zero
	movsd	(%rcx,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm5, %xmm4
	addq	$2, %rax
	cmpq	$51, %rax
	jne	LBB2_4
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	addsd	%xmm4, %xmm4
	divsd	%xmm8, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm1, (%rsi)
	incl	%r8d
	cmpl	$200, %r8d
	jne	LBB2_1
## %bb.6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function main
LCPI3_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI3_1:
	.quad	0xc000000000000000              ## double -2
LCPI3_2:
	.quad	0x4049000000000000              ## double 50
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
	movsd	_L(%rip), %xmm2                 ## xmm2 = mem[0],zero
	xorpd	LCPI3_0(%rip), %xmm2
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
	leaq	_X(%rip), %rcx
	leaq	_Y(%rip), %rdx
	movsd	LCPI3_1(%rip), %xmm8            ## xmm8 = mem[0],zero
	movsd	LCPI3_2(%rip), %xmm9            ## xmm9 = mem[0],zero
	xorpd	%xmm1, %xmm1
	.p2align	4, 0x90
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_2 Depth 2
                                        ##     Child Loop BB3_4 Depth 2
	movl	$1, %esi
	xorpd	%xmm5, %xmm5
	.p2align	4, 0x90
LBB3_2:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-8(%rcx,%rsi,8), %xmm6          ## xmm6 = mem[0],zero
	movsd	(%rcx,%rsi,8), %xmm7            ## xmm7 = mem[0],zero
	movapd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm3
	addsd	%xmm1, %xmm3
	movsd	-8(%rdx,%rsi,8), %xmm4          ## xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	mulsd	%xmm6, %xmm4
	addsd	%xmm5, %xmm4
	movsd	(%rdx,%rsi,8), %xmm5            ## xmm5 = mem[0],zero
	movapd	%xmm0, %xmm3
	mulsd	%xmm7, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm5
	mulsd	%xmm7, %xmm5
	addsd	%xmm4, %xmm5
	addq	$2, %rsi
	cmpq	$51, %rsi
	jne	LBB3_2
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mulsd	%xmm8, %xmm5
	divsd	%xmm9, %xmm5
	mulsd	%xmm2, %xmm5
	addsd	%xmm5, %xmm0
	xorpd	%xmm5, %xmm5
	movl	$1, %esi
	.p2align	4, 0x90
LBB3_4:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-8(%rcx,%rsi,8), %xmm3          ## xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	movsd	-8(%rdx,%rsi,8), %xmm4          ## xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	addsd	%xmm5, %xmm4
	movsd	(%rdx,%rsi,8), %xmm5            ## xmm5 = mem[0],zero
	movsd	(%rcx,%rsi,8), %xmm3            ## xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	addq	$2, %rsi
	cmpq	$51, %rsi
	jne	LBB3_4
## %bb.5:                               ##   in Loop: Header=BB3_1 Depth=1
	mulsd	%xmm8, %xmm5
	divsd	%xmm9, %xmm5
	mulsd	%xmm2, %xmm5
	addsd	%xmm5, %xmm1
	incl	%eax
	cmpl	$200, %eax
	jne	LBB3_1
## %bb.6:
	leaq	L_.str(%rip), %rdi
	movb	$2, %al
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_L                              ## @L
	.p2align	3
_L:
	.quad	0x3f50624dd2f1a9fc              ## double 0.001

	.globl	_Y                              ## @Y
	.p2align	4
_Y:
	.quad	0x404c000000000000              ## double 56
	.quad	0x4034000000000000              ## double 20
	.quad	0x4092b80000000000              ## double 1198
	.quad	0x4022000000000000              ## double 9
	.quad	0x403e000000000000              ## double 30
	.quad	0x4032000000000000              ## double 18
	.quad	0x4026000000000000              ## double 11
	.quad	0x404a000000000000              ## double 52
	.quad	0x4096c00000000000              ## double 1456
	.quad	0x4020000000000000              ## double 8
	.quad	0x4028000000000000              ## double 12
	.quad	0x4051800000000000              ## double 70
	.quad	0x4051000000000000              ## double 68
	.quad	0x4032000000000000              ## double 18
	.quad	0x40e0eec000000000              ## double 34678
	.quad	0x0000000000000000              ## double 0
	.quad	0x4049800000000000              ## double 51
	.quad	0x4067600000000000              ## double 187
	.quad	0x4065a00000000000              ## double 173
	.quad	0x4076100000000000              ## double 353
	.quad	0x40c87d8000000000              ## double 12539
	.quad	0x406f000000000000              ## double 248
	.quad	0x4069200000000000              ## double 201
	.quad	0x4031000000000000              ## double 17
	.quad	0x403b000000000000              ## double 27
	.quad	0x4014000000000000              ## double 5
	.quad	0x4034000000000000              ## double 20
	.quad	0x402e000000000000              ## double 15
	.quad	0x4099480000000000              ## double 1618
	.quad	0x409bf80000000000              ## double 1790
	.quad	0x407c500000000000              ## double 453
	.quad	0x40a31c0000000000              ## double 2446
	.quad	0x4044800000000000              ## double 41
	.quad	0x4008000000000000              ## double 3
	.quad	0x4038000000000000              ## double 24
	.quad	0x4041800000000000              ## double 35
	.quad	0x4038000000000000              ## double 24
	.quad	0x4063c00000000000              ## double 158
	.quad	0x403d000000000000              ## double 29
	.quad	0x40b3910000000000              ## double 5009
	.quad	0x4055400000000000              ## double 85
	.quad	0x40b4510000000000              ## double 5201
	.quad	0x401c000000000000              ## double 7
	.quad	0x0000000000000000              ## double 0
	.quad	0x40a82a0000000000              ## double 3093
	.quad	0x4035000000000000              ## double 21
	.quad	0x4018000000000000              ## double 6
	.quad	0x407a100000000000              ## double 417
	.quad	0x4090e00000000000              ## double 1080
	.quad	0x4026000000000000              ## double 11

	.globl	_X                              ## @X
	.p2align	4
_X:
	.quad	0x4021333333333333              ## double 8.5999999999999996
	.quad	0x401e666666666666              ## double 7.5999999999999996
	.quad	0x4024666666666666              ## double 10.199999999999999
	.quad	0x4029000000000000              ## double 12.5
	.quad	0x402e000000000000              ## double 15
	.quad	0x403e666666666666              ## double 30.399999999999999
	.quad	0x400c000000000000              ## double 3.5
	.quad	0x4015333333333333              ## double 5.2999999999999998
	.quad	0x3fe0000000000000              ## double 0.5
	.quad	0x401f333333333333              ## double 7.7999999999999998
	.quad	0x401d333333333333              ## double 7.2999999999999998
	.quad	0x4031333333333333              ## double 17.199999999999999
	.quad	0x4024000000000000              ## double 10
	.quad	0x40314ccccccccccd              ## double 17.300000000000001
	.quad	0x4020000000000000              ## double 8
	.quad	0x3ff6666666666666              ## double 1.3999999999999999
	.quad	0x4018cccccccccccd              ## double 6.2000000000000002
	.quad	0x4011333333333333              ## double 4.2999999999999998
	.quad	0x403ecccccccccccd              ## double 30.800000000000001
	.quad	0x4025666666666666              ## double 10.699999999999999
	.quad	0x401799999999999a              ## double 5.9000000000000004
	.quad	0x3ff6666666666666              ## double 1.3999999999999999
	.quad	0x4023cccccccccccd              ## double 9.9000000000000003
	.quad	0x4035b33333333333              ## double 21.699999999999999
	.quad	0x4013333333333333              ## double 4.7999999999999998
	.quad	0x4042333333333333              ## double 36.399999999999999
	.quad	0x40304ccccccccccd              ## double 16.300000000000001
	.quad	0x4028000000000000              ## double 12
	.quad	0x4014666666666666              ## double 5.0999999999999996
	.quad	0x3ff4cccccccccccd              ## double 1.3
	.quad	0x400c000000000000              ## double 3.5
	.quad	0x4017333333333333              ## double 5.7999999999999998
	.quad	0x4018cccccccccccd              ## double 6.2000000000000002
	.quad	0x4022666666666666              ## double 9.1999999999999993
	.quad	0x4046a66666666666              ## double 45.299999999999997
	.quad	0x401d333333333333              ## double 7.2999999999999998
	.quad	0x403e4ccccccccccd              ## double 30.300000000000001
	.quad	0x4036800000000000              ## double 22.5
	.quad	0x402a333333333333              ## double 13.1
	.quad	0x402d333333333333              ## double 14.6
	.quad	0x4018cccccccccccd              ## double 6.2000000000000002
	.quad	0x4016000000000000              ## double 5.5
	.quad	0x403e4ccccccccccd              ## double 30.300000000000001
	.quad	0x4010cccccccccccd              ## double 4.2000000000000002
	.quad	0x4021333333333333              ## double 8.5999999999999996
	.quad	0x401d333333333333              ## double 7.2999999999999998
	.quad	0x4027cccccccccccd              ## double 11.9
	.quad	0x4020333333333333              ## double 8.0999999999999996
	.quad	0x3fe3333333333333              ## double 0.59999999999999998
	.quad	0x4027000000000000              ## double 11.5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The function is: %.4lfx + %.4lf\n"

.subsections_via_symbols
