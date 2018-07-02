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
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	L40
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	L41
L42:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %ecx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	andl	$2147483646, %ecx
	movl	-4(%rbp), %edx
	leaq	0(,%rdx,4), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx
	xorl	%edx, %ecx
	movl	-4(%rbp), %edx
	addl	$397, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	xorl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
L41:
	cmpl	$226, -4(%rbp)
	jbe	L42
L40:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$11, %eax
	xorl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$-12953427, %eax
	sall	$7, %eax
	xorl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$-8308, %eax
	sall	$15, %eax
	xorl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$18, %eax
	xorl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	%eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$2544, %rsp
	movq	%rdi, -2536(%rbp)
	movl	%esi, -2540(%rbp)
	movl	%edx, -2544(%rbp)
	leaq	-2528(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-2544(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, -4(%rbp)
	jmp	L45
L46:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movl	%edx, %ecx
	shrl	$30, %ecx
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rsi
	movq	-16(%rbp), %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	xorl	%ecx, %edx
	imull	$1812433253, %edx, %ecx
	movl	-4(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
L45:
	cmpl	$623, -4(%rbp)
	jbe	L46
	movl	$1, -2520(%rbp)
	jmp	L47
L48:
	leaq	-2528(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	%eax, %edx
	movq	-2536(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -2536(%rbp)
	movzbl	(%rax), %ecx
	xorl	%ecx, %edx
	movb	%dl, (%rax)
L47:
	movl	-2540(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -2540(%rbp)
	testl	%eax, %eax
	jne	L48
	leave
	ret
p:
	.byte	-64
	.byte	73
	.byte	23
	.byte	50
	.byte	98
	.byte	30
	.byte	46
	.byte	-43
	.byte	76
	.byte	25
	.byte	40
	.byte	73
	.byte	-111
	.byte	-28
	.byte	114
	.byte	-125
	.byte	-111
	.byte	61
	.byte	-109
	.byte	-125
	.byte	-77
	.byte	97
	.byte	56
q:
	.byte	62
	.byte	65
	.byte	85
	.byte	84
	.byte	79
	.byte	73
	.byte	84
	.byte	32
	.byte	85
	.byte	78
	.byte	73
	.byte	67
	.byte	79
	.byte	68
	.byte	69
	.byte	32
	.byte	83
	.byte	67
	.byte	82
	.byte	73
	.byte	80
	.byte	84
	.byte	60
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$23, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	41566(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$p, %edi
	call	bar
	movl	-4(%rbp), %eax
	movq	%rax, %rdx
	movl	$q, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L50
	call	abort
L50:
	movl	$0, %eax
	leave
	ret
