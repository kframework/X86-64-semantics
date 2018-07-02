strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
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
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
	.local	a
	.comm	a,8,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,8,8
	.comm	f,4,4
	.comm	g,4,4
	.comm	h,4,4
i:
	.quad	e
	.comm	k,4,4
l:
	.long	1
	.comm	n,4,4
	.comm	o,4,4
	.comm	p,4,4
j:
	.quad	e
	.comm	m,4,4
	.comm	u,1,1
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, u(%rip)
	movl	m(%rip), %eax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$880, %rsp
	movl	$0, %eax
	call	bar
	movl	%eax, g(%rip)
	movl	l(%rip), %eax
	testl	%eax, %eax
	jne	L43
L49:
	movq	i(%rip), %rax
	movq	$0, (%rax)
	movq	e(%rip), %rax
	movl	$0, (%rax)
	movl	(%rax), %eax
	movl	%eax, o(%rip)
	movl	p(%rip), %eax
	testl	%eax, %eax
	je	L44
	movl	$0, f(%rip)
	movl	$0, %eax
	jmp	L45
L44:
	movq	$0, -16(%rbp)
	movq	$0, -880(%rbp)
	movq	$0, -872(%rbp)
	movq	$0, -864(%rbp)
	movq	$0, -856(%rbp)
	movq	$0, -848(%rbp)
	movq	$0, -840(%rbp)
	movq	$0, -832(%rbp)
	movq	$0, -824(%rbp)
	movq	$0, -816(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	$0, -800(%rbp)
	movq	$0, -792(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -784(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -776(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -768(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -696(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -608(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -536(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -528(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -520(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	$0, -368(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	i(%rip), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	j(%rip), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L46
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	L47
L46:
	movb	$0, u(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
	jmp	L44
L48:
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
L47:
	cmpl	$4, -4(%rbp)
	jle	L48
	movl	h(%rip), %eax
	addl	$1, %eax
	movl	%eax, h(%rip)
	jmp	L49
L43:
	movq	j(%rip), %rax
	movq	$0, (%rax)
	movl	$1, %eax
L45:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	$-128, %rsp
	movl	$1, a(%rip)
	leaq	-128(%rbp), %rsi
	movl	$0, %eax
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	$d, -128(%rbp)
	movq	$d, -120(%rbp)
	movl	$1, n(%rip)
	jmp	L51
L55:
	movl	$0, %eax
	call	foo
	testl	%eax, %eax
	je	L52
	movq	$0, -32(%rbp)
	movl	$0, d(%rip)
	jmp	L53
L54:
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movzbl	u(%rip), %eax
	addl	$1, %eax
	movb	%al, u(%rip)
L53:
	movzbl	u(%rip), %eax
	testb	%al, %al
	jle	L54
	movq	i(%rip), %rax
	movq	$0, (%rax)
	movq	i(%rip), %rax
	movq	$0, (%rax)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -48(%rbp)
	movq	i(%rip), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
L52:
	movl	n(%rip), %eax
	subl	$1, %eax
	movl	%eax, n(%rip)
L51:
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	L55
	movb	$0, u(%rip)
	jmp	L56
L59:
	movl	$0, -4(%rbp)
	jmp	L57
L58:
	movl	c(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, c(%rip)
	addl	$1, -4(%rbp)
L57:
	cmpl	$9, -4(%rbp)
	jle	L58
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L56:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L59
	movl	$0, %eax
	call	baz
	movzbl	u(%rip), %eax
	movsbl	%al, %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	movl	a(,%rax,4), %eax
	testl	%eax, %eax
	jne	L60
	call	abort
L60:
	movl	$0, %eax
	leave
	ret
