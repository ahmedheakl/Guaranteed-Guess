	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #544
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
Lloh3:
	adrp	x19, _speech@PAGE
Lloh4:
	add	x19, x19, _speech@PAGEOFF
Lloh5:
	adrp	x1, l_.str.4@PAGE
Lloh6:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	x0, x19
	bl	_libmin_mopen
	add	x24, sp, #24
	add	x0, sp, #24
	mov	w1, #511                        ; =0x1ff
	mov	x2, x19
	bl	_libmin_mgets
Lloh7:
	adrp	x22, l_.str.2@PAGE
Lloh8:
	add	x22, x22, l_.str.2@PAGEOFF
	mov	w23, #0                         ; =0x0
	cbz	x0, LBB0_5
; %bb.1:
Lloh9:
	adrp	x19, l_.str.2@PAGE
Lloh10:
	add	x19, x19, l_.str.2@PAGEOFF
Lloh11:
	adrp	x20, _speech@PAGE
Lloh12:
	add	x20, x20, _speech@PAGEOFF
Lloh13:
	adrp	x21, l_.str.6@PAGE
Lloh14:
	add	x21, x21, l_.str.6@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x0, sp, #24
	mov	w1, #511                        ; =0x1ff
	mov	x2, x20
	bl	_libmin_mgets
	cbz	x0, LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #24
	mov	x1, x19
	bl	_libmin_strstr
	cbz	x0, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	str	x24, [sp]
	mov	x0, x21
	bl	_libmin_printf
	add	w23, w23, #1
	b	LBB0_2
LBB0_5:
Lloh15:
	adrp	x0, _speech@PAGE
Lloh16:
	add	x0, x0, _speech@PAGEOFF
	bl	_libmin_mclose
	stp	x23, x22, [sp]
Lloh17:
	adrp	x0, l_.str.7@PAGE
