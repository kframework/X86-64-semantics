	.file	"stpcpy-chk.c"
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
	.type	__chk_fail, @function
__chk_fail:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	chk_fail_allowed(%rip), %eax
	testl	%eax, %eax
	je	.L2
	movl	$chk_fail_buf, %eax
	movq	8(%rax), %rdx
	movq	(%rax), %rbp
	movq	16(%rax), %rsp
	jmp	*%rdx
.L2:
	call	abort
	.size	__chk_fail, .-__chk_fail
	.globl	memcpy
	.type	memcpy, @function
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
	jmp	.L4
.L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L4:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L5
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	__memcpy_chk
	.type	__memcpy_chk, @function
__memcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L8
	call	abort
.L8:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L9
	call	__chk_fail
.L9:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	ret
	.size	__memcpy_chk, .-__memcpy_chk
	.globl	mempcpy
	.type	mempcpy, @function
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
	jmp	.L12
.L13:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L12:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L13
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	mempcpy, .-mempcpy
	.globl	__mempcpy_chk
	.type	__mempcpy_chk, @function
__mempcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L16
	call	abort
.L16:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L17
	call	__chk_fail
.L17:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy
	leave
	ret
	.size	__mempcpy_chk, .-__mempcpy_chk
	.globl	memmove
	.type	memmove, @function
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
	jnb	.L20
	jmp	.L21
.L22:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L21:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L22
	jmp	.L23
.L20:
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L24:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L25
.L23:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memmove, .-memmove
	.globl	__memmove_chk
	.type	__memmove_chk, @function
__memmove_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L28
	call	abort
.L28:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L29
	call	__chk_fail
.L29:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	leave
	ret
	.size	__memmove_chk, .-__memmove_chk
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L32
.L33:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
.L32:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	.L33
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	__memset_chk
	.type	__memset_chk, @function
__memset_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L36
	call	abort
.L36:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L37
	call	__chk_fail
.L37:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset
	leave
	ret
	.size	__memset_chk, .-__memset_chk
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L40:
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
	jne	.L40
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	__strcpy_chk
	.type	__strcpy_chk, @function
__strcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	.L43
	call	abort
.L43:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	.L44
	call	__chk_fail
.L44:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leave
	ret
	.size	__strcpy_chk, .-__strcpy_chk
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L47:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L48
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	stpcpy, .-stpcpy
	.globl	__stpcpy_chk
	.type	__stpcpy_chk, @function
__stpcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	.L51
	call	abort
.L51:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	.L52
	call	__chk_fail
.L52:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy
	leave
	ret
	.size	__stpcpy_chk, .-__stpcpy_chk
	.globl	stpncpy
	.type	stpncpy, @function
stpncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	jmp	.L55
.L57:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
.L55:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L56
	cmpq	$0, -40(%rbp)
	jne	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L58:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L59
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	stpncpy, .-stpncpy
	.globl	__stpncpy_chk
	.type	__stpncpy_chk, @function
__stpncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L62
	call	abort
.L62:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L63
	call	__chk_fail
.L63:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	leave
	ret
	.size	__stpncpy_chk, .-__stpncpy_chk
	.globl	strncpy
	.type	strncpy, @function
strncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L66
.L68:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
.L66:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L67
	cmpq	$0, -40(%rbp)
	jne	.L68
.L67:
	jmp	.L69
.L70:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L69:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L70
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strncpy, .-strncpy
	.globl	__strncpy_chk
	.type	__strncpy_chk, @function
__strncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L73
	call	abort
.L73:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L74
	call	__chk_fail
.L74:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leave
	ret
	.size	__strncpy_chk, .-__strncpy_chk
	.globl	strcat
	.type	strcat, @function
strcat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L77
.L78:
	addq	$1, -8(%rbp)
.L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L78
	nop
.L79:
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
	jne	.L79
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	strcat, .-strcat
	.globl	__strcat_chk
	.type	__strcat_chk, @function
__strcat_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	.L82
	call	abort
.L82:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	cmpq	-40(%rbp), %rax
	jb	.L83
	call	__chk_fail
.L83:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	__strcat_chk, .-__strcat_chk
	.globl	strncat
	.type	strncat, @function
