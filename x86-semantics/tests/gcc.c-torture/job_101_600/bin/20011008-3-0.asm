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
    .globl	log_compare
log_compare:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1, %eax
    popq	%rbp
    ret
    .globl	__db_txnlist_lsnadd
__db_txnlist_lsnadd:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$56, %rsp
    movl	%edi, -36(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movl	%ecx, -40(%rbp)
    movl	$0, -24(%rbp)
    jmp	L48
L54:
    addl	$1, -36(%rbp)
    movl	$0, -20(%rbp)
    jmp	L49
L51:
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %edx
    movslq	%edx, %rdx
    addq	$1, %rdx
    salq	$3, %rdx
    addq	%rax, %rdx
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %ecx
    movslq	%ecx, %rcx
    salq	$3, %rcx
    addq	%rcx, %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	log_compare
    testl	%eax, %eax
    jns	L50
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rdx
    addq	%rdx, %rax
    movq	(%rax), %rax
    movq	%rax, -16(%rbp)
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rdx
    addq	%rax, %rdx
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	$1, %rcx
    salq	$3, %rcx
    addq	%rcx, %rax
    movq	(%rax), %rax
    movq	%rax, (%rdx)
    movq	-48(%rbp), %rax
    movq	32(%rax), %rax
    movl	-20(%rbp), %edx
    movslq	%edx, %rdx
    addq	$1, %rdx
    salq	$3, %rdx
    addq	%rax, %rdx
    movq	-16(%rbp), %rax
    movq	%rax, (%rdx)
L50:
    addl	$1, -20(%rbp)
L49:
    movq	-48(%rbp), %rax
    movl	24(%rax), %eax
    subl	$1, %eax
    cmpl	-20(%rbp), %eax
    jg	L51
    addl	$1, -24(%rbp)
L48:
    movl	-40(%rbp), %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L52
    movq	-48(%rbp), %rax
    movl	24(%rax), %eax
    jmp	L53
L52:
    movl	$1, %eax
L53:
    cmpl	-24(%rbp), %eax
    jg	L54
    movq	-48(%rbp), %rax
    movq	32(%rax), %rdx
    movq	-56(%rbp), %rax
    movq	(%rdx), %rdx
    movq	%rdx, (%rax)
    movl	-36(%rbp), %eax
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$368, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$31, -328(%rbp)
    leaq	-272(%rbp), %rax
    movq	%rax, -320(%rbp)
    leaq	-368(%rbp), %rdx
    leaq	-352(%rbp), %rax
    movl	$0, %ecx
    movq	%rax, %rsi
    movl	$0, %edi
    call	__db_txnlist_lsnadd
    cmpl	$1, %eax
    je	L57
    call	abort
L57:
    leaq	-368(%rbp), %rdx
    leaq	-352(%rbp), %rax
    movl	$1, %ecx
    movq	%rax, %rsi
    movl	$0, %edi
    call	__db_txnlist_lsnadd
    cmpl	$31, %eax
    je	L58
    call	abort
L58:
    movl	$0, %edi
    call	exit
