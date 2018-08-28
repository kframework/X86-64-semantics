    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
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
L12:
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
    jne	L12
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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .comm	bitmap_zero_bits,40,32
bmp_iter_set_init:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	%edx, -20(%rbp)
    movq	%rcx, -32(%rbp)
    movq	-16(%rbp), %rax
    movq	(%rax), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    movq	$0, 8(%rax)
L43:
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L40
    movq	-8(%rbp), %rax
    movq	$bitmap_zero_bits, (%rax)
    jmp	L41
L40:
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    movl	16(%rax), %eax
    movl	-20(%rbp), %edx
    shrl	$7, %edx
    cmpl	%edx, %eax
    jnb	L45
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    movq	(%rax), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, (%rax)
    jmp	L43
L45:
    nop
L41:
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    movl	16(%rax), %eax
    movl	-20(%rbp), %edx
    shrl	$7, %edx
    cmpl	%edx, %eax
    je	L44
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    movl	16(%rax), %eax
    sall	$7, %eax
    movl	%eax, -20(%rbp)
L44:
    movl	-20(%rbp), %eax
    shrl	$6, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    movl	%edx, 16(%rax)
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    movq	-8(%rbp), %rdx
    movl	16(%rdx), %edx
    movl	%edx, %edx
    movq	24(%rax,%rdx,8), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    movq	24(%rax), %rdx
    movl	-20(%rbp), %eax
    andl	$63, %eax
    shrx	%rax, %rdx, %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    movq	24(%rax), %rax
    testq	%rax, %rax
    sete	%al
    movzbl	%al, %eax
    addl	%eax, -20(%rbp)
    movq	-32(%rbp), %rax
    movl	-20(%rbp), %edx
    movl	%edx, (%rax)
    nop
    popq	%rbp
    ret
foobar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	%rdi, -104(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-84(%rbp), %rdx
    movq	-104(%rbp), %rsi
    leaq	-48(%rbp), %rax
    movq	%rdx, %rcx
    movl	$0, %edx
    movq	%rax, %rdi
    call	bmp_iter_set_init
    jmp	L47
L59:
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    leaq	-84(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-72(%rbp), %rax
    movq	24(%rax), %rax
    shrq	%rax
    movq	%rax, %rdx
    movq	-72(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-64(%rbp), %rax
    movl	(%rax), %eax
    leal	1(%rax), %edx
    movq	-64(%rbp), %rax
    movl	%edx, (%rax)
L47:
    leaq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    leaq	-84(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    testq	%rax, %rax
    jne	L48
    jmp	L61
L50:
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    shrq	%rax
    movq	%rax, %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    leal	1(%rax), %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
L48:
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L50
    movl	$1, %eax
    jmp	L51
L61:
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    addl	$63, %eax
    shrl	$6, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
    movq	-80(%rbp), %rax
    movl	16(%rax), %eax
    leal	1(%rax), %edx
    movq	-80(%rbp), %rax
    movl	%edx, 16(%rax)
    jmp	L52
L56:
    movq	-80(%rbp), %rax
    movq	(%rax), %rax
    movq	-80(%rbp), %rdx
    movl	16(%rdx), %edx
    movl	%edx, %edx
    movq	24(%rax,%rdx,8), %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    testq	%rax, %rax
    jne	L53
    jmp	L62
L55:
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    shrq	%rax
    movq	%rax, %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, 24(%rax)
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    leal	1(%rax), %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
L53:
    movq	-80(%rbp), %rax
    movq	24(%rax), %rax
    andl	$1, %eax
    testq	%rax, %rax
    je	L55
    movl	$1, %eax
    jmp	L51
L62:
    movq	-56(%rbp), %rax
    movl	(%rax), %eax
    leal	64(%rax), %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
    movq	-80(%rbp), %rax
    movl	16(%rax), %eax
    leal	1(%rax), %edx
    movq	-80(%rbp), %rax
    movl	%edx, 16(%rax)
L52:
    movq	-80(%rbp), %rax
    movl	16(%rax), %eax
    cmpl	$2, %eax
    jne	L56
    movq	-80(%rbp), %rax
    movq	(%rax), %rax
    movq	(%rax), %rdx
    movq	-80(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-80(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L57
    movl	$0, %eax
    jmp	L51
L57:
    movq	-80(%rbp), %rax
    movq	(%rax), %rax
    movl	16(%rax), %eax
    sall	$7, %eax
    movl	%eax, %edx
    movq	-56(%rbp), %rax
    movl	%edx, (%rax)
    movq	-80(%rbp), %rax
    movl	$0, 16(%rax)
    jmp	L52
L51:
    testb	%al, %al
    jne	L59
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L60
    call	__stack_chk_fail
L60:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$0, -48(%rbp)
    movq	$0, -40(%rbp)
    movl	$0, -32(%rbp)
    movq	$1, -24(%rbp)
    movq	$1, -16(%rbp)
    leaq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    movl	$0, -64(%rbp)
    movq	$0, -56(%rbp)
    leaq	-80(%rbp), %rax
    movq	%rax, %rdi
    call	foobar
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L65
    call	__stack_chk_fail
L65:
    leave
    ret
