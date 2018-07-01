	.file	"divcmp-1.c"
	.text
	.globl	strchr
	.type	strchr, @function
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
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
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
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
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
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	test1
	.type	test1, @function
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
	.size	test1, .-test1
	.globl	test1u
	.type	test1u, @function
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
	.size	test1u, .-test1u
	.globl	test2
	.type	test2, @function
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
	.size	test2, .-test2
	.globl	test2u
	.type	test2u, @function
test2u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test2u, .-test2u
	.globl	test3
	.type	test3, @function
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
	.size	test3, .-test3
	.globl	test3u
	.type	test3u, @function
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
	.size	test3u, .-test3u
	.globl	test4
	.type	test4, @function
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
	.size	test4, .-test4
	.globl	test4u
	.type	test4u, @function
test4u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test4u, .-test4u
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test5, .-test5
	.globl	test5u
	.type	test5u, @function
test5u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test5u, .-test5u
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test6, .-test6
	.globl	test7
	.type	test7, @function
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test7, .-test7
	.globl	test7u
	.type	test7u, @function
test7u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test7u, .-test7u
	.globl	test8
	.type	test8, @function
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test8, .-test8
	.globl	test8u
	.type	test8u, @function
test8u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test8u, .-test8u
	.globl	test9
	.type	test9, @function
test9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test9, .-test9
	.globl	test9u
	.type	test9u, @function
test9u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$29, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test9u, .-test9u
	.globl	test10
	.type	test10, @function
test10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test10, .-test10
	.globl	test10u
	.type	test10u, @function
test10u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test10u, .-test10u
	.globl	test11
	.type	test11, @function
test11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test11, .-test11
	.globl	test11u
	.type	test11u, @function
test11u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test11u, .-test11u
	.globl	test12
	.type	test12, @function
test12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test12, .-test12
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$19, %edi
	call	test1
	testl	%eax, %eax
	je	.L77
	call	abort
.L77:
	movl	$20, %edi
	call	test1
	cmpl	$1, %eax
	je	.L78
	call	abort
.L78:
	movl	$29, %edi
	call	test1
	cmpl	$1, %eax
	je	.L79
	call	abort
.L79:
	movl	$30, %edi
	call	test1
	testl	%eax, %eax
	je	.L80
	call	abort
.L80:
	movl	$19, %edi
	call	test1u
	testl	%eax, %eax
	je	.L81
	call	abort
.L81:
	movl	$20, %edi
	call	test1u
	cmpl	$1, %eax
	je	.L82
	call	abort
.L82:
	movl	$29, %edi
	call	test1u
	cmpl	$1, %eax
	je	.L83
	call	abort
.L83:
	movl	$30, %edi
	call	test1u
	testl	%eax, %eax
	je	.L84
	call	abort
.L84:
	movl	$0, %edi
	call	test2
	cmpl	$1, %eax
	je	.L85
	call	abort
.L85:
	movl	$9, %edi
	call	test2
	cmpl	$1, %eax
	je	.L86
	call	abort
.L86:
	movl	$10, %edi
	call	test2
	testl	%eax, %eax
	je	.L87
	call	abort
.L87:
	movl	$-1, %edi
	call	test2
	cmpl	$1, %eax
	je	.L88
	call	abort
.L88:
	movl	$-9, %edi
	call	test2
	cmpl	$1, %eax
	je	.L89
	call	abort
.L89:
	movl	$-10, %edi
	call	test2
	testl	%eax, %eax
	je	.L90
	call	abort
.L90:
	movl	$0, %edi
	call	test2u
	cmpl	$1, %eax
	je	.L91
	call	abort
.L91:
	movl	$9, %edi
	call	test2u
	cmpl	$1, %eax
	je	.L92
	call	abort
.L92:
	movl	$10, %edi
	call	test2u
	testl	%eax, %eax
	je	.L93
	call	abort
.L93:
	movl	$-1, %edi
	call	test2u
	testl	%eax, %eax
	je	.L94
	call	abort
.L94:
	movl	$-9, %edi
	call	test2u
	testl	%eax, %eax
	je	.L95
	call	abort
.L95:
	movl	$-10, %edi
	call	test2u
	testl	%eax, %eax
	je	.L96
	call	abort
.L96:
	movl	$19, %edi
	call	test3
	cmpl	$1, %eax
	je	.L97
	call	abort
.L97:
	movl	$20, %edi
	call	test3
	testl	%eax, %eax
	je	.L98
	call	abort
.L98:
	movl	$29, %edi
	call	test3
	testl	%eax, %eax
	je	.L99
	call	abort
.L99:
	movl	$30, %edi
	call	test3
	cmpl	$1, %eax
	je	.L100
	call	abort
.L100:
	movl	$19, %edi
	call	test3u
	cmpl	$1, %eax
	je	.L101
	call	abort
.L101:
	movl	$20, %edi
	call	test3u
	testl	%eax, %eax
	je	.L102
	call	abort
