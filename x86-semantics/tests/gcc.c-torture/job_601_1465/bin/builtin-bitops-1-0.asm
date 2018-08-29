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
    .globl	my_ffs
my_ffs:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    cmpl	$0, -20(%rbp)
    jne	L58
    movl	$0, %eax
    jmp	L59
L58:
    movl	$0, -4(%rbp)
    jmp	L60
L63:
    movl	-4(%rbp), %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    testl	%eax, %eax
    jne	L64
    addl	$1, -4(%rbp)
L60:
    movl	-4(%rbp), %eax
    cmpl	$31, %eax
    jbe	L63
    jmp	L62
L64:
    nop
L62:
    movl	-4(%rbp), %eax
    addl	$1, %eax
L59:
    popq	%rbp
    ret
    .globl	my_ctz
my_ctz:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$0, -4(%rbp)
    jmp	L66
L69:
    movl	-4(%rbp), %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    testl	%eax, %eax
    jne	L71
    addl	$1, -4(%rbp)
L66:
    movl	-4(%rbp), %eax
    cmpl	$31, %eax
    jbe	L69
    jmp	L68
L71:
    nop
L68:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clz
my_clz:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$0, -4(%rbp)
    jmp	L73
L76:
    movl	-4(%rbp), %eax
    movl	$31, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    testl	%eax, %eax
    jne	L78
    addl	$1, -4(%rbp)
L73:
    movl	-4(%rbp), %eax
    cmpl	$31, %eax
    jbe	L76
    jmp	L75
L78:
    nop
L75:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clrsb
my_clrsb:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	-20(%rbp), %eax
    shrl	$31, %eax
    movl	%eax, -4(%rbp)
    movl	$1, -8(%rbp)
    jmp	L80
L83:
    movl	-8(%rbp), %eax
    movl	$31, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    cmpl	%eax, %edx
    jne	L85
    addl	$1, -8(%rbp)
L80:
    movl	-8(%rbp), %eax
    cmpl	$31, %eax
    jbe	L83
    jmp	L82
L85:
    nop
L82:
    movl	-8(%rbp), %eax
    subl	$1, %eax
    popq	%rbp
    ret
    .globl	my_popcount
my_popcount:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L87
L89:
    movl	-8(%rbp), %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L88
    addl	$1, -4(%rbp)
L88:
    addl	$1, -8(%rbp)
L87:
    movl	-8(%rbp), %eax
    cmpl	$31, %eax
    jbe	L89
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_parity
my_parity:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L92
L94:
    movl	-8(%rbp), %eax
    movl	-20(%rbp), %edx
    shrx	%eax, %edx, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L93
    addl	$1, -4(%rbp)
L93:
    addl	$1, -8(%rbp)
L92:
    movl	-8(%rbp), %eax
    cmpl	$31, %eax
    jbe	L94
    movl	-4(%rbp), %eax
    andl	$1, %eax
    popq	%rbp
    ret
    .globl	my_ffsl
my_ffsl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    cmpq	$0, -24(%rbp)
    jne	L97
    movl	$0, %eax
    jmp	L98
L97:
    movl	$0, -4(%rbp)
    jmp	L99
