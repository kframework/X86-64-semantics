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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movl	$11, -80(%rbp)
	movl	$12, -76(%rbp)
	movl	$46, -72(%rbp)
	movl	$3, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$2, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$1, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$46, -144(%rbp)
	movl	$12, -140(%rbp)
	movl	$11, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$3, -128(%rbp)
	movl	$3, -124(%rbp)
	movl	$2, -120(%rbp)
	movl	$2, -116(%rbp)
	movl	$2, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$1, -100(%rbp)
	movl	$1, -96(%rbp)
	movl	$13, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L44:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	L41
L43:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	L42
	movl	-8(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-16(%rbp), %edx
	movl	%edx, -80(%rbp,%rax,4)
L42:
	subl	$1, -8(%rbp)
L41:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	L43
	addl	$1, -4(%rbp)
L40:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L44
	movl	$0, -4(%rbp)
	jmp	L45
L47:
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	L46
	call	abort
L46:
	addl	$1, -4(%rbp)
L45:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L47
	movl	$0, %edi
	call	exit
