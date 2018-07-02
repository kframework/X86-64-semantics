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
to_hex:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$15, -4(%rbp)
	jbe	L40
	call	abort
L40:
	movl	-4(%rbp), %eax
	movzbl	hex.2320(%rax), %eax
	movsbl	%al, %eax
	leave
	ret
f0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$232, %rsp
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L43
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L43:
	movq	%rdi, -232(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$16, %rax
	je	L44
	call	abort
L44:
	jmp	L45
L48:
	movq	-232(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -232(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L46
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L47
L46:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L47:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L45
	call	abort
L45:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L48
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$232, %rsp
	movl	%edi, -228(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L50
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L50:
	movq	%rsi, -240(%rbp)
	movl	$16, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$15, %rax
	je	L51
	call	abort
L51:
	jmp	L52
L55:
	movq	-240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -240(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L53
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L54
L53:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L54:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L52
	call	abort
L52:
	movq	-240(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L55
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$232, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L57
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L57:
	movq	%rdx, -240(%rbp)
	movl	$24, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$14, %rax
	je	L58
	call	abort
L58:
	jmp	L59
L62:
	movq	-240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -240(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L60
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L61
L60:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L61:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L59
	call	abort
L59:
	movq	-240(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L62
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L64
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L64:
	movq	%rcx, -248(%rbp)
	movl	$32, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$13, %rax
	je	L65
	call	abort
L65:
	jmp	L66
L69:
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -248(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L67
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L68
L67:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L68:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L66
	call	abort
L66:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L69
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L71
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L71:
	movq	%r8, -248(%rbp)
	movl	$40, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$12, %rax
	je	L72
	call	abort
L72:
	jmp	L73
L76:
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -248(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L74
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L75
L74:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L75:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L73
	call	abort
L73:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L76
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	testb	%al, %al
	je	L78
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L78:
	movq	%r9, -256(%rbp)
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$11, %rax
	je	L79
	call	abort
L79:
	jmp	L80
L83:
	movq	-256(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -256(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L81
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L82
L81:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L82:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L80
	call	abort
L80:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L83
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L91
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L91:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	16(%rbp), %rdi
	call	strlen
	cmpq	$10, %rax
	je	L86
	call	abort
L86:
	jmp	L87
L90:
	movq	16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L88
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L89
L88:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L89:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L87
	call	abort
L87:
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L90
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L99
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L99:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$9, %rax
	je	L94
	call	abort
L94:
	jmp	L95
L98:
	movq	24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L96
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L97
L96:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L97:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L95
	call	abort
L95:
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L98
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L107
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L107:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$8, %rax
	je	L102
	call	abort
L102:
	jmp	L103
L106:
	movq	32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 32(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L104
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L105
L104:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L105:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L103
	call	abort
L103:
	movq	32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L106
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L115
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L115:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$7, %rax
	je	L110
	call	abort
L110:
	jmp	L111
L114:
	movq	40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L112
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L113
L112:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L113:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L111
	call	abort
L111:
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L114
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L123
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L123:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	56(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$6, %rax
	je	L118
	call	abort
L118:
	jmp	L119
L122:
	movq	48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L120
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L121
L120:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L121:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L119
	call	abort
L119:
	movq	48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L122
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L131
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L131:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	64(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$5, %rax
	je	L126
	call	abort
L126:
	jmp	L127
L130:
	movq	56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 56(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L128
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L129
L128:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L129:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L127
	call	abort
L127:
	movq	56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L130
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L139
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L139:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	72(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$4, %rax
	je	L134
	call	abort
L134:
	jmp	L135
L138:
	movq	64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 64(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L136
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L137
L136:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L137:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L135
	call	abort
L135:
	movq	64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L138
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f13:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L147
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L147:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	80(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	je	L142
	call	abort
L142:
	jmp	L143
L146:
	movq	72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 72(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L144
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L145
L144:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L145:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L143
	call	abort
L143:
	movq	72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L146
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f14:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L155
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L155:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	88(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$2, %rax
	je	L150
	call	abort
L150:
	jmp	L151
L154:
	movq	80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 80(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L152
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L153
L152:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L153:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L151
	call	abort
L151:
	movq	80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L154
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
f15:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$248, %rsp
	movl	%edi, -228(%rbp)
	movl	%esi, -232(%rbp)
	movl	%edx, -236(%rbp)
	movl	%ecx, -240(%rbp)
	movl	%r8d, -244(%rbp)
	movl	%r9d, -248(%rbp)
	testb	%al, %al
	je	L163
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L163:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	96(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$1, %rax
	je	L158
	call	abort
L158:
	jmp	L159
L162:
	movq	88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 88(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L160
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L161
L160:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L161:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L159
	call	abort
L159:
	movq	88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L162
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
LC0:
	.string	"0123456789abcdef"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$LC0, -8(%rbp)
	subq	$8, %rsp
	movq	-8(%rbp), %rax
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movl	$4, %r9d
	movl	$3, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	f0
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$1, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movl	$4, %r9d
	movl	$3, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	f1
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$2, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movl	$4, %r9d
	movl	$3, %r8d
	movl	$2, %ecx
	movq	%rax, %rdx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f2
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$3, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movl	$4, %r9d
	movl	$3, %r8d
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f3
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$4, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movl	$4, %r9d
	movq	%rax, %r8
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f4
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$5, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	$5
	movq	%rax, %r9
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f5
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$6, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	pushq	%rax
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f6
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$7, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	%rax
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f7
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$8, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	%rax
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f8
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$9, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	%rax
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f9
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$10, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	%rax
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f10
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$11, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	%rax
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f11
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$12, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	%rax
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f12
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$13, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	$13
	pushq	%rax
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f13
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$14, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	$14
	pushq	%rax
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f14
	addq	$96, %rsp
	movq	-8(%rbp), %rax
	addq	$15, %rax
	subq	$8, %rsp
	pushq	$15
	pushq	%rax
	pushq	$14
	pushq	$13
	pushq	$12
	pushq	$11
	pushq	$10
	pushq	$9
	pushq	$8
	pushq	$7
	pushq	$6
	movl	$5, %r9d
	movl	$4, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	f15
	addq	$96, %rsp
	movl	$0, %edi
	call	exit
hex.2320:
	.string	"0123456789abcdef"
