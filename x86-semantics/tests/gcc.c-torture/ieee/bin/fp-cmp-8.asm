test_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    jnp	L2
    movq	-24(%rbp), %rax
    jmp	L3
L2:
    movq	-32(%rbp), %rax
L3:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    jp	L6
    movq	-24(%rbp), %rax
    jmp	L7
L6:
    movq	-32(%rbp), %rax
L7:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-8(%rbp), %xmm4
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L10
    movq	-24(%rbp), %rax
    jmp	L11
L10:
    movq	-32(%rbp), %rax
L11:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-8(%rbp), %xmm4
    ja	L19
    movq	-24(%rbp), %rax
    jmp	L16
L19:
    movq	-32(%rbp), %rax
L16:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-8(%rbp), %xmm4
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L21
    movq	-24(%rbp), %rax
    jmp	L22
L21:
    movq	-32(%rbp), %rax
L22:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-16(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-8(%rbp), %xmm4
    jnb	L30
    movq	-24(%rbp), %rax
    jmp	L27
L30:
    movq	-32(%rbp), %rax
L27:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L32
    movq	-24(%rbp), %rax
    jmp	L33
L32:
    movq	-32(%rbp), %rax
L33:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    ja	L41
    movq	-24(%rbp), %rax
    jmp	L38
L41:
    movq	-32(%rbp), %rax
L38:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L43
    movq	-24(%rbp), %rax
    jmp	L44
L43:
    movq	-32(%rbp), %rax
L44:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    jnb	L52
    movq	-24(%rbp), %rax
    jmp	L49
L52:
    movq	-32(%rbp), %rax
L49:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    sete	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L54
    movq	-24(%rbp), %rax
    jmp	L55
L54:
    movq	-32(%rbp), %rax
L55:
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
test_not_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm2, -24(%rbp)
    vmovsd	%xmm3, -32(%rbp)
    movq	-8(%rbp), %rax
    vmovq	%rax, %xmm4
    vucomisd	-16(%rbp), %xmm4
    jne	L63
    movq	-24(%rbp), %rax
    jmp	L60
L63:
    movq	-32(%rbp), %rax
L60:
    vmovq	%rax, %xmm0
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
    movabsq	$4611686018427387904, %rsi
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rdx
    movq	-32(%rbp), %rax
    vmovq	%rsi, %xmm3
    vmovsd $LC1(%rip), %xmm2
    vmovq	%rcx, %xmm1
    vmovq	%rdx, %xmm0
    call %rax
    vmovq	%xmm0, %rax
    movabsq	$4607182418800017408, %rdx
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    setnp	%cl
    movl	$0, %esi
    movabsq	$4607182418800017408, %rdx
    vmovq	%rax, %xmm6
    vmovq	%rdx, %xmm7
    vucomisd	%xmm7, %xmm6
    movl	%esi, %eax
    cmove	%ecx, %eax
    movzbl	%al, %eax
    cmpl	-20(%rbp), %eax
    je	L65
    call	abort
L65:
    movabsq	$4616189618054758400, %rdi
    movabsq	$4613937818241073152, %rsi
    movq	-16(%rbp), %rcx
    movq	-8(%rbp), %rdx
    movq	-40(%rbp), %rax
    vmovq	%rdi, %xmm3
    vmovq	%rsi, %xmm2
    vmovq	%rcx, %xmm1
    vmovq	%rdx, %xmm0
    call %rax
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm2
    vucomisd $LC2(%rip), %xmm2
    setnp	%dl
    movl	$0, %ecx
    vmovq	%rax, %xmm3
    vucomisd $LC2(%rip), %xmm3
    movl	%ecx, %eax
    cmove	%edx, %eax
    movzbl	%al, %eax
    cmpl	-20(%rbp), %eax
    je	L64
    call	abort
L64:
    leave
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$14, -4(%rbp)
    movl	$0, -12(%rbp)
    jmp	L68
L71:
    movl	$0, -8(%rbp)
    jmp	L69
L70:
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2342, %rax
    movq	8(%rax), %rdi
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2342, %rax
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
    movl	data.2330     +     16(,%rax,4), %ecx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2330, %rax
    movq	8(%rax), %r8
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data.2330, %rax
    movq	(%rax), %rax
    movq	%rdi, %rdx
    movl	%ecx, %edi
    vmovq	%r8, %xmm1
    vmovq	%rax, %xmm0
    call	one_test
    addl	$1, -8(%rbp)
L69:
    cmpl	$5, -8(%rbp)
    jle	L70
    addl	$1, -12(%rbp)
L68:
    movl	-12(%rbp), %eax
    cmpl	-4(%rbp), %eax
    jl	L71
    movl	$0, %edi
    call	exit
tests.2342:
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
data.2330:
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
    .long	0
    .long	2146435072
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	0
    .long	1072693248
    .long	0
    .long	2146435072
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	0
    .long	2146435072
    .long	0
    .long	2146435072
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	-1048576
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	0
    .long	-1048576
    .long	0
    .long	1072693248
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	0
    .long	-1048576
    .long	0
    .long	-1048576
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1
    .long	0
    .long	0
    .long	2146435072
    .long	0
    .long	-1048576
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	0
    .long	-1048576
    .long	0
    .long	2146435072
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
LC1:
    .long	0
    .long	1072693248
LC2:
    .long	0
    .long	1074790400
