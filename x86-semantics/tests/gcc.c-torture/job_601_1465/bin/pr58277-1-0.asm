    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
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
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .comm	a,8,8
    .comm	b,4,4
    .comm	c,4,4
    .comm	d,4,4
    .comm	e,8,8
    .comm	f,4,4
    .comm	g,4,4
    .comm	h,4,4
    .globl	i
    .data
i:
    .quad	e
    .comm	k,4,4
    .globl	l
l:
    .long	1
    .comm	n,4,4
    .comm	o,4,4
    .comm	p,4,4
j:
    .quad	e
    .comm	m,4,4
    .comm	u,1,1
    .text
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movb	$0, u(%rip)
    movl	m(%rip), %eax
    popq	%rbp
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$880, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, %eax
    call	bar
    movl	%eax, g(%rip)
    movl	l(%rip), %eax
    testl	%eax, %eax
    jne	L61
L67:
    movq	i(%rip), %rax
    movq	$0, (%rax)
    movq	e(%rip), %rax
    movl	$0, (%rax)
    movl	(%rax), %eax
    movl	%eax, o(%rip)
    movl	p(%rip), %eax
    testl	%eax, %eax
    je	L62
    movl	$0, f(%rip)
    movl	$0, %eax
    jmp	L63
L62:
    movq	$0, -872(%rbp)
    movq	$0, -848(%rbp)
    movq	$0, -840(%rbp)
    movq	$0, -832(%rbp)
    movq	$0, -824(%rbp)
    movq	$0, -816(%rbp)
    movq	$0, -808(%rbp)
    movq	$0, -800(%rbp)
    movq	$0, -792(%rbp)
    movq	$0, -784(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -776(%rbp)
    movq	$0, -768(%rbp)
    movq	$0, -760(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -752(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -744(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -736(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -728(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -720(%rbp)
    movq	$0, -712(%rbp)
    movq	$0, -704(%rbp)
    movq	$0, -696(%rbp)
    movq	$0, -688(%rbp)
    movq	$0, -680(%rbp)
    movq	$0, -672(%rbp)
    movq	$0, -664(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -656(%rbp)
    movq	$0, -648(%rbp)
    movq	$0, -640(%rbp)
    movq	$0, -632(%rbp)
    movq	$0, -624(%rbp)
    movq	$0, -616(%rbp)
    movq	$0, -608(%rbp)
    movq	$0, -600(%rbp)
    movq	$0, -592(%rbp)
    movq	$0, -584(%rbp)
    movq	$0, -576(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -568(%rbp)
    movq	$0, -560(%rbp)
    movq	$0, -552(%rbp)
    movq	$0, -544(%rbp)
    movq	$0, -536(%rbp)
    movq	$0, -528(%rbp)
    movq	$0, -520(%rbp)
    movq	$0, -512(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -504(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -496(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -488(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -480(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -472(%rbp)
    movq	$0, -464(%rbp)
    movq	$0, -456(%rbp)
    movq	$0, -448(%rbp)
    movq	$0, -440(%rbp)
    movq	$0, -432(%rbp)
    movq	$0, -424(%rbp)
    movq	$0, -416(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -408(%rbp)
    movq	$0, -400(%rbp)
    movq	$0, -392(%rbp)
    movq	$0, -384(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -376(%rbp)
    movq	$0, -368(%rbp)
    movq	$0, -360(%rbp)
    movq	$0, -352(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -344(%rbp)
    movq	$0, -336(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -328(%rbp)
    movq	$0, -320(%rbp)
    movq	$0, -312(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -304(%rbp)
    movq	$0, -296(%rbp)
    movq	$0, -288(%rbp)
    movq	$0, -280(%rbp)
    movq	$0, -272(%rbp)
    movq	$0, -264(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -256(%rbp)
    movq	$0, -248(%rbp)
    movq	$0, -240(%rbp)
    movq	$0, -232(%rbp)
    movq	$0, -224(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	$0, -200(%rbp)
    movq	$0, -192(%rbp)
    movq	$0, -184(%rbp)
    movq	$0, -176(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -168(%rbp)
    movq	$0, -160(%rbp)
    movq	$0, -152(%rbp)
    movq	$0, -144(%rbp)
    movq	$0, -136(%rbp)
    movq	$0, -128(%rbp)
    movq	$0, -120(%rbp)
    movq	$0, -112(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -104(%rbp)
    movq	$0, -96(%rbp)
    movq	$0, -88(%rbp)
    movq	$0, -80(%rbp)
    movq	$0, -72(%rbp)
    movq	$0, -64(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	$0, -48(%rbp)
    movq	$0, -40(%rbp)
    movq	$0, -32(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -24(%rbp)
    leaq	-872(%rbp), %rax
    movq	%rax, -16(%rbp)
    leaq	-848(%rbp), %rax
    movq	%rax, -864(%rbp)
    movq	i(%rip), %rax
    movq	(%rax), %rax
    movl	$0, (%rax)
    movq	j(%rip), %rax
    movq	(%rax), %rax
    movl	(%rax), %eax
    testl	%eax, %eax
    je	L64
    movq	i(%rip), %rax
    movq	j(%rip), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, (%rax)
    movl	$0, -876(%rbp)
    jmp	L65
L64:
    movb	$0, u(%rip)
    movl	k(%rip), %eax
    addl	$1, %eax
    movl	%eax, k(%rip)
    jmp	L62
L66:
    movq	i(%rip), %rax
    movq	j(%rip), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, (%rax)
    addl	$1, -876(%rbp)
L65:
    cmpl	$4, -876(%rbp)
    jle	L66
    movl	h(%rip), %eax
    addl	$1, %eax
    movl	%eax, h(%rip)
    jmp	L67
L61:
    movq	j(%rip), %rax
    movq	$0, (%rax)
    movl	$1, %eax
L63:
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L68
    call	__stack_chk_fail
L68:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$144, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$1, a(%rip)
    leaq	-64(%rbp), %rdx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    movq	$d, -64(%rbp)
    movq	$d, -56(%rbp)
    movl	$1, n(%rip)
    jmp	L70
L74:
    movl	$0, %eax
    call	foo
    testl	%eax, %eax
    je	L71
    movq	$0, -112(%rbp)
    movl	$0, d(%rip)
    jmp	L72
L73:
    movq	i(%rip), %rax
    movq	j(%rip), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, (%rax)
    movzbl	u(%rip), %eax
    addl	$1, %eax
    movb	%al, u(%rip)
L72:
    movzbl	u(%rip), %eax
    testb	%al, %al
    jle	L73
    movq	i(%rip), %rax
    movq	$0, (%rax)
    movq	i(%rip), %rax
    movq	$0, (%rax)
    movq	$0, -96(%rbp)
    movq	$0, -88(%rbp)
    movl	$0, -80(%rbp)
    movq	i(%rip), %rax
    leaq	-96(%rbp), %rdx
    movq	%rdx, (%rax)
    leaq	-64(%rbp), %rax
    movq	%rax, -128(%rbp)
    leaq	-128(%rbp), %rax
    movq	%rax, -120(%rbp)
    movq	-120(%rbp), %rax
    leaq	-112(%rbp), %rdx
    movq	%rdx, (%rax)
L71:
    movl	n(%rip), %eax
    subl	$1, %eax
    movl	%eax, n(%rip)
L70:
    movl	n(%rip), %eax
    testl	%eax, %eax
    jne	L74
    movb	$0, u(%rip)
    jmp	L75
L78:
    movl	$0, -132(%rbp)
    jmp	L76
L77:
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
    addl	$1, -132(%rbp)
L76:
    cmpl	$9, -132(%rbp)
    jle	L77
    movl	b(%rip), %eax
    addl	$1, %eax
    movl	%eax, b(%rip)
L75:
    movl	b(%rip), %eax
    testl	%eax, %eax
    jne	L78
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
    jne	L79
    call	abort
L79:
    movl	$0, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L81
    call	__stack_chk_fail
L81:
    leave
    ret
