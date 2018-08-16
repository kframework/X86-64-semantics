	.file	"stpncpy-chk.c"
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
	.comm	i,4,4
	.section	.rodata
.LC2:
	.string	"hello world"
.LC3:
	.string	"xfoo"
.LC4:
	.string	"bar"
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC2, -104(%rbp)
	movl	$0, chk_calls(%rip)
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L141
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L142
.L141:
	call	abort
.L142:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$20, %rax
	cmpq	%rax, %rdx
	jne	.L143
	movq	-104(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L144
.L143:
	call	abort
.L144:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$36, %rax
	cmpq	%rax, %rdx
	jne	.L145
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L146
.L145:
	call	abort
.L146:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	cmpq	%rax, %rdx
	jne	.L147
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L147
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	je	.L148
.L147:
	call	abort
.L148:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L149
	leaq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L150
.L149:
	call	abort
.L150:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	addq	$1, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L151
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L151
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L151
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	.L152
.L151:
	call	abort
.L152:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L153
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L153
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L153
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	.L154
.L153:
	call	abort
.L154:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	jne	.L155
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L156
.L155:
	call	abort
.L156:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L157
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L158
.L157:
	call	abort
.L158:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, i(%rip)
	testl	%eax, %eax
	je	.L159
	movl	$.LC3+1, %ecx
	jmp	.L160
.L159:
	movl	$.LC4, %ecx
.L160:
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$3, %rax
	cmpq	%rax, %rdx
	jne	.L161
	leaq	-80(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L161
	movl	i(%rip), %eax
	cmpl	$1, %eax
	je	.L162
.L161:
	call	abort
.L162:
	movl	$1, stpncpy_disallowed(%rip)
	movq	-104(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	movl	$0, stpncpy_disallowed(%rip)
	movq	-104(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L163
	call	abort
.L163:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L140
	call	abort
.L140:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L165
	call	__stack_chk_fail
.L165:
	leave
	ret
	.size	test1, .-test1
	.section	.rodata
.LC5:
	.string	"abcd"
	.text
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, chk_calls(%rip)
	movq	l1(%rip), %rax
	cmpq	$3, %rax
	ja	.L167
	movq	l1(%rip), %rax
	addq	$1, %rax
	jmp	.L168
.L167:
	movl	$4, %eax
.L168:
	movq	%rax, -8(%rbp)
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	s4(%rip), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	movq	%rax, %rcx
	movq	s4(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	jne	.L169
	movq	s4(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L170
.L169:
	call	abort
.L170:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L166
	call	abort
.L166:
	leave
	ret
	.size	test2, .-test2
	.section	.rodata
.LC6:
	.string	""
.LC7:
	.string	"a"
.LC8:
	.string	"abc"
.LC9:
	.string	"e"
.LC10:
	.string	"gh"
.LC11:
	.string	"jkl"
.LC12:
	.string	"fghij"
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
	jne	.L173
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	.L174
.L173:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
.L174:
	movq	%rax, -88(%rbp)
	movl	$0, chk_calls(%rip)
	movq	l1(%rip), %rax
	movq	s3(%rip), %rdx
	leaq	3(%rdx), %rsi
	leaq	-64(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movl	$18, %ecx
	movq	%rax, %rdx
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L175
	call	abort
.L175:
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq	s3(%rip), %rax
	leaq	2(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L176
	call	abort
.L176:
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L177
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
	jmp	.L178
.L177:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L178:
	movq	%rax, -88(%rbp)
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq	s2(%rip), %rax
	leaq	2(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L179
	call	abort
.L179:
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	movq	s3(%rip), %rdx
	leaq	3(%rdx), %rsi
	movq	-88(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rax, %rdx
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L180
	call	abort
.L180:
	leaq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L181
.L186:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L182
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.L183
.L182:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L184
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -88(%rbp)
	jmp	.L183
.L184:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L185
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -88(%rbp)
	jmp	.L183
.L185:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L183
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -88(%rbp)
.L183:
	addl	$1, -92(%rbp)
.L181:
	cmpl	$3, -92(%rbp)
	jle	.L186
	movq	$-1, %rcx
	movq	l1(%rip), %rdx
	movq	s2(%rip), %rax
	leaq	4(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L187
	call	abort
.L187:
	movl	chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	.L188
	call	abort
.L188:
	movl	$0, chk_calls(%rip)
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movl	$3, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	stpncpy
	testq	%rax, %rax
	jne	.L189
	call	abort
.L189:
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movl	$0, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	stpncpy
	testq	%rax, %rax
	jne	.L190
	call	abort
.L190:
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L191
	call	abort
.L191:
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L192
	call	abort
.L192:
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L193
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
	jmp	.L194
.L193:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L194:
	movq	%rax, -88(%rbp)
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$s1+1, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L195
	call	abort
.L195:
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$s1+1, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L196
	call	abort
.L196:
	leaq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$.LC8, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L197
.L202:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L198
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	$.LC9, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	.L199
.L198:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L200
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -88(%rbp)
	movq	$.LC10, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	.L199
.L200:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L201
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -88(%rbp)
	movq	$.LC11, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	.L199
.L201:
	movl	-92(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L199
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -88(%rbp)
	movq	$.LC6, -80(%rbp)
	movq	$1, -72(%rbp)
.L199:
	addl	$1, -92(%rbp)
.L197:
	cmpl	$3, -92(%rbp)
	jle	.L202
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L203
	call	abort
.L203:
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$4, %ecx
	movq	%rax, %rsi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L204
	call	abort
.L204:
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	15(%rdx), %rdi
	movl	$5, %ecx
	movq	%rax, %rdx
	movl	$.LC8, %esi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L205
	call	abort
.L205:
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	10(%rdx), %rdi
	movl	$10, %ecx
	movq	%rax, %rdx
	movl	$.LC12, %esi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	.L206
	call	abort
.L206:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L207
	call	abort
.L207:
	movl	$0, chk_calls(%rip)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L208
	call	__stack_chk_fail
.L208:
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
	subq	$72, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L210, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L211
.L210:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L211:
	testl	%eax, %eax
	jne	.L212
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	s2(%rip), %rax
	leaq	4(%rax), %rsi
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	.L213
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L213:
	call	abort
.L212:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L214, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L215
.L214:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L215:
	testl	%eax, %eax
	jne	.L216
	movq	l1(%rip), %rax
	leaq	4(%rax), %rdx
	movq	s3(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	17(%rcx), %rdi
	movl	$3, %ecx
	movq	%rax, %rsi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	.L217
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L217:
	call	abort
.L216:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L218, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L219
.L218:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L219:
	testl	%eax, %eax
	jne	.L220
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	.L221
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L221:
	call	abort
.L220:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$.L222, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L223
.L222:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L223:
	testl	%eax, %eax
	jne	.L224
	leaq	-80(%rbp), %rax
	addq	$18, %rax
	movl	$2, %ecx
	movl	$3, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	.L225
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L225:
	call	abort
.L224:
	movl	$0, chk_fail_allowed(%rip)
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L226
	call	__stack_chk_fail
.L226:
	addq	$72, %rsp
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