L102:
    movl	-4(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L103
    addl	$1, -4(%rbp)
L99:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L102
    jmp	L101
L103:
    nop
L101:
    movl	-4(%rbp), %eax
    addl	$1, %eax
L98:
    popq	%rbp
    ret
    .globl	my_ctzl
my_ctzl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    jmp	L105
L108:
    movl	-4(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L110
    addl	$1, -4(%rbp)
L105:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L108
    jmp	L107
L110:
    nop
L107:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clzl
my_clzl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    jmp	L112
L115:
    movl	-4(%rbp), %eax
    movl	$63, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L117
    addl	$1, -4(%rbp)
L112:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L115
    jmp	L114
L117:
    nop
L114:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clrsbl
my_clrsbl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    shrq	$63, %rax
    movl	%eax, -4(%rbp)
    movl	$1, -8(%rbp)
    jmp	L119
L122:
    movl	-8(%rbp), %eax
    movl	$63, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    movq	%rax, %rdx
    movl	-4(%rbp), %eax
    cltq
    cmpq	%rax, %rdx
    jne	L124
    addl	$1, -8(%rbp)
L119:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L122
    jmp	L121
L124:
    nop
L121:
    movl	-8(%rbp), %eax
    subl	$1, %eax
    popq	%rbp
    ret
    .globl	my_popcountl
my_popcountl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L126
L128:
    movl	-8(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L127
    addl	$1, -4(%rbp)
L127:
    addl	$1, -8(%rbp)
L126:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L128
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_parityl
my_parityl:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L131
L133:
    movl	-8(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L132
    addl	$1, -4(%rbp)
L132:
    addl	$1, -8(%rbp)
L131:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L133
    movl	-4(%rbp), %eax
    andl	$1, %eax
    popq	%rbp
    ret
    .globl	my_ffsll
my_ffsll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    cmpq	$0, -24(%rbp)
    jne	L136
    movl	$0, %eax
    jmp	L137
L136:
    movl	$0, -4(%rbp)
    jmp	L138
L141:
    movl	-4(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L142
    addl	$1, -4(%rbp)
L138:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L141
    jmp	L140
L142:
    nop
L140:
    movl	-4(%rbp), %eax
    addl	$1, %eax
L137:
    popq	%rbp
    ret
    .globl	my_ctzll
my_ctzll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    jmp	L144
L147:
    movl	-4(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L149
    addl	$1, -4(%rbp)
L144:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L147
    jmp	L146
L149:
    nop
L146:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clzll
my_clzll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    jmp	L151
L154:
    movl	-4(%rbp), %eax
    movl	$63, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    jne	L156
    addl	$1, -4(%rbp)
L151:
    movl	-4(%rbp), %eax
    cmpl	$63, %eax
    jbe	L154
    jmp	L153
L156:
    nop
L153:
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_clrsbll
my_clrsbll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    shrq	$63, %rax
    movl	%eax, -4(%rbp)
    movl	$1, -8(%rbp)
    jmp	L158
L161:
    movl	-8(%rbp), %eax
    movl	$63, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    movq	%rax, %rdx
    movl	-4(%rbp), %eax
    cltq
    cmpq	%rax, %rdx
    jne	L163
    addl	$1, -8(%rbp)
L158:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L161
    jmp	L160
L163:
    nop
L160:
    movl	-8(%rbp), %eax
    subl	$1, %eax
    popq	%rbp
    ret
    .globl	my_popcountll
my_popcountll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L165
L167:
    movl	-8(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L166
    addl	$1, -4(%rbp)
L166:
    addl	$1, -8(%rbp)
L165:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L167
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	my_parityll
my_parityll:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	$0, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L170
L172:
    movl	-8(%rbp), %eax
    movq	-24(%rbp), %rdx
    shrx	%rax, %rdx, %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L171
    addl	$1, -4(%rbp)
L171:
    addl	$1, -8(%rbp)
L170:
    movl	-8(%rbp), %eax
    cmpl	$63, %eax
    jbe	L172
    movl	-4(%rbp), %eax
    andl	$1, %eax
    popq	%rbp
    ret
    .globl	ints
    .data
ints:
    .long	0
    .long	1
    .long	-2147483648
    .long	2
    .long	1073741824
    .long	65536
    .long	32768
    .long	-1515870811
    .long	1515870810
    .long	-889323520
    .long	13303296
    .long	51966
    .long	-1
    .globl	longs
longs:
    .quad	0
    .quad	1
    .quad	-9223372036854775808
    .quad	2
    .quad	4611686018427387904
    .quad	4294967296
    .quad	2147483648
    .quad	-6510615555426900571
    .quad	6510615555426900570
    .quad	-3819392241693097984
    .quad	223195676147712
    .quad	3405695742
    .quad	-1
    .globl	longlongs
longlongs:
    .quad	0
    .quad	1
    .quad	-9223372036854775808
    .quad	2
    .quad	4611686018427387904
    .quad	4294967296
    .quad	2147483648
    .quad	-6510615555426900571
    .quad	6510615555426900570
    .quad	-3819392241693097984
    .quad	223195676147712
    .quad	3405695742
    .quad	-1
    .globl	__clrsbdi2
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$24, %rsp
    movl	$0, -20(%rbp)
    jmp	L175
L182:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edx
    movl	$-1, %eax
    bsfl	%edx, %ebx
    cmove	%eax, %ebx
    addl	$1, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_ffs
    cmpl	%eax, %ebx
    je	L176
    call	abort
L176:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    testl	%eax, %eax
    je	L177
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    xorl	%ebx, %ebx
    lzcntl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_clz
    cmpl	%eax, %ebx
    je	L177
    call	abort
L177:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    testl	%eax, %eax
    je	L178
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    xorl	%ebx, %ebx
    tzcntl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_ctz
    cmpl	%eax, %ebx
    je	L178
    call	abort
L178:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    cltq
    movq	%rax, %rdi
    call	__clrsbdi2
    movl	%eax, %eax
    subq	$32, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_clrsb
    cmpl	%eax, %ebx
    je	L179
    call	abort
L179:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    xorl	%ebx, %ebx
    popcntl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_popcount
    cmpl	%eax, %ebx
    je	L180
    call	abort
L180:
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    popcntl	%eax, %eax
    andl	$1, %eax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movl	ints(,%rax,4), %eax
    movl	%eax, %edi
    call	my_parity
    cmpl	%eax, %ebx
    je	L181
    call	abort
L181:
    addl	$1, -20(%rbp)
L175:
    movl	-20(%rbp), %eax
    cmpl	$12, %eax
    jbe	L182
    movl	$0, -20(%rbp)
    jmp	L183
L190:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	$-1, %rdx
    bsfq	%rax, %rax
    cmove	%rdx, %rax
    addq	$1, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_ffsl
    cmpl	%eax, %ebx
    je	L184
    call	abort
L184:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    testq	%rax, %rax
    je	L185
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    lzcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_clzl
    cmpl	%eax, %ebx
    je	L185
    call	abort
L185:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    testq	%rax, %rax
    je	L186
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    tzcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_ctzl
    cmpl	%eax, %ebx
    je	L186
    call	abort
L186:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	__clrsbdi2
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_clrsbl
    cmpl	%eax, %ebx
    je	L187
    call	abort
L187:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    popcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_popcountl
    cmpl	%eax, %ebx
    je	L188
    call	abort
L188:
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    popcntq	%rax, %rax
    andl	$1, %eax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_parityl
    cmpl	%eax, %ebx
    je	L189
    call	abort
L189:
    addl	$1, -20(%rbp)
L183:
    movl	-20(%rbp), %eax
    cmpl	$12, %eax
    jbe	L190
    movl	$0, -20(%rbp)
    jmp	L191
L198:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	$-1, %rdx
    bsfq	%rax, %rax
    cmove	%rdx, %rax
    addq	$1, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_ffsll
    cmpl	%eax, %ebx
    je	L192
    call	abort
L192:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    testq	%rax, %rax
    je	L193
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    lzcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_clzll
    cmpl	%eax, %ebx
    je	L193
    call	abort
L193:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    testq	%rax, %rax
    je	L194
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    tzcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_ctzll
    cmpl	%eax, %ebx
    je	L194
    call	abort
L194:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	__clrsbdi2
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_clrsbll
    cmpl	%eax, %ebx
    je	L195
    call	abort
L195:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    popcntq	%rax, %rax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_popcountll
    cmpl	%eax, %ebx
    je	L196
    call	abort
L196:
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    popcntq	%rax, %rax
    andl	$1, %eax
    movl	%eax, %ebx
    movl	-20(%rbp), %eax
    cltq
    movq	longlongs(,%rax,8), %rax
    movq	%rax, %rdi
    call	my_parityll
    cmpl	%eax, %ebx
    je	L197
    call	abort
L197:
    addl	$1, -20(%rbp)
L191:
    movl	-20(%rbp), %eax
    cmpl	$12, %eax
    jbe	L198
    movl	$0, %edi
    call	my_ffs
    testl	%eax, %eax
    je	L199
    call	abort
L199:
    movl	$0, %edi
    call	my_clrsb
    cmpl	$31, %eax
    je	L200
    call	abort
L200:
    movl	$0, %edi
    call	my_popcount
    testl	%eax, %eax
    je	L201
    call	abort
L201:
    movl	$0, %edi
    call	my_parity
    testl	%eax, %eax
    je	L202
    call	abort
L202:
    movl	$1, %edi
    call	my_ffs
    cmpl	$1, %eax
    je	L203
    call	abort
L203:
    movl	$1, %edi
    call	my_clz
    cmpl	$31, %eax
    je	L204
    call	abort
L204:
    movl	$1, %edi
    call	my_ctz
    testl	%eax, %eax
    je	L205
    call	abort
L205:
    movl	$1, %edi
    call	my_clrsb
    cmpl	$30, %eax
    je	L206
    call	abort
L206:
    movl	$1, %edi
    call	my_popcount
    cmpl	$1, %eax
    je	L207
    call	abort
L207:
    movl	$1, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L208
    call	abort
L208:
    movl	$-2147483648, %edi
    call	my_ffs
    cmpl	$32, %eax
    je	L209
    call	abort
L209:
    movl	$-2147483648, %edi
    call	my_clz
    testl	%eax, %eax
    je	L210
    call	abort
L210:
    movl	$-2147483648, %edi
    call	my_ctz
    cmpl	$31, %eax
    je	L211
    call	abort
L211:
    movl	$-2147483648, %edi
    call	my_clrsb
    testl	%eax, %eax
    je	L212
    call	abort
L212:
    movl	$-2147483648, %edi
    call	my_popcount
    cmpl	$1, %eax
    je	L213
    call	abort
L213:
    movl	$-2147483648, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L214
    call	abort
L214:
    movl	$1073741824, %edi
    call	my_ffs
    cmpl	$31, %eax
    je	L215
    call	abort
L215:
    movl	$1073741824, %edi
    call	my_clz
    cmpl	$1, %eax
    je	L216
    call	abort
L216:
    movl	$1073741824, %edi
    call	my_ctz
    cmpl	$30, %eax
    je	L217
    call	abort
L217:
    movl	$1073741824, %edi
    call	my_clrsb
    testl	%eax, %eax
    je	L218
    call	abort
L218:
    movl	$1073741824, %edi
    call	my_popcount
    cmpl	$1, %eax
    je	L219
    call	abort
L219:
    movl	$1073741824, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L220
    call	abort
L220:
    movl	$65536, %edi
    call	my_ffs
    cmpl	$17, %eax
    je	L221
    call	abort
L221:
    movl	$65536, %edi
    call	my_clz
    cmpl	$15, %eax
    je	L222
    call	abort
L222:
    movl	$65536, %edi
    call	my_ctz
    cmpl	$16, %eax
    je	L223
    call	abort
L223:
    movl	$65536, %edi
    call	my_clrsb
    cmpl	$14, %eax
    je	L224
    call	abort
L224:
    movl	$65536, %edi
    call	my_popcount
    cmpl	$1, %eax
    je	L225
    call	abort
L225:
    movl	$65536, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L226
    call	abort
L226:
    movl	$32768, %edi
    call	my_ffs
    cmpl	$16, %eax
    je	L227
    call	abort
L227:
    movl	$32768, %edi
    call	my_clz
    cmpl	$16, %eax
    je	L228
    call	abort
L228:
    movl	$32768, %edi
    call	my_ctz
    cmpl	$15, %eax
    je	L229
    call	abort
L229:
    movl	$32768, %edi
    call	my_clrsb
    cmpl	$15, %eax
    je	L230
    call	abort
L230:
    movl	$32768, %edi
    call	my_popcount
    cmpl	$1, %eax
    je	L231
    call	abort
L231:
    movl	$32768, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L232
    call	abort
L232:
    movl	$-1515870811, %edi
    call	my_ffs
    cmpl	$1, %eax
    je	L233
    call	abort
L233:
    movl	$-1515870811, %edi
    call	my_clz
    testl	%eax, %eax
    je	L234
    call	abort
L234:
    movl	$-1515870811, %edi
    call	my_ctz
    testl	%eax, %eax
    je	L235
    call	abort
L235:
    movl	$-1515870811, %edi
    call	my_clrsb
    testl	%eax, %eax
    je	L236
    call	abort
L236:
    movl	$-1515870811, %edi
    call	my_popcount
    cmpl	$16, %eax
    je	L237
    call	abort
L237:
    movl	$-1515870811, %edi
    call	my_parity
    testl	%eax, %eax
    je	L238
    call	abort
L238:
    movl	$1515870810, %edi
    call	my_ffs
    cmpl	$2, %eax
    je	L239
    call	abort
L239:
    movl	$1515870810, %edi
    call	my_clz
    cmpl	$1, %eax
    je	L240
    call	abort
L240:
    movl	$1515870810, %edi
    call	my_ctz
    cmpl	$1, %eax
    je	L241
    call	abort
L241:
    movl	$1515870810, %edi
    call	my_clrsb
    testl	%eax, %eax
    je	L242
    call	abort
L242:
    movl	$1515870810, %edi
    call	my_popcount
    cmpl	$16, %eax
    je	L243
    call	abort
L243:
    movl	$1515870810, %edi
    call	my_parity
    testl	%eax, %eax
    je	L244
    call	abort
L244:
    movl	$-889323520, %edi
    call	my_ffs
    cmpl	$18, %eax
    je	L245
    call	abort
L245:
    movl	$-889323520, %edi
    call	my_clz
    testl	%eax, %eax
    je	L246
    call	abort
L246:
    movl	$-889323520, %edi
    call	my_ctz
    cmpl	$17, %eax
    je	L247
    call	abort
L247:
    movl	$-889323520, %edi
    call	my_clrsb
    cmpl	$1, %eax
    je	L248
    call	abort
L248:
    movl	$-889323520, %edi
    call	my_popcount
    cmpl	$11, %eax
    je	L249
    call	abort
L249:
    movl	$-889323520, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L250
    call	abort
L250:
    movl	$13303296, %edi
    call	my_ffs
    cmpl	$10, %eax
    je	L251
    call	abort
L251:
    movl	$13303296, %edi
    call	my_clz
    cmpl	$8, %eax
    je	L252
    call	abort
L252:
    movl	$13303296, %edi
    call	my_ctz
    cmpl	$9, %eax
    je	L253
    call	abort
L253:
    movl	$13303296, %edi
    call	my_clrsb
    cmpl	$7, %eax
    je	L254
    call	abort
L254:
    movl	$13303296, %edi
    call	my_popcount
    cmpl	$11, %eax
    je	L255
    call	abort
L255:
    movl	$13303296, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L256
    call	abort
L256:
    movl	$51966, %edi
    call	my_ffs
    cmpl	$2, %eax
    je	L257
    call	abort
L257:
    movl	$51966, %edi
    call	my_clz
    cmpl	$16, %eax
    je	L258
    call	abort
L258:
    movl	$51966, %edi
    call	my_ctz
    cmpl	$1, %eax
    je	L259
    call	abort
L259:
    movl	$51966, %edi
    call	my_clrsb
    cmpl	$15, %eax
    je	L260
    call	abort
L260:
    movl	$51966, %edi
    call	my_popcount
    cmpl	$11, %eax
    je	L261
    call	abort
L261:
    movl	$51966, %edi
    call	my_parity
    cmpl	$1, %eax
    je	L262
    call	abort
L262:
    movl	$-1, %edi
    call	my_ffs
    cmpl	$1, %eax
    je	L263
    call	abort
L263:
    movl	$-1, %edi
    call	my_clz
    testl	%eax, %eax
    je	L264
    call	abort
L264:
    movl	$-1, %edi
    call	my_ctz
    testl	%eax, %eax
    je	L265
    call	abort
L265:
    movl	$-1, %edi
    call	my_clrsb
    cmpl	$31, %eax
    je	L266
    call	abort
L266:
    movl	$-1, %edi
    call	my_popcount
    cmpl	$32, %eax
    je	L267
    call	abort
L267:
    movl	$-1, %edi
    call	my_parity
    testl	%eax, %eax
    je	L268
    call	abort
L268:
    movl	$0, %edi
    call	my_ffsll
    testl	%eax, %eax
    je	L269
    call	abort
L269:
    movl	$0, %edi
    call	my_clrsbll
    cmpl	$63, %eax
    je	L270
    call	abort
L270:
    movl	$0, %edi
    call	my_popcountll
    testl	%eax, %eax
    je	L271
    call	abort
L271:
    movl	$0, %edi
    call	my_parityll
    testl	%eax, %eax
    je	L272
    call	abort
L272:
    movl	$1, %edi
    call	my_ffsll
    cmpl	$1, %eax
    je	L273
    call	abort
L273:
    movl	$1, %edi
    call	my_clzll
    cmpl	$63, %eax
    je	L274
    call	abort
L274:
    movl	$1, %edi
    call	my_ctzll
    testl	%eax, %eax
    je	L275
    call	abort
L275:
    movl	$1, %edi
    call	my_clrsbll
    cmpl	$62, %eax
    je	L276
    call	abort
L276:
    movl	$1, %edi
    call	my_popcountll
    cmpl	$1, %eax
    je	L277
    call	abort
L277:
    movl	$1, %edi
    call	my_parityll
    cmpl	$1, %eax
    je	L278
    call	abort
L278:
    movabsq	$-9223372036854775808, %rdi
    call	my_ffsll
    cmpl	$64, %eax
    je	L279
    call	abort
L279:
    movabsq	$-9223372036854775808, %rdi
    call	my_clzll
    testl	%eax, %eax
    je	L280
    call	abort
L280:
    movabsq	$-9223372036854775808, %rdi
    call	my_ctzll
    cmpl	$63, %eax
    je	L281
    call	abort
L281:
    movabsq	$-9223372036854775808, %rdi
    call	my_clrsbll
    testl	%eax, %eax
    je	L282
    call	abort
L282:
    movabsq	$-9223372036854775808, %rdi
    call	my_popcountll
    cmpl	$1, %eax
    je	L283
    call	abort
L283:
    movabsq	$-9223372036854775808, %rdi
    call	my_parityll
    cmpl	$1, %eax
    je	L284
    call	abort
L284:
    movl	$2, %edi
    call	my_ffsll
    cmpl	$2, %eax
    je	L285
    call	abort
L285:
    movl	$2, %edi
    call	my_clzll
    cmpl	$62, %eax
    je	L286
    call	abort
L286:
    movl	$2, %edi
    call	my_ctzll
    cmpl	$1, %eax
    je	L287
    call	abort
L287:
    movl	$2, %edi
    call	my_clrsbll
    cmpl	$61, %eax
    je	L288
    call	abort
L288:
    movl	$2, %edi
    call	my_popcountll
    cmpl	$1, %eax
    je	L289
    call	abort
L289:
    movl	$2, %edi
    call	my_parityll
    cmpl	$1, %eax
    je	L290
    call	abort
L290:
    movabsq	$4611686018427387904, %rdi
    call	my_ffsll
    cmpl	$63, %eax
    je	L291
    call	abort
L291:
    movabsq	$4611686018427387904, %rdi
    call	my_clzll
    cmpl	$1, %eax
    je	L292
    call	abort
L292:
    movabsq	$4611686018427387904, %rdi
    call	my_ctzll
    cmpl	$62, %eax
    je	L293
    call	abort
L293:
    movabsq	$4611686018427387904, %rdi
    call	my_clrsbll
    testl	%eax, %eax
    je	L294
    call	abort
L294:
    movabsq	$4611686018427387904, %rdi
    call	my_popcountll
    cmpl	$1, %eax
    je	L295
    call	abort
L295:
    movabsq	$4611686018427387904, %rdi
    call	my_parityll
    cmpl	$1, %eax
    je	L296
    call	abort
L296:
    movabsq	$4294967296, %rdi
    call	my_ffsll
    cmpl	$33, %eax
    je	L297
    call	abort
L297:
    movabsq	$4294967296, %rdi
    call	my_clzll
    cmpl	$31, %eax
    je	L298
    call	abort
L298:
    movabsq	$4294967296, %rdi
    call	my_ctzll
    cmpl	$32, %eax
    je	L299
    call	abort
L299:
    movabsq	$4294967296, %rdi
    call	my_clrsbll
    cmpl	$30, %eax
    je	L300
    call	abort
L300:
    movabsq	$4294967296, %rdi
    call	my_popcountll
    cmpl	$1, %eax
    je	L301
    call	abort
L301:
    movabsq	$4294967296, %rdi
    call	my_parityll
    cmpl	$1, %eax
    je	L302
    call	abort
L302:
    movl	$2147483648, %edi
    call	my_ffsll
    cmpl	$32, %eax
    je	L303
    call	abort
L303:
    movl	$2147483648, %edi
    call	my_clzll
    cmpl	$32, %eax
    je	L304
    call	abort
L304:
    movl	$2147483648, %edi
    call	my_ctzll
    cmpl	$31, %eax
    je	L305
    call	abort
L305:
    movl	$2147483648, %edi
    call	my_clrsbll
    cmpl	$31, %eax
    je	L306
    call	abort
L306:
    movl	$2147483648, %edi
    call	my_popcountll
    cmpl	$1, %eax
    je	L307
    call	abort
L307:
    movl	$2147483648, %edi
    call	my_parityll
    cmpl	$1, %eax
    je	L308
    call	abort
L308:
    movabsq	$-6510615555426900571, %rdi
    call	my_ffsll
    cmpl	$1, %eax
    je	L309
    call	abort
L309:
    movabsq	$-6510615555426900571, %rdi
    call	my_clzll
    testl	%eax, %eax
    je	L310
    call	abort
L310:
    movabsq	$-6510615555426900571, %rdi
    call	my_ctzll
    testl	%eax, %eax
    je	L311
    call	abort
L311:
    movabsq	$-6510615555426900571, %rdi
    call	my_clrsbll
    testl	%eax, %eax
    je	L312
    call	abort
L312:
    movabsq	$-6510615555426900571, %rdi
    call	my_popcountll
    cmpl	$32, %eax
    je	L313
    call	abort
L313:
    movabsq	$-6510615555426900571, %rdi
    call	my_parityll
    testl	%eax, %eax
    je	L314
    call	abort
L314:
    movabsq	$6510615555426900570, %rdi
    call	my_ffsll
    cmpl	$2, %eax
    je	L315
    call	abort
L315:
    movabsq	$6510615555426900570, %rdi
    call	my_clzll
    cmpl	$1, %eax
    je	L316
    call	abort
L316:
    movabsq	$6510615555426900570, %rdi
    call	my_ctzll
    cmpl	$1, %eax
    je	L317
    call	abort
L317:
    movabsq	$6510615555426900570, %rdi
    call	my_clrsbll
    testl	%eax, %eax
    je	L318
    call	abort
L318:
    movabsq	$6510615555426900570, %rdi
    call	my_popcountll
    cmpl	$32, %eax
    je	L319
    call	abort
L319:
    movabsq	$6510615555426900570, %rdi
    call	my_parityll
    testl	%eax, %eax
    je	L320
    call	abort
L320:
    movabsq	$-3819392241693097984, %rdi
    call	my_ffsll
    cmpl	$34, %eax
    je	L321
    call	abort
L321:
    movabsq	$-3819392241693097984, %rdi
    call	my_clzll
    testl	%eax, %eax
    je	L322
    call	abort
L322:
    movabsq	$-3819392241693097984, %rdi
    call	my_ctzll
    cmpl	$33, %eax
    je	L323
    call	abort
L323:
    movabsq	$-3819392241693097984, %rdi
    call	my_clrsbll
    cmpl	$1, %eax
    je	L324
    call	abort
L324:
    movabsq	$-3819392241693097984, %rdi
    call	my_popcountll
    cmpl	$22, %eax
    je	L325
    call	abort
L325:
    movabsq	$-3819392241693097984, %rdi
    call	my_parityll
    testl	%eax, %eax
    je	L326
    call	abort
L326:
    movabsq	$223195676147712, %rdi
    call	my_ffsll
    cmpl	$18, %eax
    je	L327
    call	abort
L327:
    movabsq	$223195676147712, %rdi
    call	my_clzll
    cmpl	$16, %eax
    je	L328
    call	abort
L328:
    movabsq	$223195676147712, %rdi
    call	my_ctzll
    cmpl	$17, %eax
    je	L329
    call	abort
L329:
    movabsq	$223195676147712, %rdi
    call	my_clrsbll
    cmpl	$15, %eax
    je	L330
    call	abort
L330:
    movabsq	$223195676147712, %rdi
    call	my_popcountll
    cmpl	$22, %eax
    je	L331
    call	abort
L331:
    movabsq	$223195676147712, %rdi
    call	my_parityll
    testl	%eax, %eax
    je	L332
    call	abort
L332:
    movl	$3405695742, %edi
    call	my_ffsll
    cmpl	$2, %eax
    je	L333
    call	abort
L333:
    movl	$3405695742, %edi
    call	my_clzll
    cmpl	$32, %eax
    je	L334
    call	abort
L334:
    movl	$3405695742, %edi
    call	my_ctzll
    cmpl	$1, %eax
    je	L335
    call	abort
L335:
    movl	$3405695742, %edi
    call	my_clrsbll
    cmpl	$31, %eax
    je	L336
    call	abort
L336:
    movl	$3405695742, %edi
    call	my_popcountll
    cmpl	$22, %eax
    je	L337
    call	abort
L337:
    movl	$3405695742, %edi
    call	my_parityll
    testl	%eax, %eax
    je	L338
    call	abort
L338:
    movq	$-1, %rdi
    call	my_ffsll
    cmpl	$1, %eax
    je	L339
    call	abort
L339:
    movq	$-1, %rdi
    call	my_clzll
    testl	%eax, %eax
    je	L340
    call	abort
L340:
    movq	$-1, %rdi
    call	my_ctzll
    testl	%eax, %eax
    je	L341
    call	abort
L341:
    movq	$-1, %rdi
    call	my_clrsbll
    cmpl	$63, %eax
    je	L342
    call	abort
L342:
    movq	$-1, %rdi
    call	my_popcountll
    cmpl	$64, %eax
    je	L343
    call	abort
L343:
    movq	$-1, %rdi
    call	my_parityll
    testl	%eax, %eax
    je	L344
    call	abort
L344:
    movl	$0, %edi
    call	exit
