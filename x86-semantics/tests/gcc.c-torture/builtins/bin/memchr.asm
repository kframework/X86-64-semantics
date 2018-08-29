    .text
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
    jmp	L2
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L4
L3:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L5
    movl	$0, %eax
L4:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
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
    jmp	L10
L11:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
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
    jmp	L14
L15:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L14:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L15
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L23
    cmpl	$122, -4(%rbp)
    jg	L23
    movl	$1, %eax
    jmp	L24
L23:
    cmpl	$64, -4(%rbp)
    jle	L25
    cmpl	$90, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L24
L25:
    cmpl	$47, -4(%rbp)
    jle	L26
    cmpl	$57, -4(%rbp)
    jg	L26
    movl	$1, %eax
    jmp	L24
L26:
    movl	$0, %eax
L24:
    popq	%rbp
    ret
    .globl	memchr
memchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movl	-28(%rbp), %eax
    movb	%al, -9(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L28
L31:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	-9(%rbp), %al
    jne	L29
    movq	-8(%rbp), %rax
    jmp	L30
L29:
    addq	$1, -8(%rbp)
    subq	$1, -40(%rbp)
L28:
    cmpq	$0, -40(%rbp)
    jne	L31
    movl	$0, %eax
L30:
    popq	%rbp
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, inside_main(%rip)
    call	main_test
    movl	$0, inside_main(%rip)
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
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$LC0, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$11, %edx
    movl	$120, %esi
    movq	%rax, %rdi
    call	memchr
    testq	%rax, %rax
    je	L36
    call	abort
L36:
    movq	-8(%rbp), %rax
    movl	$11, %edx
    movl	$111, %esi
    movq	%rax, %rdi
    call	memchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L37
    call	abort
L37:
    movq	-8(%rbp), %rax
    movl	$2, %edx
    movl	$119, %esi
    movq	%rax, %rdi
    call	memchr
    testq	%rax, %rax
    je	L38
    call	abort
L38:
    movq	-8(%rbp), %rax
    addq	$5, %rax
    movl	$6, %edx
    movl	$111, %esi
    movq	%rax, %rdi
    call	memchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L39
    call	abort
L39:
    movq	-8(%rbp), %rax
    movl	$11, %edx
    movl	$100, %esi
    movq	%rax, %rdi
    call	memchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    je	L40
    call	abort
L40:
    movq	-8(%rbp), %rax
    movl	$10, %edx
    movl	$100, %esi
    movq	%rax, %rdi
    call	memchr
    testq	%rax, %rax
    je	L41
    call	abort
L41:
    movq	-8(%rbp), %rax
    movl	$11, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memchr
    testq	%rax, %rax
    je	L42
    call	abort
L42:
    movq	-8(%rbp), %rax
    movl	$12, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    je	L43
    call	abort
L43:
    movq	-8(%rbp), %rax
    movl	$11, %edx
    movl	$114, %esi
    movq	%rax, %rdi
    call	memchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$8, %rax
    cmpq	%rax, %rdx
    je	L45
    call	abort
L45:
    nop
    leave
    ret
