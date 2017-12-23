	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_func1
	.align	4, 0x90
_func1:                                 ## @func1
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	_counter-L0$pb(%eax), %ecx
	leal	4(%ecx), %edx
	movl	%edx, _counter-L0$pb(%eax)
	leal	6(,%ecx,4), %eax
	popl	%ebp
	retl

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$20, %esp
	calll	L1$pb
L1$pb:
	popl	%esi
	calll	_func1
	movl	_counter-L1$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L_.str-L1$pb(%esi), %eax
	movl	%eax, (%esp)
	calll	_printf
	xorl	%eax, %eax
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	retl

	.globl	_counter                ## @counter
.zerofill __DATA,__common,_counter,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Counter is %ld\n"


.subsections_via_symbols
