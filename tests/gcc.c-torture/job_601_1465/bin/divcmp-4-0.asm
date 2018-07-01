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
	addl	$29, %eax
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
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$29, %eax
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
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-19, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-29, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-29, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-19, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
test12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-30, %edi
	call	test1
	testl	%eax, %eax
	je	L54
	call	abort
L54:
	movl	$-29, %edi
	call	test1
	cmpl	$1, %eax
	je	L55
	call	abort
L55:
	movl	$-20, %edi
	call	test1
	cmpl	$1, %eax
	je	L56
	call	abort
L56:
	movl	$-19, %edi
	call	test1
	testl	%eax, %eax
	je	L57
	call	abort
L57:
	movl	$0, %edi
	call	test2
	cmpl	$1, %eax
	je	L58
	call	abort
L58:
	movl	$9, %edi
	call	test2
	cmpl	$1, %eax
	je	L59
	call	abort
L59:
	movl	$10, %edi
	call	test2
	testl	%eax, %eax
	je	L60
	call	abort
L60:
	movl	$-1, %edi
	call	test2
	cmpl	$1, %eax
	je	L61
	call	abort
L61:
	movl	$-9, %edi
	call	test2
	cmpl	$1, %eax
	je	L62
	call	abort
L62:
	movl	$-10, %edi
	call	test2
	testl	%eax, %eax
	je	L63
	call	abort
L63:
	movl	$-30, %edi
	call	test3
	cmpl	$1, %eax
	je	L64
	call	abort
L64:
	movl	$-29, %edi
	call	test3
	testl	%eax, %eax
	je	L65
	call	abort
L65:
	movl	$-20, %edi
	call	test3
	testl	%eax, %eax
	je	L66
	call	abort
L66:
	movl	$-19, %edi
	call	test3
	cmpl	$1, %eax
	je	L67
	call	abort
L67:
	movl	$0, %edi
	call	test4
	testl	%eax, %eax
	je	L68
	call	abort
L68:
	movl	$9, %edi
	call	test4
	testl	%eax, %eax
	je	L69
	call	abort
L69:
	movl	$10, %edi
	call	test4
	cmpl	$1, %eax
	je	L70
	call	abort
L70:
	movl	$-1, %edi
	call	test4
	testl	%eax, %eax
	je	L71
	call	abort
L71:
	movl	$-9, %edi
	call	test4
	testl	%eax, %eax
	je	L72
	call	abort
L72:
	movl	$-10, %edi
	call	test4
	cmpl	$1, %eax
	je	L73
	call	abort
L73:
	movl	$-30, %edi
	call	test5
	testl	%eax, %eax
	je	L74
	call	abort
L74:
	movl	$-29, %edi
	call	test5
	testl	%eax, %eax
	je	L75
	call	abort
L75:
	movl	$-20, %edi
	call	test5
	testl	%eax, %eax
	je	L76
	call	abort
L76:
	movl	$-19, %edi
	call	test5
	cmpl	$1, %eax
	je	L77
	call	abort
L77:
	movl	$0, %edi
	call	test6
	testl	%eax, %eax
	je	L78
	call	abort
L78:
	movl	$9, %edi
	call	test6
	testl	%eax, %eax
	je	L79
	call	abort
L79:
	movl	$10, %edi
	call	test6
	cmpl	$1, %eax
	je	L80
	call	abort
L80:
	movl	$-1, %edi
	call	test6
	testl	%eax, %eax
	je	L81
	call	abort
L81:
	movl	$-9, %edi
	call	test6
	testl	%eax, %eax
	je	L82
	call	abort
L82:
	movl	$-10, %edi
	call	test6
	testl	%eax, %eax
	je	L83
	call	abort
L83:
	movl	$-30, %edi
	call	test7
	testl	%eax, %eax
	je	L84
	call	abort
L84:
	movl	$-29, %edi
	call	test7
	cmpl	$1, %eax
	je	L85
	call	abort
L85:
	movl	$-20, %edi
	call	test7
	cmpl	$1, %eax
	je	L86
	call	abort
L86:
	movl	$-19, %edi
	call	test7
	cmpl	$1, %eax
	je	L87
	call	abort
L87:
	movl	$0, %edi
	call	test8
	cmpl	$1, %eax
	je	L88
	call	abort
L88:
	movl	$9, %edi
	call	test8
	cmpl	$1, %eax
	je	L89
	call	abort
L89:
	movl	$10, %edi
	call	test8
	cmpl	$1, %eax
	je	L90
	call	abort
L90:
	movl	$-1, %edi
	call	test8
	cmpl	$1, %eax
	je	L91
	call	abort
L91:
	movl	$-9, %edi
	call	test8
	cmpl	$1, %eax
	je	L92
	call	abort
L92:
	movl	$-10, %edi
	call	test8
	testl	%eax, %eax
	je	L93
	call	abort
L93:
	movl	$-30, %edi
	call	test9
	cmpl	$1, %eax
	je	L94
	call	abort
L94:
	movl	$-29, %edi
	call	test9
	testl	%eax, %eax
	je	L95
	call	abort
L95:
	movl	$-20, %edi
	call	test9
	testl	%eax, %eax
	je	L96
	call	abort
L96:
	movl	$-19, %edi
	call	test9
	testl	%eax, %eax
	je	L97
	call	abort
L97:
	movl	$0, %edi
	call	test10
	testl	%eax, %eax
	je	L98
	call	abort
L98:
	movl	$9, %edi
	call	test10
	testl	%eax, %eax
	je	L99
	call	abort
L99:
	movl	$10, %edi
	call	test10
	testl	%eax, %eax
	je	L100
	call	abort
L100:
	movl	$-1, %edi
	call	test10
	testl	%eax, %eax
	je	L101
	call	abort
L101:
	movl	$-9, %edi
	call	test10
	testl	%eax, %eax
	je	L102
	call	abort
L102:
	movl	$-10, %edi
	call	test10
	cmpl	$1, %eax
	je	L103
	call	abort
L103:
	movl	$-30, %edi
	call	test11
	cmpl	$1, %eax
	je	L104
	call	abort
L104:
	movl	$-29, %edi
	call	test11
	cmpl	$1, %eax
	je	L105
	call	abort
L105:
	movl	$-20, %edi
	call	test11
	cmpl	$1, %eax
	je	L106
	call	abort
L106:
	movl	$-19, %edi
	call	test11
	testl	%eax, %eax
	je	L107
	call	abort
L107:
	movl	$0, %edi
	call	test12
	cmpl	$1, %eax
	je	L108
	call	abort
L108:
	movl	$9, %edi
	call	test12
	cmpl	$1, %eax
	je	L109
	call	abort
L109:
	movl	$10, %edi
	call	test12
	testl	%eax, %eax
	je	L110
	call	abort
L110:
	movl	$-1, %edi
	call	test12
	cmpl	$1, %eax
	je	L111
	call	abort
L111:
	movl	$-9, %edi
	call	test12
	cmpl	$1, %eax
	je	L112
	call	abort
L112:
	movl	$-10, %edi
	call	test12
	cmpl	$1, %eax
	je	L113
	call	abort
L113:
	movl	$0, %eax
	popq	%rbp
	ret
