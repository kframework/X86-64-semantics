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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movq	%rdi, -104(%rbp)
    movq	%rsi, -112(%rbp)
    movl	%edx, -116(%rbp)
    movl	%ecx, -120(%rbp)
    movl	$4, -72(%rbp)
    movl	$15, -68(%rbp)
    movl	$0, -84(%rbp)
    jmp	L46
L50:
    movq	-112(%rbp), %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -80(%rbp)
    movl	$1, -88(%rbp)
    jmp	L47
L48:
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    vmovss	-80(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -80(%rbp)
    addl	$1, -88(%rbp)
L47:
    movl	-88(%rbp), %eax
    cmpl	-116(%rbp), %eax
    jl	L48
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovss	-80(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    addl	$1, -84(%rbp)
L46:
    movl	-84(%rbp), %eax
    cmpl	-120(%rbp), %eax
    jge	L51
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movq	-104(%rbp), %rax
    addq	%rax, %rdx
    movl	-68(%rbp), %eax
    andq	%rdx, %rax
    testq	%rax, %rax
    jne	L50
    jmp	L51
L54:
    movq	-112(%rbp), %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movq	-112(%rbp), %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rcx
    movl	-72(%rbp), %edx
    movslq	%edx, %rdx
    addq	%rcx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movq	-112(%rbp), %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rcx
    movl	-72(%rbp), %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	%rcx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vmovaps	%xmm0, -32(%rbp)
    movq	-112(%rbp), %rax
    movq	(%rax), %rcx
    movl	-84(%rbp), %eax
    movslq	%eax, %rsi
    movl	-72(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    addq	%rsi, %rax
    salq	$2, %rax
    addq	%rcx, %rax
    vmovaps	(%rax), %xmm0
    vmovaps	%xmm0, -16(%rbp)
    movl	$1, -88(%rbp)
    jmp	L52
L53:
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vaddps	-64(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rcx
    movl	-72(%rbp), %edx
    movslq	%edx, %rdx
    addq	%rcx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -48(%rbp)
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rcx
    movl	-72(%rbp), %edx
    addl	%edx, %edx
    movslq	%edx, %rdx
    addq	%rcx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovaps	(%rax), %xmm0
    vaddps	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -32(%rbp)
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rcx
    movl	-84(%rbp), %eax
    movslq	%eax, %rsi
    movl	-72(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    addq	%rsi, %rax
    salq	$2, %rax
    addq	%rcx, %rax
    vmovaps	(%rax), %xmm0
    vaddps	-16(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -16(%rbp)
    addl	$1, -88(%rbp)
L52:
    movl	-88(%rbp), %eax
    cmpl	-116(%rbp), %eax
    jl	L53
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovaps	-64(%rbp), %xmm0
    vmovaps	%xmm0, (%rax)
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movl	-72(%rbp), %eax
    cltq
    addq	%rdx, %rax
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovaps	-48(%rbp), %xmm0
    vmovaps	%xmm0, (%rax)
    movl	-84(%rbp), %eax
    movslq	%eax, %rdx
    movl	-72(%rbp), %eax
    addl	%eax, %eax
    cltq
    addq	%rdx, %rax
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovaps	-32(%rbp), %xmm0
    vmovaps	%xmm0, (%rax)
    movl	-84(%rbp), %eax
    movslq	%eax, %rcx
    movl	-72(%rbp), %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    cltq
    addq	%rcx, %rax
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovaps	-16(%rbp), %xmm0
    vmovaps	%xmm0, (%rax)
    movl	-72(%rbp), %eax
    sall	$2, %eax
    addl	%eax, -84(%rbp)
L51:
    movl	-72(%rbp), %eax
    sall	$2, %eax
    leal	-1(%rax), %edx
    movl	-120(%rbp), %eax
    subl	%edx, %eax
    cmpl	-84(%rbp), %eax
    jg	L54
    jmp	L55
L58:
    movq	-112(%rbp), %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -76(%rbp)
    movl	$1, -88(%rbp)
    jmp	L56
L57:
    movl	-88(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-112(%rbp), %rax
    addq	%rdx, %rax
    movq	(%rax), %rax
    movl	-84(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    vmovss	-76(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -76(%rbp)
    addl	$1, -88(%rbp)
L56:
    movl	-88(%rbp), %eax
    cmpl	-116(%rbp), %eax
    jl	L57
    movl	-84(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-104(%rbp), %rax
    addq	%rdx, %rax
    vmovss	-76(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    addl	$1, -84(%rbp)
L55:
    movl	-84(%rbp), %eax
    cmpl	-120(%rbp), %eax
    jl	L58
    nop
    leave
    ret
    .comm	buffer,256,32
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$buffer, -48(%rbp)
    movl	$buffer, %eax
    negq	%rax
    andl	$63, %eax
    addq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -40(%rbp)
    movq	-40(%rbp), %rax
    addq	$64, %rax
    movq	%rax, -32(%rbp)
    movq	-40(%rbp), %rax
    subq	$-128, %rax
    movq	%rax, -24(%rbp)
    movl	$0, -56(%rbp)
    jmp	L60
L61:
    movq	-32(%rbp), %rax
    movl	-56(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vxorps	%xmm1, %xmm1, %xmm1
    vcvtsi2ss	-56(%rbp), %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-56(%rbp), %xmm0, %xmm0
    vmovss	LC0(%rip), %xmm2
    vmulss	%xmm2, %xmm0, %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, (%rax)
    movq	-24(%rbp), %rax
    movl	-56(%rbp), %edx
    movslq	%edx, %rdx
    salq	$2, %rdx
    addq	%rdx, %rax
    vxorps	%xmm1, %xmm1, %xmm1
    vcvtsi2ss	-56(%rbp), %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-56(%rbp), %xmm0, %xmm0
    vmovss	LC1(%rip), %xmm2
    vmulss	%xmm2, %xmm0, %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, (%rax)
    addl	$1, -56(%rbp)
L60:
    cmpl	$15, -56(%rbp)
    jle	L61
    leaq	-32(%rbp), %rsi
    movq	-40(%rbp), %rax
    movl	$16, %ecx
    movl	$2, %edx
    movq	%rax, %rdi
    call	foo
    movl	$0, -56(%rbp)
    jmp	L62
L65:
    vxorps	%xmm1, %xmm1, %xmm1
    vcvtsi2ss	-56(%rbp), %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-56(%rbp), %xmm0, %xmm0
    vmovss	LC0(%rip), %xmm2
    vmulss	%xmm2, %xmm0, %xmm0
    vaddss	%xmm0, %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-56(%rbp), %xmm0, %xmm0
    vaddss	%xmm0, %xmm1, %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-56(%rbp), %xmm0, %xmm0
    vmovss	LC1(%rip), %xmm2
    vmulss	%xmm2, %xmm0, %xmm0
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -52(%rbp)
    movl	-56(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    vucomiss	-52(%rbp), %xmm0
    jp	L68
    vucomiss	-52(%rbp), %xmm0
    je	L69
L68:
    call	abort
L69:
    addl	$1, -56(%rbp)
L62:
    cmpl	$15, -56(%rbp)
    jle	L65
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L67
    call	__stack_chk_fail
L67:
    leave
    ret
    .section	.rodata
LC0:
    .long	1093664768
LC1:
    .long	1094713344
