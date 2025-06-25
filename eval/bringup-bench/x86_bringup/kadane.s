	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_kadane                         ## -- Begin function kadane
	.p2align	4, 0x90
_kadane:                                ## @kadane
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-1, (%rdx)
	testl	%esi, %esi
	jle	LBB0_1
## %bb.2:
	movl	%esi, %r8d
	cmpl	$1, %esi
	jne	LBB0_9
## %bb.3:
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
LBB0_4:
	testb	$1, %r8b
	je	LBB0_8
## %bb.5:
	addl	(%rdi,%r10,4), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	cmovgl	%ecx, %edi
	cmpl	%edi, %eax
	jae	LBB0_7
## %bb.6:
	movl	%r10d, (%rdx)
LBB0_7:
	cmpl	%edi, %eax
	cmovgl	%eax, %edi
	movl	%edi, %eax
LBB0_8:
	popq	%rbp
	retq
LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB0_9:
	movl	%r8d, %r9d
	andl	$-2, %r9d
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_18:                                ##   in Loop: Header=BB0_10 Depth=1
	cmpl	%ecx, %eax
	cmovlel	%ecx, %eax
	addq	$2, %r10
	cmpq	%r10, %r9
	je	LBB0_4
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	addl	(%rdi,%r10,4), %ecx
	testl	%ecx, %ecx
	jg	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=1
	xorl	%ecx, %ecx
LBB0_12:                                ##   in Loop: Header=BB0_10 Depth=1
	cmpl	%ecx, %eax
	jae	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_10 Depth=1
	movl	%r10d, (%rdx)
LBB0_14:                                ##   in Loop: Header=BB0_10 Depth=1
	cmpl	%ecx, %eax
	cmovlel	%ecx, %eax
	addl	4(%rdi,%r10,4), %ecx
	testl	%ecx, %ecx
	jg	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_10 Depth=1
	xorl	%ecx, %ecx
