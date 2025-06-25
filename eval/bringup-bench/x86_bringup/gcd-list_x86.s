	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_gcd                            ## -- Begin function gcd
	.p2align	4, 0x90
_gcd:                                   ## @gcd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %r8d
	cmpl	$2, %esi
	jb	LBB0_3
## %bb.1:
	movl	$1, %ecx
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movl	(%rdi,%rax,4), %eax
	xorl	%edx, %edx
	divl	%r8d
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	cmovnel	%edx, %r8d
	addl	%eax, %ecx
	cmpl	%esi, %ecx
	jb	LBB0_2
LBB0_3:
	movl	%r8d, %eax
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$42, %edi
	callq	_libmin_srand
	movl	$256, %edi                      ## imm = 0x100
	callq	_libmin_malloc
	movq	%rax, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
                                        ## kill: def $eax killed $eax def $rax
	movl	%eax, %ecx
	imulq	$1801439851, %rcx, %rcx         ## imm = 0x6B5FCA6B
	shrq	$54, %rcx
	imull	$10000000, %ecx, %ecx           ## imm = 0x989680
	subl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	leal	(%rax,%rcx,4), %eax
	movl	%eax, (%r15,%rbx,4)
	incq	%rbx
	cmpq	$64, %rbx
	jne	LBB1_1
## %bb.2:
	leaq	L_.str(%rip), %rdi
	movl	$64, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r15,%rbx,4), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%rbx
	cmpq	$64, %rbx
	jne	LBB1_3
## %bb.4:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	(%r15), %edx
	movl	$1, %ecx
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	movl	%ecx, %eax
	movl	(%r15,%rax,4), %eax
	xorl	%edx, %edx
	divl	%esi
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	cmovel	%esi, %edx
	addl	%eax, %ecx
	cmpl	$64, %ecx
	jb	LBB1_5
## %bb.6:
	leaq	L_.str.3(%rip), %rdi
	movl	%edx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rdi
	callq	_libmin_free
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"INFO: a[%d] = { "

L_.str.1:                               ## @.str.1
	.asciz	"%d, "

L_.str.2:                               ## @.str.2
	.asciz	" }\n"

L_.str.3:                               ## @.str.3
	.asciz	"GCD of list: %u\n"

.subsections_via_symbols
