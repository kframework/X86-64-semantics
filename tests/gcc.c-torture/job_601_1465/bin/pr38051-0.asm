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
mymemcmp1:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    leaq	-40(%rbp), %rax
    movq	%rax, -32(%rbp)
    leaq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
L58:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    movq	%rax, -8(%rbp)
    addq	$1, -32(%rbp)
    addq	$1, -24(%rbp)
    movq	-16(%rbp), %rax
    cmpq	-8(%rbp), %rax
    je	L58
    movq	-16(%rbp), %rax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
mymemcmp2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	-56(%rbp), %rax
    andl	$3, %eax
    cmpq	$1, %rax
    je	L62
    cmpq	$1, %rax
    jb	L63
    cmpq	$3, %rax
    je	L64
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-40(%rbp), %rax
    subq	$16, %rax
    movq	%rax, -40(%rbp)
    movq	-48(%rbp), %rax
    subq	$16, %rax
    movq	%rax, -48(%rbp)
    addq	$2, -56(%rbp)
    jmp	L65
L64:
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-40(%rbp), %rax
    subq	$8, %rax
    movq	%rax, -40(%rbp)
    movq	-48(%rbp), %rax
    subq	$8, %rax
    movq	%rax, -48(%rbp)
    addq	$1, -56(%rbp)
    jmp	L66
L63:
    cmpq	$0, -56(%rbp)
    jne	L67
    movl	$0, %eax
    jmp	L68
