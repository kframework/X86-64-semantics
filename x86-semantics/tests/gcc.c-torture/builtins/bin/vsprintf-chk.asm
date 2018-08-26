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
	.string	"%s"
LC5:
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
	cmpl	$5, -228(%rbp)
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
	.text
L144:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	vsprintf
	jmp	L143
L146:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	jmp	L143
L147:
	leaq	-208(%rbp), %rax
	movq	%rax, %r8
	movl	$LC4, %ecx
	movl	$32, %edx
	movl	$0, %esi
	movl	$buffer, %edi
	call	__vsprintf_chk
	jmp	L143
L148:
	leaq	-208(%rbp), %rax
	movq	%rax, %r8
	movl	$LC4, %ecx
	movl	$32, %edx
	movl	$0, %esi
	movl	$buffer, %edi
	call	__vsprintf_chk
	movl	%eax, -212(%rbp)
	jmp	L143
L149:
	leaq	-208(%rbp), %rax
	movq	%rax, %r8
	movl	$LC5, %ecx
	movl	$32, %edx
	movl	$0, %esi
	movl	$buffer, %edi
	call	__vsprintf_chk
	jmp	L143
L150:
	movq	$-1, %rsi
	movq $$$$$$$s4(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r8
	movl	$LC5, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	nop
L143:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L152
	call	__stack_chk_fail
L152:
	leave
	ret
	.section	.rodata
LC6:
	.string	"bar"
LC7:
	.string	"28 - b"
	.string	"AAAAA"
LC8:
	.string	"-16 - a"
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, $$$$$$$chk_calls(%rip)
	movl	$1, $$$$$$$vsprintf_disallowed(%rip)
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
	jne	L154
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L155
L154:
	call	abort
L155:
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
	cmpl	$3, %eax
	je	L156
	call	abort
L156:
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
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L159
	call	abort
L159:
	movl	$0, $$$$$$$vsprintf_disallowed(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$LC6, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$4, %edx
	movl	$LC6, %esi
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
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, $$$$$$$buffer+24(%rip)
	movl	$LC6, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$3, %eax
	je	L162
	call	abort
L162:
	movl	$4, %edx
	movl	$LC6, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L163
	movzbl $$$$$$$buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L164
L163:
	call	abort
L164:
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
	movl	$2, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$5, %edx
	movl	$LC2, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L165
	movzbl $$$$$$$buffer+5(%rip), %eax
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
	movq $$$$$$$ptr(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $$$$$$$l1(%rip), %rdx
	leal	27(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$12, %edx
	movl	$LC7, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	je	L167
	call	abort
L167:
	movl $$$$$$$chk_calls(%rip), %eax
	cmpl	$4, %eax
	je	L168
	call	abort
L168:
	movl	$0, $$$$$$$chk_calls(%rip)
	movq $$$$$$$ptr(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq $$$$$$$l1(%rip), %rdx
	leal	-17(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	test1_sub
	movq $$$$$$$s4(%rip), %rax
	movl	$8, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L169
	call	abort
L169:
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L171
	call	abort
L171:
	nop
	popq	%rbp
	ret
	.section	.rodata
LC9:
	.string	"%s%c"
LC10:
	.string	"%c %s"
LC11:
	.string	"a"
LC12:
	.string	""
LC13:
	.string	"%s %d"
	.text
	.globl	test2_sub
test2_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	movl	%edi, -276(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L173
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L173:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L174
	leaq	-256(%rbp), %rax
	addq	$5, %rax
	jmp	L175
L174:
	leaq	-256(%rbp), %rax
	addq	$14, %rax
L175:
	movq	%rax, -264(%rbp)
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$8, -276(%rbp)
	ja	L201
	movl	-276(%rbp), %eax
	movq	L178(,%rax,8), %rax
	jmp %rax
	.section	.rodata
L178:
	.quad	L177
	.quad	L179
	.quad	L180
	.quad	L181
	.quad	L182
	.quad	L183
	.quad	L184
	.quad	L182
	.quad	L185
	.text
L177:
	movq	$-1, %rsi
	leaq	-256(%rbp), %rax
	addq	$2, %rax
	leaq	-232(%rbp), %rdx
	movq	%rdx, %r8
	movl	$LC4, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L179:
	movq	$-1, %rsi
	leaq	-232(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %r8
	movl	$LC9, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L180:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L186
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
	jmp	L187
L186:
	leaq	-256(%rbp), %rax
	addq	$17, %rax
L187:
	movq	%rax, -264(%rbp)
	movq	$-1, %rsi
	leaq	-232(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %r8
	movl	$LC10, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L181:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L188
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
	jmp	L189
L188:
	leaq	-256(%rbp), %rax
	addq	$17, %rax
L189:
	movq	%rax, -264(%rbp)
	movq $$$$$$$s3(%rip), %rax
	leaq	3(%rax), %rdx
	movq	$-1, %rsi
	movq	-264(%rbp), %rax
	addq	$2, %rax
	leaq	-232(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L182:
	leaq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -268(%rbp)
	jmp	L190
L195:
	movl	-268(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L191
	leaq	-256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)
	jmp	L192
L191:
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq $$$$$$$l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L193
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -264(%rbp)
	jmp	L192
L193:
	movl	-268(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L194
	leaq	-208(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -264(%rbp)
	jmp	L192
L194:
	movl	-268(%rbp), %eax
	cltq
	movq $$$$$$$l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L192
	leaq	-256(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -264(%rbp)
L192:
	addl	$1, -268(%rbp)
L190:
	cmpl	$3, -268(%rbp)
	jle	L195
	cmpl	$4, -276(%rbp)
	jne	L196
	movq $$$$$$$s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq	$-1, %rsi
	leaq	-232(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L196:
	movq	$-1, %rsi
	leaq	-232(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %r8
	movl	$LC11, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L183:
	movq $$$$$$$l1(%rip), %rax
	cmpq	$1, %rax
	jne	L198
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L199
L198:
	leaq	-256(%rbp), %rax
	addq	$17, %rax
L199:
	movq	%rax, -264(%rbp)
	movq	$-1, %rsi
	leaq	-232(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %r8
	movl	$LC4, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L184:
	movq	$-1, %rsi
	leaq	-256(%rbp), %rax
	addq	$2, %rax
	leaq	-232(%rbp), %rdx
	movq	%rdx, %r8
	movl	$LC12, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L176
L185:
	movq	$-1, %rsi
	movq $$$$$$$s4(%rip), %rax
	leaq	-232(%rbp), %rdx
	movq	%rdx, %r8
	movl	$LC13, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	nop
L176:
L201:
	nop
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L200
	call	__stack_chk_fail
L200:
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
	je	L203
	call	abort
L203:
	movl	$0, $$$$$$$chk_calls(%rip)
	movl	$1, $$$$$$$vsprintf_disallowed(%rip)
	movl	$6, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$7, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$0, $$$$$$$vsprintf_disallowed(%rip)
	movq $$$$$$$s3(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	movl	$0, %eax
	call	test2_sub
	movl $$$$$$$chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L205
	call	abort
L205:
	nop
	popq	%rbp
	ret
	.section	.rodata
LC14:
	.string	"%c%s"
LC15:
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
	je	L207
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L207:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$4, -260(%rbp)
	ja	L216
	movl	-260(%rbp), %eax
	movq	L210(,%rax,8), %rax
	jmp %rax
	.section	.rodata
L210:
	.quad	L209
	.quad	L211
	.quad	L212
	.quad	L213
	.quad	L214
	.text
L209:
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r8
	movl	$LC14, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L208
L211:
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r8
	movl	$LC9, %ecx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L208
L212:
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r8
	movl	$LC15, %ecx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L208
L213:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r8
	movl	$LC4, %ecx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	jmp	L208
L214:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r8
	movl	$LC11, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__vsprintf_chk
	nop
L208:
L216:
	nop
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L215
	call	__stack_chk_fail
L215:
	leave
	ret
	.section	.rodata
LC16:
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
	movl	$L218, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L219
L218:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L219:
	testl	%eax, %eax
	jne	L220
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
L220:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L221, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L222
L221:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L222:
	testl	%eax, %eax
	jne	L223
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
L223:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L224, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L225
L224:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L225:
	testl	%eax, %eax
	jne	L226
	movq $$$$$$$l1(%rip), %rax
	addl	$9999, %eax
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L226:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L227, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L228
L227:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L228:
	testl	%eax, %eax
	jne	L229
	movl	$LC16, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L229:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$L230, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L231
L230:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L231:
	testl	%eax, %eax
	jne	L232
	movl	$4, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
L232:
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
