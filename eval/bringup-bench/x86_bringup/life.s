	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$1001, %edi                     ## imm = 0x3E9
	callq	_libmin_srand
	xorl	%r13d, %r13d
	movq	_gridVals@GOTPCREL(%rip), %r14
	movq	_gridTmpVals@GOTPCREL(%rip), %r15
	leaq	_BLOCKS(%rip), %r12
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	leaq	(,%r13,4), %rax
	addq	%r13, %rax
	leaq	(,%rax,4), %rax
	addq	%r13, %rax
	addq	%r13, %rax
	leaq	(%rax,%r14), %rcx
	movq	_grid(%rip), %rdx
	movq	%rcx, (%rdx,%r13,8)
	addq	%r15, %rax
	movq	_gridTmp(%rip), %rcx
	movq	%rax, (%rcx,%r13,8)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_libmin_rand
	xorl	%edx, %edx
	divl	_NUM_BLOCKS(%rip)
                                        ## kill: def $edx killed $edx def $rdx
	movzbl	(%rdx,%r12), %eax
	movq	_grid(%rip), %rcx
	movq	(%rcx,%r13,8), %rcx
	movb	%al, (%rcx,%rbx)
	movq	_gridTmp(%rip), %rax
	movq	(%rax,%r13,8), %rax
	movb	$32, (%rax,%rbx)
	incq	%rbx
	cmpq	$22, %rbx
	jne	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	incq	%r13
	cmpq	$70, %r13
	jne	LBB0_1
## %bb.4:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %r13
	leaq	L_.str.4(%rip), %r12
	xorl	%r15d, %r15d
	jmp	LBB0_5
	.p2align	4, 0x90
LBB0_16:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	_grid(%rip), %rax
	movq	_gridTmp(%rip), %rcx
	movq	%rcx, _grid(%rip)
	movq	%rax, _gridTmp(%rip)
	incl	%r15d
	cmpl	$80, %r15d
	je	LBB0_17
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_6 Depth 2
                                        ##       Child Loop BB0_7 Depth 3
                                        ##     Child Loop BB0_10 Depth 2
                                        ##       Child Loop BB0_11 Depth 3
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_evolution(%rip), %esi
	leal	1(%rsi), %eax
	movl	%eax, _evolution(%rip)
	leaq	L_.str.2(%rip), %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_6:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_7 Depth 3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_6 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	_grid(%rip), %rax
	movq	(%rax,%rbx,8), %rax
	movsbl	(%rax,%r14), %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%rbx
	cmpq	$70, %rbx
	jne	LBB0_7
## %bb.8:                               ##   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r14
	cmpq	$22, %r14
	jne	LBB0_6
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=1
	xorl	%ebx, %ebx
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_15:                                ##   in Loop: Header=BB0_10 Depth=2
	incq	%rbx
	cmpq	$22, %rbx
	je	LBB0_16
LBB0_10:                                ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_11 Depth 3
	xorl	%r14d, %r14d
	jmp	LBB0_11
	.p2align	4, 0x90
LBB0_13:                                ##   in Loop: Header=BB0_11 Depth=3
	cmpl	$3, %eax
	movzbl	%dl, %ecx
	movzbl	_DEAD(%rip), %eax
	cmovel	%ecx, %eax
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=3
	movq	_gridTmp(%rip), %rcx
	movq	(%rcx,%r14,8), %rcx
	movb	%al, (%rcx,%rbx)
	callq	_libmin_rand
	incq	%r14
	cmpq	$70, %r14
	je	LBB0_15
LBB0_11:                                ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_10 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%r14d, %edi
	movl	%ebx, %esi
	callq	_getNumNeigbors
	movq	_grid(%rip), %rcx
	movq	(%rcx,%r14,8), %rcx
	movzbl	(%rcx,%rbx), %ecx
	movzbl	_LIVE(%rip), %edx
	cmpb	%dl, %cl
	jne	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=3
	addl	$-4, %eax
	cmpl	$-2, %eax
	movzbl	%cl, %ecx
	movzbl	_DEAD(%rip), %eax
	cmovael	%ecx, %eax
	jmp	LBB0_14
LBB0_17:
	callq	_libmin_success
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
	.globl	_init                           ## -- Begin function init
	.p2align	4, 0x90
