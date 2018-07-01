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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$10, -20(%rbp)
	jne	L10
	cmpl	$9, -24(%rbp)
	jne	L10
	cmpl	$8, -28(%rbp)
	je	L11
L10:
	call	abort
L11:
	movl	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movl	$3, -8(%rbp)
	movl	$4, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -72(%rbp)
	jne	L14
	movl	$l.2277, %eax
	jmp	L21
L14:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	jmp	L16
L17:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	subq	$4, -16(%rbp)
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	foo
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-56(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	nop
L16:
	jmp	*%rax
L18:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$4, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$23, (%rax)
L19:
	movq	-24(%rbp), %rax
	jmp	L16
L20:
	movl	$0, %eax
L21:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$0, %esi
	movl	$0, %edi
	call	bar
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$7, -64(%rbp)
	movl	$8, -60(%rbp)
	movl	$9, -56(%rbp)
	movl	$10, -52(%rbp)
	movl	$11, -48(%rbp)
	movl	$12, -44(%rbp)
	leaq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bar
	testq	%rax, %rax
	jne	L23
	movl	-64(%rbp), %eax
	cmpl	$4, %eax
	jne	L23
	movl	-60(%rbp), %eax
	cmpl	$3, %eax
	jne	L23
	movl	-56(%rbp), %eax
	cmpl	$2, %eax
	jne	L23
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	jne	L23
	movl	-48(%rbp), %eax
	cmpl	$11, %eax
	jne	L23
	movl	-44(%rbp), %eax
	cmpl	$12, %eax
	je	L24
L23:
	call	abort
L24:
	movl	$0, %eax
	leave
	ret
l.2277:
	.quad	L19
	.quad	L19
	.quad	L17
	.quad	L18
	.quad	L20
