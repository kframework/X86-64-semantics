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
d:
	.quad	b
	.comm	g,4,4
	.comm	h,4,4
	.comm	i,4,4
	.comm	e,1,1
	.comm	f,1,1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L10
L16:
	movl	$0, a(%rip)
	jmp	L11
L14:
	jmp	L12
L13:
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L12:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L13
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L11:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L14
	movl	i(%rip), %eax
	testl	%eax, %eax
	je	L10
	jmp	L15
L10:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L16
L15:
	movl	c(%rip), %eax
	movb	%al, -1(%rbp)
	movb	$-1, -2(%rbp)
	movsbl	-1(%rbp), %edx
	movl	h(%rip), %eax
	sarx	%eax, %edx, %eax
	movl	%eax, g(%rip)
	movl	g(%rip), %eax
	movb	%al, -3(%rbp)
	cmpb	$0, -3(%rbp)
	je	L17
	movsbl	-2(%rbp), %eax
	movsbl	-3(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	jmp	L18
L17:
	movzbl	-2(%rbp), %eax
L18:
	movb	%al, f(%rip)
	movzbl	f(%rip), %eax
	movb	%al, e(%rip)
	movq	d(%rip), %rax
	movzbl	e(%rip), %edx
	movzbl	%dl, %edx
	movl	%edx, (%rax)
	movl	b(%rip), %eax
	cmpl	$255, %eax
	je	L19
	call	abort
L19:
	movl	$0, %eax
	leave
	ret
