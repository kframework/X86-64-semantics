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
    .comm	a,4,4
    .comm	b,4,4
    .comm	c,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    jmp	L58
L62:
    movzbl	-80(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -80(%rbp)
    movzwl	-80(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -80(%rbp)
    movzbl	-78(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -78(%rbp)
    movzbl	-77(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -77(%rbp)
    movzbl	-77(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movb	%al, -77(%rbp)
    movzbl	-76(%rbp), %eax
    andl	$0, %eax
    movb	%al, -76(%rbp)
    movzbl	-75(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -75(%rbp)
    movzbl	-74(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -74(%rbp)
    movzwl	-74(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -74(%rbp)
    movzbl	-72(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -72(%rbp)
    movzbl	-71(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -71(%rbp)
    movzbl	-71(%rbp), %eax
    andl	$1, %eax
    movb	%al, -71(%rbp)
    movzbl	-70(%rbp), %eax
    andl	$0, %eax
    movb	%al, -70(%rbp)
    movzbl	-69(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -69(%rbp)
    movzbl	-68(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -68(%rbp)
    movzwl	-68(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -68(%rbp)
    movzbl	-66(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -66(%rbp)
    movzbl	-65(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -65(%rbp)
    movzbl	-65(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movb	%al, -65(%rbp)
    movzbl	-64(%rbp), %eax
    andl	$0, %eax
    movb	%al, -64(%rbp)
    movzbl	-63(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -63(%rbp)
    movzbl	-62(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -62(%rbp)
    movzwl	-62(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -62(%rbp)
    movzbl	-60(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -60(%rbp)
    movzbl	-59(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -59(%rbp)
    movzbl	-59(%rbp), %eax
    andl	$1, %eax
    movb	%al, -59(%rbp)
    movzbl	-58(%rbp), %eax
    andl	$0, %eax
    movb	%al, -58(%rbp)
    movzbl	-57(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -57(%rbp)
    movzbl	-56(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -56(%rbp)
    movzwl	-56(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -56(%rbp)
    movzbl	-54(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -54(%rbp)
    movzbl	-53(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -53(%rbp)
    movzbl	-53(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movb	%al, -53(%rbp)
    movzbl	-52(%rbp), %eax
    andl	$0, %eax
    movb	%al, -52(%rbp)
    movzbl	-51(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -51(%rbp)
    movzbl	-50(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -50(%rbp)
    movzwl	-50(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -50(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -48(%rbp)
    movzbl	-47(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -47(%rbp)
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movb	%al, -47(%rbp)
    movzbl	-46(%rbp), %eax
    andl	$0, %eax
    movb	%al, -46(%rbp)
    movzbl	-45(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -45(%rbp)
    movzbl	-44(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -44(%rbp)
    movzwl	-44(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -44(%rbp)
    movzbl	-42(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -42(%rbp)
    movzbl	-41(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -41(%rbp)
    movzbl	-41(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movb	%al, -41(%rbp)
    movzbl	-40(%rbp), %eax
    andl	$0, %eax
    movb	%al, -40(%rbp)
    movzbl	-39(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -39(%rbp)
    movzbl	-38(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -38(%rbp)
    movzwl	-38(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -38(%rbp)
    movzbl	-36(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -36(%rbp)
    movzbl	-35(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -35(%rbp)
    movzbl	-35(%rbp), %eax
    andl	$1, %eax
    movb	%al, -35(%rbp)
    movzbl	-34(%rbp), %eax
    andl	$0, %eax
    movb	%al, -34(%rbp)
    movzbl	-33(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -33(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -32(%rbp)
    movzwl	-32(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -32(%rbp)
    movzbl	-30(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -30(%rbp)
    movzbl	-29(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -29(%rbp)
    movzbl	-29(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movb	%al, -29(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$0, %eax
    movb	%al, -28(%rbp)
    movzbl	-27(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -27(%rbp)
    movzbl	-26(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -26(%rbp)
    movzwl	-26(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -26(%rbp)
    movzbl	-24(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -24(%rbp)
    movzbl	-23(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -23(%rbp)
    movzbl	-23(%rbp), %eax
    andl	$1, %eax
    movb	%al, -23(%rbp)
    movzbl	-22(%rbp), %eax
    andl	$0, %eax
    movb	%al, -22(%rbp)
    movzbl	-21(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -21(%rbp)
    movzbl	-20(%rbp), %eax
    andl	$-2, %eax
    movb	%al, -20(%rbp)
    movzwl	-20(%rbp), %eax
    andl	$1, %eax
    orl	$18, %eax
    movw	%ax, -20(%rbp)
    movzbl	-18(%rbp), %eax
    andl	$-32, %eax
    movb	%al, -18(%rbp)
    movl	b(%rip), %eax
    testl	%eax, %eax
    jne	L59
    movzbl	-80(%rbp), %eax
    andl	$1, %eax
    testb	%al, %al
    je	L60
L59:
    movl	$1, %eax
    jmp	L61
L60:
    movl	$0, %eax
L61:
    movl	%eax, b(%rip)
    movl	-80(%rbp), %eax
    sall	$11, %eax
    sarl	$12, %eax
    movl	%eax, c(%rip)
    movl	a(%rip), %eax
    addl	$1, %eax
    movl	%eax, a(%rip)
L58:
    movl	a(%rip), %eax
    testl	%eax, %eax
    jle	L62
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L64
    call	__stack_chk_fail
L64:
    leave
    ret
