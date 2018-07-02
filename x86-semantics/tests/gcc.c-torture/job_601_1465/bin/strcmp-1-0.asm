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
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
	.local	u1
	.comm	u1,96,64
	.local	u2
	.comm	u2,96,64
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	movl	%eax, -4(%rbp)
	cmpl	$0, -36(%rbp)
	jns	L40
	cmpl	$0, -4(%rbp)
	js	L40
	call	abort
L40:
	cmpl	$0, -36(%rbp)
	jne	L41
	cmpl	$0, -4(%rbp)
	je	L41
	call	abort
L41:
	cmpl	$0, -36(%rbp)
	jle	L39
	cmpl	$0, -4(%rbp)
	jg	L39
	call	abort
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$0, -8(%rbp)
	jmp	L44
L61:
	movq	$0, -16(%rbp)
	jmp	L45
L60:
	movq	$0, -24(%rbp)
	jmp	L46
L59:
	movq	$u1, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	L47
L48:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$0, (%rax)
	addq	$1, -32(%rbp)
L47:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	L48
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	L49
L50:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$97, (%rax)
	addq	$1, -32(%rbp)
L49:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L50
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -32(%rbp)
	jmp	L51
L52:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$120, (%rax)
	addq	$1, -32(%rbp)
L51:
	cmpq	$9, -32(%rbp)
	jbe	L52
	movq	$u2, -48(%rbp)
	movq	$0, -32(%rbp)
	jmp	L53
L54:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	addq	$1, -32(%rbp)
L53:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	L54
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	jmp	L55
L56:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$97, (%rax)
	addq	$1, -32(%rbp)
L55:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L56
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -32(%rbp)
	jmp	L57
L58:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$120, (%rax)
	addq	$1, -32(%rbp)
L57:
	cmpq	$9, -32(%rbp)
	jbe	L58
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$97, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movb	$97, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
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
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	addq	$1, -24(%rbp)
L46:
	cmpq	$63, -24(%rbp)
	jbe	L59
	addq	$1, -16(%rbp)
L45:
	cmpq	$7, -16(%rbp)
	jbe	L60
	addq	$1, -8(%rbp)
L44:
	cmpq	$7, -8(%rbp)
	jbe	L61
	movl	$0, %edi
	call	exit
