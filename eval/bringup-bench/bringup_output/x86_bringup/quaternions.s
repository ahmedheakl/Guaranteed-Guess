	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function quat_from_euler
LCPI0_0:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI0_1:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_quat_from_euler
	.p2align	4, 0x90
_quat_from_euler:                       ## @quat_from_euler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	LBB0_1
## %bb.3:
	movq	%rsi, %r14
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	LCPI0_0(%rip), %xmm0
	callq	_libmin_cos
	movapd	%xmm0, -96(%rbp)                ## 16-byte Spill
	movsd	16(%r14), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	LCPI0_0(%rip), %xmm0
	callq	_libmin_sin
	movapd	%xmm0, -80(%rbp)                ## 16-byte Spill
	movsd	8(%r14), %xmm0                  ## xmm0 = mem[0],zero
	mulsd	LCPI0_0(%rip), %xmm0
	callq	_libmin_cos
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
	movsd	8(%r14), %xmm0                  ## xmm0 = mem[0],zero
	mulsd	LCPI0_0(%rip), %xmm0
	callq	_libmin_sin
	movapd	%xmm0, -48(%rbp)                ## 16-byte Spill
	movsd	(%r14), %xmm0                   ## xmm0 = mem[0],zero
	mulsd	LCPI0_0(%rip), %xmm0
	callq	_libmin_cos
	movapd	%xmm0, -32(%rbp)                ## 16-byte Spill
	movsd	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	mulsd	(%r14), %xmm0
	callq	_libmin_sin
	movapd	-48(%rbp), %xmm4                ## 16-byte Reload
	movapd	%xmm4, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	-32(%rbp), %xmm7                ## 16-byte Reload
	mulsd	%xmm7, %xmm4
	movapd	LCPI0_1(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	movapd	%xmm4, %xmm3
	movapd	%xmm4, %xmm6
	xorpd	%xmm2, %xmm3
	movddup	-64(%rbp), %xmm4                ## 16-byte Folded Reload
                                        ## xmm4 = mem[0,0]
	unpcklpd	%xmm0, %xmm7                    ## xmm7 = xmm7[0],xmm0[0]
	mulpd	%xmm4, %xmm7
	movapd	-80(%rbp), %xmm5                ## 16-byte Reload
	movddup	%xmm5, %xmm0                    ## xmm0 = xmm5[0,0]
	movapd	%xmm1, %xmm4
	unpcklpd	%xmm3, %xmm4                    ## xmm4 = xmm4[0],xmm3[0]
	mulpd	%xmm0, %xmm4
	movapd	-96(%rbp), %xmm3                ## 16-byte Reload
	movddup	%xmm3, %xmm0                    ## xmm0 = xmm3[0,0]
	mulpd	%xmm7, %xmm0
	addpd	%xmm4, %xmm0
	movupd	%xmm0, (%rbx)
	xorpd	%xmm2, %xmm1
	movapd	%xmm5, %xmm0
	unpcklpd	%xmm3, %xmm0                    ## xmm0 = xmm0[0],xmm3[0]
	unpcklpd	%xmm7, %xmm6                    ## xmm6 = xmm6[0],xmm7[0]
	shufpd	$1, %xmm1, %xmm7                ## xmm7 = xmm7[1],xmm1[0]
	mulpd	%xmm0, %xmm7
	movapd	%xmm3, %xmm0
	unpcklpd	%xmm5, %xmm0                    ## xmm0 = xmm0[0],xmm5[0]
	mulpd	%xmm6, %xmm0
	addpd	%xmm7, %xmm0
	movupd	%xmm0, 16(%rbx)
	jmp	LBB0_2
LBB0_1:
	leaq	L_.str(%rip), %rdi
	leaq	L___func__.quat_from_euler(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rbx)
	movupd	%xmm0, 16(%rbx)
LBB0_2:
	movq	%rbx, %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function euler_from_quat
LCPI1_0:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_euler_from_quat
	.p2align	4, 0x90
_euler_from_quat:                       ## @euler_from_quat
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
	movq	%rdi, %rbx
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	testq	%rsi, %rsi
	je	LBB1_1
## %bb.3:
	movq	%rsi, %r14
	movsd	8(%rsi), %xmm2                  ## xmm2 = mem[0],zero
	movsd	16(%rsi), %xmm1                 ## xmm1 = mem[0],zero
	movsd	24(%rsi), %xmm3                 ## xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	movsd	(%rsi), %xmm0                   ## xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm2
	movsd	LCPI1_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	callq	_libmin_atan2
	movsd	%xmm0, (%rbx)
	movsd	(%r14), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	24(%r14), %xmm1
	mulsd	16(%r14), %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	callq	_libmin_asin
	movsd	%xmm0, 8(%rbx)
	movsd	16(%r14), %xmm4                 ## xmm4 = mem[0],zero
	movsd	24(%r14), %xmm2                 ## xmm2 = mem[0],zero
	movsd	8(%r14), %xmm3                  ## xmm3 = mem[0],zero
	mulsd	%xmm4, %xmm3
	movsd	(%r14), %xmm0                   ## xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	mulsd	%xmm4, %xmm4
	addsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm4
	movsd	LCPI1_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	callq	_libmin_atan2
	movsd	%xmm0, 16(%rbx)
	jmp	LBB1_2
LBB1_1:
	leaq	L_.str(%rip), %rdi
	leaq	L___func__.euler_from_quat(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_2:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function quaternion_multiply
LCPI2_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_quaternion_multiply
	.p2align	4, 0x90
_quaternion_multiply:                   ## @quaternion_multiply
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 16(%rdi)
	movupd	%xmm0, (%rdi)
	testq	%rsi, %rsi
	je	LBB2_2
## %bb.1:
	testq	%rdx, %rdx
	je	LBB2_2
## %bb.4:
	movapd	LCPI2_0(%rip), %xmm3            ## xmm3 = [-0.0E+0,-0.0E+0]
	movsd	8(%rsi), %xmm2                  ## xmm2 = mem[0],zero
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	movapd	%xmm2, %xmm1
	xorpd	%xmm3, %xmm1
	xorpd	%xmm0, %xmm3
	movupd	(%rdx), %xmm4
	movupd	16(%rdx), %xmm6
	movddup	(%rsi), %xmm5                   ## xmm5 = mem[0,0]
	movapd	%xmm5, %xmm7
	movapd	%xmm3, %xmm8
	unpcklpd	%xmm0, %xmm8                    ## xmm8 = xmm8[0],xmm0[0]
	mulpd	%xmm6, %xmm8
	mulpd	%xmm6, %xmm5
	shufpd	$1, %xmm6, %xmm6                ## xmm6 = xmm6[1,0]
	mulpd	%xmm4, %xmm7
	unpcklpd	%xmm3, %xmm0                    ## xmm0 = xmm0[0],xmm3[0]
	mulpd	%xmm4, %xmm0
	shufpd	$1, %xmm4, %xmm4                ## xmm4 = xmm4[1,0]
	unpcklpd	%xmm2, %xmm1                    ## xmm1 = xmm1[0],xmm2[0]
	movapd	%xmm4, %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm2, %xmm7
	addpd	%xmm7, %xmm8
	movddup	24(%rsi), %xmm2                 ## xmm2 = mem[0,0]
	mulpd	%xmm2, %xmm4
	mulpd	%xmm6, %xmm2
	subpd	%xmm2, %xmm8
	movupd	%xmm8, (%rbx)
	mulpd	%xmm6, %xmm1
	addpd	%xmm1, %xmm5
	addpd	%xmm5, %xmm0
	addpd	%xmm0, %xmm4
	movupd	%xmm4, 16(%rbx)
	jmp	LBB2_3
LBB2_2:
	leaq	L_.str(%rip), %rdi
	leaq	L___func__.quaternion_multiply(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI3_0:
	.quad	0x3fefffd7c6d0df55              ## double 0.99998081999999988
LCPI3_1:
	.quad	0x3ef41c9790558000              ## double 1.9180000000118547E-5
LCPI3_2:
	.quad	0x3ff0000000000000              ## double 1
LCPI3_3:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI3_4:
	.quad	0xbfe6a0902de00d1b              ## double -0.70709999999999995
LCPI3_5:
	.quad	0x3f847ae147ae147b              ## double 0.01
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
	subq	$64, %rsp
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI3_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	callq	_libmin_atan2
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	xorps	%xmm0, %xmm0
	callq	_libmin_asin
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	movsd	LCPI3_2(%rip), %xmm1            ## xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	callq	_libmin_atan2
	movaps	%xmm0, %xmm2
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	leaq	L_.str.1(%rip), %rdi
	movsd	-8(%rbp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movb	$3, %al
	callq	_libmin_printf
	movsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI3_3(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	callq	_libmin_cos
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movsd	-8(%rbp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI3_3(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	callq	_libmin_cos
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	movsd	-8(%rbp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI3_3(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	callq	_libmin_cos
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	movsd	-16(%rbp), %xmm4                ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movapd	%xmm4, %xmm3
	movsd	-32(%rbp), %xmm10               ## 8-byte Reload
                                        ## xmm10 = mem[0],zero
	mulsd	%xmm10, %xmm3
	movsd	-8(%rbp), %xmm6                 ## 8-byte Reload
                                        ## xmm6 = mem[0],zero
	movapd	%xmm6, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm8                ## 8-byte Reload
                                        ## xmm8 = mem[0],zero
	movapd	%xmm8, %xmm2
	mulsd	%xmm1, %xmm2
	movapd	%xmm3, %xmm9
	movsd	-56(%rbp), %xmm7                ## 8-byte Reload
                                        ## xmm7 = mem[0],zero
	mulsd	%xmm7, %xmm9
	addsd	%xmm2, %xmm9
	movsd	%xmm9, -40(%rbp)                ## 8-byte Spill
	mulsd	%xmm0, %xmm4
	mulsd	%xmm10, %xmm6
	movapd	%xmm8, %xmm2
	movapd	%xmm8, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm8, %xmm3
	mulsd	%xmm4, %xmm2
	mulsd	%xmm7, %xmm4
	subsd	%xmm0, %xmm4
	mulsd	%xmm7, %xmm6
	addsd	%xmm2, %xmm6
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm3
	leaq	L_.str.2(%rip), %rdi
	movapd	%xmm9, %xmm0
	movsd	%xmm4, -16(%rbp)                ## 8-byte Spill
	movapd	%xmm4, %xmm1
	movsd	%xmm6, -8(%rbp)                 ## 8-byte Spill
	movapd	%xmm6, %xmm2
	movsd	%xmm3, -24(%rbp)                ## 8-byte Spill
	movb	$4, %al
	callq	_libmin_printf
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI3_4(%rip), %xmm0
	callq	_libmin_fabs
	movsd	LCPI3_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB3_2
## %bb.1:
	movl	$1, %edi
	callq	_libmin_fail
LBB3_2:
	movsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI3_4(%rip), %xmm0
	callq	_libmin_fabs
	movsd	LCPI3_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB3_4
## %bb.3:
	movl	$1, %edi
	callq	_libmin_fail
LBB3_4:
	movsd	-8(%rbp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI3_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB3_6
## %bb.5:
	movl	$1, %edi
	callq	_libmin_fail
LBB3_6:
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI3_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB3_8
## %bb.7:
	movl	$1, %edi
	callq	_libmin_fail
LBB3_8:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s: Invalid input."

L___func__.quat_from_euler:             ## @__func__.quat_from_euler
	.asciz	"quat_from_euler"

L___func__.euler_from_quat:             ## @__func__.euler_from_quat
	.asciz	"euler_from_quat"

L___func__.quaternion_multiply:         ## @__func__.quaternion_multiply
	.asciz	"quaternion_multiply"

L_.str.1:                               ## @.str.1
	.asciz	"Euler: %.4lf, %.4lf, %.4lf\n"

L_.str.2:                               ## @.str.2
	.asciz	"Quaternion: %.4lf %+.4lf %+.4lf %+.4lf\n"

L_.str.3:                               ## @.str.3
	.asciz	"All tests passed!\n"

.subsections_via_symbols