.L102:
	movl	$29, %edi
	call	test3u
	testl	%eax, %eax
	je	.L103
	call	abort
.L103:
	movl	$30, %edi
	call	test3u
	cmpl	$1, %eax
	je	.L104
	call	abort
.L104:
	movl	$0, %edi
	call	test4
	testl	%eax, %eax
	je	.L105
	call	abort
.L105:
	movl	$9, %edi
	call	test4
	testl	%eax, %eax
	je	.L106
	call	abort
.L106:
	movl	$10, %edi
	call	test4
	cmpl	$1, %eax
	je	.L107
	call	abort
.L107:
	movl	$-1, %edi
	call	test4
	testl	%eax, %eax
	je	.L108
	call	abort
.L108:
	movl	$-9, %edi
	call	test4
	testl	%eax, %eax
	je	.L109
	call	abort
.L109:
	movl	$-10, %edi
	call	test4
	cmpl	$1, %eax
	je	.L110
	call	abort
.L110:
	movl	$0, %edi
	call	test4u
	testl	%eax, %eax
	je	.L111
	call	abort
.L111:
	movl	$9, %edi
	call	test4u
	testl	%eax, %eax
	je	.L112
	call	abort
.L112:
	movl	$10, %edi
	call	test4u
	cmpl	$1, %eax
	je	.L113
	call	abort
.L113:
	movl	$-1, %edi
	call	test4u
	cmpl	$1, %eax
	je	.L114
	call	abort
.L114:
	movl	$-9, %edi
	call	test4u
	cmpl	$1, %eax
	je	.L115
	call	abort
.L115:
	movl	$-10, %edi
	call	test4u
	cmpl	$1, %eax
	je	.L116
	call	abort
.L116:
	movl	$19, %edi
	call	test5
	cmpl	$1, %eax
	je	.L117
	call	abort
.L117:
	movl	$20, %edi
	call	test5
	testl	%eax, %eax
	je	.L118
	call	abort
.L118:
	movl	$29, %edi
	call	test5
	testl	%eax, %eax
	je	.L119
	call	abort
.L119:
	movl	$30, %edi
	call	test5
	testl	%eax, %eax
	je	.L120
	call	abort
.L120:
	movl	$19, %edi
	call	test5u
	cmpl	$1, %eax
	je	.L121
	call	abort
.L121:
	movl	$20, %edi
	call	test5u
	testl	%eax, %eax
	je	.L122
	call	abort
.L122:
	movl	$29, %edi
	call	test5u
	testl	%eax, %eax
	je	.L123
	call	abort
.L123:
	movl	$30, %edi
	call	test5u
	testl	%eax, %eax
	je	.L124
	call	abort
.L124:
	movl	$0, %edi
	call	test6
	testl	%eax, %eax
	je	.L125
	call	abort
.L125:
	movl	$9, %edi
	call	test6
	testl	%eax, %eax
	je	.L126
	call	abort
.L126:
	movl	$10, %edi
	call	test6
	testl	%eax, %eax
	je	.L127
	call	abort
.L127:
	movl	$-1, %edi
	call	test6
	testl	%eax, %eax
	je	.L128
	call	abort
.L128:
	movl	$-9, %edi
	call	test6
	testl	%eax, %eax
	je	.L129
	call	abort
.L129:
	movl	$-10, %edi
	call	test6
	cmpl	$1, %eax
	je	.L130
	call	abort
.L130:
	movl	$19, %edi
	call	test7
	cmpl	$1, %eax
	je	.L131
	call	abort
.L131:
	movl	$20, %edi
	call	test7
	cmpl	$1, %eax
	je	.L132
	call	abort
.L132:
	movl	$29, %edi
	call	test7
	cmpl	$1, %eax
	je	.L133
	call	abort
.L133:
	movl	$30, %edi
	call	test7
	testl	%eax, %eax
	je	.L134
	call	abort
.L134:
	movl	$19, %edi
	call	test7u
	cmpl	$1, %eax
	je	.L135
	call	abort
.L135:
	movl	$20, %edi
	call	test7u
	cmpl	$1, %eax
	je	.L136
	call	abort
.L136:
	movl	$29, %edi
	call	test7u
	cmpl	$1, %eax
	je	.L137
	call	abort
.L137:
	movl	$30, %edi
	call	test7u
	testl	%eax, %eax
	je	.L138
	call	abort
.L138:
	movl	$0, %edi
	call	test8
	cmpl	$1, %eax
	je	.L139
	call	abort
.L139:
	movl	$9, %edi
	call	test8
	cmpl	$1, %eax
	je	.L140
	call	abort
.L140:
	movl	$10, %edi
	call	test8
	testl	%eax, %eax
	je	.L141
	call	abort
.L141:
	movl	$-1, %edi
	call	test8
	cmpl	$1, %eax
	je	.L142
	call	abort
.L142:
	movl	$-9, %edi
	call	test8
	cmpl	$1, %eax
	je	.L143
	call	abort
