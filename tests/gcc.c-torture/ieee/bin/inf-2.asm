    .file	"inf-2.c"
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
    #APP
    # 41 "src/library/mini_stdlib.h" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    #APP
    # 46 "src/library/mini_stdlib.h" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
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
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L61
    call	abort
L61:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    jbe	L62
    call	abort
L62:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-16(%rbp), %xmm0
    jbe	L63
    call	abort
L63:
    vmovsd	-16(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    seta	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L51
    call	abort
L51:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L64
    call	abort
L64:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    ja	L60
    jmp	L65
L60:
    call	abort
L65:
    leave
    ret
    .globl	testf
testf:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    vmovss	-4(%rbp), %xmm0
    vmovss	$LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jbe	L83
    call	abort
L83:
    vmovss	$LC3(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L84
    call	abort
L84:
    vmovss	$LC3(%rip), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L85
    call	abort
L85:
    vmovss	-8(%rbp), %xmm0
    vmovss	$LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    seta	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L73
    call	abort
L73:
    vmovss	-4(%rbp), %xmm0
    vmovss	$LC2(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jbe	L86
    call	abort
L86:
    vmovss	$LC3(%rip), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L82
    jmp	L87
L82:
    call	abort
L87:
    leave
    ret
    .globl	testl
testl:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L105
    call	abort
L105:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    jbe	L106
    call	abort
L106:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-16(%rbp), %xmm0
    jbe	L107
    call	abort
L107:
    vmovsd	-16(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    seta	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L95
    call	abort
L95:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L108
    call	abort
L108:
    vmovsd	$LC1(%rip), %xmm0
    vucomisd	-8(%rbp), %xmm0
    ja	L104
    jmp	L109
L104:
    call	abort
L109:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	$LC4(%rip), %xmm0
    movabsq	$4629981891913580544, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	test
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	testf
    vmovsd	$LC4(%rip), %xmm0
    movabsq	$4629981891913580544, %rax
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	testl
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	4294967295
    .long	2146435071
LC1:
    .long	4294967295
    .long	-1048577
LC2:
    .long	2139095039
LC3:
    .long	4286578687
LC4:
    .long	0
    .long	2146435072
LC6:
    .long	2139095040
LC7:
    .long	1107820544
