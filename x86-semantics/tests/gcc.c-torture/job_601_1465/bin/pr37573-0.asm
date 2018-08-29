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
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	-24(%rbp), %rax
    movl	8(%rax), %eax
    leal	-1(%rax), %edx
    movq	-24(%rbp), %rax
    movl	%edx, 8(%rax)
    movq	-24(%rbp), %rax
    movl	8(%rax), %eax
    testl	%eax, %eax
    jne	L58
    movq	-24(%rbp), %rax
    addq	$12, %rax
    movq	%rax, -8(%rbp)
    movq	-24(%rbp), %rax
    movq	-8(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	$0, -16(%rbp)
    jmp	L59
L60:
    movl	-16(%rbp), %eax
    leaq	0(,%rax,4), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movl	-16(%rbp), %edx
    leaq	0(,%rdx,4), %rcx
    movq	-8(%rbp), %rdx
    addq	%rcx, %rdx
    movl	(%rdx), %ecx
    movl	-16(%rbp), %edx
    addl	$1, %edx
    movl	%edx, %edx
    leaq	0(,%rdx,4), %rsi
    movq	-8(%rbp), %rdx
    addq	%rsi, %rdx
    movl	(%rdx), %edx
    xorl	%ecx, %edx
    movl	%edx, %ecx
    andl	$2147483646, %ecx
    movl	-16(%rbp), %edx
    leaq	0(,%rdx,4), %rsi
    movq	-8(%rbp), %rdx
    addq	%rsi, %rdx
    movl	(%rdx), %edx
    xorl	%ecx, %edx
    movl	%edx, %ecx
    shrl	%ecx
    movl	-16(%rbp), %edx
    addl	$1, %edx
    movl	%edx, %edx
    leaq	0(,%rdx,4), %rsi
    movq	-8(%rbp), %rdx
    addq	%rsi, %rdx
    movl	(%rdx), %edx
    andl	$1, %edx
    negl	%edx
    andl	$-1727483681, %edx
    xorl	%edx, %ecx
    movl	-16(%rbp), %edx
    addl	$397, %edx
    movl	%edx, %edx
    leaq	0(,%rdx,4), %rsi
    movq	-8(%rbp), %rdx
    addq	%rsi, %rdx
    movl	(%rdx), %edx
    xorl	%ecx, %edx
    movl	%edx, (%rax)
    addl	$1, -16(%rbp)
L59:
    cmpl	$226, -16(%rbp)
    jbe	L60
L58:
    movq	-24(%rbp), %rax
    movq	(%rax), %rax
    leaq	4(%rax), %rcx
    movq	-24(%rbp), %rdx
    movq	%rcx, (%rdx)
    movl	(%rax), %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$11, %eax
    xorl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    andl	$-12953427, %eax
    sall	$7, %eax
    xorl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    andl	$-8308, %eax
    sall	$15, %eax
    xorl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$18, %eax
    xorl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	%eax
    popq	%rbp
    ret
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$2560, %rsp
    movq	%rdi, -2552(%rbp)
    movl	%esi, -2556(%rbp)
    movl	%edx, -2560(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-2528(%rbp), %rax
    addq	$12, %rax
    movq	%rax, -2536(%rbp)
    movq	-2536(%rbp), %rax
    movl	-2560(%rbp), %edx
    movl	%edx, (%rax)
    movl	$1, -2540(%rbp)
    jmp	L63
L64:
    movl	-2540(%rbp), %eax
    leaq	0(,%rax,4), %rdx
    movq	-2536(%rbp), %rax
    addq	%rdx, %rax
    movl	-2540(%rbp), %edx
    subl	$1, %edx
    movl	%edx, %edx
    leaq	0(,%rdx,4), %rcx
    movq	-2536(%rbp), %rdx
    addq	%rcx, %rdx
    movl	(%rdx), %edx
    movl	%edx, %ecx
    shrl	$30, %ecx
    movl	-2540(%rbp), %edx
    subl	$1, %edx
    movl	%edx, %edx
    leaq	0(,%rdx,4), %rsi
    movq	-2536(%rbp), %rdx
    addq	%rsi, %rdx
    movl	(%rdx), %edx
    xorl	%ecx, %edx
    imull	$1812433253, %edx, %ecx
    movl	-2540(%rbp), %edx
    addl	%ecx, %edx
    movl	%edx, (%rax)
    addl	$1, -2540(%rbp)
L63:
    cmpl	$623, -2540(%rbp)
    jbe	L64
    movl	$1, -2520(%rbp)
    jmp	L65
L66:
    leaq	-2528(%rbp), %rax
    movq	%rax, %rdi
    call	foo
    movl	%eax, %ecx
    movq	-2552(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -2552(%rbp)
    movzbl	(%rax), %edx
    xorl	%ecx, %edx
    movb	%dl, (%rax)
L65:
    movl	-2556(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -2556(%rbp)
    testl	%eax, %eax
    jne	L66
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L67
    call	__stack_chk_fail
L67:
    leave
    ret
    .data
p:
    .byte	-64
    .byte	73
    .byte	23
    .byte	50
    .byte	98
    .byte	30
    .byte	46
    .byte	-43
    .byte	76
    .byte	25
    .byte	40
    .byte	73
    .byte	-111
    .byte	-28
    .byte	114
    .byte	-125
    .byte	-111
    .byte	61
    .byte	-109
    .byte	-125
    .byte	-77
    .byte	97
    .byte	56
q:
    .byte	62
    .byte	65
    .byte	85
    .byte	84
    .byte	79
    .byte	73
    .byte	84
    .byte	32
    .byte	85
    .byte	78
    .byte	73
    .byte	67
    .byte	79
    .byte	68
    .byte	69
    .byte	32
    .byte	83
    .byte	67
    .byte	82
    .byte	73
    .byte	80
    .byte	84
    .byte	60
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$23, -4(%rbp)
    movl	-4(%rbp), %eax
    leal	41566(%rax), %edx
    movl	-4(%rbp), %eax
    movl	%eax, %esi
    movl	$p, %edi
    call	bar
    movl	-4(%rbp), %eax
    movq	%rax, %rdx
    movl	$q, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L69
    call	abort
L69:
    movl	$0, %eax
    leave
    ret
