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
	movl	%esi, -280(%rbp)
	movl	$16, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	cmpl	$0, -276(%rbp)
	js	L41
	cmpl	$19, -276(%rbp)
	jg	L41
	movl	-276(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	L42
L41:
	call	abort
L42:
	movl	cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnt(%rip)
	movl	cnt(%rip), %eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	cltq
	movb	%dl, seen(%rax)
	cmpl	$6, -280(%rbp)
	je	L43
	call	abort
L43:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L44
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L45
L44:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L45:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$5, -180(%rbp)
	je	L46
	call	abort
L46:
	movl	-276(%rbp), %eax
	cmpl	$1, %eax
	je	L48
	cmpl	$2, %eax
	je	L78
	testl	%eax, %eax
	jne	L76
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L51
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L52
L51:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L52:
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$9, -180(%rbp)
	jne	L53
	movl	v1(%rip), %eax
	cmpl	$9, %eax
	je	L54
L53:
	call	abort
L54:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L55
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L56
L55:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L56:
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
	je	L57
	call	abort
L57:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L58
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L59
L58:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L59:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$v4, -192(%rbp)
	je	L60
	call	abort
L60:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L61
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L62
L61:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L62:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$3, -200(%rbp)
	jne	L63
	movq	v2(%rip), %rax
	cmpq	$4, %rax
	je	L64
L63:
	call	abort
L64:
	jmp	L65
L48:
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
	jp	L66
	fldt	-224(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L66
	fldt	v5(%rip)
	fldt	-224(%rbp)
	fucomip	%st(1), %st
	jp	L79
	fldt	-224(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L77
	jmp	L66
L79:
	fstp	%st(0)
L66:
	call	abort
L77:
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
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	cmpl	$8, -180(%rbp)
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
	movq	%rax, -192(%rbp)
	cmpq	$v2, -192(%rbp)
	je	L74
	call	abort
L74:
	jmp	L65
L76:
	call	abort
L78:
	nop
L65:
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
	je	L81
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L81:
	movl	%esi, -280(%rbp)
	movl	$16, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	cmpl	$0, -276(%rbp)
	js	L82
	cmpl	$19, -276(%rbp)
	jg	L82
	movl	-276(%rbp), %eax
	cltq
	movzbl	seen(%rax), %eax
	testb	%al, %al
	je	L83
L82:
	call	abort
L83:
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
	je	L84
	call	abort
L84:
	movl	-276(%rbp), %eax
	cmpl	$11, %eax
	je	L108
	cmpl	$12, %eax
	je	L87
	cmpl	$2, %eax
	je	L109
	jmp	L106
L87:
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
	jp	L90
	fldt	-192(%rbp)
	fldt	LC0(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L90
	fldt	v5(%rip)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	jp	L110
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L107
	jmp	L90
L110:
	fstp	%st(0)
L90:
	call	abort
L107:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L93
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L94
L93:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L94:
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
	je	L95
	call	abort
L95:
	movl	-264(%rbp), %eax
	cmpl	$40, %eax
	jae	L96
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -264(%rbp)
	jmp	L97
L96:
	movq	-256(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -256(%rbp)
L97:
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
	je	L98
	call	abort
L98:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L99
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L100
L99:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L100:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$v2, -200(%rbp)
	je	L101
	call	abort
L101:
	movl	-264(%rbp), %eax
	cmpl	$48, %eax
	jae	L102
	movq	-248(%rbp), %rdx
	movl	-264(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	L103
L102:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
L103:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpq	$16, -208(%rbp)
	je	L104
	call	abort
L104:
	jmp	L89
L106:
	call	abort
L108:
	nop
	jmp	L89
L109:
	nop
L89:
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
	jg	L114
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
	jmp	L115
L114:
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
L115:
	testl	%eax, %eax
	je	L116
	call	abort
L116:
	movq	v3(%rip), %rbx
	fldt	v5(%rip)
	fld1
	faddp	%st, %st(1)
	fstpt	v5(%rip)
	movq	v5(%rip), %r12
	movl	v5+8(%rip), %r13d
	movl	$1, -40(%rbp)
	cmpl	$9, -40(%rbp)
	jg	L117
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
	jmp	L118
L117:
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
L118:
	cmpl	$1, %eax
	je	L119
	call	abort
L119:
	movl	$2, -44(%rbp)
	cmpl	$9, -44(%rbp)
	jg	L120
	call	foo3
	movl	%eax, %ecx
	movl	-44(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	L121
L120:
	call	foo3
	leal	4(%rax), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
L121:
	cmpl	$2, %eax
	je	L122
	call	abort
L122:
	movl	v1(%rip), %eax
	addl	$2, %eax
	movl	%eax, -48(%rbp)
	cmpl	$9, -48(%rbp)
	jg	L123
	call	foo3
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	movl	$5, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo1
	jmp	L124
L123:
	call	foo3
	leal	4(%rax), %edx
	movl	-48(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	foo2
L124:
	cmpl	$19, %eax
	je	L125
	call	abort
L125:
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
	jg	L126
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
	jmp	L127
L126:
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
L127:
	cmpl	$20, %eax
	je	L128
	call	abort
L128:
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
