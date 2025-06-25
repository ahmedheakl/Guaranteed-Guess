	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	testq	%rdi, %rdi
	cmoveq	%rdi, %rbx
	testq	%rdx, %rdx
	movq	%rdi, -176(%rbp)                ## 8-byte Spill
	je	LBB0_1
## %bb.2:
	movzbl	%cl, %eax
	cmpb	$64, %al
	movl	$64, %ecx
	cmovbl	%eax, %ecx
	jmp	LBB0_3
LBB0_1:
	xorl	%ecx, %ecx
LBB0_3:
	movzbl	%r8b, %eax
	cmpb	$64, %al
	movl	$64, %r12d
	cmovbl	%eax, %r12d
	xorl	%r13d, %r13d
	movl	%ecx, -164(%rbp)                ## 4-byte Spill
	testb	%cl, %cl
	setne	%r13b
	movq	%rbx, %rdi
	shrq	$7, %rdi
	movl	%ebx, %eax
	andl	$127, %eax
	cmpq	$1, %rax
	sbbq	$-1, %rdi
	leaq	(%rdi,%r13), %rax
	movq	%rax, -216(%rbp)                ## 8-byte Spill
	cmpq	$1, %rax
	adcq	%r13, %rdi
	movl	$128, %esi
	movq	%rdi, -192(%rbp)                ## 8-byte Spill
	callq	_libmin_calloc
	testq	%rax, %rax
	je	LBB0_4
## %bb.5:
	movq	%rax, %r15
	movl	%r12d, -180(%rbp)               ## 4-byte Spill
	movzbl	%r12b, %r12d
	movq	%r12, %rdi
	callq	_libmin_malloc
	movq	%rax, -208(%rbp)                ## 8-byte Spill
	testq	%rax, %rax
	je	LBB0_6
## %bb.10:
	movl	-164(%rbp), %ecx                ## 4-byte Reload
	movzbl	%cl, %eax
	testb	%cl, %cl
	je	LBB0_15
## %bb.11:
	cmpb	$1, -164(%rbp)                  ## 1-byte Folded Reload
	jne	LBB0_32
## %bb.12:
	xorl	%edx, %edx
	jmp	LBB0_13
LBB0_4:
	xorl	%ebx, %ebx
	jmp	LBB0_8
LBB0_6:
	xorl	%ebx, %ebx
	jmp	LBB0_7
LBB0_32:
	movl	%eax, %esi
	andl	$126, %esi
	movl	$8, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_33:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rdx), %r8d
	leal	-8(%rdi), %ecx
	andb	$48, %cl
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r8
	movl	%edx, %r9d
	shrl	$3, %r9d
	andl	$15, %r9d
	orq	(%r15,%r9,8), %r8
	movq	%r8, (%r15,%r9,8)
	movzbl	1(%r14,%rdx), %r10d
	movl	%edi, %ecx
	andb	$56, %cl
	shlq	%cl, %r10
	orq	%r8, %r10
	movq	%r10, (%r15,%r9,8)
	addq	$2, %rdx
	addq	$16, %rdi
	cmpq	%rdx, %rsi
	jne	LBB0_33
LBB0_13:
	testb	$1, %al
	je	LBB0_15
## %bb.14:
	movzbl	(%r14,%rdx), %esi
	leal	(,%rdx,8), %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	shrl	$3, %edx
	andl	$15, %edx
	orq	%rsi, (%r15,%rdx,8)
LBB0_15:
	testq	%rbx, %rbx
	movq	-176(%rbp), %r9                 ## 8-byte Reload
	je	LBB0_18
## %bb.16:
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%rsi), %edi
	movl	%edx, %ecx
	andb	$56, %cl
	shlq	%cl, %rdi
	movq	%rsi, %rcx
	shrq	$7, %rcx
	addq	%r13, %rcx
	movl	%esi, %r8d
	shrl	$3, %r8d
	andl	$15, %r8d
	shlq	$7, %rcx
	addq	%r15, %rcx
	orq	%rdi, (%rcx,%r8,8)
	incq	%rsi
	addq	$8, %rdx
	cmpq	%rsi, %rbx
	jne	LBB0_17
