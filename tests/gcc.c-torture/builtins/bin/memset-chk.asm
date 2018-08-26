	.file	"memset-chk.c"
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
	movb	%cl, $buffer+2(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer(%rip)
	movb	%al, $buffer+4(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer+4(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, $buffer+4(%rip)
	movb	%dl, $buffer+6(%rip)
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
	movb	%al, $buffer+8(%rip)
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
	movw	%ax, $buffer+8(%rip)
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
	movw	%ax, $buffer+8(%rip)
	movb	%dl, $buffer+10(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer+8(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer+8(%rip)
	movb	%al, $buffer+12(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, $buffer+8(%rip)
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, $buffer+12(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, $buffer+8(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, $buffer+12(%rip)
	movb	%dl, $buffer+14(%rip)
	movl $argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, $buffer(%rip)
	movzbl	%dl, %edx
	movabsq	$72340172838076673, %rax
	imulq	%rdx, %rax
	movq	%rax, $buffer+8(%rip)
	movl $argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer(%rip)
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, $buffer+8(%rip)
	movb	%al, $buffer+16(%rip)
	movl	$0, $memset_disallowed(%rip)
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L143
	call	abort
L143:
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
	jne	L145
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L146
L145:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L146:
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
	jne	L147
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
	jmp	L148
L147:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L148:
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
	jmp	L149
L154:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L150
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	L151
L150:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L152
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	L151
L152:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L153
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	L151
L153:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L151
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
L151:
	addl	$1, -84(%rbp)
L149:
	cmpl	$3, -84(%rbp)
	jle	L154
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L155
	call	abort
L155:
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
	jne	L156
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
	jmp	L157
L156:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L157:
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
	jmp	L158
L163:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L159
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	L160
L159:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L161
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	L160
L161:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L162
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	L160
L162:
	movl	-84(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L160
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
L160:
	addl	$1, -84(%rbp)
L158:
	cmpl	$3, -84(%rbp)
	jle	L163
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
	je	L164
	call	abort
L164:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L165
	call	__stack_chk_fail
L165:
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
	movl	$L167, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L168
L167:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L168:
	testl	%eax, %eax
	jne	L169
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
L169:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L170, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L171
L170:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L171:
	testl	%eax, %eax
	jne	L172
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
L172:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L173, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L174
L173:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L174:
	testl	%eax, %eax
	jne	L175
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
L175:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L176
	call	__stack_chk_fail
L176:
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
	jmp	L178
L213:
	movl	$1, -24(%rbp)
	jmp	L179
L212:
	movl	$0, -20(%rbp)
	jmp	L180
L181:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -20(%rbp)
L180:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	L181
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
	je	L182
	call	abort
L182:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L183
L185:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L184
	call	abort
L184:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L183:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L185
	movl	$0, -20(%rbp)
	jmp	L186
L188:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L187
	call	abort
L187:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L186:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L188
	movl	$0, -20(%rbp)
	jmp	L189
L191:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L190
	call	abort
L190:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L189:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L191
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
	je	L192
	call	abort
L192:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L193
L195:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L194
	call	abort
L194:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L193:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L195
	movl	$0, -20(%rbp)
	jmp	L196
L198:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	L197
	call	abort
L197:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L196:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L198
	movl	$0, -20(%rbp)
	jmp	L199
L201:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L200
	call	abort
L200:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L199:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L201
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
	je	L202
	call	abort
L202:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	L203
L205:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L204
	call	abort
L204:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L203:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L205
	movl	$0, -20(%rbp)
	jmp	L206
L208:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	L207
	call	abort
L207:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L206:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L208
	movl	$0, -20(%rbp)
	jmp	L209
L211:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L210
	call	abort
L210:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
L209:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L211
	addl	$1, -24(%rbp)
L179:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	L212
	addl	$1, -28(%rbp)
L178:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	L213
	nop
	leave
	ret
	.comm	u2,32,32
	.globl	reset
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L215
L216:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u2(%rax)
	addl	$1, -4(%rbp)
L215:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	L216
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
	jmp	L218
L220:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L219
	call	abort
L219:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L218:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L220
	movl	$0, -12(%rbp)
	jmp	L221
L223:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	L222
	call	abort
L222:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L221:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L223
	movl	$0, -12(%rbp)
	jmp	L224
L226:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L225
	call	abort
L225:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L224:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L226
	nop
	leave
	ret
	.globl	test5
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	L228
L232:
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
	je	L229
	call	abort
L229:
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
	je	L230
	call	abort
L230:
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
	je	L231
	call	abort
L231:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L228:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L232
	movl	$0, -12(%rbp)
	jmp	L233
L237:
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
	je	L234
	call	abort
L234:
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
	je	L235
	call	abort
L235:
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
	je	L236
	call	abort
L236:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L233:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L237
	movl	$0, -12(%rbp)
	jmp	L238
L242:
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
	je	L239
	call	abort
L239:
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
	je	L240
	call	abort
L240:
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
	je	L241
	call	abort
L241:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L238:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L242
	movl	$0, -12(%rbp)
	jmp	L243
L247:
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
	je	L244
	call	abort
L244:
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
	je	L245
	call	abort
L245:
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
	je	L246
	call	abort
L246:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L243:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L247
	movl	$0, -12(%rbp)
	jmp	L248
L252:
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
	je	L249
	call	abort
L249:
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
	je	L250
	call	abort
L250:
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
	je	L251
	call	abort
L251:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L248:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L252
	movl	$0, -12(%rbp)
	jmp	L253
L257:
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
	je	L254
	call	abort
L254:
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
	je	L255
	call	abort
L255:
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
	je	L256
	call	abort
L256:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L253:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L257
	movl	$0, -12(%rbp)
	jmp	L258
L262:
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
	je	L259
	call	abort
L259:
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
	je	L260
	call	abort
L260:
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
	je	L261
	call	abort
L261:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L258:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L262
	movl	$0, -12(%rbp)
	jmp	L263
L267:
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
	je	L264
	call	abort
L264:
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
	je	L265
	call	abort
L265:
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
	je	L266
	call	abort
L266:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L263:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L267
	movl	$0, -12(%rbp)
	jmp	L268
L272:
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
	je	L269
	call	abort
L269:
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
	je	L270
	call	abort
L270:
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
	je	L271
	call	abort
L271:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L268:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L272
	movl	$0, -12(%rbp)
	jmp	L273
L277:
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
	je	L274
	call	abort
L274:
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
	je	L275
	call	abort
L275:
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
	je	L276
	call	abort
L276:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L273:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L277
	movl	$0, -12(%rbp)
	jmp	L278
L282:
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
	je	L279
	call	abort
L279:
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
	je	L280
	call	abort
L280:
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
	je	L281
	call	abort
L281:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L278:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L282
	movl	$0, -12(%rbp)
	jmp	L283
L287:
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
	je	L284
	call	abort
L284:
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
	je	L285
	call	abort
L285:
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
	je	L286
	call	abort
L286:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L283:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L287
	movl	$0, -12(%rbp)
	jmp	L288
L292:
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
	je	L289
	call	abort
L289:
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
	je	L290
	call	abort
L290:
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
	je	L291
	call	abort
L291:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L288:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L292
	movl	$0, -12(%rbp)
	jmp	L293
L297:
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
	je	L294
	call	abort
L294:
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
	je	L295
	call	abort
L295:
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
	je	L296
	call	abort
L296:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L293:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L297
	movl	$0, -12(%rbp)
	jmp	L298
L302:
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
	je	L299
	call	abort
L299:
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
	je	L300
	call	abort
L300:
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
	je	L301
	call	abort
L301:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
L298:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L302
	nop
	leave
	ret
	.globl	test6
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	L304
L308:
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
	je	L305
	call	abort
L305:
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
	je	L306
	call	abort
L306:
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
	je	L307
	call	abort
L307:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	addl	$1, -12(%rbp)
L304:
	cmpl	$14, -12(%rbp)
	jle	L308
	movl	$0, -12(%rbp)
	jmp	L309
L313:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+1, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+1, %eax
	cmpq	%rax, -8(%rbp)
	je	L310
	call	abort
L310:
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
	movl	$u2+1, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+1, %eax
	cmpq	%rax, -8(%rbp)
	je	L311
	call	abort
L311:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+1, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+1, %eax
	cmpq	%rax, -8(%rbp)
	je	L312
	call	abort
L312:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	addl	$1, -12(%rbp)
L309:
	cmpl	$14, -12(%rbp)
	jle	L313
	movl	$0, -12(%rbp)
	jmp	L314
L318:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+2, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+2, %eax
	cmpq	%rax, -8(%rbp)
	je	L315
	call	abort
L315:
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
	movl	$u2+2, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+2, %eax
	cmpq	%rax, -8(%rbp)
	je	L316
	call	abort
L316:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+2, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+2, %eax
	cmpq	%rax, -8(%rbp)
	je	L317
	call	abort
L317:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	addl	$1, -12(%rbp)
L314:
	cmpl	$14, -12(%rbp)
	jle	L318
	movl	$0, -12(%rbp)
	jmp	L319
L323:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+3, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+3, %eax
	cmpq	%rax, -8(%rbp)
	je	L320
	call	abort
L320:
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
	movl	$u2+3, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+3, %eax
	cmpq	%rax, -8(%rbp)
	je	L321
	call	abort
L321:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+3, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+3, %eax
	cmpq	%rax, -8(%rbp)
	je	L322
	call	abort
L322:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	addl	$1, -12(%rbp)
L319:
	cmpl	$14, -12(%rbp)
	jle	L323
	movl	$0, -12(%rbp)
	jmp	L324
L328:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+4, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+4, %eax
	cmpq	%rax, -8(%rbp)
	je	L325
	call	abort
L325:
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
	movl	$u2+4, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+4, %eax
	cmpq	%rax, -8(%rbp)
	je	L326
	call	abort
L326:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+4, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+4, %eax
	cmpq	%rax, -8(%rbp)
	je	L327
	call	abort
L327:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	addl	$1, -12(%rbp)
L324:
	cmpl	$14, -12(%rbp)
	jle	L328
	movl	$0, -12(%rbp)
	jmp	L329
L333:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+5, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+5, %eax
	cmpq	%rax, -8(%rbp)
	je	L330
	call	abort
L330:
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
	movl	$u2+5, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+5, %eax
	cmpq	%rax, -8(%rbp)
	je	L331
	call	abort
L331:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+5, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+5, %eax
	cmpq	%rax, -8(%rbp)
	je	L332
	call	abort
L332:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	addl	$1, -12(%rbp)
L329:
	cmpl	$14, -12(%rbp)
	jle	L333
	movl	$0, -12(%rbp)
	jmp	L334
L338:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+6, %eax
	cmpq	%rax, -8(%rbp)
	je	L335
	call	abort
L335:
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
	movl	$u2+6, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+6, %eax
	cmpq	%rax, -8(%rbp)
	je	L336
	call	abort
L336:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+6, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+6, %eax
	cmpq	%rax, -8(%rbp)
	je	L337
	call	abort
L337:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	addl	$1, -12(%rbp)
L334:
	cmpl	$14, -12(%rbp)
	jle	L338
	movl	$0, -12(%rbp)
	jmp	L339
L343:
	movl	$0, %eax
	call	reset
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+7, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+7, %eax
	cmpq	%rax, -8(%rbp)
	je	L340
	call	abort
L340:
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
	movl	$u2+7, %edi
	movl	%eax, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+7, %eax
	cmpq	%rax, -8(%rbp)
	je	L341
	call	abort
L341:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movq	$-1, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$u2+7, %edi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	movl	$u2+7, %eax
	cmpq	%rax, -8(%rbp)
	je	L342
	call	abort
L342:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	addl	$1, -12(%rbp)
L339:
	cmpl	$14, -12(%rbp)
	jle	L343
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
