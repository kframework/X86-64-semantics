    .file	"strspn.c"
    .text
    .globl	strcspn
strcspn:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    jmp	L2
L8:
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L3
L6:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
    addq	$1, -8(%rbp)
L3:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    jmp	L7
L11:
    nop
L5:
    addq	$1, -16(%rbp)
L2:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L8
L7:
    movq	-16(%rbp), %rdx
    movq	-24(%rbp), %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
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
    je	L17
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L12
L14:
    movq	-8(%rbp), %rax
    jmp	L12
L17:
L12:
    popq	%rbp
    ret
    .globl	strspn
strspn:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	$0, -8(%rbp)
    jmp	L19
L21:
    addq	$1, -8(%rbp)
L19:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L20
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    movsbl	%al, %edx
    movq	-32(%rbp), %rax
    movl	%edx, %esi
    movq	%rax, %rdi
    call	strchr
    testq	%rax, %rax
    jne	L21
L20:
    movq	-8(%rbp), %rax
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
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"hello"
LC2:
    .string	"z"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -96(%rbp)
    movq	-96(%rbp), %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strspn
    cmpq	$5, %rax
    je	L27
    call	abort
L27:
    movq	-96(%rbp), %rax
    addq	$4, %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strspn
    cmpq	$1, %rax
    je	L28
    call	abort
L28:
    movq	-96(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strspn
    testq	%rax, %rax
    je	L29
    call	abort
L29:
    movq	-96(%rbp), %rax
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	strspn
    cmpq	$11, %rax
    je	L30
    call	abort
L30:
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L31
    call	abort
L31:
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L32
    call	abort
L32:
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L33
    call	abort
L33:
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L34
    call	abort
L34:
    movq	-96(%rbp), %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strspn
    cmpq	$5, %rax
    je	L37
    call	abort
L37:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L36
    call	__stack_chk_fail
L36:
    leave
    ret
