    .section	.textunlikely,"ax",@progbits
LCOLDB0:
    .text
LHOTB0:
    .globl	memcmp
memcmp:
    leaq	-1(%rdx), %r8
    testq	%rdx, %rdx
    je	L6
    movzbl	(%rdi), %edx
    movzbl	(%rsi), %ecx
    cmpb	%dl, %cl
    jne	L3
    xorl	%eax, %eax
    jmp	L4
L5:
    movzbl	1(%rdi,%rax), %edx
    addq	$1, %rax
    movzbl	(%rsi,%rax), %ecx
    cmpb	%cl, %dl
    jne	L3
L4:
    cmpq	%r8, %rax
    jne	L5
L6:
    xorl	%eax, %eax
    ret
L3:
    movzbl	%dl, %eax
    subl	%ecx, %eax
    ret
    .section	.textunlikely
LCOLDE0:
    .text
LHOTE0:
    .section	.textunlikely
LCOLDB1:
    .text
LHOTB1:
    .globl	__stack_chk_fail
__stack_chk_fail:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE1:
    .text
LHOTE1:
    .section	.textunlikely
LCOLDB2:
    .text
LHOTB2:
    .globl	exit
exit:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE2:
    .text
LHOTE2:
    .section	.textunlikely
LCOLDB3:
    .text
LHOTB3:
    .globl	abort
abort:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE3:
    .text
LHOTE3:
    .section	.textunlikely
LCOLDB4:
    .text
LHOTB4:
    .globl	memset
memset:
    leaq	-1(%rdx), %r11
    movq	%rdi, %rax
    testq	%rdx, %rdx
    je	L33
    movq	%rdi, %r10
    negq	%r10
    andl	$31, %r10d
    cmpq	%rdx, %r10
    cmova	%rdx, %r10
    cmpq	$31, %rdx
    ja	L35
    movq	%rdx, %r10
L15:
    leaq	(%rax,%r10), %rcx
    movq	%r11, %r9
    movq	%rax, %r8
L17:
    addq	$1, %r8
    movb	%sil, -1(%r8)
    subq	$1, %r9
    cmpq	%rcx, %r8
    jne	L17
    cmpq	%r10, %rdx
    je	L36
L16:
    subq	%r10, %rdx
    subq	%r10, %r11
    leaq	-32(%rdx), %rdi
    shrq	$5, %rdi
    addq	$1, %rdi
    movq	%rdi, %r8
    salq	$5, %r8
    cmpq	$30, %r11
    jbe	L19
    vmovd	%esi, %xmm0
    addq	%rax, %r10
    xorl	%r11d, %r11d
    vpbroadcastb	%xmm0, %ymm0
L20:
    addq	$1, %r11
    vmovdqa	%ymm0, (%r10)
    addq	$32, %r10
    cmpq	%r11, %rdi
    ja	L20
    addq	%r8, %rcx
    subq	%r8, %r9
    cmpq	%r8, %rdx
    je	L32
    vzeroupper
L19:
    leaq	1(%rcx,%r9), %rdx
L22:
    addq	$1, %rcx
    movb	%sil, -1(%rcx)
    cmpq	%rdx, %rcx
    jne	L22
    ret
L32:
    vzeroupper
L33:
    ret
L36:
    ret
L35:
    testq	%r10, %r10
    jne	L15
    movq	%r11, %r9
    movq	%rdi, %rcx
    jmp	L16
    .section	.textunlikely
LCOLDE4:
    .text
LHOTE4:
    .section	.textunlikely
LCOLDB5:
    .text
LHOTB5:
    .globl	memcpy
memcpy:
    movq	%rdi, %rax
    testq	%rdx, %rdx
    je	L67
    leaq	32(%rdi), %rcx
    cmpq	%rcx, %rsi
    leaq	32(%rsi), %rcx
    setnb	%dil
    cmpq	%rcx, %rax
    setnb	%cl
    orb	%cl, %dil
    je	L39
    cmpq	$31, %rdx
    jbe	L39
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r12
    leaq	-1(%rdx), %r12
    pushq	%r10
    pushq	%rbx
    movq	%rsi, %rbx
    negq	%rbx
    andl	$31, %ebx
    cmpq	%rdx, %rbx
    cmova	%rdx, %rbx
    testq	%rbx, %rbx
    je	L50
    leaq	(%rax,%rbx), %r10
    movq	%r12, %r9
    movq	%rsi, %rcx
    movq	%rax, %r8
L41:
    addq	$1, %rcx
    movzbl	-1(%rcx), %r11d
    addq	$1, %r8
    subq	$1, %r9
    movb	%r11b, -1(%r8)
    cmpq	%r10, %r8
    jne	L41
L40:
    subq	%rbx, %rdx
    movq	%r12, %r8
    leaq	-32(%rdx), %rdi
    subq	%rbx, %r8
    shrq	$5, %rdi
    addq	$1, %rdi
    movq	%rdi, %r11
    salq	$5, %r11
    cmpq	$30, %r8
    jbe	L42
    addq	%rbx, %rsi
    xorl	%r8d, %r8d
    addq	%rax, %rbx
    xorl	%r12d, %r12d
L43:
    vmovdqa	(%rsi,%r8), %ymm0
    addq	$1, %r12
    vmovdqu	%ymm0, (%rbx,%r8)
    addq	$32, %r8
    cmpq	%r12, %rdi
    ja	L43
    addq	%r11, %r10
    addq	%r11, %rcx
    subq	%r11, %r9
    cmpq	%r11, %rdx
    je	L63
    vzeroupper
L42:
    addq	$1, %r9
    xorl	%edx, %edx
