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
    je	L16
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L13
    movl	$0, %eax
    jmp	L11
L13:
    movq	-8(%rbp), %rax
    jmp	L11
L16:
L11:
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
LC0:
    .string	"hello world"
LC1:
    .string	"world"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$LC0, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$104, %esi
    movq	%rax, %rdi
    call	strchr
    cmpq	-8(%rbp), %rax
    je	L21
    call	abort
L21:
    movq	-8(%rbp), %rax
    movl	$119, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L22
    call	abort
L22:
    movq	-8(%rbp), %rax
    addq	$6, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L23
    call	abort
L23:
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strstr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L24
    call	abort
L24:
    movq	-8(%rbp), %rax
    addq	$1, %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strstr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L26
    call	abort
L26:
    nop
    leave
    ret
