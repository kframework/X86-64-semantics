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
	.comm	d,4,4
	.comm	f,4,4
	.comm	c,1,1
e:
	.quad	d
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-1, -4(%rbp)
	movq	e(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movb	$4, c(%rip)
	jmp	L10
L11:
	movq	e(%rip), %rax
	movl	$1, (%rax)
	movzbl	c(%rip), %eax
	addl	$1, %eax
	movb	%al, c(%rip)
L10:
	movzbl	c(%rip), %eax
	cmpb	$13, %al
	jg	L11
	movl	a(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, f(%rip)
	movq	e(%rip), %rax
	movq	e(%rip), %rdx
	movl	(%rdx), %ecx
	movl	f(%rip), %edx
	xorl	%ecx, %edx
	movl	%edx, (%rax)
	movl	d(%rip), %eax
	notl	%eax
	movl	%eax, -8(%rbp)
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	-8(%rbp), %eax
	movl	%eax, b(%rip)
L12:
	cmpl	$0, -8(%rbp)
	je	L13
	movl	$0, %edi
	call	exit
L13:
	call	abort
