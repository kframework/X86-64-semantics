    .file	"strlen-3.c"
    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
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
    .section	.rodata
bar:
    .string	"Hello, World!"
baz:
    .string	"hello, world?"
larger:
    .string	"short string"
    .zero	7
    .globl	l1
    .data
l1:
    .long	1
    .globl	x
x:
    .long	6
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl $x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $x(%rip)
    cltq
    andl	$7, %eax
    movl	$13, %edx
    subq	%rax, %rdx
    movq	%rdx, %rax
    cmpq	$7, %rax
    je	L9
    call	abort
L9:
    movl $x(%rip), %eax
    cmpl	$7, %eax
    je	L10
    call	abort
L10:
    movl	$0, $inside_main(%rip)
    movl $x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $x(%rip)
    cltq
    andl	$7, %eax
    addq	$larger, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$5, %rax
    je	L11
    call	abort
L11:
    movl $x(%rip), %eax
    cmpl	$8, %eax
    je	L12
    call	abort
L12:
    movl	$1, $inside_main(%rip)
    nop
    popq	%rbp
    ret
