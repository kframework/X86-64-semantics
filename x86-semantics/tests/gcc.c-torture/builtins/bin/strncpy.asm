    .file	"strncpy.c"
    .text
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L2
L4:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    subq	$1, -40(%rbp)
L2:
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L5
    cmpq	$0, -40(%rbp)
    jne	L4
    jmp	L5
L6:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L5:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L6
    movq	-8(%rbp), %rax
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
    jmp	L9
L10:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L9:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L10
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
    jmp	L13
L14:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L13:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L14
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
    jmp	L17
L20:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L18
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L19
L18:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L17:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L20
    movl	$0, %eax
L19:
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
    .comm	i,4,4
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"hellXXX"
LC2:
    .string	" worXXX"
LC3:
    .string	"XXX"
LC4:
    .string	"hello world"
    .string	"XXX"
LC5:
    .string	"xfoo"
LC6:
    .string	"bar"
LC7:
    .string	"bar"
    .string	"XXX"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -104(%rbp)
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L25
    leaq	-80(%rbp), %rax
    movl	$7, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L26
L25:
    call	abort
L26:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rax
    addq	$16, %rax
    movq	-104(%rbp), %rcx
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$16, %rax
    cmpq	%rax, %rdx
    jne	L27
    leaq	-80(%rbp), %rax
    addq	$16, %rax
    movl	$7, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L28
L27:
    call	abort
L28:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rcx
    leaq	-80(%rbp), %rax
    addq	$32, %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$32, %rax
    cmpq	%rax, %rdx
    jne	L29
    leaq	-80(%rbp), %rax
    addq	$32, %rax
    movl	$7, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L30
L29:
    call	abort
L30:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    leaq	5(%rax), %rcx
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L31
    movq	-96(%rbp), %rax
    movl	$7, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L31
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    je	L32
L31:
    call	abort
L32:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L33
    leaq	-80(%rbp), %rax
    movl	$3, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L34
L33:
    call	abort
L34:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L35
    movq	-96(%rbp), %rax
    movl	$3, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L35
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L35
    movq	-104(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L36
L35:
    call	abort
L36:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    leaq	-80(%rbp), %rax
    movq	%rax, -96(%rbp)
    movq	-104(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    addq	$1, -96(%rbp)
    movq	-96(%rbp), %rax
    leaq	5(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L37
    movq	-96(%rbp), %rax
    addq	$5, %rax
    movl	$3, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L37
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-96(%rbp), %rax
    jne	L37
    movq	-104(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    je	L38
L37:
    call	abort
L38:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$12, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L39
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L40
L39:
    call	abort
L40:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rcx
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L41
    leaq	-80(%rbp), %rax
    movl	$7, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L42
L41:
    call	abort
L42:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movl $i(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $i(%rip)
    testl	%eax, %eax
    je	L43
    movl $LC5 + 1, %ecx
    jmp	L44
L43:
    movl	$LC6, %ecx
L44:
    leaq	-80(%rbp), %rax
    movl	$4, %edx
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	strncpy
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L45
    leaq	-80(%rbp), %rax
    movl	$7, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L45
    movl $i(%rip), %eax
    cmpl	$1, %eax
    je	L48
L45:
    call	abort
L48:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L47
    call	__stack_chk_fail
L47:
    leave
    ret
