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
    .globl	vlng
vlng:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$42, %eax
    popq	%rbp
    ret
    .globl	vint
vint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$43, %eax
    popq	%rbp
    ret
    .globl	vsrt
vsrt:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$42, %eax
    popq	%rbp
    ret
    .globl	vchr
vchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$42, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$232, %rsp
    movl	%edi, -212(%rbp)
    movq	%rsi, -224(%rbp)
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movl	-212(%rbp), %eax
    movl	%eax, %edx
    movl	-212(%rbp), %eax
    vmovd	%edx, %xmm0
    movl	$1, %edx
    vpinsrb	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    movl	$2, %edx
    vmovd	%edx, %xmm0
    movl	$3, %edx
    vpinsrb	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm8
    movl	$4, %edx
    vmovd	%edx, %xmm0
    movl	$5, %edx
    vpinsrb	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm4
    movl	$6, %edx
    vmovd	%edx, %xmm0
    movl	$7, %edx
    vpinsrb	$1, %edx, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm7
    vmovd	%eax, %xmm0
    movl	$1, %eax
    vpinsrb	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm2
    movl	$2, %eax
    vmovd	%eax, %xmm0
    movl	$3, %eax
    vpinsrb	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm6
    movl	$4, %eax
    vmovd	%eax, %xmm0
    movl	$5, %eax
    vpinsrb	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm3
    movl	$6, %eax
    vmovd	%eax, %xmm0
    movl	$7, %eax
    vpinsrb	$1, %eax, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm5
    vpunpcklwd	%xmm8, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpcklwd	%xmm7, %xmm4, %xmm0
    vmovdqa	%xmm0, %xmm4
    vpunpcklwd	%xmm6, %xmm2, %xmm0
    vmovdqa	%xmm0, %xmm2
    vpunpcklwd	%xmm5, %xmm3, %xmm0
    vmovdqa	%xmm0, %xmm3
    vpunpckldq	%xmm4, %xmm1, %xmm0
    vmovdqa	%xmm0, %xmm1
    vpunpckldq	%xmm3, %xmm2, %xmm0
    vpunpcklqdq	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -160(%rbp)
    movl	-212(%rbp), %eax
    vmovdqa	LC0(%rip), %xmm0
    vpinsrw	$0, %eax, %xmm0, %xmm0
    vmovaps	%xmm0, -128(%rbp)
    vmovdqa	LC1(%rip), %xmm0
    vpinsrd	$0, -212(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	-212(%rbp), %eax
    cltq
    movl	$1, %edx
    vmovq	%rax, %xmm5
    vpinsrq	$1, %rdx, %xmm5, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, %eax
    call	vchr
    vmovd	%eax, %xmm0
    vpbroadcastb	%xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-160(%rbp), %xmm0
    vpaddb	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -144(%rbp)
    movl	$0, -200(%rbp)
    jmp	L62
L64:
    movl	-200(%rbp), %eax
    cltq
    leaq	-144(%rbp), %rdx
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %ebx
    movl	$0, %eax
    call	vchr
    movsbl	%al, %edx
    movl	-200(%rbp), %eax
    cltq
    leaq	-160(%rbp), %rcx
    addq	%rcx, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    addl	%edx, %eax
    cmpl	%eax, %ebx
    je	L63
    call	abort
L63:
    addl	$1, -200(%rbp)
L62:
    cmpl	$15, -200(%rbp)
    jle	L64
    movl	$0, %eax
    call	vsrt
    vmovd	%eax, %xmm0
    vpbroadcastw	%xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-128(%rbp), %xmm0
    vpaddw	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -196(%rbp)
    jmp	L65
L67:
    movl	-196(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ebx
    movl	$0, %eax
    call	vsrt
    movswl	%ax, %edx
    movl	-196(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    leaq	-128(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    cwtl
    addl	%edx, %eax
    cmpl	%eax, %ebx
    je	L66
    call	abort
L66:
    addl	$1, -196(%rbp)
L65:
    cmpl	$7, -196(%rbp)
    jle	L67
    movl	$0, %eax
    call	vchr
    movsbw	%al, %di
    movsbw	%al, %r10w
    movsbw	%al, %si
    movsbw	%al, %r9w
    movsbw	%al, %cx
    movsbw	%al, %r8w
    movsbw	%al, %dx
    cbtw
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
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-128(%rbp), %xmm0
    vpaddw	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    movl	$0, -192(%rbp)
    jmp	L68
L70:
    movl	-192(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    movzwl	(%rax), %eax
    movswl	%ax, %ebx
    movl	$0, %eax
    call	vchr
    movsbl	%al, %edx
    movl	-192(%rbp), %eax
    cltq
    leaq	(%rax,%rax), %rcx
    leaq	-128(%rbp), %rax
    addq	%rcx, %rax
    movzwl	(%rax), %eax
    cwtl
    addl	%edx, %eax
    cmpl	%eax, %ebx
    je	L69
    call	abort
L69:
    addl	$1, -192(%rbp)
L68:
    cmpl	$7, -192(%rbp)
    jle	L70
    movl	$0, %eax
    call	vint
    movl	%eax, -232(%rbp)
    vbroadcastss	-232(%rbp), %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-96(%rbp), %xmm0
    vpmulld	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -188(%rbp)
    jmp	L71
L73:
    movl	-188(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %ebx
    movl	$0, %eax
    call	vint
    movl	%eax, %ecx
    movl	-188(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %eax
    imull	%ecx, %eax
    cmpl	%eax, %ebx
    je	L72
    call	abort
L72:
    addl	$1, -188(%rbp)
L71:
    cmpl	$3, -188(%rbp)
    jle	L73
    movl	$0, %eax
    call	vsrt
    movswl	%ax, %ecx
    movswl	%ax, %edx
    movswl	%ax, %esi
    cwtl
    vmovd	%esi, %xmm6
    vpinsrd	$1, %eax, %xmm6, %xmm1
    vmovd	%ecx, %xmm7
    vpinsrd	$1, %edx, %xmm7, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-96(%rbp), %xmm0
    vpmulld	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -184(%rbp)
    jmp	L74
L76:
    movl	-184(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %ebx
    movl	$0, %eax
    call	vsrt
    movswl	%ax, %edx
    movl	-184(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rcx
    leaq	-96(%rbp), %rax
    addq	%rcx, %rax
    movl	(%rax), %eax
    imull	%edx, %eax
    cmpl	%eax, %ebx
    je	L75
    call	abort
L75:
    addl	$1, -184(%rbp)
L74:
    cmpl	$3, -184(%rbp)
    jle	L76
    movl	$0, %eax
    call	vchr
    movsbl	%al, %ecx
    movsbl	%al, %edx
    movsbl	%al, %esi
    movsbl	%al, %eax
    vmovd	%esi, %xmm5
    vpinsrd	$1, %eax, %xmm5, %xmm1
    vmovd	%ecx, %xmm6
    vpinsrd	$1, %edx, %xmm6, %xmm0
    vpunpcklqdq	%xmm1, %xmm0, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-96(%rbp), %xmm0
    vpmulld	%xmm0, %xmm1, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    movl	$0, -180(%rbp)
    jmp	L77
L79:
    movl	-180(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movl	(%rax), %ebx
    movl	$0, %eax
    call	vchr
    movsbl	%al, %edx
    movl	-180(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rcx
    leaq	-96(%rbp), %rax
    addq	%rcx, %rax
    movl	(%rax), %eax
    imull	%edx, %eax
    cmpl	%eax, %ebx
    je	L78
    call	abort
L78:
    addl	$1, -180(%rbp)
L77:
    cmpl	$3, -180(%rbp)
    jle	L79
    movl	$0, %eax
    call	vlng
    movq	%rax, -232(%rbp)
    vmovddup	-232(%rbp), %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-64(%rbp), %xmm0
    vpmuludq	%xmm0, %xmm1, %xmm2
    vpsrlq	$32, %xmm1, %xmm4
    vpsrlq	$32, %xmm0, %xmm3
    vpmuludq	%xmm0, %xmm4, %xmm0
    vpmuludq	%xmm1, %xmm3, %xmm1
    vpaddq	%xmm1, %xmm0, %xmm0
    vpsllq	$32, %xmm0, %xmm0
    vpaddq	%xmm0, %xmm2, %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movl	$0, -176(%rbp)
    jmp	L80
L82:
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-48(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rbx
    movl	$0, %eax
    call	vlng
    movq	%rax, %rcx
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    imulq	%rcx, %rax
    cmpq	%rax, %rbx
    je	L81
    call	abort
L81:
    addl	$1, -176(%rbp)
L80:
    cmpl	$1, -176(%rbp)
    jle	L82
    movl	$0, %eax
    call	vint
    movslq	%eax, %rdx
    cltq
    vmovq	%rdx, %xmm7
    vpinsrq	$1, %rax, %xmm7, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-64(%rbp), %xmm0
    vpmuludq	%xmm0, %xmm1, %xmm2
    vpsrlq	$32, %xmm1, %xmm4
    vpsrlq	$32, %xmm0, %xmm3
    vpmuludq	%xmm0, %xmm4, %xmm0
    vpmuludq	%xmm1, %xmm3, %xmm1
    vpaddq	%xmm1, %xmm0, %xmm0
    vpsllq	$32, %xmm0, %xmm0
    vpaddq	%xmm0, %xmm2, %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movl	$0, -172(%rbp)
    jmp	L83
L85:
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-48(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rbx
    movl	$0, %eax
    call	vint
    movslq	%eax, %rdx
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rcx
    leaq	-64(%rbp), %rax
    addq	%rcx, %rax
    movq	(%rax), %rax
    imulq	%rdx, %rax
    cmpq	%rax, %rbx
    je	L84
    call	abort
L84:
    addl	$1, -172(%rbp)
L83:
    cmpl	$1, -172(%rbp)
    jle	L85
    movl	$0, %eax
    call	vsrt
    movswq	%ax, %rdx
    movswq	%ax, %rax
    vmovq	%rdx, %xmm5
    vpinsrq	$1, %rax, %xmm5, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-64(%rbp), %xmm0
    vpmuludq	%xmm0, %xmm1, %xmm2
    vpsrlq	$32, %xmm1, %xmm4
    vpsrlq	$32, %xmm0, %xmm3
    vpmuludq	%xmm0, %xmm4, %xmm0
    vpmuludq	%xmm1, %xmm3, %xmm1
    vpaddq	%xmm1, %xmm0, %xmm0
    vpsllq	$32, %xmm0, %xmm0
    vpaddq	%xmm0, %xmm2, %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movl	$0, -168(%rbp)
    jmp	L86
L88:
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-48(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rbx
    movl	$0, %eax
    call	vsrt
    movswq	%ax, %rdx
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rcx
    leaq	-64(%rbp), %rax
    addq	%rcx, %rax
    movq	(%rax), %rax
    imulq	%rdx, %rax
    cmpq	%rax, %rbx
    je	L87
    call	abort
L87:
    addl	$1, -168(%rbp)
L86:
    cmpl	$1, -168(%rbp)
    jle	L88
    movl	$0, %eax
    call	vchr
    movsbq	%al, %rdx
    movsbq	%al, %rax
    vmovq	%rdx, %xmm6
    vpinsrq	$1, %rax, %xmm6, %xmm0
    vmovdqa	%xmm0, %xmm1
    vmovdqa	-64(%rbp), %xmm0
    vpmuludq	%xmm0, %xmm1, %xmm2
    vpsrlq	$32, %xmm1, %xmm4
    vpsrlq	$32, %xmm0, %xmm3
    vpmuludq	%xmm0, %xmm4, %xmm0
    vpmuludq	%xmm1, %xmm3, %xmm1
    vpaddq	%xmm1, %xmm0, %xmm0
    vpsllq	$32, %xmm0, %xmm0
    vpaddq	%xmm0, %xmm2, %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movl	$0, -164(%rbp)
    jmp	L89
L91:
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-48(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rbx
    movl	$0, %eax
    call	vchr
    movsbq	%al, %rdx
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rcx
    leaq	-64(%rbp), %rax
    addq	%rcx, %rax
    movq	(%rax), %rax
    imulq	%rdx, %rax
    cmpq	%rax, %rbx
    je	L90
    call	abort
L90:
    addl	$1, -164(%rbp)
L89:
    cmpl	$1, -164(%rbp)
    jle	L91
    movl	$0, %eax
    movq	-24(%rbp), %rdi
    xorq	$40, %rdi
    je	L93
    call	__stack_chk_fail
L93:
    addq	$232, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .value	0
    .value	1
    .value	2
    .value	3
    .value	4
    .value	5
    .value	6
    .value	7
LC1:
    .long	0
    .long	1
    .long	2
    .long	3
