	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_vector_sub                     ## -- Begin function vector_sub
	.p2align	4, 0x90
_vector_sub:                            ## @vector_sub
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movupd	(%rsi), %xmm0
	movupd	(%rdx), %xmm1
	subpd	%xmm1, %xmm0
	movupd	%xmm0, (%rdi)
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	subsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_vector_add                     ## -- Begin function vector_add
	.p2align	4, 0x90
_vector_add:                            ## @vector_add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movupd	(%rsi), %xmm0
	movupd	(%rdx), %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, (%rdi)
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	addsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dot_prod                       ## -- Begin function dot_prod
	.p2align	4, 0x90
_dot_prod:                              ## @dot_prod
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	(%rsi), %xmm0
	mulsd	8(%rsi), %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rdi), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	16(%rsi), %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function vector_prod
LCPI3_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_vector_prod
	.p2align	4, 0x90
_vector_prod:                           ## @vector_prod
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movsd	(%rsi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1                  ## xmm1 = mem[0],zero
	movapd	LCPI3_0(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	movsd	16(%rsi), %xmm3                 ## xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	xorpd	%xmm2, %xmm4
	xorpd	%xmm0, %xmm2
	movupd	(%rdx), %xmm5
	unpcklpd	%xmm4, %xmm3                    ## xmm3 = xmm3[0],xmm4[0]
	mulpd	%xmm5, %xmm3
	unpcklpd	%xmm1, %xmm2                    ## xmm2 = xmm2[0],xmm1[0]
	movddup	16(%rdx), %xmm4                 ## xmm4 = mem[0,0]
	mulpd	%xmm2, %xmm4
	addpd	%xmm3, %xmm4
	shufpd	$1, %xmm4, %xmm4                ## xmm4 = xmm4[1,0]
	mulsd	8(%rdx), %xmm0
	movupd	%xmm4, (%rdi)
	mulsd	%xmm1, %xmm5
	subsd	%xmm5, %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_vector                   ## -- Begin function print_vector
	.p2align	4, 0x90
_print_vector:                          ## @print_vector
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
	movq	%rsi, %rcx
	movsd	(%rdi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1                  ## xmm1 = mem[0],zero
	movsd	16(%rdi), %xmm2                 ## xmm2 = mem[0],zero
	leaq	_print_vector.vec_str(%rip), %rbx
	leaq	L_.str(%rip), %rdx
	movl	$99, %esi
	movq	%rbx, %rdi
	movb	$3, %al
	callq	_libmin_snprintf
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_vector_norm                    ## -- Begin function vector_norm
	.p2align	4, 0x90
_vector_norm:                           ## @vector_norm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rdi), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	jmp	_libmin_sqrt                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function unit_vec
LCPI6_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI6_1:
	.quad	0x3e112e0be826d695              ## double 1.0000000000000001E-9
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_unit_vec
	.p2align	4, 0x90
_unit_vec:                              ## @unit_vec
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	movsd	(%rsi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	callq	_libmin_sqrt
	movapd	%xmm0, -32(%rbp)                ## 16-byte Spill
	callq	_libmin_fabs
	movapd	-32(%rbp), %xmm2                ## 16-byte Reload
	ucomisd	LCPI6_0(%rip), %xmm2
	jne	LBB6_1
	jnp	LBB6_3
LBB6_1:
	movsd	LCPI6_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB6_3
## %bb.2:
	movupd	(%r14), %xmm0
	movddup	%xmm2, %xmm1                    ## xmm1 = xmm2[0,0]
	divpd	%xmm1, %xmm0
	movupd	%xmm0, (%rbx)
	movsd	16(%r14), %xmm0                 ## xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rbx)
LBB6_3:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function get_cross_matrix
LCPI7_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_get_cross_matrix
	.p2align	4, 0x90
_get_cross_matrix:                      ## @get_cross_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	$0, (%rdi)
	movsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	movaps	LCPI7_0(%rip), %xmm1            ## xmm1 = [-0.0E+0,-0.0E+0]
	movaps	%xmm0, %xmm2
	xorps	%xmm1, %xmm2
	movlps	%xmm2, 8(%rdi)
	movsd	%xmm0, 24(%rdi)
	movq	$0, 32(%rdi)
	movups	(%rsi), %xmm0
	movsd	8(%rsi), %xmm2                  ## xmm2 = mem[0],zero
	movsd	%xmm2, 16(%rdi)
	xorps	%xmm0, %xmm1
	movups	%xmm1, 40(%rdi)
	movlps	%xmm0, 56(%rdi)
	movq	$0, 64(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function get_angle
LCPI8_0:
	.quad	0x3e112e0be826d695              ## double 1.0000000000000001E-9
LCPI8_1:
	.quad	0x7ff8000000000000              ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_get_angle
	.p2align	4, 0x90
_get_angle:                             ## @get_angle
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%rdi), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rdi), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	callq	_libmin_sqrt
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	movsd	(%rbx), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rbx), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	callq	_libmin_sqrt
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI8_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB8_2
## %bb.1:
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI8_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB8_3
LBB8_2:
	movsd	LCPI8_1(%rip), %xmm0            ## xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB8_3:
	movsd	(%r14), %xmm0                   ## xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1                  ## xmm1 = mem[0],zero
	mulsd	(%rbx), %xmm0
	mulsd	8(%rbx), %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%r14), %xmm0                 ## xmm0 = mem[0],zero
	mulsd	16(%rbx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1                ## 8-byte Folded Reload
	divsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_libmin_acos                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI9_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI9_1:
	.quad	0x4000000000000000              ## double 2
LCPI9_2:
	.quad	0x4008000000000000              ## double 3
LCPI9_3:
	.quad	0x402c000000000000              ## double 14
LCPI9_4:
	.quad	0xc00def9db22d0e56              ## double -3.742
LCPI9_5:
	.quad	0x3f847ae147ae147b              ## double 0.01
LCPI9_6:
	.quad	0xbffbb645a1cac083              ## double -1.732
LCPI9_7:
	.quad	0x4018000000000000              ## double 6
LCPI9_8:
	.quad	0xbff0000000000000              ## double -1
LCPI9_9:
	.quad	0x7ff8000000000000              ## double NaN
LCPI9_10:
	.quad	0x3e112e0be826d695              ## double 1.0000000000000001E-9
LCPI9_11:
	.quad	0xbfd8ce63a5c1c609              ## double -0.38759700000000002
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
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	_print_vector.vec_str(%rip), %rbx
	leaq	L_.str(%rip), %r14
	leaq	L_.str.2(%rip), %rcx
	movsd	LCPI9_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	LCPI9_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI9_2(%rip), %xmm2            ## xmm2 = mem[0],zero
	movl	$99, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movb	$3, %al
	callq	_libmin_snprintf
	leaq	L_.str.1(%rip), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %rcx
	movl	$99, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movsd	LCPI9_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	movb	$3, %al
	callq	_libmin_snprintf
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsd	LCPI9_3(%rip), %xmm0            ## xmm0 = mem[0],zero
	callq	_libmin_sqrt
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	leaq	L_.str.4(%rip), %rdi
	movb	$1, %al
	callq	_libmin_printf
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI9_4(%rip), %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_2
## %bb.1:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_2:
	movsd	LCPI9_2(%rip), %xmm0            ## xmm0 = mem[0],zero
	callq	_libmin_sqrt
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	leaq	L_.str.5(%rip), %rdi
	movb	$1, %al
	callq	_libmin_printf
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI9_6(%rip), %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_4
## %bb.3:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_4:
	leaq	L_.str.6(%rip), %rdi
	movsd	LCPI9_7(%rip), %xmm0            ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_libmin_printf
	xorpd	%xmm0, %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_6
## %bb.5:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_6:
	leaq	L_.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	_print_vector.vec_str(%rip), %rbx
	leaq	L_.str(%rip), %rdx
	leaq	L_.str.8(%rip), %rcx
	movsd	LCPI9_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI9_8(%rip), %xmm0            ## xmm0 = mem[0],zero
	movl	$99, %esi
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm2
	movb	$3, %al
	callq	_libmin_snprintf
	leaq	L_.str.1(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorpd	%xmm0, %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_8
## %bb.7:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_8:
	xorpd	%xmm0, %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_10
## %bb.9:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_10:
	xorpd	%xmm0, %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_12
## %bb.11:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_12:
	movsd	LCPI9_3(%rip), %xmm0            ## xmm0 = mem[0],zero
	callq	_libmin_sqrt
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	movsd	LCPI9_2(%rip), %xmm0            ## xmm0 = mem[0],zero
	callq	_libmin_sqrt
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI9_9(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI9_10(%rip), %xmm2           ## xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	ja	LBB9_15
## %bb.13:
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_fabs
	movsd	LCPI9_9(%rip), %xmm1            ## xmm1 = mem[0],zero
	movsd	LCPI9_10(%rip), %xmm2           ## xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	ja	LBB9_15
## %bb.14:
	movsd	-32(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1                ## 8-byte Folded Reload
	movsd	LCPI9_7(%rip), %xmm0            ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	_libmin_acos
	movapd	%xmm0, %xmm1
LBB9_15:
	movsd	%xmm1, -32(%rbp)                ## 8-byte Spill
	leaq	L_.str.9(%rip), %rdi
	movapd	%xmm1, %xmm0
	movb	$1, %al
	callq	_libmin_printf
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI9_11(%rip), %xmm0
	callq	_libmin_fabs
	movsd	LCPI9_5(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB9_17
## %bb.16:
	movl	$1, %edi
	callq	_libmin_fail
LBB9_17:
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_print_vector.vec_str,100,4 ## @print_vector.vec_str
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"vec(%s) = (%.0lf)i + (%.0lf)j + (%.0lf)k\n"

L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"a"

L_.str.3:                               ## @.str.3
	.asciz	"b"

L_.str.4:                               ## @.str.4
	.asciz	"|a| = %.4lf\n"

L_.str.5:                               ## @.str.5
	.asciz	"|b| = %.4lf\n"

L_.str.6:                               ## @.str.6
	.asciz	"Dot product: %lf\n"

L_.str.7:                               ## @.str.7
	.asciz	"Vector product "

L_.str.8:                               ## @.str.8
	.asciz	"c"

L_.str.9:                               ## @.str.9
	.asciz	"The angle is %lf\n"

L_.str.10:                              ## @.str.10
	.asciz	"All tests passed!\n"

.subsections_via_symbols
