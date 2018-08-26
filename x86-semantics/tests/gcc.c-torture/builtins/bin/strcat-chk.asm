	.file	"strcat-chk.c"
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
	.comm	s5,8,8
	.section	.rodata
LC2:
	.string	"hello world"
LC3:
	.string	""
LC4:
	.string	" 1111"
LC5:
	.string	"hello world 1111"
	.string	"XXX"
LC6:
	.string	" 2222"
LC7:
	.string	"hello world 2222"
	.string	"XXX"
LC8:
	.string	"hello world 3333"
	.string	"XXX"
LC9:
	.string	": this "
LC10:
	.string	"hello world: this is a test."
	.string	"X"
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC2, -104(%rbp)
	movq	$LC3, -96(%rbp)
	movl	$0, $chk_calls(%rip)
	movl	$1, $strcat_disallowed(%rip)
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, (%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 32(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L142
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L143
L142:
	call	abort
L143:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, (%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 8(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 16(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 24(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L144
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L145
L144:
	call	abort
L145:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, (%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 8(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 16(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 24(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 32(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 40(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 48(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	L146
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L146
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L147
L146:
	call	abort
L147:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 32(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 40(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 48(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L148
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L148
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L149
L148:
	call	abort
L149:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, (%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 8(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 16(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 24(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	leaq	11(%rax), %rdx
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L150
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L150
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L151
L150:
	call	abort
L151:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L152
	call	abort
L152:
	movl	$0, $strcat_disallowed(%rip)
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L153
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L154
L153:
	call	abort
L154:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	movq	$-1, %rdx
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	cmpq	%rax, %rdx
	jne	L155
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L156
L155:
	call	abort
L156:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$858993440, (%rax)
	movw	$51, 4(%rax)
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L157
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L157
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L158
L157:
	call	abort
L158:
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$LC9, %esi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$2126697, (%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$8289, (%rax)
	movb	$0, 2(%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$1953719668, (%rax)
	movb	$0, 4(%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$46, (%rax)
	leaq	-80(%rbp), %rax
	movl	$30, %edx
	movl	$LC10, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L159
	call	abort
L159:
	movl	$0, $chk_calls(%rip)
	movl	$1, $strcat_disallowed(%rip)
	leaq	-80(%rbp), %rax
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, (%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 24(%rax)
	movabsq	$6365935209750747224, %rdx
	movq	%rdx, 32(%rax)
	movabsq	$6365935209750747224, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$6365935209750747224, %rsi
	movq	%rsi, 48(%rax)
	movabsq	$6365935209750747224, %rdi
	movq	%rdi, 56(%rax)
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcpy_chk
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L160
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L161
L160:
	call	abort
L161:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L162
	call	abort
L162:
	movl	$0, $strcat_disallowed(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L163
	call	__stack_chk_fail
L163:
	leave
	ret
	.section	.rodata
LC11:
	.string	"a"
	.text
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L165
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L166
L165:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L166:
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, $s5(%rip)
	movq $s5(%rip), %rax
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rax
	leaq	3(%rax), %rcx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	$-1, %rdx
	movq $s3(%rip), %rax
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L167
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
	jmp	L168
L167:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L168:
	movq	%rax, -72(%rbp)
	movq	$-1, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	-72(%rbp), %rax
	movq	$-1, %rdx
	movq $s2(%rip), %rax
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movq	$-1, %rdx
	movq $s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	jmp	L169
L174:
	movl	-76(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L170
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	L171
L170:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L172
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -72(%rbp)
	jmp	L171
L172:
	movl	-76(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L173
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -72(%rbp)
	jmp	L171
L173:
	movl	-76(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L171
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -72(%rbp)
L171:
	addl	$1, -76(%rbp)
L169:
	cmpl	$3, -76(%rbp)
	jle	L174
	movq	$-1, %rdx
	movq $s2(%rip), %rax
	leaq	4(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L175
	call	abort
L175:
	leaq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	movl	$0, $chk_calls(%rip)
	leaq	-64(%rbp), %rax
	movq	%rax, $s5(%rip)
	movq $s5(%rip), %rax
	movq	$-1, %rdx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	__strcat_chk
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L176
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
	jmp	L177
L176:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L177:
	movq	%rax, -72(%rbp)
	movq	$-1, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	-72(%rbp), %rax
	movq	$-1, %rdx
	movl	$s1+1, %ecx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movl $chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	L178
	call	abort
L178:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	movq $s3(%rip), %rcx
	movq $s4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L179
	call	abort
L179:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L180
	call	__stack_chk_fail
L180:
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
	subq	$88, %rsp
	movq	$40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	leaq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, $s5(%rip)
	movq $s5(%rip), %rax
	leaq	-80(%rbp), %rax
	movq	%rax, $s5(%rip)
	movq $s5(%rip), %rax
	movl	$1, $chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L182, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L183
L182:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L183:
	testl	%eax, %eax
	jne	L184
	movq $s2(%rip), %rax
	leaq	3(%rax), %rcx
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	call	abort
L184:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L185, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L186
L185:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L186:
	testl	%eax, %eax
	jne	L187
	movq $s3(%rip), %rax
	movq	%rax, -120(%rbp)
	movq $s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$3, %rax
	movq	-120(%rbp), %rcx
	addq	%rax, %rcx
	leaq	-112(%rbp), %rax
	addq	$17, %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__strcat_chk
	call	abort
L187:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$L188, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L189
L188:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L189:
	testl	%eax, %eax
	jne	L190
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %edx
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	__strcat_chk
	call	abort
L190:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L191
	call	__stack_chk_fail
L191:
	addq	$88, %rsp
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
