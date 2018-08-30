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
    .globl	u2f
u2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    testq	%rax, %rax
    js	L54
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rax, %xmm0, %xmm0
    jmp	L56
L54:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
L56:
    popq	%rbp
    ret
    .globl	u2d
u2d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    testq	%rax, %rax
    js	L58
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L60
L58:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L60:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	u2ld
u2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    testq	%rax, %rax
    js	L62
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L64
L62:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L64:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	s2f
s2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	s2d
s2d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	-4(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	s2ld
s2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	-4(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	fnear
fnear:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -20(%rbp)
    vmovss	%xmm1, -24(%rbp)
    vmovss	-20(%rbp), %xmm0
    vsubss	-24(%rbp), %xmm0, %xmm0
    vmovss	%xmm0, -4(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L78
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L72
L78:
    vmovss	-20(%rbp), %xmm0
    vdivss	-4(%rbp), %xmm0, %xmm0
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jbe	L79
L72:
    movl	$1, %eax
    jmp	L76
L79:
    movl	$0, %eax
L76:
    popq	%rbp
    ret
    .globl	dnear
dnear:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	%xmm1, -32(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vsubsd	-32(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    jp	L87
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L81
L87:
    vmovsd	-24(%rbp), %xmm0
    vdivsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L88
L81:
    movl	$1, %eax
    jmp	L85
L88:
    movl	$0, %eax
L85:
    popq	%rbp
    ret
    .globl	ldnear
ldnear:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -24(%rbp)
    vmovsd	%xmm1, -32(%rbp)
    vmovsd	-24(%rbp), %xmm0
    vsubsd	-32(%rbp), %xmm0, %xmm0
    vmovsd	%xmm0, -8(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    jp	L96
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L90
L96:
    vmovsd	-24(%rbp), %xmm0
    vdivsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L97
L90:
    movl	$1, %eax
    jmp	L94
L97:
    movl	$0, %eax
L94:
    popq	%rbp
    ret
    .globl	test_integer_to_float
test_integer_to_float:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    movl	$0, %eax
    call	u2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L135
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L147
L135:
    call	abort
L147:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC5(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L101
    call	abort
L101:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC6(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L102
    call	abort
L102:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L136
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L148
L136:
    call	abort
L148:
    movl	$0, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L137
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L149
L137:
    call	abort
L149:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L107
    call	abort
L107:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L108
    call	abort
L108:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L138
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L150
L138:
    call	abort
L150:
    movl	$0, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L139
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L151
L139:
    call	abort
L151:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L113
    call	abort
L113:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L114
    call	abort
L114:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L140
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L152
L140:
    call	abort
L152:
    movl	$0, %edi
    movl	$0, %eax
    call	s2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L141
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L153
L141:
    call	abort
L153:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC10(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L119
    call	abort
L119:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC6(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L120
    call	abort
L120:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L142
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L154
L142:
    call	abort
L154:
    movl	$0, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L143
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L155
L143:
    call	abort
L155:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L125
    call	abort
L125:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L126
    call	abort
L126:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L144
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L156
L144:
    call	abort
L156:
    movl	$0, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L145
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L157
L145:
    call	abort
L157:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L131
    call	abort
L131:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L132
    call	abort
L132:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L146
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L158
L146:
    call	abort
L158:
    nop
    popq	%rbp
    ret
    .globl	ull2f
ull2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L160
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rax, %xmm0, %xmm0
    jmp	L162
L160:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
L162:
    popq	%rbp
    ret
    .globl	ull2d
ull2d:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L164
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L166
L164:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L166:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	ull2ld
ull2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L168
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L170
L168:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L170:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	sll2f
sll2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	-8(%rbp), %xmm0, %xmm0
    popq	%rbp
    ret
    .globl	sll2d
sll2d:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	-8(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	sll2ld
sll2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	-8(%rbp), %xmm0, %xmm0
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	test_longlong_integer_to_float
test_longlong_integer_to_float:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    movl	$0, %eax
    call	ull2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L221
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L240
L221:
    call	abort
L240:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC14(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L222
    vmovss	LC14(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L241
L222:
    call	abort
L241:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L223
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L242
L223:
    call	abort
L242:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L224
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L243
L224:
    call	abort
L243:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L225
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L244
L225:
    call	abort
L244:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L226
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L245
L226:
    call	abort
L245:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L227
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L246
L227:
    call	abort
L246:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L228
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L247
L228:
    call	abort
L247:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L229
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L248
L229:
    call	abort
L248:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L230
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L249
L230:
    call	abort
L249:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L231
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L250
L231:
    call	abort
L250:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L232
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L251
L232:
    call	abort
L251:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L233
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L252
L233:
    call	abort
L252:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L234
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L253
L234:
    call	abort
L253:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC15(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L206
    call	abort
L206:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC18(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L235
    vmovss	LC18(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L254
L235:
    call	abort
L254:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L236
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L255
L236:
    call	abort
L255:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L237
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L256
L237:
    call	abort
L256:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L213
    call	abort
L213:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC19(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L214
    call	abort
L214:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L238
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L257
L238:
    call	abort
L257:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L239
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L258
L239:
    call	abort
L258:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L219
    call	abort
L219:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC19(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L220
    call	abort
L220:
    nop
    popq	%rbp
    ret
    .globl	f2u
f2u:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	d2u
d2u:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	ld2u
ld2u:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	f2s
f2s:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vcvttss2si	%xmm0, %eax
    popq	%rbp
    ret
    .globl	d2s
d2s:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2si	%xmm0, %eax
    popq	%rbp
    ret
    .globl	ld2s
ld2s:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2si	%xmm0, %eax
    popq	%rbp
    ret
    .globl	test_float_to_integer
test_float_to_integer:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2u
    testl	%eax, %eax
    je	L272
    call	abort
L272:
    vmovss	LC20(%rip), %xmm0
    call	f2u
    testl	%eax, %eax
    je	L273
    call	abort
L273:
    vmovss	LC21(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L274
    call	abort
L274:
    vmovss	LC22(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L275
    call	abort
L275:
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$2147483647, %eax
    je	L276
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L276
    call	abort
L276:
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L277
    call	abort
L277:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L278
    call	abort
L278:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L279
    call	abort
L279:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L280
    call	abort
L280:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L281
    call	abort
L281:
    movabsq	$4751297606873776128, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-1, %eax
    je	L282
    call	abort
L282:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$2147483647, %eax
    je	L283
    call	abort
L283:
    movabsq	$4746794007248502784, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-2147483648, %eax
    je	L284
    call	abort
L284:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2u
    testl	%eax, %eax
    je	L285
    call	abort
L285:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    testl	%eax, %eax
    je	L286
    call	abort
L286:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$1, %eax
    je	L287
    call	abort
L287:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$1, %eax
    je	L288
    call	abort
L288:
    movabsq	$4751297606873776128, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$-1, %eax
    je	L289
    call	abort
L289:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$2147483647, %eax
    je	L290
    call	abort
L290:
    movabsq	$4746794007248502784, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$-2147483648, %eax
    je	L291
    call	abort
L291:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2s
    testl	%eax, %eax
    je	L292
    call	abort
L292:
    vmovss	LC20(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L293
    call	abort
L293:
    vmovss	LC21(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L294
    call	abort
L294:
    vmovss	LC22(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L295
    call	abort
L295:
    vmovss	LC26(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L296
    call	abort
L296:
    vmovss	LC10(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L297
    call	abort
L297:
    vmovss	LC27(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L298
    call	abort
L298:
    vmovss	LC11(%rip), %xmm0
    call	f2s
    cmpl	$-2147483648, %eax
    je	L299
    call	abort
L299:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L300
    call	abort
L300:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L301
    call	abort
L301:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L302
    call	abort
L302:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L303
    call	abort
L303:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L304
    call	abort
L304:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L305
    call	abort
L305:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L306
    call	abort
L306:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$2147483647, %eax
    je	L307
    call	abort
L307:
    movabsq	$-4476578029606273024, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-2147483648, %eax
    je	L308
    call	abort
L308:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L309
    call	abort
L309:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L310
    call	abort
L310:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$1, %eax
    je	L311
    call	abort
L311:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$1, %eax
    je	L312
    call	abort
L312:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L313
    call	abort
L313:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-1, %eax
    je	L314
    call	abort
L314:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-1, %eax
    je	L315
    call	abort
L315:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$2147483647, %eax
    je	L316
    call	abort
L316:
    movabsq	$-4476578029606273024, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-2147483648, %eax
    je	L317
    call	abort
L317:
    nop
    popq	%rbp
    ret
    .globl	f2ull
f2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jnb	L319
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    jmp	L320
L319:
    vmovss	-4(%rbp), %xmm0
    vmovss	LC15(%rip), %xmm1
    vsubss	%xmm1, %xmm0, %xmm0
    vcvttss2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L320:
    popq	%rbp
    ret
    .globl	d2ull
d2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jnb	L323
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    jmp	L324
L323:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L324:
    popq	%rbp
    ret
    .globl	ld2ull
ld2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jnb	L327
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    jmp	L328
L327:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L328:
    popq	%rbp
    ret
    .globl	f2sll
f2sll:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	d2sll
d2sll:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	ld2sll
ld2sll:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    popq	%rbp
    ret
    .globl	test_float_to_longlong_integer
test_float_to_longlong_integer:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2ull
    testq	%rax, %rax
    je	L337
    call	abort
L337:
    vmovss	LC20(%rip), %xmm0
    call	f2ull
    testq	%rax, %rax
    je	L338
    call	abort
L338:
    vmovss	LC21(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L339
    call	abort
L339:
    vmovss	LC22(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L340
    call	abort
L340:
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L341
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L341
    call	abort
L341:
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L342
    call	abort
L342:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L343
    call	abort
L343:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L344
    call	abort
L344:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L345
    call	abort
L345:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L346
    call	abort
L346:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L347
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L347
    call	abort
L347:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L348
    call	abort
L348:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2ull
    testq	%rax, %rax
    je	L349
    call	abort
L349:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    testq	%rax, %rax
    je	L350
    call	abort
L350:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    cmpq	$1, %rax
    je	L351
    call	abort
L351:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    cmpq	$1, %rax
    je	L352
    call	abort
L352:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L353
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L353
    call	abort
L353:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L354
    call	abort
L354:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L355
    call	abort
L355:
    vmovss	LC20(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L356
    call	abort
L356:
    vmovss	LC21(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L357
    call	abort
L357:
    vmovss	LC22(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L358
    call	abort
L358:
    vmovss	LC26(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L359
    call	abort
L359:
    vmovss	LC10(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L360
    call	abort
L360:
    vmovss	LC27(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L361
    call	abort
L361:
    vmovss	LC18(%rip), %xmm0
    call	f2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L362
    call	abort
L362:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L363
    call	abort
L363:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L364
    call	abort
L364:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L365
    call	abort
L365:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L366
    call	abort
L366:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L367
    call	abort
L367:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L368
    call	abort
L368:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L369
    call	abort
L369:
    movabsq	$-4332462841530417152, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L370
    call	abort
L370:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L371
    call	abort
L371:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L372
    call	abort
L372:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$1, %rax
    je	L373
    call	abort
L373:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$1, %rax
    je	L374
    call	abort
L374:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L375
    call	abort
L375:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$-1, %rax
    je	L376
    call	abort
L376:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$-1, %rax
    je	L377
    call	abort
L377:
    movabsq	$-4332462841530417152, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L378
    call	abort
L378:
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	test_integer_to_float
    movl	$0, %eax
    call	test_float_to_integer
    movl	$0, %eax
    call	test_longlong_integer_to_float
    movl	$0, %eax
    call	test_float_to_longlong_integer
    movl	$0, %edi
    call	exit
    .section	.rodata
LC1:
    .long	1232348160
LC3:
    .long	512753664
    .long	1121369284
LC4:
    .long	3037031959
    .long	1184086197
LC5:
    .long	1333788672
LC6:
    .long	1325400064
LC7:
    .long	4292870144
    .long	1106247679
LC8:
    .long	4290772992
    .long	1105199103
LC9:
    .long	0
    .long	1105199104
LC10:
    .long	3212836864
LC11:
    .long	3472883712
LC12:
    .long	0
    .long	-1074790400
LC13:
    .long	0
    .long	-1042284544
LC14:
    .long	1602224128
LC15:
    .long	1593835520
LC16:
    .long	0
    .long	1139802112
LC17:
    .long	0
    .long	1138753536
LC18:
    .long	3741319168
LC19:
    .long	0
    .long	-1008730112
LC20:
    .long	1065336439
LC21:
    .long	1065353216
LC22:
    .long	1073657938
LC26:
    .long	3212820087
LC27:
    .long	3221141586