L67:
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    jmp	L69
L62:
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-40(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -40(%rbp)
    movq	-48(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -48(%rbp)
    subq	$1, -56(%rbp)
    cmpq	$0, -56(%rbp)
    je	L74
L70:
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    je	L69
    movq	-8(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L68
L69:
    movq	-40(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-32(%rbp), %rax
    cmpq	-16(%rbp), %rax
    je	L66
    movq	-16(%rbp), %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L68
L66:
    movq	-40(%rbp), %rax
    addq	$16, %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-48(%rbp), %rax
    addq	$16, %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    je	L65
    movq	-8(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L68
L65:
    movq	-40(%rbp), %rax
    addq	$24, %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movq	-48(%rbp), %rax
    addq	$24, %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-32(%rbp), %rax
    cmpq	-16(%rbp), %rax
    je	L72
    movq	-16(%rbp), %rdx
    movq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L68
L72:
    movq	-40(%rbp), %rax
    addq	$32, %rax
    movq	%rax, -40(%rbp)
    movq	-48(%rbp), %rax
    addq	$32, %rax
    movq	%rax, -48(%rbp)
    subq	$4, -56(%rbp)
    cmpq	$0, -56(%rbp)
    jne	L70
    jmp	L71
L74:
    nop
L71:
    movq	-24(%rbp), %rax
    cmpq	-8(%rbp), %rax
    je	L73
    movq	-8(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L68
L73:
    movl	$0, %eax
L68:
    leave
    ret
mymemcmp3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$104, %rsp
    movq	%rdi, -88(%rbp)
    movq	%rsi, -96(%rbp)
    movq	%rdx, -104(%rbp)
    movq	-88(%rbp), %rax
    andl	$7, %eax
    sall	$3, %eax
    movl	%eax, -80(%rbp)
    movl	-80(%rbp), %eax
    movl	$64, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, -76(%rbp)
    andq	$-8, -88(%rbp)
    movq	-104(%rbp), %rax
    andl	$3, %eax
    cmpq	$1, %rax
    je	L77
    cmpq	$1, %rax
    jb	L78
    cmpq	$3, %rax
    je	L79
    movq	-88(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -64(%rbp)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -56(%rbp)
    movq	-96(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movq	-88(%rbp), %rax
    subq	$8, %rax
    movq	%rax, -88(%rbp)
    movq	-96(%rbp), %rax
    subq	$16, %rax
    movq	%rax, -96(%rbp)
    addq	$2, -104(%rbp)
    jmp	L80
L79:
    movq	-88(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -72(%rbp)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -64(%rbp)
    movq	-96(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movq	-96(%rbp), %rax
    subq	$8, %rax
    movq	%rax, -96(%rbp)
    addq	$1, -104(%rbp)
    jmp	L81
L78:
    cmpq	$0, -104(%rbp)
    jne	L82
    movl	$0, %eax
    jmp	L83
L82:
    movq	-88(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -48(%rbp)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -72(%rbp)
    movq	-96(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -40(%rbp)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -88(%rbp)
    jmp	L84
L77:
    movq	-88(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -56(%rbp)
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -48(%rbp)
    movq	-96(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-88(%rbp), %rax
    addq	$16, %rax
    movq	%rax, -88(%rbp)
    movq	-96(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -96(%rbp)
    subq	$1, -104(%rbp)
    cmpq	$0, -104(%rbp)
    je	L89
L85:
    movq	-88(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -72(%rbp)
    movq	-96(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, -40(%rbp)
    movl	-80(%rbp), %eax
    movq	-56(%rbp), %rdx
    shrx	%rax, %rdx, %rcx
    movl	-76(%rbp), %eax
    movq	-48(%rbp), %rdx
    shlx	%rax, %rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    je	L84
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L83
L84:
    movq	-88(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -64(%rbp)
    movq	-96(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    movq	%rax, -32(%rbp)
    movl	-80(%rbp), %eax
    movq	-48(%rbp), %rdx
    shrx	%rax, %rdx, %rcx
    movl	-76(%rbp), %eax
    movq	-72(%rbp), %rdx
    shlx	%rax, %rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-40(%rbp), %rax
    je	L81
    movq	-40(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L83
L81:
    movq	-88(%rbp), %rax
    addq	$16, %rax
    movq	(%rax), %rax
    movq	%rax, -56(%rbp)
    movq	-96(%rbp), %rax
    addq	$16, %rax
    movq	(%rax), %rax
    movq	%rax, -24(%rbp)
    movl	-80(%rbp), %eax
    movq	-72(%rbp), %rdx
    shrx	%rax, %rdx, %rcx
    movl	-76(%rbp), %eax
    movq	-64(%rbp), %rdx
    shlx	%rax, %rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-32(%rbp), %rax
    je	L80
    movq	-32(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L83
L80:
    movq	-88(%rbp), %rax
    addq	$24, %rax
    movq	(%rax), %rax
    movq	%rax, -48(%rbp)
    movq	-96(%rbp), %rax
    addq	$24, %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movl	-80(%rbp), %eax
    movq	-64(%rbp), %rdx
    shrx	%rax, %rdx, %rcx
    movl	-76(%rbp), %eax
    movq	-56(%rbp), %rdx
    shlx	%rax, %rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-24(%rbp), %rax
    je	L87
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L83
L87:
    movq	-88(%rbp), %rax
    addq	$32, %rax
    movq	%rax, -88(%rbp)
    movq	-96(%rbp), %rax
    addq	$32, %rax
    movq	%rax, -96(%rbp)
    subq	$4, -104(%rbp)
    cmpq	$0, -104(%rbp)
    jne	L85
    jmp	L86
L89:
    nop
L86:
    movl	-80(%rbp), %eax
    movq	-56(%rbp), %rdx
    shrx	%rax, %rdx, %rcx
    movl	-76(%rbp), %eax
    movq	-48(%rbp), %rdx
    shlx	%rax, %rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    je	L88
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	mymemcmp1
    jmp	L83
L88:
    movl	$0, %eax
L83:
    leave
    ret
    .globl	mymemcmp
mymemcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    andl	$7, %eax
    testq	%rax, %rax
    jne	L91
    movq	-40(%rbp), %rax
    shrq	$3, %rax
    movq	%rax, %rdx
    movq	-8(%rbp), %rcx
    movq	-16(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	mymemcmp2
    jmp	L92
L91:
    movq	-40(%rbp), %rax
    shrq	$3, %rax
    movq	%rax, %rdx
    movq	-8(%rbp), %rcx
    movq	-16(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	mymemcmp3
L92:
    leave
    ret
    .comm	buf,256,32
    .section	.rodata
LC0:
    .string	"\0017\202\247UI\235\277\370D\266U\027\216\371"
LC1:
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$305419896, -16(%rbp)
    movzbl	-16(%rbp), %eax
    cmpb	$120, %al
    jne	L94
    movzbl	-15(%rbp), %eax
    cmpb	$86, %al
    jne	L94
    movzbl	-14(%rbp), %eax
    cmpb	$52, %al
    jne	L94
    movzbl	-13(%rbp), %eax
    cmpb	$18, %al
    je	L95
L94:
    movl	$0, %eax
    jmp	L98
L95:
    movl	$buf, %eax
    andl	$15, %eax
    movl	$16, %edx
    subq	%rax, %rdx
    movq	%rdx, %rax
    addq	$buf, %rax
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    addq	$9, %rax
    movl	$15, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	memcpy
    movq	-24(%rbp), %rax
    addq	$152, %rax
    movl	$15, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcpy
    movq	-24(%rbp), %rax
    leaq	152(%rax), %rcx
    movq	-24(%rbp), %rax
    addq	$9, %rax
    movl	$33, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	mymemcmp
    cmpl	$-51, %eax
    je	L97
    call	abort
L97:
    movl	$0, %eax
L98:
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L99
    call	__stack_chk_fail
L99:
    leave
    ret
