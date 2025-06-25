	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	movl	%esi, %r9d
	andl	$-4, %r9d
	movslq	%r9d, %r8
	leaq	(%rdi,%r8), %rax
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
	movl	(%rax,%rcx,4), %r10d
	imull	$-862048943, %r10d, %r11d       ## imm = 0xCC9E2D51
	imull	$380141568, %r10d, %r10d        ## imm = 0x16A88000
	shrl	$17, %r11d
	orl	%r10d, %r11d
	imull	$461845907, %r11d, %r10d        ## imm = 0x1B873593
	xorl	%edx, %r10d
	roll	$13, %r10d
	leal	(%r10,%r10,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	incq	%rcx
LBB0_3:
	cmpl	$4, %r9d
	je	LBB0_6
## %bb.4:
	addq	%r8, %rdi
	addq	$4, %rdi
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-4(%rdi,%rcx,4), %r8d
	imull	$-862048943, %r8d, %r9d         ## imm = 0xCC9E2D51
	imull	$380141568, %r8d, %r8d          ## imm = 0x16A88000
	shrl	$17, %r9d
	orl	%r8d, %r9d
	imull	$461845907, %r9d, %r8d          ## imm = 0x1B873593
	xorl	%edx, %r8d
	roll	$13, %r8d
	movl	(%rdi,%rcx,4), %edx
	leal	(%r8,%r8,4), %r8d
	addl	$-430675100, %r8d               ## imm = 0xE6546B64
	imull	$-862048943, %edx, %r9d         ## imm = 0xCC9E2D51
	imull	$380141568, %edx, %edx          ## imm = 0x16A88000
	shrl	$17, %r9d
	orl	%edx, %r9d
	imull	$461845907, %r9d, %edx          ## imm = 0x1B873593
	xorl	%r8d, %edx
	roll	$13, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rcx
	jne	LBB0_5
LBB0_6:
	movl	%esi, %edi
	andl	$3, %edi
	xorl	%ecx, %ecx
	cmpl	$1, %edi
	je	LBB0_11
## %bb.7:
	cmpl	$2, %edi
	je	LBB0_10
## %bb.8:
	cmpl	$3, %edi
	jne	LBB0_12
## %bb.9:
	movzbl	2(%rax), %ecx
	shll	$16, %ecx
LBB0_10:
	movzbl	1(%rax), %edi
	shll	$8, %edi
	orl	%edi, %ecx
LBB0_11:
	movzbl	(%rax), %eax
	xorl	%ecx, %eax
	imull	$-862048943, %eax, %ecx         ## imm = 0xCC9E2D51
	imull	$380141568, %eax, %eax          ## imm = 0x16A88000
	shrl	$17, %ecx
	orl	%eax, %ecx
	imull	$461845907, %ecx, %eax          ## imm = 0x1B873593
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	L_.str(%rip), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rdi
	movq	%rdi, %r10
	andq	$-4, %r10
	leaq	(%rbx,%r10), %rcx
	xorl	%edx, %edx
	movl	$0, %esi
	cmpl	$4, %edi
	jb	LBB1_7
## %bb.1:
	movl	%eax, %esi
	shrl	$2, %esi
	negl	%esi
	movslq	%esi, %rdi
	movq	%rax, %r8
	shrq	$2, %r8
	movl	%r8d, %r9d
	andl	$1073741823, %r9d               ## imm = 0x3FFFFFFF
	andl	$1, %r8d
	cmpq	$1, %r9
	jne	LBB1_3
## %bb.2:
	xorl	%esi, %esi
	jmp	LBB1_5
LBB1_3:
	subq	%r8, %r9
	addq	%rbx, %r10
	addq	$4, %r10
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	-4(%r10,%rdi,4), %r11d
	movl	(%r10,%rdi,4), %ebx
	imull	$-862048943, %r11d, %r14d       ## imm = 0xCC9E2D51
	imull	$380141568, %r11d, %r11d        ## imm = 0x16A88000
	shrl	$17, %r14d
	orl	%r11d, %r14d
	imull	$461845907, %r14d, %r11d        ## imm = 0x1B873593
	xorl	%esi, %r11d
	roll	$13, %r11d
	leal	(%r11,%r11,4), %esi
	addl	$-430675100, %esi               ## imm = 0xE6546B64
	imull	$-862048943, %ebx, %r11d        ## imm = 0xCC9E2D51
	imull	$380141568, %ebx, %ebx          ## imm = 0x16A88000
	shrl	$17, %r11d
	orl	%ebx, %r11d
	imull	$461845907, %r11d, %r11d        ## imm = 0x1B873593
	xorl	%esi, %r11d
	roll	$13, %r11d
	leal	(%r11,%r11,4), %esi
	addl	$-430675100, %esi               ## imm = 0xE6546B64
	addq	$2, %rdi
	addq	$-2, %r9
	jne	LBB1_4
LBB1_5:
	testq	%r8, %r8
	je	LBB1_7
## %bb.6:
	movl	(%rcx,%rdi,4), %edi
	imull	$-862048943, %edi, %r8d         ## imm = 0xCC9E2D51
	imull	$380141568, %edi, %edi          ## imm = 0x16A88000
	shrl	$17, %r8d
	orl	%edi, %r8d
	imull	$461845907, %r8d, %edi          ## imm = 0x1B873593
	xorl	%esi, %edi
	roll	$13, %edi
	leal	(%rdi,%rdi,4), %esi
	addl	$-430675100, %esi               ## imm = 0xE6546B64
LBB1_7:
	movl	%eax, %edi
	andl	$3, %edi
	cmpl	$1, %edi
	je	LBB1_12
## %bb.8:
	cmpl	$2, %edi
	je	LBB1_11
## %bb.9:
	cmpl	$3, %edi
	jne	LBB1_13
## %bb.10:
	movzbl	2(%rcx), %edx
	shll	$16, %edx
LBB1_11:
	movzbl	1(%rcx), %edi
	shll	$8, %edi
	orl	%edi, %edx
LBB1_12:
	movzbl	(%rcx), %ecx
	xorl	%edx, %ecx
	imull	$-862048943, %ecx, %edx         ## imm = 0xCC9E2D51
	imull	$380141568, %ecx, %ecx          ## imm = 0x16A88000
	shrl	$17, %edx
	orl	%ecx, %edx
	imull	$461845907, %edx, %ecx          ## imm = 0x1B873593
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
	leaq	L_.str.2(%rip), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rsi
	movq	%rsi, %r9
	andq	$-4, %r9
	leaq	(%rbx,%r9), %rcx
	movl	$0, %edx
	cmpl	$4, %esi
	jb	LBB1_20
## %bb.14:
	movl	%eax, %edx
	shrl	$2, %edx
	negl	%edx
	movslq	%edx, %rsi
	movq	%rax, %rdi
	shrq	$2, %rdi
	movl	%edi, %r8d
	andl	$1073741823, %r8d               ## imm = 0x3FFFFFFF
	andl	$1, %edi
	cmpq	$1, %r8
	jne	LBB1_16
## %bb.15:
	xorl	%edx, %edx
	jmp	LBB1_18
LBB1_16:
	subq	%rdi, %r8
	addq	%rbx, %r9
	addq	$4, %r9
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_17:                                ## =>This Inner Loop Header: Depth=1
	movl	-4(%r9,%rsi,4), %r10d
	movl	(%r9,%rsi,4), %r11d
	imull	$-862048943, %r10d, %ebx        ## imm = 0xCC9E2D51
	imull	$380141568, %r10d, %r10d        ## imm = 0x16A88000
	shrl	$17, %ebx
	orl	%r10d, %ebx
	imull	$461845907, %ebx, %r10d         ## imm = 0x1B873593
	xorl	%edx, %r10d
	roll	$13, %r10d
	leal	(%r10,%r10,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	imull	$-862048943, %r11d, %r10d       ## imm = 0xCC9E2D51
	imull	$380141568, %r11d, %r11d        ## imm = 0x16A88000
	shrl	$17, %r10d
	orl	%r11d, %r10d
	imull	$461845907, %r10d, %r10d        ## imm = 0x1B873593
	xorl	%edx, %r10d
	roll	$13, %r10d
	leal	(%r10,%r10,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rsi
	addq	$-2, %r8
	jne	LBB1_17
LBB1_18:
	testq	%rdi, %rdi
	je	LBB1_20
## %bb.19:
	movl	(%rcx,%rsi,4), %esi
	imull	$-862048943, %esi, %edi         ## imm = 0xCC9E2D51
	imull	$380141568, %esi, %esi          ## imm = 0x16A88000
	shrl	$17, %edi
	orl	%esi, %edi
	imull	$461845907, %edi, %esi          ## imm = 0x1B873593
	xorl	%edx, %esi
	roll	$13, %esi
	leal	(%rsi,%rsi,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
LBB1_20:
	movl	%eax, %esi
	andl	$3, %esi
	cmpl	$1, %esi
	je	LBB1_25
## %bb.21:
	cmpl	$2, %esi
	je	LBB1_24
## %bb.22:
	cmpl	$3, %esi
	jne	LBB1_26
## %bb.23:
	movzbl	2(%rcx), %r14d
	shll	$16, %r14d
LBB1_24:
	movzbl	1(%rcx), %esi
	shll	$8, %esi
	orl	%esi, %r14d
LBB1_25:
	movzbl	(%rcx), %ecx
	xorl	%r14d, %ecx
	imull	$-862048943, %ecx, %esi         ## imm = 0xCC9E2D51
	imull	$380141568, %ecx, %ecx          ## imm = 0x16A88000
	shrl	$17, %esi
	orl	%ecx, %esi
	imull	$461845907, %esi, %ecx          ## imm = 0x1B873593
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
	leaq	L_.str.3(%rip), %rbx
	movq	%rbx, %rdi
	callq	_libmin_strlen
	movslq	%eax, %rsi
	movq	%rsi, %r9
	andq	$-4, %r9
	leaq	(%rbx,%r9), %rcx
	movl	$0, %edx
	cmpl	$4, %esi
	jb	LBB1_33
## %bb.27:
	movl	%eax, %edx
	shrl	$2, %edx
	negl	%edx
	movslq	%edx, %rsi
	movq	%rax, %rdi
	shrq	$2, %rdi
	movl	%edi, %r8d
	andl	$1073741823, %r8d               ## imm = 0x3FFFFFFF
	andl	$1, %edi
	cmpq	$1, %r8
	jne	LBB1_29
## %bb.28:
	xorl	%edx, %edx
	jmp	LBB1_31
LBB1_29:
	subq	%rdi, %r8
	addq	%rbx, %r9
	addq	$4, %r9
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_30:                                ## =>This Inner Loop Header: Depth=1
	movl	-4(%r9,%rsi,4), %r10d
	movl	(%r9,%rsi,4), %r11d
	imull	$-862048943, %r10d, %ebx        ## imm = 0xCC9E2D51
	imull	$380141568, %r10d, %r10d        ## imm = 0x16A88000
	shrl	$17, %ebx
	orl	%r10d, %ebx
	imull	$461845907, %ebx, %r10d         ## imm = 0x1B873593
	xorl	%edx, %r10d
	roll	$13, %r10d
	leal	(%r10,%r10,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	imull	$-862048943, %r11d, %r10d       ## imm = 0xCC9E2D51
	imull	$380141568, %r11d, %r11d        ## imm = 0x16A88000
	shrl	$17, %r10d
	orl	%r11d, %r10d
	imull	$461845907, %r10d, %r10d        ## imm = 0x1B873593
	xorl	%edx, %r10d
	roll	$13, %r10d
	leal	(%r10,%r10,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
	addq	$2, %rsi
	addq	$-2, %r8
	jne	LBB1_30
LBB1_31:
	testq	%rdi, %rdi
	je	LBB1_33
## %bb.32:
	movl	(%rcx,%rsi,4), %esi
	imull	$-862048943, %esi, %edi         ## imm = 0xCC9E2D51
	imull	$380141568, %esi, %esi          ## imm = 0x16A88000
	shrl	$17, %edi
	orl	%esi, %edi
	imull	$461845907, %edi, %esi          ## imm = 0x1B873593
	xorl	%edx, %esi
	roll	$13, %esi
	leal	(%rsi,%rsi,4), %edx
	addl	$-430675100, %edx               ## imm = 0xE6546B64
LBB1_33:
	movl	%eax, %esi
	andl	$3, %esi
	cmpl	$1, %esi
	je	LBB1_38
## %bb.34:
	cmpl	$2, %esi
	je	LBB1_37
## %bb.35:
	cmpl	$3, %esi
	jne	LBB1_39
## %bb.36:
	movzbl	2(%rcx), %r14d
	shll	$16, %r14d
LBB1_37:
	movzbl	1(%rcx), %esi
	shll	$8, %esi
	orl	%esi, %r14d
LBB1_38:
	movzbl	(%rcx), %ecx
	xorl	%r14d, %ecx
	imull	$-862048943, %ecx, %esi         ## imm = 0xCC9E2D51
	imull	$380141568, %ecx, %ecx          ## imm = 0x16A88000
	shrl	$17, %esi
	orl	%ecx, %esi
	imull	$461845907, %esi, %ecx          ## imm = 0x1B873593
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
	popq	%rbx
	popq	%r14
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
