	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_isDistinct                     ## -- Begin function isDistinct
	.p2align	4, 0x90
_isDistinct:                            ## @isDistinct
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
	subq	$1544, %rsp                     ## imm = 0x608
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$2147483647, (%rsi)             ## imm = 0x7FFFFFFF
	leaq	L_.memset_pattern(%rip), %rsi
	leaq	-1568(%rbp), %rdi
	movl	$1536, %edx                     ## imm = 0x600
	callq	_memset_pattern16
	movl	(%r15), %ebx
	movl	%ebx, -1568(%rbp)
	xorl	%r8d, %r8d
	movb	$1, %dl
	movl	$1, %r9d
	cmpl	$2147483647, %ebx               ## imm = 0x7FFFFFFF
	je	LBB0_11
	.p2align	4, 0x90
LBB0_2:
	movl	-1564(%rbp), %ecx
	movl	-1560(%rbp), %edi
	movl	(%r15,%r9,4), %esi
	xorl	%eax, %eax
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	je	LBB0_5
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	%edi, %eax
	movslq	%edi, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	-1560(%rbp,%rcx,4), %edi
	movl	-1568(%rbp,%rcx,4), %ebx
	movl	-1564(%rbp,%rcx,4), %ecx
	cmpl	$2147483647, %ebx               ## imm = 0x7FFFFFFF
	je	LBB0_11
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%ebx, %esi
	jg	LBB0_4
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	jge	LBB0_13
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	%ecx, %edi
	cmpl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	jne	LBB0_10
## %bb.8:
	incl	%r8d
	movl	$1, %ecx
	movl	%eax, %edi
	movl	%r8d, %ebx
	movl	%r8d, %eax
	xorl	%edx, %edx
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_5:
	incl	%r8d
	movl	$2, %edx
	movl	%r8d, %edi
	xorl	%ecx, %ecx
	movl	%esi, %ebx
	movl	%r8d, %esi
LBB0_9:
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	leaq	-1568(,%rdi,4), %rdi
	addq	%rbp, %rdi
	movl	%ebx, (%rdi,%rcx,4)
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	-1568(,%rax,4), %rax
	addq	%rbp, %rax
	movl	%esi, (%rax,%rdx,4)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	leaq	1(%r9), %rax
	cmpq	$127, %r9
	setb	%dl
	cmpq	$128, %rax
	je	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=1
	movl	-1568(%rbp), %ebx
	movq	%rax, %r9
	cmpl	$2147483647, %ebx               ## imm = 0x7FFFFFFF
	jne	LBB0_2
	jmp	LBB0_11
LBB0_13:
	movl	%esi, (%r14)
LBB0_14:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB0_16
## %bb.15:
	notb	%dl
	movzbl	%dl, %eax
	andl	$1, %eax
	addq	$1544, %rsp                     ## imm = 0x608
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_16:
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
	pushq	%r12
	pushq	%rbx
	subq	$1552, %rsp                     ## imm = 0x610
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	L_.memset_pattern(%rip), %rsi
	leaq	-1584(%rbp), %rdi
	movl	$1536, %edx                     ## imm = 0x600
	callq	_memset_pattern16
	movl	_elements1(%rip), %edi
	movl	%edi, -1584(%rbp)
	xorl	%r9d, %r9d
	movb	$1, %r15b
	movl	$1, %edx
	leaq	_elements1(%rip), %r8
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	je	LBB1_11
	.p2align	4, 0x90
LBB1_2:
	movl	-1580(%rbp), %ecx
	movl	-1576(%rbp), %esi
	movl	(%r8,%rdx,4), %r14d
	xorl	%ebx, %ebx
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_4:                                 ##   in Loop: Header=BB1_3 Depth=1
	cmpl	$2147483647, %esi               ## imm = 0x7FFFFFFF
	je	LBB1_5
LBB1_10:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	%esi, %ebx
	movslq	%esi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	-1576(%rbp,%rax,4), %esi
	movl	-1584(%rbp,%rax,4), %edi
	movl	-1580(%rbp,%rax,4), %ecx
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	je	LBB1_11
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%edi, %r14d
	jg	LBB1_4
## %bb.6:                               ##   in Loop: Header=BB1_3 Depth=1
	jge	LBB1_13
## %bb.7:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	%ecx, %esi
	cmpl	$2147483647, %ecx               ## imm = 0x7FFFFFFF
	jne	LBB1_10
## %bb.8:
	incl	%r9d
	movl	$1, %edi
	movl	%ebx, %ecx
	movl	%r9d, %eax
	movl	%r9d, %ebx
	xorl	%esi, %esi
	jmp	LBB1_9
	.p2align	4, 0x90
LBB1_5:
	incl	%r9d
	movl	$2, %esi
	movl	%r9d, %ecx
	xorl	%edi, %edi
	movl	%r14d, %eax
	movl	%r9d, %r14d
