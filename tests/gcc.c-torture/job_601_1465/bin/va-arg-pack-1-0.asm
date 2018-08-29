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
    .long	2684354560
    .long	16388
    .long	0
    .comm	seen,20,16
    .comm	cnt,4,4
    .text
    .globl	foo1
foo1:
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
    cmpl	$0, -276(%rbp)
    js	L55
    cmpl	$19, -276(%rbp)
    jg	L55
    movl	-276(%rbp), %eax
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
    movl	-276(%rbp), %eax
    cltq
    movb	%dl, seen(%rax)
    cmpl	$6, -280(%rbp)
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
    movl	%eax, -260(%rbp)
    cmpl	$5, -260(%rbp)
    je	L60
    call	abort
L60:
    movl	-276(%rbp), %eax
    cmpl	$1, %eax
    je	L62
    cmpl	$2, %eax
    je	L93
    testl	%eax, %eax
    jne	L91
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
    movl	%eax, -260(%rbp)
    cmpl	$9, -260(%rbp)
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
    movq	%rax, -256(%rbp)
    cmpq	$v4, -256(%rbp)
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
    movq	%rax, -248(%rbp)
    cmpq	$3, -248(%rbp)
    jne	L77
    movq	v2(%rip), %rax
    cmpq	$4, %rax
    je	L94
L77:
    call	abort
