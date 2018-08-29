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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .globl	inet_check_attr
inet_check_attr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movl	$1, -12(%rbp)
    jmp	L46
L50:
    movl	-12(%rbp), %eax
    cltq
    salq	$3, %rax
    leaq	-8(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    cmpq	$0, -8(%rbp)
    je	L47
    movq	-8(%rbp), %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %eax
    subq	$4, %rax
    cmpq	$3, %rax
    ja	L48
    movl	$-22, %eax
    jmp	L49
L48:
    cmpl	$9, -12(%rbp)
    je	L47
    cmpl	$8, -12(%rbp)
    je	L47
    movl	-12(%rbp), %eax
    cltq
    salq	$3, %rax
    leaq	-8(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movq	-8(%rbp), %rdx
    addq	$4, %rdx
    movq	%rdx, (%rax)
L47:
    addl	$1, -12(%rbp)
L46:
    cmpl	$14, -12(%rbp)
    jle	L50
    movl	$0, %eax
L49:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$160, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movw	$12, -144(%rbp)
    movw	$0, -142(%rbp)
    movl	-144(%rbp), %eax
    movl	%eax, -140(%rbp)
    movl	$0, -148(%rbp)
    jmp	L52
L53:
    movl	-148(%rbp), %eax
    cltq
    leaq	-144(%rbp), %rdx
    movq	%rdx, -128(%rbp,%rax,8)
    addl	$1, -148(%rbp)
L52:
    cmpl	$13, -148(%rbp)
    jle	L53
    leaq	-128(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %edi
    call	inet_check_attr
    testl	%eax, %eax
    je	L54
    call	abort
L54:
    movl	$0, -148(%rbp)
    jmp	L55
L59:
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    cmpl	$7, -148(%rbp)
    je	L56
    cmpl	$8, -148(%rbp)
    je	L56
    movl	$1, %ecx
    jmp	L57
L56:
    movl	$0, %ecx
L57:
    leaq	-144(%rbp), %rdx
    movslq	%ecx, %rcx
    salq	$2, %rcx
    addq	%rcx, %rdx
    cmpq	%rdx, %rax
    je	L58
    call	abort
L58:
    addl	$1, -148(%rbp)
L55:
    cmpl	$13, -148(%rbp)
    jle	L59
    movl	$0, -148(%rbp)
    jmp	L60
L61:
    movl	-148(%rbp), %eax
    cltq
    leaq	-144(%rbp), %rdx
    movq	%rdx, -128(%rbp,%rax,8)
    addl	$1, -148(%rbp)
L60:
    cmpl	$13, -148(%rbp)
    jle	L61
    movq	$0, -120(%rbp)
    movzwl	-140(%rbp), %eax
    subl	$8, %eax
    movw	%ax, -140(%rbp)
    leaq	-144(%rbp), %rax
    addq	$4, %rax
    movq	%rax, -88(%rbp)
    leaq	-128(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %edi
    call	inet_check_attr
    cmpl	$-22, %eax
    je	L62
    call	abort
L62:
    movl	$0, -148(%rbp)
    jmp	L63
L67:
    cmpl	$1, -148(%rbp)
    jne	L64
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    testq	%rax, %rax
    je	L64
    call	abort
L64:
    cmpl	$1, -148(%rbp)
    je	L65
    cmpl	$5, -148(%rbp)
    jg	L65
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    leaq	-144(%rbp), %rdx
    addq	$4, %rdx
    cmpq	%rdx, %rax
    je	L65
    call	abort
L65:
    cmpl	$5, -148(%rbp)
    jle	L66
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rdx
    leaq	-144(%rbp), %rax
    cmpq	%rax, %rdx
    je	L66
    call	abort
L66:
    addl	$1, -148(%rbp)
L63:
    cmpl	$13, -148(%rbp)
    jle	L67
    movl	$0, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L69
    call	__stack_chk_fail
L69:
    leave
    ret
