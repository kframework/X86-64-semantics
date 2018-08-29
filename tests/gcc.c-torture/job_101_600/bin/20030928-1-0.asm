    .text
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
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L12:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L12
    movq	-8(%rbp), %rax
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
    movq	-24(%rbp), %rax
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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"a1111"
LC1:
    .string	"a1112"
LC2:
    .string	"a1113"
LC3:
    .string	"a1114"
LC4:
    .string	"a1115"
LC5:
    .string	"a1116"
LC6:
    .string	"a1117"
LC7:
    .string	"a1118"
    .text
    .globl	get_addrs
get_addrs:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    subl	$65536, %eax
    addl	%eax, %eax
    cltq
    leaq	LC0(%rax), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$8, %rax
    movq	-16(%rbp), %rdx
    addq	$4, %rdx
    movl	(%rdx), %edx
    subl	$131072, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC1, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$16, %rax
    movq	-16(%rbp), %rdx
    addq	$8, %rdx
    movl	(%rdx), %edx
    subl	$196608, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC2, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$24, %rax
    movq	-16(%rbp), %rdx
    addq	$12, %rdx
    movl	(%rdx), %edx
    subl	$262144, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC3, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$32, %rax
    movq	-16(%rbp), %rdx
    addq	$16, %rdx
    movl	(%rdx), %edx
    subl	$327680, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC4, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$40, %rax
    movq	-16(%rbp), %rdx
    addq	$20, %rdx
    movl	(%rdx), %edx
    subl	$393216, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC5, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$48, %rax
    movq	-16(%rbp), %rdx
    addq	$24, %rdx
    movl	(%rdx), %edx
    subl	$458752, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC6, %rdx
    movq	%rdx, (%rax)
    movq	-8(%rbp), %rax
    addq	$56, %rax
    movq	-16(%rbp), %rdx
    addq	$28, %rdx
    movl	(%rdx), %edx
    subl	$524288, %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	$LC7, %rdx
    movq	%rdx, (%rax)
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    addq	$-128, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -116(%rbp)
    jmp	L43
L44:
    movl	-116(%rbp), %eax
    addl	$1, %eax
    sall	$16, %eax
    movl	%eax, %edx
    movl	-116(%rbp), %eax
    cltq
    movl	%edx, -112(%rbp,%rax,4)
    addl	$1, -116(%rbp)
L43:
    cmpl	$7, -116(%rbp)
    jle	L44
    leaq	-112(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	get_addrs
    movl	$0, -116(%rbp)
    jmp	L45
L47:
    movl	-116(%rbp), %eax
    cltq
    movq	-80(%rbp,%rax,8), %rax
    movzbl	(%rax), %eax
    cmpb	$97, %al
    je	L46
    call	abort
L46:
    addl	$1, -116(%rbp)
L45:
    cmpl	$7, -116(%rbp)
    jle	L47
    movl	$0, %edi
    call	exit
