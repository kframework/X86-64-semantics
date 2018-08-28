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
    .globl	line_hints
line_hints:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -72(%rbp)
    movq	%rsi, -80(%rbp)
    movq	%rdx, -88(%rbp)
    movq	-88(%rbp), %rax
    movq	(%rax), %rdx
    movq	-80(%rbp), %rax
    movq	(%rax), %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -40(%rbp)
    movq	-88(%rbp), %rax
    movq	8(%rax), %rdx
    movq	-80(%rbp), %rax
    movq	8(%rax), %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -32(%rbp)
    movq	-72(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, -56(%rbp)
    movq	-72(%rbp), %rax
    movl	8(%rax), %eax
    movl	%eax, -52(%rbp)
    cmpl	$0, -56(%rbp)
    je	L40
    negq	-40(%rbp)
L40:
    cmpl	$0, -52(%rbp)
    je	L41
    negq	-32(%rbp)
L41:
    movq	-72(%rbp), %rax
    movl	(%rax), %eax
    testl	%eax, %eax
    je	L42
    movq	-40(%rbp), %rax
    movq	%rax, -24(%rbp)
    movl	-56(%rbp), %eax
    movl	%eax, -44(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -40(%rbp)
    movl	-52(%rbp), %eax
    movl	%eax, -56(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -32(%rbp)
    movl	-44(%rbp), %eax
    movl	%eax, -52(%rbp)
L42:
    movq	-40(%rbp), %rax
    sarq	$63, %rax
    movq	%rax, %rdx
    xorq	-40(%rbp), %rdx
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    sarq	$63, %rax
    movq	%rax, %rdx
    xorq	-32(%rbp), %rdx
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -8(%rbp)
    cmpq	$0, -32(%rbp)
    je	L43
    movq	-8(%rbp), %rax
    sarq	$4, %rax
    cmpq	-16(%rbp), %rax
    jl	L43
    cmpq	$0, -32(%rbp)
    jle	L44
    movl	$2, %eax
    jmp	L45
L44:
    movl	$1, %eax
L45:
    movl	%eax, -48(%rbp)
    cmpl	$0, -56(%rbp)
    je	L47
    xorl	$3, -48(%rbp)
    jmp	L47
L43:
    cmpq	$0, -40(%rbp)
    je	L48
    movq	-16(%rbp), %rax
    sarq	$4, %rax
    cmpq	-8(%rbp), %rax
    jl	L48
    cmpq	$0, -40(%rbp)
    jns	L49
    movl	$8, %eax
    jmp	L50
L49:
    movl	$4, %eax
L50:
    movl	%eax, -48(%rbp)
    cmpl	$0, -52(%rbp)
    je	L47
    xorl	$12, -48(%rbp)
    jmp	L47
L48:
    movl	$0, -48(%rbp)
L47:
    movl	-48(%rbp), %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$gsf2427 + 16, %eax
    movq	%rax, %rdx
    movl	$gsf2427, %esi
    movl	$fh2426, %edi
    call	line_hints
    cmpl	$1, %eax
    jne	L54
    movl	$gsf2427 + 48, %edx
    movl	$gsf2427 + 32, %ecx
    movl	$fh2426 + 12, %eax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	line_hints
    cmpl	$8, %eax
    jne	L54
    movl	$gsf2427 + 48, %edx
    movl	$gsf2427 + 32, %ecx
    movl	$fh2426 + 24, %eax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	line_hints
    cmpl	$4, %eax
    je	L55
L54:
    call	abort
L55:
    movl	$0, %edi
    call	exit
    .data
gsf2427:
    .quad	196608
    .quad	80216
    .quad	196608
    .quad	98697
    .quad	80216
    .quad	196608
    .quad	98697
    .quad	196608
fh2426:
    .long	0
    .long	1
    .long	0
    .long	0
    .long	0
    .long	1
    .long	0
    .long	0
    .long	0
