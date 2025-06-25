	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_next                           ## -- Begin function next
	.p2align	4, 0x90
_next:                                  ## @next
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
	movq	_src@GOTPCREL(%rip), %r14
	movq	(%r14), %r15
	movsbq	(%r15), %rax
	movq	_token@GOTPCREL(%rip), %r10
	movq	%rax, (%r10)
	testq	%rax, %rax
	je	LBB0_97
## %bb.1:
	movq	_line@GOTPCREL(%rip), %rsi
	movq	_old_text@GOTPCREL(%rip), %r12
	movq	_text@GOTPCREL(%rip), %r13
	movl	%eax, %ebx
	jmp	LBB0_6
LBB0_2:                                 ##   in Loop: Header=BB0_6 Depth=1
	movq	(%r14), %rdx
	movq	_token@GOTPCREL(%rip), %r10
	movq	%r15, %rsi
LBB0_3:                                 ##   in Loop: Header=BB0_6 Depth=1
	incq	(%rsi)
LBB0_4:                                 ##   in Loop: Header=BB0_6 Depth=1
	movb	(%rdx), %bl
LBB0_5:                                 ##   in Loop: Header=BB0_6 Depth=1
	movsbq	%bl, %rax
	movq	%rax, (%r10)
	movq	%rdx, %r15
	testb	%al, %al
	je	LBB0_97
LBB0_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_26 Depth 2
                                        ##     Child Loop BB0_8 Depth 2
                                        ##     Child Loop BB0_16 Depth 2
	leaq	1(%r15), %rdx
	movq	%rdx, (%r14)
	cmpq	$10, %rax
	je	LBB0_11
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	cmpq	$35, %rax
	jne	LBB0_18
	.p2align	4, 0x90
LBB0_8:                                 ##   Parent Loop BB0_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %ebx
	testb	%bl, %bl
	je	LBB0_5
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=2
	cmpb	$10, %bl
	je	LBB0_5
## %bb.10:                              ##   in Loop: Header=BB0_8 Depth=2
	incq	%rdx
	movq	%rdx, (%r14)
	jmp	LBB0_8
	.p2align	4, 0x90
LBB0_11:                                ##   in Loop: Header=BB0_6 Depth=1
	movq	_assembly@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	LBB0_3
## %bb.12:                              ##   in Loop: Header=BB0_6 Depth=1
	movq	%rsi, %r15
	movq	(%rsi), %rsi
	movq	_old_src@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	subl	%ecx, %edx
	leaq	L_.str.1(%rip), %rdi
                                        ## kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	%r15, %rsi
	movq	_token@GOTPCREL(%rip), %r10
	movq	(%r14), %rdx
	movq	%rdx, (%rbx)
	movq	(%r12), %rax
	cmpq	(%r13), %rax
	jae	LBB0_3
## %bb.13:                              ##   in Loop: Header=BB0_6 Depth=1
	leaq	L_.str.3(%rip), %rbx
	jmp	LBB0_16
	.p2align	4, 0x90
LBB0_14:                                ##   in Loop: Header=BB0_16 Depth=2
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB0_15:                                ##   in Loop: Header=BB0_16 Depth=2
	movq	(%r12), %rax
	cmpq	(%r13), %rax
	jae	LBB0_2
LBB0_16:                                ##   Parent Loop BB0_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	8(%rax), %rcx
	movq	%rcx, (%r12)
	movq	8(%rax), %rax
	leaq	(%rax,%rax,4), %rsi
	addq	%rbx, %rsi
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%r12), %rax
	cmpq	$7, (%rax)
	jg	LBB0_14
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=2
	leaq	8(%rax), %rcx
	movq	%rcx, (%r12)
	movq	8(%rax), %rsi
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB0_15
	.p2align	4, 0x90
LBB0_18:                                ##   in Loop: Header=BB0_6 Depth=1
	leaq	-97(%rax), %rcx
	cmpq	$26, %rcx
	jb	LBB0_29
## %bb.19:                              ##   in Loop: Header=BB0_6 Depth=1
	cmpb	$95, %bl
	je	LBB0_29
## %bb.20:                              ##   in Loop: Header=BB0_6 Depth=1
	leaq	-65(%rax), %rcx
	cmpq	$25, %rcx
	jbe	LBB0_29
## %bb.21:                              ##   in Loop: Header=BB0_6 Depth=1
	leaq	-48(%rax), %rcx
	cmpq	$9, %rcx
	jbe	LBB0_42
## %bb.22:                              ##   in Loop: Header=BB0_6 Depth=1
	leaq	-33(%rax), %rcx
	cmpq	$93, %rcx
	ja	LBB0_4
## %bb.23:                              ##   in Loop: Header=BB0_6 Depth=1
	leaq	LJTI0_0(%rip), %rdi
	movslq	(%rdi,%rcx,4), %rcx
	addq	%rdi, %rcx
	jmpq	*%rcx
LBB0_24:                                ##   in Loop: Header=BB0_6 Depth=1
	cmpb	$47, (%rdx)
	jne	LBB0_92
## %bb.25:                              ##   in Loop: Header=BB0_6 Depth=1
	addq	$2, %r15
	movb	$47, %al
	movq	%r15, %rdx
	testb	%al, %al
	je	LBB0_28
	.p2align	4, 0x90
LBB0_26:                                ##   Parent Loop BB0_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpb	$10, %al
	je	LBB0_28
## %bb.27:                              ##   in Loop: Header=BB0_26 Depth=2
	movq	%rdx, (%r14)
	movzbl	(%rdx), %eax
	incq	%rdx
	testb	%al, %al
	jne	LBB0_26
LBB0_28:                                ##   in Loop: Header=BB0_6 Depth=1
	decq	%rdx
	jmp	LBB0_4
LBB0_29:
	movsbq	%bl, %rbx
	leaq	2(%r15), %rax
	jmp	LBB0_31
	.p2align	4, 0x90
LBB0_30:                                ##   in Loop: Header=BB0_31 Depth=1
	imulq	$147, %rbx, %rbx
	addq	%rcx, %rbx
	movq	%rax, (%r14)
	incq	%rax
LBB0_31:                                ## =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$-33, %dl
	addb	$-65, %dl
	cmpb	$26, %dl
	jb	LBB0_30
## %bb.32:                              ##   in Loop: Header=BB0_31 Depth=1
	leal	-48(%rcx), %edx
	cmpb	$95, %cl
	je	LBB0_30
## %bb.33:                              ##   in Loop: Header=BB0_31 Depth=1
	cmpb	$9, %dl
	jbe	LBB0_30
## %bb.34:
	movq	_symbols@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	_current_id@GOTPCREL(%rip), %r12
	movq	%rcx, (%r12)
	cmpq	$0, (%rcx)
	jne	LBB0_39
## %bb.35:
	movq	%rcx, %rax
LBB0_36:
	movq	%r15, 16(%rax)
	movq	%rbx, 8(%rax)
	movq	$133, (%rax)
	movq	$133, (%r10)
	jmp	LBB0_97
	.p2align	4, 0x90
LBB0_37:                                ##   in Loop: Header=BB0_39 Depth=1
	movq	_token@GOTPCREL(%rip), %r10
LBB0_38:                                ##   in Loop: Header=BB0_39 Depth=1
	leaq	72(%rcx), %rax
	movq	%rax, (%r12)
	cmpq	$0, 72(%rcx)
	movq	%rax, %rcx
	je	LBB0_36
LBB0_39:                                ## =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 8(%rcx)
	jne	LBB0_38
## %bb.40:                              ##   in Loop: Header=BB0_39 Depth=1
	movq	16(%rcx), %rdi
	movq	(%r14), %rdx
	subq	%r15, %rdx
	movq	%r15, %rsi
	callq	_libmin_memcmp
	movq	(%r12), %rcx
	testl	%eax, %eax
	jne	LBB0_37
## %bb.41:
	movq	(%rcx), %rax
	movq	_token@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	LBB0_97
LBB0_42:
	movq	_token_val@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movb	(%rdx), %sil
	cmpb	$49, %bl
	jb	LBB0_57
## %bb.43:
	addb	$-48, %sil
	cmpb	$9, %sil
	ja	LBB0_96
## %bb.44:
	addq	$2, %r15
	.p2align	4, 0x90
LBB0_45:                                ## =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rcx,4), %rcx
	movq	%r15, (%r14)
	movsbq	-1(%r15), %rdx
	leaq	(%rdx,%rcx,2), %rcx
	addq	$-48, %rcx
	movq	%rcx, (%rax)
	movzbl	(%r15), %edx
	addb	$-48, %dl
	incq	%r15
	cmpb	$10, %dl
	jb	LBB0_45
	jmp	LBB0_96
LBB0_46:
	movq	_data@GOTPCREL(%rip), %rsi
	movq	(%rsi), %r8
	movsbq	(%rdx), %rcx
	testq	%rcx, %rcx
	je	LBB0_55
## %bb.47:
	cmpq	%rcx, %rax
	je	LBB0_55
## %bb.48:
	movq	_token_val@GOTPCREL(%rip), %rdi
	movl	$10, %r9d
	.p2align	4, 0x90
LBB0_49:                                ## =>This Inner Loop Header: Depth=1
	leaq	1(%rdx), %rbx
	movq	%rbx, (%r14)
	movsbq	(%rdx), %rcx
	movq	%rcx, (%rdi)
	cmpq	$92, %rcx
	jne	LBB0_51
## %bb.50:                              ##   in Loop: Header=BB0_49 Depth=1
	leaq	2(%rdx), %rbx
	movq	%rbx, (%r14)
	movzbl	1(%rdx), %ecx
	cmpb	$110, %cl
	cmovel	%r9d, %ecx
	movsbq	%cl, %rdx
	movq	%rdx, (%rdi)
LBB0_51:                                ##   in Loop: Header=BB0_49 Depth=1
	movq	%rbx, %rdx
	cmpq	$34, %rax
	jne	LBB0_53
## %bb.52:                              ##   in Loop: Header=BB0_49 Depth=1
	movq	(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rsi)
	movb	%cl, (%rax)
	movq	(%r14), %rdx
	movq	(%r10), %rax
LBB0_53:                                ##   in Loop: Header=BB0_49 Depth=1
	movsbq	(%rdx), %rcx
	testq	%rcx, %rcx
	je	LBB0_55
## %bb.54:                              ##   in Loop: Header=BB0_49 Depth=1
	cmpq	%rcx, %rax
	jne	LBB0_49
LBB0_55:
	incq	%rdx
	movq	%rdx, (%r14)
	cmpq	$34, %rax
	jne	LBB0_96
