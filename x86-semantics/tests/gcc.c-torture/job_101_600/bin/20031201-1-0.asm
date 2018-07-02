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
test_length:
	.long	2
	.local	i
	.comm	i,8,8
m:
	.long	1
d:
	.long	1
	.local	test_t0
	.comm	test_t0,8,8
	.local	test_t1
	.comm	test_t1,8,8
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, i(%rip)
	movw	$32, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -48(%rbp)
	movq	i(%rip), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movq	i(%rip), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 4(%rax)
L40:
	call	f0
	movq	test_t1(%rip), %rax
	testq	%rax, %rax
	jne	L40
	movw	$8, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -48(%rbp)
	movq	i(%rip), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movq	i(%rip), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 4(%rax)
	call	test
	movl	m(%rip), %eax
	testl	%eax, %eax
	je	L41
	movl	test_length(%rip), %eax
	imull	$2170, %eax, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	test_t1(%rip), %rdx
	movq	test_t0(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	andl	$2147483647, %eax
	cmpq	$1000, %rax
	jbe	L41
	call	f0
L41:
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L42
	movl	test_length(%rip), %eax
	imull	$2170, %eax, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	test_t1(%rip), %rdx
	movq	test_t0(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	andl	$2147483647, %eax
	cmpq	$1000, %rax
	jbe	L42
	call	f0
L42:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	f1
	call	abort
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	i(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$8, %ax
	jne	L46
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	cmpw	$8, %ax
	je	L47
L46:
	call	abort
L47:
	movl	$0, %edi
	call	exit
f0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	i(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	washere.2360(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, washere.2360(%rip)
	testl	%eax, %eax
	jne	L49
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$32, %ax
	jne	L49
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	cmpw	$32, %ax
	je	L48
L49:
	call	abort
L48:
	leave
	ret
	.local	washere.2360
	.comm	washere.2360,4,4
