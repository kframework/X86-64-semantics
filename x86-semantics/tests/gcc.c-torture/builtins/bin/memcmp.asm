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
L4:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
    subq	$1, -40(%rbp)
L2:
    cmpq	$0, -40(%rbp)
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L4
L3:
    cmpq	$0, -40(%rbp)
    jne	L5
    movl	$0, %eax
    jmp	L6
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
L6:
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
    .globl	__stack_chk_fail
__stack_chk_fail:
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
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-16(%rbp), %rax
    movl	$825504051, (%rax)
    movb	$0, 4(%rax)
    leaq	-16(%rbp), %rax
    addq	$1, %rax
    movzbl	(%rax), %edx
    leaq	-16(%rbp), %rax
    addq	$3, %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L13
    call	abort
L13:
    leaq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    leaq	-16(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    testl	%eax, %eax
    js	L14
    call	abort
L14:
    leaq	-16(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    leaq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    testl	%eax, %eax
    jg	L17
    call	abort
L17:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L16
    call	__stack_chk_fail
L16:
    leave
    ret
