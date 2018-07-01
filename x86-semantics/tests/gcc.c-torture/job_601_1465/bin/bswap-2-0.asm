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
partial_read_le32:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	movzbl	-15(%rbp), %edx
	andl	$127, %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-14(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-13(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
partial_read_be32:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	movzbl	-14(%rbp), %edx
	andl	$127, %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-15(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$127, %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
fake_read_le32:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movb	%al, -3(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -4(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-3(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-4(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
fake_read_be32:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movb	%al, -3(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	movzbl	-3(%rbp), %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-2(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-1(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
incorrect_read_le32:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movb	%al, -3(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -4(%rbp)
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-3(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-4(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
incorrect_read_be32:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movb	%al, -3(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -4(%rbp)
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
	movzbl	-4(%rbp), %eax
	movzbl	-3(%rbp), %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	-2(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-1(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$-125, -32(%rbp)
	movb	$-123, -31(%rbp)
	movb	$-121, -30(%rbp)
	movb	$-119, -29(%rbp)
	movb	$-125, -16(%rbp)
	movb	$-123, -15(%rbp)
	movb	$-121, -14(%rbp)
	movb	$-119, -13(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	partial_read_le32
	movl	%eax, -4(%rbp)
	cmpl	$-1987607165, -4(%rbp)
	jne	L42
	call	abort
L42:
	movb	$-125, -16(%rbp)
	movb	$-123, -15(%rbp)
	movb	$-121, -14(%rbp)
	movb	$-119, -13(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	partial_read_be32
	movl	%eax, -4(%rbp)
	cmpl	$-2088401015, -4(%rbp)
	jne	L43
	call	abort
L43:
	leaq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fake_read_le32
	movl	%eax, -4(%rbp)
	cmpl	$-1996388989, -4(%rbp)
	je	L44
	call	abort
L44:
	movb	$-121, -30(%rbp)
	leaq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fake_read_be32
	movl	%eax, -4(%rbp)
	cmpl	$-2088435319, -4(%rbp)
	je	L45
	call	abort
L45:
	movb	$-121, -30(%rbp)
	leaq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	incorrect_read_le32
	movl	%eax, -4(%rbp)
	cmpl	$-1987607165, -4(%rbp)
	je	L46
	call	abort
L46:
	movb	$-121, -30(%rbp)
	leaq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	incorrect_read_be32
	movl	%eax, -4(%rbp)
	cmpl	$-2088401015, -4(%rbp)
	je	L47
	call	abort
L47:
	movl	$0, %eax
	leave
	ret
