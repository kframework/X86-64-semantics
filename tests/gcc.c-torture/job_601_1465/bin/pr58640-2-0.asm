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
	.comm	a,80,64
	.comm	b,4,4
	.comm	c,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -16(%rbp)
	movl	$1, a+48(%rip)
	movl	$0, -8(%rbp)
	jmp	L10
L21:
	movl	$0, -4(%rbp)
	jmp	L11
L20:
	movl	$0, -12(%rbp)
	jmp	L12
L17:
	movl	a+48(%rip), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
	xorl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	L13
	movl	$0, %eax
	jmp	L14
L13:
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L15
	jmp	L16
L15:
	addl	$1, -12(%rbp)
L12:
	cmpl	$1, -12(%rbp)
	jle	L17
L16:
	movl	$0, c(%rip)
	jmp	L18
L19:
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$9, %eax
	cltq
	movl	a(,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, a(,%rax,4)
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L18:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jle	L19
	addl	$1, -4(%rbp)
L11:
	cmpl	$1, -4(%rbp)
	jle	L20
	addl	$1, -8(%rbp)
L10:
	cmpl	$2, -8(%rbp)
	jle	L21
	movl	$0, %eax
L14:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L23
	call	abort
L23:
	movl	$0, %eax
	popq	%rbp
	ret
