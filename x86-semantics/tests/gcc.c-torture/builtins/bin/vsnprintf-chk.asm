	.file	"vsnprintf-chk.c"
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
	.local	buffer
	.comm	buffer,32,32
	.globl	ptr
	.section	.rodata
.LC2:
	.string	"barf"
	.data
	.align 8
	.type	ptr, @object
	.size	ptr, 8
ptr:
	.quad	.LC2
	.section	.rodata
.LC3:
	.string	"foo"
.LC4:
	.string	"foo bar"
.LC5:
	.string	"%s"
.LC6:
	.string	"%d%d%d"
.LC7:
	.string	"%d - %c"
	.text
	.globl	test1_sub
	.type	test1_sub, @function
test1_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L141
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L141:
	movl	%edi, -228(%rbp)
	movq	%fs:40, %rax
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
	ja	.L142
	movl	-228(%rbp), %eax
	movq	.L144(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L144:
	.quad	.L143
	.quad	.L145
	.quad	.L146
	.quad	.L147
	.quad	.L148
	.quad	.L149
	.quad	.L150
	.quad	.L151
	.quad	.L152
	.text
.L143:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC3, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	jmp	.L142
.L145:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC4, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	.L142
.L146:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC5, %edx
	movl	$32, %esi
	movl	$buffer, %edi
	call	vsnprintf
	jmp	.L142
.L147:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC5, %edx
	movl	$21, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	.L142
.L148:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC6, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	.L142
.L149:
	leaq	-208(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC6, %edx
	movl	$32, %esi
	movl	$buffer, %edi
	call	vsnprintf
	movl	%eax, -212(%rbp)
	jmp	.L142
.L150:
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$.LC5, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$buffer, %edi
	call	__vsnprintf_chk
	movl	%eax, -212(%rbp)
	jmp	.L142
.L151:
	movq	l1(%rip), %rax
	addq	$31, %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$.LC7, %r8d
	movl	$32, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$buffer, %edi
	call	__vsnprintf_chk
	jmp	.L142
.L152:
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	6(%rax), %rsi
	movq	s4(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %r9
	movl	$.LC7, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
.L142:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L154
	call	__stack_chk_fail
.L154:
	leave
	ret
	.size	test1_sub, .-test1_sub
	.section	.rodata
.LC8:
	.string	"bar"
.LC9:
	.string	"121"
.LC10:
	.string	"1213"
.LC11:
	.string	"28 - b"
	.string	"AAAAA"
.LC12:
	.string	"-16 - "
	.string	"AAA"
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, chk_calls(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movl	$0, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$4, %edx
	movl	$.LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L156
	movzbl	buffer+4(%rip), %eax
	cmpb	$65, %al
	je	.L157
.L156:
	call	abort
.L157:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movl	$1, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$7, %eax
	je	.L158
	call	abort
.L158:
	movl	$4, %edx
	movl	$.LC3, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L159
	movzbl	buffer+4(%rip), %eax
	cmpb	$65, %al
	je	.L160
.L159:
	call	abort
.L160:
	movl	$0, vsnprintf_disallowed(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movl	$.LC8, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$4, %edx
	movl	$.LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L161
	movzbl	buffer+4(%rip), %eax
	cmpb	$65, %al
	je	.L162
.L161:
	call	abort
.L162:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movl	$.LC8, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$3, %eax
	je	.L163
	call	abort
.L163:
	movl	$4, %edx
	movl	$.LC8, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L164
	movzbl	buffer+4(%rip), %eax
	cmpb	$65, %al
	je	.L165
.L164:
	call	abort
.L165:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movq	l1(%rip), %rax
	leal	12(%rax), %edx
	movq	l1(%rip), %rax
	addl	$1, %eax
	movq	l1(%rip), %rcx
	movl	%ecx, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$4, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$4, %eax
	je	.L166
	call	abort
.L166:
	movl	$4, %edx
	movl	$.LC9, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L167
	movzbl	buffer+4(%rip), %eax
	cmpb	$65, %al
	je	.L168
.L167:
	call	abort
.L168:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movq	l1(%rip), %rax
	leal	12(%rax), %edx
	movq	l1(%rip), %rax
	addl	$1, %eax
	movq	l1(%rip), %rcx
	movl	%ecx, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$5, %edi
	movl	$0, %eax
	call	test1_sub
	cmpl	$4, %eax
	je	.L169
	call	abort
.L169:
	movl	$5, %edx
	movl	$.LC10, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L170
	movzbl	buffer+5(%rip), %eax
	cmpb	$65, %al
	je	.L171
.L170:
	call	abort
.L171:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L172
	call	abort
.L172:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movq	ptr(%rip), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$5, %edx
	movl	$.LC2, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L173
	movzbl	buffer+5(%rip), %eax
	cmpb	$65, %al
	je	.L174
.L173:
	call	abort
.L174:
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+8(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+16(%rip)
	movabsq	$4702111234474983745, %rax
	movq	%rax, buffer+24(%rip)
	movq	ptr(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	l1(%rip), %rdx
	leal	27(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	test1_sub
	movl	$12, %edx
	movl	$.LC11, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L175
	call	abort
.L175:
	movl	chk_calls(%rip), %eax
	cmpl	$2, %eax
	je	.L176
	call	abort
.L176:
	movl	$0, chk_calls(%rip)
	movq	$-1, %rdx
	movq	s4(%rip), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	ptr(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	l1(%rip), %rdx
	leal	-17(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	test1_sub
	movq	s4(%rip), %rax
	movl	$10, %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L177
	call	abort
.L177:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L155
	call	abort
.L155:
	popq	%rbp
	ret
	.size	test1, .-test1
	.section	.rodata
.LC13:
	.string	"%s%c"
.LC14:
	.string	"%c %s"
.LC15:
	.string	"a"
.LC16:
	.string	""
.LC17:
	.string	"%s %d"
	.text
	.globl	test2_sub
	.type	test2_sub, @function
test2_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$296, %rsp
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L180
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, -128(%rbp)
	vmovaps	%xmm2, -112(%rbp)
	vmovaps	%xmm3, -96(%rbp)
	vmovaps	%xmm4, -80(%rbp)
	vmovaps	%xmm5, -64(%rbp)
	vmovaps	%xmm6, -48(%rbp)
	vmovaps	%xmm7, -32(%rbp)
.L180:
	movl	%edi, -292(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -200(%rbp)
	xorl	%eax, %eax
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L181
	leaq	-272(%rbp), %rax
	addq	$5, %rax
	jmp	.L182
.L181:
	leaq	-272(%rbp), %rax
	addq	$14, %rax
.L182:
	movq	%rax, -280(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -232(%rbp)
	cmpl	$8, -292(%rbp)
	ja	.L179
	movl	-292(%rbp), %eax
	movq	.L185(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L185:
	.quad	.L184
	.quad	.L186
	.quad	.L187
	.quad	.L188
	.quad	.L189
	.quad	.L190
	.quad	.L191
	.quad	.L189
	.quad	.L192
	.text
.L184:
	movq	l1(%rip), %rax
	leaq	-248(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	leaq	2(%rcx), %rdi
	movq	%rdx, %r9
	movl	$.LC5, %r8d
	movl	$18, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	__vsnprintf_chk
	jmp	.L179
.L186:
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	4(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$.LC13, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L179
.L187:
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L193
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
	jmp	.L194
.L193:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
.L194:
	movq	%rax, -280(%rbp)
	movq	$-1, %rbx
	movq	s2(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-2(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$.LC14, %r8d
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L179
.L188:
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L195
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
	jmp	.L196
.L195:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
.L196:
	movq	%rax, -280(%rbp)
	movq	s3(%rip), %rax
	leaq	3(%rax), %rcx
	movq	$-1, %rsi
	movq	l1(%rip), %rax
	movq	-280(%rbp), %rdx
	leaq	2(%rdx), %rdi
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	__vsnprintf_chk
	jmp	.L179
.L189:
	leaq	-224(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	$0, -284(%rbp)
	jmp	.L197
.L202:
	movl	-284(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L198
	leaq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	jmp	.L199
.L198:
	movl	-284(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L200
	leaq	-272(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -280(%rbp)
	jmp	.L199
.L200:
	movl	-284(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L201
	leaq	-224(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -280(%rbp)
	jmp	.L199
.L201:
	movl	-284(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L199
	leaq	-272(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -280(%rbp)
.L199:
	addl	$1, -284(%rbp)
.L197:
	cmpl	$3, -284(%rbp)
	jle	.L202
	cmpl	$4, -292(%rbp)
	jne	.L203
	movq	s2(%rip), %rax
	leaq	4(%rax), %rcx
	movq	$-1, %rdi
	movq	l1(%rip), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L179
.L203:
	movq	$-1, %rcx
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$.LC15, %r8d
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L179
.L190:
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L205
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
	jmp	.L206
.L205:
	leaq	-272(%rbp), %rax
	addq	$17, %rax
.L206:
	movq	%rax, -280(%rbp)
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-248(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$.LC5, %r8d
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L179
.L191:
	leaq	-248(%rbp), %rax
	leaq	-272(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rax, %rcx
	movl	$.LC16, %edx
	movl	$4, %esi
	call	vsnprintf
	jmp	.L179
.L192:
	movq	$-1, %rcx
	movq	s4(%rip), %rax
	leaq	-248(%rbp), %rdx
	movq	%rdx, %r9
	movl	$.LC17, %r8d
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
.L179:
	movq	-200(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L207
	call	__stack_chk_fail
.L207:
	movq	-8(%rbp), %rbx
	leave
	ret
	.size	test2_sub, .-test2_sub
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, chk_calls(%rip)
	movq	s3(%rip), %rax
	addq	$3, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test2_sub
	movq	s3(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	s3(%rip), %rdx
	leaq	3(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	test2_sub
	movq	s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq	s2(%rip), %rax
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
	movl	$s1+1, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	test2_sub
	movl	chk_calls(%rip), %eax
	cmpl	$6, %eax
	je	.L209
	call	abort
.L209:
	movl	$0, chk_calls(%rip)
	movl	$6, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$7, %edi
	movl	$0, %eax
	call	test2_sub
	movl	$0, vsnprintf_disallowed(%rip)
	movq	s3(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	movl	$0, %eax
	call	test2_sub
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L208
	call	abort
.L208:
	popq	%rbp
	ret
	.size	test2, .-test2
	.section	.rodata
.LC18:
	.string	"%c%s"
.LC19:
	.string	"%d"
	.text
	.globl	test3_sub
	.type	test3_sub, @function
test3_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L212
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L212:
	movl	%edi, -260(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$5, -260(%rbp)
	ja	.L211
	movl	-260(%rbp), %eax
	movq	.L215(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L215:
	.quad	.L214
	.quad	.L216
	.quad	.L217
	.quad	.L218
	.quad	.L219
	.quad	.L220
	.text
.L214:
	movq	l1(%rip), %rax
	leaq	1(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r9
	movl	$.LC18, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L211
.L216:
	movq	l1(%rip), %rax
	leaq	30(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$.LC13, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L211
.L217:
	movq	l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-256(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$.LC19, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L211
.L218:
	movq	l1(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$17, %rax
	movq	%rdx, %r9
	movl	$.LC5, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L211
.L219:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$19, %rax
	movq	%rdx, %r9
	movl	$.LC15, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	jmp	.L211
.L220:
	leaq	-232(%rbp), %rdx
	leaq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %r9
	movl	$.LC15, %r8d
	movl	$4, %ecx
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	__vsnprintf_chk
	nop
.L211:
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L221
	call	__stack_chk_fail
.L221:
	leave
	ret
	.size	test3_sub, .-test3_sub
	.section	.rodata
.LC20:
	.string	"abc"
	.text
	.globl	test3
	.type	test3, @function
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$1, chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$.L223, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L224
.L223:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L224:
	testl	%eax, %eax
	jne	.L225
	movq	s2(%rip), %rax
	leaq	4(%rax), %rdx
	movq	s2(%rip), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
.L225:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L226, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L227
.L226:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L227:
	testl	%eax, %eax
	jne	.L228
	movq	s3(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	s3(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	s3(%rip), %rax
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
.L228:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L229, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L230
.L229:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L230:
	testl	%eax, %eax
	jne	.L231
	movq	l1(%rip), %rax
	addl	$9999, %eax
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
.L231:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$.L232, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L233
.L232:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L233:
	testl	%eax, %eax
	jne	.L234
	movl	$.LC20, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
.L234:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$.L235, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L236
.L235:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L236:
	testl	%eax, %eax
	jne	.L237
	movl	$4, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
.L237:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L238, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L239
.L238:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L239:
	testl	%eax, %eax
	jne	.L240
	movl	$5, %edi
	movl	$0, %eax
	call	test3_sub
	call	abort
.L240:
	movl	$0, chk_fail_allowed(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.size	test3, .-test3
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
