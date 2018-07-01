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
blockvector_for_pc_sect:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rax
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %r12
	movl	$0, %ebx
	movq	-40(%rbp), %rdx
	movl	(%rdx), %r13d
	jmp	L21
L23:
	movl	%r13d, %edx
	subl	%ebx, %edx
	addl	$1, %edx
	sarl	%edx
	movl	%edx, %r14d
	leal	(%rbx,%r14), %ecx
	movq	-40(%rbp), %rdx
	movslq	%ecx, %rcx
	movq	8(%rdx,%rcx,8), %r12
	movq	(%r12), %rdx
	cmpq	%rax, %rdx
	ja	L22
	addl	%r14d, %ebx
	jmp	L21
L22:
	leal	(%rbx,%r14), %r13d
L21:
	movl	%r13d, %edx
	subl	%ebx, %edx
	cmpl	$1, %edx
	jg	L23
	jmp	L24
L27:
	movq	-40(%rbp), %rdx
	movslq	%ebx, %rcx
	movq	8(%rdx,%rcx,8), %r12
	movq	8(%r12), %rdx
	cmpq	%rax, %rdx
	jbe	L25
	movq	-40(%rbp), %rax
	jmp	L26
L25:
	subl	$1, %ebx
L24:
	testl	%ebx, %ebx
	jns	L27
	movl	$0, %eax
L26:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	leaq	-64(%rbp), %rsi
	movl	$0, %eax
	movl	$7, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	$65536, -56(%rbp)
	movb	$1, -32(%rbp)
	movl	$20, -28(%rbp)
	leaq	-128(%rbp), %rsi
	movl	$0, %eax
	movl	$7, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	$65536, -128(%rbp)
	movq	$131072, -120(%rbp)
	movb	$1, -96(%rbp)
	movl	$20, -92(%rbp)
	movl	$2, -160(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$1280, %edi
	call	blockvector_for_pc_sect
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	leave
	ret
