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
    .comm	a,8,8
    .comm	b,8,8
    .comm	u,64,32
    .comm	v,4,4
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -8(%rbp)
    movl	%ecx, -20(%rbp)
    cmpl	$4, -4(%rbp)
    jne	L54
    cmpq	$u + 4, -16(%rbp)
    je	L55
L54:
    call	abort
L55:
    movl	-8(%rbp), %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, v(%rip)
    movl	$16384, v(%rip)
    nop
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, v(%rip)
    movl	-12(%rbp), %eax
    movl	%eax, v(%rip)
    nop
    popq	%rbp
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, v(%rip)
    movq	-8(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, v(%rip)
    movl	$0, v(%rip)
    movl	v(%rip), %eax
    addl	$1, %eax
    popq	%rbp
    ret
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	%rdi, -56(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	a(%rip), %rax
    movq	%rax, -32(%rbp)
    cmpq	$0, -56(%rbp)
    jne	L60
    leaq	-32(%rbp), %rax
    movq	%rax, -56(%rbp)
    jmp	L61
L60:
    movq	-56(%rbp), %rax
    movl	4(%rax), %eax
    andl	$8191, %eax
    cmpl	$15, %eax
    jbe	L62
    movq	-56(%rbp), %rax
    movl	4(%rax), %eax
    andl	$8191, %eax
    movl	$8192, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	$31, %eax
    ja	L61
L62:
    movq	-56(%rbp), %rax
    movl	4(%rax), %edx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    movl	%edx, %ecx
    movl	%eax, %edx
    movl	$0, %esi
    movl	$1, %edi
    call	foo
L61:
    movq	-56(%rbp), %rax
    movq	%rax, %rdi
    call	baz
    testl	%eax, %eax
    je	L74
    movq	b(%rip), %rax
    movzwl	2(%rax), %eax
    movzwl	%ax, %eax
    andl	$2, %eax
    testl	%eax, %eax
    je	L65
    movl	$32, %eax
    jmp	L66
L65:
    movl	$4, %eax
L66:
    movl	%eax, -36(%rbp)
    movq	-56(%rbp), %rax
    movl	4(%rax), %eax
    andl	$8191, %eax
    movl	%eax, -40(%rbp)
    cmpl	$0, -40(%rbp)
    jne	L67
    movl	-28(%rbp), %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, -28(%rbp)
    movl	-36(%rbp), %eax
    movl	%eax, -40(%rbp)
    jmp	L68
L67:
    movl	-40(%rbp), %eax
    cmpl	-36(%rbp), %eax
    jnb	L68
    movq	-56(%rbp), %rax
    movl	4(%rax), %edx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    movl	%edx, %ecx
    movl	%eax, %edx
    movl	$0, %esi
    movl	$2, %edi
    call	foo
    jmp	L59
L68:
    movq	b(%rip), %rax
    movzwl	2(%rax), %eax
    movzwl	%ax, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L69
    movl	-40(%rbp), %eax
    cmpl	-36(%rbp), %eax
    jne	L69
    movq	-56(%rbp), %rax
    movq	(%rax), %rdi
    call	bar
    movq	-56(%rbp), %rax
    movl	4(%rax), %edx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    movl	%edx, %ecx
    movl	%eax, %edx
    movl	$0, %esi
    movl	$3, %edi
    call	foo
    jmp	L59
L69:
    movq	b(%rip), %rdx
    movq	-56(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    andl	$8191, %eax
    addq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movl	4(%rax), %edx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jb	L75
    movq	-16(%rbp), %rax
    movl	4(%rax), %edx
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jne	L71
    movq	-16(%rbp), %rax
    movl	8(%rax), %edx
    movq	-56(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	%eax, %edx
    jb	L75
L71:
    movq	-56(%rbp), %rax
    movl	4(%rax), %ecx
    movq	-56(%rbp), %rax
    movl	(%rax), %edx
    movq	-16(%rbp), %rax
    movq	%rax, %rsi
    movl	$4, %edi
    call	foo
    nop
    jmp	L75
L74:
    nop
    jmp	L59
L75:
    nop
L59:
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L73
    call	__stack_chk_fail
L73:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$0, -8(%rbp)
    movl	$a, %edx
    movq	-8(%rbp), %rax
    movq	%rax, -8(%rbp)
    movl	$8192, u + 8(%rip)
    movq	$u, b(%rip)
    movq	-8(%rbp), %rax
    movq	%rax, %rdi
    call	test
    movl	v(%rip), %eax
    cmpl	$16384, %eax
    je	L77
    call	abort
L77:
    movl	$0, %eax
    leave
    ret
