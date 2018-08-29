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
    .section	.rodata
LC0:
    .string	""
    .text
    .globl	dummy1
dummy1:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$LC0, %eax
    popq	%rbp
    ret
    .globl	dummy2
dummy2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$0, %edi
    call	exit
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	$72, %edx
    movl	$85, %esi
    movl	$v2439, %edi
    call	memset
    movl	$v2439, %eax
    leave
    ret
    .globl	check
check:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    testl	%eax, %eax
    jne	L51
    movq	-16(%rbp), %rax
    movl	8(%rax), %eax
    testl	%eax, %eax
    jne	L51
    movq	-16(%rbp), %rax
    movl	12(%rax), %eax
    testl	%eax, %eax
    jne	L51
    movq	-16(%rbp), %rax
    movq	16(%rax), %rax
    testq	%rax, %rax
    jne	L51
    movq	-16(%rbp), %rax
    movzbl	24(%rax), %eax
    testb	%al, %al
    je	L52
L51:
    call	abort
L52:
    movl	$1, %eax
    leave
    ret
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl	%edi, -52(%rbp)
    movq	%rsi, -64(%rbp)
    movl	$0, -32(%rbp)
    movl	$0, -28(%rbp)
    movq	$0, -24(%rbp)
    movb	$0, -16(%rbp)
    movq	-64(%rbp), %rax
    movq	%rax, %rdi
    call	dummy1
    movq	%rax, -48(%rbp)
    cmpq	$0, -48(%rbp)
    jne	L55
    movl	$0, %eax
    jmp	L59
L55:
    movl	$72, %edi
    call	baz
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    movl	-52(%rbp), %edx
    movl	%edx, (%rax)
    movq	-40(%rbp), %rax
    movl	$0, 8(%rax)
    movq	-40(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	-24(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movq	-16(%rbp), %rdx
    movq	%rdx, 32(%rax)
    movq	-40(%rbp), %rax
    movl	$0, 40(%rax)
    movq	-40(%rbp), %rax
    movq	-32(%rbp), %rdx
    movq	%rdx, 48(%rax)
    movq	-24(%rbp), %rdx
    movq	%rdx, 56(%rax)
    movq	-16(%rbp), %rdx
    movq	%rdx, 64(%rax)
    movq	-40(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	check
    testl	%eax, %eax
    je	L57
    movq	-40(%rbp), %rax
    leaq	40(%rax), %rdx
    movq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	check
    testl	%eax, %eax
    jne	L58
L57:
    movl	$0, %eax
    jmp	L59
L58:
    movq	-40(%rbp), %rax
L59:
    leave
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$56, %rsp
    movq	%rdi, -40(%rbp)
    movl	%esi, -44(%rbp)
    movq	%rdx, -56(%rbp)
    movq	$0, -16(%rbp)
    movq	-56(%rbp), %rax
    movq	-16(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	$0, -24(%rbp)
    jmp	L61
L68:
    movq	-40(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    cmpl	$1, %eax
    jne	L69
    movq	-40(%rbp), %rdx
    movl	-20(%rbp), %eax
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	bar
    movq	%rax, -8(%rbp)
    jmp	L64
L69:
    movq	$0, -8(%rbp)
    nop
L64:
    cmpq	$0, -8(%rbp)
    je	L65
    movq	-8(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	dummy2
    movq	%rax, -16(%rbp)
    jmp	L70
L65:
    movl	$1, %eax
    jmp	L67
L70:
    addl	$1, -24(%rbp)
L61:
    movl	-24(%rbp), %eax
    cmpl	-44(%rbp), %eax
    jb	L68
    movq	-56(%rbp), %rax
    movq	-16(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	$0, %eax
L67:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$1, -20(%rbp)
    leaq	-16(%rbp), %rdx
    leaq	-20(%rbp), %rax
    movl	$1, %esi
    movq	%rax, %rdi
    call	foo
    call	abort
    .comm	v2439,72,32
