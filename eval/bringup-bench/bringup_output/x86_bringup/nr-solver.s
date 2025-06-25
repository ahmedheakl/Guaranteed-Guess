	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_f                              ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_sqrt_value@GOTPCREL(%rip), %rax
	mulsd	%xmm0, %xmm0
	subsd	(%rax), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_df                             ## -- Begin function df
	.p2align	4, 0x90
_df:                                    ## @df
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addsd	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function myfabs
LCPI2_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_myfabs
	.p2align	4, 0x90
_myfabs:                                ## @myfabs
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movapd	LCPI2_0(%rip), %xmm1            ## xmm1 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm0, %xmm1
	maxsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function rn_solver
LCPI3_0:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI3_1:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_rn_solver
	.p2align	4, 0x90
_rn_solver:                             ## @rn_solver
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
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movl	$0, (%rdi)
	testl	%esi, %esi
	je	LBB3_1
## %bb.2:
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	callq	*%r14
	movapd	%xmm0, %xmm1
	xorpd	LCPI3_1(%rip), %xmm1
	maxsd	%xmm0, %xmm1
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	setae	%al
	movl	%eax, (%r12)
	jae	LBB3_4
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	*%r14
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	*%rbx
	movsd	-56(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	decl	%r15d
	jne	LBB3_3
	jmp	LBB3_6
LBB3_1:
	movsd	LCPI3_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	jmp	LBB3_6
LBB3_4:
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
LBB3_6:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function main
LCPI4_0:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI4_1:
	.quad	0x3ff0000000000000              ## double 1
LCPI4_2:
	.quad	0x3ee4f8b588e368f1              ## double 1.0000000000000001E-5
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
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%r14d, %r14d
	leaq	_testdata(%rip), %r15
	movq	_sqrt_value@GOTPCREL(%rip), %r12
	movapd	LCPI4_0(%rip), %xmm5            ## xmm5 = [-0.0E+0,-0.0E+0]
	movsd	LCPI4_2(%rip), %xmm6            ## xmm6 = mem[0],zero
	leaq	L_.str(%rip), %rbx
	jmp	LBB4_1
	.p2align	4, 0x90
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %rdi
	movb	$2, %al
	callq	_libmin_printf
	incq	%r14
	cmpq	$50, %r14
	movapd	LCPI4_0(%rip), %xmm5            ## xmm5 = [-0.0E+0,-0.0E+0]
	movsd	LCPI4_2(%rip), %xmm6            ## xmm6 = mem[0],zero
	je	LBB4_7
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_2 Depth 2
	movsd	(%r15,%r14,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, (%r12)
	movapd	%xmm0, %xmm2
	xorpd	%xmm5, %xmm2
	movl	$20, %eax
	movsd	LCPI4_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB4_2:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	xorpd	%xmm5, %xmm4
	maxsd	%xmm3, %xmm4
	movl	$116, %esi
	ucomisd	%xmm4, %xmm6
	jae	LBB4_6
## %bb.3:                               ##   in Loop: Header=BB4_2 Depth=2
	movapd	%xmm1, %xmm4
	addsd	%xmm1, %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	movapd	%xmm1, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	xorpd	%xmm5, %xmm4
	maxsd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm6
	jae	LBB4_6
## %bb.4:                               ##   in Loop: Header=BB4_2 Depth=2
	movapd	%xmm1, %xmm4
	addsd	%xmm1, %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	addl	$-2, %eax
	jne	LBB4_2
## %bb.5:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	$102, %esi
	jmp	LBB4_6
LBB4_7:
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_sqrt_value,8,3                 ## @sqrt_value
	.section	__DATA,__data
	.globl	_testdata                       ## @testdata
	.p2align	4, 0x0
_testdata:
	.quad	0x411829430c7f6591              ## double 395856.76220473001
	.quad	0x41107f8b3914ad61              ## double 270306.80574293999
	.quad	0x412c74d77f262ae2              ## double 932459.74833806999
	.quad	0x412ae2fda394ffd7              ## double 881022.81949615001
	.quad	0x40f1349074858f07              ## double 70473.028447684002
	.quad	0x4121c3af9de87aa8              ## double 582103.80841429997
	.quad	0x40e2290436dc794e              ## double 37192.131696926997
	.quad	0x41228d853fda1a12              ## double 607938.62471085996
	.quad	0x411415e78f97c2d5              ## double 329081.89022736001
	.quad	0x40f32c3099a76ca7              ## double 78531.037513183997
	.quad	0x4113d744cf55f077              ## double 325073.20247626997
	.quad	0x4123cbe80613bca0              ## double 648692.01186932996
	.quad	0x4126bc2c40741ddf              ## double 744982.12588589999
	.quad	0x410cdcb9d9b63b3b              ## double 236439.23130461
	.quad	0x40bce5bd8fa19e20              ## double 7397.7404728900001
	.quad	0x412db34451315fc9              ## double 973218.15857981995
	.quad	0x4129d565510a6965              ## double 846514.65828255995
	.quad	0x41288d61b99a684c              ## double 804528.86250616005
	.quad	0x41288de1e943e1ac              ## double 804592.95559601998
	.quad	0x411359290a64005b              ## double 317002.26014710002
	.quad	0x412073f069662a81              ## double 539128.20585758996
	.quad	0x41125c162cfb3312              ## double 300805.54392700002
	.quad	0x4128ae2d0005f762              ## double 808726.50004551955
	.quad	0x411854bf2ed897b1              ## double 398639.79574810999
	.quad	0x4126cae695658a73              ## double 746867.29179031996
	.quad	0x41262f952b24795c              ## double 726986.58426264999
	.quad	0x40f5f361b9f06626              ## double 89910.107895277994
	.quad	0x41029c032ba8f480              ## double 152448.39631834999
	.quad	0x412da23386c51015              ## double 971033.76322222
	.quad	0x4129edb4e4d925a1              ## double 849626.44696920004
	.quad	0x412973dcd982fa1b              ## double 834030.42482740001
	.quad	0x410e2df8c19fa521              ## double 247231.09454277999
	.quad	0x412a5747b518ceae              ## double 863139.85370489
	.quad	0x411f91ef17668068              ## double 517243.77285195002
	.quad	0x41285ead76a064e5              ## double 798550.73169246002
	.quad	0x4115ae02d196ebbf              ## double 355200.70467727998
	.quad	0x40c42d862efd8a6b              ## double 10331.048309033
	.quad	0x4112aa305d4391d0              ## double 305804.09107806999
	.quad	0x412d3d53aae8aa23              ## double 958121.83380634
	.quad	0x40f8939066f74ad0              ## double 100665.02513818
	.quad	0x41207ddc3531fbd1              ## double 540398.10389697005
	.quad	0x41161065c595a0e7              ## double 361497.44295360002
	.quad	0x41216f740a967b82              ## double 571322.02067934
	.quad	0x410acc67895460d5              ## double 219532.94205546999
	.quad	0x40a9e7b8fe5c4d19              ## double 3315.8613156169999
	.quad	0x41b14fad5032e5c9              ## double 290434384.19881874
	.quad	0x411d4925e6ddb1a1              ## double 479817.47545506997
	.quad	0x4112c2153209c221              ## double 307333.29886535002
	.quad	0x40f1875d98b71f4d              ## double 71797.849784014004
	.quad	0x412a8d81b24284e0              ## double 870080.84816375002

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"sqrt(%lf) == %lf (converged:%c)\n"

.subsections_via_symbols
