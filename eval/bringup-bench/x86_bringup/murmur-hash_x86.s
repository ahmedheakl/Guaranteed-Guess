	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_murmurhash                     ## -- Begin function murmurhash
	.p2align	4, 0x90
_murmurhash:                            ## @murmurhash
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %r10d
	andl	$-4, %r10d
	movslq	%r10d, %r9
	leaq	(%rdi,%r9), %r8
	cmpl	$4, %esi
	jb	LBB0_6
## %bb.1:
	movl	%esi, %ecx
	shrl	$2, %ecx
	negl	%ecx
	movslq	%ecx, %rcx
	testb	$4, %sil
	je	LBB0_3
## %bb.2:
	imull	$-862048943, (%r8,%rcx,4), %eax ## imm = 0xCC9E2D51
	roll	$15, %eax
	imull	$461845907, %eax, %eax          ## imm = 0x1B873593
	xorl	%edx, %eax
	roll	$13, %eax
	leal	(%rax,%rax,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	incq	%rcx
LBB0_3:
	cmpl	$4, %r10d
	je	LBB0_6
## %bb.4:
	leaq	(%r9,%rdi), %rax
	addq	$4, %rax
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	imull	$-862048943, -4(%rax,%rcx,4), %edi ## imm = 0xCC9E2D51
	roll	$15, %edi
	imull	$461845907, %edi, %edi          ## imm = 0x1B873593
	xorl	%edx, %edi
	roll	$13, %edi
	leal	(%rdi,%rdi,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	imull	$-862048943, (%rax,%rcx,4), %edi ## imm = 0xCC9E2D51
	roll	$15, %edi
	imull	$461845907, %edi, %edi          ## imm = 0x1B873593
	xorl	%edx, %edi
	roll	$13, %edi
	leal	(%rdi,%rdi,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rcx
	jne	LBB0_5
LBB0_6:
	movl	%esi, %ecx
	andl	$3, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	LBB0_11
## %bb.7:
	cmpl	$2, %ecx
	je	LBB0_10
## %bb.8:
	cmpl	$3, %ecx
	jne	LBB0_12
## %bb.9:
	movzbl	2(%r8), %eax
	shll	$16, %eax
LBB0_10:
	movzbl	1(%r8), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
LBB0_11:
	movzbl	(%r8), %ecx
	xorl	%eax, %ecx
	imull	$-862048943, %ecx, %eax         ## imm = 0xCC9E2D51
	roll	$15, %eax
	imull	$461845907, %eax, %eax          ## imm = 0x1B873593
	xorl	%eax, %edx
LBB0_12:
	xorl	%esi, %edx
	movl	%edx, %eax
	shrl	$16, %eax
	xorl	%edx, %eax
	imull	$-2048144789, %eax, %eax        ## imm = 0x85EBCA6B
	movl	%eax, %ecx
	shrl	$13, %ecx
	xorl	%eax, %ecx
	imull	$-1028477387, %ecx, %ecx        ## imm = 0xC2B2AE35
	movl	%ecx, %eax
	shrl	$16, %eax
	xorl	%ecx, %eax
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
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rcx
	movq	%rcx, %rbx
	andq	$-4, %rbx
	leaq	(%r14,%rbx), %r8
	xorl	%r9d, %r9d
	movl	$0, %esi
	cmpl	$4, %ecx
	jb	LBB1_7
## %bb.1:
	movl	%eax, %ecx
	shrl	$2, %ecx
	negl	%ecx
	movslq	%ecx, %rdi
	movq	%rax, %r10
	shrq	$2, %r10
	movl	%r10d, %ecx
	andl	$1073741823, %ecx               ## imm = 0x3FFFFFFF
	andl	$1, %r10d
	cmpq	$1, %rcx
	jne	LBB1_3
## %bb.2:
	xorl	%esi, %esi
	jmp	LBB1_5
LBB1_3:
	subq	%r10, %rcx
	addq	%r14, %rbx
	addq	$4, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	imull	$-862048943, -4(%rbx,%rdi,4), %edx ## imm = 0xCC9E2D51
	roll	$15, %edx
	imull	$461845907, %edx, %edx          ## imm = 0x1B873593
	xorl	%esi, %edx
	roll	$13, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	imull	$-862048943, (%rbx,%rdi,4), %esi ## imm = 0xCC9E2D51
	roll	$15, %esi
	imull	$461845907, %esi, %esi          ## imm = 0x1B873593
	xorl	%edx, %esi
	roll	$13, %esi
	leal	(%rsi,%rsi,4), %esi
	addl	$-430675100, %esi               ## imm = 0xE6546B64
	addq	$2, %rdi
	addq	$-2, %rcx
	jne	LBB1_4
LBB1_5:
	testq	%r10, %r10
	je	LBB1_7
## %bb.6:
	imull	$-862048943, (%r8,%rdi,4), %ecx ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%esi, %ecx
	roll	$13, %ecx
	leal	(%rcx,%rcx,4), %esi
	addl	$-430675100, %esi               ## imm = 0xE6546B64
LBB1_7:
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	LBB1_12
## %bb.8:
	cmpl	$2, %ecx
	je	LBB1_11
## %bb.9:
	cmpl	$3, %ecx
	jne	LBB1_13
## %bb.10:
	movzbl	2(%r8), %r9d
	shll	$16, %r9d
LBB1_11:
	movzbl	1(%r8), %ecx
	shll	$8, %ecx
	orl	%ecx, %r9d
LBB1_12:
	movzbl	(%r8), %ecx
	xorl	%r9d, %ecx
	imull	$-862048943, %ecx, %ecx         ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%ecx, %esi
LBB1_13:
	xorl	%eax, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	xorl	%esi, %eax
	imull	$-2048144789, %eax, %eax        ## imm = 0x85EBCA6B
	movl	%eax, %ecx
	shrl	$13, %ecx
	xorl	%eax, %ecx
	imull	$-1028477387, %ecx, %eax        ## imm = 0xC2B2AE35
	movl	%eax, %edx
	shrl	$16, %edx
	xorl	%eax, %edx
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %r15
	movq	%r15, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rcx
	movq	%rcx, %rbx
	andq	$-4, %rbx
	leaq	(%r15,%rbx), %r8
	movl	$0, %edx
	cmpl	$4, %ecx
	jb	LBB1_20
## %bb.14:
	movl	%eax, %ecx
	shrl	$2, %ecx
	negl	%ecx
	movslq	%ecx, %rsi
	movq	%rax, %r9
	shrq	$2, %r9
	movl	%r9d, %edi
	andl	$1073741823, %edi               ## imm = 0x3FFFFFFF
	andl	$1, %r9d
	cmpq	$1, %rdi
	jne	LBB1_16
## %bb.15:
	xorl	%edx, %edx
	jmp	LBB1_18
LBB1_16:
	subq	%r9, %rdi
	addq	%r15, %rbx
	addq	$4, %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_17:                                ## =>This Inner Loop Header: Depth=1
	imull	$-862048943, -4(%rbx,%rsi,4), %ecx ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%edx, %ecx
	roll	$13, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$-430675100, %ecx               ## imm = 0xE6546B64
	imull	$-862048943, (%rbx,%rsi,4), %edx ## imm = 0xCC9E2D51
	roll	$15, %edx
	imull	$461845907, %edx, %edx          ## imm = 0x1B873593
	xorl	%ecx, %edx
	roll	$13, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rsi
	addq	$-2, %rdi
	jne	LBB1_17
LBB1_18:
	testq	%r9, %r9
	je	LBB1_20
## %bb.19:
	imull	$-862048943, (%r8,%rsi,4), %ecx ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%edx, %ecx
	roll	$13, %ecx
	leal	(%rcx,%rcx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
LBB1_20:
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	LBB1_25
## %bb.21:
	cmpl	$2, %ecx
	je	LBB1_24
## %bb.22:
	cmpl	$3, %ecx
	jne	LBB1_26
## %bb.23:
	movzbl	2(%r8), %r14d
	shll	$16, %r14d
LBB1_24:
	movzbl	1(%r8), %ecx
	shll	$8, %ecx
	orl	%ecx, %r14d
LBB1_25:
	movzbl	(%r8), %ecx
	xorl	%r14d, %ecx
	imull	$-862048943, %ecx, %ecx         ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%ecx, %edx
LBB1_26:
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$16, %eax
	xorl	%edx, %eax
	imull	$-2048144789, %eax, %eax        ## imm = 0x85EBCA6B
	movl	%eax, %ecx
	shrl	$13, %ecx
	xorl	%eax, %ecx
	imull	$-1028477387, %ecx, %eax        ## imm = 0xC2B2AE35
	movl	%eax, %edx
	shrl	$16, %edx
	xorl	%eax, %edx
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %r15
	movq	%r15, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rcx
	movq	%rcx, %rbx
	andq	$-4, %rbx
	leaq	(%r15,%rbx), %r8
	movl	$0, %edx
	cmpl	$4, %ecx
	jb	LBB1_33
## %bb.27:
	movl	%eax, %ecx
	shrl	$2, %ecx
	negl	%ecx
	movslq	%ecx, %rsi
	movq	%rax, %r9
	shrq	$2, %r9
	movl	%r9d, %edi
	andl	$1073741823, %edi               ## imm = 0x3FFFFFFF
	andl	$1, %r9d
	cmpq	$1, %rdi
	jne	LBB1_29
## %bb.28:
	xorl	%edx, %edx
	jmp	LBB1_31
LBB1_29:
	subq	%r9, %rdi
	addq	%r15, %rbx
	addq	$4, %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_30:                                ## =>This Inner Loop Header: Depth=1
	imull	$-862048943, -4(%rbx,%rsi,4), %ecx ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%edx, %ecx
	roll	$13, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	$-430675100, %ecx               ## imm = 0xE6546B64
	imull	$-862048943, (%rbx,%rsi,4), %edx ## imm = 0xCC9E2D51
	roll	$15, %edx
	imull	$461845907, %edx, %edx          ## imm = 0x1B873593
	xorl	%ecx, %edx
	roll	$13, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rsi
	addq	$-2, %rdi
	jne	LBB1_30
LBB1_31:
	testq	%r9, %r9
	je	LBB1_33
## %bb.32:
	imull	$-862048943, (%r8,%rsi,4), %ecx ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%edx, %ecx
	roll	$13, %ecx
	leal	(%rcx,%rcx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
LBB1_33:
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	LBB1_38
## %bb.34:
	cmpl	$2, %ecx
	je	LBB1_37
## %bb.35:
	cmpl	$3, %ecx
	jne	LBB1_39
## %bb.36:
	movzbl	2(%r8), %r14d
	shll	$16, %r14d
LBB1_37:
	movzbl	1(%r8), %ecx
	shll	$8, %ecx
	orl	%ecx, %r14d
LBB1_38:
	movzbl	(%r8), %ecx
	xorl	%r14d, %ecx
	imull	$-862048943, %ecx, %ecx         ## imm = 0xCC9E2D51
	roll	$15, %ecx
	imull	$461845907, %ecx, %ecx          ## imm = 0x1B873593
	xorl	%ecx, %edx
LBB1_39:
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$16, %eax
	xorl	%edx, %eax
	imull	$-2048144789, %eax, %eax        ## imm = 0x85EBCA6B
	movl	%eax, %ecx
	shrl	$13, %ecx
	xorl	%eax, %ecx
	imull	$-1028477387, %ecx, %eax        ## imm = 0xC2B2AE35
	movl	%eax, %edx
	shrl	$16, %edx
	xorl	%eax, %edx
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"kinkajou"

L_.str.1:                               ## @.str.1
	.asciz	"murmurhash(\"%s\") = 0x%x\n"

L_.str.2:                               ## @.str.2
	.asciz	"The bringup-bench benchmark MURMUR made this."

L_.str.3:                               ## @.str.3
	.asciz	"It has to start somewhere, it has to start sometime, what better place than here? What better time than now?"

.subsections_via_symbols
