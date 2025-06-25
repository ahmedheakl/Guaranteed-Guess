	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function main
LCPI0_0:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_1:
	.long	0                               ## 0x0
	.long	2                               ## 0x2
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_2:
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_3:
	.long	0                               ## 0x0
	.long	4                               ## 0x4
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_4:
	.long	0                               ## 0x0
	.long	5                               ## 0x5
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_5:
	.long	0                               ## 0x0
	.long	6                               ## 0x6
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_6:
	.long	0                               ## 0x0
	.long	7                               ## 0x7
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_7:
	.long	0                               ## 0x0
	.long	8                               ## 0x8
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_8:
	.long	0                               ## 0x0
	.long	9                               ## 0x9
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_9:
	.long	0                               ## 0x0
	.long	10                              ## 0xa
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_0(%rip), %xmm0            ## xmm0 = [0,1,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$1, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	leaq	L_.str.2(%rip), %rbx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_1(%rip), %xmm0            ## xmm0 = [0,2,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$2, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_2(%rip), %xmm0            ## xmm0 = [0,3,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$3, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_3(%rip), %xmm0            ## xmm0 = [0,4,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$4, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_4(%rip), %xmm0            ## xmm0 = [0,5,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$5, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_5(%rip), %xmm0            ## xmm0 = [0,6,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$6, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$6, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_6(%rip), %xmm0            ## xmm0 = [0,7,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$7, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_7(%rip), %xmm0            ## xmm0 = [0,8,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$8, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$8, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_8(%rip), %xmm0            ## xmm0 = [0,9,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$9, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$9, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movaps	LCPI0_9(%rip), %xmm0            ## xmm0 = [0,10,0,0]
	movaps	%xmm0, _num(%rip)
	movq	$0, _count(%rip)
	movl	$10, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	_mov
	movq	_count(%rip), %rdx
	movq	%rbx, %rdi
	movl	$10, %esi
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
	.p2align	4, 0x90                         ## -- Begin function mov
_mov:                                   ## @mov
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
                                        ## kill: def $edx killed $edx def $rdx
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	movl	%esi, %ebx
	cmpl	$1, %edi
	jne	LBB1_3
## %bb.1:
	movq	_count(%rip), %rax
	movslq	-48(%rbp), %r14                 ## 4-byte Folded Reload
	jmp	LBB1_2
LBB1_3:
	movl	%edi, %r15d
	movslq	-48(%rbp), %r14                 ## 4-byte Folded Reload
	decl	%r15d
	leaq	_num(%rip), %r13
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %r12d
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	addl	%r12d, %eax
	movl	$6, %ebx
	subl	%eax, %ebx
	movl	%r15d, %edi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	_mov
	movslq	%r12d, %rax
	decl	(%r13,%rax,4)
	incl	(%r13,%r14,4)
	movq	_count(%rip), %rax
	incq	%rax
	movq	%rax, _count(%rip)
	decl	%r15d
	jne	LBB1_4
LBB1_2:
	movslq	%ebx, %rcx
	leaq	_num(%rip), %rdx
	decl	(%rdx,%rcx,4)
	incl	(%rdx,%r14,4)
	incq	%rax
	movq	%rax, _count(%rip)
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Towers of Hanoi Puzzle Test Program\n"

L_.str.1:                               ## @.str.1
	.asciz	"Disks     Moves\n"

.zerofill __DATA,__bss,_num,16,4        ## @num
.zerofill __DATA,__bss,_count,8,3       ## @count
L_.str.2:                               ## @.str.2
	.asciz	"%3d  %10ld\n"

.subsections_via_symbols
