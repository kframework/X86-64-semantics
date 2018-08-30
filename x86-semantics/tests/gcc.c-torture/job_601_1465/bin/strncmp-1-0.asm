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
    .comm	u1,80,32
    .comm	u2,80,32
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movl	%ecx, -44(%rbp)
    movq	-40(%rbp), %rdx
    movq	-32(%rbp), %rcx
    movq	-24(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncmp
    movl	%eax, -4(%rbp)
    cmpl	$0, -44(%rbp)
    jns	L54
    cmpl	$0, -4(%rbp)
    js	L54
    call	abort
L54:
    cmpl	$0, -44(%rbp)
    jne	L55
    cmpl	$0, -4(%rbp)
    je	L55
    call	abort
L55:
    cmpl	$0, -44(%rbp)
    jle	L57
    cmpl	$0, -4(%rbp)
    jg	L57
    call	abort
L57:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$0, -80(%rbp)
    jmp	L59
L76:
    movq	$0, -72(%rbp)
    jmp	L60
L75:
    movq	$0, -64(%rbp)
    jmp	L61
L74:
    movq	$u1, -48(%rbp)
    movq	$0, -56(%rbp)
    jmp	L62
L63:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$0, (%rax)
    addq	$1, -56(%rbp)
L62:
    movq	-56(%rbp), %rax
    cmpq	-80(%rbp), %rax
    jb	L63
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	$0, -56(%rbp)
    jmp	L64
L65:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$97, (%rax)
    addq	$1, -56(%rbp)
L64:
    movq	-56(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L65
    movq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	$0, -56(%rbp)
    jmp	L66
L67:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$120, (%rax)
    addq	$1, -56(%rbp)
L66:
    cmpq	$7, -56(%rbp)
    jbe	L67
    movq	$u2, -40(%rbp)
    movq	$0, -56(%rbp)
    jmp	L68
L69:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$0, (%rax)
    addq	$1, -56(%rbp)
L68:
    movq	-56(%rbp), %rax
    cmpq	-72(%rbp), %rax
    jb	L69
    movq	-40(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	$0, -56(%rbp)
    jmp	L70
L71:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$97, (%rax)
    addq	$1, -56(%rbp)
L70:
    movq	-56(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L71
    movq	-40(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	$0, -56(%rbp)
    jmp	L72
L73:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$120, (%rax)
    addq	$1, -56(%rbp)
L72:
    cmpq	$7, -56(%rbp)
    jbe	L73
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$97, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$97, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$-1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$98, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$99, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$-1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$99, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$98, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$98, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$-87, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$-1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$-87, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$98, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$-87, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$-86, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$-1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$-86, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$-87, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$1, %ecx
    movl	$80, %edx
    movq	%rax, %rdi
    call	test
    movq	-64(%rbp), %rdx
    movq	-16(%rbp), %rsi
    movq	-32(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rdi
    call	test
    addq	$1, -64(%rbp)
L61:
    cmpq	$63, -64(%rbp)
    jbe	L74
    addq	$1, -72(%rbp)
L60:
    cmpq	$7, -72(%rbp)
    jbe	L75
    addq	$1, -80(%rbp)
L59:
    cmpq	$7, -80(%rbp)
    jbe	L76
    movl	$0, %edi
    call	exit
