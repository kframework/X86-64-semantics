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
to_hex:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$15, -4(%rbp)
	jbe	L10
	call	abort
L10:
	movl	-4(%rbp), %eax
	movzbl	hex.2259(%rax), %eax
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
	je	L13
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L13:
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
	je	L14
	call	abort
L14:
	jmp	L15
L18:
	movq	-232(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -232(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L16
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L17
L16:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L17:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L15
	call	abort
L15:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L18
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
	je	L20
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L20:
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
	je	L21
	call	abort
L21:
	jmp	L22
L25:
	movq	-240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -240(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L23
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L24
L23:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L24:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L22
	call	abort
L22:
	movq	-240(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L25
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
	je	L27
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L27:
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
	je	L28
	call	abort
L28:
	jmp	L29
L32:
	movq	-240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -240(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L30
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L31
L30:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L31:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L29
	call	abort
L29:
	movq	-240(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L32
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
	je	L34
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L34:
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
	je	L35
	call	abort
L35:
	jmp	L36
L39:
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -248(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L37
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L38
L37:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L38:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L36
	call	abort
L36:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L39
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
	je	L41
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L41:
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
	je	L42
	call	abort
L42:
	jmp	L43
L46:
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -248(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L44
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L45
L44:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L45:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L43
	call	abort
L43:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L46
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
	je	L48
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L48:
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
	je	L49
	call	abort
L49:
	jmp	L50
L53:
	movq	-256(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -256(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L51
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L52
L51:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L52:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L50
	call	abort
L50:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L53
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
	je	L61
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L61:
	movl	$48, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	16(%rbp), %rdi
	call	strlen
	cmpq	$10, %rax
	je	L56
	call	abort
L56:
	jmp	L57
L60:
	movq	16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L58
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L59
L58:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L59:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L57
	call	abort
L57:
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L60
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
	je	L69
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L69:
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
	je	L64
	call	abort
L64:
	jmp	L65
L68:
	movq	24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L66
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L67
L66:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L67:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L65
	call	abort
L65:
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L68
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
	je	L77
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L77:
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
	je	L72
	call	abort
L72:
	jmp	L73
L76:
	movq	32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 32(%rbp)
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
	movq	32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L76
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
	je	L85
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L85:
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
	je	L80
	call	abort
L80:
	jmp	L81
L84:
	movq	40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L82
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L83
L82:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L83:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L81
	call	abort
L81:
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L84
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
	je	L93
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L93:
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
	je	L88
	call	abort
L88:
	jmp	L89
L92:
	movq	48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L90
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L91
L90:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L91:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L89
	call	abort
L89:
	movq	48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L92
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
	je	L101
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L101:
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
	je	L96
	call	abort
L96:
	jmp	L97
L100:
	movq	56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 56(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L98
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L99
L98:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L99:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L97
	call	abort
L97:
	movq	56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L100
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
	je	L109
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L109:
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
	je	L104
	call	abort
L104:
	jmp	L105
L108:
	movq	64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 64(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L106
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L107
L106:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L107:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L105
	call	abort
L105:
	movq	64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L108
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
	je	L117
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L117:
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
	je	L112
	call	abort
L112:
	jmp	L113
L116:
	movq	72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 72(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L114
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L115
L114:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L115:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L113
	call	abort
L113:
	movq	72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L116
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
	je	L125
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L125:
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
	je	L120
	call	abort
L120:
	jmp	L121
L124:
	movq	80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 80(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L122
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L123
L122:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L123:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L121
	call	abort
L121:
	movq	80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L124
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
	je	L133
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L133:
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
	je	L128
	call	abort
L128:
	jmp	L129
L132:
	movq	88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 88(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L130
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	L131
L130:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
L131:
	movl	(%rax), %eax
	movl	%eax, %edi
	call	to_hex
	cmpl	%eax, %ebx
	je	L129
	call	abort
L129:
	movq	88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L132
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
hex.2259:
	.string	"0123456789abcdef"
