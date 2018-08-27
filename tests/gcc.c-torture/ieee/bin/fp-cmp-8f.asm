    .file	"fp-cmp-8f.c"
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
    jmp	L27
L28:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L27:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
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
    jmp	L31
L32:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L31:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L32
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
    jle	L40
    cmpl	$122, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L41
L40:
    cmpl	$64, -4(%rbp)
    jle	L42
    cmpl	$90, -4(%rbp)
    jg	L42
    movl	$1, %eax
    jmp	L41
L42:
    cmpl	$47, -4(%rbp)
    jle	L43
    cmpl	$57, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L41
L43:
    movl	$0, %eax
L41:
    popq	%rbp
    ret
test_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L45
    vmovss	-12(%rbp), %xmm0
    jmp	L47
L45:
    vmovss	-16(%rbp), %xmm0
L47:
    popq	%rbp
    ret
test_not_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L49
    vmovss	-12(%rbp), %xmm0
    jmp	L51
L49:
    vmovss	-16(%rbp), %xmm0
L51:
    popq	%rbp
    ret
test_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L53
    vmovss	-12(%rbp), %xmm0
    jmp	L55
L53:
    vmovss	-16(%rbp), %xmm0
L55:
    popq	%rbp
    ret
test_not_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L62
    vmovss	-12(%rbp), %xmm0
    jmp	L60
L62:
    vmovss	-16(%rbp), %xmm0
L60:
    popq	%rbp
    ret
test_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L64
    vmovss	-12(%rbp), %xmm0
    jmp	L66
L64:
    vmovss	-16(%rbp), %xmm0
L66:
    popq	%rbp
    ret
test_not_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jnb	L73
    vmovss	-12(%rbp), %xmm0
    jmp	L71
L73:
    vmovss	-16(%rbp), %xmm0
L71:
    popq	%rbp
    ret
test_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    setbe	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L75
    vmovss	-12(%rbp), %xmm0
    jmp	L77
L75:
    vmovss	-16(%rbp), %xmm0
L77:
    popq	%rbp
    ret
test_not_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L84
    vmovss	-12(%rbp), %xmm0
    jmp	L82
L84:
    vmovss	-16(%rbp), %xmm0
L82:
    popq	%rbp
    ret
test_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    setb	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L86
    vmovss	-12(%rbp), %xmm0
    jmp	L88
L86:
    vmovss	-16(%rbp), %xmm0
L88:
    popq	%rbp
    ret
test_not_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnb	L95
    vmovss	-12(%rbp), %xmm0
    jmp	L93
L95:
    vmovss	-16(%rbp), %xmm0
L93:
    popq	%rbp
    ret
test_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    sete	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L97
    vmovss	-12(%rbp), %xmm0
    jmp	L99
L97:
    vmovss	-16(%rbp), %xmm0
L99:
    popq	%rbp
    ret
test_not_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	%xmm2, -12(%rbp)
    vmovss	%xmm3, -16(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L106
    vmovss	-12(%rbp), %xmm0
    jmp	L104
L106:
    vmovss	-16(%rbp), %xmm0
L104:
    popq	%rbp
    ret
one_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    movq	%rsi, -24(%rbp)
    movq	%rdx, -32(%rbp)
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %edx
    movq	-24(%rbp), %rax
    vmovss	$LC0(%rip), %xmm3
    vmovss	$LC1(%rip), %xmm2
    vmovaps	%xmm0, %xmm1
    vmovd	%edx, %xmm0
    call	*%rax
    vmovss	$LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setnp	%al
    movl	$0, %edx
    vmovss	$LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    cmpl	-12(%rbp), %eax
    je	L108
    call	abort
L108:
    vmovss	-8(%rbp), %xmm0
    movl	-4(%rbp), %edx
    movq	-32(%rbp), %rax
    vmovss	$LC2(%rip), %xmm3
    vmovss	$LC3(%rip), %xmm2
    vmovaps	%xmm0, %xmm1
    vmovd	%edx, %xmm0
    call	*%rax
    vmovss	$LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    setnp	%al
    movl	$0, %edx
    vmovss	$LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    cmovne	%edx, %eax
    movzbl	%al, %eax
    cmpl	-12(%rbp), %eax
    je	L110
    call	abort
L110:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$14, -4(%rbp)
    movl	$0, -12(%rbp)
    jmp	L112
L115:
    movl	$0, -8(%rbp)
    jmp	L113
L114:
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2513 + 8, %rax
    movq	(%rax), %rdx
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests.2513, %rax
    movq	(%rax), %rsi
    movl	-8(%rbp), %eax
    cltq
    movl	-12(%rbp), %ecx
    movslq	%ecx, %rcx
    salq	$3, %rcx
    addq	%rcx, %rax
    movl	data.2501 + 8(,%rax,4), %ecx
    movl	-12(%rbp), %eax
    cltq
    salq	$5, %rax
    addq	$data.2501 + 4, %rax
    vmovss	(%rax), %xmm0
    movl	-12(%rbp), %eax
    cltq
    salq	$5, %rax
    addq	$data.2501, %rax
    movl	(%rax), %eax
    movl	%ecx, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	one_test
    addl	$1, -8(%rbp)
L113:
    cmpl	$5, -8(%rbp)
    jle	L114
    addl	$1, -12(%rbp)
L112:
    movl	-12(%rbp), %eax
    cmpl	-4(%rbp), %eax
    jl	L115
    movl	$0, %edi
    call	exit
    .section	.rodata
tests.2513:
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
data.2501:
    .long	2143289344
    .long	2143289344
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2143289344
    .long	1
    .long	0
    .long	0
    .long	0
    .long	0
    .long	0
    .long	2143289344
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
    .long	1
    .long	0
    .long	1
    .long	0
    .long	1065353216
    .long	1073741824
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	1073741824
    .long	1065353216
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	2139095040
    .long	0
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	1065353216
    .long	2139095040
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	2139095040
    .long	2139095040
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1
    .long	0
    .long	0
    .long	4286578688
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	4286578688
    .long	1065353216
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
    .long	4286578688
    .long	4286578688
    .long	0
    .long	0
    .long	1
    .long	0
    .long	1
    .long	0
    .long	2139095040
    .long	4286578688
    .long	0
    .long	0
    .long	0
    .long	1
    .long	1
    .long	1
    .long	4286578688
    .long	2139095040
    .long	0
    .long	1
    .long	1
    .long	0
    .long	0
    .long	1
LC0:
    .long	1073741824
LC1:
    .long	1065353216
LC2:
    .long	1082130432
LC3:
    .long	1077936128
