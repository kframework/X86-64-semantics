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
    .comm	ptrs,160,32
    .comm	results,80,32
    .comm	incs,80,32
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$208, %rsp
    movl	%edi, -324(%rbp)
    movl	incs(%rip), %eax
    movl	%eax, -240(%rbp)
    movl	incs + 4(%rip), %eax
    movl	%eax, -236(%rbp)
    movl	incs + 8(%rip), %eax
    movl	%eax, -232(%rbp)
    movl	incs + 12(%rip), %eax
    movl	%eax, -228(%rbp)
    movl	incs + 16(%rip), %eax
    movl	%eax, -224(%rbp)
    movl	incs + 20(%rip), %eax
    movl	%eax, -220(%rbp)
    movl	incs + 24(%rip), %eax
    movl	%eax, -216(%rbp)
    movl	incs + 28(%rip), %eax
    movl	%eax, -212(%rbp)
    movl	incs + 32(%rip), %eax
    movl	%eax, -208(%rbp)
    movl	incs + 36(%rip), %eax
    movl	%eax, -204(%rbp)
    movl	incs + 40(%rip), %eax
    movl	%eax, -200(%rbp)
    movl	incs + 44(%rip), %eax
    movl	%eax, -196(%rbp)
    movl	incs + 48(%rip), %eax
    movl	%eax, -192(%rbp)
    movl	incs + 52(%rip), %eax
    movl	%eax, -188(%rbp)
    movl	incs + 56(%rip), %eax
    movl	%eax, -184(%rbp)
    movl	incs + 60(%rip), %eax
    movl	%eax, -180(%rbp)
    movl	incs + 64(%rip), %eax
    movl	%eax, -176(%rbp)
    movl	incs + 68(%rip), %eax
    movl	%eax, -172(%rbp)
    movl	incs + 72(%rip), %eax
    movl	%eax, -168(%rbp)
    movl	incs + 76(%rip), %eax
    movl	%eax, -164(%rbp)
    movq	ptrs(%rip), %rax
    movq	%rax, -160(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -320(%rbp)
    movq	ptrs + 8(%rip), %rax
    movq	%rax, -152(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -316(%rbp)
    movq	ptrs + 16(%rip), %rax
    movq	%rax, -144(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -312(%rbp)
    movq	ptrs + 24(%rip), %rax
    movq	%rax, -136(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -308(%rbp)
    movq	ptrs + 32(%rip), %rax
    movq	%rax, -128(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -304(%rbp)
    movq	ptrs + 40(%rip), %rax
    movq	%rax, -120(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -300(%rbp)
    movq	ptrs + 48(%rip), %rax
    movq	%rax, -112(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -296(%rbp)
    movq	ptrs + 56(%rip), %rax
    movq	%rax, -104(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -292(%rbp)
    movq	ptrs + 64(%rip), %rax
    movq	%rax, -96(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -288(%rbp)
    movq	ptrs + 72(%rip), %rax
    movq	%rax, -88(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -284(%rbp)
    movq	ptrs + 80(%rip), %rax
    movq	%rax, -80(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -280(%rbp)
    movq	ptrs + 88(%rip), %rax
    movq	%rax, -72(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -276(%rbp)
    movq	ptrs + 96(%rip), %rax
    movq	%rax, -64(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -272(%rbp)
    movq	ptrs + 104(%rip), %rax
    movq	%rax, -56(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -268(%rbp)
    movq	ptrs + 112(%rip), %rax
    movq	%rax, -48(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -264(%rbp)
    movq	ptrs + 120(%rip), %rax
    movq	%rax, -40(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -260(%rbp)
    movq	ptrs + 128(%rip), %rax
    movq	%rax, -32(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -256(%rbp)
    movq	ptrs + 136(%rip), %rax
    movq	%rax, -24(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -252(%rbp)
    movq	ptrs + 144(%rip), %rax
    movq	%rax, -16(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -248(%rbp)
    movq	ptrs + 152(%rip), %rax
    movq	%rax, -8(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vmovss	%xmm0, -244(%rbp)
    jmp	L54
L55:
    movq	-160(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-320(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -320(%rbp)
    movl	-240(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -160(%rbp)
    movq	-152(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-316(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -316(%rbp)
    movl	-236(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -152(%rbp)
    movq	-144(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-312(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -312(%rbp)
    movl	-232(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -144(%rbp)
    movq	-136(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-308(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -308(%rbp)
    movl	-228(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -136(%rbp)
    movq	-128(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-304(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -304(%rbp)
    movl	-224(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -128(%rbp)
    movq	-120(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-300(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -300(%rbp)
    movl	-220(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -120(%rbp)
    movq	-112(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-296(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -296(%rbp)
    movl	-216(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -112(%rbp)
    movq	-104(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-292(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -292(%rbp)
    movl	-212(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -104(%rbp)
    movq	-96(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-288(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -288(%rbp)
    movl	-208(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -96(%rbp)
    movq	-88(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-284(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -284(%rbp)
    movl	-204(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -88(%rbp)
    movq	-80(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-280(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -280(%rbp)
    movl	-200(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -80(%rbp)
    movq	-72(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-276(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -276(%rbp)
    movl	-196(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -72(%rbp)
    movq	-64(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-272(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -272(%rbp)
    movl	-192(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -64(%rbp)
    movq	-56(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-268(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -268(%rbp)
    movl	-188(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -56(%rbp)
    movq	-48(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-264(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -264(%rbp)
    movl	-184(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -48(%rbp)
    movq	-40(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-260(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -260(%rbp)
    movl	-180(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -40(%rbp)
    movq	-32(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-256(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -256(%rbp)
    movl	-176(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -32(%rbp)
    movq	-24(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-252(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -252(%rbp)
    movl	-172(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -24(%rbp)
    movq	-16(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-248(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -248(%rbp)
    movl	-168(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovss	(%rax), %xmm0
    vmovss	-244(%rbp), %xmm1
    vaddss	%xmm0, %xmm1, %xmm0
    vmovss	%xmm0, -244(%rbp)
    movl	-164(%rbp), %eax
    cltq
    salq	$2, %rax
    addq	%rax, -8(%rbp)
L54:
    movl	-324(%rbp), %eax
    leal	-1(%rax), %edx
    movl	%edx, -324(%rbp)
    testl	%eax, %eax
    jne	L55
    vmovss	-320(%rbp), %xmm0
    vmovss	%xmm0, results(%rip)
    vmovss	-316(%rbp), %xmm0
    vmovss	%xmm0, results + 4(%rip)
    vmovss	-312(%rbp), %xmm0
    vmovss	%xmm0, results + 8(%rip)
    vmovss	-308(%rbp), %xmm0
    vmovss	%xmm0, results + 12(%rip)
    vmovss	-304(%rbp), %xmm0
    vmovss	%xmm0, results + 16(%rip)
    vmovss	-300(%rbp), %xmm0
    vmovss	%xmm0, results + 20(%rip)
    vmovss	-296(%rbp), %xmm0
    vmovss	%xmm0, results + 24(%rip)
    vmovss	-292(%rbp), %xmm0
    vmovss	%xmm0, results + 28(%rip)
    vmovss	-288(%rbp), %xmm0
    vmovss	%xmm0, results + 32(%rip)
    vmovss	-284(%rbp), %xmm0
    vmovss	%xmm0, results + 36(%rip)
    vmovss	-280(%rbp), %xmm0
    vmovss	%xmm0, results + 40(%rip)
    vmovss	-276(%rbp), %xmm0
    vmovss	%xmm0, results + 44(%rip)
    vmovss	-272(%rbp), %xmm0
    vmovss	%xmm0, results + 48(%rip)
    vmovss	-268(%rbp), %xmm0
    vmovss	%xmm0, results + 52(%rip)
    vmovss	-264(%rbp), %xmm0
    vmovss	%xmm0, results + 56(%rip)
    vmovss	-260(%rbp), %xmm0
    vmovss	%xmm0, results + 60(%rip)
    vmovss	-256(%rbp), %xmm0
    vmovss	%xmm0, results + 64(%rip)
    vmovss	-252(%rbp), %xmm0
    vmovss	%xmm0, results + 68(%rip)
    vmovss	-248(%rbp), %xmm0
    vmovss	%xmm0, results + 72(%rip)
    vmovss	-244(%rbp), %xmm0
    vmovss	%xmm0, results + 76(%rip)
    nop
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
    jmp	L57
L58:
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
L57:
    cmpl	$19, -4(%rbp)
    jle	L58
    movl	$0, -4(%rbp)
    jmp	L59
L60:
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    movl	-4(%rbp), %eax
    cltq
    vmovss	%xmm0, input(,%rax,4)
    addl	$1, -4(%rbp)
L59:
    cmpl	$79, -4(%rbp)
    jle	L60
    movl	$4, %edi
    call	foo
    movl	$0, -4(%rbp)
    jmp	L61
L65:
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
    jp	L66
    vucomiss	%xmm0, %xmm1
    je	L67
L66:
    movl	$1, %eax
    jmp	L64
L67:
    addl	$1, -4(%rbp)
L61:
    cmpl	$19, -4(%rbp)
    jle	L65
    movl	$0, %eax
L64:
    leave
    ret
