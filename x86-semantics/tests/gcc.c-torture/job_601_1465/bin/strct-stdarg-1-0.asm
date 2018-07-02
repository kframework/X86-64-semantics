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
	subq	$256, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L40
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L40:
	movl	%edi, -244(%rbp)
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	$0, -180(%rbp)
	jmp	L41
L49:
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	L43
L42:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
L43:
	movl	(%rax), %edx
	movl	%edx, -208(%rbp)
	movzbl	4(%rax), %eax
	movb	%al, -204(%rbp)
	movzbl	-208(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$10, %edx
	cmpl	%edx, %eax
	je	L44
	call	abort
L44:
	movzbl	-207(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$20, %edx
	cmpl	%edx, %eax
	je	L45
	call	abort
L45:
	movzbl	-206(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$30, %edx
	cmpl	%edx, %eax
	je	L46
	call	abort
L46:
	movzbl	-205(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$40, %edx
	cmpl	%edx, %eax
	je	L47
	call	abort
L47:
	movzbl	-204(%rbp), %eax
	movsbl	%al, %eax
	movl	-180(%rbp), %edx
	addl	$50, %edx
	cmpl	%edx, %eax
	je	L48
	call	abort
L48:
	addl	$1, -180(%rbp)
L41:
	movl	-180(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jl	L49
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L50
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	L51
L50:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
L51:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$123, -192(%rbp)
	je	L52
	call	abort
L52:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$10, -16(%rbp)
	movb	$11, -11(%rbp)
	movb	$12, -6(%rbp)
	movb	$20, -15(%rbp)
	movb	$21, -10(%rbp)
	movb	$22, -5(%rbp)
	movb	$30, -14(%rbp)
	movb	$31, -9(%rbp)
	movb	$32, -4(%rbp)
	movb	$40, -13(%rbp)
	movb	$41, -8(%rbp)
	movb	$42, -3(%rbp)
	movb	$50, -12(%rbp)
	movb	$51, -7(%rbp)
	movb	$52, -2(%rbp)
	movl	$123, %r8d
	movq	-6(%rbp), %rcx
	movq	-11(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	f
	movl	$0, %edi
	call	exit
