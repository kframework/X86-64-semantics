	.comm	pinf,4,4
	.comm	ninf,4,4
	.comm	NaN,4,4
iuneq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L2
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	ja	L2
	movl	$1, %eax
	jmp	L5
L2:
	movl	$0, %eax
L5:
	cmpl	-12(%rbp), %eax
	je	L6
	call	abort
L6:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L7
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	ja	L7
	movl	$1, %eax
	jmp	L10
L7:
	movl	$0, %eax
L10:
	cmpl	-12(%rbp), %eax
	je	L11
	call	abort
L11:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jnb	L12
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jnp	L13
L12:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnb	L14
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jnp	L13
L14:
	movl	$1, %eax
	jmp	L15
L13:
	movl	$0, %eax
L15:
	cmpl	-12(%rbp), %eax
	je	L16
	call	abort
L16:
	leave
	ret
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L22
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L23
L22:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L23
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	ja	L23
	movl	$1, %eax
	jmp	L27
L23:
	movl	$0, %eax
L27:
	cmpl	-12(%rbp), %eax
	je	L28
	call	abort
L28:
	leave
	ret
iltgt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L32
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jbe	L48
L32:
	movl	$1, %eax
	jmp	L35
L48:
	movl	$0, %eax
L35:
	cmpl	-12(%rbp), %eax
	je	L36
	call	abort
L36:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L37
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jbe	L49
L37:
	movl	$1, %eax
	jmp	L40
L49:
	movl	$0, %eax
L40:
	cmpl	-12(%rbp), %eax
	je	L41
	call	abort
L41:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	ja	L42
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jb	L43
L42:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	L45
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jp	L45
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	ja	L45
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jnp	L43
L45:
	movl	$1, %eax
	jmp	L46
L43:
	movl	$0, %eax
L46:
	cmpl	-12(%rbp), %eax
	je	L47
	call	abort
L47:
	leave
	ret
ine:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L51
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L51
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	ja	L51
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jnp	L52
L51:
	movl	$1, %eax
	jmp	L53
L52:
	movl	$0, %eax
L53:
	cmpl	-12(%rbp), %eax
	je	L54
	call	abort
L54:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	ja	L55
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	ja	L55
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	L56
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jnb	L56
L55:
	movl	$1, %eax
	jmp	L59
L56:
	movl	$0, %eax
L59:
	cmpl	-12(%rbp), %eax
	je	L60
	call	abort
L60:
	leave
	ret
iunlt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L63
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jnp	L64
L63:
	movl	$1, %eax
	jmp	L65
L64:
	movl	$0, %eax
L65:
	cmpl	-12(%rbp), %eax
	je	L66
	call	abort
L66:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L67
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L69
L67:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jbe	L75
L69:
	movl	$1, %eax
	jmp	L72
L75:
	movl	$0, %eax
L72:
	cmpl	-12(%rbp), %eax
	je	L73
	call	abort
L73:
	leave
	ret
ilt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L77
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L78
L77:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L80
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jnp	L78
L80:
	movl	$1, %eax
	jmp	L81
L78:
	movl	$0, %eax
L81:
	cmpl	-12(%rbp), %eax
	je	L82
	call	abort
L82:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jb	L83
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jp	L104
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	L83
L104:
	movl	$1, %eax
	jmp	L86
L83:
	movl	$0, %eax
L86:
	cmpl	-12(%rbp), %eax
	je	L87
	call	abort
L87:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	jb	L88
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jp	L106
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	je	L88
L106:
	movl	$1, %eax
	jmp	L91
L88:
	movl	$0, %eax
L91:
	cmpl	-12(%rbp), %eax
	je	L92
	call	abort
L92:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L107
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L93
L107:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jb	L93
	movl	$1, %eax
	jmp	L96
L93:
	movl	$0, %eax
L96:
	cmpl	-12(%rbp), %eax
	je	L97
	call	abort
L97:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	jp	L109
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	L98
L109:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	jb	L98
	movl	$1, %eax
	jmp	L101
L98:
	movl	$0, %eax
L101:
	cmpl	-12(%rbp), %eax
	je	L102
	call	abort
L102:
	leave
	ret
iunle:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jnb	L112
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jnp	L113
L112:
	movl	$1, %eax
	jmp	L114
L113:
	movl	$0, %eax
L114:
	cmpl	-12(%rbp), %eax
	je	L115
	call	abort
L115:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L116
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L118
L116:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jb	L124
L118:
	movl	$1, %eax
	jmp	L121
L124:
	movl	$0, %eax
L121:
	cmpl	-12(%rbp), %eax
	je	L122
	call	abort
L122:
	leave
	ret
ile:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L126
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L127
L126:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jnb	L129
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jnp	L127
L129:
	movl	$1, %eax
	jmp	L130
L127:
	movl	$0, %eax
L130:
	cmpl	-12(%rbp), %eax
	je	L131
	call	abort
L131:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	ja	L132
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jp	L133
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	L133
L132:
	movl	$1, %eax
	jmp	L135
L133:
	movl	$0, %eax
L135:
	cmpl	-12(%rbp), %eax
	je	L136
	call	abort
