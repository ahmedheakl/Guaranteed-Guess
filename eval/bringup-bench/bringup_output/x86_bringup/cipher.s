	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_encipher                       ## -- Begin function encipher
	.p2align	4, 0x90
_encipher:                              ## @encipher
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
	movl	(%rdi), %eax
	movl	4(%rdi), %ebx
	movl	(%rdx), %ecx
	movl	4(%rdx), %edi
	movl	8(%rdx), %r8d
	movl	12(%rdx), %edx
	movl	$-32, %r9d
	movl	$-1640531527, %r10d             ## imm = 0x9E3779B9
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %r11d
	shll	$4, %ebx
	addl	%ecx, %ebx
	leal	(%r11,%r10), %r14d
	xorl	%ebx, %r14d
	movl	%r11d, %ebx
	shrl	$5, %ebx
	addl	%edi, %ebx
	xorl	%r14d, %ebx
	addl	%ebx, %eax
	movl	%eax, %ebx
	shll	$4, %ebx
	addl	%r8d, %ebx
	leal	(%r10,%rax), %r14d
	xorl	%ebx, %r14d
	movl	%eax, %ebx
	shrl	$5, %ebx
	addl	%edx, %ebx
	xorl	%r14d, %ebx
	addl	%r11d, %ebx
	addl	$-1640531527, %r10d             ## imm = 0x9E3779B9
	incl	%r9d
	jne	LBB0_1
## %bb.2:
	movl	%eax, (%rsi)
	movl	%ebx, 4(%rsi)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_decipher                       ## -- Begin function decipher
	.p2align	4, 0x90
_decipher:                              ## @decipher
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
	movl	(%rdi), %eax
	movl	4(%rdi), %ecx
	movl	(%rdx), %edi
	movl	4(%rdx), %r8d
	movl	8(%rdx), %r9d
	movl	12(%rdx), %edx
	movl	$-957401312, %r10d              ## imm = 0xC6EF3720
	movl	$-32, %r11d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	shll	$4, %ebx
	addl	%r9d, %ebx
	leal	(%rax,%r10), %r14d
	xorl	%ebx, %r14d
	movl	%eax, %ebx
	shrl	$5, %ebx
	addl	%edx, %ebx
	xorl	%r14d, %ebx
	subl	%ebx, %ecx
	movl	%ecx, %ebx
	shll	$4, %ebx
	addl	%edi, %ebx
	leal	(%r10,%rcx), %r14d
	xorl	%ebx, %r14d
	movl	%ecx, %ebx
	shrl	$5, %ebx
	addl	%r8d, %ebx
	xorl	%r14d, %ebx
	subl	%ebx, %eax
	addl	$1640531527, %r10d              ## imm = 0x61C88647
	incl	%r11d
	jne	LBB1_1
## %bb.2:
	movl	%eax, (%rsi)
	movl	%ecx, 4(%rsi)
	popq	%rbx
	popq	%r14
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
	movl	_plaintext(%rip), %eax
	movl	_plaintext+4(%rip), %r8d
	movl	_keytext(%rip), %ecx
	movl	_keytext+4(%rip), %edx
	movl	_keytext+8(%rip), %esi
	movl	$-32, %r9d
	movl	$-1640531527, %r10d             ## imm = 0x9E3779B9
	movl	_keytext+12(%rip), %edi
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r8d, %r11d
	shll	$4, %r8d
	addl	%ecx, %r8d
	leal	(%r11,%r10), %ebx
	movl	%r11d, %r14d
	shrl	$5, %r14d
	addl	%edx, %r14d
	xorl	%r8d, %r14d
	xorl	%ebx, %r14d
	addl	%r14d, %eax
	movl	%eax, %r8d
	shll	$4, %r8d
	addl	%esi, %r8d
	leal	(%r10,%rax), %ebx
	xorl	%r8d, %ebx
	movl	%eax, %r8d
	shrl	$5, %r8d
	addl	%edi, %r8d
	xorl	%ebx, %r8d
	addl	%r11d, %r8d
	addl	$-1640531527, %r10d             ## imm = 0x9E3779B9
	incl	%r9d
	jne	LBB2_1
## %bb.2:
	movq	_ciphertext@GOTPCREL(%rip), %rbx
	movl	%eax, (%rbx)
	movl	%r8d, 4(%rbx)
	cmpl	_cipherref(%rip), %eax
	jne	LBB2_4
## %bb.3:
	cmpl	_cipherref+4(%rip), %r8d
	je	LBB2_5
LBB2_4:
	movl	$1, %edi
	callq	_libmin_fail
	movl	(%rbx), %eax
	movl	4(%rbx), %r8d
	movl	_keytext(%rip), %ecx
	movl	_keytext+4(%rip), %edx
	movl	_keytext+8(%rip), %esi
	movl	_keytext+12(%rip), %edi
LBB2_5:
	movl	$-957401312, %r9d               ## imm = 0xC6EF3720
	movl	$-32, %r10d
	.p2align	4, 0x90
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %r11d
	shll	$4, %r11d
	addl	%esi, %r11d
	leal	(%rax,%r9), %r14d
	movl	%eax, %r15d
	shrl	$5, %r15d
	addl	%edi, %r15d
	xorl	%r11d, %r15d
	xorl	%r14d, %r15d
	subl	%r15d, %r8d
	movl	%r8d, %r11d
	shll	$4, %r11d
	addl	%ecx, %r11d
	leal	(%r9,%r8), %r14d
	xorl	%r11d, %r14d
	movl	%r8d, %r11d
	shrl	$5, %r11d
	addl	%edx, %r11d
	xorl	%r14d, %r11d
	subl	%r11d, %eax
	addl	$1640531527, %r9d               ## imm = 0x61C88647
	incl	%r10d
	jne	LBB2_6
## %bb.7:
	movq	_newplain@GOTPCREL(%rip), %r14
	movl	%eax, (%r14)
	movl	%r8d, 4(%r14)
	cmpl	_plaintext(%rip), %eax
	jne	LBB2_9
## %bb.8:
	cmpl	_plaintext+4(%rip), %r8d
	je	LBB2_10
LBB2_9:
	movl	$2, %edi
	callq	_libmin_fail
LBB2_10:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_plaintext(%rip), %esi
	movl	_plaintext+4(%rip), %edx
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	(%r14), %esi
	movl	4(%r14), %edx
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
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
	.section	__DATA,__data
	.globl	_keytext                        ## @keytext
	.p2align	4, 0x0
_keytext:
	.long	358852050                       ## 0x1563a5d2
	.long	311606025                       ## 0x1292bb09
	.long	739108171                       ## 0x2c0de54b
	.long	861449956                       ## 0x3358aee4

	.globl	_plaintext                      ## @plaintext
	.p2align	2, 0x0
_plaintext:
	.long	765625614                       ## 0x2da2850e
	.long	14247501                        ## 0xd9664d

	.globl	_cipherref                      ## @cipherref
	.p2align	2, 0x0
_cipherref:
	.long	2682439780                      ## 0x9fe2c864
	.long	3621408164                      ## 0xd7da4da4

	.comm	_ciphertext,8,2                 ## @ciphertext
	.comm	_newplain,8,2                   ## @newplain
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"TEA Cipher results:\n"

L_.str.1:                               ## @.str.1
	.asciz	"  plaintext:  0x%08lx 0x%08lx\n"

L_.str.2:                               ## @.str.2
	.asciz	"  ciphertext: 0x%08lx 0x%08lx\n"

L_.str.3:                               ## @.str.3
	.asciz	"  newplain:   0x%08lx 0x%08lx\n"

.subsections_via_symbols
