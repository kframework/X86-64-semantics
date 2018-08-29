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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .comm	pinf,4,4
    .comm	ninf,4,4
    .comm	NaN,4,4
    .globl	iuneq
iuneq:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L46
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L47
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L47
L46:
    movl	$1, %eax
    jmp	L49
L47:
    movl	$0, %eax
L49:
    cmpl	-12(%rbp), %eax
    je	L50
    call	abort
L50:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    sete	%al
    movzbl	%al, %eax
    cmpl	-12(%rbp), %eax
    je	L51
    call	abort
L51:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L52
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L53
L52:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L55
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L53
L55:
    movl	$1, %eax
    jmp	L57
L53:
    movl	$0, %eax
L57:
    cmpl	-12(%rbp), %eax
    je	L58
    call	abort
L58:
    nop
    leave
    ret
    .globl	ieq
ieq:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L60
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L61
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L60
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L60
L61:
    movl	$1, %eax
    jmp	L63
L60:
    movl	$0, %eax
L63:
    cmpl	-12(%rbp), %eax
    je	L64
    call	abort
L64:
    nop
    leave
    ret
    .globl	iltgt
iltgt:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L66
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L76
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L66
L76:
    movl	$1, %eax
    jmp	L68
L66:
    movl	$0, %eax
L68:
    cmpl	-12(%rbp), %eax
    je	L69
    call	abort
L69:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    sete	%al
    xorl	$1, %eax
    movzbl	%al, %eax
    cmpl	-12(%rbp), %eax
    je	L70
    call	abort
L70:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L71
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L72
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L72
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L72
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L71
L72:
    movl	$1, %eax
    jmp	L74
L71:
    movl	$0, %eax
L74:
    cmpl	-12(%rbp), %eax
    je	L75
    call	abort
L75:
    nop
    leave
    ret
    .globl	ine
ine:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L78
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L78
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L78
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L83
L78:
    movl	$1, %eax
    jmp	L81
L83:
    movl	$0, %eax
L81:
    cmpl	-12(%rbp), %eax
    je	L82
    call	abort
L82:
    nop
    leave
    ret
    .globl	iunlt
iunlt:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L85
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L95
L85:
    movl	$1, %eax
    jmp	L88
L95:
    movl	$0, %eax
L88:
    cmpl	-12(%rbp), %eax
    je	L89
    call	abort
L89:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L90
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L96
L90:
    movl	$1, %eax
    jmp	L93
L96:
    movl	$0, %eax
L93:
    cmpl	-12(%rbp), %eax
    je	L94
    call	abort
L94:
    nop
    leave
    ret
    .globl	ilt
ilt:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L98
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L99
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L98
L99:
    movl	$1, %eax
    jmp	L101
L98:
    movl	$0, %eax
L101:
    cmpl	-12(%rbp), %eax
    je	L102
    call	abort
L102:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L103
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L124
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L103
L124:
    movl	$1, %eax
    jmp	L106
L103:
    movl	$0, %eax
L106:
    cmpl	-12(%rbp), %eax
    je	L107
    call	abort
L107:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L108
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L126
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L108
L126:
    movl	$1, %eax
    jmp	L111
L108:
    movl	$0, %eax
L111:
    cmpl	-12(%rbp), %eax
    je	L112
    call	abort
L112:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L127
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L113
L127:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L113
    movl	$1, %eax
    jmp	L116
L113:
    movl	$0, %eax
L116:
    cmpl	-12(%rbp), %eax
    je	L117
    call	abort
L117:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L129
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L118
L129:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L118
    movl	$1, %eax
    jmp	L121
L118:
    movl	$0, %eax
L121:
    cmpl	-12(%rbp), %eax
    je	L122
    call	abort
L122:
    nop
    leave
    ret
    .globl	iunle
iunle:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L132
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L142
L132:
    movl	$1, %eax
    jmp	L135
L142:
    movl	$0, %eax
L135:
    cmpl	-12(%rbp), %eax
    je	L136
    call	abort
L136:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L137
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L143
L137:
    movl	$1, %eax
    jmp	L140
L143:
    movl	$0, %eax
L140:
    cmpl	-12(%rbp), %eax
    je	L141
    call	abort
L141:
    nop
    leave
    ret
    .globl	ile
ile:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L145
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L146
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L145
L146:
    movl	$1, %eax
    jmp	L148
L145:
    movl	$0, %eax
L148:
    cmpl	-12(%rbp), %eax
    je	L149
    call	abort
L149:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L150
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L151
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L151
L150:
    movl	$1, %eax
    jmp	L153
L151:
    movl	$0, %eax
L153:
    cmpl	-12(%rbp), %eax
    je	L154
    call	abort
L154:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L155
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L156
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L156
L155:
    movl	$1, %eax
    jmp	L158
L156:
    movl	$0, %eax
L158:
    cmpl	-12(%rbp), %eax
    je	L159
    call	abort
L159:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L172
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L160
L172:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L174
L160:
    movl	$1, %eax
    jmp	L164
L174:
    movl	$0, %eax
L164:
    cmpl	-12(%rbp), %eax
    je	L165
    call	abort
L165:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L173
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L166
L173:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L175
L166:
    movl	$1, %eax
    jmp	L170
L175:
    movl	$0, %eax
L170:
    cmpl	-12(%rbp), %eax
    je	L171
    call	abort
L171:
    nop
    leave
    ret
    .globl	iungt
