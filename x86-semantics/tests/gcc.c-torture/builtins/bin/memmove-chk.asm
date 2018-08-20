	.file	"memmove-chk.c"
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
	.globl	l1
	.align 8
	.type	l1, @object
	.size	l1, 8
l1:
	.quad	1
	.section	.rodata
.LC2:
	.string	"ABCDE"
.LC3:
	.string	"WX"
	.string	""
	.string	""
.LC4:
	.string	"A"
	.string	"CDE"
.LC5:
	.string	"A"
	.string	"CFGHI"
.LC6:
	.string	"Q123U"
.LC7:
	.string	"abcdefg"
.LC8:
	.string	"ABCDEFg"
.LC9:
	.string	"ABCDEF2"
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, memmove_disallowed(%rip)
	movl	$1, memcpy_disallowed(%rip)
	movl	$0, chk_calls(%rip)
	movl	$1145258561, p(%rip)
	movw	$69, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L141
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L142
.L141:
	call	abort
.L142:
	movw	$22615, p+16(%rip)
	movl	$p+16, %eax
	cmpq	$p+16, %rax
	jne	.L143
	movl	$5, %edx
	movl	$.LC3, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L144
.L143:
	call	abort
.L144:
	movb	$0, p+1(%rip)
	movl	$p+1, %eax
	cmpq	$p+1, %rax
	jne	.L145
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L146
.L145:
	call	abort
.L146:
	movl	$1229473606, p+3(%rip)
	movl	$p+3, %eax
	cmpq	$p+3, %rax
	jne	.L147
	movl	$8, %edx
	movl	$.LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L148
.L147:
	call	abort
.L148:
	movl	$8, -4(%rbp)
	movl	$1953722993, p+20(%rip)
	movw	$117, p+24(%rip)
	movl	$1414746705, p+25(%rip)
	movw	$85, p+29(%rip)
	movw	$12849, p+26(%rip)
	movb	$51, p+28(%rip)
	movl	$p+26, %eax
	cmpq	$p+26, %rax
	jne	.L149
	movl	$6, %edx
	movl	$.LC6, %esi
	movl	$p+25, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L150
.L149:
	call	abort
.L150:
	movl	$1684234849, p(%rip)
	movl	$p, %eax
	addq	$4, %rax
	movl	$6776421, (%rax)
	cmpq	$p+4, %rax
	jne	.L151
	movl	$8, %edx
	movl	$.LC7, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L152
.L151:
	call	abort
.L152:
	movl	$1145258561, p(%rip)
	movw	$69, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L153
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L154
.L153:
	call	abort
.L154:
	movq	s3(%rip), %rax
	movzbl	(%rax), %eax
	movb	%al, p+5(%rip)
	movl	$8, %edx
	movl	$.LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L155
	call	abort
.L155:
	movl	$0, memmove_disallowed(%rip)
	movl	$0, memcpy_disallowed(%rip)
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L156
	call	abort
.L156:
	movl	$0, chk_calls(%rip)
	movq	l1(%rip), %rax
	movl	$26, %ecx
	movq	%rax, %rdx
	movl	$s1+1, %esi
	movl	$p+6, %edi
	call	__memcpy_chk
	movl	$8, %edx
	movl	$.LC9, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L157
	call	abort
.L157:
	movl	chk_calls(%rip), %eax
	cmpl	$1, %eax
	je	.L140
	call	abort
.L140:
	leave
	ret
	.size	test1, .-test1
	.comm	buf1,512,64
	.globl	buf2
	.data
	.align 8
	.type	buf2, @object
	.size	buf2, 8
buf2:
	.quad	buf1+256
	.comm	buf5,160,64
	.comm	buf7,20,16
	.section	.rodata
.LC10:
	.string	"ABCDEFGHI"
	.string	""
.LC11:
	.string	"abcdefghijklmnopq"
	.string	""
.LC12:
	.string	"ABCDEF"
.LC13:
	.string	"ABCDEFghijklmnopq"
	.string	""
.LC14:
	.string	"a"
.LC15:
	.string	"aBCDEFghijklmnopq"
	.string	""
.LC16:
	.string	"bcd"
.LC17:
	.string	"aBcdEFghijklmnopq"
	.string	""
.LC18:
	.string	"aBcdRSTUVWklmnopq"
	.string	""
.LC19:
	.string	"aBcdRSTUVWSlmnopq"
	.string	""
