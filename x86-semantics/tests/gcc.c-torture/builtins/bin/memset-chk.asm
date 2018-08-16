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
	.comm	buffer,32,32
	.globl	argc
	.data
	.align 4
	.type	argc, @object
	.size	argc, 4
argc:
	.long	1
	.globl	l1
	.align 8
	.type	l1, @object
	.size	l1, 8
l1:
	.quad	1
	.globl	s3
	.section	.rodata
.LC0:
	.string	"FGH"
	.data
	.align 8
	.type	s3, @object
	.size	s3, 8
s3:
	.quad	.LC0
	.comm	s4,8,8
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, memset_disallowed(%rip)
	movl	$0, chk_calls(%rip)
	movl	argc(%rip), %eax
	movb	%al, buffer(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, buffer(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, buffer(%rip)
	movb	%cl, buffer+2(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, buffer(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, buffer(%rip)
	movb	%al, buffer+4(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, buffer(%rip)
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, buffer+4(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, buffer(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, buffer+4(%rip)
	movb	%dl, buffer+6(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %edx
	movabsq	$72340172838076673, %rax
	imulq	%rdx, %rax
	movq	%rax, buffer(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, buffer(%rip)
	movb	%al, buffer+8(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, buffer(%rip)
	movzbl	%dl, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, buffer+8(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, buffer(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, buffer+8(%rip)
	movb	%dl, buffer+10(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, buffer+8(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, buffer+8(%rip)
	movb	%al, buffer+12(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, buffer(%rip)
	movzbl	%al, %edx
	imull	$16843009, %edx, %edx
	movl	%edx, buffer+8(%rip)
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, buffer+12(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, buffer(%rip)
	movzbl	%dl, %eax
	imull	$16843009, %eax, %eax
	movl	%eax, buffer+8(%rip)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, buffer+12(%rip)
	movb	%dl, buffer+14(%rip)
	movl	argc(%rip), %eax
	movl	%eax, %edx
	movzbl	%dl, %ecx
	movabsq	$72340172838076673, %rax
	imulq	%rcx, %rax
	movq	%rax, buffer(%rip)
	movzbl	%dl, %edx
	movabsq	$72340172838076673, %rax
	imulq	%rdx, %rax
	movq	%rax, buffer+8(%rip)
	movl	argc(%rip), %eax
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, buffer(%rip)
	movzbl	%al, %ecx
	movabsq	$72340172838076673, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, buffer+8(%rip)
	movb	%al, buffer+16(%rip)
	movl	$0, memset_disallowed(%rip)
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L140
	call	abort
.L140:
	popq	%rbp
	ret
	.size	test1, .-test1
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L143
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	.L144
.L143:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
.L144:
	movq	%rax, -80(%rbp)
	movl	$0, chk_calls(%rip)
	movq	l1(%rip), %rax
	leaq	-64(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movl	$18, %ecx
	movq	%rax, %rdx
	movl	$97, %esi
	call	__memset_chk
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L145
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
	jmp	.L146
.L145:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L146:
	movq	%rax, -80(%rbp)
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	2(%rax), %rdx
	movl	argc(%rip), %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	movq	-80(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rax, %rdx
	movl	$81, %esi
	call	__memset_chk
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L147
.L152:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L148
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.L149
.L148:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L150
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	jmp	.L149
.L150:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L151
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	jmp	.L149
.L151:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L149
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
.L149:
	addl	$1, -84(%rbp)
.L147:
	cmpl	$3, -84(%rbp)
	jle	.L152
	movq	$-1, %rcx
	movq	l1(%rip), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movl	chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	.L153
	call	abort
.L153:
	movl	$0, chk_calls(%rip)
	movb	$0, -62(%rbp)
	movq	$-1, %rdx
	movl	argc(%rip), %esi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__memset_chk
	movq	l1(%rip), %rax
	cmpq	$1, %rax
	jne	.L154
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
	jmp	.L155
.L154:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
.L155:
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
	jmp	.L156
.L161:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L157
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	.L158
.L157:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L159
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	.L158
.L159:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L160
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	.L158
.L160:
	movl	-84(%rbp), %eax
	cltq
	movq	l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L158
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
.L158:
	addl	$1, -84(%rbp)
.L156:
	cmpl	$3, -84(%rbp)
	jle	.L161
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
	movq	l1(%rip), %rdx
	movq	s4(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rcx
	movq	l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq	s4(%rip), %rax
	addq	$2, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rdx
	movq	s4(%rip), %rax
	addq	$4, %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movq	$-1, %rdx
	movq	s4(%rip), %rax
	addq	$6, %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L162
	call	abort
.L162:
	movl	$0, chk_calls(%rip)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L163
	call	__stack_chk_fail
.L163:
	leave
	ret
	.size	test2, .-test2
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
	subq	$72, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L165, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L166
.L165:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L166:
	testl	%eax, %eax
	jne	.L167
	movq	l1(%rip), %rax
	leaq	1(%rax), %rdx
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
.L167:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$.L168, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L169
.L168:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L169:
	testl	%eax, %eax
	jne	.L170
	movq	s3(%rip), %rax
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
.L170:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$.L171, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	.L172
.L171:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
.L172:
	testl	%eax, %eax
	jne	.L173
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	__memset_chk
	call	abort
.L173:
	movl	$0, chk_fail_allowed(%rip)
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L174
	call	__stack_chk_fail
.L174:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.size	test3, .-test3
	.local	u
	.comm	u,96,64
	.globl	A
	.data
	.type	A, @object
	.size	A, 1
A:
	.byte	65
	.text
	.globl	test4
	.type	test4, @function
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	jmp	.L176
.L211:
	movl	$1, -24(%rbp)
	jmp	.L177
.L210:
	movl	$0, -20(%rbp)
	jmp	.L178
.L179:
	movl	-20(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -20(%rbp)
.L178:
	movl	-20(%rbp), %eax
	cmpl	$95, %eax
	jbe	.L179
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
	je	.L180
	call	abort
.L180:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L181
.L183:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L182
	call	abort
.L182:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L181:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L183
	movl	$0, -20(%rbp)
	jmp	.L184
.L186:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L185
	call	abort
.L185:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L184:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L186
	movl	$0, -20(%rbp)
	jmp	.L187
.L189:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L188
	call	abort
.L188:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L187:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L189
	movq	$-1, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
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
	je	.L190
	call	abort
.L190:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L191
.L193:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L192
	call	abort
.L192:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L191:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L193
	movl	$0, -20(%rbp)
	jmp	.L194
.L196:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L195
	call	abort
.L195:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L194:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L196
	movl	$0, -20(%rbp)
	jmp	.L197
.L199:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L198
	call	abort
.L198:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L197:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L199
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
	je	.L200
	call	abort
.L200:
	movq	$u, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L201
.L203:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L202
	call	abort
.L202:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L201:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L203
	movl	$0, -20(%rbp)
	jmp	.L204
.L206:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L205
	call	abort
.L205:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L204:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L206
	movl	$0, -20(%rbp)
	jmp	.L207
.L209:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L208
	call	abort
.L208:
	addl	$1, -20(%rbp)
	addq	$1, -16(%rbp)
.L207:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L209
	addl	$1, -24(%rbp)
.L177:
	movl	-24(%rbp), %eax
	cmpl	$79, %eax
	jbe	.L210
	addl	$1, -28(%rbp)
.L176:
	movl	-28(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L211
	leave
	ret
	.size	test4, .-test4
	.local	u2
	.comm	u2,32,32
	.globl	reset
	.type	reset, @function
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	.L213
.L214:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u2(%rax)
	addl	$1, -4(%rbp)
.L213:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	.L214
	popq	%rbp
	ret
	.size	reset, .-reset
	.globl	check
	.type	check, @function
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$u2, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L216
.L218:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L217
	call	abort
.L217:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
.L216:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L218
	movl	$0, -12(%rbp)
	jmp	.L219
.L221:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	.L220
	call	abort
.L220:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
.L219:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L221
	movl	$0, -12(%rbp)
	jmp	.L222
.L224:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	.L223
	call	abort
.L223:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
.L222:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L224
	leave
	ret
	.size	check, .-check
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L226
.L230:
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
	je	.L227
	call	abort
.L227:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L228
	call	abort
.L228:
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
	je	.L229
	call	abort
.L229:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L226:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L230
	movl	$0, -12(%rbp)
	jmp	.L231
.L235:
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
	je	.L232
	call	abort
.L232:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L233
	call	abort
.L233:
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
	je	.L234
	call	abort
.L234:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L231:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L235
	movl	$0, -12(%rbp)
	jmp	.L236
.L240:
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
	je	.L237
	call	abort
.L237:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L238
	call	abort
.L238:
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
	je	.L239
	call	abort
.L239:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L236:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L240
	movl	$0, -12(%rbp)
	jmp	.L241
.L245:
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
	je	.L242
	call	abort
.L242:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L243
	call	abort
.L243:
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
	je	.L244
	call	abort
.L244:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L241:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L245
	movl	$0, -12(%rbp)
	jmp	.L246
.L250:
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
	je	.L247
	call	abort
.L247:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L248
	call	abort
.L248:
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
	je	.L249
	call	abort
.L249:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L246:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L250
	movl	$0, -12(%rbp)
	jmp	.L251
.L255:
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
	je	.L252
	call	abort
.L252:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L253
	call	abort
.L253:
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
	je	.L254
	call	abort
.L254:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L251:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L255
	movl	$0, -12(%rbp)
	jmp	.L256
.L260:
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
	je	.L257
	call	abort
.L257:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L258
	call	abort
.L258:
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
	je	.L259
	call	abort
.L259:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L256:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L260
	movl	$0, -12(%rbp)
	jmp	.L261
.L265:
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
	je	.L262
	call	abort
.L262:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L263
	call	abort
.L263:
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
	je	.L264
	call	abort
.L264:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L261:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L265
	movl	$0, -12(%rbp)
	jmp	.L266
.L270:
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
	je	.L267
	call	abort
.L267:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L268
	call	abort
.L268:
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
	je	.L269
	call	abort
.L269:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L266:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L270
	movl	$0, -12(%rbp)
	jmp	.L271
.L275:
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
	je	.L272
	call	abort
.L272:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L273
	call	abort
.L273:
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
	je	.L274
	call	abort
.L274:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L271:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L275
	movl	$0, -12(%rbp)
	jmp	.L276
.L280:
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
	je	.L277
	call	abort
.L277:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L278
	call	abort
.L278:
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
	je	.L279
	call	abort
.L279:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L276:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L280
	movl	$0, -12(%rbp)
	jmp	.L281
.L285:
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
	je	.L282
	call	abort
.L282:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L283
	call	abort
.L283:
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
	je	.L284
	call	abort
.L284:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L281:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L285
	movl	$0, -12(%rbp)
	jmp	.L286
.L290:
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
	je	.L287
	call	abort
.L287:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L288
	call	abort
.L288:
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
	je	.L289
	call	abort
.L289:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L286:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L290
	movl	$0, -12(%rbp)
	jmp	.L291
.L295:
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
	je	.L292
	call	abort
.L292:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L293
	call	abort
.L293:
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
	je	.L294
	call	abort
.L294:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L291:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L295
	movl	$0, -12(%rbp)
	jmp	.L296
.L300:
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
	je	.L297
	call	abort
.L297:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movq	$-1, %rcx
	movzbl	A(%rip), %eax
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
	je	.L298
	call	abort
.L298:
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
	je	.L299
	call	abort
.L299:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -12(%rbp)
.L296:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L300
	leave
	ret
	.size	test5, .-test5
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L302
.L306:
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
	je	.L303
	call	abort
.L303:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$32, %ecx
	movl	%eax, %esi
	movl	$u2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2, -8(%rbp)
	je	.L304
	call	abort
.L304:
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
	je	.L305
	call	abort
.L305:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	addl	$1, -12(%rbp)
.L302:
	cmpl	$14, -12(%rbp)
	jle	.L306
	movl	$0, -12(%rbp)
	jmp	.L307
.L311:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$31, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+1, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+1, -8(%rbp)
	je	.L308
	call	abort
.L308:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$31, %ecx
	movl	%eax, %esi
	movl	$u2+1, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+1, -8(%rbp)
	je	.L309
	call	abort
.L309:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$31, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+1, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+1, -8(%rbp)
	je	.L310
	call	abort
.L310:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	addl	$1, -12(%rbp)
.L307:
	cmpl	$14, -12(%rbp)
	jle	.L311
	movl	$0, -12(%rbp)
	jmp	.L312
.L316:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$30, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+2, -8(%rbp)
	je	.L313
	call	abort
.L313:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$30, %ecx
	movl	%eax, %esi
	movl	$u2+2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+2, -8(%rbp)
	je	.L314
	call	abort
.L314:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$30, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+2, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+2, -8(%rbp)
	je	.L315
	call	abort
.L315:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	addl	$1, -12(%rbp)
.L312:
	cmpl	$14, -12(%rbp)
	jle	.L316
	movl	$0, -12(%rbp)
	jmp	.L317
.L321:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$29, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+3, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+3, -8(%rbp)
	je	.L318
	call	abort
.L318:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$29, %ecx
	movl	%eax, %esi
	movl	$u2+3, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+3, -8(%rbp)
	je	.L319
	call	abort
.L319:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$29, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+3, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+3, -8(%rbp)
	je	.L320
	call	abort
.L320:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	addl	$1, -12(%rbp)
.L317:
	cmpl	$14, -12(%rbp)
	jle	.L321
	movl	$0, -12(%rbp)
	jmp	.L322
.L326:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$28, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+4, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+4, -8(%rbp)
	je	.L323
	call	abort
.L323:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$28, %ecx
	movl	%eax, %esi
	movl	$u2+4, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+4, -8(%rbp)
	je	.L324
	call	abort
.L324:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$28, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+4, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+4, -8(%rbp)
	je	.L325
	call	abort
.L325:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	addl	$1, -12(%rbp)
.L322:
	cmpl	$14, -12(%rbp)
	jle	.L326
	movl	$0, -12(%rbp)
	jmp	.L327
.L331:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$27, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+5, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+5, -8(%rbp)
	je	.L328
	call	abort
.L328:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$27, %ecx
	movl	%eax, %esi
	movl	$u2+5, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+5, -8(%rbp)
	je	.L329
	call	abort
.L329:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$27, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+5, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+5, -8(%rbp)
	je	.L330
	call	abort
.L330:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	addl	$1, -12(%rbp)
.L327:
	cmpl	$14, -12(%rbp)
	jle	.L331
	movl	$0, -12(%rbp)
	jmp	.L332
.L336:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$26, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+6, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+6, -8(%rbp)
	je	.L333
	call	abort
.L333:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$26, %ecx
	movl	%eax, %esi
	movl	$u2+6, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+6, -8(%rbp)
	je	.L334
	call	abort
.L334:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$26, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+6, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+6, -8(%rbp)
	je	.L335
	call	abort
.L335:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	addl	$1, -12(%rbp)
.L332:
	cmpl	$14, -12(%rbp)
	jle	.L336
	movl	$0, -12(%rbp)
	jmp	.L337
.L341:
	movl	$0, %eax
	call	reset
	movl	-12(%rbp), %eax
	cltq
	movl	$25, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u2+7, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+7, -8(%rbp)
	je	.L338
	call	abort
.L338:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	$25, %ecx
	movl	%eax, %esi
	movl	$u2+7, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+7, -8(%rbp)
	je	.L339
	call	abort
.L339:
	movl	-12(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-12(%rbp), %eax
	cltq
	movl	$25, %ecx
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u2+7, %edi
	call	__memset_chk
	movq	%rax, -8(%rbp)
	cmpq	$u2+7, -8(%rbp)
	je	.L340
	call	abort
.L340:
	movl	-12(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	addl	$1, -12(%rbp)
.L337:
	cmpl	$14, -12(%rbp)
	jle	.L341
	leave
	ret
	.size	test6, .-test6
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
