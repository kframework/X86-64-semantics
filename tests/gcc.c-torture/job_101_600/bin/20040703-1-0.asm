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
num_positive:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$32, -36(%rbp)
	jbe	L40
	subl	$32, -36(%rbp)
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	L41
L40:
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
L41:
	popq	%rbx
	popq	%rbp
	ret
num_trim:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$32, -36(%rbp)
	jbe	L43
	subl	$32, -36(%rbp)
	cmpl	$31, -36(%rbp)
	ja	L45
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -32(%rbp)
	jmp	L45
L43:
	cmpl	$31, -36(%rbp)
	ja	L46
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -28(%rbp)
L46:
	movl	$0, -32(%rbp)
L45:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	popq	%rbx
	popq	%rbp
	ret
num_rshift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_positive
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	L49
	cmpl	$0, -8(%rbp)
	je	L50
L49:
	movl	$0, -4(%rbp)
	jmp	L51
L50:
	movl	$-1, -4(%rbp)
L51:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	L52
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	L53
L52:
	cmpl	$31, -36(%rbp)
	ja	L54
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	-4(%rbp), %ecx
	shlx	%eax, %ecx, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	jmp	L55
L54:
	cmpl	$63, -36(%rbp)
	ja	L55
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$32, %eax
	movl	-4(%rbp), %ecx
	shlx	%eax, %ecx, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
L55:
	cmpl	$31, -40(%rbp)
	jbe	L56
	subl	$32, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
L56:
	cmpl	$0, -40(%rbp)
	je	L53
	movl	-28(%rbp), %edx
	movl	-40(%rbp), %eax
	shrx	%eax, %edx, %ecx
	movl	-32(%rbp), %edx
	movl	$32, %eax
	subl	-40(%rbp), %eax
	shlx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %eax
	shrx	%eax, %edx, %ecx
	movl	$32, %eax
	subl	-40(%rbp), %eax
	movl	-4(%rbp), %edx
	shlx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -32(%rbp)
L53:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_trim
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	leave
	ret
num_lshift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdi, -56(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	L59
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	L60
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	L60
	movl	$1, %eax
	jmp	L61
L60:
	movl	$0, %eax
L61:
	movl	%eax, -52(%rbp)
	movl	$0, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	L62
L59:
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$31, -4(%rbp)
	jbe	L63
	subl	$32, -4(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -60(%rbp)
L63:
	cmpl	$0, -4(%rbp)
	je	L64
	movl	-64(%rbp), %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %ecx
	movl	-60(%rbp), %edx
	movl	$32, %eax
	subl	-4(%rbp), %eax
	shrx	%eax, %edx, %eax
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %eax
	movl	%eax, -60(%rbp)
L64:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	num_trim
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	L65
	movl	$0, -52(%rbp)
	jmp	L62
L65:
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	num_rshift
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jne	L67
	movl	-32(%rbp), %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	je	L68
L67:
	movl	$1, %eax
	jmp	L69
L68:
	movl	$0, %eax
L69:
	movl	%eax, -52(%rbp)
L62:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	leave
	ret
precision:
	.long	64
n:
	.long	16
num:
	.long	0
	.long	3
	.long	0
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	n(%rip), %edx
	movq	num(%rip), %rsi
	movq	num+8(%rip), %rax
	movl	%edx, %ecx
	movl	$64, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	num_lshift
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$196608, %eax
	je	L72
	call	abort
L72:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	L73
	call	abort
L73:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L74
	call	abort
L74:
	movl	$0, %edi
	call	exit
