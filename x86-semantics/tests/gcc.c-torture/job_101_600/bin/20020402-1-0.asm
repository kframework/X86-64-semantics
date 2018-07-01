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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$30, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$5, -20(%rbp)
	movl	$-1, -12(%rbp)
	movl	$-1, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L21
L23:
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	-16(%rbp), %eax
	jle	L22
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
L22:
	addl	$1, -4(%rbp)
L21:
	cmpl	$1, -4(%rbp)
	jle	L23
	movl	$2, -4(%rbp)
	jmp	L24
L29:
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	-16(%rbp), %eax
	jge	L25
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %edx
	movl	-12(%rbp), %eax
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	movl	$0, -12(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$1, -8(%rbp)
	jmp	L26
L28:
	movl	-8(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	-16(%rbp), %eax
	jle	L27
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
L27:
	addl	$1, -8(%rbp)
L26:
	cmpl	$1, -8(%rbp)
	jle	L28
L25:
	addl	$1, -4(%rbp)
L24:
	cmpl	$3, -4(%rbp)
	jle	L29
	movl	-48(%rbp), %eax
	cmpl	$5, %eax
	jne	L30
	movl	-44(%rbp), %eax
	cmpl	$2, %eax
	je	L31
L30:
	call	abort
L31:
	movl	$0, %edi
	call	exit
