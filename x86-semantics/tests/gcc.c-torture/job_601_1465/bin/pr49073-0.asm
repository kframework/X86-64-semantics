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
a:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.comm	c,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -12(%rbp)
	movl	$1, -4(%rbp)
	movb	$0, -5(%rbp)
L12:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, -12(%rbp)
	cmpb	$0, -5(%rbp)
	je	L10
	cmpl	$4, -12(%rbp)
	jne	L10
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
	jmp	L11
L10:
	addl	$1, -4(%rbp)
	cmpl	$3, -12(%rbp)
	sete	%al
	movb	%al, -5(%rbp)
	cmpl	$6, -12(%rbp)
	jle	L12
L11:
	movl	c(%rip), %eax
	cmpl	$1, %eax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
