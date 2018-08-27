    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
L5:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    cmpl	-12(%rbp), %eax
    jne	L2
    movq	-8(%rbp), %rax
    jmp	L3
L2:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L4
    movl	$0, %eax
    jmp	L3
L4:
    addq	$1, -8(%rbp)
    jmp	L5
L3:
    popq	%rbp
    ret
    .globl	index
index:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movl	-12(%rbp), %edx
    movq	-8(%rbp), %rax
    movl	%edx, %esi
    movq	%rax, %rdi
    call	strchr
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
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$LC0, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	$120, %esi
    movq	%rax, %rdi
    call	strchr
    testq	%rax, %rax
    je	L12
    call	abort
L12:
    movq	-8(%rbp), %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L13
    call	abort
L13:
    movq	-8(%rbp), %rax
    addq	$5, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L14
    call	abort
L14:
    movq	-8(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    je	L15
    call	abort
L15:
    movq	-8(%rbp), %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L16
    call	abort
L16:
    movq	-8(%rbp), %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	index
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    je	L18
    call	abort
L18:
    nop
    leave
    ret
