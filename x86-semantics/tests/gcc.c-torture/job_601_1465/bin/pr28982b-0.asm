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
    .comm	ptrs,160,32
    .comm	results,80,32
    .comm	incs,80,32
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	incs(%rip), %edx
    movl	16(%rbp), %eax
    addl	%edx, %eax
    movl	%eax, incs(%rip)
    nop
    popq	%rbp
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$262496, %rsp
    movl	%edi, -262484(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-262160(%rbp), %rax
    movl	$262144, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movl	incs(%rip), %eax
    movl	%eax, -262400(%rbp)
    movl	incs + 4(%rip), %eax
    movl	%eax, -262396(%rbp)
    movl	incs + 8(%rip), %eax
    movl	%eax, -262392(%rbp)
    movl	incs + 12(%rip), %eax
    movl	%eax, -262388(%rbp)
    movl	incs + 16(%rip), %eax
    movl	%eax, -262384(%rbp)
    movl	incs + 20(%rip), %eax
    movl	%eax, -262380(%rbp)
    movl	incs + 24(%rip), %eax
    movl	%eax, -262376(%rbp)
    movl	incs + 28(%rip), %eax
    movl	%eax, -262372(%rbp)
    movl	incs + 32(%rip), %eax
    movl	%eax, -262368(%rbp)
    movl	incs + 36(%rip), %eax
    movl	%eax, -262364(%rbp)
    movl	incs + 40(%rip), %eax
    movl	%eax, -262360(%rbp)
    movl	incs + 44(%rip), %eax
    movl	%eax, -262356(%rbp)
    movl	incs + 48(%rip), %eax
    movl	%eax, -262352(%rbp)
    movl	incs + 52(%rip), %eax
    movl	%eax, -262348(%rbp)
    movl	incs + 56(%rip), %eax
    movl	%eax, -262344(%rbp)
    movl	incs + 60(%rip), %eax
    movl	%eax, -262340(%rbp)
    movl	incs + 64(%rip), %eax
    movl	%eax, -262336(%rbp)
    movl	incs + 68(%rip), %eax
    movl	%eax, -262332(%rbp)
    movl	incs + 72(%rip), %eax
    movl	%eax, -262328(%rbp)
    movl	incs + 76(%rip), %eax
    movl	%eax, -262324(%rbp)
    movq	ptrs(%rip), %rax
    movq	%rax, -262320(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262480(%rbp)
    movq	ptrs + 8(%rip), %rax
    movq	%rax, -262312(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262476(%rbp)
    movq	ptrs + 16(%rip), %rax
    movq	%rax, -262304(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262472(%rbp)
    movq	ptrs + 24(%rip), %rax
    movq	%rax, -262296(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262468(%rbp)
    movq	ptrs + 32(%rip), %rax
    movq	%rax, -262288(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262464(%rbp)
    movq	ptrs + 40(%rip), %rax
    movq	%rax, -262280(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262460(%rbp)
    movq	ptrs + 48(%rip), %rax
    movq	%rax, -262272(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262456(%rbp)
    movq	ptrs + 56(%rip), %rax
    movq	%rax, -262264(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262452(%rbp)
    movq	ptrs + 64(%rip), %rax
    movq	%rax, -262256(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262448(%rbp)
    movq	ptrs + 72(%rip), %rax
    movq	%rax, -262248(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262444(%rbp)
    movq	ptrs + 80(%rip), %rax
    movq	%rax, -262240(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262440(%rbp)
    movq	ptrs + 88(%rip), %rax
    movq	%rax, -262232(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262436(%rbp)
    movq	ptrs + 96(%rip), %rax
    movq	%rax, -262224(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262432(%rbp)
    movq	ptrs + 104(%rip), %rax
    movq	%rax, -262216(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262428(%rbp)
    movq	ptrs + 112(%rip), %rax
    movq	%rax, -262208(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262424(%rbp)
    movq	ptrs + 120(%rip), %rax
    movq	%rax, -262200(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262420(%rbp)
    movq	ptrs + 128(%rip), %rax
    movq	%rax, -262192(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262416(%rbp)
    movq	ptrs + 136(%rip), %rax
    movq	%rax, -262184(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262412(%rbp)
    movq	ptrs + 144(%rip), %rax
    movq	%rax, -262176(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262408(%rbp)
    movq	ptrs + 152(%rip), %rax
    movq	%rax, -262168(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -262404(%rbp)
    jmp	L55
L56:
    movq	-262320(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262480(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262480(%rbp)
    movl	-262400(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262320(%rbp)
    movq	-262312(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262476(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262476(%rbp)
    movl	-262396(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262312(%rbp)
    movq	-262304(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262472(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262472(%rbp)
    movl	-262392(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262304(%rbp)
    movq	-262296(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262468(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262468(%rbp)
    movl	-262388(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262296(%rbp)
    movq	-262288(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262464(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262464(%rbp)
    movl	-262384(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262288(%rbp)
    movq	-262280(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262460(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262460(%rbp)
    movl	-262380(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262280(%rbp)
    movq	-262272(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262456(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262456(%rbp)
    movl	-262376(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262272(%rbp)
    movq	-262264(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262452(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262452(%rbp)
    movl	-262372(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262264(%rbp)
    movq	-262256(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262448(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262448(%rbp)
    movl	-262368(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262256(%rbp)
    movq	-262248(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262444(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262444(%rbp)
    movl	-262364(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262248(%rbp)
    movq	-262240(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262440(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262440(%rbp)
    movl	-262360(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262240(%rbp)
    movq	-262232(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262436(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262436(%rbp)
    movl	-262356(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262232(%rbp)
    movq	-262224(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262432(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262432(%rbp)
    movl	-262352(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262224(%rbp)
    movq	-262216(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262428(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262428(%rbp)
    movl	-262348(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262216(%rbp)
    movq	-262208(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262424(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262424(%rbp)
    movl	-262344(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262208(%rbp)
    movq	-262200(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262420(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262420(%rbp)
    movl	-262340(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262200(%rbp)
    movq	-262192(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262416(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262416(%rbp)
    movl	-262336(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262192(%rbp)
    movq	-262184(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262412(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262412(%rbp)
    movl	-262332(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262184(%rbp)
    movq	-262176(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262408(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262408(%rbp)
    movl	-262328(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262176(%rbp)
    movq	-262168(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-262404(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -262404(%rbp)
    movl	-262324(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -262168(%rbp)
L55:
    movl	-262484(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -262484(%rbp)
    testl	%eax, %eax
    jne	L56
    vmovss	-262480(%rbp), %xmm0
    vmovss	%xmm0, results(%rip)
    vmovss	-262476(%rbp), %xmm0
    vmovss	%xmm0, results + 4(%rip)
    vmovss	-262472(%rbp), %xmm0
    vmovss	%xmm0, results + 8(%rip)
    vmovss	-262468(%rbp), %xmm0
    vmovss	%xmm0, results + 12(%rip)
    vmovss	-262464(%rbp), %xmm0
    vmovss	%xmm0, results + 16(%rip)
    vmovss	-262460(%rbp), %xmm0
    vmovss	%xmm0, results + 20(%rip)
    vmovss	-262456(%rbp), %xmm0
    vmovss	%xmm0, results + 24(%rip)
    vmovss	-262452(%rbp), %xmm0
    vmovss	%xmm0, results + 28(%rip)
    vmovss	-262448(%rbp), %xmm0
    vmovss	%xmm0, results + 32(%rip)
    vmovss	-262444(%rbp), %xmm0
    vmovss	%xmm0, results + 36(%rip)
    vmovss	-262440(%rbp), %xmm0
    vmovss	%xmm0, results + 40(%rip)
    vmovss	-262436(%rbp), %xmm0
    vmovss	%xmm0, results + 44(%rip)
    vmovss	-262432(%rbp), %xmm0
    vmovss	%xmm0, results + 48(%rip)
    vmovss	-262428(%rbp), %xmm0
    vmovss	%xmm0, results + 52(%rip)
    vmovss	-262424(%rbp), %xmm0
    vmovss	%xmm0, results + 56(%rip)
    vmovss	-262420(%rbp), %xmm0
    vmovss	%xmm0, results + 60(%rip)
    vmovss	-262416(%rbp), %xmm0
    vmovss	%xmm0, results + 64(%rip)
    vmovss	-262412(%rbp), %xmm0
    vmovss	%xmm0, results + 68(%rip)
    vmovss	-262408(%rbp), %xmm0
    vmovss	%xmm0, results + 72(%rip)
    vmovss	-262404(%rbp), %xmm0
    vmovss	%xmm0, results + 76(%rip)
    subq	$262144, %rsp
    movq	%rsp, %rax
    movq	%rax, %rcx
    leaq	-262160(%rbp), %rax
    movl	$262144, %edx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    call	bar
    addq	$262144, %rsp
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L57
    call	__stack_chk_fail
L57:
    leave
    ret
    .comm	input,320,32
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -4(%rbp)
    jmp	L59
L60:
    movl	-4(%rbp), %eax
    cltq
    salq	$2, %rax
    leaq	input(%rax), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	%rdx, ptrs(,%rax,8)
    movl	-4(%rbp), %eax
    cltq
    movl	-4(%rbp), %edx
    movl	%edx, incs(,%rax,4)
    addl	$1, -4(%rbp)
L59:
    cmpl	$19, -4(%rbp)
    jle	L60
    movl	$0, -4(%rbp)
    jmp	L61
L62:
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovss	%xmm0, input(,%rax,4)
    addl	$1, -4(%rbp)
L61:
    cmpl	$79, -4(%rbp)
    jle	L62
    movl	$4, %edi
    call	foo
    movl	$0, -4(%rbp)
    jmp	L63
L67:
    movl	-4(%rbp), %eax
    cltq
    vmovss	results(,%rax,4), %xmm1
    movl	-4(%rbp), %edx
    movl	%edx, %eax
    sall	$2, %eax
    addl	%edx, %eax
    sall	$2, %eax
    movl	%eax, %edx
    shrl	$31, %edx
    addl	%edx, %eax
    sarl	%eax
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	%eax, %xmm0, %xmm0
    vucomiss	%xmm0, %xmm1
    jp	L68
    vucomiss	%xmm0, %xmm1
    je	L69
L68:
    movl	$1, %eax
    jmp	L66
L69:
    addl	$1, -4(%rbp)
L63:
    cmpl	$19, -4(%rbp)
    jle	L67
    movl	$0, %eax
L66:
    leave
    ret
