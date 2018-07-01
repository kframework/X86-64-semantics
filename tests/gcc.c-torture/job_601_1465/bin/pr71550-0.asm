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
	.long	3
	.comm	b,4,4
	.comm	c,4,4
	.comm	f,4,4
	.comm	g,4,4
	.comm	h,4,4
	.comm	d,4,4
	.comm	e,8,8
LC0:
	.string	"%d%d"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L10
L19:
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	L11
	cmpl	$0, -4(%rbp)
	je	L11
	movl	f(%rip), %edx
	movl	c(%rip), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
L11:
	movl	$0, -4(%rbp)
	jmp	L12
L16:
	movl	g(%rip), %eax
	testl	%eax, %eax
	je	L13
	jmp	L14
L15:
	movq	e(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, b(%rip)
	movl	d(%rip), %eax
	addl	$1, %eax
	movl	%eax, d(%rip)
L14:
	movl	d(%rip), %eax
	cmpl	$9, %eax
	jbe	L15
L13:
	addl	$1, -4(%rbp)
L12:
	cmpl	$1, -4(%rbp)
	jle	L16
	movl	$0, -4(%rbp)
	jmp	L17
L18:
	addl	$1, -4(%rbp)
L17:
	cmpl	$0, -4(%rbp)
	jle	L18
	movl	a(%rip), %eax
	subl	$1, %eax
	movl	%eax, a(%rip)
L10:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L19
	movl	$0, %edi
	call	exit
