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
    .globl	simple_rand
simple_rand:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	seed2431(%rip), %rax
    imulq	$1103515245, %rax, %rax
    addq	$12345, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, seed2431(%rip)
    movq	-8(%rbp), %rax
    shrq	$8, %rax
    popq	%rbp
    ret
    .globl	random_bitstring
random_bitstring:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$0, -24(%rbp)
    movq	$0, -16(%rbp)
L60:
    movl	$0, %eax
    call	simple_rand
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    sarq	%rax
    movq	%rax, %rdx
    movq	%rdx, %rax
    sarq	$63, %rax
    shrq	$60, %rax
    addq	%rax, %rdx
    andl	$15, %edx
    subq	%rax, %rdx
    movq	%rdx, %rax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    addl	%eax, -24(%rbp)
    cmpl	$0, -20(%rbp)
    jne	L56
    movq	-16(%rbp), %rax
    jmp	L57
L56:
    movl	-20(%rbp), %eax
    movl	%eax, %ecx
    salq	%cl, -16(%rbp)
    movq	-8(%rbp), %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L58
    movl	-20(%rbp), %eax
    movl	$1, %edx
    shlx	%eax, %edx, %eax
    subl	$1, %eax
    cltq
    orq	%rax, -16(%rbp)
L58:
    movl	-24(%rbp), %eax
    cmpl	$70, %eax
    jbe	L60
    movq	-16(%rbp), %rax
L57:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$144, %rsp
    movq	$0, -88(%rbp)
    jmp	L62
