test_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setp	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setnp	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setbe	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setb	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    setb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setbe	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setb	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    setb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    sete	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm2
    vucomisd	-16(%rbp), %xmm2
    sete	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
one_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    movl	%edi, -20(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rdx
    movq	-32(%rbp), %rax
    vmovq	%rcx, %xmm1
    vmovq	%rdx, %xmm0
    call %rax
    cmpl	-20(%rbp), %eax
    je	L26
    call	abort
L26:
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rdx
    movq	-40(%rbp), %rax
    vmovq	%rcx, %xmm1
    vmovq	%rdx, %xmm0
    call %rax
    movl	%eax, %edx
    cmpl	$0, -20(%rbp)
    sete	%al
    movzbl	%al, %eax
    cmpl	%eax, %edx
    je	L25
    call	abort
L25:
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$6, -4(%rbp)
    movl	$0, -12(%rbp)
    jmp	L29
L32:
    movl	$0, -8(%rbp)
    jmp	L30
L31:
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2310, %rax
    movq	8(%rax), %rdi
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2310, %rax
    movq	(%rax), %rsi
    movl	-8(%rbp), %eax
    movslq	%eax, %rcx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    addq	%rax, %rax
    addq	%rcx, %rax
    movl	data.2302     +     16(,%rax,4), %ecx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2302, %rax
    movq	8(%rax), %r8
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2302, %rax
    movq	(%rax), %rax
    movq	%rdi, %rdx
    movl	%ecx, %edi
    vmovq	%r8, %xmm1
    vmovq	%rax, %xmm0
    call	one_test
    addl	$1, -8(%rbp)
L30:
    cmpl	$5, -8(%rbp)
    jle	L31
    addl	$1, -12(%rbp)
L29:
    movl	-12(%rbp), %eax
    cmpl	-4(%rbp), %eax
    jl	L32
    movl	$0, %edi
    call	exit
tests.2310:
    .quad	test_isunordered
    .quad	test_not_isunordered
    .quad	test_isless
    .quad	test_not_isless
    .quad	test_islessequal
    .quad	test_not_islessequal
    .quad	test_isgreater
    .quad	test_not_isgreater
    .quad	test_isgreaterequal
    .quad	test_not_isgreaterequal
    .quad	test_islessgreater
    .quad	test_not_islessgreater
data.2302:
    .long	0
    .long	2146959360
    .long	0
    .long	2146959360
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2146959360
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2146959360
    .long	0
    .long	0
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1
    .long	0
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1073741824
    .long	0
    .long	1072693248
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
