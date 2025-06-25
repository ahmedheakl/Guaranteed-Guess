	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_foo                            ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	imull	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bar                            ## -- Begin function bar
	.p2align	4, 0x90
_bar:                                   ## @bar
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movl	_aglobal(%rip), %edi
	callq	*%rax
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$4, %ecx
	ja	LBB1_7
## %bb.1:
	leaq	LJTI1_0(%rip), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rdx, %rcx
	jmpq	*%rcx
LBB1_2:
	incl	%eax
	jmp	LBB1_8
LBB1_7:
	negl	%eax
	jmp	LBB1_8
LBB1_3:
	decl	%eax
	jmp	LBB1_8
LBB1_4:
	addl	%eax, %eax
	jmp	LBB1_8
LBB1_5:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, %eax
	jmp	LBB1_8
LBB1_6:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
LBB1_8:
	movl	%eax, _aglobal(%rip)
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L1_0_set_2, LBB1_2-LJTI1_0
.set L1_0_set_3, LBB1_3-LJTI1_0
.set L1_0_set_4, LBB1_4-LJTI1_0
.set L1_0_set_5, LBB1_5-LJTI1_0
.set L1_0_set_6, LBB1_6-LJTI1_0
LJTI1_0:
	.long	L1_0_set_2
	.long	L1_0_set_3
	.long	L1_0_set_4
	.long	L1_0_set_5
	.long	L1_0_set_6
	.end_data_region
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
	leaq	_foo(%rip), %rbx
	movq	%rbx, %rdi
	callq	*_pbar(%rip)
	movq	%rbx, %rdi
	callq	*_pbar(%rip)
	movq	%rbx, %rdi
	callq	*_pbar(%rip)
	movl	_aglobal(%rip), %esi
	leaq	L_.str(%rip), %rdi
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
	.section	__DATA,__data
	.globl	_aglobal                        ## @aglobal
	.p2align	2, 0x0
_aglobal:
	.long	56                              ## 0x38

	.globl	_pbar                           ## @pbar
	.p2align	3, 0x0
_pbar:
	.quad	_bar

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"aglobal = %d\n"

.subsections_via_symbols
