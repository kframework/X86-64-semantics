    .text
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	%rdx, -56(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L2
L6:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    movb	%al, -18(%rbp)
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    movb	%al, -17(%rbp)
    cmpb	$0, -18(%rbp)
    je	L3
    movzbl	-18(%rbp), %eax
    cmpb	-17(%rbp), %al
    je	L4
L3:
    movzbl	-18(%rbp), %edx
    movzbl	-17(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L5
L4:
    subq	$1, -56(%rbp)
L2:
    cmpq	$0, -56(%rbp)
    jne	L6
    movzbl	-18(%rbp), %edx
    movzbl	-17(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
L5:
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
LC1:
    .string	"d"
LC2:
    .string	"ozz"
LC3:
    .string	"rzz"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$LC0, -24(%rbp)
    movq	-24(%rbp), %rax
    movl	$12, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L14
    call	abort
L14:
    movq	-24(%rbp), %rax
    movl	$12, %edx
    movq	%rax, %rsi
    movl	$LC0, %edi
    call	strncmp
    testl	%eax, %eax
    je	L15
    call	abort
L15:
    movq	-24(%rbp), %rax
    addq	$10, %rax
    movl	$100, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L16
    call	abort
L16:
    movq	-24(%rbp), %rax
    addq	$10, %rax
    movl	$100, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strncmp
    testl	%eax, %eax
    je	L17
    call	abort
L17:
    movl	$LC1, %eax
    movzbl	(%rax), %edx
    movq	-24(%rbp), %rax
    addq	$10, %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L18
    call	abort
L18:
    movl	$LC1, %eax
    movzbl	(%rax), %edx
    movq	-24(%rbp), %rax
    addq	$10, %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L19
    call	abort
L19:
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
    movq	-24(%rbp), %rax
    addq	$1, %rax
    cmpq	-16(%rbp), %rax
    jne	L20
    movq	-24(%rbp), %rax
    addq	$5, %rax
    cmpq	-8(%rbp), %rax
    je	L21
L20:
    call	abort
L21:
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    testl	%eax, %eax
    jle	L22
    movq	-24(%rbp), %rax
    addq	$1, %rax
    cmpq	-16(%rbp), %rax
    je	L23
L22:
    call	abort
L23:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    negl	%eax
    testl	%eax, %eax
    jns	L24
    movq	-24(%rbp), %rax
    addq	$2, %rax
    cmpq	-16(%rbp), %rax
    je	L25
L24:
    call	abort
L25:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    testl	%eax, %eax
    jle	L26
    movq	-24(%rbp), %rax
    addq	$3, %rax
    cmpq	-16(%rbp), %rax
    je	L27
L26:
    call	abort
L27:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    negl	%eax
    testl	%eax, %eax
    jns	L28
    movq	-24(%rbp), %rax
    addq	$4, %rax
    cmpq	-16(%rbp), %rax
    je	L29
L28:
    call	abort
L29:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    addq	$6, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L30
    movq	-24(%rbp), %rax
    addq	$5, %rax
    cmpq	-16(%rbp), %rax
    je	L31
L30:
    call	abort
L31:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    addq	$5, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L32
    movq	-24(%rbp), %rax
    addq	$6, %rax
    cmpq	-16(%rbp), %rax
    je	L33
L32:
    call	abort
L33:
    movl	$LC2, %eax
    movzbl	(%rax), %edx
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    jne	L34
    movq	-24(%rbp), %rax
    addq	$7, %rax
    cmpq	-16(%rbp), %rax
    je	L35
L34:
    call	abort
L35:
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movl	$LC3, %eax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    jne	L36
    movq	-24(%rbp), %rax
    addq	$8, %rax
    cmpq	-16(%rbp), %rax
    je	L37
L36:
    call	abort
L37:
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movq	%rax, -8(%rbp)
    addq	$1, -16(%rbp)
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    addq	$1, -8(%rbp)
    movq	-8(%rbp), %rax
    addq	$2, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    testl	%eax, %eax
    jns	L38
    movq	-24(%rbp), %rax
    addq	$1, %rax
    cmpq	-16(%rbp), %rax
    jne	L38
    movq	-24(%rbp), %rax
    addq	$5, %rax
    cmpq	-8(%rbp), %rax
    je	L40
L38:
    call	abort
L40:
    nop
    leave
    ret
