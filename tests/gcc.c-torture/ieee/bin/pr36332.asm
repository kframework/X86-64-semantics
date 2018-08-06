foo:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fldt	LC0(%rip)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-1, %rax
	movl	$32766, %edx
	pushq	%rdx
	pushq	%rax
	call	foo
	addq	$16, %rsp
	testl	%eax, %eax
	je	L4
	call	abort
L4:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	4294967295
	.long	4294967295
	.long	32766
	.long	0
