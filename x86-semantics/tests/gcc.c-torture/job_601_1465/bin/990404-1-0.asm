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
x:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
L16:
	movl	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	L10
L12:
	movl	-8(%rbp), %eax
	cltq
	movl	x(,%rax,4), %eax
	cmpl	-16(%rbp), %eax
	jle	L11
	movl	-8(%rbp), %eax
	cltq
	movl	x(,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
L11:
	addl	$1, -8(%rbp)
L10:
	cmpl	$9, -8(%rbp)
	jle	L12
	cmpl	$0, -16(%rbp)
	jne	L13
	nop
	movl	$0, %edi
	call	exit
L13:
	movl	-12(%rbp), %eax
	cltq
	movl	$0, x(,%rax,4)
	addl	$1, -4(%rbp)
	cmpl	$10, -4(%rbp)
	jle	L15
	call	abort
L15:
	jmp	L16
