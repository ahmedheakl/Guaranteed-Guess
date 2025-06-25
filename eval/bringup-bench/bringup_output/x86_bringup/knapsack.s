	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_max                            ## -- Begin function max
	.p2align	4, 0x90
_max:                                   ## @max
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	cmpl	%esi, %edi
	cmovgl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_knapSack                       ## -- Begin function knapSack
	.p2align	4, 0x90
_knapSack:                              ## @knapSack
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$-1004, %rdx                    ## imm = 0xFC14
	xorl	%eax, %eax
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	incq	%rax
	addq	$1004, %rdx                     ## imm = 0x3EC
	cmpq	$51, %rax
	je	LBB1_9
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
	xorl	%ecx, %ecx
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_2 Depth=2
	movl	(%rdx,%rcx,4), %r8d
LBB1_7:                                 ##   in Loop: Header=BB1_2 Depth=2
	movl	%r8d, 1004(%rdx,%rcx,4)
	incq	%rcx
	cmpq	$251, %rcx
	je	LBB1_8
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%r8d, %r8d
	testq	%rax, %rax
	je	LBB1_7
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=2
	testq	%rcx, %rcx
	je	LBB1_7
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=2
	movslq	-4(%rdi,%rax,4), %r8
	cmpq	%r8, %rcx
	jl	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_2 Depth=2
	shlq	$2, %r8
	leaq	(%rdx,%rcx,4), %r9
	subq	%r8, %r9
	movl	(%r9), %r8d
	addl	-4(%rsi,%rax,4), %r8d
	movl	(%rdx,%rcx,4), %r9d
	cmpl	%r9d, %r8d
	cmovlel	%r9d, %r8d
	jmp	LBB1_7
LBB1_9:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$51224, %eax                    ## imm = 0xC818
	callq	____chkstk_darwin
	subq	%rax, %rsp
	popq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-52268(%rbp), %rax
	xorl	%ecx, %ecx
	leaq	_wt(%rip), %r15
	leaq	_val(%rip), %r12
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	incq	%rcx
	addq	$1004, %rax                     ## imm = 0x3EC
	cmpq	$51, %rcx
	je	LBB2_9
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	xorl	%edx, %edx
	jmp	LBB2_2
	.p2align	4, 0x90
LBB2_6:                                 ##   in Loop: Header=BB2_2 Depth=2
	movl	(%rax,%rdx,4), %esi
LBB2_7:                                 ##   in Loop: Header=BB2_2 Depth=2
	movl	%esi, 1004(%rax,%rdx,4)
	incq	%rdx
	cmpq	$251, %rdx
	je	LBB2_8
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	testq	%rcx, %rcx
	je	LBB2_7
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	testq	%rdx, %rdx
	je	LBB2_7
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=2
	movslq	-4(%r15,%rcx,4), %rsi
	cmpq	%rsi, %rdx
	jl	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_2 Depth=2
	shlq	$2, %rsi
	leaq	(%rax,%rdx,4), %rdi
	subq	%rsi, %rdi
	movl	(%rdi), %esi
	addl	-4(%r12,%rcx,4), %esi
	movl	(%rax,%rdx,4), %edi
	cmpl	%edi, %esi
	cmovlel	%edi, %esi
	jmp	LBB2_7
