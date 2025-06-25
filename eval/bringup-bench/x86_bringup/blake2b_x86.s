	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_blake2b                        ## -- Begin function blake2b
	.p2align	4, 0x90
_blake2b:                               ## @blake2b
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
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	testq	%rdi, %rdi
	movq	%rdi, -216(%rbp)                ## 8-byte Spill
	cmoveq	%rdi, %rsi
	cmpb	$64, %cl
	movl	$64, %r12d
	cmovael	%r12d, %ecx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	cmovel	%ebx, %ecx
	cmpb	$64, %r8b
	cmovbl	%r8d, %r12d
	xorl	%r14d, %r14d
	movl	%ecx, -164(%rbp)                ## 4-byte Spill
	testl	%ecx, %ecx
	setne	%r14b
	movq	%rsi, %rcx
	shrq	$7, %rcx
	movq	%rsi, -192(%rbp)                ## 8-byte Spill
	movl	%esi, %eax
	andl	$127, %eax
	cmpq	$1, %rax
	sbbq	$-1, %rcx
	addq	%r14, %rcx
	cmpq	$2, %rcx
	movl	$1, %edi
	movq	%rcx, -208(%rbp)                ## 8-byte Spill
	cmovaeq	%rcx, %rdi
	movl	$128, %esi
	movq	%rdi, -184(%rbp)                ## 8-byte Spill
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB0_4
## %bb.1:
	movq	%rax, %r15
	movl	%r12d, -168(%rbp)               ## 4-byte Spill
	movzbl	%r12b, %edi
	movq	%rdi, -176(%rbp)                ## 8-byte Spill
	callq	_libmin_malloc
	testq	%rax, %rax
	je	LBB0_2
## %bb.6:
	movzbl	-164(%rbp), %r8d                ## 1-byte Folded Reload
	testb	%r8b, %r8b
	movq	%rax, -200(%rbp)                ## 8-byte Spill
	je	LBB0_11
## %bb.7:
	cmpb	$1, -164(%rbp)                  ## 1-byte Folded Reload
	jne	LBB0_28
## %bb.8:
	xorl	%eax, %eax
	jmp	LBB0_9
LBB0_2:
	xorl	%ebx, %ebx
	jmp	LBB0_3
LBB0_28:
	movl	%r8d, %r9d
	andl	$126, %r9d
	movl	$8, %edi
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_29:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%r13,%rax), %ebx
	leal	-8(%rdi), %ecx
	andb	$48, %cl
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rbx
	movl	%eax, %edx
	andl	$120, %edx
	orq	(%r15,%rdx), %rbx
	movq	%rbx, (%r15,%rdx)
	movzbl	1(%r13,%rax), %esi
	movl	%edi, %ecx
	andb	$56, %cl
	shlq	%cl, %rsi
	orq	%rbx, %rsi
	movq	%rsi, (%r15,%rdx)
	addq	$2, %rax
	addq	$16, %rdi
	cmpq	%rax, %r9
	jne	LBB0_29
LBB0_9:
	testb	$1, %r8b
	je	LBB0_11
## %bb.10:
	movzbl	(%r13,%rax), %esi
	leal	(,%rax,8), %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	andl	$120, %eax
	orq	%rsi, (%r15,%rax)
LBB0_11:
	movq	-192(%rbp), %r9                 ## 8-byte Reload
	testq	%r9, %r9
	movq	-216(%rbp), %rbx                ## 8-byte Reload
	je	LBB0_14
## %bb.12:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rsi), %eax
	movl	%edx, %ecx
	andb	$56, %cl
	shlq	%cl, %rax
	movq	%rsi, %rcx
	shrq	$7, %rcx
	addq	%r14, %rcx
	shlq	$7, %rcx
	addq	%r15, %rcx
	movl	%esi, %edi
	andl	$120, %edi
	orq	%rax, (%rdi,%rcx)
	incq	%rsi
	addq	$8, %rdx
	cmpq	%rsi, %r9
	jne	LBB0_13
