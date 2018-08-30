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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .comm	a,4,4
    .comm	b,4,4
    .comm	c,128,32
    .section	.rodata
LC0:
    .string	"%s %d %s"
LC1:
    .string	"foo"
LC2:
    .string	"bar"
    .text
f1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movq	%rdi, -216(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L54
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L54:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movq	-216(%rbp), %rax
    movq	%rax, %rdx
    movl	$LC0, %eax
    movl	$9, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    je	L55
    call	abort
L55:
    movl	$8, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L56
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L57
L56:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L57:
    movq	(%rax), %rax
    movq	%rax, %rdx
    movl	$LC1, %eax
    movl	$4, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    jne	L58
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L59
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L60
L59:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L60:
    movl	(%rax), %eax
    cmpl	$1, %eax
    jne	L58
    movl	-208(%rbp), %eax
    cmpl	$48, %eax
    jnb	L61
    movq	-192(%rbp), %rax
    movl	-208(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-208(%rbp), %edx
    addl	$8, %edx
    movl	%edx, -208(%rbp)
    jmp	L62
L61:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L62:
    movq	(%rax), %rax
    movq	%rax, %rdx
    movl	$LC2, %eax
    movl	$4, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    je	L65
L58:
    call	abort
L65:
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L64
    call	__stack_chk_fail
L64:
    leave
    ret
    .section	.rodata
LC3:
    .string	"baz"
    .text
f2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    movq	%rax, %rdx
    movl	$LC3, %eax
    movl	$4, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    jne	L67
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L68
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L69
L68:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L69:
    movq	(%rax), %rax
    movq	%rax, %rdx
    movl	$LC1, %eax
    movl	$4, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    jne	L67
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    cmpl	$176, %eax
    jnb	L70
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	4(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	4(%rdx), %edx
    leal	16(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, 4(%rdx)
    jmp	L71
L70:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L71:
    vmovsd	(%rax), %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L67
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jne	L67
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    cmpl	$48, %eax
    jnb	L72
    movq	-16(%rbp), %rax
    movq	16(%rax), %rdx
    movq	-16(%rbp), %rax
    movl	(%rax), %eax
    movl	%eax, %eax
    addq	%rdx, %rax
    movq	-16(%rbp), %rdx
    movl	(%rdx), %edx
    leal	8(%rdx), %ecx
    movq	-16(%rbp), %rdx
    movl	%ecx, (%rdx)
    jmp	L73
L72:
    movq	-16(%rbp), %rax
    movq	8(%rax), %rax
    leaq	8(%rax), %rcx
    movq	-16(%rbp), %rdx
    movq	%rcx, 8(%rdx)
L73:
    movl	(%rax), %eax
    cmpl	$26, %eax
    je	L75
L67:
    call	abort
L75:
    nop
    leave
    ret
    .section	.rodata
LC5:
    .string	""
    .text
f3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -4(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    cmpq	$0, -16(%rbp)
    je	L77
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L77
    movl	$LC2, %edx
    jmp	L78
L77:
    movl	$LC5, %edx
L78:
    movl	a(%rip), %eax
    addl	$1, %eax
    movl	%eax, a(%rip)
    movl	a(%rip), %eax
    cmpl	$0, -4(%rbp)
    je	L79
    movl	$LC5, %esi
    jmp	L80
L79:
    movl	$LC1, %esi
L80:
    movq	%rdx, %rcx
    movl	%eax, %edx
    movl	$LC0, %edi
    movl	$0, %eax
    call	f1
    cmpq	$0, -16(%rbp)
    je	L82
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L82
    movq	-24(%rbp), %rdx
    movq	-16(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	f2
L82:
    nop
    leave
    ret
    .globl	f4
f4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    movl	%edi, -212(%rbp)
    movq	%rsi, -224(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L84
    vmovaps	%xmm0, -128(%rbp)
    vmovaps	%xmm1, -112(%rbp)
    vmovaps	%xmm2, -96(%rbp)
    vmovaps	%xmm3, -80(%rbp)
    vmovaps	%xmm4, -64(%rbp)
    vmovaps	%xmm5, -48(%rbp)
    vmovaps	%xmm6, -32(%rbp)
    vmovaps	%xmm7, -16(%rbp)
L84:
    movq	$40, %rax
    movq	%rax, -184(%rbp)
    xorl	%eax, %eax
    movl	$16, -208(%rbp)
    movl	$48, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    cmpl	$0, -212(%rbp)
    jne	L85
    movzbl	c(%rip), %eax
    testb	%al, %al
    jne	L85
    movl	b(%rip), %eax
    addl	$1, %eax
    movl	%eax, b(%rip)
L85:
    leaq	-208(%rbp), %rdx
    movq	-224(%rbp), %rcx
    movl	-212(%rbp), %eax
    movq	%rcx, %rsi
    movl	%eax, %edi
    call	f3
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L86
    call	__stack_chk_fail
L86:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movabsq	$4622945017495814144, %rax
    movl	$26, %ecx
    vmovq	%rax, %xmm0
    movl	$LC1, %edx
    movl	$LC3, %esi
    movl	$0, %edi
    movl	$1, %eax
    call	f4
    movl	a(%rip), %eax
    cmpl	$1, %eax
    jne	L88
    movl	b(%rip), %eax
    cmpl	$1, %eax
    je	L89
L88:
    call	abort
L89:
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC4:
    .long	0
    .long	1076363264
