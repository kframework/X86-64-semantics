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
    .globl	inet_check_attr
inet_check_attr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movl	$1, -12(%rbp)
    jmp	L40
L44:
    movl	-12(%rbp), %eax
    cltq
    salq	$3, %rax
    leaq	-8(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movq	%rax, -8(%rbp)
    cmpq	$0, -8(%rbp)
    je	L41
    movq	-8(%rbp), %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %eax
    subq	$4, %rax
    cmpq	$3, %rax
    ja	L42
    movl	$-22, %eax
    jmp	L43
L42:
    cmpl	$9, -12(%rbp)
    je	L41
    cmpl	$8, -12(%rbp)
    je	L41
    movl	-12(%rbp), %eax
    cltq
    salq	$3, %rax
    leaq	-8(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movq	-8(%rbp), %rdx
    addq	$4, %rdx
    movq	%rdx, (%rax)
L41:
    addl	$1, -12(%rbp)
L40:
    cmpl	$14, -12(%rbp)
    jle	L44
    movl	$0, %eax
L43:
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
    jmp	L46
L47:
    movl	-148(%rbp), %eax
    cltq
    leaq	-144(%rbp), %rdx
    movq	%rdx, -128(%rbp,%rax,8)
    addl	$1, -148(%rbp)
L46:
    cmpl	$13, -148(%rbp)
    jle	L47
    leaq	-128(%rbp), %rax
    movq	%rax, %rsi
    movl	$0, %edi
    call	inet_check_attr
    testl	%eax, %eax
    je	L48
    call	abort
L48:
    movl	$0, -148(%rbp)
    jmp	L49
L53:
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    cmpl	$7, -148(%rbp)
    je	L50
    cmpl	$8, -148(%rbp)
    je	L50
    movl	$1, %ecx
    jmp	L51
L50:
    movl	$0, %ecx
L51:
    leaq	-144(%rbp), %rdx
    movslq	%ecx, %rcx
    salq	$2, %rcx
    addq	%rcx, %rdx
    cmpq	%rdx, %rax
    je	L52
    call	abort
L52:
    addl	$1, -148(%rbp)
L49:
    cmpl	$13, -148(%rbp)
    jle	L53
    movl	$0, -148(%rbp)
    jmp	L54
L55:
    movl	-148(%rbp), %eax
    cltq
    leaq	-144(%rbp), %rdx
    movq	%rdx, -128(%rbp,%rax,8)
    addl	$1, -148(%rbp)
L54:
    cmpl	$13, -148(%rbp)
    jle	L55
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
    je	L56
    call	abort
L56:
    movl	$0, -148(%rbp)
    jmp	L57
L61:
    cmpl	$1, -148(%rbp)
    jne	L58
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    testq	%rax, %rax
    je	L58
    call	abort
L58:
    cmpl	$1, -148(%rbp)
    je	L59
    cmpl	$5, -148(%rbp)
    jg	L59
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rax
    leaq	-144(%rbp), %rdx
    addq	$4, %rdx
    cmpq	%rdx, %rax
    je	L59
    call	abort
L59:
    cmpl	$5, -148(%rbp)
    jle	L60
    movl	-148(%rbp), %eax
    cltq
    movq	-128(%rbp,%rax,8), %rdx
    leaq	-144(%rbp), %rax
    cmpq	%rax, %rdx
    je	L60
    call	abort
L60:
    addl	$1, -148(%rbp)
L57:
    cmpl	$13, -148(%rbp)
    jle	L61
    movl	$0, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L63
    call	__stack_chk_fail
L63:
    leave
    ret
