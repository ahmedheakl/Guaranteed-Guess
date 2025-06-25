	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	pushq	%r14
	pushq	%rbx
	subq	$1552, %rsp                     ## imm = 0x610
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$2147483647, (%rsi)             ## imm = 0x7FFFFFFF
	leaq	L_.memset_pattern(%rip), %rsi
	leaq	-1568(%rbp), %rdi
	movl	$1536, %edx                     ## imm = 0x600
	callq	_memset_pattern16
	movl	(%r14), %r8d
	movl	%r8d, -1568(%rbp)
	xorl	%edx, %edx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$2147483647, %r8d               ## imm = 0x7FFFFFFF
	jne	LBB0_3
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	leaq	1(%rax), %rsi
	cmpq	$128, %rsi
	je	LBB0_12
## %bb.1:                               ##   in Loop: Header=BB0_11 Depth=1
	cmpq	$127, %rax
	setae	%dl
	movl	-1568(%rbp), %r8d
	movq	%rsi, %rax
	cmpl	$2147483647, %r8d               ## imm = 0x7FFFFFFF
	je	LBB0_11
LBB0_3:
	movl	-1564(%rbp), %r10d
	movl	-1560(%rbp), %r9d
	movl	(%r14,%rax,4), %esi
	xorl	%edi, %edi
	jmp	LBB0_4
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_4 Depth=1
	cmpl	$2147483647, %r9d               ## imm = 0x7FFFFFFF
	je	LBB0_6
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	%r9d, %edi
	movslq	%r9d, %r8
	leaq	(%r8,%r8,2), %r10
	movl	-1560(%rbp,%r10,4), %r9d
	movl	-1568(%rbp,%r10,4), %r8d
	movl	-1564(%rbp,%r10,4), %r10d
	cmpl	$2147483647, %r8d               ## imm = 0x7FFFFFFF
	je	LBB0_11
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%r8d, %esi
	jg	LBB0_5
## %bb.7:                               ##   in Loop: Header=BB0_4 Depth=1
	jge	LBB0_15
## %bb.8:                               ##   in Loop: Header=BB0_4 Depth=1
	movl	%r10d, %r9d
	cmpl	$2147483647, %r10d              ## imm = 0x7FFFFFFF
	jne	LBB0_10
## %bb.9:
	incl	%ecx
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%ecx, -1564(%rbp,%rdx,4)
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%esi, -1568(%rbp,%rdx,4)
	jmp	LBB0_11
	.p2align	4, 0x90
LBB0_6:
	incl	%ecx
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx,2), %r8
	movl	%esi, -1568(%rbp,%r8,4)
	movslq	%edi, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%edx, -1560(%rbp,%rsi,4)
	jmp	LBB0_11
LBB0_15:
	movl	%esi, (%rbx)
	jmp	LBB0_13
LBB0_12:
	movb	$1, %dl
LBB0_13:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB0_16
## %bb.14:
	movzbl	%dl, %eax
	andl	$1, %eax
	addq	$1552, %rsp                     ## imm = 0x610
	popq	%rbx
	popq	%r14
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	_elements1(%rip), %rdi
	leaq	-24(%rbp), %rsi
	callq	_isDistinct
	movl	%eax, %r14d
	leaq	_elements2(%rip), %rdi
	leaq	-20(%rbp), %rsi
	callq	_isDistinct
	movl	%eax, %ebx
	testl	%r14d, %r14d
	je	LBB1_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%ebx, %ebx
	je	LBB1_5
LBB1_4:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB1_6
LBB1_2:
	movl	-24(%rbp), %esi
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	testl	%ebx, %ebx
	jne	LBB1_4
LBB1_5:
	movl	-20(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
LBB1_6:
	callq	_libmin_success
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_elements1                      ## @elements1
	.p2align	4, 0x0
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
	.p2align	4, 0x0
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
	.p2align	4, 0x0                          ## @.memset_pattern
L_.memset_pattern:
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff
	.long	2147483647                      ## 0x7fffffff

.subsections_via_symbols
