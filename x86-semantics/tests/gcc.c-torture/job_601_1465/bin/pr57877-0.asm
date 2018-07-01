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
c:
	.quad	b
	.comm	e,4,4
f:
	.long	6
	.comm	g,4,4
	.comm	h,4,4
	.comm	d,2,2
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	L10
L11:
	movq	$d, -8(%rbp)
	movq	$e, -16(%rbp)
	movq	c(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, h(%rip)
	movl	h(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movswl	%ax, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	cmpq	-24(%rbp), %rax
	setb	%al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	g(%rip), %eax
	addl	$1, %eax
	movl	%eax, g(%rip)
L10:
	movl	g(%rip), %eax
	testl	%eax, %eax
	jle	L11
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	f(%rip), %eax
	cltq
	movl	$a, %esi
	movq	%rax, %rdi
	call	foo
	movl	e(%rip), %eax
	cmpl	$1, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
