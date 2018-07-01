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
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,4,4
	.comm	f,12,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	nop
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L21
L11:
	jmp	L11
L21:
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	L12
L20:
	movl	$1, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	L13
L14:
	movl	-8(%rbp), %eax
	cltq
	movl	$1, f(,%rax,4)
	addl	$1, -8(%rbp)
L13:
	cmpl	$2, -8(%rbp)
	jle	L14
	jmp	L15
L19:
	cmpl	$0, -12(%rbp)
	je	L16
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L16
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L16
	movl	$1, %eax
	jmp	L17
L16:
	movl	$0, %eax
L17:
	movl	%eax, d(%rip)
	movl	$1, -12(%rbp)
	cmpl	$0, -4(%rbp)
	je	L18
	movl	e(%rip), %eax
	movl	%eax, a(%rip)
L18:
	addl	$1, -16(%rbp)
L15:
	cmpl	$9, -16(%rbp)
	jle	L19
	addl	$9, -4(%rbp)
L12:
	cmpl	$20, -4(%rbp)
	jle	L20
	movl	$0, %edi
	call	exit
