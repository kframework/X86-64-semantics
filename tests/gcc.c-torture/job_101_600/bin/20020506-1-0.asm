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
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	js	L40
	cmpl	$0, -8(%rbp)
	je	L41
	call	abort
L40:
	cmpl	$0, -8(%rbp)
	jne	L41
	call	abort
L41:
	cmpb	$0, -4(%rbp)
	jns	L42
	cmpl	$0, -8(%rbp)
	jne	L43
	call	abort
L42:
	cmpl	$0, -8(%rbp)
	je	L43
	call	abort
L43:
	cmpb	$0, -4(%rbp)
	jns	L44
	cmpl	$0, -8(%rbp)
	jne	L45
	call	abort
L44:
	cmpl	$0, -8(%rbp)
	je	L45
	call	abort
L45:
	cmpb	$0, -4(%rbp)
	js	L46
	cmpl	$0, -8(%rbp)
	je	L39
	call	abort
L46:
	cmpl	$0, -8(%rbp)
	jne	L39
	call	abort
L39:
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	js	L49
	cmpl	$0, -8(%rbp)
	je	L50
	call	abort
L49:
	cmpl	$0, -8(%rbp)
	jne	L50
	call	abort
L50:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	jns	L51
	cmpl	$0, -8(%rbp)
	jne	L52
	call	abort
L51:
	cmpl	$0, -8(%rbp)
	je	L52
	call	abort
L52:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	jns	L53
	cmpl	$0, -8(%rbp)
	jne	L54
	call	abort
L53:
	cmpl	$0, -8(%rbp)
	je	L54
	call	abort
L54:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	js	L55
	cmpl	$0, -8(%rbp)
	je	L48
	call	abort
L55:
	cmpl	$0, -8(%rbp)
	jne	L48
	call	abort
L48:
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movw	%ax, -4(%rbp)
	cmpw	$0, -4(%rbp)
	js	L58
	cmpl	$0, -8(%rbp)
	je	L59
	call	abort
L58:
	cmpl	$0, -8(%rbp)
	jne	L59
	call	abort
L59:
	cmpw	$0, -4(%rbp)
	jns	L60
	cmpl	$0, -8(%rbp)
	jne	L61
	call	abort
L60:
	cmpl	$0, -8(%rbp)
	je	L61
	call	abort
L61:
	cmpw	$0, -4(%rbp)
	jns	L62
	cmpl	$0, -8(%rbp)
	jne	L63
	call	abort
L62:
	cmpl	$0, -8(%rbp)
	je	L63
	call	abort
L63:
	cmpw	$0, -4(%rbp)
	js	L64
	cmpl	$0, -8(%rbp)
	je	L57
	call	abort
L64:
	cmpl	$0, -8(%rbp)
	jne	L57
	call	abort
L57:
	leave
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	js	L67
	cmpl	$0, -8(%rbp)
	je	L68
	call	abort
L67:
	cmpl	$0, -8(%rbp)
	jne	L68
	call	abort
L68:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L69
	cmpl	$0, -8(%rbp)
	jne	L70
	call	abort
L69:
	cmpl	$0, -8(%rbp)
	je	L70
	call	abort
L70:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L71
	cmpl	$0, -8(%rbp)
	jne	L72
	call	abort
L71:
	cmpl	$0, -8(%rbp)
	je	L72
	call	abort
L72:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	js	L73
	cmpl	$0, -8(%rbp)
	je	L66
	call	abort
L73:
	cmpl	$0, -8(%rbp)
	jne	L66
	call	abort
L66:
	leave
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	L76
	cmpl	$0, -8(%rbp)
	je	L77
	call	abort
L76:
	cmpl	$0, -8(%rbp)
	jne	L77
	call	abort
L77:
	cmpl	$0, -4(%rbp)
	jns	L78
	cmpl	$0, -8(%rbp)
	jne	L79
	call	abort
L78:
	cmpl	$0, -8(%rbp)
	je	L79
	call	abort
L79:
	cmpl	$0, -4(%rbp)
	jns	L80
	cmpl	$0, -8(%rbp)
	jne	L81
	call	abort
L80:
	cmpl	$0, -8(%rbp)
	je	L81
	call	abort
L81:
	cmpl	$0, -4(%rbp)
	js	L82
	cmpl	$0, -8(%rbp)
	je	L75
	call	abort
L82:
	cmpl	$0, -8(%rbp)
	jne	L75
	call	abort
L75:
	leave
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	js	L85
	cmpl	$0, -8(%rbp)
	je	L86
	call	abort
L85:
	cmpl	$0, -8(%rbp)
	jne	L86
	call	abort
