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
    movq	%rax, -16(%rbp)
    fildq	-16(%rbp)
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
    fildl	-4(%rbp)
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
    jp	L76
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L70
L76:
    vmovss	-20(%rbp), %xmm0
    vdivss	-4(%rbp), %xmm0, %xmm0
    vucomiss	LC2(%rip), %xmm0
    jbe	L77
L70:
    movl	$1, %eax
    jmp	L74
L77:
    movl	$0, %eax
L74:
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
    jp	L85
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L79
L85:
    vmovsd	-24(%rbp), %xmm0
    vdivsd	-8(%rbp), %xmm0, %xmm0
    vucomisd	LC4(%rip), %xmm0
    jbe	L86
L79:
    movl	$1, %eax
    jmp	L83
L86:
    movl	$0, %eax
L83:
    popq	%rbp
    ret
    .globl	ldnear
ldnear:
    pushq	%rbp
    movq	%rsp, %rbp
    fldt	16(%rbp)
    fldt	32(%rbp)
    fsubrp	%st, %st(1)
    fstpt	-16(%rbp)
    fldt	-16(%rbp)
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    jp	L94
    fldt	-16(%rbp)
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L88
L94:
    fldt	16(%rbp)
    fldt	-16(%rbp)
    fdivrp	%st, %st(1)
    fldt	LC6(%rip)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jbe	L95
L88:
    movl	$1, %eax
    jmp	L92
L95:
    movl	$0, %eax
L92:
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
    jp	L133
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L145
L133:
    call	abort
