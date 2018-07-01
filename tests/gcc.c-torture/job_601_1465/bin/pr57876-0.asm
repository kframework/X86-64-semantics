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
	.comm	a,4,4
b:
	.long	1
	.comm	c,4,4
d:
	.quad	c
	.comm	f,4,4
	.comm	g,8,8
	.comm	h,4,4
	.comm	j,4,4
	.local	e
	.comm	e,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movl	b(%rip), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	$0, f(%rip)
	jmp	L11
L12:
	movq	$e, -24(%rbp)
	movq	d(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, j(%rip)
	movl	a(%rip), %edx
	movl	j(%rip), %eax
	imull	%edx, %eax
	subl	$1, %eax
	movl	%eax, h(%rip)
	movl	h(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	cmpq	-16(%rbp), %rax
	setl	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-28(%rbp), %rax
	movq	%rax, g(%rip)
	movl	f(%rip), %eax
	addl	$1, %eax
	movl	%eax, f(%rip)
L11:
	movl	f(%rip), %eax
	cmpl	$7, %eax
	jle	L12
	addl	$1, -4(%rbp)
L10:
	cmpl	$1, -4(%rbp)
	jle	L13
	movl	e(%rip), %eax
	cmpl	$1, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