L136:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	ja	L137
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L138
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jne	L138
L137:
	movl	$1, %eax
	jmp	L140
L138:
	movl	$0, %eax
L140:
	cmpl	-12(%rbp), %eax
	je	L141
	call	abort
L141:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L154
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L142
L154:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jbe	L156
L142:
	movl	$1, %eax
	jmp	L146
L156:
	movl	$0, %eax
L146:
	cmpl	-12(%rbp), %eax
	je	L147
	call	abort
L147:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	jp	L155
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	L148
L155:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	jbe	L157
L148:
	movl	$1, %eax
	jmp	L152
L157:
	movl	$0, %eax
L152:
	cmpl	-12(%rbp), %eax
	je	L153
	call	abort
L153:
	leave
	ret
iungt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	ja	L159
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jnp	L160
L159:
	movl	$1, %eax
	jmp	L161
L160:
	movl	$0, %eax
L161:
	cmpl	-12(%rbp), %eax
	je	L162
	call	abort
L162:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L163
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L165
L163:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jbe	L171
L165:
	movl	$1, %eax
	jmp	L168
L171:
	movl	$0, %eax
L168:
	cmpl	-12(%rbp), %eax
	je	L169
	call	abort
L169:
	leave
	ret
igt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L173
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L174
L173:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	ja	L176
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jnp	L174
L176:
	movl	$1, %eax
	jmp	L177
L174:
	movl	$0, %eax
L177:
	cmpl	-12(%rbp), %eax
	je	L178
	call	abort
L178:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jb	L179
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jp	L200
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	L179
L200:
	movl	$1, %eax
	jmp	L182
L179:
	movl	$0, %eax
L182:
	cmpl	-12(%rbp), %eax
	je	L183
	call	abort
L183:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jb	L184
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jp	L202
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	je	L184
L202:
	movl	$1, %eax
	jmp	L187
L184:
	movl	$0, %eax
L187:
	cmpl	-12(%rbp), %eax
	je	L188
	call	abort
L188:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L203
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L189
L203:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jb	L189
	movl	$1, %eax
	jmp	L192
L189:
	movl	$0, %eax
L192:
	cmpl	-12(%rbp), %eax
	je	L193
	call	abort
L193:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	jp	L205
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	L194
L205:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jb	L194
	movl	$1, %eax
	jmp	L197
L194:
	movl	$0, %eax
L197:
	cmpl	-12(%rbp), %eax
	je	L198
	call	abort
L198:
	leave
	ret
iunge:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jnb	L208
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jnp	L209
L208:
	movl	$1, %eax
	jmp	L210
L209:
	movl	$0, %eax
L210:
	cmpl	-12(%rbp), %eax
	je	L211
	call	abort
L211:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	ja	L212
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L214
L212:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jb	L220
L214:
	movl	$1, %eax
	jmp	L217
L220:
	movl	$0, %eax
L217:
	cmpl	-12(%rbp), %eax
	je	L218
	call	abort
L218:
	leave
	ret
ige:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	ja	L222
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L223
L222:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jnb	L225
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jnp	L223
L225:
	movl	$1, %eax
	jmp	L226
L223:
	movl	$0, %eax
L226:
	cmpl	-12(%rbp), %eax
	je	L227
	call	abort
L227:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	ja	L228
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jp	L229
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	L229
L228:
	movl	$1, %eax
	jmp	L231
L229:
	movl	$0, %eax
L231:
	cmpl	-12(%rbp), %eax
	je	L232
	call	abort
L232:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	ja	L233
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L234
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jne	L234
L233:
	movl	$1, %eax
	jmp	L236
L234:
	movl	$0, %eax
L236:
	cmpl	-12(%rbp), %eax
	je	L237
	call	abort
L237:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L250
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L238
L250:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jbe	L252
L238:
	movl	$1, %eax
	jmp	L242
L252:
	movl	$0, %eax
L242:
	cmpl	-12(%rbp), %eax
	je	L243
	call	abort
L243:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	jp	L251
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	L244
L251:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jbe	L253
L244:
	movl	$1, %eax
	jmp	L248
L253:
	movl	$0, %eax
L248:
	cmpl	-12(%rbp), %eax
	je	L249
	call	abort
L249:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC0(%rip), %eax
	movl	%eax, pinf(%rip)
	movl	LC1(%rip), %eax
	movl	%eax, ninf(%rip)
	movl	LC2(%rip), %eax
	movl	%eax, NaN(%rip)
	movl	pinf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iuneq
	movl	NaN(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iuneq
	movl	ninf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
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
	movl	pinf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iltgt
	movl	NaN(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iltgt
	movl	ninf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
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
	movl	ninf(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	movl	NaN(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	movl	ninf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	movl	pinf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	movl	ninf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
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
	movl	ninf(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	movl	NaN(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	movl	ninf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	movl	pinf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	movl	ninf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
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
	movl	ninf(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	movl	NaN(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	movl	ninf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	movl	pinf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	movl	ninf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
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
	movl	ninf(%rip), %edx
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	movl	NaN(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	movl	pinf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	movl	pinf(%rip), %edx
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	movl	ninf(%rip), %edx
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovd	%edx, %xmm1
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
