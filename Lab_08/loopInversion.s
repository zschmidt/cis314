	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_down
	.align	4, 0x90
_down:                                  ## @down
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	movl	(%ecx), %eax
	movl	$127, %edx
	.align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	addl	(%ecx,%edx,4), %eax
	decl	%edx
	jne	LBB0_1
## BB#2:
	popl	%ebp
	retl


.subsections_via_symbols
