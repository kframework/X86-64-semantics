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
    .comm	vv6,0,1
    .data
wv6:
    .byte	72
    .byte	66
    .byte	32
    .byte	16
    .long	67426805
    .quad	1047191860
    .quad	1366022414
    .byte	90
    .byte	147
    .byte	98
    .byte	2
    .zero	4
    .quad	1069379046
    .quad	358273621
    .long	2116285006
    .long	1084877845
xv6:
    .long	2066806982
    .long	1087556038
yv6:
    .quad	1207859169
zv6:
    .long	660195606
    .text
callee_af6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
    vmovsd	%xmm0, -24(%rbp)
    movq	%rdi, -32(%rbp)
    movl	%esi, -36(%rbp)
    movzbl	wv6(%rip), %eax
    leal	0(,%rax,4), %edx
    sarb	$2, %dl
    movzbl	16(%rbp), %eax
    sall	$2, %eax
    sarb	$2, %al
    cmpb	%al, %dl
    je	L58
    call	abort
L58:
    movzwl	wv6(%rip), %eax
    sall	$3, %eax
    sarw	$9, %ax
    movl	%eax, %edx
    movzwl	16(%rbp), %eax
    sall	$3, %eax
    sarw	$9, %ax
    cmpb	%al, %dl
    je	L59
    call	abort
L59:
    movl	wv6(%rip), %eax
    sall	$13, %eax
    sarl	$26, %eax
    movl	%eax, %edx
    movl	16(%rbp), %eax
    sall	$13, %eax
    sarl	$26, %eax
    cmpb	%al, %dl
    je	L60
    call	abort
L60:
    movzbl	wv6 + 2(%rip), %eax
    sarb	$3, %al
    movl	%eax, %edx
    movzbl	18(%rbp), %eax
    sarb	$3, %al
    cmpb	%al, %dl
    je	L61
    call	abort
L61:
    movzbl	wv6 + 3(%rip), %edx
    movzbl	19(%rbp), %eax
    cmpb	%al, %dl
    je	L62
    call	abort
L62:
    movl	wv6 + 4(%rip), %edx
    movl	20(%rbp), %eax
    cmpl	%eax, %edx
    je	L63
    call	abort
L63:
    movq	wv6 + 8(%rip), %rdx
    movq	24(%rbp), %rax
    cmpq	%rax, %rdx
    je	L64
    call	abort
L64:
    movq	wv6 + 16(%rip), %rdx
    movq	32(%rbp), %rax
    cmpq	%rax, %rdx
    je	L65
    call	abort
L65:
    movzwl	wv6 + 24(%rip), %eax
    sall	$4, %eax
    movl	%eax, %edx
    sarw	$4, %dx
    movzwl	40(%rbp), %eax
    sall	$4, %eax
    sarw	$4, %ax
    cmpw	%ax, %dx
    je	L66
    call	abort
L66:
    movzbl	wv6 + 25(%rip), %eax
    leal	(%rax,%rax), %edx
    sarb	$5, %dl
    movzbl	41(%rbp), %eax
    addl	%eax, %eax
    sarb	$5, %al
    cmpb	%al, %dl
    je	L67
    call	abort
L67:
    movl	wv6 + 24(%rip), %eax
    sall	$15, %eax
    sarl	$30, %eax
    movl	%eax, %edx
    movl	40(%rbp), %eax
    sall	$15, %eax
    sarl	$30, %eax
    cmpb	%al, %dl
    je	L68
    call	abort
L68:
    movzwl	wv6 + 26(%rip), %eax
    sall	$5, %eax
    movl	%eax, %edx
    sarw	$6, %dx
    movzwl	42(%rbp), %eax
    sall	$5, %eax
    sarw	$6, %ax
    cmpw	%ax, %dx
    je	L69
    call	abort
L69:
    movq	wv6 + 32(%rip), %rdx
    movq	48(%rbp), %rax
    cmpq	%rax, %rdx
    je	L70
    call	abort
L70:
    movq	wv6 + 40(%rip), %rdx
    movq	56(%rbp), %rax
    cmpq	%rax, %rdx
    je	L71
    call	abort