iungt:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L177
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L187
L177:
    movl	$1, %eax
    jmp	L180
L187:
    movl	$0, %eax
L180:
    cmpl	-12(%rbp), %eax
    je	L181
    call	abort
L181:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L182
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L188
L182:
    movl	$1, %eax
    jmp	L185
L188:
    movl	$0, %eax
L185:
    cmpl	-12(%rbp), %eax
    je	L186
    call	abort
L186:
    nop
    leave
    ret
    .globl	igt
igt:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L190
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L191
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L190
L191:
    movl	$1, %eax
    jmp	L193
L190:
    movl	$0, %eax
L193:
    cmpl	-12(%rbp), %eax
    je	L194
    call	abort
L194:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L195
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L216
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L195
L216:
    movl	$1, %eax
    jmp	L198
L195:
    movl	$0, %eax
L198:
    cmpl	-12(%rbp), %eax
    je	L199
    call	abort
L199:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L200
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L218
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L200
L218:
    movl	$1, %eax
    jmp	L203
L200:
    movl	$0, %eax
L203:
    cmpl	-12(%rbp), %eax
    je	L204
    call	abort
L204:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L219
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L205
L219:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L205
    movl	$1, %eax
    jmp	L208
L205:
    movl	$0, %eax
L208:
    cmpl	-12(%rbp), %eax
    je	L209
    call	abort
L209:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L221
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L210
L221:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L210
    movl	$1, %eax
    jmp	L213
L210:
    movl	$0, %eax
L213:
    cmpl	-12(%rbp), %eax
    je	L214
    call	abort
L214:
    nop
    leave
    ret
    .globl	iunge
iunge:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L224
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L234
L224:
    movl	$1, %eax
    jmp	L227
L234:
    movl	$0, %eax
L227:
    cmpl	-12(%rbp), %eax
    je	L228
    call	abort
L228:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L229
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L235
L229:
    movl	$1, %eax
    jmp	L232
L235:
    movl	$0, %eax
L232:
    cmpl	-12(%rbp), %eax
    je	L233
    call	abort
L233:
    nop
    leave
    ret
    .globl	ige
ige:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vmovss	%xmm0, -4(%rbp)
    vmovss	%xmm1, -8(%rbp)
    movl	%edi, -12(%rbp)
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L237
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L238
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L237
L238:
    movl	$1, %eax
    jmp	L240
L237:
    movl	$0, %eax
L240:
    cmpl	-12(%rbp), %eax
    je	L241
    call	abort
L241:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L242
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L243
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L243
L242:
    movl	$1, %eax
    jmp	L245
L243:
    movl	$0, %eax
L245:
    cmpl	-12(%rbp), %eax
    je	L246
    call	abort
L246:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L247
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L248
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L248
L247:
    movl	$1, %eax
    jmp	L250
L248:
    movl	$0, %eax
L250:
    cmpl	-12(%rbp), %eax
    je	L251
    call	abort
L251:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L264
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L252
L264:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L266
L252:
    movl	$1, %eax
    jmp	L256
L266:
    movl	$0, %eax
L256:
    cmpl	-12(%rbp), %eax
    je	L257
    call	abort
L257:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L265
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L258
L265:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L267
L258:
    movl	$1, %eax
    jmp	L262
L267:
    movl	$0, %eax
L262:
    cmpl	-12(%rbp), %eax
    je	L263
    call	abort
L263:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	LC0(%rip), %xmm0
    vmovss	%xmm0, pinf(%rip)
    vmovss	LC1(%rip), %xmm0
    vmovss	%xmm0, ninf(%rip)
    vmovss	LC2(%rip), %xmm0
    vmovss	%xmm0, NaN(%rip)
    vmovss	pinf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    vmovss	NaN(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    vmovss	ninf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iuneq
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	ieq
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	ieq
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	ieq
    vmovss	pinf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    vmovss	NaN(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    vmovss	ninf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iltgt
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	ine
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	ine
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	ine
    vmovss	ninf(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss	NaN(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss	ninf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss	pinf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss	ninf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iunlt
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iunlt
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iunlt
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	ilt
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	ilt
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	ilt
    vmovss	ninf(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss	NaN(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss	ninf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss	pinf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss	ninf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iunle
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	ile
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	ile
    movl	$0, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	ile
    vmovss	ninf(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss	NaN(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss	ninf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss	pinf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss	ninf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iungt
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	igt
    movl	$0, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	igt
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	igt
    vmovss	ninf(%rip), %xmm0
    movl	NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss	NaN(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss	pinf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss	pinf(%rip), %xmm0
    movl	pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss	ninf(%rip), %xmm0
    movl	ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	iunge
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	iunge
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	iunge
    movl	$0, %edi
    vmovss	LC3(%rip), %xmm1
    vmovss	LC4(%rip), %xmm0
    call	ige
    movl	$1, %edi
    vmovss	LC5(%rip), %xmm1
    vmovss	LC5(%rip), %xmm0
    call	ige
    movl	$1, %edi
    vmovss	LC6(%rip), %xmm1
    vmovss	LC7(%rip), %xmm0
    call	ige
    movl	$0, %eax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .long	2139095040
LC1:
    .long	4286578688
LC2:
    .long	2143289344
LC3:
    .long	1082130432
LC4:
    .long	1065353216
LC5:
    .long	1077936128
LC6:
    .long	1073741824
LC7:
    .long	1084227584
