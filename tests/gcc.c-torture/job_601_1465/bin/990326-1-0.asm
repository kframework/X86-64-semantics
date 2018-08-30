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
    .globl	a1
a1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2435(%rip), %eax
    movzbl	y2436(%rip), %edx
    andl	$-65, %edx
    cmpb	%dl, %al
    jne	L54
    movzbl	x2435 + 1(%rip), %edx
    movzbl	y2436 + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L54
    movl	$1, %eax
    jmp	L55
L54:
    movl	$0, %eax
L55:
    popq	%rbp
    ret
    .globl	a2
a2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2439(%rip), %edx
    movzbl	y2440(%rip), %eax
    cmpb	%al, %dl
    jne	L58
    movzbl	x2439 + 1(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzbl	y2440 + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L58
    movl	$1, %eax
    jmp	L59
L58:
    movl	$0, %eax
L59:
    popq	%rbp
    ret
    .globl	a3
a3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2443(%rip), %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzbl	y2444(%rip), %eax
    andl	$-33, %eax
    cmpb	%al, %dl
    jne	L62
    movzbl	x2443 + 1(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzbl	y2444 + 1(%rip), %eax
    andl	$-17, %eax
    cmpb	%al, %dl
    jne	L62
    movl	$1, %eax
    jmp	L63
L62:
    movl	$0, %eax
L63:
    popq	%rbp
    ret
    .globl	b1
b1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2451 + 6(%rip), %eax
    movzwl	y2452 + 6(%rip), %edx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L66
    movzwl	x2451 + 4(%rip), %edx
    movzwl	y2452 + 4(%rip), %eax
    cmpw	%ax, %dx
    jne	L66
    movl	$1, %eax
    jmp	L67
L66:
    movl	$0, %eax
L67:
    popq	%rbp
    ret
    .globl	b2
b2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2455 + 6(%rip), %edx
    movzwl	y2456 + 6(%rip), %eax
    cmpw	%ax, %dx
    jne	L70
    movzwl	x2455 + 4(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2456 + 4(%rip), %eax
    cmpw	%ax, %dx
    jne	L70
    movl	$1, %eax
    jmp	L71
L70:
    movl	$0, %eax
L71:
    popq	%rbp
    ret
    .globl	b3
b3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2459 + 6(%rip), %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2460 + 6(%rip), %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L74
    movzwl	x2459 + 4(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2460 + 4(%rip), %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L74
    movl	$1, %eax
    jmp	L75
L74:
    movl	$0, %eax
L75:
    popq	%rbp
    ret
    .globl	c1
c1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2468 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    movzwl	y2469 + 2(%rip), %edx
    shrw	$2, %dx
    movzwl	%dx, %edx
    andl	$-65, %edx
    cmpl	%edx, %eax
    jne	L78
    movl	x2468(%rip), %eax
    shrl	$4, %eax
    movl	%eax, %edx
    andw	$16383, %dx
    movl	y2469(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L78
    movl	$1, %eax
    jmp	L79
L78:
    movl	$0, %eax
L79:
    popq	%rbp
    ret
    .globl	c2
c2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2472 + 2(%rip), %eax
    shrw	$2, %ax
    movl	%eax, %edx
    movzwl	y2473 + 2(%rip), %eax
    shrw	$2, %ax
    cmpw	%ax, %dx
    jne	L82
    movl	x2472(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2473(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    cmpl	%eax, %edx
    jne	L82
    movl	$1, %eax
    jmp	L83
L82:
    movl	$0, %eax
L83:
    popq	%rbp
    ret
    .globl	c3
c3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2476 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2477 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    andl	$-33, %eax
    cmpl	%eax, %edx
    jne	L86
    movl	x2476(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2477(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-17, %eax
    cmpl	%eax, %edx
    jne	L86
    movl	$1, %eax
    jmp	L87
L86:
    movl	$0, %eax
L87:
    popq	%rbp
    ret
    .globl	d1
d1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2485(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    movzwl	y2486(%rip), %edx
    andw	$16383, %dx
    movzwl	%dx, %edx
    andl	$-65, %edx
    cmpl	%edx, %eax
    jne	L90
    movl	x2485(%rip), %eax
    shrl	$14, %eax
    movl	%eax, %edx
    andw	$16383, %dx
    movl	y2486(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L90
    movl	$1, %eax
    jmp	L91
L90:
    movl	$0, %eax
L91:
    popq	%rbp
    ret
    .globl	d2
d2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2489(%rip), %eax
    andw	$16383, %ax
    movl	%eax, %edx
    movzwl	y2490(%rip), %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L94
    movl	x2489(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2490(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    cmpl	%eax, %edx
    jne	L94
    movl	$1, %eax
    jmp	L95
L94:
    movl	$0, %eax
L95:
    popq	%rbp
    ret
    .globl	d3
d3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2493(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2494(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-33, %eax
    cmpl	%eax, %edx
    jne	L98
    movl	x2493(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2494(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-17, %eax
    cmpl	%eax, %edx
    jne	L98
    movl	$1, %eax
    jmp	L99
L98:
    movl	$0, %eax
L99:
    popq	%rbp
    ret
    .globl	e1
e1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2502 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movzwl	y2503 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-65, %eax
    cmpw	%ax, %dx
    jne	L102
    movl	x2502(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movl	y2503(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L102
    movl	$1, %eax
    jmp	L103
L102:
    movl	$0, %eax
L103:
    popq	%rbp
    ret
    .globl	e2
e2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2506 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movzwl	y2507 + 2(%rip), %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L106
    movl	x2506(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2507(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L106
    movl	$1, %eax
    jmp	L107
L106:
    movl	$0, %eax
L107:
    popq	%rbp
    ret
    .globl	e3
e3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2510 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2511 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L110
    movl	x2510(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2511(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L110
    movl	$1, %eax
    jmp	L111
L110:
    movl	$0, %eax
L111:
    popq	%rbp
    ret
    .globl	e4
e4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2514 + 2(%rip), %eax
    andl	$-4, %eax
    testw	%ax, %ax
    jne	L114
    movl	x2514(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$8192, %eax
    testl	%eax, %eax
    je	L114
    movl	$1, %eax
    jmp	L115
L114:
    movl	$0, %eax
L115:
    popq	%rbp
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2522(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movzwl	y2523(%rip), %edx
    sall	$2, %edx
    sarw	$2, %dx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L118
    movl	x2522(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movl	y2523(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L118
    movl	$1, %eax
    jmp	L119
L118:
    movl	$0, %eax
L119:
    popq	%rbp
    ret
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2526(%rip), %eax
    leal	0(,%rax,4), %edx
    sarw	$2, %dx
    movzwl	y2527(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L122
    movl	x2526(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2527(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L122
    movl	$1, %eax
    jmp	L123
L122:
    movl	$0, %eax
L123:
    popq	%rbp
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2530(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2531(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L126
    movl	x2530(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2531(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L126
    movl	$1, %eax
    jmp	L127
L126:
    movl	$0, %eax
L127:
    popq	%rbp
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2534(%rip), %eax
    andw	$16383, %ax
    testw	%ax, %ax
    jne	L130
    movl	x2534(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$8192, %eax
    testl	%eax, %eax
    je	L130
    movl	$1, %eax
    jmp	L131
L130:
    movl	$0, %eax
L131:
    popq	%rbp
    ret
    .globl	g1
g1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2547 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movl	y2548(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    cmpw	%ax, %dx
    jne	L134
    movl	x2547(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movzwl	y2548(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L134
    movl	$1, %eax
    jmp	L135
L134:
    movl	$0, %eax
L135:
    popq	%rbp
    ret
    .globl	g2
g2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2551 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movl	y2552(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L138
    movl	x2551(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2552(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L138
    movl	$1, %eax
    jmp	L139
L138:
    movl	$0, %eax
L139:
    popq	%rbp
    ret
    .globl	g3
g3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2555 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movl	y2556(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L142
    movl	x2555(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2556(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L142
    movl	$1, %eax
    jmp	L143
L142:
    movl	$0, %eax
L143:
    popq	%rbp
    ret
    .globl	g4
g4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2559 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movl	y2560(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L146
    movl	x2559(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movzwl	y2560(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L146
    movl	$1, %eax
    jmp	L147
L146:
    movl	$0, %eax
L147:
    popq	%rbp
    ret
    .globl	g5
g5:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2563 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movl	y2564(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L150
    movl	x2563(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movzwl	y2564(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L150
    movl	$1, %eax
    jmp	L151
L150:
    movl	$0, %eax
L151:
    popq	%rbp
    ret
    .globl	g6
g6:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2567 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movl	y2568(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L154
    movl	x2567(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movzwl	y2568(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L154
    movl	$1, %eax
    jmp	L155
L154:
    movl	$0, %eax
L155:
    popq	%rbp
    ret
    .globl	g7
g7:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2571 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movl	y2572(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L158
    movl	x2571(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movzwl	y2572(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L158
    movl	$1, %eax
    jmp	L159
L158:
    movl	$0, %eax
L159:
    popq	%rbp
    ret
    .globl	h1
h1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2585(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movl	y2586(%rip), %edx
    sall	$14, %edx
    sarl	$18, %edx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L162
    movl	x2585(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movzwl	y2586 + 2(%rip), %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L162
    movl	$1, %eax
    jmp	L163
L162:
    movl	$0, %eax
L163:
    popq	%rbp
    ret
    .globl	h2
h2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2589(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movl	y2590(%rip), %edx
    sall	$14, %edx
    sarl	$18, %edx
    cmpw	%dx, %ax
    jne	L166
    movl	x2589(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2590 + 2(%rip), %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L166
    movl	$1, %eax
    jmp	L167
L166:
    movl	$0, %eax
L167:
    popq	%rbp
    ret
    .globl	h3
h3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2593(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movl	y2594(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L170
    movl	x2593(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2594 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L170
    movl	$1, %eax
    jmp	L171
L170:
    movl	$0, %eax
L171:
    popq	%rbp
    ret
    .globl	h4
h4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2597(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movl	y2598(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L174
    movl	x2597(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movzwl	y2598 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L174
    movl	$1, %eax
    jmp	L175
L174:
    movl	$0, %eax
L175:
    popq	%rbp
    ret
    .globl	h5
h5:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2601(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movl	y2602(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L178
    movl	x2601(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movzwl	y2602 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L178
    movl	$1, %eax
    jmp	L179
L178:
    movl	$0, %eax
L179:
    popq	%rbp
    ret
    .globl	h6
h6:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2605(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movl	y2606(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L182
    movl	x2605(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movzwl	y2606 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L182
    movl	$1, %eax
    jmp	L183
L182:
    movl	$0, %eax
L183:
    popq	%rbp
    ret
    .globl	h7
h7:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2609(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movl	y2610(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L186
    movl	x2609(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movzwl	y2610 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L186
    movl	$1, %eax
    jmp	L187
L186:
    movl	$0, %eax
L187:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	a1
    testl	%eax, %eax
    jne	L190
    call	abort
L190:
    movl	$0, %eax
    call	a2
    testl	%eax, %eax
    jne	L191
    call	abort
L191:
    movl	$0, %eax
    call	a3
    testl	%eax, %eax
    jne	L192
    call	abort
L192:
    movl	$0, %eax
    call	b1
    testl	%eax, %eax
    jne	L193
    call	abort
L193:
    movl	$0, %eax
    call	b2
    testl	%eax, %eax
    jne	L194
    call	abort
L194:
    movl	$0, %eax
    call	b3
    testl	%eax, %eax
    jne	L195
    call	abort
L195:
    movl	$0, %eax
    call	c1
    testl	%eax, %eax
    jne	L196
    call	abort
L196:
    movl	$0, %eax
    call	c2
    testl	%eax, %eax
    jne	L197
    call	abort
L197:
    movl	$0, %eax
    call	c3
    testl	%eax, %eax
    jne	L198
    call	abort
L198:
    movl	$0, %eax
    call	d1
    testl	%eax, %eax
    jne	L199
    call	abort
L199:
    movl	$0, %eax
    call	d2
    testl	%eax, %eax
    jne	L200
    call	abort
L200:
    movl	$0, %eax
    call	d3
    testl	%eax, %eax
    jne	L201
    call	abort
L201:
    movl	$0, %eax
    call	e1
    testl	%eax, %eax
    jne	L202
    call	abort
L202:
    movl	$0, %eax
    call	e2
    testl	%eax, %eax
    jne	L203
    call	abort
L203:
    movl	$0, %eax
    call	e3
    testl	%eax, %eax
    jne	L204
    call	abort
L204:
    movl	$0, %eax
    call	e4
    testl	%eax, %eax
    jne	L205
    call	abort
L205:
    movl	$0, %eax
    call	f1
    testl	%eax, %eax
    jne	L206
    call	abort
L206:
    movl	$0, %eax
    call	f2
    testl	%eax, %eax
    jne	L207
    call	abort
L207:
    movl	$0, %eax
    call	f3
    testl	%eax, %eax
    jne	L208
    call	abort
L208:
    movl	$0, %eax
    call	f4
    testl	%eax, %eax
    jne	L209
    call	abort
L209:
    movl	$0, %eax
    call	g1
    testl	%eax, %eax
    jne	L210
    call	abort
L210:
    movl	$0, %eax
    call	g2
    testl	%eax, %eax
    jne	L211
    call	abort
L211:
    movl	$0, %eax
    call	g3
    testl	%eax, %eax
    jne	L212
    call	abort
L212:
    movl	$0, %eax
    call	g4
    testl	%eax, %eax
    je	L213
    call	abort
L213:
    movl	$0, %eax
    call	g5
    testl	%eax, %eax
    je	L214
    call	abort
L214:
    movl	$0, %eax
    call	g6
    testl	%eax, %eax
    jne	L215
    call	abort
L215:
    movl	$0, %eax
    call	g7
    testl	%eax, %eax
    jne	L216
    call	abort
L216:
    movl	$0, %eax
    call	h1
    testl	%eax, %eax
    jne	L217
    call	abort
L217:
    movl	$0, %eax
    call	h2
    testl	%eax, %eax
    jne	L218
    call	abort
L218:
    movl	$0, %eax
    call	h3
    testl	%eax, %eax
    jne	L219
    call	abort
L219:
    movl	$0, %eax
    call	h4
    testl	%eax, %eax
    je	L220
    call	abort
L220:
    movl	$0, %eax
    call	h5
    testl	%eax, %eax
    je	L221
    call	abort
L221:
    movl	$0, %eax
    call	h6
    testl	%eax, %eax
    jne	L222
    call	abort
L222:
    movl	$0, %eax
    call	h7
    testl	%eax, %eax
    jne	L223
    call	abort
L223:
    movl	$0, %edi
    call	exit
    .data
x2435:
    .byte	1
    .byte	2
    .value	-2
y2436:
    .byte	65
    .byte	2
    .value	-3
x2439:
    .byte	1
    .byte	66
    .value	-2
y2440:
    .byte	1
    .byte	2
    .value	-3
x2443:
    .byte	9
    .byte	66
    .value	-2
y2444:
    .byte	33
    .byte	18
    .value	-3
x2451:
    .long	-2
    .value	2
    .value	1
y2452:
    .long	-3
    .value	2
    .value	65
x2455:
    .long	-2
    .value	66
    .value	1
y2456:
    .long	-3
    .value	2
    .value	1
x2459:
    .long	-2
    .value	66
    .value	9
y2460:
    .long	-3
    .value	18
    .value	33
x2468:
    .byte	46
    .byte	0
    .byte	4
    .byte	0
    .zero	12
y2469:
    .byte	45
    .byte	0
    .byte	4
    .byte	1
    .zero	12
x2472:
    .byte	46
    .byte	4
    .byte	4
    .byte	0
    .zero	12
y2473:
    .byte	45
    .byte	0
    .byte	4
    .byte	0
    .zero	12
x2476:
    .byte	46
    .byte	4
    .byte	36
    .byte	0
    .zero	12
y2477:
    .byte	45
    .byte	1
    .byte	132
    .byte	0
    .zero	12
x2485:
    .byte	1
    .byte	128
    .byte	0
    .byte	224
    .zero	12
y2486:
    .byte	65
    .byte	128
    .byte	0
    .byte	208
    .zero	12
x2489:
    .byte	1
    .byte	128
    .byte	16
    .byte	224
    .zero	12
y2490:
    .byte	1
    .byte	128
    .byte	0
    .byte	208
    .zero	12
x2493:
    .byte	9
    .byte	128
    .byte	16
    .byte	224
    .zero	12
y2494:
    .byte	33
    .byte	128
    .byte	4
    .byte	208
    .zero	12
x2502:
    .byte	238
    .byte	255
    .byte	255
    .byte	254
    .zero	12
y2503:
    .byte	237
    .byte	255
    .byte	255
    .byte	255
    .zero	12
x2506:
    .byte	238
    .byte	255
    .byte	255
    .byte	255
    .zero	12
y2507:
    .byte	237
    .byte	251
    .byte	255
    .byte	255
    .zero	12
x2510:
    .byte	238
    .byte	254
    .byte	127
    .byte	255
    .zero	12
y2511:
    .byte	237
    .byte	251
    .byte	223
    .byte	255
    .zero	12
x2514:
    .byte	255
    .byte	255
    .byte	3
    .byte	0
    .zero	12
x2522:
    .byte	191
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2523:
    .byte	255
    .byte	191
    .byte	255
    .byte	223
    .zero	12
x2526:
    .byte	255
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2527:
    .byte	255
    .byte	191
    .byte	239
    .byte	223
    .zero	12
x2530:
    .byte	223
    .byte	191
    .byte	251
    .byte	239
    .zero	12
y2531:
    .byte	247
    .byte	191
    .byte	239
    .byte	223
    .zero	12
x2534:
    .byte	0
    .byte	192
    .byte	255
    .byte	255
    .zero	12
x2547:
    .byte	238
    .byte	255
    .byte	255
    .byte	254
    .zero	12
y2548:
    .byte	254
    .byte	255
    .byte	255
    .byte	223
    .zero	12
x2551:
    .byte	238
    .byte	255
    .byte	255
    .byte	255
    .zero	12
y2552:
    .byte	190
    .byte	255
    .byte	255
    .byte	223
    .zero	12
x2555:
    .byte	238
    .byte	254
    .byte	127
    .byte	255
    .zero	12
y2556:
    .byte	190
    .byte	255
    .byte	253
    .byte	223
    .zero	12
x2559:
    .byte	14
    .byte	2
    .byte	64
    .byte	0
    .zero	12
y2560:
    .byte	0
    .byte	2
    .byte	64
    .byte	208
    .zero	12
x2563:
    .byte	14
    .byte	32
    .byte	0
    .byte	4
    .zero	12
y2564:
    .byte	32
    .byte	0
    .byte	4
    .byte	208
    .zero	12
x2567:
    .byte	14
    .byte	226
    .byte	67
    .byte	244
    .zero	12
y2568:
    .byte	47
    .byte	194
    .byte	71
    .byte	208
    .zero	12
x2571:
    .byte	254
    .byte	34
    .byte	124
    .byte	4
    .zero	12
y2572:
    .byte	32
    .byte	62
    .byte	68
    .byte	223
    .zero	12
x2585:
    .byte	191
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2586:
    .byte	253
    .byte	255
    .byte	251
    .byte	255
    .zero	12
x2589:
    .byte	255
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2590:
    .byte	253
    .byte	255
    .byte	251
    .byte	254
    .zero	12
x2593:
    .byte	223
    .byte	191
    .byte	251
    .byte	239
    .zero	12
y2594:
    .byte	125
    .byte	255
    .byte	251
    .byte	254
    .zero	12
x2597:
    .byte	16
    .byte	0
    .byte	8
    .byte	224
    .zero	12
y2598:
    .byte	13
    .byte	16
    .byte	0
    .byte	8
    .zero	12
x2601:
    .byte	0
    .byte	1
    .byte	128
    .byte	224
    .zero	12
y2602:
    .byte	13
    .byte	1
    .byte	128
    .byte	0
    .zero	12
x2605:
    .byte	16
    .byte	61
    .byte	136
    .byte	239
    .zero	12
y2606:
    .byte	253
    .byte	17
    .byte	188
    .byte	8
    .zero	12
x2609:
    .byte	31
    .byte	193
    .byte	139
    .byte	224
    .zero	12
y2610:
    .byte	13
    .byte	209
    .byte	131
    .byte	248
    .zero	12
