	.file	"memmove-chk.c"
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
	.globl	l1
l1:
	.quad	1
	.section	.rodata
LC2:
	.string	"ABCDE"
LC3:
	.string	"VWX"
LC4:
	.string	"WX"
	.string	""
	.string	""
LC5:
	.string	""
LC6:
	.string	"A"
	.string	"CDE"
LC7:
	.string	"FGHI"
LC8:
	.string	"A"
	.string	"CFGHI"
LC9:
	.string	"qrstu"
LC10:
	.string	"QRSTU"
LC11:
	.string	"Q123U"
LC12:
	.string	"abcdefg"
LC13:
	.string	"ABCDEFg"
LC14:
	.string	"ABCDEF2"
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, $memmove_disallowed(%rip)
	movl	$1, $memcpy_disallowed(%rip)
	movl	$0, $chk_calls(%rip)
	movl	$1145258561, $p(%rip)
	movw	$69, $p + 4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L141
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L142
L141:
	call	abort
L142:
	movq	$-1, %rdx
	movl $LC3 + 1, %esi
	movl $p + 16, %eax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 16, %eax
	cmpq	%rax, %rdx
	jne	L143
	movl $p + 16, %eax
	movl	$5, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L144
L143:
	call	abort
L144:
	movq	$-1, %rdx
	movl $p + 1, %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 1, %eax
	cmpq	%rax, %rdx
	jne	L145
	movl	$6, %edx
	movl	$LC6, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L146
L145:
	call	abort
L146:
	movq	$-1, %rdx
	movl $p + 3, %eax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 3, %eax
	cmpq	%rax, %rdx
	jne	L147
	movl	$8, %edx
	movl	$LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L148
L147:
	call	abort
L148:
	movl	$8, -4(%rbp)
	movq	$-1, %rdx
	movl $p + 20, %eax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC9, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rdx
	movl $p + 25, %eax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC10, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rdx
	movl $p + 26, %eax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$s1, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 26, %eax
	cmpq	%rax, %rdx
	jne	L149
	movl $p + 25, %eax
	movl	$6, %edx
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L150
L149:
	call	abort
L150:
	movl	$1684234849, $p(%rip)
	movl	$p, %eax
	addq	$4, %rax
	movl	$6776421, (%rax)
	movq	%rax, %rdx
	movl $p + 4, %eax
	cmpq	%rax, %rdx
	jne	L151
	movl	$8, %edx
	movl	$LC12, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L152
L151:
	call	abort
L152:
	movl	$1145258561, $p(%rip)
	movw	$69, $p + 4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L153
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L154
L153:
	call	abort
L154:
	movq	$-1, %rdx
	movq $s3(%rip), %rax
	movl $p + 5, %edi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movl	$8, %edx
	movl	$LC13, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L155
	call	abort
L155:
	movl	$0, $memmove_disallowed(%rip)
	movl	$0, $memcpy_disallowed(%rip)
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L156
	call	abort
L156:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $l1(%rip), %rax
	movl $s1 + 1, %esi
	movl $p + 6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	__memmove_chk
	movl	$8, %edx
	movl	$LC14, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L157
	call	abort
L157:
	movl $chk_calls(%rip), %eax
	cmpl	$1, %eax
	je	L159
	call	abort
L159:
	nop
	leave
	ret
	.comm	buf1,512,32
	.globl	buf2
	.data
buf2:
	 .quad buf1 + 256
	.comm	buf5,160,32
	.comm	buf7,20,16
	.section	.rodata
LC15:
	.string	"ABCDEFGHI"
	.string	""
LC16:
	.string	"abcdefghijklmnopq"
	.string	""
LC17:
	.string	"ABCDEF"
LC18:
	.string	"ABCDEFghijklmnopq"
	.string	""
LC19:
	.string	"a"
LC20:
	.string	"aBCDEFghijklmnopq"
	.string	""
LC21:
	.string	"bcd"
LC22:
	.string	"aBcdEFghijklmnopq"
	.string	""
LC23:
	.string	"aBcdRSTUVWklmnopq"
	.string	""
LC24:
	.string	"aBcdRSTUVWSlmnopq"
	.string	""
LC25:
	.string	"aBcdRSTUVWSlmnrsq"
	.string	""
LC26:
	.string	"RSTUVWXYVWSlmnrsq"
	.string	""
LC27:
	.string	"RSTUVWXYZ01234567"
	.string	""
LC28:
	.string	"aBcdRSTUVWkSmnopq"
	.string	""
LC29:
	.string	"aBcdRSTUVWkSmnrsq"
	.string	""
LC30:
	.string	"ABCDEFGHI"
