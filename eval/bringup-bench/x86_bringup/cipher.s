	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	(%rdi), %eax
	movl	4(%rdi), %ebx
	movl	(%rdx), %r8d
	movl	4(%rdx), %r9d
	movl	8(%rdx), %r10d
	movl	12(%rdx), %r11d
	movl	$-32, %r14d
	movl	$-1640531527, %ecx              ## imm = 0x9E3779B9
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %r15d
	shll	$4, %ebx
	addl	%r8d, %ebx
	leal	(%r15,%rcx), %edi
	xorl	%ebx, %edi
	movl	%r15d, %ebx
	shrl	$5, %ebx
	addl	%r9d, %ebx
	xorl	%edi, %ebx
	addl	%ebx, %eax
	movl	%eax, %edi
	shll	$4, %edi
	addl	%r10d, %edi
	leal	(%rcx,%rax), %edx
	xorl	%edi, %edx
	movl	%eax, %ebx
	shrl	$5, %ebx
	addl	%r11d, %ebx
	xorl	%edx, %ebx
	addl	%r15d, %ebx
	addl	$-1640531527, %ecx              ## imm = 0x9E3779B9
	incl	%r14d
	jne	LBB0_1
## %bb.2:
	movl	%eax, (%rsi)
	movl	%ebx, 4(%rsi)
	popq	%rbx
	popq	%r14
	popq	%r15
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
	movl	(%rdx), %r8d
	movl	4(%rdx), %r9d
	movl	8(%rdx), %r10d
	movl	12(%rdx), %r11d
	movl	$-957401312, %edi               ## imm = 0xC6EF3720
	movl	$-32, %r14d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	shll	$4, %ebx
	addl	%r10d, %ebx
	leal	(%rax,%rdi), %edx
	xorl	%ebx, %edx
	movl	%eax, %ebx
	shrl	$5, %ebx
	addl	%r11d, %ebx
	xorl	%edx, %ebx
	subl	%ebx, %ecx
	movl	%ecx, %edx
	shll	$4, %edx
	addl	%r8d, %edx
	leal	(%rdi,%rcx), %ebx
	xorl	%edx, %ebx
	movl	%ecx, %edx
	shrl	$5, %edx
	addl	%r9d, %edx
	xorl	%ebx, %edx
	subl	%edx, %eax
	addl	$1640531527, %edi               ## imm = 0x61C88647
	incl	%r14d
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
	movl	_plaintext(%rip), %ebx
	movl	_plaintext+4(%rip), %eax
	movl	_keytext(%rip), %r8d
	movl	_keytext+4(%rip), %r9d
	movl	_keytext+8(%rip), %r10d
	movl	$-32, %ecx
	movl	$-1640531527, %edx              ## imm = 0x9E3779B9
	movl	_keytext+12(%rip), %r11d
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shll	$4, %eax
	addl	%r8d, %eax
	leal	(%rsi,%rdx), %r14d
	movl	%esi, %edi
	shrl	$5, %edi
	addl	%r9d, %edi
	xorl	%eax, %edi
	xorl	%r14d, %edi
	addl	%edi, %ebx
	movl	%ebx, %eax
	shll	$4, %eax
	addl	%r10d, %eax
	leal	(%rdx,%rbx), %edi
	xorl	%eax, %edi
	movl	%ebx, %eax
	shrl	$5, %eax
	addl	%r11d, %eax
	xorl	%edi, %eax
	addl	%esi, %eax
	addl	$-1640531527, %edx              ## imm = 0x9E3779B9
	incl	%ecx
	jne	LBB2_1
## %bb.2:
	movq	_ciphertext@GOTPCREL(%rip), %r14
	movl	%ebx, (%r14)
	movl	%eax, 4(%r14)
	cmpl	_cipherref(%rip), %ebx
	jne	LBB2_4
## %bb.3:
	cmpl	_cipherref+4(%rip), %eax
	je	LBB2_5
LBB2_4:
	movl	$1, %edi
	callq	_libmin_fail
	movl	(%r14), %ebx
	movl	4(%r14), %eax
	movl	_keytext(%rip), %r8d
	movl	_keytext+4(%rip), %r9d
	movl	_keytext+8(%rip), %r10d
	movl	_keytext+12(%rip), %r11d
LBB2_5:
	movl	$-957401312, %ecx               ## imm = 0xC6EF3720
	movl	$-32, %edx
	.p2align	4, 0x90
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	shll	$4, %esi
	addl	%r10d, %esi
	leal	(%rbx,%rcx), %r15d
	movl	%ebx, %edi
	shrl	$5, %edi
	addl	%r11d, %edi
	xorl	%esi, %edi
	xorl	%r15d, %edi
	subl	%edi, %eax
	movl	%eax, %esi
	shll	$4, %esi
	addl	%r8d, %esi
	leal	(%rcx,%rax), %edi
	xorl	%esi, %edi
	movl	%eax, %esi
	shrl	$5, %esi
	addl	%r9d, %esi
	xorl	%edi, %esi
	subl	%esi, %ebx
	addl	$1640531527, %ecx               ## imm = 0x61C88647
	incl	%edx
	jne	LBB2_6
## %bb.7:
	movq	_newplain@GOTPCREL(%rip), %r15
	movl	%ebx, (%r15)
	movl	%eax, 4(%r15)
	cmpl	_plaintext(%rip), %ebx
	jne	LBB2_9
## %bb.8:
	cmpl	_plaintext+4(%rip), %eax
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
	movl	(%r14), %esi
	movl	4(%r14), %edx
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	(%r15), %esi
	movl	4(%r15), %edx
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
	.p2align	4
_keytext:
	.long	358852050                       ## 0x1563a5d2
	.long	311606025                       ## 0x1292bb09
	.long	739108171                       ## 0x2c0de54b
	.long	861449956                       ## 0x3358aee4

	.globl	_plaintext                      ## @plaintext
	.p2align	2
_plaintext:
	.long	765625614                       ## 0x2da2850e
	.long	14247501                        ## 0xd9664d

	.globl	_cipherref                      ## @cipherref
	.p2align	2
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
