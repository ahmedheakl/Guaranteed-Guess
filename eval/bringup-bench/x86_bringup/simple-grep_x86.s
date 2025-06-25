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
	subq	$520, %rsp                      ## imm = 0x208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	_speech(%rip), %rbx
	leaq	L_.str.4(%rip), %rsi
	movq	%rbx, %rdi
	callq	_libmin_mopen
	leaq	-560(%rbp), %rdi
	movl	$511, %esi                      ## imm = 0x1FF
	movq	%rbx, %rdx
	callq	_libmin_mgets
	testq	%rax, %rax
	je	LBB0_1
## %bb.2:
	leaq	L_.str.2(%rip), %r14
	leaq	-560(%rbp), %rbx
	leaq	_speech(%rip), %r12
	leaq	L_.str.6(%rip), %r13
	xorl	%r15d, %r15d
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	$511, %esi                      ## imm = 0x1FF
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	_libmin_mgets
	testq	%rax, %rax
	je	LBB0_6
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_libmin_strstr
	testq	%rax, %rax
	je	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_libmin_printf
	incl	%r15d
	jmp	LBB0_5
LBB0_1:
	xorl	%r15d, %r15d
LBB0_6:
	leaq	_speech(%rip), %rdi
	callq	_libmin_mclose
	leaq	L_.str.7(%rip), %rdi
	leaq	L_.str.2(%rip), %rdx
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_libmin_printf
	callq	_libmin_success
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_8
## %bb.7:
	xorl	%eax, %eax
	addq	$520, %rsp                      ## imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_8:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	___speech                       ## @__speech
	.p2align	4
