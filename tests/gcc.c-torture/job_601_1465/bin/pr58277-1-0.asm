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
	jne	L13
L19:
	movq	i(%rip), %rax
	movq	$0, (%rax)
	movq	e(%rip), %rax
	movl	$0, (%rax)
	movl	(%rax), %eax
	movl	%eax, o(%rip)
	movl	p(%rip), %eax
	testl	%eax, %eax
	je	L14
	movl	$0, f(%rip)
	movl	$0, %eax
	jmp	L15
L14:
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
	je	L16
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	L17
L16:
	movb	$0, u(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
	jmp	L14
L18:
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
L17:
	cmpl	$4, -4(%rbp)
	jle	L18
	movl	h(%rip), %eax
	addl	$1, %eax
	movl	%eax, h(%rip)
	jmp	L19
L13:
	movq	j(%rip), %rax
	movq	$0, (%rax)
	movl	$1, %eax
L15:
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
	jmp	L21
L25:
	movl	$0, %eax
	call	foo
	testl	%eax, %eax
	je	L22
	movq	$0, -32(%rbp)
	movl	$0, d(%rip)
	jmp	L23
L24:
	movq	i(%rip), %rax
	movq	j(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movzbl	u(%rip), %eax
	addl	$1, %eax
	movb	%al, u(%rip)
L23:
	movzbl	u(%rip), %eax
	testb	%al, %al
	jle	L24
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
L22:
	movl	n(%rip), %eax
	subl	$1, %eax
	movl	%eax, n(%rip)
L21:
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	L25
	movb	$0, u(%rip)
	jmp	L26
L29:
	movl	$0, -4(%rbp)
	jmp	L27
L28:
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
L27:
	cmpl	$9, -4(%rbp)
	jle	L28
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L26:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L29
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
	jne	L30
	call	abort
L30:
	movl	$0, %eax
	leave
	ret
