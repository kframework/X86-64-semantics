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
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
f_le:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rdi, -120(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, -136(%rbp)
	movl	$0, -12(%rbp)
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jae	L30
	negq	-8(%rbp)
	notl	-12(%rbp)
L30:
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	imulq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	xorq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	addl	%edx, %eax
	leave
	ret
f_be:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -128(%rbp)
	movq	%rdi, -120(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, -136(%rbp)
	movl	$0, -12(%rbp)
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jae	L33
	negq	-8(%rbp)
	notl	-12(%rbp)
L33:
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	imulq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	xorq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	addl	%edx, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	$268435456, -32(%rbp)
	movl	$3758096384, %eax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movabsq	$1152921508364943360, %rax
	cmpq	%rax, %rdx
	jne	L36
	movl	$0, %ecx
	movl	$0, %ebx
	movabsq	$4294967296, %rcx
	movl	$0, %eax
	movl	$0, %edx
	movabsq	$4294967296, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	f_be
	cmpl	$-1, %eax
	je	L36
	call	abort
L36:
	movq	-32(%rbp), %rdx
	movabsq	$-2305843008945258496, %rax
	cmpq	%rax, %rdx
	jne	L37
	movl	$0, %ecx
	movl	$0, %ebx
	movabsq	$4294967296, %rcx
	movl	$0, %eax
	movl	$0, %edx
	movabsq	$4294967296, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	f_le
	cmpl	$-1, %eax
	je	L37
	call	abort
L37:
	movl	$0, %edi
	call	exit
