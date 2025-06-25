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
	movl	$45457, %edi                    ## imm = 0xB191
	movl	$2, %esi
	callq	_phiphi
	leaq	L_.str.6(%rip), %rdi
	movl	$45457, %esi                    ## imm = 0xB191
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function phiphi
_phiphi:                                ## @phiphi
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
	movl	%esi, %ebx
                                        ## kill: def $edi killed $edi def $rdi
	leal	-1(%rdi), %r15d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%ebx, %r15d
	je	LBB1_26
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	%edi, %eax
	cltd
	idivl	%ebx
	incl	%ebx
	testl	%edx, %edx
	jne	LBB1_1
## %bb.3:
	movl	%eax, %r14d
	decl	%ebx
	movl	%ebx, %ecx
	movl	%eax, %edx
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	je	LBB1_12
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	testl	%edx, %edx
	je	LBB1_12
## %bb.6:                               ##   in Loop: Header=BB1_4 Depth=1
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	cmpl	%esi, %ecx
	movl	%esi, %eax
	cmoval	%ecx, %eax
	cmovael	%esi, %ecx
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	jne	LBB1_4
## %bb.7:
	cmpl	$1, %ecx
	jne	LBB1_12
## %bb.8:
	movl	%ebx, %edi
	negl	%edi
	cmovsl	%ebx, %edi
	xorl	%r15d, %r15d
	movl	$0, %ebx
	cmpl	$2, %edi
	jb	LBB1_19
## %bb.9:
	je	LBB1_17
## %bb.10:
	cmpl	$3, %edi
	jne	LBB1_18
## %bb.11:
	movl	$2, %ebx
	jmp	LBB1_19
LBB1_12:
	movl	%r14d, %edi
	negl	%edi
	cmovsl	%r14d, %edi
	xorl	%r15d, %r15d
	cmpl	$2, %edi
	jb	LBB1_25
## %bb.13:
	je	LBB1_24
## %bb.14:
	cmpl	$3, %edi
	je	LBB1_22
LBB1_23:
	movl	$2, %esi
	callq	_phiphi
	movl	%eax, %r15d
	jmp	LBB1_25
LBB1_17:
	movl	$1, %ebx
	jmp	LBB1_19
LBB1_18:
	movl	$2, %esi
	callq	_phiphi
	movl	%eax, %ebx
LBB1_19:
	movl	%r14d, %edi
	negl	%edi
	cmovsl	%r14d, %edi
	cmpl	$2, %edi
	jb	LBB1_25
## %bb.20:
	je	LBB1_24
## %bb.21:
	cmpl	$3, %edi
	jne	LBB1_23
LBB1_22:
	movl	$2, %r15d
	jmp	LBB1_25
LBB1_24:
	movl	$1, %r15d
LBB1_25:
	imull	%ebx, %r15d
LBB1_26:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"phi(%d) = %d\n"

.subsections_via_symbols
