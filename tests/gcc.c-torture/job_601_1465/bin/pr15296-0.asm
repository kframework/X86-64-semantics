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
LC0:
	.string	""
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
L10:
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	L11
	jmp	L10
L11:
	cmpq	$0, -80(%rbp)
	jne	L12
	jmp	L13
L12:
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	L14
	jmp	L13
L14:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$-1, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L15
	movq	-56(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	g
L15:
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	L9
L13:
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L17
	movq	-56(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	g
L17:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L18
	movq	-56(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	g
L18:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
L16:
L9:
	leave
	ret
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	abort
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$111, -32(%rbp)
	movq	$222, -24(%rbp)
	movq	$333, -16(%rbp)
	movq	$444, -8(%rbp)
	movq	$0, -80(%rbp)
	movq	$555, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$999, -56(%rbp)
	movq	$777, -48(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$10000, %r8d
	movl	$20000, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	f
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L21
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	L21
	movq	-56(%rbp), %rax
	cmpq	$999, %rax
	jne	L21
	movq	-48(%rbp), %rax
	cmpq	$777, %rax
	jne	L21
	movq	-32(%rbp), %rax
	cmpq	$111, %rax
	jne	L21
	movq	-24(%rbp), %rax
	cmpq	$222, %rax
	jne	L21
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	L21
	movq	-8(%rbp), %rax
	cmpq	$444, %rax
	je	L22
L21:
	call	abort
L22:
	movl	$0, %edi
	call	exit
