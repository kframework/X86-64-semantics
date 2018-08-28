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
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    vmovsd	-104(%rbp), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    vmovsd	$LC0(%rip), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	$LC0(%rip), %xmm0
    vmovsd	%xmm0, -96(%rbp)
    vmovsd	-96(%rbp), %xmm0
    vmovsd	%xmm0, -48(%rbp)
    vmovsd	$LC1(%rip), %xmm0
    vmovsd	%xmm0, -40(%rbp)
    movq	-48(%rbp), %rax
    vmovsd	-40(%rbp), %xmm1
    vmovq	%rax, %xmm0
    movl	$2, %eax
    call	foo
    vmovss	-112(%rbp), %xmm0
    vmovss	%xmm0, -84(%rbp)
    vmovss	$LC2(%rip), %xmm0
    vmovss	%xmm0, -88(%rbp)
    vmovss	$LC2(%rip), %xmm0
    vmovss	%xmm0, -108(%rbp)
    vmovss	-108(%rbp), %xmm0
    vmovss	%xmm0, -88(%rbp)
    vmovss	$LC3(%rip), %xmm0
    vmovss	%xmm0, -84(%rbp)
    movq	-88(%rbp), %rax
    vmovq	%rax, %xmm0
    movl	$1, %eax
    call	bar
    fldt	-80(%rbp)
    fstpt	-16(%rbp)
    fldt	$LC4(%rip)
    fstpt	-32(%rbp)
    fldt	$LC4(%rip)
    fstpt	-64(%rbp)
    fldt	-64(%rbp)
    fstpt	-32(%rbp)
    fldt	$LC5(%rip)
    fstpt	-16(%rbp)
    pushq	-8(%rbp)
    pushq	-16(%rbp)
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    movl	$0, %eax
    call	baz
    addq	$32, %rsp
    movl	$0, %edi
    call	exit
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovq	%xmm0, %rax
    vmovq	%xmm1, %rdx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm0
    vmovsd	%xmm1, -16(%rbp)
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-16(%rbp), %xmm0
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L41
    vmovsd	$LC0(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L41
    vmovsd	-8(%rbp), %xmm0
    vucomisd	$LC1(%rip), %xmm0
    jp	L41
    vucomisd	$LC1(%rip), %xmm0
    jne	L41
    jmp	L44
L41:
    call	abort
L44:
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    vmovss	-8(%rbp), %xmm1
    vmovss	-4(%rbp), %xmm0
    vmovss	%xmm1, -16(%rbp)
    vmovss	%xmm0, -12(%rbp)
    vmovss	-16(%rbp), %xmm0
    vucomiss	$LC2(%rip), %xmm0
    jp	L46
    vucomiss	$LC2(%rip), %xmm0
    jne	L46
    vmovss	-12(%rbp), %xmm0
    vucomiss	$LC3(%rip), %xmm0
    jp	L46
    vucomiss	$LC3(%rip), %xmm0
    jne	L46
    jmp	L49
L46:
    call	abort
L49:
    leave
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    fldt	16(%rbp)
    fldt	$LC4(%rip)
    fucomip	%st(1), %st
    jp	L55
    fldt	$LC4(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L51
    fldt	32(%rbp)
    fldt	$LC5(%rip)
    fucomip	%st(1), %st
    jp	L56
    fldt	$LC5(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L51
    jmp	L54
L55:
    fstp	%st(0)
    jmp	L51
L56:
    fstp	%st(0)
L51:
    call	abort
L54:
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	0
    .long	1072693248
LC1:
    .long	0
    .long	1073741824
LC2:
    .long	1077936128
LC3:
    .long	1082130432
LC4:
    .long	0
    .long	2684354560
    .long	16385
    .long	0
LC5:
    .long	0
    .long	3221225472
    .long	16385
    .long	0
