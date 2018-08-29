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
    .globl	a1
a1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2442(%rip), %eax
    movzbl	y2443(%rip), %edx
    andl	$-65, %edx
    cmpb	%dl, %al
    jne	L58
    movzbl	x2442 + 1(%rip), %edx
    movzbl	y2443 + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L58
    movl	$1, %eax
    jmp	L59
L58:
    movl	$0, %eax
L59:
    popq	%rbp
    ret
    .globl	a2
a2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2446(%rip), %edx
    movzbl	y2447(%rip), %eax
    cmpb	%al, %dl
    jne	L62
    movzbl	x2446 + 1(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzbl	y2447 + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L62
    movl	$1, %eax
    jmp	L63
L62:
    movl	$0, %eax
L63:
    popq	%rbp
    ret
    .globl	a3
a3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	x2450(%rip), %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzbl	y2451(%rip), %eax
    andl	$-33, %eax
    cmpb	%al, %dl
    jne	L66
    movzbl	x2450 + 1(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzbl	y2451 + 1(%rip), %eax
    andl	$-17, %eax
    cmpb	%al, %dl
    jne	L66
    movl	$1, %eax
    jmp	L67
L66:
    movl	$0, %eax
L67:
    popq	%rbp
    ret
    .globl	b1
b1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2458 + 6(%rip), %eax
    movzwl	y2459 + 6(%rip), %edx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L70
    movzwl	x2458 + 4(%rip), %edx
    movzwl	y2459 + 4(%rip), %eax
    cmpw	%ax, %dx
    jne	L70
    movl	$1, %eax
    jmp	L71
L70:
    movl	$0, %eax
L71:
    popq	%rbp
    ret
    .globl	b2
b2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2462 + 6(%rip), %edx
    movzwl	y2463 + 6(%rip), %eax
    cmpw	%ax, %dx
    jne	L74
    movzwl	x2462 + 4(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2463 + 4(%rip), %eax
    cmpw	%ax, %dx
    jne	L74
    movl	$1, %eax
    jmp	L75
L74:
    movl	$0, %eax
L75:
    popq	%rbp
    ret
    .globl	b3
b3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2466 + 6(%rip), %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2467 + 6(%rip), %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L78
    movzwl	x2466 + 4(%rip), %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2467 + 4(%rip), %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L78
    movl	$1, %eax
    jmp	L79
L78:
    movl	$0, %eax
L79:
    popq	%rbp
    ret
    .globl	c1
c1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2475 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    movzwl	y2476 + 2(%rip), %edx
    shrw	$2, %dx
    movzwl	%dx, %edx
    andl	$-65, %edx
    cmpl	%edx, %eax
    jne	L82
    movl	x2475(%rip), %eax
    shrl	$4, %eax
    movl	%eax, %edx
    andw	$16383, %dx
    movl	y2476(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L82
    movl	$1, %eax
    jmp	L83
L82:
    movl	$0, %eax
L83:
    popq	%rbp
    ret
    .globl	c2
c2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2479 + 2(%rip), %eax
    shrw	$2, %ax
    movl	%eax, %edx
    movzwl	y2480 + 2(%rip), %eax
    shrw	$2, %ax
    cmpw	%ax, %dx
    jne	L86
    movl	x2479(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2480(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    cmpl	%eax, %edx
    jne	L86
    movl	$1, %eax
    jmp	L87
L86:
    movl	$0, %eax
L87:
    popq	%rbp
    ret
    .globl	c3
c3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2483 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2484 + 2(%rip), %eax
    shrw	$2, %ax
    movzwl	%ax, %eax
    andl	$-33, %eax
    cmpl	%eax, %edx
    jne	L90
    movl	x2483(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2484(%rip), %eax
    shrl	$4, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-17, %eax
    cmpl	%eax, %edx
    jne	L90
    movl	$1, %eax
    jmp	L91
L90:
    movl	$0, %eax
L91:
    popq	%rbp
    ret
    .globl	d1
d1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2492(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    movzwl	y2493(%rip), %edx
    andw	$16383, %dx
    movzwl	%dx, %edx
    andl	$-65, %edx
    cmpl	%edx, %eax
    jne	L94
    movl	x2492(%rip), %eax
    shrl	$14, %eax
    movl	%eax, %edx
    andw	$16383, %dx
    movl	y2493(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L94
    movl	$1, %eax
    jmp	L95
L94:
    movl	$0, %eax
L95:
    popq	%rbp
    ret
    .globl	d2
d2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2496(%rip), %eax
    andw	$16383, %ax
    movl	%eax, %edx
    movzwl	y2497(%rip), %eax
    andw	$16383, %ax
    cmpw	%ax, %dx
    jne	L98
    movl	x2496(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2497(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    cmpl	%eax, %edx
    jne	L98
    movl	$1, %eax
    jmp	L99
L98:
    movl	$0, %eax
L99:
    popq	%rbp
    ret
    .globl	d3
d3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2500(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2501(%rip), %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-33, %eax
    cmpl	%eax, %edx
    jne	L102
    movl	x2500(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2501(%rip), %eax
    shrl	$14, %eax
    andw	$16383, %ax
    movzwl	%ax, %eax
    andl	$-17, %eax
    cmpl	%eax, %edx
    jne	L102
    movl	$1, %eax
    jmp	L103
L102:
    movl	$0, %eax
L103:
    popq	%rbp
    ret
    .globl	e1
e1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2509 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movzwl	y2510 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-65, %eax
    cmpw	%ax, %dx
    jne	L106
    movl	x2509(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movl	y2510(%rip), %eax
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
    .globl	e2
e2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2513 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movzwl	y2514 + 2(%rip), %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L110
    movl	x2513(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2514(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L110
    movl	$1, %eax
    jmp	L111
L110:
    movl	$0, %eax
L111:
    popq	%rbp
    ret
    .globl	e3
e3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2517 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2518 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L114
    movl	x2517(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2518(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L114
    movl	$1, %eax
    jmp	L115
L114:
    movl	$0, %eax
L115:
    popq	%rbp
    ret
    .globl	e4
e4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2521 + 2(%rip), %eax
    andl	$-4, %eax
    testw	%ax, %ax
    jne	L118
    movl	x2521(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$8192, %eax
    testl	%eax, %eax
    je	L118
    movl	$1, %eax
    jmp	L119
L118:
    movl	$0, %eax
L119:
    popq	%rbp
    ret
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2529(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movzwl	y2530(%rip), %edx
    sall	$2, %edx
    sarw	$2, %dx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L122
    movl	x2529(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movl	y2530(%rip), %eax
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
    .globl	f2
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2533(%rip), %eax
    leal	0(,%rax,4), %edx
    sarw	$2, %dx
    movzwl	y2534(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L126
    movl	x2533(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2534(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L126
    movl	$1, %eax
    jmp	L127
L126:
    movl	$0, %eax
L127:
    popq	%rbp
    ret
    .globl	f3
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2537(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movzwl	y2538(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L130
    movl	x2537(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movl	y2538(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L130
    movl	$1, %eax
    jmp	L131
L130:
    movl	$0, %eax
L131:
    popq	%rbp
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2541(%rip), %eax
    andw	$16383, %ax
    testw	%ax, %ax
    jne	L134
    movl	x2541(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$8192, %eax
    testl	%eax, %eax
    je	L134
    movl	$1, %eax
    jmp	L135
L134:
    movl	$0, %eax
L135:
    popq	%rbp
    ret
    .globl	g1
g1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2554 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movl	y2555(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    cmpw	%ax, %dx
    jne	L138
    movl	x2554(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movzwl	y2555(%rip), %eax
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
    .globl	g2
g2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2558 + 2(%rip), %eax
    sarw	$2, %ax
    movl	%eax, %edx
    movl	y2559(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cmpw	%ax, %dx
    jne	L142
    movl	x2558(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2559(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L142
    movl	$1, %eax
    jmp	L143
L142:
    movl	$0, %eax
L143:
    popq	%rbp
    ret
    .globl	g3
g3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2562 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movl	y2563(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L146
    movl	x2562(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2563(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L146
    movl	$1, %eax
    jmp	L147
L146:
    movl	$0, %eax
L147:
    popq	%rbp
    ret
    .globl	g4
g4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2566 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movl	y2567(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L150
    movl	x2566(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movzwl	y2567(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L150
    movl	$1, %eax
    jmp	L151
L150:
    movl	$0, %eax
L151:
    popq	%rbp
    ret
    .globl	g5
g5:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2570 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movl	y2571(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L154
    movl	x2570(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movzwl	y2571(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L154
    movl	$1, %eax
    jmp	L155
L154:
    movl	$0, %eax
L155:
    popq	%rbp
    ret
    .globl	g6
g6:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2574 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movl	y2575(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L158
    movl	x2574(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movzwl	y2575(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L158
    movl	$1, %eax
    jmp	L159
L158:
    movl	$0, %eax
L159:
    popq	%rbp
    ret
    .globl	g7
g7:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2578 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movl	y2579(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L162
    movl	x2578(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movzwl	y2579(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L162
    movl	$1, %eax
    jmp	L163
L162:
    movl	$0, %eax
L163:
    popq	%rbp
    ret
    .globl	h1
h1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2592(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movl	y2593(%rip), %edx
    sall	$14, %edx
    sarl	$18, %edx
    andl	$-65, %edx
    cmpw	%dx, %ax
    jne	L166
    movl	x2592(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    movl	%eax, %edx
    movzwl	y2593 + 2(%rip), %eax
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
    .globl	h2
h2:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2596(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    movl	y2597(%rip), %edx
    sall	$14, %edx
    sarl	$18, %edx
    cmpw	%dx, %ax
    jne	L170
    movl	x2596(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2597 + 2(%rip), %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L170
    movl	$1, %eax
    jmp	L171
L170:
    movl	$0, %eax
L171:
    popq	%rbp
    ret
    .globl	h3
h3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2600(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    andl	$-9, %eax
    movl	%eax, %edx
    movl	y2601(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    andl	$-33, %eax
    cmpw	%ax, %dx
    jne	L174
    movl	x2600(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    andl	$-65, %eax
    movl	%eax, %edx
    movzwl	y2601 + 2(%rip), %eax
    sarw	$2, %ax
    andl	$-17, %eax
    cmpw	%ax, %dx
    jne	L174
    movl	$1, %eax
    jmp	L175
L174:
    movl	$0, %eax
L175:
    popq	%rbp
    ret
    .globl	h4
h4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2604(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movl	y2605(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L178
    movl	x2604(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    movl	%eax, %edx
    movzwl	y2605 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    cmpl	%eax, %edx
    jne	L178
    movl	$1, %eax
    jmp	L179
L178:
    movl	$0, %eax
L179:
    popq	%rbp
    ret
    .globl	h5
h5:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2608(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movl	y2609(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L182
    movl	x2608(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$3840, %eax
    movl	%eax, %edx
    movzwl	y2609 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$240, %eax
    cmpl	%eax, %edx
    jne	L182
    movl	$1, %eax
    jmp	L183
L182:
    movl	$0, %eax
L183:
    popq	%rbp
    ret
    .globl	h6
h6:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2612(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movl	y2613(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L186
    movl	x2612(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    movl	%eax, %edx
    movzwl	y2613 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    cmpl	%eax, %edx
    jne	L186
    movl	$1, %eax
    jmp	L187
L186:
    movl	$0, %eax
L187:
    popq	%rbp
    ret
    .globl	h7
h7:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	x2616(%rip), %eax
    sall	$2, %eax
    sarw	$2, %ax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movl	y2617(%rip), %eax
    sall	$14, %eax
    sarl	$18, %eax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L190
    movl	x2616(%rip), %eax
    sall	$4, %eax
    sarl	$18, %eax
    cwtl
    andl	$16368, %eax
    movl	%eax, %edx
    movzwl	y2617 + 2(%rip), %eax
    sarw	$2, %ax
    cwtl
    andl	$1023, %eax
    cmpl	%eax, %edx
    jne	L190
    movl	$1, %eax
    jmp	L191
L190:
    movl	$0, %eax
L191:
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
    jne	L194
    call	abort
L194:
    movl	$0, %eax
    call	a2
    testl	%eax, %eax
    jne	L195
    call	abort
L195:
    movl	$0, %eax
    call	a3
    testl	%eax, %eax
    jne	L196
    call	abort
L196:
    movl	$0, %eax
    call	b1
    testl	%eax, %eax
    jne	L197
    call	abort
L197:
    movl	$0, %eax
    call	b2
    testl	%eax, %eax
    jne	L198
    call	abort
L198:
    movl	$0, %eax
    call	b3
    testl	%eax, %eax
    jne	L199
    call	abort
L199:
    movl	$0, %eax
    call	c1
    testl	%eax, %eax
    jne	L200
    call	abort
L200:
    movl	$0, %eax
    call	c2
    testl	%eax, %eax
    jne	L201
    call	abort
L201:
    movl	$0, %eax
    call	c3
    testl	%eax, %eax
    jne	L202
    call	abort
L202:
    movl	$0, %eax
    call	d1
    testl	%eax, %eax
    jne	L203
    call	abort
L203:
    movl	$0, %eax
    call	d2
    testl	%eax, %eax
    jne	L204
    call	abort
L204:
    movl	$0, %eax
    call	d3
    testl	%eax, %eax
    jne	L205
    call	abort
L205:
    movl	$0, %eax
    call	e1
    testl	%eax, %eax
    jne	L206
    call	abort
L206:
    movl	$0, %eax
    call	e2
    testl	%eax, %eax
    jne	L207
    call	abort
L207:
    movl	$0, %eax
    call	e3
    testl	%eax, %eax
    jne	L208
    call	abort
L208:
    movl	$0, %eax
    call	e4
    testl	%eax, %eax
    jne	L209
    call	abort
L209:
    movl	$0, %eax
    call	f1
    testl	%eax, %eax
    jne	L210
    call	abort
L210:
    movl	$0, %eax
    call	f2
    testl	%eax, %eax
    jne	L211
    call	abort
L211:
    movl	$0, %eax
    call	f3
    testl	%eax, %eax
    jne	L212
    call	abort
L212:
    movl	$0, %eax
    call	f4
    testl	%eax, %eax
    jne	L213
    call	abort
L213:
    movl	$0, %eax
    call	g1
    testl	%eax, %eax
    jne	L214
    call	abort
L214:
    movl	$0, %eax
    call	g2
    testl	%eax, %eax
    jne	L215
    call	abort
L215:
    movl	$0, %eax
    call	g3
    testl	%eax, %eax
    jne	L216
    call	abort
L216:
    movl	$0, %eax
    call	g4
    testl	%eax, %eax
    je	L217
    call	abort
L217:
    movl	$0, %eax
    call	g5
    testl	%eax, %eax
    je	L218
    call	abort
L218:
    movl	$0, %eax
    call	g6
    testl	%eax, %eax
    jne	L219
    call	abort
L219:
    movl	$0, %eax
    call	g7
    testl	%eax, %eax
    jne	L220
    call	abort
L220:
    movl	$0, %eax
    call	h1
    testl	%eax, %eax
    jne	L221
    call	abort
L221:
    movl	$0, %eax
    call	h2
    testl	%eax, %eax
    jne	L222
    call	abort
L222:
    movl	$0, %eax
    call	h3
    testl	%eax, %eax
    jne	L223
    call	abort
L223:
    movl	$0, %eax
    call	h4
    testl	%eax, %eax
    je	L224
    call	abort
L224:
    movl	$0, %eax
    call	h5
    testl	%eax, %eax
    je	L225
    call	abort
L225:
    movl	$0, %eax
    call	h6
    testl	%eax, %eax
    jne	L226
    call	abort
L226:
    movl	$0, %eax
    call	h7
    testl	%eax, %eax
    jne	L227
    call	abort
L227:
    movl	$0, %edi
    call	exit
    .data
x2442:
    .byte	1
    .byte	2
    .value	-2
y2443:
    .byte	65
    .byte	2
    .value	-3
x2446:
    .byte	1
    .byte	66
    .value	-2
y2447:
    .byte	1
    .byte	2
    .value	-3
x2450:
    .byte	9
    .byte	66
    .value	-2
y2451:
    .byte	33
    .byte	18
    .value	-3
x2458:
    .long	-2
    .value	2
    .value	1
y2459:
    .long	-3
    .value	2
    .value	65
x2462:
    .long	-2
    .value	66
    .value	1
y2463:
    .long	-3
    .value	2
    .value	1
x2466:
    .long	-2
    .value	66
    .value	9
y2467:
    .long	-3
    .value	18
    .value	33
x2475:
    .byte	46
    .byte	0
    .byte	4
    .byte	0
    .zero	12
y2476:
    .byte	45
    .byte	0
    .byte	4
    .byte	1
    .zero	12
x2479:
    .byte	46
    .byte	4
    .byte	4
    .byte	0
    .zero	12
y2480:
    .byte	45
    .byte	0
    .byte	4
    .byte	0
    .zero	12
x2483:
    .byte	46
    .byte	4
    .byte	36
    .byte	0
    .zero	12
y2484:
    .byte	45
    .byte	1
    .byte	132
    .byte	0
    .zero	12
x2492:
    .byte	1
    .byte	128
    .byte	0
    .byte	224
    .zero	12
y2493:
    .byte	65
    .byte	128
    .byte	0
    .byte	208
    .zero	12
x2496:
    .byte	1
    .byte	128
    .byte	16
    .byte	224
    .zero	12
y2497:
    .byte	1
    .byte	128
    .byte	0
    .byte	208
    .zero	12
x2500:
    .byte	9
    .byte	128
    .byte	16
    .byte	224
    .zero	12
y2501:
    .byte	33
    .byte	128
    .byte	4
    .byte	208
    .zero	12
x2509:
    .byte	238
    .byte	255
    .byte	255
    .byte	254
    .zero	12
y2510:
    .byte	237
    .byte	255
    .byte	255
    .byte	255
    .zero	12
x2513:
    .byte	238
    .byte	255
    .byte	255
    .byte	255
    .zero	12
y2514:
    .byte	237
    .byte	251
    .byte	255
    .byte	255
    .zero	12
x2517:
    .byte	238
    .byte	254
    .byte	127
    .byte	255
    .zero	12
y2518:
    .byte	237
    .byte	251
    .byte	223
    .byte	255
    .zero	12
x2521:
    .byte	255
    .byte	255
    .byte	3
    .byte	0
    .zero	12
x2529:
    .byte	191
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2530:
    .byte	255
    .byte	191
    .byte	255
    .byte	223
    .zero	12
x2533:
    .byte	255
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2534:
    .byte	255
    .byte	191
    .byte	239
    .byte	223
    .zero	12
x2537:
    .byte	223
    .byte	191
    .byte	251
    .byte	239
    .zero	12
y2538:
    .byte	247
    .byte	191
    .byte	239
    .byte	223
    .zero	12
x2541:
    .byte	0
    .byte	192
    .byte	255
    .byte	255
    .zero	12
x2554:
    .byte	238
    .byte	255
    .byte	255
    .byte	254
    .zero	12
y2555:
    .byte	254
    .byte	255
    .byte	255
    .byte	223
    .zero	12
x2558:
    .byte	238
    .byte	255
    .byte	255
    .byte	255
    .zero	12
y2559:
    .byte	190
    .byte	255
    .byte	255
    .byte	223
    .zero	12
x2562:
    .byte	238
    .byte	254
    .byte	127
    .byte	255
    .zero	12
y2563:
    .byte	190
    .byte	255
    .byte	253
    .byte	223
    .zero	12
x2566:
    .byte	14
    .byte	2
    .byte	64
    .byte	0
    .zero	12
y2567:
    .byte	0
    .byte	2
    .byte	64
    .byte	208
    .zero	12
x2570:
    .byte	14
    .byte	32
    .byte	0
    .byte	4
    .zero	12
y2571:
    .byte	32
    .byte	0
    .byte	4
    .byte	208
    .zero	12
x2574:
    .byte	14
    .byte	226
    .byte	67
    .byte	244
    .zero	12
y2575:
    .byte	47
    .byte	194
    .byte	71
    .byte	208
    .zero	12
x2578:
    .byte	254
    .byte	34
    .byte	124
    .byte	4
    .zero	12
y2579:
    .byte	32
    .byte	62
    .byte	68
    .byte	223
    .zero	12
x2592:
    .byte	191
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2593:
    .byte	253
    .byte	255
    .byte	251
    .byte	255
    .zero	12
x2596:
    .byte	255
    .byte	191
    .byte	255
    .byte	239
    .zero	12
y2597:
    .byte	253
    .byte	255
    .byte	251
    .byte	254
    .zero	12
x2600:
    .byte	223
    .byte	191
    .byte	251
    .byte	239
    .zero	12
y2601:
    .byte	125
    .byte	255
    .byte	251
    .byte	254
    .zero	12
x2604:
    .byte	16
    .byte	0
    .byte	8
    .byte	224
    .zero	12
y2605:
    .byte	13
    .byte	16
    .byte	0
    .byte	8
    .zero	12
x2608:
    .byte	0
    .byte	1
    .byte	128
    .byte	224
    .zero	12
y2609:
    .byte	13
    .byte	1
    .byte	128
    .byte	0
    .zero	12
x2612:
    .byte	16
    .byte	61
    .byte	136
    .byte	239
    .zero	12
y2613:
    .byte	253
    .byte	17
    .byte	188
    .byte	8
    .zero	12
x2616:
    .byte	31
    .byte	193
    .byte	139
    .byte	224
    .zero	12
y2617:
    .byte	13
    .byte	209
    .byte	131
    .byte	248
    .zero	12
