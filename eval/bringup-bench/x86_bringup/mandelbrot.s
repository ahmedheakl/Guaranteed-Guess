	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_color                          ## -- Begin function color
	.p2align	4, 0x90
_color:                                 ## @color
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	%edi, %esi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function main
LCPI1_0:
	.long	0x42400000                      ## float 48
LCPI1_3:
	.long	0x429c0000                      ## float 78
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_1:
	.quad	0xbfe0000000000000              ## double -0.5
LCPI1_2:
	.quad	0x4008000000000000              ## double 3
LCPI1_4:
	.quad	0xbfe6666666666666              ## double -0.69999999999999996
LCPI1_5:
	.quad	0x4059000000000000              ## double 100
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	movl	$78, %esi
	movl	$48, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %r15d
	leaq	L_.str.3(%rip), %r12
	leaq	L_.str.4(%rip), %r13
	leaq	L_.str.5(%rip), %r14
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r15d
	cmpl	$49, %r15d
	je	LBB1_8
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
                                        ##       Child Loop BB1_3 Depth 3
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r15d, %xmm0
	divss	LCPI1_0(%rip), %xmm0
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	addsd	LCPI1_1(%rip), %xmm6
	mulsd	LCPI1_2(%rip), %xmm6
	movl	$1, %ebx
	movsd	%xmm6, -48(%rbp)                ## 8-byte Spill
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_2 Depth=2
	cmpl	$99999, %ecx                    ## imm = 0x1869F
	movq	%r13, %rdi
	cmovbq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsd	-48(%rbp), %xmm6                ## 8-byte Reload
                                        ## xmm6 = mem[0],zero
	incl	%ebx
	cmpl	$79, %ebx
	je	LBB1_7
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_3 Depth 3
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	divss	LCPI1_3(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	LCPI1_1(%rip), %xmm0
	mulsd	LCPI1_2(%rip), %xmm0
	addsd	LCPI1_4(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	movl	$2, %eax
	xorpd	%xmm2, %xmm2
	movsd	LCPI1_5(%rip), %xmm5            ## xmm5 = mem[0],zero
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=3
	incl	%eax
	cmpl	$100, %ecx
	jae	LBB1_6
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ##     Parent Loop BB1_2 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm4
	mulsd	%xmm2, %xmm4
	mulsd	%xmm1, %xmm1
	subsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm6, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm1, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	ucomisd	%xmm5, %xmm4
	movl	$1000000, %ecx                  ## imm = 0xF4240
	ja	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=3
	movl	%eax, %ecx
	jmp	LBB1_5
LBB1_8:
	callq	_libmin_success
	xorl	%eax, %eax
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"<%d,%d,%d>\n"

L_.str.1:                               ## @.str.1
	.asciz	"** Mandelbrot ASCII image\n"

L_.str.2:                               ## @.str.2
	.asciz	"** xres: %d, yres: %d\n"

L_.str.3:                               ## @.str.3
	.asciz	" "

L_.str.4:                               ## @.str.4
	.asciz	"0"

L_.str.5:                               ## @.str.5
	.asciz	"\n"

.subsections_via_symbols