Lloh18:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_libmin_printf
	bl	_libmin_success
	ldur	x8, [x29, #-72]
Lloh19:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh20:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh21:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_7
; %bb.6:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #544
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_7:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh19, Lloh20, Lloh21
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.globl	___speech                       ; @__speech
___speech:
	.ascii	"Kurt Vonnegut\nSpeech to Class of 1994: Syracuse University Commencement\nSunday, May 8th, 1994\nThere are three things that I very much want to say to the Class of 1994 in this brief hail and farewell. They are things which haven\342\200\231t been said enough to you freshly minted graduates nor to your parents or guardians, nor to me, nor to your teachers. I will say these in the body of my speech, I\342\200\231m just setting you up for this.\n\nFirst, I will say thank you. Second, I will say I am truly sorry - now that is the striking novelty among the three. We live in a time when nobody ever seems to apologize for anything; they just weep and raise hell on the Oprah Winfrey Show. The third thing I want to say to you at some point - probably close to the end - is, \"We love you.\" Now if I fail to say any of those three things in the body of this great speech, hold up your hands, and I will remedy the deficiency.\n\nAnd I\342\200\231m going to ask you to hold up your hands this early in the proceedings for another reason.  I first declare to you that the most wonderful thing, the most valuable thing you can get from an education is this - the memory of one person who could really teach, whose lessons made life and yourselves much more interesting and full of possibilities than you had previously supposed possible.  I ask this of everyone here, including all of us up here on the platform - How many of us, how many of you, had such a teacher?  Kindergarten counts. Please hold up your hands. Hurry. You may want to remember the name of that great teacher.\n\nI thank you for being educated. There, I\342\200\231ve thanked you now; that way I don\342\200\231t have to speak to a bunch of nincompoops. For you freshly minted college graduates, this is a puberty ceremony long overdue. We, whose principal achievement is that we are older than you, have to acknowledge at last that you are grown-ups, too.  there are old poops possibly among us on this very day who will say that you are not grown-ups until you have somehow survived, as they have, some famous calamity - The Great Depression, World War II, Vietnam, whatever. Storytellers are responsible for this destructive, not to say suicidal, myth. Again and again in stories, after some terrible mess, the character is able to say at last, \"Today, I am a woman; today I am a man.  The end.\"\n\nWhen I got home from World War II, my Uncle Dan clapped me on the back, and he said, \"You\342\200\231re a man now.\" So I killed him. Not really, but I certainly felt like doing it.\n\nNow you young twerps want a new name for your generation?  Probably not, you just want jobs, right? Well, the media do us all such tremendous favors when they call you Generation X, right?  Two clicks from the very end of the alphabet. I hereby declare you Generation A, as much at the beginning of a series of astonishing triumphs and failures as Adam and Eve were so long ago.\n\nI apologize. I said I would apologize; I apologize now. I apologize because of the terrible mess the planet is in. But it has always been a mess. There have never been any \"Good Old Days,\" there have just been days. And as I say to my grandchildren, \"Don\342\200\231t look at me.  I just got here myself.\"\n\nSo you know what I\342\200\231m going to do? I declare everybody here a member of Generation A.  Tomorrow is another day for all of us.\n\nHaving said that, I have made us, for a few hours at least, what most of us do not have and what we need so desperately - I have made us an extended family, one for all and all for one. A husband, a wife and some kids is not a family; it\342\200\231s a terribly vulnerable survival unit. Now those of you who get married or are married, when you fight with your spouse, what each of you will be saying to the other one actually is, \"You\342\200\231re not enough people.  You\342\200\231re only one person. I should have hundreds of people around.\"\n\nI met a man and a wife in Nigeria - Ibos. They just had a new baby. They had a thousand relatives there in southern Nigeria, and they were going to take that baby around and visit all the other relatives. We should all have families like that.\n\nNow, you take Dan and Marilyn Quayle, who imagine themselves as a brave, clean-cut little couple. They are surrounded by an enormous extended family, what we should all have - I mean judges, senators, newspaper editors, lawyers, bankers. They are not alone.  And one reason they are so comfortable is that they are members of extended families, and I would really, over the long run, hope America would find some way to provide all of our citizens with extended families - a large group of people they could call on for help.\n\nNow, I\342\200\231ve made us an extended family. Does our family have a flag?  Well, you bet.  It\342\200\231s a big orange rectangle. Orange is a very good color and maybe the best one. It\342\200\231s full of vitamin C and cheerful associations, if one could forget the troubles in Ireland.\n\nNow this gathering is a work of art. The teacher whose name I mentioned when we all remembered good teachers asked me one time, \"What is it artists do?\" And I mumbled something. \"They do two things,\" he said. \"First, they admit they can\342\200\231t straighten out the whole universe. And then second, they make at least one little part of it exactly as it should be. A blob of clay, a square of canvas, a piece of paper, or whatever.\" We have all worked so hard and well to make these moments and this place exactly what it should be.\n\nAs I have told you, I had a bad uncle named Dan, who said a male can\342\200\231t be a man unless he\342\200\231d gone to war. But I had a good uncle named Alex, who said, when life was most agreeable - and it could be just a pitcher of lemonade in the shade - he would say, \"If this isn\342\200\231t nice, what is?\" So I say that about what we have achieved here right now. If he hadn\342\200\231t said that so regularly, maybe five or six times a month, we might not have paused to notice how rewarding life can be sometimes. Perhaps my good uncle Alex will live on in some of you members of the Syracuse Class of 1994 if, in the future, you will pause to say out loud every so often, \"If this isn\342\200\231t nice, what is?\"\n\nNow, my time is up and I haven\342\200\231t even inspired you with heroic tales of the past - Teddy Roosevelt\342\200\231s cavalry charge up San Juan Hill, Desert Storm - nor given you visions of a glorious future - computer programs, interactive TV, the information superhighway, speed the day. I spent too much time celebrating this very moment and place - once the future we dreamed of so long ago. This is it. We\342\200\231re here. How the heck did we do it?\n\nA neighbor of mine, I hired him - he was a handyman - to build and \"L\" on my house where I could write.  He did the whole damn thing - he built the foundation, and then the side walls and the roof.  He did it all by himself. And when it was all done, he stood back and he aid, \"How the hell did I ever do that?\" How the hell did we ever do this?  We did it! And if this isn\342\200\231t nice, what is?\n\nI got a letter from a sappy woman a while back - she knew I was sappy too, which is to say a lifelong Democrat. She was pregnant, and she wanted to know if I thought it was a mistake to bring a little baby into a world as troubled as this one is. And I replied, what made being alive almost worthwhile for me was the saints I met. They could be almost anywhere. By saints I meant people who behaved decently and honorably in societies which were so often obscene. Perhaps many of us here, regardless of our ages or power or wealth, can be saints for her child to meet.\n\nThere was one thing I forgot to say, and I promised I would say, ant that is, \"We love you. We really do.\"\n"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"speech.txt"

	.section	__DATA,__data
	.globl	_speech                         ; @speech
	.p2align	3, 0x0
_speech:
	.quad	l_.str
	.quad	7577                            ; 0x1d99
	.quad	___speech
	.long	0                               ; 0x0
	.space	4

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"the"

l_.str.4:                               ; @.str.4
	.asciz	"r"

l_.str.6:                               ; @.str.6
	.asciz	"%s"

l_.str.7:                               ; @.str.7
	.asciz	"INFO: found (at least) %d occurrences of the word `%s'.\n"

.subsections_via_symbols
