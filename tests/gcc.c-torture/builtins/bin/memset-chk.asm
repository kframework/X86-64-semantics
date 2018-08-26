	.file	"memset-chk.c"
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
	.comm	buffer,32,32
	.globl	argc
	.data
argc:
	.long	1
	.globl	l1
l1:
	.quad	1
	.globl	s3
	.section	.rodata
LC0:
	.string	"FGH"
	.data
s3:
	.quad	LC0
	.comm	s4,8,8
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $memset_disallowed(%rip)
	movl	$0, $chk_calls(%rip)
	movl $argc(%rip), %eax
	movb	%al, $buffer(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer(%rip)
	movb	%cl, $buffer + 2(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer(%rip)
	movb	%al, $buffer + 4(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer + 4(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, $buffer + 4(%rip)
	movb	%dl, $buffer + 6(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %edx
	movabsq	$72340172838076673, %rax
	imulq	%rdx, %rax
	movq	%rax, $buffer(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movb	%al, $buffer + 8(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer + 8(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, $buffer + 8(%rip)
	movb	%dl, $buffer + 10(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer + 8(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer + 8(%rip)
	movb	%al, $buffer + 12(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer + 8(%rip)
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer + 12(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer + 8(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, $buffer + 12(%rip)
	movb	%dl, $buffer + 14(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %edx
	movabsq	$72340172838076673, %rax
	imulq	%rdx, %rax
	movq	%rax, $buffer + 8(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer + 8(%rip)
	movb	%al, $buffer + 16(%rip)
	movl	$0, $memset_disallowed(%rip)
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L142
	call	abort
L142:
	nop
	popq	%rbp
	ret
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L144
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L145
L144:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L145:
	movq	%rax, -80(%rbp)
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L146
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L147
L146:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L147:
	movq	%rax, -80(%rbp)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movl $argc(%rip), %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	movq	-80(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rax, %rdx
	movl	$81, %esi
	call	__memset_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	L148
L153:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L149
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	L150
L149:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L151
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	L150
L151:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L152
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	L150
L152:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L150
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
L150:
	addl	$1, -84(%rbp)
L148:
	cmpl	$3, -84(%rbp)
	jle	L153
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L154
	call	abort
L154:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rdx
	movl $argc(%rip), %esi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memset_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L155
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
	jmp	L156
L155:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L156:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$78, %esi
	movq	%rax, %rdi
	call	__memset_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	L157
L162:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L158
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	L159
L158:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L160
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	L159
L160:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L161
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	L159
L161:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L159
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
L159:
	addl	$1, -84(%rbp)
L157:
	cmpl	$3, -84(%rbp)
	jle	L162
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$72, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	16(%rdx), %rdi
	movl	$4, %ecx
	movq	%rax, %rdx
	movl	$100, %esi
	call	__memset_chk
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s4(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq $s4(%rip), %rax
	addq	$2, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rdx
	movq $s4(%rip), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rdx
	movq $s4(%rip), %rax
	addq	$6, %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L163
	call	abort
L163:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L164
	call	__stack_chk_fail
L164:
	leave
	ret
	.globl	test3
test3:
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
	movl	$L166, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L167
L166:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L167:
	testl	%eax, %eax
	jne	L168
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
L168:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L169, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L170
L169:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L170:
	testl	%eax, %eax
	jne	L171
	movq $s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	leaq	-112(%rbp), %rax
	addq	$17, %rax
	movl	$3, %ecx
	movl	$84, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
L171:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L172, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L173
L172:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L173:
	testl	%eax, %eax
	jne	L174
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
L174:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L175
	call	__stack_chk_fail
L175:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.comm	u,96,32
	.globl	A
	.data
A:
	.byte	65
	.text
	.globl	test4
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	jmp	L177
L212:
	movl	$1, -24(%rbp)
	jmp	L178
L211:
	movl	$0, -20(%rbp)
	jmp	L179
L180:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -20(%rbp)
L179:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	L180
	movq	$-1, %rcx
	movl	-24(%rbp), %eax
	cltq
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rdi
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-8(%rbp), %rax
	je	L181
	call	abort
L181:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L182
L184:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L183
	call	abort
L183:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L182:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L184
	movl	$0, -20(%rbp)
	jmp	L185
L187:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L186
	call	abort
L186:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L185:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L187
	movl	$0, -20(%rbp)
	jmp	L188
L190:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L189
	call	abort
L189:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L188:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L190
	movq	$-1, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	u(%rcx), %rdi
	movq	%rsi, %rcx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-8(%rbp), %rax
	je	L191
	call	abort
L191:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L192
L194:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L193
	call	abort
L193:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L192:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L194
	movl	$0, -20(%rbp)
	jmp	L195
L197:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	L196
	call	abort
L196:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L195:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L197
	movl	$0, -20(%rbp)
	jmp	L198
L200:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L199
	call	abort
L199:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L198:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L200
	movq	$-1, %rcx
	movl	-24(%rbp), %eax
	cltq
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rdi
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-8(%rbp), %rax
	je	L201
	call	abort
L201:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L202
L204:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L203
	call	abort
L203:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L202:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L204
	movl	$0, -20(%rbp)
	jmp	L205
L207:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	L206
	call	abort
L206:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L205:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L207
	movl	$0, -20(%rbp)
	jmp	L208
L210:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L209
	call	abort
L209:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L208:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L210
	addl	$1, -24(%rbp)
L178:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	L211
	addl	$1, -28(%rbp)
L177:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	L212
	nop
	leave
	ret
	.comm	u2,32,32
	.globl	reset
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L214
L215:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u2(%rax)
	addl	$1, -4(%rbp)
L214:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	L215
	nop
	popq	%rbp
	ret
	.globl	check
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$u2, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L217
L219:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L218
	call	abort
L218:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L217:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L219
	movl	$0, -12(%rbp)
	jmp	L220
L222:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	L221
	call	abort
L221:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L220:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L222
	movl	$0, -12(%rbp)
	jmp	L223
L225:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L224
	call	abort
L224:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L223:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L225
	nop
	leave
	ret
	.globl	test5
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	L227
L231:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L228
	call	abort
L228:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$1, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L229
	call	abort
L229:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L230
	call	abort
L230:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L227:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L231
	movl	$0, -12(%rbp)
	jmp	L232
L236:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L233
	call	abort
L233:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$2, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L234
	call	abort
L234:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L235
	call	abort
L235:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L232:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L236
	movl	$0, -12(%rbp)
	jmp	L237
L241:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L238
	call	abort
L238:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$3, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L239
	call	abort
L239:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L240
	call	abort
L240:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L237:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L241
	movl	$0, -12(%rbp)
	jmp	L242
L246:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L243
	call	abort
L243:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$4, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L244
	call	abort
L244:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L245
	call	abort
L245:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L242:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L246
	movl	$0, -12(%rbp)
	jmp	L247
L251:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L248
	call	abort
L248:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$5, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L249
	call	abort
L249:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L250
	call	abort
L250:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L247:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L251
	movl	$0, -12(%rbp)
	jmp	L252
L256:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L253
	call	abort
L253:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$6, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L254
	call	abort
L254:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L255
	call	abort
L255:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L252:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L256
	movl	$0, -12(%rbp)
	jmp	L257
L261:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L258
	call	abort
L258:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$7, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L259
	call	abort
L259:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L260
	call	abort
L260:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L257:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L261
	movl	$0, -12(%rbp)
	jmp	L262
L266:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L263
	call	abort
L263:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$8, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L264
	call	abort
L264:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L265
	call	abort
L265:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L262:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L266
	movl	$0, -12(%rbp)
	jmp	L267
L271:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L268
	call	abort
L268:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$9, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L269
	call	abort
L269:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L270
	call	abort
L270:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L267:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L271
	movl	$0, -12(%rbp)
	jmp	L272
L276:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L273
	call	abort
L273:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$10, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L274
	call	abort
L274:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L275
	call	abort
L275:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L272:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L276
	movl	$0, -12(%rbp)
	jmp	L277
L281:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L278
	call	abort
L278:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$11, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L279
	call	abort
L279:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$11, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L280
	call	abort
L280:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L277:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L281
	movl	$0, -12(%rbp)
	jmp	L282
L286:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L283
	call	abort
L283:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$12, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L284
	call	abort
L284:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$12, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L285
	call	abort
L285:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L282:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L286
	movl	$0, -12(%rbp)
	jmp	L287
L291:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$13, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L288
	call	abort
L288:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$13, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L289
	call	abort
L289:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$13, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L290
	call	abort
L290:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L287:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L291
	movl	$0, -12(%rbp)
	jmp	L292
L296:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$14, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L293
	call	abort
L293:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$14, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L294
	call	abort
L294:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$14, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L295
	call	abort
L295:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L292:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L296
	movl	$0, -12(%rbp)
	jmp	L297
L301:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L298
	call	abort
L298:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u2(%rdx), %rdi
	movl	$15, %edx
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L299
	call	abort
L299:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	movq	%rdx, %rcx
	movl	$15, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$u2, %rax
	cmpq	-8(%rbp), %rax
	je	L300
	call	abort
L300:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L297:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L301
	nop
	leave
	ret
	.globl	test6
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	L303
L307:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$32, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2, -8(%rbp)
	je	L304
	call	abort
L304:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl	$32, %ecx
	movl	%eax, %esi
	movl	$u2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2, -8(%rbp)
	je	L305
	call	abort
L305:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$32, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2, -8(%rbp)
	je	L306
	call	abort
L306:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	addl	$1, -12(%rbp)
L303:
	cmpl	$14, -12(%rbp)
	jle	L307
	movl	$0, -12(%rbp)
	jmp	L308
L312:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 1, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 1, %eax
	cmpq	%rax, -8(%rbp)
	je	L309
	call	abort
L309:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 1, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 1, %eax
	cmpq	%rax, -8(%rbp)
	je	L310
	call	abort
L310:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 1, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 1, %eax
	cmpq	%rax, -8(%rbp)
	je	L311
	call	abort
L311:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	addl	$1, -12(%rbp)
L308:
	cmpl	$14, -12(%rbp)
	jle	L312
	movl	$0, -12(%rbp)
	jmp	L313
L317:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 2, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 2, %eax
	cmpq	%rax, -8(%rbp)
	je	L314
	call	abort
L314:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 2, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 2, %eax
	cmpq	%rax, -8(%rbp)
	je	L315
	call	abort
L315:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 2, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 2, %eax
	cmpq	%rax, -8(%rbp)
	je	L316
	call	abort
L316:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	addl	$1, -12(%rbp)
L313:
	cmpl	$14, -12(%rbp)
	jle	L317
	movl	$0, -12(%rbp)
	jmp	L318
L322:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 3, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 3, %eax
	cmpq	%rax, -8(%rbp)
	je	L319
	call	abort
L319:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 3, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 3, %eax
	cmpq	%rax, -8(%rbp)
	je	L320
	call	abort
L320:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 3, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 3, %eax
	cmpq	%rax, -8(%rbp)
	je	L321
	call	abort
L321:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	addl	$1, -12(%rbp)
L318:
	cmpl	$14, -12(%rbp)
	jle	L322
	movl	$0, -12(%rbp)
	jmp	L323
L327:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 4, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 4, %eax
	cmpq	%rax, -8(%rbp)
	je	L324
	call	abort
L324:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 4, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 4, %eax
	cmpq	%rax, -8(%rbp)
	je	L325
	call	abort
L325:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 4, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 4, %eax
	cmpq	%rax, -8(%rbp)
	je	L326
	call	abort
L326:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	addl	$1, -12(%rbp)
L323:
	cmpl	$14, -12(%rbp)
	jle	L327
	movl	$0, -12(%rbp)
	jmp	L328
L332:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 5, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 5, %eax
	cmpq	%rax, -8(%rbp)
	je	L329
	call	abort
L329:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 5, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 5, %eax
	cmpq	%rax, -8(%rbp)
	je	L330
	call	abort
L330:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 5, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 5, %eax
	cmpq	%rax, -8(%rbp)
	je	L331
	call	abort
L331:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	addl	$1, -12(%rbp)
L328:
	cmpl	$14, -12(%rbp)
	jle	L332
	movl	$0, -12(%rbp)
	jmp	L333
L337:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 6, %eax
	cmpq	%rax, -8(%rbp)
	je	L334
	call	abort
L334:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 6, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 6, %eax
	cmpq	%rax, -8(%rbp)
	je	L335
	call	abort
L335:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 6, %eax
	cmpq	%rax, -8(%rbp)
	je	L336
	call	abort
L336:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	addl	$1, -12(%rbp)
L333:
	cmpl	$14, -12(%rbp)
	jle	L337
	movl	$0, -12(%rbp)
	jmp	L338
L342:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 7, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 7, %eax
	cmpq	%rax, -8(%rbp)
	je	L339
	call	abort
L339:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movq	$-1, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl $A(%rip), %eax
	movsbl	%al, %eax
	movl $u2 + 7, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 7, %eax
	cmpq	%rax, -8(%rbp)
	je	L340
	call	abort
L340:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl $u2 + 7, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl $u2 + 7, %eax
	cmpq	%rax, -8(%rbp)
	je	L341
	call	abort
L341:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	addl	$1, -12(%rbp)
L338:
	cmpl	$14, -12(%rbp)
	jle	L342
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
