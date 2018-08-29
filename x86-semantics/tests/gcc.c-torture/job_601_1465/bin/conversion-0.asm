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
    .globl	u2f
u2f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    testq	%rax, %rax
    js	L58
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rax, %xmm0, %xmm0
    jmp	L60
L58:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
L60:
    popq	%rbp
    ret
    .globl	u2d
u2d:
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
    .globl	u2ld
u2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    testq	%rax, %rax
    js	L66
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L68
L66:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L68:
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
    jp	L82
    vxorps	%xmm0, %xmm0, %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L76
L82:
    vmovss	-20(%rbp), %xmm0
    vdivss	-4(%rbp), %xmm0, %xmm0
    vmovss	LC1(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jbe	L83
L76:
    movl	$1, %eax
    jmp	L80
L83:
    movl	$0, %eax
L80:
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
    jp	L91
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L85
L91:
    vmovsd	-24(%rbp), %xmm0
    vdivsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC3(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L92
L85:
    movl	$1, %eax
    jmp	L89
L92:
    movl	$0, %eax
L89:
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
    jp	L100
    vxorpd	%xmm0, %xmm0, %xmm0
    vucomisd	-8(%rbp), %xmm0
    je	L94
L100:
    vmovsd	-24(%rbp), %xmm0
    vdivsd	-8(%rbp), %xmm0, %xmm0
    vmovsd	LC4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jbe	L101
L94:
    movl	$1, %eax
    jmp	L98
L101:
    movl	$0, %eax
L98:
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
    jp	L139
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L151
L139:
    call	abort
L151:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC5(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L105
    call	abort
L105:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC6(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L106
    call	abort
L106:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2f
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L140
    vmovss	LC6(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L152
L140:
    call	abort
L152:
    movl	$0, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L141
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L153
L141:
    call	abort
L153:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L111
    call	abort
L111:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L112
    call	abort
L112:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2d
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L142
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L154
L142:
    call	abort
L154:
    movl	$0, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L143
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L155
L143:
    call	abort
L155:
    movl	$-1, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC7(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L117
    call	abort
L117:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L118
    call	abort
L118:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	u2ld
    vmovq	%xmm0, %rax
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L144
    vmovsd	LC9(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L156
L144:
    call	abort
L156:
    movl	$0, %edi
    movl	$0, %eax
    call	s2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L145
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L157
L145:
    call	abort
L157:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC10(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L123
    call	abort
L123:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC6(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L124
    call	abort
L124:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2f
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L146
    vmovss	LC11(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L158
L146:
    call	abort
L158:
    movl	$0, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L147
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L159
L147:
    call	abort
L159:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L129
    call	abort
L129:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L130
    call	abort
L130:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2d
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L148
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L160
L148:
    call	abort
L160:
    movl	$0, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L149
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L161
L149:
    call	abort
L161:
    movl	$-1, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L135
    call	abort
L135:
    movl	$2147483647, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC8(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L136
    call	abort
L136:
    movl	$-2147483648, %edi
    movl	$0, %eax
    call	s2ld
    vmovq	%xmm0, %rax
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L150
    vmovsd	LC13(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L162
L150:
    call	abort
L162:
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
    js	L164
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rax, %xmm0, %xmm0
    jmp	L166
L164:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm0
L166:
    popq	%rbp
    ret
    .globl	ull2d
ull2d:
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
    .globl	ull2ld
ull2ld:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L172
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rax, %xmm0, %xmm0
    jmp	L174
L172:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sdq	%rdx, %xmm0, %xmm0
    vaddsd	%xmm0, %xmm0, %xmm0
L174:
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
    jp	L225
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L244
L225:
    call	abort
L244:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC14(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L226
    vmovss	LC14(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L245
L226:
    call	abort
L245:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L227
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L246
L227:
    call	abort
L246:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2f
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L228
    vmovss	LC15(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L247
L228:
    call	abort
L247:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L229
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L248
L229:
    call	abort
L248:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L230
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L249
L230:
    call	abort
L249:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L231
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L250
L231:
    call	abort
L250:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L232
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L251
L232:
    call	abort
L251:
    movl	$0, %edi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L233
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L252
L233:
    call	abort
L252:
    movq	$-1, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L234
    vmovsd	LC16(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L253
L234:
    call	abort
L253:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L235
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L254
L235:
    call	abort
L254:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	ull2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L236
    vmovsd	LC17(%rip), %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L255
L236:
    call	abort
L255:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2f
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L237
    vxorps	%xmm1, %xmm1, %xmm1
    vucomiss	%xmm1, %xmm0
    je	L256
L237:
    call	abort
L256:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L238
    vmovss	LC10(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L257
L238:
    call	abort
L257:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC15(%rip), %xmm1
    call	fnear
    testl	%eax, %eax
    jne	L210
    call	abort
L210:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2f
    vmovss	LC18(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    jp	L239
    vmovss	LC18(%rip), %xmm1
    vucomiss	%xmm1, %xmm0
    je	L258
L239:
    call	abort
L258:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L240
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L259
L240:
    call	abort
L259:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm2
    vucomisd	%xmm0, %xmm2
    jp	L241
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm3
    vucomisd	%xmm0, %xmm3
    je	L260
L241:
    call	abort
L260:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L217
    call	abort
L217:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2d
    vmovq	%xmm0, %rax
    vmovsd	LC19(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	dnear
    testl	%eax, %eax
    jne	L218
    call	abort
L218:
    movl	$0, %edi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm4
    vucomisd	%xmm0, %xmm4
    jp	L242
    vxorpd	%xmm0, %xmm0, %xmm0
    vmovq	%rax, %xmm5
    vucomisd	%xmm0, %xmm5
    je	L261
L242:
    call	abort
L261:
    movq	$-1, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm6
    vucomisd	%xmm0, %xmm6
    jp	L243
    vmovsd	LC12(%rip), %xmm0
    vmovq	%rax, %xmm7
    vucomisd	%xmm0, %xmm7
    je	L262
L243:
    call	abort
L262:
    movabsq	$9223372036854775807, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC17(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L223
    call	abort
L223:
    movabsq	$-9223372036854775808, %rdi
    movl	$0, %eax
    call	sll2ld
    vmovq	%xmm0, %rax
    vmovsd	LC19(%rip), %xmm0
    vmovapd	%xmm0, %xmm1
    vmovq	%rax, %xmm0
    call	ldnear
    testl	%eax, %eax
    jne	L224
    call	abort
L224:
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
    je	L276
    call	abort
L276:
    vmovss	LC20(%rip), %xmm0
    call	f2u
    testl	%eax, %eax
    je	L277
    call	abort
L277:
    vmovss	LC21(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L278
    call	abort
L278:
    vmovss	LC22(%rip), %xmm0
    call	f2u
    cmpl	$1, %eax
    je	L279
    call	abort
L279:
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$2147483647, %eax
    je	L280
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L280
    call	abort
L280:
    vmovss	LC6(%rip), %xmm0
    call	f2u
    cmpl	$-2147483648, %eax
    je	L281
    call	abort
L281:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L282
    call	abort
L282:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2u
    testl	%eax, %eax
    je	L283
    call	abort
L283:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L284
    call	abort
L284:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$1, %eax
    je	L285
    call	abort
L285:
    movabsq	$4751297606873776128, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-1, %eax
    je	L286
    call	abort
L286:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$2147483647, %eax
    je	L287
    call	abort
L287:
    movabsq	$4746794007248502784, %rax
    vmovq	%rax, %xmm0
    call	d2u
    cmpl	$-2147483648, %eax
    je	L288
    call	abort
L288:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2u
    testl	%eax, %eax
    je	L289
    call	abort
L289:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    testl	%eax, %eax
    je	L290
    call	abort
L290:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$1, %eax
    je	L291
    call	abort
L291:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$1, %eax
    je	L292
    call	abort
L292:
    movabsq	$4751297606873776128, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$-1, %eax
    je	L293
    call	abort
L293:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$2147483647, %eax
    je	L294
    call	abort
L294:
    movabsq	$4746794007248502784, %rax
    vmovq	%rax, %xmm0
    call	ld2u
    cmpl	$-2147483648, %eax
    je	L295
    call	abort
L295:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2s
    testl	%eax, %eax
    je	L296
    call	abort
L296:
    vmovss	LC20(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L297
    call	abort
L297:
    vmovss	LC21(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L298
    call	abort
L298:
    vmovss	LC22(%rip), %xmm0
    call	f2s
    cmpl	$1, %eax
    je	L299
    call	abort
L299:
    vmovss	LC26(%rip), %xmm0
    call	f2s
    testl	%eax, %eax
    je	L300
    call	abort
L300:
    vmovss	LC10(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L301
    call	abort
L301:
    vmovss	LC27(%rip), %xmm0
    call	f2s
    cmpl	$-1, %eax
    je	L302
    call	abort
L302:
    vmovss	LC11(%rip), %xmm0
    call	f2s
    cmpl	$-2147483648, %eax
    je	L303
    call	abort
L303:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L304
    call	abort
L304:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L305
    call	abort
L305:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L306
    call	abort
L306:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$1, %eax
    je	L307
    call	abort
L307:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2s
    testl	%eax, %eax
    je	L308
    call	abort
L308:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L309
    call	abort
L309:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-1, %eax
    je	L310
    call	abort
L310:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$2147483647, %eax
    je	L311
    call	abort
L311:
    movabsq	$-4476578029606273024, %rax
    vmovq	%rax, %xmm0
    call	d2s
    cmpl	$-2147483648, %eax
    je	L312
    call	abort
L312:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L313
    call	abort
L313:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L314
    call	abort
L314:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$1, %eax
    je	L315
    call	abort
L315:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$1, %eax
    je	L316
    call	abort
L316:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    testl	%eax, %eax
    je	L317
    call	abort
L317:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-1, %eax
    je	L318
    call	abort
L318:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-1, %eax
    je	L319
    call	abort
L319:
    movabsq	$4746794007244308480, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$2147483647, %eax
    je	L320
    call	abort
L320:
    movabsq	$-4476578029606273024, %rax
    vmovq	%rax, %xmm0
    call	ld2s
    cmpl	$-2147483648, %eax
    je	L321
    call	abort
L321:
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
    jnb	L323
    vmovss	-4(%rbp), %xmm0
    vcvttss2siq	%xmm0, %rax
    jmp	L324
L323:
    vmovss	-4(%rbp), %xmm0
    vmovss	LC15(%rip), %xmm1
    vsubss	%xmm1, %xmm0, %xmm0
    vcvttss2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L324:
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
    .globl	ld2ull
ld2ull:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jnb	L331
    vmovsd	-8(%rbp), %xmm0
    vcvttsd2siq	%xmm0, %rax
    jmp	L332
L331:
    vmovsd	-8(%rbp), %xmm0
    vmovsd	LC17(%rip), %xmm1
    vsubsd	%xmm1, %xmm0, %xmm0
    vcvttsd2siq	%xmm0, %rax
    movabsq	$-9223372036854775808, %rdx
    xorq	%rdx, %rax
L332:
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
    je	L341
    call	abort
L341:
    vmovss	LC20(%rip), %xmm0
    call	f2ull
    testq	%rax, %rax
    je	L342
    call	abort
L342:
    vmovss	LC21(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L343
    call	abort
L343:
    vmovss	LC22(%rip), %xmm0
    call	f2ull
    cmpq	$1, %rax
    je	L344
    call	abort
L344:
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L345
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L345
    call	abort
L345:
    vmovss	LC15(%rip), %xmm0
    call	f2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L346
    call	abort
L346:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L347
    call	abort
L347:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    testq	%rax, %rax
    je	L348
    call	abort
L348:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L349
    call	abort
L349:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    cmpq	$1, %rax
    je	L350
    call	abort
L350:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L351
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L351
    call	abort
L351:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	d2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L352
    call	abort
L352:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2ull
    testq	%rax, %rax
    je	L353
    call	abort
L353:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    testq	%rax, %rax
    je	L354
    call	abort
L354:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    cmpq	$1, %rax
    je	L355
    call	abort
L355:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    cmpq	$1, %rax
    je	L356
    call	abort
L356:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$9223372036854775807, %rax
    cmpq	%rax, %rdx
    je	L357
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L357
    call	abort
L357:
    movabsq	$4890909195324358656, %rax
    vmovq	%rax, %xmm0
    call	ld2ull
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L358
    call	abort
L358:
    vxorps	%xmm0, %xmm0, %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L359
    call	abort
L359:
    vmovss	LC20(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L360
    call	abort
L360:
    vmovss	LC21(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L361
    call	abort
L361:
    vmovss	LC22(%rip), %xmm0
    call	f2sll
    cmpq	$1, %rax
    je	L362
    call	abort
L362:
    vmovss	LC26(%rip), %xmm0
    call	f2sll
    testq	%rax, %rax
    je	L363
    call	abort
L363:
    vmovss	LC10(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L364
    call	abort
L364:
    vmovss	LC27(%rip), %xmm0
    call	f2sll
    cmpq	$-1, %rax
    je	L365
    call	abort
L365:
    vmovss	LC18(%rip), %xmm0
    call	f2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L366
    call	abort
L366:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L367
    call	abort
L367:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L368
    call	abort
L368:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L369
    call	abort
L369:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$1, %rax
    je	L370
    call	abort
L370:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    testq	%rax, %rax
    je	L371
    call	abort
L371:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L372
    call	abort
L372:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    cmpq	$-1, %rax
    je	L373
    call	abort
L373:
    movabsq	$-4332462841530417152, %rax
    vmovq	%rax, %xmm0
    call	d2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L374
    call	abort
L374:
    vxorpd	%xmm0, %xmm0, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L375
    call	abort
L375:
    movabsq	$4607173411600762667, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L376
    call	abort
L376:
    movabsq	$4607182418800017408, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$1, %rax
    je	L377
    call	abort
L377:
    movabsq	$4611640982431114199, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$1, %rax
    je	L378
    call	abort
L378:
    movabsq	$-4616198625254013141, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    testq	%rax, %rax
    je	L379
    call	abort
L379:
    movabsq	$-4616189618054758400, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$-1, %rax
    je	L380
    call	abort
L380:
    movabsq	$-4611731054423661609, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    cmpq	$-1, %rax
    je	L381
    call	abort
L381:
    movabsq	$-4332462841530417152, %rax
    vmovq	%rax, %xmm0
    call	ld2sll
    movq	%rax, %rdx
    movabsq	$-9223372036854775808, %rax
    cmpq	%rax, %rdx
    je	L382
    call	abort
L382:
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
