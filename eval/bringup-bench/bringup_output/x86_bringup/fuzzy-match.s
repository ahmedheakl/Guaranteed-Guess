	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fuzzy_match                    ## -- Begin function fuzzy_match
	.p2align	4, 0x90
_fuzzy_match:                           ## @fuzzy_match
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	_libmin_strlen
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_libmin_strlen
	cmpb	$0, (%r14)
	je	LBB0_1
## %bb.2:
	movl	$-2147483648, %ecx              ## imm = 0x80000000
	cmpq	%r15, %rax
	ja	LBB0_3
## %bb.4:
	subl	%r15d, %eax
	addl	$100, %eax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movl	$1, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fuzzy_match_recurse            ## TAILCALL
LBB0_1:
	movl	$100, %ecx
LBB0_3:
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function fuzzy_match_recurse
_fuzzy_match_recurse:                   ## @fuzzy_match_recurse
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
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	LBB1_23
## %bb.1:
	movl	%ecx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	%edx, -48(%rbp)                 ## 4-byte Spill
	movb	%al, -42(%rbp)
	movb	$0, -41(%rbp)
	leaq	-42(%rbp), %rsi
	movq	%r15, %rdi
	callq	_libmin_strcasestr
	testq	%rax, %rax
	je	LBB1_22
## %bb.2:
	movq	%rax, %r13
	incq	%r12
	movl	$-2147483648, %ebx              ## imm = 0x80000000
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_19:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	%r13, %rdi
	leaq	-42(%rbp), %rsi
	callq	_libmin_strcasestr
	movq	%rax, %r13
	testq	%rax, %rax
	je	LBB1_20
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	subl	%r15d, %eax
	movl	%eax, %ecx
	orl	%r14d, %ecx
	movl	$15, %edx
	je	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	xorl	%edx, %edx
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	testl	%r14d, %r14d
	je	LBB1_8
## %bb.6:                               ##   in Loop: Header=BB1_3 Depth=1
	testl	%eax, %eax
	jg	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_3 Depth=1
	leal	15(%rdx), %ecx
	testl	%eax, %eax
	cmovnel	%edx, %ecx
	jmp	LBB1_14
	.p2align	4, 0x90
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	__pctype@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movzbl	(%r13), %esi
	movzwl	(%rcx,%rsi,2), %esi
	testb	$1, %sil
	je	LBB1_11
## %bb.9:                               ##   in Loop: Header=BB1_3 Depth=1
	movzbl	-1(%r13), %edi
	testb	$2, (%rcx,%rdi,2)
	je	LBB1_11
## %bb.10:                              ##   in Loop: Header=BB1_3 Depth=1
	addl	$30, %edx
LBB1_11:                                ##   in Loop: Header=BB1_3 Depth=1
	testb	$7, %sil
	je	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_3 Depth=1
	movzbl	-1(%r13), %esi
	testb	$7, (%rcx,%rsi,2)
	leal	30(%rdx), %ecx
	cmovnel	%edx, %ecx
	movl	%ecx, %edx
LBB1_13:                                ##   in Loop: Header=BB1_3 Depth=1
	leal	15(%rdx), %ecx
	testl	%eax, %eax
	cmovnel	%edx, %ecx
	testl	%r14d, %r14d
	cmovel	%edx, %ecx
	je	LBB1_17
LBB1_14:                                ##   in Loop: Header=BB1_3 Depth=1
	leal	(%rax,%rax,4), %eax
	negl	%eax
	cmpl	$-14, %eax
	jge	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_3 Depth=1
	movl	$-15, %eax
LBB1_16:                                ##   in Loop: Header=BB1_3 Depth=1
	addl	%eax, %ecx
	movl	%ecx, %edx
LBB1_17:                                ##   in Loop: Header=BB1_3 Depth=1
	incq	%r13
	movq	%r12, %rdi
	movq	%r13, %rsi
                                        ## kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	callq	_fuzzy_match_recurse
	cmpl	%eax, %ebx
	jg	LBB1_19
## %bb.18:                              ##   in Loop: Header=BB1_3 Depth=1
	movl	%eax, %ebx
	jmp	LBB1_19
LBB1_20:
	cmpl	$-2147483648, %ebx              ## imm = 0x80000000
	jne	LBB1_21
