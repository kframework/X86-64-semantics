	.file	"snprintf-chk.c"
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
	movl $chk_fail_allowed(%rip), %eax
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
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
	jne	L142
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L143
L142:
	call	abort
L143:
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
	je	L144
	call	abort
L144:
	movl	$4, %edx
	movl	$LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L145
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L146
L145:
	call	abort
L146:
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
	jne	L147
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L148
L147:
	call	abort
L148:
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
	je	L149
	call	abort
L149:
	movl	$4, %edx
	movl	$LC5, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L150
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L151
L150:
	call	abort
L151:
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
	je	L152
	call	abort
L152:
	movl	$4, %edx
	movl	$LC7, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L153
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L154
L153:
	call	abort
L154:
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
	je	L155
	call	abort
L155:
	movl	$5, %edx
	movl	$LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L156
	movzbl $buffer + 5(%rip), %eax
	cmpb	$65, %al
	je	L157
L156:
	call	abort
L157:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L158
	call	abort
L158:
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
	jne	L159
	movzbl $buffer + 5(%rip), %eax
	cmpb	$65, %al
	je	L160
L159:
	call	abort
L160:
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
	je	L161
	call	abort
L161:
	movl $chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	L162
	call	abort
L162:
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
	je	L163
	call	abort
L163:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L165
	call	abort
L165:
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
	jne	L167
	leaq	-96(%rbp), %rax
	addq	$5, %rax
	jmp	L168
L167:
	leaq	-96(%rbp), %rax
	addq	$14, %rax
L168:
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
	jne	L169
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
	jmp	L170
L169:
	leaq	-96(%rbp), %rax
	addq	$17, %rax
L170:
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
	jmp	L171
L176:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L172
	leaq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	L173
L172:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L174
	leaq	-96(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -104(%rbp)
	jmp	L173
L174:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L175
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -104(%rbp)
	jmp	L173
L175:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L173
	leaq	-96(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -104(%rbp)
L173:
	addl	$1, -108(%rbp)
L171:
	cmpl	$3, -108(%rbp)
	jle	L176
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
	je	L177
	call	abort
L177:
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
	jne	L178
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
	jmp	L179
L178:
	leaq	-96(%rbp), %rax
	addq	$17, %rax
L179:
	movq	%rax, -104(%rbp)
	movl	$s1+1, %ecx
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
	jmp	L180
L185:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L181
	leaq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	L182
L181:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L183
	leaq	-96(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -104(%rbp)
	jmp	L182
L183:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L184
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -104(%rbp)
	jmp	L182
L184:
	movl	-108(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L182
	leaq	-96(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -104(%rbp)
L182:
	addl	$1, -108(%rbp)
L180:
	cmpl	$3, -108(%rbp)
	jle	L185
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
	je	L188
	call	abort
L188:
	nop
	movq	-40(%rbp), %rax
	xorq	$40, %rax
	je	L187
	call	__stack_chk_fail
L187:
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
	movl	$L190, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L191
L190:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L191:
	testl	%eax, %eax
	jne	L192
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
L192:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L193, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L194
L193:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L194:
	testl	%eax, %eax
	jne	L195
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
L195:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L196, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L197
L196:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L197:
	testl	%eax, %eax
	jne	L198
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
L198:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rdi
	movq	%rdi, (%rax)
	movl	$L199, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L200
L199:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L200:
	testl	%eax, %eax
	jne	L201
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
L201:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L202, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L203
L202:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L203:
	testl	%eax, %eax
	jne	L204
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
L204:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L205, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L206
L205:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L206:
	testl	%eax, %eax
	jne	L207
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
L207:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L208
	call	__stack_chk_fail
L208:
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