.LC20:
	.string	"aBcdRSTUVWSlmnrsq"
	.string	""
.LC21:
	.string	"RSTUVWXYVWSlmnrsq"
	.string	""
.LC22:
	.string	"RSTUVWXYZ01234567"
	.string	""
.LC23:
	.string	"aBcdRSTUVWkSmnopq"
	.string	""
.LC24:
	.string	"aBcdRSTUVWkSmnrsq"
	.string	""
.LC25:
	.string	"ABCDEFGHI"
.LC26:
	.string	"abcdefghijklmnopq"
	.text
	.globl	test2_sub
	.type	test2_sub, @function
test2_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, chk_calls(%rip)
	movabsq	$5208208757389214273, %rax
	movq	%rax, buf1(%rip)
	movb	$73, buf1+8(%rip)
	movl	$buf1, %eax
	cmpq	$buf1, %rax
	jne	.L160
	movl	$11, %edx
	movl	$.LC10, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L161
.L160:
	call	abort
.L161:
	movabsq	$7523094288207667809, %rax
	movq	%rax, buf1(%rip)
	movabsq	$8101815670912281193, %rax
	movq	%rax, buf1+8(%rip)
	movb	$113, buf1+16(%rip)
	movl	$buf1, %eax
	cmpq	$buf1, %rax
	jne	.L162
	movl	$19, %edx
	movl	$.LC11, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L163
.L162:
	call	abort
.L163:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	.L164
	movl	$19, %edx
	movl	$.LC13, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L165
.L164:
	call	abort
.L165:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	.L166
	movl	$19, %edx
	movl	$.LC15, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L167
.L166:
	call	abort
