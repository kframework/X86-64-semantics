    .text
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	-24(%rbp), %rax
    movq	(%rax), %rax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L3
    call	__stack_chk_fail
L3:
    leave
    ret
    .globl	g
g:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movl $inside_main(%rip), %eax
    testl	%eax, %eax
    je	L6
    movq	-24(%rbp), %rax
    cmpq	-32(%rbp), %rax
    jnb	L7
    movq	-24(%rbp), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    cmpq	-32(%rbp), %rax
    jbe	L7
    call	abort
L7:
    movq	-32(%rbp), %rax
    cmpq	-24(%rbp), %rax
    jnb	L8
    movq	-32(%rbp), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    cmpq	-24(%rbp), %rax
    jbe	L8
    call	abort
L8:
    movq	-24(%rbp), %rax
    jmp	L9
L6:
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L10
L11:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
    movq	-24(%rbp), %rax
L9:
    leave
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, $inside_main(%rip)
    call	main_test
    movl	$0, $inside_main(%rip)
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
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-32(%rbp), %rax
    addq	$4, %rax
    movq	%rax, %rdi
    call	f
    movq	%rax, -32(%rbp)
    leaq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	f
    movq	%rax, -28(%rbp)
    leaq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	g
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L16
    call	__stack_chk_fail
L16:
    leave
    ret
