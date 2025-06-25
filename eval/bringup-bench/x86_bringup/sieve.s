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
	leaq	L_.str(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	_flags(%rip), %r14
	movl	$1024, %edx                     ## imm = 0x400
	movq	%r14, %rdi
	movl	$1, %esi
	callq	_memset
	movb	$1, %al
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	testb	%al, %al
	je	LBB0_4
	.p2align	4, 0x90
LBB0_2:
	incq	%rdx
	leaq	(%rbx,%rbx), %rcx
	addq	$3, %rcx
	leaq	(%rbx,%rbx,2), %rax
	addq	$3, %rax
	cmpq	$1023, %rax                     ## imm = 0x3FF
	ja	LBB0_4
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movb	$0, (%rax,%r14)
	addq	%rcx, %rax
	cmpq	$1024, %rax                     ## imm = 0x400
	jb	LBB0_3
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	incq	%rbx
	cmpq	$1024, %rbx                     ## imm = 0x400
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movzbl	(%rbx,%r14), %eax
	testb	%al, %al
	jne	LBB0_2
	jmp	LBB0_4
LBB0_6:
	leaq	L_.str.4(%rip), %rdi
	movl	$1024, %esi                     ## imm = 0x400
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n   Sieve of Eratosthenes (Scaled to 10 Iterations)\n"

L_.str.1:                               ## @.str.1
	.asciz	"   Version 1.2b, 26 Sep 1992\n\n"

L_.str.2:                               ## @.str.2
	.asciz	"   Array Size   Number   Last Prime\n"

L_.str.3:                               ## @.str.3
	.asciz	"    (Bytes)   of Primes\n"

.zerofill __DATA,__bss,_flags,8192,4    ## @flags
L_.str.4:                               ## @.str.4
	.asciz	"  %9ld   %8ld     %8ld\n"

.subsections_via_symbols