LBB1_22:
	movl	$-2147483648, %edx              ## imm = 0x80000000
	jmp	LBB1_23
LBB1_21:
	movl	-48(%rbp), %edx                 ## 4-byte Reload
	addl	%ebx, %edx
LBB1_23:
	movl	%edx, %eax
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
	leaq	L_.str.155(%rip), %rdi
	leaq	L_.str.154(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_entries(%rip), %r15
	testq	%r15, %r15
	je	LBB2_6
## %bb.1:
	leaq	_entries+8(%rip), %r13
	leaq	L_.str.154(%rip), %rbx
	leaq	L_.str.156(%rip), %r14
	jmp	LBB2_2
	.p2align	4, 0x90
LBB2_5:                                 ##   in Loop: Header=BB2_2 Depth=1
	movq	(%r13), %r15
	addq	$8, %r13
	testq	%r15, %r15
	je	LBB2_6
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	ja	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	subl	%r12d, %eax
	addl	$100, %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_fuzzy_match_recurse
	cmpl	$-2147483648, %eax              ## imm = 0x80000000
	je	LBB2_5
## %bb.4:                               ##   in Loop: Header=BB2_2 Depth=1
	movq	-8(%r13), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_5
LBB2_6:
	leaq	L_.str.157(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.155(%rip), %rdi
	leaq	L_.str.158(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_entries(%rip), %r15
	testq	%r15, %r15
	je	LBB2_12
## %bb.7:
	leaq	_entries+8(%rip), %r13
	leaq	L_.str.158(%rip), %rbx
	leaq	L_.str.156(%rip), %r14
	jmp	LBB2_8
	.p2align	4, 0x90
LBB2_11:                                ##   in Loop: Header=BB2_8 Depth=1
	movq	(%r13), %r15
	addq	$8, %r13
	testq	%r15, %r15
	je	LBB2_12
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	ja	LBB2_11
## %bb.9:                               ##   in Loop: Header=BB2_8 Depth=1
	subl	%r12d, %eax
	addl	$100, %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_fuzzy_match_recurse
	cmpl	$-2147483648, %eax              ## imm = 0x80000000
	je	LBB2_11
## %bb.10:                              ##   in Loop: Header=BB2_8 Depth=1
	movq	-8(%r13), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_11
LBB2_12:
	leaq	L_.str.157(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
	leaq	L_.str.155(%rip), %rdi
	leaq	L_.str.159(%rip), %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	movq	_entries(%rip), %r15
	testq	%r15, %r15
	je	LBB2_18
## %bb.13:
	leaq	_entries+8(%rip), %r13
	leaq	L_.str.159(%rip), %rbx
	leaq	L_.str.156(%rip), %r14
	jmp	LBB2_14
	.p2align	4, 0x90
LBB2_17:                                ##   in Loop: Header=BB2_14 Depth=1
	movq	(%r13), %r15
	addq	$8, %r13
	testq	%r15, %r15
	je	LBB2_18
LBB2_14:                                ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_libmin_strlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	_libmin_strlen
	cmpq	%r12, %rax
	ja	LBB2_17
## %bb.15:                              ##   in Loop: Header=BB2_14 Depth=1
	subl	%r12d, %eax
	addl	$100, %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_fuzzy_match_recurse
	cmpl	$-2147483648, %eax              ## imm = 0x80000000
	je	LBB2_17
## %bb.16:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-8(%r13), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	jmp	LBB2_17
LBB2_18:
	leaq	L_.str.157(%rip), %rdi
	xorl	%eax, %eax
	callq	_libmin_printf
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Abomination"

L_.str.1:                               ## @.str.1
	.asciz	"Abusive Sergeant"

L_.str.2:                               ## @.str.2
	.asciz	"Acidic Swamp Ooze"

L_.str.3:                               ## @.str.3
	.asciz	"Acidmaw"

L_.str.4:                               ## @.str.4
	.asciz	"Acolyte of Pain"

L_.str.5:                               ## @.str.5
	.asciz	"Al'Akir the Windlord"

L_.str.6:                               ## @.str.6
	.asciz	"Alarm-o-Bot"

L_.str.7:                               ## @.str.7
	.asciz	"Aldor Peacekeeper"

L_.str.8:                               ## @.str.8
	.asciz	"Alexstrasza"

L_.str.9:                               ## @.str.9
	.asciz	"Alexstrasza's Champion"

L_.str.10:                              ## @.str.10
	.asciz	"Amani Berserker"

L_.str.11:                              ## @.str.11
	.asciz	"Ancestor's Call"

L_.str.12:                              ## @.str.12
	.asciz	"Ancestral Healing"

L_.str.13:                              ## @.str.13
	.asciz	"Ancestral Knowledge"

L_.str.14:                              ## @.str.14
	.asciz	"Ancestral Spirit"

L_.str.15:                              ## @.str.15
	.asciz	"Ancient Brewmaster"

L_.str.16:                              ## @.str.16
	.asciz	"Ancient Mage"

L_.str.17:                              ## @.str.17
	.asciz	"Ancient of Lore"

L_.str.18:                              ## @.str.18
	.asciz	"Ancient of War"

L_.str.19:                              ## @.str.19
	.asciz	"Ancient Shade"

L_.str.20:                              ## @.str.20
	.asciz	"Ancient Watcher"

L_.str.21:                              ## @.str.21
	.asciz	"Angry Chicken"

L_.str.22:                              ## @.str.22
	.asciz	"Anima Golem"

L_.str.23:                              ## @.str.23
	.asciz	"Animal Companion"

L_.str.24:                              ## @.str.24
	.asciz	"Animated Armor"

L_.str.25:                              ## @.str.25
	.asciz	"Annoy-o-Tron"

L_.str.26:                              ## @.str.26
	.asciz	"Anodized Robo Cub"

L_.str.27:                              ## @.str.27
	.asciz	"Antique Healbot"

L_.str.28:                              ## @.str.28
	.asciz	"Anub'ar Ambusher"

L_.str.29:                              ## @.str.29
	.asciz	"Anub'arak"

L_.str.30:                              ## @.str.30
	.asciz	"Anubisath Sentinel"

L_.str.31:                              ## @.str.31
	.asciz	"Anyfin Can Happen"

L_.str.32:                              ## @.str.32
	.asciz	"Arathi Weaponsmith"

L_.str.33:                              ## @.str.33
	.asciz	"Arcane Blast"

L_.str.34:                              ## @.str.34
	.asciz	"Arcane Explosion"

L_.str.35:                              ## @.str.35
	.asciz	"Arcane Golem"

L_.str.36:                              ## @.str.36
	.asciz	"Arcane Intellect"

L_.str.37:                              ## @.str.37
	.asciz	"Arcane Missiles"

L_.str.38:                              ## @.str.38
	.asciz	"Arcane Nullifier X-21"

L_.str.39:                              ## @.str.39
	.asciz	"Arcane Shot"

L_.str.40:                              ## @.str.40
	.asciz	"Arcanite Reaper"

L_.str.41:                              ## @.str.41
	.asciz	"Arch-Thief Rafaam"

L_.str.42:                              ## @.str.42
	.asciz	"Archmage"

L_.str.43:                              ## @.str.43
	.asciz	"Archmage Antonidas"

L_.str.44:                              ## @.str.44
	.asciz	"Argent Commander"

L_.str.45:                              ## @.str.45
	.asciz	"Argent Horserider"

L_.str.46:                              ## @.str.46
	.asciz	"Argent Lance"

L_.str.47:                              ## @.str.47
	.asciz	"Argent Protector"

L_.str.48:                              ## @.str.48
	.asciz	"Argent Squire"

L_.str.49:                              ## @.str.49
	.asciz	"Argent Watchman"

L_.str.50:                              ## @.str.50
	.asciz	"Armored Warhorse"

L_.str.51:                              ## @.str.51
	.asciz	"Armorsmith"

L_.str.52:                              ## @.str.52
	.asciz	"Assassin's Blade"

L_.str.53:                              ## @.str.53
	.asciz	"Assassinate"

L_.str.54:                              ## @.str.54
	.asciz	"Astral Communion"

L_.str.55:                              ## @.str.55
	.asciz	"Auchenai Soulpriest"

L_.str.56:                              ## @.str.56
	.asciz	"Avenge"

L_.str.57:                              ## @.str.57
	.asciz	"Avenging Wrath"

L_.str.58:                              ## @.str.58
	.asciz	"Aviana"

L_.str.59:                              ## @.str.59
	.asciz	"Axe Flinger"

L_.str.60:                              ## @.str.60
	.asciz	"Azure Drake"

L_.str.61:                              ## @.str.61
	.asciz	"Backstab"

L_.str.62:                              ## @.str.62
	.asciz	"Ball of Spiders"

L_.str.63:                              ## @.str.63
	.asciz	"Bane of Doom"

L_.str.64:                              ## @.str.64
	.asciz	"Baron Geddon"

L_.str.65:                              ## @.str.65
	.asciz	"Baron Rivendare"

L_.str.66:                              ## @.str.66
	.asciz	"Bash"

L_.str.67:                              ## @.str.67
	.asciz	"Battle Rage"

L_.str.68:                              ## @.str.68
	.asciz	"Bear Trap"

L_.str.69:                              ## @.str.69
	.asciz	"Beneath the Grounds"

L_.str.70:                              ## @.str.70
	.asciz	"Bestial Wrath"

L_.str.71:                              ## @.str.71
	.asciz	"Betrayal"

L_.str.72:                              ## @.str.72
	.asciz	"Big Game Hunter"

L_.str.73:                              ## @.str.73
	.asciz	"Bite"

L_.str.74:                              ## @.str.74
	.asciz	"Blackwing Corruptor"

L_.str.75:                              ## @.str.75
	.asciz	"Blackwing Technician"

L_.str.76:                              ## @.str.76
	.asciz	"Blade Flurry"

L_.str.77:                              ## @.str.77
	.asciz	"Blessed Champion"

L_.str.78:                              ## @.str.78
	.asciz	"Blessing of Kings"

L_.str.79:                              ## @.str.79
	.asciz	"Blessing of Might"

L_.str.80:                              ## @.str.80
	.asciz	"Blessing of Wisdom"

L_.str.81:                              ## @.str.81
	.asciz	"Blingtron 3000"

L_.str.82:                              ## @.str.82
	.asciz	"Blizzard"

L_.str.83:                              ## @.str.83
	.asciz	"Blood Imp"

L_.str.84:                              ## @.str.84
	.asciz	"Blood Knight"

L_.str.85:                              ## @.str.85
	.asciz	"Bloodfen Raptor"

L_.str.86:                              ## @.str.86
	.asciz	"Bloodlust"

L_.str.87:                              ## @.str.87
	.asciz	"Bloodmage Thalnos"

L_.str.88:                              ## @.str.88
	.asciz	"Bloodsail Corsair"

L_.str.89:                              ## @.str.89
	.asciz	"Bloodsail Raider"

L_.str.90:                              ## @.str.90
	.asciz	"Bluegill Warrior"

L_.str.91:                              ## @.str.91
	.asciz	"Bolf Ramshield"

L_.str.92:                              ## @.str.92
	.asciz	"Bolster"

L_.str.93:                              ## @.str.93
	.asciz	"Bolvar Fordragon"

L_.str.94:                              ## @.str.94
	.asciz	"Bomb Lobber"

L_.str.95:                              ## @.str.95
	.asciz	"Boneguard Lieutenant"

L_.str.96:                              ## @.str.96
	.asciz	"Booty Bay Bodyguard"

L_.str.97:                              ## @.str.97
	.asciz	"Boulderfist Ogre"

L_.str.98:                              ## @.str.98
	.asciz	"Bouncing Blade"

L_.str.99:                              ## @.str.99
	.asciz	"Brann Bronzebeard"

L_.str.100:                             ## @.str.100
	.asciz	"Brave Archer"

L_.str.101:                             ## @.str.101
	.asciz	"Brawl"

L_.str.102:                             ## @.str.102
	.asciz	"Buccaneer"

L_.str.103:                             ## @.str.103
	.asciz	"Burgle"

L_.str.104:                             ## @.str.104
	.asciz	"Burly Rockjaw Trogg"

L_.str.105:                             ## @.str.105
	.asciz	"Cabal Shadow Priest"

L_.str.106:                             ## @.str.106
	.asciz	"Cairne Bloodhoof"

L_.str.107:                             ## @.str.107
	.asciz	"Call Pet"

L_.str.108:                             ## @.str.108
	.asciz	"Captain Greenskin"

L_.str.109:                             ## @.str.109
	.asciz	"Captain's Parrot"

L_.str.110:                             ## @.str.110
	.asciz	"Captured Jormungar"

L_.str.111:                             ## @.str.111
	.asciz	"Cenarius"

L_.str.112:                             ## @.str.112
	.asciz	"Charge"

L_.str.113:                             ## @.str.113
	.asciz	"Charged Hammer"

L_.str.114:                             ## @.str.114
	.asciz	"Chillmaw"

L_.str.115:                             ## @.str.115
	.asciz	"Chillwind Yeti"

L_.str.116:                             ## @.str.116
	.asciz	"Chromaggus"

L_.str.117:                             ## @.str.117
	.asciz	"Circle of Healing"

L_.str.118:                             ## @.str.118
	.asciz	"Claw"

L_.str.119:                             ## @.str.119
	.asciz	"Cleave"

L_.str.120:                             ## @.str.120
	.asciz	"Clockwork Giant"

L_.str.121:                             ## @.str.121
	.asciz	"Clockwork Gnome"

L_.str.122:                             ## @.str.122
	.asciz	"Clockwork Knight"

L_.str.123:                             ## @.str.123
	.asciz	"Cobalt Guardian"

L_.str.124:                             ## @.str.124
	.asciz	"Cobra Shot"

L_.str.125:                             ## @.str.125
	.asciz	"Coghammer"

L_.str.126:                             ## @.str.126
	.asciz	"Cogmaster"

L_.str.127:                             ## @.str.127
	.asciz	"Cogmaster's Wrench"

L_.str.128:                             ## @.str.128
	.asciz	"Cold Blood"

L_.str.129:                             ## @.str.129
	.asciz	"Coldarra Drake"

L_.str.130:                             ## @.str.130
	.asciz	"Coldlight Oracle"

L_.str.131:                             ## @.str.131
	.asciz	"Coldlight Seer"

L_.str.132:                             ## @.str.132
	.asciz	"Coliseum Manager"

L_.str.133:                             ## @.str.133
	.asciz	"Commanding Shout"

L_.str.134:                             ## @.str.134
	.asciz	"Competitive Spirit"

L_.str.135:                             ## @.str.135
	.asciz	"Conceal"

L_.str.136:                             ## @.str.136
	.asciz	"Cone of Cold"

L_.str.137:                             ## @.str.137
	.asciz	"Confessor Paletress"

L_.str.138:                             ## @.str.138
	.asciz	"Confuse"

L_.str.139:                             ## @.str.139
	.asciz	"Consecration"

L_.str.140:                             ## @.str.140
	.asciz	"Convert"

L_.str.141:                             ## @.str.141
	.asciz	"Core Hound"

L_.str.142:                             ## @.str.142
	.asciz	"Core Rager"

L_.str.143:                             ## @.str.143
	.asciz	"Corruption"

L_.str.144:                             ## @.str.144
	.asciz	"Counterspell"

L_.str.145:                             ## @.str.145
	.asciz	"Crackle"

L_.str.146:                             ## @.str.146
	.asciz	"Crazed Alchemist"

L_.str.147:                             ## @.str.147
	.asciz	"Crowd Favorite"

L_.str.148:                             ## @.str.148
	.asciz	"Cruel Taskmaster"

L_.str.149:                             ## @.str.149
	.asciz	"Crush"

L_.str.150:                             ## @.str.150
	.asciz	"Cult Master"

L_.str.151:                             ## @.str.151
	.asciz	"Curse of Rafaam"

L_.str.152:                             ## @.str.152
	.asciz	"Cursed Blade"

L_.str.153:                             ## @.str.153
	.asciz	"Cutpurse"

	.section	__DATA,__data
	.globl	_entries                        ## @entries
	.p2align	4, 0x0
_entries:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12
	.quad	L_.str.13
	.quad	L_.str.14
	.quad	L_.str.15
	.quad	L_.str.16
	.quad	L_.str.17
	.quad	L_.str.18
	.quad	L_.str.19
	.quad	L_.str.20
	.quad	L_.str.21
	.quad	L_.str.22
	.quad	L_.str.23
	.quad	L_.str.24
	.quad	L_.str.25
	.quad	L_.str.26
	.quad	L_.str.27
	.quad	L_.str.28
	.quad	L_.str.29
	.quad	L_.str.30
	.quad	L_.str.31
	.quad	L_.str.32
	.quad	L_.str.33
	.quad	L_.str.34
	.quad	L_.str.35
	.quad	L_.str.36
	.quad	L_.str.37
	.quad	L_.str.38
	.quad	L_.str.39
	.quad	L_.str.40
	.quad	L_.str.41
	.quad	L_.str.42
	.quad	L_.str.43
	.quad	L_.str.44
	.quad	L_.str.45
	.quad	L_.str.46
	.quad	L_.str.47
	.quad	L_.str.48
	.quad	L_.str.49
	.quad	L_.str.50
	.quad	L_.str.51
	.quad	L_.str.52
	.quad	L_.str.53
	.quad	L_.str.54
	.quad	L_.str.55
	.quad	L_.str.56
	.quad	L_.str.57
	.quad	L_.str.58
	.quad	L_.str.59
	.quad	L_.str.60
	.quad	L_.str.61
	.quad	L_.str.62
	.quad	L_.str.63
	.quad	L_.str.64
	.quad	L_.str.65
	.quad	L_.str.66
	.quad	L_.str.67
	.quad	L_.str.68
	.quad	L_.str.69
	.quad	L_.str.70
	.quad	L_.str.71
	.quad	L_.str.72
	.quad	L_.str.73
	.quad	L_.str.74
	.quad	L_.str.75
	.quad	L_.str.76
	.quad	L_.str.77
	.quad	L_.str.78
	.quad	L_.str.79
	.quad	L_.str.80
	.quad	L_.str.81
	.quad	L_.str.82
	.quad	L_.str.83
	.quad	L_.str.84
	.quad	L_.str.85
	.quad	L_.str.86
	.quad	L_.str.87
	.quad	L_.str.88
	.quad	L_.str.89
	.quad	L_.str.90
	.quad	L_.str.91
	.quad	L_.str.92
	.quad	L_.str.93
	.quad	L_.str.94
	.quad	L_.str.95
	.quad	L_.str.96
	.quad	L_.str.97
	.quad	L_.str.98
	.quad	L_.str.99
	.quad	L_.str.100
	.quad	L_.str.101
	.quad	L_.str.102
	.quad	L_.str.103
	.quad	L_.str.104
	.quad	L_.str.105
	.quad	L_.str.106
	.quad	L_.str.107
	.quad	L_.str.108
	.quad	L_.str.109
	.quad	L_.str.110
	.quad	L_.str.111
	.quad	L_.str.112
	.quad	L_.str.113
	.quad	L_.str.114
	.quad	L_.str.115
	.quad	L_.str.116
	.quad	L_.str.117
	.quad	L_.str.118
	.quad	L_.str.119
	.quad	L_.str.120
	.quad	L_.str.121
	.quad	L_.str.122
	.quad	L_.str.123
	.quad	L_.str.124
	.quad	L_.str.125
	.quad	L_.str.126
	.quad	L_.str.127
	.quad	L_.str.128
	.quad	L_.str.129
	.quad	L_.str.130
	.quad	L_.str.131
	.quad	L_.str.132
	.quad	L_.str.133
	.quad	L_.str.134
	.quad	L_.str.135
	.quad	L_.str.136
	.quad	L_.str.137
	.quad	L_.str.138
	.quad	L_.str.139
	.quad	L_.str.140
	.quad	L_.str.141
	.quad	L_.str.142
	.quad	L_.str.143
	.quad	L_.str.144
	.quad	L_.str.145
	.quad	L_.str.146
	.quad	L_.str.147
	.quad	L_.str.148
	.quad	L_.str.149
	.quad	L_.str.150
	.quad	L_.str.151
	.quad	L_.str.152
	.quad	L_.str.153
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_.str.154:                             ## @.str.154
	.asciz	"core"

L_.str.155:                             ## @.str.155
	.asciz	"Matches for `%s':\n"

L_.str.156:                             ## @.str.156
	.asciz	"  %3d|%s\n"

L_.str.157:                             ## @.str.157
	.asciz	"\n"

L_.str.158:                             ## @.str.158
	.asciz	"work"

L_.str.159:                             ## @.str.159
	.asciz	"sam"

.subsections_via_symbols
