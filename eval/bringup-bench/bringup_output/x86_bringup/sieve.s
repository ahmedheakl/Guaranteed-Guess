	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	xorl	%r14d, %r14d
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
	leaq	_flags(%rip), %rbx
	movl	$1024, %edx                     ## imm = 0x400
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	_memset
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	incq	%r14
	cmpq	$1024, %r14                     ## imm = 0x400
	je	LBB0_5
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	incq	%rdx
	leaq	3(,%r14,2), %rcx
	leaq	(%r14,%r14,2), %rax
	addq	$3, %rax
	cmpq	$1023, %rax                     ## imm = 0x3FF
	ja	LBB0_4
	.p2align	4, 0x90
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	$0, (%rax,%rbx)
	addq	%rcx, %rax
	cmpq	$1024, %rax                     ## imm = 0x400
	jb	LBB0_3
	jmp	LBB0_4
LBB0_5:
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
