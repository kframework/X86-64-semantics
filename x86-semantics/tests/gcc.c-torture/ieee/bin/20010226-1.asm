dfrom:
	.long	3435973837
	.long	2362232012
	.long	16383
	.long	0
	.comm	m1,16,16
	.comm	m2,16,16
	.comm	mant_long,8,8
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	fldt	dfrom(%rip)
	fldt	LC0(%rip)
	fdivrp	%st, %st(1)
	fstpt	m1(%rip)
	fldt	m1(%rip)
	fldt	LC1(%rip)
	fmulp	%st, %st(1)
	fstpt	m2(%rip)
	fldt	m2(%rip)
	fldt	LC2(%rip)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnb	L2
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	jmp	L3
L2:
	fldt	LC2(%rip)
	fsubrp	%st, %st(1)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L3:
	movl	%eax, %eax
	movq	%rax, mant_long(%rip)
	movq	mant_long(%rip), %rdx
	movl	$2362232012, %eax
	cmpq	%rax, %rdx
	jne	L4
	movl	$0, %eax
	jmp	L6
L4:
	call	abort
L6:
	leave
	ret
LC0:
	.long	0
	.long	2147483648
	.long	16384
	.long	0
LC1:
	.long	0
	.long	2147483648
	.long	16415
	.long	0
LC2:
	.long	0
	.long	2147483648
	.long	16446
	.long	0