LBB1_9:
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	-1584(,%rcx,4), %rcx
	addq	%rbp, %rcx
	movl	%eax, (%rcx,%rdi,4)
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	-1584(,%rax,4), %rax
	addq	%rbp, %rax
	movl	%r14d, (%rax,%rsi,4)
LBB1_11:                                ## =>This Inner Loop Header: Depth=1
	leaq	1(%rdx), %rax
	cmpq	$127, %rdx
	setb	%r15b
	cmpq	$128, %rax
	je	LBB1_12
## %bb.34:                              ##   in Loop: Header=BB1_11 Depth=1
	movl	-1584(%rbp), %edi
	movq	%rax, %rdx
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	jne	LBB1_2
	jmp	LBB1_11
LBB1_12:
	movl	$2147483647, %r14d              ## imm = 0x7FFFFFFF
LBB1_13:
	leaq	L_.memset_pattern(%rip), %rsi
	leaq	-1584(%rbp), %rdi
	movl	$1536, %edx                     ## imm = 0x600
	callq	_memset_pattern16
	movl	_elements2(%rip), %edi
	movl	%edi, -1584(%rbp)
	xorl	%r9d, %r9d
	movb	$1, %r12b
	movl	$1, %edx
	leaq	_elements2(%rip), %r8
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	je	LBB1_24
	.p2align	4, 0x90
LBB1_15:
	movl	-1580(%rbp), %eax
	movl	-1576(%rbp), %esi
	movl	(%r8,%rdx,4), %ebx
	xorl	%ecx, %ecx
	jmp	LBB1_16
	.p2align	4, 0x90
LBB1_17:                                ##   in Loop: Header=BB1_16 Depth=1
	cmpl	$2147483647, %esi               ## imm = 0x7FFFFFFF
	je	LBB1_18
LBB1_23:                                ##   in Loop: Header=BB1_16 Depth=1
	movl	%esi, %ecx
	movslq	%esi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	-1576(%rbp,%rax,4), %esi
	movl	-1584(%rbp,%rax,4), %edi
	movl	-1580(%rbp,%rax,4), %eax
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	je	LBB1_24
LBB1_16:                                ## =>This Inner Loop Header: Depth=1
	cmpl	%edi, %ebx
	jg	LBB1_17
## %bb.19:                              ##   in Loop: Header=BB1_16 Depth=1
	jge	LBB1_26
## %bb.20:                              ##   in Loop: Header=BB1_16 Depth=1
	movl	%eax, %esi
	cmpl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	jne	LBB1_23
## %bb.21:
	incl	%r9d
	movl	$1, %edi
	movl	%ecx, %eax
	movl	%r9d, %esi
	movl	%r9d, %ecx
	xorl	%r10d, %r10d
	jmp	LBB1_22
	.p2align	4, 0x90
LBB1_18:
	incl	%r9d
	movl	$2, %r10d
	movl	%r9d, %eax
	xorl	%edi, %edi
	movl	%ebx, %esi
	movl	%r9d, %ebx
LBB1_22:
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	-1584(,%rax,4), %rax
	addq	%rbp, %rax
	movl	%esi, (%rax,%rdi,4)
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	-1584(,%rax,4), %rax
	addq	%rbp, %rax
	movl	%ebx, (%rax,%r10,4)
LBB1_24:                                ## =>This Inner Loop Header: Depth=1
	leaq	1(%rdx), %rax
	cmpq	$127, %rdx
	setb	%r12b
	cmpq	$128, %rax
	je	LBB1_25
## %bb.35:                              ##   in Loop: Header=BB1_24 Depth=1
	movl	-1584(%rbp), %edi
	movq	%rax, %rdx
	cmpl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	jne	LBB1_15
	jmp	LBB1_24
LBB1_25:
	movl	$2147483647, %ebx               ## imm = 0x7FFFFFFF
LBB1_26:
	testb	$1, %r15b
	je	LBB1_27
