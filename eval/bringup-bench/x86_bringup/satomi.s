	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_satomi_create                  ## -- Begin function satomi_create
	.p2align	4, 0x90
_satomi_create:                         ## @satomi_create
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, %edi
	movl	$192, %esi
	callq	_libmin_calloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	$184, %rdi
	callq	_satomi_default_opts
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	xorl	%edi, %edi
	callq	_cdb_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	xorl	%edi, %edi
	callq	_vec_wl_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	xorl	%edi, %edi
	callq	_vec_ui8_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 56(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 80(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 96(%rax)
	xorl	%edi, %edi
	callq	_vec_ui8_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 104(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 112(%rax)
	xorl	%edi, %edi
	callq	_vec_ui32_alloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_default_opts            ## -- Begin function satomi_default_opts
	.p2align	4, 0x90
_satomi_default_opts:                   ## @satomi_default_opts
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_alloc
_vec_ui32_alloc:                        ## @vec_ui32_alloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jbe	LBB2_3
## %bb.1:
	cmpl	$16, -4(%rbp)
	jae	LBB2_3
## %bb.2:
	movl	$16, -4(%rbp)
LBB2_3:
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	LBB2_5
## %bb.4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	shlq	$2, %rdi
	callq	_libmin_malloc
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB2_6
LBB2_5:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB2_6
LBB2_6:
	movq	-24(%rbp), %rcx                 ## 8-byte Reload
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function cdb_alloc
_cdb_alloc:                             ## @cdb_alloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$1, %edi
	movl	$24, %esi
	callq	_libmin_calloc
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	ja	LBB3_2
## %bb.1:
	movl	$1048576, -4(%rbp)              ## imm = 0x100000
LBB3_2:
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	_cdb_grow
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_wl_alloc
_vec_wl_alloc:                          ## @vec_wl_alloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-16(%rbp), %rax
	movl	$4, (%rax)
	jmp	LBB4_3
LBB4_2:
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
LBB4_3:
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	imulq	$24, %rax, %rdi
	movl	$24, %esi
	callq	_libmin_calloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_alloc
_vec_ui8_alloc:                         ## @vec_ui8_alloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$16, %edi
	callq	_libmin_malloc
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jbe	LBB5_3
## %bb.1:
	cmpl	$16, -4(%rbp)
	jae	LBB5_3
## %bb.2:
	movl	$16, -4(%rbp)
LBB5_3:
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	LBB5_5
## %bb.4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	shlq	$0, %rdi
	callq	_libmin_malloc
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB5_6
LBB5_5:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB5_6
LBB5_6:
	movq	-24(%rbp), %rcx                 ## 8-byte Reload
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_destroy                 ## -- Begin function satomi_destroy
	.p2align	4, 0x90
_satomi_destroy:                        ## @satomi_destroy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_cdb_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_vec_wl_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_vec_ui8_free
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	_vec_ui8_free
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	_vec_ui32_free
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	_vec_ui32_free
## %bb.1:
	movq	-8(%rbp), %rdi
	callq	_libmin_free
	movq	$0, -8(%rbp)
## %bb.2:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_free
_vec_ui32_free:                         ## @vec_ui32_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB7_4
## %bb.1:
	jmp	LBB7_2
LBB7_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_libmin_free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
## %bb.3:
	jmp	LBB7_4
LBB7_4:
	jmp	LBB7_5
LBB7_5:
	movq	-8(%rbp), %rdi
	callq	_libmin_free
	movq	$0, -8(%rbp)
## %bb.6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function cdb_free
_cdb_free:                              ## @cdb_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
## %bb.1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_libmin_free
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
## %bb.2:
	jmp	LBB8_3
LBB8_3:
	movq	-8(%rbp), %rdi
	callq	_libmin_free
	movq	$0, -8(%rbp)
## %bb.4:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_wl_free
_vec_wl_free:                           ## @vec_wl_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB9_4
## %bb.2:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %eax
                                        ## kill: def $rax killed $eax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	_watch_list_free
## %bb.3:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB9_1
LBB9_4:
	jmp	LBB9_5
LBB9_5:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_libmin_free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
## %bb.6:
	jmp	LBB9_7
LBB9_7:
	movq	-8(%rbp), %rdi
	callq	_libmin_free
	movq	$0, -8(%rbp)
## %bb.8:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_free
_vec_ui8_free:                          ## @vec_ui8_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB10_4
## %bb.1:
	jmp	LBB10_2
LBB10_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_libmin_free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
## %bb.3:
	jmp	LBB10_4
LBB10_4:
	jmp	LBB10_5
LBB10_5:
	movq	-8(%rbp), %rdi
	callq	_libmin_free
	movq	$0, -8(%rbp)
## %bb.6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_configure               ## -- Begin function satomi_configure
	.p2align	4, 0x90
_satomi_configure:                      ## @satomi_configure
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB11_2
## %bb.1:
	jmp	LBB11_3
LBB11_2:
	movl	$1, %edi
	callq	_libmin_fail
LBB11_3:
	movq	-8(%rbp), %rdi
	addq	$184, %rdi
	movq	-16(%rbp), %rsi
	movl	$1, %edx
	callq	_libmin_memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_add_variable            ## -- Begin function satomi_add_variable
	.p2align	4, 0x90
_satomi_add_variable:                   ## @satomi_add_variable
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_vec_ui32_size
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_vec_wl_push
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_vec_wl_push
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	xorl	%esi, %esi
	callq	_vec_ui32_push_back
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movl	$3, %esi
	callq	_vec_ui8_push_back
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$4294967295, %esi               ## imm = 0xFFFFFFFF
	callq	_vec_ui32_push_back
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	xorl	%esi, %esi
	callq	_vec_ui8_push_back
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_vec_ui32_push_back
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_size
_vec_ui32_size:                         ## @vec_ui32_size
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function vec_wl_push
LCPI14_0:
	.quad	0x4130000000000000              ## double 1048576
LCPI14_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_vec_wl_push:                           ## @vec_wl_push
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	LBB14_7
## %bb.1:
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	jae	LBB14_3
## %bb.2:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shll	$1, %eax
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	jmp	LBB14_4
LBB14_3:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$1, %eax
	imull	$3, %eax, %eax
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
LBB14_4:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %eax
                                        ## kill: def $rax killed $eax
	imulq	$24, %rax, %rsi
	callq	_libmin_realloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	imulq	$24, %rax, %rdx
	xorl	%esi, %esi
	callq	_libmin_memset
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB14_6
## %bb.5:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm0
	movsd	LCPI14_0(%rip), %xmm1           ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	-12(%rbp), %eax
                                        ## kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm2
	movsd	LCPI14_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	LCPI14_0(%rip), %xmm2           ## xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	leaq	L_.str.13(%rip), %rdi
	movb	$2, %al
	callq	_libmin_printf
LBB14_6:
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
LBB14_7:
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_push_back
_vec_ui32_push_back:                    ## @vec_ui32_push_back
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	LBB15_5
## %bb.1:
	movq	-8(%rbp), %rax
	cmpl	$16, (%rax)
	jae	LBB15_3
## %bb.2:
	movq	-8(%rbp), %rdi
	movl	$16, %esi
	callq	_vec_ui32_reserve
	jmp	LBB15_4
LBB15_3:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	shll	$1, %esi
	callq	_vec_ui32_reserve
LBB15_4:
	jmp	LBB15_5
LBB15_5:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_push_back
_vec_ui8_push_back:                     ## @vec_ui8_push_back
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	LBB16_5
## %bb.1:
	movq	-8(%rbp), %rax
	cmpl	$16, (%rax)
	jae	LBB16_3
## %bb.2:
	movq	-8(%rbp), %rdi
	movl	$16, %esi
	callq	_vec_ui8_reserve
	jmp	LBB16_4
LBB16_3:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	shll	$1, %esi
	callq	_vec_ui8_reserve
LBB16_4:
	jmp	LBB16_5
LBB16_5:
	movb	-9(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_add_clause              ## -- Begin function satomi_add_clause
	.p2align	4, 0x90
_satomi_add_clause:                     ## @satomi_add_clause
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	$4, %edx
	leaq	_stm_ui32_comp_desc(%rip), %rcx
	callq	_libmin_qsort
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	_lit2var
	movl	%eax, -32(%rbp)
LBB17_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_vec_ui32_size
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jb	LBB17_3
## %bb.2:                               ##   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_satomi_add_variable
	jmp	LBB17_1
LBB17_3:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_vec_ui32_clear
	movl	$-1, -40(%rbp)
	movl	$0, -44(%rbp)
LBB17_4:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	LBB17_14
## %bb.5:                               ##   in Loop: Header=BB17_4 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	movl	-40(%rbp), %edi
	callq	_lit_neg
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	je	LBB17_7
## %bb.6:                               ##   in Loop: Header=BB17_4 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %esi
	callq	_lit_value
	movzbl	%al, %eax
	cmpl	$0, %eax
	jne	LBB17_8
LBB17_7:
	movl	$1, -4(%rbp)
	jmp	LBB17_19
LBB17_8:                                ##   in Loop: Header=BB17_4 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	cmpl	-40(%rbp), %eax
	je	LBB17_11
## %bb.9:                               ##   in Loop: Header=BB17_4 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	callq	_lit2var
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_var_value
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	LBB17_11
## %bb.10:                              ##   in Loop: Header=BB17_4 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %esi
	callq	_vec_ui32_push_back
LBB17_11:                               ##   in Loop: Header=BB17_4 Depth=1
	jmp	LBB17_12
LBB17_12:                               ##   in Loop: Header=BB17_4 Depth=1
	jmp	LBB17_13
LBB17_13:                               ##   in Loop: Header=BB17_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB17_4
LBB17_14:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_vec_ui32_size
	cmpl	$0, %eax
	jne	LBB17_16
## %bb.15:
	movl	$0, -4(%rbp)
	jmp	LBB17_19
LBB17_16:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_vec_ui32_size
	cmpl	$1, %eax
	jne	LBB17_18
## %bb.17:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	xorl	%esi, %esi
	callq	_vec_ui32_at
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	movl	$4294967295, %edx               ## imm = 0xFFFFFFFF
	callq	_solver_enqueue
	movq	-16(%rbp), %rdi
	callq	_solver_propagate
	cmpl	$-1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB17_19
LBB17_18:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rsi
	callq	_solver_clause_create
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	_clause_watch
	movl	$1, -4(%rbp)
LBB17_19:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function stm_ui32_comp_desc
_stm_ui32_comp_desc:                    ## @stm_ui32_comp_desc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jbe	LBB18_2
## %bb.1:
	movl	$-1, -4(%rbp)
	jmp	LBB18_5
LBB18_2:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	LBB18_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB18_5
LBB18_4:
	movl	$0, -4(%rbp)
LBB18_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function lit2var
_lit2var:                               ## @lit2var
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_clear
_vec_ui32_clear:                        ## @vec_ui32_clear
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function lit_neg
_lit_neg:                               ## @lit_neg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function lit_value
_lit_value:                             ## @lit_value
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	_lit_polarity
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movl	-12(%rbp), %edi
	callq	_lit2var
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_vec_ui8_at
	movb	%al, %cl
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	movzbl	%cl, %ecx
	xorl	%ecx, %eax
                                        ## kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function var_value
_var_value:                             ## @var_value
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_vec_ui8_at
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function solver_enqueue
_solver_enqueue:                        ## @solver_enqueue
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	callq	_lit2var
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)                 ## 4-byte Spill
	movl	-12(%rbp), %edi
	callq	_lit_polarity
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movl	-36(%rbp), %esi                 ## 4-byte Reload
	movzbl	%al, %edx
	callq	_vec_ui8_assign
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	_solver_dlevel
	movq	-32(%rbp), %rdi                 ## 8-byte Reload
	movl	-24(%rbp), %esi                 ## 4-byte Reload
	movl	%eax, %edx
	callq	_vec_ui32_assign
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	_vec_ui32_assign
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_vec_ui32_push_back
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_at
_vec_ui32_at:                           ## @vec_ui32_at
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jb	LBB25_3
## %bb.1:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB25_3
## %bb.2:
	jmp	LBB25_4
LBB25_3:
	movl	$1, %edi
	callq	_libmin_fail
LBB25_4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function clause_watch
_clause_watch:                          ## @clause_watch
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_cdb_handler
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	_lit_neg
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_vec_wl_at
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-32(%rbp), %rsi
	callq	_watch_list_push
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	_lit_neg
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_vec_wl_at
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-40(%rbp), %rsi
	callq	_watch_list_push
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_solve                   ## -- Begin function satomi_solve
	.p2align	4, 0x90
_satomi_solve:                          ## @satomi_solve
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	LBB27_2
## %bb.1:
	jmp	LBB27_3
LBB27_2:
	movl	$1, %edi
	callq	_libmin_fail
LBB27_3:
	movq	-8(%rbp), %rdi
	callq	_solver_search
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_print_stats             ## -- Begin function satomi_print_stats
	.p2align	4, 0x90
_satomi_print_stats:                    ## @satomi_print_stats
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_satomi_print_clauses           ## -- Begin function satomi_print_clauses
	.p2align	4, 0x90
_satomi_print_clauses:                  ## @satomi_print_clauses
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movl	$0, -12(%rbp)
LBB29_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)                 ## 4-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_vec_ui32_size
	movl	-32(%rbp), %ecx                 ## 4-byte Reload
	movl	%eax, %edx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -25(%rbp)                  ## 1-byte Spill
	jae	LBB29_3
## %bb.2:                               ##   in Loop: Header=BB29_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_vec_ui32_at
	movl	%eax, -16(%rbp)
	movb	$1, %al
	movb	%al, -25(%rbp)                  ## 1-byte Spill
LBB29_3:                                ##   in Loop: Header=BB29_1 Depth=1
	movb	-25(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB29_4
	jmp	LBB29_6
LBB29_4:                                ##   in Loop: Header=BB29_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	_clause_read
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_clause_print
## %bb.5:                               ##   in Loop: Header=BB29_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB29_1
LBB29_6:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function clause_read
_clause_read:                           ## @clause_read
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_cdb_handler
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function clause_print
_clause_print:                          ## @clause_print
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movl	$0, -12(%rbp)
LBB31_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	LBB31_4
## %bb.2:                               ##   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	4(%rax,%rcx,4), %esi
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
## %bb.3:                               ##   in Loop: Header=BB31_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB31_1
LBB31_4:
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	addq	$16, %rsp
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
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_satomi_default_opts
LBB32_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdx
	callq	_libmin_getopt
	movl	%eax, -52(%rbp)
	cmpl	$-1, %eax
	je	LBB32_8
## %bb.2:                               ##   in Loop: Header=BB32_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	subl	$104, %eax
	je	LBB32_5
	jmp	LBB32_22
LBB32_22:                               ##   in Loop: Header=BB32_1 Depth=1
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	subl	$118, %eax
	je	LBB32_4
	jmp	LBB32_23
LBB32_23:                               ##   in Loop: Header=BB32_1 Depth=1
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	subl	$119, %eax
	jne	LBB32_6
	jmp	LBB32_3
LBB32_3:                                ##   in Loop: Header=BB32_1 Depth=1
	movb	$2, -48(%rbp)
	jmp	LBB32_7
LBB32_4:                                ##   in Loop: Header=BB32_1 Depth=1
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	callq	_libmin_success
LBB32_5:                                ##   in Loop: Header=BB32_1 Depth=1
	xorl	%edi, %edi
	callq	_satomi_usage
LBB32_6:                                ##   in Loop: Header=BB32_1 Depth=1
	jmp	LBB32_7
LBB32_7:                                ##   in Loop: Header=BB32_1 Depth=1
	jmp	LBB32_1
LBB32_8:
	movq	_optind@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	-8(%rbp), %eax
	jne	LBB32_10
## %bb.9:
	movl	$1, %edi
	callq	_satomi_usage
LBB32_10:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movq	-16(%rbp), %rax
	movq	_optind@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_libmin_strdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	$46, %esi
	callq	_libmin_strrchr
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	LBB32_12
## %bb.11:
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movl	$1, -4(%rbp)
	jmp	LBB32_21
LBB32_12:
	movq	-40(%rbp), %rdi
	leaq	L_.str.8(%rip), %rsi
	callq	_libmin_strcmp
	cmpl	$0, %eax
	je	LBB32_14
## %bb.13:
	movq	-40(%rbp), %rsi
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	movl	$1, -4(%rbp)
	jmp	LBB32_21
LBB32_14:
	movq	_mcnffile(%rip), %rdi
	leaq	_solver(%rip), %rsi
	callq	_satomi_parse_dimacs
	movq	_solver(%rip), %rdi
	leaq	-48(%rbp), %rsi
	callq	_satomi_configure
	movq	_solver(%rip), %rdi
	callq	_satomi_solve
	movl	%eax, -20(%rbp)
	movq	_solver(%rip), %rdi
	callq	_satomi_print_stats
	cmpl	$0, -20(%rbp)
	jne	LBB32_16
## %bb.15:
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	jmp	LBB32_20
LBB32_16:
	cmpl	$1, -20(%rbp)
	jne	LBB32_18
## %bb.17:
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	jmp	LBB32_19
LBB32_18:
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
LBB32_19:
	jmp	LBB32_20
LBB32_20:
	movq	_solver(%rip), %rdi
	callq	_satomi_destroy
LBB32_21:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function satomi_usage
_satomi_usage:                          ## @satomi_usage
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	LBB33_2
## %bb.1:
	leaq	L_.str.18(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
	jmp	LBB33_3
LBB33_2:
	leaq	L_.str.19(%rip), %rdi
	movb	$0, %al
	callq	_libmin_printf
LBB33_3:
	movl	-4(%rbp), %edi
	callq	_libmin_fail
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function cdb_grow
_cdb_grow:                              ## @cdb_grow
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-12(%rbp), %eax
	jb	LBB34_2
## %bb.1:
	jmp	LBB34_12
LBB34_2:
	jmp	LBB34_3
LBB34_3:                                ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-12(%rbp), %eax
	jae	LBB34_8
## %bb.4:                               ##   in Loop: Header=BB34_3 Depth=1
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
	shrl	$3, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	andl	$-2, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-16(%rbp), %eax
	jb	LBB34_6
## %bb.5:                               ##   in Loop: Header=BB34_3 Depth=1
	jmp	LBB34_7
LBB34_6:                                ##   in Loop: Header=BB34_3 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
LBB34_7:                                ##   in Loop: Header=BB34_3 Depth=1
	jmp	LBB34_3
LBB34_8:
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	jbe	LBB34_10
## %bb.9:
	jmp	LBB34_11
LBB34_10:
	movl	$1, %edi
	callq	_libmin_fail
LBB34_11:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	shlq	$2, %rsi
	callq	_libmin_realloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
LBB34_12:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function watch_list_free
_watch_list_free:                       ## @watch_list_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB35_4
## %bb.1:
	jmp	LBB35_2
LBB35_2:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_libmin_free
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
## %bb.3:
	jmp	LBB35_4
LBB35_4:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_reserve
_vec_ui32_reserve:                      ## @vec_ui32_reserve
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jb	LBB36_2
## %bb.1:
	jmp	LBB36_6
LBB36_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	shlq	$2, %rsi
	callq	_libmin_realloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB36_4
## %bb.3:
	jmp	LBB36_5
LBB36_4:
	movl	$1, %edi
	callq	_libmin_fail
LBB36_5:
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
LBB36_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_reserve
_vec_ui8_reserve:                       ## @vec_ui8_reserve
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jb	LBB37_2
## %bb.1:
	jmp	LBB37_6
LBB37_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	shlq	$0, %rsi
	callq	_libmin_realloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB37_4
## %bb.3:
	jmp	LBB37_5
LBB37_4:
	movl	$1, %edi
	callq	_libmin_fail
LBB37_5:
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
LBB37_6:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function lit_polarity
_lit_polarity:                          ## @lit_polarity
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
                                        ## kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_at
_vec_ui8_at:                            ## @vec_ui8_at
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jb	LBB39_3
## %bb.1:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB39_3
## %bb.2:
	jmp	LBB39_4
LBB39_3:
	movl	$1, %edi
	callq	_libmin_fail
LBB39_4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_assign
_vec_ui8_assign:                        ## @vec_ui8_assign
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	cmpl	$0, -12(%rbp)
	jb	LBB40_3
## %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	_vec_ui8_size
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jae	LBB40_3
## %bb.2:
	jmp	LBB40_4
LBB40_3:
	movl	$1, %edi
	callq	_libmin_fail
LBB40_4:
	movb	-13(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui32_assign
_vec_ui32_assign:                       ## @vec_ui32_assign
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jb	LBB41_3
## %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	_vec_ui32_size
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jae	LBB41_3
## %bb.2:
	jmp	LBB41_4
LBB41_3:
	movl	$1, %edi
	callq	_libmin_fail
LBB41_4:
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function solver_dlevel
_solver_dlevel:                         ## @solver_dlevel
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_vec_ui32_size
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_ui8_size
_vec_ui8_size:                          ## @vec_ui8_size
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function cdb_handler
_cdb_handler:                           ## @cdb_handler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	LBB44_2
## %bb.1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB44_3
LBB44_2:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	jmp	LBB44_3
LBB44_3:
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function watch_list_push
LCPI45_0:
	.quad	0x4130000000000000              ## double 1048576
LCPI45_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_watch_list_push:                       ## @watch_list_push
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB45_2
## %bb.1:
	jmp	LBB45_3
LBB45_2:
	movl	$1, %edi
	callq	_libmin_fail
LBB45_3:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	LBB45_10
## %bb.4:
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jae	LBB45_6
## %bb.5:
	movl	$4, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB45_7
LBB45_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$1, %eax
	imull	$3, %eax, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
LBB45_7:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	callq	_libmin_realloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB45_9
## %bb.8:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm0
	movsd	LCPI45_0(%rip), %xmm1           ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	-24(%rbp), %eax
                                        ## kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm2
	movsd	LCPI45_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	LCPI45_0(%rip), %xmm2           ## xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	leaq	L_.str.14(%rip), %rdi
	movb	$2, %al
	callq	_libmin_printf
	jmp	LBB45_13
LBB45_9:
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
LBB45_10:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, 4(%rdx)
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	cmpl	$0, -20(%rbp)
	je	LBB45_13
## %bb.11:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jbe	LBB45_13
## %bb.12:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %esi
	subl	$1, %esi
	movl	%esi, %esi
                                        ## kill: def $rsi killed $esi
	movq	(%rdx,%rsi,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
LBB45_13:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function vec_wl_at
_vec_wl_at:                             ## @vec_wl_at
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	LBB46_2
## %bb.1:
	jmp	LBB46_3
LBB46_2:
	movl	$1, %edi
	callq	_libmin_fail
LBB46_3:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	LBB46_5
## %bb.4:
	jmp	LBB46_6
LBB46_5:
	movl	$1, %edi
	callq	_libmin_fail
LBB46_6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"conflicts    : %-12ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"decisions    : %-12ld\n"

L_.str.2:                               ## @.str.2
	.asciz	"propagations : %-12ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"Print Clauses :\n"

	.section	__TEXT,__const
	.globl	___cnffile                      ## @__cnffile
	.p2align	4
___cnffile:
	.ascii	"c The zebra problem.  \nc\nc  Reference:\nc\nc    Rina Dechter,\nc    Enhancement Schemes for Constraint Processing:  \nc    Backjumping, Learning, and Cutset Decomposition\",\nc    Artificial Intelligence,\nc    Volume 41, pages 273-312.  \nc\nc  Encoded in CNF by Jon Freeman, November 1994.  \nc  I have found three solutions; there may be more.\nc\np cnf 155 1135\n1 2 3\n4 5 0\n-1 -2 0\n-1 -3 0\n-1 -4 0\n-1 -5 0\n-2 -3 0\n-2 -4 0\n-2 -5 0\n-3 -4 0\n-3 -5 0\n-4 -5 0\n6 7 8\n9 10 0\n-6 -7 0\n-6 -8 0\n-6 -9 0\n-6 -10 0\n-7 -8 0\n-7 -9 0\n-7 -10 0\n-8 -9 0\n-8 -10 0\n-9 -10 0\n11 12 13\n14 15 0\n-11 -12 0\n-11 -13 0\n-11 -14 0\n-11 -15 0\n-12 -13 0\n-12 -14 0\n-12 -15 0\n-13 -14 0\n-13 -15 0\n-14 -15 0\n16 17 18\n19 20 0\n-16 -17 0\n-16 -18 0\n-16 -19 0\n-16 -20 0\n-17 -18 0\n-17 -19 0\n-17 -20 0\n-18 -19 0\n-18 -20 0\n-19 -20 0\n21 22 23\n24 25 0\n-21 -22 0\n-21 -23 0\n-21 -24 0\n-21 -25 0\n-22 -23 0\n-22 -24 0\n-22 -25 0\n-23 -24 0\n-23 -25 0\n-24 -25 0\n51 52 53\n54 55 0\n-51 -52 0\n-51 -53 0\n-51 -54 0\n-51 -55 0\n-52 -53 0\n-52 -54 0\n-52 -55 0\n-53 -54 0\n-53 -55 0\n-54 -55 0\n56 57 58\n59 60 0\n-56 -57 0\n-56 -58 0\n-56 -59 0\n-56 -60 0\n-57 -58 0\n-57 -59 0\n-57 -60 0\n-58 -59 0\n-58 -60 0\n-59 -60 0\n61 62 63\n64 65 0\n-61 -62 0\n-61 -63 0\n-61 -64 0\n-61 -65 0\n-62 -63 0\n-62 -64 0\n-62 -65 0\n-63 -64 0\n-63 -65 0\n-64 -65 0\n66 67 68\n69 70 0\n-66 -67 0\n-66 -68 0\n-66 -69 0\n-66 -70 0\n-67 -68 0\n-67 -69 0\n-67 -70 0\n-68 -69 0\n-68 -70 0\n-69 -70 0\n71 72 73\n74 75 0\n-71 -72 0\n-71 -73 0\n-71 -74 0\n-71 -75 0\n-72 -73 0\n-72 -74 0\n-72 -75 0\n-73 -74 0\n-73 -75 0\n-74 -75 0\n26 27 28\n29 30 0\n-26 -27 0\n-26 -28 0\n-26 -29 0\n-26 -30 0\n-27 -28 0\n-27 -29 0\n-27 -30 0\n-28 -29 0\n-28 -30 0\n-29 -30 0\n31 32 33\n34 35 0\n-31 -32 0\n-31 -33 0\n-31 -34 0\n-31 -35 0\n-32 -33 0\n-32 -34 0\n-32 -35 0\n-33 -34 0\n-33 -35 0\n-34 -35 0\n36 37 38\n39 40 0\n-36 -37 0\n-36 -38 0\n-36 -39 0\n-36 -40 0\n-37 -38 0\n-37 -39 0\n-37 -40 0\n-38 -39 0\n-38 -40 0\n-39 -40 0\n41 42 43\n44 45 0\n-41 -42 0\n-41 -43 0\n-41 -44 0\n-41 -45 0\n-42 -43 0\n-42 -44 0\n-42 -45 0\n-43 -44 0\n-43 -45 0\n-44 -45 0\n46 47 48\n49 50 0\n-46 -47 0\n-46 -48 0\n-46 -49 0\n-46 -50 0\n-47 -48 0\n-47 -49 0\n-47 -50 0\n-48 -49 0\n-48 -50 0\n-49 -50 0\n101 102 103\n104 105 0\n-101 -102 0\n-101 -103 0\n-101 -104 0\n-101 -105 0\n-102 -103 0\n-102 -104 0\n-102 -105 0\n-103 -104 0\n-103 -105 0\n-104 -105 0\n106 107 108\n109 110 0\n-106 -107 0\n-106 -108 0\n-106 -109 0\n-106 -110 0\n-107 -108 0\n-107 -109 0\n-107 -110 0\n-108 -109 0\n-108 -110 0\n-109 -110 0\n111 112 113\n114 115 0\n-111 -112 0\n-111 -113 0\n-111 -114 0\n-111 -115 0\n-112 -113 0\n-112 -114 0\n-112 -115 0\n-113 -114 0\n-113 -115 0\n-114 -115 0\n116 117 118\n119 120 0\n-116 -117 0\n-116 -118 0\n-116 -119 0\n-116 -120 0\n-117 -118 0\n-117 -119 0\n-117 -120 0\n-118 -119 0\n-118 -120 0\n-119 -120 0\n121 122 123\n124 125 0\n-121 -122 0\n-121 -123 0\n-121 -124 0\n-121 -125 0\n-122 -123 0\n-122 -124 0\n-122 -125 0\n-123 -124 0\n-123 -125 0\n-124 -125 0\n76 77 78\n79 80 0\n-76 -77 0\n-76 -78 0\n-76 -79 0\n-76 -80 0\n-77 -78 0\n-77 -79 0\n-77 -80 0\n-78 -79 0\n-78 -80 0\n-79 -80 0\n81 82 83\n84 85 0\n-81 -82 0\n-81 -83 0\n-81 -84 0\n-81 -85 0\n-82 -83 0\n-82 -84 0\n-82 -85 0\n-83 -84 0\n-83 -85 0\n-84 -85 0\n86 87 88\n89 90 0\n-86 -87 0\n-86 -88 0\n-86 -89 0\n-86 -90 0\n-87 -88 0\n-87 -89 0\n-87 -90 0\n-88 -89 0\n-88 -90 0\n-89 -90 0\n91 92 93\n94 95 0\n-91 -92 0\n-91 -93 0\n-91 -94 0\n-91 -95 0\n-92 -93 0\n-92 -94 0\n-92 -95 0\n-93 -94 0\n-93 -95 0\n-94 -95 0\n96 97 98\n99 100 0\n-96 -97 0\n-96 -98 0\n-96 -99 0\n-96 -100 0\n-97 -98 0\n-97 -99 0\n-97 -100 0\n-98 -99 0\n-98 -100 0\n-99 -100 0\n-1 -7 126 0\n-2 -8 126 0\n-3 -9 126 0\n-4 -10 126 0\n-1 -12 127 0\n-2 -13 127 0\n-3 -14 127 0\n-4 -15 127 0\n-1 -17 128 0\n-2 -18 128 0\n-3 -19 128 0\n-4 -20 128 0\n-1 -22 129 0\n-2 -23 129 0\n-3 -24 129 0\n-4 -25 129 0\n-6 -2 130 0\n-7 -3 130 0\n-8 -4 130 0\n-9 -5 130 0\n-6 -12 131 0\n-7 -13 131 0\n-8 -14 131 0\n-9 -15 131 0\n-6 -17 132 0\n-7 -18 132 0\n-8 -19 132 0\n-9 -20 132 0\n-6 -22 133 0\n-7 -23 133 0\n-8 -24 133 0\n-9 -25 133 0\n-11 -2 134 0\n-12 -3 134 0\n-13 -4 134 0\n-14 -5 134 0\n-11 -7 135 0\n-12 -8 135 0\n-13 -9 135 0\n-14 -10 135 0\n-11 -17 136 0\n-12 -18 136 0\n-13 -19 136 0\n-14 -20 136 0\n-11 -22 137 0\n-12 -23 137 0\n-13 -24 137 0\n-14 -25 137 0\n-16 -2 138 0\n-17 -3 138 0\n-18 -4 138 0\n-19 -5 138 0\n-16 -7 139 0\n-17 -8 139 0\n-18 -9 139 0\n-19 -10 139 0\n-16 -12 140 0\n-17 -13 140 0\n-18 -14 140 0\n-19 -15 140 0\n-16 -22 141 0\n-17 -23 141 0\n-18 -24 141 0\n-19 -25 141 0\n-21 -2 142 0\n-22 -3 142 0\n-23 -4 142 0\n-24 -5 142 0\n-21 -7 143 0\n-22 -8 143 0\n-23 -9 143 0\n-24 -10 143 0\n-21 -12 144 0\n-22 -13 144 0\n-23 -14 144 0\n-24 -15 144 0\n-21 -17 145 0\n-22 -18 145 0\n-23 -19 145 0\n-24 -20 145 0\n-1 -8 -126 0\n-1 -9 -126 0\n-1 -10 -126 0\n-2 -6 -126 0\n-2 -9 -126 0\n-2 -10 -126 0\n-3 -6 -126 0\n-3 -7 -126 0\n-3 -10 -126 0\n-4 -6 -126 0\n-4 -7 -126 0\n-4 -8 -126 0\n-5 -6 -126 0\n-5 -7 -126 0\n-5 -8 -126 0\n-5 -9 -126 0\n-1 -13 -127 0\n-1 -14 -127 0\n-1 -15 -127 0\n-2 -11 -127 0\n-2 -14 -127 0\n-2 -15 -127 0\n-3 -11 -127 0\n-3 -12 -127 0\n-3 -15 -127 0\n-4 -11 -127 0\n-4 -12 -127 0\n-4 -13 -127 0\n-5 -11 -127 0\n-5 -12 -127 0\n-5 -13 -127 0\n-5 -14 -127 0\n-1 -18 -128 0\n-1 -19 -128 0\n-1 -20 -128 0\n-2 -16 -128 0\n-2 -19 -128 0\n-2 -20 -128 0\n-3 -16 -128 0\n-3 -17 -128 0\n-3 -20 -128 0\n-4 -16 -128 0\n-4 -17 -128 0\n-4 -18 -128 0\n-5 -16 -128 0\n-5 -17 -128 0\n-5 -18 -128 0\n-5 -19 -128 0\n-1 -23 -129 0\n-1 -24 -129 0\n-1 -25 -129 0\n-2 -21 -129 0\n-2 -24 -129 0\n-2 -25 -129 0\n-3 -21 -129 0\n-3 -22 -129 0\n-3 -25 -129 0\n-4 -21 -129 0\n-4 -22 -129 0\n-4 -23 -129 0\n-5 -21 -129 0\n-5 -22 -129 0\n-5 -23 -129 0\n-5 -24 -129 0\n-6 -3 -130 0\n-6 -4 -130 0\n-6 -5 -130 0\n-7 -1 -130 0\n-7 -4 -130 0\n-7 -5 -130 0\n-8 -1 -130 0\n-8 -2 -130 0\n-8 -5 -130 0\n-9 -1 -130 0\n-9 -2 -130 0\n-9 -3 -130 0\n-10 -1 -130 0\n-10 -2 -130 0\n-10 -3 -130 0\n-10 -4 -130 0\n-6 -13 -131 0\n-6 -14 -131 0\n-6 -15 -131 0\n-7 -11 -131 0\n-7 -14 -131 0\n-7 -15 -131 0\n-8 -11 -131 0\n-8 -12 -131 0\n-8 -15 -131 0\n-9 -11 -131 0\n-9 -12 -131 0\n-9 -13 -131 0\n-10 -11 -131 0\n-10 -12 -131 0\n-10 -13 -131 0\n-10 -14 -131 0\n-6 -18 -132 0\n-6 -19 -132 0\n-6 -20 -132 0\n-7 -16 -132 0\n-7 -19 -132 0\n-7 -20 -132 0\n-8 -16 -132 0\n-8 -17 -132 0\n-8 -20 -132 0\n-9 -16 -132 0\n-9 -17 -132 0\n-9 -18 -132 0\n-10 -16 -132 0\n-10 -17 -132 0\n-10 -18 -132 0\n-10 -19 -132 0\n-6 -23 -133 0\n-6 -24 -133 0\n-6 -25 -133 0\n-7 -21 -133 0\n-7 -24 -133 0\n-7 -25 -133 0\n-8 -21 -133 0\n-8 -22 -133 0\n-8 -25 -133 0\n-9 -21 -133 0\n-9 -22 -133 0\n-9 -23 -133 0\n-10 -21 -133 0\n-10 -22 -133 0\n-10 -23 -133 0\n-10 -24 -133 0\n-11 -3 -134 0\n-11 -4 -134 0\n-11 -5 -134 0\n-12 -1 -134 0\n-12 -4 -134 0\n-12 -5 -134 0\n-13 -1 -134 0\n-13 -2 -134 0\n-13 -5 -134 0\n-14 -1 -134 0\n-14 -2 -134 0\n-14 -3 -134 0\n-15 -1 -134 0\n-15 -2 -134 0\n-15 -3 -134 0\n-15 -4 -134 0\n-11 -8 -135 0\n-11 -9 -135 0\n-11 -10 -135 0\n-12 -6 -135 0\n-12 -9 -135 0\n-12 -10 -135 0\n-13 -6 -135 0\n-13 -7 -135 0\n-13 -10 -135 0\n-14 -6 -135 0\n-14 -7 -135 0\n-14 -8 -135 0\n-15 -6 -135 0\n-15 -7 -135 0\n-15 -8 -135 0\n-15 -9 -135 0\n-11 -18 -136 0\n-11 -19 -136 0\n-11 -20 -136 0\n-12 -16 -136 0\n-12 -19 -136 0\n-12 -20 -136 0\n-13 -16 -136 0\n-13 -17 -136 0\n-13 -20 -136 0\n-14 -16 -136 0\n-14 -17 -136 0\n-14 -18 -136 0\n-15 -16 -136 0\n-15 -17 -136 0\n-15 -18 -136 0\n-15 -19 -136 0\n-11 -23 -137 0\n-11 -24 -137 0\n-11 -25 -137 0\n-12 -21 -137 0\n-12 -24 -137 0\n-12 -25 -137 0\n-13 -21 -137 0\n-13 -22 -137 0\n-13 -25 -137 0\n-14 -21 -137 0\n-14 -22 -137 0\n-14 -23 -137 0\n-15 -21 -137 0\n-15 -22 -137 0\n-15 -23 -137 0\n-15 -24 -137 0\n-16 -3 -138 0\n-16 -4 -138 0\n-16 -5 -138 0\n-17 -1 -138 0\n-17 -4 -138 0\n-17 -5 -138 0\n-18 -1 -138 0\n-18 -2 -138 0\n-18 -5 -138 0\n-19 -1 -138 0\n-19 -2 -138 0\n-19 -3 -138 0\n-20 -1 -138 0\n-20 -2 -138 0\n-20 -3 -138 0\n-20 -4 -138 0\n-16 -8 -139 0\n-16 -9 -139 0\n-16 -10 -139 0\n-17 -6 -139 0\n-17 -9 -139 0\n-17 -10 -139 0\n-18 -6 -139 0\n-18 -7 -139 0\n-18 -10 -139 0\n-19 -6 -139 0\n-19 -7 -139 0\n-19 -8 -139 0\n-20 -6 -139 0\n-20 -7 -139 0\n-20 -8 -139 0\n-20 -9 -139 0\n-16 -13 -140 0\n-16 -14 -140 0\n-16 -15 -140 0\n-17 -11 -140 0\n-17 -14 -140 0\n-17 -15 -140 0\n-18 -11 -140 0\n-18 -12 -140 0\n-18 -15 -140 0\n-19 -11 -140 0\n-19 -12 -140 0\n-19 -13 -140 0\n-20 -11 -140 0\n-20 -12 -140 0\n-20 -13 -140 0\n-20 -14 -140 0\n-16 -23 -141 0\n-16 -24 -141 0\n-16 -25 -141 0\n-17 -21 -141 0\n-17 -24 -141 0\n-17 -25 -141 0\n-18 -21 -141 0\n-18 -22 -141 0\n-18 -25 -141 0\n-19 -21 -141 0\n-19 -22 -141 0\n-19 -23 -141 0\n-20 -21 -141 0\n-20 -22 -141 0\n-20 -23 -141 0\n-20 -24 -141 0\n-21 -3 -142 0\n-21 -4 -142 0\n-21 -5 -142 0\n-22 -1 -142 0\n-22 -4 -142 0\n-22 -5 -142 0\n-23 -1 -142 0\n-23 -2 -142 0\n-23 -5 -142 0\n-24 -1 -142 0\n-24 -2 -142 0\n-24 -3 -142 0\n-25 -1 -142 0\n-25 -2 -142 0\n-25 -3 -142 0\n-25 -4 -142 0\n-21 -8 -143 0\n-21 -9 -143 0\n-21 -10 -143 0\n-22 -6 -143 0\n-22 -9 -143 0\n-22 -10 -143 0\n-23 -6 -143 0\n-23 -7 -143 0\n-23 -10 -143 0\n-24 -6 -143 0\n-24 -7 -143 0\n-24 -8 -143 0\n-25 -6 -143 0\n-25 -7 -143 0\n-25 -8 -143 0\n-25 -9 -143 0\n-21 -13 -144 0\n-21 -14 -144 0\n-21 -15 -144 0\n-22 -11 -144 0\n-22 -14 -144 0\n-22 -15 -144 0\n-23 -11 -144 0\n-23 -12 -144 0\n-23 -15 -144 0\n-24 -11 -144 0\n-24 -12 -144 0\n-24 -13 -144 0\n-25 -11 -144 0\n-25 -12 -144 0\n-25 -13 -144 0\n-25 -14 -144 0\n-21 -18 -145 0\n-21 -19 -145 0\n-21 -20 -145 0\n-22 -16 -145 0\n-22 -19 -145 0\n-22 -20 -145 0\n-23 -16 -145 0\n-23 -17 -145 0\n-23 -20 -145 0\n-24 -16 -145 0\n-24 -17 -145 0\n-24 -18 -145 0\n-25 -16 -145 0\n-25 -17 -145 0\n-25 -18 -145 0\n-25 -19 -145 0\n-126 146 0\n-127 147 0\n-128 148 0\n-129 149 0\n-131 150 0\n-132 151 0\n-133 152 0\n-136 153 0\n-137 154 0\n-141 155 0\n-130 146 0\n-134 147 0\n-138 148 0\n-142 149 0\n-135 150 0\n-139 151 0\n-143 152 0\n-140 153 0\n-144 154 0\n-145 155 0\n126 130 -146 0\n127 134 -147 0\n128 138 -148 0\n129 142 -149 0\n131 135 -150 0\n132 139 -151 0\n133 143 -152 0\n136 140 -153 0\n137 144 -154 0\n141 145 -155 0\n-1 -6 0\n-1 -11 0\n-1 -16 0\n-1 -21 0\n-6 -11 0\n-6 -16 0\n-6 -21 0\n-11 -16 0\n-11 -21 0\n-16 -21 0\n-2 -7 0\n-2 -12 0\n-2 -17 0\n-2 -22 0\n-7 -12 0\n-7 -17 0\n-7 -22 0\n-12 -17 0\n-12 -22 0\n-17 -22 0\n-3 -8 0\n-3 -13 0\n-3 -18 0\n-3 -23 0\n-8 -13 0\n-8 -18 0\n-8 -23 0\n-13 -18 0\n-13 -23 0\n-18 -23 0\n-4 -9 0\n-4 -14 0\n-4 -19 0\n-4 -24 0\n-9 -14 0\n-9 -19 0\n-9 -24 0\n-14 -19 0\n-14 -24 0\n-19 -24 0\n-5 -10 0\n-5 -15 0\n-5 -20 0\n-5 -25 0\n-10 -15 0\n-10 -20 0\n-10 -25 0\n-15 -20 0\n-15 -25 0\n-20 -25 0\n-51 -56 0\n-51 -61 0\n-51 -66 0\n-51 -71 0\n-56 -61 0\n-56 -66 0\n-56 -71 0\n-61 -66 0\n-61 -71 0\n-66 -71 0\n-52 -57 0\n-52 -62 0\n-52 -67 0\n-52 -72 0\n-57 -62 0\n-57 -67 0\n-57 -72 0\n-62 -67 0\n-62 -72 0\n-67 -72 0\n-53 -58 0\n-53 -63 0\n-53 -68 0\n-53 -73 0\n-58 -63 0\n-58 -68 0\n-58 -73 0\n-63 -68 0\n-63 -73 0\n-68 -73 0\n-54 -59 0\n-54 -64 0\n-54 -69 0\n-54 -74 0\n-59 -64 0\n-59 -69 0\n-59 -74 0\n-64 -69 0\n-64 -74 0\n-69 -74 0\n-55 -60 0\n-55 -65 0\n-55 -70 0\n-55 -75 0\n-60 -65 0\n-60 -70 0\n-60 -75 0\n-65 -70 0\n-65 -75 0\n-70 -75 0\n-26 -31 0\n-26 -36 0\n-26 -41 0\n-26 -46 0\n-31 -36 0\n-31 -41 0\n-31 -46 0\n-36 -41 0\n-36 -46 0\n-41 -46 0\n-27 -32 0\n-27 -37 0\n-27 -42 0\n-27 -47 0\n-32 -37 0\n-32 -42 0\n-32 -47 0\n-37 -42 0\n-37 -47 0\n-42 -47 0\n-28 -33 0\n-28 -38 0\n-28 -43 0\n-28 -48 0\n-33 -38 0\n-33 -43 0\n-33 -48 0\n-38 -43 0\n-38 -48 0\n-43 -48 0\n-29 -34 0\n-29 -39 0\n-29 -44 0\n-29 -49 0\n-34 -39 0\n-34 -44 0\n-34 -49 0\n-39 -44 0\n-39 -49 0\n-44 -49 0\n-30 -35 0\n-30 -40 0\n-30 -45 0\n-30 -50 0\n-35 -40 0\n-35 -45 0\n-35 -50 0\n-40 -45 0\n-40 -50 0\n-45 -50 0\n-101 -106 0\n-101 -111 0\n-101 -116 0\n-101 -121 0\n-106 -111 0\n-106 -116 0\n-106 -121 0\n-111 -116 0\n-111 -121 0\n-116 -121 0\n-102 -107 0\n-102 -112 0\n-102 -117 0\n-102 -122 0\n-107 -112 0\n-107 -117 0\n-107 -122 0\n-112 -117 0\n-112 -122 0\n-117 -122 0\n-103 -108 0\n-103 -113 0\n-103 -118 0\n-103 -123 0\n-108 -113 0\n-108 -118 0\n-108 -123 0\n-113 -118 0\n-113 -123 0\n-118 -123 0\n-104 -109 0\n-104 -114 0\n-104 -119 0\n-104 -124 0\n-109 -114 0\n-109 -119 0\n-109 -124 0\n-114 -119 0\n-114 -124 0\n-119 -124 0\n-105 -110 0\n-105 -115 0\n-105 -120 0\n-105 -125 0\n-110 -115 0\n-110 -120 0\n-110 -125 0\n-115 -120 0\n-115 -125 0\n-120 -125 0\n-76 -81 0\n-76 -86 0\n-76 -91 0\n-76 -96 0\n-81 -86 0\n-81 -91 0\n-81 -96 0\n-86 -91 0\n-86 -96 0\n-91 -96 0\n-77 -82 0\n-77 -87 0\n-77 -92 0\n-77 -97 0\n-82 -87 0\n-82 -92 0\n-82 -97 0\n-87 -92 0\n-87 -97 0\n-92 -97 0\n-78 -83 0\n-78 -88 0\n-78 -93 0\n-78 -98 0\n-83 -88 0\n-83 -93 0\n-83 -98 0\n-88 -93 0\n-88 -98 0\n-93 -98 0\n-79 -84 0\n-79 -89 0\n-79 -94 0\n-79 -99 0\n-84 -89 0\n-84 -94 0\n-84 -99 0\n-89 -94 0\n-89 -99 0\n-94 -99 0\n-80 -85 0\n-80 -90 0\n-80 -95 0\n-80 -100 0\n-85 -90 0\n-85 -95 0\n-85 -100 0\n-90 -95 0\n-90 -100 0\n-95 -100 0\n51 0\n42 0\n122 0\n11 0\n82 0\n-65             0\n-55 147 0\n-60   150 0\n-70   153 0\n-75   154 0\n-101 -57  0\n-101 -62 0\n-101 -67  0\n-101 -72  0\n-106 -52 0\n-106 -62  0\n-106 -67   0\n-106 -72   0\n-111 -52 0\n-111 -57   0\n-111 -67   0\n-111 -72   0\n-116 -52 0\n-116 -57   0\n-116 -62  0\n-116 -72   0\n-121 -52 0\n-121 -57   0\n-121 -62  0\n-121 -67   0\n-30 -81  0\n-30 -86 0\n-30 -91  0\n-30 -96  0\n-35 -76 0\n-35 -86  0\n-35 -91   0\n-35 -96   0\n-40 -76 0\n-40 -81   0\n-40 -91   0\n-40 -96   0\n-45 -76 0\n-45 -81   0\n-45 -86  0\n-45 -96   0\n-50 -76 0\n-50 -81   0\n-50 -86  0\n-50 -91   0\n-54 -83  0\n-54 -88 0\n-54 -93  0\n-54 -98  0\n-59 -78 0\n-59 -88  0\n-59 -93   0\n-59 -98   0\n-64 -78 0\n-64 -83   0\n-64 -93   0\n-64 -98   0\n-69 -78 0\n-69 -83   0\n-69 -88  0\n-69 -98   0\n-74 -78 0\n-74 -83   0\n-74 -88  0\n-74 -93   0\n-79 -108  0\n-79 -113 0\n-79 -118  0\n-79 -123  0\n-84 -103 0\n-84 -113  0\n-84 -118   0\n-84 -123   0\n-89 -103 0\n-89 -108   0\n-89 -118   0\n-89 -123   0\n-94 -103 0\n-94 -108   0\n-94 -113  0\n-94 -123   0\n-99 -103 0\n-99 -108   0\n-99 -113  0\n-99 -118   0\n-105 -8  0\n-105 -13 0\n-105 -18  0\n-105 -23  0\n-110 -3 0\n-110 -13  0\n-110 -18   0\n-110 -23   0\n-115 -3 0\n-115 -8   0\n-115 -18   0\n-115 -23   0\n-120 -3 0\n-120 -8   0\n-120 -13  0\n-120 -23   0\n-125 -3 0\n-125 -8   0\n-125 -13  0\n-125 -18   0\n-53 -57  126 0\n-53 -62 127 0\n-53 -67  128 0\n-53 -72  129 0\n-58 -52 130 0\n-58 -62  131 0\n-58 -67   132 0\n-58 -72   133 0\n-63 -52 134 0\n-63 -57   135 0\n-63 -67   136 0\n-63 -72   137 0\n-68 -52 138 0\n-68 -57   139 0\n-68 -62  140 0\n-68 -72   141 0\n-73 -52 142 0\n-73 -57   143 0\n-73 -62  144 0\n-73 -67   145 0\n-80 -29 0\n-85   -34   0\n-90  -39  0\n-95   -44   0\n-100   -49   0\n-80 -34  146 0\n-80 -39 147 0\n-80 -44  148 0\n-80 -49  149 0\n-85 -29 146 0\n-85 -39  150 0\n-85 -44   151 0\n-85 -49   152 0\n-90 -29 147 0\n-90 -34   150 0\n-90 -44   153 0\n-90 -49   154 0\n-95 -29 148 0\n-95 -34   151 0\n-95 -39  153 0\n-95 -49   155 0\n-100 -29 149 0\n-100 -34   152 0\n-100 -39  154 0\n-100 -44   155 0\n-78 -28 0\n-83   -33   0\n-88  -38  0\n-93   -43   0\n-98   -48   0\n-78 -33  146 0\n-78 -38 147 0\n-78 -43  148 0\n-78 -48  149 0\n-83 -28 146 0\n-83 -38  150 0\n-83 -43   151 0\n-83 -48   152 0\n-88 -28 147 0\n-88 -33   150 0\n-88 -43   153 0\n-88 -48   154 0\n-93 -28 148 0\n-93 -33   151 0\n-93 -38  153 0\n-93 -48   155 0\n-98 -28 149 0\n-98 -33   152 0\n-98 -38  154 0\n-98 -43   155 0\n\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"zebra_v155_c1135.cnf"

	.section	__DATA,__data
	.globl	___mcnffile                     ## @__mcnffile
	.p2align	3
___mcnffile:
	.quad	L_.str.4
	.quad	14242                           ## 0x37a2
	.quad	___cnffile
	.long	0                               ## 0x0
	.space	4

	.globl	_mcnffile                       ## @mcnffile
	.p2align	3
_mcnffile:
	.quad	___mcnffile

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"wvh"

L_.str.6:                               ## @.str.6
	.asciz	"[satomi] Version: 2.0\n"

L_.str.7:                               ## @.str.7
	.asciz	"[satomi] Unrecognized file format.\n"

L_.str.8:                               ## @.str.8
	.asciz	".cnf"

L_.str.9:                               ## @.str.9
	.asciz	"[satomi] Unsupported file format: %s\n"

.zerofill __DATA,__bss,_solver,8,3      ## @solver
L_.str.10:                              ## @.str.10
	.asciz	"UNDECIDED    \n"

L_.str.11:                              ## @.str.11
	.asciz	"SATISFIABLE  \n"

L_.str.12:                              ## @.str.12
	.asciz	"UNSATISFIABLE\n"

L_.str.13:                              ## @.str.13
	.asciz	"failed to realloc memory from %.1f mb to %.1f mb.\n"

L_.str.14:                              ## @.str.14
	.asciz	"Failed to realloc memory from %.1f MB to %.1f MB.\n"

L_.str.15:                              ## @.str.15
	.asciz	"{ "

L_.str.16:                              ## @.str.16
	.asciz	"%u "

L_.str.17:                              ## @.str.17
	.asciz	"}\n"

L_.str.18:                              ## @.str.18
	.asciz	"Try 'satomi -h' for more information\n"

L_.str.19:                              ## @.str.19
	.asciz	"Usage: satomi [-v] [-h] <input_file>\n\nOptions:\n\t-h\t : display available options.\n\t-v\t : version.\n\n"

.subsections_via_symbols
