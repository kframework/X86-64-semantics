	.file	"pr23484-chk.c"
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
	.data
	.type	data, @object
	.size	data, 8
data:
	.string	"ABCDEFG"
	.comm	l1,4,4
	.section	.rodata
.LC0:
	.string	"ABCDIIII"
.LC1:
	.string	"ABCDJJJJ"
.LC2:
	.string	"ABCDKKKK"
.LC3:
	.string	"%d"
.LC4:
	.string	"655"
	.string	"LLLL"
	.text
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, chk_calls(%rip)
	leaq	-16(%rbp), %rax
	movabsq	$5280832617179597129, %rcx
	movq	%rcx, (%rax)
	movl	l1(%rip), %eax
	testl	%eax, %eax
	je	.L141
	movl	$8, %edx
	jmp	.L142
.L141:
	movl	$4, %edx
.L142:
	leaq	-16(%rbp), %rax
	movl	$8, %ecx
	movl	$data, %esi
	movq	%rax, %rdi
	call	__memcpy_chk
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L143
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L144
.L143:
	call	abort
.L144:
	leaq	-16(%rbp), %rax
	movabsq	$5353172790017673802, %rcx
	movq	%rcx, (%rax)
	movl	l1(%rip), %eax
	testl	%eax, %eax
	je	.L145
	movl	$8, %edx
	jmp	.L146
.L145:
	movl	$4, %edx
.L146:
	leaq	-16(%rbp), %rax
	movl	$8, %ecx
	movl	$data, %esi
	movq	%rax, %rdi
	call	__mempcpy_chk
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L147
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L148
.L147:
	call	abort
.L148:
	leaq	-16(%rbp), %rax
	movabsq	$5425512962855750475, %rcx
	movq	%rcx, (%rax)
	movl	l1(%rip), %eax
	testl	%eax, %eax
	je	.L149
	movl	$8, %edx
	jmp	.L150
.L149:
	movl	$4, %edx
.L150:
	leaq	-16(%rbp), %rax
	movl	$8, %ecx
	movl	$data, %esi
	movq	%rax, %rdi
	call	__memmove_chk
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L151
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L152
.L151:
	call	abort
.L152:
	leaq	-16(%rbp), %rax
	movabsq	$5497853135693827148, %rdi
	movq	%rdi, (%rax)
	movl	l1(%rip), %eax
	leal	65536(%rax), %edx
	movl	l1(%rip), %eax
	testl	%eax, %eax
	je	.L153
	movl	$8, %esi
	jmp	.L154
.L153:
	movl	$4, %esi
.L154:
	leaq	-16(%rbp), %rax
	movl	%edx, %r9d
	movl	$.LC3, %r8d
	movl	$8, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	__snprintf_chk
	cmpl	$5, %eax
	jne	.L155
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L156
.L155:
	call	abort
.L156:
	movl	chk_calls(%rip), %eax
	testl	%eax, %eax
	je	.L140
	call	abort
.L140:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L158
	call	__stack_chk_fail
.L158:
	leave
	ret
	.size	test1, .-test1
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
