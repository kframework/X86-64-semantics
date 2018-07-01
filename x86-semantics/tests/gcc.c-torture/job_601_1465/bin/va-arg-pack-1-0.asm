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
v1:
	.long	8
v2:
	.quad	3
v3:
	.quad	v2
v4:
	.string	"foo"
	.zero	12
v5:
	.long	0
	.long	2684354560
	.long	16388
	.long	0
	.comm	seen,20,16
	.comm	cnt,4,4
foo1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movl	%esi, -280(%rbp)
	movl	$16, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	cmpl	$0, -276(%rbp)
	js	L11
	cmpl	$19, -276(%rbp)
	jg	L11
	movl	-276(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	L12
L11:
	call	abort
L12:
	movl	cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt(%rip)
	movl	cnt(%rip), %eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	cltq
	movb	%dl, seen(%rax)
	cmpl	$6, -280(%rbp)
	je	L13
	call	abort
L13:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L14
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L15
L14:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L15:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$5, -180(%rbp)
	je	L16
	call	abort
L16:
	movl	-276(%rbp), %eax
	cmpl	$1, %eax
	je	L18
	cmpl	$2, %eax
	je	L48
	testl	%eax, %eax
	jne	L46
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L21
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L22
L21:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L22:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$9, -180(%rbp)
	jne	L23
	movl	v1(%rip), %eax
	cmpl	$9, %eax
	je	L24
L23:
	call	abort
L24:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L25
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L26
L25:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L26:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	leaq	-240(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L27
	call	abort
L27:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L28
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L29
L28:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L29:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$v4, -192(%rbp)
	je	L30
	call	abort
L30:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L31
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L32
L31:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L32:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$3, -200(%rbp)
	jne	L33
	movq	v2(%rip), %rax
	cmpq	$4, %rax
	je	L34
L33:
	call	abort
L34:
	jmp	L35
L18:
	movq	-256(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
	movl	8(%rax), %edx
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movl	%edx, -216(%rbp)
	fldt	-224(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L36
	fldt	-224(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L36
	fldt	v5(%rip)
	fldt	-224(%rbp)
	fucomip	%st(1), %st
	jp	L49
	fldt	-224(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L47
	jmp	L36
L49:
	fstp	%st(0)
L36:
	call	abort
L47:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L39
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L40
L39:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L40:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$8, -180(%rbp)
	je	L41
	call	abort
L41:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L43
L42:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L43:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$v2, -192(%rbp)
	je	L44
	call	abort
L44:
	jmp	L35
L46:
	call	abort
L48:
	nop
L35:
	movl	-276(%rbp), %eax
	leave
	ret
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L51
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L51:
	movl	%esi, -280(%rbp)
	movl	$16, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	cmpl	$0, -276(%rbp)
	js	L52
	cmpl	$19, -276(%rbp)
	jg	L52
	movl	-276(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	L53
L52:
	call	abort
L53:
	movl	cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt(%rip)
	movl	cnt(%rip), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	cltq
	movb	%dl, seen(%rax)
	cmpl	$10, -280(%rbp)
	je	L54
	call	abort
L54:
	movl	-276(%rbp), %eax
	cmpl	$11, %eax
	je	L78
	cmpl	$12, %eax
	je	L57
	cmpl	$2, %eax
	je	L79
	jmp	L76
L57:
	movq	-256(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
	movl	8(%rax), %edx
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	%edx, -184(%rbp)
	fldt	-192(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L60
	fldt	-192(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L60
	fldt	v5(%rip)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	jp	L80
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L77
	jmp	L60
L80:
	fstp	%st(0)
L60:
	call	abort
L77:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L63
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L64
L63:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L64:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L65
	call	abort
L65:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L66
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L67
L66:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L67:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	leaq	-240(%rbp), %rax
	movl	$16, %edx
	movl	$v4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L68
	call	abort
L68:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L69
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L70
L69:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L70:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$v2, -200(%rbp)
	je	L71
	call	abort
L71:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L72
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L73
L72:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L73:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpq	$16, -208(%rbp)
	je	L74
	call	abort
L74:
	jmp	L59
L76:
	call	abort
L78:
	nop
	jmp	L59
L79:
	nop
L59:
	movl	-276(%rbp), %eax
	addl	$8, %eax
	leave
	ret
foo3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	v2(%rip), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, v2(%rip)
	movl	v1(%rip), %eax
	addl	$1, %eax
	movl	%eax, v1(%rip)
	movl	v1(%rip), %r12d
	movl	$0, -36(%rbp)
	cmpl	$9, -36(%rbp)
	jg	L84
	call	foo3
	movl	%eax, %esi
	movq	v4(%rip), %rax
	movq	v4+8(%rip), %rdx
	movl	-36(%rbp), %edi
	pushq	%rbx
	pushq	$v4
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movl	$5, %edx
	movl	$0, %eax
	call	foo1
	addq	$16, %rsp
	jmp	L85
L84:
	call	foo3
	leal	4(%rax), %esi
	subq	$8, %rsp
	movq	v4(%rip), %rdx
	movq	v4+8(%rip), %rdi
	movl	-36(%rbp), %eax
	pushq	%rbx
	movl	$v4, %r9d
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	%r12d, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
	addq	$16, %rsp
L85:
	testl	%eax, %eax
	je	L86
	call	abort
L86:
	movq	v3(%rip), %rbx
	fldt	v5(%rip)
	fld1
	faddp	%st, %st(1)
	fstpt	v5(%rip)
	movq	v5(%rip), %r12
	movl	v5+8(%rip), %r13d
	movl	$1, -40(%rbp)
	cmpl	$9, -40(%rbp)
	jg	L87
	call	foo3
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	pushq	%r13
	pushq	%r12
	movq	%rbx, %r8
	movl	$8, %ecx
	movl	$5, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	addq	$16, %rsp
	jmp	L88
L87:
	call	foo3
	leal	4(%rax), %esi
	movl	-40(%rbp), %eax
	pushq	%r13
	pushq	%r12
	movq	%rbx, %rcx
	movl	$8, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
	addq	$16, %rsp
L88:
	cmpl	$1, %eax
	je	L89
	call	abort
L89:
	movl	$2, -44(%rbp)
	cmpl	$9, -44(%rbp)
	jg	L90
	call	foo3
	movl	%eax, %ecx
	movl	-44(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	L91
L90:
	call	foo3
	leal	4(%rax), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
L91:
	cmpl	$2, %eax
	je	L92
	call	abort
L92:
	movl	v1(%rip), %eax
	addl	$2, %eax
	movl	%eax, -48(%rbp)
	cmpl	$9, -48(%rbp)
	jg	L93
	call	foo3
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	L94
L93:
	call	foo3
	leal	4(%rax), %edx
	movl	-48(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
L94:
	cmpl	$19, %eax
	je	L95
	call	abort
L95:
	movq	v3(%rip), %r12
	fldt	v5(%rip)
	fld	%st(0)
	fstpt	-80(%rbp)
	fld1
	fsubrp	%st, %st(1)
	fstpt	v5(%rip)
	movl	v1(%rip), %eax
	addl	$3, %eax
	movl	%eax, -52(%rbp)
	cmpl	$9, -52(%rbp)
	jg	L96
	call	foo3
	movl	%eax, %esi
	subq	$8, %rsp
	movq	v4(%rip), %rdx
	movq	v4+8(%rip), %rdi
	movl	-52(%rbp), %eax
	pushq	$16
	pushq	v4+8(%rip)
	pushq	v4(%rip)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%r12, %r9
	movq	%rdx, %rcx
	movq	%rdi, %r8
	movl	$5, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	addq	$48, %rsp
	jmp	L97
L96:
	call	foo3
	leal	4(%rax), %esi
	movq	v4(%rip), %rcx
	movq	v4+8(%rip), %rbx
	movq	v4(%rip), %rax
	movq	v4+8(%rip), %rdx
	movl	-52(%rbp), %edi
	pushq	$16
	pushq	%r12
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%rcx, %r8
	movq	%rbx, %r9
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	foo2
	addq	$32, %rsp
L97:
	cmpl	$20, %eax
	je	L98
	call	abort
L98:
	movl	$0, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
LC0:
	.long	0
	.long	2751463424
	.long	16388
	.long	0
LC2:
	.long	0
	.long	2684354560
	.long	16388
	.long	0
