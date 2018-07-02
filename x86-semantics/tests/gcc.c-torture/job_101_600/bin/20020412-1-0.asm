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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	d.2323(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, d.2323(%rip)
	cmpl	-4(%rbp), %eax
	je	L40
	call	abort
L40:
	cmpl	$47, -4(%rbp)
	jle	L41
	cmpl	$57, -4(%rbp)
	jle	L39
L41:
	call	abort
L39:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
	movq	%rsi, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	testb	%al, %al
	je	L44
	vmovaps	%xmm0, -176(%rbp)
	vmovaps	%xmm1, -160(%rbp)
	vmovaps	%xmm2, -144(%rbp)
	vmovaps	%xmm3, -128(%rbp)
	vmovaps	%xmm4, -112(%rbp)
	vmovaps	%xmm5, -96(%rbp)
	vmovaps	%xmm6, -80(%rbp)
	vmovaps	%xmm7, -64(%rbp)
L44:
	movl	%edi, -276(%rbp)
	movq	%rsp, %rax
	movq	%rax, -288(%rbp)
	movl	-276(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, -304(%rbp)
	movq	$0, -296(%rbp)
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -240(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movslq	%eax, %rbx
	movslq	%eax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)
	movl	$8, -272(%rbp)
	movl	$48, -268(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-272(%rbp), %eax
	cmpl	$48, %eax
	jae	L45
	movq	-256(%rbp), %rdx
	movl	-272(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-272(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -272(%rbp)
	jmp	L46
L45:
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -264(%rbp)
L46:
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, -228(%rbp)
	jmp	L47
L48:
	movq	-248(%rbp), %rdx
	movl	-228(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	bar
	addl	$1, -228(%rbp)
L47:
	movl	-228(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jl	L48
	movl	-272(%rbp), %eax
	cmpl	$48, %eax
	jae	L49
	movq	-256(%rbp), %rdx
	movl	-272(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-272(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -272(%rbp)
	jmp	L50
L49:
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -264(%rbp)
L50:
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, -228(%rbp)
	jmp	L51
L52:
	movq	-248(%rbp), %rdx
	movl	-228(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	bar
	addl	$1, -228(%rbp)
L51:
	movl	-228(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jl	L52
	movq	-288(%rbp), %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	$5, -36(%rbp)
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rbx
	movq	%rbx, %r12
	movl	$0, %r13d
	movslq	%ecx, %rbx
	subq	$1, %rbx
	movq	%rbx, -48(%rbp)
	movslq	%ecx, %rbx
	movq	%rbx, %r10
	movl	$0, %r11d
	movslq	%ecx, %r10
	movq	%r10, %r8
	movl	$0, %r9d
	movslq	%ecx, %rbx
	movslq	%ecx, %r8
	movq	%r8, %rax
	movl	$0, %edx
	movslq	%ecx, %rax
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %r9d
	movl	$0, %edx
	divq	%r9
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movslq	%ecx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movslq	%ecx, %rax
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movb	$48, (%rax)
	movq	-56(%rbp), %rax
	movb	$49, 1(%rax)
	movq	-56(%rbp), %rax
	movb	$50, 2(%rax)
	movq	-56(%rbp), %rax
	movb	$51, 3(%rax)
	movq	-56(%rbp), %rax
	movb	$52, 4(%rax)
	movq	-64(%rbp), %rax
	movb	$53, (%rax)
	movq	-64(%rbp), %rax
	movb	$54, 1(%rax)
	movq	-64(%rbp), %rax
	movb	$55, 2(%rax)
	movq	-64(%rbp), %rax
	movb	$56, 3(%rax)
	movq	-64(%rbp), %rax
	movb	$57, 4(%rax)
	movq	%rsp, %r14
	movl	$16, %eax
	subq	$1, %rax
	addq	%rbx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	leaq	(%rax), %r12
	movq	-56(%rbp), %rdx
	movq	%r12, %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$16, %eax
	subq	$1, %rax
	addq	%rbx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	leaq	(%rax), %r13
	movq	-64(%rbp), %rdx
	movq	%r13, %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-36(%rbp), %eax
	movq	%r13, %rdx
	movq	%r12, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo
	movq	%r14, %rsp
	movl	$0, %edi
	call	exit
d.2323:
	.long	48
