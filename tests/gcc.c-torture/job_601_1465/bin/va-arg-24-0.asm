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
	.local	errors
	.comm	errors,4,4
LC0:
	.string	" %s: n[%d] = %d expected %d\n"
verify:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L42:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	je	L41
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	errors(%rip), %eax
	addl	$1, %eax
	movl	%eax, errors(%rip)
L41:
	addl	$1, -4(%rbp)
L40:
	cmpl	$10, -4(%rbp)
	jle	L42
	leave
	ret
LC1:
	.string	"varargs0"
varargs0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L44
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L44:
	movl	%edi, -260(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	$1, -180(%rbp)
	jmp	L45
L48:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L46
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L47
L46:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L47:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L45:
	cmpl	$10, -180(%rbp)
	jle	L48
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	verify
	leave
	ret
LC2:
	.string	"varargs1"
varargs1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L50
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L50:
	movl	%esi, -264(%rbp)
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	$2, -180(%rbp)
	jmp	L51
L54:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L52
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L53
L52:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L53:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L51:
	cmpl	$10, -180(%rbp)
	jle	L54
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	verify
	leave
	ret
LC3:
	.string	"varargs2"
varargs2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L56
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L56:
	movl	%edx, -268(%rbp)
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	$3, -180(%rbp)
	jmp	L57
L60:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L58
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L59
L58:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L59:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L57:
	cmpl	$10, -180(%rbp)
	jle	L60
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	verify
	leave
	ret
LC4:
	.string	"varargs3"
varargs3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L62
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L62:
	movl	%ecx, -272(%rbp)
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	$4, -180(%rbp)
	jmp	L63
L66:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L64
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L65
L64:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L65:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L63:
	cmpl	$10, -180(%rbp)
	jle	L66
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	verify
	leave
	ret
LC5:
	.string	"varargs4"
varargs4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L68
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L68:
	movl	%r8d, -276(%rbp)
	movl	$40, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	$5, -180(%rbp)
	jmp	L69
L72:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L70
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L71
L70:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L71:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L69:
	cmpl	$10, -180(%rbp)
	jle	L72
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	verify
	leave
	ret
LC6:
	.string	"varargs5"
varargs5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	testb	%al, %al
	je	L74
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L74:
	movl	%r9d, -280(%rbp)
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	$6, -180(%rbp)
	jmp	L75
L78:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L76
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L77
L76:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L77:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L75:
	cmpl	$10, -180(%rbp)
	jle	L78
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	verify
	leave
	ret
LC7:
	.string	"varargs6"
varargs6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	movl	%r9d, -280(%rbp)
	testb	%al, %al
	je	L85
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L85:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	$7, -180(%rbp)
	jmp	L81
L84:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L82
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L83
L82:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L83:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L81:
	cmpl	$10, -180(%rbp)
	jle	L84
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	call	verify
	leave
	ret
LC8:
	.string	"varargs7"
varargs7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	movl	%r9d, -280(%rbp)
	testb	%al, %al
	je	L92
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L92:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	24(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	$8, -180(%rbp)
	jmp	L88
L91:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L89
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L90
L89:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L90:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L88:
	cmpl	$10, -180(%rbp)
	jle	L91
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC8, %edi
	call	verify
	leave
	ret
LC9:
	.string	"varargs8"
varargs8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	movl	%r9d, -280(%rbp)
	testb	%al, %al
	je	L99
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L99:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	24(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	$9, -180(%rbp)
	jmp	L95
L98:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L96
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L97
L96:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L97:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L95:
	cmpl	$10, -180(%rbp)
	jle	L98
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC9, %edi
	call	verify
	leave
	ret
LC10:
	.string	"varargs9"
varargs9:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movl	%edx, -268(%rbp)
	movl	%ecx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	movl	%r9d, -280(%rbp)
	testb	%al, %al
	je	L106
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L106:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	24(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	40(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	$10, -180(%rbp)
	jmp	L102
L105:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L103
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L104
L103:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L104:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L102:
	cmpl	$10, -180(%rbp)
	jle	L105
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC10, %edi
	call	verify
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
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
	call	varargs0
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs1
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs2
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs3
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs4
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs5
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs6
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs7
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs8
	addq	$48, %rsp
	subq	$8, %rsp
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
	call	varargs9
	addq	$48, %rsp
	movl	errors(%rip), %eax
	testl	%eax, %eax
	je	L108
	call	abort
L108:
	movl	$0, %edi
	call	exit
