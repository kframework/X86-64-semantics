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
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L2
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L3
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jne	L3
L2:
	movl	$1, %eax
	jmp	L5
L3:
	movl	$0, %eax
L5:
	cmpl	-12(%rbp), %eax
	je	L6
	call	abort
L6:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	sete	%al
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	L7
	call	abort
L7:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L8
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	jb	L9
L8:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	L11
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jb	L9
L11:
	movl	$1, %eax
	jmp	L13
L9:
	movl	$0, %eax
L13:
	cmpl	-12(%rbp), %eax
	je	L14
	call	abort
L14:
	leave
	ret
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L16
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L17
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L16
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jne	L16
L17:
	movl	$1, %eax
	jmp	L19
L16:
	movl	$0, %eax
L19:
	cmpl	-12(%rbp), %eax
	je	L20
	call	abort
L20:
	leave
	ret
iltgt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L22
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L32
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	je	L22
L32:
	movl	$1, %eax
	jmp	L24
L22:
	movl	$0, %eax
L24:
	cmpl	-12(%rbp), %eax
	je	L25
	call	abort
L25:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	sete	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	L26
	call	abort
L26:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L27
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jp	L28
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	L28
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jp	L28
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jbe	L27
L28:
	movl	$1, %eax
	jmp	L30
L27:
	movl	$0, %eax
L30:
	cmpl	-12(%rbp), %eax
	je	L31
	call	abort
L31:
	leave
	ret
ine:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L34
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	ja	L34
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L34
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jbe	L39
L34:
	movl	$1, %eax
	jmp	L37
L39:
	movl	$0, %eax
L37:
	cmpl	-12(%rbp), %eax
	je	L38
	call	abort
L38:
	leave
	ret
iunlt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L41
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jbe	L51
L41:
	movl	$1, %eax
	jmp	L44
L51:
	movl	$0, %eax
L44:
	cmpl	-12(%rbp), %eax
	je	L45
	call	abort
L45:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L46
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jbe	L52
L46:
	movl	$1, %eax
	jmp	L49
L52:
	movl	$0, %eax
L49:
	cmpl	-12(%rbp), %eax
	je	L50
	call	abort
L50:
	leave
	ret
ilt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L54
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L55
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jbe	L54
L55:
	movl	$1, %eax
	jmp	L57
L54:
	movl	$0, %eax
L57:
	cmpl	-12(%rbp), %eax
	je	L58
	call	abort
L58:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jb	L59
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L80
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	je	L59
L80:
	movl	$1, %eax
	jmp	L62
L59:
	movl	$0, %eax
L62:
	cmpl	-12(%rbp), %eax
	je	L63
	call	abort
L63:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	L64
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	jp	L82
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	je	L64
L82:
	movl	$1, %eax
	jmp	L67
L64:
	movl	$0, %eax
L67:
	cmpl	-12(%rbp), %eax
	je	L68
	call	abort
L68:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L83
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	je	L69
L83:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jb	L69
	movl	$1, %eax
	jmp	L72
L69:
	movl	$0, %eax
L72:
	cmpl	-12(%rbp), %eax
	je	L73
	call	abort
L73:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jp	L85
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	je	L74
L85:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	L74
	movl	$1, %eax
	jmp	L77
L74:
	movl	$0, %eax
L77:
	cmpl	-12(%rbp), %eax
	je	L78
	call	abort
L78:
	leave
	ret
iunle:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L88
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jb	L98
L88:
	movl	$1, %eax
	jmp	L91
L98:
	movl	$0, %eax
L91:
	cmpl	-12(%rbp), %eax
	je	L92
	call	abort
L92:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L93
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jb	L99
L93:
	movl	$1, %eax
	jmp	L96
L99:
	movl	$0, %eax
L96:
	cmpl	-12(%rbp), %eax
	je	L97
	call	abort
L97:
	leave
	ret
ile:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L101
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L102
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jb	L101
L102:
	movl	$1, %eax
	jmp	L104
L101:
	movl	$0, %eax
L104:
	cmpl	-12(%rbp), %eax
	je	L105
	call	abort
L105:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	ja	L106
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L107
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jne	L107
L106:
	movl	$1, %eax
	jmp	L109
L107:
	movl	$0, %eax
L109:
	cmpl	-12(%rbp), %eax
	je	L110
	call	abort
