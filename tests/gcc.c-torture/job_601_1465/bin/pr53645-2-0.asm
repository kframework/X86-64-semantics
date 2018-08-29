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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    .globl	uq44444444
uq44444444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %edi
    vpextrw	$1, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %r10d
    vpextrw	$2, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %esi
    vpextrw	$3, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %r9d
    vpextrw	$4, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %ecx
    vpextrw	$5, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %r8d
    vpextrw	$6, %xmm0, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    vpextrw	$7, %xmm0, %eax
    shrw	$2, %ax
    vmovd	%edi, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur44444444
ur44444444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %edi
    vpextrw	$1, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %r10d
    vpextrw	$2, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %esi
    vpextrw	$3, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %r9d
    vpextrw	$4, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %ecx
    vpextrw	$5, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %r8d
    vpextrw	$6, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %edx
    vpextrw	$7, %xmm0, %eax
    andl	$3, %eax
    vmovd	%edi, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq44444444
sq44444444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    leal	3(%rax), %edx
    testw	%ax, %ax
    cmovs	%edx, %eax
    sarw	$2, %ax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr44444444
sr44444444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq1428166432128
uq1428166432128:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    vpextrw	$1, %xmm0, %edx
    shrw	$2, %dx
    movl	%edx, %r10d
    vpextrw	$2, %xmm0, %edx
    movl	%edx, %edi
    shrw	%di
    vpextrw	$3, %xmm0, %edx
    shrw	$3, %dx
    movl	%edx, %r9d
    vpextrw	$4, %xmm0, %edx
    movl	%edx, %esi
    shrw	$4, %si
    vpextrw	$5, %xmm0, %edx
    shrw	$6, %dx
    movl	%edx, %r8d
    vpextrw	$6, %xmm0, %edx
    movl	%edx, %ecx
    shrw	$5, %cx
    vpextrw	$7, %xmm0, %edx
    shrw	$7, %dx
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur1428166432128
ur1428166432128:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    vpextrw	$1, %xmm0, %eax
    andl	$3, %eax
    movl	%eax, %r9d
    vpextrw	$2, %xmm0, %eax
    andl	$1, %eax
    movl	%eax, %esi
    vpextrw	$3, %xmm0, %eax
    andl	$7, %eax
    movl	%eax, %r8d
    vpextrw	$4, %xmm0, %eax
    andl	$15, %eax
    movl	%eax, %ecx
    vpextrw	$5, %xmm0, %eax
    andl	$63, %eax
    movl	%eax, %edi
    vpextrw	$6, %xmm0, %eax
    andl	$31, %eax
    movl	%eax, %edx
    vpextrw	$7, %xmm0, %eax
    andl	$127, %eax
    movl	$0, %r10d
    vmovd	%r10d, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %edi, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq1428166432128
