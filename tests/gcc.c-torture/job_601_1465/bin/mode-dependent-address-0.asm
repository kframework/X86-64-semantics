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
    .globl	f883b
f883b:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	%rcx, -48(%rbp)
    movq	%r8, -56(%rbp)
    movl	$0, -4(%rbp)
    jmp	L54
L55:
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	-24(%rbp), %rax
    addq	%rax, %rdx
    movl	-4(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    movq	-32(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    movl	$1, %ecx
    testw	%ax, %ax
    cmovg	%ecx, %eax
    movswl	%ax, %ecx
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rsi
    movq	-40(%rbp), %rax
    addq	%rsi, %rax
    movl	(%rax), %eax
    andl	$31, %eax
    sarx	%eax, %ecx, %eax
    xorl	$1, %eax
    addl	$32, %eax
    sarl	$7, %eax
    orl	$-5, %eax
    movl	%eax, %esi
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rcx
    movq	-48(%rbp), %rax
    addq	%rcx, %rax
    movq	(%rax), %rax
    andl	%esi, %eax
    movb	%al, (%rdx)
    addl	$1, -4(%rbp)
L54:
    cmpl	$95, -4(%rbp)
    jle	L55
    nop
    popq	%rbp
    ret
    .comm	result,96,32
    .comm	arg1,192,32
    .comm	arg2,384,32
    .comm	arg3,768,32
    .comm	arg4,96,32
    .section	.rodata
LC0:
    .long	0
    .long	1
    .long	2
    .long	3
    .long	0
    .long	1
    .long	2
    .long	3
    .long	8
    .long	9
    .long	10
    .long	11
    .long	8
    .long	9
    .long	10
    .long	11
    .long	16
    .long	17
    .long	18
    .long	19
    .long	16
    .long	17
    .long	18
    .long	19
    .long	24
    .long	25
    .long	26
    .long	27
    .long	24
    .long	25
    .long	26
    .long	27
    .long	32
    .long	33
    .long	34
    .long	35
    .long	32
    .long	33
    .long	34
    .long	35
    .long	40
    .long	41
    .long	42
    .long	43
    .long	40
    .long	41
    .long	42
    .long	43
    .long	48
    .long	49
    .long	50
    .long	51
    .long	48
    .long	49
    .long	50
    .long	51
    .long	56
    .long	57
    .long	58
    .long	59
    .long	56
    .long	57
    .long	58
    .long	59
    .long	64
    .long	65
    .long	66
    .long	67
    .long	64
    .long	65
    .long	66
    .long	67
    .long	72
    .long	73
    .long	74
    .long	75
    .long	72
    .long	73
    .long	74
    .long	75
    .long	80
    .long	81
    .long	82
    .long	83
    .long	80
    .long	81
    .long	82
    .long	83
    .long	88
    .long	89
    .long	90
    .long	91
    .long	88
    .long	89
    .long	90
    .long	91
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$416, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-400(%rbp), %rax
    movl	$LC0, %ecx
    movl	$384, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memcpy
    movl	$0, -404(%rbp)
    jmp	L57
L58:
    movl	-404(%rbp), %eax
    movl	%eax, %edx
    movl	-404(%rbp), %eax
    cltq
    movb	%dl, arg4(%rax)
    movl	-404(%rbp), %eax
    cltq
    movzbl	arg4(%rax), %eax
    movzbl	%al, %edx
    movl	-404(%rbp), %eax
    cltq
    movw	%dx, arg1(%rax,%rax)
    movl	-404(%rbp), %eax
    cltq
    movzwl	arg1(%rax,%rax), %eax
    movswl	%ax, %edx
    movl	-404(%rbp), %eax
    cltq
    movl	%edx, arg2(,%rax,4)
    movl	-404(%rbp), %eax
    cltq
    movl	arg2(,%rax,4), %eax
    movl	%eax, %edx
    movl	-404(%rbp), %eax
    cltq
    movq	%rdx, arg3(,%rax,8)
    addl	$1, -404(%rbp)
L57:
    cmpl	$95, -404(%rbp)
    jle	L58
    movl	$arg4, %r8d
    movl	$arg3, %ecx
    movl	$arg2, %edx
    movl	$arg1, %esi
    movl	$result, %edi
    call	f883b
    movl	$0, -404(%rbp)
    jmp	L59
L61:
    movl	-404(%rbp), %eax
    cltq
    movzbl	result(%rax), %eax
    movsbl	%al, %edx
    movl	-404(%rbp), %eax
    cltq
    movl	-400(%rbp,%rax,4), %eax
    cmpl	%eax, %edx
    je	L60
    call	abort
L60:
    addl	$1, -404(%rbp)
L59:
    cmpl	$95, -404(%rbp)
    jle	L61
    movl	$0, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L63
    call	__stack_chk_fail
L63:
    leave
    ret