## %bb.56:
	movq	_token_val@GOTPCREL(%rip), %rax
	movq	%r8, (%rax)
	jmp	LBB0_97
LBB0_57:
	movl	%esi, %edx
	orb	$32, %dl
	cmpb	$120, %dl
	jne	LBB0_93
## %bb.58:
	addq	$2, %r15
	movabsq	$270582939711, %rdx             ## imm = 0x3F0000003F
	jmp	LBB0_60
	.p2align	4, 0x90
LBB0_59:                                ##   in Loop: Header=BB0_60 Depth=1
	shlq	$4, %rcx
	movl	%esi, %edi
	andl	$15, %edi
	xorl	%ebx, %ebx
	cmpb	$65, %sil
	setae	%bl
	leaq	(%rbx,%rbx,8), %rsi
	addq	%rdi, %rsi
	addq	%rsi, %rcx
	movq	%rcx, (%rax)
	incq	%r15
LBB0_60:                                ## =>This Inner Loop Header: Depth=1
	movq	%r15, (%r14)
	movsbq	(%r15), %rsi
	movq	%rsi, (%r10)
	leal	-48(%rsi), %edi
	cmpb	$10, %dil
	jb	LBB0_59
## %bb.61:                              ##   in Loop: Header=BB0_60 Depth=1
	leal	-65(%rsi), %edi
	cmpb	$37, %dil
	ja	LBB0_96
## %bb.62:                              ##   in Loop: Header=BB0_60 Depth=1
	movzbl	%dil, %edi
	btq	%rdi, %rdx
	jb	LBB0_59
	jmp	LBB0_96
LBB0_63:
	cmpb	$61, (%rdx)
	jne	LBB0_97
## %bb.64:
	addq	$2, %r15
	movq	%r15, (%r14)
	movq	$150, (%r10)
	jmp	LBB0_97
LBB0_65:
	movq	$161, (%r10)
	jmp	LBB0_97
LBB0_66:
	movl	$148, %eax
	cmpb	$38, (%rdx)
	jne	LBB0_81
## %bb.67:
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$145, %eax
	jmp	LBB0_81
LBB0_69:
	movq	$159, (%r10)
	jmp	LBB0_97
LBB0_70:
	movl	$157, %eax
	cmpb	$43, (%rdx)
	jne	LBB0_81
## %bb.71:
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$162, %eax
	jmp	LBB0_81
LBB0_73:
	movl	$158, %eax
	cmpb	$45, (%rdx)
	jne	LBB0_81
## %bb.74:
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$163, %eax
	jmp	LBB0_81
LBB0_76:
	movb	(%rdx), %al
	cmpb	$60, %al
	je	LBB0_98
## %bb.77:
	cmpb	$61, %al
	jne	LBB0_99
## %bb.78:
	addq	$2, %r15
	movq	%r15, (%r14)
	movq	$153, (%r10)
	jmp	LBB0_97
LBB0_79:
	movl	$142, %eax
	cmpb	$61, (%rdx)
	jne	LBB0_81
## %bb.80:
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$149, %eax
	jmp	LBB0_81
LBB0_82:
	movb	(%rdx), %al
	cmpb	$62, %al
	je	LBB0_100
## %bb.83:
	cmpb	$61, %al
	jne	LBB0_101
## %bb.84:
	addq	$2, %r15
	movq	%r15, (%r14)
	movq	$154, (%r10)
	jmp	LBB0_97
LBB0_85:
	movq	$143, (%r10)
	jmp	LBB0_97
LBB0_86:
	movq	$164, (%r10)
	jmp	LBB0_97
LBB0_87:
	movq	$147, (%r10)
	jmp	LBB0_97
LBB0_88:
	movl	$146, %eax
	cmpb	$124, (%rdx)
	jne	LBB0_81
## %bb.89:
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$144, %eax
LBB0_81:
	movq	%rax, (%r10)
	jmp	LBB0_97
LBB0_92:
	movq	$160, (%r10)
	jmp	LBB0_97
LBB0_93:
	andb	$-8, %sil
	cmpb	$48, %sil
	jne	LBB0_96
## %bb.94:
	addq	$2, %r15
LBB0_95:                                ## =>This Inner Loop Header: Depth=1
	movq	%r15, (%r14)
	movsbq	-1(%r15), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	addq	$-48, %rcx
	movq	%rcx, (%rax)
	movzbl	(%r15), %edx
	andb	$-8, %dl
	incq	%r15
	cmpb	$48, %dl
	je	LBB0_95
LBB0_96:
	movq	$128, (%r10)
LBB0_97:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_98:
	addq	$2, %r15
	movq	%r15, (%r14)
	movq	$155, (%r10)
	jmp	LBB0_97
LBB0_99:
	movq	$151, (%r10)
	jmp	LBB0_97
LBB0_100:
	addq	$2, %r15
	movq	%r15, (%r14)
	movq	$156, (%r10)
	jmp	LBB0_97
LBB0_101:
	movq	$152, (%r10)
	jmp	LBB0_97
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_63, LBB0_63-LJTI0_0
.set L0_0_set_46, LBB0_46-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
.set L0_0_set_65, LBB0_65-LJTI0_0
.set L0_0_set_66, LBB0_66-LJTI0_0
.set L0_0_set_97, LBB0_97-LJTI0_0
.set L0_0_set_69, LBB0_69-LJTI0_0
.set L0_0_set_70, LBB0_70-LJTI0_0
.set L0_0_set_73, LBB0_73-LJTI0_0
.set L0_0_set_24, LBB0_24-LJTI0_0
.set L0_0_set_76, LBB0_76-LJTI0_0
.set L0_0_set_79, LBB0_79-LJTI0_0
.set L0_0_set_82, LBB0_82-LJTI0_0
.set L0_0_set_85, LBB0_85-LJTI0_0
.set L0_0_set_86, LBB0_86-LJTI0_0
.set L0_0_set_87, LBB0_87-LJTI0_0
.set L0_0_set_88, LBB0_88-LJTI0_0
LJTI0_0:
	.long	L0_0_set_63
	.long	L0_0_set_46
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_65
	.long	L0_0_set_66
	.long	L0_0_set_46
	.long	L0_0_set_97
	.long	L0_0_set_97
	.long	L0_0_set_69
	.long	L0_0_set_70
	.long	L0_0_set_97
	.long	L0_0_set_73
	.long	L0_0_set_4
	.long	L0_0_set_24
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_97
	.long	L0_0_set_97
	.long	L0_0_set_76
	.long	L0_0_set_79
	.long	L0_0_set_82
	.long	L0_0_set_85
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_86
	.long	L0_0_set_4
	.long	L0_0_set_97
	.long	L0_0_set_87
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_97
	.long	L0_0_set_88
	.long	L0_0_set_97
	.long	L0_0_set_97
	.end_data_region
                                        ## -- End function
	.globl	_match                          ## -- Begin function match
	.p2align	4, 0x90
_match:                                 ## @match
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_token@GOTPCREL(%rip), %rax
	cmpq	%rdi, (%rax)
	jne	LBB1_2
## %bb.1:
	popq	%rbp
	jmp	_next                           ## TAILCALL
LBB1_2:
	movq	%rdi, %rdx
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	popq	%rbp
	jmp	_libmin_fail                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function expression
LCPI2_0:
	.quad	-1                              ## 0xffffffffffffffff
	.quad	13                              ## 0xd
LCPI2_1:
	.quad	13                              ## 0xd
	.quad	1                               ## 0x1
LCPI2_2:
	.quad	-1                              ## 0xffffffffffffffff
	.quad	15                              ## 0xf
LCPI2_3:
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	17                              ## 0x11
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
	.byte	0                               ## 0x0
LCPI2_4:
	.quad	13                              ## 0xd
	.quad	9                               ## 0x9
LCPI2_5:
	.quad	13                              ## 0xd
	.quad	10                              ## 0xa
LCPI2_6:
	.quad	8                               ## 0x8
	.quad	27                              ## 0x1b
LCPI2_7:
	.quad	26                              ## 0x1a
	.quad	13                              ## 0xd
LCPI2_8:
	.quad	1                               ## 0x1
	.quad	8                               ## 0x8
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_expression
	.p2align	4, 0x90
_expression:                            ## @expression
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
	movq	%rdi, -48(%rbp)                 ## 8-byte Spill
	movq	_token@GOTPCREL(%rip), %r12
	movq	(%r12), %rbx
	testq	%rbx, %rbx
	je	LBB2_5
## %bb.1:
	cmpq	$125, %rbx
	jle	LBB2_6
LBB2_2:
	leaq	-126(%rbx), %rax
	cmpq	$33, %rax
	ja	LBB2_34
## %bb.3:
	leaq	LJTI2_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB2_4:
	callq	_next
	movl	$162, %edi
	callq	_expression
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rcx)
	leaq	32(%rcx), %rdx
	movq	%rdx, (%rax)
	movaps	LCPI2_2(%rip), %xmm0            ## xmm0 = [18446744073709551615,15]
	movups	%xmm0, 24(%rcx)
	jmp	LBB2_47
LBB2_5:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	movq	(%r12), %rbx
	cmpq	$125, %rbx
	jg	LBB2_2
LBB2_6:
	cmpq	$33, %rbx
	je	LBB2_30
## %bb.7:
	cmpq	$34, %rbx
	je	LBB2_31
## %bb.8:
	cmpq	$40, %rbx
	jne	LBB2_34
## %bb.9:
	callq	_next
	movq	(%r12), %rax
	cmpq	$138, %rax
	je	LBB2_11
## %bb.10:
	cmpq	$134, %rax
	jne	LBB2_114
LBB2_11:
	xorl	%ebx, %ebx
	cmpq	$134, %rax
	setne	%bl
	callq	_next
	.p2align	4, 0x90
LBB2_12:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	cmpq	$159, %rax
	jne	LBB2_38
## %bb.13:                              ##   in Loop: Header=BB2_12 Depth=1
	callq	_next
	addq	$2, %rbx
	jmp	LBB2_12
LBB2_14:
	callq	_next
	movq	_current_id@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	cmpq	$40, (%r12)
	jne	LBB2_40
## %bb.15:
	callq	_next
	cmpq	$41, (%r12)
	jne	LBB2_125
## %bb.16:
	xorl	%ebx, %ebx
LBB2_17:
	callq	_next
	movq	32(%r14), %rax
	cmpq	$129, %rax
	je	LBB2_129
## %bb.18:
	cmpq	$130, %rax
	jne	LBB2_130
