    .file	"pr50310.c"
    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
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
    .globl	strlen
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
    .globl	strcpy
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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    #APP
    # 41 "src/library/mini_stdlib.h" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    #APP
    # 46 "src/library/mini_stdlib.h" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
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
    jmp	L27
L28:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L27:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
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
    jmp	L31
L32:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L31:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L32
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
    jle	L40
    cmpl	$122, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L41
L40:
    cmpl	$64, -4(%rbp)
    jle	L42
    cmpl	$90, -4(%rbp)
    jg	L42
    movl	$1, %eax
    jmp	L41
L42:
    cmpl	$47, -4(%rbp)
    jle	L43
    cmpl	$57, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L41
L43:
    movl	$0, %eax
L41:
    popq	%rbp
    ret
    .comm	s1,32,32
    .comm	s2,32,32
    .comm	s3,512,32
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L45
L48:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L46
    vmovsd	$LC0(%rip), %xmm0
    jmp	L47
L46:
    vxorpd	%xmm0, %xmm0, %xmm0
L47:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L45:
    cmpl	$3, -4(%rbp)
    jle	L48
    movl	$0, -4(%rbp)
    jmp	L49
L53:
    movl	-4(%rbp), %eax
    leal	4(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    ja	L127
    vmovsd	$LC0(%rip), %xmm0
    jmp	L52
L127:
    vxorpd	%xmm0, %xmm0, %xmm0
L52:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L49:
    cmpl	$3, -4(%rbp)
    jle	L53
    movl	$0, -4(%rbp)
    jmp	L54
L57:
    movl	-4(%rbp), %eax
    leal	8(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L55
    vmovsd	$LC0(%rip), %xmm0
    jmp	L56
L55:
    vxorpd	%xmm0, %xmm0, %xmm0
L56:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L54:
    cmpl	$3, -4(%rbp)
    jle	L57
    movl	$0, -4(%rbp)
    jmp	L58
L62:
    movl	-4(%rbp), %eax
    leal	12(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jnb	L128
    vmovsd	$LC0(%rip), %xmm0
    jmp	L61
L128:
    vxorpd	%xmm0, %xmm0, %xmm0
L61:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L58:
    cmpl	$3, -4(%rbp)
    jle	L62
    movl	$0, -4(%rbp)
    jmp	L63
L66:
    movl	-4(%rbp), %eax
    leal	16(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L64
    vmovsd	$LC0(%rip), %xmm0
    jmp	L65
L64:
    vxorpd	%xmm0, %xmm0, %xmm0
L65:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L63:
    cmpl	$3, -4(%rbp)
    jle	L66
    movl	$0, -4(%rbp)
    jmp	L67
L71:
    movl	-4(%rbp), %eax
    leal	20(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    ja	L129
    vmovsd	$LC0(%rip), %xmm0
    jmp	L70
L129:
    vxorpd	%xmm0, %xmm0, %xmm0
L70:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L67:
    cmpl	$3, -4(%rbp)
    jle	L71
    movl	$0, -4(%rbp)
    jmp	L72
L75:
    movl	-4(%rbp), %eax
    leal	24(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L73
    vmovsd	$LC0(%rip), %xmm0
    jmp	L74
L73:
    vxorpd	%xmm0, %xmm0, %xmm0
L74:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L72:
    cmpl	$3, -4(%rbp)
    jle	L75
    movl	$0, -4(%rbp)
    jmp	L76
L80:
    movl	-4(%rbp), %eax
    leal	28(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jnb	L130
    vmovsd	$LC0(%rip), %xmm0
    jmp	L79
L130:
    vxorpd	%xmm0, %xmm0, %xmm0
L79:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L76:
    cmpl	$3, -4(%rbp)
    jle	L80
    movl	$0, -4(%rbp)
    jmp	L81
L84:
    movl	-4(%rbp), %eax
    leal	32(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    sete	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L82
    vmovsd	$LC0(%rip), %xmm0
    jmp	L83
L82:
    vxorpd	%xmm0, %xmm0, %xmm0
L83:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L81:
    cmpl	$3, -4(%rbp)
    jle	L84
    movl	$0, -4(%rbp)
    jmp	L85
L89:
    movl	-4(%rbp), %eax
    leal	36(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L131
    vmovsd	$LC0(%rip), %xmm0
    jmp	L88
L131:
    vxorpd	%xmm0, %xmm0, %xmm0
L88:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L85:
    cmpl	$3, -4(%rbp)
    jle	L89
    movl	$0, -4(%rbp)
    jmp	L90
L93:
    movl	-4(%rbp), %eax
    leal	40(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jnp	L91
    vmovsd	$LC0(%rip), %xmm0
    jmp	L92
L91:
    vxorpd	%xmm0, %xmm0, %xmm0
L92:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L90:
    cmpl	$3, -4(%rbp)
    jle	L93
    movl	$0, -4(%rbp)
    jmp	L94
L97:
    movl	-4(%rbp), %eax
    leal	44(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L95
    vmovsd	$LC0(%rip), %xmm0
    jmp	L96
L95:
    vxorpd	%xmm0, %xmm0, %xmm0
L96:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L94:
    cmpl	$3, -4(%rbp)
    jle	L97
    movl	$0, -4(%rbp)
    jmp	L98
L102:
    movl	-4(%rbp), %eax
    leal	48(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L132
    vmovsd	$LC0(%rip), %xmm0
    jmp	L101
L132:
    vxorpd	%xmm0, %xmm0, %xmm0
L101:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L98:
    cmpl	$3, -4(%rbp)
    jle	L102
    movl	$0, -4(%rbp)
    jmp	L103
L107:
    movl	-4(%rbp), %eax
    leal	52(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jb	L133
    vmovsd	$LC0(%rip), %xmm0
    jmp	L106
L133:
    vxorpd	%xmm0, %xmm0, %xmm0
L106:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L103:
    cmpl	$3, -4(%rbp)
    jle	L107
    movl	$0, -4(%rbp)
    jmp	L108
L112:
    movl	-4(%rbp), %eax
    leal	56(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jbe	L134
    vmovsd	$LC0(%rip), %xmm0
    jmp	L111
L134:
    vxorpd	%xmm0, %xmm0, %xmm0
L111:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L108:
    cmpl	$3, -4(%rbp)
    jle	L112
    movl	$0, -4(%rbp)
    jmp	L113
L117:
    movl	-4(%rbp), %eax
    leal	60(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jb	L135
    vmovsd	$LC0(%rip), %xmm0
    jmp	L116
L135:
    vxorpd	%xmm0, %xmm0, %xmm0
L116:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L113:
    cmpl	$3, -4(%rbp)
    jle	L117
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, $s1(%rip)
    vmovsd	$LC3(%rip), %xmm0
    vmovsd	%xmm0, $s1 + 8(%rip)
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, $s1 + 16(%rip)
    vmovsd	$LC4(%rip), %xmm0
    vmovsd	%xmm0, $s1 + 24(%rip)
    vmovsd	$LC3(%rip), %xmm0
    vmovsd	%xmm0, $s2(%rip)
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, $s2 + 8(%rip)
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, $s2 + 16(%rip)
    vmovsd	$LC2(%rip), %xmm0
    vmovsd	%xmm0, $s2 + 24(%rip)
    call	foo
    movl	$0, -4(%rbp)
    jmp	L137
L147:
    cmpl	$47, -4(%rbp)
    jle	L138
    movl	-4(%rbp), %eax
    andl	$3, %eax
    cmpl	$3, %eax
    jne	L138
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s3(,%rax,8), %xmm0
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L149
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    je	L141
L149:
    call	abort
L138:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s3(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    andl	$4, %eax
    testl	%eax, %eax
    je	L142
    movl	-4(%rbp), %eax
    leal	7(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$3, %eax
    cltq
    movl	masks.2468(,%rax,4), %eax
    notl	%eax
    jmp	L143
L142:
    movl	-4(%rbp), %eax
    leal	7(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$3, %eax
    cltq
    movl	masks.2468(,%rax,4), %eax
L143:
    movl	-4(%rbp), %edx
    andl	$3, %edx
    sarx	%edx, %eax, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L144
    vmovsd	$LC0(%rip), %xmm0
    jmp	L145
L144:
    vxorpd	%xmm0, %xmm0, %xmm0
L145:
    vucomisd	%xmm0, %xmm1
    jp	L150
    vucomisd	%xmm0, %xmm1
    je	L141
L150:
    call	abort
L141:
    addl	$1, -4(%rbp)
L137:
    cmpl	$63, -4(%rbp)
    jle	L147
    movl	$0, %eax
    leave
    ret
    .data
masks.2468:
    .long	2
    .long	6
    .long	1
    .long	5
    .long	3
    .long	8
    .long	2
    .long	1
    .section	.rodata
LC0:
    .long	0
    .long	-1074790400
LC2:
    .long	0
    .long	1075052544
LC3:
    .long	0
    .long	1075314688
LC4:
    .long	0
    .long	2146959360
