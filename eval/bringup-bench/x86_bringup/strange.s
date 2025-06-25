	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	L_.str(%rip), %rbx
	movq	%rbx, %rdi
	movl	$9, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$8, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$6, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %r14
	leaq	L_.str.2(%rip), %rbx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$8, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	jmp	LBB0_1
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n| %d |"

L_.str.2:                               ## @.str.2
	.asciz	"\n %d"

.subsections_via_symbols