.L143:
	movl	$-10, %edi
	call	test8
	cmpl	$1, %eax
	je	.L144
	call	abort
.L144:
	movl	$0, %edi
	call	test8u
	cmpl	$1, %eax
	je	.L145
	call	abort
.L145:
	movl	$9, %edi
	call	test8u
	cmpl	$1, %eax
	je	.L146
	call	abort
.L146:
	movl	$10, %edi
	call	test8u
	testl	%eax, %eax
	je	.L147
	call	abort
.L147:
	movl	$-1, %edi
	call	test8u
	testl	%eax, %eax
	je	.L148
	call	abort
.L148:
	movl	$-9, %edi
	call	test8u
	testl	%eax, %eax
	je	.L149
	call	abort
.L149:
	movl	$-10, %edi
	call	test8u
	testl	%eax, %eax
	je	.L150
	call	abort
.L150:
	movl	$19, %edi
	call	test9
	testl	%eax, %eax
	je	.L151
	call	abort
.L151:
	movl	$20, %edi
	call	test9
	testl	%eax, %eax
	je	.L152
	call	abort
.L152:
	movl	$29, %edi
	call	test9
	testl	%eax, %eax
	je	.L153
	call	abort
.L153:
	movl	$30, %edi
	call	test9
	cmpl	$1, %eax
	je	.L154
	call	abort
.L154:
	movl	$19, %edi
	call	test9u
	testl	%eax, %eax
	je	.L155
	call	abort
.L155:
	movl	$20, %edi
	call	test9u
	testl	%eax, %eax
	je	.L156
	call	abort
.L156:
	movl	$29, %edi
	call	test9u
	testl	%eax, %eax
	je	.L157
	call	abort
.L157:
	movl	$30, %edi
	call	test9u
	cmpl	$1, %eax
	je	.L158
	call	abort
.L158:
	movl	$0, %edi
	call	test10
	testl	%eax, %eax
	je	.L159
	call	abort
.L159:
	movl	$9, %edi
	call	test10
	testl	%eax, %eax
	je	.L160
	call	abort
.L160:
	movl	$10, %edi
	call	test10
	cmpl	$1, %eax
	je	.L161
	call	abort
.L161:
	movl	$-1, %edi
	call	test10
	testl	%eax, %eax
	je	.L162
	call	abort
.L162:
	movl	$-9, %edi
	call	test10
	testl	%eax, %eax
	je	.L163
	call	abort
.L163:
	movl	$-10, %edi
	call	test10
	testl	%eax, %eax
	je	.L164
	call	abort
.L164:
	movl	$0, %edi
	call	test10u
	testl	%eax, %eax
	je	.L165
	call	abort
.L165:
	movl	$9, %edi
	call	test10u
	testl	%eax, %eax
	je	.L166
	call	abort
.L166:
	movl	$10, %edi
	call	test10u
	cmpl	$1, %eax
	je	.L167
	call	abort
.L167:
	movl	$-1, %edi
	call	test10u
	cmpl	$1, %eax
	je	.L168
	call	abort
.L168:
	movl	$-9, %edi
	call	test10u
	cmpl	$1, %eax
	je	.L169
	call	abort
.L169:
	movl	$-10, %edi
	call	test10u
	cmpl	$1, %eax
	je	.L170
	call	abort
.L170:
	movl	$19, %edi
	call	test11
	testl	%eax, %eax
	je	.L171
	call	abort
.L171:
	movl	$20, %edi
	call	test11
	cmpl	$1, %eax
	je	.L172
	call	abort
.L172:
	movl	$29, %edi
	call	test11
	cmpl	$1, %eax
	je	.L173
	call	abort
.L173:
	movl	$30, %edi
	call	test11
	cmpl	$1, %eax
	je	.L174
	call	abort
.L174:
	movl	$19, %edi
	call	test11u
	testl	%eax, %eax
	je	.L175
	call	abort
.L175:
	movl	$20, %edi
	call	test11u
	cmpl	$1, %eax
	je	.L176
	call	abort
.L176:
	movl	$29, %edi
	call	test11u
	cmpl	$1, %eax
	je	.L177
	call	abort
.L177:
	movl	$30, %edi
	call	test11u
	cmpl	$1, %eax
	je	.L178
	call	abort
.L178:
	movl	$0, %edi
	call	test12
	cmpl	$1, %eax
	je	.L179
	call	abort
.L179:
	movl	$9, %edi
	call	test12
	cmpl	$1, %eax
	je	.L180
	call	abort
.L180:
	movl	$10, %edi
	call	test12
	cmpl	$1, %eax
	je	.L181
	call	abort
.L181:
	movl	$-1, %edi
	call	test12
	cmpl	$1, %eax
	je	.L182
	call	abort
.L182:
	movl	$-9, %edi
	call	test12
	cmpl	$1, %eax
	je	.L183
	call	abort
.L183:
	movl	$-10, %edi
	call	test12
	testl	%eax, %eax
	je	.L184
	call	abort
.L184:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
