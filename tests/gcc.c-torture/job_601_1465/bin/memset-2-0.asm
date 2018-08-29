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
    jmp	L54
L55:
    movl	-4(%rbp), %eax
    cltq
    movb	$97, u(%rax)
    addl	$1, -4(%rbp)
L54:
    movl	-4(%rbp), %eax
    cmpl	$30, %eax
    jbe	L55
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
    jmp	L57
L59:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L58
    call	abort
L58:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L57:
    movl	-12(%rbp), %eax
    cmpl	-20(%rbp), %eax
    jl	L59
    movl	$0, -12(%rbp)
    jmp	L60
L62:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	-28(%rbp), %eax
    je	L61
    call	abort
L61:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L60:
    movl	-12(%rbp), %eax
    cmpl	-24(%rbp), %eax
    jl	L62
    movl	$0, -12(%rbp)
    jmp	L63
L65:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L64
    call	abort
L64:
    addl	$1, -12(%rbp)
    addq	$1, -8(%rbp)
L63:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L65
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
    jmp	L67
L71:
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
    je	L68
    call	abort
L68:
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
    je	L69
    call	abort
L69:
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
    je	L70
    call	abort
L70:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$1, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L67:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L71
    movl	$0, -12(%rbp)
    jmp	L72
L76:
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
    je	L73
    call	abort
L73:
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
    je	L74
    call	abort
L74:
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
    je	L75
    call	abort
L75:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$2, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L72:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L76
    movl	$0, -12(%rbp)
    jmp	L77
L81:
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
    je	L78
    call	abort
L78:
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
    je	L79
    call	abort
L79:
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
    je	L80
    call	abort
L80:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$3, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L77:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L81
    movl	$0, -12(%rbp)
    jmp	L82
L86:
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
    je	L83
    call	abort
L83:
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
    je	L84
    call	abort
L84:
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
    je	L85
    call	abort
L85:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$4, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L82:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L86
    movl	$0, -12(%rbp)
    jmp	L87
L91:
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
    je	L88
    call	abort
L88:
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
    je	L89
    call	abort
L89:
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
    je	L90
    call	abort
L90:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$5, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L87:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L91
    movl	$0, -12(%rbp)
    jmp	L92
L96:
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
    je	L93
    call	abort
L93:
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
    je	L94
    call	abort
L94:
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
    je	L95
    call	abort
L95:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$6, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L92:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L96
    movl	$0, -12(%rbp)
    jmp	L97
L101:
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
    je	L98
    call	abort
L98:
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
    je	L99
    call	abort
L99:
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
    je	L100
    call	abort
L100:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$7, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L97:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L101
    movl	$0, -12(%rbp)
    jmp	L102
L106:
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
    je	L103
    call	abort
L103:
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
    je	L104
    call	abort
L104:
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
    je	L105
    call	abort
L105:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$8, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L102:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L106
    movl	$0, -12(%rbp)
    jmp	L107
L111:
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
    je	L108
    call	abort
L108:
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
    je	L109
    call	abort
L109:
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
    je	L110
    call	abort
L110:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$9, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L107:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L111
    movl	$0, -12(%rbp)
    jmp	L112
L116:
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
    je	L113
    call	abort
L113:
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
    je	L114
    call	abort
L114:
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
    je	L115
    call	abort
L115:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$10, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L112:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L116
    movl	$0, -12(%rbp)
    jmp	L117
L121:
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
    je	L118
    call	abort
L118:
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
    je	L119
    call	abort
L119:
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
    je	L120
    call	abort
L120:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$11, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L117:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L121
    movl	$0, -12(%rbp)
    jmp	L122
L126:
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
    je	L123
    call	abort
L123:
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
    je	L124
    call	abort
L124:
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
    je	L125
    call	abort
L125:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$12, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L122:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L126
    movl	$0, -12(%rbp)
    jmp	L127
L131:
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
    je	L128
    call	abort
L128:
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
    je	L129
    call	abort
L129:
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
    je	L130
    call	abort
L130:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$13, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L127:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L131
    movl	$0, -12(%rbp)
    jmp	L132
L136:
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
    je	L133
    call	abort
L133:
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
    je	L134
    call	abort
L134:
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
    je	L135
    call	abort
L135:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$14, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L132:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L136
    movl	$0, -12(%rbp)
    jmp	L137
L141:
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
    je	L138
    call	abort
L138:
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
    je	L139
    call	abort
L139:
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
    je	L140
    call	abort
L140:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	$15, %esi
    movl	%eax, %edi
    call	check
    addl	$1, -12(%rbp)
L137:
    movl	-12(%rbp), %eax
    cmpl	$7, %eax
    jbe	L141
    movl	$0, %edi
    call	exit
