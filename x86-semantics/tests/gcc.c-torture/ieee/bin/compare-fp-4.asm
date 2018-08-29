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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L46
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L46
    movl	$1, %eax
    jmp	L49
L46:
    movl	$0, %eax
L49:
    cmpl	-12(%rbp), %eax
    je	L50
    call	abort
L50:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L51
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L51
    movl	$1, %eax
    jmp	L54
L51:
    movl	$0, %eax
L54:
    cmpl	-12(%rbp), %eax
    je	L55
    call	abort
L55:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jnb	L56
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L57
L56:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnb	L58
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L57
L58:
    movl	$1, %eax
    jmp	L59
L57:
    movl	$0, %eax
L59:
    cmpl	-12(%rbp), %eax
    je	L60
    call	abort
L60:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L66
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L67
L66:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L67
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L67
    movl	$1, %eax
    jmp	L71
L67:
    movl	$0, %eax
L71:
    cmpl	-12(%rbp), %eax
    je	L72
    call	abort
L72:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L76
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L92
L76:
    movl	$1, %eax
    jmp	L79
L92:
    movl	$0, %eax
L79:
    cmpl	-12(%rbp), %eax
    je	L80
    call	abort
L80:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L81
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L93
L81:
    movl	$1, %eax
    jmp	L84
L93:
    movl	$0, %eax
L84:
    cmpl	-12(%rbp), %eax
    je	L85
    call	abort
L85:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L86
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L87
L86:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L89
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L89
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L89
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L87
L89:
    movl	$1, %eax
    jmp	L90
L87:
    movl	$0, %eax
L90:
    cmpl	-12(%rbp), %eax
    je	L91
    call	abort
L91:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L95
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L95
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L95
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L96
L95:
    movl	$1, %eax
    jmp	L97
L96:
    movl	$0, %eax
L97:
    cmpl	-12(%rbp), %eax
    je	L98
    call	abort
L98:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L99
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L99
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L100
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnb	L100
L99:
    movl	$1, %eax
    jmp	L103
L100:
    movl	$0, %eax
L103:
    cmpl	-12(%rbp), %eax
    je	L104
    call	abort
L104:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L107
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L108
L107:
    movl	$1, %eax
    jmp	L109
L108:
    movl	$0, %eax
L109:
    cmpl	-12(%rbp), %eax
    je	L110
    call	abort
L110:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L111
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L113
L111:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L119
L113:
    movl	$1, %eax
    jmp	L116
L119:
    movl	$0, %eax
L116:
    cmpl	-12(%rbp), %eax
    je	L117
    call	abort
L117:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L121
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L122
L121:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L124
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L122
L124:
    movl	$1, %eax
    jmp	L125
L122:
    movl	$0, %eax
L125:
    cmpl	-12(%rbp), %eax
    je	L126
    call	abort
L126:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L127
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L148
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L127
L148:
    movl	$1, %eax
    jmp	L130
L127:
    movl	$0, %eax
L130:
    cmpl	-12(%rbp), %eax
    je	L131
    call	abort
L131:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L132
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L150
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L132
L150:
    movl	$1, %eax
    jmp	L135
L132:
    movl	$0, %eax
L135:
    cmpl	-12(%rbp), %eax
    je	L136
    call	abort
L136:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L151
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L137
L151:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L137
    movl	$1, %eax
    jmp	L140
L137:
    movl	$0, %eax
L140:
    cmpl	-12(%rbp), %eax
    je	L141
    call	abort
L141:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L153
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L142
L153:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L142
    movl	$1, %eax
    jmp	L145
L142:
    movl	$0, %eax
L145:
    cmpl	-12(%rbp), %eax
    je	L146
    call	abort
L146:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jnb	L156
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L157
L156:
    movl	$1, %eax
    jmp	L158
L157:
    movl	$0, %eax
L158:
    cmpl	-12(%rbp), %eax
    je	L159
    call	abort
L159:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L160
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L162
L160:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jb	L168
L162:
    movl	$1, %eax
    jmp	L165
L168:
    movl	$0, %eax
L165:
    cmpl	-12(%rbp), %eax
    je	L166
    call	abort
L166:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L170
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L171
L170:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jnb	L173
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L171
L173:
    movl	$1, %eax
    jmp	L174
L171:
    movl	$0, %eax
L174:
    cmpl	-12(%rbp), %eax
    je	L175
    call	abort
L175:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L176
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L177
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L177
L176:
    movl	$1, %eax
    jmp	L179
L177:
    movl	$0, %eax
L179:
    cmpl	-12(%rbp), %eax
    je	L180
    call	abort
L180:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L181
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L182
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L182
L181:
    movl	$1, %eax
    jmp	L184
L182:
    movl	$0, %eax
L184:
    cmpl	-12(%rbp), %eax
    je	L185
    call	abort
L185:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L198
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L186
L198:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L200
L186:
    movl	$1, %eax
    jmp	L190
L200:
    movl	$0, %eax
L190:
    cmpl	-12(%rbp), %eax
    je	L191
    call	abort
L191:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L199
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L192
L199:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jbe	L201
L192:
    movl	$1, %eax
    jmp	L196
L201:
    movl	$0, %eax
L196:
    cmpl	-12(%rbp), %eax
    je	L197
    call	abort
L197:
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
    ja	L203
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L204
L203:
    movl	$1, %eax
    jmp	L205
L204:
    movl	$0, %eax
