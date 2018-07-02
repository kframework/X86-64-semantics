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
	.comm	gvol,128,64
	.comm	gull,8,8
t1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L40
L41:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	subq	$2048, -144(%rbp)
L40:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L41
	movq	-144(%rbp), %rax
	leave
	ret
t2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L44
L45:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	subq	$513, -144(%rbp)
L44:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L45
	movq	-144(%rbp), %rax
	leave
	ret
t3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L48
L49:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	subq	$512, -144(%rbp)
L48:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L49
	movq	-144(%rbp), %rax
	leave
	ret
t4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L52
L53:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	subq	$511, -144(%rbp)
L52:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L53
	movq	-144(%rbp), %rax
	leave
	ret
t5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L56
L57:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	subq	$1, -144(%rbp)
L56:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L57
	movq	-144(%rbp), %rax
	leave
	ret
t6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L60
L61:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	addq	$1, -144(%rbp)
L60:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L61
	movq	-144(%rbp), %rax
	leave
	ret
t7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L64
L65:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	addq	$511, -144(%rbp)
L64:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L65
	movq	-144(%rbp), %rax
	leave
	ret
t8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L68
L69:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	addq	$512, -144(%rbp)
L68:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L69
	movq	-144(%rbp), %rax
	leave
	ret
t9:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L72
L73:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	addq	$513, -144(%rbp)
L72:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L73
	movq	-144(%rbp), %rax
	leave
	ret
t10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L76
L77:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	movq	gull(%rip), %rax
	addq	%rax, -144(%rbp)
L76:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L77
	movq	-144(%rbp), %rax
	leave
	ret
t11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L80
L81:
	movl	gvol+4(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	gvol+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	gvol+12(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	gvol+16(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	gvol+20(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	gvol+24(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	gvol+28(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	gvol+32(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	gvol+36(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	gvol+40(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	gvol+44(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	gvol+48(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	gvol+52(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	gvol+56(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	gvol+60(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	gvol+64(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	gvol+68(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	gvol+72(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	gvol+76(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	gvol+80(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	gvol+84(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	gvol+88(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	gvol+92(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	gvol+96(%rip), %eax
	movl	%eax, -96(%rbp)
	movl	gvol+100(%rip), %eax
	movl	%eax, -100(%rbp)
	movl	gvol+104(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	gvol+108(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	gvol+112(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	gvol+116(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	gvol+120(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gvol+4(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, gvol+8(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, gvol+12(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, gvol+16(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, gvol+20(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, gvol+24(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, gvol+28(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, gvol+32(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, gvol+36(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, gvol+40(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, gvol+44(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, gvol+48(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, gvol+52(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, gvol+56(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, gvol+60(%rip)
	movl	-64(%rbp), %eax
	movl	%eax, gvol+64(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, gvol+68(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, gvol+72(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, gvol+76(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, gvol+80(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, gvol+84(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, gvol+88(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, gvol+92(%rip)
	movl	-96(%rbp), %eax
	movl	%eax, gvol+96(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, gvol+100(%rip)
	movl	-104(%rbp), %eax
	movl	%eax, gvol+104(%rip)
	movl	-108(%rbp), %eax
	movl	%eax, gvol+108(%rip)
	movl	-112(%rbp), %eax
	movl	%eax, gvol+112(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, gvol+116(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, gvol+120(%rip)
	movq	gull(%rip), %rax
	subq	%rax, -144(%rbp)
L80:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L81
	movq	-144(%rbp), %rax
	leave
	ret
neg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	negq	%rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$100, gull(%rip)
	movq	$-1, %rsi
	movl	$3, %edi
	call	t1
	cmpq	$-6145, %rax
	je	L86
	call	abort
L86:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t1
	movl	$4294961151, %edx
	cmpq	%rdx, %rax
	je	L87
	call	abort
L87:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t2
	cmpq	$-1540, %rax
	je	L88
	call	abort
L88:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t2
	movl	$4294965756, %edx
	cmpq	%rdx, %rax
	je	L89
	call	abort
L89:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t3
	cmpq	$-1537, %rax
	je	L90
	call	abort
L90:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t3
	movl	$4294965759, %edx
	cmpq	%rdx, %rax
	je	L91
	call	abort
L91:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t4
	cmpq	$-1534, %rax
	je	L92
	call	abort
L92:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t4
	movl	$4294965762, %edx
	cmpq	%rdx, %rax
	je	L93
	call	abort
L93:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t5
	cmpq	$-4, %rax
	je	L94
	call	abort
L94:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t5
	movl	$4294967292, %edx
	cmpq	%rdx, %rax
	je	L95
	call	abort
L95:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t6
	cmpq	$2, %rax
	je	L96
	call	abort
L96:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t6
	movabsq	$4294967298, %rdx
	cmpq	%rdx, %rax
	je	L97
	call	abort
L97:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t7
	cmpq	$1532, %rax
	je	L98
	call	abort
L98:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t7
	movabsq	$4294968828, %rdx
	cmpq	%rdx, %rax
	je	L99
	call	abort
L99:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t8
	cmpq	$1535, %rax
	je	L100
	call	abort
L100:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t8
	movabsq	$4294968831, %rdx
	cmpq	%rdx, %rax
	je	L101
	call	abort
L101:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t9
	cmpq	$1538, %rax
	je	L102
	call	abort
L102:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t9
	movabsq	$4294968834, %rdx
	cmpq	%rdx, %rax
	je	L103
	call	abort
L103:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t10
	movq	%rax, %rcx
	movq	gull(%rip), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	subq	$1, %rax
	cmpq	%rax, %rcx
	je	L104
	call	abort
L104:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t10
	movq	%rax, %rcx
	movq	gull(%rip), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	$4294967295, %eax
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	je	L105
	call	abort
L105:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t11
	movq	%rax, %rcx
	movq	gull(%rip), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	subq	$1, %rax
	cmpq	%rax, %rcx
	je	L106
	call	abort
L106:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t11
	movq	%rax, %rcx
	movq	gull(%rip), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	$4294967295, %eax
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	je	L107
	call	abort
L107:
	movq	gull(%rip), %rax
	movq	%rax, %rdi
	call	neg
	cmpq	$-100, %rax
	je	L108
	call	abort
L108:
	movl	$0, %edi
	call	exit
