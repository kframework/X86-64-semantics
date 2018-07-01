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
	.byte	6
	.comm	b,4,4
	.comm	c,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movzbl	a(%rip), %eax
	cmpb	$1, %al
	ja	L10
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	jmp	L11
L10:
	movl	$1, %eax
L11:
	movl	%eax, -12(%rbp)
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L12
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	andl	$6, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	c(%rip), %eax
	notl	%eax
	movl	%eax, -8(%rbp)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L14
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L15
L14:
	movl	$1, %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movl	%eax, -24(%rbp)
	movzbl	a(%rip), %eax
	notl	%eax
	movb	%al, -25(%rbp)
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L17
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
L17:
	cmpb	$0, -25(%rbp)
	je	L18
	cmpl	$0, -24(%rbp)
	je	L18
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
L18:
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movzbl	-25(%rbp), %eax
	imull	%edx, %eax
	leal	1(%rax), %edx
	movl	c(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	L19
	cmpl	$0, -20(%rbp)
	jne	L20
	cmpl	$0, -12(%rbp)
	je	L21
L20:
	movl	$1, %eax
	jmp	L22
L21:
	movl	$0, %eax
L22:
	cmpl	-8(%rbp), %eax
	je	L19
	movl	$1, %eax
	jmp	L23
L19:
	movl	$0, %eax
L23:
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	$0, %eax
	popq	%rbp
	ret
