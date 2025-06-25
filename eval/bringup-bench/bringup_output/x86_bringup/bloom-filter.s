	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_bad_search                     ## -- Begin function bad_search
	.p2align	4, 0x90
_bad_search:                            ## @bad_search
	.cfi_startproc
## %bb.0:
	testq	%rdx, %rdx
	je	LBB0_1
## %bb.5:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rdi,%rax,4)
	je	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_6 Depth=1
	incq	%rax
	cmpq	%rax, %rdx
	jne	LBB0_6
## %bb.4:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB0_1:
	xorl	%eax, %eax
	retq
LBB0_7:
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function main
LCPI1_0:
	.long	0x3d480000                      ## float 0.048828125
LCPI1_1:
	.long	0x42a00000                      ## float 80
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$8192, %edi                     ## imm = 0x2000
	callq	_libmin_malloc
	movq	%rax, %rbx
	movl	$8192, %edi                     ## imm = 0x2000
	callq	_libmin_malloc
	movq	%rax, %r15
	movl	$8192, %edi                     ## imm = 0x2000
	callq	_create_bfilter
	movq	%rax, %r14
	movq	(%rax), %rax
	shrq	$8, %rax
	movabsq	$18014398509481983, %rsi        ## imm = 0x3FFFFFFFFFFFFF
	andq	%rax, %rsi
	leaq	L_.str(%rip), %rdi
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$42, %edi
	callq	_libmin_srand
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	callq	_libmin_rand
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	%eax, (%r15,%r13)
	addq	$4, %r13
	cmpq	$8192, %r13                     ## imm = 0x2000
	je	LBB1_5
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	leaq	(%rbx,%r13), %r12
	movl	%eax, (%rbx,%r13)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_bfilter_add
	callq	_libmin_rand
	testb	$1, %al
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	(%r12), %eax
	jmp	LBB1_4
LBB1_5:
	xorl	%r12d, %r12d
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	$0, -52(%rbp)                   ## 4-byte Folded Spill
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_17:                                ##   in Loop: Header=BB1_6 Depth=1
	incl	-48(%rbp)                       ## 4-byte Folded Spill
LBB1_18:                                ##   in Loop: Header=BB1_6 Depth=1
	incq	%r12
	cmpq	$2048, %r12                     ## imm = 0x800
	je	LBB1_19
LBB1_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_11 Depth 2
	leaq	(%r15,%r12,4), %rsi
	movq	%r14, %rdi
	callq	_bfilter_check
	movl	(%r15,%r12,4), %ecx
	movl	$3, %edx
	.p2align	4, 0x90
LBB1_11:                                ##   Parent Loop BB1_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, -12(%rbx,%rdx,4)
	je	LBB1_12
## %bb.7:                               ##   in Loop: Header=BB1_11 Depth=2
	cmpl	%ecx, -8(%rbx,%rdx,4)
	je	LBB1_12
## %bb.8:                               ##   in Loop: Header=BB1_11 Depth=2
	cmpl	%ecx, -4(%rbx,%rdx,4)
	je	LBB1_12
## %bb.9:                               ##   in Loop: Header=BB1_11 Depth=2
	cmpl	%ecx, (%rbx,%rdx,4)
	je	LBB1_12
## %bb.10:                              ##   in Loop: Header=BB1_11 Depth=2
	addq	$4, %rdx
	cmpq	$2051, %rdx                     ## imm = 0x803
	jne	LBB1_11
## %bb.14:                              ##   in Loop: Header=BB1_6 Depth=1
	testl	%eax, %eax
	je	LBB1_15
## %bb.16:                              ##   in Loop: Header=BB1_6 Depth=1
	incl	-44(%rbp)                       ## 4-byte Folded Spill
	jmp	LBB1_18
	.p2align	4, 0x90
LBB1_12:                                ##   in Loop: Header=BB1_6 Depth=1
	testl	%eax, %eax
	je	LBB1_17
## %bb.13:                              ##   in Loop: Header=BB1_6 Depth=1
	incl	%r13d
	jmp	LBB1_18
LBB1_15:                                ##   in Loop: Header=BB1_6 Depth=1
	incl	-52(%rbp)                       ## 4-byte Folded Spill
	jmp	LBB1_18
LBB1_19:
	leaq	L_.str.1(%rip), %rdi
	movl	%r13d, %esi
	movl	-52(%rbp), %r12d                ## 4-byte Reload
	movl	%r12d, %edx
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	movl	-48(%rbp), %r8d                 ## 4-byte Reload
	xorl	%eax, %eax
	callq	_libmin_printf
	addl	%r12d, %r13d
	cvtsi2ss	%r13, %xmm0
	mulss	LCPI1_0(%rip), %xmm0
	movss	%xmm0, -44(%rbp)                ## 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_libmin_printf
	movss	LCPI1_1(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	ucomiss	-44(%rbp), %xmm0                ## 4-byte Folded Reload
	jbe	LBB1_21
## %bb.20:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_21:
	cmpl	$0, -48(%rbp)                   ## 4-byte Folded Reload
	leaq	L_.str.5(%rip), %rax
	leaq	L_.str.4(%rip), %rdi
	cmoveq	%rax, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	callq	_libmin_free
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	%r14, %rdi
	callq	_destroy_bfilter
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$24, %rsp
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
	.asciz	"Using %lu kilobytes for filter.\n\n"

L_.str.1:                               ## @.str.1
	.asciz	"True positives: %i\nTrue negatives: %i\nFalse positives: %i\nFalse negatives: %i\n"

L_.str.2:                               ## @.str.2
	.asciz	"\n%3.2f%% success rate\n\n"

L_.str.3:                               ## @.str.3
	.asciz	"WARNING: Success rate less than 80%%.\n\n"

L_.str.4:                               ## @.str.4
	.asciz	"**ERROR:** Test FAILED.\n"

L_.str.5:                               ## @.str.5
	.asciz	"Test PASSED.\n"

.subsections_via_symbols