LBB0_18:
	shlq	$8, %rax
	movq	%r12, -176(%rbp)                ## 8-byte Spill
	orq	%r12, %rax
	movabsq	$7640891576939301128, %rcx      ## imm = 0x6A09E667F2BDC908
	xorq	%rax, %rcx
	movq	%rbx, -200(%rbp)                ## 8-byte Spill
	movq	%rbx, -160(%rbp)
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
	movq	%rcx, -128(%rbp)
	cmpq	$2, -216(%rbp)                  ## 8-byte Folded Reload
	jb	LBB0_23
## %bb.19:
	movq	-192(%rbp), %rax                ## 8-byte Reload
	leaq	-1(%rax), %r13
	xorl	%ebx, %ebx
	leaq	-144(%rbp), %r12
	xorl	%esi, %esi
	jmp	LBB0_20
	.p2align	4, 0x90
LBB0_22:                                ##   in Loop: Header=BB0_20 Depth=1
	leaq	128(%rsi), %r14
	movq	%r14, -144(%rbp)
	addq	%r15, %rsi
	leaq	-128(%rbp), %rdi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	_F
	movq	%r14, %rsi
	decq	%r13
	je	LBB0_23
LBB0_20:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$-129, %rsi
	jb	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_20 Depth=1
	incq	%rbx
	movq	%rbx, -136(%rbp)
	jmp	LBB0_22
LBB0_23:
	cmpb	$0, -164(%rbp)                  ## 1-byte Folded Reload
	movq	-208(%rbp), %rbx                ## 8-byte Reload
	movl	-180(%rbp), %r14d               ## 4-byte Reload
	je	LBB0_27
## %bb.24:
	movq	-200(%rbp), %rax                ## 8-byte Reload
	cmpq	$-129, %rax
	jb	LBB0_26
## %bb.25:
	movq	$1, -152(%rbp)
LBB0_26:
	subq	$-128, %rax
	movq	%rax, -160(%rbp)
