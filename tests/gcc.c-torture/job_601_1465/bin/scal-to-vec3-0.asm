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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$192, %rsp
    movl	%edi, -180(%rbp)
    movq	%rsi, -192(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovaps	LC0(%rip), %xmm0
    vmovaps	%xmm0, -48(%rbp)
    vmovapd	LC1(%rip), %xmm0
    vmovaps	%xmm0, -32(%rbp)
    vmovaps	LC2(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	LC2(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -176(%rbp)
    jmp	L58
L61:
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-176(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L124
    vucomiss	%xmm1, %xmm0
    je	L140
L124:
    call	abort
L140:
    addl	$1, -176(%rbp)
L58:
    cmpl	$3, -176(%rbp)
    jle	L61
    vmovaps	LC2(%rip), %xmm0
    vsubps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	LC2(%rip), %xmm0
    vsubps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -172(%rbp)
    jmp	L62
L65:
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-172(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L125
    vucomiss	%xmm1, %xmm0
    je	L141
L125:
    call	abort
L141:
    addl	$1, -172(%rbp)
L62:
    cmpl	$3, -172(%rbp)
    jle	L65
    vmovaps	-48(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	-48(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -168(%rbp)
    jmp	L66
L69:
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-168(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L126
    vucomiss	%xmm1, %xmm0
    je	L142
L126:
    call	abort
L142:
    addl	$1, -168(%rbp)
L66:
    cmpl	$3, -168(%rbp)
    jle	L69
    vmovaps	LC2(%rip), %xmm0
    vdivps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	LC2(%rip), %xmm0
    vdivps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -164(%rbp)
    jmp	L70
L73:
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-164(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L127
    vucomiss	%xmm1, %xmm0
    je	L143
L127:
    call	abort
L143:
    addl	$1, -164(%rbp)
L70:
    cmpl	$3, -164(%rbp)
    jle	L73
    vmovaps	LC2(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	LC2(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -160(%rbp)
    jmp	L74
L77:
    movl	-160(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-160(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L128
    vucomiss	%xmm1, %xmm0
    je	L144
L128:
    call	abort
L144:
    addl	$1, -160(%rbp)
L74:
    cmpl	$3, -160(%rbp)
    jle	L77
    vmovaps	LC3(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	LC3(%rip), %xmm0
    vaddps	-48(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -156(%rbp)
    jmp	L78
L81:
    movl	-156(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-156(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L129
    vucomiss	%xmm1, %xmm0
    je	L145
L129:
    call	abort
L145:
    addl	$1, -156(%rbp)
L78:
    cmpl	$3, -156(%rbp)
    jle	L81
    vmovaps	-48(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	-48(%rbp), %xmm0
    vaddps	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -152(%rbp)
    jmp	L82
L85:
    movl	-152(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-152(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L130
    vucomiss	%xmm1, %xmm0
    je	L146
L130:
    call	abort
L146:
    addl	$1, -152(%rbp)
L82:
    cmpl	$3, -152(%rbp)
    jle	L85
    vmovaps	-48(%rbp), %xmm0
    vmovaps	LC2(%rip), %xmm1
    vdivps	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -112(%rbp)
    vmovaps	-48(%rbp), %xmm0
    vmovaps	LC2(%rip), %xmm1
    vdivps	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -96(%rbp)
    movl	$0, -148(%rbp)
    jmp	L86
L89:
    movl	-148(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-112(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm0
    movl	-148(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    leaq	-96(%rbp), %rax
    addq	%rdx, %rax
    vmovss	(%rax), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L131
    vucomiss	%xmm1, %xmm0
    je	L147
L131:
    call	abort
L147:
    addl	$1, -148(%rbp)
L86:
    cmpl	$3, -148(%rbp)
    jle	L89
    vmovapd	LC4(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	LC4(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -144(%rbp)
    jmp	L90
L93:
    movl	-144(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-144(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L132
    vucomisd	%xmm1, %xmm0
    je	L148
L132:
    call	abort
L148:
    addl	$1, -144(%rbp)
L90:
    cmpl	$1, -144(%rbp)
    jle	L93
    vmovapd	LC4(%rip), %xmm0
    vsubpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	LC4(%rip), %xmm0
    vsubpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -140(%rbp)
    jmp	L94
L97:
    movl	-140(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-140(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L133
    vucomisd	%xmm1, %xmm0
    je	L149
L133:
    call	abort
L149:
    addl	$1, -140(%rbp)
L94:
    cmpl	$1, -140(%rbp)
    jle	L97
    vmovapd	-32(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	-32(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -136(%rbp)
    jmp	L98
L101:
    movl	-136(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-136(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L134
    vucomisd	%xmm1, %xmm0
    je	L150
L134:
    call	abort
L150:
    addl	$1, -136(%rbp)
L98:
    cmpl	$1, -136(%rbp)
    jle	L101
    vmovapd	LC4(%rip), %xmm0
    vdivpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	LC4(%rip), %xmm0
    vdivpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -132(%rbp)
    jmp	L102
L105:
    movl	-132(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-132(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L135
    vucomisd	%xmm1, %xmm0
    je	L151
L135:
    call	abort
L151:
    addl	$1, -132(%rbp)
L102:
    cmpl	$1, -132(%rbp)
    jle	L105
    vmovapd	LC4(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	LC4(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -128(%rbp)
    jmp	L106
L109:
    movl	-128(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-128(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L136
    vucomisd	%xmm1, %xmm0
    je	L152
L136:
    call	abort
L152:
    addl	$1, -128(%rbp)
L106:
    cmpl	$1, -128(%rbp)
    jle	L109
    vmovapd	LC5(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	LC5(%rip), %xmm0
    vaddpd	-32(%rbp), %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -124(%rbp)
    jmp	L110
L113:
    movl	-124(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-124(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L137
    vucomisd	%xmm1, %xmm0
    je	L153
L137:
    call	abort
L153:
    addl	$1, -124(%rbp)
L110:
    cmpl	$1, -124(%rbp)
    jle	L113
    vmovapd	-32(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	-32(%rbp), %xmm0
    vaddpd	%xmm0, %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -120(%rbp)
    jmp	L114
L117:
    movl	-120(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-120(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L138
    vucomisd	%xmm1, %xmm0
    je	L154
L138:
    call	abort
L154:
    addl	$1, -120(%rbp)
L114:
    cmpl	$1, -120(%rbp)
    jle	L117
    vmovapd	-32(%rbp), %xmm0
    vmovapd	LC4(%rip), %xmm1
    vdivpd	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -80(%rbp)
    vmovapd	-32(%rbp), %xmm0
    vmovapd	LC4(%rip), %xmm1
    vdivpd	%xmm1, %xmm0, %xmm0
    vmovaps	%xmm0, -64(%rbp)
    movl	$0, -116(%rbp)
    jmp	L118
L121:
    movl	-116(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movl	-116(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    leaq	-64(%rbp), %rax
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L139
    vucomisd	%xmm1, %xmm0
    je	L155
L139:
    call	abort
L155:
    addl	$1, -116(%rbp)
L118:
    cmpl	$1, -116(%rbp)
    jle	L121
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L123
    call	__stack_chk_fail
L123:
    leave
    ret
    .section	.rodata
LC0:
    .long	1065353216
    .long	1073741824
    .long	1077936128
    .long	1082130432
LC1:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
LC2:
    .long	1073741824
    .long	1073741824
    .long	1073741824
    .long	1073741824
LC3:
    .long	3221225472
    .long	3221225472
    .long	3221225472
    .long	3221225472
LC4:
    .long	0
    .long	1073741824
    .long	0
    .long	1073741824
LC5:
    .long	0
    .long	-1073741824
    .long	0
    .long	-1073741824
