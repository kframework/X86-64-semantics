    .text
    .globl	swap
swap:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, -4(%rbp)
    movq	-32(%rbp), %rax
    movl	(%rax), %edx
    movq	-24(%rbp), %rax
    movl	%edx, (%rax)
    movq	-32(%rbp), %rax
    movl	-4(%rbp), %edx
    movl	%edx, (%rax)
    popq	%rbp
    ret
    .globl	bubbleSort
bubbleSort:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movl	$0, -8(%rbp)
    jmp	L3
L7:
    movl	$0, -4(%rbp)
    jmp	L4
L6:
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %edx
    movl	-4(%rbp), %eax
    cltq
    addq	$1, %rax
    leaq	0(,%rax,4), %rcx
    movq	-24(%rbp), %rax
    addq	%rcx, %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jle	L5
    movl	-4(%rbp), %eax
    cltq
    addq	$1, %rax
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rax, %rdx
    movl	-4(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rcx
    movq	-24(%rbp), %rax
    addq	%rcx, %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	swap
L5:
    addl	$1, -4(%rbp)
L4:
    movl	-28(%rbp), %eax
    subl	-8(%rbp), %eax
    subl	$1, %eax
    cmpl	-4(%rbp), %eax
    jg	L6
    addl	$1, -8(%rbp)
L3:
    movl	-28(%rbp), %eax
    subl	$1, %eax
    cmpl	-8(%rbp), %eax
    jg	L7
    leave
    ret
    .section	.rodata
LC0:
    .string	"%d "
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$4, -32(%rbp)
    movl	$3, -28(%rbp)
    movl	$2, -24(%rbp)
    movl	$1, -20(%rbp)
    movl	$0, -16(%rbp)
    movl	$0, -36(%rbp)
    jmp	L9
L10:
    movl	-36(%rbp), %eax
    cltq
    movl	-32(%rbp,%rax,4), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    addl	$1, -36(%rbp)
L9:
    movl	-36(%rbp), %eax
    cmpl	$4, %eax
    jbe	L10
    movl	$10, %edi
    call	putchar
    leaq	-32(%rbp), %rax
    movl	$5, %esi
    movq	%rax, %rdi
    call	bubbleSort
    movl	$0, -36(%rbp)
    jmp	L11
L12:
    movl	-36(%rbp), %eax
    cltq
    movl	-32(%rbp,%rax,4), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    addl	$1, -36(%rbp)
L11:
    movl	-36(%rbp), %eax
    cmpl	$4, %eax
    jbe	L12
    movl	$10, %edi
    call	putchar
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L14
    call	__stack_chk_fail
L14:
    leave
    ret
