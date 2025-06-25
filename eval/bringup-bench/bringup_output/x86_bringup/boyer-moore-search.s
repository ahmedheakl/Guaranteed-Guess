	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_badCharHeuristic               ## -- Begin function badCharHeuristic
	.p2align	4, 0x90
_badCharHeuristic:                      ## @badCharHeuristic
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
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	$1024, %edx                     ## imm = 0x400
	movq	%rbx, %rdi
	movl	$255, %esi
	callq	_memset
	testl	%r15d, %r15d
	jle	LBB0_5
## %bb.1:
	movl	%r15d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r15d
	jae	LBB0_6
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB0_3
LBB0_6:
	andl	$-4, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%rcx), %rsi
	movl	%ecx, (%rbx,%rsi,4)
	movsbq	1(%r14,%rcx), %rsi
	leal	1(%rcx), %edi
	movl	%edi, (%rbx,%rsi,4)
	movsbq	2(%r14,%rcx), %rsi
	leal	2(%rcx), %edi
	movl	%edi, (%rbx,%rsi,4)
	movsbq	3(%r14,%rcx), %rsi
	leal	3(%rcx), %edi
	movl	%edi, (%rbx,%rsi,4)
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	jne	LBB0_7
LBB0_3:
	testq	%rax, %rax
	je	LBB0_5
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%rcx), %rdx
	movl	%ecx, (%rbx,%rdx,4)
	incq	%rcx
	decq	%rax
	jne	LBB0_4
LBB0_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_search                         ## -- Begin function search
	.p2align	4, 0x90
_search:                                ## @search
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
	subq	$1048, %rsp                     ## imm = 0x418
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, -1080(%rbp)                ## 8-byte Spill
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-1072(%rbp), %rdi
	movl	$1024, %edx                     ## imm = 0x400
	movl	$255, %esi
	callq	_memset
	testl	%r14d, %r14d
	jle	LBB1_7
## %bb.1:
	movl	%r14d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r14d
	jae	LBB1_3
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB1_5
LBB1_3:
	andl	$-4, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%rcx), %rsi
	movl	%ecx, -1072(%rbp,%rsi,4)
	movsbq	1(%r15,%rcx), %rsi
	leal	1(%rcx), %edi
	movl	%edi, -1072(%rbp,%rsi,4)
	movsbq	2(%r15,%rcx), %rsi
	leal	2(%rcx), %edi
	movl	%edi, -1072(%rbp,%rsi,4)
	movsbq	3(%r15,%rcx), %rsi
	leal	3(%rcx), %edi
	movl	%edi, -1072(%rbp,%rsi,4)
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	jne	LBB1_4
LBB1_5:
	testq	%rax, %rax
	je	LBB1_7
	.p2align	4, 0x90
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%rcx), %rdx
	movl	%ecx, -1072(%rbp,%rdx,4)
	incq	%rcx
	decq	%rax
	jne	LBB1_6
LBB1_7:
	movl	%r12d, %eax
	subl	%r14d, %eax
	js	LBB1_17
## %bb.8:
	movslq	%r14d, %rcx
	leaq	-1(%r13), %rdx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
	movslq	%esi, %r10
	leaq	(%rdx,%r10), %r11
	movq	%rcx, %r9
	.p2align	4, 0x90
LBB1_10:                                ##   Parent Loop BB1_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%r9, %r9
	jle	LBB1_13
## %bb.11:                              ##   in Loop: Header=BB1_10 Depth=2
	leaq	-1(%r9), %rdi
	movl	%edi, %ebx
	movzbl	(%r15,%rbx), %ebx
	cmpb	(%r11,%r9), %bl
	movq	%rdi, %r9
	je	LBB1_10
## %bb.12:                              ##   in Loop: Header=BB1_9 Depth=1
	leal	(%rsi,%rdi), %r9d
	movslq	%r9d, %r9
	movsbq	(%r13,%r9), %r9
	movl	-1072(%rbp,%r9,4), %r9d
	subl	%r9d, %edi
	cmpl	$2, %edi
	movl	$1, %r9d
	cmovll	%r9d, %edi
	jmp	LBB1_15
	.p2align	4, 0x90
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=1
	movq	-1080(%rbp), %rdi               ## 8-byte Reload
	movl	$1, (%rdi,%r10,4)
	addl	%r14d, %r10d
	movl	$1, %edi
	cmpl	%r12d, %r10d
	jge	LBB1_15
## %bb.14:                              ##   in Loop: Header=BB1_9 Depth=1
	movslq	%r10d, %rdi
	movsbq	(%r13,%rdi), %r9
	movl	%r14d, %edi
	subl	-1072(%rbp,%r9,4), %edi
LBB1_15:                                ##   in Loop: Header=BB1_9 Depth=1
	cmpl	%eax, %r8d
	jge	LBB1_17
## %bb.16:                              ##   in Loop: Header=BB1_9 Depth=1
	addl	%edi, %esi
	incl	%r8d
	cmpl	%eax, %esi
	jle	LBB1_9
LBB1_17:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB1_19
## %bb.18:
	addq	$1048, %rsp                     ## imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_19:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp                     ## imm = 0x418
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	_inp_txt(%rip), %rdi
	callq	_libmin_strlen
	movq	%rax, %r14
	leaq	_inp_pat(%rip), %rdi
	callq	_libmin_strlen
	movq	%rax, %r15
	leaq	L_.str(%rip), %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	%r14d, %ebx
	movq	%rbx, %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r12
	testl	%r14d, %r14d
	jle	LBB2_2
## %bb.1:
	leaq	_inp_txt(%rip), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	_memcpy
