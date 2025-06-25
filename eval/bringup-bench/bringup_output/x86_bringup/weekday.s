	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_dayOfWeek                      ## -- Begin function dayOfWeek
	.p2align	4, 0x90
_dayOfWeek:                             ## @dayOfWeek
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edi killed $edi def $rdi
	xorl	%eax, %eax
	cmpl	$3, %esi
	setl	%al
	subl	%eax, %edi
	leal	3(%rdi), %ecx
	testl	%edi, %edi
	cmovnsl	%edi, %ecx
	sarl	$2, %ecx
	movslq	%edi, %rax
	imulq	$-1374389535, %rax, %rdi        ## imm = 0xAE147AE1
	movq	%rdi, %r8
	shrq	$63, %r8
	shrq	$32, %rdi
	sarl	$5, %edi
	addl	%r8d, %edi
	imulq	$1374389535, %rax, %r8          ## imm = 0x51EB851F
	movq	%r8, %r9
	shrq	$63, %r9
	shrq	$32, %r8
	sarl	$7, %r8d
	addl	%r9d, %r8d
	movslq	%esi, %rsi
	leaq	l___const.dayOfWeek.t(%rip), %r9
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	%edi, %eax
	addl	%r8d, %eax
	addl	-4(%r9,%rsi,4), %eax
	movslq	%eax, %rcx
	imulq	$-1840700269, %rcx, %rax        ## imm = 0x92492493
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$2, %eax
	addl	%edx, %eax
	leal	(,%rax,8), %edx
	subl	%edx, %eax
	addl	%ecx, %eax
                                        ## kill: def $eax killed $eax killed $rax
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	L_.str.7(%rip), %rbx
	leaq	L_.str.2(%rip), %r14
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$20, %edx
	movl	$2024, %ecx                     ## imm = 0x7E8
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$4, %esi
	movl	$5, %edx
	movl	$1994, %ecx                     ## imm = 0x7CA
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %r8
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %edx
	movl	$1975, %ecx                     ## imm = 0x7B7
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.5(%rip), %r8
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	$7, %edx
	movl	$1964, %ecx                     ## imm = 0x7AC
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const.dayOfWeek.t
l___const.dayOfWeek.t:
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	2                               ## 0x2
	.long	5                               ## 0x5
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	5                               ## 0x5
	.long	1                               ## 0x1
	.long	4                               ## 0x4
	.long	6                               ## 0x6
	.long	2                               ## 0x2
	.long	4                               ## 0x4

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"Tuesday"

L_.str.3:                               ## @.str.3
	.asciz	"Wednesday"

L_.str.5:                               ## @.str.5
	.asciz	"Friday"

L_.str.7:                               ## @.str.7
	.asciz	"%02d/%02d/%04d was a `%s'\n"

.subsections_via_symbols