L71:
    vmovsd	wv6 + 48(%rip), %xmm0
    vmovsd	64(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L79
    vucomisd	%xmm1, %xmm0
    je	L81
L79:
    call	abort
L81:
    vmovsd	xv6(%rip), %xmm0
    vucomisd	-24(%rbp), %xmm0
    jp	L80
    vucomisd	-24(%rbp), %xmm0
    je	L82
L80:
    call	abort
L82:
    movq	yv6(%rip), %rax
    cmpq	-32(%rbp), %rax
    je	L76
    call	abort
L76:
    movl	zv6(%rip), %eax
    cmpl	-36(%rbp), %eax
    je	L78
    call	abort
L78:
    leave
    ret
caller_bf6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	zv6(%rip), %ecx
    movq	yv6(%rip), %rdx
    movq	xv6(%rip), %rax
    pushq	wv6 + 48(%rip)
    pushq	wv6 + 40(%rip)
    pushq	wv6 + 32(%rip)
    pushq	wv6 + 24(%rip)
    pushq	wv6 + 16(%rip)
    pushq	wv6 + 8(%rip)
    pushq	wv6(%rip)
    movl	%ecx, %esi
    movq	%rdx, %rdi
    vmovq	%rax, %xmm0
    call	callee_af6
    addq	$56, %rsp
    nop
    leave
    ret
    .data
uv7:
    .byte	70
vv7:
    .long	1203551870
wv7:
    .long	2384840721
    .long	1088145581
    .comm	xv7,0,1
yv7:
    .long	1189834750
    .value	-23101
    .zero	2
    .byte	170
    .byte	0
    .value	22116
    .zero	4
    .long	865315651
    .long	1088019432
    .long	1165963103
    .zero	4
zv7:
    .long	1167954387
    .zero	4
bav7:
    .long	1345451862
bbv7:
    .long	3189133476
    .long	1088905327
bcv7:
    .quad	1732133482
bdv7:
    .quad	381678602
    .text
callee_af7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	%rdi, -32(%rbp)
    movl	%esi, -20(%rbp)
    vmovsd	%xmm2, -48(%rbp)
    movq	%rdx, -40(%rbp)
    movq	%rcx, -56(%rbp)
    vmovss	vv7(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L106
    vucomiss	-4(%rbp), %xmm0
    je	L113
L106:
    call	abort
L113:
    vmovsd	wv7(%rip), %xmm0
    vucomisd	-16(%rbp), %xmm0
    jp	L107
    vucomisd	-16(%rbp), %xmm0
    je	L114
L107:
    call	abort
L114:
    vmovss	yv7(%rip), %xmm0
    vmovss	16(%rbp), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L108
    vucomiss	%xmm1, %xmm0
    je	L115
L108:
    call	abort
L115:
    movzwl	yv7 + 4(%rip), %edx
    movzwl	20(%rbp), %eax
    cmpw	%ax, %dx
    je	L91
    call	abort
L91:
    movzwl	yv7 + 8(%rip), %eax
    sall	$7, %eax
    movl	%eax, %edx
    sarw	$7, %dx
    movzwl	24(%rbp), %eax
    sall	$7, %eax
    sarw	$7, %ax
    cmpw	%ax, %dx
    je	L92
    call	abort
L92:
    movzwl	yv7 + 10(%rip), %edx
    movzwl	26(%rbp), %eax
    cmpw	%ax, %dx
    je	L93
    call	abort
L93:
    vmovsd	yv7 + 16(%rip), %xmm0
    vmovsd	32(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L109
    vucomisd	%xmm1, %xmm0
    je	L116
L109:
    call	abort
L116:
    vmovss	yv7 + 24(%rip), %xmm0
    vmovss	40(%rbp), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L110
    vucomiss	%xmm1, %xmm0
    je	L117
L110:
    call	abort
L117:
    vmovss	zv7(%rip), %xmm0
    vmovss	-32(%rbp), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L111
    vucomiss	%xmm1, %xmm0
    je	L118
L111:
    call	abort
L118:
    movl	bav7(%rip), %eax
    cmpl	-20(%rbp), %eax
    je	L100
    call	abort
L100:
    vmovsd	bbv7(%rip), %xmm0
    vmovsd	-48(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L112
    vucomisd	%xmm1, %xmm0
    je	L119
L112:
    call	abort
L119:
    movq	bcv7(%rip), %rdx
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    cmpq	%rax, %rdx
    je	L103
    call	abort
L103:
    movq	bdv7(%rip), %rax
    cmpq	-56(%rbp), %rax
    je	L104
    call	abort
L104:
    movzbl	uv7(%rip), %eax
    leave
    ret
caller_bf7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	bdv7(%rip), %rdx
    movl	bav7(%rip), %esi
    vmovsd	wv7(%rip), %xmm0
    movl	vv7(%rip), %eax
    pushq	yv7 + 24(%rip)
    pushq	yv7 + 16(%rip)
    pushq	yv7 + 8(%rip)
    pushq	yv7(%rip)
    movq	%rdx, %rcx
    movl	$bcv7, %edx
    vmovsd	bbv7(%rip), %xmm2
    movq	zv7(%rip), %rdi
    vmovapd	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	callee_af7
    addq	$32, %rsp
    movb	%al, -1(%rbp)
    movzbl	uv7(%rip), %eax
    cmpb	-1(%rbp), %al
    je	L122
    call	abort
L122:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	caller_bf6
    call	caller_bf7
    movl	$0, %eax
    popq	%rbp
    ret
