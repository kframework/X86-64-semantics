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
msum_i4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-112(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	20(%rax), %eax
	leal	1(%rax), %esi
	movq	-112(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L21
L22:
	movq	-112(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	20(%rax), %eax
	leal	1(%rax), %esi
	movq	-112(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movl	-20(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	movl	$0, -64(%rbp,%rax,4)
	addl	$1, -20(%rbp)
L21:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L22
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
L25:
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	L23
L24:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
	addq	$4, -16(%rbp)
L23:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	L24
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	addq	$4, -8(%rbp)
	movl	-64(%rbp), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	jne	L25
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	leaq	-160(%rbp), %rsi
	movl	$0, %eax
	movl	$12, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$265, -152(%rbp)
	movl	$1, -148(%rbp)
	movl	$1, -144(%rbp)
	movl	$3, -140(%rbp)
	leaq	-256(%rbp), %rsi
	movl	$0, %eax
	movl	$12, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	$266, -248(%rbp)
	movl	$1, -244(%rbp)
	movl	$1, -240(%rbp)
	movl	$3, -236(%rbp)
	movl	$3, -232(%rbp)
	movl	$1, -228(%rbp)
	movl	$3, -224(%rbp)
	movl	$2, -260(%rbp)
	leaq	-260(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	msum_i4
	movl	$0, %eax
	leave
	ret
