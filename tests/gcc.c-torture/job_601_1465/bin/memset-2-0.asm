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
    .comm	u,32,32
    .globl	A
    .data
A:
    .byte	65
    .text
    .globl	reset
reset:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L58
L59:
    movl	-4(%rbp), %eax
    cltq
    movb	$97, u(%rax)
    addl	$1, -4(%rbp)
L58:
    movl	-4(%rbp), %eax
    cmpl	$30, %eax
    jbe	L59
    nop
    popq	%rbp
    ret
    .globl	check
check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	%esi, -24(%rbp)
    movl	%edx, -28(%rbp)
    movq	$u, -8(%rbp)
    movl	$0, -12(%rbp)
    jmp	L61
L63:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L62
    call	abort
L62:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L61:
    movl	-12(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L63
    movl	$0, -12(%rbp)
    jmp	L64
L66:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	-28(%rbp), %eax
    je	L65
    call	abort
L65:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L64:
    movl	-12(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L66
    movl	$0, -12(%rbp)
    jmp	L67
L69:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L68
    call	abort
L68:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L67:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L69
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -12(%rbp)
    jmp	L71
L75:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$1, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L72
    call	abort
L72:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$1, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L73
    call	abort
L73:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$1, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L74
    call	abort
L74:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L71:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L75
    movl	$0, -12(%rbp)
    jmp	L76
L80:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$2, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L77
    call	abort
L77:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$2, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L78
    call	abort
L78:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$2, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L79
    call	abort
L79:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L76:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L80
    movl	$0, -12(%rbp)
    jmp	L81
L85:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$3, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L82
    call	abort
L82:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$3, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L83
    call	abort
L83:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$3, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L84
    call	abort
L84:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L81:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L85
    movl	$0, -12(%rbp)
    jmp	L86
L90:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$4, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L87
    call	abort
L87:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$4, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L88
    call	abort
L88:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$4, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L89
    call	abort
L89:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L86:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L90
    movl	$0, -12(%rbp)
    jmp	L91
L95:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$5, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L92
    call	abort
L92:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$5, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L93
    call	abort
L93:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$5, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L94
    call	abort
L94:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L91:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L95
    movl	$0, -12(%rbp)
    jmp	L96
L100:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$6, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L97
    call	abort
L97:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$6, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L98
    call	abort
L98:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$6, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L99
    call	abort
L99:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L96:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L100
    movl	$0, -12(%rbp)
    jmp	L101
L105:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$7, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L102
    call	abort
L102:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$7, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L103
    call	abort
L103:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$7, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L104
    call	abort
L104:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L101:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L105
    movl	$0, -12(%rbp)
    jmp	L106
L110:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$8, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L107
    call	abort
L107:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$8, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L108
    call	abort
L108:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$8, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L109
    call	abort
L109:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L106:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L110
    movl	$0, -12(%rbp)
    jmp	L111
L115:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$9, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L112
    call	abort
L112:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$9, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L113
    call	abort
L113:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$9, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L114
    call	abort
L114:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L111:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L115
    movl	$0, -12(%rbp)
    jmp	L116
L120:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$10, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L117
    call	abort
L117:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$10, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L118
    call	abort
L118:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$10, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L119
    call	abort
L119:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L116:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L120
    movl	$0, -12(%rbp)
    jmp	L121
L125:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$11, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L122
    call	abort
L122:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$11, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L123
    call	abort
L123:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$11, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L124
    call	abort
L124:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L121:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L125
    movl	$0, -12(%rbp)
    jmp	L126
L130:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$12, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L127
    call	abort
L127:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$12, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L128
    call	abort
L128:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$12, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L129
    call	abort
L129:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L126:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L130
    movl	$0, -12(%rbp)
    jmp	L131
L135:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$13, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L132
    call	abort
L132:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$13, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L133
    call	abort
L133:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$13, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L134
    call	abort
L134:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L131:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L135
    movl	$0, -12(%rbp)
    jmp	L136
L140:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$14, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L137
    call	abort
L137:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$14, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L138
    call	abort
L138:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$14, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L139
    call	abort
L139:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L136:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L140
    movl	$0, -12(%rbp)
    jmp	L141
L145:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$15, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L142
    call	abort
L142:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	-12(%rbp), %edx
    movslq	%edx, %rdx
    leaq	u(%rdx), %rcx
    movl	$15, %edx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L143
    call	abort
L143:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    movl	$15, %edx
    movl	$66, %esi
    movq	%rax, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	-12(%rbp), %eax
    cltq
    addq	$u, %rax
    cmpq	-8(%rbp), %rax
    je	L144
    call	abort
L144:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L141:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L145
    movl	$0, %edi
    call	exit