strncat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L86
.L87:
	addq	$1, -24(%rbp)
.L86:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L87
	movb	$0, -9(%rbp)
	jmp	.L88
.L91:
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
	jne	.L89
	movq	-8(%rbp), %rax
	jmp	.L90
.L89:
	subq	$1, -40(%rbp)
.L88:
	cmpq	$0, -40(%rbp)
	jne	.L91
	cmpb	$0, -9(%rbp)
	je	.L92
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L92:
	movq	-8(%rbp), %rax
.L90:
	popq	%rbp
	ret
	.size	strncat, .-strncat
	.globl	__strncat_chk
	.type	__strncat_chk, @function
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
	jne	.L94
	call	abort
.L94:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	jmp	.L95
.L98:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L96
	jmp	.L97
.L96:
	addq	$1, -24(%rbp)
	subq	$1, -16(%rbp)
.L95:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L97
	cmpq	$0, -16(%rbp)
	jne	.L98
.L97:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L99
	call	__chk_fail
.L99:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	leave
	ret
	.size	__strncat_chk, .-__strncat_chk
	.local	chk_sprintf_buf
	.comm	chk_sprintf_buf,4096,64
	.globl	__sprintf_chk
	.type	__sprintf_chk, @function
__sprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L102
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L102:
	movq	%rcx, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -248(%rbp)
	jne	.L103
	cmpl	$0, -236(%rbp)
	jne	.L103
	call	abort
.L103:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
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
	js	.L104
	movl	-212(%rbp), %eax
	cltq
	cmpq	-248(%rbp), %rax
	jb	.L105
	call	__chk_fail
.L105:
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
.L104:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L107
	call	__stack_chk_fail
.L107:
	leave
	ret
	.size	__sprintf_chk, .-__sprintf_chk
	.globl	__vsprintf_chk
	.type	__vsprintf_chk, @function
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
	jne	.L109
	cmpl	$0, -28(%rbp)
	jne	.L109
	call	abort
.L109:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L110
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jb	.L111
	call	__chk_fail
.L111:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
.L110:
	movl	-4(%rbp), %eax
	leave
	ret
	.size	__vsprintf_chk, .-__vsprintf_chk
	.globl	__snprintf_chk
	.type	__snprintf_chk, @function
__snprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L114
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L114:
	movq	%r8, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -256(%rbp)
	jne	.L115
	cmpl	$0, -244(%rbp)
	jne	.L115
	call	abort
