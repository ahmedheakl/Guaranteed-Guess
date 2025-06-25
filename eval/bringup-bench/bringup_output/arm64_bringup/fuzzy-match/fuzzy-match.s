	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_fuzzy_match                    ; -- Begin function fuzzy_match
	.p2align	2
_fuzzy_match:                           ; @fuzzy_match
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	_libmin_strlen
	mov	x21, x0
	mov	x0, x20
	bl	_libmin_strlen
	ldrb	w8, [x20]
	cbz	w8, LBB0_3
; %bb.1:
	cmp	x0, x21
	b.ls	LBB0_5
; %bb.2:
	mov	w0, #-2147483648                ; =0x80000000
	b	LBB0_4
LBB0_3:
	mov	w0, #100                        ; =0x64
LBB0_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB0_5:
	sub	w8, w0, w21
	add	w2, w8, #100
	mov	x0, x20
	mov	x1, x19
	mov	w3, #1                          ; =0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_fuzzy_match_recurse
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function fuzzy_match_recurse
_fuzzy_match_recurse:                   ; @fuzzy_match_recurse
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x2
	ldrb	w8, [x0]
	cbz	w8, LBB1_13
; %bb.1:
	mov	x20, x3
	mov	x21, x1
	mov	x22, x0
	strb	w8, [sp, #14]
	strb	wzr, [sp, #15]
	add	x1, sp, #14
	mov	x0, x21
	bl	_libmin_strcasestr
	cbz	x0, LBB1_11
; %bb.2:
	add	x22, x22, #1
	mov	w24, #-2147483648               ; =0x80000000
	mov	w25, #15                        ; =0xf
Lloh0:
	adrp	x26, __pctype@GOTPAGE
Lloh1:
	ldr	x26, [x26, __pctype@GOTPAGEOFF]
	mov	w27, #-15                       ; =0xfffffff1
	b	LBB1_4
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	add	x23, x0, #1
	cmp	w9, #0
	ccmp	w20, #0, #4, eq
	add	w10, w8, #15
	csel	w10, w10, w8, ne
	add	w9, w9, w9, lsl #2
	neg	w11, w9
	cmn	w11, #15
	csneg	w9, w27, w9, le
	add	w9, w10, w9
	cmp	w20, #0
	csel	w2, w9, w8, ne
	mov	x0, x22
	mov	x1, x23
	mov	w3, #0                          ; =0x0
	bl	_fuzzy_match_recurse
	cmp	w24, w0
	csel	w24, w24, w0, gt
	add	x1, sp, #14
	mov	x0, x23
	bl	_libmin_strcasestr
	cbz	x0, LBB1_10
LBB1_4:                                 ; =>This Inner Loop Header: Depth=1
	sub	w9, w0, w21
	orr	w8, w9, w20
	cmp	w8, #0
	csel	w8, w25, wzr, eq
	cbz	w20, LBB1_6
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=1
	cmp	w9, #1
	b.lt	LBB1_3
LBB1_6:                                 ;   in Loop: Header=BB1_4 Depth=1
	ldr	x10, [x26]
	ldrb	w11, [x0]
	ldrh	w11, [x10, x11, lsl #1]
	tbz	w11, #0, LBB1_8
; %bb.7:                                ;   in Loop: Header=BB1_4 Depth=1
	ldurb	w12, [x0, #-1]
	ldrh	w12, [x10, x12, lsl #1]
	add	w13, w8, #30
	tst	w12, #0x2
	csel	w8, w8, w13, eq
LBB1_8:                                 ;   in Loop: Header=BB1_4 Depth=1
	tst	w11, #0x7
	b.eq	LBB1_3
; %bb.9:                                ;   in Loop: Header=BB1_4 Depth=1
	ldurb	w11, [x0, #-1]
	ldrh	w10, [x10, x11, lsl #1]
	add	w11, w8, #30
	tst	w10, #0x7
	csel	w8, w11, w8, eq
	b	LBB1_3
LBB1_10:
	mov	w8, #-2147483648                ; =0x80000000
	cmp	w24, w8
	b.ne	LBB1_12
LBB1_11:
	mov	w19, #-2147483648               ; =0x80000000
	b	LBB1_13
LBB1_12:
	add	w19, w24, w19
LBB1_13:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
Lloh2:
	adrp	x8, l_.str.154@PAGE
Lloh3:
	add	x8, x8, l_.str.154@PAGEOFF
	str	x8, [sp]
Lloh4:
	adrp	x0, l_.str.155@PAGE
Lloh5:
	add	x0, x0, l_.str.155@PAGEOFF
	bl	_libmin_printf
	adrp	x23, _entries@PAGE
	ldr	x21, [x23, _entries@PAGEOFF]
	cbz	x21, LBB2_6
; %bb.1:
Lloh6:
	adrp	x24, _entries@PAGE+8
Lloh7:
	add	x24, x24, _entries@PAGEOFF+8
Lloh8:
	adrp	x19, l_.str.154@PAGE
Lloh9:
	add	x19, x19, l_.str.154@PAGEOFF
	mov	w25, #-2147483648               ; =0x80000000
Lloh10:
	adrp	x20, l_.str.156@PAGE
Lloh11:
	add	x20, x20, l_.str.156@PAGEOFF
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	ldr	x21, [x24], #8
	cbz	x21, LBB2_6
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	_libmin_strlen
	mov	x22, x0
	mov	x0, x19
	bl	_libmin_strlen
	cmp	x0, x22
	b.hi	LBB2_2
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	sub	w8, w0, w22
	add	w2, w8, #100
	mov	x0, x19
	mov	x1, x21
	mov	w3, #1                          ; =0x1
	bl	_fuzzy_match_recurse
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, w25
	b.eq	LBB2_2
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=1
	ldur	x8, [x24, #-8]
	stp	x0, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	b	LBB2_2
LBB2_6:
Lloh12:
	adrp	x0, l_.str.157@PAGE
Lloh13:
	add	x0, x0, l_.str.157@PAGEOFF
	bl	_libmin_printf
Lloh14:
	adrp	x8, l_.str.158@PAGE
Lloh15:
	add	x8, x8, l_.str.158@PAGEOFF
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.155@PAGE
Lloh17:
	add	x0, x0, l_.str.155@PAGEOFF
	bl	_libmin_printf
	ldr	x21, [x23, _entries@PAGEOFF]
	cbz	x21, LBB2_12
; %bb.7:
Lloh18:
	adrp	x24, _entries@PAGE+8
Lloh19:
	add	x24, x24, _entries@PAGEOFF+8
Lloh20:
	adrp	x19, l_.str.158@PAGE
Lloh21:
	add	x19, x19, l_.str.158@PAGEOFF
	mov	w25, #-2147483648               ; =0x80000000
Lloh22:
	adrp	x20, l_.str.156@PAGE
Lloh23:
	add	x20, x20, l_.str.156@PAGEOFF
	b	LBB2_9
LBB2_8:                                 ;   in Loop: Header=BB2_9 Depth=1
	ldr	x21, [x24], #8
	cbz	x21, LBB2_12
LBB2_9:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	_libmin_strlen
	mov	x22, x0
	mov	x0, x19
	bl	_libmin_strlen
	cmp	x0, x22
	b.hi	LBB2_8
; %bb.10:                               ;   in Loop: Header=BB2_9 Depth=1
	sub	w8, w0, w22
	add	w2, w8, #100
	mov	x0, x19
	mov	x1, x21
	mov	w3, #1                          ; =0x1
	bl	_fuzzy_match_recurse
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, w25
	b.eq	LBB2_8
; %bb.11:                               ;   in Loop: Header=BB2_9 Depth=1
	ldur	x8, [x24, #-8]
	stp	x0, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	b	LBB2_8
LBB2_12:
Lloh24:
	adrp	x0, l_.str.157@PAGE
Lloh25:
	add	x0, x0, l_.str.157@PAGEOFF
	bl	_libmin_printf
Lloh26:
	adrp	x8, l_.str.159@PAGE
Lloh27:
	add	x8, x8, l_.str.159@PAGEOFF
	str	x8, [sp]
Lloh28:
	adrp	x0, l_.str.155@PAGE
Lloh29:
	add	x0, x0, l_.str.155@PAGEOFF
	bl	_libmin_printf
	ldr	x21, [x23, _entries@PAGEOFF]
	cbz	x21, LBB2_18
; %bb.13:
Lloh30:
	adrp	x23, _entries@PAGE+8
Lloh31:
	add	x23, x23, _entries@PAGEOFF+8
Lloh32:
	adrp	x19, l_.str.159@PAGE
Lloh33:
	add	x19, x19, l_.str.159@PAGEOFF
	mov	w24, #-2147483648               ; =0x80000000
Lloh34:
	adrp	x20, l_.str.156@PAGE
Lloh35:
	add	x20, x20, l_.str.156@PAGEOFF
	b	LBB2_15
LBB2_14:                                ;   in Loop: Header=BB2_15 Depth=1
	ldr	x21, [x23], #8
	cbz	x21, LBB2_18
LBB2_15:                                ; =>This Inner Loop Header: Depth=1
	mov	x0, x21
	bl	_libmin_strlen
	mov	x22, x0
	mov	x0, x19
	bl	_libmin_strlen
	cmp	x0, x22
	b.hi	LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	sub	w8, w0, w22
	add	w2, w8, #100
	mov	x0, x19
	mov	x1, x21
	mov	w3, #1                          ; =0x1
	bl	_fuzzy_match_recurse
                                        ; kill: def $w0 killed $w0 def $x0
	cmp	w0, w24
	b.eq	LBB2_14
; %bb.17:                               ;   in Loop: Header=BB2_15 Depth=1
	ldur	x8, [x23, #-8]
	stp	x0, x8, [sp]
	mov	x0, x20
	bl	_libmin_printf
	b	LBB2_14
LBB2_18:
Lloh36:
	adrp	x0, l_.str.157@PAGE
Lloh37:
	add	x0, x0, l_.str.157@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh36, Lloh37
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Abomination"

l_.str.1:                               ; @.str.1
	.asciz	"Abusive Sergeant"

l_.str.2:                               ; @.str.2
	.asciz	"Acidic Swamp Ooze"

l_.str.3:                               ; @.str.3
	.asciz	"Acidmaw"

l_.str.4:                               ; @.str.4
	.asciz	"Acolyte of Pain"

l_.str.5:                               ; @.str.5
	.asciz	"Al'Akir the Windlord"

l_.str.6:                               ; @.str.6
	.asciz	"Alarm-o-Bot"

l_.str.7:                               ; @.str.7
	.asciz	"Aldor Peacekeeper"

l_.str.8:                               ; @.str.8
	.asciz	"Alexstrasza"

l_.str.9:                               ; @.str.9
	.asciz	"Alexstrasza's Champion"

l_.str.10:                              ; @.str.10
	.asciz	"Amani Berserker"

l_.str.11:                              ; @.str.11
	.asciz	"Ancestor's Call"

l_.str.12:                              ; @.str.12
	.asciz	"Ancestral Healing"

l_.str.13:                              ; @.str.13
	.asciz	"Ancestral Knowledge"

l_.str.14:                              ; @.str.14
	.asciz	"Ancestral Spirit"

l_.str.15:                              ; @.str.15
	.asciz	"Ancient Brewmaster"

l_.str.16:                              ; @.str.16
	.asciz	"Ancient Mage"

l_.str.17:                              ; @.str.17
	.asciz	"Ancient of Lore"

l_.str.18:                              ; @.str.18
	.asciz	"Ancient of War"

l_.str.19:                              ; @.str.19
	.asciz	"Ancient Shade"

l_.str.20:                              ; @.str.20
	.asciz	"Ancient Watcher"

l_.str.21:                              ; @.str.21
	.asciz	"Angry Chicken"

l_.str.22:                              ; @.str.22
	.asciz	"Anima Golem"

l_.str.23:                              ; @.str.23
	.asciz	"Animal Companion"

l_.str.24:                              ; @.str.24
	.asciz	"Animated Armor"

l_.str.25:                              ; @.str.25
	.asciz	"Annoy-o-Tron"

l_.str.26:                              ; @.str.26
	.asciz	"Anodized Robo Cub"

l_.str.27:                              ; @.str.27
	.asciz	"Antique Healbot"

l_.str.28:                              ; @.str.28
	.asciz	"Anub'ar Ambusher"

l_.str.29:                              ; @.str.29
	.asciz	"Anub'arak"

l_.str.30:                              ; @.str.30
	.asciz	"Anubisath Sentinel"

l_.str.31:                              ; @.str.31
	.asciz	"Anyfin Can Happen"

l_.str.32:                              ; @.str.32
	.asciz	"Arathi Weaponsmith"

l_.str.33:                              ; @.str.33
	.asciz	"Arcane Blast"

l_.str.34:                              ; @.str.34
	.asciz	"Arcane Explosion"

l_.str.35:                              ; @.str.35
	.asciz	"Arcane Golem"

l_.str.36:                              ; @.str.36
	.asciz	"Arcane Intellect"

l_.str.37:                              ; @.str.37
	.asciz	"Arcane Missiles"

l_.str.38:                              ; @.str.38
	.asciz	"Arcane Nullifier X-21"

l_.str.39:                              ; @.str.39
	.asciz	"Arcane Shot"

l_.str.40:                              ; @.str.40
	.asciz	"Arcanite Reaper"

l_.str.41:                              ; @.str.41
	.asciz	"Arch-Thief Rafaam"

l_.str.42:                              ; @.str.42
	.asciz	"Archmage"

l_.str.43:                              ; @.str.43
	.asciz	"Archmage Antonidas"

l_.str.44:                              ; @.str.44
	.asciz	"Argent Commander"

l_.str.45:                              ; @.str.45
	.asciz	"Argent Horserider"

l_.str.46:                              ; @.str.46
	.asciz	"Argent Lance"

l_.str.47:                              ; @.str.47
	.asciz	"Argent Protector"

l_.str.48:                              ; @.str.48
	.asciz	"Argent Squire"

l_.str.49:                              ; @.str.49
	.asciz	"Argent Watchman"

l_.str.50:                              ; @.str.50
	.asciz	"Armored Warhorse"

l_.str.51:                              ; @.str.51
	.asciz	"Armorsmith"

l_.str.52:                              ; @.str.52
	.asciz	"Assassin's Blade"

l_.str.53:                              ; @.str.53
	.asciz	"Assassinate"

l_.str.54:                              ; @.str.54
	.asciz	"Astral Communion"

l_.str.55:                              ; @.str.55
	.asciz	"Auchenai Soulpriest"

l_.str.56:                              ; @.str.56
	.asciz	"Avenge"

l_.str.57:                              ; @.str.57
	.asciz	"Avenging Wrath"

l_.str.58:                              ; @.str.58
	.asciz	"Aviana"

l_.str.59:                              ; @.str.59
	.asciz	"Axe Flinger"

l_.str.60:                              ; @.str.60
	.asciz	"Azure Drake"

l_.str.61:                              ; @.str.61
	.asciz	"Backstab"

l_.str.62:                              ; @.str.62
	.asciz	"Ball of Spiders"

l_.str.63:                              ; @.str.63
	.asciz	"Bane of Doom"

l_.str.64:                              ; @.str.64
	.asciz	"Baron Geddon"

l_.str.65:                              ; @.str.65
	.asciz	"Baron Rivendare"

l_.str.66:                              ; @.str.66
	.asciz	"Bash"

l_.str.67:                              ; @.str.67
	.asciz	"Battle Rage"

l_.str.68:                              ; @.str.68
	.asciz	"Bear Trap"

l_.str.69:                              ; @.str.69
	.asciz	"Beneath the Grounds"

l_.str.70:                              ; @.str.70
	.asciz	"Bestial Wrath"

l_.str.71:                              ; @.str.71
	.asciz	"Betrayal"

l_.str.72:                              ; @.str.72
	.asciz	"Big Game Hunter"

l_.str.73:                              ; @.str.73
	.asciz	"Bite"

l_.str.74:                              ; @.str.74
	.asciz	"Blackwing Corruptor"

l_.str.75:                              ; @.str.75
	.asciz	"Blackwing Technician"

l_.str.76:                              ; @.str.76
	.asciz	"Blade Flurry"

l_.str.77:                              ; @.str.77
	.asciz	"Blessed Champion"

l_.str.78:                              ; @.str.78
	.asciz	"Blessing of Kings"

l_.str.79:                              ; @.str.79
	.asciz	"Blessing of Might"

l_.str.80:                              ; @.str.80
	.asciz	"Blessing of Wisdom"

l_.str.81:                              ; @.str.81
	.asciz	"Blingtron 3000"

l_.str.82:                              ; @.str.82
	.asciz	"Blizzard"

l_.str.83:                              ; @.str.83
	.asciz	"Blood Imp"

l_.str.84:                              ; @.str.84
	.asciz	"Blood Knight"

l_.str.85:                              ; @.str.85
	.asciz	"Bloodfen Raptor"

l_.str.86:                              ; @.str.86
	.asciz	"Bloodlust"

l_.str.87:                              ; @.str.87
	.asciz	"Bloodmage Thalnos"

l_.str.88:                              ; @.str.88
	.asciz	"Bloodsail Corsair"

l_.str.89:                              ; @.str.89
	.asciz	"Bloodsail Raider"

l_.str.90:                              ; @.str.90
	.asciz	"Bluegill Warrior"

l_.str.91:                              ; @.str.91
	.asciz	"Bolf Ramshield"

l_.str.92:                              ; @.str.92
	.asciz	"Bolster"

l_.str.93:                              ; @.str.93
	.asciz	"Bolvar Fordragon"

l_.str.94:                              ; @.str.94
	.asciz	"Bomb Lobber"

l_.str.95:                              ; @.str.95
	.asciz	"Boneguard Lieutenant"

l_.str.96:                              ; @.str.96
	.asciz	"Booty Bay Bodyguard"

l_.str.97:                              ; @.str.97
	.asciz	"Boulderfist Ogre"

l_.str.98:                              ; @.str.98
	.asciz	"Bouncing Blade"

l_.str.99:                              ; @.str.99
	.asciz	"Brann Bronzebeard"

l_.str.100:                             ; @.str.100
	.asciz	"Brave Archer"

l_.str.101:                             ; @.str.101
	.asciz	"Brawl"

l_.str.102:                             ; @.str.102
	.asciz	"Buccaneer"

l_.str.103:                             ; @.str.103
	.asciz	"Burgle"

l_.str.104:                             ; @.str.104
	.asciz	"Burly Rockjaw Trogg"

l_.str.105:                             ; @.str.105
	.asciz	"Cabal Shadow Priest"

l_.str.106:                             ; @.str.106
	.asciz	"Cairne Bloodhoof"

l_.str.107:                             ; @.str.107
	.asciz	"Call Pet"

l_.str.108:                             ; @.str.108
	.asciz	"Captain Greenskin"

l_.str.109:                             ; @.str.109
	.asciz	"Captain's Parrot"

l_.str.110:                             ; @.str.110
	.asciz	"Captured Jormungar"

l_.str.111:                             ; @.str.111
	.asciz	"Cenarius"

l_.str.112:                             ; @.str.112
	.asciz	"Charge"

l_.str.113:                             ; @.str.113
	.asciz	"Charged Hammer"

l_.str.114:                             ; @.str.114
	.asciz	"Chillmaw"

l_.str.115:                             ; @.str.115
	.asciz	"Chillwind Yeti"

l_.str.116:                             ; @.str.116
	.asciz	"Chromaggus"

l_.str.117:                             ; @.str.117
	.asciz	"Circle of Healing"

l_.str.118:                             ; @.str.118
	.asciz	"Claw"

l_.str.119:                             ; @.str.119
	.asciz	"Cleave"

l_.str.120:                             ; @.str.120
	.asciz	"Clockwork Giant"

l_.str.121:                             ; @.str.121
	.asciz	"Clockwork Gnome"

l_.str.122:                             ; @.str.122
	.asciz	"Clockwork Knight"

l_.str.123:                             ; @.str.123
	.asciz	"Cobalt Guardian"

l_.str.124:                             ; @.str.124
	.asciz	"Cobra Shot"

l_.str.125:                             ; @.str.125
	.asciz	"Coghammer"

l_.str.126:                             ; @.str.126
	.asciz	"Cogmaster"

l_.str.127:                             ; @.str.127
	.asciz	"Cogmaster's Wrench"

l_.str.128:                             ; @.str.128
	.asciz	"Cold Blood"

l_.str.129:                             ; @.str.129
	.asciz	"Coldarra Drake"

l_.str.130:                             ; @.str.130
	.asciz	"Coldlight Oracle"

l_.str.131:                             ; @.str.131
	.asciz	"Coldlight Seer"

l_.str.132:                             ; @.str.132
	.asciz	"Coliseum Manager"

l_.str.133:                             ; @.str.133
	.asciz	"Commanding Shout"

l_.str.134:                             ; @.str.134
	.asciz	"Competitive Spirit"

l_.str.135:                             ; @.str.135
	.asciz	"Conceal"

l_.str.136:                             ; @.str.136
	.asciz	"Cone of Cold"

l_.str.137:                             ; @.str.137
	.asciz	"Confessor Paletress"

l_.str.138:                             ; @.str.138
	.asciz	"Confuse"

l_.str.139:                             ; @.str.139
	.asciz	"Consecration"

l_.str.140:                             ; @.str.140
	.asciz	"Convert"

l_.str.141:                             ; @.str.141
	.asciz	"Core Hound"

l_.str.142:                             ; @.str.142
	.asciz	"Core Rager"

l_.str.143:                             ; @.str.143
	.asciz	"Corruption"

l_.str.144:                             ; @.str.144
	.asciz	"Counterspell"

l_.str.145:                             ; @.str.145
	.asciz	"Crackle"

l_.str.146:                             ; @.str.146
	.asciz	"Crazed Alchemist"

l_.str.147:                             ; @.str.147
	.asciz	"Crowd Favorite"

l_.str.148:                             ; @.str.148
	.asciz	"Cruel Taskmaster"

l_.str.149:                             ; @.str.149
	.asciz	"Crush"

l_.str.150:                             ; @.str.150
	.asciz	"Cult Master"

l_.str.151:                             ; @.str.151
	.asciz	"Curse of Rafaam"

l_.str.152:                             ; @.str.152
	.asciz	"Cursed Blade"

l_.str.153:                             ; @.str.153
	.asciz	"Cutpurse"

	.section	__DATA,__data
	.globl	_entries                        ; @entries
	.p2align	3, 0x0
_entries:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20
	.quad	l_.str.21
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.24
	.quad	l_.str.25
	.quad	l_.str.26
	.quad	l_.str.27
	.quad	l_.str.28
	.quad	l_.str.29
	.quad	l_.str.30
	.quad	l_.str.31
	.quad	l_.str.32
	.quad	l_.str.33
	.quad	l_.str.34
	.quad	l_.str.35
	.quad	l_.str.36
	.quad	l_.str.37
	.quad	l_.str.38
	.quad	l_.str.39
	.quad	l_.str.40
	.quad	l_.str.41
	.quad	l_.str.42
	.quad	l_.str.43
	.quad	l_.str.44
	.quad	l_.str.45
	.quad	l_.str.46
	.quad	l_.str.47
	.quad	l_.str.48
	.quad	l_.str.49
	.quad	l_.str.50
	.quad	l_.str.51
	.quad	l_.str.52
	.quad	l_.str.53
	.quad	l_.str.54
	.quad	l_.str.55
	.quad	l_.str.56
	.quad	l_.str.57
	.quad	l_.str.58
	.quad	l_.str.59
	.quad	l_.str.60
	.quad	l_.str.61
	.quad	l_.str.62
	.quad	l_.str.63
	.quad	l_.str.64
	.quad	l_.str.65
	.quad	l_.str.66
	.quad	l_.str.67
	.quad	l_.str.68
	.quad	l_.str.69
	.quad	l_.str.70
	.quad	l_.str.71
	.quad	l_.str.72
	.quad	l_.str.73
	.quad	l_.str.74
	.quad	l_.str.75
	.quad	l_.str.76
	.quad	l_.str.77
	.quad	l_.str.78
	.quad	l_.str.79
	.quad	l_.str.80
	.quad	l_.str.81
	.quad	l_.str.82
	.quad	l_.str.83
	.quad	l_.str.84
	.quad	l_.str.85
	.quad	l_.str.86
	.quad	l_.str.87
	.quad	l_.str.88
	.quad	l_.str.89
	.quad	l_.str.90
	.quad	l_.str.91
	.quad	l_.str.92
	.quad	l_.str.93
	.quad	l_.str.94
	.quad	l_.str.95
	.quad	l_.str.96
	.quad	l_.str.97
	.quad	l_.str.98
	.quad	l_.str.99
	.quad	l_.str.100
	.quad	l_.str.101
	.quad	l_.str.102
	.quad	l_.str.103
	.quad	l_.str.104
	.quad	l_.str.105
	.quad	l_.str.106
	.quad	l_.str.107
	.quad	l_.str.108
	.quad	l_.str.109
	.quad	l_.str.110
	.quad	l_.str.111
	.quad	l_.str.112
	.quad	l_.str.113
	.quad	l_.str.114
	.quad	l_.str.115
	.quad	l_.str.116
	.quad	l_.str.117
	.quad	l_.str.118
	.quad	l_.str.119
	.quad	l_.str.120
	.quad	l_.str.121
	.quad	l_.str.122
	.quad	l_.str.123
	.quad	l_.str.124
	.quad	l_.str.125
	.quad	l_.str.126
	.quad	l_.str.127
	.quad	l_.str.128
	.quad	l_.str.129
	.quad	l_.str.130
	.quad	l_.str.131
	.quad	l_.str.132
	.quad	l_.str.133
	.quad	l_.str.134
	.quad	l_.str.135
	.quad	l_.str.136
	.quad	l_.str.137
	.quad	l_.str.138
	.quad	l_.str.139
	.quad	l_.str.140
	.quad	l_.str.141
	.quad	l_.str.142
	.quad	l_.str.143
	.quad	l_.str.144
	.quad	l_.str.145
	.quad	l_.str.146
	.quad	l_.str.147
	.quad	l_.str.148
	.quad	l_.str.149
	.quad	l_.str.150
	.quad	l_.str.151
	.quad	l_.str.152
	.quad	l_.str.153
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
l_.str.154:                             ; @.str.154
	.asciz	"core"

l_.str.155:                             ; @.str.155
	.asciz	"Matches for `%s':\n"

l_.str.156:                             ; @.str.156
	.asciz	"  %3d|%s\n"

l_.str.157:                             ; @.str.157
	.asciz	"\n"

l_.str.158:                             ; @.str.158
	.asciz	"work"

l_.str.159:                             ; @.str.159
	.asciz	"sam"

.subsections_via_symbols