LBB0_16:                                ##   in Loop: Header=BB0_10 Depth=1
	cmpl	%ecx, %eax
	jae	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_10 Depth=1
	leal	1(%r10), %esi
	movl	%esi, (%rdx)
	jmp	LBB0_18
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
	pushq	%rax
	.cfi_offset %rbx, -24
	leaq	L_.str(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$360, %esi                      ## imm = 0x168
	xorl	%eax, %eax
	callq	_libmin_printf
	movl	$-1, %edx
	leaq	l___const.main.arr(%rip), %rax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	leal	1(%rbx), %edi
	cmpl	%ecx, %esi
	cmovbl	%edi, %edx
	cmovlel	%ecx, %esi
	addq	$2, %rbx
	cmpq	$360, %rbx                      ## imm = 0x168
	je	LBB1_6
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	addl	(%rax,%rbx,4), %ecx
	testl	%ecx, %ecx
	jg	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	cmpl	%ecx, %esi
	cmovbl	%ebx, %edx
	cmovlel	%ecx, %esi
	addl	4(%rax,%rbx,4), %ecx
	testl	%ecx, %ecx
	jg	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	jmp	LBB1_5
LBB1_6:
	leaq	L_.str.1(%rip), %rdi
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
	.section	__TEXT,__const
	.p2align	4                               ## @__const.main.arr
l___const.main.arr:
	.long	8155                            ## 0x1fdb
	.long	17168                           ## 0x4310
	.long	11554                           ## 0x2d22
	.long	4294952890                      ## 0xffffc7ba
	.long	13854                           ## 0x361e
	.long	20973                           ## 0x51ed
	.long	4294940825                      ## 0xffff9899
	.long	4294956051                      ## 0xffffd413
	.long	25508                           ## 0x63a4
	.long	4294942748                      ## 0xffffa01c
	.long	4294965202                      ## 0xfffff7d2
	.long	4294950364                      ## 0xffffbddc
	.long	4294944216                      ## 0xffffa5d8
	.long	29777                           ## 0x7451
	.long	4294939649                      ## 0xffff9401
	.long	4294961369                      ## 0xffffe8d9
	.long	20197                           ## 0x4ee5
	.long	4294950791                      ## 0xffffbf87
	.long	4294938352                      ## 0xffff8ef0
	.long	2518                            ## 0x9d6
	.long	22405                           ## 0x5785
	.long	15304                           ## 0x3bc8
	.long	4294948097                      ## 0xffffb501
	.long	5439                            ## 0x153f
	.long	4971                            ## 0x136b
	.long	24179                           ## 0x5e73
	.long	1119                            ## 0x45f
	.long	16764                           ## 0x417c
	.long	4294942770                      ## 0xffffa032
	.long	4294966323                      ## 0xfffffc33
	.long	4294957711                      ## 0xffffda8f
	.long	15066                           ## 0x3ada
	.long	12069                           ## 0x2f25
	.long	4294945306                      ## 0xffffaa1a
	.long	4294947588                      ## 0xffffb304
	.long	4294950693                      ## 0xffffbf25
	.long	24065                           ## 0x5e01
	.long	15869                           ## 0x3dfd
	.long	4294961088                      ## 0xffffe7c0
	.long	22922                           ## 0x598a
	.long	2901                            ## 0xb55
	.long	24070                           ## 0x5e06
	.long	4294951043                      ## 0xffffc083
	.long	15350                           ## 0x3bf6
	.long	4294939345                      ## 0xffff92d1
	.long	4294966479                      ## 0xfffffccf
	.long	4294956933                      ## 0xffffd785
	.long	4294963111                      ## 0xffffefa7
	.long	4294949461                      ## 0xffffba55
	.long	4294945803                      ## 0xffffac0b
	.long	4294942015                      ## 0xffff9d3f
	.long	4294962454                      ## 0xffffed16
	.long	4294965871                      ## 0xfffffa6f
	.long	6710                            ## 0x1a36
	.long	4294959999                      ## 0xffffe37f
	.long	4294950177                      ## 0xffffbd21
	.long	4294956888                      ## 0xffffd758
	.long	18129                           ## 0x46d1
	.long	4294939083                      ## 0xffff91cb
	.long	4294955135                      ## 0xffffd07f
	.long	13068                           ## 0x330c
	.long	4294962949                      ## 0xffffef05
	.long	27196                           ## 0x6a3c
	.long	4294957644                      ## 0xffffda4c
	.long	4294947873                      ## 0xffffb421
	.long	6057                            ## 0x17a9
	.long	4294945149                      ## 0xffffa97d
	.long	4294956695                      ## 0xffffd697
	.long	4294950166                      ## 0xffffbd16
	.long	4294953457                      ## 0xffffc9f1
	.long	4925                            ## 0x133d
	.long	27786                           ## 0x6c8a
	.long	4294957562                      ## 0xffffd9fa
	.long	4294941425                      ## 0xffff9af1
	.long	4294964520                      ## 0xfffff528
	.long	16462                           ## 0x404e
	.long	13778                           ## 0x35d2
	.long	11363                           ## 0x2c63
	.long	4294960634                      ## 0xffffe5fa
	.long	4294942400                      ## 0xffff9ec0
	.long	19904                           ## 0x4dc0
	.long	29515                           ## 0x734b
	.long	9625                            ## 0x2599
	.long	18193                           ## 0x4711
	.long	4294950022                      ## 0xffffbc86
	.long	4294964050                      ## 0xfffff352
	.long	27168                           ## 0x6a20
	.long	508                             ## 0x1fc
	.long	4294967215                      ## 0xffffffaf
	.long	15064                           ## 0x3ad8
	.long	19885                           ## 0x4dad
	.long	18619                           ## 0x48bb
	.long	4294961826                      ## 0xffffeaa2
	.long	23422                           ## 0x5b7e
	.long	4294956516                      ## 0xffffd5e4
	.long	4294945779                      ## 0xffffabf3
	.long	26606                           ## 0x67ee
	.long	4294946463                      ## 0xffffae9f
	.long	4294939353                      ## 0xffff92d9
	.long	4294956073                      ## 0xffffd429
	.long	4294957159                      ## 0xffffd867
	.long	4294937940                      ## 0xffff8d54
	.long	2701                            ## 0xa8d
	.long	4294956522                      ## 0xffffd5ea
	.long	13286                           ## 0x33e6
	.long	4294951433                      ## 0xffffc209
	.long	24259                           ## 0x5ec3
	.long	4294963862                      ## 0xfffff296
	.long	4294950934                      ## 0xffffc016
	.long	4294962852                      ## 0xffffeea4
	.long	4294947114                      ## 0xffffb12a
	.long	7785                            ## 0x1e69
	.long	23559                           ## 0x5c07
	.long	4294950814                      ## 0xffffbf9e
	.long	4294944150                      ## 0xffffa596
	.long	7477                            ## 0x1d35
	.long	25038                           ## 0x61ce
	.long	4294947990                      ## 0xffffb496
	.long	4294940790                      ## 0xffff9876
	.long	29314                           ## 0x7282
	.long	2174                            ## 0x87e
	.long	7862                            ## 0x1eb6
	.long	4294938030                      ## 0xffff8dae
	.long	4294966060                      ## 0xfffffb2c
	.long	4294939109                      ## 0xffff91e5
	.long	27877                           ## 0x6ce5
	.long	4294959327                      ## 0xffffe0df
	.long	10314                           ## 0x284a
	.long	4294962154                      ## 0xffffebea
	.long	5466                            ## 0x155a
	.long	28920                           ## 0x70f8
	.long	29191                           ## 0x7207
	.long	4294940235                      ## 0xffff964b
	.long	27601                           ## 0x6bd1
	.long	7428                            ## 0x1d04
	.long	12574                           ## 0x311e
	.long	4294961520                      ## 0xffffe970
	.long	27915                           ## 0x6d0b
	.long	4294953897                      ## 0xffffcba9
	.long	4294955956                      ## 0xffffd3b4
	.long	3307                            ## 0xceb
	.long	7043                            ## 0x1b83
	.long	4294960369                      ## 0xffffe4f1
	.long	16463                           ## 0x404f
	.long	4294960761                      ## 0xffffe679
	.long	26316                           ## 0x66cc
	.long	4294956586                      ## 0xffffd62a
	.long	16103                           ## 0x3ee7
	.long	4294961718                      ## 0xffffea36
	.long	26102                           ## 0x65f6
	.long	4294944803                      ## 0xffffa823
	.long	23027                           ## 0x59f3
	.long	12203                           ## 0x2fab
	.long	3251                            ## 0xcb3
	.long	5281                            ## 0x14a1
	.long	4294950173                      ## 0xffffbd1d
	.long	4294957377                      ## 0xffffd941
	.long	18986                           ## 0x4a2a
	.long	4294957966                      ## 0xffffdb8e
	.long	4294967104                      ## 0xffffff40
	.long	16263                           ## 0x3f87
	.long	4294948007                      ## 0xffffb4a7
	.long	4294944631                      ## 0xffffa777
	.long	4294964303                      ## 0xfffff44f
	.long	27926                           ## 0x6d16
	.long	4294964276                      ## 0xfffff434
	.long	4294957246                      ## 0xffffd8be
	.long	4294963204                      ## 0xfffff004
	.long	17416                           ## 0x4408
	.long	26503                           ## 0x6787
	.long	4294951059                      ## 0xffffc093
	.long	4294941391                      ## 0xffff9acf
	.long	4294947573                      ## 0xffffb2f5
	.long	4294962241                      ## 0xffffec41
	.long	2901                            ## 0xb55
	.long	24070                           ## 0x5e06
	.long	4294951043                      ## 0xffffc083
	.long	15350                           ## 0x3bf6
	.long	4294939345                      ## 0xffff92d1
	.long	4294966479                      ## 0xfffffccf
	.long	4294956933                      ## 0xffffd785
	.long	4294963111                      ## 0xffffefa7
	.long	4294949461                      ## 0xffffba55
	.long	4294945803                      ## 0xffffac0b
	.long	4294942015                      ## 0xffff9d3f
	.long	4294962454                      ## 0xffffed16
	.long	4294965871                      ## 0xfffffa6f
	.long	27601                           ## 0x6bd1
	.long	7428                            ## 0x1d04
	.long	12574                           ## 0x311e
	.long	4294961520                      ## 0xffffe970
	.long	27915                           ## 0x6d0b
	.long	4294953897                      ## 0xffffcba9
	.long	4294955956                      ## 0xffffd3b4
	.long	3307                            ## 0xceb
	.long	7043                            ## 0x1b83
	.long	4294960369                      ## 0xffffe4f1
	.long	16463                           ## 0x404f
	.long	4294960761                      ## 0xffffe679
	.long	26316                           ## 0x66cc
	.long	4294956586                      ## 0xffffd62a
	.long	29777                           ## 0x7451
	.long	4294939649                      ## 0xffff9401
	.long	4294961369                      ## 0xffffe8d9
	.long	20197                           ## 0x4ee5
	.long	4294950791                      ## 0xffffbf87
	.long	4294938352                      ## 0xffff8ef0
	.long	2518                            ## 0x9d6
	.long	22405                           ## 0x5785
	.long	15304                           ## 0x3bc8
	.long	4294948097                      ## 0xffffb501
	.long	5439                            ## 0x153f
	.long	4971                            ## 0x136b
	.long	24179                           ## 0x5e73
	.long	1119                            ## 0x45f
	.long	8155                            ## 0x1fdb
	.long	17168                           ## 0x4310
	.long	11554                           ## 0x2d22
	.long	4294952890                      ## 0xffffc7ba
	.long	13854                           ## 0x361e
	.long	20973                           ## 0x51ed
	.long	4294940825                      ## 0xffff9899
	.long	4294956051                      ## 0xffffd413
	.long	25508                           ## 0x63a4
	.long	4294942748                      ## 0xffffa01c
	.long	4294965202                      ## 0xfffff7d2
	.long	4294950364                      ## 0xffffbddc
	.long	4294944216                      ## 0xffffa5d8
	.long	4294941800                      ## 0xffff9c68
	.long	4294940132                      ## 0xffff95e4
	.long	4294957451                      ## 0xffffd98b
	.long	25985                           ## 0x6581
	.long	21965                           ## 0x55cd
	.long	26979                           ## 0x6963
	.long	4294939001                      ## 0xffff9179
	.long	4294962722                      ## 0xffffee22
	.long	4294939832                      ## 0xffff94b8
	.long	4294941133                      ## 0xffff99cd
	.long	11498                           ## 0x2cea
	.long	4294960994                      ## 0xffffe762
	.long	29123                           ## 0x71c3
	.long	4294962584                      ## 0xffffed98
	.long	4294942957                      ## 0xffffa0ed
	.long	4294939651                      ## 0xffff9403
	.long	23484                           ## 0x5bbc
	.long	12151                           ## 0x2f77
	.long	14797                           ## 0x39cd
	.long	4294961962                      ## 0xffffeb2a
	.long	4294951443                      ## 0xffffc213
	.long	9431                            ## 0x24d7
	.long	7116                            ## 0x1bcc
	.long	27195                           ## 0x6a3b
	.long	4294966221                      ## 0xfffffbcd
	.long	17134                           ## 0x42ee
	.long	21955                           ## 0x55c3
	.long	4294963551                      ## 0xfffff15f
	.long	4294962579                      ## 0xffffed93
	.long	11285                           ## 0x2c15
	.long	4294958032                      ## 0xffffdbd0
	.long	4294946896                      ## 0xffffb050
	.long	15249                           ## 0x3b91
	.long	4294948692                      ## 0xffffb754
	.long	390                             ## 0x186
	.long	25377                           ## 0x6321
	.long	4294959801                      ## 0xffffe2b9
	.long	4294942602                      ## 0xffff9f8a
	.long	25767                           ## 0x64a7
	.long	17461                           ## 0x4435
	.long	4294945501                      ## 0xffffaadd
	.long	1815                            ## 0x717
	.long	4294961739                      ## 0xffffea4b
	.long	22489                           ## 0x57d9
	.long	11085                           ## 0x2b4d
	.long	4294961164                      ## 0xffffe80c
	.long	4294964783                      ## 0xfffff62f
	.long	131                             ## 0x83
	.long	18955                           ## 0x4a0b
	.long	4294938778                      ## 0xffff909a
	.long	4294952814                      ## 0xffffc76e
	.long	15781                           ## 0x3da5
	.long	21178                           ## 0x52ba
	.long	5485                            ## 0x156d
	.long	4294955109                      ## 0xffffd065
	.long	4294943292                      ## 0xffffa23c
	.long	12344                           ## 0x3038
	.long	20129                           ## 0x4ea1
	.long	4294941251                      ## 0xffff9a43
	.long	4294939160                      ## 0xffff9218
	.long	4294940861                      ## 0xffff98bd
	.long	23729                           ## 0x5cb1
	.long	4294954912                      ## 0xffffcfa0
	.long	3157                            ## 0xc55
	.long	3121                            ## 0xc31
	.long	4294948572                      ## 0xffffb6dc
	.long	4294950103                      ## 0xffffbcd7
	.long	22853                           ## 0x5945
	.long	4294938071                      ## 0xffff8dd7
	.long	29921                           ## 0x74e1
	.long	4294947762                      ## 0xffffb3b2
	.long	4294939248                      ## 0xffff9270
	.long	4294958111                      ## 0xffffdc1f
	.long	4294937592                      ## 0xffff8bf8
	.long	4294938036                      ## 0xffff8db4
	.long	4294964762                      ## 0xfffff61a
	.long	21587                           ## 0x5453
	.long	4770                            ## 0x12a2
	.long	4880                            ## 0x1310
	.long	4294958027                      ## 0xffffdbcb
	.long	9197                            ## 0x23ed
	.long	25075                           ## 0x61f3
	.long	4294964213                      ## 0xfffff3f5
	.long	4294962501                      ## 0xffffed45
	.long	4294938682                      ## 0xffff903a
	.long	4294958502                      ## 0xffffdda6
	.long	20376                           ## 0x4f98
	.long	4294954789                      ## 0xffffcf25
	.long	4294952669                      ## 0xffffc6dd
	.long	8109                            ## 0x1fad
	.long	28004                           ## 0x6d64
	.long	4294938168                      ## 0xffff8e38
	.long	4294957101                      ## 0xffffd82d
	.long	16767                           ## 0x417f
	.long	4294960444                      ## 0xffffe53c
	.long	4294945991                      ## 0xffffacc7
	.long	28599                           ## 0x6fb7
	.long	4294943999                      ## 0xffffa4ff
	.long	4294950836                      ## 0xffffbfb4
	.long	18601                           ## 0x48a9
	.long	5359                            ## 0x14ef
	.long	4294960279                      ## 0xffffe497
	.long	4294943046                      ## 0xffffa146
	.long	4294943740                      ## 0xffffa3fc
	.long	16491                           ## 0x406b
	.long	4294943440                      ## 0xffffa2d0
	.long	4294950416                      ## 0xffffbe10
	.long	19593                           ## 0x4c89
	.long	6171                            ## 0x181b
	.long	12602                           ## 0x313a
	.long	4294937391                      ## 0xffff8b2f
	.long	4294939729                      ## 0xffff9451
	.long	18969                           ## 0x4a19
	.long	4294954714                      ## 0xffffceda
	.long	18015                           ## 0x465f
	.long	7774                            ## 0x1e5e
	.long	23534                           ## 0x5bee
	.long	4294940477                      ## 0xffff973d
	.long	4294958761                      ## 0xffffdea9
	.long	13345                           ## 0x3421
	.long	9279                            ## 0x243f
	.long	4294946538                      ## 0xffffaeea
	.long	4294965684                      ## 0xfffff9b4
	.long	13739                           ## 0x35ab
	.long	4294937532                      ## 0xffff8bbc
	.long	6005                            ## 0x1775
	.long	2037                            ## 0x7f5
	.long	14339                           ## 0x3803
	.long	4294943874                      ## 0xffffa482
	.long	4294967285                      ## 0xfffffff5
	.long	4294950691                      ## 0xffffbf23
	.long	4294955595                      ## 0xffffd24b

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Array size= %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"The maximum sum of a contiguous subarray is %d (ending at index %d)\n"

.subsections_via_symbols
