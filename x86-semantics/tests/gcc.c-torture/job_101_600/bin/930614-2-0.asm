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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$1056, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -1056(%rbp)
    jmp	L40
L51:
    movl	-1056(%rbp), %eax
    movl	%eax, -1052(%rbp)
    jmp	L41
L50:
    movl	$0, -1048(%rbp)
    jmp	L42
L49:
    movl	$0, -1044(%rbp)
    jmp	L43
L48:
    movl	-1056(%rbp), %eax
    cmpl	-1052(%rbp), %eax
    jne	L44
    movl	-1048(%rbp), %eax
    cmpl	-1044(%rbp), %eax
    jne	L44
    movl	-1044(%rbp), %eax
    cltq
    movl	-1048(%rbp), %edx
    movslq	%edx, %rdx
    movl	-1056(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rcx, %rcx
    addq	%rdx, %rcx
    movl	-1052(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rcx
    addq	%rcx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    vmovss	$LC0(%rip), %xmm0
    vmovss	%xmm0, -1040(%rbp,%rax,4)
    jmp	L45
L44:
    movl	-1044(%rbp), %eax
    cltq
    movl	-1048(%rbp), %edx
    movslq	%edx, %rdx
    movl	-1056(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rcx, %rcx
    addq	%rdx, %rcx
    movl	-1052(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rcx
    addq	%rcx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    vmovss	$LC0(%rip), %xmm0
    vmovss	%xmm0, -1040(%rbp,%rax,4)
L45:
    movl	-1044(%rbp), %eax
    cltq
    movl	-1048(%rbp), %edx
    movslq	%edx, %rdx
    movl	-1056(%rbp), %ecx
    movslq	%ecx, %rcx
    addq	%rcx, %rcx
    addq	%rdx, %rcx
    movl	-1052(%rbp), %edx
    movslq	%edx, %rdx
    salq	$3, %rcx
    addq	%rcx, %rdx
    addq	%rdx, %rdx
    addq	%rdx, %rax
    vmovss	-1040(%rbp,%rax,4), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	%xmm1, %xmm0
    jbe	L54
    call	abort
L54:
    addl	$1, -1044(%rbp)
L43:
    cmpl	$1, -1044(%rbp)
    jle	L48
    addl	$1, -1048(%rbp)
L42:
    cmpl	$1, -1048(%rbp)
    jle	L49
    addl	$1, -1052(%rbp)
L41:
    cmpl	$7, -1052(%rbp)
    jle	L50
    addl	$1, -1056(%rbp)
L40:
    cmpl	$7, -1056(%rbp)
    jle	L51
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	1061997773
