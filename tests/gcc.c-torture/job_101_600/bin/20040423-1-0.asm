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
sub1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movl	-116(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	movq	%rsi, %r10
	movl	$0, %r11d
	movslq	%ecx, %rsi
	subq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movslq	%ecx, %rsi
	movq	%rsi, %r8
	movl	$0, %r9d
	movslq	%ecx, %rsi
	salq	$2, %rsi
	movq	%rsi, %rax
	movl	$0, %edx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %rdi
	andq	$-32, %rdi
	movq	%rdi, %r12
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, %r13
	cmpl	$2, -120(%rbp)
	jne	L21
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	%ecx, %eax
	sall	$2, %eax
	jmp	L23
L21:
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
L23:
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %esi
	movl	$20, %edi
	call	sub1
	cmpl	$264, %eax
	je	L25
	call	abort
L25:
	movl	$0, %eax
	popq	%rbp
	ret
