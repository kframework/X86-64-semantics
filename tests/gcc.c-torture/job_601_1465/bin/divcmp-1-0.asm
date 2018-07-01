strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
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
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test1u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test2u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test3u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$20, %eax
	cmpl	$9, %eax
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test4u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test5u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test7u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test8u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test9u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test10u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test11u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$19, %edi
	call	test1
	testl	%eax, %eax
	je	L74
	call	abort
L74:
	movl	$20, %edi
	call	test1
	cmpl	$1, %eax
	je	L75
	call	abort
L75:
	movl	$29, %edi
	call	test1
	cmpl	$1, %eax
	je	L76
	call	abort
L76:
	movl	$30, %edi
	call	test1
	testl	%eax, %eax
	je	L77
	call	abort
L77:
	movl	$19, %edi
	call	test1u
	testl	%eax, %eax
	je	L78
	call	abort
L78:
	movl	$20, %edi
	call	test1u
	cmpl	$1, %eax
	je	L79
	call	abort
L79:
	movl	$29, %edi
	call	test1u
	cmpl	$1, %eax
	je	L80
	call	abort
L80:
	movl	$30, %edi
	call	test1u
	testl	%eax, %eax
	je	L81
	call	abort
L81:
	movl	$0, %edi
	call	test2
	cmpl	$1, %eax
	je	L82
	call	abort
L82:
	movl	$9, %edi
	call	test2
	cmpl	$1, %eax
	je	L83
	call	abort
L83:
	movl	$10, %edi
	call	test2
	testl	%eax, %eax
	je	L84
	call	abort
L84:
	movl	$-1, %edi
	call	test2
	cmpl	$1, %eax
	je	L85
	call	abort
L85:
	movl	$-9, %edi
	call	test2
	cmpl	$1, %eax
	je	L86
	call	abort
L86:
	movl	$-10, %edi
	call	test2
	testl	%eax, %eax
	je	L87
	call	abort
L87:
	movl	$0, %edi
	call	test2u
	cmpl	$1, %eax
	je	L88
	call	abort
L88:
	movl	$9, %edi
	call	test2u
	cmpl	$1, %eax
	je	L89
	call	abort
L89:
	movl	$10, %edi
	call	test2u
	testl	%eax, %eax
	je	L90
	call	abort
L90:
	movl	$-1, %edi
	call	test2u
	testl	%eax, %eax
	je	L91
	call	abort
L91:
	movl	$-9, %edi
	call	test2u
	testl	%eax, %eax
	je	L92
	call	abort
L92:
	movl	$-10, %edi
	call	test2u
	testl	%eax, %eax
	je	L93
	call	abort
L93:
	movl	$19, %edi
	call	test3
	cmpl	$1, %eax
	je	L94
	call	abort
L94:
	movl	$20, %edi
	call	test3
	testl	%eax, %eax
	je	L95
	call	abort
L95:
	movl	$29, %edi
	call	test3
	testl	%eax, %eax
	je	L96
	call	abort
L96:
	movl	$30, %edi
	call	test3
	cmpl	$1, %eax
	je	L97
	call	abort
L97:
	movl	$19, %edi
	call	test3u
	cmpl	$1, %eax
	je	L98
	call	abort
L98:
	movl	$20, %edi
	call	test3u
	testl	%eax, %eax
	je	L99
	call	abort
L99:
	movl	$29, %edi
	call	test3u
	testl	%eax, %eax
	je	L100
	call	abort
L100:
	movl	$30, %edi
	call	test3u
	cmpl	$1, %eax
	je	L101
	call	abort
L101:
	movl	$0, %edi
	call	test4
	testl	%eax, %eax
	je	L102
	call	abort
L102:
	movl	$9, %edi
	call	test4
	testl	%eax, %eax
	je	L103
	call	abort
L103:
	movl	$10, %edi
	call	test4
	cmpl	$1, %eax
	je	L104
	call	abort
L104:
	movl	$-1, %edi
	call	test4
	testl	%eax, %eax
	je	L105
	call	abort
L105:
	movl	$-9, %edi
	call	test4
	testl	%eax, %eax
	je	L106
	call	abort
L106:
	movl	$-10, %edi
	call	test4
	cmpl	$1, %eax
	je	L107
	call	abort
L107:
	movl	$0, %edi
	call	test4u
	testl	%eax, %eax
	je	L108
	call	abort
