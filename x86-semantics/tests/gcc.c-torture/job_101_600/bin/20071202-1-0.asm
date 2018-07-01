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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movq	%rsi, -48(%rbp)
	movq	40(%rax), %rsi
	movq	%rsi, -40(%rbp)
	movq	48(%rax), %rsi
	movq	%rsi, -32(%rbp)
	movq	56(%rax), %rsi
	movq	%rsi, -24(%rbp)
	movl	64(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 64(%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	$6, -80(%rbp)
	movl	$12, -76(%rbp)
	movl	$1, -72(%rbp)
	movl	$2, -68(%rbp)
	movl	$3, -64(%rbp)
	movl	$4, -60(%rbp)
	movl	$5, -56(%rbp)
	movl	$6, -52(%rbp)
	movl	$7, -48(%rbp)
	movl	$8, -44(%rbp)
	movl	$9, -40(%rbp)
	movl	$10, -36(%rbp)
	movl	$11, -32(%rbp)
	movl	$12, -28(%rbp)
	movl	$13, -24(%rbp)
	movl	$14, -20(%rbp)
	movl	$15, -16(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	-80(%rbp), %eax
	cmpl	$12, %eax
	jne	L22
	movl	-76(%rbp), %eax
	cmpl	$6, %eax
	jne	L22
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
	movl	-48(%rbp), %eax
	cmpl	$7, %eax
	jne	L24
	movl	-44(%rbp), %eax
	cmpl	$8, %eax
	jne	L24
	movl	-40(%rbp), %eax
	cmpl	$9, %eax
	jne	L24
	movl	-36(%rbp), %eax
	cmpl	$10, %eax
	jne	L24
	movl	-32(%rbp), %eax
	cmpl	$11, %eax
	jne	L24
	movl	-28(%rbp), %eax
	cmpl	$12, %eax
	jne	L24
	movl	-24(%rbp), %eax
	cmpl	$13, %eax
	jne	L24
	movl	-20(%rbp), %eax
	cmpl	$14, %eax
	jne	L24
	movl	-16(%rbp), %eax
	cmpl	$15, %eax
	je	L25
L24:
	call	abort
L25:
	movl	$0, %eax
	leave
	ret