L110:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	L111
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jp	L112
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jne	L112
L111:
	movl	$1, %eax
	jmp	L114
L112:
	movl	$0, %eax
L114:
	cmpl	-12(%rbp), %eax
	je	L115
	call	abort
L115:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L128
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	je	L116
L128:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jbe	L130
L116:
	movl	$1, %eax
	jmp	L120
L130:
	movl	$0, %eax
L120:
	cmpl	-12(%rbp), %eax
	je	L121
	call	abort
L121:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jp	L129
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	je	L122
L129:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	L131
L122:
	movl	$1, %eax
	jmp	L126
L131:
	movl	$0, %eax
L126:
	cmpl	-12(%rbp), %eax
	je	L127
	call	abort
L127:
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
	jp	L133
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jbe	L143
L133:
	movl	$1, %eax
	jmp	L136
L143:
	movl	$0, %eax
L136:
	cmpl	-12(%rbp), %eax
	je	L137
	call	abort
L137:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L138
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jbe	L144
L138:
	movl	$1, %eax
	jmp	L141
L144:
	movl	$0, %eax
L141:
	cmpl	-12(%rbp), %eax
	je	L142
	call	abort
L142:
	leave
	ret
igt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L146
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L147
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jbe	L146
L147:
	movl	$1, %eax
	jmp	L149
L146:
	movl	$0, %eax
L149:
	cmpl	-12(%rbp), %eax
	je	L150
	call	abort
L150:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L151
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L172
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	je	L151
L172:
	movl	$1, %eax
	jmp	L154
L151:
	movl	$0, %eax
L154:
	cmpl	-12(%rbp), %eax
	je	L155
	call	abort
L155:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	L156
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	jp	L174
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	je	L156
L174:
	movl	$1, %eax
	jmp	L159
L156:
	movl	$0, %eax
L159:
	cmpl	-12(%rbp), %eax
	je	L160
	call	abort
L160:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L175
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	je	L161
L175:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L161
	movl	$1, %eax
	jmp	L164
L161:
	movl	$0, %eax
L164:
	cmpl	-12(%rbp), %eax
	je	L165
	call	abort
L165:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jp	L177
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	je	L166
L177:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	L166
	movl	$1, %eax
	jmp	L169
L166:
	movl	$0, %eax
L169:
	cmpl	-12(%rbp), %eax
	je	L170
	call	abort
L170:
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
	jp	L180
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jb	L190
L180:
	movl	$1, %eax
	jmp	L183
L190:
	movl	$0, %eax
L183:
	cmpl	-12(%rbp), %eax
	je	L184
	call	abort
L184:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L185
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jb	L191
L185:
	movl	$1, %eax
	jmp	L188
L191:
	movl	$0, %eax
L188:
	cmpl	-12(%rbp), %eax
	je	L189
	call	abort
L189:
	leave
	ret
ige:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jp	L193
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L194
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jb	L193
L194:
	movl	$1, %eax
	jmp	L196
L193:
	movl	$0, %eax
L196:
	cmpl	-12(%rbp), %eax
	je	L197
	call	abort
L197:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	ja	L198
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-8(%rbp), %xmm6
	jp	L199
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-8(%rbp), %xmm7
	jne	L199
L198:
	movl	$1, %eax
	jmp	L201
L199:
	movl	$0, %eax
L201:
	cmpl	-12(%rbp), %eax
	je	L202
	call	abort
L202:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	L203
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	-8(%rbp), %xmm1
	jp	L204
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	jne	L204
L203:
	movl	$1, %eax
	jmp	L206
L204:
	movl	$0, %eax
L206:
	cmpl	-12(%rbp), %eax
	je	L207
	call	abort
L207:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	jp	L220
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	je	L208
L220:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	jbe	L222
L208:
	movl	$1, %eax
	jmp	L212
L222:
	movl	$0, %eax
L212:
	cmpl	-12(%rbp), %eax
	je	L213
	call	abort
L213:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm6
	vucomiss	-4(%rbp), %xmm6
	jp	L221
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vucomiss	-4(%rbp), %xmm7
	je	L214
L221:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	L223
L214:
	movl	$1, %eax
	jmp	L218
L223:
	movl	$0, %eax
L218:
	cmpl	-12(%rbp), %eax
	je	L219
	call	abort
L219:
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
