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
inet_check_attr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	jmp	L21
L25:
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L22
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	subq	$4, %rax
	cmpq	$3, %rax
	ja	L23
	movl	$-22, %eax
	jmp	L24
L23:
	cmpl	$9, -4(%rbp)
	je	L22
	cmpl	$8, -4(%rbp)
	je	L22
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, (%rax)
L22:
	addl	$1, -4(%rbp)
L21:
	cmpl	$14, -4(%rbp)
	jle	L25
	movl	$0, %eax
L24:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	$-128, %rsp
	movw	$12, -16(%rbp)
	movw	$0, -14(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	L27
L28:
	movl	-4(%rbp), %eax
	cltq
	leaq	-16(%rbp), %rdx
	movq	%rdx, -128(%rbp,%rax,8)
	addl	$1, -4(%rbp)
L27:
	cmpl	$13, -4(%rbp)
	jle	L28
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	inet_check_attr
	testl	%eax, %eax
	je	L29
	call	abort
L29:
	movl	$0, -4(%rbp)
	jmp	L30
L34:
	movl	-4(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rdx
	cmpl	$7, -4(%rbp)
	je	L31
	cmpl	$8, -4(%rbp)
	je	L31
	movl	$1, %eax
	jmp	L32
L31:
	movl	$0, %eax
L32:
	leaq	-16(%rbp), %rcx
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	je	L33
	call	abort
L33:
	addl	$1, -4(%rbp)
L30:
	cmpl	$13, -4(%rbp)
	jle	L34
	movl	$0, -4(%rbp)
	jmp	L35
L36:
	movl	-4(%rbp), %eax
	cltq
	leaq	-16(%rbp), %rdx
	movq	%rdx, -128(%rbp,%rax,8)
	addl	$1, -4(%rbp)
L35:
	cmpl	$13, -4(%rbp)
	jle	L36
	movq	$0, -120(%rbp)
	movzwl	-12(%rbp), %eax
	subl	$8, %eax
	movw	%ax, -12(%rbp)
	leaq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	inet_check_attr
	cmpl	$-22, %eax
	je	L37
	call	abort
L37:
	movl	$0, -4(%rbp)
	jmp	L38
L42:
	cmpl	$1, -4(%rbp)
	jne	L39
	movl	-4(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	L39
	call	abort
L39:
	cmpl	$1, -4(%rbp)
	je	L40
	cmpl	$5, -4(%rbp)
	jg	L40
	movl	-4(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rax
	leaq	-16(%rbp), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rax
	je	L40
	call	abort
L40:
	cmpl	$5, -4(%rbp)
	jle	L41
	movl	-4(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rdx
	leaq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	L41
	call	abort
L41:
	addl	$1, -4(%rbp)
L38:
	cmpl	$13, -4(%rbp)
	jle	L42
	movl	$0, %eax
	leave
	ret