LBB2_9:
	movl	-64(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$250, %r13d
	movl	$50, %ebx
	movl	$49196, %r14d                   ## imm = 0xC02C
	jmp	LBB2_10
	.p2align	4, 0x90
LBB2_12:                                ##   in Loop: Header=BB2_10 Depth=1
	decq	%rbx
	addq	$-1004, %r14                    ## imm = 0xFC14
	testq	%rbx, %rbx
	je	LBB2_13
LBB2_10:                                ## =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rax
	leaq	-51264(,%rax,4), %rax
	addq	%rbp, %rax
	movl	1004(%r14,%rax), %ecx
	cmpl	(%r14,%rax), %ecx
	je	LBB2_12
## %bb.11:                              ##   in Loop: Header=BB2_10 Depth=1
	movl	-4(%r15,%rbx,4), %edx
	movl	-4(%r12,%rbx,4), %ecx
	leaq	L_.str.2(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	subl	-4(%r15,%rbx,4), %r13d
	jmp	LBB2_12
LBB2_13:
	movl	$250, %esi
	subl	%r13d, %esi
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB2_15
## %bb.14:
	xorl	%eax, %eax
	addq	$51224, %rsp                    ## imm = 0xC818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_15:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_val                            ## @val
	.p2align	4, 0x0
_val:
	.long	27                              ## 0x1b
	.long	34                              ## 0x22
	.long	9                               ## 0x9
	.long	22                              ## 0x16
	.long	8                               ## 0x8
	.long	17                              ## 0x11
	.long	22                              ## 0x16
	.long	21                              ## 0x15
	.long	23                              ## 0x17
	.long	19                              ## 0x13
	.long	7                               ## 0x7
	.long	36                              ## 0x24
	.long	11                              ## 0xb
	.long	42                              ## 0x2a
	.long	37                              ## 0x25
	.long	16                              ## 0x10
	.long	10                              ## 0xa
	.long	26                              ## 0x1a
	.long	10                              ## 0xa
	.long	50                              ## 0x32
	.long	23                              ## 0x17
	.long	46                              ## 0x2e
	.long	37                              ## 0x25
	.long	3                               ## 0x3
	.long	14                              ## 0xe
	.long	16                              ## 0x10
	.long	35                              ## 0x23
	.long	14                              ## 0xe
	.long	15                              ## 0xf
	.long	44                              ## 0x2c
	.long	49                              ## 0x31
	.long	2                               ## 0x2
	.long	45                              ## 0x2d
	.long	3                               ## 0x3
	.long	15                              ## 0xf
	.long	1                               ## 0x1
	.long	34                              ## 0x22
	.long	44                              ## 0x2c
	.long	19                              ## 0x13
	.long	25                              ## 0x19
	.long	43                              ## 0x2b
	.long	28                              ## 0x1c
	.long	26                              ## 0x1a
	.long	4                               ## 0x4
	.long	30                              ## 0x1e
	.long	24                              ## 0x18
	.long	49                              ## 0x31
	.long	11                              ## 0xb
	.long	48                              ## 0x30
	.long	13                              ## 0xd

	.globl	_wt                             ## @wt
	.p2align	4, 0x0
_wt:
	.long	23                              ## 0x17
	.long	47                              ## 0x2f
	.long	22                              ## 0x16
	.long	15                              ## 0xf
	.long	42                              ## 0x2a
	.long	30                              ## 0x1e
	.long	15                              ## 0xf
	.long	32                              ## 0x20
	.long	47                              ## 0x2f
	.long	33                              ## 0x21
	.long	15                              ## 0xf
	.long	38                              ## 0x26
	.long	44                              ## 0x2c
	.long	7                               ## 0x7
	.long	16                              ## 0x10
	.long	34                              ## 0x22
	.long	30                              ## 0x1e
	.long	33                              ## 0x21
	.long	3                               ## 0x3
	.long	2                               ## 0x2
	.long	43                              ## 0x2b
	.long	31                              ## 0x1f
	.long	46                              ## 0x2e
	.long	17                              ## 0x11
	.long	30                              ## 0x1e
	.long	1                               ## 0x1
	.long	34                              ## 0x22
	.long	21                              ## 0x15
	.long	30                              ## 0x1e
	.long	21                              ## 0x15
	.long	29                              ## 0x1d
	.long	21                              ## 0x15
	.long	36                              ## 0x24
	.long	14                              ## 0xe
	.long	18                              ## 0x12
	.long	21                              ## 0x15
	.long	13                              ## 0xd
	.long	3                               ## 0x3
	.long	27                              ## 0x1b
	.long	44                              ## 0x2c
	.long	33                              ## 0x21
	.long	11                              ## 0xb
	.long	9                               ## 0x9
	.long	31                              ## 0x1f
	.long	40                              ## 0x28
	.long	40                              ## 0x28
	.long	30                              ## 0x1e
	.long	9                               ## 0x9
	.long	41                              ## 0x29
	.long	31                              ## 0x1f

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Max value: %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Selected packs:\n"

L_.str.2:                               ## @.str.2
	.asciz	"  Package %d with wt=%d and val=%d\n"

L_.str.3:                               ## @.str.3
	.asciz	"Total weight: %d\n"

.subsections_via_symbols
