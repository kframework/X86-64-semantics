	.file	"snprintf-chk.c"
	.comm	chk_fail_allowed,4,4
	.comm	chk_calls,4,4
	.comm	memcpy_disallowed,4,4
	.comm	mempcpy_disallowed,4,4
	.comm	memmove_disallowed,4,4
	.comm	memset_disallowed,4,4
	.comm	strcpy_disallowed,4,4
	.comm	stpcpy_disallowed,4,4
	.comm	strncpy_disallowed,4,4
	.comm	stpncpy_disallowed,4,4
	.comm	strcat_disallowed,4,4
	.comm	strncat_disallowed,4,4
	.comm	sprintf_disallowed,4,4
	.comm	vsprintf_disallowed,4,4
	.comm	snprintf_disallowed,4,4
	.comm	vsnprintf_disallowed,4,4
	.text
	.globl	__chk_fail
__chk_fail:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.globl	memcpy
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L3
L4:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L3:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L4
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memcpy_chk
__memcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L7
	call	abort
L7:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L8
	call	__chk_fail
L8:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	ret
	.globl	mempcpy
mempcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L11
L12:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L11:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__mempcpy_chk
__mempcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L15
	call	abort
L15:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L16
	call	__chk_fail
L16:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy
	leave
	ret
	.globl	memmove
memmove:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	L23
	jmp	L20
L21:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
L20:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L21
	jmp	L22
L24:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L23:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L24
L22:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memmove_chk
__memmove_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L27
	call	abort
L27:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L28
	call	__chk_fail
L28:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	leave
	ret
	.globl	memset
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	L31
L32:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
L31:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	L32
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memset_chk
__memset_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L35
	call	abort
L35:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L36
	call	__chk_fail
L36:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset
	leave
	ret
	.globl	strcpy
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L39:
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
	jne	L39
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strcpy_chk
__strcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L42
	call	abort
L42:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L43
	call	__chk_fail
L43:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leave
	ret
	.globl	stpcpy
stpcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L46
L47:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L46:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L47
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__stpcpy_chk
__stpcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L50
	call	abort
L50:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L51
	call	__chk_fail
L51:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy
	leave
	ret
	.globl	stpncpy
stpncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	jmp	L54
L56:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L54:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L55
	cmpq	$0, -40(%rbp)
	jne	L56
L55:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L57
L58:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L57:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L58
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__stpncpy_chk
__stpncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L61
	call	abort
L61:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L62
	call	__chk_fail
L62:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	leave
	ret
	.globl	strncpy
strncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L65
L67:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L65:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L68
	cmpq	$0, -40(%rbp)
	jne	L67
	jmp	L68
L69:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L68:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L69
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strncpy_chk
__strncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L72
	call	abort
L72:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L73
	call	__chk_fail
L73:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leave
	ret
	.globl	strcat
strcat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L76
L77:
	addq	$1, -8(%rbp)
L76:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L77
	nop
L78:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L78
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strcat_chk
__strcat_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	L81
	call	abort
L81:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	cmpq	-40(%rbp), %rax
	jb	L82
	call	__chk_fail
L82:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.globl	strncat
strncat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L85
L86:
	addq	$1, -24(%rbp)
L85:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L86
	movb	$0, -9(%rbp)
	jmp	L87
L90:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	cmpb	$0, -9(%rbp)
	jne	L88
	movq	-8(%rbp), %rax
	jmp	L89
L88:
	subq	$1, -40(%rbp)
L87:
	cmpq	$0, -40(%rbp)
	jne	L90
	cmpb	$0, -9(%rbp)
	je	L91
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
L91:
	movq	-8(%rbp), %rax
L89:
	popq	%rbp
	ret
	.globl	__strncat_chk
__strncat_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$-1, -64(%rbp)
	jne	L93
	call	abort
L93:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	jmp	L94
L97:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L100
	addq	$1, -24(%rbp)
	subq	$1, -16(%rbp)
L94:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	L96
	cmpq	$0, -16(%rbp)
	jne	L97
	jmp	L96