L108:
	movl	$9, %edi
	call	test4u
	testl	%eax, %eax
	je	L109
	call	abort
L109:
	movl	$10, %edi
	call	test4u
	cmpl	$1, %eax
	je	L110
	call	abort
L110:
	movl	$-1, %edi
	call	test4u
	cmpl	$1, %eax
	je	L111
	call	abort
L111:
	movl	$-9, %edi
	call	test4u
	cmpl	$1, %eax
	je	L112
	call	abort
L112:
	movl	$-10, %edi
	call	test4u
	cmpl	$1, %eax
	je	L113
	call	abort
L113:
	movl	$19, %edi
	call	test5
	cmpl	$1, %eax
	je	L114
	call	abort
L114:
	movl	$20, %edi
	call	test5
	testl	%eax, %eax
	je	L115
	call	abort
L115:
	movl	$29, %edi
	call	test5
	testl	%eax, %eax
	je	L116
	call	abort
L116:
	movl	$30, %edi
	call	test5
	testl	%eax, %eax
	je	L117
	call	abort
L117:
	movl	$19, %edi
	call	test5u
	cmpl	$1, %eax
	je	L118
	call	abort
L118:
	movl	$20, %edi
	call	test5u
	testl	%eax, %eax
	je	L119
	call	abort
L119:
	movl	$29, %edi
	call	test5u
	testl	%eax, %eax
	je	L120
	call	abort
L120:
	movl	$30, %edi
	call	test5u
	testl	%eax, %eax
	je	L121
	call	abort
L121:
	movl	$0, %edi
	call	test6
	testl	%eax, %eax
	je	L122
	call	abort
L122:
	movl	$9, %edi
	call	test6
	testl	%eax, %eax
	je	L123
	call	abort
L123:
	movl	$10, %edi
	call	test6
	testl	%eax, %eax
	je	L124
	call	abort
L124:
	movl	$-1, %edi
	call	test6
	testl	%eax, %eax
	je	L125
	call	abort
L125:
	movl	$-9, %edi
	call	test6
	testl	%eax, %eax
	je	L126
	call	abort
L126:
	movl	$-10, %edi
	call	test6
	cmpl	$1, %eax
	je	L127
	call	abort
L127:
	movl	$19, %edi
	call	test7
	cmpl	$1, %eax
	je	L128
	call	abort
L128:
	movl	$20, %edi
	call	test7
	cmpl	$1, %eax
	je	L129
	call	abort
L129:
	movl	$29, %edi
	call	test7
	cmpl	$1, %eax
	je	L130
	call	abort
L130:
	movl	$30, %edi
	call	test7
	testl	%eax, %eax
	je	L131
	call	abort
L131:
	movl	$19, %edi
	call	test7u
	cmpl	$1, %eax
	je	L132
	call	abort
L132:
	movl	$20, %edi
	call	test7u
	cmpl	$1, %eax
	je	L133
	call	abort
L133:
	movl	$29, %edi
	call	test7u
	cmpl	$1, %eax
	je	L134
	call	abort
L134:
	movl	$30, %edi
	call	test7u
	testl	%eax, %eax
	je	L135
	call	abort
L135:
	movl	$0, %edi
	call	test8
	cmpl	$1, %eax
	je	L136
	call	abort
L136:
	movl	$9, %edi
	call	test8
	cmpl	$1, %eax
	je	L137
	call	abort
L137:
	movl	$10, %edi
	call	test8
	testl	%eax, %eax
	je	L138
	call	abort
L138:
	movl	$-1, %edi
	call	test8
	cmpl	$1, %eax
	je	L139
	call	abort
L139:
	movl	$-9, %edi
	call	test8
	cmpl	$1, %eax
	je	L140
	call	abort
L140:
	movl	$-10, %edi
	call	test8
	cmpl	$1, %eax
	je	L141
	call	abort
L141:
	movl	$0, %edi
	call	test8u
	cmpl	$1, %eax
	je	L142
	call	abort
L142:
	movl	$9, %edi
	call	test8u
	cmpl	$1, %eax
	je	L143
	call	abort
L143:
	movl	$10, %edi
	call	test8u
	testl	%eax, %eax
	je	L144
	call	abort
L144:
	movl	$-1, %edi
	call	test8u
	testl	%eax, %eax
	je	L145
	call	abort