.L167:
	movq	$-1, %rdx
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC16(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1+2, %rax
	jne	.L168
	movl	$19, %edx
	movl	$.LC17, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L168
	cmpl	$1, -4(%rbp)
	je	.L169
.L168:
	call	abort
.L169:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1+4, %rax
	jne	.L170
	movl	$19, %edx
	movl	$.LC18, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L171
.L170:
	call	abort
.L171:
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$8, %rax
	addq	$buf1, %rax
	movzbl	buf5+1(%rip), %edx
	movb	%dl, (%rax)
	cmpq	$buf1+10, %rax
	jne	.L172
	movl	$19, %edx
	movl	$.LC19, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L172
	cmpl	$2, -4(%rbp)
	je	.L173
.L172:
	call	abort
.L173:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	cmpq	$buf1+14, %rax
	jne	.L174
	movl	$19, %edx
	movl	$.LC20, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L175
.L174:
	call	abort
.L175:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	.L176
	movl	$19, %edx
	movl	$.LC21, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L177
.L176:
	call	abort
.L177:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$buf5, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	cmpq	$buf1, %rax
	jne	.L178
	movl	$19, %edx
	movl	$.LC22, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L179
.L178:
	call	abort
.L179:
	movq	$-1, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$19, %edx
	movl	$.LC17, %esi
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
	cmpq	$buf1+4, %rax
	jne	.L180
	movl	$19, %edx
	movl	$.LC18, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L181
.L180:
	call	abort
.L181:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
	leaq	buf1(%rdx), %rcx
	movq	%rax, %rdx
	movl	$buf5+1, %esi
	movq	%rcx, %rdi
	call	memmove
	cmpq	$buf1+11, %rax
	jne	.L182
	movl	$19, %edx
	movl	$.LC23, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L182
	cmpl	$3, -4(%rbp)
	je	.L183
.L182:
	call	abort
.L183:
	movq	$-1, %rcx
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	__memmove_chk
	cmpq	$buf1+14, %rax
	jne	.L184
	movl	$19, %edx
	movl	$.LC24, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L185
.L184:
	call	abort
.L185:
	movl	$1, -4(%rbp)
	movq	$-1, %rdx
	movq	buf2(%rip), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L186
	movq	buf2(%rip), %rax
	movl	$11, %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L187
.L186:
	call	abort
.L187:
	movq	$-1, %rdx
	movq	buf2(%rip), %rax
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L188
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L189
.L188:
	call	abort
.L189:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L190
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L191
.L190:
	call	abort
.L191:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L192
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L193
.L192:
	call	abort
.L193:
	movq	$-1, %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	leaq	.LC16(%rax), %rsi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	addq	$2, %rax
	cmpq	%rax, %rdx
	jne	.L194
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L194
	cmpl	$2, -4(%rbp)
	je	.L195
.L194:
	call	abort
.L195:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$buf7, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L196
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L197
.L196:
	call	abort
.L197:
	movq	buf2(%rip), %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rcx, %rax
	movzbl	buf7+1(%rip), %edx
	movb	%dl, (%rax)
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	addq	$10, %rax
	cmpq	%rax, %rdx
	jne	.L198
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L198
	cmpl	$3, -4(%rbp)
	je	.L199
.L198:
	call	abort
.L199:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	leaq	14(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	call	__memmove_chk
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	addq	$14, %rax
	cmpq	%rax, %rdx
	jne	.L200
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L201
.L200:
	call	abort
.L201:
	movq	$-1, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$19, %edx
	movl	$.LC17, %esi
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
	movq	buf2(%rip), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L202
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L203
.L202:
	call	abort
.L203:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	buf2(%rip), %rsi
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	cltq
	addq	$8, %rax
	addq	%rsi, %rax
	movl	$buf7+1, %esi
	movq	%rax, %rdi
	call	memmove
	movq	%rax, %rdx
	movq	buf2(%rip), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	jne	.L204
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L204
	cmpl	$4, -4(%rbp)
	je	.L205
.L204:
	call	abort
.L205:
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
	movq	buf2(%rip), %rax
	addq	$14, %rax
	cmpq	%rax, %rdx
	jne	.L206
	movq	buf2(%rip), %rax
	movl	$19, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L207
.L206:
	call	abort
.L207:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L159
	call	abort
.L159:
	leave
	ret
	.size	test2_sub, .-test2_sub
	.section	.rodata
.LC27:
	.string	"rstuvwxyz"
	.text
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movabsq	$6437991695636517714, %rax
	movq	%rax, buf5(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, buf5+8(%rip)
	movl	$3749943, buf5+16(%rip)
	movabsq	$6437991695636517714, %rax
	movq	%rax, buf7(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, buf7+8(%rip)
	movl	$3749943, buf7+16(%rip)
	movl	$buf1, %eax
	movq	%rax, -16(%rbp)
	movq	buf2(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$.LC27, %edx
	movq	%rax, %rdi
	call	test2_sub
	leave
	ret
	.size	test2, .-test2
	.section	.rodata
.LC28:
	.string	"hello world1"
.LC29:
	.string	"hello world2"
.LC30:
	.string	"hello world3"
.LC31:
	.string	"hello world4"
.LC32:
	.string	"hello world5"
.LC33:
	.string	"hello world6"
	.align 64
	.type	foo, @object
	.size	foo, 144
foo:
	.quad	.LC28
	.long	4028335726
	.long	1074340345
	.quad	101
	.quad	.LC29
	.long	4028335726
	.long	1074340345
	.quad	102
	.quad	.LC30
	.long	4028335726
	.long	1074340345
	.quad	103
	.quad	.LC31
	.long	4028335726
	.long	1074340345
	.quad	104
	.quad	.LC32
	.long	4028335726
	.long	1074340345
	.quad	105
	.quad	.LC33
	.long	4028335726
	.long	1074340345
	.quad	106
.LC34:
	.string	"hello world10"
.LC35:
	.string	"hello1"
.LC36:
	.string	"hello2"
.LC37:
	.string	"hello3"
.LC38:
	.string	"hello world11"
.LC39:
	.string	"hello4"
.LC40:
	.string	"hello5"
.LC41:
	.string	"hello6"
	.align 64
	.type	bar, @object
	.size	bar, 160
bar:
	.quad	.LC34
	.quad	.LC35
	.long	4028335726
	.long	1074340345
	.quad	201
	.quad	.LC36
	.long	4028335726
	.long	1074340345
	.quad	202
	.quad	.LC37
	.long	4028335726
	.long	1074340345
	.quad	203
	.quad	.LC38
	.quad	.LC39
	.long	4028335726
	.long	1074340345
	.quad	204
	.quad	.LC40
	.long	4028335726
	.long	1074340345
	.quad	205
	.quad	.LC41
	.long	4028335726
	.long	1074340345
	.quad	206
	.align 32
	.type	baz, @object
	.size	baz, 40
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
.LC42:
	.string	"abcde"
.LC43:
	.string	"abc"
	.string	"e"
.LC44:
	.string	"abfghi"
.LC45:
	.string	"abfgAi"
.LC46:
	.string	"abggAi"
	.text
	.globl	test3
	.type	test3, @function
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, chk_calls(%rip)
	movl	$1, memmove_disallowed(%rip)
	leaq	-320(%rbp), %rax
	movl	$foo, %ecx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-320(%rbp), %rax
	movl	$144, %edx
	movl	$foo, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L211
	call	abort
.L211:
	leaq	-176(%rbp), %rax
	movl	$bar, %ecx
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-176(%rbp), %rax
	movl	$160, %edx
	movl	$bar, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L212
	call	abort
.L212:
	movq	baz(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	baz+8(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	baz+16(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	baz+24(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	baz+32(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	-368(%rbp), %rax
	movl	$40, %edx
	movl	$baz, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L213
	call	abort
.L213:
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L214
	movl	$6, %edx
	movl	$.LC42, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L215
.L214:
	call	abort
.L215:
	movq	$s1, -376(%rbp)
	addq	$1, -376(%rbp)
	movl	$6, %edx
	movl	$.LC42, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L216
	cmpq	$s1+1, -376(%rbp)
	je	.L217
.L216:
	call	abort
.L217:
	movb	$0, p+3(%rip)
	movl	$p+3, %eax
	cmpq	$p+3, %rax
	jne	.L218
	movl	$6, %edx
	movl	$.LC43, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L219
.L218:
	call	abort
.L219:
	movl	$1768449894, p+2(%rip)
	movl	$7, %edx
	movl	$.LC44, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L220
	call	abort
.L220:
	movq	$s1+1, -376(%rbp)
	movq	-376(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)
	movl	$7, %edx
	movl	$.LC44, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L221
	cmpq	$s1+2, -376(%rbp)
	je	.L222
.L221:
	call	abort
.L222:
	movb	$65, p+4(%rip)
	movl	$7, %edx
	movl	$.LC45, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L223
	call	abort
.L223:
	movzbl	p+3(%rip), %eax
	movb	%al, p+2(%rip)
	movl	$p+2, %eax
	cmpq	$p+2, %rax
	je	.L224
	call	abort
.L224:
	movl	$7, %edx
	movl	$.LC46, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L225
	call	abort
.L225:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L226
	call	abort
.L226:
	movl	$0, memmove_disallowed(%rip)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L227
	call	__stack_chk_fail
.L227:
	leave
	ret
	.size	test3, .-test3
	.globl	test4
	.type	test4, @function
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L229
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	.L230
.L229:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
.L230:
	movq	%rax, -80(%rbp)
	movl	$0, chk_calls(%rip)
	movq	l1(%rip), %rdx
	movq	s3(%rip), %rax
	leaq	-64(%rbp), %rcx
	leaq	2(%rcx), %rdi
	movl	$18, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L231
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
	jmp	.L232
.L231:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L232:
	movq	%rax, -80(%rbp)
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq	s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movq	$-1, %rsi
	movq	l1(%rip), %rdx
	movq	s3(%rip), %rax
	movq	-80(%rbp), %rcx
	leaq	2(%rcx), %rdi
	movq	%rsi, %rcx
	movq	%rax, %rsi
	call	__memmove_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L233
.L238:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L234
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.L235
.L234:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L236
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	.L235
.L236:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L237
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	.L235
.L237:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L235
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
.L235:
	addl	$1, -84(%rbp)
.L233:
	cmpl	$3, -84(%rbp)
	jle	.L238
	movq	$-1, %rcx
	movq	l1(%rip), %rdx
	movq	s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memmove_chk
	movl	chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	.L239
	call	abort
.L239:
	movl	$0, chk_calls(%rip)
	movq	s3(%rip), %rax
	movzbl	(%rax), %eax
	movb	%al, -62(%rbp)
	movq	$-1, %rdx
	movq	s3(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L240
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
	jmp	.L241
.L240:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L241:
	movq	%rax, -80(%rbp)
	movq	$-1, %rdx
	movq	s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L242
.L247:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L243
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	.L244
.L243:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L245
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	.L244
.L245:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L246
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	.L244
.L246:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L244
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
.L244:
	addl	$1, -84(%rbp)
.L242:
	cmpl	$3, -84(%rbp)
	jle	.L247
	movq	$-1, %rdx
	movq	s2(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	__memmove_chk
	movq	s2(%rip), %rax
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$4, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L248
	call	abort
.L248:
	movl	$0, chk_calls(%rip)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L249
	call	__stack_chk_fail
.L249:
	leave
	ret
	.size	test4, .-test4
	.section	.rodata
.LC47:
	.string	"ab"
	.text
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L251, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L252
.L251:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L252:
	testl	%eax, %eax
	jne	.L253
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	s2(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	19(%rcx), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	call	abort
.L253:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L254, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L255
.L254:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L255:
	testl	%eax, %eax
	jne	.L256
	movq	s3(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	movq	s3(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	17(%rcx), %rdi
	movl	$3, %ecx
	movq	%rax, %rsi
	call	__memmove_chk
	call	abort
.L256:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$.L257, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L258
.L257:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L258:
	testl	%eax, %eax
	jne	.L259
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	call	abort
.L259:
	movl	$0, chk_fail_allowed(%rip)
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L260
	call	__stack_chk_fail
.L260:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.size	test5, .-test5
	.local	u1
	.comm	u1,96,64
	.local	u2
	.comm	u2,96,64
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -32(%rbp)
	jmp	.L262
.L281:
	movl	$0, -28(%rbp)
	jmp	.L263
.L280:
	movl	$1, -24(%rbp)
	jmp	.L264
.L279:
	movl	$0, -20(%rbp)
	movb	$65, -33(%rbp)
	jmp	.L265
.L267:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -33(%rbp)
	jle	.L266
	movb	$65, -33(%rbp)
.L266:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-33(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -20(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
.L265:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	.L267
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
	je	.L268
	call	abort
.L268:
	movq	$u1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L269
.L271:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L270
	call	abort
.L270:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L269:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L271
	movl	$0, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$65, %eax
	movb	%al, -33(%rbp)
	jmp	.L272
.L275:
	cmpb	$95, -33(%rbp)
	jle	.L273
	movb	$65, -33(%rbp)
.L273:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-33(%rbp), %al
	je	.L274
	call	abort
.L274:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
.L272:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L275
	movl	$0, -20(%rbp)
	jmp	.L276
.L278:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L277
	call	abort
.L277:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L276:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L278
	addl	$1, -24(%rbp)
.L264:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	.L279
	addl	$1, -28(%rbp)
.L263:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L280
	addl	$1, -32(%rbp)
.L262:
	movl	-32(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L281
	leave
	ret
	.size	test6, .-test6
	.comm	srcb,80,16
	.comm	dstb,80,16
	.globl	check
	.type	check, @function
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
	je	.L282
	call	abort
.L282:
	leave
	ret
	.size	check, .-check
	.globl	test7
	.type	test7, @function
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, chk_calls(%rip)
	movl	$0, -4(%rbp)
	jmp	.L285
.L286:
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
.L285:
	movl	-4(%rbp), %eax
	cmpl	$79, %eax
	jbe	.L286
	movl	$0, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movb	$0, dstb(%rip)
	movzbl	srcb(%rip), %eax
	movb	%al, dstb(%rip)
	movl	$1, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movw	$0, dstb(%rip)
	movzwl	srcb(%rip), %eax
	movw	%ax, dstb(%rip)
	movl	$2, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movw	$0, dstb(%rip)
	movb	$0, dstb+2(%rip)
	movzwl	srcb(%rip), %eax
	movw	%ax, dstb(%rip)
	movzbl	srcb+2(%rip), %eax
	movb	%al, dstb+2(%rip)
	movl	$3, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, dstb(%rip)
	movl	srcb(%rip), %eax
	movl	%eax, dstb(%rip)
	movl	$4, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, dstb(%rip)
	movb	$0, dstb+4(%rip)
	movl	srcb(%rip), %eax
	movl	%eax, dstb(%rip)
	movzbl	srcb+4(%rip), %eax
	movb	%al, dstb+4(%rip)
	movl	$5, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, dstb(%rip)
	movw	$0, dstb+4(%rip)
	movl	srcb(%rip), %eax
	movl	%eax, dstb(%rip)
	movzwl	srcb+4(%rip), %eax
	movw	%ax, dstb+4(%rip)
	movl	$6, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	$0, dstb(%rip)
	movw	$0, dstb+4(%rip)
	movb	$0, dstb+6(%rip)
	movl	srcb(%rip), %eax
	movl	%eax, dstb(%rip)
	movzwl	srcb+4(%rip), %eax
	movw	%ax, dstb+4(%rip)
	movzbl	srcb+6(%rip), %eax
	movb	%al, dstb+6(%rip)
	movl	$7, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movl	$8, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movb	$0, dstb+8(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movzbl	srcb+8(%rip), %eax
	movb	%al, dstb+8(%rip)
	movl	$9, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movw	$0, dstb+8(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movzwl	srcb+8(%rip), %eax
	movw	%ax, dstb+8(%rip)
	movl	$10, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movw	$0, dstb+8(%rip)
	movb	$0, dstb+10(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movzwl	srcb+8(%rip), %eax
	movw	%ax, dstb+8(%rip)
	movzbl	srcb+10(%rip), %eax
	movb	%al, dstb+10(%rip)
	movl	$11, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movl	$0, dstb+8(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movl	srcb+8(%rip), %eax
	movl	%eax, dstb+8(%rip)
	movl	$12, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movl	$0, dstb+8(%rip)
	movb	$0, dstb+12(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movl	srcb+8(%rip), %eax
	movl	%eax, dstb+8(%rip)
	movzbl	srcb+12(%rip), %eax
	movb	%al, dstb+12(%rip)
	movl	$13, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movl	$0, dstb+8(%rip)
	movw	$0, dstb+12(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movl	srcb+8(%rip), %eax
	movl	%eax, dstb+8(%rip)
	movzwl	srcb+12(%rip), %eax
	movw	%ax, dstb+12(%rip)
	movl	$14, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movl	$0, dstb+8(%rip)
	movw	$0, dstb+12(%rip)
	movb	$0, dstb+14(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movl	srcb+8(%rip), %eax
	movl	%eax, dstb+8(%rip)
	movzwl	srcb+12(%rip), %eax
	movw	%ax, dstb+12(%rip)
	movzbl	srcb+14(%rip), %eax
	movb	%al, dstb+14(%rip)
	movl	$15, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movl	$16, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movb	$0, dstb+16(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movzbl	srcb+16(%rip), %eax
	movb	%al, dstb+16(%rip)
	movl	$17, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movw	$0, dstb+16(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movzwl	srcb+16(%rip), %eax
	movw	%ax, dstb+16(%rip)
	movl	$18, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movw	$0, dstb+16(%rip)
	movb	$0, dstb+18(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movzwl	srcb+16(%rip), %eax
	movw	%ax, dstb+16(%rip)
	movzbl	srcb+18(%rip), %eax
	movb	%al, dstb+18(%rip)
	movl	$19, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movl	$0, dstb+16(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movl	srcb+16(%rip), %eax
	movl	%eax, dstb+16(%rip)
	movl	$20, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movl	$0, dstb+16(%rip)
	movb	$0, dstb+20(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movl	srcb+16(%rip), %eax
	movl	%eax, dstb+16(%rip)
	movzbl	srcb+20(%rip), %eax
	movb	%al, dstb+20(%rip)
	movl	$21, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movl	$0, dstb+16(%rip)
	movw	$0, dstb+20(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movl	srcb+16(%rip), %eax
	movl	%eax, dstb+16(%rip)
	movzwl	srcb+20(%rip), %eax
	movw	%ax, dstb+20(%rip)
	movl	$22, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movl	$0, dstb+16(%rip)
	movw	$0, dstb+20(%rip)
	movb	$0, dstb+22(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movl	srcb+16(%rip), %eax
	movl	%eax, dstb+16(%rip)
	movzwl	srcb+20(%rip), %eax
	movw	%ax, dstb+20(%rip)
	movzbl	srcb+22(%rip), %eax
	movb	%al, dstb+22(%rip)
	movl	$23, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movl	$24, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movb	$0, dstb+24(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movzbl	srcb+24(%rip), %eax
	movb	%al, dstb+24(%rip)
	movl	$25, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movw	$0, dstb+24(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movzwl	srcb+24(%rip), %eax
	movw	%ax, dstb+24(%rip)
	movl	$26, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movw	$0, dstb+24(%rip)
	movb	$0, dstb+26(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movzwl	srcb+24(%rip), %eax
	movw	%ax, dstb+24(%rip)
	movzbl	srcb+26(%rip), %eax
	movb	%al, dstb+26(%rip)
	movl	$27, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movl	$0, dstb+24(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movl	srcb+24(%rip), %eax
	movl	%eax, dstb+24(%rip)
	movl	$28, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movl	$0, dstb+24(%rip)
	movb	$0, dstb+28(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movl	srcb+24(%rip), %eax
	movl	%eax, dstb+24(%rip)
	movzbl	srcb+28(%rip), %eax
	movb	%al, dstb+28(%rip)
	movl	$29, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movl	$0, dstb+24(%rip)
	movw	$0, dstb+28(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movl	srcb+24(%rip), %eax
	movl	%eax, dstb+24(%rip)
	movzwl	srcb+28(%rip), %eax
	movw	%ax, dstb+28(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movl	srcb+24(%rip), %eax
	movl	%eax, dstb+24(%rip)
	movzwl	srcb+28(%rip), %eax
	movw	%ax, dstb+28(%rip)
	movzbl	srcb+30(%rip), %eax
	movb	%al, dstb+30(%rip)
	movl	$31, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	$0, dstb+24(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movl	$32, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	$0, dstb+24(%rip)
	movb	$0, dstb+32(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movzbl	srcb+32(%rip), %eax
	movb	%al, dstb+32(%rip)
	movl	$33, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	$0, dstb+24(%rip)
	movw	$0, dstb+32(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movzwl	srcb+32(%rip), %eax
	movw	%ax, dstb+32(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movzwl	srcb+32(%rip), %eax
	movw	%ax, dstb+32(%rip)
	movzbl	srcb+34(%rip), %eax
	movb	%al, dstb+34(%rip)
	movl	$35, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	$0, dstb+24(%rip)
	movl	$0, dstb+32(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movl	srcb+32(%rip), %eax
	movl	%eax, dstb+32(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movl	srcb+32(%rip), %eax
	movl	%eax, dstb+32(%rip)
	movzbl	srcb+36(%rip), %eax
	movb	%al, dstb+36(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movl	srcb+32(%rip), %eax
	movl	%eax, dstb+32(%rip)
	movzwl	srcb+36(%rip), %eax
	movw	%ax, dstb+36(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movl	srcb+32(%rip), %eax
	movl	%eax, dstb+32(%rip)
	movzwl	srcb+36(%rip), %eax
	movw	%ax, dstb+36(%rip)
	movzbl	srcb+38(%rip), %eax
	movb	%al, dstb+38(%rip)
	movl	$39, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movq	$0, dstb(%rip)
	movq	$0, dstb+8(%rip)
	movq	$0, dstb+16(%rip)
	movq	$0, dstb+24(%rip)
	movq	$0, dstb+32(%rip)
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movzbl	srcb+40(%rip), %eax
	movb	%al, dstb+40(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movzwl	srcb+40(%rip), %eax
	movw	%ax, dstb+40(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movzwl	srcb+40(%rip), %eax
	movw	%ax, dstb+40(%rip)
	movzbl	srcb+42(%rip), %eax
	movb	%al, dstb+42(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movl	srcb+40(%rip), %eax
	movl	%eax, dstb+40(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movl	srcb+40(%rip), %eax
	movl	%eax, dstb+40(%rip)
	movzbl	srcb+44(%rip), %eax
	movb	%al, dstb+44(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movl	srcb+40(%rip), %eax
	movl	%eax, dstb+40(%rip)
	movzwl	srcb+44(%rip), %eax
	movw	%ax, dstb+44(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movl	srcb+40(%rip), %eax
	movl	%eax, dstb+40(%rip)
	movzwl	srcb+44(%rip), %eax
	movw	%ax, dstb+44(%rip)
	movzbl	srcb+46(%rip), %eax
	movb	%al, dstb+46(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movzbl	srcb+48(%rip), %eax
	movb	%al, dstb+48(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movzwl	srcb+48(%rip), %eax
	movw	%ax, dstb+48(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movzwl	srcb+48(%rip), %eax
	movw	%ax, dstb+48(%rip)
	movzbl	srcb+50(%rip), %eax
	movb	%al, dstb+50(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movl	srcb+48(%rip), %eax
	movl	%eax, dstb+48(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movl	srcb+48(%rip), %eax
	movl	%eax, dstb+48(%rip)
	movzbl	srcb+52(%rip), %eax
	movb	%al, dstb+52(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movl	srcb+48(%rip), %eax
	movl	%eax, dstb+48(%rip)
	movzwl	srcb+52(%rip), %eax
	movw	%ax, dstb+52(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movl	srcb+48(%rip), %eax
	movl	%eax, dstb+48(%rip)
	movzwl	srcb+52(%rip), %eax
	movw	%ax, dstb+52(%rip)
	movzbl	srcb+54(%rip), %eax
	movb	%al, dstb+54(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movzbl	srcb+56(%rip), %eax
	movb	%al, dstb+56(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movzwl	srcb+56(%rip), %eax
	movw	%ax, dstb+56(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movzwl	srcb+56(%rip), %eax
	movw	%ax, dstb+56(%rip)
	movzbl	srcb+58(%rip), %eax
	movb	%al, dstb+58(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movl	srcb+56(%rip), %eax
	movl	%eax, dstb+56(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movl	srcb+56(%rip), %eax
	movl	%eax, dstb+56(%rip)
	movzbl	srcb+60(%rip), %eax
	movb	%al, dstb+60(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movl	srcb+56(%rip), %eax
	movl	%eax, dstb+56(%rip)
	movzwl	srcb+60(%rip), %eax
	movw	%ax, dstb+60(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movl	srcb+56(%rip), %eax
	movl	%eax, dstb+56(%rip)
	movzwl	srcb+60(%rip), %eax
	movw	%ax, dstb+60(%rip)
	movzbl	srcb+62(%rip), %eax
	movb	%al, dstb+62(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movzbl	srcb+64(%rip), %eax
	movb	%al, dstb+64(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movzwl	srcb+64(%rip), %eax
	movw	%ax, dstb+64(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movzwl	srcb+64(%rip), %eax
	movw	%ax, dstb+64(%rip)
	movzbl	srcb+66(%rip), %eax
	movb	%al, dstb+66(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movl	srcb+64(%rip), %eax
	movl	%eax, dstb+64(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movl	srcb+64(%rip), %eax
	movl	%eax, dstb+64(%rip)
	movzbl	srcb+68(%rip), %eax
	movb	%al, dstb+68(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movl	srcb+64(%rip), %eax
	movl	%eax, dstb+64(%rip)
	movzwl	srcb+68(%rip), %eax
	movw	%ax, dstb+68(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movl	srcb+64(%rip), %eax
	movl	%eax, dstb+64(%rip)
	movzwl	srcb+68(%rip), %eax
	movw	%ax, dstb+68(%rip)
	movzbl	srcb+70(%rip), %eax
	movb	%al, dstb+70(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movzbl	srcb+72(%rip), %eax
	movb	%al, dstb+72(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movzwl	srcb+72(%rip), %eax
	movw	%ax, dstb+72(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movzwl	srcb+72(%rip), %eax
	movw	%ax, dstb+72(%rip)
	movzbl	srcb+74(%rip), %eax
	movb	%al, dstb+74(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movl	srcb+72(%rip), %eax
	movl	%eax, dstb+72(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movl	srcb+72(%rip), %eax
	movl	%eax, dstb+72(%rip)
	movzbl	srcb+76(%rip), %eax
	movb	%al, dstb+76(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movl	srcb+72(%rip), %eax
	movl	%eax, dstb+72(%rip)
	movzwl	srcb+76(%rip), %eax
	movw	%ax, dstb+76(%rip)
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
	movq	srcb(%rip), %rax
	movq	%rax, dstb(%rip)
	movq	srcb+8(%rip), %rax
	movq	%rax, dstb+8(%rip)
	movq	srcb+16(%rip), %rax
	movq	%rax, dstb+16(%rip)
	movq	srcb+24(%rip), %rax
	movq	%rax, dstb+24(%rip)
	movq	srcb+32(%rip), %rax
	movq	%rax, dstb+32(%rip)
	movq	srcb+40(%rip), %rax
	movq	%rax, dstb+40(%rip)
	movq	srcb+48(%rip), %rax
	movq	%rax, dstb+48(%rip)
	movq	srcb+56(%rip), %rax
	movq	%rax, dstb+56(%rip)
	movq	srcb+64(%rip), %rax
	movq	%rax, dstb+64(%rip)
	movl	srcb+72(%rip), %eax
	movl	%eax, dstb+72(%rip)
	movzwl	srcb+76(%rip), %eax
	movw	%ax, dstb+76(%rip)
	movzbl	srcb+78(%rip), %eax
	movb	%al, dstb+78(%rip)
	movl	$79, %edx
	movl	$srcb, %esi
	movl	$dstb, %edi
	call	check
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L284
	call	abort
.L284:
	leave
	ret
	.size	test7, .-test7
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