	.comm	chk_fail_buf,2048,16
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
	movl $$$$$$$chk_fail_allowed(%rip), %eax
	testl	%eax, %eax
	je	L2
	movl	$chk_fail_buf, %eax
	movq	8(%rax), %rdx
	movq	(%rax), %rbp
	movq	16(%rax), %rsp
	jmp %rdx
L2:
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
	jmp	L4
L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L4:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L5
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
	jne	L8
	call	abort
L8:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L9
	call	__chk_fail
L9:
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
	jmp	L12
L13:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L12:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L13
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
	jne	L16
	call	abort
L16:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L17
	call	__chk_fail
L17:
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
	jnb	L24
	jmp	L21
L22:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
L21:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L22
	jmp	L23
L25:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L24:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L25
L23:
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
	jne	L28
	call	abort
L28:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L29
	call	__chk_fail
L29:
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
	jmp	L32
L33:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
L32:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	L33
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
	jne	L36
	call	abort
L36:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L37
	call	__chk_fail
L37:
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
L40:
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
	jne	L40
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
	jne	L43
	call	abort
L43:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L44
	call	__chk_fail
L44:
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
	jmp	L47
L48:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L47:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L48
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
	jne	L51
	call	abort
L51:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L52
	call	__chk_fail
L52:
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
	jmp	L55
L57:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L55:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L56
	cmpq	$0, -40(%rbp)
	jne	L57
L56:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L58
L59:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L58:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L59
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
	jne	L62
	call	abort
L62:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L63
	call	__chk_fail
L63:
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
	jmp	L66
L68:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L66:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L69
	cmpq	$0, -40(%rbp)
	jne	L68
	jmp	L69
L70:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L69:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L70
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
	jne	L73
	call	abort
L73:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L74
	call	__chk_fail
L74:
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
	jmp	L77
L78:
	addq	$1, -8(%rbp)
L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L78
	nop
L79:
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
	jne	L79
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
	jne	L82
	call	abort
L82:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	cmpq	-40(%rbp), %rax
	jb	L83
	call	__chk_fail
L83:
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
	jmp	L86
L87:
	addq	$1, -24(%rbp)
L86:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L87
	movb	$0, -9(%rbp)
	jmp	L88
L91:
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
	jne	L89
	movq	-8(%rbp), %rax
	jmp	L90
L89:
	subq	$1, -40(%rbp)
L88:
	cmpq	$0, -40(%rbp)
	jne	L91
	cmpb	$0, -9(%rbp)
	je	L92
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
L92:
	movq	-8(%rbp), %rax
L90:
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
	jne	L94
	call	abort
L94:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	jmp	L95
L98:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L101
	addq	$1, -24(%rbp)
	subq	$1, -16(%rbp)
L95:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	L97
	cmpq	$0, -16(%rbp)
	jne	L98
	jmp	L97
L101:
	nop
L97:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	L99
	call	__chk_fail
L99:
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
	je	L103
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L103:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -248(%rbp)
	jne	L104
	cmpl	$0, -236(%rbp)
	jne	L104
	call	abort
L104:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
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
	js	L105
	movl	-212(%rbp), %eax
	cltq
	cmpq	-248(%rbp), %rax
	jb	L106
	call	__chk_fail
L106:
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L105:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L108
	call	__stack_chk_fail
L108:
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
	jne	L110
	cmpl	$0, -28(%rbp)
	jne	L110
	call	abort
L110:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L111
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jb	L112
	call	__chk_fail
L112:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L111:
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
	je	L115
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L115:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -256(%rbp)
	jne	L116
	cmpl	$0, -244(%rbp)
	jne	L116
	call	abort