L145:
	movl	$-9, %edi
	call	test8u
	testl	%eax, %eax
	je	L146
	call	abort
L146:
	movl	$-10, %edi
	call	test8u
	testl	%eax, %eax
	je	L147
	call	abort
L147:
	movl	$19, %edi
	call	test9
	testl	%eax, %eax
	je	L148
	call	abort
L148:
	movl	$20, %edi
	call	test9
	testl	%eax, %eax
	je	L149
	call	abort
L149:
	movl	$29, %edi
	call	test9
	testl	%eax, %eax
	je	L150
	call	abort
L150:
	movl	$30, %edi
	call	test9
	cmpl	$1, %eax
	je	L151
	call	abort
L151:
	movl	$19, %edi
	call	test9u
	testl	%eax, %eax
	je	L152
	call	abort
L152:
	movl	$20, %edi
	call	test9u
	testl	%eax, %eax
	je	L153
	call	abort
L153:
	movl	$29, %edi
	call	test9u
	testl	%eax, %eax
	je	L154
	call	abort
L154:
	movl	$30, %edi
	call	test9u
	cmpl	$1, %eax
	je	L155
	call	abort
L155:
	movl	$0, %edi
	call	test10
	testl	%eax, %eax
	je	L156
	call	abort
L156:
	movl	$9, %edi
	call	test10
	testl	%eax, %eax
	je	L157
	call	abort
L157:
	movl	$10, %edi
	call	test10
	cmpl	$1, %eax
	je	L158
	call	abort
L158:
	movl	$-1, %edi
	call	test10
	testl	%eax, %eax
	je	L159
	call	abort
L159:
	movl	$-9, %edi
	call	test10
	testl	%eax, %eax
	je	L160
	call	abort
L160:
	movl	$-10, %edi
	call	test10
	testl	%eax, %eax
	je	L161
	call	abort
L161:
	movl	$0, %edi
	call	test10u
	testl	%eax, %eax
	je	L162
	call	abort
L162:
	movl	$9, %edi
	call	test10u
	testl	%eax, %eax
	je	L163
	call	abort
L163:
	movl	$10, %edi
	call	test10u
	cmpl	$1, %eax
	je	L164
	call	abort
L164:
	movl	$-1, %edi
	call	test10u
	cmpl	$1, %eax
	je	L165
	call	abort
L165:
	movl	$-9, %edi
	call	test10u
	cmpl	$1, %eax
	je	L166
	call	abort
L166:
	movl	$-10, %edi
	call	test10u
	cmpl	$1, %eax
	je	L167
	call	abort
L167:
	movl	$19, %edi
	call	test11
	testl	%eax, %eax
	je	L168
	call	abort
L168:
	movl	$20, %edi
	call	test11
	cmpl	$1, %eax
	je	L169
	call	abort
L169:
	movl	$29, %edi
	call	test11
	cmpl	$1, %eax
	je	L170
	call	abort
L170:
	movl	$30, %edi
	call	test11
	cmpl	$1, %eax
	je	L171
	call	abort
L171:
	movl	$19, %edi
	call	test11u
	testl	%eax, %eax
	je	L172
	call	abort
L172:
	movl	$20, %edi
	call	test11u
	cmpl	$1, %eax
	je	L173
	call	abort
L173:
	movl	$29, %edi
	call	test11u
	cmpl	$1, %eax
	je	L174
	call	abort
L174:
	movl	$30, %edi
	call	test11u
	cmpl	$1, %eax
	je	L175
	call	abort
L175:
	movl	$0, %edi
	call	test12
	cmpl	$1, %eax
	je	L176
	call	abort
L176:
	movl	$9, %edi
	call	test12
	cmpl	$1, %eax
	je	L177
	call	abort
L177:
	movl	$10, %edi
	call	test12
	cmpl	$1, %eax
	je	L178
	call	abort
L178:
	movl	$-1, %edi
	call	test12
	cmpl	$1, %eax
	je	L179
	call	abort
L179:
	movl	$-9, %edi
	call	test12
	cmpl	$1, %eax
	je	L180
	call	abort
L180:
	movl	$-10, %edi
	call	test12
	testl	%eax, %eax
	je	L181
	call	abort
L181:
	movl	$0, %eax
	popq	%rbp
	ret
