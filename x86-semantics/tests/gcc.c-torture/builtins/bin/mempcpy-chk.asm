	.file	"mempcpy-chk.c"
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
	movl	$1, $mempcpy_disallowed(%rip)
	movl	$0, $chk_calls(%rip)
	movl	$1145258561, $p(%rip)
	movw	$69, $p + 4(%rip)
	movl	$p+6, %edx
	movl	$p+6, %eax
	cmpq	%rax, %rdx
	jne	L142
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L143
L142:
	call	abort
L143:
	movq	$-1, %rdx
	movl	$LC3+1, %esi
	movl	$p+16, %eax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$p+18, %eax
	cmpq	%rax, %rdx
	jne	L144
	movl	$p+16, %eax
	movl	$5, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L145
L144:
	call	abort
L145:
	movq	$-1, %rdx
	movl	$p+1, %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$p+2, %eax
	cmpq	%rax, %rdx
	jne	L146
	movl	$6, %edx
	movl	$LC6, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L147
L146:
	call	abort
L147:
	movq	$-1, %rdx
	movl	$p+3, %eax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$p+7, %eax
	cmpq	%rax, %rdx
	jne	L148
	movl	$8, %edx
	movl	$LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L149
L148:
	call	abort
L149:
	movl	$8, -4(%rbp)
	movq	$-1, %rdx
	movl	$p+20, %eax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC9, %esi
	movq	%rax, %rdi
	call	__memcpy_chk
	movq	$-1, %rdx
	movl	$p+25, %eax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$LC10, %esi
	movq	%rax, %rdi
	call	__memcpy_chk
	movq	$-1, %rdx
	movl	$p+26, %eax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$s1, %esi
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$p+29, %eax
	cmpq	%rax, %rdx
	jne	L150
	movl	$p+25, %eax
	movl	$6, %edx
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L151
L150:
	call	abort
L151:
	movl	$1684234849, $p(%rip)
	movl	$p+4, %eax
	movl	$6776421, (%rax)
	addq	$4, %rax
	movq	%rax, %rdx
	movl	$p+8, %eax
	cmpq	%rax, %rdx
	jne	L152
	movl	$8, %edx
	movl	$LC12, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L153
L152:
	call	abort
L153:
	movl	$1145258561, $p(%rip)
	movw	$69, $p + 4(%rip)
	movl	$p+6, %edx
	movl	$p+6, %eax
	cmpq	%rax, %rdx
	jne	L154
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L155
L154:
	call	abort
