	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_floodfill                      ## -- Begin function floodfill
	.p2align	4, 0x90
_floodfill:                             ## @floodfill
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
	movl	%edx, %r13d
	movl	%esi, %r14d
	movslq	%esi, %rax
	movslq	%edx, %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdi,%rax,2), %rax
	movb	(%rdx,%rax), %r15b
	movb	%cl, (%rdx,%rax)
	xorl	%r12d, %r12d
	leaq	_row(%rip), %rbx
	leaq	_col(%rip), %r9
	movsbl	%cl, %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movb	%r15b, -41(%rbp)                ## 1-byte Spill
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	addq	$4, %r12
	cmpq	$32, %r12
	je	LBB0_6
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r12,%rbx), %eax
	addl	%r14d, %eax
	cmpl	$9, %eax
	ja	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	(%r12,%r9), %ecx
	addl	%r13d, %ecx
	cmpl	$9, %ecx
	ja	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	%eax, %edx
	movl	%ecx, %esi
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rdi,%rdx,2), %rdx
	cmpb	%r15b, (%rsi,%rdx)
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	%al, %esi
	movsbl	%cl, %edx
	movl	-48(%rbp), %ecx                 ## 4-byte Reload
	movq	%r9, %r15
	callq	_floodfill
	movq	%r15, %r9
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movzbl	-41(%rbp), %r15d                ## 1-byte Folded Reload
	jmp	LBB0_5
LBB0_6:
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
	.globl	_printMatrix                    ## -- Begin function printMatrix
	.p2align	4, 0x90
_printMatrix:                           ## @printMatrix
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movl	$9, %ebx
	leaq	L_.str(%rip), %r14
	leaq	L_.str.1(%rip), %r15
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsbl	-9(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-8(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-7(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-6(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-5(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-4(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-3(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-2(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	-1(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movsbl	(%r12,%rbx), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	addq	$10, %rbx
	cmpq	$109, %rbx
	jne	LBB1_1
## %bb.2:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	leaq	L_.str.2(%rip), %rdi
	movl	$67, %esi
	movl	$3, %edx
	movl	$9, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	_mat(%rip), %rbx
	movq	%rbx, %rdi
	callq	_printMatrix
	movq	%rbx, %rdi
	movl	$3, %esi
	movl	$9, %edx
	movl	$67, %ecx
	callq	_floodfill
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	callq	_printMatrix
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_mat                            ## @mat
	.p2align	4
_mat:
	.ascii	"YYYGGGGGGG"
	.ascii	"YYYYYYGXXX"
	.ascii	"GXGGGGGXXX"
	.ascii	"WXXWWGGGGX"
	.ascii	"WRRRRRGXXX"
	.ascii	"WWWRRGGXXX"
	.ascii	"WBWRRRRRRX"
	.ascii	"WBBBBRRXXX"
	.ascii	"WBBXBBBBXX"
	.ascii	"WBBXXXXXXX"

	.globl	_row                            ## @row
	.p2align	4
_row:
	.long	4294967295                      ## 0xffffffff
	.long	4294967295                      ## 0xffffffff
	.long	4294967295                      ## 0xffffffff
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1

	.globl	_col                            ## @col
	.p2align	4
_col:
	.long	4294967295                      ## 0xffffffff
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	4294967295                      ## 0xffffffff
	.long	1                               ## 0x1
	.long	4294967295                      ## 0xffffffff
	.long	0                               ## 0x0
	.long	1                               ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"  %c"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"\nBEFORE flooding `%c' @ (%d,%d):\n"

L_.str.3:                               ## @.str.3
	.asciz	"\nAFTER:\n"

.subsections_via_symbols