L86:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	L87
	cmpl	$0, -8(%rbp)
	jne	L88
	call	abort
L87:
	cmpl	$0, -8(%rbp)
	je	L88
	call	abort
L88:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	L89
	cmpl	$0, -8(%rbp)
	jne	L90
	call	abort
L89:
	cmpl	$0, -8(%rbp)
	je	L90
	call	abort
L90:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	js	L91
	cmpl	$0, -8(%rbp)
	je	L84
	call	abort
L91:
	cmpl	$0, -8(%rbp)
	jne	L84
	call	abort
L84:
	leave
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	js	L94
	cmpl	$0, -12(%rbp)
	je	L95
	call	abort
L94:
	cmpl	$0, -12(%rbp)
	jne	L95
	call	abort
L95:
	cmpq	$0, -8(%rbp)
	jns	L96
	cmpl	$0, -12(%rbp)
	jne	L97
	call	abort
L96:
	cmpl	$0, -12(%rbp)
	je	L97
	call	abort
L97:
	cmpq	$0, -8(%rbp)
	jns	L98
	cmpl	$0, -12(%rbp)
	jne	L99
	call	abort
L98:
	cmpl	$0, -12(%rbp)
	je	L99
	call	abort
L99:
	cmpq	$0, -8(%rbp)
	js	L100
	cmpl	$0, -12(%rbp)
	je	L93
	call	abort
L100:
	cmpl	$0, -12(%rbp)
	jne	L93
	call	abort
L93:
	leave
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L103
	cmpl	$0, -12(%rbp)
	je	L104
	call	abort
L103:
	cmpl	$0, -12(%rbp)
	jne	L104
	call	abort
L104:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jns	L105
	cmpl	$0, -12(%rbp)
	jne	L106
	call	abort
L105:
	cmpl	$0, -12(%rbp)
	je	L106
	call	abort
L106:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jns	L107
	cmpl	$0, -12(%rbp)
	jne	L108
	call	abort
L107:
	cmpl	$0, -12(%rbp)
	je	L108
	call	abort
L108:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L109
	cmpl	$0, -12(%rbp)
	je	L102
	call	abort
L109:
	cmpl	$0, -12(%rbp)
	jne	L102
	call	abort
L102:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$0, %edi
	call	test1
	movl	$0, %esi
	movl	$127, %edi
	call	test1
	movl	$1, %esi
	movl	$-128, %edi
	call	test1
	movl	$1, %esi
	movl	$-1, %edi
	call	test1
	movl	$0, %esi
	movl	$0, %edi
	call	test2
	movl	$0, %esi
	movl	$127, %edi
	call	test2
	movl	$1, %esi
	movl	$128, %edi
	call	test2
	movl	$1, %esi
	movl	$255, %edi
	call	test2
	movl	$0, %esi
	movl	$0, %edi
	call	test3
	movl	$0, %esi
	movl	$32767, %edi
	call	test3
	movl	$1, %esi
	movl	$-32768, %edi
	call	test3
	movl	$1, %esi
	movl	$-1, %edi
	call	test3
	movl	$0, %esi
	movl	$0, %edi
	call	test4
	movl	$0, %esi
	movl	$32767, %edi
	call	test4
	movl	$1, %esi
	movl	$32768, %edi
	call	test4
	movl	$1, %esi
	movl	$65535, %edi
	call	test4
	movl	$0, %esi
	movl	$0, %edi
	call	test5
	movl	$0, %esi
	movl	$2147483647, %edi
	call	test5
	movl	$1, %esi
	movl	$-2147483648, %edi
	call	test5
	movl	$1, %esi
	movl	$-1, %edi
	call	test5
	movl	$0, %esi
	movl	$0, %edi
	call	test6
	movl	$0, %esi
	movl	$2147483647, %edi
	call	test6
	movl	$1, %esi
	movl	$-2147483648, %edi
	call	test6
	movl	$1, %esi
	movl	$-1, %edi
	call	test6
	movl	$0, %esi
	movl	$0, %edi
	call	test7
	movl	$0, %esi
	movabsq	$9223372036854775807, %rdi
	call	test7
	movl	$1, %esi
	movabsq	$-9223372036854775808, %rdi
	call	test7
	movl	$1, %esi
	movq	$-1, %rdi
	call	test7
	movl	$0, %esi
	movl	$0, %edi
	call	test8
	movl	$0, %esi
	movabsq	$9223372036854775807, %rdi
	call	test8
	movl	$1, %esi
	movabsq	$-9223372036854775808, %rdi
	call	test8
	movl	$1, %esi
	movq	$-1, %rdi
	call	test8
	movl	$0, %eax
	popq	%rbp
	ret
