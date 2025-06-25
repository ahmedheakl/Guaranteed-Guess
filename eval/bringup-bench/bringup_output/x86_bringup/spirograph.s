	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function spirograph
LCPI0_0:
	.quad	0x400921fb54442d18              ## double 3.1415926535897931
LCPI0_3:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI0_1:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_2:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
LCPI0_4:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_spirograph
	.p2align	4, 0x90
_spirograph:                            ## @spirograph
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm1, -64(%rbp)                ## 8-byte Spill
	testq	%rdx, %rdx
	je	LBB0_3
## %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	addsd	%xmm2, %xmm2
	mulsd	LCPI0_0(%rip), %xmm2
	movq	%rdx, %xmm3
	punpckldq	LCPI0_1(%rip), %xmm3    ## xmm3 = xmm3[0],mem[0],xmm3[1],mem[1]
	subpd	LCPI0_2(%rip), %xmm3
	movapd	%xmm3, %xmm1
	unpckhpd	%xmm3, %xmm1                    ## xmm1 = xmm1[1],xmm3[1]
	addsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -72(%rbp)                ## 8-byte Spill
	movsd	LCPI0_3(%rip), %xmm2            ## xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)                ## 8-byte Spill
	mulsd	%xmm1, %xmm0
	movapd	LCPI0_4(%rip), %xmm1            ## xmm1 = [-0.0E+0,-0.0E+0]
	movapd	%xmm0, -112(%rbp)               ## 16-byte Spill
	xorpd	%xmm0, %xmm1
	movapd	%xmm1, -96(%rbp)                ## 16-byte Spill
	xorpd	%xmm0, %xmm0
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_cos
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
	divsd	-64(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -80(%rbp)                ## 8-byte Spill
	callq	_libmin_cos
	mulsd	-112(%rbp), %xmm0               ## 16-byte Folded Reload
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1                ## 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r15,%r12,8)
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movsd	-80(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	mulsd	-96(%rbp), %xmm0                ## 16-byte Folded Reload
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1                ## 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm1, (%r14,%r12,8)
	incq	%r12
	addsd	-72(%rbp), %xmm0                ## 8-byte Folded Reload
	cmpq	%r12, %rbx
	jne	LBB0_2
LBB0_3:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function test
LCPI1_0:
	.quad	0x3fd0000000000000              ## double 0.25
LCPI1_1:
	.quad	0x3fe8000000000000              ## double 0.75
LCPI1_2:
	.quad	0x3fcccccccccccccc              ## double 0.22499999999999998
LCPI1_3:
	.quad	0xbfcccccccccccccc              ## double -0.22499999999999998
LCPI1_4:
	.quad	0x3fc015bf9217271a              ## double 0.12566370614359174
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test
	.p2align	4, 0x90
_test:                                  ## @test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$4000, %edi                     ## imm = 0xFA0
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$4000, %edi                     ## imm = 0xFA0
	callq	_libmin_malloc
	movq	%rax, %r14
	xorpd	%xmm0, %xmm0
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_cos
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movsd	-40(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	LCPI1_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	LCPI1_1(%rip), %xmm1
	movsd	%xmm1, -56(%rbp)                ## 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	_libmin_cos
	mulsd	LCPI1_2(%rip), %xmm0
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	LCPI1_0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%r15,8)
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_libmin_sin
	mulsd	LCPI1_3(%rip), %xmm0
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	LCPI1_0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm1, (%r14,%r15,8)
	incq	%r15
	addsd	LCPI1_4(%rip), %xmm0
	cmpq	$500, %r15                      ## imm = 0x1F4
	jne	LBB1_1
## %bb.2:
	xorl	%r12d, %r12d
	leaq	L_.str(%rip), %r15
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movsd	(%rbx,%r12,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	(%r14,%r12,8), %xmm1            ## xmm1 = mem[0],zero
	movq	%r15, %rdi
	movb	$2, %al
	callq	_libmin_printf
	incq	%r12
	cmpq	$500, %r12                      ## imm = 0x1F4
	jne	LBB1_3
## %bb.4:
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r14, %rdi
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_free                    ## TAILCALL
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
	callq	_test
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%.5lf, %.5lf\n"

.subsections_via_symbols