## %bb.19:
	movq	40(%r14), %rax
	movq	_text@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	leaq	8(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	%rax, 8(%rdx)
	jmp	LBB2_131
LBB2_20:
	callq	_next
	movl	$162, %edi
	callq	_expression
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rdx
	addq	$-9, %rdx
	cmpq	$1, %rdx
	ja	LBB2_44
## %bb.21:
	addq	$-8, %rcx
	movq	%rcx, (%rax)
	jmp	LBB2_45
LBB2_22:
	callq	_next
	cmpq	$128, (%r12)
	movq	_text@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	$1, 8(%rax)
	jne	LBB2_46
## %bb.23:
	movq	_token_val@GOTPCREL(%rip), %rcx
	xorl	%edx, %edx
	subq	(%rcx), %rdx
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%rdx, 16(%rax)
	callq	_next
	jmp	LBB2_47
LBB2_24:
	callq	_next
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$1, 8(%rcx)
	movq	_token_val@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	leaq	16(%rcx), %rsi
	movq	%rsi, (%rax)
	movq	%rdx, 16(%rcx)
	jmp	LBB2_47
LBB2_25:
	callq	_next
	cmpq	$40, (%r12)
	jne	LBB2_107
## %bb.26:
	callq	_next
	jmp	LBB2_108
LBB2_27:
	callq	_next
	movl	$162, %edi
	callq	_expression
	jmp	LBB2_47
LBB2_28:
	callq	_next
	movl	$162, %edi
	callq	_expression
	movq	_expr_type@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	cmpq	$2, %rax
	jl	LBB2_111
## %bb.29:
	addq	$-2, %rax
	movq	%rax, (%rbx)
	jmp	LBB2_112
LBB2_30:
	callq	_next
	movl	$162, %edi
	callq	_expression
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rcx)
	leaq	32(%rcx), %rdx
	movq	%rdx, (%rax)
	movaps	LCPI2_3(%rip), %xmm0            ## xmm0 = [0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0]
	movups	%xmm0, 24(%rcx)
	jmp	LBB2_47
LBB2_31:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$1, 8(%rcx)
	movq	_token_val@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	leaq	16(%rcx), %rsi
	movq	%rsi, (%rax)
	movq	%rdx, 16(%rcx)
	callq	_next
	cmpq	$34, (%r12)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	jne	LBB2_33
	.p2align	4, 0x90
LBB2_32:                                ## =>This Inner Loop Header: Depth=1
	callq	_next
	cmpq	$34, (%r12)
	je	LBB2_32
LBB2_33:
	movq	_data@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	andq	$-8, %rcx
	movq	%rcx, (%rax)
	movq	_expr_type@GOTPCREL(%rip), %rax
	movq	$2, (%rax)
	jmp	LBB2_49
LBB2_34:
	movq	%rbx, %rax
	andq	$-2, %rax
	cmpq	$162, %rax
	jne	LBB2_113
## %bb.35:
	callq	_next
	movl	$162, %edi
	callq	_expression
	movq	_text@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	(%rax), %rcx
	cmpq	$9, %rcx
	je	LBB2_136
## %bb.36:
	cmpq	$10, %rcx
	jne	LBB2_138
## %bb.37:
	movaps	LCPI2_5(%rip), %xmm0            ## xmm0 = [13,10]
	jmp	LBB2_137
LBB2_38:
	cmpq	$41, %rax
	jne	LBB2_116
## %bb.39:
	callq	_next
	jmp	LBB2_117
LBB2_40:
	movq	32(%r14), %rax
	cmpq	$132, %rax
	je	LBB2_140
## %bb.41:
	cmpq	$131, %rax
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	je	LBB2_141
## %bb.42:
	cmpq	$128, %rax
	jne	LBB2_142
## %bb.43:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$1, 8(%rcx)
	movq	40(%r14), %rdx
	leaq	16(%rcx), %rsi
	movq	%rsi, (%rax)
	movq	%rdx, 16(%rcx)
	movq	_expr_type@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	jmp	LBB2_49
