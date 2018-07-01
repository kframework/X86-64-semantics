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
	.local	u1
	.comm	u1,80,64
	.local	u2
	.comm	u2,80,64
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	movl	%eax, -4(%rbp)
	cmpl	$0, -44(%rbp)
	jns	L10
	cmpl	$0, -4(%rbp)
	js	L10
	call	abort
L10:
	cmpl	$0, -44(%rbp)
	jne	L11
	cmpl	$0, -4(%rbp)
	je	L11
	call	abort
L11:
	cmpl	$0, -44(%rbp)
	jle	L9
	cmpl	$0, -4(%rbp)
	jg	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$0, -8(%rbp)
	jmp	L14
L31:
	movq	$0, -16(%rbp)
	jmp	L15
L30:
	movq	$0, -24(%rbp)
	jmp	L16
L29:
	movq	$u1, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	L17
L18:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$0, (%rax)
	addq	$1, -32(%rbp)
L17:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	L18
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	L19
L20:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$97, (%rax)
	addq	$1, -32(%rbp)
L19:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L20
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -32(%rbp)
	jmp	L21
L22:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$120, (%rax)
	addq	$1, -32(%rbp)
L21:
	cmpq	$7, -32(%rbp)
	jbe	L22
	movq	$u2, -48(%rbp)
	movq	$0, -32(%rbp)
	jmp	L23
L24:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	addq	$1, -32(%rbp)
L23:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	L24
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	jmp	L25
L26:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$97, (%rax)
	addq	$1, -32(%rbp)
L25:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L26
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -32(%rbp)
	jmp	L27
L28:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$120, (%rax)
	addq	$1, -32(%rbp)
L27:
	cmpq	$7, -32(%rbp)
	jbe	L28
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$97, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$97, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$-1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$98, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$99, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$-1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$99, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$98, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$98, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$-87, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$-1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$-87, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$98, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$-87, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$-86, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$-1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$-86, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$-87, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	test
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	test
	addq	$1, -24(%rbp)
L16:
	cmpq	$63, -24(%rbp)
	jbe	L29
	addq	$1, -16(%rbp)
L15:
	cmpq	$7, -16(%rbp)
	jbe	L30
	addq	$1, -8(%rbp)
L14:
	cmpq	$7, -8(%rbp)
	jbe	L31
	movl	$0, %edi
	call	exit
