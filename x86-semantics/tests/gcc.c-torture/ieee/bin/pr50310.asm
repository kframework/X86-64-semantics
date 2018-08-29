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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
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
    jmp	L46
L49:
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
    je	L47
    vmovsd	LC0(%rip), %xmm0
    jmp	L48
L47:
    vxorpd	%xmm0, %xmm0, %xmm0
L48:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L46:
    cmpl	$3, -4(%rbp)
    jle	L49
    movl	$0, -4(%rbp)
    jmp	L50
L54:
    movl	-4(%rbp), %eax
    leal	4(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    ja	L128
    vmovsd	LC0(%rip), %xmm0
    jmp	L53
L128:
    vxorpd	%xmm0, %xmm0, %xmm0
L53:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L50:
    cmpl	$3, -4(%rbp)
    jle	L54
    movl	$0, -4(%rbp)
    jmp	L55
L58:
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
    je	L56
    vmovsd	LC0(%rip), %xmm0
    jmp	L57
L56:
    vxorpd	%xmm0, %xmm0, %xmm0
L57:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L55:
    cmpl	$3, -4(%rbp)
    jle	L58
    movl	$0, -4(%rbp)
    jmp	L59
L63:
    movl	-4(%rbp), %eax
    leal	12(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jnb	L129
    vmovsd	LC0(%rip), %xmm0
    jmp	L62
L129:
    vxorpd	%xmm0, %xmm0, %xmm0
L62:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L59:
    cmpl	$3, -4(%rbp)
    jle	L63
    movl	$0, -4(%rbp)
    jmp	L64
L67:
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
    je	L65
    vmovsd	LC0(%rip), %xmm0
    jmp	L66
L65:
    vxorpd	%xmm0, %xmm0, %xmm0
L66:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L64:
    cmpl	$3, -4(%rbp)
    jle	L67
    movl	$0, -4(%rbp)
    jmp	L68
L72:
    movl	-4(%rbp), %eax
    leal	20(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    ja	L130
    vmovsd	LC0(%rip), %xmm0
    jmp	L71
L130:
    vxorpd	%xmm0, %xmm0, %xmm0
L71:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L68:
    cmpl	$3, -4(%rbp)
    jle	L72
    movl	$0, -4(%rbp)
    jmp	L73
L76:
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
    je	L74
    vmovsd	LC0(%rip), %xmm0
    jmp	L75
L74:
    vxorpd	%xmm0, %xmm0, %xmm0
L75:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L73:
    cmpl	$3, -4(%rbp)
    jle	L76
    movl	$0, -4(%rbp)
    jmp	L77
L81:
    movl	-4(%rbp), %eax
    leal	28(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jnb	L131
    vmovsd	LC0(%rip), %xmm0
    jmp	L80
L131:
    vxorpd	%xmm0, %xmm0, %xmm0
L80:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L77:
    cmpl	$3, -4(%rbp)
    jle	L81
    movl	$0, -4(%rbp)
    jmp	L82
L85:
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
    je	L83
    vmovsd	LC0(%rip), %xmm0
    jmp	L84
L83:
    vxorpd	%xmm0, %xmm0, %xmm0
L84:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L82:
    cmpl	$3, -4(%rbp)
    jle	L85
    movl	$0, -4(%rbp)
    jmp	L86
L90:
    movl	-4(%rbp), %eax
    leal	36(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L132
    vmovsd	LC0(%rip), %xmm0
    jmp	L89
L132:
    vxorpd	%xmm0, %xmm0, %xmm0
L89:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L86:
    cmpl	$3, -4(%rbp)
    jle	L90
    movl	$0, -4(%rbp)
    jmp	L91
L94:
    movl	-4(%rbp), %eax
    leal	40(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jnp	L92
    vmovsd	LC0(%rip), %xmm0
    jmp	L93
L92:
    vxorpd	%xmm0, %xmm0, %xmm0
L93:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L91:
    cmpl	$3, -4(%rbp)
    jle	L94
    movl	$0, -4(%rbp)
    jmp	L95
L98:
    movl	-4(%rbp), %eax
    leal	44(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L96
    vmovsd	LC0(%rip), %xmm0
    jmp	L97
L96:
    vxorpd	%xmm0, %xmm0, %xmm0
L97:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L95:
    cmpl	$3, -4(%rbp)
    jle	L98
    movl	$0, -4(%rbp)
    jmp	L99
L103:
    movl	-4(%rbp), %eax
    leal	48(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L133
    vmovsd	LC0(%rip), %xmm0
    jmp	L102
L133:
    vxorpd	%xmm0, %xmm0, %xmm0
L102:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L99:
    cmpl	$3, -4(%rbp)
    jle	L103
    movl	$0, -4(%rbp)
    jmp	L104
L108:
    movl	-4(%rbp), %eax
    leal	52(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jb	L134
    vmovsd	LC0(%rip), %xmm0
    jmp	L107
L134:
    vxorpd	%xmm0, %xmm0, %xmm0
L107:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L104:
    cmpl	$3, -4(%rbp)
    jle	L108
    movl	$0, -4(%rbp)
    jmp	L109
L113:
    movl	-4(%rbp), %eax
    leal	56(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm0
    vucomisd	%xmm1, %xmm0
    jbe	L135
    vmovsd	LC0(%rip), %xmm0
    jmp	L112
L135:
    vxorpd	%xmm0, %xmm0, %xmm0
L112:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L109:
    cmpl	$3, -4(%rbp)
    jle	L113
    movl	$0, -4(%rbp)
    jmp	L114
L118:
    movl	-4(%rbp), %eax
    leal	60(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s1(,%rax,8), %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s2(,%rax,8), %xmm1
    vucomisd	%xmm1, %xmm0
    jb	L136
    vmovsd	LC0(%rip), %xmm0
    jmp	L117
L136:
    vxorpd	%xmm0, %xmm0, %xmm0
L117:
    movslq	%edx, %rax
    vmovsd	%xmm0, s3(,%rax,8)
    addl	$1, -4(%rbp)
L114:
    cmpl	$3, -4(%rbp)
    jle	L118
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, s1(%rip)
    vmovsd	LC3(%rip), %xmm0
    vmovsd	%xmm0, s1 + 8(%rip)
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, s1 + 16(%rip)
    vmovsd	LC4(%rip), %xmm0
    vmovsd	%xmm0, s1 + 24(%rip)
    vmovsd	LC3(%rip), %xmm0
    vmovsd	%xmm0, s2(%rip)
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, s2 + 8(%rip)
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, s2 + 16(%rip)
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, s2 + 24(%rip)
    call	foo
    movl	$0, -4(%rbp)
    jmp	L138
L148:
    cmpl	$47, -4(%rbp)
    jle	L139
    movl	-4(%rbp), %eax
    andl	$3, %eax
    cmpl	$3, %eax
    jne	L139
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s3(,%rax,8), %xmm0
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L150
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    je	L142
L150:
    call	abort
L139:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	s3(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    andl	$4, %eax
    testl	%eax, %eax
    je	L143
    movl	-4(%rbp), %eax
    leal	7(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$3, %eax
    cltq
    movl	masks2470(,%rax,4), %eax
    notl	%eax
    jmp	L144
L143:
    movl	-4(%rbp), %eax
    leal	7(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$3, %eax
    cltq
    movl	masks2470(,%rax,4), %eax
L144:
    movl	-4(%rbp), %edx
    andl	$3, %edx
    sarx	%edx, %eax, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L145
    vmovsd	LC0(%rip), %xmm0
    jmp	L146
L145:
    vxorpd	%xmm0, %xmm0, %xmm0
L146:
    vucomisd	%xmm0, %xmm1
    jp	L151
    vucomisd	%xmm0, %xmm1
    je	L142
L151:
    call	abort
L142:
    addl	$1, -4(%rbp)
L138:
    cmpl	$63, -4(%rbp)
    jle	L148
    movl	$0, %eax
    leave
    ret
    .data
masks2470:
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
