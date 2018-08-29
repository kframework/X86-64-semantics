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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    .globl	vafunction
vafunction:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$224, %rsp
    vmovsd	%xmm0, -216(%rbp)
    vmovsd	%xmm1, -224(%rbp)
    movq	%rdi, -176(%rbp)
    movq	%rsi, -168(%rbp)
    movq	%rdx, -160(%rbp)
    movq	%rcx, -152(%rbp)
    movq	%r8, -144(%rbp)
    movq	%r9, -136(%rbp)
    testb	%al, %al
    je	L54
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
    movl	$0, -208(%rbp)
    movl	$80, -204(%rbp)
    leaq	16(%rbp), %rax
    movq	%rax, -200(%rbp)
    leaq	-176(%rbp), %rax
    movq	%rax, -192(%rbp)
    vmovsd	-216(%rbp), %xmm0
    vucomisd	LC0(%rip), %xmm0
    jp	L96
    vmovsd	-216(%rbp), %xmm0
    vucomisd	LC0(%rip), %xmm0
    je	L107
L96:
    call	abort
L107:
    vmovsd	-224(%rbp), %xmm0
    vucomisd	LC1(%rip), %xmm0
    jp	L97
    vmovsd	-224(%rbp), %xmm0
    vucomisd	LC1(%rip), %xmm0
    je	L108
L97:
    call	abort
L108:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L59
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L60
L59:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L60:
    vmovsd	(%rax), %xmm0
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L98
    vmovsd	LC2(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    je	L109
L98:
    call	abort
L109:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L63
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L64
L63:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L64:
    vmovsd	(%rax), %xmm0
    vucomisd	LC3(%rip), %xmm0
    jp	L99
    vucomisd	LC3(%rip), %xmm0
    je	L110
L99:
    call	abort
L110:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L67
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L68
L67:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L68:
    vmovsd	(%rax), %xmm0
    vucomisd	LC4(%rip), %xmm0
    jp	L100
    vucomisd	LC4(%rip), %xmm0
    je	L111
L100:
    call	abort
L111:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L71
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L72
L71:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L72:
    vmovsd	(%rax), %xmm0
    vucomisd	LC5(%rip), %xmm0
    jp	L101
    vucomisd	LC5(%rip), %xmm0
    je	L112
L101:
    call	abort
L112:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L75
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L76
L75:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L76:
    vmovsd	(%rax), %xmm0
    vucomisd	LC6(%rip), %xmm0
    jp	L102
    vucomisd	LC6(%rip), %xmm0
    je	L113
L102:
    call	abort
L113:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L79
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L80
L79:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L80:
    vmovsd	(%rax), %xmm0
    vucomisd	LC7(%rip), %xmm0
    jp	L103
    vucomisd	LC7(%rip), %xmm0
    je	L114
L103:
    call	abort
L114:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L83
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L84
L83:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L84:
    vmovsd	(%rax), %xmm0
    vucomisd	LC8(%rip), %xmm0
    jp	L104
    vucomisd	LC8(%rip), %xmm0
    je	L115
L104:
    call	abort
L115:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L87
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L88
L87:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L88:
    vmovsd	(%rax), %xmm0
    vucomisd	LC9(%rip), %xmm0
    jp	L105
    vucomisd	LC9(%rip), %xmm0
    je	L116
L105:
    call	abort
L116:
    movl	-204(%rbp), %eax
    cmpl	$176, %eax
    jnb	L91
    movq	-192(%rbp), %rax
    movl	-204(%rbp), %edx
    movl	%edx, %edx
    addq	%rdx, %rax
    movl	-204(%rbp), %edx
    addl	$16, %edx
    movl	%edx, -204(%rbp)
    jmp	L92
L91:
    movq	-200(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -200(%rbp)
L92:
    vmovsd	(%rax), %xmm0
    vucomisd	LC10(%rip), %xmm0
    jp	L106
    vucomisd	LC10(%rip), %xmm0
    jne	L106
    nop
    movq	-184(%rbp), %rax
    xorq	$40, %rax
    je	L95
    jmp	L117
L106:
    call	abort
L117:
    call	__stack_chk_fail
L95:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	LC7(%rip), %xmm6
    vmovsd	LC6(%rip), %xmm5
    vmovsd	LC5(%rip), %xmm4
    vmovsd	LC4(%rip), %xmm3
    vmovsd	LC3(%rip), %xmm2
    vmovsd	LC1(%rip), %xmm1
    movabsq	$4651022146422702080, %rax
    subq	$8, %rsp
    vmovsd	LC10(%rip), %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vmovsd	LC9(%rip), %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vmovsd	LC8(%rip), %xmm0
    leaq	-8(%rsp), %rsp
    vmovsd	%xmm0, (%rsp)
    vmovapd	%xmm6, %xmm7
    vmovapd	%xmm5, %xmm6
    vmovapd	%xmm4, %xmm5
    vmovapd	%xmm3, %xmm4
    vmovapd	%xmm2, %xmm3
    vmovsd	LC2(%rip), %xmm2
    vmovq	%rax, %xmm0
    movl	$8, %eax
    call	vafunction
    addq	$32, %rsp
    movl	$0, %edi
    call	exit
    .section	.rodata
LC0:
    .long	0
    .long	1082900480
LC1:
    .long	0
    .long	1083127808
LC2:
    .long	0
    .long	1072693248
LC3:
    .long	0
    .long	1073741824
LC4:
    .long	0
    .long	1074266112
LC5:
    .long	0
    .long	1074790400
LC6:
    .long	0
    .long	1075052544
LC7:
    .long	0
    .long	1075314688
LC8:
    .long	0
    .long	1075576832
LC9:
    .long	0
    .long	1075838976
LC10:
    .long	0
    .long	1075970048
