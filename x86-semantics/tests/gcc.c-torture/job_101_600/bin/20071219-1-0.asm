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
	.comm	p,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	L11
	call	abort
L11:
	cmpl	$0, -28(%rbp)
	je	L12
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
L12:
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$24, %eax
	jbe	L13
	movq	-24(%rbp), %rax
	movq	%rax, p(%rip)
	leave
	ret
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movl	$25, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	-8(%rbp), %eax
	movb	%al, -40(%rbp)
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	-8(%rbp), %eax
	movb	%al, -40(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movl	$25, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	-8(%rbp), %eax
	movb	%al, -40(%rbp)
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	-8(%rbp), %eax
	movb	%al, -40(%rbp)
	movq	p(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	24(%rax), %eax
	movb	%al, -40(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movl	$25, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movzbl	-8(%rbp), %eax
	movb	%al, -40(%rbp)
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	foo
	movq	p(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movzbl	-8(%rbp), %edx
	movb	%dl, 24(%rax)
	movq	p(%rip), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movzbl	-40(%rbp), %edx
	movb	%dl, 24(%rax)
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test1
	call	test2
	call	test3
	movl	$0, %eax
	popq	%rbp
	ret
