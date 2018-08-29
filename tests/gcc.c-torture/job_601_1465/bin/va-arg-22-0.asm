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
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	lastn2440(%rip), %eax
    cmpl	-4(%rbp), %eax
    je	L54
    movl	lastc2441(%rip), %edx
    movl	lastn2440(%rip), %eax
    cmpl	%eax, %edx
    je	L55
    call	abort
L55:
    movl	$0, lastc2441(%rip)
    movl	-4(%rbp), %eax
    movl	%eax, lastn2440(%rip)
L54:
    movl	lastc2441(%rip), %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    sall	$3, %eax
    xorl	%edx, %eax
    movsbl	%al, %eax
    cmpl	-8(%rbp), %eax
    je	L56
    call	abort
L56:
    movl	lastc2441(%rip), %eax
    addl	$1, %eax
    movl	%eax, lastc2441(%rip)
    nop
    leave
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$672, %rsp
    movl	%edi, -660(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L58
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L58:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    cmpl	$21, -660(%rbp)
    je	L59
    call	abort
L59:
    movl	$8, -392(%rbp)
    movl	$48, -388(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -384(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -376(%rbp)
    movq	-384(%rbp), %rax
    movq	%rax, -384(%rbp)
    movl	$0, -648(%rbp)
    jmp	L60
L61:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-642(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$0, %edi
    call	bar
    addl	$1, -648(%rbp)
L60:
    cmpl	$0, -648(%rbp)
    js	L61
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L62
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L63
L62:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L63:
    movzbl	(%rax), %eax
    movb	%al, -641(%rbp)
    movl	$0, -648(%rbp)
    jmp	L64
L65:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-641(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$1, %edi
    call	bar
    addl	$1, -648(%rbp)
L64:
    cmpl	$0, -648(%rbp)
    jle	L65
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L66
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L67
L66:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L67:
    movzwl	(%rax), %eax
    movw	%ax, -640(%rbp)
    movl	$0, -648(%rbp)
    jmp	L68
L69:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-640(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$2, %edi
    call	bar
    addl	$1, -648(%rbp)
L68:
    cmpl	$1, -648(%rbp)
    jle	L69
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L70
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L71
L70:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L71:
    movzwl	(%rax), %edx
    movw	%dx, -624(%rbp)
    movzbl	2(%rax), %eax
    movb	%al, -622(%rbp)
    movl	$0, -648(%rbp)
    jmp	L72
L73:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-624(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$3, %edi
    call	bar
    addl	$1, -648(%rbp)
L72:
    cmpl	$2, -648(%rbp)
    jle	L73
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L74
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L75
L74:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L75:
    movl	(%rax), %eax
    movl	%eax, -608(%rbp)
    movl	$0, -648(%rbp)
    jmp	L76
L77:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-608(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$4, %edi
    call	bar
    addl	$1, -648(%rbp)
L76:
    cmpl	$3, -648(%rbp)
    jle	L77
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L78
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L79
L78:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L79:
    movl	(%rax), %edx
    movl	%edx, -592(%rbp)
    movzbl	4(%rax), %eax
    movb	%al, -588(%rbp)
    movl	$0, -648(%rbp)
    jmp	L80
L81:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-592(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$5, %edi
    call	bar
    addl	$1, -648(%rbp)
L80:
    cmpl	$4, -648(%rbp)
    jle	L81
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L82
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L83
L82:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L83:
    movl	(%rax), %edx
    movl	%edx, -576(%rbp)
    movzwl	4(%rax), %eax
    movw	%ax, -572(%rbp)
    movl	$0, -648(%rbp)
    jmp	L84
L85:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-576(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$6, %edi
    call	bar
    addl	$1, -648(%rbp)
L84:
    cmpl	$5, -648(%rbp)
    jle	L85
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L86
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L87
L86:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L87:
    movl	(%rax), %edx
    movl	%edx, -560(%rbp)
    movzwl	4(%rax), %edx
    movw	%dx, -556(%rbp)
    movzbl	6(%rax), %eax
    movb	%al, -554(%rbp)
    movl	$0, -648(%rbp)
    jmp	L88
L89:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-560(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$7, %edi
    call	bar
    addl	$1, -648(%rbp)
L88:
    cmpl	$6, -648(%rbp)
    jle	L89
    movl	-392(%rbp), %eax
    cmpl	$48, %eax
    jnb	L90
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -392(%rbp)
    jmp	L91
L90:
    movq	-384(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -384(%rbp)
L91:
    movq	(%rax), %rax
    movq	%rax, -544(%rbp)
    movl	$0, -648(%rbp)
    jmp	L92
L93:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-544(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$8, %edi
    call	bar
    addl	$1, -648(%rbp)
L92:
    cmpl	$7, -648(%rbp)
    jle	L93
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L94
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L95
L94:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L95:
    movq	(%rax), %rdx
    movq	%rdx, -528(%rbp)
    movzbl	8(%rax), %eax
    movb	%al, -520(%rbp)
    movl	$0, -648(%rbp)
    jmp	L96
L97:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-528(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$9, %edi
    call	bar
    addl	$1, -648(%rbp)
L96:
    cmpl	$8, -648(%rbp)
    jle	L97
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L98
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L99
L98:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L99:
    movq	(%rax), %rdx
    movq	%rdx, -512(%rbp)
    movzwl	8(%rax), %eax
    movw	%ax, -504(%rbp)
    movl	$0, -648(%rbp)
    jmp	L100
L101:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-512(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$10, %edi
    call	bar
    addl	$1, -648(%rbp)
L100:
    cmpl	$9, -648(%rbp)
    jle	L101
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L102
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L103
L102:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L103:
    movq	(%rax), %rdx
    movq	%rdx, -496(%rbp)
    movzwl	8(%rax), %edx
    movw	%dx, -488(%rbp)
    movzbl	10(%rax), %eax
    movb	%al, -486(%rbp)
    movl	$0, -648(%rbp)
    jmp	L104
L105:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-496(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$11, %edi
    call	bar
    addl	$1, -648(%rbp)
L104:
    cmpl	$10, -648(%rbp)
    jle	L105
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L106
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L107
L106:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L107:
    movq	(%rax), %rdx
    movq	%rdx, -480(%rbp)
    movl	8(%rax), %eax
    movl	%eax, -472(%rbp)
    movl	$0, -648(%rbp)
    jmp	L108
L109:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-480(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$12, %edi
    call	bar
    addl	$1, -648(%rbp)
L108:
    cmpl	$11, -648(%rbp)
    jle	L109
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L110
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L111
L110:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L111:
    movq	(%rax), %rdx
    movq	%rdx, -464(%rbp)
    movl	8(%rax), %edx
    movl	%edx, -456(%rbp)
    movzbl	12(%rax), %eax
    movb	%al, -452(%rbp)
    movl	$0, -648(%rbp)
    jmp	L112
L113:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-464(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$13, %edi
    call	bar
    addl	$1, -648(%rbp)
L112:
    cmpl	$12, -648(%rbp)
    jle	L113
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L114
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L115
L114:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L115:
    movq	(%rax), %rdx
    movq	%rdx, -448(%rbp)
    movl	8(%rax), %edx
    movl	%edx, -440(%rbp)
    movzwl	12(%rax), %eax
    movw	%ax, -436(%rbp)
    movl	$0, -648(%rbp)
    jmp	L116
L117:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-448(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$14, %edi
    call	bar
    addl	$1, -648(%rbp)
L116:
    cmpl	$13, -648(%rbp)
    jle	L117
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L118
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L119
L118:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L119:
    movq	(%rax), %rdx
    movq	%rdx, -432(%rbp)
    movl	8(%rax), %edx
    movl	%edx, -424(%rbp)
    movzwl	12(%rax), %edx
    movw	%dx, -420(%rbp)
    movzbl	14(%rax), %eax
    movb	%al, -418(%rbp)
    movl	$0, -648(%rbp)
    jmp	L120
L121:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-432(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$15, %edi
    call	bar
    addl	$1, -648(%rbp)
L120:
    cmpl	$14, -648(%rbp)
    jle	L121
    movl	-392(%rbp), %eax
    cmpl	$40, %eax
    jnb	L122
    movq	-376(%rbp), %rax
    movl	-392(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-392(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -392(%rbp)
    jmp	L123
L122:
    movq	-384(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -384(%rbp)
L123:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, -416(%rbp)
    movq	%rdx, -408(%rbp)
    movl	$0, -648(%rbp)
    jmp	L124
L125:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-416(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$16, %edi
    call	bar
    addl	$1, -648(%rbp)
L124:
    cmpl	$15, -648(%rbp)
    jle	L125
    movq	-384(%rbp), %rax
    leaq	32(%rax), %rdx
    movq	%rdx, -384(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, -368(%rbp)
    movq	8(%rax), %rdx
    movq	%rdx, -360(%rbp)
    movq	16(%rax), %rdx
    movq	%rdx, -352(%rbp)
    movl	24(%rax), %edx
    movl	%edx, -344(%rbp)
    movzwl	28(%rax), %edx
    movw	%dx, -340(%rbp)
    movzbl	30(%rax), %eax
    movb	%al, -338(%rbp)
    movl	$0, -648(%rbp)
    jmp	L126
L127:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-368(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$31, %edi
    call	bar
    addl	$1, -648(%rbp)
L126:
    cmpl	$30, -648(%rbp)
    jle	L127
    movq	-384(%rbp), %rax
    leaq	32(%rax), %rdx
    movq	%rdx, -384(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, -336(%rbp)
    movq	8(%rax), %rdx
    movq	%rdx, -328(%rbp)
    movq	16(%rax), %rdx
    movq	%rdx, -320(%rbp)
    movq	24(%rax), %rax
    movq	%rax, -312(%rbp)
    movl	$0, -648(%rbp)
    jmp	L128
L129:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-336(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$32, %edi
    call	bar
    addl	$1, -648(%rbp)
L128:
    cmpl	$31, -648(%rbp)
    jle	L129
    movq	-384(%rbp), %rax
    leaq	40(%rax), %rdx
    movq	%rdx, -384(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, -304(%rbp)
    movq	8(%rax), %rdx
    movq	%rdx, -296(%rbp)
    movq	16(%rax), %rdx
    movq	%rdx, -288(%rbp)
    movq	24(%rax), %rdx
    movq	%rdx, -280(%rbp)
    movzwl	32(%rax), %edx
    movw	%dx, -272(%rbp)
    movzbl	34(%rax), %eax
    movb	%al, -270(%rbp)
    movl	$0, -648(%rbp)
    jmp	L130
L131:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-304(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$35, %edi
    call	bar
    addl	$1, -648(%rbp)
L130:
    cmpl	$34, -648(%rbp)
    jle	L131
    movq	-384(%rbp), %rax
    leaq	72(%rax), %rdx
    movq	%rdx, -384(%rbp)
    movq	(%rax), %rdx
    movq	%rdx, -256(%rbp)
    movq	8(%rax), %rdx
    movq	%rdx, -248(%rbp)
    movq	16(%rax), %rdx
    movq	%rdx, -240(%rbp)
    movq	24(%rax), %rdx
    movq	%rdx, -232(%rbp)
    movq	32(%rax), %rdx
    movq	%rdx, -224(%rbp)
    movq	40(%rax), %rdx
    movq	%rdx, -216(%rbp)
    movq	48(%rax), %rdx
    movq	%rdx, -208(%rbp)
    movq	56(%rax), %rdx
    movq	%rdx, -200(%rbp)
    movq	64(%rax), %rax
    movq	%rax, -192(%rbp)
    movl	$0, -648(%rbp)
    jmp	L132
L133:
    movl	-648(%rbp), %eax
    cltq
    movzbl	-256(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$72, %edi
    call	bar
    addl	$1, -648(%rbp)
L132:
    cmpl	$71, -648(%rbp)
    jle	L133
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L134
    call	__stack_chk_fail
L134:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$448, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -440(%rbp)
    jmp	L136
L137:
    movl	-440(%rbp), %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -434(%rbp,%rax)
    addl	$1, -440(%rbp)
L136:
    cmpl	$0, -440(%rbp)
    js	L137
    movl	$0, -440(%rbp)
    jmp	L138
L139:
    movl	-440(%rbp), %eax
    xorl	$8, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -433(%rbp,%rax)
    addl	$1, -440(%rbp)
L138:
    cmpl	$0, -440(%rbp)
    jle	L139
    movl	$0, -440(%rbp)
    jmp	L140
L141:
    movl	-440(%rbp), %eax
    xorl	$16, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -432(%rbp,%rax)
    addl	$1, -440(%rbp)
L140:
    cmpl	$1, -440(%rbp)
    jle	L141
    movl	$0, -440(%rbp)
    jmp	L142
L143:
    movl	-440(%rbp), %eax
    xorl	$24, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -416(%rbp,%rax)
    addl	$1, -440(%rbp)
L142:
    cmpl	$2, -440(%rbp)
    jle	L143
    movl	$0, -440(%rbp)
    jmp	L144
L145:
    movl	-440(%rbp), %eax
    xorl	$32, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -400(%rbp,%rax)
    addl	$1, -440(%rbp)
L144:
    cmpl	$3, -440(%rbp)
    jle	L145
    movl	$0, -440(%rbp)
    jmp	L146
L147:
    movl	-440(%rbp), %eax
    xorl	$40, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -384(%rbp,%rax)
    addl	$1, -440(%rbp)
L146:
    cmpl	$4, -440(%rbp)
    jle	L147
    movl	$0, -440(%rbp)
    jmp	L148
L149:
    movl	-440(%rbp), %eax
    xorl	$48, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -368(%rbp,%rax)
    addl	$1, -440(%rbp)
L148:
    cmpl	$5, -440(%rbp)
    jle	L149
    movl	$0, -440(%rbp)
    jmp	L150
L151:
    movl	-440(%rbp), %eax
    xorl	$56, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -352(%rbp,%rax)
    addl	$1, -440(%rbp)
L150:
    cmpl	$6, -440(%rbp)
    jle	L151
    movl	$0, -440(%rbp)
    jmp	L152
L153:
    movl	-440(%rbp), %eax
    xorl	$64, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -336(%rbp,%rax)
    addl	$1, -440(%rbp)
L152:
    cmpl	$7, -440(%rbp)
    jle	L153
    movl	$0, -440(%rbp)
    jmp	L154
L155:
    movl	-440(%rbp), %eax
    xorl	$72, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -320(%rbp,%rax)
    addl	$1, -440(%rbp)
L154:
    cmpl	$8, -440(%rbp)
    jle	L155
    movl	$0, -440(%rbp)
    jmp	L156
L157:
    movl	-440(%rbp), %eax
    xorl	$80, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -304(%rbp,%rax)
    addl	$1, -440(%rbp)
L156:
    cmpl	$9, -440(%rbp)
    jle	L157
    movl	$0, -440(%rbp)
    jmp	L158
L159:
    movl	-440(%rbp), %eax
    xorl	$88, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -288(%rbp,%rax)
    addl	$1, -440(%rbp)
L158:
    cmpl	$10, -440(%rbp)
    jle	L159
    movl	$0, -440(%rbp)
    jmp	L160
L161:
    movl	-440(%rbp), %eax
    xorl	$96, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -272(%rbp,%rax)
    addl	$1, -440(%rbp)
L160:
    cmpl	$11, -440(%rbp)
    jle	L161
    movl	$0, -440(%rbp)
    jmp	L162
L163:
    movl	-440(%rbp), %eax
    xorl	$104, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -256(%rbp,%rax)
    addl	$1, -440(%rbp)
L162:
    cmpl	$12, -440(%rbp)
    jle	L163
    movl	$0, -440(%rbp)
    jmp	L164
L165:
    movl	-440(%rbp), %eax
    xorl	$112, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -240(%rbp,%rax)
    addl	$1, -440(%rbp)
L164:
    cmpl	$13, -440(%rbp)
    jle	L165
    movl	$0, -440(%rbp)
    jmp	L166
L167:
    movl	-440(%rbp), %eax
    xorl	$120, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -224(%rbp,%rax)
    addl	$1, -440(%rbp)
L166:
    cmpl	$14, -440(%rbp)
    jle	L167
    movl	$0, -440(%rbp)
    jmp	L168
L169:
    movl	-440(%rbp), %eax
    xorl	$-128, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -208(%rbp,%rax)
    addl	$1, -440(%rbp)
L168:
    cmpl	$15, -440(%rbp)
    jle	L169
    movl	$0, -440(%rbp)
    jmp	L170
L171:
    movl	-440(%rbp), %eax
    xorl	$-8, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -192(%rbp,%rax)
    addl	$1, -440(%rbp)
L170:
    cmpl	$30, -440(%rbp)
    jle	L171
    movl	$0, -440(%rbp)
    jmp	L172
L173:
    movl	-440(%rbp), %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -160(%rbp,%rax)
    addl	$1, -440(%rbp)
L172:
    cmpl	$31, -440(%rbp)
    jle	L173
    movl	$0, -440(%rbp)
    jmp	L174
L175:
    movl	-440(%rbp), %eax
    xorl	$24, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -128(%rbp,%rax)
    addl	$1, -440(%rbp)
L174:
    cmpl	$34, -440(%rbp)
    jle	L175
    movl	$0, -440(%rbp)
    jmp	L176
L177:
    movl	-440(%rbp), %eax
    xorl	$64, %eax
    movl	%eax, %edx
    movl	-440(%rbp), %eax
    cltq
    movb	%dl, -80(%rbp,%rax)
    addl	$1, -440(%rbp)
L176:
    cmpl	$71, -440(%rbp)
    jle	L177
    movl	-400(%rbp), %edi
    movzwl	-432(%rbp), %edx
    movzbl	-433(%rbp), %esi
    subq	$8, %rsp
    pushq	-16(%rbp)
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    pushq	-56(%rbp)
    pushq	-64(%rbp)
    pushq	-72(%rbp)
    pushq	-80(%rbp)
    subq	$40, %rsp
    movq	%rsp, %rax
    movq	-128(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-120(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movq	-112(%rbp), %rcx
    movq	%rcx, 16(%rax)
    movq	-104(%rbp), %rcx
    movq	%rcx, 24(%rax)
    movzwl	-96(%rbp), %ecx
    movw	%cx, 32(%rax)
    movzbl	-94(%rbp), %ecx
    movb	%cl, 34(%rax)
    pushq	-136(%rbp)
    pushq	-144(%rbp)
    pushq	-152(%rbp)
    pushq	-160(%rbp)
    subq	$32, %rsp
    movq	%rsp, %rax
    movq	-192(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-184(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movq	-176(%rbp), %rcx
    movq	%rcx, 16(%rax)
    movl	-168(%rbp), %ecx
    movl	%ecx, 24(%rax)
    movzwl	-164(%rbp), %ecx
    movw	%cx, 28(%rax)
    movzbl	-162(%rbp), %ecx
    movb	%cl, 30(%rax)
    pushq	-200(%rbp)
    pushq	-208(%rbp)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-224(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-216(%rbp), %ecx
    movl	%ecx, 8(%rax)
    movzwl	-212(%rbp), %ecx
    movw	%cx, 12(%rax)
    movzbl	-210(%rbp), %ecx
    movb	%cl, 14(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-240(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-232(%rbp), %ecx
    movl	%ecx, 8(%rax)
    movzwl	-228(%rbp), %ecx
    movw	%cx, 12(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-256(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-248(%rbp), %ecx
    movl	%ecx, 8(%rax)
    movzbl	-244(%rbp), %ecx
    movb	%cl, 12(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-272(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-264(%rbp), %ecx
    movl	%ecx, 8(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-288(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-280(%rbp), %ecx
    movw	%cx, 8(%rax)
    movzbl	-278(%rbp), %ecx
    movb	%cl, 10(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-304(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-296(%rbp), %ecx
    movw	%cx, 8(%rax)
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-320(%rbp), %rcx
    movq	%rcx, (%rax)
    movzbl	-312(%rbp), %ecx
    movb	%cl, 8(%rax)
    pushq	-336(%rbp)
    subq	$8, %rsp
    movq	%rsp, %rax
    movl	-352(%rbp), %ecx
    movl	%ecx, (%rax)
    movzwl	-348(%rbp), %ecx
    movw	%cx, 4(%rax)
    movzbl	-346(%rbp), %ecx
    movb	%cl, 6(%rax)
    subq	$8, %rsp
    movq	%rsp, %rax
    movl	-368(%rbp), %ecx
    movl	%ecx, (%rax)
    movzwl	-364(%rbp), %ecx
    movw	%cx, 4(%rax)
    movq	-384(%rbp), %r9
    movl	%edi, %r8d
    movq	-416(%rbp), %rcx
    movl	$21, %edi
    movl	$0, %eax
    call	foo
    addq	$336, %rsp
    movl	$0, %edi
    call	exit
    .data
lastn2440:
    .long	-1
lastc2441:
    .long	-1
