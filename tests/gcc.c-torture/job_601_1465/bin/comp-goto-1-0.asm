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
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .globl	simulator_kernel
simulator_kernel:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r15
    pushq	%r14
    pushq	%r13
    pushq	%r12
    pushq	%rbx
    subq	$64, %rsp
    movl	%edi, -76(%rbp)
    movq	%rsi, -88(%rbp)
    movq	-88(%rbp), %rax
    movq	(%rax), %r14
    movq	-88(%rbp), %rax
    leaq	8(%rax), %r12
    movq	$L59, -96(%rbp)
    movq	-88(%rbp), %rax
    addq	$1040, %rax
    movq	%rax, -104(%rbp)
    cmpl	$0, -76(%rbp)
    je	L59
    movq	-88(%rbp), %rax
    movq	1032(%rax), %rax
    movq	%rax, -56(%rbp)
    movl	$0, -72(%rbp)
    jmp	L61
L62:
    movl	-72(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rdx
    movq	-56(%rbp), %rax
    addq	%rax, %rdx
    movl	-72(%rbp), %eax
    cltq
    leaq	0(,%rax,8), %rcx
    movq	-56(%rbp), %rax
    addq	%rcx, %rax
    movl	(%rax), %eax
    sall	$14, %eax
    sarl	$14, %eax
    cltq
    movq	op_map3064(,%rax,8), %rax
    movq	%rax, %rcx
    movq	-96(%rbp), %rax
    subq	%rax, %rcx
    movq	%rcx, %rax
    sall	$14, %eax
    sarl	$14, %eax
    andl	$262143, %eax
    movl	%eax, %ecx
    movl	(%rdx), %eax
    andl	$-262144, %eax
    orl	%ecx, %eax
    movl	%eax, (%rdx)
    addl	$1, -72(%rbp)
L61:
    movl	-72(%rbp), %eax
    cmpl	-76(%rbp), %eax
    jl	L62
L59:
    movq	%r14, %rax
    leaq	8(%rax), %r14
    movq	(%rax), %rbx
    movq	%rbx, %rax
    shrq	$54, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    sall	$2, %eax
    cltq
    addq	%r12, %rax
    movl	(%rax), %r15d
    movq	%rbx, %rax
    shrq	$22, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    leal	0(,%rax,4), %r13d
    movl	%ebx, %eax
    sall	$14, %eax
    sarl	$14, %eax
    cltq
    addq	-96(%rbp), %rax
    nop
L65:
    jmp	%rax
L63:
    movl	%r15d, %eax
    shrl	$12, %eax
    movl	%eax, -64(%rbp)
    movl	-64(%rbp), %eax
    movzbl	%al, %eax
    movl	%eax, -68(%rbp)
    movq	%r14, %rax
    leaq	8(%rax), %r14
    movq	(%rax), %rbx
L67:
    movl	-68(%rbp), %eax
    salq	$4, %rax
    movq	-104(%rbp), %rsi
    addq	%rsi, %rax
    movl	(%rax), %eax
    movl	%eax, -60(%rbp)
    movl	-68(%rbp), %eax
    salq	$4, %rax
    addq	%rsi, %rax
    movq	8(%rax), %rax
    movq	%rax, -48(%rbp)
    movl	-60(%rbp), %eax
    cmpl	-64(%rbp), %eax
    jne	L64
    movslq	%r13d, %rax
    leaq	(%r12,%rax), %rdx
    movl	%r15d, %ecx
    movq	-48(%rbp), %rax
    addq	%rcx, %rax
    movl	(%rax), %eax
    movl	%eax, (%rdx)
    movq	%rbx, %rax
    shrq	$54, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    sall	$2, %eax
    cltq
    addq	%r12, %rax
    movl	(%rax), %r15d
    movq	%rbx, %rax
    shrq	$22, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    leal	0(,%rax,4), %r13d
    movl	%ebx, %eax
    sall	$14, %eax
    sarl	$14, %eax
    cltq
    addq	-96(%rbp), %rax
    jmp	L65
L64:
    movl	-60(%rbp), %eax
    testl	%eax, %eax
    jns	L66
    movslq	%r13d, %rax
    leaq	(%r12,%rax), %r13
    movl	$0, %eax
    call	f
    movl	(%rax), %eax
    movl	%eax, 0(%r13)
    movq	%rbx, %rax
    shrq	$54, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    sall	$2, %eax
    cltq
    addq	%r12, %rax
    movl	(%rax), %r15d
    movq	%rbx, %rax
    shrq	$22, %rax
    andb	$255, %ah
    movzbl	%al, %eax
    leal	0(,%rax,4), %r13d
    movl	%ebx, %eax
    sall	$14, %eax
    sarl	$14, %eax
    cltq
    addq	-96(%rbp), %rax
    jmp	L65
L66:
    movl	-68(%rbp), %eax
    subl	$1, %eax
    andl	$255, %eax
    movl	%eax, -68(%rbp)
    jmp	L67
L68:
    movslq	%r13d, %rax
    addq	%r12, %rax
    movl	(%rax), %eax
    addq	$64, %rsp
    popq	%rbx
    popq	%r12
    popq	%r13
    popq	%r14
    popq	%r15
    popq	%rbp
    ret
    .comm	program,24,16
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$5184, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$8192, %edi
    call	malloc
    movq	%rax, -5160(%rbp)
    movl	$1193040, -5180(%rbp)
    movl	-5180(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, -5176(%rbp)
    movq	-5160(%rbp), %rax
    addq	$4095, %rax
    andq	$-4096, %rax
    movq	%rax, -5160(%rbp)
    movl	-5176(%rbp), %eax
    movzbl	%al, %eax
    movl	%eax, %eax
    addq	$64, %rax
    salq	$4, %rax
    addq	%rbp, %rax
    leaq	-5136(%rax), %rdx
    movl	-5176(%rbp), %eax
    movl	%eax, (%rdx)
    movl	-5176(%rbp), %eax
    movzbl	%al, %ecx
    movl	-5176(%rbp), %eax
    sall	$12, %eax
    movl	%eax, %edx
    movq	-5160(%rbp), %rax
    subq	%rdx, %rax
    movq	%rax, %rdx
    movl	%ecx, %eax
    addq	$64, %rax
    salq	$4, %rax
    addq	%rbp, %rax
    subq	$5128, %rax
    movq	%rdx, (%rax)
    movl	-5168(%rbp), %eax
    andl	$-262144, %eax
    movl	%eax, -5168(%rbp)
    movl	$0, -5144(%rbp)
    movl	-5180(%rbp), %eax
    movl	%eax, -5136(%rbp)
    movl	-5180(%rbp), %eax
    andl	$4095, %eax
    movq	%rax, %rdx
    movq	-5160(%rbp), %rax
    addq	%rdx, %rax
    movl	$88, (%rax)
    movzwl	-5166(%rbp), %eax
    andw	$-16321, %ax
    movw	%ax, -5166(%rbp)
    movzwl	-5162(%rbp), %eax
    andw	$-16321, %ax
    orb	$-128, %al
    movw	%ax, -5162(%rbp)
    movl	$0, -5184(%rbp)
    jmp	L71
L72:
    movl	-5184(%rbp), %eax
    cltq
    movq	-5168(%rbp), %rdx
    movq	%rdx, program(,%rax,8)
    addl	$1, -5184(%rbp)
L71:
    cmpl	$1, -5184(%rbp)
    jle	L72
    movl	-5168(%rbp), %eax
    andl	$-262144, %eax
    orl	$1, %eax
    movl	%eax, -5168(%rbp)
    movzwl	-5166(%rbp), %eax
    andw	$-16321, %ax
    movw	%ax, -5166(%rbp)
    movq	-5168(%rbp), %rax
    movq	%rax, program + 16(%rip)
    movq	$program, -5152(%rbp)
    movq	$program, -4120(%rbp)
    leaq	-5152(%rbp), %rax
    movq	%rax, %rsi
    movl	$3, %edi
    call	simulator_kernel
    movl	%eax, -5172(%rbp)
    cmpl	$88, -5172(%rbp)
    je	L73
    call	abort
L73:
    movl	$0, %edi
    call	exit
    .data
op_map3064:
    .quad	L63
    .quad	L68
