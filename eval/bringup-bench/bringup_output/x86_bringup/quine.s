	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
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
	leaq	L_.str(%rip), %rdi
	callq	_libmin_puts
	callq	_libmin_success
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"#include \"libmin.h\"\n#define B(x)int main(){libmin_puts(\"#include \\\"libmin.h\\\"\\n#define B(x)\"x\"\\n#define X(s)S(s)\\n#define S(s)#s\\nB(X(B(x)))\\n\");libmin_success();}\n#define X(s)S(s)\n#define S(s)#s\nB(X(B(x)))\n"

.subsections_via_symbols