L89:
    movl	$0, %eax
    call	random_bitstring
    movq	%rax, -80(%rbp)
    movl	$0, %eax
    call	random_bitstring
    movq	%rax, -72(%rbp)
    movq	-80(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-72(%rbp), %rax
    movq	%rax, -56(%rbp)
    cmpq	$0, -56(%rbp)
    je	L90
    movq	-64(%rbp), %rax
    movl	$0, %edx
    divq	-56(%rbp)
    movq	%rax, -48(%rbp)
    movq	-64(%rbp), %rax
    movl	$0, %edx
    divq	-56(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-40(%rbp), %rax
    cmpq	-56(%rbp), %rax
    jnb	L65
    movq	-48(%rbp), %rax
    imulq	-56(%rbp), %rax
    movq	%rax, %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    cmpq	-64(%rbp), %rax
    je	L66
L65:
    call	abort
L66:
    movq	-80(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	-72(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-32(%rbp), %rax
    addq	%rax, %rax
    testq	%rax, %rax
    jne	L67
    cmpq	$-1, -24(%rbp)
    je	L91
L67:
    movq	-32(%rbp), %rax
    cqto
    idivq	-24(%rbp)
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    cqto
    idivq	-24(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    movq	%rax, %rcx
    movq	-24(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-24(%rbp), %rax
    subq	%rdx, %rax
    cmpq	%rax, %rcx
    jnb	L68
    movq	-16(%rbp), %rax
    imulq	-24(%rbp), %rax
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    cmpq	-32(%rbp), %rax
    je	L69
L68:
    call	abort
L69:
    movq	-80(%rbp), %rax
    movl	%eax, -120(%rbp)
    movq	-72(%rbp), %rax
    movl	%eax, -116(%rbp)
    cmpl	$0, -116(%rbp)
    je	L92
    movl	-120(%rbp), %eax
    movl	$0, %edx
    divl	-116(%rbp)
    movl	%eax, -112(%rbp)
    movl	-120(%rbp), %eax
    movl	$0, %edx
    divl	-116(%rbp)
    movl	%edx, -108(%rbp)
    movl	-108(%rbp), %eax
    cmpl	-116(%rbp), %eax
    jnb	L71
    movl	-112(%rbp), %eax
    imull	-116(%rbp), %eax
    movl	%eax, %edx
    movl	-108(%rbp), %eax
    addl	%edx, %eax
    cmpl	-120(%rbp), %eax
    je	L72
L71:
    call	abort
L72:
    movq	-80(%rbp), %rax
    movl	%eax, -104(%rbp)
    movq	-72(%rbp), %rax
    movl	%eax, -100(%rbp)
    movl	-104(%rbp), %eax
    addl	%eax, %eax
    testl	%eax, %eax
    jne	L73
    cmpl	$-1, -100(%rbp)
    je	L93
L73:
    movl	-104(%rbp), %eax
    cltd
    idivl	-100(%rbp)
    movl	%eax, -96(%rbp)
    movl	-104(%rbp), %eax
    cltd
    idivl	-100(%rbp)
    movl	%edx, -92(%rbp)
    movl	-92(%rbp), %eax
    cltd
    movl	%edx, %eax
    xorl	-92(%rbp), %eax
    subl	%edx, %eax
    movl	%eax, %ecx
    movl	-100(%rbp), %eax
    cltd
    movl	%edx, %eax
    xorl	-100(%rbp), %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    jnb	L74
    movl	-96(%rbp), %eax
    imull	-100(%rbp), %eax
    movl	%eax, %edx
    movl	-92(%rbp), %eax
    addl	%edx, %eax
    cmpl	-104(%rbp), %eax
    je	L75
L74:
    call	abort
L75:
    movq	-80(%rbp), %rax
    movw	%ax, -136(%rbp)
    movq	-72(%rbp), %rax
    movw	%ax, -134(%rbp)
    cmpw	$0, -134(%rbp)
    je	L94
    movzwl	-136(%rbp), %eax
    movl	$0, %edx
    divw	-134(%rbp)
    movw	%ax, -132(%rbp)
    movzwl	-136(%rbp), %eax
    movl	$0, %edx
    divw	-134(%rbp)
    movw	%dx, -130(%rbp)
    movzwl	-130(%rbp), %eax
    cmpw	-134(%rbp), %ax
    jnb	L77
    movzwl	-132(%rbp), %edx
    movzwl	-134(%rbp), %eax
    imull	%eax, %edx
    movzwl	-130(%rbp), %eax
    addl	%eax, %edx
    movzwl	-136(%rbp), %eax
    cmpl	%eax, %edx
    je	L78
L77:
    call	abort
L78:
    movq	-80(%rbp), %rax
    movw	%ax, -128(%rbp)
    movq	-72(%rbp), %rax
    movw	%ax, -126(%rbp)
    movswl	-128(%rbp), %eax
    movswl	-126(%rbp), %esi
    cltd
    idivl	%esi
    movw	%ax, -124(%rbp)
    movswl	-128(%rbp), %eax
    movswl	-126(%rbp), %ecx
    cltd
    idivl	%ecx
    movl	%edx, %eax
    movw	%ax, -122(%rbp)
    movswl	-122(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpw	$0, -126(%rbp)
    jns	L79
    movzwl	-126(%rbp), %edx
    negl	%edx
    movzwl	%dx, %edx
    jmp	L80
L79:
    movzwl	-126(%rbp), %edx
    movzwl	%dx, %edx
L80:
    cmpl	%edx, %eax
    jge	L81
    movzwl	-124(%rbp), %edx
    movzwl	-126(%rbp), %eax
    imull	%eax, %edx
    movzwl	-122(%rbp), %eax
    addl	%edx, %eax
    cmpw	-128(%rbp), %ax
    je	L82
L81:
    call	abort
L82:
    movq	-80(%rbp), %rax
    movb	%al, -144(%rbp)
    movq	-72(%rbp), %rax
    movb	%al, -143(%rbp)
    cmpb	$0, -143(%rbp)
    je	L95
    movzbl	-144(%rbp), %eax
    movzbl	%al, %eax
    divb	-143(%rbp)
    movb	%al, -142(%rbp)
    movzbl	-144(%rbp), %eax
    movzbl	%al, %eax
    divb	-143(%rbp)
    movzbl	%ah, %eax
    movb	%al, -141(%rbp)
    movzbl	-141(%rbp), %eax
    cmpb	-143(%rbp), %al
    jnb	L84
    movzbl	-142(%rbp), %edx
    movzbl	-143(%rbp), %eax
    imull	%eax, %edx
    movzbl	-141(%rbp), %eax
    addl	%eax, %edx
    movzbl	-144(%rbp), %eax
    cmpl	%eax, %edx
    je	L85
L84:
    call	abort
L85:
    movq	-80(%rbp), %rax
    movb	%al, -140(%rbp)
    movq	-72(%rbp), %rax
    movb	%al, -139(%rbp)
    movsbl	-140(%rbp), %eax
    movsbl	-139(%rbp), %edi
    cltd
    idivl	%edi
    movb	%al, -138(%rbp)
    movsbl	-140(%rbp), %eax
    movsbl	-139(%rbp), %ecx
    cltd
    idivl	%ecx
    movl	%edx, %eax
    movb	%al, -137(%rbp)
    movsbl	-137(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpb	$0, -139(%rbp)
    jns	L86
    movzbl	-139(%rbp), %edx
    negl	%edx
    movzbl	%dl, %edx
    jmp	L87
L86:
    movzbl	-139(%rbp), %edx
    movzbl	%dl, %edx
L87:
    cmpl	%edx, %eax
    jge	L88
    movzbl	-138(%rbp), %eax
    movzbl	-139(%rbp), %edx
    imull	%edx, %eax
    movl	%eax, %edx
    movzbl	-137(%rbp), %eax
    addl	%edx, %eax
    cmpb	-140(%rbp), %al
    je	L64
L88:
    call	abort
L90:
    nop
    jmp	L64
L91:
    nop
    jmp	L64
L92:
    nop
    jmp	L64
L93:
    nop
    jmp	L64
L94:
    nop
    jmp	L64
L95:
    nop
L64:
    addq	$1, -88(%rbp)
L62:
    cmpq	$999, -88(%rbp)
    jle	L89
    movl	$0, %edi
    call	exit
    .data
seed2431:
    .quad	47114711