L155:
	movl	$1, $mempcpy_disallowed(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rax
	movl	$p+5, %edi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	call	__mempcpy_chk
	movl	$8, %edx
	movl	$LC13, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L156
	call	abort
L156:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L157
	call	abort
L157:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $l1(%rip), %rax
	movl	$s1+1, %esi
	movl	$p+6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	__mempcpy_chk
	movl	$8, %edx
	movl	$LC14, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L158
	call	abort
L158:
	movl $chk_calls(%rip), %eax
	cmpl	$1, %eax
	je	L159
	call	abort
L159:
	movl	$0, $mempcpy_disallowed(%rip)
	nop
	leave
	ret
	.comm	buf1,512,32
	.globl	buf2
	.data
buf2:
	.quad	buf1+256
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
	movl	$buf1+9, %edx
	movl	$buf1+9, %eax
	cmpq	%rax, %rdx
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
	movl	$buf1+17, %edx
	movl	$buf1+17, %eax
	cmpq	%rax, %rdx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+6, %eax
	cmpq	%rax, %rdx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+1, %eax
	cmpq	%rax, %rdx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+4, %eax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+10, %eax
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
	movl	$buf5+1, %edx
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$8, %rax
	addq	$buf1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, %rax
	movl	$buf1+11, %edx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+16, %eax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+8, %eax
	cmpq	%rax, %rdx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+17, %eax
	cmpq	%rax, %rdx
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
	call	__memcpy_chk
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	%rax, %rdx
	movl	$buf5, %esi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+10, %eax
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
	movl	$buf5+1, %esi
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
	leaq	buf1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	mempcpy
	movq	%rax, %rdx
	movl	$buf1+12, %eax
	cmpq	%rax, %rdx
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movl	$buf1+16, %eax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$9, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$17, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$6, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$1, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$4, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$10, %rax
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
	movl	$buf7+1, %esi
	movq $buf2(%rip), %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rcx, %rax
	movzbl	(%rsi), %edx
	movb	%dl, (%rax)
	leaq	1(%rax), %rdx
	movq $buf2(%rip), %rax
	addq	$11, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$16, %rax
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
	call	__memcpy_chk
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	%rax, %rdx
	movl	$buf7, %esi
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$10, %rax
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
	movl	$buf7+1, %edi
	movq $buf2(%rip), %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rsi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	mempcpy
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$12, %rax
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
	call	__mempcpy_chk
	movq	%rax, %rdx
	movq $buf2(%rip), %rax
	addq	$16, %rax
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
	.comm	vx,8,8
	.globl	test3
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L213
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L214
L213:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L214:
	movq	%rax, -80(%rbp)
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s3(%rip), %rsi
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L215
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
	jmp	L216
L215:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L216:
	movq	%rax, -80(%rbp)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq	$-1, %rsi
	movq $l1(%rip), %rdx
	movq $s3(%rip), %rax
	movq	-80(%rbp), %rcx
	leaq	2(%rcx), %rdi
	movq	%rsi, %rcx
	movq	%rax, %rsi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	L217
L222:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L218
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	L219
L218:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L220
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	L219
L220:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L221
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	L219
L221:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L219
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
L219:
	addl	$1, -84(%rbp)
L217:
	cmpl	$3, -84(%rbp)
	jle	L222
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L223
	call	abort
L223:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rsi
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L224
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
	jmp	L225
L224:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L225:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	L226
L231:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L227
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	L228
L227:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L229
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	L228
L229:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L230
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	L228
L230:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L228
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
L228:
	addl	$1, -84(%rbp)
L226:
	cmpl	$3, -84(%rbp)
	jle	L231
	movq	$-1, %rdx
	movq $s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movq $s2(%rip), %rax
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$4, %ecx
	movq	%rax, %rsi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L232
	call	abort
L232:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L233
	call	__stack_chk_fail
L233:
	leave
	ret
	.section	.rodata
LC33:
	.string	"ab"
	.text
	.globl	test4
test4:
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
	movl	$L235, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L236
L235:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L236:
	testl	%eax, %eax
	jne	L237
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s2(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	19(%rcx), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	call	abort
L237:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L238, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L239
L238:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L239:
	testl	%eax, %eax
	jne	L240
	movq $s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	movq $s3(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	17(%rcx), %rdi
	movl	$3, %ecx
	movq	%rax, %rsi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	call	abort
L240:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$L241, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L242
L241:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L242:
	testl	%eax, %eax
	jne	L243
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$LC33, %esi
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, $vx(%rip)
	call	abort
L243:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L244
	call	__stack_chk_fail
L244:
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
	.globl	test5
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -32(%rbp)
	jmp	L246
L265:
	movl	$0, -28(%rbp)
	jmp	L247
L264:
	movl	$1, -24(%rbp)
	jmp	L248
L263:
	movl	$0, -20(%rbp)
	movb	$65, -33(%rbp)
	jmp	L249
L251:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -33(%rbp)
	jle	L250
	movb	$65, -33(%rbp)
L250:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-33(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -20(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
L249:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	L251
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
	call	__mempcpy_chk
	movq	%rax, -8(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	addq	$u1, %rax
	cmpq	-8(%rbp), %rax
	je	L252
	call	abort
L252:
	movq	$u1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L253
L255:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L254
	call	abort
L254:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L253:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	L255
	movl	$0, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$65, %eax
	movb	%al, -33(%rbp)
	jmp	L256
L259:
	cmpb	$95, -33(%rbp)
	jle	L257
	movb	$65, -33(%rbp)
L257:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-33(%rbp), %al
	je	L258
	call	abort
L258:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
L256:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L259
	movl	$0, -20(%rbp)
	jmp	L260
L262:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L261
	call	abort
L261:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L260:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L262
	addl	$1, -24(%rbp)
L248:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	L263
	addl	$1, -28(%rbp)
L247:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	L264
	addl	$1, -32(%rbp)
L246:
	movl	-32(%rbp), %eax
	cmpl	$7, %eax
	jbe	L265
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
	je	L268
	call	abort
L268:
	nop
	leave
	ret
	.globl	test6
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, $chk_calls(%rip)
	movl	$0, -4(%rbp)
	jmp	L270
L271:
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
L270:
	movl	-4(%rbp), %eax
	cmpl	$79, %eax
	jbe	L271
	movl	$dstb, %eax
	movq	%rax, $vx(%rip)
	movl	$0, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movb	$0, $dstb(%rip)
	movzbl $srcb(%rip), %eax
	movb	%al, $dstb(%rip)
	movl	$dstb+1, %eax
	movq	%rax, $vx(%rip)
	movl	$1, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movw	$0, $dstb(%rip)
	movzwl $srcb(%rip), %eax
	movw	%ax, $dstb(%rip)
	movl	$dstb+2, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+3, %eax
	movq	%rax, $vx(%rip)
	movl	$3, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, $dstb(%rip)
	movl $srcb(%rip), %eax
	movl	%eax, $dstb(%rip)
	movl	$dstb+4, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+5, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+6, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+7, %eax
	movq	%rax, $vx(%rip)
	movl	$7, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, $dstb(%rip)
	movq $srcb(%rip), %rax
	movq	%rax, $dstb(%rip)
	movl	$dstb+8, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+9, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+10, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+11, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+12, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+13, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+14, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+15, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+16, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+17, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+18, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+19, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+20, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+21, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+22, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+23, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+24, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+25, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+26, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+27, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+28, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+29, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+30, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+31, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+32, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+33, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+34, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+35, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+36, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+37, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+38, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+39, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+40, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+41, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+42, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+43, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+44, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+45, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+46, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+47, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+48, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+49, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+50, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+51, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+52, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+53, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+54, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+55, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+56, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+57, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+58, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+59, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+60, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+61, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+62, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+63, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+64, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+65, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+66, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+67, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+68, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+69, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+70, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+71, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+72, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+73, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+74, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+75, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+76, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+77, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+78, %eax
	movq	%rax, $vx(%rip)
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
	movl	$dstb+79, %eax
	movq	%rax, $vx(%rip)
	movl	$79, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L273
	call	abort
L273:
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