L145:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC7(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L99
    call	abort
L99:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC8(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L100
    call	abort
L100:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2f
    vucomiss	LC8(%rip), %xmm0
    jp	L134
    vucomiss	LC8(%rip), %xmm0
    je	L146
L134:
    call	abort
L146:
    movl	$0, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L135
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L147
L135:
    call	abort
L147:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L105
    call	abort
L105:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC10(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L106
    call	abort
L106:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm4
    vucomisd	LC11(%rip), %xmm4
    jp	L136
    vmovq	%rax, %xmm5
    vucomisd	LC11(%rip), %xmm5
    je	L148
L136:
    call	abort
L148:
    movl	$0, %edi
    movl	$0, %eax
    call	u2ld
    fldz
    fucomip	%st(1), %st
    jp	L157
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L149
    jmp	L137
L157:
    fstp	%st(0)
L137:
    call	abort
L149:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2ld
    fldt	LC12(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L111
    call	abort
L111:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2ld
    fldt	LC13(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L112
    call	abort
L112:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2ld
    fldt	LC14(%rip)
    fucomip	%st(1), %st
    jp	L158
    fldt	LC14(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L150
    jmp	L138
L158:
    fstp	%st(0)
L138:
    call	abort
L150:
    movl	$0, %edi
    movl	$0, %eax
    call	s2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L139
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L151
L139:
    call	abort
L151:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC15(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L117
    call	abort
L117:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC8(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L118
    call	abort
L118:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2f
    vucomiss	LC16(%rip), %xmm0
    jp	L140
    vucomiss	LC16(%rip), %xmm0
    je	L152
L140:
    call	abort
L152:
    movl	$0, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L141
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L153
L141:
    call	abort
L153:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L123
    call	abort
L123:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC10(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L124
    call	abort
L124:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm2
    vucomisd	LC18(%rip), %xmm2
    jp	L142
    vmovq	%rax, %xmm3
    vucomisd	LC18(%rip), %xmm3
    je	L154
L142:
    call	abort
L154:
    movl	$0, %edi
    movl	$0, %eax
    call	s2ld
    fldz
    fucomip	%st(1), %st
    jp	L159
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L155
    jmp	L143
L159:
    fstp	%st(0)
L143:
    call	abort
L155:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2ld
    fld1
    fchs
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L129
    call	abort
L129:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2ld
    fldt	LC13(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L130
    call	abort
L130:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2ld
    fldt	LC20(%rip)
    fucomip	%st(1), %st
    jp	L160
    fldt	LC20(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L156
    jmp	L144
L160:
    fstp	%st(0)
L144:
    call	abort
L156:
    nop
    leave
    ret
    .globl	ull2f
ull2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L162
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rax, %xmm0, %xmm0
    jmp	L164
L162:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
L164:
    popq	%rbp
    ret
    .globl	ull2d
ull2d:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L166
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L168
L166:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L168:
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl	ull2ld
ull2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    fildq	-8(%rbp)
    cmpq	$0, -8(%rbp)
    jns	L171
    fldt	LC21(%rip)
    faddp	%st, %st(1)
L171:
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
    fildq	-8(%rbp)
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
    jp	L222
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L241
L222:
    call	abort
L241:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2f
    vucomiss	LC22(%rip), %xmm0
    jp	L223
    vucomiss	LC22(%rip), %xmm0
    je	L242
L223:
    call	abort
L242:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2f
    vucomiss	LC23(%rip), %xmm0
    jp	L224
    vucomiss	LC23(%rip), %xmm0
    je	L243
L224:
    call	abort
L243:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2f
    vucomiss	LC23(%rip), %xmm0
    jp	L225
    vucomiss	LC23(%rip), %xmm0
    je	L244
L225:
    call	abort
L244:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L226
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L245
L226:
    call	abort
L245:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm4
    vucomisd	LC24(%rip), %xmm4
    jp	L227
    vmovq	%rax, %xmm5
    vucomisd	LC24(%rip), %xmm5
    je	L246
L227:
    call	abort
L246:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm6
    vucomisd	LC25(%rip), %xmm6
    jp	L228
    vmovq	%rax, %xmm7
    vucomisd	LC25(%rip), %xmm7
    je	L247
L228:
    call	abort
L247:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm2
    vucomisd	LC25(%rip), %xmm2
    jp	L229
    vmovq	%rax, %xmm3
    vucomisd	LC25(%rip), %xmm3
    je	L248
L229:
    call	abort
L248:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2ld
    fldz
    fucomip	%st(1), %st
    jp	L260
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L249
    jmp	L230
L260:
    fstp	%st(0)
L230:
    call	abort
L249:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2ld
    fldt	LC26(%rip)
    fucomip	%st(1), %st
    jp	L261
    fldt	LC26(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L250
    jmp	L231
L261:
    fstp	%st(0)
L231:
    call	abort
L250:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2ld
    fldt	LC27(%rip)
    fucomip	%st(1), %st
    jp	L262
    fldt	LC27(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L251
    jmp	L232
L262:
    fstp	%st(0)
L232:
    call	abort
L251:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2ld
    fldt	LC28(%rip)
    fucomip	%st(1), %st
    jp	L263
    fldt	LC28(%rip)
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L252
    jmp	L233
L263:
    fstp	%st(0)
L233:
    call	abort
L252:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L234
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L253
L234:
    call	abort
L253:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L235
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L254
L235:
    call	abort
L254:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC23(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L207
    call	abort
L207:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2f
    vucomiss	LC29(%rip), %xmm0
    jp	L236
    vucomiss	LC29(%rip), %xmm0
    je	L255
L236:
    call	abort
L255:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L237
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L256
L237:
    call	abort
L256:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L238
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L257
L238:
    call	abort
L257:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC25(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L214
    call	abort
L214:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC30(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L215
    call	abort
L215:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2ld
    fldz
    fucomip	%st(1), %st
    jp	L264
    fldz
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L258
    jmp	L239
L264:
    fstp	%st(0)
L239:
    call	abort
L258:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2ld
    fld1
    fchs
    fucomip	%st(1), %st
    jp	L265
    fld1
    fchs
    fucomip	%st(1), %st
    fstp	%st(0)
    je	L259
    jmp	L240
L265:
    fstp	%st(0)
L240:
    call	abort
L259:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2ld
    fldt	LC27(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L220
    call	abort
L220:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2ld
    fldt	LC31(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ldnear
    addq	$32, %rsp
    testl	%eax, %eax
    jne	L221
    call	abort
L221:
    nop
    leave
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
    fldt	16(%rbp)
    fisttpq	-8(%rbp)
    movq	-8(%rbp), %rax
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
    fldt	16(%rbp)
    fisttpl	-4(%rbp)
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test_float_to_integer
test_float_to_integer:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2u
    testl	%eax, %eax
    je	L279
    call	abort
L279:
    vmovss	LC32(%rip), %xmm0
    call	f2u
    testl	%eax, %eax
    je	L280
    call	abort
L280:
    vmovss	LC33(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L281
    call	abort
L281:
    vmovss	LC34(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L282
    call	abort
L282:
    vmovss	LC8(%rip), %xmm0
    call	f2u
    cmpl	$2147483647, %eax
    je	L283
    vmovss	LC8(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L283
    call	abort
L283:
    vmovss	LC8(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L284
    call	abort
L284:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L285
    call	abort
L285:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L286
    call	abort
L286:
    vmovsd	LC36(%rip), %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L287
    call	abort
L287:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L288
    call	abort
L288:
    movabsq	$4751297606873776128, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-1, %eax
    je	L289
    call	abort
L289:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$2147483647, %eax
    je	L290
    call	abort
L290:
    movabsq	$4746794007248502784, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-2147483648, %eax
    je	L291
    call	abort
L291:
    fldz
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    testl	%eax, %eax
    je	L292
    call	abort
L292:
    fldt	LC38(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    testl	%eax, %eax
    je	L293
    call	abort
L293:
    fld1
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    cmpl	$1, %eax
    je	L294
    call	abort
L294:
    fldt	LC40(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    cmpl	$1, %eax
    je	L295
    call	abort
L295:
    fldt	LC12(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    cmpl	$-1, %eax
    je	L296
    call	abort
L296:
    fldt	LC13(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    cmpl	$2147483647, %eax
    je	L297
    call	abort
L297:
    fldt	LC14(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2u
    addq	$16, %rsp
    cmpl	$-2147483648, %eax
    je	L298
    call	abort
L298:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2s
    testl	%eax, %eax
    je	L299
    call	abort
L299:
    vmovss	LC32(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L300
    call	abort
L300:
    vmovss	LC33(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L301
    call	abort
L301:
    vmovss	LC34(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L302
    call	abort
L302:
    vmovss	LC41(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L303
    call	abort
L303:
    vmovss	LC15(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L304
    call	abort
L304:
    vmovss	LC42(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L305
    call	abort
L305:
    vmovss	LC16(%rip), %xmm0
    call	f2s
    cmpl	$-2147483648, %eax
    je	L306
    call	abort
L306:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L307
    call	abort
L307:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L308
    call	abort
L308:
    vmovsd	LC36(%rip), %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L309
    call	abort
L309:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L310
    call	abort
L310:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L311
    call	abort
L311:
    vmovsd	LC17(%rip), %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L312
    call	abort
L312:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L313
    call	abort
L313:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$2147483647, %eax
    je	L314
    call	abort
L314:
    movabsq	$-4476578029606273024, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-2147483648, %eax
    je	L315
    call	abort
L315:
    fldz
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    testl	%eax, %eax
    je	L316
    call	abort
L316:
    fldt	LC38(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    testl	%eax, %eax
    je	L317
    call	abort
L317:
    fld1
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$1, %eax
    je	L318
    call	abort
L318:
    fldt	LC40(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$1, %eax
    je	L319
    call	abort
L319:
    fldt	LC45(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    testl	%eax, %eax
    je	L320
    call	abort
L320:
    fld1
    fchs
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$-1, %eax
    je	L321
    call	abort
L321:
    fldt	LC46(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$-1, %eax
    je	L322
    call	abort
L322:
    fldt	LC13(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$2147483647, %eax
    je	L323
    call	abort
L323:
    fldt	LC20(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2s
    addq	$16, %rsp
    cmpl	$-2147483648, %eax
    je	L324
    call	abort
L324:
    nop
    leave
    ret
    .globl	f2ull
f2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	%xmm0, -4(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	LC23(%rip), %xmm0
    jnb	L326
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    jmp	L327
L326:
    vmovss	-4(%rbp), %xmm0
    vmovss	LC23(%rip), %xmm1
    vsubss	%xmm1, %xmm0, %xmm0
    vcvttss2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L327:
    popq	%rbp
    ret
    .globl	d2ull
d2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vucomisd	LC25(%rip), %xmm0
    jnb	L330
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    jmp	L331
L330:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC25(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L331:
    popq	%rbp
    ret
    .globl	ld2ull
ld2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    fldt	16(%rbp)
    fldt	LC28(%rip)
    fxch	%st(1)
    fucomip	%st(1), %st
    fstp	%st(0)
    jnb	L334
    fldt	16(%rbp)
    fisttpq	-8(%rbp)
    movq	-8(%rbp), %rax
    jmp	L335
L334:
    fldt	16(%rbp)
    fldt	LC28(%rip)
    fsubrp	%st, %st(1)
    fisttpq	-8(%rbp)
    movq	-8(%rbp), %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L335:
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
    fldt	16(%rbp)
    fisttpq	-8(%rbp)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	test_float_to_longlong_integer
test_float_to_longlong_integer:
    pushq	%rbp
    movq	%rsp, %rbp
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2ull
    testq	%rax, %rax
    je	L344
    call	abort
L344:
    vmovss	LC32(%rip), %xmm0
    call	f2ull
    testq	%rax, %rax
    je	L345
    call	abort
L345:
    vmovss	LC33(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L346
    call	abort
L346:
    vmovss	LC34(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L347
    call	abort
L347:
    vmovss	LC23(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L348
    vmovss	LC23(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L348
    call	abort
L348:
    vmovss	LC23(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L349
    call	abort
L349:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L350
    call	abort
L350:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L351
    call	abort
L351:
    vmovsd	LC36(%rip), %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L352
    call	abort
L352:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L353
    call	abort
L353:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L354
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L354
    call	abort
L354:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L355
    call	abort
L355:
    fldz
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    testq	%rax, %rax
    je	L356
    call	abort
L356:
    fldt	LC38(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    testq	%rax, %rax
    je	L357
    call	abort
L357:
    fld1
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    cmpq	$1, %rax
    je	L358
    call	abort
L358:
    fldt	LC40(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    cmpq	$1, %rax
    je	L359
    call	abort
L359:
    fldt	LC27(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L360
    fldt	LC27(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L360
    call	abort
L360:
    fldt	LC28(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2ull
    addq	$16, %rsp
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L361
    call	abort
L361:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L362
    call	abort
L362:
    vmovss	LC32(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L363
    call	abort
L363:
    vmovss	LC33(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L364
    call	abort
L364:
    vmovss	LC34(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L365
    call	abort
L365:
    vmovss	LC41(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L366
    call	abort
L366:
    vmovss	LC15(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L367
    call	abort
L367:
    vmovss	LC42(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L368
    call	abort
L368:
    vmovss	LC29(%rip), %xmm0
    call	f2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L369
    call	abort
L369:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L370
    call	abort
L370:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L371
    call	abort
L371:
    vmovsd	LC36(%rip), %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L372
    call	abort
L372:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L373
    call	abort
L373:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L374
    call	abort
L374:
    vmovsd	LC17(%rip), %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L375
    call	abort
L375:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L376
    call	abort
L376:
    movabsq	$-4332462841530417152, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L377
    call	abort
L377:
    fldz
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    testq	%rax, %rax
    je	L378
    call	abort
L378:
    fldt	LC38(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    testq	%rax, %rax
    je	L379
    call	abort
L379:
    fld1
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    cmpq	$1, %rax
    je	L380
    call	abort
L380:
    fldt	LC40(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    cmpq	$1, %rax
    je	L381
    call	abort
L381:
    fldt	LC45(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    testq	%rax, %rax
    je	L382
    call	abort
L382:
    fld1
    fchs
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    cmpq	$-1, %rax
    je	L383
    call	abort
L383:
    fldt	LC46(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    cmpq	$-1, %rax
    je	L384
    call	abort
L384:
    fldt	LC31(%rip)
    leaq	-16(%rsp), %rsp
    fstpt	(%rsp)
    call	ld2sll
    addq	$16, %rsp
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L385
    call	abort
L385:
    nop
    leave
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
LC2:
    .long	1232348160
LC4:
    .long	512753664
    .long	1121369284
LC6:
    .long	728807424
    .long	2646977960
    .long	16489
    .long	0
LC7:
    .long	1333788672
LC8:
    .long	1325400064
LC9:
    .long	4292870144
    .long	1106247679
LC10:
    .long	4290772992
    .long	1105199103
LC11:
    .long	0
    .long	1105199104
LC12:
    .long	0
    .long	4294967295
    .long	16414
    .long	0
LC13:
    .long	0
    .long	4294967294
    .long	16413
    .long	0
LC14:
    .long	0
    .long	2147483648
    .long	16414
    .long	0
LC15:
    .long	3212836864
LC16:
    .long	3472883712
LC17:
    .long	0
    .long	-1074790400
LC18:
    .long	0
    .long	-1042284544
LC20:
    .long	0
    .long	2147483648
    .long	49182
    .long	0
LC21:
    .long	0
    .long	2147483648
    .long	16447
    .long	0
LC22:
    .long	1602224128
LC23:
    .long	1593835520
LC24:
    .long	0
    .long	1139802112
LC25:
    .long	0
    .long	1138753536
LC26:
    .long	4294967295
    .long	4294967295
    .long	16446
    .long	0
LC27:
    .long	4294967294
    .long	4294967295
    .long	16445
    .long	0
LC28:
    .long	0
    .long	2147483648
    .long	16446
    .long	0
LC29:
    .long	3741319168
LC30:
    .long	0
    .long	-1008730112
LC31:
    .long	0
    .long	2147483648
    .long	49214
    .long	0
LC32:
    .long	1065336439
LC33:
    .long	1065353216
LC34:
    .long	1073657938
LC36:
    .long	0
    .long	1072693248
LC38:
    .long	3023656960
    .long	4290672328
    .long	16382
    .long	0
LC40:
    .long	2233382912
    .long	4273492459
    .long	16383
    .long	0
LC41:
    .long	3212820087
LC42:
    .long	3221141586
LC45:
    .long	3023656960
    .long	4290672328
    .long	49150
    .long	0
LC46:
    .long	2233382912
    .long	4273492459
    .long	49151
    .long	0
