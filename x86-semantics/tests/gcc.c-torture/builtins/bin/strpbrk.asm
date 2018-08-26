    .file	"strpbrk.c"
    .text
    .globl	strpbrk
strpbrk:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    jmp	L2
L7:
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L3
L6:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    jne	L4
    movq	-24(%rbp), %rax
    jmp	L5
L4:
    addq	$1, -8(%rbp)
L3:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L6
    addq	$1, -24(%rbp)
L2:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L7
    movl	$0, %eax
L5:
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
    je	L13
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L10
    movl	$0, %eax
    jmp	L8
L10:
    movq	-8(%rbp), %rax
    jmp	L8
L13:
L8:
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    #APP
    # 39 "./src/lib/strpbrk.c" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    #APP
    # 44 "./src/lib/strpbrk.c" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
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
    .globl	fn
fn:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    subq	$8, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	(%rax), %rax
    movl	$104, %esi
    movq	%rax, %rdi
    call	strchr
    cmpq	-8(%rbp), %rax
    je	L25
    call	abort
L25:
    movq	-8(%rbp), %rax
    movl	$104, %esi
    movq	%rax, %rdi
    call	strchr
    cmpq	-8(%rbp), %rax
    je	L26
    call	abort
L26:
    movq	-8(%rbp), %rax
    movl	$119, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    je	L27
    call	abort
L27:
    movq	-8(%rbp), %rax
    addq	$6, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L28
    call	abort
L28:
    movq	-8(%rbp), %rax
    addq	$6, %rax
    movl	$111, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, %rdx
    movq	-8(%rbp), %rax
    addq	$7, %rax
    cmpq	%rax, %rdx
    je	L30
    call	abort
L30:
    nop
    leave
    ret
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"bye bye world"
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
    movq	$LC1, -24(%rbp)
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    movq	-32(%rbp), %rdx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	fn
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L32
    call	__stack_chk_fail
L32:
    leave
    ret
