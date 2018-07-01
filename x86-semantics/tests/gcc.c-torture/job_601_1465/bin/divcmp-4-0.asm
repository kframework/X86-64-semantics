	.file	"divcmp-4.c"
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
	addl	$29, %eax
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test1, .-test1
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
	.globl	test3
	.type	test3, @function
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
	.size	test3, .-test3
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
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-19, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test5, .-test5
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setg	%al
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
	cmpl	$-29, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test7, .-test7
	.globl	test8
	.type	test8, @function
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test8, .-test8
	.globl	test9
	.type	test9, @function
test9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-29, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test9, .-test9
	.globl	test10
	.type	test10, @function
test10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-9, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test10, .-test10
	.globl	test11
	.type	test11, @function
test11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$-19, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test11, .-test11
	.globl	test12
	.type	test12, @function
test12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	test12, .-test12
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-30, %edi
	call	test1
	testl	%eax, %eax
	je	.L57
	call	abort
.L57:
	movl	$-29, %edi
	call	test1
	cmpl	$1, %eax
	je	.L58
	call	abort
.L58:
	movl	$-20, %edi
	call	test1
	cmpl	$1, %eax
	je	.L59
	call	abort
.L59:
	movl	$-19, %edi
	call	test1
	testl	%eax, %eax
	je	.L60
	call	abort
.L60:
	movl	$0, %edi
	call	test2
	cmpl	$1, %eax
	je	.L61
	call	abort
.L61:
	movl	$9, %edi
	call	test2
	cmpl	$1, %eax
	je	.L62
	call	abort
.L62:
	movl	$10, %edi
	call	test2
	testl	%eax, %eax
	je	.L63
	call	abort
.L63:
	movl	$-1, %edi
	call	test2
	cmpl	$1, %eax
	je	.L64
	call	abort
.L64:
	movl	$-9, %edi
	call	test2
	cmpl	$1, %eax
	je	.L65
	call	abort
.L65:
	movl	$-10, %edi
	call	test2
	testl	%eax, %eax
	je	.L66
	call	abort
.L66:
	movl	$-30, %edi
	call	test3
	cmpl	$1, %eax
	je	.L67
	call	abort
.L67:
	movl	$-29, %edi
	call	test3
	testl	%eax, %eax
	je	.L68
	call	abort
.L68:
	movl	$-20, %edi
	call	test3
	testl	%eax, %eax
	je	.L69
	call	abort
.L69:
	movl	$-19, %edi
	call	test3
	cmpl	$1, %eax
	je	.L70
	call	abort
.L70:
	movl	$0, %edi
	call	test4
	testl	%eax, %eax
	je	.L71
	call	abort
.L71:
	movl	$9, %edi
	call	test4
	testl	%eax, %eax
	je	.L72
	call	abort
.L72:
	movl	$10, %edi
	call	test4
	cmpl	$1, %eax
	je	.L73
	call	abort
.L73:
	movl	$-1, %edi
	call	test4
	testl	%eax, %eax
	je	.L74
	call	abort
.L74:
	movl	$-9, %edi
	call	test4
	testl	%eax, %eax
	je	.L75
	call	abort
.L75:
	movl	$-10, %edi
	call	test4
	cmpl	$1, %eax
	je	.L76
	call	abort
.L76:
	movl	$-30, %edi
	call	test5
	testl	%eax, %eax
	je	.L77
	call	abort
.L77:
	movl	$-29, %edi
	call	test5
	testl	%eax, %eax
	je	.L78
	call	abort
.L78:
	movl	$-20, %edi
	call	test5
	testl	%eax, %eax
	je	.L79
	call	abort
.L79:
	movl	$-19, %edi
	call	test5
	cmpl	$1, %eax
	je	.L80
	call	abort
.L80:
	movl	$0, %edi
	call	test6
	testl	%eax, %eax
	je	.L81
	call	abort
.L81:
	movl	$9, %edi
	call	test6
	testl	%eax, %eax
	je	.L82
	call	abort
.L82:
	movl	$10, %edi
	call	test6
	cmpl	$1, %eax
	je	.L83
	call	abort
