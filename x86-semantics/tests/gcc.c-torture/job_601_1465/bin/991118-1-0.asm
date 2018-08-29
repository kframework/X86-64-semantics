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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .globl	sub
sub:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    sarq	$12, %rax
    movq	%rax, %rdx
    movabsq	$2381903268435576, %rax
    xorq	%rdx, %rax
    salq	$12, %rax
    sarq	$12, %rax
    salq	$12, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    andl	$4095, %eax
    orq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	sub2
sub2:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    salq	$12, %rax
    sarq	$12, %rax
    movq	%rax, %rdx
    movabsq	$2381903268435576, %rax
    xorq	%rdx, %rax
    salq	$12, %rax
    sarq	$12, %rax
    movabsq	$4503599627370495, %rdx
    andq	%rdx, %rax
    movq	%rax, %rcx
    movq	-16(%rbp), %rdx
    movabsq	$-4503599627370496, %rax
    andq	%rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	sub3
sub3:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    sarq	$11, %rax
    movq	%rax, %rdx
    movabsq	$6885502895806072, %rax
    xorq	%rdx, %rax
    salq	$11, %rax
    sarq	$11, %rax
    salq	$11, %rax
    movq	%rax, %rdx
    movq	-16(%rbp), %rax
    andl	$2047, %eax
    orq	%rdx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	sub4
sub4:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    salq	$11, %rax
    sarq	$11, %rax
    movq	%rax, %rdx
    movabsq	$6885502895806072, %rax
    xorq	%rdx, %rax
    salq	$11, %rax
    sarq	$11, %rax
    movabsq	$9007199254740991, %rdx
    andq	%rdx, %rax
    movq	%rax, %rcx
    movq	-16(%rbp), %rdx
    movabsq	$-9007199254740992, %rax
    andq	%rdx, %rax
    orq	%rcx, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	tmp
    .data
tmp:
    .byte	35
    .byte	209
    .byte	188
    .byte	154
    .byte	120
    .byte	86
    .byte	52
    .byte	18
    .globl	tmp2
tmp2:
    .byte	205
    .byte	171
    .byte	137
    .byte	103
    .byte	69
    .byte	35
    .byte	49
    .byte	18
    .globl	tmp3
tmp3:
    .byte	35
    .byte	1
    .byte	0
    .byte	0
    .byte	0
    .byte	248
    .byte	255
    .byte	15
    .globl	tmp4
tmp4:
    .byte	0
    .byte	0
    .byte	0
    .byte	0
    .byte	255
    .byte	255
    .byte	97
    .byte	36
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	tmp(%rip), %rdi
    call	sub
    movq	%rax, tmp(%rip)
    movq	tmp2(%rip), %rdi
    call	sub2
    movq	%rax, tmp2(%rip)
    movzwl	tmp(%rip), %eax
    andw	$4095, %ax
    cmpw	$291, %ax
    jne	L66
    movq	tmp(%rip), %rax
    andq	$-4096, %rax
    movq	%rax, %rdx
    movabsq	$-7687337405579571200, %rax
    cmpq	%rax, %rdx
    je	L67
L66:
    call	abort
L67:
    movzwl	tmp2 + 6(%rip), %eax
    andl	$-16, %eax
    cmpw	$4656, %ax
    jne	L68
    movq	tmp2(%rip), %rdx
    movabsq	$4503599627370495, %rax
    andq	%rax, %rdx
    movabsq	$2626808268586421, %rax
    cmpq	%rax, %rdx
    je	L69
L68:
    call	abort
L69:
    movq	tmp3(%rip), %rdi
    call	sub3
    movq	%rax, tmp3(%rip)
    movq	tmp4(%rip), %rdi
    call	sub4
    movq	%rax, tmp4(%rip)
    movzwl	tmp3(%rip), %eax
    andw	$2047, %ax
    cmpw	$291, %ax
    jne	L70
    movq	tmp3(%rip), %rax
    andq	$-2048, %rax
    movq	%rax, %rdx
    movabsq	$-3725223934242340864, %rax
    cmpq	%rax, %rdx
    je	L71
L70:
    call	abort
L71:
    movzwl	tmp4 + 6(%rip), %eax
    andl	$-32, %eax
    cmpw	$9312, %ax
    jne	L72
    movq	tmp4(%rip), %rdx
    movabsq	$9007199254740991, %rax
    andq	%rax, %rdx
    movabsq	$7188242255599224, %rax
    cmpq	%rax, %rdx
    je	L73
L72:
    call	abort
L73:
    movl	$0, %edi
    call	exit
