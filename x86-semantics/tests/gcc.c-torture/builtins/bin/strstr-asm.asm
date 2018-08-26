    .file	"strstr-asm.c"
    .text
    .globl	strstr
strstr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    jmp	L2
L9:
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L3
L6:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    jne	L10
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L3:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L5
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    jmp	L5
L10:
    nop
L5:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L7
    movq	-24(%rbp), %rax
    jmp	L8
L7:
    addq	$1, -24(%rbp)
L2:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
    movl	$0, %eax
L8:
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
    .globl	p
    .section	.rodata
LC0:
    .string	"rld"
    .data
p:
    .quad	LC0
    .globl	q
    .section	.rodata
LC1:
    .string	"hello world"
    .data
q:
    .quad	LC1
    .section	.rodata
LC2:
    .string	"world"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$LC1, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$104, %esi
    movq	%rax, %rdi
    call	strchr
    cmpq	-8(%rbp), %rax
    je	L15
    call	abort
L15:
    movq	-8(%rbp), %rax
    movl	$119, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L16
    call	abort
L16:
    movq	-8(%rbp), %rax
    addq	$6, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L17
    call	abort
L17:
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strstr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L18
    call	abort
L18:
    movq $p(%rip), %rax
    movq	-8(%rbp), %rdx
    addq	$2, %rdx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	strstr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$8, %rax
    cmpq	%rax, %rdx
    je	L19
    call	abort
L19:
    movq $q(%rip), %rax
    addq	$1, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq $q(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L20
    call	abort
L20:
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strstr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L22
    call	abort
L22:
    nop
    leave
    ret