L116:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-256(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	L117
	call	__chk_fail
L117:
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
	js	L118
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L119
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L118
L119:
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
L118:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L121
	call	__stack_chk_fail
L121:
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
	jne	L123
	cmpl	$0, -36(%rbp)
	jne	L123
	call	abort
L123:
	movl $$$$$$$chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $$$$$$$chk_calls(%rip)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	L124
	call	__chk_fail
L124:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L125
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L126
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L125
L126:
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
L125:
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
	je	L129
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L129:
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
	js	L130
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L131
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L130
L131:
	cmpq	$0, -240(%rbp)
	je	L130
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
L130:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L133
	call	__stack_chk_fail
L133:
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
	js	L135
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L136
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L135
L136:
	cmpq	$0, -32(%rbp)
	je	L135
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
L135:
	movl	-4(%rbp), %eax
	leave
	ret
.globl _start
_start,4,4
.globl _start
_start
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $$$$$$$inside_main(%rip)
.globl _start
_start_test
	movl	$0, $$$$$$$inside_main(%rip)
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
	.string	"%s"
LC6:
	.string	"%d%d%d"
LC7:
	.string	"%d - %c"
	.text
	.globl	test1_sub
test1_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L142
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L142:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$0, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$8, -228(%rbp)
	ja	L143
	movl	-228(%rbp), %eax
	movq	L145(,%rax,8), %rax
	jmp %rax
	.section	.rodata
L145:
	.quad	L144
	.quad	L146
	.quad	L147
	.quad	L148
	.quad	L149
	.quad	L150
	.quad	L151
	.quad	L152
	.quad	L153
	.text
L144:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC3, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	jmp	L143
L146:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC4, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	L143
L147:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC5, %edx
	movl	$32, %esi
	movl	$buffer, %edi
	call	vsnprintf
	jmp	L143
L148:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC5, %edx
	movl	$21, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	L143
L149:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC6, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	L143
L150:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$LC6, %edx
	movl	$32, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	L143
L151:
	movq $$$$$$$ptr(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC5, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$buffer, %edi
	call	__vsnprintf_chk
	movl	%eax, -212(%rbp)
	jmp	L143
L152:
	movq $$$$$$$l1(%rip), %rax
	addq	$31, %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC7, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$buffer, %edi
	call	__vsnprintf_chk
	jmp	L143
L153:
	movq	$-1, %rcx
	movq $$$$$$$l1(%rip), %rax
	leaq	6(%rax), %rsi
	movq $$$$$$$s4(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC7, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
L143:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rdi
	xorq	$40, %rdi
	je	L155
	call	__stack_chk_fail
L155:
	leave
	ret
	.section	.rodata
LC8:
	.string	"bar"
LC9:
	.string	"121"
LC10:
	.string	"1213"
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
	movl	$0, $$$$$$$chk_calls(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$0, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$4, %edx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L157
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L158
L157:
	call	abort
L158:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$1, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$7, %eax
	je	L159
	call	abort
L159:
	movl	$4, %edx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L160
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L161
L160:
	call	abort
L161:
	movl	$0, $$$$$$$vsnprintf_disallowed(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$LC8, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$4, %edx
	movl	$LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L162
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L163
L162:
	call	abort
L163:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$LC8, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$3, %eax
	je	L164
	call	abort
L164:
	movl	$4, %edx
	movl	$LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L165
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L166
L165:
	call	abort
L166:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movq $$$$$$$l1(%rip), %rax
	leal	12(%rax), %edx
	movq $$$$$$$l1(%rip), %rax
	addl	$1, %eax
	movq $$$$$$$l1(%rip), %rcx
	movl	%ecx, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$4, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$4, %eax
	je	L167
	call	abort
L167:
	movl	$4, %edx
	movl	$LC9, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L168
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L169
L168:
	call	abort
L169:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movq $$$$$$$l1(%rip), %rax
	leal	12(%rax), %edx
	movq $$$$$$$l1(%rip), %rax
	addl	$1, %eax
	movq $$$$$$$l1(%rip), %rcx
	movl	%ecx, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$5, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$4, %eax
	je	L170
	call	abort
L170:
	movl	$5, %edx
	movl	$LC10, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L171
	movzbl $$$$$$$buffer+5(%rip), %eax
	cmpb	$65, %al
	je	L172
L171:
	call	abort
L172:
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L173
	call	abort
L173:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movq $$$$$$$ptr(%rip), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$5, %edx
	movl	$LC2, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L174
	movzbl $$$$$$$buffer+5(%rip), %eax
	cmpb	$65, %al
	je	L175
L174:
	call	abort
L175:
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movq $$$$$$$ptr(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $$$$$$$l1(%rip), %rdx
	leal	27(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$12, %edx
	movl	$LC11, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	je	L176
	call	abort
L176:
	movl $$$$$$$chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	L177
	call	abort
L177:
	movl	$0, $$$$$$$chk_calls(%rip)
	movq	$-1, %rdx
	movq $$$$$$$s4(%rip), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq $$$$$$$ptr(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $$$$$$$l1(%rip), %rdx
	leal	-17(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	test1_sub
	movq $$$$$$$s4(%rip), %rax
	movl	$10, %edx
	movl	$LC12, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L178
	call	abort
L178:
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L180
	call	abort
L180:
	nop
	popq	%rbp
	ret
	.section	.rodata
LC13:
	.string	"%s%c"
LC14:
	.string	"%c %s"
LC15:
	.string	"a"
LC16:
	.string	""
LC17:
	.string	"%s %d"
	.text
	.globl	test2_sub
test2_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$296, %rsp
	movl	%edi, -292(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	L182
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
L182:
	movq	$40, %rax
	movq	%rax, -200(%rbp)
	xorl	%eax, %eax
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L183
	leaq	-272(%rbp), %rax
	addq	$5, %rax
	jmp	L184
L183:
	leaq	-272(%rbp), %rax
	addq	$14, %rax
L184:
	movq	%rax, -280(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -232(%rbp)
	cmpl	$8, -292(%rbp)
	ja	L210
	movl	-292(%rbp), %eax
	movq	L187(,%rax,8), %rax
	jmp %rax
	.section	.rodata
L187:
	.quad	L186
	.quad	L188
	.quad	L189
	.quad	L190
	.quad	L191
	.quad	L192
	.quad	L193
	.quad	L191
	.quad	L194
	.text
L186:
	movq	$-1, %rcx
	movq $$$$$$$l1(%rip), %rsi
	leaq	-272(%rbp), %rax
	addq	$2, %rax
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC5, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L188:
	movq	$-1, %rcx
	movq $$$$$$$l1(%rip), %rax
	leaq	4(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$LC13, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L189:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L195
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
	jmp	L196
L195:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
L196:
	movq	%rax, -280(%rbp)
	movq	$-1, %rbx
	movq $$$$$$$s2(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-2(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$LC14, %r8d
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L190:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L197
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
	jmp	L198
L197:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
L198:
	movq	%rax, -280(%rbp)
	movq $$$$$$$s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	$-1, %rsi
	movq $$$$$$$l1(%rip), %rax
	movq	-280(%rbp), %rdx
	leaq	2(%rdx), %rdi
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	__vsnprintf_chk
	jmp	L185
L191:
	leaq	-224(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	$0, -284(%rbp)
	jmp	L199
L204:
	movl	-284(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L200
	leaq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	jmp	L201
L200:
	movl	-284(%rbp), %eax
	movslq	%eax, %rdx
	movq $$$$$$$l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L202
	leaq	-272(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -280(%rbp)
	jmp	L201
L202:
	movl	-284(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L203
	leaq	-224(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -280(%rbp)
	jmp	L201
L203:
	movl	-284(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L201
	leaq	-272(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -280(%rbp)
L201:
	addl	$1, -284(%rbp)
L199:
	cmpl	$3, -284(%rbp)
	jle	L204
	cmpl	$4, -292(%rbp)
	jne	L205
	movq $$$$$$$s2(%rip), %rax
	leaq	4(%rax), %rcx
	movq	$-1, %rdi
	movq $$$$$$$l1(%rip), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L205:
	movq	$-1, %rcx
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$LC15, %r8d
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L192:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L207
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
	jmp	L208
L207:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
L208:
	movq	%rax, -280(%rbp)
	movq	$-1, %rcx
	movq $$$$$$$l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$LC5, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L193:
	movq	$-1, %rcx
	leaq	-272(%rbp), %rax
	addq	$2, %rax
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC16, %r8d
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L185
L194:
	movq	$-1, %rcx
	movq $$$$$$$s4(%rip), %rax
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movl	$LC17, %r8d
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
L185:
L210:
	nop
	movq	-200(%rbp), %rax
	xorq	$40, %rax
	je	L209
	call	__stack_chk_fail
L209:
	movq	-8(%rbp), %rbx
	leave
	ret
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, $$$$$$$chk_calls(%rip)
	movq $$$$$$$s3(%rip), %rax
	addq	$3, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test2_sub
	movq $$$$$$$s3(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $$$$$$$s3(%rip), %rdx
	leaq	3(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	test2_sub
	movq $$$$$$$s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq $$$$$$$s2(%rip), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$3, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$4, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$s1+1, %eax
	movq	%rax, %rsi
	movl	$5, %edi
	movl	$0, %eax
	call	test2_sub
	movl $$$$$$$chk_calls(%rip), %eax
	cmpl	$6, %eax
	je	L212
	call	abort
L212:
	movl	$0, $$$$$$$chk_calls(%rip)
	movl	$6, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$7, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$0, $$$$$$$vsnprintf_disallowed(%rip)
	movq $$$$$$$s3(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	movl	$0, %eax
	call	test2_sub
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L214
	call	abort
L214:
	nop
	popq	%rbp
	ret
	.section	.rodata
LC18:
	.string	"%c%s"
LC19:
	.string	"%d"
	.text
	.globl	test3_sub
test3_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L216
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L216:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$5, -260(%rbp)
	ja	L226
	movl	-260(%rbp), %eax
	movq	L219(,%rax,8), %rax
	jmp %rax
	.section	.rodata
L219:
	.quad	L218
	.quad	L220
	.quad	L221
	.quad	L222
	.quad	L223
	.quad	L224
	.text
L218:
	movq $$$$$$$l1(%rip), %rax
	leaq	1(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r9
	movl	$LC18, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L217
L220:
	movq $$$$$$$l1(%rip), %rax
	leaq	30(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$LC13, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L217
L221:
	movq $$$$$$$l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$LC19, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L217
L222:
	movq $$$$$$$l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$LC5, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L217
L223:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r9
	movl	$LC15, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	L217
L224:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %r9
	movl	$LC15, %r8d
	movl	$4, %ecx
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
L217:
L226:
	nop
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L225
	call	__stack_chk_fail
L225:
	leave
	ret
	.section	.rodata
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
	subq	$24, %rsp
	movl	$1, $$$$$$$chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L228, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L229
L228:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L229:
	testl	%eax, %eax
	jne	L230
	movq $$$$$$$s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq $$$$$$$s2(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L230:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L231, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L232
L231:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L232:
	testl	%eax, %eax
	jne	L233
	movq $$$$$$$s3(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq $$$$$$$s3(%rip), %rax
	movq	%rax, -64(%rbp)
	movq $$$$$$$s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$2, %rax
	addq	-64(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L233:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L234, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L235
L234:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L235:
	testl	%eax, %eax
	jne	L236
	movq $$$$$$$l1(%rip), %rax
	addl	$9999, %eax
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L236:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L237, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L238
L237:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L238:
	testl	%eax, %eax
	jne	L239
	movl	$LC20, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L239:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$L240, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L241
L240:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L241:
	testl	%eax, %eax
	jne	L242
	movl	$4, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L242:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L243, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L244
L243:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L244:
	testl	%eax, %eax
	jne	L245
	movl	$5, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L245:
	movl	$0, $$$$$$$chk_fail_allowed(%rip)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start_test
.globl _start
_start_test:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
