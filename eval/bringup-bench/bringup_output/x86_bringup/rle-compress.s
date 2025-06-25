	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_run_length_encode              ## -- Begin function run_length_encode
	.p2align	4, 0x90
_run_length_encode:                     ## @run_length_encode
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
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	_libmin_strlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_libmin_strlen
	leaq	1(,%rax,2), %rdi
	callq	_libmin_malloc
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rbx, -96(%rbp)                 ## 8-byte Spill
	testl	%ebx, %ebx
	jle	LBB0_6
## %bb.1:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	%ebx, %r15d
	movzbl	(%r14,%r15), %r13d
	decq	%r15
	movl	$-1, %ecx
	.p2align	4, 0x90
LBB0_3:                                 ##   Parent Loop BB0_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%r15, %rax
	incl	%ecx
	incq	%r15
	cmpb	1(%r14,%rax), %r13b
	je	LBB0_3
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	addl	%ecx, %ebx
	movl	$20, %esi
	leaq	-80(%rbp), %rdi
	leaq	L_.str(%rip), %rdx
	xorl	%eax, %eax
	callq	_libmin_snprintf
	movslq	%r12d, %r12
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	addq	%r12, %rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	leaq	-80(%rbp), %rdi
	callq	_libmin_strlen
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdx
	callq	_libmin_strncpy
	leaq	-80(%rbp), %rdi
	callq	_libmin_strlen
	leal	(%r12,%rax), %ecx
	movslq	%ecx, %rcx
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movb	%r13b, (%rdx,%rcx)
	addl	%eax, %r12d
	incl	%r12d
	cmpl	-96(%rbp), %ebx                 ## 4-byte Folded Reload
	movq	%r15, %rbx
	jl	LBB0_2
## %bb.5:
	movslq	%r12d, %rax
LBB0_6:
	movq	-88(%rbp), %rbx                 ## 8-byte Reload
	movb	$0, (%rbx,%rax)
	movq	%rbx, %rdi
	callq	_libmin_strlen
	leaq	1(%rax), %rdi
	callq	_libmin_malloc
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_libmin_strcpy
	movq	%rbx, %rdi
	callq	_libmin_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_8
## %bb.7:
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_8:
	callq	___stack_chk_fail
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
	callq	_run_length_encode
	movq	%rax, %rbx
	leaq	L_.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB1_2
## %bb.1:
	movl	$1, %edi
	callq	_libmin_fail
LBB1_2:
	leaq	L_.str.4(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	callq	_libmin_free
	leaq	L_.str.5(%rip), %rdi
	callq	_run_length_encode
	movq	%rax, %rbx
	leaq	L_.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB1_4
## %bb.3:
	movl	$1, %edi
	callq	_libmin_fail
LBB1_4:
	leaq	L_.str.4(%rip), %rdi
	leaq	L_.str.5(%rip), %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	callq	_libmin_free
	leaq	L_.str.7(%rip), %rdi
	callq	_run_length_encode
	movq	%rax, %rbx
	leaq	L_.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	_libmin_strcmp
	testl	%eax, %eax
	je	LBB1_6
## %bb.5:
	movl	$1, %edi
	callq	_libmin_fail
LBB1_6:
	leaq	L_.str.4(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	callq	_libmin_free
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"All tests have passed!\n"

L_.str.2:                               ## @.str.2
	.asciz	"aaaaaaabbbaaccccdefaadr"

L_.str.3:                               ## @.str.3
	.asciz	"7a3b2a4c1d1e1f2a1d1r"

L_.str.4:                               ## @.str.4
	.asciz	"in: %s -> out: %s\n"

L_.str.5:                               ## @.str.5
	.asciz	"lidjhvipdurevbeirbgipeahapoeuhwaipefupwieofb"

L_.str.6:                               ## @.str.6
	.asciz	"1l1i1d1j1h1v1i1p1d1u1r1e1v1b1e1i1r1b1g1i1p1e1a1h1a1p1o1e1u1h1w1a1i1p1e1f1u1p1w1i1e1o1f1b"

L_.str.7:                               ## @.str.7
	.asciz	"htuuuurwuquququuuaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahghghrw"

L_.str.8:                               ## @.str.8
	.asciz	"1h1t4u1r1w1u1q1u1q1u1q3u76a1h1g1h1g1h1r1w"

.subsections_via_symbols