.L83:
	movl	$-1, %edi
	call	test6
	testl	%eax, %eax
	je	.L84
	call	abort
.L84:
	movl	$-9, %edi
	call	test6
	testl	%eax, %eax
	je	.L85
	call	abort
.L85:
	movl	$-10, %edi
	call	test6
	testl	%eax, %eax
	je	.L86
	call	abort
.L86:
	movl	$-30, %edi
	call	test7
	testl	%eax, %eax
	je	.L87
	call	abort
.L87:
	movl	$-29, %edi
	call	test7
	cmpl	$1, %eax
	je	.L88
	call	abort
.L88:
	movl	$-20, %edi
	call	test7
	cmpl	$1, %eax
	je	.L89
	call	abort
.L89:
	movl	$-19, %edi
	call	test7
	cmpl	$1, %eax
	je	.L90
	call	abort
.L90:
	movl	$0, %edi
	call	test8
	cmpl	$1, %eax
	je	.L91
	call	abort
.L91:
	movl	$9, %edi
	call	test8
	cmpl	$1, %eax
	je	.L92
	call	abort
.L92:
	movl	$10, %edi
	call	test8
	cmpl	$1, %eax
	je	.L93
	call	abort
.L93:
	movl	$-1, %edi
	call	test8
	cmpl	$1, %eax
	je	.L94
	call	abort
.L94:
	movl	$-9, %edi
	call	test8
	cmpl	$1, %eax
	je	.L95
	call	abort
.L95:
	movl	$-10, %edi
	call	test8
	testl	%eax, %eax
	je	.L96
	call	abort
.L96:
	movl	$-30, %edi
	call	test9
	cmpl	$1, %eax
	je	.L97
	call	abort
.L97:
	movl	$-29, %edi
	call	test9
	testl	%eax, %eax
	je	.L98
	call	abort
.L98:
	movl	$-20, %edi
	call	test9
	testl	%eax, %eax
	je	.L99
	call	abort
.L99:
	movl	$-19, %edi
	call	test9
	testl	%eax, %eax
	je	.L100
	call	abort
.L100:
	movl	$0, %edi
	call	test10
	testl	%eax, %eax
	je	.L101
	call	abort
.L101:
	movl	$9, %edi
	call	test10
	testl	%eax, %eax
	je	.L102
	call	abort
.L102:
	movl	$10, %edi
	call	test10
	testl	%eax, %eax
	je	.L103
	call	abort
.L103:
	movl	$-1, %edi
	call	test10
	testl	%eax, %eax
	je	.L104
	call	abort
.L104:
	movl	$-9, %edi
	call	test10
	testl	%eax, %eax
	je	.L105
	call	abort
.L105:
	movl	$-10, %edi
	call	test10
	cmpl	$1, %eax
	je	.L106
	call	abort
.L106:
	movl	$-30, %edi
	call	test11
	cmpl	$1, %eax
	je	.L107
	call	abort
.L107:
	movl	$-29, %edi
	call	test11
	cmpl	$1, %eax
	je	.L108
	call	abort
.L108:
	movl	$-20, %edi
	call	test11
	cmpl	$1, %eax
	je	.L109
	call	abort
.L109:
	movl	$-19, %edi
	call	test11
	testl	%eax, %eax
	je	.L110
	call	abort
.L110:
	movl	$0, %edi
	call	test12
	cmpl	$1, %eax
	je	.L111
	call	abort
.L111:
	movl	$9, %edi
	call	test12
	cmpl	$1, %eax
	je	.L112
	call	abort
.L112:
	movl	$10, %edi
	call	test12
	testl	%eax, %eax
	je	.L113
	call	abort
.L113:
	movl	$-1, %edi
	call	test12
	cmpl	$1, %eax
	je	.L114
	call	abort
.L114:
	movl	$-9, %edi
	call	test12
	cmpl	$1, %eax
	je	.L115
	call	abort
.L115:
	movl	$-10, %edi
	call	test12
	cmpl	$1, %eax
	je	.L116
	call	abort
.L116:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
