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
	.comm	b,2,2
d:
	.value	5
	.comm	h,2,2
	.comm	c,1,1
	.comm	e,4,4
f:
	.long	4
	.comm	g,4,4
	.comm	j,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L21:
	movl	$0, g(%rip)
	jmp	L11
L20:
	movl	$0, -4(%rbp)
	jmp	L12
L16:
	jmp	L13
L15:
	movzwl	b(%rip), %eax
	cwtl
	cltq
	movzbl	c(%rax), %eax
	testb	%al, %al
	je	L13
	jmp	L14
L13:
	movzwl	d(%rip), %eax
	testw	%ax, %ax
	jle	L15
L14:
	addl	$1, -4(%rbp)
L12:
	cmpl	$2, -4(%rbp)
	jle	L16
L17:
	movl	j(%rip), %eax
	testl	%eax, %eax
	je	L18
	jmp	L19
L18:
	movl	g(%rip), %eax
	addl	$1, %eax
	movl	%eax, g(%rip)
L11:
	movl	g(%rip), %eax
	cmpl	$32, %eax
	jle	L20
L19:
	movzbl	a(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, f(%rip)
L10:
	movl	f(%rip), %eax
	testl	%eax, %eax
	jne	L21
	movl	$0, e(%rip)
	jmp	L22
L25:
	movzwl	d(%rip), %eax
	addl	$1, %eax
	movw	%ax, d(%rip)
	nop
	movzwl	h(%rip), %eax
	testw	%ax, %ax
	je	L27
	jmp	L17
L27:
	movl	$0, e(%rip)
L22:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L25
	movl	$0, %eax
	popq	%rbp
	ret
