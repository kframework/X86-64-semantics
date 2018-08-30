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
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
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
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .globl	x
    .data
x:
    .long	0
    .long	1076101120
    .long	0
    .long	1076232192
    .long	0
    .long	1076363264
    .long	0
    .long	1076494336
    .long	0
    .long	1076625408
    .long	0
    .long	1076756480
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	1077215232
    .long	0
    .long	1077280768
    .long	0
    .long	1077346304
    .long	0
    .long	1077411840
    .long	0
    .long	1077477376
    .long	0
    .long	1077542912
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	1077936128
    .long	0
    .long	1077968896
    .long	0
    .long	1078001664
    .long	0
    .long	1078034432
    .long	0
    .long	1078067200
    .long	0
    .long	1078099968
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	1078296576
    .long	0
    .long	1078329344
    .long	0
    .long	1078362112
    .long	0
    .long	1078394880
    .long	0
    .long	1078427648
    .long	0
    .long	1078460416
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	1078657024
    .long	0
    .long	1078689792
    .long	0
    .long	1078722560
    .long	0
    .long	1078755328
    .long	0
    .long	1078788096
    .long	0
    .long	1078820864
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .long	0
    .long	-1074790400
    .comm	tmp,240,32
    .text
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, -4(%rbp)
    jmp	L54
L55:
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp, %rax
    vmovsd	%xmm0, (%rax)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x + 8, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp + 8, %rax
    vmovsd	%xmm0, (%rax)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x + 16, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp + 16, %rax
    vmovsd	%xmm0, (%rax)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x + 24, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp + 24, %rax
    vmovsd	%xmm0, (%rax)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x + 32, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp + 32, %rax
    vmovsd	%xmm0, (%rax)
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$x + 40, %rax
    vmovsd	(%rax), %xmm0
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$4, %rax
    addq	$tmp + 40, %rax
    vmovsd	%xmm0, (%rax)
    addl	$1, -4(%rbp)
L54:
    cmpl	$4, -4(%rbp)
    jle	L55
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    call	test
    movl	$0, -8(%rbp)
    jmp	L57
L62:
    movl	$0, -4(%rbp)
    jmp	L58
L61:
    movl	-4(%rbp), %eax
    movslq	%eax, %rcx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    addq	%rax, %rax
    addq	%rcx, %rax
    vmovsd	tmp(,%rax,8), %xmm0
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L59
    vmovsd	LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L59
    call	abort
L59:
    addl	$1, -4(%rbp)
L58:
    cmpl	$5, -4(%rbp)
    jle	L61
    addl	$1, -8(%rbp)
L57:
    cmpl	$4, -8(%rbp)
    jle	L62
    movl	$0, %eax
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	-1074790400
