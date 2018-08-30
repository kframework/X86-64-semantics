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
    .globl	partial_read_le32
partial_read_le32:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    movzbl	-15(%rbp), %edx
    andl	$127, %edx
    movzbl	%dl, %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-14(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-13(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	partial_read_be32
partial_read_be32:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movzbl	-13(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    movzbl	-14(%rbp), %edx
    andl	$127, %edx
    movzbl	%dl, %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-15(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$127, %eax
    movzbl	%al, %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	fake_read_le32
fake_read_le32:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -4(%rbp)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movb	%al, -3(%rbp)
    movq	-32(%rbp), %rax
    movb	$1, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movb	%al, -2(%rbp)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movb	%al, -1(%rbp)
    movzbl	-4(%rbp), %eax
    movzbl	-3(%rbp), %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-2(%rbp), %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-1(%rbp), %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	fake_read_be32
fake_read_be32:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -4(%rbp)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movb	%al, -3(%rbp)
    movq	-32(%rbp), %rax
    movb	$1, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movb	%al, -2(%rbp)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movb	%al, -1(%rbp)
    movzbl	-1(%rbp), %eax
    movzbl	-2(%rbp), %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-3(%rbp), %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-4(%rbp), %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	incorrect_read_le32
incorrect_read_le32:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -4(%rbp)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movb	%al, -3(%rbp)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movb	%al, -2(%rbp)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movb	%al, -1(%rbp)
    movq	-32(%rbp), %rax
    movb	$1, (%rax)
    movzbl	-4(%rbp), %eax
    movzbl	-3(%rbp), %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-2(%rbp), %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-1(%rbp), %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	incorrect_read_be32
incorrect_read_be32:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movb	%al, -4(%rbp)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movzbl	(%rax), %eax
    movb	%al, -3(%rbp)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movb	%al, -2(%rbp)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    movb	%al, -1(%rbp)
    movq	-32(%rbp), %rax
    movb	$1, (%rax)
    movzbl	-1(%rbp), %eax
    movzbl	-2(%rbp), %edx
    sall	$8, %edx
    orl	%eax, %edx
    movzbl	-3(%rbp), %eax
    sall	$16, %eax
    orl	%eax, %edx
    movzbl	-4(%rbp), %eax
    sall	$24, %eax
    orl	%edx, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movb	$-125, -16(%rbp)
    movb	$-123, -15(%rbp)
    movb	$-121, -14(%rbp)
    movb	$-119, -13(%rbp)
    movb	$-125, -32(%rbp)
    movb	$-123, -31(%rbp)
    movb	$-121, -30(%rbp)
    movb	$-119, -29(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	partial_read_le32
    movl	%eax, -20(%rbp)
    cmpl	$-1987607165, -20(%rbp)
    jne	L66
    call	abort
L66:
    movb	$-125, -32(%rbp)
    movb	$-123, -31(%rbp)
    movb	$-121, -30(%rbp)
    movb	$-119, -29(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	partial_read_be32
    movl	%eax, -20(%rbp)
    cmpl	$-2088401015, -20(%rbp)
    jne	L67
    call	abort
L67:
    leaq	-16(%rbp), %rax
    leaq	2(%rax), %rdx
    leaq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fake_read_le32
    movl	%eax, -20(%rbp)
    cmpl	$-1996388989, -20(%rbp)
    je	L68
    call	abort
L68:
    movb	$-121, -14(%rbp)
    leaq	-16(%rbp), %rax
    leaq	2(%rax), %rdx
    leaq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fake_read_be32
    movl	%eax, -20(%rbp)
    cmpl	$-2088435319, -20(%rbp)
    je	L69
    call	abort
L69:
    movb	$-121, -14(%rbp)
    leaq	-16(%rbp), %rax
    leaq	2(%rax), %rdx
    leaq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	incorrect_read_le32
    movl	%eax, -20(%rbp)
    cmpl	$-1987607165, -20(%rbp)
    je	L70
    call	abort
L70:
    movb	$-121, -14(%rbp)
    leaq	-16(%rbp), %rax
    leaq	2(%rax), %rdx
    leaq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	incorrect_read_be32
    movl	%eax, -20(%rbp)
    cmpl	$-2088401015, -20(%rbp)
    je	L71
    call	abort
L71:
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L73
    call	__stack_chk_fail
L73:
    leave
    ret
