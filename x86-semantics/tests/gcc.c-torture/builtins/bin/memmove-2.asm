    .file	"memmove-2.c"
    .text
    .globl	memmove
memmove:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jnb	L6
    jmp	L3
L4:
    movq	-16(%rbp), %rdx
    movq	-40(%rbp), %rax
    addq	%rax, %rdx
    movq	-8(%rbp), %rcx
    movq	-40(%rbp), %rax
    addq	%rcx, %rax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
L3:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L4
    jmp	L5
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
L5:
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	bcopy
bcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rcx
    movq	-16(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memmove
    nop
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
    .globl	p
    .data
p:
    .string	"abcdefg"
    .zero	24
    .globl	q
q:
    .quad	p + 4
    .section	.rodata
LC0:
    .string	"abddefg"
LC1:
    .string	"abddeff"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$p + 3, %edx
    movl	$p + 2, %eax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl	$p + 2, %edx
    cmpq	%rdx, %rax
    jne	L14
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L15
L14:
    call	abort
L15:
    movl	$p + 1, %edx
    movl	$p + 1, %eax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
    jne	L16
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L17
L16:
    call	abort
L17:
    movl	$p + 4, %edx
    movq $q(%rip), %rax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movq	%rax, %rdx
    movl	$p + 4, %eax
    cmpq	%rax, %rdx
    jne	L18
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L19
L18:
    call	abort
L19:
    movl	$p + 6, %edx
    movl	$p + 5, %eax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L20
    call	abort
L20:
    movl	$p + 1, %edx
    movl	$p + 1, %eax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L21
    call	abort
L21:
    movl	$p + 4, %edx
    movq $q(%rip), %rax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L23
    call	abort
L23:
    nop
    popq	%rbp
    ret