___speech:
	.ascii	"Kurt Vonnegut\nSpeech to Class of 1994: Syracuse University Commencement\nSunday, May 8th, 1994\nThere are three things that I very much want to say to the Class of 1994 in this brief hail and farewell. They are things which haven\342\200\231t been said enough to you freshly minted graduates nor to your parents or guardians, nor to me, nor to your teachers. I will say these in the body of my speech, I\342\200\231m just setting you up for this.\n\nFirst, I will say thank you. Second, I will say I am truly sorry - now that is the striking novelty among the three. We live in a time when nobody ever seems to apologize for anything; they just weep and raise hell on the Oprah Winfrey Show. The third thing I want to say to you at some point - probably close to the end - is, \"We love you.\" Now if I fail to say any of those three things in the body of this great speech, hold up your hands, and I will remedy the deficiency.\n\nAnd I\342\200\231m going to ask you to hold up your hands this early in the proceedings for another reason.  I first declare to you that the most wonderful thing, the most valuable thing you can get from an education is this - the memory of one person who could really teach, whose lessons made life and yourselves much more interesting and full of possibilities than you had previously supposed possible.  I ask this of everyone here, including all of us up here on the platform - How many of us, how many of you, had such a teacher?  Kindergarten counts. Please hold up your hands. Hurry. You may want to remember the name of that great teacher.\n\nI thank you for being educated. There, I\342\200\231ve thanked you now; that way I don\342\200\231t have to speak to a bunch of nincompoops. For you freshly minted college graduates, this is a puberty ceremony long overdue. We, whose principal achievement is that we are older than you, have to acknowledge at last that you are grown-ups, too.  there are old poops possibly among us on this very day who will say that you are not grown-ups until you have somehow survived, as they have, some famous calamity - The Great Depression, World War II, Vietnam, whatever. Storytellers are responsible for this destructive, not to say suicidal, myth. Again and again in stories, after some terrible mess, the character is able to say at last, \"Today, I am a woman; today I am a man.  The end.\"\n\nWhen I got home from World War II, my Uncle Dan clapped me on the back, and he said, \"You\342\200\231re a man now.\" So I killed him. Not really, but I certainly felt like doing it.\n\nNow you young twerps want a new name for your generation?  Probably not, you just want jobs, right? Well, the media do us all such tremendous favors when they call you Generation X, right?  Two clicks from the very end of the alphabet. I hereby declare you Generation A, as much at the beginning of a series of astonishing triumphs and failures as Adam and Eve were so long ago.\n\nI apologize. I said I would apologize; I apologize now. I apologize because of the terrible mess the planet is in. But it has always been a mess. There have never been any \"Good Old Days,\" there have just been days. And as I say to my grandchildren, \"Don\342\200\231t look at me.  I just got here myself.\"\n\nSo you know what I\342\200\231m going to do? I declare everybody here a member of Generation A.  Tomorrow is another day for all of us.\n\nHaving said that, I have made us, for a few hours at least, what most of us do not have and what we need so desperately - I have made us an extended family, one for all and all for one. A husband, a wife and some kids is not a family; it\342\200\231s a terribly vulnerable survival unit. Now those of you who get married or are married, when you fight with your spouse, what each of you will be saying to the other one actually is, \"You\342\200\231re not enough people.  You\342\200\231re only one person. I should have hundreds of people around.\"\n\nI met a man and a wife in Nigeria - Ibos. They just had a new baby. They had a thousand relatives there in southern Nigeria, and they were going to take that baby around and visit all the other relatives. We should all have families like that.\n\nNow, you take Dan and Marilyn Quayle, who imagine themselves as a brave, clean-cut little couple. They are surrounded by an enormous extended family, what we should all have - I mean judges, senators, newspaper editors, lawyers, bankers. They are not alone.  And one reason they are so comfortable is that they are members of extended families, and I would really, over the long run, hope America would find some way to provide all of our citizens with extended families - a large group of people they could call on for help.\n\nNow, I\342\200\231ve made us an extended family. Does our family have a flag?  Well, you bet.  It\342\200\231s a big orange rectangle. Orange is a very good color and maybe the best one. It\342\200\231s full of vitamin C and cheerful associations, if one could forget the troubles in Ireland.\n\nNow this gathering is a work of art. The teacher whose name I mentioned when we all remembered good teachers asked me one time, \"What is it artists do?\" And I mumbled something. \"They do two things,\" he said. \"First, they admit they can\342\200\231t straighten out the whole universe. And then second, they make at least one little part of it exactly as it should be. A blob of clay, a square of canvas, a piece of paper, or whatever.\" We have all worked so hard and well to make these moments and this place exactly what it should be.\n\nAs I have told you, I had a bad uncle named Dan, who said a male can\342\200\231t be a man unless he\342\200\231d gone to war. But I had a good uncle named Alex, who said, when life was most agreeable - and it could be just a pitcher of lemonade in the shade - he would say, \"If this isn\342\200\231t nice, what is?\" So I say that about what we have achieved here right now. If he hadn\342\200\231t said that so regularly, maybe five or six times a month, we might not have paused to notice how rewarding life can be sometimes. Perhaps my good uncle Alex will live on in some of you members of the Syracuse Class of 1994 if, in the future, you will pause to say out loud every so often, \"If this isn\342\200\231t nice, what is?\"\n\nNow, my time is up and I haven\342\200\231t even inspired you with heroic tales of the past - Teddy Roosevelt\342\200\231s cavalry charge up San Juan Hill, Desert Storm - nor given you visions of a glorious future - computer programs, interactive TV, the information superhighway, speed the day. I spent too much time celebrating this very moment and place - once the future we dreamed of so long ago. This is it. We\342\200\231re here. How the heck did we do it?\n\nA neighbor of mine, I hired him - he was a handyman - to build and \"L\" on my house where I could write.  He did the whole damn thing - he built the foundation, and then the side walls and the roof.  He did it all by himself. And when it was all done, he stood back and he aid, \"How the hell did I ever do that?\" How the hell did we ever do this?  We did it! And if this isn\342\200\231t nice, what is?\n\nI got a letter from a sappy woman a while back - she knew I was sappy too, which is to say a lifelong Democrat. She was pregnant, and she wanted to know if I thought it was a mistake to bring a little baby into a world as troubled as this one is. And I replied, what made being alive almost worthwhile for me was the saints I met. They could be almost anywhere. By saints I meant people who behaved decently and honorably in societies which were so often obscene. Perhaps many of us here, regardless of our ages or power or wealth, can be saints for her child to meet.\n\nThere was one thing I forgot to say, and I promised I would say, ant that is, \"We love you. We really do.\"\n"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"speech.txt"

	.section	__DATA,__data
	.globl	_speech                         ## @speech
	.p2align	3
_speech:
	.quad	L_.str
	.quad	7577                            ## 0x1d99
	.quad	___speech
	.long	0                               ## 0x0
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"the"

L_.str.4:                               ## @.str.4
	.asciz	"r"

L_.str.6:                               ## @.str.6
	.asciz	"%s"

L_.str.7:                               ## @.str.7
	.asciz	"INFO: found (at least) %d occurrences of the word `%s'.\n"

.subsections_via_symbols