L100:
	nop
L96:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	L98
	call	__chk_fail
L98:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	leave
	ret
	.comm	chk_sprintf_buf,4096,32
	.globl	__sprintf_chk
__sprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L102
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L102:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -248(%rbp)
	jne	L103
	cmpl	$0, -236(%rbp)
	jne	L103
	call	abort
L103:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L104
	movl	-212(%rbp), %eax
	cltq
	cmpq	-248(%rbp), %rax
	jb	L105
	call	__chk_fail
L105:
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L104:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L107
	call	__stack_chk_fail
L107:
	leave
	ret
	.globl	__vsprintf_chk
__vsprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	L109
	cmpl	$0, -28(%rbp)
	jne	L109
	call	abort
L109:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L110
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jb	L111
	call	__chk_fail
L111:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L110:
	movl	-4(%rbp), %eax
	leave
	ret
	.globl	__snprintf_chk
__snprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L114
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L114:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -256(%rbp)
	jne	L115
	cmpl	$0, -244(%rbp)
	jne	L115
	call	abort
L115:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-256(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	L116
	call	__chk_fail
L116:
	movl	$40, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L117
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L118
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L117
L118:
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L117:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L120
	call	__stack_chk_fail
L120:
	leave
	ret
	.globl	__vsnprintf_chk
__vsnprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$-1, -48(%rbp)
	jne	L122
	cmpl	$0, -36(%rbp)
	jne	L122
	call	abort
L122:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	L123
	call	__chk_fail
L123:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L124
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L125
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L124
L125:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L124:
	movl	-4(%rbp), %eax
	leave
	ret
	.globl	snprintf
snprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L128
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L128:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L129
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L130
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L129
L130:
	cmpq	$0, -240(%rbp)
	je	L129
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L129:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L132
	call	__stack_chk_fail
L132:
	leave
	ret
	.globl	vsnprintf
vsnprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L134
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L135
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L134
L135:
	cmpq	$0, -32(%rbp)
	je	L134
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L134:
	movl	-4(%rbp), %eax
	leave
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.globl	s1
	.section	.rodata
s1:
	.string	"123"
	.globl	p
	.bss
p:
	.zero	32
	.globl	s2
	.section	.rodata
LC0:
	.string	"defg"
	.data
s2:
	.quad	LC0
	.globl	s3
	.section	.rodata
LC1:
	.string	"FGH"
	.data
s3:
	.quad	LC1
	.comm	s4,8,8
	.globl	l1
l1:
	.quad	1
	.comm	buffer,32,32
	.globl	ptr
	.section	.rodata
LC2:
	.string	"barf"
	.data
ptr:
	.quad	LC2
	.section	.rodata
LC3:
	.string	"foo"
LC4:
	.string	"foo bar"
LC5:
	.string	"bar"
LC6:
	.string	"%d%d%d"
LC7:
	.string	"121"
LC8:
	.string	"1213"
LC9:
	.string	"%s"
LC10:
	.string	"%d - %c"
LC11:
	.string	"28 - b"
	.string	"AAAAA"
LC12:
	.string	"-16 - "
	.string	"AAA"
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movl	$0, $chk_calls(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movl	$7303014, $buffer(%rip)
	movl	$4, %edx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L141
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L142
L141:
	call	abort
L142:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movl	$LC4, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	movl	$0, %eax
	call	snprintf
	cmpl	$7, %eax
	je	L143
	call	abort
L143:
	movl	$4, %edx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L144
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L145
L144:
	call	abort
L145:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movl	$7496034, $buffer(%rip)
	movl	$4, %edx
	movl	$LC5, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L146
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L147
L146:
	call	abort
L147:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movl	$7496034, $buffer(%rip)
	movl	$3, %eax
	cmpl	$3, %eax
	je	L148
	call	abort
L148:
	movl	$4, %edx
	movl	$LC5, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L149
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L150
L149:
	call	abort
L150:
	movl	$0, $snprintf_disallowed(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movq $l1(%rip), %rax
	leal	12(%rax), %ecx
	movq $l1(%rip), %rax
	leal	1(%rax), %edx
	movq $l1(%rip), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %ecx
	movl	$LC6, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	movl	$0, %eax
	call	snprintf
	cmpl	$4, %eax
	je	L151
	call	abort
L151:
	movl	$4, %edx
	movl	$LC7, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L152
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L153
L152:
	call	abort
L153:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movq $l1(%rip), %rax
	leal	12(%rax), %ecx
	movq $l1(%rip), %rax
	leal	1(%rax), %edx
	movq $l1(%rip), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %ecx
	movl	$LC6, %edx
	movl	$32, %esi
	movl	$buffer, %edi
	movl	$0, %eax
	call	snprintf
	cmpl	$4, %eax
	je	L154
	call	abort
L154:
	movl	$5, %edx
	movl	$LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L155
	movzbl $buffer + 5(%rip), %eax
	cmpb	$65, %al
	je	L156
L155:
	call	abort
L156:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L157
	call	abort
L157:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movq $ptr(%rip), %rbx
	movq $ptr(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	movq	%rbx, %r9
	movl	$LC9, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$buffer, %edi
	movl	$0, %eax
	call	__snprintf_chk
	movl	$5, %edx
	movl	$LC2, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L158
	movzbl $buffer + 5(%rip), %eax
	cmpb	$65, %al
	je	L159
L158:
	call	abort
L159:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $buffer + 24(%rip)
	movq $ptr(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $l1(%rip), %rdx
	leal	27(%rdx), %ecx
	movq $l1(%rip), %rdx
	leaq	31(%rdx), %rsi
	subq	$8, %rsp
	pushq	%rax
	movl	%ecx, %r9d
	movl	$LC10, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movl	$buffer, %edi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	movl	$12, %edx
	movl	$LC11, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	je	L160
	call	abort
L160:
	movl $chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	L161
	call	abort
L161:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $s4(%rip), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq $ptr(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq $l1(%rip), %rax
	leal	-17(%rax), %ecx
	movq	$-1, %rdi
	movq $l1(%rip), %rax
	leaq	6(%rax), %rsi
	movq $s4(%rip), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	%ecx, %r9d
	movl	$LC10, %r8d
	movq	%rdi, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	movq $s4(%rip), %rax
	movl	$10, %edx
	movl	$LC12, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L162
	call	abort
L162:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L164
	call	abort
L164:
	nop
	movq	-8(%rbp), %rbx
	leave
	ret
	.section	.rodata
LC13:
	.string	"%s%c"
LC14:
	.string	"%c %s"
LC15:
	.string	""
LC16:
	.string	"a"
LC17:
	.string	"%s %d"
	.text
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	$40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L166
	leaq	-96(%rbp), %rax
	addq	$5, %rax
	jmp	L167
L166:
	leaq	-96(%rbp), %rax
	addq	$14, %rax
L167:
	movq	%rax, -104(%rbp)
	movl	$0, $chk_calls(%rip)
	movq $s3(%rip), %rax
	leaq	3(%rax), %rdx
	movq	$-1, %rcx
	movq $l1(%rip), %rsi
	leaq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %r9
	movl	$LC9, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movq $s3(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq $s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	$-1, %rdi
	movq $l1(%rip), %rax
	leaq	4(%rax), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movl	$LC13, %r8d
	movq	%rdi, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L168
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L169
L168:
	leaq	-96(%rbp), %rax
	addq	$17, %rax
L169:
	movq	%rax, -104(%rbp)
	movq $s2(%rip), %rax
	leaq	4(%rax), %r12
	movq $s2(%rip), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movq	$-1, %r13
	movq $s2(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-2(%rax), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	%r12
	movl	%ebx, %r9d
	movl	$LC14, %r8d
	movq	%r13, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	movq $s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	$-1, %rsi
	movq $l1(%rip), %rax
	movq	-104(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	__snprintf_chk
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	jmp	L170
L175:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L171
	leaq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	L172
L171:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L173
	leaq	-96(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -104(%rbp)
	jmp	L172
L173:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L174
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -104(%rbp)
	jmp	L172
L174:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L172
	leaq	-96(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -104(%rbp)
L172:
	addl	$1, -108(%rbp)
L170:
	cmpl	$3, -108(%rbp)
	jle	L175
	movq $s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq	$-1, %rcx
	movq $l1(%rip), %rsi
	movq	-104(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L176
	call	abort
L176:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	leaq	-96(%rbp), %rax
	addq	$2, %rax
	movl	$LC15, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movq	$-1, %rdx
	movq	-104(%rbp), %rax
	movl	$LC16, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L177
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L178
L177:
	leaq	-96(%rbp), %rax
	addq	$17, %rax
L178:
	movq	%rax, -104(%rbp)
	movl $s1 + 1, %ecx
	movq	$-1, %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %r9
	movl	$LC9, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	jmp	L179
L184:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L180
	leaq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	L181
L180:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L182
	leaq	-96(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -104(%rbp)
	jmp	L181
L182:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L183
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -104(%rbp)
	jmp	L181
L183:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L181
	leaq	-96(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -104(%rbp)
L181:
	addl	$1, -108(%rbp)
L179:
	cmpl	$3, -108(%rbp)
	jle	L184
	movq	$-1, %rdx
	movq	-104(%rbp), %rax
	movl	$LC15, %r9d
	movl	$LC9, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movq	$-1, %rdx
	movq	-104(%rbp), %rax
	movl	$LC15, %r9d
	movl	$LC9, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	movl	$0, $snprintf_disallowed(%rip)
	movq $s3(%rip), %rdx
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	31(%rax), %rsi
	movq $s4(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movl	$LC17, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L187
	call	abort
L187:
	nop
	movq	-40(%rbp), %rax
	xorq	$40, %rax
	je	L186
	call	__stack_chk_fail
L186:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.section	.rodata
LC18:
	.string	"%c%s"
LC19:
	.string	"%d"
LC20:
	.string	"abc"
	.text
	.globl	test3
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	$40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, $chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L189, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L190
L189:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L190:
	testl	%eax, %eax
	jne	L191
	movq $s2(%rip), %rax
	leaq	4(%rax), %rcx
	movq $s2(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq $l1(%rip), %rax
	leaq	1(%rax), %rsi
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%edx, %r9d
	movl	$LC18, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	call	abort
L191:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L192, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L193
L192:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L193:
	testl	%eax, %eax
	jne	L194
	movq $s3(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -116(%rbp)
	movq $s3(%rip), %rax
	movq	%rax, -128(%rbp)
	movq $s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$2, %rax
	movq	-128(%rbp), %rdx
	addq	%rax, %rdx
	movq $l1(%rip), %rax
	leaq	30(%rax), %rsi
	leaq	-112(%rbp), %rax
	addq	$17, %rax
	subq	$8, %rsp
	movl	-116(%rbp), %ebx
	pushq	%rbx
	movq	%rdx, %r9
	movl	$LC13, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	addq	$16, %rsp
	call	abort
L194:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L195, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L196
L195:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L196:
	testl	%eax, %eax
	jne	L197
	movq $l1(%rip), %rax
	leal	9999(%rax), %edx
	movq $l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-112(%rbp), %rax
	addq	$17, %rax
	movl	%edx, %r9d
	movl	$LC19, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	call	abort
L197:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rdi
	movq	%rdi, (%rax)
	movl	$L198, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L199
L198:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L199:
	testl	%eax, %eax
	jne	L200
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$LC16, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	call	abort
L200:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L201, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L202
L201:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L202:
	testl	%eax, %eax
	jne	L203
	leaq	-80(%rbp), %rax
	addq	$17, %rax
	movl	$LC16, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	call	abort
L203:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L204, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L205
L204:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L205:
	testl	%eax, %eax
	jne	L206
	leaq	-80(%rbp), %rax
	addq	$17, %rax
	movl	$LC20, %r9d
	movl	$LC9, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	call	abort
L206:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L207
	call	__stack_chk_fail
L207:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
