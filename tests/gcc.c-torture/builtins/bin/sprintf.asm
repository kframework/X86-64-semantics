    .file	"sprintf.c"
    .text
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L2
L3:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L3
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
    jmp	L6
L7:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L6:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L7
    movq	-24(%rbp), %rax
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
    jmp	L10
L13:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L12
L11:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L13
    movl	$0, %eax
L12:
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
    .comm	buffer,32,32
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$7303014, $buffer(%rip)
    nop
    popq	%rbp
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$7303014, $buffer(%rip)
    movl	$3, %eax
    popq	%rbp
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$7496034, $buffer(%rip)
    nop
    popq	%rbp
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$7496034, $buffer(%rip)
    movl	$3, %eax
    popq	%rbp
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rsi
    movl	$buffer, %edi
    call	strcpy
    nop
    leave
    ret
    .section	.rodata
LC0:
    .string	"foo"
LC1:
    .string	"bar"
LC2:
    .string	"barf"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$32, %edx
    movl	$65, %esi
    movl	$buffer, %edi
    call	memset
    movl	$0, %eax
    call	test1
    movl	$4, %edx
    movl	$LC0, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L25
    movzbl	buffer + $4(%rip), %eax
    cmpb	$65, %al
    je	L26
L25:
    call	abort
L26:
    movl	$32, %edx
    movl	$65, %esi
    movl	$buffer, %edi
    call	memset
    movl	$0, %eax
    call	test2
    cmpl	$3, %eax
    je	L27
    call	abort
L27:
    movl	$4, %edx
    movl	$LC0, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L28
    movzbl	buffer + $4(%rip), %eax
    cmpb	$65, %al
    je	L29
L28:
    call	abort
L29:
    movl	$32, %edx
    movl	$65, %esi
    movl	$buffer, %edi
    call	memset
    movl	$0, %eax
    call	test3
    movl	$4, %edx
    movl	$LC1, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L30
    movzbl	buffer + $4(%rip), %eax
    cmpb	$65, %al
    je	L31
L30:
    call	abort
L31:
    movl	$32, %edx
    movl	$65, %esi
    movl	$buffer, %edi
    call	memset
    movl	$0, %eax
    call	test4
    cmpl	$3, %eax
    je	L32
    call	abort
L32:
    movl	$4, %edx
    movl	$LC1, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L33
    movzbl	buffer + $4(%rip), %eax
    cmpb	$65, %al
    je	L34
L33:
    call	abort
L34:
    movl	$32, %edx
    movl	$65, %esi
    movl	$buffer, %edi
    call	memset
    movl	$LC2, %edi
    call	test5
    movl	$5, %edx
    movl	$LC2, %esi
    movl	$buffer, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L35
    movzbl	buffer + $5(%rip), %eax
    cmpb	$65, %al
    je	L37
L35:
    call	abort
L37:
    nop
    popq	%rbp
    ret
