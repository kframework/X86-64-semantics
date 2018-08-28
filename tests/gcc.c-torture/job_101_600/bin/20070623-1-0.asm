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
    .globl	nge
nge:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setge	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	ngt
ngt:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setg	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	nle
nle:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setle	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	nlt
nlt:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setl	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	neq
neq:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    sete	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	nne
nne:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setne	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	ngeu
ngeu:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setnb	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	ngtu
ngtu:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    seta	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	nleu
nleu:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setbe	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	nltu
nltu:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    setb	%al
    movzbl	%al, %eax
    negl	%eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	nge
    testl	%eax, %eax
    je	L60
    call	abort
L60:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	nge
    cmpl	$-1, %eax
    je	L61
    call	abort
L61:
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	ngt
    testl	%eax, %eax
    je	L62
    call	abort
L62:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	ngt
    cmpl	$-1, %eax
    je	L63
    call	abort
L63:
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	nle
    cmpl	$-1, %eax
    je	L64
    call	abort
L64:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	nle
    testl	%eax, %eax
    je	L65
    call	abort
L65:
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	nlt
    cmpl	$-1, %eax
    je	L66
    call	abort
L66:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	nlt
    testl	%eax, %eax
    je	L67
    call	abort
L67:
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	neq
    testl	%eax, %eax
    je	L68
    call	abort
L68:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	neq
    testl	%eax, %eax
    je	L69
    call	abort
L69:
    movl	$2147483647, %esi
    movl	$-2147483648, %edi
    call	nne
    cmpl	$-1, %eax
    je	L70
    call	abort
L70:
    movl	$-2147483648, %esi
    movl	$2147483647, %edi
    call	nne
    cmpl	$-1, %eax
    je	L71
    call	abort
L71:
    movl	$-1, %esi
    movl	$0, %edi
    call	ngeu
    testl	%eax, %eax
    je	L72
    call	abort
L72:
    movl	$0, %esi
    movl	$-1, %edi
    call	ngeu
    cmpl	$-1, %eax
    je	L73
    call	abort
L73:
    movl	$-1, %esi
    movl	$0, %edi
    call	ngtu
    testl	%eax, %eax
    je	L74
    call	abort
L74:
    movl	$0, %esi
    movl	$-1, %edi
    call	ngtu
    cmpl	$-1, %eax
    je	L75
    call	abort
L75:
    movl	$-1, %esi
    movl	$0, %edi
    call	nleu
    cmpl	$-1, %eax
    je	L76
    call	abort
L76:
    movl	$0, %esi
    movl	$-1, %edi
    call	nleu
    testl	%eax, %eax
    je	L77
    call	abort
L77:
    movl	$-1, %esi
    movl	$0, %edi
    call	nltu
    cmpl	$-1, %eax
    je	L78
    call	abort
L78:
    movl	$0, %esi
    movl	$-1, %edi
    call	nltu
    testl	%eax, %eax
    je	L79
    call	abort
L79:
    movl	$0, %edi
    call	exit
