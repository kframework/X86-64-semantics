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
    .comm	u1,88,32
    .comm	u2,88,32
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movl	%edx, -36(%rbp)
    movq	-32(%rbp), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcmp
    movl	%eax, -4(%rbp)
    cmpl	$0, -36(%rbp)
    jns	L58
    cmpl	$0, -4(%rbp)
    js	L58
    call	abort
L58:
    cmpl	$0, -36(%rbp)
    jne	L59
    cmpl	$0, -4(%rbp)
    je	L59
    call	abort
L59:
    cmpl	$0, -36(%rbp)
    jle	L61
    cmpl	$0, -4(%rbp)
    jg	L61
    call	abort
L61:
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
    jmp	L63
L80:
    movq	$0, -72(%rbp)
    jmp	L64
L79:
    movq	$0, -64(%rbp)
    jmp	L65
L78:
    movq	$u1, -48(%rbp)
    movq	$0, -56(%rbp)
    jmp	L66
L67:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$0, (%rax)
    addq	$1, -56(%rbp)
L66:
    movq	-56(%rbp), %rax
    cmpq	-80(%rbp), %rax
    jb	L67
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	$0, -56(%rbp)
    jmp	L68
L69:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$97, (%rax)
    addq	$1, -56(%rbp)
L68:
    movq	-56(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L69
    movq	-48(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	$0, -56(%rbp)
    jmp	L70
L71:
    movq	-48(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movb	$120, (%rax)
    addq	$1, -56(%rbp)
L70:
    cmpq	$9, -56(%rbp)
    jbe	L71
    movq	$u2, -40(%rbp)
    movq	$0, -56(%rbp)
    jmp	L72
L73:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$0, (%rax)
    addq	$1, -56(%rbp)
L72:
    movq	-56(%rbp), %rax
    cmpq	-72(%rbp), %rax
    jb	L73
    movq	-40(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	$0, -56(%rbp)
    jmp	L74
L75:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$97, (%rax)
    addq	$1, -56(%rbp)
L74:
    movq	-56(%rbp), %rax
    cmpq	-64(%rbp), %rax
    jb	L75
    movq	-40(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	$0, -56(%rbp)
    jmp	L76
L77:
    movq	-40(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movb	$120, (%rax)
    addq	$1, -56(%rbp)
L76:
    cmpq	$9, -56(%rbp)
    jbe	L77
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$0, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$97, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	test
    movq	-24(%rbp), %rax
    movb	$0, (%rax)
    movq	-8(%rbp), %rax
    movb	$97, (%rax)
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movb	$0, (%rax)
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$-1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$-1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$-1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$-1, %edx
    movq	%rcx, %rsi
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
    movq	-16(%rbp), %rcx
    movq	-32(%rbp), %rax
    movl	$1, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	test
    addq	$1, -64(%rbp)
L65:
    cmpq	$63, -64(%rbp)
    jbe	L78
    addq	$1, -72(%rbp)
L64:
    cmpq	$7, -72(%rbp)
    jbe	L79
    addq	$1, -80(%rbp)
L63:
    cmpq	$7, -80(%rbp)
    jbe	L80
    movl	$0, %edi
    call	exit
