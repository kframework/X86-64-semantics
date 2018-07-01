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
	.comm	gvol,128,64
	.comm	gull,8,8
t1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L10
L11:
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
L10:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L11
	movq	-144(%rbp), %rax
	leave
	ret
t2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L14
L15:
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
L14:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L15
	movq	-144(%rbp), %rax
	leave
	ret
t3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L18
L19:
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
L18:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L19
	movq	-144(%rbp), %rax
	leave
	ret
t4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L22
L23:
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
L22:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L23
	movq	-144(%rbp), %rax
	leave
	ret
t5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L26
L27:
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
L26:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L27
	movq	-144(%rbp), %rax
	leave
	ret
t6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L30
L31:
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
L30:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L31
	movq	-144(%rbp), %rax
	leave
	ret
t7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L34
L35:
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
L34:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L35
	movq	-144(%rbp), %rax
	leave
	ret
t8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L38
L39:
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
L38:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L39
	movq	-144(%rbp), %rax
	leave
	ret
t9:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L42
L43:
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
L42:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L43
	movq	-144(%rbp), %rax
	leave
	ret
t10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L46
L47:
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
L46:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L47
	movq	-144(%rbp), %rax
	leave
	ret
t11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	jmp	L50
L51:
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
L50:
	movl	-132(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -132(%rbp)
	testl	%eax, %eax
	jne	L51
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
	je	L56
	call	abort
L56:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t1
	movl	$4294961151, %edx
	cmpq	%rdx, %rax
	je	L57
	call	abort
L57:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t2
	cmpq	$-1540, %rax
	je	L58
	call	abort
L58:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t2
	movl	$4294965756, %edx
	cmpq	%rdx, %rax
	je	L59
	call	abort
L59:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t3
	cmpq	$-1537, %rax
	je	L60
	call	abort
L60:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t3
	movl	$4294965759, %edx
	cmpq	%rdx, %rax
	je	L61
	call	abort
L61:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t4
	cmpq	$-1534, %rax
	je	L62
	call	abort
L62:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t4
	movl	$4294965762, %edx
	cmpq	%rdx, %rax
	je	L63
	call	abort
L63:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t5
	cmpq	$-4, %rax
	je	L64
	call	abort
L64:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t5
	movl	$4294967292, %edx
	cmpq	%rdx, %rax
	je	L65
	call	abort
L65:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t6
	cmpq	$2, %rax
	je	L66
	call	abort
L66:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t6
	movabsq	$4294967298, %rdx
	cmpq	%rdx, %rax
	je	L67
	call	abort
L67:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t7
	cmpq	$1532, %rax
	je	L68
	call	abort
L68:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t7
	movabsq	$4294968828, %rdx
	cmpq	%rdx, %rax
	je	L69
	call	abort
L69:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t8
	cmpq	$1535, %rax
	je	L70
	call	abort
L70:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t8
	movabsq	$4294968831, %rdx
	cmpq	%rdx, %rax
	je	L71
	call	abort
L71:
	movq	$-1, %rsi
	movl	$3, %edi
	call	t9
	cmpq	$1538, %rax
	je	L72
	call	abort
L72:
	movl	$4294967295, %esi
	movl	$3, %edi
	call	t9
	movabsq	$4294968834, %rdx
	cmpq	%rdx, %rax
	je	L73
	call	abort
L73:
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
	je	L74
	call	abort
L74:
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
	je	L75
	call	abort
L75:
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
	je	L76
	call	abort
L76:
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
	je	L77
	call	abort
L77:
	movq	gull(%rip), %rax
	movq	%rax, %rdi
	call	neg
	cmpq	$-100, %rax
	je	L78
	call	abort
L78:
	movl	$0, %edi
	call	exit
