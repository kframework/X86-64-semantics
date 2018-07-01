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
	.comm	c,4,4
	.comm	d,4,4
	.comm	b,16,16
	.comm	g0,8,8
	.comm	g1,8,8
store:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, g0(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, g1(%rip)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movl	a(%rip), %eax
	cltq
	movq	%rax, %rsi
	sarq	$63, %rax
	movq	%rax, %rdi
	movq	b(%rip), %rax
	movq	b+8(%rip), %rdx
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, b(%rip)
	movq	%rdx, b+8(%rip)
	movl	d(%rip), %eax
	cmpl	$84347, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, c(%rip)
	movq	b(%rip), %rax
	movq	b+8(%rip), %rdx
	movl	c(%rip), %esi
	movslq	%esi, %rsi
	movq	%rsi, %rcx
	sarq	$63, %rsi
	movq	%rsi, %rbx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movq	%rsi, %rdi
	movq	%r9, %rsi
	call	__udivti3
	movq	%rax, b(%rip)
	movq	%rdx, b+8(%rip)
	movq	b(%rip), %rax
	movq	b+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movq	g0(%rip), %rax
	testq	%rax, %rax
	jne	L12
	movq	g1(%rip), %rax
	testq	%rax, %rax
	je	L13
L12:
	call	abort
L13:
	movl	$0, %eax
	popq	%rbp
	ret
