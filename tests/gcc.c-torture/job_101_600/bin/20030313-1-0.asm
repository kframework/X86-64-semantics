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
    .globl	x
    .data
x:
    .quad	13
    .quad	14
    .quad	15
    .quad	16
    .text
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	$x, -8(%rbp)
    nop
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    cmpl	$12, -12(%rbp)
    je	L48
    call	abort
L48:
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    cmpq	$1, %rax
    jne	L49
    movq	-8(%rbp), %rax
    addq	$8, %rax
    movq	(%rax), %rax
    cmpq	$11, %rax
    je	L50
L49:
    call	abort
L50:
    movq	-8(%rbp), %rax
    addq	$16, %rax
    movq	(%rax), %rax
    cmpq	$2, %rax
    jne	L51
    movq	-8(%rbp), %rax
    addq	$24, %rax
    movq	(%rax), %rax
    cmpq	$12, %rax
    je	L52
L51:
    call	abort
L52:
    movq	-8(%rbp), %rax
    addq	$32, %rax
    movq	(%rax), %rax
    cmpq	$3, %rax
    jne	L53
    movq	-8(%rbp), %rax
    addq	$40, %rax
    movq	(%rax), %rax
    cmpq	$13, %rax
    je	L54
L53:
    call	abort
L54:
    movq	-8(%rbp), %rax
    addq	$48, %rax
    movq	(%rax), %rax
    cmpq	$4, %rax
    jne	L55
    movq	-8(%rbp), %rax
    addq	$56, %rax
    movq	(%rax), %rax
    cmpq	$14, %rax
    je	L56
L55:
    call	abort
L56:
    movq	-8(%rbp), %rax
    addq	$64, %rax
    movq	(%rax), %rax
    cmpq	$5, %rax
    jne	L57
    movq	-8(%rbp), %rax
    addq	$72, %rax
    movq	(%rax), %rax
    cmpq	$15, %rax
    je	L58
L57:
    call	abort
L58:
    movq	-8(%rbp), %rax
    addq	$80, %rax
    movq	(%rax), %rax
    cmpq	$6, %rax
    jne	L59
    movq	-8(%rbp), %rax
    addq	$88, %rax
    movq	(%rax), %rax
    cmpq	$16, %rax
    je	L61
L59:
    call	abort
L61:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$360, %rsp
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movl	$0, -356(%rbp)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$1, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$11, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$2, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$12, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$3, -352(%rbp,%rax,8)
    movl	-356(%rbp), %ebx
    leal	1(%rbx), %eax
    movl	%eax, -356(%rbp)
    call	bar
    movq	(%rax), %rdx
    movslq	%ebx, %rax
    movq	%rdx, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$4, -352(%rbp,%rax,8)
    movl	-356(%rbp), %ebx
    leal	1(%rbx), %eax
    movl	%eax, -356(%rbp)
    call	bar
    movq	8(%rax), %rdx
    movslq	%ebx, %rax
    movq	%rdx, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$5, -352(%rbp,%rax,8)
    movl	-356(%rbp), %ebx
    leal	1(%rbx), %eax
    movl	%eax, -356(%rbp)
    call	bar
    movq	16(%rax), %rdx
    movslq	%ebx, %rax
    movq	%rdx, -352(%rbp,%rax,8)
    movl	-356(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -356(%rbp)
    cltq
    movq	$6, -352(%rbp,%rax,8)
    movl	-356(%rbp), %ebx
    leal	1(%rbx), %eax
    movl	%eax, -356(%rbp)
    call	bar
    movq	24(%rax), %rdx
    movslq	%ebx, %rax
    movq	%rdx, -352(%rbp,%rax,8)
    movl	-356(%rbp), %edx
    leaq	-352(%rbp), %rax
    movl	%edx, %esi
    movq	%rax, %rdi
    call	foo
    movl	$0, %edi
    call	exit
