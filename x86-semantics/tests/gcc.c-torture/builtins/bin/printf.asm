    .comm	inside_main,4,4
    .text
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
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"hello"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -48(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	$0, -24(%rbp)
    movl	$LC1, %edi
    call	puts
    movq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	puts
    leaq	-32(%rbp), %rax
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rdi
    call	puts
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-40(%rbp), %rax
    jne	L5
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L6
L5:
    call	abort
L6:
    movl	$10, %edi
    call	putchar
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	putchar
    leaq	-32(%rbp), %rax
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -40(%rbp)
    movq	(%rax), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	putchar
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-40(%rbp), %rax
    jne	L7
    movq	-40(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L8
L7:
    call	abort
L8:
    movl	$10, %edi
    call	putchar
    movl	$10, %edi
    call	putchar
    movl	$LC0, %edi
    call	puts
    movl	$LC0, %edi
    call	puts
    movl	$LC1, %edi
    call	puts
    movl	$10, %edi
    call	putchar
    movl	$LC1, %edi
    call	puts
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L9
    call	__stack_chk_fail
L9:
    leave
    ret
