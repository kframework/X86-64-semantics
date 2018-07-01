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
	.comm	a,1,1
	.comm	h,1,1
	.comm	b,4,4
	.comm	d,4,4
	.comm	e,4,4
	.comm	g,4,4
	.comm	j,4,4
	.comm	k,4,4
	.comm	c,4,4
	.comm	i,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movzwl	i(%rip), %eax
	xorl	$1, %eax
	movw	%ax, i(%rip)
	movzwl	i(%rip), %eax
	cwtl
	movl	%eax, -4(%rbp)
	movl	$0, b(%rip)
	jmp	L10
L20:
	movl	-4(%rbp), %eax
	movb	%al, -5(%rbp)
	movl	k(%rip), %eax
	movl	%eax, g(%rip)
	movl	j(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L12
L11:
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, j(%rip)
	movzbl	a(%rip), %eax
	cmpb	-5(%rbp), %al
	je	L14
	jmp	L15
L16:
	movl	d(%rip), %eax
	addl	$1, %eax
	movl	%eax, d(%rip)
L15:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L16
	jmp	L17
L14:
	movq	$h, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	jmp	L18
L19:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L18:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L19
L17:
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L10:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L20
	movzbl	h(%rip), %eax
	testb	%al, %al
	je	L21
	call	abort
L21:
	movl	$0, %eax
	leave
	ret
