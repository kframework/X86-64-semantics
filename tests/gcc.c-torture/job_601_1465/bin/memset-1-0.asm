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
    .comm	u,96,32
    .globl	A
    .data
A:
    .byte	65
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$0, -28(%rbp)
    jmp	L54
L89:
    movl	$1, -24(%rbp)
    jmp	L55
L88:
    movl	$0, -20(%rbp)
    jmp	L56
L57:
    movl	-20(%rbp), %eax
    cltq
    movb	$97, u(%rax)
    addl	$1, -20(%rbp)
L56:
    movl	-20(%rbp), %eax
    cmpl	$95, %eax
    jbe	L57
    movl	-24(%rbp), %eax
    cltq
    movl	-28(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L58
    call	abort
L58:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L59
L61:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L60
    call	abort
L60:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L59:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L61
    movl	$0, -20(%rbp)
    jmp	L62
L64:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L63
    call	abort
L63:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L62:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L64
    movl	$0, -20(%rbp)
    jmp	L65
L67:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L66
    call	abort
L66:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L65:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L67
    movl	-24(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-28(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	$u, %rcx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L68
    call	abort
L68:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L69
L71:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L70
    call	abort
L70:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L69:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L71
    movl	$0, -20(%rbp)
    jmp	L72
L74:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$65, %al
    je	L73
    call	abort
L73:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L72:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L74
    movl	$0, -20(%rbp)
    jmp	L75
L77:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L76
    call	abort
L76:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L75:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L77
    movl	-24(%rbp), %eax
    cltq
    movl	-28(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-28(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L78
    call	abort
L78:
    movq	$u, -16(%rbp)
    movl	$0, -20(%rbp)
    jmp	L79
L81:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L80
    call	abort
L80:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L79:
    movl	-20(%rbp), %eax
    cmpl	-28(%rbp), %eax
    jl	L81
    movl	$0, -20(%rbp)
    jmp	L82
L84:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$66, %al
    je	L83
    call	abort
L83:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L82:
    movl	-20(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L84
    movl	$0, -20(%rbp)
    jmp	L85
L87:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L86
    call	abort
L86:
    addl	$1, -20(%rbp)
    addq	$1, -16(%rbp)
L85:
    movl	-20(%rbp), %eax
    cmpl	$7, %eax
    jbe	L87
    addl	$1, -24(%rbp)
L55:
    movl	-24(%rbp), %eax
    cmpl	$79, %eax
    jbe	L88
    addl	$1, -28(%rbp)
L54:
    movl	-28(%rbp), %eax
    cmpl	$7, %eax
    jbe	L89
    movl	$0, %edi
    call	exit
