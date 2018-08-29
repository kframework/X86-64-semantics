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
    .section	.rodata
B1:
    .quad	715094163
B2:
    .quad	696219795
C:
    .long	4049540593
    .long	1071734549
D:
    .long	624085044
    .long	-1075408418
E:
    .long	245426703
    .long	1073127658
F:
    .long	1840700270
    .long	1073329883
G:
    .long	3067833783
    .long	1071045485
    .text
    .globl	cbrtl
cbrtl:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    vmovsd	%xmm0, -88(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movl	-32(%rbp), %eax
    testl	%eax, %eax
    sete	%al
    movzbl	%al, %eax
    movl	%eax, -80(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    vmovsd	-88(%rbp), %xmm0
    vmovsd	%xmm0, -16(%rbp)
    movl	-80(%rbp), %eax
    cltq
    movl	-16(%rbp,%rax,4), %eax
    movl	%eax, %eax
    movq	%rax, -72(%rbp)
    movq	-72(%rbp), %rax
    andl	$-2147483648, %eax
    movl	%eax, -76(%rbp)
    movl	-76(%rbp), %eax
    xorq	%rax, -72(%rbp)
    cmpq	$2146435071, -72(%rbp)
    jle	L54
    vmovsd	-88(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    jmp	L59
L54:
    movl	$1, %eax
    subl	-80(%rbp), %eax
    cltq
    movl	-16(%rbp,%rax,4), %eax
    movl	%eax, %eax
    orq	-72(%rbp), %rax
    testq	%rax, %rax
    jne	L56
    vmovsd	-16(%rbp), %xmm0
    jmp	L59
L56:
    movq	-72(%rbp), %rax
    movl	%eax, %edx
    movl	-80(%rbp), %eax
    cltq
    movl	%edx, -16(%rbp,%rax,4)
    cmpq	$1048575, -72(%rbp)
    jg	L57
    movl	-80(%rbp), %eax
    cltq
    movl	$1129316352, -32(%rbp,%rax,4)
    vmovsd	-32(%rbp), %xmm0
    vmulsd	-88(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movl	-80(%rbp), %eax
    cltq
    movl	-32(%rbp,%rax,4), %eax
    movl	$-1431655765, %edx
    mull	%edx
    movl	%edx, %eax
    shrl	%eax
    movl	$696219795, %edx
    addl	%eax, %edx
    movl	-80(%rbp), %eax
    cltq
    movl	%edx, -32(%rbp,%rax,4)
    jmp	L58
L57:
    movq	-72(%rbp), %rcx
    movabsq	$6148914691236517206, %rdx
    movq	%rcx, %rax
    imulq	%rdx
    movq	%rcx, %rax
    sarq	$63, %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movl	%eax, %edx
    movl	$715094163, %eax
    addl	%eax, %edx
    movl	-80(%rbp), %eax
    cltq
    movl	%edx, -32(%rbp,%rax,4)
L58:
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-32(%rbp), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	-16(%rbp), %xmm1
    vdivsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    vmovsd	-32(%rbp), %xmm0
    vmulsd	-64(%rbp), %xmm0, %xmm0
    vmovsd	LC2(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -56(%rbp)
    vmovsd	-32(%rbp), %xmm3
    vmovsd	LC3(%rip), %xmm2
    vmovsd	LC4(%rip), %xmm0
    vaddsd	-56(%rbp), %xmm0, %xmm1
    vmovsd	LC5(%rip), %xmm0
    vdivsd	-56(%rbp), %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vdivsd	%xmm0, %xmm2, %xmm0
    vmovsd	LC6(%rip), %xmm1
    vaddsd	%xmm1, %xmm0, %xmm0
    vmulsd	%xmm0, %xmm3, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movl	$1, %eax
    subl	-80(%rbp), %eax
    cltq
    movl	$0, -32(%rbp,%rax,4)
    movl	-80(%rbp), %eax
    cltq
    movl	-32(%rbp,%rax,4), %eax
    leal	1(%rax), %edx
    movl	-80(%rbp), %eax
    cltq
    movl	%edx, -32(%rbp,%rax,4)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-32(%rbp), %xmm0
    vmulsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -56(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vdivsd	-56(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    vmovsd	-32(%rbp), %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-64(%rbp), %xmm0
    vsubsd	%xmm1, %xmm0, %xmm0
    vmovsd	-48(%rbp), %xmm1
    vaddsd	-64(%rbp), %xmm1, %xmm1
    vdivsd	%xmm1, %xmm0, %xmm0
    vmovsd	%xmm0, -64(%rbp)
    vmovsd	-32(%rbp), %xmm1
    vmovsd	-32(%rbp), %xmm0
    vmulsd	-64(%rbp), %xmm0, %xmm0
    vaddsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -32(%rbp)
    movl	-80(%rbp), %eax
    cltq
    movl	-32(%rbp,%rax,4), %eax
    orl	-76(%rbp), %eax
    movl	%eax, %edx
    movl	-80(%rbp), %eax
    cltq
    movl	%edx, -32(%rbp,%rax,4)
    vmovsd	-32(%rbp), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	-40(%rbp), %xmm0
    vmulsd	-40(%rbp), %xmm0, %xmm0
    vmovsd	-88(%rbp), %xmm1
    vdivsd	%xmm0, %xmm1, %xmm0
    vmovsd	-40(%rbp), %xmm1
    vsubsd	%xmm0, %xmm1, %xmm0
    vmovsd	LC7(%rip), %xmm1
    vmulsd	%xmm1, %xmm0, %xmm0
    vmovsd	-40(%rbp), %xmm1
    vsubsd	%xmm0, %xmm1, %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	-40(%rbp), %xmm0
L59:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L60
    call	__stack_chk_fail
L60:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movabsq	$4628293042053316608, %rax
    vmovq	%rax, %xmm0
    call	cbrtl
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm1
    vaddsd	%xmm0, %xmm1, %xmm0
    vcvttsd2si	%xmm0, %eax
    cmpl	$3, %eax
    je	L62
    call	abort
L62:
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	1072693248
LC2:
    .long	4049540593
    .long	1071734549
LC3:
    .long	1840700270
    .long	1073329883
LC4:
    .long	245426703
    .long	1073127658
LC5:
    .long	624085044
    .long	-1075408418
LC6:
    .long	3067833783
    .long	1071045485
LC7:
    .long	1431655765
    .long	1070945621
LC9:
    .long	0
    .long	1071644672
