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
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setp	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_not_isunordered:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setnp	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isless:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
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
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_islessequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
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
    vmovsd	-16(%rbp), %xmm0
    vucomisd	-8(%rbp), %xmm0
    setb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
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
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_isgreaterequal:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
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
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
    setb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
test_islessgreater:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
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
    vmovsd	-8(%rbp), %xmm0
    vucomisd	-16(%rbp), %xmm0
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
    vmovsd	-16(%rbp), %xmm0
    movq	-8(%rbp), %rdx
    movq	-32(%rbp), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rdx, %xmm0
    call	*%rax
    cmpl	-20(%rbp), %eax
    je	L69
    call	abort
L69:
    vmovsd	-16(%rbp), %xmm0
    movq	-8(%rbp), %rdx
    movq	-40(%rbp), %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rdx, %xmm0
    call	*%rax
    movl	%eax, %edx
    cmpl	$0, -20(%rbp)
    sete	%al
    movzbl	%al, %eax
    cmpl	%eax, %edx
    je	L71
    call	abort
L71:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$6, -4(%rbp)
    movl	$0, -12(%rbp)
    jmp	L73
L76:
    movl	$0, -8(%rbp)
    jmp	L74
L75:
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests2481 + 8, %rax
    movq	(%rax), %rdi
    movl	-8(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$tests2481, %rax
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
    movl $data2473 + 16(,%rax,4), %ecx
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data2473 + 8, %rax
    vmovsd	(%rax), %xmm0
    movl	-12(%rbp), %eax
    movslq	%eax, %rdx
    movq	%rdx, %rax
    salq	$2, %rax
    addq	%rdx, %rax
    salq	$3, %rax
    addq	$data2473, %rax
    movq	(%rax), %rax
    movq	%rdi, %rdx
    movl	%ecx, %edi
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	one_test
    addl	$1, -8(%rbp)
L74:
    cmpl	$5, -8(%rbp)
    jle	L75
    addl	$1, -12(%rbp)
L73:
    movl	-12(%rbp), %eax
    cmpl	-4(%rbp), %eax
    jl	L76
    movl	$0, %edi
    call	exit
    .section	.rodata
tests2481:
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
data2473:
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
