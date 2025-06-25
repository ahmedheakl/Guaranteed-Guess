	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_HSORT                          ## -- Begin function HSORT
	.p2align	4, 0x90
_HSORT:                                 ## @HSORT
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r12
	movzbl	_bplong(%rip), %r14d
	imulq	%rdi, %r14
	leaq	-1(%rdi), %rbx
	cmpq	$2048, %rdi                     ## imm = 0x800
	jl	LBB0_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB0_3
LBB0_2:
	cmpq	$2, %r12
	jl	LBB0_5
LBB0_3:
	movl	$47, %ecx
	movl	$1, %esi
	movabsq	$6218754216124635673, %r8       ## imm = 0x564D7402DD925A19
	leaq	_base(%rip), %rdi
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	imulq	$106, %rcx, %rcx
	addq	$1283, %rcx                     ## imm = 0x503
	movq	%rcx, %rax
	imulq	%r8
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$11, %rdx
	addq	%rax, %rdx
	imulq	$6075, %rdx, %rax               ## imm = 0x17BB
	subq	%rax, %rcx
	imull	$1001, %ecx, %eax               ## imm = 0x3E9
	cltq
	imulq	$1447916547, %rax, %rax         ## imm = 0x564D7403
	movq	%rax, %rdx
	sarq	$43, %rdx
	shrq	$63, %rax
	addl	%edx, %eax
	incl	%eax
	movq	%rax, (%rdi,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r12
	jne	LBB0_4
LBB0_5:
	shlq	$3, %r14
	movq	%rbx, %r8
	sarq	%r8
	incq	%r8
	leaq	_base(%rip), %r13
	cmpq	$2, %r8
	jl	LBB0_12
	jmp	LBB0_7
	.p2align	4, 0x90
LBB0_25:
	movq	%rcx, (%r13,%rsi,8)
	cmpq	$2, %r8
	jl	LBB0_12
LBB0_7:
	movq	-8(%r13,%r8,8), %rcx
	decq	%r8
LBB0_8:
	leaq	(%r8,%r8), %rdi
	movq	%r8, %rsi
	cmpq	%rbx, %rdi
	jg	LBB0_25
## %bb.9:
	movq	%r8, %rdx
	.p2align	4, 0x90
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rdi
	jge	LBB0_11
## %bb.21:                              ##   in Loop: Header=BB0_10 Depth=1
	movq	(%r13,%rdi,8), %rax
	xorl	%esi, %esi
	cmpq	8(%r13,%rdi,8), %rax
	setl	%sil
	orq	%rdi, %rsi
	jmp	LBB0_22
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_10 Depth=1
	movq	%rdi, %rsi
LBB0_22:                                ##   in Loop: Header=BB0_10 Depth=1
	movq	(%r13,%rsi,8), %rdi
	cmpq	%rdi, %rcx
	jge	LBB0_23
## %bb.24:                              ##   in Loop: Header=BB0_10 Depth=1
	movq	%rdi, (%r13,%rdx,8)
	leaq	(%rsi,%rsi), %rdi
	movq	%rsi, %rdx
	cmpq	%rbx, %rdi
	jle	LBB0_10
	jmp	LBB0_25
	.p2align	4, 0x90
LBB0_23:
	movq	%rdx, %rsi
	movq	%rcx, (%r13,%rdx,8)
	cmpq	$2, %r8
	jge	LBB0_7
LBB0_12:
	movq	(%r13,%rbx,8), %rcx
	movq	_base+8(%rip), %rdx
	movq	%rdx, (%r13,%rbx,8)
	decq	%rbx
	cmpq	$1, %rbx
	jne	LBB0_8
## %bb.13:
	movq	%rcx, _base+8(%rip)
	testq	%r15, %r15
	je	LBB0_15
## %bb.14:
	leaq	L_.str.1(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB0_15:
	cmpq	$3, %r12
	jl	LBB0_20
## %bb.16:
	addq	$-2, %r12
	leaq	L_.str.2(%rip), %r14
	xorl	%ebx, %ebx
	jmp	LBB0_17
	.p2align	4, 0x90
LBB0_19:                                ##   in Loop: Header=BB0_17 Depth=1
	cmpq	%rbx, %r12
	je	LBB0_20
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	movq	(%r13,%rbx,8), %rcx
	incq	%rbx
	cmpq	8(%r13,%rax,8), %rcx
	jle	LBB0_19
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB0_19
LBB0_20:
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	movb	$1, _bplong(%rip)
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	_bplong(%rip), %esi
	shlq	$3, %rsi
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$1024, %edi                     ## imm = 0x400
	movl	$1, %esi
	callq	_HSORT
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_bplong,1,3      ## @bplong
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"base buffer overflow!\n"

.zerofill __DATA,__bss,_base,16384,4    ## @base
L_.str.1:                               ## @.str.1
	.asciz	"   %10ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"ERROR: base array is not properly sorted!\n"

L_.str.3:                               ## @.str.3
	.asciz	"INFO: base array is properly sorted!\n"

L_.str.4:                               ## @.str.4
	.asciz	"\n   Heap Sort C Program\n"

L_.str.5:                               ## @.str.5
	.asciz	"   Size of long (bytes): %ld\n\n"

L_.str.6:                               ## @.str.6
	.asciz	"   Array Size (bytes)\n"

.subsections_via_symbols
