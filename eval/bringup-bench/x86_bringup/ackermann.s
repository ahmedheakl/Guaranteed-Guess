	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_ack                            ## -- Begin function ack
	.p2align	4, 0x90
_ack:                                   ## @ack
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movl	%edi, %r15d
	movl	_depth(%rip), %eax
	incl	%eax
	movl	%eax, _depth(%rip)
	cmpl	$16777216, %eax                 ## imm = 0x1000000
	jae	LBB0_1
## %bb.2:
	cmpl	$65535, %r15d                   ## imm = 0xFFFF
	jae	LBB0_3
LBB0_4:
	cmpl	$16, %r14d
	jb	LBB0_6
LBB0_5:
	leaq	L_.str.2(%rip), %rdi
	movl	$16, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
LBB0_6:
	movl	%r15d, %ecx
	movl	%r14d, %ebx
	shlq	$6, %rcx
	leaq	_a(%rip), %r12
	leaq	(%r12,%rcx), %rdx
	movl	(%rdx,%rbx,4), %eax
	testl	%eax, %eax
	je	LBB0_7
LBB0_9:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_1:
	leaq	L_.str(%rip), %rdi
	movl	$16777215, %esi                 ## imm = 0xFFFFFF
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	cmpl	$65535, %r15d                   ## imm = 0xFFFF
	jb	LBB0_4
LBB0_3:
	leaq	L_.str.1(%rip), %rdi
	movl	$65535, %esi                    ## imm = 0xFFFF
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	cmpl	$16, %r14d
	jae	LBB0_5
	jmp	LBB0_6
LBB0_7:
	testl	%r14d, %r14d
	je	LBB0_8
## %bb.11:
	testl	%r15d, %r15d
	je	LBB0_10
## %bb.12:
	leaq	(%rdx,%rbx,4), %rbx
	decl	%r15d
	movl	%r15d, %edi
	movl	%r14d, %esi
	callq	_ack
	decl	%r14d
	movl	%eax, %edi
	movl	%r14d, %esi
	callq	_ack
	movl	%eax, (%rbx)
	jmp	LBB0_9
LBB0_8:
	incl	%r15d
	movl	%r15d, (%rcx,%r12)
	movl	%r15d, %eax
	jmp	LBB0_9
LBB0_10:
	decl	%r14d
	movl	$1, %edi
	movl	%r14d, %esi
	callq	_ack
	movl	%eax, (%r12,%rbx,4)
	jmp	LBB0_9
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
	movl	$0, _max_depth(%rip)
	leaq	L_.str.3(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_2
## %bb.1:
	movl	%eax, _max_depth(%rip)
LBB1_2:
	leaq	L_.str.3(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	movl	$1, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_4
## %bb.3:
	movl	%eax, _max_depth(%rip)
LBB1_4:
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	movl	$1, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_6
## %bb.5:
	movl	%eax, _max_depth(%rip)
LBB1_6:
	leaq	L_.str.3(%rip), %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	movl	$2, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_8
## %bb.7:
	movl	%eax, _max_depth(%rip)
LBB1_8:
	movl	$0, _depth(%rip)
	movl	$1, %edi
	movl	$1, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_10
## %bb.9:
	movl	%eax, _max_depth(%rip)
LBB1_10:
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_12
## %bb.11:
	movl	%eax, _max_depth(%rip)
LBB1_12:
	leaq	L_.str.3(%rip), %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	movl	$3, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_14
## %bb.13:
	movl	%eax, _max_depth(%rip)
LBB1_14:
	movl	$0, _depth(%rip)
	movl	$2, %edi
	movl	$1, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$2, %esi
	movl	$1, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_16
## %bb.15:
	movl	%eax, _max_depth(%rip)
LBB1_16:
	movl	$0, _depth(%rip)
	movl	$1, %edi
	movl	$2, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_18
## %bb.17:
	movl	%eax, _max_depth(%rip)
LBB1_18:
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	movl	$3, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$3, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_20
## %bb.19:
	movl	%eax, _max_depth(%rip)
LBB1_20:
	leaq	L_.str.3(%rip), %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	movl	$4, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_22
## %bb.21:
	movl	%eax, _max_depth(%rip)
LBB1_22:
	movl	$0, _depth(%rip)
	movl	$3, %edi
	movl	$1, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_24
## %bb.23:
	movl	%eax, _max_depth(%rip)
LBB1_24:
	movl	$0, _depth(%rip)
	movl	$2, %edi
	movl	$2, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$2, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_26
## %bb.25:
	movl	%eax, _max_depth(%rip)
LBB1_26:
	movl	$0, _depth(%rip)
	movl	$1, %edi
	movl	$3, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %esi
	movl	$3, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_28
## %bb.27:
	movl	%eax, _max_depth(%rip)
LBB1_28:
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	movl	$4, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_30
## %bb.29:
	movl	%eax, _max_depth(%rip)
LBB1_30:
	leaq	L_.str.3(%rip), %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$0, _depth(%rip)
	movl	$5, %edi
	xorl	%esi, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$5, %esi
	xorl	%edx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_32
## %bb.31:
	movl	%eax, _max_depth(%rip)
LBB1_32:
	movl	$0, _depth(%rip)
	movl	$4, %edi
	movl	$1, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_34
## %bb.33:
	movl	%eax, _max_depth(%rip)
LBB1_34:
	movl	$0, _depth(%rip)
	movl	$3, %edi
	movl	$2, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$3, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_36
## %bb.35:
	movl	%eax, _max_depth(%rip)
LBB1_36:
	movl	$0, _depth(%rip)
	movl	$2, %edi
	movl	$3, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$2, %esi
	movl	$3, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_38
## %bb.37:
	movl	%eax, _max_depth(%rip)
LBB1_38:
	movl	$0, _depth(%rip)
	movl	$1, %edi
	movl	$4, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	cmpl	_max_depth(%rip), %eax
	jbe	LBB1_40
## %bb.39:
	movl	%eax, _max_depth(%rip)
LBB1_40:
	movl	$0, _depth(%rip)
	xorl	%edi, %edi
	movl	$5, %esi
	callq	_ack
	leaq	L_.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$5, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_depth(%rip), %eax
	movl	_max_depth(%rip), %esi
	cmpl	%esi, %eax
	jbe	LBB1_42
## %bb.41:
	movl	%eax, _max_depth(%rip)
	movl	%eax, %esi
LBB1_42:
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_depth,4,2       ## @depth
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Maximum stack depth %d exceeded. Abort.\n"

L_.str.1:                               ## @.str.1
	.asciz	"Maximum x value %d exceeded. Abort. \n"

L_.str.2:                               ## @.str.2
	.asciz	"Maximum y value %d exceeded. Abort. \n"

.zerofill __DATA,__bss,_a,4194240,4     ## @a
.zerofill __DATA,__bss,_max_depth,4,2   ## @max_depth
L_.str.3:                               ## @.str.3
	.asciz	"\nx+y=%d:\n\n"

L_.str.4:                               ## @.str.4
	.asciz	"A(%d,%d) = %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"Max recursive depth = %u\n"

.subsections_via_symbols
