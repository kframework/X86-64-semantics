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
LC2:
    .string	"hello world\n"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$80, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$stdout, %rax
    movq	%rax, -48(%rbp)
    movq	$0, -40(%rbp)
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	$LC0, -64(%rbp)
    movq	-64(%rbp), %rax
    movq	%rax, -32(%rbp)
    movq	$0, -24(%rbp)
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$5, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    movq	-32(%rbp), %rax
    movq	-72(%rbp), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fputs
    leaq	-32(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	-56(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -56(%rbp)
    movq	(%rax), %rax
    movq	-72(%rbp), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fputs
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-56(%rbp), %rax
    jne	L5
    movq	-56(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L6
L5:
    call	abort
L6:
    leaq	-32(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	-56(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -56(%rbp)
    movq	(%rax), %rdx
    movq	-72(%rbp), %rax
    leaq	8(%rax), %rcx
    movq	%rcx, -72(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	fputs
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-56(%rbp), %rax
    jne	L7
    movq	-56(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L7
    leaq	-48(%rbp), %rax
    addq	$8, %rax
    cmpq	-72(%rbp), %rax
    jne	L7
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L8
L7:
    call	abort
L8:
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    movq	-32(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movq	-72(%rbp), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	fputc
    leaq	-32(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	-56(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -56(%rbp)
    movq	(%rax), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movq	-72(%rbp), %rdx
    movq	(%rdx), %rdx
    movq	%rdx, %rsi
    movl	%eax, %edi
    call	fputc
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-56(%rbp), %rax
    jne	L9
    movq	-56(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L10
L9:
    call	abort
L10:
    leaq	-32(%rbp), %rax
    movq	%rax, -56(%rbp)
    movq	-56(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -56(%rbp)
    movq	(%rax), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %edx
    movq	-72(%rbp), %rax
    leaq	8(%rax), %rcx
    movq	%rcx, -72(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	%edx, %edi
    call	fputc
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-56(%rbp), %rax
    jne	L11
    movq	-56(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L11
    leaq	-48(%rbp), %rax
    addq	$8, %rax
    cmpq	-72(%rbp), %rax
    jne	L11
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L12
L11:
    call	abort
L12:
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-72(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -72(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$11, %edx
    movl	$1, %esi
    movl	$LC0, %edi
    call	fwrite
    leaq	-48(%rbp), %rax
    addq	$8, %rax
    cmpq	-72(%rbp), %rax
    jne	L13
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L14
L13:
    call	abort
L14:
    leaq	-48(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    movq	-72(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$12, %edx
    movl	$1, %esi
    movl	$LC2, %edi
    call	fwrite
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L15
    call	__stack_chk_fail
L15:
    leave
    ret