LBB0_14:
	shlq	$8, %r8
	addq	-176(%rbp), %r8                 ## 8-byte Folded Reload
	movabsq	$7640891576939301128, %rax      ## imm = 0x6A09E667F2BDC908
	xorq	%r8, %rax
	movq	%r9, -160(%rbp)
	movq	$0, -152(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	_blake2b_iv(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	_blake2b_iv+16(%rip), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	_blake2b_iv+32(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	_blake2b_iv+48(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	%rax, -128(%rbp)
	cmpq	$2, -208(%rbp)                  ## 8-byte Folded Reload
	jb	LBB0_19
## %bb.15:
	movq	-184(%rbp), %rax                ## 8-byte Reload
	leaq	-1(%rax), %rbx
	xorl	%r14d, %r14d
	leaq	-144(%rbp), %r13
	xorl	%esi, %esi
	jmp	LBB0_16
	.p2align	4, 0x90
LBB0_18:                                ##   in Loop: Header=BB0_16 Depth=1
	leaq	128(%rsi), %r12
	movq	%r12, -144(%rbp)
	addq	%r15, %rsi
	leaq	-128(%rbp), %rdi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	callq	_F
	movq	%r12, %rsi
	decq	%rbx
	je	LBB0_19
LBB0_16:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$-129, %rsi
	jb	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=1
	incq	%r14
	movq	%r14, -136(%rbp)
	jmp	LBB0_18
LBB0_19:
	cmpb	$0, -164(%rbp)                  ## 1-byte Folded Reload
	movq	-200(%rbp), %rbx                ## 8-byte Reload
	movl	-168(%rbp), %r14d               ## 4-byte Reload
	je	LBB0_23
## %bb.20:
	movq	-192(%rbp), %rax                ## 8-byte Reload
	cmpq	$-129, %rax
	jb	LBB0_22
## %bb.21:
	movq	$1, -152(%rbp)
LBB0_22:
	subq	$-128, %rax
	movq	%rax, -160(%rbp)
LBB0_23:
	movq	-184(%rbp), %rax                ## 8-byte Reload
	shlq	$7, %rax
	leaq	(%rax,%r15), %rsi
	addq	$-128, %rsi
	leaq	-128(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movl	$1, %ecx
	callq	_F
	testb	%r14b, %r14b
	movq	-176(%rbp), %rsi                ## 8-byte Reload
	je	LBB0_3
## %bb.24:
	xorl	%eax, %eax
	jmp	LBB0_25
	.p2align	4, 0x90
LBB0_27:                                ##   in Loop: Header=BB0_25 Depth=1
	movzbl	-56(%rbp,%rcx), %ecx
	movb	%cl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rsi
	je	LBB0_3
LBB0_25:                                ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$7, %rcx
	jne	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_25 Depth=1
	movq	%rax, %rdx
	andq	$-8, %rdx
	movq	-128(%rbp,%rdx), %rdx
	movq	%rdx, -56(%rbp)
	jmp	LBB0_27
LBB0_3:
	movq	%r15, %rdi
	callq	_libmin_free
LBB0_4:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_5
## %bb.30:
	movq	%rbx, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_5:
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
	pushq	%rbx
	subq	$536, %rsp                      ## imm = 0x218
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movb	$99, -530(%rbp)
	movw	$25185, -532(%rbp)              ## imm = 0x6261
	movaps	l___const.test.abc_answer+48(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	l___const.test.abc_answer+32(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	l___const.test.abc_answer+16(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	l___const.test.abc_answer(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	leaq	-532(%rbp), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$64, %r8d
	callq	_blake2b
	movq	%rax, %rbx
	leaq	-80(%rbp), %rdi
	movq	%rax, %rsi
	callq	_assert_bytes
	movq	%rbx, %rdi
	callq	_libmin_free
	movaps	l___const.test.filled_key+48(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	l___const.test.filled_key+32(%rip), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	l___const.test.filled_key+16(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	l___const.test.filled_key(%rip), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	l___const.test.key_answer+48(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	l___const.test.key_answer+32(%rip), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	l___const.test.key_answer+16(%rip), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	l___const.test.key_answer(%rip), %xmm0
	movaps	%xmm0, -208(%rbp)
	leaq	-144(%rbp), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	$64, %r8d
	callq	_blake2b
	movq	%rax, %rbx
	leaq	-208(%rbp), %rdi
	movq	%rax, %rsi
	callq	_assert_bytes
	movq	%rbx, %rdi
	callq	_libmin_free
	movb	$0, -529(%rbp)
	movaps	l___const.test.filled_key+48(%rip), %xmm0
	movaps	%xmm0, -224(%rbp)
	movaps	l___const.test.filled_key+32(%rip), %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	l___const.test.filled_key+16(%rip), %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	l___const.test.filled_key(%rip), %xmm0
	movaps	%xmm0, -272(%rbp)
	movaps	l___const.test.zero_answer+48(%rip), %xmm0
	movaps	%xmm0, -288(%rbp)
	movaps	l___const.test.zero_answer+32(%rip), %xmm0
	movaps	%xmm0, -304(%rbp)
	movaps	l___const.test.zero_answer+16(%rip), %xmm0
	movaps	%xmm0, -320(%rbp)
	movaps	l___const.test.zero_answer(%rip), %xmm0
	movaps	%xmm0, -336(%rbp)
	leaq	-529(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	movl	$1, %esi
	movl	$64, %ecx
	movl	$64, %r8d
	callq	_blake2b
	movq	%rax, %rbx
	leaq	-336(%rbp), %rdi
	movq	%rax, %rsi
	callq	_assert_bytes
	movq	%rbx, %rdi
	callq	_libmin_free
	movaps	l___const.test.filled_key+48(%rip), %xmm0
	movaps	%xmm0, -352(%rbp)
	movaps	l___const.test.filled_key+32(%rip), %xmm1
	movaps	%xmm1, -368(%rbp)
	movaps	l___const.test.filled_key+16(%rip), %xmm2
	movaps	%xmm2, -384(%rbp)
	movaps	l___const.test.filled_key(%rip), %xmm3
	movaps	%xmm3, -400(%rbp)
	movaps	%xmm0, -416(%rbp)
	movaps	%xmm1, -432(%rbp)
	movaps	%xmm2, -448(%rbp)
	movaps	%xmm3, -464(%rbp)
	movaps	l___const.test.filled_answer+48(%rip), %xmm0
	movaps	%xmm0, -480(%rbp)
	movaps	l___const.test.filled_answer+32(%rip), %xmm0
	movaps	%xmm0, -496(%rbp)
	movaps	l___const.test.filled_answer+16(%rip), %xmm0
	movaps	%xmm0, -512(%rbp)
	movaps	l___const.test.filled_answer(%rip), %xmm0
	movaps	%xmm0, -528(%rbp)
	leaq	-400(%rbp), %rdi
	leaq	-464(%rbp), %rdx
	movl	$64, %esi
	movl	$64, %ecx
	movl	$64, %r8d
	callq	_blake2b
	movq	%rax, %rbx
	leaq	-528(%rbp), %rdi
	movq	%rax, %rsi
	callq	_assert_bytes
	movq	%rbx, %rdi
	callq	_libmin_free
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	addq	$536, %rsp                      ## imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function F
_F:                                     ## @F
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -120(%rbp)                ## 8-byte Spill
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movq	16(%rdi), %rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movq	24(%rdi), %rax
	movq	32(%rdi), %r10
	movq	40(%rdi), %r9
	movq	48(%rdi), %r8
	movabsq	$5840696475078001361, %r12      ## imm = 0x510E527FADE682D1
	xorq	(%rdx), %r12
	movabsq	$-7276294671716946913, %r11     ## imm = 0x9B05688C2B3E6C1F
	xorq	8(%rdx), %r11
	testl	%ecx, %ecx
	movabsq	$2270897969802886507, %rdx      ## imm = 0x1F83D9ABFB41BD6B
	movabsq	$-2270897969802886508, %rcx     ## imm = 0xE07C265404BE4294
	cmoveq	%rdx, %rcx
	movq	%rdi, -128(%rbp)                ## 8-byte Spill
	movq	56(%rdi), %r13
	movabsq	$-6534734903238641935, %rsi     ## imm = 0xA54FF53A5F1D36F1
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	movabsq	$6620516959819538809, %rbx      ## imm = 0x5BE0CD19137E2179
	movabsq	$4354685564936845355, %rsi      ## imm = 0x3C6EF372FE94F82B
	movq	%rsi, -72(%rbp)                 ## 8-byte Spill
	movabsq	$-4942790177534073029, %rdi     ## imm = 0xBB67AE8584CAA73B
	movabsq	$7640891576956012808, %r14      ## imm = 0x6A09E667F3BCC908
	movl	$15, %edx
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %rdx
	movzbl	-15(%rsi,%rdx), %esi
	movq	-120(%rbp), %rax                ## 8-byte Reload
	movq	(%rax,%rsi,8), %rsi
	addq	%r10, %rsi
	addq	%r15, %rsi
	movq	%rsi, %r15
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-14(%rsi,%rdx), %esi
	xorq	%r15, %r12
	addq	(%rax,%rsi,8), %r15
	movq	%r15, -80(%rbp)                 ## 8-byte Spill
	rolq	$32, %r12
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-13(%rsi,%rdx), %esi
	movq	(%rax,%rsi,8), %rdx
	addq	%r9, %rdx
	addq	%r12, %r14
	movq	%r14, -88(%rbp)                 ## 8-byte Spill
	addq	-56(%rbp), %rdx                 ## 8-byte Folded Reload
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %r15
	movzbl	-12(%rsi,%r15), %esi
	xorq	%rdx, %r11
	xorq	%r14, %r10
	rolq	$32, %r11
	rolq	$40, %r10
	addq	%r11, %rdi
	movq	%rdi, -112(%rbp)                ## 8-byte Spill
	xorq	%rdi, %r9
	rolq	$40, %r9
	addq	(%rax,%rsi,8), %rdx
	movq	%rdx, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %rdx
	movzbl	-11(%rsi,%rdx), %edi
	movq	-80(%rbp), %r15                 ## 8-byte Reload
	addq	%r10, %r15
	movq	%r15, -80(%rbp)                 ## 8-byte Spill
	movq	(%rax,%rdi,8), %r14
	addq	%r8, %r14
	addq	-104(%rbp), %r14                ## 8-byte Folded Reload
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	addq	%r9, %rdi
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	xorq	%r14, %rcx
	rolq	$32, %rcx
	xorq	%r15, %r12
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-10(%rsi,%rdx), %esi
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	addq	%rcx, %rax
	xorq	%rax, %r8
	movq	%rax, %r15
	xorq	%rdi, %r11
	rolq	$40, %r8
	rolq	$48, %r12
	movq	-120(%rbp), %rax                ## 8-byte Reload
	addq	(%rax,%rsi,8), %r14
	rolq	$48, %r11
	addq	%r8, %r14
	xorq	%r14, %rcx
	rolq	$48, %rcx
	addq	%r12, -88(%rbp)                 ## 8-byte Folded Spill
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-9(%rsi,%rdx), %edi
	movq	(%rax,%rdi,8), %rdx
	addq	%r11, -112(%rbp)                ## 8-byte Folded Spill
	addq	%r13, %rdx
	addq	-96(%rbp), %rdx                 ## 8-byte Folded Reload
	xorq	%rdx, %rbx
	addq	%rcx, %r15
	movq	%r15, -72(%rbp)                 ## 8-byte Spill
	rolq	$32, %rbx
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	addq	%rbx, %rsi
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	xorq	-88(%rbp), %r10                 ## 8-byte Folded Reload
	xorq	%rsi, %r13
	rolq	$40, %r13
	xorq	-112(%rbp), %r9                 ## 8-byte Folded Reload
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %rdi
	movzbl	-8(%rsi,%rdi), %esi
	addq	(%rax,%rsi,8), %rdx
	xorq	%r15, %r8
	addq	%r13, %rdx
	xorq	%rdx, %rbx
	rolq	%r10
	rolq	$48, %rbx
	rolq	%r9
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	addq	%rbx, %rdi
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	xorq	%rdi, %r13
	rolq	%r8
	rolq	%r13
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %rdi
	movzbl	-7(%rsi,%rdi), %esi
	movq	-80(%rbp), %r15                 ## 8-byte Reload
	addq	%r9, %r15
	addq	(%rax,%rsi,8), %r15
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-6(%rsi,%rdi), %esi
	xorq	%r15, %rbx
	addq	(%rax,%rsi,8), %r15
	movq	%r15, -80(%rbp)                 ## 8-byte Spill
	movq	%rax, %r15
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movq	%rdi, %rax
	movzbl	-5(%rsi,%rdi), %esi
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	addq	%r8, %rdi
	addq	(%r15,%rsi,8), %rdi
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-4(%rsi,%rax), %esi
	xorq	%rdi, %r12
	addq	(%r15,%rsi,8), %rdi
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-3(%rsi,%rax), %esi
	addq	%r13, %r14
	addq	(%r15,%rsi,8), %r14
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-2(%rsi,%rax), %esi
	xorq	%r14, %r11
	addq	(%r15,%rsi,8), %r14
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-1(%rsi,%rax), %esi
	addq	%r10, %rdx
	addq	(%r15,%rsi,8), %rdx
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	(%rsi,%rax), %esi
	xorq	%rdx, %rcx
	addq	(%r15,%rsi,8), %rdx
	movq	%rdx, -96(%rbp)                 ## 8-byte Spill
	rolq	$32, %rbx
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	addq	%rbx, %rax
	xorq	%rax, %r9
	rolq	$40, %r9
	movq	-80(%rbp), %r15                 ## 8-byte Reload
	rolq	$32, %r12
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	addq	%r12, %rsi
	addq	%r9, %r15
	xorq	%rsi, %r8
	rolq	$40, %r8
	xorq	%r15, %rbx
	addq	%r8, %rdi
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	rolq	$32, %r11
	xorq	%rdi, %r12
	addq	%r11, -88(%rbp)                 ## 8-byte Folded Spill
	xorq	-88(%rbp), %r13                 ## 8-byte Folded Reload
	rolq	$48, %rbx
	rolq	$40, %r13
	rolq	$48, %r12
	addq	%rbx, %rax
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movq	-112(%rbp), %rdi                ## 8-byte Reload
	addq	%r13, %r14
	movq	%r14, -104(%rbp)                ## 8-byte Spill
	xorq	%r14, %r11
	addq	%r12, %rsi
	rolq	$48, %r11
	addq	%r11, %rdx
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	xorq	%rax, %r9
	rolq	$32, %rcx
	addq	%rcx, %rdi
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	xorq	%rsi, %r8
	xorq	%rdi, %r10
	rolq	$40, %r10
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rdx, %r14
	xorq	%rdx, %r13
	addq	%r10, %rax
	xorq	%rax, %rcx
	rolq	%r9
	rolq	$48, %rcx
	rolq	%r8
	addq	%rcx, %rdi
	xorq	%rdi, %r10
	rolq	%r13
	rolq	%r10
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	addq	$16, %rsi
	movq	%rsi, %rdx
	cmpq	$207, %rsi
	jne	LBB2_1
## %bb.2:
	xorq	%r15, %r14
	movq	-128(%rbp), %rsi                ## 8-byte Reload
	xorq	%r14, (%rsi)
	xorq	-56(%rbp), %rdi                 ## 8-byte Folded Reload
	xorq	%rdi, 8(%rsi)
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	xorq	-104(%rbp), %rdi                ## 8-byte Folded Reload
	xorq	%rdi, 16(%rsi)
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	xorq	%rax, %rdi
	xorq	%rdi, 24(%rsi)
	xorq	%r10, %r12
	xorq	%r12, 32(%rsi)
	xorq	%r9, %r11
	xorq	%r11, 40(%rsi)
	xorq	%r8, %rcx
	xorq	%rcx, 48(%rsi)
	xorq	%r13, %rbx
	xorq	%rbx, 56(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function assert_bytes
_assert_bytes:                          ## @assert_bytes
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
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	LBB3_1
## %bb.2:
	testq	%r12, %r12
	je	LBB3_3
LBB3_4:
	movl	_testnum(%rip), %esi
	leal	1(%rsi), %eax
	movl	%eax, _testnum(%rip)
	leaq	L_.str.1(%rip), %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %r15
	xorl	%ebx, %ebx
	jmp	LBB3_5
	.p2align	4, 0x90
LBB3_7:                                 ##   in Loop: Header=BB3_5 Depth=1
	incq	%rbx
	cmpq	$64, %rbx
	je	LBB3_8
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rbx), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	(%r14,%rbx), %eax
	cmpb	(%r12,%rbx), %al
	je	LBB3_7
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB3_7
LBB3_8:
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
LBB3_1:
	movl	$1, %edi
	callq	_libmin_fail
	testq	%r12, %r12
	jne	LBB3_4
LBB3_3:
	movl	$1, %edi
	callq	_libmin_fail
	jmp	LBB3_4
	.cfi_endproc
                                        ## -- End function
	.globl	_testnum                        ## @testnum
.zerofill __DATA,__common,_testnum,4,2
	.section	__TEXT,__const
	.p2align	4                               ## @blake2b_iv
_blake2b_iv:
	.quad	7640891576956012808             ## 0x6a09e667f3bcc908
	.quad	-4942790177534073029            ## 0xbb67ae8584caa73b
	.quad	4354685564936845355             ## 0x3c6ef372fe94f82b
	.quad	-6534734903238641935            ## 0xa54ff53a5f1d36f1
	.quad	5840696475078001361             ## 0x510e527fade682d1
	.quad	-7276294671716946913            ## 0x9b05688c2b3e6c1f
	.quad	2270897969802886507             ## 0x1f83d9abfb41bd6b
	.quad	6620516959819538809             ## 0x5be0cd19137e2179

	.p2align	4                               ## @blake2b_sigma
_blake2b_sigma:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\016\n\004\b\t\017\r\006\001\f\000\002\013\007\005\003"
	.ascii	"\013\b\f\000\005\002\017\r\n\016\003\006\007\001\t\004"
	.ascii	"\007\t\003\001\r\f\013\016\002\006\005\n\004\000\017\b"
	.ascii	"\t\000\005\007\002\004\n\017\016\001\013\f\006\b\003\r"
	.ascii	"\002\f\006\n\000\013\b\003\004\r\007\005\017\016\001\t"
	.ascii	"\f\005\001\017\016\r\004\n\000\007\006\003\t\002\b\013"
	.ascii	"\r\013\007\016\f\001\003\t\005\000\017\004\b\006\002\n"
	.ascii	"\006\017\016\t\013\003\000\b\f\002\r\007\001\004\n\005"
	.asciz	"\n\002\b\004\007\006\001\005\017\013\t\016\003\f\r"
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017"
	.ascii	"\016\n\004\b\t\017\r\006\001\f\000\002\013\007\005\003"

l___const.test.abc:                     ## @__const.test.abc
	.ascii	"abc"

	.p2align	4                               ## @__const.test.abc_answer
l___const.test.abc_answer:
	.ascii	"\272\200\245?\230\034M\rj'\227\266\237\022\366\351L!/\024hZ\304\267K\022\273o\333\377\242\321}\207\3059*\253y-\302R\325\336E3\314\225\030\323\212\250\333\361\222Z\271#\206\355\324\000\231#"

	.p2align	4                               ## @__const.test.key_answer
l___const.test.key_answer:
	.ascii	"\020\353\266w\000\261\206\216\373D\027\230z\317F\220\256\235\227/\267\245\220\302\360(qy\232\252G\206\265\351\226\350\360\364\353\230\037\302\024\260\005\364-/\364#4\2319\026S\337z\357\313\301?\305\025h"

	.p2align	4                               ## @__const.test.zero_answer
l___const.test.zero_answer:
	.ascii	"\226\037m\321\344\3350\3669\001i\fQ.x\344\264^GB\355\031|<^E\305I\375%\362\344\030{\013\311\3760I+\026\260\320\274N\371\260\363Lp\003\372\300\232^\361S.iC\0024\316\275"

	.p2align	4                               ## @__const.test.filled_key
l___const.test.filled_key:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?"

	.p2align	4                               ## @__const.test.filled_answer
l___const.test.filled_answer:
	.ascii	"egm\200\006\027\227/\275\207\344\271QN\034g@+z3\020\226\323\277\254\"\361\253\271St\253\311B\361n\232\260\352\323;\207\311\031h\246\345\t\341\031\377\007x{>\364\203\341\334\334\317n0\""

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"INFO: All tests have successfully passed!\n"

L_.str.1:                               ## @.str.1
	.asciz	"Test #%d:\n"

L_.str.2:                               ## @.str.2
	.asciz	"Expected[] = { "

L_.str.3:                               ## @.str.3
	.asciz	"0x%02x "

L_.str.4:                               ## @.str.4
	.asciz	" }\n"

.subsections_via_symbols