sq1428166432128:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    vpextrw	$1, %xmm0, %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movl	%eax, %ecx
    shrw	$15, %cx
    addl	%ecx, %eax
    sarw	%ax
    movl	%eax, %r8d
    vpextrw	$3, %xmm0, %eax
    leal	7(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$3, %ax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    leal	15(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$4, %ax
    movl	%eax, %edi
    vpextrw	$5, %xmm0, %eax
    leal	63(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$6, %ax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    leal	31(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$5, %ax
    movl	%eax, %esi
    vpextrw	$7, %xmm0, %eax
    leal	127(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$7, %ax
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr1428166432128
sr1428166432128:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    vpextrw	$1, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    movl	%eax, %r10d
    vpextrw	$2, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$13, %dx
    addl	%edx, %eax
    andl	$7, %eax
    subl	%edx, %eax
    movl	%eax, %r9d
    vpextrw	$4, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$12, %dx
    addl	%edx, %eax
    andl	$15, %eax
    subl	%edx, %eax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$10, %dx
    addl	%edx, %eax
    andl	$63, %eax
    subl	%edx, %eax
    movl	%eax, %r8d
    vpextrw	$6, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$11, %dx
    addl	%edx, %eax
    andl	$31, %eax
    subl	%edx, %eax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$9, %dx
    addl	%edx, %eax
    andl	$127, %eax
    subl	%edx, %eax
    movl	$0, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq33333333
uq33333333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	%di
    vpextrw	$1, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r10d
    shrw	%r10w
    vpextrw	$2, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	%si
    vpextrw	$3, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	%r9w
    vpextrw	$4, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	%cx
    vpextrw	$5, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	%r8w
    vpextrw	$6, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    vpextrw	$7, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    vmovd	%edi, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur33333333
ur33333333:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	%di
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$1, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r11d
    shrw	%r11w
    movl	%r11d, %eax
    addl	%eax, %eax
    addl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	%si
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$3, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r10d
    shrw	%r10w
    movl	%r10d, %eax
    addl	%eax, %eax
    addl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	%cx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$5, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	%r9w
    movl	%r9d, %eax
    addl	%eax, %eax
    addl	%r9d, %eax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %r8d
    movzwl	%r8w, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vpextrw	$7, %xmm0, %ebx
    movzwl	%bx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	%r8w
    movl	%r8d, %eax
    addl	%eax, %eax
    addl	%r8d, %eax
    subl	%eax, %ebx
    movl	%ebx, %r8d
    movl	%edi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%esi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%ecx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%edx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	sq33333333
sq33333333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r8d
    subl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r11d
    subl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r10d
    subl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r9d
    subl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movswl	%ax, %edx
    imull	$21846, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr33333333
sr33333333:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$1, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %r11d
    subl	%eax, %r11d
    movl	%r11d, %eax
    addl	%eax, %eax
    addl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$3, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %r10d
    subl	%eax, %r10d
    movl	%r10d, %eax
    addl	%eax, %eax
    addl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$5, %xmm0, %edx
    movswl	%dx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%r8d, %r9d
    subl	%eax, %r9d
    movl	%r9d, %eax
    addl	%eax, %eax
    addl	%r9d, %eax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %r8d
    movswl	%r8w, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%r8d, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vpextrw	$7, %xmm0, %ebx
    movswl	%bx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    movl	%ebx, %eax
    sarw	$15, %ax
    subl	%eax, %r8d
    movl	%r8d, %eax
    addl	%eax, %eax
    addl	%r8d, %eax
    subl	%eax, %ebx
    movl	%ebx, %r8d
    movl	%edi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%esi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%ecx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%edx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	uq65656565
uq65656565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	$2, %di
    vpextrw	$1, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r10d
    shrw	$2, %r10w
    vpextrw	$2, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	$2, %si
    vpextrw	$3, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	$2, %r9w
    vpextrw	$4, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	$2, %cx
    vpextrw	$5, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	$2, %r8w
    vpextrw	$6, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    vpextrw	$7, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    shrw	$2, %ax
    vmovd	%edi, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur65656565
ur65656565:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	$2, %di
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    addl	%eax, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$1, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r11d
    shrw	$2, %r11w
    movl	%r11d, %eax
    sall	$2, %eax
    addl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	$2, %si
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    addl	%eax, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$3, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r10d
    shrw	$2, %r10w
    movl	%r10d, %eax
    sall	$2, %eax
    addl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	$2, %cx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    addl	%eax, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$5, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	$2, %r9w
    movl	%r9d, %eax
    sall	$2, %eax
    addl	%r9d, %eax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %r8d
    movzwl	%r8w, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vpextrw	$7, %xmm0, %ebx
    movzwl	%bx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	$2, %r8w
    movl	%r8d, %eax
    sall	$2, %eax
    addl	%r8d, %eax
    subl	%eax, %ebx
    movl	%ebx, %r8d
    movl	%edi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%esi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%ecx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%edx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	sq65656565
sq65656565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r8d
    subl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movswl	%ax, %edx
    imull	$26215, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movswl	%ax, %edx
    imull	$26215, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movswl	%ax, %edx
    imull	$26215, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movswl	%ax, %edx
    imull	$26215, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr65656565
sr65656565:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movswl	%dx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    addl	%eax, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$1, %xmm0, %edx
    movswl	%dx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	%cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %r11d
    movl	%r11d, %eax
    sall	$2, %eax
    addl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movswl	%dx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    addl	%eax, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$3, %xmm0, %edx
    movswl	%dx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	%cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %r10d
    movl	%r10d, %eax
    sall	$2, %eax
    addl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edx
    movswl	%dx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    addl	%eax, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$5, %xmm0, %edx
    movswl	%dx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    sarw	%r8w
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%r8d, %r9d
    subl	%eax, %r9d
    movl	%r9d, %eax
    sall	$2, %eax
    addl	%r9d, %eax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %r8d
    movswl	%r8w, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%r8d, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vpextrw	$7, %xmm0, %ebx
    movswl	%bx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    sarw	%r8w
    movl	%ebx, %eax
    sarw	$15, %ax
    subl	%eax, %r8d
    movl	%r8d, %eax
    sall	$2, %eax
    addl	%r8d, %eax
    subl	%eax, %ebx
    movl	%ebx, %r8d
    movl	%edi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%esi, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%ecx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%edx, %eax
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	uq14141461461414
uq14141461461414:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	%di
    vpextrw	$1, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r10d
    shrw	%r10w
    vpextrw	$2, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	%si
    vpextrw	$3, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	$2, %r9w
    vpextrw	$4, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	%cx
    vpextrw	$5, %xmm0, %eax
    movzwl	%ax, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	$2, %r8w
    vpextrw	$6, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    vpextrw	$7, %xmm0, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    vmovd	%edi, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur14141461461414
ur14141461461414:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r9d
    shrw	%r9w
    movl	%r9d, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %r9d
    vpextrw	$1, %xmm0, %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r11d
    shrw	%r11w
    movl	%r11d, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %r11d
    vpextrw	$2, %xmm0, %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    shrw	%r8w
    movl	%r8d, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %r8d
    vpextrw	$3, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    shrw	$2, %cx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    addl	%eax, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$4, %xmm0, %esi
    movl	%esi, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    shrw	%di
    movl	%edi, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    movl	%esi, %edi
    subl	%eax, %edi
    vpextrw	$5, %xmm0, %esi
    movzwl	%si, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %esi
    movl	%esi, %edx
    vpextrw	$6, %xmm0, %r10d
    movl	%r10d, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    shrw	%si
    leal	(%rsi,%rsi), %eax
    movl	%eax, %esi
    leal	0(,%rsi,8), %eax
    subl	%esi, %eax
    movl	%r10d, %esi
    subl	%eax, %esi
    vpextrw	$7, %xmm0, %ebx
    movl	%ebx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %r10d
    leal	(%r10,%r10), %eax
    movl	%eax, %r10d
    leal	0(,%r10,8), %eax
    subl	%r10d, %eax
    subl	%eax, %ebx
    movl	%ebx, %eax
    vmovd	%r9d, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%r8d, %xmm0
    vpinsrw	$1, %ecx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%edi, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	sq14141461461414
sq14141461461414:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrw	$1, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r10d
    subl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movswl	%ax, %edx
    imull	$10923, %edx, %edx
    shrl	$16, %edx
    sarw	$15, %ax
    movl	%edx, %r9d
    subl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	$2, %dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr14141461461414
sr14141461461414:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %r10d
    movl	%r10d, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$1, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %ebx
    subl	%eax, %ebx
    movl	%ebx, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    movl	%edx, %ebx
    subl	%eax, %ebx
    vpextrw	$2, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %r9d
    movl	%r9d, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$3, %xmm0, %edx
    movswl	%dx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    addl	%eax, %eax
    subl	%eax, %edx
    movl	%edx, %ecx
    vpextrw	$4, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %esi
    sarw	$2, %si
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %esi
    movl	%esi, %r8d
    movl	%r8d, %esi
    leal	(%rsi,%rsi), %eax
    movl	%eax, %esi
    leal	0(,%rsi,8), %eax
    subl	%esi, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrw	$5, %xmm0, %esi
    movswl	%si, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%esi, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %esi
    movl	%esi, %edx
    vpextrw	$6, %xmm0, %esi
    movswl	%si, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    sarw	$2, %di
    movl	%esi, %eax
    sarw	$15, %ax
    subl	%eax, %edi
    leal	(%rdi,%rdi), %eax
    movl	%eax, %edi
    leal	0(,%rdi,8), %eax
    subl	%edi, %eax
    movl	%esi, %edi
    subl	%eax, %edi
    vpextrw	$7, %xmm0, %esi
    movswl	%si, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r11d
    sarw	$2, %r11w
    movl	%esi, %eax
    sarw	$15, %ax
    subl	%eax, %r11d
    movl	%r11d, %eax
    movl	%eax, %r11d
    leal	(%r11,%r11), %eax
    movl	%eax, %r11d
    leal	0(,%r11,8), %eax
    subl	%r11d, %eax
    subl	%eax, %esi
    movl	%esi, %eax
    movl	%r10d, %esi
    vmovd	%esi, %xmm0
    vpinsrw	$1, %ebx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%r9d, %esi
    vmovd	%esi, %xmm0
    vpinsrw	$1, %ecx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%r8d, %ecx
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	uq77777777
uq77777777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %r8d
    vpextrw	$1, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %r11d
    vpextrw	$2, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %r10d
    vpextrw	$4, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %r9d
    vpextrw	$6, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur77777777
ur77777777:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    shrw	%cx
    addl	%ecx, %eax
    shrw	$2, %ax
    movl	%eax, %esi
    movl	%esi, %eax
    sall	$3, %eax
    subl	%esi, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$1, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    shrw	%cx
    addl	%ecx, %eax
    shrw	$2, %ax
    movl	%eax, %r11d
    movl	%r11d, %eax
    sall	$3, %eax
    subl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    shrw	%cx
    addl	%ecx, %eax
    shrw	$2, %ax
    movl	%eax, %ecx
    movl	%ecx, %eax
    sall	$3, %eax
    subl	%ecx, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$3, %xmm0, %edx
    movzwl	%dx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    shrw	%di
    addl	%edi, %eax
    shrw	$2, %ax
    movl	%eax, %r10d
    movl	%r10d, %eax
    sall	$3, %eax
    subl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edi
    movzwl	%di, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edi, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    subl	%edx, %eax
    movl	%edi, %edx
    subl	%eax, %edx
    vpextrw	$5, %xmm0, %edi
    movzwl	%di, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%edi, %r8d
    subl	%eax, %r8d
    shrw	%r8w
    addl	%r8d, %eax
    shrw	$2, %ax
    movl	%eax, %r9d
    movl	%r9d, %eax
    sall	$3, %eax
    subl	%r9d, %eax
    subl	%eax, %edi
    movl	%edi, %r9d
    vpextrw	$6, %xmm0, %r8d
    movzwl	%r8w, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    shrw	%di
    addl	%edi, %eax
    shrw	$2, %ax
    movl	%eax, %edi
    sall	$3, %edi
    subl	%eax, %edi
    movl	%r8d, %eax
    subl	%edi, %eax
    vpextrw	$7, %xmm0, %ebx
    movzwl	%bx, %edi
    imull	$9363, %edi, %edi
    shrl	$16, %edi
    movl	%ebx, %r8d
    subl	%edi, %r8d
    shrw	%r8w
    addl	%r8d, %edi
    shrw	$2, %di
    movl	%edi, %r8d
    movl	%r8d, %edi
    sall	$3, %edi
    subl	%r8d, %edi
    subl	%edi, %ebx
    movl	%ebx, %r8d
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	sq77777777
sq77777777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrw	$1, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrw	$3, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$5, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %r9d
    vpextrw	$6, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$7, %xmm0, %eax
    movswl	%ax, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    sarw	%dx
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%r8d, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	%edi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	%esi, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	%ecx, %edx
    vmovd	%edx, %xmm0
    vpinsrw	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr77777777
sr77777777:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-32(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrw	$0, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	%cx
    movl	%edx, %eax
    sarw	$15, %ax
    movl	%ecx, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    sall	$3, %eax
    subl	%esi, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrw	$1, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	%cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %r11d
    movl	%r11d, %eax
    sall	$3, %eax
    subl	%r11d, %eax
    subl	%eax, %edx
    movl	%edx, %r11d
    vpextrw	$2, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	%cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    sall	$3, %eax
    subl	%ecx, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    vpextrw	$3, %xmm0, %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    sarw	%di
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %edi
    movl	%edi, %r10d
    movl	%r10d, %eax
    sall	$3, %eax
    subl	%r10d, %eax
    subl	%eax, %edx
    movl	%edx, %r10d
    vpextrw	$4, %xmm0, %edi
    movswl	%di, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%edi, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    subl	%edx, %eax
    movl	%edi, %edx
    subl	%eax, %edx
    vpextrw	$5, %xmm0, %edi
    movswl	%di, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %r8d
    sarw	%r8w
    movl	%edi, %eax
    sarw	$15, %ax
    movl	%r8d, %r9d
    subl	%eax, %r9d
    movl	%r9d, %eax
    sall	$3, %eax
    subl	%r9d, %eax
    subl	%eax, %edi
    movl	%edi, %r9d
    vpextrw	$6, %xmm0, %r8d
    movswl	%r8w, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edi
    sarw	%di
    movl	%r8d, %eax
    sarw	$15, %ax
    subl	%eax, %edi
    movl	%edi, %eax
    movl	%eax, %edi
    sall	$3, %edi
    subl	%eax, %edi
    movl	%r8d, %eax
    subl	%edi, %eax
    vpextrw	$7, %xmm0, %ebx
    movswl	%bx, %edi
    imull	$18725, %edi, %edi
    shrl	$16, %edi
    movl	%edi, %r8d
    sarw	%r8w
    movl	%ebx, %edi
    sarw	$15, %di
    subl	%edi, %r8d
    movl	%r8d, %edi
    sall	$3, %edi
    subl	%r8d, %edi
    subl	%edi, %ebx
    movl	%ebx, %r8d
    vmovd	%esi, %xmm0
    vpinsrw	$1, %r11d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovd	%ecx, %xmm0
    vpinsrw	$1, %r10d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    vmovd	%edx, %xmm0
    vpinsrw	$1, %r9d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    vmovd	%eax, %xmm0
    vpinsrw	$1, %r8d, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    movq	-24(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbx
    popq	%rbp
    ret
    .globl	u
    .data
u:
    .value	73
    .value	-5
    .value	0
    .value	174
    .value	921
    .value	-1
    .value	17
    .value	178
    .value	1
    .value	8173
    .value	-1
    .value	-64
    .value	12
    .value	29612
    .value	128
    .value	8912
    .globl	s
s:
    .value	73
    .value	-9123
    .value	32761
    .value	8191
    .value	16371
    .value	1201
    .value	12701
    .value	9999
    .value	9903
    .value	-1
    .value	-7323
    .value	0
    .value	-7
    .value	-323
    .value	9124
    .value	-9199
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -52(%rbp)
    jmp	L78
L175:
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq44444444
    movzwl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L79
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L80
L79:
    call	abort
L80:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L81
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L82
L81:
    call	abort
L82:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L83
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L84
L83:
    call	abort
L84:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L85
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L86
L85:
    call	abort
L86:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur44444444
    movzwl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    jne	L87
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    je	L88
L87:
    call	abort
L88:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    jne	L89
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    je	L90
L89:
    call	abort
L90:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    jne	L91
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    je	L92
L91:
    call	abort
L92:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    jne	L93
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    je	L94
L93:
    call	abort
L94:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq1428166432128
    movzwl	-48(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %eax
    cmpw	%ax, %dx
    jne	L95
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    shrw	$3, %dx
    cmpw	%dx, %ax
    je	L96
L95:
    call	abort
L96:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L97
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L98
L97:
    call	abort
L98:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    shrw	$4, %dx
    cmpw	%dx, %ax
    jne	L99
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    shrw	$7, %dx
    cmpw	%dx, %ax
    je	L100
L99:
    call	abort
L100:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    shrw	$5, %dx
    cmpw	%dx, %ax
    jne	L101
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    shrw	$6, %dx
    cmpw	%dx, %ax
    je	L102
L101:
    call	abort
L102:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur1428166432128
    movzwl	-48(%rbp), %eax
    testw	%ax, %ax
    jne	L103
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    andl	$7, %edx
    cmpw	%dx, %ax
    je	L104
L103:
    call	abort
L104:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    andl	$1, %edx
    cmpw	%dx, %ax
    jne	L105
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    andl	$3, %edx
    cmpw	%dx, %ax
    je	L106
L105:
    call	abort
L106:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    andl	$15, %edx
    cmpw	%dx, %ax
    jne	L107
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    andl	$127, %edx
    cmpw	%dx, %ax
    je	L108
L107:
    call	abort
L108:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    andl	$31, %edx
    cmpw	%dx, %ax
    jne	L109
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    andl	$63, %edx
    cmpw	%dx, %ax
    je	L110
L109:
    call	abort
L110:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq33333333
    movzwl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L111
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L112
L111:
    call	abort
L112:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L113
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L114
L113:
    call	abort
L114:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L115
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L116
L115:
    call	abort
L116:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L117
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L118
L117:
    call	abort
L118:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur33333333
    movzwl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L119
    movzwl	-42(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 6, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L120
L119:
    call	abort
L120:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L121
    movzwl	-46(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 2, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L122
L121:
    call	abort
L122:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L123
    movzwl	-34(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 14, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L124
L123:
    call	abort
L124:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L125
    movzwl	-38(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 10, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	%dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L126
L125:
    call	abort
L126:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq65656565
    movzwl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L127
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$52429, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L128
L127:
    call	abort
L128:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L129
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$52429, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L130
L129:
    call	abort
L130:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L131
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$52429, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L132
L131:
    call	abort
L132:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    jne	L133
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$52429, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L134
L133:
    call	abort
L134:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur65656565
    movzwl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L135
    movzwl	-42(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 6, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L136
L135:
    call	abort
L136:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L137
    movzwl	-46(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 2, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L138
L137:
    call	abort
L138:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L139
    movzwl	-34(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 14, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L140
L139:
    call	abort
L140:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L141
    movzwl	-38(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 10, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$52429, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L142
L141:
    call	abort
L142:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq14141461461414
    movzwl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L143
    movzwl	-42(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 6, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L144
L143:
    call	abort
L144:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L145
    movzwl	-46(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 2, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L146
L145:
    call	abort
L146:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L147
    movzwl	-34(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 14, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    je	L148
L147:
    call	abort
L148:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movzwl	(%rdx), %edx
    shrw	%dx
    movzwl	%dx, %edx
    imull	$18725, %edx, %edx
    shrl	$16, %edx
    shrw	%dx
    cmpw	%dx, %ax
    jne	L149
    movzwl	-38(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 10, %rdx
    movzwl	(%rdx), %edx
    movzwl	%dx, %edx
    imull	$43691, %edx, %edx
    shrl	$16, %edx
    shrw	$2, %dx
    cmpw	%dx, %ax
    je	L150
L149:
    call	abort
L150:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur14141461461414
    movzwl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    jne	L151
    movzwl	-42(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 6, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L152
L151:
    call	abort
L152:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    jne	L153
    movzwl	-46(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 2, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    je	L154
L153:
    call	abort
L154:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    jne	L155
    movzwl	-34(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 14, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    je	L156
L155:
    call	abort
L156:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movzwl	(%rax), %ecx
    movl	%ecx, %eax
    shrw	%ax
    movzwl	%ax, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    shrw	%ax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %si
    jne	L157
    movzwl	-38(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 10, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$43691, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$2, %dx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L158
L157:
    call	abort
L158:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq77777777
    movzwl	-48(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    jne	L159
    movzwl	-42(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 6, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    je	L160
L159:
    call	abort
L160:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    jne	L161
    movzwl	-46(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 2, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    je	L162
L161:
    call	abort
L162:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    jne	L163
    movzwl	-34(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 14, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    je	L164
L163:
    call	abort
L164:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    jne	L165
    movzwl	-38(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 10, %rax
    movzwl	(%rax), %eax
    movzwl	%ax, %edx
    imull	$9363, %edx, %edx
    shrl	$16, %edx
    subl	%edx, %eax
    shrw	%ax
    addl	%edx, %eax
    shrw	$2, %ax
    cmpw	%ax, %cx
    je	L166
L165:
    call	abort
L166:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur77777777
    movzwl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L167
    movzwl	-42(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 6, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L168
L167:
    call	abort
L168:
    leaq	-48(%rbp), %rax
    movzwl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L169
    movzwl	-46(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 2, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L170
L169:
    call	abort
L170:
    leaq	-48(%rbp), %rax
    movzwl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L171
    movzwl	-34(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 14, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L172
L171:
    call	abort
L172:
    leaq	-48(%rbp), %rax
    movzwl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L173
    movzwl	-38(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 10, %rax
    movzwl	(%rax), %ecx
    movzwl	%cx, %eax
    imull	$9363, %eax, %eax
    shrl	$16, %eax
    movl	%ecx, %edx
    subl	%eax, %edx
    shrw	%dx
    addl	%edx, %eax
    shrw	$2, %ax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L174
L173:
    call	abort
L174:
    leaq	-48(%rbp), %rax
    addl	$1, -52(%rbp)
L78:
    movl	-52(%rbp), %eax
    cmpl	$1, %eax
    jbe	L175
    movl	$0, -52(%rbp)
    jmp	L176
L273:
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq44444444
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L177
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    je	L178
L177:
    call	abort
L178:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L179
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    je	L180
L179:
    call	abort
L180:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L181
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    je	L182
L181:
    call	abort
L182:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    jne	L183
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    je	L184
L183:
    call	abort
L184:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr44444444
    movzwl	-32(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L185
    movzwl	-26(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L186
L185:
    call	abort
L186:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L187
    movzwl	-30(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L188
L187:
    call	abort
L188:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L189
    movzwl	-18(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L190
L189:
    call	abort
L190:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L191
    movzwl	-22(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L192
L191:
    call	abort
L192:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq1428166432128
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    cmpw	%ax, %dx
    jne	L193
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    leal	7(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$3, %ax
    cmpw	%ax, %dx
    je	L194
L193:
    call	abort
L194:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movl	%eax, %ecx
    shrw	$15, %cx
    addl	%ecx, %eax
    sarw	%ax
    cmpw	%ax, %dx
    jne	L195
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    leal	3(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$2, %ax
    cmpw	%ax, %dx
    je	L196
L195:
    call	abort
L196:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    leal	15(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$4, %ax
    cmpw	%ax, %dx
    jne	L197
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    leal	127(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$7, %ax
    cmpw	%ax, %dx
    je	L198
L197:
    call	abort
L198:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    leal	31(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$5, %ax
    cmpw	%ax, %dx
    jne	L199
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    leal	63(%rax), %ecx
    testw	%ax, %ax
    cmovs	%ecx, %eax
    sarw	$6, %ax
    cmpw	%ax, %dx
    je	L200
L199:
    call	abort
L200:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr1428166432128
    movzwl	-32(%rbp), %eax
    testw	%ax, %ax
    jne	L201
    movzwl	-26(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$13, %dx
    addl	%edx, %eax
    andl	$7, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L202
L201:
    call	abort
L202:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$15, %dx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L203
    movzwl	-30(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$14, %dx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L204
L203:
    call	abort
L204:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$12, %dx
    addl	%edx, %eax
    andl	$15, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L205
    movzwl	-18(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$9, %dx
    addl	%edx, %eax
    andl	$127, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L206
L205:
    call	abort
L206:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$11, %dx
    addl	%edx, %eax
    andl	$31, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    jne	L207
    movzwl	-22(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movl	%eax, %edx
    sarw	$15, %dx
    shrw	$10, %dx
    addl	%edx, %eax
    andl	$63, %eax
    subl	%edx, %eax
    cmpw	%ax, %cx
    je	L208
L207:
    call	abort
L208:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq33333333
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L209
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L210
L209:
    call	abort
L210:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L211
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L212
L211:
    call	abort
L212:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L213
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L214
L213:
    call	abort
L214:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L215
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$21846, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L216
L215:
    call	abort
L216:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr33333333
    movzwl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L217
    movzwl	-26(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L218
L217:
    call	abort
L218:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L219
    movzwl	-30(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L220
L219:
    call	abort
L220:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L221
    movzwl	-18(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L222
L221:
    call	abort
L222:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L223
    movzwl	-22(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$21846, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L224
L223:
    call	abort
L224:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq65656565
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L225
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$26215, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L226
L225:
    call	abort
L226:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L227
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$26215, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L228
L227:
    call	abort
L228:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L229
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$26215, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L230
L229:
    call	abort
L230:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    jne	L231
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$26215, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L232
L231:
    call	abort
L232:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr65656565
    movzwl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L233
    movzwl	-26(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L234
L233:
    call	abort
L234:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L235
    movzwl	-30(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L236
L235:
    call	abort
L236:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L237
    movzwl	-18(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L238
L237:
    call	abort
L238:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    jne	L239
    movzwl	-22(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$26215, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L240
L239:
    call	abort
L240:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq14141461461414
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L241
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L242
L241:
    call	abort
L242:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L243
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L244
L243:
    call	abort
L244:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L245
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L246
L245:
    call	abort
L246:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$2, %cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L247
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$10923, %ecx, %ecx
    shrl	$16, %ecx
    sarw	$15, %ax
    movl	%ecx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    cmpw	%ax, %dx
    je	L248
L247:
    call	abort
L248:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr14141461461414
    movzwl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    jne	L249
    movzwl	-26(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L250
L249:
    call	abort
L250:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    jne	L251
    movzwl	-30(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    je	L252
L251:
    call	abort
L252:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    jne	L253
    movzwl	-18(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    je	L254
L253:
    call	abort
L254:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %edx
    movswl	%dx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %ecx
    sarw	$2, %cx
    movl	%edx, %eax
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    movl	%eax, %ecx
    leal	(%rcx,%rcx), %eax
    movl	%eax, %ecx
    leal	0(,%rcx,8), %eax
    subl	%ecx, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpw	%ax, %si
    jne	L255
    movzwl	-22(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$10923, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpw	%dx, %si
    je	L256
L255:
    call	abort
L256:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq77777777
    movzwl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L257
    movzwl	-26(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L258
L257:
    call	abort
L258:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L259
    movzwl	-30(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L260
L259:
    call	abort
L260:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L261
    movzwl	-18(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L262
L261:
    call	abort
L262:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    jne	L263
    movzwl	-22(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ecx
    imull	$18725, %ecx, %ecx
    shrl	$16, %ecx
    sarw	%cx
    sarw	$15, %ax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpw	%ax, %dx
    je	L264
L263:
    call	abort
L264:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr77777777
    movzwl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L265
    movzwl	-26(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 6, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L266
L265:
    call	abort
L266:
    leaq	-32(%rbp), %rax
    movzwl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L267
    movzwl	-30(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 2, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L268
L267:
    call	abort
L268:
    leaq	-32(%rbp), %rax
    movzwl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L269
    movzwl	-18(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 14, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L270
L269:
    call	abort
L270:
    leaq	-32(%rbp), %rax
    movzwl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    jne	L271
    movzwl	-22(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 10, %rax
    movzwl	(%rax), %ecx
    movswl	%cx, %eax
    imull	$18725, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    sarw	%dx
    movl	%ecx, %eax
    sarw	$15, %ax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpw	%ax, %si
    je	L272
L271:
    call	abort
L272:
    leaq	-32(%rbp), %rax
    addl	$1, -52(%rbp)
L176:
    movl	-52(%rbp), %eax
    cmpl	$1, %eax
    jbe	L273
    movl	$0, %eax
    movq	-8(%rbp), %rdi
    xorq	$40, %rdi
    je	L275
    call	__stack_chk_fail
L275:
    leave
    ret
