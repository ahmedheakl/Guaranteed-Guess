	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sgenrand                       ## -- Begin function sgenrand
	.p2align	4, 0x90
_sgenrand:                              ## @sgenrand
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	leaq	_mt(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	imull	$69069, %edi, %edx              ## imm = 0x10DCD
	andl	$-65536, %edi                   ## imm = 0xFFFF0000
	incl	%edx
	imull	$69069, %edx, %esi              ## imm = 0x10DCD
	shrl	$16, %edx
	orl	%edi, %edx
	movl	%edx, -4(%rcx,%rax,4)
	incl	%esi
	imull	$69069, %esi, %edx              ## imm = 0x10DCD
	andl	$-65536, %esi                   ## imm = 0xFFFF0000
	incl	%edx
	imull	$69069, %edx, %edi              ## imm = 0x10DCD
	shrl	$16, %edx
	orl	%esi, %edx
	movl	%edx, (%rcx,%rax,4)
	incl	%edi
	addq	$2, %rax
	cmpq	$625, %rax                      ## imm = 0x271
	jne	LBB0_1
## %bb.2:
	movl	$624, _mti(%rip)                ## imm = 0x270
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_lsgenrand                      ## -- Begin function lsgenrand
	.p2align	4, 0x90
_lsgenrand:                             ## @lsgenrand
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rsi
	leaq	_mt(%rip), %rdi
	movl	$2496, %edx                     ## imm = 0x9C0
	callq	_memcpy
	movl	$624, _mti(%rip)                ## imm = 0x270
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_genrand                        ## -- Begin function genrand
	.p2align	4, 0x90
_genrand:                               ## @genrand
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	_mti(%rip), %rax
	cmpq	$623, %rax                      ## imm = 0x26F
	jle	LBB2_1
## %bb.2:
	cmpl	$625, %eax                      ## imm = 0x271
	jne	LBB2_5
## %bb.3:
	movl	$4357, %edx                     ## imm = 0x1105
	movl	$1, %eax
	leaq	_mt(%rip), %rcx
	.p2align	4, 0x90
LBB2_4:                                 ## =>This Inner Loop Header: Depth=1
	imull	$69069, %edx, %esi              ## imm = 0x10DCD
	andl	$-65536, %edx                   ## imm = 0xFFFF0000
	incl	%esi
	imull	$69069, %esi, %edi              ## imm = 0x10DCD
	shrl	$16, %esi
	orl	%edx, %esi
	movl	%esi, -4(%rcx,%rax,4)
	incl	%edi
	imull	$69069, %edi, %esi              ## imm = 0x10DCD
	andl	$-65536, %edi                   ## imm = 0xFFFF0000
	incl	%esi
	imull	$69069, %esi, %edx              ## imm = 0x10DCD
	shrl	$16, %esi
	orl	%edi, %esi
	movl	%esi, (%rcx,%rax,4)
	incl	%edx
	addq	$2, %rax
	cmpq	$625, %rax                      ## imm = 0x271
	jne	LBB2_4
LBB2_5:
	movl	_mt(%rip), %esi
	xorl	%edx, %edx
	leaq	_mt(%rip), %rcx
	leaq	_genrand.mag01(%rip), %r8
	.p2align	4, 0x90
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	andl	$-2147483648, %esi              ## imm = 0x80000000
	movl	4(%rcx,%rdx,4), %edi
	movl	%edi, %eax
	andl	$2147483646, %eax               ## imm = 0x7FFFFFFE
	orl	%esi, %eax
	shrl	%eax
	movl	%edi, %esi
                                        ## kill: def $edi killed $edi killed $rdi def $rdi
	andl	$1, %edi
	movl	(%r8,%rdi,4), %edi
	xorl	1588(%rcx,%rdx,4), %edi
	xorl	%eax, %edi
	movl	%edi, (%rcx,%rdx,4)
	leaq	1(%rdx), %rax
	movq	%rax, %rdx
	cmpq	$227, %rax
	jne	LBB2_6
## %bb.7:
	movl	_mt+908(%rip), %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	andl	$-2147483648, %esi              ## imm = 0x80000000
	movl	912(%rcx,%rdx,4), %eax
	movl	%eax, %edi
	andl	$2147483646, %edi               ## imm = 0x7FFFFFFE
	orl	%esi, %edi
	shrl	%edi
	movl	%eax, %esi
                                        ## kill: def $eax killed $eax killed $rax def $rax
	andl	$1, %eax
	movl	(%r8,%rax,4), %eax
	xorl	(%rcx,%rdx,4), %eax
	xorl	%edi, %eax
	movl	%eax, 908(%rcx,%rdx,4)
	incq	%rdx
	cmpq	$396, %rdx                      ## imm = 0x18C
	jne	LBB2_8
## %bb.9:
	movl	$-2147483648, %eax              ## imm = 0x80000000
	andl	_mt+2492(%rip), %eax
	movl	_mt(%rip), %ecx
	movl	%ecx, %edx
	andl	$2147483646, %edx               ## imm = 0x7FFFFFFE
	orl	%eax, %edx
	movl	%ecx, %eax
	andl	$1, %eax
	movl	(%r8,%rax,4), %eax
	xorl	_mt+1584(%rip), %eax
	shrl	%edx
	xorl	%edx, %eax
	movl	%eax, _mt+2492(%rip)
	movl	$1, %eax
	jmp	LBB2_10
LBB2_1:
	leaq	_mt(%rip), %rcx
	movl	(%rcx,%rax,4), %ecx
	incl	%eax
LBB2_10:
	movl	%eax, _mti(%rip)
	movl	%ecx, %eax
	shrl	$11, %eax
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	andl	$-1658038656, %ecx              ## imm = 0x9D2C5680
	xorl	%eax, %ecx
	movl	%ecx, %edx
	shll	$15, %edx
	andl	$-272236544, %edx               ## imm = 0xEFC60000
	xorl	%ecx, %edx
	movl	%edx, %eax
	shrl	$18, %eax
	xorl	%edx, %eax
	popq	%rbp
	retq
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$4357, %edx                     ## imm = 0x1105
	movl	$1, %eax
	leaq	_mt(%rip), %rcx
	.p2align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	imull	$69069, %edx, %esi              ## imm = 0x10DCD
	andl	$-65536, %edx                   ## imm = 0xFFFF0000
	incl	%esi
	imull	$69069, %esi, %edi              ## imm = 0x10DCD
	shrl	$16, %esi
	orl	%edx, %esi
	movl	%esi, -4(%rcx,%rax,4)
	incl	%edi
	imull	$69069, %edi, %esi              ## imm = 0x10DCD
	andl	$-65536, %edi                   ## imm = 0xFFFF0000
	incl	%esi
	imull	$69069, %esi, %edx              ## imm = 0x10DCD
	shrl	$16, %esi
	orl	%edi, %esi
	movl	%esi, (%rcx,%rax,4)
	incl	%edx
	addq	$2, %rax
	cmpq	$625, %rax                      ## imm = 0x271
	jne	LBB3_1
## %bb.2:
	movl	$624, _mti(%rip)                ## imm = 0x270
	leaq	L_.str(%rip), %r15
	leaq	L_.str.1(%rip), %r14
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	LBB3_3
	.p2align	4, 0x90
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=1
	decl	%ebx
	incl	%r12d
	cmpl	$-10000, %ebx                   ## imm = 0xD8F0
	je	LBB3_7
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	movzwl	%r12w, %eax
	shrl	$2, %eax
	imull	$5243, %eax, %eax               ## imm = 0x147B
	shrl	$17, %eax
	imull	$-100, %eax, %eax
	cmpw	%bx, %ax
	jne	LBB3_6
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=1
	callq	_genrand
	movq	%r15, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r13d
	imull	$-858993459, %r13d, %eax        ## imm = 0xCCCCCCCD
	addl	$429496729, %eax                ## imm = 0x19999999
	cmpl	$858993458, %eax                ## imm = 0x33333332
	ja	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB3_6
LBB3_7:
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
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
.zerofill __DATA,__bss,_mt,2496,4       ## @mt
	.section	__DATA,__data
	.p2align	2                               ## @mti
_mti:
	.long	625                             ## 0x271

	.section	__TEXT,__const
	.p2align	2                               ## @genrand.mag01
_genrand.mag01:
	.long	0                               ## 0x0
	.long	2567483615                      ## 0x9908b0df

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%10u "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

.subsections_via_symbols
