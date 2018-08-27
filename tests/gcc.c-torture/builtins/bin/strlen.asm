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
    .globl	x
    .data
x:
    .long	6
    .section	.rodata
LC0:
    .string	"hello world"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -32(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$11, %rax
    je	L11
    call	abort
L11:
    movq	-32(%rbp), %rax
    addq	$4, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$7, %rax
    je	L12
    call	abort
L12:
    movl $x(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $x(%rip)
    cltq
    andl	$7, %eax
    movq	%rax, %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movq	%rax, %rdi
    call	strlen
    cmpq	$5, %rax
    je	L13
    call	abort
L13:
    movl $x(%rip), %eax
    cmpl	$7, %eax
    je	L14
    call	abort
L14:
    leaq	-16(%rbp), %rax
    movq	%rax, -24(%rbp)
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L15
    call	abort
L15:
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L16
    call	abort
L16:
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L17
    call	abort
L17:
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L18
    call	abort
L18:
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L19
    call	abort
L19:
    movq	-24(%rbp), %rax
    movb	$110, (%rax)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    movb	$116, (%rax)
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movb	$115, (%rax)
    movq	-24(%rbp), %rax
    addq	$3, %rax
    movb	$0, (%rax)
    leaq	-16(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L20
    call	abort
L20:
    movq	-32(%rbp), %rax
    movq	$-1, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    movq	%rdx, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    cmpq	$11, %rax
    je	L23
    call	abort
L23:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L22
    call	__stack_chk_fail
L22:
    leave
    ret
