strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	movl	16(%rbp,%rax,4), %eax
	movl	%eax, -48(%rbp)
	fildl	-48(%rbp)
	fldt	80(%rbp)
	faddp	%st, %st(1)
	fstpt	80(%rbp)
	addl	$1, -4(%rbp)
L10:
	cmpl	$15, -4(%rbp)
	jle	L11
	movq	80(%rbp), %rax
	movl	88(%rbp), %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	fldt	-48(%rbp)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	jmp	L14
L15:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	addl	$1, -4(%rbp)
L14:
	cmpl	$15, -4(%rbp)
	jle	L15
	movabsq	$-7187745005283311616, %rax
	movl	$16396, %edx
	pushq	%rdx
	pushq	%rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movl	$1, %edi
	call	f
	addq	$80, %rsp
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	jp	L20
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L19
	jmp	L18
L20:
	fstp	%st(0)
L18:
	call	abort
L19:
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	2657091584
	.long	16396
	.long	0