## %bb.28:
	leaq	L_.str.1(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	testb	$1, %r12b
	jne	LBB1_31
LBB1_30:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_32
LBB1_27:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testb	$1, %r12b
	je	LBB1_30
LBB1_31:
	leaq	L_.str.3(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_32:
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB1_36
## %bb.33:
	xorl	%eax, %eax
	addq	$1552, %rsp                     ## imm = 0x610
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_36:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_elements1                      ## @elements1
	.p2align	4
_elements1:
	.long	25                              ## 0x19
	.long	97                              ## 0x61
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.long	36                              ## 0x24
	.long	22                              ## 0x16
	.long	74                              ## 0x4a
	.long	3                               ## 0x3
	.long	9                               ## 0x9
	.long	12                              ## 0xc
	.long	30                              ## 0x1e
	.long	81                              ## 0x51
	.long	63                              ## 0x3f
	.long	148                             ## 0x94
	.long	99                              ## 0x63
	.long	13                              ## 0xd
	.long	64                              ## 0x40
	.long	49                              ## 0x31
	.long	80                              ## 0x50
	.long	15                              ## 0xf
	.long	125                             ## 0x7d
	.long	197                             ## 0xc5
	.long	101                             ## 0x65
	.long	100                             ## 0x64
	.long	136                             ## 0x88
	.long	122                             ## 0x7a
	.long	174                             ## 0xae
	.long	103                             ## 0x67
	.long	109                             ## 0x6d
	.long	112                             ## 0x70
	.long	130                             ## 0x82
	.long	181                             ## 0xb5
	.long	163                             ## 0xa3
	.long	1148                            ## 0x47c
	.long	199                             ## 0xc7
	.long	113                             ## 0x71
	.long	164                             ## 0xa4
	.long	149                             ## 0x95
	.long	180                             ## 0xb4
	.long	115                             ## 0x73
	.long	225                             ## 0xe1
	.long	297                             ## 0x129
	.long	201                             ## 0xc9
	.long	200                             ## 0xc8
	.long	236                             ## 0xec
	.long	222                             ## 0xde
	.long	274                             ## 0x112
	.long	203                             ## 0xcb
	.long	209                             ## 0xd1
	.long	212                             ## 0xd4
	.long	230                             ## 0xe6
	.long	281                             ## 0x119
	.long	263                             ## 0x107
	.long	2148                            ## 0x864
	.long	299                             ## 0x12b
	.long	213                             ## 0xd5
	.long	264                             ## 0x108
	.long	249                             ## 0xf9
	.long	280                             ## 0x118
	.long	215                             ## 0xd7
	.long	325                             ## 0x145
	.long	397                             ## 0x18d
	.long	301                             ## 0x12d
	.long	300                             ## 0x12c
	.long	336                             ## 0x150
	.long	322                             ## 0x142
	.long	374                             ## 0x176
	.long	303                             ## 0x12f
	.long	309                             ## 0x135
	.long	312                             ## 0x138
	.long	330                             ## 0x14a
	.long	381                             ## 0x17d
	.long	363                             ## 0x16b
	.long	3148                            ## 0xc4c
	.long	399                             ## 0x18f
	.long	313                             ## 0x139
	.long	364                             ## 0x16c
	.long	349                             ## 0x15d
	.long	380                             ## 0x17c
	.long	315                             ## 0x13b
	.long	425                             ## 0x1a9
	.long	497                             ## 0x1f1
	.long	401                             ## 0x191
	.long	400                             ## 0x190
	.long	436                             ## 0x1b4
	.long	422                             ## 0x1a6
	.long	474                             ## 0x1da
	.long	403                             ## 0x193
	.long	409                             ## 0x199
	.long	412                             ## 0x19c
	.long	430                             ## 0x1ae
	.long	481                             ## 0x1e1
	.long	463                             ## 0x1cf
	.long	4148                            ## 0x1034
	.long	499                             ## 0x1f3
	.long	413                             ## 0x19d
	.long	464                             ## 0x1d0
	.long	449                             ## 0x1c1
	.long	480                             ## 0x1e0
	.long	415                             ## 0x19f
	.long	525                             ## 0x20d
	.long	597                             ## 0x255
	.long	501                             ## 0x1f5
	.long	500                             ## 0x1f4
	.long	536                             ## 0x218
	.long	522                             ## 0x20a
	.long	574                             ## 0x23e
	.long	503                             ## 0x1f7
	.long	509                             ## 0x1fd
	.long	512                             ## 0x200
	.long	530                             ## 0x212
	.long	581                             ## 0x245
	.long	563                             ## 0x233
	.long	5148                            ## 0x141c
	.long	599                             ## 0x257
	.long	513                             ## 0x201
	.long	564                             ## 0x234
	.long	549                             ## 0x225
	.long	580                             ## 0x244
	.long	515                             ## 0x203
	.long	625                             ## 0x271
	.long	697                             ## 0x2b9
	.long	601                             ## 0x259
	.long	600                             ## 0x258
	.long	636                             ## 0x27c
	.long	622                             ## 0x26e
	.long	674                             ## 0x2a2
	.long	603                             ## 0x25b

	.globl	_elements2                      ## @elements2
	.p2align	4
_elements2:
	.long	25                              ## 0x19
	.long	97                              ## 0x61
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.long	36                              ## 0x24
	.long	22                              ## 0x16
	.long	74                              ## 0x4a
	.long	3                               ## 0x3
	.long	99                              ## 0x63
	.long	12                              ## 0xc
	.long	30                              ## 0x1e
	.long	81                              ## 0x51
	.long	63                              ## 0x3f
	.long	148                             ## 0x94
	.long	99                              ## 0x63
	.long	13                              ## 0xd
	.long	64                              ## 0x40
	.long	49                              ## 0x31
	.long	99                              ## 0x63
	.long	15                              ## 0xf
	.long	125                             ## 0x7d
	.long	197                             ## 0xc5
	.long	101                             ## 0x65
	.long	100                             ## 0x64
	.long	136                             ## 0x88
	.long	122                             ## 0x7a
	.long	174                             ## 0xae
	.long	103                             ## 0x67
	.long	199                             ## 0xc7
	.long	112                             ## 0x70
	.long	130                             ## 0x82
	.long	181                             ## 0xb5
	.long	163                             ## 0xa3
	.long	1148                            ## 0x47c
	.long	119                             ## 0x77
	.long	113                             ## 0x71
	.long	164                             ## 0xa4
	.long	149                             ## 0x95
	.long	199                             ## 0xc7
	.long	115                             ## 0x73
	.long	225                             ## 0xe1
	.long	297                             ## 0x129
	.long	201                             ## 0xc9
	.long	200                             ## 0xc8
	.long	236                             ## 0xec
	.long	222                             ## 0xde
	.long	274                             ## 0x112
	.long	203                             ## 0xcb
	.long	299                             ## 0x12b
	.long	212                             ## 0xd4
	.long	230                             ## 0xe6
	.long	281                             ## 0x119
	.long	263                             ## 0x107
	.long	2148                            ## 0x864
	.long	229                             ## 0xe5
	.long	213                             ## 0xd5
	.long	264                             ## 0x108
	.long	249                             ## 0xf9
	.long	299                             ## 0x12b
	.long	215                             ## 0xd7
	.long	325                             ## 0x145
	.long	397                             ## 0x18d
	.long	301                             ## 0x12d
	.long	300                             ## 0x12c
	.long	336                             ## 0x150
	.long	322                             ## 0x142
	.long	374                             ## 0x176
	.long	303                             ## 0x12f
	.long	399                             ## 0x18f
	.long	312                             ## 0x138
	.long	330                             ## 0x14a
	.long	381                             ## 0x17d
	.long	363                             ## 0x16b
	.long	3148                            ## 0xc4c
	.long	339                             ## 0x153
	.long	313                             ## 0x139
	.long	364                             ## 0x16c
	.long	349                             ## 0x15d
	.long	399                             ## 0x18f
	.long	315                             ## 0x13b
	.long	425                             ## 0x1a9
	.long	497                             ## 0x1f1
	.long	401                             ## 0x191
	.long	400                             ## 0x190
	.long	436                             ## 0x1b4
	.long	422                             ## 0x1a6
	.long	474                             ## 0x1da
	.long	403                             ## 0x193
	.long	409                             ## 0x199
	.long	412                             ## 0x19c
	.long	430                             ## 0x1ae
	.long	481                             ## 0x1e1
	.long	463                             ## 0x1cf
	.long	4148                            ## 0x1034
	.long	499                             ## 0x1f3
	.long	413                             ## 0x19d
	.long	464                             ## 0x1d0
	.long	449                             ## 0x1c1
	.long	480                             ## 0x1e0
	.long	415                             ## 0x19f
	.long	525                             ## 0x20d
	.long	597                             ## 0x255
	.long	501                             ## 0x1f5
	.long	500                             ## 0x1f4
	.long	536                             ## 0x218
	.long	522                             ## 0x20a
	.long	574                             ## 0x23e
	.long	503                             ## 0x1f7
	.long	509                             ## 0x1fd
	.long	512                             ## 0x200
	.long	530                             ## 0x212
	.long	581                             ## 0x245
	.long	563                             ## 0x233
	.long	5148                            ## 0x141c
	.long	599                             ## 0x257
	.long	513                             ## 0x201
	.long	564                             ## 0x234
	.long	549                             ## 0x225
	.long	580                             ## 0x244
	.long	515                             ## 0x203
	.long	625                             ## 0x271
	.long	697                             ## 0x2b9
	.long	601                             ## 0x259
	.long	600                             ## 0x258
	.long	636                             ## 0x27c
	.long	622                             ## 0x26e
	.long	674                             ## 0x2a2
	.long	603                             ## 0x25b

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The elements of `elements1' are distinct\n"

L_.str.1:                               ## @.str.1
	.asciz	"The elements of `elements1' are not distinct (e.g., %d is duplicated)\n"

L_.str.2:                               ## @.str.2
	.asciz	"The elements of `elements2' are distinct\n"

L_.str.3:                               ## @.str.3
	.asciz	"The elements of `elements2' are not distinct (e.g., %d is duplicated)\n"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## @.memset_pattern
L_.memset_pattern:
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff

.subsections_via_symbols