L45:
    movzbl	(%rcx,%rdx), %esi
    movb	%sil, (%r10,%rdx)
    addq	$1, %rdx
    cmpq	%rdx, %r9
    jne	L45
    popq	%rbx
    popq	%r10
    popq	%r12
    popq	%rbp
    leaq	-8(%r10), %rsp
L67:
    ret
L50:
    movq	%r12, %r9
    movq	%rsi, %rcx
    movq	%rax, %r10
    jmp	L40
L39:
    xorl	%ecx, %ecx
L48:
    movzbl	(%rsi,%rcx), %edi
    movb	%dil, (%rax,%rcx)
    addq	$1, %rcx
    cmpq	%rcx, %rdx
    jne	L48
    ret
L63:
    vzeroupper
    popq	%rbx
    popq	%r10
    popq	%r12
    popq	%rbp
    leaq	-8(%r10), %rsp
    jmp	L67
    .section	.textunlikely
LCOLDE5:
    .text
LHOTE5:
    .section	.textunlikely
LCOLDB6:
    .text
LHOTB6:
    .globl	free
free:
    ret
    .section	.textunlikely
LCOLDE6:
    .text
LHOTE6:
    .section	.textunlikely
LCOLDB7:
    .text
LHOTB7:
    .globl	isprint
isprint:
    movl	%edi, %edx
    movl	$1, %eax
    andl	$-33, %edx
    subl	$65, %edx
    cmpl	$25, %edx
    jbe	L73
    subl	$48, %edi
    xorl	%eax, %eax
    cmpl	$9, %edi
    setbe	%al
L73:
    ret
    .section	.textunlikely
LCOLDE7:
    .text
LHOTE7:
    .section	.textunlikely
LCOLDB8:
    .text
LHOTB8:
    .globl	test
test:
    leaq	256(%rsi), %rcx
L75:
    movl	%edx, %eax
    addq	$16, %rsi
    imulw	-16(%rsi), %ax
    addl	%eax, %edi
    cmpq	%rcx, %rsi
    jne	L75
    movzwl	%di, %eax
    ret
    .section	.textunlikely
LCOLDE8:
    .text
LHOTE8:
    .section	.textunlikely
LCOLDB13:
    .section	.textstartup,"ax",@progbits
LHOTB13:
    .globl	main
.globl _start
_start:
    leaq	8(%rsp), %r10
    movl	$in, %ecx
    andq	$-32, %rsp
    pushq	-8(%r10)
    movq	%rcx, %rdi
    pushq	%rbp
    andl	$31, %edi
    movq	%rsp, %rbp
    shrq	%rdi
    pushq	%r10
    negq	%rdi
    subq	$8, %rsp
    andl	$15, %edi
    je	L85
    movl	%edi, %edx
    xorl	%eax, %eax
    movl	$128, %r8d
L79:
    movw	%ax, (%rcx)
    movl	%r8d, %esi
    addl	$1, %eax
    addq	$2, %rcx
    subl	%eax, %esi
    cmpl	%eax, %edi
    jne	L79
    movl	%edi, %edi
    movl	%esi, %r10d
    movl	$112, %r9d
    movl	$7, %r8d
L78:
    vmovdqa	LC10(%rip), %ymm5
    vmovd	%edx, %xmm2
    xorl	%eax, %eax
    vmovdqa	LC11(%rip), %ymm4
    vpbroadcastd	%xmm2, %ymm2
    vpaddd	LC9(%rip), %ymm2, %ymm2
    vmovdqa	LC12(%rip), %ymm3
    leaq	in(%rdi,%rdi), %rcx
L80:
    vpaddd	%ymm4, %ymm2, %ymm0
    addl	$1, %eax
    vpand	%ymm2, %ymm3, %ymm1
    addq	$32, %rcx
    vpand	%ymm0, %ymm3, %ymm0
    vpaddd	%ymm5, %ymm2, %ymm2
    vpackusdw	%ymm0, %ymm1, %ymm0
    vpermq	$216, %ymm0, %ymm0
    vmovdqa	%ymm0, -32(%rcx)
    cmpl	%r8d, %eax
    jb	L80
    leal	(%r9,%rdx), %eax
    subl	%r9d, %esi
    cmpl	%r9d, %r10d
    je	L83
    leal	(%rax,%rsi), %edx
L82:
    movslq	%eax, %rcx
    movw	%ax, in(%rcx,%rcx)
    addl	$1, %eax
    cmpl	%edx, %eax
    jne	L82
L83:
    movl	$1, %edx
    movl	$in, %esi
    xorl	%edi, %edi
    vzeroupper
    call	test
    cmpl	$960, %eax
    jne	L93
    addq	$8, %rsp
    xorl	%eax, %eax
    popq	%r10
    popq	%rbp
    leaq	-8(%r10), %rsp
    ret
L85:
    movl	$128, %r9d
    movl	$8, %r8d
    movl	$128, %r10d
    xorl	%edi, %edi
    movl	$128, %esi
    xorl	%edx, %edx
    jmp	L78
L93:
    call	abort
    .section	.textunlikely
LCOLDE13:
    .section	.textstartup
LHOTE13:
    .comm	in,256,16
    .section	.rodatacst32,"aM",@progbits,32
LC9:
    .long	0
    .long	1
    .long	2
    .long	3
    .long	4
    .long	5
    .long	6
    .long	7
LC10:
    .long	16
    .long	16
    .long	16
    .long	16
    .long	16
    .long	16
    .long	16
    .long	16
LC11:
    .long	8
    .long	8
    .long	8
    .long	8
    .long	8
    .long	8
    .long	8
    .long	8
LC12:
    .long	65535
    .long	65535
    .long	65535
    .long	65535
    .long	65535
    .long	65535
    .long	65535
    .long	65535
