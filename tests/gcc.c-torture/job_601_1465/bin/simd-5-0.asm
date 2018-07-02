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
q1:
	.value	1
	.value	2
	.value	0
	.value	0
q2:
	.value	3
	.value	4
	.value	0
	.value	0
q3:
	.value	5
	.value	6
	.value	0
	.value	0
q4:
	.value	7
	.value	8
	.value	0
	.value	0
	.comm	w1,8,8
	.comm	w2,8,8
	.comm	w3,8,8
	.comm	w4,8,8
	.comm	z1,8,8
	.comm	z2,8,8
	.comm	z3,8,8
	.comm	z4,8,8
	.comm	dummy,4,4
func0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, dummy(%rip)
	popq	%rbp
	ret
func1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	q1(%rip), %rdx
	movq	q2(%rip), %rax
	movq	%rdx, -24(%rbp)
	movzwl	-24(%rbp), %esi
	movq	%rax, -32(%rbp)
	movzwl	-32(%rbp), %ecx
	imull	%esi, %ecx
	movq	%rdx, -40(%rbp)
	movzwl	-38(%rbp), %edi
	movq	%rax, -48(%rbp)
	movzwl	-46(%rbp), %esi
	imull	%edi, %esi
	movq	%rdx, -56(%rbp)
	movzwl	-52(%rbp), %r8d
	movq	%rax, -64(%rbp)
	movzwl	-60(%rbp), %edi
	imull	%r8d, %edi
	movq	%rdx, -72(%rbp)
	movzwl	-66(%rbp), %edx
	movq	%rax, -80(%rbp)
	movzwl	-74(%rbp), %eax
	imull	%edx, %eax
	movzwl	%ax, %eax
	movzwl	%di, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movzwl	%si, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movzwl	%cx, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	q3(%rip), %rdx
	movq	q4(%rip), %rax
	movq	%rdx, -88(%rbp)
	movzwl	-88(%rbp), %esi
	movq	%rax, -96(%rbp)
	movzwl	-96(%rbp), %ecx
	imull	%esi, %ecx
	movq	%rdx, -104(%rbp)
	movzwl	-102(%rbp), %edi
	movq	%rax, -112(%rbp)
	movzwl	-110(%rbp), %esi
	imull	%edi, %esi
	movq	%rdx, -120(%rbp)
	movzwl	-116(%rbp), %r8d
	movq	%rax, -128(%rbp)
	movzwl	-124(%rbp), %edi
	imull	%r8d, %edi
	movq	%rdx, -136(%rbp)
	movzwl	-130(%rbp), %edx
	movq	%rax, -144(%rbp)
	movzwl	-138(%rbp), %eax
	imull	%edx, %eax
	movzwl	%ax, %eax
	movzwl	%di, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movzwl	%si, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movzwl	%cx, %edx
	salq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, w1(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, w2(%rip)
	call	func0
	movq	-8(%rbp), %rax
	movq	%rax, w3(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, w4(%rip)
	leave
	ret
func2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	q1(%rip), %rax
	movq	q2(%rip), %rdx
	movq	%rax, %rdi
	xorq	%rdx, %rdi
	movabsq	$9223231297218904063, %rcx
	movq	%rdx, %rsi
	andq	%rcx, %rsi
	movabsq	$9223231297218904063, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	movabsq	$-9223231297218904064, %rax
	andq	%rax, %rdi
	movq	%rdi, %rdx
	leaq	(%rsi,%rcx), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	q3(%rip), %rax
	movq	q4(%rip), %rdx
	movq	%rax, %rdi
	xorq	%rdx, %rdi
	movabsq	$9223231297218904063, %rcx
	andq	%rdx, %rcx
	movabsq	$-9223231297218904064, %rdx
	orq	%rdx, %rax
	movq	%rax, %rsi
	notq	%rdi
	movq	%rdi, %rdx
	movabsq	$-9223231297218904064, %rax
	andq	%rax, %rdx
	movq	%rsi, %rax
	subq	%rcx, %rax
	xorq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, z1(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, z2(%rip)
	call	func1
	movq	-8(%rbp), %rax
	movq	%rax, z3(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, z4(%rip)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	func2
	movl	$8, %edx
	movl	$w3, %esi
	movl	$w1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L43
	call	abort
L43:
	movl	$8, %edx
	movl	$w4, %esi
	movl	$w2, %edi
	call	memcmp
	testl	%eax, %eax
	je	L44
	call	abort
L44:
	movl	$8, %edx
	movl	$z3, %esi
	movl	$z1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L45
	call	abort
L45:
	movl	$8, %edx
	movl	$z4, %esi
	movl	$z2, %edi
	call	memcmp
	testl	%eax, %eax
	je	L46
	call	abort
L46:
	movl	$0, %eax
	popq	%rbp
	ret