_init:                                  ## @init
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
	movl	$1001, %edi                     ## imm = 0x3E9
	callq	_libmin_srand
	xorl	%r13d, %r13d
	movq	_gridVals@GOTPCREL(%rip), %r14
	movq	_gridTmpVals@GOTPCREL(%rip), %r15
	leaq	_BLOCKS(%rip), %r12
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
	leaq	(,%r13,4), %rax
	addq	%r13, %rax
	leaq	(,%rax,4), %rax
	addq	%r13, %rax
	addq	%r13, %rax
	leaq	(%rax,%r14), %rcx
	movq	_grid(%rip), %rdx
	movq	%rcx, (%rdx,%r13,8)
	addq	%r15, %rax
	movq	_gridTmp(%rip), %rcx
	movq	%rax, (%rcx,%r13,8)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_libmin_rand
	xorl	%edx, %edx
	divl	_NUM_BLOCKS(%rip)
                                        ## kill: def $edx killed $edx def $rdx
	movzbl	(%rdx,%r12), %eax
	movq	_grid(%rip), %rcx
	movq	(%rcx,%r13,8), %rcx
	movb	%al, (%rcx,%rbx)
	movq	_gridTmp(%rip), %rax
	movq	(%rax,%r13,8), %rax
	movb	$32, (%rax,%rbx)
	incq	%rbx
	cmpq	$22, %rbx
	jne	LBB1_2
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	incq	%r13
	cmpq	$70, %r13
	jne	LBB1_1
## %bb.4:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_libmin_printf                  ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_draw                           ## -- Begin function draw
	.p2align	4, 0x90
_draw:                                  ## @draw
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
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	_evolution(%rip), %esi
	leal	1(%rsi), %eax
	movl	%eax, _evolution(%rip)
	leaq	L_.str.2(%rip), %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.3(%rip), %r15
	leaq	L_.str.4(%rip), %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_grid(%rip), %rax
	movq	(%rax,%rbx,8), %rax
	movsbl	(%rax,%r12), %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%rbx
	cmpq	$70, %rbx
	jne	LBB2_2
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	incq	%r12
	cmpq	$22, %r12
	jne	LBB2_1
## %bb.4:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_process                        ## -- Begin function process
	.p2align	4, 0x90
_process:                               ## @process
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	xorl	%r14d, %r14d
	jmp	LBB3_1
	.p2align	4, 0x90
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	incq	%r14
	cmpq	$22, %r14
	je	LBB3_5
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_2 Depth 2
	xorl	%ebx, %ebx
	jmp	LBB3_2
	.p2align	4, 0x90
LBB3_6:                                 ##   in Loop: Header=BB3_2 Depth=2
	cmpl	$3, %eax
	movzbl	%dl, %ecx
	movzbl	_DEAD(%rip), %eax
	cmovel	%ecx, %eax
LBB3_7:                                 ##   in Loop: Header=BB3_2 Depth=2
	movq	_gridTmp(%rip), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movb	%al, (%rcx,%r14)
	callq	_libmin_rand
	incq	%rbx
	cmpq	$70, %rbx
	je	LBB3_4
LBB3_2:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%ebx, %edi
	movl	%r14d, %esi
	callq	_getNumNeigbors
	movq	_grid(%rip), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movzbl	(%rcx,%r14), %ecx
	movzbl	_LIVE(%rip), %edx
	cmpb	%dl, %cl
	jne	LBB3_6
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=2
	addl	$-4, %eax
	cmpl	$-2, %eax
	movzbl	%cl, %ecx
	movzbl	_DEAD(%rip), %eax
	cmovael	%ecx, %eax
	jmp	LBB3_7
