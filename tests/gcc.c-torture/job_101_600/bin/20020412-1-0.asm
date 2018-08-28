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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl $d2411(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $d2411(%rip)
    cmpl	-4(%rbp), %eax
    je	L40
    call	abort
L40:
    cmpl	$47, -4(%rbp)
    jle	L41
    cmpl	$57, -4(%rbp)
    jle	L43
L41:
    call	abort
L43:
    nop
    leave
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$288, %rsp
    movl	%edi, -276(%rbp)
    movq	%rsi, -200(%rbp)
    movq	%rdx, -192(%rbp)
    movq	%rcx, -184(%rbp)
    movq	%r8, -176(%rbp)
    movq	%r9, -168(%rbp)
    testb	%al, %al
    je	L45
    vmovaps	%xmm0, -160(%rbp)
    vmovaps	%xmm1, -144(%rbp)
    vmovaps	%xmm2, -128(%rbp)
    vmovaps	%xmm3, -112(%rbp)
    vmovaps	%xmm4, -96(%rbp)
    vmovaps	%xmm5, -80(%rbp)
    vmovaps	%xmm6, -64(%rbp)
    vmovaps	%xmm7, -48(%rbp)
L45:
    movq	$40, %rax
    movq	%rax, -216(%rbp)
    xorl	%eax, %eax
    movq	%rsp, %rax
    movq	%rax, %r12
    movl	-276(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, -304(%rbp)
    movq	$0, -296(%rbp)
    movslq	%eax, %rdx
    subq	$1, %rdx
    movq	%rdx, -256(%rbp)
    movslq	%eax, %rdx
    movq	%rdx, -320(%rbp)
    movq	$0, -312(%rbp)
    movslq	%eax, %rdx
    movq	%rdx, %r13
    movl	$0, %r14d
    movslq	%eax, %rbx
    movslq	%eax, %rdx
    movq	%rdx, %r10
    movl	$0, %r11d
    cltq
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -248(%rbp)
    movl	$8, -240(%rbp)
    movl	$48, -236(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -232(%rbp)
    leaq	-208(%rbp), %rax
    movq	%rax, -224(%rbp)
    movl	-240(%rbp), %eax
    cmpl	$48, %eax
    jnb	L46
    movq	-224(%rbp), %rax
    movl	-240(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-240(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -240(%rbp)
    jmp	L47
L46:
    movq	-232(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -232(%rbp)
L47:
    movq	(%rax), %rax
    movq	-248(%rbp), %rdx
    movq	%rdx, %rcx
    movq	%rbx, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movl	$0, -260(%rbp)
    jmp	L48
L49:
    movq	-248(%rbp), %rdx
    movl	-260(%rbp), %eax
    cltq
    movzbl	(%rdx,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	bar
    addl	$1, -260(%rbp)
L48:
    movl	-260(%rbp), %eax
    cmpl	-276(%rbp), %eax
    jl	L49
    movl	-240(%rbp), %eax
    cmpl	$48, %eax
    jnb	L50
    movq	-224(%rbp), %rax
    movl	-240(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-240(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -240(%rbp)
    jmp	L51
L50:
    movq	-232(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -232(%rbp)
L51:
    movq	(%rax), %rax
    movq	-248(%rbp), %rdx
    movq	%rdx, %rcx
    movq	%rbx, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movl	$0, -260(%rbp)
    jmp	L52
L53:
    movq	-248(%rbp), %rdx
    movl	-260(%rbp), %eax
    cltq
    movzbl	(%rdx,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	bar
    addl	$1, -260(%rbp)
L52:
    movl	-260(%rbp), %eax
    cmpl	-276(%rbp), %eax
    jl	L53
    movq	%r12, %rsp
    nop
    movq	-216(%rbp), %rax
    xorq	$40, %rax
    je	L54
    call	__stack_chk_fail
L54:
    leaq	-32(%rbp), %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r15
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$56, %rsp
    movq	$40, %rax
    movq	%rax, -56(%rbp)
    xorl	%eax, %eax
    movl	$5, -84(%rbp)
    movl	-84(%rbp), %ecx
    movslq	%ecx, %rax
    movq	%rax, %r14
    movl	$0, %r15d
    movslq	%ecx, %rax
    subq	$1, %rax
    movq	%rax, -80(%rbp)
    movslq	%ecx, %rax
    movq	%rax, %r12
    movl	$0, %r13d
    movslq	%ecx, %rax
    movq	%rax, %r10
    movl	$0, %r11d
    movslq	%ecx, %rbx
    movslq	%ecx, %rax
    movq	%rax, %r8
    movl	$0, %r9d
    movslq	%ecx, %rax
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %r9d
    movl	$0, %edx
    divq	%r9
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -72(%rbp)
    movslq	%ecx, %rax
    movq	%rax, %rsi
    movl	$0, %edi
    movslq	%ecx, %rax
    movl	$16, %edx
    subq	$1, %rdx
    addq	%rdx, %rax
    movl	$16, %edi
    movl	$0, %edx
    divq	%rdi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$0, %rax
    movq	%rax, -64(%rbp)
    movq	-72(%rbp), %rax
    movb	$48, (%rax)
    movq	-72(%rbp), %rax
    movb	$49, 1(%rax)
    movq	-72(%rbp), %rax
    movb	$50, 2(%rax)
    movq	-72(%rbp), %rax
    movb	$51, 3(%rax)
    movq	-72(%rbp), %rax
    movb	$52, 4(%rax)
    movq	-64(%rbp), %rax
    movb	$53, (%rax)
    movq	-64(%rbp), %rax
    movb	$54, 1(%rax)
    movq	-64(%rbp), %rax
    movb	$55, 2(%rax)
    movq	-64(%rbp), %rax
    movb	$56, 3(%rax)
    movq	-64(%rbp), %rax
    movb	$57, 4(%rax)
    movq	%rsp, %r14
    movl	$16, %eax
    subq	$1, %rax
    addq	%rbx, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    leaq	(%rax), %r12
    movq	-72(%rbp), %rax
    movq	%r12, %rcx
    movq	%rbx, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movl	$16, %eax
    subq	$1, %rax
    addq	%rbx, %rax
    movl	$16, %edi
    movl	$0, %edx
    divq	%rdi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    leaq	(%rax), %r13
    movq	-64(%rbp), %rax
    movq	%r13, %rcx
    movq	%rbx, %rdx
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	memcpy
    movl	-84(%rbp), %eax
    movq	%r13, %rdx
    movq	%r12, %rsi
    movl	%eax, %edi
    movl	$0, %eax
    call	foo
    movq	%r14, %rsp
    movl	$0, %edi
    call	exit
    .data
d2411:
    .long	48
