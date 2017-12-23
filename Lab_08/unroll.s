	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_sum
	.align	4, 0x90
_sum:                                   ## @sum
## BB#0:                                ## %min.iters.checked
	pushl	%ebp
	movl	%esp, %ebp
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	8(%ebp), %ecx
	pxor	%xmm1, %xmm1
	.align	4, 0x90
LBB0_1:                                 ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movdqu	(%ecx,%eax,4), %xmm2
	movdqu	16(%ecx,%eax,4), %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movdqu	32(%ecx,%eax,4), %xmm0
	movdqu	48(%ecx,%eax,4), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	movdqu	64(%ecx,%eax,4), %xmm2
	movdqu	80(%ecx,%eax,4), %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movdqu	96(%ecx,%eax,4), %xmm0
	movdqu	112(%ecx,%eax,4), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addl	$32, %eax
	cmpl	$256, %eax              ## imm = 0x100
	jne	LBB0_1
## BB#2:                                ## %middle.block
	paddd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      ## xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	popl	%ebp
	retl


.subsections_via_symbols