LBB2_2:
	movq	%r14, -1080(%rbp)               ## 8-byte Spill
	movq	%rbx, -1088(%rbp)               ## 8-byte Spill
	movl	%r15d, %ebx
	movq	%rbx, %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r14
	testl	%r15d, %r15d
	jle	LBB2_4
## %bb.3:
	leaq	_inp_pat(%rip), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_memcpy
LBB2_4:
	movq	-1088(%rbp), %rax               ## 8-byte Reload
	leaq	(,%rax,4), %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r13
	movq	-1080(%rbp), %rax               ## 8-byte Reload
	testl	%eax, %eax
	jle	LBB2_6
## %bb.5:
	movl	%eax, %esi
	shlq	$2, %rsi
	movq	%r13, %rdi
	callq	___bzero
LBB2_6:
	leaq	-1072(%rbp), %rdi
	movl	$1024, %edx                     ## imm = 0x400
	movl	$255, %esi
	callq	_memset
	testl	%r15d, %r15d
	jle	LBB2_13
## %bb.7:
	leaq	-1(%rbx), %rcx
	movl	%r15d, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	LBB2_9
## %bb.8:
	xorl	%ecx, %ecx
	jmp	LBB2_11
LBB2_9:
	subq	%rax, %rbx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB2_10:                                ## =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%rcx), %rdx
	movl	%ecx, -1072(%rbp,%rdx,4)
	movsbq	1(%r14,%rcx), %rdx
	leal	1(%rcx), %esi
	movl	%esi, -1072(%rbp,%rdx,4)
	movsbq	2(%r14,%rcx), %rdx
	leal	2(%rcx), %esi
	movl	%esi, -1072(%rbp,%rdx,4)
	movsbq	3(%r14,%rcx), %rdx
	leal	3(%rcx), %esi
	movl	%esi, -1072(%rbp,%rdx,4)
	addq	$4, %rcx
	cmpq	%rbx, %rcx
	jne	LBB2_10
LBB2_11:
	testq	%rax, %rax
	je	LBB2_13
	.p2align	4, 0x90
LBB2_12:                                ## =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%rcx), %rdx
	movl	%ecx, -1072(%rbp,%rdx,4)
	incq	%rcx
	decq	%rax
	jne	LBB2_12
LBB2_13:
	movq	-1080(%rbp), %rax               ## 8-byte Reload
                                        ## kill: def $eax killed $eax killed $rax
	subl	%r15d, %eax
	js	LBB2_23
## %bb.14:
	movslq	%r15d, %rcx
	decq	%rcx
	xorl	%edx, %edx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB2_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_16 Depth 2
	movslq	%edx, %r9
	leaq	(%r12,%r9), %r10
	movq	%rcx, %r11
	movl	%r15d, %r8d
	.p2align	4, 0x90
LBB2_16:                                ##   Parent Loop BB2_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	1(%r11), %rbx
	testq	%rbx, %rbx
	jle	LBB2_19
## %bb.17:                              ##   in Loop: Header=BB2_16 Depth=2
	movl	%r11d, %ebx
	movzbl	(%r14,%rbx), %ebx
	decl	%r8d
	leaq	-1(%r11), %rsi
	cmpb	(%r10,%r11), %bl
	movq	%rsi, %r11
	je	LBB2_16
## %bb.18:                              ##   in Loop: Header=BB2_15 Depth=1
	leal	(%rdx,%r8), %esi
	movslq	%esi, %rsi
	movsbq	(%r12,%rsi), %rsi
	subl	-1072(%rbp,%rsi,4), %r8d
	cmpl	$2, %r8d
	movl	$1, %esi
	cmovll	%esi, %r8d
	jmp	LBB2_21
	.p2align	4, 0x90
LBB2_19:                                ##   in Loop: Header=BB2_15 Depth=1
	movl	$1, (%r13,%r9,4)
	addl	%r15d, %r9d
	movl	$1, %r8d
	cmpl	-1080(%rbp), %r9d               ## 4-byte Folded Reload
	jge	LBB2_21
## %bb.20:                              ##   in Loop: Header=BB2_15 Depth=1
	movslq	%r9d, %rsi
	movsbq	(%r12,%rsi), %rsi
	movl	%r15d, %r8d
	subl	-1072(%rbp,%rsi,4), %r8d
LBB2_21:                                ##   in Loop: Header=BB2_15 Depth=1
	cmpl	%eax, %edi
	jge	LBB2_23
## %bb.22:                              ##   in Loop: Header=BB2_15 Depth=1
	addl	%r8d, %edx
	incl	%edi
	cmpl	%eax, %edx
	jle	LBB2_15
LBB2_23:
	cmpl	$0, -1080(%rbp)                 ## 4-byte Folded Reload
	movq	-1088(%rbp), %r15               ## 8-byte Reload
	jle	LBB2_28
## %bb.24:
	leaq	L_.str.1(%rip), %rbx
	xorl	%r14d, %r14d
	jmp	LBB2_25
	.p2align	4, 0x90
LBB2_27:                                ##   in Loop: Header=BB2_25 Depth=1
	incq	%r14
	cmpq	%r14, %r15
	je	LBB2_28
LBB2_25:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r13,%r14,4)
	je	LBB2_27
## %bb.26:                              ##   in Loop: Header=BB2_25 Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_27
LBB2_28:
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB2_30
## %bb.29:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_30:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_inp_pat                        ## @inp_pat
	.p2align	4, 0x0
_inp_pat:
	.asciz	"NzZVOzZXNoGXMl8yxesyY"

	.globl	_inp_txt                        ## @inp_txt
	.p2align	4, 0x0
_inp_txt:
	.asciz	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyjzZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2facymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2JacyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZuzJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfMlsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnNjnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzNoWzMssyrzLPNjcypZ8yhzJ/MvMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"n = %d, m = %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"pattern occurs at shift = %d\n"

.subsections_via_symbols
