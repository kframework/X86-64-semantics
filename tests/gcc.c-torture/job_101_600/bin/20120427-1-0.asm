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
sreal_compare:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jle	L10
	movl	$1, %eax
	jmp	L11
L10:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	L12
	movl	$-1, %eax
	jmp	L11
L12:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jbe	L13
	movl	$1, %eax
	jmp	L11
L13:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setb	%al
	movzbl	%al, %eax
	negl	%eax
L11:
	popq	%rbp
	ret
a:
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L15
L21:
	movl	$0, -8(%rbp)
	jmp	L16
L20:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	L17
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	a(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	$a, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sreal_compare
	cmpl	$-1, %eax
	je	L17
	call	abort
L17:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L18
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	a(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	$a, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sreal_compare
	testl	%eax, %eax
	je	L18
	call	abort
L18:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	L19
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	a(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	$a, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sreal_compare
	cmpl	$1, %eax
	je	L19
	call	abort
L19:
	addl	$1, -8(%rbp)
L16:
	cmpl	$2, -8(%rbp)
	jle	L20
	addl	$1, -4(%rbp)
L15:
	cmpl	$3, -4(%rbp)
	jle	L21
	movl	$0, %eax
	leave
	ret
