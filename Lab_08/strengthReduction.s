	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	L_MAX$non_lazy_ptr-L0$pb(%eax), %esi
	cmpl	$0, (%esi)
	jle	LBB0_3
## BB#1:
	xorl	%edi, %edi
	leal	L_.str-L0$pb(%eax), %eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB0_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movl	%edi, 4(%esp)
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	calll	_printf
	incl	%ebx
	addl	$14, %edi
	cmpl	(%esi), %ebx
	jl	LBB0_2
LBB0_3:                                 ## %._crit_edge
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.comm	_w,4,2                  ## @w
	.comm	_MAX,4,2                ## @MAX
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L_MAX$non_lazy_ptr:
	.indirect_symbol	_MAX
	.long	0

.subsections_via_symbols
