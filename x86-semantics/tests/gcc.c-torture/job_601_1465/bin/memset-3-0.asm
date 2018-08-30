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
    movq	%rax, %rdx
    movl	$0, %esi
    movl	$u, %edi
    call	memset
    movq	%rax, -8(%rbp)
    cmpq	$u, -8(%rbp)
    je	L68
    call	abort
L68:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	%eax, %esi
    movl	$u, %edi
    call	memset
    movq	%rax, -8(%rbp)
    cmpq	$u, -8(%rbp)
    je	L69
    call	abort
L69:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movq	%rax, %rdx
    movl	$66, %esi
    movl	$u, %edi
    call	memset
    movq	%rax, -8(%rbp)
    cmpq	$u, -8(%rbp)
    je	L70
    call	abort
L70:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$0, %edi
    call	check
    addl	$1, -12(%rbp)
L67:
    cmpl	$14, -12(%rbp)
    jle	L71
    movl	$0, -12(%rbp)
    jmp	L72
L76:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 1, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L73
    call	abort
L73:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 1, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L74
    call	abort
L74:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 1, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 1, %eax
    cmpq	%rax, -8(%rbp)
    je	L75
    call	abort
L75:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$1, %edi
    call	check
    addl	$1, -12(%rbp)
L72:
    cmpl	$14, -12(%rbp)
    jle	L76
    movl	$0, -12(%rbp)
    jmp	L77
L81:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 2, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L78
    call	abort
L78:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 2, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L79
    call	abort
L79:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 2, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 2, %eax
    cmpq	%rax, -8(%rbp)
    je	L80
    call	abort
L80:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$2, %edi
    call	check
    addl	$1, -12(%rbp)
L77:
    cmpl	$14, -12(%rbp)
    jle	L81
    movl	$0, -12(%rbp)
    jmp	L82
L86:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 3, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L83
    call	abort
L83:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 3, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L84
    call	abort
L84:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 3, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 3, %eax
    cmpq	%rax, -8(%rbp)
    je	L85
    call	abort
L85:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$3, %edi
    call	check
    addl	$1, -12(%rbp)
L82:
    cmpl	$14, -12(%rbp)
    jle	L86
    movl	$0, -12(%rbp)
    jmp	L87
L91:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 4, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L88
    call	abort
L88:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 4, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L89
    call	abort
L89:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 4, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 4, %eax
    cmpq	%rax, -8(%rbp)
    je	L90
    call	abort
L90:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$4, %edi
    call	check
    addl	$1, -12(%rbp)
L87:
    cmpl	$14, -12(%rbp)
    jle	L91
    movl	$0, -12(%rbp)
    jmp	L92
L96:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 5, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L93
    call	abort
L93:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 5, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L94
    call	abort
L94:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 5, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 5, %eax
    cmpq	%rax, -8(%rbp)
    je	L95
    call	abort
L95:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$5, %edi
    call	check
    addl	$1, -12(%rbp)
L92:
    cmpl	$14, -12(%rbp)
    jle	L96
    movl	$0, -12(%rbp)
    jmp	L97
L101:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 6, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L98
    call	abort
L98:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 6, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L99
    call	abort
L99:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 6, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 6, %eax
    cmpq	%rax, -8(%rbp)
    je	L100
    call	abort
L100:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$6, %edi
    call	check
    addl	$1, -12(%rbp)
L97:
    cmpl	$14, -12(%rbp)
    jle	L101
    movl	$0, -12(%rbp)
    jmp	L102
L106:
    movl	$0, %eax
    call	reset
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 7, %ecx
    movq	%rax, %rdx
    movl	$0, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L103
    call	abort
L103:
    movl	-12(%rbp), %eax
    movl	$0, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movzbl	A(%rip), %eax
    movsbl	%al, %eax
    movl	$u + 7, %ecx
    movl	%eax, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L104
    call	abort
L104:
    movl	-12(%rbp), %eax
    movl	$65, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    movl	-12(%rbp), %eax
    cltq
    movl	$u + 7, %ecx
    movq	%rax, %rdx
    movl	$66, %esi
    movq	%rcx, %rdi
    call	memset
    movq	%rax, -8(%rbp)
    movl	$u + 7, %eax
    cmpq	%rax, -8(%rbp)
    je	L105
    call	abort
L105:
    movl	-12(%rbp), %eax
    movl	$66, %edx
    movl	%eax, %esi
    movl	$7, %edi
    call	check
    addl	$1, -12(%rbp)
L102:
    cmpl	$14, -12(%rbp)
    jle	L106
    movl	$0, %edi
    call	exit
