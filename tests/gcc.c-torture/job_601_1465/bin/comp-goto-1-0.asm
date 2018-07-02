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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
simulator_kernel:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movl	%edi, -76(%rbp)
	movq	%rsi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %r14
	movq	-88(%rbp), %rax
	leaq	8(%rax), %r12
	movq	$L41, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	$1040, %rax
	movq	%rax, -104(%rbp)
	cmpl	$0, -76(%rbp)
	je	L41
	movq	-88(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -44(%rbp)
	jmp	L43
L44:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	sall	$14, %eax
	sarl	$14, %eax
	cltq
	movq	op_map.2927(,%rax,8), %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	sall	$14, %eax
	sarl	$14, %eax
	andl	$262143, %eax
	movl	%eax, %ecx
	movl	(%rdx), %eax
	andl	$-262144, %eax
	orl	%ecx, %eax
	movl	%eax, (%rdx)
	addl	$1, -44(%rbp)
L43:
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	L44
L41:
	movq	%r14, %rax
	leaq	8(%rax), %r14
	movq	(%rax), %rbx
	movq	%rbx, %rax
	shrq	$54, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	sall	$2, %eax
	cltq
	addq	%r12, %rax
	movl	(%rax), %r15d
	movq	%rbx, %rax
	shrq	$22, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	leal	0(,%rax,4), %r13d
	movl	%ebx, %eax
	sall	$14, %eax
	sarl	$14, %eax
	cltq
	addq	-96(%rbp), %rax
	nop
L47:
	call %rax
L45:
	movl	%r15d, %eax
	shrl	$12, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	movq	%r14, %rax
	leaq	8(%rax), %r14
	movq	(%rax), %rbx
L49:
	movl	-48(%rbp), %eax
	salq	$4, %rax
	movq	-104(%rbp), %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	salq	$4, %rax
	addq	%rsi, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	L46
	movslq	%r13d, %rax
	leaq	(%r12,%rax), %rdx
	movl	%r15d, %ecx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	%rbx, %rax
	shrq	$54, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	sall	$2, %eax
	cltq
	addq	%r12, %rax
	movl	(%rax), %r15d
	movq	%rbx, %rax
	shrq	$22, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	leal	0(,%rax,4), %r13d
	movl	%ebx, %eax
	sall	$14, %eax
	sarl	$14, %eax
	cltq
	addq	-96(%rbp), %rax
	jmp	L47
L46:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	jns	L48
	movslq	%r13d, %rax
	leaq	(%r12,%rax), %r13
	movl	$0, %eax
	call	f
	movl	(%rax), %eax
	movl	%eax, 0(%r13)
	movq	%rbx, %rax
	shrq	$54, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	sall	$2, %eax
	cltq
	addq	%r12, %rax
	movl	(%rax), %r15d
	movq	%rbx, %rax
	shrq	$22, %rax
	andb	$255, %ah
	movzbl	%al, %eax
	leal	0(,%rax,4), %r13d
	movl	%ebx, %eax
	sall	$14, %eax
	sarl	$14, %eax
	cltq
	addq	-96(%rbp), %rax
	jmp	L47
L48:
	movl	-48(%rbp), %eax
	subl	$1, %eax
	andl	$255, %eax
	movl	%eax, -48(%rbp)
	jmp	L49
L50:
	movslq	%r13d, %rax
	addq	%r12, %rax
	movl	(%rax), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.comm	program,24,16
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$5184, %rsp
	movl	$8192, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$1193040, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$4095, %rax
	andq	$-4096, %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	addq	$64, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	leaq	-5168(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, 16(%rdx)
	movl	-24(%rbp), %eax
	movzbl	%al, %eax
	movl	-24(%rbp), %edx
	sall	$12, %edx
	movl	%edx, %edx
	movq	-16(%rbp), %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, %eax
	addq	$64, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$5168, %rax
	movq	%rdx, 24(%rax)
	movl	-5184(%rbp), %eax
	andl	$-262144, %eax
	movl	%eax, -5184(%rbp)
	movl	$0, -5160(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -5152(%rbp)
	movl	-20(%rbp), %eax
	andl	$4095, %eax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$88, (%rax)
	movzwl	-5182(%rbp), %eax
	andw	$-16321, %ax
	movw	%ax, -5182(%rbp)
	movzwl	-5178(%rbp), %eax
	andw	$-16321, %ax
	orb	$-128, %al
	movw	%ax, -5178(%rbp)
	movl	$0, -4(%rbp)
	jmp	L53
L54:
	movl	-4(%rbp), %eax
	cltq
	movq	-5184(%rbp), %rdx
	movq	%rdx, program(,%rax,8)
	addl	$1, -4(%rbp)
L53:
	cmpl	$1, -4(%rbp)
	jle	L54
	movl	-5184(%rbp), %eax
	andl	$-262144, %eax
	orl	$1, %eax
	movl	%eax, -5184(%rbp)
	movzwl	-5182(%rbp), %eax
	andw	$-16321, %ax
	movw	%ax, -5182(%rbp)
	movq	-5184(%rbp), %rax
	movq	%rax, program+16(%rip)
	movq	$program, -5168(%rbp)
	movq	$program, -4136(%rbp)
	leaq	-5168(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	simulator_kernel
	movl	%eax, -28(%rbp)
	cmpl	$88, -28(%rbp)
	je	L55
	call	abort
L55:
	movl	$0, %edi
	call	exit
op_map.2927:
	.quad	L45
	.quad	L50