LBB0_27:
	movq	-192(%rbp), %rax                ## 8-byte Reload
	shlq	$7, %rax
	leaq	(%rax,%r15), %rsi
	addq	$-128, %rsi
	leaq	-128(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movl	$1, %ecx
	callq	_F
	testb	%r14b, %r14b
	movq	-176(%rbp), %rsi                ## 8-byte Reload
	je	LBB0_7
## %bb.28:
	xorl	%eax, %eax
	jmp	LBB0_29
	.p2align	4, 0x90
LBB0_31:                                ##   in Loop: Header=BB0_29 Depth=1
	movzbl	-56(%rbp,%rcx), %ecx
	movb	%cl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rsi
	je	LBB0_7
LBB0_29:                                ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	andq	$7, %rcx
	jne	LBB0_31
## %bb.30:                              ##   in Loop: Header=BB0_29 Depth=1
	movq	%rax, %rdx
	andq	$-8, %rdx
	movq	-128(%rbp,%rdx), %rdx
	movq	%rdx, -56(%rbp)
	jmp	LBB0_31
LBB0_7:
	movq	%r15, %rdi
	callq	_libmin_free
LBB0_8:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_34
## %bb.9:
	movq	%rbx, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_34:
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
	movq	%rsi, -128(%rbp)                ## 8-byte Spill
	movq	(%rdi), %r13
	movq	8(%rdi), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	16(%rdi), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movq	24(%rdi), %r15
	movq	32(%rdi), %r9
	movq	40(%rdi), %r14
	movq	48(%rdi), %rax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	movabsq	$5840696475078001361, %rbx      ## imm = 0x510E527FADE682D1
	xorq	(%rdx), %rbx
	movabsq	$-7276294671716946913, %r10     ## imm = 0x9B05688C2B3E6C1F
	xorq	8(%rdx), %r10
	testl	%ecx, %ecx
	movabsq	$2270897969802886507, %rcx      ## imm = 0x1F83D9ABFB41BD6B
	movabsq	$-2270897969802886508, %r11     ## imm = 0xE07C265404BE4294
	cmoveq	%rcx, %r11
	movq	%rdi, -120(%rbp)                ## 8-byte Spill
	movq	56(%rdi), %rcx
	movabsq	$-6534734903238641935, %rdx     ## imm = 0xA54FF53A5F1D36F1
	movq	%rdx, -104(%rbp)                ## 8-byte Spill
	movabsq	$6620516959819538809, %rdx      ## imm = 0x5BE0CD19137E2179
	movabsq	$4354685564936845355, %rsi      ## imm = 0x3C6EF372FE94F82B
	movq	%rsi, -96(%rbp)                 ## 8-byte Spill
	movabsq	$-4942790177534073029, %rax     ## imm = 0xBB67AE8584CAA73B
	movabsq	$7640891576956012808, %rsi      ## imm = 0x6A09E667F3BCC908
	movq	%rsi, -72(%rbp)                 ## 8-byte Spill
	movl	$15, %esi
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, -136(%rbp)                ## 8-byte Spill
	movq	%rsi, -48(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %r8
	movzbl	-15(%rsi,%r8), %esi
	movq	-128(%rbp), %r12                ## 8-byte Reload
	movq	(%r12,%rsi,8), %rdi
	addq	%r9, %rdi
	addq	%r13, %rdi
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-14(%rsi,%r8), %esi
	xorq	%rdi, %rbx
	movq	%rdi, %r15
	addq	(%r12,%rsi,8), %r15
	rolq	$32, %rbx
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movzbl	-13(%rsi,%r8), %esi
	movq	(%r12,%rsi,8), %rsi
	addq	%r14, %rsi
	movq	-72(%rbp), %r13                 ## 8-byte Reload
	addq	%rbx, %r13
	movq	%r13, -72(%rbp)                 ## 8-byte Spill
	addq	-64(%rbp), %rsi                 ## 8-byte Folded Reload
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movzbl	-12(%rdi,%r8), %edi
	xorq	%rsi, %r10
	xorq	%r13, %r9
	rolq	$32, %r10
	rolq	$40, %r9
	addq	%r10, %rax
	movq	%rax, -112(%rbp)                ## 8-byte Spill
	xorq	%rax, %r14
	rolq	$40, %r14
	movq	%r14, -56(%rbp)                 ## 8-byte Spill
	addq	(%r12,%rdi,8), %rsi
	movq	%r12, %r13
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%r8, %rax
	movzbl	-11(%rdi,%r8), %edi
	addq	%r9, %r15
	movq	%r15, -64(%rbp)                 ## 8-byte Spill
	movq	(%r12,%rdi,8), %r14
	movq	-80(%rbp), %r8                  ## 8-byte Reload
	addq	%r8, %r14
	addq	-88(%rbp), %r14                 ## 8-byte Folded Reload
	addq	-56(%rbp), %rsi                 ## 8-byte Folded Reload
	movq	%rsi, -88(%rbp)                 ## 8-byte Spill
	xorq	%r14, %r11
	rolq	$32, %r11
	xorq	%r15, %rbx
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %r15
	movzbl	-10(%rdi,%rax), %edi
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	addq	%r11, %rax
	xorq	%rax, %r8
	xorq	%rsi, %r10
	rolq	$40, %r8
	rolq	$48, %rbx
	addq	(%r12,%rdi,8), %r14
	rolq	$48, %r10
	addq	%r8, %r14
	xorq	%r14, %r11
	rolq	$48, %r11
	movq	-72(%rbp), %rsi                 ## 8-byte Reload
	addq	%rbx, %rsi
	movq	%rsi, -72(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movzbl	-9(%rdi,%r15), %edi
	movq	(%r12,%rdi,8), %r12
	addq	%r10, -112(%rbp)                ## 8-byte Folded Spill
	addq	%rcx, %r12
	addq	-136(%rbp), %r12                ## 8-byte Folded Reload
	xorq	%r12, %rdx
	addq	%r11, %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	rolq	$32, %rdx
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	addq	%rdx, %rdi
	xorq	%rsi, %r9
	xorq	%rdi, %rcx
	rolq	$40, %rcx
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	xorq	-112(%rbp), %rsi                ## 8-byte Folded Reload
	movq	%rsi, -56(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	leaq	_blake2b_sigma(%rip), %rsi
	movzbl	-8(%r15,%rsi), %r15d
	addq	(%r13,%r15,8), %r12
	xorq	%rax, %r8
	addq	%rcx, %r12
	xorq	%r12, %rdx
	rolq	%r9
	rolq	$48, %rdx
	rolq	-56(%rbp)                       ## 8-byte Folded Spill
	addq	%rdx, %rdi
	xorq	%rdi, %rcx
	rolq	%r8
	rolq	%rcx
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-7(%r15,%rsi), %r15d
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	addq	-56(%rbp), %rax                 ## 8-byte Folded Reload
	addq	(%r13,%r15,8), %rax
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-6(%r15,%rsi), %r15d
	xorq	%rax, %rdx
	addq	(%r13,%r15,8), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movq	%rsi, %rax
	movzbl	-5(%r15,%rsi), %r15d
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	addq	%r8, %rsi
	addq	(%r13,%r15,8), %rsi
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-4(%r15,%rax), %r15d
	xorq	%rsi, %rbx
	addq	(%r13,%r15,8), %rsi
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-3(%r15,%rax), %r15d
	addq	%rcx, %r14
	addq	(%r13,%r15,8), %r14
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-2(%r15,%rax), %r15d
	xorq	%r14, %r10
	addq	(%r13,%r15,8), %r14
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	-1(%r15,%rax), %r15d
	addq	%r9, %r12
	addq	(%r13,%r15,8), %r12
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movzbl	(%r15,%rax), %r15d
	xorq	%r12, %r11
	addq	(%r13,%r15,8), %r12
	movq	%r12, -80(%rbp)                 ## 8-byte Spill
	rolq	$32, %rdx
	movq	-96(%rbp), %r15                 ## 8-byte Reload
	addq	%rdx, %r15
	xorq	%r15, -56(%rbp)                 ## 8-byte Folded Spill
	rolq	$40, -56(%rbp)                  ## 8-byte Folded Spill
	rolq	$32, %rbx
	addq	%rbx, %rdi
	movq	-64(%rbp), %r12                 ## 8-byte Reload
	movq	%r8, %rax
	xorq	%rdi, %rax
	rolq	$40, %rax
	addq	-56(%rbp), %r12                 ## 8-byte Folded Reload
	movq	%rsi, %r8
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	rolq	$32, %r10
	xorq	%r12, %rdx
	addq	%rax, %r8
	movq	%r8, -64(%rbp)                  ## 8-byte Spill
	movq	%rax, %r8
	movq	-72(%rbp), %r13                 ## 8-byte Reload
	addq	%r10, %r13
	xorq	%r13, %rcx
	xorq	-64(%rbp), %rbx                 ## 8-byte Folded Reload
	rolq	$40, %rcx
	rolq	$48, %rdx
	movq	-112(%rbp), %rax                ## 8-byte Reload
	addq	%rcx, %r14
	rolq	$48, %rbx
	movq	%r14, -88(%rbp)                 ## 8-byte Spill
	xorq	%r14, %r10
	movq	-56(%rbp), %r14                 ## 8-byte Reload
	rolq	$48, %r10
	addq	%rdx, %r15
	addq	%rbx, %rdi
	rolq	$32, %r11
	movq	%r15, -96(%rbp)                 ## 8-byte Spill
	xorq	%r15, %r14
	addq	%r10, %r13
	addq	%r11, %rax
	xorq	%rax, %r9
	movq	%rdi, -104(%rbp)                ## 8-byte Spill
	xorq	%rdi, %r8
	rolq	$40, %r9
	movq	-80(%rbp), %r15                 ## 8-byte Reload
	movq	%r13, -72(%rbp)                 ## 8-byte Spill
	xorq	%r13, %rcx
	movq	%r12, %r13
	addq	%r9, %r15
	xorq	%r15, %r11
	rolq	%r14
	rolq	$48, %r11
	rolq	%r8
	movq	%r8, -80(%rbp)                  ## 8-byte Spill
	addq	%r11, %rax
	xorq	%rax, %r9
	rolq	%rcx
	rolq	%r9
	addq	$16, %rsi
	cmpq	$207, %rsi
	jne	LBB2_1
## %bb.2:
	movq	-120(%rbp), %rsi                ## 8-byte Reload
	xorq	(%rsi), %r13
	xorq	-72(%rbp), %r13                 ## 8-byte Folded Reload
	movq	%r13, (%rsi)
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	xorq	8(%rsi), %rdi
	xorq	%rax, %rdi
	movq	%rdi, 8(%rsi)
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	xorq	16(%rsi), %rax
	xorq	-96(%rbp), %rax                 ## 8-byte Folded Reload
	movq	%rax, 16(%rsi)
	xorq	24(%rsi), %r15
	xorq	-104(%rbp), %r15                ## 8-byte Folded Reload
	movq	%r15, 24(%rsi)
	xorq	32(%rsi), %r9
	xorq	%rbx, %r9
	movq	%r9, 32(%rsi)
	xorq	40(%rsi), %r14
	xorq	%r10, %r14
	movq	%r14, 40(%rsi)
	movq	-80(%rbp), %rax                 ## 8-byte Reload
	xorq	48(%rsi), %rax
	xorq	%r11, %rax
	movq	%rax, 48(%rsi)
	xorq	56(%rsi), %rcx
	xorq	%rdx, %rcx
	movq	%rcx, 56(%rsi)
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	LBB3_1
## %bb.2:
	testq	%rbx, %rbx
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
	xorl	%r12d, %r12d
	jmp	LBB3_5
	.p2align	4, 0x90
LBB3_7:                                 ##   in Loop: Header=BB3_5 Depth=1
	incq	%r12
	cmpq	$64, %r12
	je	LBB3_8
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r12), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movzbl	(%r14,%r12), %eax
	cmpb	(%rbx,%r12), %al
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
	testq	%rbx, %rbx
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
	.p2align	4, 0x0                          ## @blake2b_iv
_blake2b_iv:
	.quad	7640891576956012808             ## 0x6a09e667f3bcc908
	.quad	-4942790177534073029            ## 0xbb67ae8584caa73b
	.quad	4354685564936845355             ## 0x3c6ef372fe94f82b
	.quad	-6534734903238641935            ## 0xa54ff53a5f1d36f1
	.quad	5840696475078001361             ## 0x510e527fade682d1
	.quad	-7276294671716946913            ## 0x9b05688c2b3e6c1f
	.quad	2270897969802886507             ## 0x1f83d9abfb41bd6b
	.quad	6620516959819538809             ## 0x5be0cd19137e2179

	.p2align	4, 0x0                          ## @blake2b_sigma
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

	.p2align	4, 0x0                          ## @__const.test.abc_answer
l___const.test.abc_answer:
	.ascii	"\272\200\245?\230\034M\rj'\227\266\237\022\366\351L!/\024hZ\304\267K\022\273o\333\377\242\321}\207\3059*\253y-\302R\325\336E3\314\225\030\323\212\250\333\361\222Z\271#\206\355\324\000\231#"

	.p2align	4, 0x0                          ## @__const.test.key_answer
l___const.test.key_answer:
	.ascii	"\020\353\266w\000\261\206\216\373D\027\230z\317F\220\256\235\227/\267\245\220\302\360(qy\232\252G\206\265\351\226\350\360\364\353\230\037\302\024\260\005\364-/\364#4\2319\026S\337z\357\313\301?\305\025h"

	.p2align	4, 0x0                          ## @__const.test.zero_answer
l___const.test.zero_answer:
	.ascii	"\226\037m\321\344\3350\3669\001i\fQ.x\344\264^GB\355\031|<^E\305I\375%\362\344\030{\013\311\3760I+\026\260\320\274N\371\260\363Lp\003\372\300\232^\361S.iC\0024\316\275"

	.p2align	4, 0x0                          ## @__const.test.filled_key
l___const.test.filled_key:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?"

	.p2align	4, 0x0                          ## @__const.test.filled_answer
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
