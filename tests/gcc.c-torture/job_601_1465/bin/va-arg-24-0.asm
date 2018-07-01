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
	jmp	L10
L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	je	L11
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
L11:
	addl	$1, -4(%rbp)
L10:
	cmpl	$10, -4(%rbp)
	jle	L12
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
	je	L14
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L14:
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
	jmp	L15
L18:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L16
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L17
L16:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L17:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L15:
	cmpl	$10, -180(%rbp)
	jle	L18
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
	je	L20
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L20:
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
	jmp	L21
L24:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L23
L22:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L23:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L21:
	cmpl	$10, -180(%rbp)
	jle	L24
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
	je	L26
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L26:
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
	jmp	L27
L30:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L28
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L29
L28:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L29:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L27:
	cmpl	$10, -180(%rbp)
	jle	L30
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
	je	L32
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L32:
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
	jmp	L33
L36:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L34
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L35
L34:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L35:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L33:
	cmpl	$10, -180(%rbp)
	jle	L36
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
	je	L38
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L38:
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
	jmp	L39
L42:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L40
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L41
L40:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L41:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L39:
	cmpl	$10, -180(%rbp)
	jle	L42
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
	je	L55
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L55:
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
	jmp	L58
L61:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L59
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L60
L59:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L60:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L58:
	cmpl	$10, -180(%rbp)
	jle	L61
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
	je	L69
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L69:
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
	jmp	L65
L68:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L66
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L67
L66:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L67:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L65:
	cmpl	$10, -180(%rbp)
	jle	L68
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
	je	L76
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L76:
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
	jmp	L72
L75:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L73
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L74
L73:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L74:
	movl	(%rax), %edx
	movl	-180(%rbp), %eax
	cltq
	movl	%edx, -256(%rbp,%rax,4)
	addl	$1, -180(%rbp)
L72:
	cmpl	$10, -180(%rbp)
	jle	L75
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
	je	L78
	call	abort
L78:
	movl	$0, %edi
	call	exit