L205:
    cmpl	-12(%rbp), %eax
    je	L206
    call	abort
L206:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L207
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L209
L207:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L215
L209:
    movl	$1, %eax
    jmp	L212
L215:
    movl	$0, %eax
L212:
    cmpl	-12(%rbp), %eax
    je	L213
    call	abort
L213:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L217
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L218
L217:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L220
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L218
L220:
    movl	$1, %eax
    jmp	L221
L218:
    movl	$0, %eax
L221:
    cmpl	-12(%rbp), %eax
    je	L222
    call	abort
L222:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L223
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L244
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L223
L244:
    movl	$1, %eax
    jmp	L226
L223:
    movl	$0, %eax
L226:
    cmpl	-12(%rbp), %eax
    je	L227
    call	abort
L227:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L228
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L246
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L228
L246:
    movl	$1, %eax
    jmp	L231
L228:
    movl	$0, %eax
L231:
    cmpl	-12(%rbp), %eax
    je	L232
    call	abort
L232:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L247
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L233
L247:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L233
    movl	$1, %eax
    jmp	L236
L233:
    movl	$0, %eax
L236:
    cmpl	-12(%rbp), %eax
    je	L237
    call	abort
L237:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L249
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L238
L249:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L238
    movl	$1, %eax
    jmp	L241
L238:
    movl	$0, %eax
L241:
    cmpl	-12(%rbp), %eax
    je	L242
    call	abort
L242:
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
    jnb	L252
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L253
L252:
    movl	$1, %eax
    jmp	L254
L253:
    movl	$0, %eax
L254:
    cmpl	-12(%rbp), %eax
    je	L255
    call	abort
L255:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L256
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L258
L256:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L264
L258:
    movl	$1, %eax
    jmp	L261
L264:
    movl	$0, %eax
L261:
    cmpl	-12(%rbp), %eax
    je	L262
    call	abort
L262:
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
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    ja	L266
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jb	L267
L266:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnb	L269
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jnp	L267
L269:
    movl	$1, %eax
    jmp	L270
L267:
    movl	$0, %eax
L270:
    cmpl	-12(%rbp), %eax
    je	L271
    call	abort
L271:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L272
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L273
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L273
L272:
    movl	$1, %eax
    jmp	L275
L273:
    movl	$0, %eax
L275:
    cmpl	-12(%rbp), %eax
    je	L276
    call	abort
L276:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    ja	L277
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L278
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jne	L278
L277:
    movl	$1, %eax
    jmp	L280
L278:
    movl	$0, %eax
L280:
    cmpl	-12(%rbp), %eax
    je	L281
    call	abort
L281:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jp	L294
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    je	L282
L294:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L296
L282:
    movl	$1, %eax
    jmp	L286
L296:
    movl	$0, %eax
L286:
    cmpl	-12(%rbp), %eax
    je	L287
    call	abort
L287:
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    jp	L295
    vmovss	-8(%rbp), %xmm0
    vucomiss	-4(%rbp), %xmm0
    je	L288
L295:
    vmovss	-4(%rbp), %xmm0
    vucomiss	-8(%rbp), %xmm0
    jbe	L297
L288:
    movl	$1, %eax
    jmp	L292
L297:
    movl	$0, %eax
L292:
    cmpl	-12(%rbp), %eax
    je	L293
    call	abort
L293:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovss	$LC0(%rip), %xmm0
    vmovss	%xmm0, $pinf(%rip)
    vmovss	$LC1(%rip), %xmm0
    vmovss	%xmm0, $ninf(%rip)
    vmovss	$LC2(%rip), %xmm0
    vmovss	%xmm0, $NaN(%rip)
    vmovss $pinf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    vmovss $NaN(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    vmovss $ninf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iuneq
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iuneq
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	ieq
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	ieq
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	ieq
    vmovss $pinf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    vmovss $NaN(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    vmovss $ninf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iltgt
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iltgt
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	ine
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	ine
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	ine
    vmovss $ninf(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss $NaN(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss $ninf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss $pinf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    vmovss $ninf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunlt
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iunlt
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iunlt
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iunlt
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	ilt
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	ilt
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	ilt
    vmovss $ninf(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss $NaN(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss $ninf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss $pinf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    vmovss $ninf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iunle
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iunle
    movl	$1, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	ile
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	ile
    movl	$0, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	ile
    vmovss $ninf(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss $NaN(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss $ninf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss $pinf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    vmovss $ninf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iungt
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iungt
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	igt
    movl	$0, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	igt
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	igt
    vmovss $ninf(%rip), %xmm0
    movl $NaN(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss $NaN(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss $pinf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$0, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss $pinf(%rip), %xmm0
    movl $pinf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    vmovss $ninf(%rip), %xmm0
    movl $ninf(%rip), %eax
    movl	$1, %edi
    vmovaps	%xmm0, %xmm1
    vmovd	%eax, %xmm0
    call	iunge
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	iunge
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	iunge
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
    call	iunge
    movl	$0, %edi
    vmovss	$LC3(%rip), %xmm1
    vmovss	$LC4(%rip), %xmm0
    call	ige
    movl	$1, %edi
    vmovss	$LC5(%rip), %xmm1
    vmovss	$LC5(%rip), %xmm0
    call	ige
    movl	$1, %edi
    vmovss	$LC6(%rip), %xmm1
    vmovss	$LC7(%rip), %xmm0
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