LBB2_44:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.11(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_45:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	_expr_type@GOTPCREL(%rip), %rax
	addq	$2, (%rax)
	jmp	LBB2_49
LBB2_46:
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	movaps	LCPI2_0(%rip), %xmm0            ## xmm0 = [18446744073709551615,13]
	movups	%xmm0, 16(%rax)
	movl	$162, %edi
	callq	_expression
	movq	(%rbx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$27, 8(%rax)
LBB2_47:
	movq	_expr_type@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
LBB2_48:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
LBB2_49:
	movq	(%r12), %rdx
	cmpq	%rbx, %rdx
	jge	LBB2_51
LBB2_50:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_51:
	movq	_expr_type@GOTPCREL(%rip), %r13
	movq	_text@GOTPCREL(%rip), %r15
	leaq	LJTI2_1(%rip), %r12
	jmp	LBB2_56
LBB2_52:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rbx
	movq	$5, 8(%rbx)
	leaq	16(%rbx), %rax
	movq	%rax, (%r15)
	movl	$145, %edi
LBB2_53:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_expression
	movq	(%r15), %rax
	addq	$8, %rax
	movq	%rax, 16(%rbx)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	.p2align	4, 0x90
LBB2_54:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	$1, (%r13)
LBB2_55:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	_token@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	cmpq	%rbx, %rdx
	jl	LBB2_50
LBB2_56:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r13), %r14
	leaq	-142(%rdx), %rax
	cmpq	$19, %rax
	ja	LBB2_60
## %bb.57:                              ##   in Loop: Header=BB2_56 Depth=1
	movslq	(%r12,%rax,4), %rax
	addq	%r12, %rax
	jmpq	*%rax
LBB2_58:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	movq	(%rax), %rcx
	addq	$-9, %rcx
	cmpq	$1, %rcx
	ja	LBB2_87
## %bb.59:                              ##   in Loop: Header=BB2_56 Depth=1
	movq	$13, (%rax)
	jmp	LBB2_88
LBB2_60:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	%rdx, %rax
	andq	$-2, %rax
	cmpq	$162, %rax
	jne	LBB2_89
## %bb.61:                              ##   in Loop: Header=BB2_56 Depth=1
	movq	(%r15), %rax
	movq	(%rax), %rcx
	cmpq	$10, %rcx
	je	LBB2_100
## %bb.62:                              ##   in Loop: Header=BB2_56 Depth=1
	cmpq	$9, %rcx
	jne	LBB2_102
## %bb.63:                              ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_4(%rip), %xmm0            ## xmm0 = [13,9]
	jmp	LBB2_101
LBB2_64:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %r14
	movq	$4, 8(%r14)
	addq	$16, %r14
	movq	%r14, (%r15)
	movl	$142, %edi
	callq	_expression
	movq	_token@GOTPCREL(%rip), %rax
	cmpq	$58, (%rax)
	jne	LBB2_94
## %bb.65:                              ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	jmp	LBB2_95
LBB2_66:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rbx
	movq	$4, 8(%rbx)
	leaq	16(%rbx), %rax
	movq	%rax, (%r15)
	movl	$146, %edi
	jmp	LBB2_53
LBB2_67:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$147, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$14, 8(%rax)
	jmp	LBB2_54
LBB2_68:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$148, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$15, 8(%rax)
	jmp	LBB2_54
LBB2_69:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$149, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$16, 8(%rax)
	jmp	LBB2_54
LBB2_70:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$150, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$17, 8(%rax)
	jmp	LBB2_54
LBB2_71:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$151, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$18, 8(%rax)
	jmp	LBB2_54
LBB2_72:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$155, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$19, 8(%rax)
	jmp	LBB2_54
LBB2_73:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$155, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$20, 8(%rax)
	jmp	LBB2_54
LBB2_74:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$155, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$21, 8(%rax)
	jmp	LBB2_54
LBB2_75:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$155, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$22, 8(%rax)
	jmp	LBB2_54
LBB2_76:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$157, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$23, 8(%rax)
	jmp	LBB2_54
LBB2_77:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$157, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$24, 8(%rax)
	jmp	LBB2_54
LBB2_78:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$159, %edi
	callq	_expression
	movq	%r14, (%r13)
	movq	(%r15), %rax
	cmpq	$3, %r14
	jl	LBB2_80
## %bb.79:                              ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rax)
	movaps	LCPI2_6(%rip), %xmm0            ## xmm0 = [8,27]
	movups	%xmm0, 24(%rax)
	addq	$32, %rax
LBB2_80:                                ##   in Loop: Header=BB2_56 Depth=1
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$25, 8(%rax)
	jmp	LBB2_55
LBB2_81:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$159, %edi
	callq	_expression
	movq	(%r15), %rax
	cmpq	$3, %r14
	jl	LBB2_96
## %bb.82:                              ##   in Loop: Header=BB2_56 Depth=1
	cmpq	(%r13), %r14
	jne	LBB2_96
## %bb.83:                              ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_7(%rip), %xmm0            ## xmm0 = [26,13]
	movups	%xmm0, 8(%rax)
	movaps	LCPI2_8(%rip), %xmm0            ## xmm0 = [1,8]
	movups	%xmm0, 24(%rax)
	leaq	40(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$28, 40(%rax)
	jmp	LBB2_54
LBB2_84:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$162, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$27, 8(%rax)
	movq	%r14, (%r13)
	jmp	LBB2_55
LBB2_85:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$162, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$28, 8(%rax)
	movq	%r14, (%r13)
	jmp	LBB2_55
LBB2_86:                                ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$162, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$29, 8(%rax)
	movq	%r14, (%r13)
	jmp	LBB2_55
LBB2_87:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.14(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_88:                                ##   in Loop: Header=BB2_56 Depth=1
	movl	$142, %edi
	callq	_expression
	movq	%r14, (%r13)
	cmpq	$1, %r14
	movl	$0, %eax
	adcq	$11, %rax
	movq	(%r15), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%r15)
	movq	%rax, 8(%rcx)
	jmp	LBB2_55
LBB2_89:                                ##   in Loop: Header=BB2_56 Depth=1
	cmpq	$164, %rdx
	jne	LBB2_98
## %bb.90:                              ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movl	$142, %edi
	callq	_expression
	movq	_token@GOTPCREL(%rip), %rax
	cmpq	$93, (%rax)
	jne	LBB2_104
## %bb.91:                              ##   in Loop: Header=BB2_56 Depth=1
	callq	_next
	cmpq	$3, %r14
	jge	LBB2_105
LBB2_92:                                ##   in Loop: Header=BB2_56 Depth=1
	cmpq	$2, %r14
	je	LBB2_106
## %bb.93:                              ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.17(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	jmp	LBB2_106
LBB2_94:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.15(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_95:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	(%r15), %rbx
	leaq	24(%rbx), %rax
	movq	%rax, (%r14)
	movq	$2, 8(%rbx)
	leaq	16(%rbx), %rax
	movq	%rax, (%r15)
	movl	$143, %edi
	callq	_expression
	movq	(%r15), %rax
	addq	$8, %rax
	movq	%rax, 16(%rbx)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	jmp	LBB2_55
LBB2_96:                                ##   in Loop: Header=BB2_56 Depth=1
	cmpq	$3, %r14
	jl	LBB2_99
## %bb.97:                              ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rax)
	movaps	LCPI2_6(%rip), %xmm0            ## xmm0 = [8,27]
	movups	%xmm0, 24(%rax)
	leaq	40(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$26, 40(%rax)
	movq	%r14, (%r13)
	jmp	LBB2_55
LBB2_98:                                ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	jmp	LBB2_55
LBB2_99:                                ##   in Loop: Header=BB2_56 Depth=1
	addq	$8, %rax
	movq	%rax, (%r15)
	movq	$26, (%rax)
	movq	%r14, (%r13)
	jmp	LBB2_55
LBB2_100:                               ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_5(%rip), %xmm0            ## xmm0 = [13,10]
LBB2_101:                               ##   in Loop: Header=BB2_56 Depth=1
	movups	%xmm0, (%rax)
	addq	$8, %rax
	jmp	LBB2_103
LBB2_102:                               ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.16(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	movq	(%r15), %rax
LBB2_103:                               ##   in Loop: Header=BB2_56 Depth=1
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rax)
	movq	(%r13), %rcx
	cmpq	$3, %rcx
	movl	$1, %edx
	movl	$8, %esi
	cmovgeq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	xorl	%esi, %esi
	movq	_token@GOTPCREL(%rip), %rdi
	cmpq	$162, (%rdi)
	sete	%sil
	movl	$26, %edi
	subq	%rsi, %rdi
	cmpq	$1, %rcx
	movl	$0, %ecx
	adcq	$11, %rcx
	movq	%rdi, 32(%rax)
	movq	%rcx, 40(%rax)
	movups	%xmm0, 48(%rax)
	movq	%rdx, 64(%rax)
	addq	$25, %rsi
	leaq	72(%rax), %rcx
	movq	%rcx, (%r15)
	movq	%rsi, 72(%rax)
	callq	_next
	jmp	LBB2_55
LBB2_104:                               ##   in Loop: Header=BB2_56 Depth=1
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$93, %edx
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	cmpq	$3, %r14
	jl	LBB2_92
LBB2_105:                               ##   in Loop: Header=BB2_56 Depth=1
	movq	(%r15), %rax
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rax)
	leaq	32(%rax), %rcx
	movq	%rcx, (%r15)
	movaps	LCPI2_6(%rip), %xmm0            ## xmm0 = [8,27]
	movups	%xmm0, 24(%rax)
LBB2_106:                               ##   in Loop: Header=BB2_56 Depth=1
	xorl	%eax, %eax
	addq	$-2, %r14
	movq	%r14, (%r13)
	movq	(%r15), %rcx
	movq	$25, 8(%rcx)
	sete	%al
	addq	$9, %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, (%r15)
	movq	%rax, 16(%rcx)
	jmp	LBB2_55
LBB2_107:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$40, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_108:
	movq	_expr_type@GOTPCREL(%rip), %rbx
	movq	$1, (%rbx)
	movq	(%r12), %rax
	cmpq	$134, %rax
	je	LBB2_118
## %bb.109:
	cmpq	$138, %rax
	jne	LBB2_120
## %bb.110:
	callq	_next
	jmp	LBB2_120
LBB2_111:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	movq	(%rbx), %rax
LBB2_112:
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	xorl	%ecx, %ecx
	cmpq	$1, %rax
	adcq	$9, %rcx
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	8(%rdx), %rsi
	movq	%rsi, (%rax)
	movq	%rcx, 8(%rdx)
	jmp	LBB2_49
LBB2_113:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_135
LBB2_114:
	movl	$142, %edi
	callq	_expression
	cmpq	$41, (%r12)
	jne	LBB2_134
## %bb.115:
	callq	_next
	jmp	LBB2_48
LBB2_116:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_117:
	movl	$162, %edi
	callq	_expression
	movq	_expr_type@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	jmp	LBB2_48
LBB2_118:
	callq	_next
	movq	$0, (%rbx)
	jmp	LBB2_120
	.p2align	4, 0x90
LBB2_119:                               ##   in Loop: Header=BB2_120 Depth=1
	callq	_next
	addq	$2, (%rbx)
LBB2_120:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	cmpq	$159, %rax
	je	LBB2_119
## %bb.121:
	cmpq	$41, %rax
	jne	LBB2_123
## %bb.122:
	callq	_next
	jmp	LBB2_124
LBB2_123:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_124:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$1, 8(%rcx)
	cmpq	$0, (%rbx)
	movl	$1, %edx
	movl	$8, %esi
	cmoveq	%rdx, %rsi
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	%rsi, 16(%rcx)
	movq	$1, (%rbx)
	jmp	LBB2_48
LBB2_125:
	xorl	%ebx, %ebx
	movq	_text@GOTPCREL(%rip), %r15
	jmp	LBB2_127
	.p2align	4, 0x90
LBB2_126:                               ##   in Loop: Header=BB2_127 Depth=1
	incq	%rbx
	cmpq	$41, %rax
	je	LBB2_17
LBB2_127:                               ## =>This Inner Loop Header: Depth=1
	movl	$142, %edi
	callq	_expression
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	$13, 8(%rax)
	movq	(%r12), %rax
	cmpq	$44, %rax
	jne	LBB2_126
## %bb.128:                             ##   in Loop: Header=BB2_127 Depth=1
	callq	_next
	movq	(%r12), %rax
	jmp	LBB2_126
LBB2_129:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$3, 8(%rcx)
	movq	40(%r14), %rdx
	leaq	16(%rcx), %rsi
	movq	%rsi, (%rax)
	movq	%rdx, 16(%rcx)
	jmp	LBB2_131
LBB2_130:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.8(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB2_131:
	testq	%rbx, %rbx
	je	LBB2_133
## %bb.132:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	$7, 8(%rcx)
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	%rbx, 16(%rcx)
LBB2_133:
	movq	24(%r14), %rax
	movq	_expr_type@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	LBB2_48
LBB2_134:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
LBB2_135:
	movl	$-1, %edi
	callq	_libmin_fail
	jmp	LBB2_48
LBB2_136:
	movaps	LCPI2_4(%rip), %xmm0            ## xmm0 = [13,9]
LBB2_137:
	movups	%xmm0, (%rax)
	addq	$8, %rax
	jmp	LBB2_139
LBB2_138:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	movq	(%r14), %rax
LBB2_139:
	xorl	%ecx, %ecx
	cmpq	$162, %rbx
	sete	%cl
	movaps	LCPI2_1(%rip), %xmm0            ## xmm0 = [13,1]
	movups	%xmm0, 8(%rax)
	movq	_expr_type@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	$3, %rdx
	movl	$8, %esi
	movl	$1, %edi
	cmovgeq	%rsi, %rdi
	movq	%rdi, 24(%rax)
	movl	$26, %esi
	subq	%rcx, %rsi
	xorl	%ecx, %ecx
	cmpq	$1, %rdx
	adcq	$11, %rcx
	movq	%rsi, 32(%rax)
	leaq	40(%rax), %rdx
	movq	%rdx, (%r14)
	movq	%rcx, 40(%rax)
	jmp	LBB2_48
LBB2_140:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movq	_index_of_bp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	subq	40(%r14), %rcx
	movq	%rcx, 16(%rax)
	addq	$16, %rax
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	jmp	LBB2_143
LBB2_141:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$1, 8(%rax)
	movq	40(%r14), %rcx
	movq	%rcx, 16(%rax)
	addq	$16, %rax
	jmp	LBB2_143
LBB2_142:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.9(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
LBB2_143:
	movq	24(%r14), %rcx
	movq	_expr_type@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	xorl	%edx, %edx
	cmpq	$1, %rcx
	adcq	$9, %rdx
	leaq	8(%rax), %rcx
	movq	_text@GOTPCREL(%rip), %rsi
	movq	%rcx, (%rsi)
	movq	%rdx, 8(%rax)
	jmp	LBB2_49
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L2_0_set_4, LBB2_4-LJTI2_0
.set L2_0_set_34, LBB2_34-LJTI2_0
.set L2_0_set_24, LBB2_24-LJTI2_0
.set L2_0_set_14, LBB2_14-LJTI2_0
.set L2_0_set_25, LBB2_25-LJTI2_0
.set L2_0_set_20, LBB2_20-LJTI2_0
.set L2_0_set_27, LBB2_27-LJTI2_0
.set L2_0_set_22, LBB2_22-LJTI2_0
.set L2_0_set_28, LBB2_28-LJTI2_0
LJTI2_0:
	.long	L2_0_set_4
	.long	L2_0_set_34
	.long	L2_0_set_24
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_14
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_25
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_20
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_34
	.long	L2_0_set_27
	.long	L2_0_set_22
	.long	L2_0_set_28
.set L2_1_set_58, LBB2_58-LJTI2_1
.set L2_1_set_64, LBB2_64-LJTI2_1
.set L2_1_set_52, LBB2_52-LJTI2_1
.set L2_1_set_66, LBB2_66-LJTI2_1
.set L2_1_set_67, LBB2_67-LJTI2_1
.set L2_1_set_68, LBB2_68-LJTI2_1
.set L2_1_set_69, LBB2_69-LJTI2_1
.set L2_1_set_70, LBB2_70-LJTI2_1
.set L2_1_set_71, LBB2_71-LJTI2_1
.set L2_1_set_72, LBB2_72-LJTI2_1
.set L2_1_set_73, LBB2_73-LJTI2_1
.set L2_1_set_74, LBB2_74-LJTI2_1
.set L2_1_set_75, LBB2_75-LJTI2_1
.set L2_1_set_76, LBB2_76-LJTI2_1
.set L2_1_set_77, LBB2_77-LJTI2_1
.set L2_1_set_78, LBB2_78-LJTI2_1
.set L2_1_set_81, LBB2_81-LJTI2_1
.set L2_1_set_84, LBB2_84-LJTI2_1
.set L2_1_set_85, LBB2_85-LJTI2_1
.set L2_1_set_86, LBB2_86-LJTI2_1
LJTI2_1:
	.long	L2_1_set_58
	.long	L2_1_set_64
	.long	L2_1_set_52
	.long	L2_1_set_66
	.long	L2_1_set_67
	.long	L2_1_set_68
	.long	L2_1_set_69
	.long	L2_1_set_70
	.long	L2_1_set_71
	.long	L2_1_set_72
	.long	L2_1_set_73
	.long	L2_1_set_74
	.long	L2_1_set_75
	.long	L2_1_set_76
	.long	L2_1_set_77
	.long	L2_1_set_78
	.long	L2_1_set_81
	.long	L2_1_set_84
	.long	L2_1_set_85
	.long	L2_1_set_86
	.end_data_region
                                        ## -- End function
	.globl	_statement                      ## -- Begin function statement
	.p2align	4, 0x90
_statement:                             ## @statement
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
	movq	_token@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	leaq	-123(%rax), %rcx
	cmpq	$18, %rcx
	ja	LBB3_1
## %bb.4:
	leaq	LJTI3_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB3_21:
	callq	_next
	cmpq	$125, (%r12)
	je	LBB3_24
	.p2align	4, 0x90
LBB3_22:                                ## =>This Inner Loop Header: Depth=1
	callq	_statement
	cmpq	$125, (%r12)
	jne	LBB3_22
	jmp	LBB3_24
LBB3_1:
	cmpq	$59, %rax
	je	LBB3_24
LBB3_2:
	movl	$142, %edi
	callq	_expression
	cmpq	$59, (%r12)
	jne	LBB3_3
LBB3_24:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_next                           ## TAILCALL
LBB3_25:
	callq	_next
	cmpq	$59, (%r12)
	je	LBB3_27
## %bb.26:
	movl	$142, %edi
	callq	_expression
	cmpq	$59, (%r12)
	jne	LBB3_28
LBB3_27:
	callq	_next
	jmp	LBB3_29
LBB3_5:
	callq	_next
	cmpq	$40, (%r12)
	jne	LBB3_7
## %bb.6:
	callq	_next
	jmp	LBB3_8
LBB3_14:
	callq	_next
	movq	_text@GOTPCREL(%rip), %r15
	movq	(%r15), %r14
	cmpq	$40, (%r12)
	jne	LBB3_16
## %bb.15:
	callq	_next
	jmp	LBB3_17
LBB3_3:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$59, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_fail                    ## TAILCALL
LBB3_7:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$40, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB3_8:
	movl	$142, %edi
	callq	_expression
	cmpq	$41, (%r12)
	jne	LBB3_10
## %bb.9:
	callq	_next
	jmp	LBB3_11
LBB3_16:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$40, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB3_17:
	addq	$8, %r14
	movl	$142, %edi
	callq	_expression
	cmpq	$41, (%r12)
	jne	LBB3_19
## %bb.18:
	callq	_next
	jmp	LBB3_20
LBB3_10:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB3_11:
	movq	_text@GOTPCREL(%rip), %r14
	movq	(%r14), %rbx
	movq	$4, 8(%rbx)
	addq	$16, %rbx
	movq	%rbx, (%r14)
	callq	_statement
	cmpq	$135, (%r12)
	jne	LBB3_13
## %bb.12:
	callq	_next
	movq	(%r14), %r15
	leaq	24(%r15), %rax
	movq	%rax, (%rbx)
	movq	$2, 8(%r15)
	addq	$16, %r15
	movq	%r15, (%r14)
	callq	_statement
	movq	%r15, %rbx
LBB3_13:
	movq	(%r14), %rax
	addq	$8, %rax
	movq	%rax, (%rbx)
	jmp	LBB3_30
LBB3_19:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB3_20:
	movq	(%r15), %rbx
	movq	$4, 8(%rbx)
	leaq	16(%rbx), %rax
	movq	%rax, (%r15)
	callq	_statement
	movq	(%r15), %rax
	movq	$2, 8(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movq	%r14, 16(%rax)
	addq	$24, %rax
	movq	%rax, 16(%rbx)
	jmp	LBB3_30
LBB3_28:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$59, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB3_29:
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	$8, 8(%rcx)
LBB3_30:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L3_0_set_21, LBB3_21-LJTI3_0
.set L3_0_set_2, LBB3_2-LJTI3_0
.set L3_0_set_5, LBB3_5-LJTI3_0
.set L3_0_set_25, LBB3_25-LJTI3_0
.set L3_0_set_14, LBB3_14-LJTI3_0
LJTI3_0:
	.long	L3_0_set_21
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_2
	.long	L3_0_set_5
	.long	L3_0_set_2
	.long	L3_0_set_25
	.long	L3_0_set_2
	.long	L3_0_set_14
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function enum_declaration
LCPI4_0:
	.quad	1                               ## 0x1
	.quad	128                             ## 0x80
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_enum_declaration
	.p2align	4, 0x90
_enum_declaration:                      ## @enum_declaration
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
	movq	_token@GOTPCREL(%rip), %rbx
	movq	_line@GOTPCREL(%rip), %r13
	movq	_current_id@GOTPCREL(%rip), %r14
	leaq	L_.str.19(%rip), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	cmpq	$133, %rdx
	je	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	cmpq	$125, %rdx
	je	LBB4_10
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	(%r13), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	callq	_next
	movq	(%rbx), %rax
	cmpq	$142, %rax
	jne	LBB4_8
## %bb.5:                               ##   in Loop: Header=BB4_1 Depth=1
	callq	_next
	cmpq	$128, (%rbx)
	je	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	(%r13), %rsi
	leaq	L_.str.20(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	_token_val@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	callq	_next
	movq	(%rbx), %rax
LBB4_8:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rcx
	movaps	LCPI4_0(%rip), %xmm0            ## xmm0 = [1,128]
	movups	%xmm0, 24(%rcx)
	movq	%r12, 40(%rcx)
	incq	%r12
	cmpq	$44, %rax
	jne	LBB4_1
## %bb.9:                               ##   in Loop: Header=BB4_1 Depth=1
	callq	_next
	jmp	LBB4_1
LBB4_10:
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
	.globl	_function_parameter             ## -- Begin function function_parameter
	.p2align	4, 0x90
_function_parameter:                    ## @function_parameter
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
	movq	_token@GOTPCREL(%rip), %rbx
	movq	_current_id@GOTPCREL(%rip), %r13
	movq	_line@GOTPCREL(%rip), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_7 Depth 2
	movq	(%rbx), %rax
	cmpq	$134, %rax
	je	LBB5_5
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	$1, %r12d
	cmpq	$138, %rax
	je	LBB5_6
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	cmpq	$41, %rax
	jne	LBB5_7
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_5:                                 ##   in Loop: Header=BB5_1 Depth=1
	xorl	%r12d, %r12d
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	callq	_next
	jmp	LBB5_7
	.p2align	4, 0x90
LBB5_17:                                ##   in Loop: Header=BB5_7 Depth=2
	callq	_next
	addq	$2, %r12
LBB5_7:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	cmpq	$159, %rax
	je	LBB5_17
## %bb.8:                               ##   in Loop: Header=BB5_1 Depth=1
	cmpq	$133, %rax
	je	LBB5_10
## %bb.9:                               ##   in Loop: Header=BB5_1 Depth=1
	movq	(%r14), %rsi
	leaq	L_.str.21(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB5_10:                                ##   in Loop: Header=BB5_1 Depth=1
	movq	(%r13), %rax
	cmpq	$132, 32(%rax)
	jne	LBB5_12
## %bb.11:                              ##   in Loop: Header=BB5_1 Depth=1
	movq	(%r14), %rsi
	leaq	L_.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB5_12:                                ##   in Loop: Header=BB5_1 Depth=1
	cmpq	$133, (%rbx)
	jne	LBB5_14
## %bb.13:                              ##   in Loop: Header=BB5_1 Depth=1
	callq	_next
	jmp	LBB5_15
	.p2align	4, 0x90
LBB5_14:                                ##   in Loop: Header=BB5_1 Depth=1
	movq	(%r14), %rsi
	movl	$133, %edx
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB5_15:                                ##   in Loop: Header=BB5_1 Depth=1
	movq	(%r13), %rax
	movups	24(%rax), %xmm0
	movq	$132, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	%r12, 24(%rax)
	movq	40(%rax), %rcx
	movq	%rcx, 64(%rax)
	movq	%r15, 40(%rax)
	incq	%r15
	cmpq	$44, (%rbx)
	jne	LBB5_1
## %bb.16:                              ##   in Loop: Header=BB5_1 Depth=1
	callq	_next
	jmp	LBB5_1
LBB5_4:
	incq	%r15
	movq	_index_of_bp@GOTPCREL(%rip), %rax
	movq	%r15, (%rax)
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
	.globl	_function_body                  ## -- Begin function function_body
	.p2align	4, 0x90
_function_body:                         ## @function_body
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
	movq	_index_of_bp@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	movq	_token@GOTPCREL(%rip), %rbx
	movq	_current_id@GOTPCREL(%rip), %r15
	movq	_line@GOTPCREL(%rip), %r12
	jmp	LBB6_1
	.p2align	4, 0x90
LBB6_16:                                ##   in Loop: Header=BB6_1 Depth=1
	callq	_next
LBB6_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
                                        ##       Child Loop BB6_5 Depth 3
                                        ##         Child Loop BB6_21 Depth 4
	movq	(%rbx), %rax
	cmpq	$138, %rax
	je	LBB6_3
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	cmpq	$134, %rax
	jne	LBB6_17
LBB6_3:                                 ##   in Loop: Header=BB6_1 Depth=1
	xorl	%ecx, %ecx
	cmpq	$138, %rax
	sete	%cl
	movq	_basetype@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	.p2align	4, 0x90
LBB6_4:                                 ##   Parent Loop BB6_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_5 Depth 3
                                        ##         Child Loop BB6_21 Depth 4
	callq	_next
	movq	(%rbx), %rax
LBB6_5:                                 ##   Parent Loop BB6_1 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB6_21 Depth 4
	cmpq	$59, %rax
	je	LBB6_16
## %bb.6:                               ##   in Loop: Header=BB6_5 Depth=3
	movq	_basetype@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
	cmpq	$159, %rax
	jne	LBB6_8
	.p2align	4, 0x90
LBB6_21:                                ##   Parent Loop BB6_1 Depth=1
                                        ##     Parent Loop BB6_4 Depth=2
                                        ##       Parent Loop BB6_5 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	callq	_next
	addq	$2, %r14
	movq	(%rbx), %rax
	cmpq	$159, %rax
	je	LBB6_21
LBB6_8:                                 ##   in Loop: Header=BB6_5 Depth=3
	cmpq	$133, %rax
	je	LBB6_10
## %bb.9:                               ##   in Loop: Header=BB6_5 Depth=3
	movq	(%r12), %rsi
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB6_10:                                ##   in Loop: Header=BB6_5 Depth=3
	movq	(%r15), %rax
	cmpq	$132, 32(%rax)
	jne	LBB6_12
## %bb.11:                              ##   in Loop: Header=BB6_5 Depth=3
	movq	(%r12), %rsi
	leaq	L_.str.24(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB6_12:                                ##   in Loop: Header=BB6_5 Depth=3
	cmpq	$133, (%rbx)
	jne	LBB6_14
## %bb.13:                              ##   in Loop: Header=BB6_5 Depth=3
	callq	_next
	jmp	LBB6_15
	.p2align	4, 0x90
LBB6_14:                                ##   in Loop: Header=BB6_5 Depth=3
	movq	(%r12), %rsi
	movl	$133, %edx
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB6_15:                                ##   in Loop: Header=BB6_5 Depth=3
	movq	(%r15), %rax
	movups	24(%rax), %xmm0
	movq	$132, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	%r14, 24(%rax)
	movq	40(%rax), %rcx
	movq	%rcx, 64(%rax)
	incq	%r13
	movq	%r13, 40(%rax)
	movq	(%rbx), %rax
	cmpq	$44, %rax
	je	LBB6_4
	jmp	LBB6_5
LBB6_17:
	movq	_text@GOTPCREL(%rip), %r14
	movq	(%r14), %rdx
	movq	$6, 8(%rdx)
	movq	_index_of_bp@GOTPCREL(%rip), %rcx
	subq	(%rcx), %r13
	leaq	16(%rdx), %rcx
	movq	%rcx, (%r14)
	movq	%r13, 16(%rdx)
	cmpq	$125, %rax
	je	LBB6_20
	.p2align	4, 0x90
LBB6_18:                                ## =>This Inner Loop Header: Depth=1
	callq	_statement
	cmpq	$125, (%rbx)
	jne	LBB6_18
## %bb.19:
	movq	(%r14), %rcx
LBB6_20:
	leaq	8(%rcx), %rax
	movq	%rax, (%r14)
	movq	$8, 8(%rcx)
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
	.globl	_function_declaration           ## -- Begin function function_declaration
	.p2align	4, 0x90
_function_declaration:                  ## @function_declaration
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
	movq	_token@GOTPCREL(%rip), %rbx
	cmpq	$40, (%rbx)
	jne	LBB7_2
## %bb.1:
	callq	_next
	jmp	LBB7_3
LBB7_2:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$40, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB7_3:
	callq	_function_parameter
	cmpq	$41, (%rbx)
	jne	LBB7_5
## %bb.4:
	callq	_next
	cmpq	$123, (%rbx)
	je	LBB7_7
LBB7_8:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$123, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	jmp	LBB7_9
LBB7_5:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$41, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
	cmpq	$123, (%rbx)
	jne	LBB7_8
LBB7_7:
	callq	_next
LBB7_9:
	callq	_function_body
	movq	_symbols@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	jne	LBB7_11
## %bb.10:
	movq	%rax, %rcx
LBB7_14:
	movq	_current_id@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.p2align	4, 0x90
LBB7_13:                                ##   in Loop: Header=BB7_11 Depth=1
	leaq	72(%rax), %rcx
	cmpq	$0, 72(%rax)
	movq	%rcx, %rax
	je	LBB7_14
LBB7_11:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$132, 32(%rax)
	jne	LBB7_13
## %bb.12:                              ##   in Loop: Header=BB7_11 Depth=1
	movups	48(%rax), %xmm0
	movups	%xmm0, 24(%rax)
	movq	64(%rax), %rcx
	movq	%rcx, 40(%rax)
	jmp	LBB7_13
	.cfi_endproc
                                        ## -- End function
	.globl	_global_declaration             ## -- Begin function global_declaration
	.p2align	4, 0x90
_global_declaration:                    ## @global_declaration
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
	movq	_basetype@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movq	_token@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	cmpq	$134, %rax
	je	LBB8_15
## %bb.1:
	cmpq	$138, %rax
	je	LBB8_14
## %bb.2:
	cmpq	$136, %rax
	jne	LBB8_16
## %bb.3:
	callq	_next
	movq	(%rbx), %rax
	cmpq	$123, %rax
	je	LBB8_8
## %bb.4:
	cmpq	$133, %rax
	jne	LBB8_6
## %bb.5:
	callq	_next
	jmp	LBB8_7
LBB8_15:
	callq	_next
	movq	_basetype@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	jmp	LBB8_16
LBB8_14:
	callq	_next
LBB8_16:
	movq	_current_id@GOTPCREL(%rip), %r14
	movq	_data@GOTPCREL(%rip), %r15
	movq	_line@GOTPCREL(%rip), %r12
	.p2align	4, 0x90
LBB8_17:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_34 Depth 2
	movq	(%rbx), %rax
	cmpq	$59, %rax
	je	LBB8_33
## %bb.18:                              ##   in Loop: Header=BB8_17 Depth=1
	cmpq	$125, %rax
	je	LBB8_33
## %bb.19:                              ##   in Loop: Header=BB8_17 Depth=1
	movq	_basetype@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r13
	cmpq	$159, %rax
	jne	LBB8_21
	.p2align	4, 0x90
LBB8_34:                                ##   Parent Loop BB8_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_next
	addq	$2, %r13
	movq	(%rbx), %rax
	cmpq	$159, %rax
	je	LBB8_34
LBB8_21:                                ##   in Loop: Header=BB8_17 Depth=1
	cmpq	$133, %rax
	je	LBB8_23
## %bb.22:                              ##   in Loop: Header=BB8_17 Depth=1
	movq	(%r12), %rsi
	leaq	L_.str.25(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB8_23:                                ##   in Loop: Header=BB8_17 Depth=1
	movq	(%r14), %rax
	cmpq	$0, 32(%rax)
	je	LBB8_25
## %bb.24:                              ##   in Loop: Header=BB8_17 Depth=1
	movq	(%r12), %rsi
	leaq	L_.str.26(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB8_25:                                ##   in Loop: Header=BB8_17 Depth=1
	cmpq	$133, (%rbx)
	jne	LBB8_27
## %bb.26:                              ##   in Loop: Header=BB8_17 Depth=1
	callq	_next
	jmp	LBB8_28
	.p2align	4, 0x90
LBB8_27:                                ##   in Loop: Header=BB8_17 Depth=1
	movq	(%r12), %rsi
	movl	$133, %edx
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB8_28:                                ##   in Loop: Header=BB8_17 Depth=1
	movq	(%r14), %rcx
	movq	%r13, 24(%rcx)
	movq	(%rbx), %rax
	cmpq	$40, %rax
	jne	LBB8_30
## %bb.29:                              ##   in Loop: Header=BB8_17 Depth=1
	movq	$129, 32(%rcx)
	movq	_text@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, 40(%rcx)
	callq	_function_declaration
	movq	(%rbx), %rax
	cmpq	$44, %rax
	jne	LBB8_17
	jmp	LBB8_32
	.p2align	4, 0x90
LBB8_30:                                ##   in Loop: Header=BB8_17 Depth=1
	movq	$131, 32(%rcx)
	movq	(%r15), %rdx
	movq	%rdx, 40(%rcx)
	addq	$8, %rdx
	movq	%rdx, (%r15)
	cmpq	$44, %rax
	jne	LBB8_17
LBB8_32:                                ##   in Loop: Header=BB8_17 Depth=1
	callq	_next
	jmp	LBB8_17
LBB8_6:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$133, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB8_7:
	movq	(%rbx), %rax
	cmpq	$123, %rax
	jne	LBB8_12
LBB8_8:
	callq	_next
	callq	_enum_declaration
	cmpq	$125, (%rbx)
	jne	LBB8_10
## %bb.9:
	callq	_next
	jmp	LBB8_11
LBB8_10:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$125, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	callq	_libmin_fail
LBB8_11:
	movq	(%rbx), %rax
LBB8_12:
	cmpq	$59, %rax
	jne	LBB8_13
LBB8_33:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_next                           ## TAILCALL
LBB8_13:
	movq	_line@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.6(%rip), %rdi
	movl	$59, %edx
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_fail                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_program                        ## -- Begin function program
	.p2align	4, 0x90
_program:                               ## @program
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
	callq	_next
	movq	_token@GOTPCREL(%rip), %rbx
	cmpq	$0, (%rbx)
	jle	LBB9_3
	.p2align	4, 0x90
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_global_declaration
	cmpq	$0, (%rbx)
	jg	LBB9_1
LBB9_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_eval                           ## -- Begin function eval
	.p2align	4, 0x90
_eval:                                  ## @eval
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
	movq	_cycle@GOTPCREL(%rip), %r14
	movq	_pc@GOTPCREL(%rip), %r15
	movq	_sp@GOTPCREL(%rip), %r13
	leaq	LJTI10_0(%rip), %r12
	xorl	%esi, %esi
	jmp	LBB10_1
LBB10_56:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movsbq	(%rax), %rax
	.p2align	4, 0x90
LBB10_57:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	%rax, (%rcx)
	movq	(%r14), %rsi
LBB10_1:                                ## =>This Inner Loop Header: Depth=1
	incq	%rsi
	movq	%rsi, (%r14)
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	(%rax), %rbx
	movq	_debug@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	LBB10_5
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	leaq	(%rbx,%rbx,4), %rdx
	leaq	L_.str.3(%rip), %rax
	addq	%rax, %rdx
	leaq	L_.str.27(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpq	$7, %rbx
	jg	LBB10_4
## %bb.3:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r15), %rax
	movq	(%rax), %rsi
	leaq	L_.str.4(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB10_5:                                ##   in Loop: Header=BB10_1 Depth=1
	cmpq	$37, %rbx
	jbe	LBB10_6
	jmp	LBB10_50
	.p2align	4, 0x90
LBB10_4:                                ##   in Loop: Header=BB10_1 Depth=1
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	cmpq	$37, %rbx
	ja	LBB10_50
LBB10_6:                                ##   in Loop: Header=BB10_1 Depth=1
	movslq	(%r12,%rbx,4), %rax
	addq	%r12, %rax
	jmpq	*%rax
LBB10_26:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_bp@GOTPCREL(%rip), %rax
	movq	(%r15), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%r15)
	movq	(%rcx), %rcx
	shlq	$3, %rcx
	addq	(%rax), %rcx
	movq	_ax@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_7:                                ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	jmp	LBB10_57
LBB10_12:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r15), %rax
	jmp	LBB10_13
LBB10_22:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	(%r13), %rdx
	leaq	-8(%rdx), %rsi
	movq	%rsi, (%r13)
	movq	%rcx, -8(%rdx)
LBB10_13:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_14:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	movq	(%r15), %rax
	je	LBB10_16
## %bb.15:                              ##   in Loop: Header=BB10_1 Depth=1
	addq	$8, %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_18:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	movq	(%r15), %rax
	je	LBB10_20
## %bb.19:                              ##   in Loop: Header=BB10_1 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_23:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_bp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	(%r13), %rdx
	leaq	-8(%rdx), %rsi
	movq	%rcx, -8(%rdx)
	movq	%rsi, (%rax)
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	(%rax), %rax
	shlq	$3, %rax
	negq	%rax
	addq	%rdx, %rax
	addq	$-8, %rax
	movq	%rax, (%r13)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_24:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movq	(%rax), %rax
	shlq	$3, %rax
	addq	%rax, (%r13)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_25:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_bp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	leaq	16(%rcx), %rax
	movq	%rax, (%r13)
	movq	8(%rcx), %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_8:                                ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	(%rax), %rax
	jmp	LBB10_57
LBB10_10:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%r13), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%r13)
	movq	(%rcx), %rcx
	jmp	LBB10_57
LBB10_9:                                ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rax
	movq	(%r13), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%r13)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	movsbq	%al, %rax
	movq	%rax, (%rsi)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_11:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%r13), %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, (%r13)
	movq	%rax, -8(%rcx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_27:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	orq	%rax, (%rcx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_28:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	xorq	%rax, (%rcx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_29:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	andq	%rax, (%rcx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_30:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	sete	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_31:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	setne	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_32:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	setl	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_34:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	setg	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_33:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	setle	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_35:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	_ax@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rax
	setge	%cl
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_36:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rdx
	movzbl	(%rdx), %ecx
	shlq	%cl, %rax
	movq	%rax, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_37:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rdx
	movzbl	(%rdx), %ecx
	sarq	%cl, %rax
	movq	%rax, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_38:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	addq	%rax, (%rcx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_39:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	jmp	LBB10_57
LBB10_40:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	_ax@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	imulq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_41:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	LBB10_42
## %bb.43:                              ##   in Loop: Header=BB10_1 Depth=1
	cqto
	idivq	%rcx
	movq	_ax@GOTPCREL(%rip), %rcx
	jmp	LBB10_57
LBB10_45:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%rax), %rax
	movq	_ax@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	LBB10_46
## %bb.47:                              ##   in Loop: Header=BB10_1 Depth=1
	cqto
	idivq	%rcx
	jmp	LBB10_48
LBB10_50:                               ##   in Loop: Header=BB10_1 Depth=1
	cmpq	$36, %rbx
	je	LBB10_53
## %bb.51:                              ##   in Loop: Header=BB10_1 Depth=1
	cmpq	$35, %rbx
	jne	LBB10_55
## %bb.52:                              ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	movq	16(%rax), %rdi
	movl	8(%rax), %esi
	movq	(%rax), %rdx
	callq	_libmin_memset
	movq	_ax@GOTPCREL(%rip), %rcx
	jmp	LBB10_57
LBB10_49:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	movq	(%r15), %rcx
	movq	8(%rcx), %rbx
	movq	-8(%rax,%rbx,8), %rdi
	movq	-16(%rax,%rbx,8), %rsi
	movq	-24(%rax,%rbx,8), %rdx
	movq	-32(%rax,%rbx,8), %rcx
	movq	-48(%rax,%rbx,8), %r9
	movq	-40(%rax,%rbx,8), %r8
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB10_54
LBB10_53:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%r13), %rax
	movq	16(%rax), %rdi
	movq	(%rax), %rdx
	movq	8(%rax), %rsi
	callq	_libmin_memcmp
LBB10_54:                               ##   in Loop: Header=BB10_1 Depth=1
	cltq
	movq	_ax@GOTPCREL(%rip), %rcx
	jmp	LBB10_57
LBB10_16:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_20:                               ##   in Loop: Header=BB10_1 Depth=1
	addq	$8, %rax
	movq	%rax, (%r15)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_42:                               ##   in Loop: Header=BB10_1 Depth=1
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        ## kill: def $eax killed $eax def $rax
	movq	_ax@GOTPCREL(%rip), %rcx
	jmp	LBB10_57
LBB10_46:                               ##   in Loop: Header=BB10_1 Depth=1
                                        ## kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        ## kill: def $edx killed $edx def $rdx
LBB10_48:                               ##   in Loop: Header=BB10_1 Depth=1
	movq	_ax@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	(%r14), %rsi
	jmp	LBB10_1
LBB10_59:
	movq	(%r13), %rax
	movq	(%rax), %rsi
	leaq	L_.str.28(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	(%r13), %rax
	movq	(%rax), %rax
	jmp	LBB10_60
LBB10_55:
	leaq	L_.str.29(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	$-1, %rax
LBB10_60:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L10_0_set_26, LBB10_26-LJTI10_0
.set L10_0_set_7, LBB10_7-LJTI10_0
.set L10_0_set_12, LBB10_12-LJTI10_0
.set L10_0_set_22, LBB10_22-LJTI10_0
.set L10_0_set_14, LBB10_14-LJTI10_0
.set L10_0_set_18, LBB10_18-LJTI10_0
.set L10_0_set_23, LBB10_23-LJTI10_0
.set L10_0_set_24, LBB10_24-LJTI10_0
.set L10_0_set_25, LBB10_25-LJTI10_0
.set L10_0_set_8, LBB10_8-LJTI10_0
.set L10_0_set_56, LBB10_56-LJTI10_0
.set L10_0_set_10, LBB10_10-LJTI10_0
.set L10_0_set_9, LBB10_9-LJTI10_0
.set L10_0_set_11, LBB10_11-LJTI10_0
.set L10_0_set_27, LBB10_27-LJTI10_0
.set L10_0_set_28, LBB10_28-LJTI10_0
.set L10_0_set_29, LBB10_29-LJTI10_0
.set L10_0_set_30, LBB10_30-LJTI10_0
.set L10_0_set_31, LBB10_31-LJTI10_0
.set L10_0_set_32, LBB10_32-LJTI10_0
.set L10_0_set_34, LBB10_34-LJTI10_0
.set L10_0_set_33, LBB10_33-LJTI10_0
.set L10_0_set_35, LBB10_35-LJTI10_0
.set L10_0_set_36, LBB10_36-LJTI10_0
.set L10_0_set_37, LBB10_37-LJTI10_0
.set L10_0_set_38, LBB10_38-LJTI10_0
.set L10_0_set_39, LBB10_39-LJTI10_0
.set L10_0_set_40, LBB10_40-LJTI10_0
.set L10_0_set_41, LBB10_41-LJTI10_0
.set L10_0_set_45, LBB10_45-LJTI10_0
.set L10_0_set_50, LBB10_50-LJTI10_0
.set L10_0_set_49, LBB10_49-LJTI10_0
.set L10_0_set_59, LBB10_59-LJTI10_0
LJTI10_0:
	.long	L10_0_set_26
	.long	L10_0_set_7
	.long	L10_0_set_12
	.long	L10_0_set_22
	.long	L10_0_set_14
	.long	L10_0_set_18
	.long	L10_0_set_23
	.long	L10_0_set_24
	.long	L10_0_set_25
	.long	L10_0_set_8
	.long	L10_0_set_56
	.long	L10_0_set_10
	.long	L10_0_set_9
	.long	L10_0_set_11
	.long	L10_0_set_27
	.long	L10_0_set_28
	.long	L10_0_set_29
	.long	L10_0_set_30
	.long	L10_0_set_31
	.long	L10_0_set_32
	.long	L10_0_set_34
	.long	L10_0_set_33
	.long	L10_0_set_35
	.long	L10_0_set_36
	.long	L10_0_set_37
	.long	L10_0_set_38
	.long	L10_0_set_39
	.long	L10_0_set_40
	.long	L10_0_set_41
	.long	L10_0_set_45
	.long	L10_0_set_50
	.long	L10_0_set_50
	.long	L10_0_set_50
	.long	L10_0_set_49
	.long	L10_0_set_50
	.long	L10_0_set_50
	.long	L10_0_set_50
	.long	L10_0_set_59
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function main
LCPI11_0:
	.quad	1                               ## 0x1
	.quad	130                             ## 0x82
LCPI11_1:
	.quad	13                              ## 0xd
	.quad	37                              ## 0x25
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
	cmpl	$2, %edi
	jl	LBB11_20
## %bb.1:
	movl	%edi, %ebx
	leal	-1(%rbx), %eax
	leaq	8(%rsi), %r14
	movq	(%r14), %rcx
	cmpb	$45, (%rcx)
	jne	LBB11_8
## %bb.2:
	cmpb	$115, 1(%rcx)
	jne	LBB11_5
## %bb.3:
	movq	_assembly@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	addl	$-2, %ebx
	je	LBB11_20
## %bb.4:
	movq	16(%rsi), %rcx
	addq	$16, %rsi
	cmpb	$45, (%rcx)
	movl	%ebx, %eax
	movq	%rsi, %r14
	jne	LBB11_9
LBB11_5:
	cmpb	$100, 1(%rcx)
	jne	LBB11_8
## %bb.6:
	movq	_debug@GOTPCREL(%rip), %rcx
	movq	$1, (%rcx)
	decl	%eax
	je	LBB11_20
## %bb.7:
	addq	$8, %r14
LBB11_8:
	movl	%eax, %ebx
LBB11_9:
	movq	_mhello(%rip), %rdi
	leaq	L_.str.31(%rip), %rsi
	callq	_libmin_mopen
	movq	_poolsize@GOTPCREL(%rip), %r15
	movq	$262144, (%r15)                 ## imm = 0x40000
	movq	_line@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	$262144, %edi                   ## imm = 0x40000
	callq	_libmin_malloc
	movq	_text@GOTPCREL(%rip), %r13
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	testq	%rax, %rax
	je	LBB11_22
## %bb.10:
	movq	%rsi, %rdi
	callq	_libmin_malloc
	movq	_data@GOTPCREL(%rip), %r12
	movq	%rax, (%r12)
	movq	(%r15), %rsi
	testq	%rax, %rax
	je	LBB11_23
## %bb.11:
	movq	%rsi, %rdi
	callq	_libmin_malloc
	movq	_stack@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%r15), %rsi
	testq	%rax, %rax
	je	LBB11_24
## %bb.12:
	movq	%rsi, %rdi
	callq	_libmin_malloc
	movq	_symbols@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	LBB11_25
## %bb.13:
	movq	(%r13), %rdi
	movq	(%r15), %rdx
	xorl	%esi, %esi
	callq	_libmin_memset
	movq	(%r12), %rdi
	movq	(%r15), %rdx
	xorl	%esi, %esi
	callq	_libmin_memset
	movq	_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r15), %rdx
	xorl	%esi, %esi
	callq	_libmin_memset
	movq	_symbols@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r15), %rdx
	xorl	%esi, %esi
	callq	_libmin_memset
	movq	(%r13), %rax
	movq	_old_text@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	L_.str.36(%rip), %rax
	movq	_src@GOTPCREL(%rip), %r12
	movq	%rax, (%r12)
	callq	_next
	movq	_current_id@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	$134, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$135, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$136, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$137, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$138, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$139, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$140, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$141, (%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$30, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$31, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$32, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$33, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$34, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$35, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$36, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movaps	LCPI11_0(%rip), %xmm0           ## xmm0 = [1,130]
	movups	%xmm0, 24(%rax)
	movq	$37, 40(%rax)
	callq	_next
	movq	(%r13), %rax
	movq	$134, (%rax)
	callq	_next
	movq	(%r13), %rax
	movq	_idmain@GOTPCREL(%rip), %r13
	movq	%rax, (%r13)
	movq	(%r15), %rdi
	callq	_libmin_malloc
	movq	_old_src@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, (%r12)
	movq	(%r15), %rsi
	testq	%rax, %rax
	je	LBB11_26
## %bb.14:
	decq	%rsi
	movq	_mhello(%rip), %rdx
	movq	%rax, %rdi
	callq	_libmin_mread
	testq	%rax, %rax
	jle	LBB11_27
## %bb.15:
	movq	(%r12), %rcx
	movb	$0, (%rcx,%rax)
	movq	_mhello(%rip), %rdi
	callq	_libmin_mclose
	callq	_next
	movq	_token@GOTPCREL(%rip), %r12
	cmpq	$0, (%r12)
	jle	LBB11_17
	.p2align	4, 0x90
LBB11_16:                               ## =>This Inner Loop Header: Depth=1
	callq	_global_declaration
	cmpq	$0, (%r12)
	jg	LBB11_16
LBB11_17:
	movq	(%r13), %rax
	movq	40(%rax), %rax
	movq	_pc@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	LBB11_31
## %bb.18:
	movq	_assembly@GOTPCREL(%rip), %rcx
	xorl	%eax, %eax
	cmpq	$0, (%rcx)
	jne	LBB11_30
## %bb.19:
	movq	_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%r15), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$-16, %rdx
	movaps	LCPI11_1(%rip), %xmm0           ## xmm0 = [13,37]
	movups	%xmm0, -16(%rcx,%rax)
	movslq	%ebx, %rsi
	movq	%rsi, -24(%rcx,%rax)
	movq	%r14, -32(%rcx,%rax)
	leaq	-40(%rcx,%rax), %rsi
	movq	_sp@GOTPCREL(%rip), %rdi
	movq	%rsi, (%rdi)
	movq	%rdx, -40(%rcx,%rax)
	callq	_eval
	callq	_libmin_success
	movl	$9, %eax
	jmp	LBB11_30
LBB11_20:
	leaq	L_.str.30(%rip), %rdi
LBB11_21:
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB11_29
LBB11_22:
	leaq	L_.str.32(%rip), %rdi
	jmp	LBB11_28
LBB11_23:
	leaq	L_.str.33(%rip), %rdi
	jmp	LBB11_28
LBB11_24:
	leaq	L_.str.34(%rip), %rdi
	jmp	LBB11_28
LBB11_25:
	movq	(%r15), %rsi
	leaq	L_.str.35(%rip), %rdi
	jmp	LBB11_28
LBB11_26:
	leaq	L_.str.37(%rip), %rdi
	jmp	LBB11_28
LBB11_27:
	leaq	L_.str.38(%rip), %rdi
	movq	%rax, %rsi
LBB11_28:
	xorl	%eax, %eax
	callq	_libmin_printf
LBB11_29:
	movl	$-1, %eax
LBB11_30:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB11_31:
	leaq	L_.str.39(%rip), %rdi
	jmp	LBB11_21
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	___hello                        ## @__hello
	.p2align	4
___hello:
	.ascii	"#include <stdio.h>\n\nint fibonacci(int i) {\n    if (i <= 1) {\n        return 1;\n    }\n    return fibonacci(i-1) + fibonacci(i-2);\n}\n\nint main()\n{\n    int i;\n    i = 0;\n    while (i <= 10) {\n        printf(\"fibonacci(%2d) = %d\\n\", i, fibonacci(i));\n        i = i + 1;\n    }\n    return 0;\n}\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"hello.c"

	.section	__DATA,__data
	.globl	_hello                          ## @hello
	.p2align	3
_hello:
	.quad	L_.str
	.quad	288                             ## 0x120
	.quad	___hello
	.long	0                               ## 0x0
	.space	4

	.globl	_mhello                         ## @mhello
	.p2align	3
_mhello:
	.quad	_hello

	.comm	_src,8,3                        ## @src
	.comm	_token,8,3                      ## @token
	.comm	_assembly,8,3                   ## @assembly
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"%ld: %.*s"

	.comm	_line,8,3                       ## @line
	.comm	_old_src,8,3                    ## @old_src
	.comm	_old_text,8,3                   ## @old_text
	.comm	_text,8,3                       ## @text
L_.str.2:                               ## @.str.2
	.asciz	"%8.4s"

L_.str.3:                               ## @.str.3
	.asciz	"LEA ,IMM ,JMP ,CALL,JZ  ,JNZ ,ENT ,ADJ ,LEV ,LI  ,LC  ,SI  ,SC  ,PUSH,OR  ,XOR ,AND ,EQ  ,NE  ,LT  ,GT  ,LE  ,GE  ,SHL ,SHR ,ADD ,SUB ,MUL ,DIV ,MOD ,OPEN,READ,CLOS,PRTF,MALC,MSET,MCMP,EXIT"

L_.str.4:                               ## @.str.4
	.asciz	" %ld\n"

L_.str.5:                               ## @.str.5
	.asciz	"\n"

	.comm	_symbols,8,3                    ## @symbols
	.comm	_current_id,8,3                 ## @current_id
	.comm	_token_val,8,3                  ## @token_val
	.comm	_data,8,3                       ## @data
L_.str.6:                               ## @.str.6
	.asciz	"%ld: expected token: %ld\n"

L_.str.7:                               ## @.str.7
	.asciz	"%ld: unexpected token EOF of expression\n"

	.comm	_expr_type,8,3                  ## @expr_type
L_.str.8:                               ## @.str.8
	.asciz	"%ld: bad function call\n"

	.comm	_index_of_bp,8,3                ## @index_of_bp
L_.str.9:                               ## @.str.9
	.asciz	"%ld: undefined variable\n"

L_.str.10:                              ## @.str.10
	.asciz	"%ld: bad dereference\n"

L_.str.11:                              ## @.str.11
	.asciz	"%ld: bad address of\n"

L_.str.12:                              ## @.str.12
	.asciz	"%ld: bad lvalue of pre-increment\n"

L_.str.13:                              ## @.str.13
	.asciz	"%ld: bad expression\n"

L_.str.14:                              ## @.str.14
	.asciz	"%ld: bad lvalue in assignment\n"

L_.str.15:                              ## @.str.15
	.asciz	"%ld: missing colon in conditional\n"

L_.str.16:                              ## @.str.16
	.asciz	"%ld: bad value in increment\n"

L_.str.17:                              ## @.str.17
	.asciz	"%ld: pointer type expected\n"

L_.str.18:                              ## @.str.18
	.asciz	"%ld: compiler error, token = %ld\n"

L_.str.19:                              ## @.str.19
	.asciz	"%ld: bad enum identifier %ld\n"

L_.str.20:                              ## @.str.20
	.asciz	"%ld: bad enum initializer\n"

L_.str.21:                              ## @.str.21
	.asciz	"%ld: bad parameter declaration\n"

L_.str.22:                              ## @.str.22
	.asciz	"%ld: duplicate parameter declaration\n"

	.comm	_basetype,8,3                   ## @basetype
L_.str.23:                              ## @.str.23
	.asciz	"%ld: bad local declaration\n"

L_.str.24:                              ## @.str.24
	.asciz	"%ld: duplicate local declaration\n"

L_.str.25:                              ## @.str.25
	.asciz	"%ld: bad global declaration\n"

L_.str.26:                              ## @.str.26
	.asciz	"%ld: duplicate global declaration\n"

	.comm	_cycle,8,3                      ## @cycle
	.comm	_pc,8,3                         ## @pc
	.comm	_debug,8,3                      ## @debug
L_.str.27:                              ## @.str.27
	.asciz	"%ld> %.4s"

	.comm	_ax,8,3                         ## @ax
	.comm	_sp,8,3                         ## @sp
	.comm	_bp,8,3                         ## @bp
L_.str.28:                              ## @.str.28
	.asciz	"exit(%ld)"

L_.str.29:                              ## @.str.29
	.asciz	"unknown instruction:%ld\n"

L_.str.30:                              ## @.str.30
	.asciz	"usage: xc [-s] [-d] file ...\n"

L_.str.31:                              ## @.str.31
	.asciz	"r"

	.comm	_poolsize,8,3                   ## @poolsize
L_.str.32:                              ## @.str.32
	.asciz	"could not malloc(%ld) for text area\n"

L_.str.33:                              ## @.str.33
	.asciz	"could not malloc(%ld) for data area\n"

	.comm	_stack,8,3                      ## @stack
L_.str.34:                              ## @.str.34
	.asciz	"could not malloc(%ld) for stack area\n"

L_.str.35:                              ## @.str.35
	.asciz	"could not malloc(%ld) for symbol table\n"

L_.str.36:                              ## @.str.36
	.asciz	"char else enum if int return sizeof while open read close printf malloc memset memcmp exit void main"

	.comm	_idmain,8,3                     ## @idmain
L_.str.37:                              ## @.str.37
	.asciz	"could not malloc(%ld) for source area\n"

L_.str.38:                              ## @.str.38
	.asciz	"read() returned %ld\n"

L_.str.39:                              ## @.str.39
	.asciz	"main() not defined\n"

.subsections_via_symbols