.L115:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-256(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	.L116
	call	__chk_fail
.L116:
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
	js	.L117
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	.L118
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	.L117
.L118:
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
.L117:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L120
	call	__stack_chk_fail
.L120:
	leave
	ret
	.size	__snprintf_chk, .-__snprintf_chk
	.globl	__vsnprintf_chk
	.type	__vsnprintf_chk, @function
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
	jne	.L122
	cmpl	$0, -36(%rbp)
	jne	.L122
	call	abort
.L122:
	movl	chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, chk_calls(%rip)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L123
	call	__chk_fail
.L123:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L124
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	.L125
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	.L124
.L125:
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
.L124:
	movl	-4(%rbp), %eax
	leave
	ret
	.size	__vsnprintf_chk, .-__vsnprintf_chk
	.globl	snprintf
	.type	snprintf, @function
snprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L128
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L128:
	movq	%rdx, -248(%rbp)
	movq	%fs:40, %rax
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
	js	.L129
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	.L130
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	.L129
.L130:
	cmpq	$0, -240(%rbp)
	je	.L129
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
.L129:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L132
	call	__stack_chk_fail
.L132:
	leave
	ret
	.size	snprintf, .-snprintf
	.globl	vsnprintf
	.type	vsnprintf, @function
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
	js	.L134
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	.L135
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	.L134
.L135:
	cmpq	$0, -32(%rbp)
	je	.L134
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
.L134:
	movl	-4(%rbp), %eax
	leave
	ret
	.size	vsnprintf, .-vsnprintf
	.comm	inside_main,4,4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, inside_main(%rip)
	call	main_test
	movl	$0, inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error
	.type	link_error, @function
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.size	link_error, .-link_error
	.globl	s1
	.section	.rodata
	.type	s1, @object
	.size	s1, 4
s1:
	.string	"123"
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 32
p:
	.zero	32
	.globl	s2
	.section	.rodata
.LC0:
	.string	"defg"
	.data
	.align 8
	.type	s2, @object
	.size	s2, 8
s2:
	.quad	.LC0
	.globl	s3
	.section	.rodata
.LC1:
	.string	"FGH"
	.data
	.align 8
	.type	s3, @object
	.size	s3, 8
s3:
	.quad	.LC1
	.comm	s4,8,8
	.globl	l1
	.align 8
	.type	l1, @object
	.size	l1, 8
l1:
	.quad	1
	.section	.rodata
.LC2:
	.string	"abcde"
.LC3:
	.string	"wxyz"
.LC4:
	.string	"a"
	.string	"cde"
.LC5:
	.string	"a"
	.string	"cfghij"
.LC6:
	.string	"z"
	.string	"23"
	.string	""
.LC7:
	.string	"ABCDEFG"
.LC8:
	.string	"aabcd"
.LC9:
	.string	"defg"
	.string	""
.LC10:
	.string	"deFGH"
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$8, -4(%rbp)
	movl	$1, stpcpy_disallowed(%rip)
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L141
	call	abort
.L141:
	movl	$2054781047, p+16(%rip)
	movb	$0, p+20(%rip)
	movl	$5, %edx
	movl	$.LC3, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L142
	call	abort
.L142:
	movb	$0, p+1(%rip)
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L143
	call	abort
.L143:
	movl	$1768449894, p+3(%rip)
	movw	$106, p+7(%rip)
	movl	$9, %edx
	movl	$.LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L144
	call	abort
.L144:
	addl	$1, -4(%rbp)
	movl	$p+21, %eax
	movw	$13106, (%rax)
	movb	$0, 2(%rax)
	addq	$2, %rax
	cmpq	$p+23, %rax
	jne	.L145
	cmpl	$9, -4(%rbp)
	jne	.L145
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$p+19, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L146
.L145:
	call	abort
.L146:
	movl	$1145258561, p(%rip)
	movb	$0, p+4(%rip)
	movl	$p+4, %eax
	movl	$4671045, (%rax)
	addq	$3, %rax
	cmpq	$p+7, %rax
	jne	.L147
	movl	$8, %edx
	movl	$.LC7, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L148
.L147:
	call	abort
.L148:
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L149
	call	abort
.L149:
	movl	$1, stpcpy_disallowed(%rip)
	movl	$1684234849, p+1(%rip)
	movb	$0, p+5(%rip)
	movl	$0, stpcpy_disallowed(%rip)
	movl	$6, %edx
	movl	$.LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L150
	call	abort
.L150:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L151
	call	abort
.L151:
	movl	$0, chk_calls(%rip)
	movl	$1, strcpy_disallowed(%rip)
	movq	s2(%rip), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$p, %edi
	call	__stpcpy_chk
	cmpq	$p+4, %rax
	jne	.L152
	movl	$6, %edx
	movl	$.LC9, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L153
.L152:
	call	abort
.L153:
	movl	$0, strcpy_disallowed(%rip)
	movl	$1, stpcpy_disallowed(%rip)
	movq	s3(%rip), %rax
	movl	$30, %edx
	movq	%rax, %rsi
	movl	$p+2, %edi
	call	__strcpy_chk
	movl	$0, stpcpy_disallowed(%rip)
	movl	$6, %edx
	movl	$.LC10, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L154
	call	abort
.L154:
	movl	chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	.L140
	call	abort
.L140:
	leave
	ret
	.size	test1, .-test1
	.local	u1
	.comm	u1,112,64
	.local	u2
	.comm	u2,112,64
	.comm	vx,8,8
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -32(%rbp)
	jmp	.L157
.L177:
	movl	$0, -28(%rbp)
	jmp	.L158
.L176:
	movl	$1, -24(%rbp)
	jmp	.L159
.L175:
	movl	$0, -20(%rbp)
	movb	$65, -33(%rbp)
	jmp	.L160
.L162:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -33(%rbp)
	jle	.L161
	movb	$65, -33(%rbp)
.L161:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-33(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -20(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
.L160:
	movl	-20(%rbp), %eax
	cmpl	$96, %eax
	jbe	.L162
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cltq
	movb	$0, u2(%rax)
	movq	$-1, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	u2(%rax), %rcx
	movl	-32(%rbp), %eax
	cltq
	addq	$u1, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, -8(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	addq	$u1, %rax
	cmpq	-8(%rbp), %rax
	je	.L163
	call	abort
.L163:
	movq	$u1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L164
.L166:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L165
	call	abort
.L165:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L164:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L166
	movl	$0, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$65, %eax
	movb	%al, -33(%rbp)
	jmp	.L167
.L170:
	cmpb	$95, -33(%rbp)
	jle	.L168
	movb	$65, -33(%rbp)
.L168:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-33(%rbp), %al
	je	.L169
	call	abort
.L169:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
.L167:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L170
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L171
	call	abort
.L171:
	movl	$0, -20(%rbp)
	jmp	.L172
.L174:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L173
	call	abort
.L173:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L172:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L174
	addl	$1, -24(%rbp)
.L159:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	.L175
	addl	$1, -28(%rbp)
.L158:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L176
	addl	$1, -32(%rbp)
.L157:
	movl	-32(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L177
	leave
	ret
	.size	test2, .-test2
	.section	.rodata
.LC11:
	.string	"a"
.LC12:
	.string	"abc"
.LC13:
	.string	"e"
.LC14:
	.string	"gh"
.LC15:
	.string	"jkl"
.LC16:
	.string	""
	.text
	.globl	test3
	.type	test3, @function
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L179
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	.L180
.L179:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
.L180:
	movq	%rax, -80(%rbp)
	movl	$0, chk_calls(%rip)
	movq	s3(%rip), %rax
	leaq	3(%rax), %rcx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movl	$18, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	$-1, %rdx
	movq	s3(%rip), %rax
	leaq	2(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L181
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
	jmp	.L182
.L181:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L182:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq	s2(%rip), %rax
	leaq	2(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	$-1, %rdx
	movq	s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L183
.L188:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L184
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.L185
.L184:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L186
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	.L185
.L186:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L187
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	.L185
.L187:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L185
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
.L185:
	addl	$1, -84(%rbp)
.L183:
	cmpl	$3, -84(%rbp)
	jle	.L188
	movq	$-1, %rdx
	movq	s2(%rip), %rax
	leaq	4(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movl	chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	.L189
	call	abort
.L189:
	movl	$0, chk_calls(%rip)
	movl	$0, %eax
	movb	%al, -62(%rbp)
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, vx(%rip)
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L190
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
	jmp	.L191
.L190:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L191:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movl	$s1+1, %esi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$.LC12, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L192
.L197:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L193
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$.LC13, -72(%rbp)
	jmp	.L194
.L193:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L195
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$.LC14, -72(%rbp)
	jmp	.L194
.L195:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L196
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$.LC15, -72(%rbp)
	jmp	.L194
.L196:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L194
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$.LC16, -72(%rbp)
.L194:
	addl	$1, -84(%rbp)
.L192:
	cmpl	$3, -84(%rbp)
	jle	.L197
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	$-1, %rdx
	movq	s3(%rip), %rcx
	movq	s4(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	movq	$-1, %rsi
	movq	s3(%rip), %rax
	movq	s4(%rip), %rdx
	leaq	4(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	__stpcpy_chk
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L198
	call	abort
.L198:
	movl	$0, chk_calls(%rip)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L199
	call	__stack_chk_fail
.L199:
	leave
	ret
	.size	test3, .-test3
	.globl	test4
	.type	test4, @function
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L201, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L202
.L201:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L202:
	testl	%eax, %eax
	jne	.L203
	movq	s2(%rip), %rax
	leaq	3(%rax), %rcx
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	call	abort
.L203:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L204, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L205
.L204:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L205:
	testl	%eax, %eax
	jne	.L206
	movq	s3(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	s3(%rip), %rax
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
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	call	abort
.L206:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$.L207, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L208
.L207:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L208:
	testl	%eax, %eax
	jne	.L209
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	__stpcpy_chk
	movq	%rax, vx(%rip)
	call	abort
.L209:
	movl	$0, chk_fail_allowed(%rip)
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L210
	call	__stack_chk_fail
.L210:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.size	test4, .-test4
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