LC31:
	.string	"abcdefghijklmnopq"
	.text
	.globl	test2_sub
test2_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, $chk_calls(%rip)
	movabsq	$5208208757389214273, %rax
	movq	%rax, $buf1(%rip)
	movb	$73, $buf1 + 8(%rip)
	movl	$buf1, %eax
	cmpq	$buf1, %rax
	jne	L161
	movl	$11, %edx
	movl	$LC15, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L162
L161:
	call	abort
L162:
	movabsq	$7523094288207667809, %rax
	movq	%rax, $buf1(%rip)
	movabsq	$8101815670912281193, %rax
	movq	%rax, $buf1 + 8(%rip)
	movb	$113, $buf1 + 16(%rip)
	movl	$buf1, %eax
	cmpq	$buf1, %rax
	jne	L163
	movl	$19, %edx
	movl	$LC16, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L164
L163:
	call	abort
L164:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC17, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	L165
	movl	$19, %edx
	movl	$LC18, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L166
L165:
	call	abort
L166:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC19, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	L167
	movl	$19, %edx
	movl	$LC20, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L168
L167:
	call	abort
L168:
	movq	$-1, %rdx
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	LC21(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $buf1 + 2, %eax
	cmpq	%rax, %rdx
	jne	L169
	movl	$19, %edx
	movl	$LC22, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L169
	cmpl	$1, -4(%rbp)
	je	L170
L169:
	call	abort
L170:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $buf1 + 4, %eax
	cmpq	%rax, %rdx
	jne	L171
	movl	$19, %edx
	movl	$LC23, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L172
L171:
	call	abort
L172:
	movl $buf5 + 1, %edx
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$8, %rax
	addq	$buf1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movl $buf1 + 10, %edx
	cmpq	%rdx, %rax
	jne	L173
	movl	$19, %edx
	movl	$LC24, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L173
	cmpl	$2, -4(%rbp)
	je	L174
L173:
	call	abort
L174:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $buf1 + 14, %eax
	cmpq	%rax, %rdx
	jne	L175
	movl	$19, %edx
	movl	$LC25, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L176
L175:
	call	abort
L176:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	L177
	movl	$19, %edx
	movl	$LC26, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L178
L177:
	call	abort
L178:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	L179
	movl	$19, %edx
	movl	$LC27, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L180
L179:
	call	abort
L180:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$19, %edx
	movl	$LC22, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	%rax, %rdx
	movl	$buf5, %esi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $buf1 + 4, %eax
	cmpq	%rax, %rdx
	jne	L181
	movl	$19, %edx
	movl	$LC23, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L182
L181:
	call	abort
L182:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movl $buf5 + 1, %esi
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
	leaq	buf1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memmove
	movl $buf1 + 11, %edx
	cmpq	%rdx, %rax
	jne	L183
	movl	$19, %edx
	movl	$LC28, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L183
	cmpl	$3, -4(%rbp)
	je	L184
L183:
	call	abort
L184:
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $buf1 + 14, %eax
	cmpq	%rax, %rdx
	jne	L185
	movl	$19, %edx
	movl	$LC29, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L186
L185:
	call	abort
L186:
	movl	$1, -4(%rbp)
	movq	$-1, %rdx
	movq $buf2(%rip), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$LC30, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L187
	movq $buf2(%rip), %rax
	movl	$11, %edx
	movl	$LC15, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L188
L187:
	call	abort
L188:
	movq	$-1, %rdx
	movq $buf2(%rip), %rax
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$LC31, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L189
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC16, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L190
L189:
	call	abort
L190:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC17, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L191
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC18, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L192
L191:
	call	abort
L192:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC19, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L193
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC20, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L194
L193:
	call	abort
L194:
	movq	$-1, %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	leaq	LC21(%rax), %rsi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	L195
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC22, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L195
	cmpl	$2, -4(%rbp)
	je	L196
L195:
	call	abort
L196:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$buf7, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L197
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC23, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L198
L197:
	call	abort
L198:
	movl $buf7 + 1, %esi
	movq $buf2(%rip), %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rcx, %rax
	movzbl	(%rsi), %edx
	movb	%dl, (%rax)
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$10, %rax
	cmpq	%rax, %rdx
	jne	L199
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC24, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L199
	cmpl	$3, -4(%rbp)
	je	L200
L199:
	call	abort
L200:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$14, %rax
	cmpq	%rax, %rdx
	jne	L201
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC25, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L202
L201:
	call	abort
L202:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$19, %edx
	movl	$LC22, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	%rax, %rdx
	movl	$buf7, %esi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L203
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC23, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L204
L203:
	call	abort
L204:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movl $buf7 + 1, %edi
	movq $buf2(%rip), %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rsi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	memmove
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	jne	L205
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC28, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L205
	cmpl	$4, -4(%rbp)
	je	L206
L205:
	call	abort
L206:
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$14, %rax
	cmpq	%rax, %rdx
	jne	L207
	movq $buf2(%rip), %rax
	movl	$19, %edx
	movl	$LC29, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L208
L207:
	call	abort
L208:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L210
	call	abort
L210:
	nop
	leave
	ret
	.section	.rodata
LC32:
	.string	"rstuvwxyz"
	.text
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movabsq	$6437991695636517714, %rax
	movq	%rax, $buf5(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, $buf5 + 8(%rip)
	movl	$3749943, $buf5 + 16(%rip)
	movabsq	$6437991695636517714, %rax
	movq	%rax, $buf7(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, $buf7 + 8(%rip)
	movl	$3749943, $buf7 + 16(%rip)
	movl	$buf1, %eax
	movq	%rax, -16(%rbp)
	movq $buf2(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$LC32, %edx
	movq	%rax, %rdi
	call	test2_sub
	nop
	leave
	ret
	.section	.rodata
LC33:
	.string	"hello world1"
LC34:
	.string	"hello world2"
LC35:
	.string	"hello world3"
LC36:
	.string	"hello world4"
LC37:
	.string	"hello world5"
LC38:
	.string	"hello world6"
foo:
	.quad	LC33
	.long	4028335726
	.long	1074340345
	.quad	101
	.quad	LC34
	.long	4028335726
	.long	1074340345
	.quad	102
	.quad	LC35
	.long	4028335726
	.long	1074340345
	.quad	103
	.quad	LC36
	.long	4028335726
	.long	1074340345
	.quad	104
	.quad	LC37
	.long	4028335726
	.long	1074340345
	.quad	105
	.quad	LC38
	.long	4028335726
	.long	1074340345
	.quad	106
LC39:
	.string	"hello world10"
LC40:
	.string	"hello1"
LC41:
	.string	"hello2"
LC42:
	.string	"hello3"
LC43:
	.string	"hello world11"
LC44:
	.string	"hello4"
LC45:
	.string	"hello5"
LC46:
	.string	"hello6"
bar:
	.quad	LC39
	.quad	LC40
	.long	4028335726
	.long	1074340345
	.quad	201
	.quad	LC41
	.long	4028335726
	.long	1074340345
	.quad	202
	.quad	LC42
	.long	4028335726
	.long	1074340345
	.quad	203
	.quad	LC43
	.quad	LC44
	.long	4028335726
	.long	1074340345
	.quad	204
	.quad	LC45
	.long	4028335726
	.long	1074340345
	.quad	205
	.quad	LC46
	.long	4028335726
	.long	1074340345
	.quad	206
baz:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	0
LC47:
	.string	"abcde"
LC48:
	.string	"abc"
	.string	"e"
LC49:
	.string	"fghijk"
LC50:
	.string	"abfghi"
LC51:
	.string	"abfgAi"
LC52:
	.string	"abggAi"
	.text
	.globl	test3
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, $chk_calls(%rip)
	movl	$1, $memmove_disallowed(%rip)
	leaq	-320(%rbp), %rax
	movl	$foo, %ecx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-320(%rbp), %rdx
	leaq	-320(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L213
	leaq	-320(%rbp), %rax
	movl	$144, %edx
	movl	$foo, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L214
L213:
	call	abort
L214:
	leaq	-176(%rbp), %rax
	movl	$bar, %ecx
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-176(%rbp), %rdx
	leaq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L215
	leaq	-176(%rbp), %rax
	movl	$160, %edx
	movl	$bar, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L216
L215:
	call	abort
L216:
	movq $baz(%rip), %rax
	movq	%rax, -368(%rbp)
	movq $baz + 8(%rip), %rax
	movq	%rax, -360(%rbp)
	movq $baz + 16(%rip), %rax
	movq	%rax, -352(%rbp)
	movq $baz + 24(%rip), %rax
	movq	%rax, -344(%rbp)
	movq $baz + 32(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	-368(%rbp), %rax
	movl	$40, %edx
	movl	$baz, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L217
	call	abort
L217:
	movl	$1684234849, $p(%rip)
	movw	$101, $p + 4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L218
	movl	$6, %edx
	movl	$LC47, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L219
L218:
	call	abort
L219:
	movq	$s1, -376(%rbp)
	movq	$-1, %rdx
	addq	$1, -376(%rbp)
	movl $p + 2, %edi
	movq	-376(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 2, %eax
	cmpq	%rax, %rdx
	jne	L220
	movl	$6, %edx
	movl	$LC47, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L220
	movl $s1 + 1, %eax
	cmpq	%rax, -376(%rbp)
	je	L221
L220:
	call	abort
L221:
	movq	$-1, %rdx
	movl $p + 3, %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 3, %eax
	cmpq	%rax, %rdx
	jne	L222
	movl	$6, %edx
	movl	$LC48, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L223
L222:
	call	abort
L223:
	movq	$-1, %rdx
	movl $p + 2, %eax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$LC49, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movl	$7, %edx
	movl	$LC50, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L224
	call	abort
L224:
	movq $s1 + 1, -376(%rbp)
	movq	$-1, %rcx
	movq	-376(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -376(%rbp)
	movl $p + 1, %edi
	movl	$0, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movl	$7, %edx
	movl	$LC50, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L225
	movl $s1 + 2, %eax
	cmpq	%rax, -376(%rbp)
	je	L226
L225:
	call	abort
L226:
	movq	$-1, %rdx
	movl $p + 4, %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movl	$7, %edx
	movl	$LC51, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L227
	call	abort
L227:
	movq	$-1, %rdx
	movl $p + 3, %esi
	movl $p + 2, %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movl $p + 2, %eax
	cmpq	%rax, %rdx
	je	L228
	call	abort
L228:
	movl	$7, %edx
	movl	$LC52, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L229
	call	abort
L229:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L230
	call	abort
L230:
	movl	$0, $memmove_disallowed(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L231
	call	__stack_chk_fail
L231:
	leave
	ret
	.globl	test4
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L233
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L234
L233:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L234:
	movq	%rax, -80(%rbp)
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s3(%rip), %rsi
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L235
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L236
L235:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L236:
	movq	%rax, -80(%rbp)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rsi
	movq $l1(%rip), %rdx
	movq $s3(%rip), %rax
	movq	-80(%rbp), %rcx
	leaq	2(%rcx), %rdi
	movq	%rsi, %rcx
	movq	%rax, %rsi
	call	__memmove_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	L237
L242:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L238
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	L239
L238:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L240
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	L239
L240:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L241
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	L239
L241:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L239
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
L239:
	addl	$1, -84(%rbp)
L237:
	cmpl	$3, -84(%rbp)
	jle	L242
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L243
	call	abort
L243:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rsi
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rdx
	movq $s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L244
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L245
L244:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L245:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	L246
L251:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L247
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	L248
L247:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L249
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	L248
L249:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L250
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	L248
L250:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L248
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
L248:
	addl	$1, -84(%rbp)
L246:
	cmpl	$3, -84(%rbp)
	jle	L251
	movq	$-1, %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq $s2(%rip), %rax
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$4, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L252
	call	abort
L252:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L253
	call	__stack_chk_fail
L253:
	leave
	ret
	.section	.rodata
LC53:
	.string	"ab"
	.text
	.globl	test5
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	$40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, $chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L255, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L256
L255:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L256:
	testl	%eax, %eax
	jne	L257
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s2(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	19(%rcx), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	call	abort
L257:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L258, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L259
L258:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L259:
	testl	%eax, %eax
	jne	L260
	movq $s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	movq $s3(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	17(%rcx), %rdi
	movl	$3, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	call	abort
L260:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$L261, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L262
L261:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L262:
	testl	%eax, %eax
	jne	L263
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$LC53, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	call	abort
L263:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L264
	call	__stack_chk_fail
L264:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.comm	u1,96,32
	.comm	u2,96,32
	.globl	test6
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -32(%rbp)
	jmp	L266
L285:
	movl	$0, -28(%rbp)
	jmp	L267
L284:
	movl	$1, -24(%rbp)
	jmp	L268
L283:
	movl	$0, -20(%rbp)
	movb	$65, -33(%rbp)
	jmp	L269
L271:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -33(%rbp)
	jle	L270
	movb	$65, -33(%rbp)
L270:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-33(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -20(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
L269:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	L271
	movq	$-1, %rcx
	movl	-24(%rbp), %eax
	cltq
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rsi
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u1(%rdx), %rdi
	movq	%rax, %rdx
	call	__memmove_chk
	movq	%rax, -8(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$u1, %rax
	cmpq	-8(%rbp), %rax
	je	L272
	call	abort
L272:
	movq	$u1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L273
L275:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L274
	call	abort
L274:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L273:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	L275
	movl	$0, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$65, %eax
	movb	%al, -33(%rbp)
	jmp	L276
L279:
	cmpb	$95, -33(%rbp)
	jle	L277
	movb	$65, -33(%rbp)
L277:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-33(%rbp), %al
	je	L278
	call	abort
L278:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
L276:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L279
	movl	$0, -20(%rbp)
	jmp	L280
L282:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L281
	call	abort
L281:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L280:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L282
	addl	$1, -24(%rbp)
L268:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	L283
	addl	$1, -28(%rbp)
L267:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	L284
	addl	$1, -32(%rbp)
L266:
	movl	-32(%rbp), %eax
	cmpl	$7, %eax
	jbe	L285
	nop
	leave
	ret
	.comm	srcb,80,16
	.comm	dstb,80,16
	.globl	check
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L288
	call	abort
L288:
	nop
	leave
	ret
	.globl	test7
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, $chk_calls(%rip)
	movl	$0, -4(%rbp)
	jmp	L290
L291:
	movl	-4(%rbp), %ecx
	movl	$1321528399, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$26, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$97, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, srcb(%rax)
	addl	$1, -4(%rbp)
L290:
	movl	-4(%rbp), %eax
	cmpl	$79, %eax
	jbe	L291
	movl	$0, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movb	$0, $dstb(%rip)
	movzbl $srcb(%rip), %eax
	movb	%al, $dstb(%rip)
	movl	$1, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movw	$0, $dstb(%rip)
	movzwl $srcb(%rip), %eax
	movw	%ax, $dstb(%rip)
	movl	$2, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movw	$0, $dstb(%rip)
	movb	$0, $dstb + 2(%rip)
	movzwl $srcb(%rip), %eax
	movw	%ax, $dstb(%rip)
	movzbl $srcb + 2(%rip), %eax
	movb	%al, $dstb + 2(%rip)
	movl	$3, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, $dstb(%rip)
	movl $srcb(%rip), %eax
	movl	%eax, $dstb(%rip)
	movl	$4, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, $dstb(%rip)
	movb	$0, $dstb + 4(%rip)
	movl $srcb(%rip), %eax
	movl	%eax, $dstb(%rip)
	movzbl $srcb + 4(%rip), %eax
	movb	%al, $dstb + 4(%rip)
	movl	$5, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, $dstb(%rip)
	movw	$0, $dstb + 4(%rip)
	movl $srcb(%rip), %eax
	movl	%eax, $dstb(%rip)
	movzwl $srcb + 4(%rip), %eax
	movw	%ax, $dstb + 4(%rip)
	movl	$6, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, $dstb(%rip)
	movw	$0, $dstb + 4(%rip)
	movb	$0, $dstb + 6(%rip)
	movl $srcb(%rip), %eax
	movl	%eax, $dstb(%rip)
	movzwl $srcb + 4(%rip), %eax
	movw	%ax, $dstb + 4(%rip)
	movzbl $srcb + 6(%rip), %eax
	movb	%al, $dstb + 6(%rip)
	movl	$7, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl	$8, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movb	$0, $dstb + 8(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movzbl $srcb + 8(%rip), %eax
	movb	%al, $dstb + 8(%rip)
	movl	$9, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movw	$0, $dstb + 8(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movzwl $srcb + 8(%rip), %eax
	movw	%ax, $dstb + 8(%rip)
	movl	$10, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movw	$0, $dstb + 8(%rip)
	movb	$0, $dstb + 10(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movzwl $srcb + 8(%rip), %eax
	movw	%ax, $dstb + 8(%rip)
	movzbl $srcb + 10(%rip), %eax
	movb	%al, $dstb + 10(%rip)
	movl	$11, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movl	$0, $dstb + 8(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl $srcb + 8(%rip), %eax
	movl	%eax, $dstb + 8(%rip)
	movl	$12, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movl	$0, $dstb + 8(%rip)
	movb	$0, $dstb + 12(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl $srcb + 8(%rip), %eax
	movl	%eax, $dstb + 8(%rip)
	movzbl $srcb + 12(%rip), %eax
	movb	%al, $dstb + 12(%rip)
	movl	$13, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movl	$0, $dstb + 8(%rip)
	movw	$0, $dstb + 12(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl $srcb + 8(%rip), %eax
	movl	%eax, $dstb + 8(%rip)
	movzwl $srcb + 12(%rip), %eax
	movw	%ax, $dstb + 12(%rip)
	movl	$14, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movl	$0, $dstb + 8(%rip)
	movw	$0, $dstb + 12(%rip)
	movb	$0, $dstb + 14(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl $srcb + 8(%rip), %eax
	movl	%eax, $dstb + 8(%rip)
	movzwl $srcb + 12(%rip), %eax
	movw	%ax, $dstb + 12(%rip)
	movzbl $srcb + 14(%rip), %eax
	movb	%al, $dstb + 14(%rip)
	movl	$15, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq $srcb(%rip), %rax
	movq $srcb + 8(%rip), %rdx
	movq	%rax, $dstb(%rip)
	movq	%rdx, $dstb + 8(%rip)
	movl	$16, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movb	$0, $dstb + 16(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movzbl $srcb + 16(%rip), %eax
	movb	%al, $dstb + 16(%rip)
	movl	$17, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movw	$0, $dstb + 16(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movzwl $srcb + 16(%rip), %eax
	movw	%ax, $dstb + 16(%rip)
	movl	$18, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movw	$0, $dstb + 16(%rip)
	movb	$0, $dstb + 18(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movzwl $srcb + 16(%rip), %eax
	movw	%ax, $dstb + 16(%rip)
	movzbl $srcb + 18(%rip), %eax
	movb	%al, $dstb + 18(%rip)
	movl	$19, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movl	$0, $dstb + 16(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movl $srcb + 16(%rip), %eax
	movl	%eax, $dstb + 16(%rip)
	movl	$20, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movl	$0, $dstb + 16(%rip)
	movb	$0, $dstb + 20(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movl $srcb + 16(%rip), %eax
	movl	%eax, $dstb + 16(%rip)
	movzbl $srcb + 20(%rip), %eax
	movb	%al, $dstb + 20(%rip)
	movl	$21, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movl	$0, $dstb + 16(%rip)
	movw	$0, $dstb + 20(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movl $srcb + 16(%rip), %eax
	movl	%eax, $dstb + 16(%rip)
	movzwl $srcb + 20(%rip), %eax
	movw	%ax, $dstb + 20(%rip)
	movl	$22, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movl	$0, $dstb + 16(%rip)
	movw	$0, $dstb + 20(%rip)
	movb	$0, $dstb + 22(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movl $srcb + 16(%rip), %eax
	movl	%eax, $dstb + 16(%rip)
	movzwl $srcb + 20(%rip), %eax
	movw	%ax, $dstb + 20(%rip)
	movzbl $srcb + 22(%rip), %eax
	movb	%al, $dstb + 22(%rip)
	movl	$23, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movl	$24, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movb	$0, $dstb + 24(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movzbl $srcb + 24(%rip), %eax
	movb	%al, $dstb + 24(%rip)
	movl	$25, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movw	$0, $dstb + 24(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movzwl $srcb + 24(%rip), %eax
	movw	%ax, $dstb + 24(%rip)
	movl	$26, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movw	$0, $dstb + 24(%rip)
	movb	$0, $dstb + 26(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movzwl $srcb + 24(%rip), %eax
	movw	%ax, $dstb + 24(%rip)
	movzbl $srcb + 26(%rip), %eax
	movb	%al, $dstb + 26(%rip)
	movl	$27, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movl	$0, $dstb + 24(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movl $srcb + 24(%rip), %eax
	movl	%eax, $dstb + 24(%rip)
	movl	$28, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movl	$0, $dstb + 24(%rip)
	movb	$0, $dstb + 28(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movl $srcb + 24(%rip), %eax
	movl	%eax, $dstb + 24(%rip)
	movzbl $srcb + 28(%rip), %eax
	movb	%al, $dstb + 28(%rip)
	movl	$29, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movl	$0, $dstb + 24(%rip)
	movw	$0, $dstb + 28(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movl $srcb + 24(%rip), %eax
	movl	%eax, $dstb + 24(%rip)
	movzwl $srcb + 28(%rip), %eax
	movw	%ax, $dstb + 28(%rip)
	movl	$30, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$3, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movl $srcb + 24(%rip), %eax
	movl	%eax, $dstb + 24(%rip)
	movzwl $srcb + 28(%rip), %eax
	movw	%ax, $dstb + 28(%rip)
	movzbl $srcb + 30(%rip), %eax
	movb	%al, $dstb + 30(%rip)
	movl	$31, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq	$0, $dstb + 24(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movl	$32, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq	$0, $dstb + 24(%rip)
	movb	$0, $dstb + 32(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movzbl $srcb + 32(%rip), %eax
	movb	%al, $dstb + 32(%rip)
	movl	$33, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq	$0, $dstb + 24(%rip)
	movw	$0, $dstb + 32(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movzwl $srcb + 32(%rip), %eax
	movw	%ax, $dstb + 32(%rip)
	movl	$34, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$4, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movzwl $srcb + 32(%rip), %eax
	movw	%ax, $dstb + 32(%rip)
	movzbl $srcb + 34(%rip), %eax
	movb	%al, $dstb + 34(%rip)
	movl	$35, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq	$0, $dstb + 24(%rip)
	movl	$0, $dstb + 32(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movl $srcb + 32(%rip), %eax
	movl	%eax, $dstb + 32(%rip)
	movl	$36, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$4, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movl $srcb + 32(%rip), %eax
	movl	%eax, $dstb + 32(%rip)
	movzbl $srcb + 36(%rip), %eax
	movb	%al, $dstb + 36(%rip)
	movl	$37, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$4, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movl $srcb + 32(%rip), %eax
	movl	%eax, $dstb + 32(%rip)
	movzwl $srcb + 36(%rip), %eax
	movw	%ax, $dstb + 36(%rip)
	movl	$38, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$4, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movl $srcb + 32(%rip), %eax
	movl	%eax, $dstb + 32(%rip)
	movzwl $srcb + 36(%rip), %eax
	movw	%ax, $dstb + 36(%rip)
	movzbl $srcb + 38(%rip), %eax
	movb	%al, $dstb + 38(%rip)
	movl	$39, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq	$0, $dstb + 8(%rip)
	movq	$0, $dstb + 16(%rip)
	movq	$0, $dstb + 24(%rip)
	movq	$0, $dstb + 32(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movl	$40, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movzbl $srcb + 40(%rip), %eax
	movb	%al, $dstb + 40(%rip)
	movl	$41, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movzwl $srcb + 40(%rip), %eax
	movw	%ax, $dstb + 40(%rip)
	movl	$42, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movzwl $srcb + 40(%rip), %eax
	movw	%ax, $dstb + 40(%rip)
	movzbl $srcb + 42(%rip), %eax
	movb	%al, $dstb + 42(%rip)
	movl	$43, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movl $srcb + 40(%rip), %eax
	movl	%eax, $dstb + 40(%rip)
	movl	$44, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movl $srcb + 40(%rip), %eax
	movl	%eax, $dstb + 40(%rip)
	movzbl $srcb + 44(%rip), %eax
	movb	%al, $dstb + 44(%rip)
	movl	$45, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movl $srcb + 40(%rip), %eax
	movl	%eax, $dstb + 40(%rip)
	movzwl $srcb + 44(%rip), %eax
	movw	%ax, $dstb + 44(%rip)
	movl	$46, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$5, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movl $srcb + 40(%rip), %eax
	movl	%eax, $dstb + 40(%rip)
	movzwl $srcb + 44(%rip), %eax
	movw	%ax, $dstb + 44(%rip)
	movzbl $srcb + 46(%rip), %eax
	movb	%al, $dstb + 46(%rip)
	movl	$47, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %esi
	movl	$0, %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movl	$48, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movzbl $srcb + 48(%rip), %eax
	movb	%al, $dstb + 48(%rip)
	movl	$49, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movzwl $srcb + 48(%rip), %eax
	movw	%ax, $dstb + 48(%rip)
	movl	$50, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movzwl $srcb + 48(%rip), %eax
	movw	%ax, $dstb + 48(%rip)
	movzbl $srcb + 50(%rip), %eax
	movb	%al, $dstb + 50(%rip)
	movl	$51, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movl $srcb + 48(%rip), %eax
	movl	%eax, $dstb + 48(%rip)
	movl	$52, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movl $srcb + 48(%rip), %eax
	movl	%eax, $dstb + 48(%rip)
	movzbl $srcb + 52(%rip), %eax
	movb	%al, $dstb + 52(%rip)
	movl	$53, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movl $srcb + 48(%rip), %eax
	movl	%eax, $dstb + 48(%rip)
	movzwl $srcb + 52(%rip), %eax
	movw	%ax, $dstb + 52(%rip)
	movl	$54, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$6, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movl $srcb + 48(%rip), %eax
	movl	%eax, $dstb + 48(%rip)
	movzwl $srcb + 52(%rip), %eax
	movw	%ax, $dstb + 52(%rip)
	movzbl $srcb + 54(%rip), %eax
	movb	%al, $dstb + 54(%rip)
	movl	$55, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %esi
	movl	$0, %eax
	movl	$7, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movl	$56, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movzbl $srcb + 56(%rip), %eax
	movb	%al, $dstb + 56(%rip)
	movl	$57, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movzwl $srcb + 56(%rip), %eax
	movw	%ax, $dstb + 56(%rip)
	movl	$58, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movzwl $srcb + 56(%rip), %eax
	movw	%ax, $dstb + 56(%rip)
	movzbl $srcb + 58(%rip), %eax
	movb	%al, $dstb + 58(%rip)
	movl	$59, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movl $srcb + 56(%rip), %eax
	movl	%eax, $dstb + 56(%rip)
	movl	$60, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movl $srcb + 56(%rip), %eax
	movl	%eax, $dstb + 56(%rip)
	movzbl $srcb + 60(%rip), %eax
	movb	%al, $dstb + 60(%rip)
	movl	$61, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movl $srcb + 56(%rip), %eax
	movl	%eax, $dstb + 56(%rip)
	movzwl $srcb + 60(%rip), %eax
	movw	%ax, $dstb + 60(%rip)
	movl	$62, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$7, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movl $srcb + 56(%rip), %eax
	movl	%eax, $dstb + 56(%rip)
	movzwl $srcb + 60(%rip), %eax
	movw	%ax, $dstb + 60(%rip)
	movzbl $srcb + 62(%rip), %eax
	movb	%al, $dstb + 62(%rip)
	movl	$63, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %esi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movl	$64, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movzbl $srcb + 64(%rip), %eax
	movb	%al, $dstb + 64(%rip)
	movl	$65, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movzwl $srcb + 64(%rip), %eax
	movw	%ax, $dstb + 64(%rip)
	movl	$66, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movzwl $srcb + 64(%rip), %eax
	movw	%ax, $dstb + 64(%rip)
	movzbl $srcb + 66(%rip), %eax
	movb	%al, $dstb + 66(%rip)
	movl	$67, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movl $srcb + 64(%rip), %eax
	movl	%eax, $dstb + 64(%rip)
	movl	$68, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movl $srcb + 64(%rip), %eax
	movl	%eax, $dstb + 64(%rip)
	movzbl $srcb + 68(%rip), %eax
	movb	%al, $dstb + 68(%rip)
	movl	$69, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movl $srcb + 64(%rip), %eax
	movl	%eax, $dstb + 64(%rip)
	movzwl $srcb + 68(%rip), %eax
	movw	%ax, $dstb + 68(%rip)
	movl	$70, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movl $srcb + 64(%rip), %eax
	movl	%eax, $dstb + 64(%rip)
	movzwl $srcb + 68(%rip), %eax
	movw	%ax, $dstb + 68(%rip)
	movzbl $srcb + 70(%rip), %eax
	movb	%al, $dstb + 70(%rip)
	movl	$71, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %esi
	movl	$0, %eax
	movl	$9, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movl	$72, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movzbl $srcb + 72(%rip), %eax
	movb	%al, $dstb + 72(%rip)
	movl	$73, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movzwl $srcb + 72(%rip), %eax
	movw	%ax, $dstb + 72(%rip)
	movl	$74, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movzwl $srcb + 72(%rip), %eax
	movw	%ax, $dstb + 72(%rip)
	movzbl $srcb + 74(%rip), %eax
	movb	%al, $dstb + 74(%rip)
	movl	$75, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movl $srcb + 72(%rip), %eax
	movl	%eax, $dstb + 72(%rip)
	movl	$76, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movl $srcb + 72(%rip), %eax
	movl	%eax, $dstb + 72(%rip)
	movzbl $srcb + 76(%rip), %eax
	movb	%al, $dstb + 76(%rip)
	movl	$77, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movl $srcb + 72(%rip), %eax
	movl	%eax, $dstb + 72(%rip)
	movzwl $srcb + 76(%rip), %eax
	movw	%ax, $dstb + 76(%rip)
	movl	$78, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$dstb, %edx
	movl	$0, %eax
	movl	$9, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movq $srcb + 8(%rip), %rax
	movq	%rax, $dstb + 8(%rip)
	movq $srcb + 16(%rip), %rax
	movq	%rax, $dstb + 16(%rip)
	movq $srcb + 24(%rip), %rax
	movq	%rax, $dstb + 24(%rip)
	movq $srcb + 32(%rip), %rax
	movq	%rax, $dstb + 32(%rip)
	movq $srcb + 40(%rip), %rax
	movq	%rax, $dstb + 40(%rip)
	movq $srcb + 48(%rip), %rax
	movq	%rax, $dstb + 48(%rip)
	movq $srcb + 56(%rip), %rax
	movq	%rax, $dstb + 56(%rip)
	movq $srcb + 64(%rip), %rax
	movq	%rax, $dstb + 64(%rip)
	movl $srcb + 72(%rip), %eax
	movl	%eax, $dstb + 72(%rip)
	movzwl $srcb + 76(%rip), %eax
	movw	%ax, $dstb + 76(%rip)
	movzbl $srcb + 78(%rip), %eax
	movb	%al, $dstb + 78(%rip)
	movl	$79, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L293
	call	abort
L293:
	nop
	leave
	ret
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
