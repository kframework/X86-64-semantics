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
	.comm	t,128,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$t+2, -8(%rbp)
	jne	L10
	movq	-32(%rbp), %rax
	cmpq	$t+69, %rax
	jne	L10
	movl	-24(%rbp), %eax
	cmpl	$27, %eax
	jne	L10
	cmpq	$t+17, -16(%rbp)
	jne	L10
	cmpq	$t+81, -40(%rbp)
	je	L11
L10:
	call	abort
L11:
	movl	$29, %eax
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	64(%rax), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$t+69, -16(%rbp)
	movl	$27, -8(%rbp)
	subq	$8, %rsp
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	pushq	$t
	movl	$17, %r9d
	movq	%rax, %rcx
	movq	%rdx, %r8
	movl	$0, %edx
	movl	$0, %esi
	movl	$t+2, %edi
	call	bar
	addq	$16, %rsp
	cmpl	$29, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
