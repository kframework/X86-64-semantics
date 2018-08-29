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
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vcvttsd2si	%xmm0, %eax
    cmpl	$93, %eax
    ja	L54
    movl	%eax, %eax
    movq	L56(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L56:
    .quad	L55
    .quad	L57
    .quad	L58
    .quad	L59
    .quad	L60
    .quad	L61
    .quad	L62
    .quad	L63
    .quad	L64
    .quad	L65
    .quad	L66
    .quad	L67
    .quad	L68
    .quad	L69
    .quad	L70
    .quad	L71
    .quad	L72
    .quad	L73
    .quad	L74
    .quad	L75
    .quad	L76
    .quad	L77
    .quad	L78
    .quad	L79
    .quad	L80
    .quad	L81
    .quad	L82
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L83
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L84
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L85
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L54
    .quad	L86
    .quad	L87
    .quad	L88
    .quad	L89
    .quad	L90
    .quad	L91
    .quad	L92
    .quad	L93
    .quad	L94
    .quad	L95
    .quad	L96
    .quad	L97
    .quad	L98
    .quad	L99
    .quad	L100
    .quad	L101
    .quad	L102
    .quad	L103
    .quad	L104
    .quad	L105
    .quad	L106
    .quad	L107
    .quad	L108
    .quad	L109
    .quad	L110
    .quad	L111
    .quad	L112
    .quad	L113
    .quad	L114
    .quad	L115
    .quad	L116
    .quad	L117
    .quad	L118
    .quad	L119
    .text
L55:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC0(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC1(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC2(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC3(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC4(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC5(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC6(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC7(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L57:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC8(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC9(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC10(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC11(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC12(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC13(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC14(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC15(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L58:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC16(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC17(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC18(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC19(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC20(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC21(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC22(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC23(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L59:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC24(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC25(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC26(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC27(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC28(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC29(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC30(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC31(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L60:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC32(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC33(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC34(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC35(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC36(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC37(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC38(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC39(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L61:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC40(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC41(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC42(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC43(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC44(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC45(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC46(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC47(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L62:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC48(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC49(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC50(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC51(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC52(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC53(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC54(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC55(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L63:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC56(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC57(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC58(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC59(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC60(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC61(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC62(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC63(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L64:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC64(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC65(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC66(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC67(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC68(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC69(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC70(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC71(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L65:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC72(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC73(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC74(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC75(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC76(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC77(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC78(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC79(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L66:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC80(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC81(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC82(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC83(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC84(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC85(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC86(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC87(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L67:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC88(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC89(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC90(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC91(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC92(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC93(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC94(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC95(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L68:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC96(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC97(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC98(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC99(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC100(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC101(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC102(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC103(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L69:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC104(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC105(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC106(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC107(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC108(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC109(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC110(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC111(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L70:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC112(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC113(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC114(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC115(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC116(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC117(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC118(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC119(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L71:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC120(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC121(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC122(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC123(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC124(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC125(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC126(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC127(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L72:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC128(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC129(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC130(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC131(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC132(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC133(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC134(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC135(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L73:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC136(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC137(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC138(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC139(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC140(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC141(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC142(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC143(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L74:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC144(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC145(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC146(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC147(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC148(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC149(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC150(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC151(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L75:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC152(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC153(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC154(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC155(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC156(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC157(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC158(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC159(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L76:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC160(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC161(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC162(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC163(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC164(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC165(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC166(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC167(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L77:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC168(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC169(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC170(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC171(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC172(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC173(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC174(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC175(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L78:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC176(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC177(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC178(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC179(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC180(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC181(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC182(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC183(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L79:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC184(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC185(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC186(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC187(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC188(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC189(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC190(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC191(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L80:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC192(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC193(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC194(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC195(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC196(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC197(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC198(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC199(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L81:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC200(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC201(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC202(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC203(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC204(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC205(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC206(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC207(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L82:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC208(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC209(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC210(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC211(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC212(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC213(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC214(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC215(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L83:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC216(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC217(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC218(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC219(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC220(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC221(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC222(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC223(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L84:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC224(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC225(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC226(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC227(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC228(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC229(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC230(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC231(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L85:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC232(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC233(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC234(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC235(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC236(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC237(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC238(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC239(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L86:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC240(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC241(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC242(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC243(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC244(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC245(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC246(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC247(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L87:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC248(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC249(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC250(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC251(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC252(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC253(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC254(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC255(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L88:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC256(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC257(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC258(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC259(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC260(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC261(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC262(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC263(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L89:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC264(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC265(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC266(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC267(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC268(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC269(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC270(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC271(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L90:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC272(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC273(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC274(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC275(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC276(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC277(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC278(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC279(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L91:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC280(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC281(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC282(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC283(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC284(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC285(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC286(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC287(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L92:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC288(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC289(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC290(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC291(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC292(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC293(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC294(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC295(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L93:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC296(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC297(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC298(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC299(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC300(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC301(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC302(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC303(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L94:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC304(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC305(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC306(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC307(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC308(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC309(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC310(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC311(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L95:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC312(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC313(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC314(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC315(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC316(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC317(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC318(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC319(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L96:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC320(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC321(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC322(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC323(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC324(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC325(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC326(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC327(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L97:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC328(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC329(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC330(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC331(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC332(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC333(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC334(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC335(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L98:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC336(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC337(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC338(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC339(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC340(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC341(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC342(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC343(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L99:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC344(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC345(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC346(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC347(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC348(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC349(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC350(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC351(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L100:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC352(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC353(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC354(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC355(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC356(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC357(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC358(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC359(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L101:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC360(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC361(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC362(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC363(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC364(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC365(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC366(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC367(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L102:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC368(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC369(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC370(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC371(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC372(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC373(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC374(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC375(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L103:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC376(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC377(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC378(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC379(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC380(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC381(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC382(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC383(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L104:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC384(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC385(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC386(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC387(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC388(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC389(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC390(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC391(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L105:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC392(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC393(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC394(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC395(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC396(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC397(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC398(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC399(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L106:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC400(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC401(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC402(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC403(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC404(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC405(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC406(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC407(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L107:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC408(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC409(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC410(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC411(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC412(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC413(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC414(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC415(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L108:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC416(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC417(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC418(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC419(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC420(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC421(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC422(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC423(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L109:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC424(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC425(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC426(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC427(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC428(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC429(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC430(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC431(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L110:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC432(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC433(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC434(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC435(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC436(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC437(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC438(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC439(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L111:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC440(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC441(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC442(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC443(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC444(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC445(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC446(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC447(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L112:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC448(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC449(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC450(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC451(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC452(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC453(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC454(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC455(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L113:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC456(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC457(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC458(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC459(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC460(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC461(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC462(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC463(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L114:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC464(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC465(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC466(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC467(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC468(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC469(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC470(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC471(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L115:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC472(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC473(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC474(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC475(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC476(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC477(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC478(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC479(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L116:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC480(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC481(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC482(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC483(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC484(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC485(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC486(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC487(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L117:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC488(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC489(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC490(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC491(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC492(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC493(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC494(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC495(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L118:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC496(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC497(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC498(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC499(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC500(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC501(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC502(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC503(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L119:
    vmovsd	-24(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	LC504(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm1
    vmovsd	LC505(%rip), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC506(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC507(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC508(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC509(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC510(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC511(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    jmp	L120
L54:
    vmovsd	LC0(%rip), %xmm0
L120:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movabsq	$4635217326480398746, %rax
    vmovq	%rax, %xmm0
    call	foo
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    vmovsd	LC513(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    ja	L122
    vmovsd	-8(%rbp), %xmm0
    vucomisd	LC514(%rip), %xmm0
    jbe	L126
L122:
    call	abort
L126:
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1072693248
LC1:
    .long	2932156579
    .long	1021095019
LC2:
    .long	1666004680
    .long	1029305500
LC3:
    .long	2156974550
    .long	1037465044
LC4:
    .long	1094889756
    .long	1045606323
LC5:
    .long	1402349236
    .long	1053688699
LC6:
    .long	2155284683
    .long	1061640074
LC7:
    .long	1975811400
    .long	1061632429
LC8:
    .long	0
    .long	1074266112
LC9:
    .long	4062292293
    .long	1021207293
LC10:
    .long	1081813823
    .long	1029396212
LC11:
    .long	64281365
    .long	1037533247
LC12:
    .long	2474049623
    .long	1045653329
LC13:
    .long	1482225677
    .long	1053747193
LC14:
    .long	4142003238
    .long	1061671255
LC15:
    .long	136944173
    .long	1063360633
LC16:
    .long	0
    .long	1075052544
LC17:
    .long	2887390887
    .long	1021319424
LC18:
    .long	2884685799
    .long	1029492273
LC19:
    .long	1873561311
    .long	1037605088
LC20:
    .long	2993415815
    .long	1045702587
LC21:
    .long	1557106817
    .long	1053807941
LC22:
    .long	1373355994
    .long	1061703382
LC23:
    .long	2805678796
    .long	1064149081
LC24:
    .long	0
    .long	1075576832
LC25:
    .long	1010341031
    .long	1021382409
LC26:
    .long	3001882042
    .long	1029594099
LC27:
    .long	4093781745
    .long	1037680802
LC28:
    .long	4236732516
    .long	1045754167
LC29:
    .long	2856102839
    .long	1053844966
LC30:
    .long	2439277541
    .long	1061736453
LC31:
    .long	3142294281
    .long	1064629218
LC32:
    .long	0
    .long	1075970048
LC33:
    .long	3731794595
    .long	1021449525
LC34:
    .long	2724343955
    .long	1029701845
LC35:
    .long	3172068901
    .long	1037760606
LC36:
    .long	3492776613
    .long	1045808140
LC37:
    .long	2573916698
    .long	1053877759
LC38:
    .long	2612494603
    .long	1061770555
LC39:
    .long	2190172187
    .long	1065040005
LC40:
    .long	0
    .long	1076232192
LC41:
    .long	2715916149
    .long	1021520892
LC42:
    .long	2574271749
    .long	1029759053
LC43:
    .long	3774436838
    .long	1037844607
LC44:
    .long	3929036474
    .long	1045864646
LC45:
    .long	1974601497
    .long	1053911844
LC46:
    .long	1893007179
    .long	1061805688
LC47:
    .long	4101563201
    .long	1065406325
LC48:
    .long	0
    .long	1076494336
LC49:
    .long	3147020060
    .long	1021596922
LC50:
    .long	1161838769
    .long	1029819697
LC51:
    .long	3708516589
    .long	1037933418
LC52:
    .long	1706810057
    .long	1045923897
LC53:
    .long	3048325179
    .long	1053947303
LC54:
    .long	2104069431
    .long	1061841916
LC55:
    .long	788294862
    .long	1065620497
LC56:
    .long	0
    .long	1076756480
LC57:
    .long	1238337361
    .long	1021677852
LC58:
    .long	1498509033
    .long	1029884053
LC59:
    .long	3159831538
    .long	1038027093
LC60:
    .long	2704808843
    .long	1045985962
LC61:
    .long	3595165528
    .long	1053984164
LC62:
    .long	990121216
    .long	1061879261
LC63:
    .long	1220732785
    .long	1065839151
LC64:
    .long	0
    .long	1076953088
LC65:
    .long	1920083254
    .long	1021763976
LC66:
    .long	1296957923
    .long	1029952306
LC67:
    .long	1373396478
    .long	1038108026
LC68:
    .long	3084330790
    .long	1046051053
LC69:
    .long	1310323191
    .long	1054022510
LC70:
    .long	2413823847
    .long	1061917808
LC71:
    .long	81913616
    .long	1066062758
LC72:
    .long	0
    .long	1077084160
LC73:
    .long	1786637516
    .long	1021855708
LC74:
    .long	3317694122
    .long	1030024709
LC75:
    .long	14833685
    .long	1038160178
LC76:
    .long	3301641153
    .long	1046119381
LC77:
    .long	279011191
    .long	1054062450
LC78:
    .long	2080210029
    .long	1061957558
LC79:
    .long	1608035756
    .long	1066291062
LC80:
    .long	0
    .long	1077215232
LC81:
    .long	1600297636
    .long	1021953402
LC82:
    .long	2484157727
    .long	1030101586
LC83:
    .long	270122310
    .long	1038215302
LC84:
    .long	3356739933
    .long	1046190946
LC85:
    .long	2596274608
    .long	1054104011
LC86:
    .long	1812533923
    .long	1061998575
LC87:
    .long	2622335232
    .long	1066463196
LC88:
    .long	0
    .long	1077346304
LC89:
    .long	2250410686
    .long	1022057471
LC90:
    .long	1305902085
    .long	1030183167
LC91:
    .long	2139262353
    .long	1038273398
LC92:
    .long	2578413455
    .long	1046266100
LC93:
    .long	1662346792
    .long	1054147277
LC94:
    .long	3434049691
    .long	1062040923
LC95:
    .long	733374256
    .long	1066582516
LC96:
    .long	0
    .long	1077477376
LC97:
    .long	204306859
    .long	1022168270
LC98:
    .long	3296301884
    .long	1030269774
LC99:
    .long	2564109066
    .long	1038334827
LC100:
    .long	4134150086
    .long	1046344983
LC101:
    .long	1562440768
    .long	1054192357
LC102:
    .long	2433637047
    .long	1062084646
LC103:
    .long	367236884
    .long	1066704520
LC104:
    .long	0
    .long	1077608448
LC105:
    .long	773350105
    .long	1022286270
LC106:
    .long	3629752555
    .long	1030361754
LC107:
    .long	2163073721
    .long	1038399769
LC108:
    .long	1474024675
    .long	1046427878
LC109:
    .long	4286724477
    .long	1054239333
LC110:
    .long	2673957303
    .long	1062129829
LC111:
    .long	2459057756
    .long	1066829342
LC112:
    .long	0
    .long	1077739520
LC113:
    .long	2550493329
    .long	1022386801
LC114:
    .long	1775616823
    .long	1030459453
LC115:
    .long	1554567592
    .long	1038468404
LC116:
    .long	238374350
    .long	1046496851
LC117:
    .long	1035509056
    .long	1054288317
LC118:
    .long	1899450317
    .long	1062176494
LC119:
    .long	2713869575
    .long	1066956983
LC120:
    .long	0
    .long	1077870592
LC121:
    .long	595830852
    .long	1022453741
LC122:
    .long	1498224712
    .long	1030563216
LC123:
    .long	1666207590
    .long	1038541002
LC124:
    .long	2383037891
    .long	1046542555
LC125:
    .long	293851959
    .long	1054339362
LC126:
    .long	1986388702
    .long	1062216107
LC127:
    .long	2534374302
    .long	1067087644
LC128:
    .long	0
    .long	1077968896
LC129:
    .long	1663911263
    .long	1022525078
LC130:
    .long	3270760287
    .long	1030673481
LC131:
    .long	3116404986
    .long	1038617743
LC132:
    .long	1748556737
    .long	1046590617
LC133:
    .long	1747121778
    .long	1054392633
LC134:
    .long	43925490
    .long	1062241029
LC135:
    .long	1920571936
    .long	1067221325
LC136:
    .long	0
    .long	1078034432
LC137:
    .long	4051924450
    .long	1022601019
LC138:
    .long	3532248472
    .long	1030770424
LC139:
    .long	2537809396
    .long	1038698898
LC140:
    .long	4213642367
    .long	1046641106
LC141:
    .long	995474078
    .long	1054448186
LC142:
    .long	3496117123
    .long	1062266798
LC143:
    .long	2275164436
    .long	1067358227
LC144:
    .long	0
    .long	1078099968
LC145:
    .long	2143241751
    .long	1022681949
LC146:
    .long	233858431
    .long	1030832671
LC147:
    .long	1167243366
    .long	1038784827
LC148:
    .long	1644625444
    .long	1046694235
LC149:
    .long	2019244748
    .long	1054506185
LC150:
    .long	2625248938
    .long	1062293427
LC151:
    .long	1799075901
    .long	1067474359
LC152:
    .long	0
    .long	1078165504
LC153:
    .long	741028787
    .long	1022768103
LC154:
    .long	2965175628
    .long	1030898825
LC155:
    .long	3918085465
    .long	1038875709
LC156:
    .long	712089540
    .long	1046750108
LC157:
    .long	313712218
    .long	1054566741
LC158:
    .long	3333389402
    .long	1062321022
LC159:
    .long	1498634349
    .long	1067546132
LC160:
    .long	0
    .long	1078231040
LC161:
    .long	2818591487
    .long	1022859864
LC162:
    .long	3874768172
    .long	1030969153
LC163:
    .long	3746429286
    .long	1038971996
LC164:
    .long	1872299910
    .long	1046808936
LC165:
    .long	4259056806
    .long	1054629962
LC166:
    .long	1325571218
    .long	1062349584
LC167:
    .long	470041221
    .long	1067619650
LC168:
    .long	0
    .long	1078296576
LC169:
    .long	2759301189
    .long	1022957617
LC170:
    .long	926266783
    .long	1031043863
LC171:
    .long	1579891737
    .long	1039073958
LC172:
    .long	3205905532
    .long	1046870825
LC173:
    .long	2750790296
    .long	1054696043
LC174:
    .long	896761684
    .long	1062379112
LC175:
    .long	3475831133
    .long	1067694979
LC176:
    .long	0
    .long	1078362112
LC177:
    .long	1198405800
    .long	1023061657
LC178:
    .long	3433745452
    .long	1031123414
LC179:
    .long	1320528513
    .long	1039160340
LC180:
    .long	1666076459
    .long	1046936022
LC181:
    .long	2074047926
    .long	1054765065
LC182:
    .long	966195843
    .long	1062409821
LC183:
    .long	479936826
    .long	1067772222
LC184:
    .long	0
    .long	1078427648
LC185:
    .long	3447269269
    .long	1023172455
LC186:
    .long	4062046261
    .long	1031207923
LC187:
    .long	4237976667
    .long	1039217490
LC188:
    .long	420301056
    .long	1047004667
LC189:
    .long	1809321150
    .long	1054837248
LC190:
    .long	2614638651
    .long	1062441496
LC191:
    .long	72292890
    .long	1067851377
LC192:
    .long	0
    .long	1078493184
LC193:
    .long	3889262934
    .long	1023290396
LC194:
    .long	3535308612
    .long	1031297851
LC195:
    .long	1725369831
    .long	1039278064
LC196:
    .long	716716672
    .long	1047077006
LC197:
    .long	4068434036
    .long	1054890092
LC198:
    .long	466357857
    .long	1062474353
LC199:
    .long	3188033965
    .long	1067932578
LC200:
    .long	0
    .long	1078558720
LC201:
    .long	2812371152
    .long	1023413049
LC202:
    .long	68118556
    .long	1031393429
LC203:
    .long	3145656689
    .long	1039342285
LC204:
    .long	2219716469
    .long	1047153215
LC205:
    .long	681132940
    .long	1054929579
LC206:
    .long	423421928
    .long	1062508498
LC207:
    .long	3618492767
    .long	1068015860
LC208:
    .long	0
    .long	1078820864
LC209:
    .long	652008206
    .long	1023706884
LC210:
    .long	4242024571
    .long	1031819657
LC211:
    .long	3331877928
    .long	1039640108
LC212:
    .long	847545678
    .long	1047501998
LC213:
    .long	1754784054
    .long	1055106875
LC214:
    .long	1437391551
    .long	1062658070
LC215:
    .long	1147890139
    .long	1068371504
LC216:
    .long	0
    .long	1079230464
LC217:
    .long	27477931
    .long	1024650904
LC218:
    .long	1322645496
    .long	1032690344
LC219:
    .long	1823957546
    .long	1040484311
LC220:
    .long	3368791548
    .long	1048159763
LC221:
    .long	3307645437
    .long	1055729693
LC222:
    .long	3601010532
    .long	1063150058
LC223:
    .long	653384785
    .long	1068975551
LC224:
    .long	0
    .long	1079558144
LC225:
    .long	3270786430
    .long	1025580756
LC226:
    .long	2741177646
    .long	1033564425
LC227:
    .long	220730900
    .long	1041379157
LC228:
    .long	171078820
    .long	1048934447
LC229:
    .long	42946924
    .long	1056337022
LC230:
    .long	4128446260
    .long	1063575112
LC231:
    .long	2462906046
    .long	1069626624
LC232:
    .long	0
    .long	1079885824
LC233:
    .long	949750587
    .long	1026411561
LC234:
    .long	2095016360
    .long	1034435653
LC235:
    .long	1897550534
    .long	1042301857
LC236:
    .long	862370455
    .long	1049784539
LC237:
    .long	2746182023
    .long	1057087561
LC238:
    .long	1152727991
    .long	1064158584
LC239:
    .long	13743895
    .long	1070138078
LC240:
    .long	0
    .long	1079918592
LC241:
    .long	3022559663
    .long	1026517039
LC242:
    .long	2535789346
    .long	1034529616
LC243:
    .long	4151197084
    .long	1042365695
LC244:
    .long	3203591966
    .long	1049853104
LC245:
    .long	1700502484
    .long	1057145801
LC246:
    .long	578947848
    .long	1064233585
LC247:
    .long	2527502354
    .long	1070200237
LC248:
    .long	0
    .long	1079951360
LC249:
    .long	640860275
    .long	1026591443
LC250:
    .long	3606937821
    .long	1034628767
LC251:
    .long	2366214009
    .long	1042433362
LC252:
    .long	1953020107
    .long	1049925804
LC253:
    .long	2952129347
    .long	1057207339
LC254:
    .long	209566916
    .long	1064308492
LC255:
    .long	4226247819
    .long	1070264745
LC256:
    .long	0
    .long	1079984128
LC257:
    .long	1701118997
    .long	1026648683
LC258:
    .long	518765470
    .long	1034732963
LC259:
    .long	3371559298
    .long	1042504969
LC260:
    .long	986113628
    .long	1050002858
LC261:
    .long	136645106
    .long	1057272417
LC262:
    .long	4091227791
    .long	1064349857
LC263:
    .long	4131414941
    .long	1070331770
LC264:
    .long	0
    .long	1080016896
LC265:
    .long	168356240
    .long	1026708211
LC266:
    .long	3840122960
    .long	1034842778
LC267:
    .long	3645279748
    .long	1042580742
LC268:
    .long	4094429569
    .long	1050084529
LC269:
    .long	3729275161
    .long	1057341170
LC270:
    .long	2804139480
    .long	1064393317
LC271:
    .long	1264438372
    .long	1070401480
LC272:
    .long	0
    .long	1080041472
LC273:
    .long	4175041673
    .long	1026770062
LC274:
    .long	2490537849
    .long	1034951363
LC275:
    .long	3960389451
    .long	1042660906
LC276:
    .long	2184623084
    .long	1050171083
LC277:
    .long	1865796466
    .long	1057413910
LC278:
    .long	2250370449
    .long	1064438978
LC279:
    .long	3236687354
    .long	1070474041
LC280:
    .long	0
    .long	1080057856
LC281:
    .long	2755024593
    .long	1026834257
LC282:
    .long	318057214
    .long	1035012036
LC283:
    .long	2061930548
    .long	1042745743
LC284:
    .long	3427120217
    .long	1050262738
LC285:
    .long	2271531649
    .long	1057490807
LC286:
    .long	3365055337
    .long	1064486974
LC287:
    .long	1458227296
    .long	1070549455
LC288:
    .long	0
    .long	1080074240
LC289:
    .long	2122023482
    .long	1026900813
LC290:
    .long	192315888
    .long	1035075807
LC291:
    .long	483893734
    .long	1042835365
LC292:
    .long	2771838291
    .long	1050359891
LC293:
    .long	127127733
    .long	1057572137
LC294:
    .long	2788361488
    .long	1064537440
LC295:
    .long	1770213721
    .long	1070611992
LC296:
    .long	0
    .long	1080090624
LC297:
    .long	4194789528
    .long	1026969748
LC298:
    .long	2360678382
    .long	1035142748
LC299:
    .long	3800279141
    .long	1042930165
LC300:
    .long	4010334346
    .long	1050462805
LC301:
    .long	1953069101
    .long	1057658139
LC302:
    .long	783457010
    .long	1064590537
LC303:
    .long	3763078546
    .long	1070652886
LC304:
    .long	0
    .long	1080107008
LC305:
    .long	383388138
    .long	1027041064
LC306:
    .long	2775541908
    .long	1035212932
LC307:
    .long	2927170922
    .long	1043030314
LC308:
    .long	2260329121
    .long	1050571789
LC309:
    .long	180100005
    .long	1057749124
LC310:
    .long	3252410371
    .long	1064646371
LC311:
    .long	265257180
    .long	1070695459
LC312:
    .long	0
    .long	1080123392
LC313:
    .long	3572721200
    .long	1027114758
LC314:
    .long	2178999994
    .long	1035286575
LC315:
    .long	2932550465
    .long	1043136036
LC316:
    .long	572788120
    .long	1050680173
LC317:
    .long	1328704827
    .long	1057845331
LC318:
    .long	524522022
    .long	1064705159
LC319:
    .long	3672368837
    .long	1070739792
LC320:
    .long	0
    .long	1080139776
LC321:
    .long	3254102936
    .long	1027190814
LC322:
    .long	571052642
    .long	1035363677
LC323:
    .long	2828455259
    .long	1043247669
LC324:
    .long	4250447454
    .long	1050741283
LC325:
    .long	919756870
    .long	1057947139
LC326:
    .long	2124861196
    .long	1064767033
LC327:
    .long	120946279
    .long	1070786056
LC328:
    .long	0
    .long	1080156160
LC329:
    .long	3722500642
    .long	1027269231
LC330:
    .long	2988760674
    .long	1035444453
LC331:
    .long	1693949698
    .long	1043349279
LC332:
    .long	1090117488
    .long	1050805979
LC333:
    .long	2134451137
    .long	1058034020
LC334:
    .long	4021628705
    .long	1064832155
LC335:
    .long	2251250058
    .long	1070834290
LC336:
    .long	0
    .long	1080172544
LC337:
    .long	3059163131
    .long	1027349991
LC338:
    .long	842189498
    .long	1035528905
LC339:
    .long	297474208
    .long	1043411429
LC340:
    .long	3641093273
    .long	1050874434
LC341:
    .long	4050926292
    .long	1058090988
LC342:
    .long	167125767
    .long	1064900768
LC343:
    .long	984062907
    .long	1070884580
LC344:
    .long	0
    .long	1080188928
LC345:
    .long	2636485174
    .long	1027432983
LC346:
    .long	3463367235
    .long	1035617247
LC347:
    .long	1272777828
    .long	1043476928
LC348:
    .long	2810029960
    .long	1050946914
LC349:
    .long	3969740553
    .long	1058151255
LC350:
    .long	3709422379
    .long	1064973030
LC351:
    .long	3930754069
    .long	1070937092
LC352:
    .long	0
    .long	1080205312
LC353:
    .long	2454466771
    .long	1027518207
LC354:
    .long	2262359293
    .long	1035709481
LC355:
    .long	4125879303
    .long	1043545945
LC356:
    .long	2598238863
    .long	1051023572
LC357:
    .long	1798814217
    .long	1058215010
LC358:
    .long	682851696
    .long	1065049159
LC359:
    .long	1767464942
    .long	1070991954
LC360:
    .long	0
    .long	1080221696
LC361:
    .long	3448483356
    .long	1027605154
LC362:
    .long	2276226495
    .long	1035805822
LC363:
    .long	4067830082
    .long	1043618650
LC364:
    .long	2544260583
    .long	1051104650
LC365:
    .long	3286099407
    .long	1058282475
LC366:
    .long	2219584123
    .long	1065129394
LC367:
    .long	2839488779
    .long	1071049206
LC368:
    .long	0
    .long	1080238080
LC369:
    .long	1679382522
    .long	1027649980
LC370:
    .long	3504968842
    .long	1035906270
LC371:
    .long	604648909
    .long	1043695212
LC372:
    .long	2144684863
    .long	1051190412
LC373:
    .long	4044549125
    .long	1058353840
LC374:
    .long	2271920876
    .long	1065213978
LC375:
    .long	1628651599
    .long	1071109059
LC376:
    .long	0
    .long	1080254464
LC377:
    .long	3366203168
    .long	1027695912
LC378:
    .long	1074174028
    .long	1036002029
LC379:
    .long	1198791448
    .long	1043775770
LC380:
    .long	980003158
    .long	1051281078
LC381:
    .long	2004713163
    .long	1058429346
LC382:
    .long	3382097767
    .long	1065303152
LC383:
    .long	1695996686
    .long	1071171638
LC384:
    .long	0
    .long	1080270848
LC385:
    .long	2206335319
    .long	1027742767
LC386:
    .long	3645513874
    .long	1036056576
LC387:
    .long	1061309147
    .long	1043860494
LC388:
    .long	2841772508
    .long	1051376911
LC389:
    .long	3687075904
    .long	1058509232
LC390:
    .long	1898691654
    .long	1065375187
LC391:
    .long	2307600029
    .long	1071237069
LC392:
    .long	0
    .long	1080287232
LC393:
    .long	3498567611
    .long	1027790636
LC394:
    .long	876569368
    .long	1036113322
LC395:
    .long	331718425
    .long	1043949581
LC396:
    .long	2973566217
    .long	1051478154
LC397:
    .long	1954687583
    .long	1058593723
LC398:
    .long	2022056859
    .long	1065424767
LC399:
    .long	2484896279
    .long	1071305520
LC400:
    .long	0
    .long	1080303616
LC401:
    .long	2947932748
    .long	1027839520
LC402:
    .long	1604639609
    .long	1036172337
LC403:
    .long	2811005323
    .long	1044043199
LC404:
    .long	746121466
    .long	1051585137
LC405:
    .long	2215274037
    .long	1058682938
LC406:
    .long	2996279137
    .long	1065477058
LC407:
    .long	1493961424
    .long	1071377117
LC408:
    .long	0
    .long	1080320000
LC409:
    .long	1837934007
    .long	1027889142
LC410:
    .long	1782121813
    .long	1036233694
LC411:
    .long	3076723616
    .long	1044141490
LC412:
    .long	4287913445
    .long	1051698100
LC413:
    .long	2555451940
    .long	1058777599
LC414:
    .long	2601059682
    .long	1065532235
LC415:
    .long	2161914738
    .long	1071452111
LC416:
    .long	0
    .long	1080336384
LC417:
    .long	2176214067
    .long	1027939686
LC418:
    .long	1285333723
    .long	1036297357
LC419:
    .long	1901887395
    .long	1044244679
LC420:
    .long	63364151
    .long	1051769541
LC421:
    .long	1862462746
    .long	1058877586
LC422:
    .long	1771533135
    .long	1065590432
LC423:
    .long	3510190872
    .long	1071530670
LC424:
    .long	0
    .long	1080352768
LC425:
    .long	1955130250
    .long	1027990968
LC426:
    .long	485322104
    .long	1036363434
LC427:
    .long	3087482701
    .long	1044352934
LC428:
    .long	259102554
    .long	1051832477
LC429:
    .long	2702049825
    .long	1058983242
LC430:
    .long	1442834134
    .long	1065651783
LC431:
    .long	509898517
    .long	1071612921
LC432:
    .long	0
    .long	1080369152
LC433:
    .long	170861216
    .long	1028042896
LC434:
    .long	3553371998
    .long	1036431888
LC435:
    .long	3386512976
    .long	1044424074
LC436:
    .long	2626294794
    .long	1051898777
LC437:
    .long	3819978273
    .long	1059078335
LC438:
    .long	2141298895
    .long	1065716610
LC439:
    .long	141562122
    .long	1071671893
LC440:
    .long	0
    .long	1080385536
LC441:
    .long	1118374262
    .long	1028095469
LC442:
    .long	2270595576
    .long	1036502829
LC443:
    .long	1937300652
    .long	1044483550
LC444:
    .long	2156809046
    .long	1051968816
LC445:
    .long	2746206212
    .long	1059137434
LC446:
    .long	2318595145
    .long	1065785061
LC447:
    .long	2828493662
    .long	1071717086
LC448:
    .long	0
    .long	1080401920
LC449:
    .long	3793848047
    .long	1028148595
LC450:
    .long	931960135
    .long	1036576256
LC451:
    .long	3708313529
    .long	1044545840
LC452:
    .long	2935858334
    .long	1052042703
LC453:
    .long	1992370045
    .long	1059199883
LC454:
    .long	2909857523
    .long	1065857270
LC455:
    .long	1384010261
    .long	1071764461
LC456:
    .long	0
    .long	1080418304
LC457:
    .long	3902315276
    .long	1028202275
LC458:
    .long	3832432970
    .long	1036652168
LC459:
    .long	2643607711
    .long	1044611058
LC460:
    .long	458721089
    .long	1052120549
LC461:
    .long	261551826
    .long	1059265940
LC462:
    .long	555253372
    .long	1065933372
LC463:
    .long	3541801831
    .long	1071814163
LC464:
    .long	0
    .long	1080434688
LC465:
    .long	2727279227
    .long	1028256232
LC466:
    .long	2505761744
    .long	1036730603
LC467:
    .long	643676217
    .long	1044679288
LC468:
    .long	3105577630
    .long	1052202462
LC469:
    .long	1416412869
    .long	1059335690
LC470:
    .long	3290288546
    .long	1066013902
LC471:
    .long	4272977063
    .long	1071866319
LC472:
    .long	0
    .long	1080451072
LC473:
    .long	2276382579
    .long	1028310650
LC474:
    .long	1370596008
    .long	1036811596
LC475:
    .long	4220728201
    .long	1044750627
LC476:
    .long	1447476272
    .long	1052288884
LC477:
    .long	4160035229
    .long	1059409391
LC478:
    .long	2525028453
    .long	1066098862
LC479:
    .long	2965932616
    .long	1071921034
LC480:
    .long	0
    .long	1080467456
LC481:
    .long	2829307270
    .long	1028365160
LC482:
    .long	303253507
    .long	1036895111
LC483:
    .long	489861774
    .long	1044825078
LC484:
    .long	4284105880
    .long	1052379703
LC485:
    .long	3332839646
    .long	1059487216
LC486:
    .long	129742372
    .long	1066188520
LC487:
    .long	2814749767
    .long	1071978496
LC488:
    .long	0
    .long	1080483840
LC489:
    .long	1094907344
    .long	1028419855
LC490:
    .long	3846066046
    .long	1036981219
LC491:
    .long	2931760498
    .long	1044903046
LC492:
    .long	1976760498
    .long	1052475471
LC493:
    .long	1932875471
    .long	1059569422
LC494:
    .long	2269666878
    .long	1066283143
LC495:
    .long	3085504505
    .long	1072038831
LC496:
    .long	0
    .long	1080500224
LC497:
    .long	364328757
    .long	1028474642
LC498:
    .long	1642708390
    .long	1037055775
LC499:
    .long	916480343
    .long	1044984252
LC500:
    .long	3325128991
    .long	1052576076
LC501:
    .long	2958192054
    .long	1059656266
LC502:
    .long	3160271296
    .long	1066383135
LC503:
    .long	2677310814
    .long	1072102228
LC504:
    .long	0
    .long	1080516608
LC505:
    .long	1921074788
    .long	1028529244
LC506:
    .long	3605620149
    .long	1037101387
LC507:
    .long	3946486409
    .long	1045069116
LC508:
    .long	3404981243
    .long	1052681849
LC509:
    .long	1249210136
    .long	1059747921
LC510:
    .long	1868345133
    .long	1066445211
LC511:
    .long	856244680
    .long	1072168813
LC513:
    .long	2233382994
    .long	1071141355
LC514:
    .long	2920577761
    .long	1071309127