LBB3_5:
	movq	_grid(%rip), %rax
	movq	_gridTmp(%rip), %rcx
	movq	%rcx, _grid(%rip)
	movq	%rax, _gridTmp(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getNumNeigbors                 ## -- Begin function getNumNeigbors
	.p2align	4, 0x90
_getNumNeigbors:                        ## @getNumNeigbors
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
	movslq	%edi, %r11
	movslq	%esi, %rax
	testl	%edi, %edi
	je	LBB4_1
## %bb.3:
	movq	_grid(%rip), %r10
	movq	-8(%r10,%r11,8), %rdx
	movb	_LIVE(%rip), %r8b
	xorl	%ecx, %ecx
	cmpb	%r8b, (%rdx,%rax)
	sete	%cl
	cmpl	$69, %r11d
	jne	LBB4_2
## %bb.4:
	leaq	_DEAD(%rip), %rax
	movb	$1, %r9b
	jmp	LBB4_5
LBB4_1:
	movb	_LIVE(%rip), %r8b
	xorl	%ecx, %ecx
	cmpb	%r8b, _DEAD(%rip)
	sete	%cl
	movq	_grid(%rip), %r10
LBB4_2:
	addq	8(%r10,%r11,8), %rax
	xorl	%r9d, %r9d
LBB4_5:
	xorl	%r12d, %r12d
	cmpb	%r8b, (%rax)
	sete	%r12b
	addl	%ecx, %r12d
	testl	%esi, %esi
	je	LBB4_6
## %bb.8:
	movq	(%r10,%r11,8), %rax
	movslq	%esi, %rcx
	xorl	%edx, %edx
	cmpb	%r8b, -1(%rcx,%rax)
	sete	%dl
	addl	%edx, %r12d
	cmpl	$21, %esi
	jne	LBB4_7
## %bb.9:
	leaq	_DEAD(%rip), %r14
	movb	$1, %r15b
	jmp	LBB4_10
LBB4_6:
	xorl	%eax, %eax
	cmpb	%r8b, _DEAD(%rip)
	sete	%al
	addl	%eax, %r12d
	movq	(%r10,%r11,8), %rax
LBB4_7:
	movslq	%esi, %rcx
	leaq	(%rcx,%rax), %r14
	incq	%r14
	xorl	%r15d, %r15d
LBB4_10:
	leaq	_DEAD(%rip), %rax
	movq	%rax, %rbx
	testl	%edi, %edi
	je	LBB4_13
## %bb.11:
	movq	%rax, %rbx
	testl	%esi, %esi
	je	LBB4_13
## %bb.12:
	movq	-8(%r10,%r11,8), %rcx
	movslq	%esi, %rdx
	leaq	(%rdx,%rcx), %rbx
	decq	%rbx
LBB4_13:
	testl	%esi, %esi
	sete	%cl
	orb	%r9b, %cl
	movq	%rax, %rcx
	jne	LBB4_15
## %bb.14:
	movq	8(%r10,%r11,8), %rcx
	movslq	%esi, %rdx
	addq	%rdx, %rcx
	decq	%rcx
LBB4_15:
	testl	%edi, %edi
	sete	%dl
	orb	%r15b, %dl
	movq	%rax, %rdi
	jne	LBB4_17
## %bb.16:
	movq	-8(%r10,%r11,8), %rdx
	movslq	%esi, %rdi
	addq	%rdx, %rdi
	incq	%rdi
LBB4_17:
	movb	(%r14), %dl
	movb	(%rbx), %bl
	movb	(%rcx), %cl
	movb	(%rdi), %dil
	orb	%r15b, %r9b
	jne	LBB4_19
## %bb.18:
	movq	8(%r10,%r11,8), %rax
	movslq	%esi, %rsi
	addq	%rsi, %rax
	incq	%rax
LBB4_19:
	movzbl	%bl, %esi
	movzbl	%dl, %edx
	movd	%edx, %xmm0
	pinsrb	$1, %esi, %xmm0
	movzbl	%cl, %ecx
	pinsrb	$2, %ecx, %xmm0
	movzbl	%dil, %ecx
	pinsrb	$3, %ecx, %xmm0
	movzbl	%r8b, %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm1, %xmm1            ## xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm1, %xmm1                ## xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pcmpeqb	%xmm0, %xmm1
	xorl	%ecx, %ecx
	cmpb	%dl, (%rax)
	sete	%cl
	pmovsxbd	%xmm1, %xmm0
	movmskps	%xmm0, %eax
	movl	%eax, %edx
	shrb	%dl
	andb	$5, %dl
	subb	%dl, %al
	movl	%eax, %edx
	andb	$51, %dl
	shrb	$2, %al
	andb	$51, %al
	addb	%dl, %al
	movl	%eax, %edx
	shrb	$4, %dl
	addb	%al, %dl
	andb	$15, %dl
	movzbl	%dl, %eax
	addl	%ecx, %eax
	addl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_processMutate                  ## -- Begin function processMutate
	.p2align	4, 0x90
_processMutate:                         ## @processMutate
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_libmin_rand                    ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_flip                           ## -- Begin function flip
	.p2align	4, 0x90
_flip:                                  ## @flip
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_grid(%rip), %rax
	movq	_gridTmp(%rip), %rcx
	movq	%rcx, _grid(%rip)
	movq	%rax, _gridTmp(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getLeft                        ## -- Begin function getLeft
	.p2align	4, 0x90
_getLeft:                               ## @getLeft
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%edi, %edi
	je	LBB7_1
## %bb.2:
	movq	_grid(%rip), %rcx
	movslq	%edi, %rdx
	movslq	%esi, %rax
	addq	-8(%rcx,%rdx,8), %rax
	jmp	LBB7_3
LBB7_1:
	leaq	_DEAD(%rip), %rax
LBB7_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getRight                       ## -- Begin function getRight
	.p2align	4, 0x90
_getRight:                              ## @getRight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$69, %edi
	jne	LBB8_2
## %bb.1:
	leaq	_DEAD(%rip), %rax
	jmp	LBB8_3
LBB8_2:
	movq	_grid(%rip), %rcx
	movslq	%edi, %rdx
	movslq	%esi, %rax
	addq	8(%rcx,%rdx,8), %rax
LBB8_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getUp                          ## -- Begin function getUp
	.p2align	4, 0x90
_getUp:                                 ## @getUp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	je	LBB9_1
## %bb.2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	decq	%rax
	jmp	LBB9_3
LBB9_1:
	leaq	_DEAD(%rip), %rax
LBB9_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getDown                        ## -- Begin function getDown
	.p2align	4, 0x90
_getDown:                               ## @getDown
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$21, %esi
	jne	LBB10_2
## %bb.1:
	leaq	_DEAD(%rip), %rax
	jmp	LBB10_3
LBB10_2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	incq	%rax
LBB10_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getUpLeft                      ## -- Begin function getUpLeft
	.p2align	4, 0x90
_getUpLeft:                             ## @getUpLeft
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_DEAD(%rip), %rax
	testl	%edi, %edi
	je	LBB11_3
## %bb.1:
	testl	%esi, %esi
	je	LBB11_3
## %bb.2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	-8(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	decq	%rax
LBB11_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getUpRight                     ## -- Begin function getUpRight
	.p2align	4, 0x90
_getUpRight:                            ## @getUpRight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_DEAD(%rip), %rax
	cmpl	$69, %edi
	je	LBB12_3
## %bb.1:
	testl	%esi, %esi
	je	LBB12_3
## %bb.2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	8(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	decq	%rax
LBB12_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getDownLeft                    ## -- Begin function getDownLeft
	.p2align	4, 0x90
_getDownLeft:                           ## @getDownLeft
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_DEAD(%rip), %rax
	testl	%edi, %edi
	je	LBB13_3
## %bb.1:
	cmpl	$21, %esi
	je	LBB13_3
## %bb.2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	-8(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	incq	%rax
LBB13_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_getDownRight                   ## -- Begin function getDownRight
	.p2align	4, 0x90
_getDownRight:                          ## @getDownRight
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_DEAD(%rip), %rax
	cmpl	$69, %edi
	je	LBB14_3
## %bb.1:
	cmpl	$21, %esi
	je	LBB14_3
## %bb.2:
	movq	_grid(%rip), %rax
	movslq	%edi, %rcx
	movq	8(%rax,%rcx,8), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	incq	%rax
LBB14_3:
	movsbl	(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sleep                          ## -- Begin function sleep
	.p2align	4, 0x90
_sleep:                                 ## @sleep
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_x@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	cmpl	$0, (%rax)
	jg	LBB15_3
	.p2align	4, 0x90
LBB15_1:                                ## =>This Inner Loop Header: Depth=1
	incl	(%rax)
	cmpl	$0, (%rax)
	jle	LBB15_1
LBB15_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_NUM_BLOCKS                     ## @NUM_BLOCKS
	.p2align	2
_NUM_BLOCKS:
	.long	2                               ## 0x2

	.globl	_LIVE                           ## @LIVE
_LIVE:
	.byte	42                              ## 0x2a

	.globl	_DEAD                           ## @DEAD
_DEAD:
	.byte	32                              ## 0x20

	.globl	_BLOCKS                         ## @BLOCKS
_BLOCKS:
	.ascii	" *"

	.globl	_evolution                      ## @evolution
	.p2align	2
_evolution:
	.long	1                               ## 0x1

	.comm	_gridRoots,560,4                ## @gridRoots
	.globl	_grid                           ## @grid
	.p2align	3
_grid:
	.quad	_gridRoots

	.comm	_gridTmpRoots,560,4             ## @gridTmpRoots
	.globl	_gridTmp                        ## @gridTmp
	.p2align	3
_gridTmp:
	.quad	_gridTmpRoots

	.comm	_gridVals,1540,4                ## @gridVals
	.comm	_gridTmpVals,1540,4             ## @gridTmpVals
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\033[2J"

L_.str.1:                               ## @.str.1
	.asciz	"\033[H"

L_.str.2:                               ## @.str.2
	.asciz	"CONWAY'S Game of Life\n\nEvolution #%d\n\n"

L_.str.3:                               ## @.str.3
	.asciz	"%c"

L_.str.4:                               ## @.str.4
	.asciz	"\n"

	.comm	_x,4,2                          ## @x
.subsections_via_symbols
