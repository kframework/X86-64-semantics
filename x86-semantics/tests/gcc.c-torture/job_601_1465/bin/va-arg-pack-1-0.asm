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
    .globl	v1
    .data
v1:
    .long	8
    .globl	v2
v2:
    .quad	3
    .globl	v3
v3:
    .quad	v2
    .globl	v4
v4:
    .string	"foo"
    .zero	12
    .globl	v5
v5:
    .long	0
    .long	1078198272
    .comm	seen,20,16
    .comm	cnt,4,4
    .text
    .globl	foo1
foo1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$272, %rsp
    movl	%edi, -260(%rbp)
    movl	%esi, -264(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L54
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L54:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$0, -260(%rbp)
    js	L55
    cmpl	$19, -260(%rbp)
    jg	L55
    movl	-260(%rbp), %eax
    cltq
    movzbl	seen(%rax), %eax
    testb	%al, %al
    je	L56
L55:
    call	abort
L56:
    movl	cnt(%rip), %eax
    addl	$1, %eax
    movl	%eax, cnt(%rip)
    movl	cnt(%rip), %eax
    movl	%eax, %edx
    movl	-260(%rbp), %eax
    cltq
    movb	%dl, seen(%rax)
    cmpl	$6, -264(%rbp)
    je	L57
    call	abort
L57:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L58
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L59
L58:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L59:
    movl	(%rax), %eax
    movl	%eax, -252(%rbp)
    cmpl	$5, -252(%rbp)
    je	L60
    call	abort
L60:
    movl	-260(%rbp), %eax
    cmpl	$1, %eax
    je	L62
    cmpl	$2, %eax
    je	L95
    testl	%eax, %eax
    jne	L93
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L65
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L66
L65:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L66:
    movl	(%rax), %eax
    movl	%eax, -252(%rbp)
    cmpl	$9, -252(%rbp)
    jne	L67
    movl	v1(%rip), %eax
    cmpl	$9, %eax
    je	L68
L67:
    call	abort
L68:
    movl	-208(%rbp), %eax
    cmpl	$40, %eax
    jnb	L69
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -208(%rbp)
    jmp	L70
L69:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L70:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, -224(%rbp)
    movq	%rdx, -216(%rbp)
    leaq	-224(%rbp), %rax
    movl	$16, %edx
    movl	$v4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L71
    call	abort
L71:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L72
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L73
L72:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L73:
    movq	(%rax), %rax
    movq	%rax, -248(%rbp)
    cmpq	$v4, -248(%rbp)
    je	L74
    call	abort
L74:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L75
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L76
L75:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L76:
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    cmpq	$3, -240(%rbp)
    jne	L77
    movq	v2(%rip), %rax
    cmpq	$4, %rax
    je	L96
L77:
    call	abort
L62:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L80
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L81
L80:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L81:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -232(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-232(%rbp), %xmm0
    jp	L82
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-232(%rbp), %xmm0
    jne	L82
    vmovsd	v5(%rip), %xmm0
    vucomisd	-232(%rbp), %xmm0
    jp	L82
    vucomisd	-232(%rbp), %xmm0
    je	L94
L82:
    call	abort
L94:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L85
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L86
L85:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L86:
    movl	(%rax), %eax
    movl	%eax, -252(%rbp)
    cmpl	$8, -252(%rbp)
    je	L87
    call	abort
L87:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L88
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L89
L88:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L89:
    movq	(%rax), %rax
    movq	%rax, -248(%rbp)
    cmpq	$v2, -248(%rbp)
    je	L97
    call	abort
L93:
    call	abort
L95:
    nop
    jmp	L79
L96:
    nop
    jmp	L79
L97:
    nop
L79:
    movl	-260(%rbp), %eax
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L92
    call	__stack_chk_fail
L92:
    leave
    ret
    .globl	foo2
foo2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movl	%esi, -280(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L99
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L99:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$0, -276(%rbp)
    js	L100
    cmpl	$19, -276(%rbp)
    jg	L100
    movl	-276(%rbp), %eax
    cltq
    movzbl	seen(%rax), %eax
    testb	%al, %al
    je	L101
L100:
    call	abort
L101:
    movl	cnt(%rip), %eax
    addl	$1, %eax
    movl	%eax, cnt(%rip)
    movl	cnt(%rip), %eax
    orl	$64, %eax
    movl	%eax, %edx
    movl	-276(%rbp), %eax
    cltq
    movb	%dl, seen(%rax)
    cmpl	$10, -280(%rbp)
    je	L102
    call	abort
L102:
    movl	-276(%rbp), %eax
    cmpl	$11, %eax
    je	L129
    cmpl	$12, %eax
    je	L105
    cmpl	$2, %eax
    je	L130
    jmp	L127
L105:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L108
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L109
L108:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L109:
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -264(%rbp)
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-264(%rbp), %xmm0
    jp	L110
    vmovsd	LC0(%rip), %xmm0
    vucomisd	-264(%rbp), %xmm0
    jne	L110
    vmovsd	v5(%rip), %xmm0
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L110
    vmovsd	LC1(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L128
L110:
    call	abort
L128:
    movl	-208(%rbp), %eax
    cmpl	$40, %eax
    jnb	L113
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -208(%rbp)
    jmp	L114
L113:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L114:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movq	%rdx, -232(%rbp)
    leaq	-240(%rbp), %rax
    movl	$16, %edx
    movl	$v4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L115
    call	abort
L115:
    movl	-208(%rbp), %eax
    cmpl	$40, %eax
    jnb	L116
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -208(%rbp)
    jmp	L117
L116:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L117:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, -224(%rbp)
    movq	%rdx, -216(%rbp)
    leaq	-224(%rbp), %rax
    movl	$16, %edx
    movl	$v4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L118
    call	abort
L118:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L119
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L120
L119:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L120:
    movq	(%rax), %rax
    movq	%rax, -256(%rbp)
    cmpq	$v2, -256(%rbp)
    je	L121
    call	abort
L121:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L122
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L123
L122:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L123:
    movq	(%rax), %rax
    movq	%rax, -248(%rbp)
    cmpq	$16, -248(%rbp)
    je	L131
    call	abort
L127:
    call	abort
L129:
    nop
    jmp	L107
L130:
    nop
    jmp	L107
L131:
    nop
L107:
    movl	-276(%rbp), %eax
    addl	$8, %eax
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L126
    call	__stack_chk_fail
L126:
    leave
    ret
    .globl	foo3
foo3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$6, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$40, %rsp
    movq	v2(%rip), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, v2(%rip)
    movl	v1(%rip), %eax
    addl	$1, %eax
    movl	%eax, v1(%rip)
    movl	v1(%rip), %r12d
    movl	$0, -36(%rbp)
    cmpl	$9, -36(%rbp)
    jg	L135
    call	foo3
    movl	%eax, %esi
    movq	v4(%rip), %rax
    movq	v4 + 8(%rip), %rdx
    movl	-36(%rbp), %edi
    pushq	%rbx
    pushq	$v4
    movq	%rax, %r8
    movq	%rdx, %r9
    movl	%r12d, %ecx
    movl	$5, %edx
    movl	$0, %eax
    call	foo1
    addq	$16, %rsp
    jmp	L136
L135:
    call	foo3
    leal	4(%rax), %esi
    movq	v4(%rip), %rdx
    movq	v4 + 8(%rip), %rdi
    movl	-36(%rbp), %eax
    subq	$8, %rsp
    pushq	%rbx
    movl	$v4, %r9d
    movq	%rdx, %rcx
    movq	%rdi, %r8
    movl	%r12d, %edx
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
    addq	$16, %rsp
L136:
    testl	%eax, %eax
    je	L137
    call	abort
L137:
    movq	v3(%rip), %rbx
    vmovsd	v5(%rip), %xmm1
    vmovsd	LC2(%rip), %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, v5(%rip)
    movq	v5(%rip), %r12
    movl	$1, -52(%rbp)
    cmpl	$9, -52(%rbp)
    jg	L138
    call	foo3
    movl	%eax, %esi
    movl	-52(%rbp), %eax
    movq	%rbx, %r8
    movl	$8, %ecx
    vmovq	%r12, %xmm0
    movl	$5, %edx
    movl	%eax, %edi
    movl	$1, %eax
    call	foo1
    jmp	L139
L138:
    call	foo3
    leal	4(%rax), %esi
    movl	-52(%rbp), %eax
    movq	%rbx, %rcx
    movl	$8, %edx
    vmovq	%r12, %xmm0
    movl	%eax, %edi
    movl	$1, %eax
    call	foo2
L139:
    cmpl	$1, %eax
    je	L140
    call	abort
L140:
    movl	$2, -48(%rbp)
    cmpl	$9, -48(%rbp)
    jg	L141
    call	foo3
    movl	%eax, %ecx
    movl	-48(%rbp), %eax
    movl	$5, %edx
    movl	%ecx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    jmp	L142
L141:
    call	foo3
    leal	4(%rax), %edx
    movl	-48(%rbp), %eax
    movl	%edx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
L142:
    cmpl	$2, %eax
    je	L143
    call	abort
L143:
    movl	v1(%rip), %eax
    addl	$2, %eax
    movl	%eax, -44(%rbp)
    cmpl	$9, -44(%rbp)
    jg	L144
    call	foo3
    movl	%eax, %ecx
    movl	-44(%rbp), %eax
    movl	$5, %edx
    movl	%ecx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    jmp	L145
L144:
    call	foo3
    leal	4(%rax), %edx
    movl	-44(%rbp), %eax
    movl	%edx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
L145:
    cmpl	$19, %eax
    je	L146
    call	abort
L146:
    movq	v3(%rip), %r13
    movq	v5(%rip), %r12
    vmovsd	LC2(%rip), %xmm0
    vmovq	%r12, %xmm2
    vsubsd	%xmm0, %xmm2, %xmm0
    vmovsd	%xmm0, v5(%rip)
    movl	v1(%rip), %eax
    addl	$3, %eax
    movl	%eax, -40(%rbp)
    cmpl	$9, -40(%rbp)
    jg	L147
    call	foo3
    movl	%eax, %edi
    movq	v4(%rip), %rdx
    movq	v4 + 8(%rip), %rsi
    movl	-40(%rbp), %eax
    subq	$8, %rsp
    pushq	$16
    pushq	v4 + 8(%rip)
    pushq	v4(%rip)
    movq	%r13, %r9
    movq	%rdx, %rcx
    movq	%rsi, %r8
    vmovq	%r12, %xmm0
    movl	$5, %edx
    movl	%edi, %esi
    movl	%eax, %edi
    movl	$1, %eax
    call	foo1
    addq	$32, %rsp
    jmp	L148
L147:
    call	foo3
    leal	4(%rax), %esi
    movq	v4(%rip), %rcx
    movq	v4 + 8(%rip), %rbx
    movq	v4(%rip), %rax
    movq	v4 + 8(%rip), %rdx
    movl	-40(%rbp), %edi
    pushq	$16
    pushq	%r13
    movq	%rcx, %r8
    movq	%rbx, %r9
    movq	%rdx, %rcx
    movq	%rax, %rdx
    vmovq	%r12, %xmm0
    movl	$1, %eax
    call	foo2
    addq	$16, %rsp
L148:
    cmpl	$20, %eax
    je	L149
    call	abort
L149:
    movl	$0, %eax
    leaq	-24(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1078231040
LC1:
    .long	0
    .long	1078198272
LC2:
    .long	0
    .long	1072693248
