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
simple_rand:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	seed.2315(%rip), %rax
	imulq	$1103515245, %rax, %rax
	addq	$12345, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, seed.2315(%rip)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	popq	%rbp
	ret
random_bitstring:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
L46:
	movl	$0, %eax
	call	simple_rand
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$60, %rax
	addq	%rax, %rdx
	andl	$15, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, -12(%rbp)
	cmpl	$0, -28(%rbp)
	jne	L42
	movq	-8(%rbp), %rax
	jmp	L43
L42:
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -8(%rbp)
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L44
	movl	-28(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	subl	$1, %eax
	cltq
	orq	%rax, -8(%rbp)
L44:
	movl	-12(%rbp), %eax
	cmpl	$70, %eax
	jbe	L45
	movq	-8(%rbp), %rax
	jmp	L43
L45:
	jmp	L46
L43:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	$0, -8(%rbp)
	jmp	L48
L75:
	movl	$0, %eax
	call	random_bitstring
	movq	%rax, -16(%rbp)
	movl	$0, %eax
	call	random_bitstring
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L49
	jmp	L50
L49:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	L51
	movq	-48(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	je	L52
L51:
	call	abort
L52:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	jne	L53
	cmpq	$-1, -72(%rbp)
	jne	L53
	jmp	L50
L53:
	movq	-64(%rbp), %rax
	cqto
	idivq	-72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	cqto
	idivq	-72(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-88(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-72(%rbp), %rax
	subq	%rdx, %rax
	cmpq	%rax, %rcx
	jae	L54
	movq	-80(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-64(%rbp), %rax
	je	L55
L54:
	call	abort
L55:
	movq	-16(%rbp), %rax
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	L56
	jmp	L50
L56:
	movl	-92(%rbp), %eax
	movl	$0, %edx
	divl	-96(%rbp)
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %eax
	movl	$0, %edx
	divl	-96(%rbp)
	movl	%edx, -104(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jae	L57
	movl	-100(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cmpl	-92(%rbp), %eax
	je	L58
L57:
	call	abort
L58:
	movq	-16(%rbp), %rax
	movl	%eax, -108(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -112(%rbp)
	movl	-108(%rbp), %eax
	addl	%eax, %eax
	testl	%eax, %eax
	jne	L59
	cmpl	$-1, -112(%rbp)
	jne	L59
	jmp	L50
L59:
	movl	-108(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movl	%eax, -116(%rbp)
	movl	-108(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movl	%edx, -120(%rbp)
	movl	-120(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-120(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-112(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-112(%rbp), %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jae	L60
	movl	-116(%rbp), %eax
	imull	-112(%rbp), %eax
	movl	%eax, %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	cmpl	-108(%rbp), %eax
	jne	L60
	movl	-108(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-120(%rbp), %eax
	shrl	$31, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	L61
	cmpl	$0, -120(%rbp)
	je	L61
L60:
	call	abort
L61:
	movq	-16(%rbp), %rax
	movw	%ax, -122(%rbp)
	movq	-24(%rbp), %rax
	movw	%ax, -124(%rbp)
	cmpw	$0, -124(%rbp)
	jne	L62
	jmp	L50
L62:
	movzwl	-122(%rbp), %eax
	movl	$0, %edx
	divw	-124(%rbp)
	movw	%ax, -126(%rbp)
	movzwl	-122(%rbp), %eax
	movl	$0, %edx
	divw	-124(%rbp)
	movw	%dx, -128(%rbp)
	movzwl	-128(%rbp), %eax
	cmpw	-124(%rbp), %ax
	jae	L63
	movzwl	-126(%rbp), %edx
	movzwl	-124(%rbp), %eax
	imull	%eax, %edx
	movzwl	-128(%rbp), %eax
	addl	%eax, %edx
	movzwl	-122(%rbp), %eax
	cmpl	%eax, %edx
	je	L64
L63:
	call	abort
L64:
	movq	-16(%rbp), %rax
	movw	%ax, -130(%rbp)
	movq	-24(%rbp), %rax
	movw	%ax, -132(%rbp)
	movswl	-130(%rbp), %eax
	movswl	-132(%rbp), %esi
	cltd
	idivl	%esi
	movw	%ax, -134(%rbp)
	movswl	-130(%rbp), %eax
	movswl	-132(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movw	%ax, -136(%rbp)
	movswl	-136(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpw	$0, -132(%rbp)
	js	L65
	movzwl	-132(%rbp), %edx
	movzwl	%dx, %edx
	jmp	L66
L65:
	movzwl	-132(%rbp), %edx
	negl	%edx
	movzwl	%dx, %edx
L66:
	cmpl	%edx, %eax
	jge	L67
	movzwl	-134(%rbp), %edx
	movzwl	-132(%rbp), %eax
	imull	%eax, %edx
	movzwl	-136(%rbp), %eax
	addl	%edx, %eax
	cmpw	-130(%rbp), %ax
	je	L68
L67:
	call	abort
L68:
	movq	-16(%rbp), %rax
	movb	%al, -137(%rbp)
	movq	-24(%rbp), %rax
	movb	%al, -138(%rbp)
	cmpb	$0, -138(%rbp)
	jne	L69
	jmp	L50
L69:
	movzbl	-137(%rbp), %eax
	movzbl	%al, %eax
	divb	-138(%rbp)
	movb	%al, -139(%rbp)
	movzbl	-137(%rbp), %eax
	movzbl	%al, %eax
	divb	-138(%rbp)
	movzbl	%ah, %eax
	movb	%al, -140(%rbp)
	movzbl	-140(%rbp), %eax
	cmpb	-138(%rbp), %al
	jae	L70
	movzbl	-139(%rbp), %edx
	movzbl	-138(%rbp), %eax
	imull	%eax, %edx
	movzbl	-140(%rbp), %eax
	addl	%eax, %edx
	movzbl	-137(%rbp), %eax
	cmpl	%eax, %edx
	je	L71
L70:
	call	abort
L71:
	movq	-16(%rbp), %rax
	movb	%al, -141(%rbp)
	movq	-24(%rbp), %rax
	movb	%al, -142(%rbp)
	movsbl	-141(%rbp), %eax
	movsbl	-142(%rbp), %edi
	cltd
	idivl	%edi
	movb	%al, -143(%rbp)
	movsbl	-141(%rbp), %eax
	movsbl	-142(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movb	%al, -144(%rbp)
	movsbl	-144(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpb	$0, -142(%rbp)
	js	L72
	movzbl	-142(%rbp), %edx
	movzbl	%dl, %edx
	jmp	L73
L72:
	movzbl	-142(%rbp), %edx
	negl	%edx
	movzbl	%dl, %edx
L73:
	cmpl	%edx, %eax
	jge	L74
	movzbl	-143(%rbp), %eax
	movzbl	-142(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, %edx
	movzbl	-144(%rbp), %eax
	addl	%edx, %eax
	cmpb	-141(%rbp), %al
	je	L50
L74:
	call	abort
L50:
	addq	$1, -8(%rbp)
L48:
	cmpq	$9999, -8(%rbp)
	jle	L75
	movl	$0, %edi
	call	exit
seed.2315:
	.quad	47114711
