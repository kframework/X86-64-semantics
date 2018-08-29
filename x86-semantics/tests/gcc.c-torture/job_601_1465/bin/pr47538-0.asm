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
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -56(%rbp)
    movq	%rsi, -64(%rbp)
    movq	-64(%rbp), %rax
    movq	24(%rax), %rax
    addq	$1, %rax
    movq	%rax, -16(%rbp)
    movq	-64(%rbp), %rax
    vmovsd	8(%rax), %xmm0
    movq	-64(%rbp), %rax
    vmovsd	(%rax), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	LC0(%rip), %xmm1
    vmulsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    movq	-64(%rbp), %rax
    vmovsd	(%rax), %xmm0
    movq	-56(%rbp), %rax
    vmovsd	%xmm0, (%rax)
    movq	-64(%rbp), %rax
    vmovsd	8(%rax), %xmm0
    movq	-56(%rbp), %rax
    vmovsd	%xmm0, 8(%rax)
    cmpq	$1, -16(%rbp)
    jne	L58
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, (%rax)
    jmp	L67
L58:
    cmpq	$2, -16(%rbp)
    jne	L60
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    leaq	8(%rax), %rdx
    movq	-64(%rbp), %rax
    movq	16(%rax), %rax
    vmovsd	(%rax), %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, (%rdx)
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	-56(%rbp), %rdx
    movq	16(%rdx), %rdx
    addq	$8, %rdx
    vmovsd	(%rdx), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, (%rax)
    jmp	L67
L60:
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	LC2(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movq	$1, -24(%rbp)
    jmp	L61
L64:
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	-24(%rbp), %rdx
    salq	$3, %rdx
    leaq	(%rax,%rdx), %rcx
    movq	-64(%rbp), %rax
    movq	16(%rax), %rax
    movq	-24(%rbp), %rdx
    salq	$3, %rdx
    subq	$8, %rdx
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    movq	-64(%rbp), %rax
    movq	16(%rax), %rax
    movq	-24(%rbp), %rdx
    addq	$1, %rdx
    salq	$3, %rdx
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm1
    movq	-24(%rbp), %rax
    testq	%rax, %rax
    js	L62
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L63
L62:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L63:
    vdivsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, (%rcx)
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	-24(%rbp), %rdx
    salq	$3, %rdx
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    vmulsd	-32(%rbp), %xmm0, %xmm0
    vmovsd	-40(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	LC3(%rip), %xmm0
    vxorpd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    addq	$1, -24(%rbp)
L61:
    movq	-16(%rbp), %rax
    subq	$2, %rax
    cmpq	-24(%rbp), %rax
    jnb	L64
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	-16(%rbp), %rdx
    salq	$3, %rdx
    subq	$8, %rdx
    leaq	(%rax,%rdx), %rcx
    movq	-64(%rbp), %rax
    movq	16(%rax), %rax
    movq	-16(%rbp), %rdx
    salq	$3, %rdx
    subq	$16, %rdx
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    vmulsd	-8(%rbp), %xmm0, %xmm1
    movq	-16(%rbp), %rax
    testq	%rax, %rax
    js	L65
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L66
L65:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L66:
    vmovsd	LC2(%rip), %xmm2
    vsubsd	%xmm2, %xmm0, %xmm0
    vdivsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, (%rcx)
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    movq	-16(%rbp), %rdx
    salq	$3, %rdx
    subq	$8, %rdx
    addq	%rdx, %rax
    vmovsd	(%rax), %xmm0
    vmulsd	-32(%rbp), %xmm0, %xmm0
    vmovsd	-40(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-56(%rbp), %rax
    movq	16(%rax), %rax
    vmovsd	-40(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, (%rax)
L67:
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$176, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovsd	LC4(%rip), %xmm0
    vmovsd	%xmm0, -112(%rbp)
    vmovsd	LC5(%rip), %xmm0
    vmovsd	%xmm0, -104(%rbp)
    vmovsd	LC6(%rip), %xmm0
    vmovsd	%xmm0, -96(%rbp)
    vmovsd	LC7(%rip), %xmm0
    vmovsd	%xmm0, -88(%rbp)
    vmovsd	LC8(%rip), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	LC8(%rip), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	LC8(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	LC8(%rip), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	LC4(%rip), %xmm0
    vmovsd	%xmm0, -144(%rbp)
    vmovsd	LC9(%rip), %xmm0
    vmovsd	%xmm0, -136(%rbp)
    leaq	-112(%rbp), %rax
    movq	%rax, -128(%rbp)
    leaq	-80(%rbp), %rax
    movq	%rax, -160(%rbp)
    movq	$3, -120(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -56(%rbp)
    leaq	-144(%rbp), %rdx
    leaq	-176(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	foo
    vmovsd	-80(%rbp), %xmm0
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L69
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L69
    vmovsd	-72(%rbp), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L69
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L69
    vmovsd	-64(%rbp), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L69
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L69
    vmovsd	-56(%rbp), %xmm0
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L69
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L83
L69:
    call	abort
L83:
    movq	$2, -120(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -56(%rbp)
    leaq	-144(%rbp), %rdx
    leaq	-176(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	foo
    vmovsd	-80(%rbp), %xmm0
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L72
    vmovsd	LC11(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L72
    vmovsd	-72(%rbp), %xmm0
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L72
    vmovsd	LC5(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L72
    vmovsd	-64(%rbp), %xmm0
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L72
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L72
    vmovsd	-56(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L72
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L84
L72:
    call	abort
L84:
    movq	$1, -120(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -56(%rbp)
    leaq	-144(%rbp), %rdx
    leaq	-176(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	foo
    vmovsd	-80(%rbp), %xmm0
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L75
    vmovsd	LC12(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L75
    vmovsd	-72(%rbp), %xmm0
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L75
    vmovsd	LC10(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L75
    vmovsd	-64(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L75
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L75
    vmovsd	-56(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L75
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L85
L75:
    call	abort
L85:
    movq	$0, -120(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -80(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -72(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -64(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -56(%rbp)
    leaq	-144(%rbp), %rdx
    leaq	-176(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	foo
    vmovsd	-80(%rbp), %xmm0
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L78
    vxorpd	%xmm1, %xmm1, %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L78
    vmovsd	-72(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L78
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L78
    vmovsd	-64(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L78
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L78
    vmovsd	-56(%rbp), %xmm0
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L78
    vmovsd	LC8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L86
L78:
    call	abort
L86:
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L82
    call	__stack_chk_fail
L82:
    leave
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1070596096
LC2:
    .long	0
    .long	1072693248
LC3:
    .long	0
    .long	-2147483648
    .long	0
    .long	0
LC4:
    .long	0
    .long	1076101120
LC5:
    .long	0
    .long	1077149696
LC6:
    .long	0
    .long	1077805056
LC7:
    .long	0
    .long	1078198272
LC8:
    .long	0
    .long	1079869440
LC9:
    .long	0
    .long	1075314688
LC10:
    .long	0
    .long	-1071382528
LC11:
    .long	0
    .long	1078853632
LC12:
    .long	0
    .long	-1070333952
