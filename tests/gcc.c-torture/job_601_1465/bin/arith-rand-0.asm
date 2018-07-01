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
simple_rand:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	seed.2255(%rip), %rax
	imulq	$1103515245, %rax, %rax
	addq	$12345, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, seed.2255(%rip)
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
L16:
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
	jne	L12
	movq	-8(%rbp), %rax
	jmp	L13
L12:
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -8(%rbp)
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L14
	movl	-28(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	subl	$1, %eax
	cltq
	orq	%rax, -8(%rbp)
L14:
	movl	-12(%rbp), %eax
	cmpl	$70, %eax
	jbe	L15
	movq	-8(%rbp), %rax
	jmp	L13
L15:
	jmp	L16
L13:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	$0, -8(%rbp)
	jmp	L18
L45:
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
	jne	L19
	jmp	L20
L19:
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
	jae	L21
	movq	-48(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	je	L22
L21:
	call	abort
L22:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	jne	L23
	cmpq	$-1, -72(%rbp)
	jne	L23
	jmp	L20
L23:
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
	jae	L24
	movq	-80(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-64(%rbp), %rax
	je	L25
L24:
	call	abort
L25:
	movq	-16(%rbp), %rax
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	L26
	jmp	L20
L26:
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
	jae	L27
	movl	-100(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cmpl	-92(%rbp), %eax
	je	L28
L27:
	call	abort
L28:
	movq	-16(%rbp), %rax
	movl	%eax, -108(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -112(%rbp)
	movl	-108(%rbp), %eax
	addl	%eax, %eax
	testl	%eax, %eax
	jne	L29
	cmpl	$-1, -112(%rbp)
	jne	L29
	jmp	L20
L29:
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
	jae	L30
	movl	-116(%rbp), %eax
	imull	-112(%rbp), %eax
	movl	%eax, %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	cmpl	-108(%rbp), %eax
	je	L31
L30:
	call	abort
L31:
	movq	-16(%rbp), %rax
	movw	%ax, -122(%rbp)
	movq	-24(%rbp), %rax
	movw	%ax, -124(%rbp)
	cmpw	$0, -124(%rbp)
	jne	L32
	jmp	L20
L32:
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
	jae	L33
	movzwl	-126(%rbp), %edx
	movzwl	-124(%rbp), %eax
	imull	%eax, %edx
	movzwl	-128(%rbp), %eax
	addl	%eax, %edx
	movzwl	-122(%rbp), %eax
	cmpl	%eax, %edx
	je	L34
L33:
	call	abort
L34:
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
	js	L35
	movzwl	-132(%rbp), %edx
	movzwl	%dx, %edx
	jmp	L36
L35:
	movzwl	-132(%rbp), %edx
	negl	%edx
	movzwl	%dx, %edx
L36:
	cmpl	%edx, %eax
	jge	L37
	movzwl	-134(%rbp), %edx
	movzwl	-132(%rbp), %eax
	imull	%eax, %edx
	movzwl	-136(%rbp), %eax
	addl	%edx, %eax
	cmpw	-130(%rbp), %ax
	je	L38
L37:
	call	abort
L38:
	movq	-16(%rbp), %rax
	movb	%al, -137(%rbp)
	movq	-24(%rbp), %rax
	movb	%al, -138(%rbp)
	cmpb	$0, -138(%rbp)
	jne	L39
	jmp	L20
L39:
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
	jae	L40
	movzbl	-139(%rbp), %edx
	movzbl	-138(%rbp), %eax
	imull	%eax, %edx
	movzbl	-140(%rbp), %eax
	addl	%eax, %edx
	movzbl	-137(%rbp), %eax
	cmpl	%eax, %edx
	je	L41
L40:
	call	abort
L41:
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
	js	L42
	movzbl	-142(%rbp), %edx
	movzbl	%dl, %edx
	jmp	L43
L42:
	movzbl	-142(%rbp), %edx
	negl	%edx
	movzbl	%dl, %edx
L43:
	cmpl	%edx, %eax
	jge	L44
	movzbl	-143(%rbp), %eax
	movzbl	-142(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, %edx
	movzbl	-144(%rbp), %eax
	addl	%edx, %eax
	cmpb	-141(%rbp), %al
	je	L20
L44:
	call	abort
L20:
	addq	$1, -8(%rbp)
L18:
	cmpq	$999, -8(%rbp)
	jle	L45
	movl	$0, %edi
	call	exit
seed.2255:
	.quad	47114711
