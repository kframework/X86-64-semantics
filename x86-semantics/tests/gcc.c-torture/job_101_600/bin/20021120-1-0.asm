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
    .comm	gd,256,32
    .comm	gf,128,32
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$304, %rsp
    movl	%edi, -420(%rbp)
    movq	$gd, -16(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -272(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -264(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -256(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -248(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -240(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -232(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -224(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -216(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -208(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -200(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -192(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -184(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -176(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -168(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -160(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -152(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -144(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -136(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -128(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -120(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -112(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -104(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -96(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -88(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -80(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -72(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -64(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -56(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	%xmm0, -24(%rbp)
    movl	$0, -404(%rbp)
    jmp	L46
L47:
    movq	$gf, -8(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -400(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -396(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -392(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -388(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -384(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -380(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -376(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -372(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -368(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -364(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -360(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -356(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -352(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -348(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -344(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -340(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -336(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -332(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -328(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -324(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -320(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -316(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -312(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -308(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -304(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -300(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -296(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -292(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -288(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -284(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -280(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	(%rax), %xmm0
    vmovss	%xmm0, -276(%rbp)
    movq	$gd, -16(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-272(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -272(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-264(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -264(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-256(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -256(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-248(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -248(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-240(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -240(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-232(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -232(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-224(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -224(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-216(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -216(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-208(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -208(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-200(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -200(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-192(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -192(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-184(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -184(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-176(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -176(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-168(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -168(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-160(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -160(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-152(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -152(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-144(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -144(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-136(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -136(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-128(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -128(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-120(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -120(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-112(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -112(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-104(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -104(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-96(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -96(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-88(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -88(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-80(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -80(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-72(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -72(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-64(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-56(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -56(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-48(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -48(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-40(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-24(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    movq	$gd, -16(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-272(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -272(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-264(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -264(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-256(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -256(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-248(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -248(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-240(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -240(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-232(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -232(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-224(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -224(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-216(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -216(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-208(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -208(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-200(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -200(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-192(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -192(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-184(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -184(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-176(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -176(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-168(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -168(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-160(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -160(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-152(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -152(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-144(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -144(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-136(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -136(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-128(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -128(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-120(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -120(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-112(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -112(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-104(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -104(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-96(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -96(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-88(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -88(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-80(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -80(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-72(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -72(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-64(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-56(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -56(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-48(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -48(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-40(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-24(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    movq	$gd, -16(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-272(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -272(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-264(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -264(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-256(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -256(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-248(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -248(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-240(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -240(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-232(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -232(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-224(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -224(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-216(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -216(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-208(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -208(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-200(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -200(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-192(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -192(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-184(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -184(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-176(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -176(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-168(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -168(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-160(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -160(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-152(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -152(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-144(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -144(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-136(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -136(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-128(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -128(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-120(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -120(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-112(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -112(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-104(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -104(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-96(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -96(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-88(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -88(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-80(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -80(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-72(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -72(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-64(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-56(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -56(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-48(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -48(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-40(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-32(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	(%rax), %xmm0
    vmovsd	-24(%rbp), %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -24(%rbp)
    movq	$gf, -8(%rbp)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-400(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-396(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-392(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-388(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-384(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-380(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-376(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-372(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-368(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-364(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-360(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-356(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-352(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-348(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-344(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-340(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-336(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-332(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-328(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-324(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-320(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-316(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-312(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-308(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-304(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-300(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-296(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-292(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-288(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-284(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-280(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    movq	-8(%rbp), %rax
    leaq	4(%rax), %rdx
    movq	%rdx, -8(%rbp)
    vmovss	-276(%rbp), %xmm0
    vmovss	%xmm0, (%rax)
    addl	$1, -404(%rbp)
L46:
    movl	-404(%rbp), %eax
    cmpl	-420(%rbp), %eax
    jl	L47
    movq	$gd, -16(%rbp)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-272(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-264(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-256(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-248(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-240(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-232(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-224(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-216(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-208(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-200(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-192(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-184(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-176(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-168(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-160(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-152(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-144(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-136(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-128(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-120(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-112(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-104(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-96(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-88(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-80(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-72(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-64(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-56(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-48(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-40(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-32(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    movq	-16(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -16(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vmovsd	%xmm0, (%rax)
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -4(%rbp)
    jmp	L49
L50:
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	-4(%rbp), %xmm0, %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovsd	%xmm0, gd(,%rax,8)
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovss	%xmm0, gf(,%rax,4)
    addl	$1, -4(%rbp)
L49:
    cmpl	$31, -4(%rbp)
    jle	L50
    movl	$1, %edi
    call	foo
    movl	$0, -4(%rbp)
    jmp	L51
L55:
    movl	-4(%rbp), %eax
    cltq
    vmovsd	gd(,%rax,8), %xmm1
    movl	-4(%rbp), %eax
    sall	$2, %eax
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%eax, %xmm0, %xmm0
    vucomisd	%xmm0, %xmm1
    jp	L52
    vucomisd	%xmm0, %xmm1
    jne	L52
    movl	-4(%rbp), %eax
    cltq
    vmovss	gf(,%rax,4), %xmm1
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    vucomiss	%xmm0, %xmm1
    jp	L52
    vucomiss	%xmm0, %xmm1
    je	L56
L52:
    call	abort
L56:
    addl	$1, -4(%rbp)
L51:
    cmpl	$31, -4(%rbp)
    jle	L55
    movl	$0, %edi
    call	exit
