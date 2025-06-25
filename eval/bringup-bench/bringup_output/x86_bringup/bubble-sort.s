	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_print_data                     ## -- Begin function print_data
	.p2align	4, 0x90
_print_data:                            ## @print_data
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
	movq	%rdi, %rbx
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%r14d, %r14d
	je	LBB0_3
## %bb.1:
	movl	%r14d, %r12d
	leaq	L_.str.1(%rip), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r15,4), %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r15
	cmpq	%r15, %r12
	jne	LBB0_2
LBB0_3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_bubblesort                     ## -- Begin function bubblesort
	.p2align	4, 0x90
_bubblesort:                            ## @bubblesort
	.cfi_startproc
## %bb.0:
	decl	%esi
	je	LBB1_12
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_swaps(%rip), %rax
	movl	%esi, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_8 Depth 2
                                        ##       Child Loop BB1_9 Depth 3
	movl	(%rdi), %r9d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	jmp	LBB1_8
	.p2align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_8 Depth=2
	movl	%r10d, %r9d
	cmpq	%rcx, %r8
	je	LBB1_10
LBB1_8:                                 ##   Parent Loop BB1_4 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_9 Depth 3
	movl	4(%rdi,%r8,4), %r10d
	incq	%r8
	cmpl	%r10d, %r9d
	jle	LBB1_7
	.p2align	4, 0x90
LBB1_9:                                 ##   Parent Loop BB1_4 Depth=1
                                        ##     Parent Loop BB1_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%r10d, -4(%rdi,%r8,4)
	movl	%r9d, (%rdi,%r8,4)
	incq	%rax
	cmpq	%r8, %rcx
	je	LBB1_2
## %bb.5:                               ##   in Loop: Header=BB1_9 Depth=3
	movl	4(%rdi,%r8,4), %r10d
	incq	%r8
	cmpl	%r10d, %r9d
	jg	LBB1_9
## %bb.6:                               ##   in Loop: Header=BB1_8 Depth=2
	movq	%rax, _swaps(%rip)
	movl	$1, %r11d
	jmp	LBB1_7
	.p2align	4, 0x90
LBB1_2:                                 ##   in Loop: Header=BB1_4 Depth=1
	movq	%rax, _swaps(%rip)
LBB1_3:                                 ##   in Loop: Header=BB1_4 Depth=1
	incl	%edx
	cmpl	%esi, %edx
	jne	LBB1_4
	jmp	LBB1_11
LBB1_10:                                ##   in Loop: Header=BB1_4 Depth=1
	testl	%r11d, %r11d
	jne	LBB1_3
LBB1_11:
	popq	%rbp
LBB1_12:
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
	xorl	%ebx, %ebx
	movq	_data@GOTPCREL(%rip), %r15
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_libmin_rand
	movl	%eax, (%r15,%rbx,4)
	incq	%rbx
	cmpq	$256, %rbx                      ## imm = 0x100
	jne	LBB2_1
## %bb.2:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r15,%r14,4), %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	cmpq	$256, %r14                      ## imm = 0x100
	jne	LBB2_3
## %bb.4:
	xorl	%eax, %eax
	movq	_swaps(%rip), %rsi
	jmp	LBB2_7
	.p2align	4, 0x90
LBB2_11:                                ##   in Loop: Header=BB2_7 Depth=1
	movq	%rdx, %rsi
	testb	$1, %r9b
	jne	LBB2_12
LBB2_6:                                 ##   in Loop: Header=BB2_7 Depth=1
	incl	%eax
	cmpl	$255, %eax
	je	LBB2_12
LBB2_7:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_8 Depth 2
                                        ##       Child Loop BB2_9 Depth 3
                                        ##       Child Loop BB2_20 Depth 3
	movl	(%r15), %edi
	movb	$1, %r9b
	xorl	%ecx, %ecx
LBB2_8:                                 ##   Parent Loop BB2_7 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_9 Depth 3
                                        ##       Child Loop BB2_20 Depth 3
	movq	%rsi, %rdx
	leaq	(,%rcx,4), %rsi
	negq	%rsi
	leaq	2(%rcx), %r8
	movl	%edi, %r10d
	.p2align	4, 0x90
LBB2_9:                                 ##   Parent Loop BB2_7 Depth=1
                                        ##     Parent Loop BB2_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	4(%r15,%rcx,4), %edi
	cmpl	%edi, %r10d
	jg	LBB2_19
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=3
	incq	%rcx
	addq	$-4, %rsi
	incq	%r8
	movl	%edi, %r10d
	cmpq	$255, %rcx
	jne	LBB2_9
	jmp	LBB2_11
	.p2align	4, 0x90
LBB2_19:                                ##   in Loop: Header=BB2_8 Depth=2
	movq	%rdx, %rsi
	.p2align	4, 0x90
LBB2_20:                                ##   Parent Loop BB2_7 Depth=1
                                        ##     Parent Loop BB2_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%edi, -8(%r15,%r8,4)
	movl	%r10d, -4(%r15,%r8,4)
	cmpq	$256, %r8                       ## imm = 0x100
	je	LBB2_5
## %bb.21:                              ##   in Loop: Header=BB2_20 Depth=3
	incq	%rsi
	movl	(%r15,%r8,4), %edi
	incq	%r8
	cmpl	%edi, %r10d
	jg	LBB2_20
## %bb.22:                              ##   in Loop: Header=BB2_8 Depth=2
	movq	%rsi, _swaps(%rip)
	leaq	-1(%r8), %rcx
	xorl	%r9d, %r9d
	cmpq	$256, %r8                       ## imm = 0x100
	jne	LBB2_8
	jmp	LBB2_6
	.p2align	4, 0x90
LBB2_5:                                 ##   in Loop: Header=BB2_7 Depth=1
	subq	%rcx, %rdx
	addq	$255, %rdx
	movq	%rdx, _swaps(%rip)
	movq	%rdx, %rsi
	jmp	LBB2_6
LBB2_12:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB2_13:                                ## =>This Inner Loop Header: Depth=1
	movl	(%r15,%r14,4), %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	cmpq	$256, %r14                      ## imm = 0x100
	jne	LBB2_13
## %bb.14:
	movl	$2, %eax
	.p2align	4, 0x90
LBB2_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-8(%r15,%rax,4), %ecx
	cmpl	-4(%r15,%rax,4), %ecx
	jg	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_15 Depth=1
	cmpq	$256, %rax                      ## imm = 0x100
	je	LBB2_23
## %bb.17:                              ##   in Loop: Header=BB2_15 Depth=1
	movl	-4(%r15,%rax,4), %ecx
	leaq	2(%rax), %rdx
	cmpl	(%r15,%rax,4), %ecx
	movq	%rdx, %rax
	jle	LBB2_15
LBB2_18:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %ebx
	jmp	LBB2_24
LBB2_23:
	movq	_swaps(%rip), %rsi
	leaq	L_.str.3(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
LBB2_24:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_swaps                          ## @swaps
.zerofill __DATA,__common,_swaps,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"DATA DUMP:\n"

L_.str.1:                               ## @.str.1
	.asciz	"  data[%u] = %d\n"

	.comm	_data,1024,4                    ## @data
L_.str.2:                               ## @.str.2
	.asciz	"ERROR: data is not properly sorted.\n"

L_.str.3:                               ## @.str.3
	.asciz	"INFO: %lu swaps executed.\n"

L_.str.4:                               ## @.str.4
	.asciz	"INFO: data is properly sorted.\n"

.subsections_via_symbols
