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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .comm	a,4,4
    .comm	b,4,4
    .comm	c,4,4
    .comm	e,4,4
    .comm	i,4,4
    .comm	j,4,4
    .comm	k,4,4
    .comm	m,4,4
    .data
q:
    .long	1
    .long	1
    .comm	t,4,4
    .comm	d,4,4
    .comm	r,8,8
s:
    .quad	r
    .comm	f,4,4
    .comm	g,4,4
    .comm	o,4,4
    .comm	x,4,4
h:
    .quad	f
    .comm	p,8,8
    .comm	n,1,1
    .text
fn1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	b(%rip), %eax
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
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
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
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
    cltq
    movl	a(,%rax,4), %eax
    cltq
    movl	a(,%rax,4), %eax
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
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
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
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
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
fn2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$1440, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movb	$0, n(%rip)
    jmp	L55
L58:
    movl	d(%rip), %eax
    movq	$0, -1408(%rbp)
    movq	$0, -1400(%rbp)
    movq	$0, -1392(%rbp)
    movq	$0, -1384(%rbp)
    movq	$0, -1376(%rbp)
    movq	$0, -1368(%rbp)
    movq	$0, -1360(%rbp)
    movq	$0, -1352(%rbp)
    movq	$0, -1344(%rbp)
    movq	$0, -1336(%rbp)
    movq	$0, -1328(%rbp)
    movq	$0, -1320(%rbp)
    movq	$0, -1312(%rbp)
    movq	$0, -1304(%rbp)
    movq	$0, -1296(%rbp)
    movq	$0, -1288(%rbp)
    movq	$0, -1280(%rbp)
    movq	$0, -1272(%rbp)
    movq	$0, -1264(%rbp)
    movq	$0, -1256(%rbp)
    movq	$0, -1248(%rbp)
    movq	$0, -1240(%rbp)
    movq	$0, -1232(%rbp)
    movq	$0, -1224(%rbp)
    movq	$0, -1216(%rbp)
    movq	$0, -1208(%rbp)
    movq	$0, -1200(%rbp)
    movq	$0, -1192(%rbp)
    movq	$0, -1184(%rbp)
    movq	$0, -1176(%rbp)
    movq	$0, -1168(%rbp)
    movq	$0, -1160(%rbp)
    movq	$0, -1152(%rbp)
    movq	$0, -1144(%rbp)
    movq	$0, -1136(%rbp)
    movq	$0, -1128(%rbp)
    movq	$0, -1120(%rbp)
    movq	$0, -1112(%rbp)
    movq	$0, -1104(%rbp)
    movq	$0, -1096(%rbp)
    movq	$0, -1088(%rbp)
    movq	$0, -1080(%rbp)
    movq	$0, -1072(%rbp)
    movq	$0, -1064(%rbp)
    movq	$0, -1056(%rbp)
    movq	$0, -1048(%rbp)
    movq	$0, -1040(%rbp)
    movq	$0, -1032(%rbp)
    movq	$0, -1024(%rbp)
    movq	$0, -1016(%rbp)
    movq	$0, -1008(%rbp)
    movq	$0, -1000(%rbp)
    movq	$0, -992(%rbp)
    movq	$0, -984(%rbp)
    movq	$0, -976(%rbp)
    movq	$0, -968(%rbp)
    movq	$0, -960(%rbp)
    movq	$0, -952(%rbp)
    movq	$0, -944(%rbp)
    movq	$0, -936(%rbp)
    movq	$0, -928(%rbp)
    movq	$0, -920(%rbp)
    movq	$0, -912(%rbp)
    movq	$0, -904(%rbp)
    movq	$0, -896(%rbp)
    movq	$0, -888(%rbp)
    movq	$0, -880(%rbp)
    movq	$0, -872(%rbp)
    movq	$0, -864(%rbp)
    movq	$0, -856(%rbp)
    movq	$0, -848(%rbp)
    movq	$0, -840(%rbp)
    movq	$0, -832(%rbp)
    movq	$0, -824(%rbp)
    movq	$0, -816(%rbp)
    movq	$0, -808(%rbp)
    movq	$0, -800(%rbp)
    movq	$0, -792(%rbp)
    movq	$0, -784(%rbp)
    movq	$0, -776(%rbp)
    movq	$0, -768(%rbp)
    movq	$0, -760(%rbp)
    movq	$0, -752(%rbp)
    movq	$0, -744(%rbp)
    movq	$0, -736(%rbp)
    movq	$0, -728(%rbp)
    movq	$0, -720(%rbp)
    movq	$0, -712(%rbp)
    movq	$0, -704(%rbp)
    movq	$0, -696(%rbp)
    movq	$0, -688(%rbp)
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
    movq	$0, -600(%rbp)
    movq	$0, -592(%rbp)
    movq	$0, -584(%rbp)
    movq	$0, -576(%rbp)
    movq	$0, -568(%rbp)
    movq	$0, -560(%rbp)
    movq	$0, -552(%rbp)
    movq	$0, -544(%rbp)
    movq	$0, -536(%rbp)
    movq	$0, -528(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -520(%rbp)
    movq	$0, -512(%rbp)
    movq	$0, -504(%rbp)
    movq	$0, -496(%rbp)
    movq	$0, -488(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -480(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -472(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -464(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -456(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -448(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -440(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -432(%rbp)
    movq	$0, -424(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -416(%rbp)
    movq	$0, -408(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -400(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -392(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -384(%rbp)
    movq	$0, -376(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -368(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -360(%rbp)
    movq	$0, -352(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -344(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -336(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -328(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -320(%rbp)
    movq	$0, -312(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -304(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -296(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -288(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -280(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -272(%rbp)
    movq	$0, -264(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -256(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -248(%rbp)
    movq	$0, -240(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -232(%rbp)
    movq	$0, -224(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -216(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -208(%rbp)
    movq	$0, -200(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -192(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -184(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -176(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -168(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -160(%rbp)
    movq	$0, -152(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -144(%rbp)
    movq	$0, -136(%rbp)
    movq	$0, -128(%rbp)
    movq	$0, -120(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -112(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -104(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	$0, -88(%rbp)
    movq	$0, -80(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -72(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -64(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	$0, -48(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -40(%rbp)
    movq	$0, -32(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -24(%rbp)
    leaq	-1432(%rbp), %rax
    movq	%rax, -16(%rbp)
    leaq	-1408(%rbp), %rax
    movq	%rax, -1424(%rbp)
    movq	p(%rip), %rax
    movl	(%rax), %eax
    testl	%eax, %eax
    je	L56
    movq	h(%rip), %rax
    movl	$0, (%rax)
    movl	t(%rip), %eax
    addl	$1, %eax
    movl	%eax, t(%rip)
    jmp	L55
L56:
    movl	$0, %eax
    jmp	L57
L55:
    movl	g(%rip), %eax
    testl	%eax, %eax
    jne	L58
    movl	$1, %eax
L57:
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L59
    call	__stack_chk_fail
L59:
    leave
    ret
fn3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$176, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-80(%rbp), %rdx
    movl	$0, %eax
    movl	$8, %ecx
    movq	%rdx, %rdi
    rep stosq
    jmp	L61
L62:
    movl	$0, x(%rip)
    movl	i(%rip), %eax
    addl	$1, %eax
    movl	%eax, i(%rip)
L61:
    movl	i(%rip), %eax
    testl	%eax, %eax
    jne	L62
    movl	$0, %eax
    call	fn2
    testl	%eax, %eax
    je	L63
    leaq	-128(%rbp), %rdx
    movl	$0, %eax
    movl	$6, %ecx
    movq	%rdx, %rdi
    rep stosq
    jmp	L64
L65:
    movq	h(%rip), %rax
    movl	$0, (%rax)
    movzbl	n(%rip), %eax
    addl	$1, %eax
    movb	%al, n(%rip)
L64:
    movzbl	n(%rip), %eax
    testb	%al, %al
    jle	L65
    jmp	L66
L67:
    movl	-160(%rbp), %eax
    movl	%eax, o(%rip)
    movl	c(%rip), %eax
    addl	$1, %eax
    movl	%eax, c(%rip)
L66:
    movl	c(%rip), %eax
    testl	%eax, %eax
    jne	L67
    jmp	L68
L69:
    leaq	-80(%rbp), %rax
    movq	%rax, -176(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -168(%rbp)
    movq	-168(%rbp), %rax
    leaq	-128(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	e(%rip), %eax
    subl	$1, %eax
    movl	%eax, e(%rip)
L68:
    movl	e(%rip), %eax
    testl	%eax, %eax
    jne	L69
L63:
    movq	s(%rip), %rax
    movq	$0, (%rax)
    movb	$0, n(%rip)
L71:
    movl	$0, -176(%rbp)
    movzbl	n(%rip), %eax
    movsbl	%al, %eax
    cltq
    movl	q(,%rax,4), %eax
    testl	%eax, %eax
    jne	L74
    movq	r(%rip), %rax
    leaq	-176(%rbp), %rdx
    movq	%rdx, (%rax)
    movb	$0, n(%rip)
    jmp	L71
L74:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L72
    call	__stack_chk_fail
L72:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    jmp	L76
L77:
    movl	$0, a(%rip)
    movl	j(%rip), %eax
    subl	$1, %eax
    movl	%eax, j(%rip)
L76:
    movl	j(%rip), %eax
    testl	%eax, %eax
    jne	L77
    movl	$0, %eax
    call	fn3
    jmp	L78
L79:
    movl	$0, %eax
    call	fn1
    movl	k(%rip), %eax
    addl	$1, %eax
    movl	%eax, k(%rip)
L78:
    movl	k(%rip), %eax
    testl	%eax, %eax
    jne	L79
    movl	$0, %eax
    call	fn1
    movzbl	n(%rip), %eax
    testb	%al, %al
    je	L80
    call	abort
L80:
    movl	$0, %eax
    popq	%rbp
    ret
