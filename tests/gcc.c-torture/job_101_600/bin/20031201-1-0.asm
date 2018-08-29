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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .data
test_length:
    .long	2
    .comm	i,8,8
m:
    .long	1
d:
    .long	1
    .comm	test_t0,8,8
    .comm	test_t1,8,8
    .text
    .globl	f1
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	%rdi, -56(%rbp)
    movl	$0, -28(%rbp)
    movl	$0, -48(%rbp)
    movl	$0, -32(%rbp)
    movq	-56(%rbp), %rax
    movq	%rax, i(%rip)
    movw	$32, -32(%rbp)
    movzwl	-32(%rbp), %eax
    movw	%ax, -48(%rbp)
    movq	i(%rip), %rax
    movl	-48(%rbp), %edx
    movl	%edx, (%rax)
    movq	i(%rip), %rax
    movl	-32(%rbp), %edx
    movl	%edx, 4(%rax)
L42:
    call	f0
    movq	test_t1(%rip), %rax
    testq	%rax, %rax
    jne	L42
    movw	$8, -32(%rbp)
    movzwl	-32(%rbp), %eax
    movw	%ax, -48(%rbp)
    movq	i(%rip), %rax
    movl	-48(%rbp), %edx
    movl	%edx, (%rax)
    movq	i(%rip), %rax
    movl	-32(%rbp), %edx
    movl	%edx, 4(%rax)
    call	test
    movl	m(%rip), %eax
    testl	%eax, %eax
    je	L43
    movl	test_length(%rip), %eax
    imull	$2170, %eax, %eax
    cltq
    movq	%rax, -24(%rbp)
    movq	test_t1(%rip), %rdx
    movq	test_t0(%rip), %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    subq	-24(%rbp), %rax
    andl	$2147483647, %eax
    cmpq	$1000, %rax
    jbe	L43
    call	f0
L43:
    movl	d(%rip), %eax
    testl	%eax, %eax
    je	L44
    movl	test_length(%rip), %eax
    imull	$2170, %eax, %eax
    cltq
    movq	%rax, -8(%rbp)
    movq	test_t1(%rip), %rdx
    movq	test_t0(%rip), %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    subq	-8(%rbp), %rax
    andl	$2147483647, %eax
    cmpq	$1000, %rax
    jbe	L44
    call	f0
L44:
    cmpl	$0, -28(%rbp)
    setne	%al
    movzbl	%al, %eax
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	f1
    call	abort
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	i(%rip), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    movzwl	(%rax), %eax
    cmpw	$8, %ax
    jne	L49
    movq	-8(%rbp), %rax
    movzwl	4(%rax), %eax
    cmpw	$8, %ax
    je	L50
L49:
    call	abort
L50:
    movl	$0, %edi
    call	exit
    .globl	f0
f0:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	i(%rip), %rax
    movq	%rax, -8(%rbp)
    movl	washere2450(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, washere2450(%rip)
    testl	%eax, %eax
    jne	L52
    movq	-8(%rbp), %rax
    movzwl	(%rax), %eax
    cmpw	$32, %ax
    jne	L52
    movq	-8(%rbp), %rax
    movzwl	4(%rax), %eax
    cmpw	$32, %ax
    je	L54
L52:
    call	abort
L54:
    nop
    leave
    ret
    .comm	washere2450,4,4
