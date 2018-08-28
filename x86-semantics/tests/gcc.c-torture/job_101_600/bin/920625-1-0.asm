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
    .globl	pts
    .data
pts:
    .long	0
    .long	1072693248
    .long	0
    .long	1073741824
    .long	0
    .long	1074266112
    .long	0
    .long	1074790400
    .long	0
    .long	1075052544
    .long	0
    .long	1075314688
    .long	0
    .long	1075576832
    .long	0
    .long	1075838976
    .text
va1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$272, %rsp
    movl	%edi, -260(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L40
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L40:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	$0, -244(%rbp)
    jmp	L41
L47:
    movl	-204(%rbp), %eax
    cmpl	$160, %eax
    jnb	L42
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rax, %rdx
    leaq	-224(%rbp), %rax
    vmovsd	(%rdx), %xmm0
    vmovsd	%xmm0, (%rax)
    leaq	8(%rax), %rcx
    addq	$16, %rdx
    vmovsd	(%rdx), %xmm0
    vmovsd	%xmm0, (%rcx)
    movl	-204(%rbp), %edx
    addl	$32, %edx
    movl	%edx, -204(%rbp)
    jmp	L43
L42:
    movq	-200(%rbp), %rax
    leaq	16(%rax), %rdx
    movq	%rdx, -200(%rbp)
L43:
    movq	8(%rax), %rdx
    movq	(%rax), %rax
    movq	%rax, -240(%rbp)
    movq	%rdx, -232(%rbp)
    movl	-244(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$pts, %rax
    vmovsd	(%rax), %xmm0
    vmovsd	-240(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L44
    vucomisd	%xmm1, %xmm0
    jne	L44
    movl	-244(%rbp), %eax
    cltq
    salq	$4, %rax
    addq	$pts + 8, %rax
    vmovsd	(%rax), %xmm0
    vmovsd	-232(%rbp), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L44
    vucomisd	%xmm1, %xmm0
    je	L49
L44:
    call	abort
L49:
    addl	$1, -244(%rbp)
L41:
    movl	-244(%rbp), %eax
    cmpl	-260(%rbp), %eax
    jl	L47
    nop
    movq	-184(%rbp), %rsi
    xorq	$40, %rsi
    je	L48
    call	__stack_chk_fail
L48:
    leave
    ret
    .globl	ipts
    .data
ipts:
    .long	1
    .long	2
    .long	3
    .long	4
    .long	5
    .long	6
    .long	7
    .long	8
    .text
va2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$256, %rsp
    movl	%edi, -244(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L51
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L51:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	$0, -228(%rbp)
    jmp	L52
L57:
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L53
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L54
L53:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L54:
    movq	(%rax), %rax
    movq	%rax, -224(%rbp)
    movl	-228(%rbp), %eax
    cltq
    movl $ipts(,%rax,8), %edx
    movl	-224(%rbp), %eax
    cmpl	%eax, %edx
    jne	L55
    movl	-228(%rbp), %eax
    cltq
    movl $ipts + 4(,%rax,8), %edx
    movl	-220(%rbp), %eax
    cmpl	%eax, %edx
    je	L56
L55:
    call	abort
L56:
    addl	$1, -228(%rbp)
L52:
    movl	-228(%rbp), %eax
    cmpl	-244(%rbp), %eax
    jl	L57
    nop
    movq	-184(%rbp), %rcx
    xorq	$40, %rcx
    je	L58
    call	__stack_chk_fail
L58:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd $pts + 48(%rip), %xmm6
    vmovsd $pts + 56(%rip), %xmm5
    vmovsd $pts + 32(%rip), %xmm4
    vmovsd $pts + 40(%rip), %xmm3
    vmovsd $pts + 16(%rip), %xmm2
    vmovsd $pts + 24(%rip), %xmm0
    movq $pts(%rip), %rax
    vmovsd $pts + 8(%rip), %xmm1
    vmovapd	%xmm5, %xmm7
    vmovapd	%xmm3, %xmm5
    vmovapd	%xmm0, %xmm3
    vmovq	%rax, %xmm0
    movl	$4, %edi
    movl	$8, %eax
    call	va1
    movq $ipts + 24(%rip), %r8
    movq $ipts + 16(%rip), %rcx
    movq $ipts + 8(%rip), %rdx
    movq $ipts(%rip), %rsi
    movl	$4, %edi
    movl	$0, %eax
    call	va2
    movl	$0, %edi
    call	exit
