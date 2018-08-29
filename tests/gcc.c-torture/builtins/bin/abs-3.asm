    .text
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
    jmp	L2
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L4
L3:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L5
    movl	$0, %eax
L4:
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
    jmp	L10
L11:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
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
    jmp	L14
L15:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L14:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L15
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
    jle	L23
    cmpl	$122, -4(%rbp)
    jg	L23
    movl	$1, %eax
    jmp	L24
L23:
    cmpl	$64, -4(%rbp)
    jle	L25
    cmpl	$90, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L24
L25:
    cmpl	$47, -4(%rbp)
    jle	L26
    cmpl	$57, -4(%rbp)
    jg	L26
    movl	$1, %eax
    jmp	L24
L26:
    movl	$0, %eax
L24:
    popq	%rbp
    ret
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
    je	L32
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movl	$0, %eax
    jmp	L27
L29:
    movq	-8(%rbp), %rax
    jmp	L27
L32:
L27:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L34
L35:
    addq	$1, -8(%rbp)
L34:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L35
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
L38:
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
    jne	L38
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L41
L43:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L41:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L42
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L43
L42:
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
    .globl	strcat
strcat:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L46
L47:
    addq	$1, -8(%rbp)
L46:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L47
    nop
L48:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L48
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	abs
abs:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    cltd
    movl	%edx, %eax
    xorl	-4(%rbp), %eax
    subl	%edx, %eax
    popq	%rbp
    ret
    .globl	labs
labs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    popq	%rbp
    ret
    .globl	llabs
llabs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    popq	%rbp
    ret
    .globl	imaxabs
imaxabs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    cqto
    movq	%rdx, %rax
    xorq	-8(%rbp), %rax
    subq	%rdx, %rax
    popq	%rbp
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, inside_main(%rip)
    call	main_test
    movl	$0, inside_main(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	link_error
link_error:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$144, %rsp
    movl	$0, -140(%rbp)
    movl	$1, -136(%rbp)
    movl	$-1, -132(%rbp)
    movl	$-2147483647, -128(%rbp)
    movl	$2147483647, -124(%rbp)
    movq	$0, -120(%rbp)
    movq	$1, -112(%rbp)
    movq	$-1, -104(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -96(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -88(%rbp)
    movq	$0, -80(%rbp)
    movq	$1, -72(%rbp)
    movq	$-1, -64(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -56(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -48(%rbp)
    movq	$0, -40(%rbp)
    movq	$1, -32(%rbp)
    movq	$-1, -24(%rbp)
    movabsq	$-9223372036854775807, %rax
    movq	%rax, -16(%rbp)
    movabsq	$9223372036854775807, %rax
    movq	%rax, -8(%rbp)
    movl	-140(%rbp), %eax
    testl	%eax, %eax
    je	L62
    call	abort
L62:
    movl	-136(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$1, %eax
    je	L63
    call	abort
L63:
    movl	-132(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$1, %eax
    je	L64
    call	abort
L64:
    movl	-128(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$2147483647, %eax
    je	L65
    call	abort
L65:
    movl	-124(%rbp), %eax
    cltd
    xorl	%edx, %eax
    subl	%edx, %eax
    cmpl	$2147483647, %eax
    je	L66
    call	abort
L66:
    movq	-120(%rbp), %rax
    testq	%rax, %rax
    je	L67
    call	abort
L67:
    movq	-112(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L68
    call	abort
L68:
    movq	-104(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L69
    call	abort
L69:
    movq	-96(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L70
    call	abort
L70:
    movq	-88(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L71
    call	abort
L71:
    movq	-80(%rbp), %rax
    testq	%rax, %rax
    je	L72
    call	abort
L72:
    movq	-72(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L73
    call	abort
L73:
    movq	-64(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L74
    call	abort
L74:
    movq	-56(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L75
    call	abort
L75:
    movq	-48(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L76
    call	abort
L76:
    movq	-40(%rbp), %rax
    testq	%rax, %rax
    je	L77
    call	abort
L77:
    movq	-32(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L78
    call	abort
L78:
    movq	-24(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    cmpq	$1, %rax
    je	L79
    call	abort
L79:
    movq	-16(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L80
    call	abort
L80:
    movq	-8(%rbp), %rax
    cqto
    xorq	%rdx, %rax
    subq	%rdx, %rax
    movabsq	$9223372036854775807, %rdx
    cmpq	%rdx, %rax
    je	L82
    call	abort
L82:
    nop
    leave
    ret
