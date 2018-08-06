.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movabsq	$9218868437227405311, %rax
	movq	%rax, -24(%rbp)
	fldl	-24(%rbp)
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L4
	fldt	-16(%rbp)
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L5
L4:
	call	abort
L5:
	movl	$0, %edi
	call	exit
LC1:
	.long	4294965248
	.long	4294967295
	.long	17406
	.long	0
