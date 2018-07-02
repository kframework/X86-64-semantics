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
foo:
	leaq	8(%rsp), %r10
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$176, %rsp
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movq	24(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	32(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	40(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	48(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	movb	$1, -177(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-248(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-144(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-136(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-128(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 56(%rax)
	addq	$176, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	leaq	8(%rsp), %r10
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$168, %rsp
	leaq	-176(%rbp), %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	$0, -52(%rbp)
	jmp	L41
L43:
	movl	-52(%rbp), %eax
	leaq	-176(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	cmpl	$63, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	L42
	call	abort
L42:
	addl	$1, -52(%rbp)
L41:
	cmpl	$63, -52(%rbp)
	jbe	L43
	movl	$0, %eax
	addq	$168, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
