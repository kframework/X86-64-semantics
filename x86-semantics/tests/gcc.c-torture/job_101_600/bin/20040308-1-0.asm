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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsp, %rcx
	movq	%rcx, -80(%rbp)
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	%rdi, %rbx
	movl	$0, %esi
	movslq	%ecx, %rsi
	subq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movslq	%ecx, %rsi
	movq	%rsi, %r10
	movl	$0, %r11d
	movslq	%ecx, %rsi
	salq	$2, %rsi
	addq	$1, %rsi
	movslq	%ecx, %rdi
	salq	$2, %rdi
	movq	%rdi, %rax
	movl	$0, %edx
	addq	$5, %rax
	adcq	$0, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %rbx
	andq	$-32, %rbx
	movq	%rbx, %r14
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, %r15
	movslq	%ecx, %rax
	salq	$2, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%r8, %rax
	movq	%r9, %rdx
	addq	$5, %rax
	adcq	$0, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$31, %rax
	adcq	$0, %rdx
	movq	%rax, %rbx
	andq	$-32, %rbx
	movq	%rbx, %r12
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, %r13
	movslq	%ecx, %rax
	addq	$2, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rsi)
	movq	-80(%rbp), %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