L62:
    movq	-200(%rbp), %rax
    addq	$15, %rax
    andq	$-16, %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
    fldt	(%rax)
    fstpt	-240(%rbp)
    fldt	-240(%rbp)
    fldt	LC0(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jp	L80
    fldt	-240(%rbp)
    fldt	LC0(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L80
    fldt	v5(%rip)
    fldt	-240(%rbp)
    fucomip	%st(1), %st
    jp	L96
    fldt	-240(%rbp)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L92
    jmp	L80
L96:
    fstp	%st(0)
L80:
    call	abort
L92:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L83
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L84
L83:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L84:
    movl	(%rax), %eax
    movl	%eax, -260(%rbp)
    cmpl	$8, -260(%rbp)
    je	L85
    call	abort
L85:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L86
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L87
L86:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L87:
    movq	(%rax), %rax
    movq	%rax, -256(%rbp)
    cmpq	$v2, -256(%rbp)
    je	L95
    call	abort
L91:
    call	abort
L93:
    nop
    jmp	L79
L94:
    nop
    jmp	L79
L95:
    nop
L79:
    movl	-276(%rbp), %eax
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L90
    call	__stack_chk_fail
L90:
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
    je	L98
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L98:
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
    js	L99
    cmpl	$19, -276(%rbp)
    jg	L99
    movl	-276(%rbp), %eax
    cltq
    movzbl	seen(%rax), %eax
    testb	%al, %al
    je	L100
L99:
    call	abort
L100:
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
    je	L101
    call	abort
L101:
    movl	-276(%rbp), %eax
    cmpl	$11, %eax
    je	L126
    cmpl	$12, %eax
    je	L104
    cmpl	$2, %eax
    je	L127
    jmp	L124
L104:
    movq	-200(%rbp), %rax
    addq	$15, %rax
    andq	$-16, %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
    fldt	(%rax)
    fstpt	-256(%rbp)
    fldt	-256(%rbp)
    fldt	LC0(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jp	L107
    fldt	-256(%rbp)
    fldt	LC0(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L107
    fldt	v5(%rip)
    fldt	LC2(%rip)
    fucomip	%st(1), %st
    jp	L129
    fldt	LC2(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L125
    jmp	L107
L129:
    fstp	%st(0)
L107:
    call	abort
L125:
    movl	-208(%rbp), %eax
    cmpl	$40, %eax
    jnb	L110
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -208(%rbp)
    jmp	L111
L110:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L111:
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
    je	L112
    call	abort
L112:
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
    movq	%rax, -224(%rbp)
    movq	%rdx, -216(%rbp)
    leaq	-224(%rbp), %rax
    movl	$16, %edx
    movl	$v4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L115
    call	abort
L115:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L116
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L117
L116:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L117:
    movq	(%rax), %rax
    movq	%rax, -272(%rbp)
    cmpq	$v2, -272(%rbp)
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
    movq	%rax, -264(%rbp)
    cmpq	$16, -264(%rbp)
    je	L128
    call	abort
L124:
    call	abort
L126:
    nop
    jmp	L106
L127:
    nop
    jmp	L106
L128:
    nop
L106:
    movl	-276(%rbp), %eax
    addl	$8, %eax
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L123
    call	__stack_chk_fail
L123:
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
    pushq	%r12
    pushq	%rbx
    subq	$48, %rsp
    movq	v2(%rip), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, v2(%rip)
    movl	v1(%rip), %eax
    addl	$1, %eax
    movl	%eax, v1(%rip)
    movl	v1(%rip), %r12d
    movl	$0, -20(%rbp)
    cmpl	$9, -20(%rbp)
    jg	L133
    call	foo3
    movl	%eax, %esi
    movq	v4(%rip), %rax
    movq	v4 + 8(%rip), %rdx
    movl	-20(%rbp), %edi
    pushq	%rbx
    pushq	$v4
    movq	%rax, %r8
    movq	%rdx, %r9
    movl	%r12d, %ecx
    movl	$5, %edx
    movl	$0, %eax
    call	foo1
    addq	$16, %rsp
    jmp	L134
L133:
    call	foo3
    leal	4(%rax), %esi
    movq	v4(%rip), %rdx
    movq	v4 + 8(%rip), %rdi
    movl	-20(%rbp), %eax
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
L134:
    testl	%eax, %eax
    je	L135
    call	abort
L135:
    movq	v3(%rip), %rbx
    fldt	v5(%rip)
    fld1
    faddp	%st, %st(1)
    fstpt	v5(%rip)
    fldt	v5(%rip)
    fstpt	-64(%rbp)
    movl	$1, -36(%rbp)
    cmpl	$9, -36(%rbp)
    jg	L136
    call	foo3
    movl	%eax, %esi
    movl	-36(%rbp), %eax
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movq	%rbx, %r8
    movl	$8, %ecx
    movl	$5, %edx
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    addq	$16, %rsp
    jmp	L137
L136:
    call	foo3
    leal	4(%rax), %esi
    movl	-36(%rbp), %eax
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movq	%rbx, %rcx
    movl	$8, %edx
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
    addq	$16, %rsp
L137:
    cmpl	$1, %eax
    je	L138
    call	abort
L138:
    movl	$2, -32(%rbp)
    cmpl	$9, -32(%rbp)
    jg	L139
    call	foo3
    movl	%eax, %ecx
    movl	-32(%rbp), %eax
    movl	$5, %edx
    movl	%ecx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    jmp	L140
L139:
    call	foo3
    leal	4(%rax), %edx
    movl	-32(%rbp), %eax
    movl	%edx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
L140:
    cmpl	$2, %eax
    je	L141
    call	abort
L141:
    movl	v1(%rip), %eax
    addl	$2, %eax
    movl	%eax, -28(%rbp)
    cmpl	$9, -28(%rbp)
    jg	L142
    call	foo3
    movl	%eax, %ecx
    movl	-28(%rbp), %eax
    movl	$5, %edx
    movl	%ecx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    jmp	L143
L142:
    call	foo3
    leal	4(%rax), %edx
    movl	-28(%rbp), %eax
    movl	%edx, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo2
L143:
    cmpl	$19, %eax
    je	L144
    call	abort
L144:
    movq	v3(%rip), %r12
    fldt	v5(%rip)
    fld	%st(0)
    fstpt	-64(%rbp)
    fld1
    fsubrp	%st, %st(1)
    fstpt	v5(%rip)
    movl	v1(%rip), %eax
    addl	$3, %eax
    movl	%eax, -24(%rbp)
    cmpl	$9, -24(%rbp)
    jg	L145
    call	foo3
    movl	%eax, %edi
    movq	v4(%rip), %rdx
    movq	v4 + 8(%rip), %rsi
    movl	-24(%rbp), %eax
    subq	$8, %rsp
    pushq	$16
    pushq	v4 + 8(%rip)
    pushq	v4(%rip)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movq	%r12, %r9
    movq	%rdx, %rcx
    movq	%rsi, %r8
    movl	$5, %edx
    movl	%edi, %esi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo1
    addq	$48, %rsp
    jmp	L146
L145:
    call	foo3
    leal	4(%rax), %esi
    movq	v4(%rip), %rcx
    movq	v4 + 8(%rip), %rbx
    movq	v4(%rip), %rax
    movq	v4 + 8(%rip), %rdx
    movl	-24(%rbp), %edi
    pushq	$16
    pushq	%r12
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    movq	%rcx, %r8
    movq	%rbx, %r9
    movq	%rdx, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    call	foo2
    addq	$32, %rsp
L146:
    cmpl	$20, %eax
    je	L147
    call	abort
L147:
    movl	$0, %eax
    leaq	-16(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	0
    .long	2751463424
    .long	16388
    .long	0
LC2:
    .long	0
    .long	2684354560
    .long	16388
    .long	0
