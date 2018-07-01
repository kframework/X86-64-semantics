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
epic_init_ring:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L21
L22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	addl	$6, %eax
	addl	%eax, %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, 8(%rax,%rdx,4)
	addl	$1, -4(%rbp)
L21:
	cmpl	$4, -4(%rbp)
	jle	L22
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	$10, (%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	$12, -32(%rbp)
	movl	$14, -28(%rbp)
	movl	$16, -24(%rbp)
	movl	$18, -20(%rbp)
	movl	$10, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L24
L25:
	movl	-4(%rbp), %eax
	cltq
	movl	$0, -96(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	movl	$5, -56(%rbp,%rax,4)
	addl	$1, -4(%rbp)
L24:
	cmpl	$4, -4(%rbp)
	jle	L25
	leaq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	epic_init_ring
	movl	$0, -4(%rbp)
	jmp	L26
L29:
	movl	-4(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	L27
	call	abort
L27:
	movl	-4(%rbp), %eax
	cltq
	movl	-56(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	L28
	call	abort
L28:
	addl	$1, -4(%rbp)
L26:
	cmpl	$4, -4(%rbp)
	jle	L29
	movl	$0, %eax
	leave
	ret
