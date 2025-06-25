	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_int_cmp                        ## -- Begin function int_cmp
	.p2align	4, 0x90
_int_cmp:                               ## @int_cmp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	subl	(%rsi), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_int_array                ## -- Begin function print_int_array
	.p2align	4, 0x90
_print_int_array:                       ## @print_int_array
	.cfi_startproc
## %bb.0:
	testq	%rsi, %rsi
	je	LBB1_4
## %bb.1:
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	L_.str(%rip), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r14,%r12,4), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r12
	cmpq	%r12, %rbx
	jne	LBB1_2
## %bb.3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
LBB1_4:
	movl	$10, %edi
	jmp	_libmin_putc                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_sort_integers_example          ## -- Begin function sort_integers_example
	.p2align	4, 0x90
_sort_integers_example:                 ## @sort_integers_example
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movups	l___const.sort_integers_example.numbers+28(%rip), %xmm0
	movups	%xmm0, -36(%rbp)
	movaps	l___const.sort_integers_example.numbers+16(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	l___const.sort_integers_example.numbers(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	L_.str.1(%rip), %rdi
	callq	_libmin_puts
	leaq	L_.str(%rip), %rbx
	movq	%rbx, %rdi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$23, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$12, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$43, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$-4, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%rbx, %rdi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$10, %edi
	callq	_libmin_putc
	leaq	_int_cmp(%rip), %rcx
	leaq	-64(%rbp), %rdi
	movl	$11, %esi
	movl	$4, %edx
	callq	_libmin_qsort
	movl	-64(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-60(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-56(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-52(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-48(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-40(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-36(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-32(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-28(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	-24(%rbp), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$10, %edi
	callq	_libmin_putc
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB2_2
## %bb.1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB2_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_cstring_cmp                    ## -- Begin function cstring_cmp
	.p2align	4, 0x90
_cstring_cmp:                           ## @cstring_cmp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	popq	%rbp
	jmp	_libmin_strcmp                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_print_cstring_array            ## -- Begin function print_cstring_array
	.p2align	4, 0x90
_print_cstring_array:                   ## @print_cstring_array
	.cfi_startproc
## %bb.0:
	testq	%rsi, %rsi
	je	LBB4_4
## %bb.1:
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	L_.str.2(%rip), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%r12,8), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r12
	cmpq	%r12, %rbx
	jne	LBB4_2
## %bb.3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
LBB4_4:
	movl	$10, %edi
	jmp	_libmin_putc                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_sort_cstrings_example          ## -- Begin function sort_cstrings_example
	.p2align	4, 0x90
_sort_cstrings_example:                 ## @sort_cstrings_example
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movaps	l___const.sort_cstrings_example.strings+32(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	l___const.sort_cstrings_example.strings+16(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	l___const.sort_cstrings_example.strings(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	L_.str.9(%rip), %rdi
	callq	_libmin_puts
	leaq	L_.str.2(%rip), %rbx
	leaq	L_.str.3(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.4(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.5(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.6(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.7(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.8(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$10, %edi
	callq	_libmin_putc
	leaq	_cstring_cmp(%rip), %rcx
	leaq	-64(%rbp), %rdi
	movl	$6, %esi
	movl	$8, %edx
	callq	_libmin_qsort
	movq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-56(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$10, %edi
	callq	_libmin_putc
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB5_2
## %bb.1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB5_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function struct_cmp_by_price
LCPI6_0:
	.long	0xc2c80000                      ## float -100
LCPI6_1:
	.long	0x42c80000                      ## float 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_struct_cmp_by_price
	.p2align	4, 0x90
_struct_cmp_by_price:                   ## @struct_cmp_by_price
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	16(%rdi), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	16(%rsi), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	mulss	LCPI6_0(%rip), %xmm1
	mulss	LCPI6_1(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_struct_cmp_by_product          ## -- Begin function struct_cmp_by_product
	.p2align	4, 0x90
_struct_cmp_by_product:                 ## @struct_cmp_by_product
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_libmin_strcmp                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_print_struct_array             ## -- Begin function print_struct_array
	.p2align	4, 0x90
_print_struct_array:                    ## @print_struct_array
	.cfi_startproc
## %bb.0:
	testq	%rsi, %rsi
	je	LBB8_4
## %bb.1:
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	L_.str.10(%rip), %r15
	.p2align	4, 0x90
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	movss	16(%r14), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	movq	%r14, %rsi
	movb	$1, %al
	callq	_libmin_printf
	addq	$20, %r14
	decq	%rbx
	jne	LBB8_2
## %bb.3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
LBB8_4:
	leaq	L_.str.11(%rip), %rdi
	jmp	_libmin_puts                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function sort_structs_example
LCPI9_0:
	.quad	0x4072b00000000000              ## double 299
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sort_structs_example
	.p2align	4, 0x90
_sort_structs_example:                  ## @sort_structs_example
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
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movaps	l___const.sort_structs_example.structs+96(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	l___const.sort_structs_example.structs+80(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	l___const.sort_structs_example.structs+64(%rip), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	l___const.sort_structs_example.structs+48(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	l___const.sort_structs_example.structs+32(%rip), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	l___const.sort_structs_example.structs+16(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	l___const.sort_structs_example.structs(%rip), %xmm0
	movaps	%xmm0, -176(%rbp)
	movabsq	$4489188109421903872, %rax      ## imm = 0x3E4CCCCD00000000
	movq	%rax, -64(%rbp)
	leaq	-96(%rbp), %r14
	leaq	L_.str.12(%rip), %rdi
	callq	_libmin_puts
	leaq	L_.str.10(%rip), %rbx
	leaq	-176(%rbp), %r15
	movsd	LCPI9_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movb	$1, %al
	callq	_libmin_printf
	leaq	-156(%rbp), %rsi
	movss	-140(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movb	$1, %al
	callq	_libmin_printf
	leaq	-136(%rbp), %rsi
	movss	-120(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movb	$1, %al
	callq	_libmin_printf
	leaq	-116(%rbp), %r13
	movss	-100(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movb	$1, %al
	callq	_libmin_printf
	leaq	-76(%rbp), %r14
	movss	-60(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movb	$1, %al
	callq	_libmin_printf
	leaq	L_.str.11(%rip), %r12
	movq	%r12, %rdi
	callq	_libmin_puts
	leaq	_struct_cmp_by_price(%rip), %rcx
	movl	$6, %esi
	movl	$20, %edx
	movq	%r15, %rdi
	callq	_libmin_qsort
	movss	-160(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-140(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-156(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-120(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-136(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-100(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-96(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-60(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movq	%r12, %rdi
	callq	_libmin_puts
	leaq	L_.str.13(%rip), %rdi
	callq	_libmin_puts
	leaq	_struct_cmp_by_product(%rip), %rcx
	movl	$6, %esi
	movl	$20, %edx
	movq	%r15, %rdi
	callq	_libmin_qsort
	movss	-160(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-140(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-156(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-120(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-136(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-100(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	-96(%rbp), %rsi
	movb	$1, %al
	callq	_libmin_printf
	movss	-60(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movb	$1, %al
	callq	_libmin_printf
	movq	%r12, %rdi
	callq	_libmin_puts
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB9_2
## %bb.1:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_2:
	callq	___stack_chk_fail
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
	callq	_sort_integers_example
	callq	_sort_cstrings_example
	callq	_sort_structs_example
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d | "

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const.sort_integers_example.numbers
l___const.sort_integers_example.numbers:
	.long	7                               ## 0x7
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	1                               ## 0x1
	.long	4294967295                      ## 0xffffffff
	.long	23                              ## 0x17
	.long	12                              ## 0xc
	.long	43                              ## 0x2b
	.long	2                               ## 0x2
	.long	4294967292                      ## 0xfffffffc
	.long	5                               ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"*** Integer sorting..."

L_.str.2:                               ## @.str.2
	.asciz	"%s | "

L_.str.3:                               ## @.str.3
	.asciz	"Zorro"

L_.str.4:                               ## @.str.4
	.asciz	"Alex"

L_.str.5:                               ## @.str.5
	.asciz	"Celine"

L_.str.6:                               ## @.str.6
	.asciz	"Bill"

L_.str.7:                               ## @.str.7
	.asciz	"Forest"

L_.str.8:                               ## @.str.8
	.asciz	"Dexter"

	.section	__DATA,__const
	.p2align	4, 0x0                          ## @__const.sort_cstrings_example.strings
l___const.sort_cstrings_example.strings:
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8

	.section	__TEXT,__cstring,cstring_literals
L_.str.9:                               ## @.str.9
	.asciz	"*** String sorting..."

L_.str.10:                              ## @.str.10
	.asciz	"[ product: %s \t price: $%.2f ]\n"

L_.str.11:                              ## @.str.11
	.asciz	"--"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const.sort_structs_example.structs
l___const.sort_structs_example.structs:
	.asciz	"mp3 player\000\000\000\000\000"
	.long	0x43958000                      ## float 299
	.asciz	"plasma tv\000\000\000\000\000\000"
	.long	0x45098000                      ## float 2200
	.asciz	"notebook\000\000\000\000\000\000\000"
	.long	0x44a28000                      ## float 1300
	.asciz	"smartphone\000\000\000\000\000"
	.long	0x43f9feb8                      ## float 499.98999
	.asciz	"dvd player\000\000\000\000\000"
	.long	0x43160000                      ## float 150
	.asciz	"matches\000\000\000\000\000\000\000\000"
	.long	0x3e4ccccd                      ## float 0.200000003

	.section	__TEXT,__cstring,cstring_literals
L_.str.12:                              ## @.str.12
	.asciz	"*** Struct sorting (price)..."

L_.str.13:                              ## @.str.13
	.asciz	"*** Struct sorting (product)..."

.subsections_via_symbols
