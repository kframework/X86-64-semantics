test_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    jnp	L2
    cmpl	$0, -20(%rbp)
    jne	L3
    call	abort
L3:
    jmp	L1
L2:
    cmpl	$0, -20(%rbp)
    je	L1
    call	abort
L1:
    leave
    ret
test_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L6
    cmpl	$0, -20(%rbp)
    jne	L7
    call	abort
L7:
    jmp	L5
L6:
    cmpl	$0, -20(%rbp)
    je	L5
    call	abort
L5:
    leave
    ret
test_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L10
    cmpl	$0, -20(%rbp)
    jne	L11
    call	abort
L11:
    jmp	L9
L10:
    cmpl	$0, -20(%rbp)
    je	L9
    call	abort
L9:
    leave
    ret
test_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L14
    cmpl	$0, -20(%rbp)
    jne	L15
    call	abort
L15:
    jmp	L13
L14:
    cmpl	$0, -20(%rbp)
    je	L13
    call	abort
L13:
    leave
    ret
test_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L18
    cmpl	$0, -20(%rbp)
    jne	L19
    call	abort
L19:
    jmp	L17
L18:
    cmpl	$0, -20(%rbp)
    je	L17
    call	abort
L17:
    leave
    ret
test_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    sete	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L22
    cmpl	$0, -20(%rbp)
    jne	L23
    call	abort
L23:
    jmp	L21
L22:
    cmpl	$0, -20(%rbp)
    je	L21
    call	abort
L21:
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$6, -4(%rbp)
    movl	$0, -8(%rbp)
    jmp	L26
L27:
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_isunordered
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    shrb	%al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_isless
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    shrb	$2, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_islessequal
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    shrb	$3, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_isgreater
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    shrb	$4, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_isgreaterequal
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movzbl	16(%rax), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	8(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    addq	%rax, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2290, %rax
    movq	(%rax), %rax
    movl	%ecx, %edi
    vmovq	%rsi, %xmm1
    vmovq	%rax, %xmm0
    call	test_islessgreater
    addl	$1, -8(%rbp)
L26:
    movl	-8(%rbp), %eax
    cmpl	-4(%rbp), %eax
    jl	L27
    movl	$0, %edi
    call	exit
data.2290:
    .long	0
    .long	2146959360
    .long	0
    .long	2146959360
    .byte	1
    .zero	7
    .long	0
    .long	0
    .long	0
    .long	2146959360
    .byte	1
    .zero	7
    .long	0
    .long	2146959360
    .long	0
    .long	0
    .byte	1
    .zero	7
    .long	0
    .long	0
    .long	0
    .long	0
    .byte	20
    .zero	7
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .byte	38
    .zero	7
    .long	0
    .long	1073741824
    .long	0
    .long	1072693248
    .byte	56
    .zero	7
