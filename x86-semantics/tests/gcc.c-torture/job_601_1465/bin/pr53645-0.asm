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
    .globl	uq4444
uq4444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    shrl	$2, %eax
    movl	%eax, %ecx
    vpextrd	$1, %xmm0, %eax
    shrl	$2, %eax
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %esi
    shrl	$2, %esi
    vpextrd	$3, %xmm0, %edx
    shrl	$2, %edx
    vmovd	%esi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%ecx, %xmm3
    vpinsrd	$1, %eax, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur4444
ur4444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    andl	$3, %eax
    movl	%eax, %ecx
    vpextrd	$1, %xmm0, %eax
    andl	$3, %eax
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %esi
    andl	$3, %esi
    vpextrd	$3, %xmm0, %edx
    andl	$3, %edx
    vmovd	%esi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%ecx, %xmm3
    vpinsrd	$1, %eax, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq4444
sq4444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    leal	3(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$2, %eax
    movl	%eax, %esi
    vpextrd	$1, %xmm0, %eax
    leal	3(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$2, %eax
    movl	%eax, %ecx
    vpextrd	$2, %xmm0, %eax
    leal	3(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$2, %eax
    movl	%eax, %edi
    vpextrd	$3, %xmm0, %eax
    leal	3(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$2, %eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr4444
sr4444:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$30, %eax
    addl	%eax, %edx
    andl	$3, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %esi
    vpextrd	$1, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$30, %eax
    addl	%eax, %edx
    andl	$3, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %ecx
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$30, %eax
    addl	%eax, %edx
    andl	$3, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edi
    vpextrd	$3, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$30, %eax
    addl	%eax, %edx
    andl	$3, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq1428
uq1428:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovdqa	%xmm0, %xmm2
    vpextrd	$1, %xmm0, %eax
    shrl	$2, %eax
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %ecx
    shrl	%ecx
    vpextrd	$3, %xmm0, %edx
    shrl	$3, %edx
    vmovd	%ecx, %xmm3
    vpinsrd	$1, %edx, %xmm3, %xmm1
    vpinsrd	$1, %eax, %xmm2, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur1428
ur1428:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrd	$1, %xmm0, %eax
    andl	$3, %eax
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %ecx
    andl	$1, %ecx
    vpextrd	$3, %xmm0, %edx
    andl	$7, %edx
    vmovd	%ecx, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    movl	$0, %edx
    vmovd	%edx, %xmm3
    vpinsrd	$1, %eax, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq1428
sq1428:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovdqa	%xmm0, %xmm2
    vpextrd	$1, %xmm0, %eax
    leal	3(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$2, %eax
    movl	%eax, %ecx
    vpextrd	$2, %xmm0, %eax
    movl	%eax, %edx
    shrl	$31, %edx
    addl	%edx, %eax
    sarl	%eax
    movl	%eax, %esi
    vpextrd	$3, %xmm0, %eax
    leal	7(%rax), %edx
    testl	%eax, %eax
    cmovs	%edx, %eax
    sarl	$3, %eax
    vmovd	%esi, %xmm3
    vpinsrd	$1, %eax, %xmm3, %xmm1
    vpinsrd	$1, %ecx, %xmm2, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr1428
sr1428:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vpextrd	$1, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$30, %eax
    addl	%eax, %edx
    andl	$3, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %ecx
    vpextrd	$2, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$31, %eax
    addl	%eax, %edx
    andl	$1, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %esi
    vpextrd	$3, %xmm0, %edx
    movl	%edx, %eax
    sarl	$31, %eax
    shrl	$29, %eax
    addl	%eax, %edx
    andl	$7, %edx
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%esi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    movl	$0, %eax
    vmovd	%eax, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq3333
uq3333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %esi
    shrl	%esi
    vpextrd	$1, %xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %ecx
    shrl	%ecx
    vpextrd	$2, %xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %edi
    shrl	%edi
    vpextrd	$3, %xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur3333
ur3333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %esi
    shrl	%esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    subl	%eax, %ecx
    movl	%ecx, %esi
    vpextrd	$1, %xmm0, %edi
    movl	$-1431655765, %edx
    movl	%edi, %eax
    mull	%edx
    movl	%edx, %ecx
    shrl	%ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    subl	%eax, %edi
    movl	%edi, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	$-1431655765, %edx
    movl	%r8d, %eax
    mull	%edx
    movl	%edx, %edi
    shrl	%edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$-1431655765, %edx
    movl	%r8d, %eax
    mull	%edx
    shrl	%edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vmovd	%edi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq3333
sq3333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr3333
sr3333:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    subl	%eax, %ecx
    movl	%ecx, %esi
    vpextrd	$1, %xmm0, %edi
    movl	$1431655766, %edx
    movl	%edi, %eax
    imull	%edx
    movl	%edi, %eax
    sarl	$31, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    subl	%eax, %edi
    movl	%edi, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	$1431655766, %edx
    movl	%r8d, %eax
    imull	%edx
    movl	%r8d, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$1431655766, %edx
    movl	%r8d, %eax
    imull	%edx
    movl	%r8d, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vmovd	%edi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq6565
uq6565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %esi
    shrl	$2, %esi
    vpextrd	$1, %xmm0, %eax
    movl	$-858993459, %edx
    mull	%edx
    movl	%edx, %ecx
    shrl	$2, %ecx
    vpextrd	$2, %xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %edi
    shrl	$2, %edi
    vpextrd	$3, %xmm0, %eax
    movl	$-858993459, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur6565
ur6565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %esi
    shrl	$2, %esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %esi
    vpextrd	$1, %xmm0, %edi
    movl	$-858993459, %edx
    movl	%edi, %eax
    mull	%edx
    movl	%edx, %ecx
    shrl	$2, %ecx
    movl	%ecx, %eax
    sall	$2, %eax
    addl	%ecx, %eax
    subl	%eax, %edi
    movl	%edi, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	$-1431655765, %edx
    movl	%r8d, %eax
    mull	%edx
    movl	%edx, %edi
    shrl	$2, %edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    addl	%eax, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$-858993459, %edx
    movl	%r8d, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vmovd	%edi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq6565
sq6565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr6565
sr6565:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    movl	%esi, %eax
    addl	%eax, %eax
    addl	%esi, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %esi
    vpextrd	$1, %xmm0, %edi
    movl	$1717986919, %edx
    movl	%edi, %eax
    imull	%edx
    sarl	%edx
    movl	%edi, %eax
    sarl	$31, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    movl	%ecx, %eax
    sall	$2, %eax
    addl	%ecx, %eax
    subl	%eax, %edi
    movl	%edi, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	$715827883, %edx
    movl	%r8d, %eax
    imull	%edx
    movl	%r8d, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    addl	%eax, %eax
    addl	%edi, %eax
    addl	%eax, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$1717986919, %edx
    movl	%r8d, %eax
    imull	%edx
    sarl	%edx
    movl	%r8d, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vmovd	%edi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq1414146
uq1414146:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %esi
    shrl	$2, %esi
    vpextrd	$1, %xmm0, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %ecx
    shrl	$2, %ecx
    vpextrd	$2, %xmm0, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %edi
    shrl	$2, %edi
    vpextrd	$3, %xmm0, %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur1414146
ur1414146:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	%ecx, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %esi
    shrl	$2, %esi
    movl	%esi, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %esi
    vpextrd	$1, %xmm0, %edi
    movl	%edi, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %ecx
    shrl	$2, %ecx
    movl	%ecx, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %edi
    movl	%edi, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	%r8d, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %edi
    shrl	$2, %edi
    movl	%edi, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$-1431655765, %edx
    movl	%r8d, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    movl	%r8d, %edx
    subl	%eax, %edx
    vmovd	%edi, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq1414146
sq1414146:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr1414146
sr1414146:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    movl	%edi, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    movl	%ecx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    movl	%esi, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    movl	%ecx, %esi
    subl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    movl	%r8d, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %edx, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	uq7777
uq7777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	ur7777
ur7777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %esi
    movl	%esi, %eax
    sall	$3, %eax
    subl	%esi, %eax
    movl	%ecx, %esi
    subl	%eax, %esi
    vpextrd	$1, %xmm0, %edi
    movl	$613566757, %edx
    movl	%edi, %eax
    mull	%edx
    movl	%edi, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %ecx
    movl	%ecx, %eax
    sall	$3, %eax
    subl	%ecx, %eax
    movl	%edi, %ecx
    subl	%eax, %ecx
    vpextrd	$2, %xmm0, %r8d
    movl	$613566757, %edx
    movl	%r8d, %eax
    mull	%edx
    movl	%r8d, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edi
    movl	%edi, %eax
    sall	$3, %eax
    subl	%edi, %eax
    movl	%r8d, %edi
    subl	%eax, %edi
    vpextrd	$3, %xmm0, %r8d
    movl	$613566757, %edx
    movl	%r8d, %eax
    mull	%edx
    movl	%r8d, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%r8d, %eax
    subl	%edx, %eax
    vmovd	%edi, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%esi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sq7777
sq7777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %esi
    subl	%eax, %esi
    vpextrd	$2, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    vpextrd	$3, %xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %esi, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	sr7777
sr7777:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovdqa	(%rax), %xmm0
    vmovd	%xmm0, %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    movl	%edx, %edi
    subl	%eax, %edi
    movl	%edi, %eax
    sall	$3, %eax
    subl	%edi, %eax
    movl	%ecx, %edi
    subl	%eax, %edi
    vpextrd	$1, %xmm0, %esi
    movl	$-1840700269, %edx
    movl	%esi, %eax
    imull	%edx
    leal	(%rdx,%rsi), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%esi, %eax
    sarl	$31, %eax
    movl	%edx, %ecx
    subl	%eax, %ecx
    movl	%ecx, %eax
    sall	$3, %eax
    subl	%ecx, %eax
    movl	%esi, %ecx
    subl	%eax, %ecx
    vpextrd	$2, %xmm0, %esi
    movl	$-1840700269, %edx
    movl	%esi, %eax
    imull	%edx
    leal	(%rdx,%rsi), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%esi, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %r8d
    movl	%r8d, %eax
    sall	$3, %eax
    subl	%r8d, %eax
    subl	%eax, %esi
    movl	%esi, %r8d
    vpextrd	$3, %xmm0, %esi
    movl	$-1840700269, %edx
    movl	%esi, %eax
    imull	%edx
    leal	(%rdx,%rsi), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%esi, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%esi, %eax
    subl	%edx, %eax
    vmovd	%r8d, %xmm2
    vpinsrd	$1, %eax, %xmm2, %xmm1
    vmovd	%edi, %xmm3
    vpinsrd	$1, %ecx, %xmm3, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    movq	-8(%rbp), %rax
    vmovaps	%xmm0, (%rax)
    nop
    popq	%rbp
    ret
    .globl	u
    .data
u:
    .long	73
    .long	65531
    .long	0
    .long	174
    .long	1
    .long	8173
    .long	-1
    .long	-64
    .globl	s
s:
    .long	73
    .long	-9123
    .long	32761
    .long	8191
    .long	9903
    .long	-1
    .long	-7323
    .long	0
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
L127:
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	uq4444
    movl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movl	(%rdx), %edx
    shrl	$2, %edx
    cmpl	%edx, %eax
    jne	L79
    movl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movl	(%rdx), %edx
    shrl	$2, %edx
    cmpl	%edx, %eax
    je	L80
L79:
    call	abort
L80:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movl	(%rdx), %edx
    shrl	$2, %edx
    cmpl	%edx, %eax
    jne	L81
    movl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movl	(%rdx), %edx
    shrl	$2, %edx
    cmpl	%edx, %eax
    je	L82
L81:
    call	abort
L82:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur4444
    movl	-48(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u, %rdx
    movl	(%rdx), %edx
    andl	$3, %edx
    cmpl	%edx, %eax
    jne	L83
    movl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movl	(%rdx), %edx
    andl	$3, %edx
    cmpl	%edx, %eax
    je	L84
L83:
    call	abort
L84:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movl	(%rdx), %edx
    andl	$3, %edx
    cmpl	%edx, %eax
    jne	L85
    movl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movl	(%rdx), %edx
    andl	$3, %edx
    cmpl	%edx, %eax
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
    call	uq1428
    movl	-48(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jne	L87
    movl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movl	(%rdx), %edx
    shrl	$3, %edx
    cmpl	%edx, %eax
    je	L88
L87:
    call	abort
L88:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movl	(%rdx), %edx
    shrl	%edx
    cmpl	%edx, %eax
    jne	L89
    movl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movl	(%rdx), %edx
    shrl	$2, %edx
    cmpl	%edx, %eax
    je	L90
L89:
    call	abort
L90:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur1428
    movl	-48(%rbp), %eax
    testl	%eax, %eax
    jne	L91
    movl	-36(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 12, %rdx
    movl	(%rdx), %edx
    andl	$7, %edx
    cmpl	%edx, %eax
    je	L92
L91:
    call	abort
L92:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 8, %rdx
    movl	(%rdx), %edx
    andl	$1, %edx
    cmpl	%edx, %eax
    jne	L93
    movl	-44(%rbp), %eax
    movl	-52(%rbp), %edx
    movslq	%edx, %rdx
    salq	$4, %rdx
    addq	$u + 4, %rdx
    movl	(%rdx), %edx
    andl	$3, %edx
    cmpl	%edx, %eax
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
    call	uq3333
    movl	-48(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    cmpl	%eax, %ecx
    jne	L95
    movl	-36(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    cmpl	%eax, %ecx
    je	L96
L95:
    call	abort
L96:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    cmpl	%eax, %ecx
    jne	L97
    movl	-44(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    cmpl	%eax, %ecx
    je	L98
L97:
    call	abort
L98:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur3333
    movl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	%edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L99
    movl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	%edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L100
L99:
    call	abort
L100:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	%edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L101
    movl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	%edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
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
    call	uq6565
    movl	-48(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    jne	L103
    movl	-36(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %eax
    movl	$-858993459, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    je	L104
L103:
    call	abort
L104:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    jne	L105
    movl	-44(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %eax
    movl	$-858993459, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    je	L106
L105:
    call	abort
L106:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur6565
    movl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L107
    movl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %ecx
    movl	$-858993459, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L108
L107:
    call	abort
L108:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L109
    movl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %ecx
    movl	$-858993459, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
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
    call	uq1414146
    movl	-48(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    jne	L111
    movl	-36(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    je	L112
L111:
    call	abort
L112:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    jne	L113
    movl	-44(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %ecx
    je	L114
L113:
    call	abort
L114:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur1414146
    movl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %ecx
    movl	%ecx, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
    jne	L115
    movl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %ecx
    movl	$-1431655765, %edx
    movl	%ecx, %eax
    mull	%edx
    shrl	$2, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L116
L115:
    call	abort
L116:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %ecx
    movl	%ecx, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
    jne	L117
    movl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %ecx
    movl	%ecx, %eax
    shrl	%eax
    movl	$-1840700269, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
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
    call	uq7777
    movl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %esi
    jne	L119
    movl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %esi
    je	L120
L119:
    call	abort
L120:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %esi
    jne	L121
    movl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    cmpl	%eax, %esi
    je	L122
L121:
    call	abort
L122:
    leaq	-48(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	u(%rax), %rdx
    leaq	-48(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	ur7777
    movl	-48(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    jne	L123
    movl	-36(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 12, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    je	L124
L123:
    call	abort
L124:
    leaq	-48(%rbp), %rax
    movl	-40(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 8, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    jne	L125
    movl	-44(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$u + 4, %rax
    movl	(%rax), %ecx
    movl	$613566757, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%ecx, %eax
    subl	%edx, %eax
    shrl	%eax
    addl	%edx, %eax
    shrl	$2, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    je	L126
L125:
    call	abort
L126:
    leaq	-48(%rbp), %rax
    addl	$1, -52(%rbp)
L78:
    movl	-52(%rbp), %eax
    cmpl	$1, %eax
    jbe	L127
    movl	$0, -52(%rbp)
    jmp	L128
L177:
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq4444
    movl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %eax
    leal	3(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$2, %eax
    cmpl	%eax, %edx
    jne	L129
    movl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %eax
    leal	3(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$2, %eax
    cmpl	%eax, %edx
    je	L130
L129:
    call	abort
L130:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %eax
    leal	3(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$2, %eax
    cmpl	%eax, %edx
    jne	L131
    movl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %eax
    leal	3(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$2, %eax
    cmpl	%eax, %edx
    je	L132
L131:
    call	abort
L132:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr4444
    movl	-32(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %eax
    cltd
    shrl	$30, %edx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    jne	L133
    movl	-20(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %eax
    cltd
    shrl	$30, %edx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    je	L134
L133:
    call	abort
L134:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %eax
    cltd
    shrl	$30, %edx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    jne	L135
    movl	-28(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %eax
    cltd
    shrl	$30, %edx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    je	L136
L135:
    call	abort
L136:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq1428
    movl	-32(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jne	L137
    movl	-20(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %eax
    leal	7(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$3, %eax
    cmpl	%eax, %edx
    je	L138
L137:
    call	abort
L138:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %eax
    movl	%eax, %ecx
    shrl	$31, %ecx
    addl	%ecx, %eax
    sarl	%eax
    cmpl	%eax, %edx
    jne	L139
    movl	-28(%rbp), %edx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %eax
    leal	3(%rax), %ecx
    testl	%eax, %eax
    cmovs	%ecx, %eax
    sarl	$2, %eax
    cmpl	%eax, %edx
    je	L140
L139:
    call	abort
L140:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr1428
    movl	-32(%rbp), %eax
    testl	%eax, %eax
    jne	L141
    movl	-20(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %eax
    cltd
    shrl	$29, %edx
    addl	%edx, %eax
    andl	$7, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    je	L142
L141:
    call	abort
L142:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %eax
    cltd
    shrl	$31, %edx
    addl	%edx, %eax
    andl	$1, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    jne	L143
    movl	-28(%rbp), %ecx
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %eax
    cltd
    shrl	$30, %edx
    addl	%edx, %eax
    andl	$3, %eax
    subl	%edx, %eax
    cmpl	%eax, %ecx
    je	L144
L143:
    call	abort
L144:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq3333
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L145
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L146
L145:
    call	abort
L146:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L147
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L148
L147:
    call	abort
L148:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr3333
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L149
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L150
L149:
    call	abort
L150:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L151
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$1431655766, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L152
L151:
    call	abort
L152:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq6565
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L153
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L154
L153:
    call	abort
L154:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L155
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L156
L155:
    call	abort
L156:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr6565
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L157
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L158
L157:
    call	abort
L158:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    jne	L159
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$1717986919, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L160
L159:
    call	abort
L160:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq1414146
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L161
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L162
L161:
    call	abort
L162:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L163
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L164
L163:
    call	abort
L164:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr1414146
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
    jne	L165
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$715827883, %edx
    movl	%ecx, %eax
    imull	%edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    cmpl	%edx, %esi
    je	L166
L165:
    call	abort
L166:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
    jne	L167
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    leal	(%rdx,%rdx), %eax
    movl	%eax, %edx
    leal	0(,%rdx,8), %eax
    subl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %eax
    cmpl	%eax, %esi
    je	L168
L167:
    call	abort
L168:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sq7777
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L169
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L170
L169:
    call	abort
L170:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    jne	L171
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    cmpl	%eax, %esi
    je	L172
L171:
    call	abort
L172:
    leaq	-32(%rbp), %rax
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    leaq	s(%rax), %rdx
    leaq	-32(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	sr7777
    movl	-32(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    jne	L173
    movl	-20(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 12, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    je	L174
L173:
    call	abort
L174:
    leaq	-32(%rbp), %rax
    movl	-24(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 8, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    jne	L175
    movl	-28(%rbp), %esi
    movl	-52(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$s + 4, %rax
    movl	(%rax), %ecx
    movl	$-1840700269, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$2, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$3, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    cmpl	%eax, %esi
    je	L176
L175:
    call	abort
L176:
    leaq	-32(%rbp), %rax
    addl	$1, -52(%rbp)
L128:
    movl	-52(%rbp), %eax
    cmpl	$1, %eax
    jbe	L177
    movl	$0, %eax
    movq	-8(%rbp), %rdi
    xorq	$40, %rdi
    je	L179
    call	__stack_chk_fail
L179:
    leave
    ret
