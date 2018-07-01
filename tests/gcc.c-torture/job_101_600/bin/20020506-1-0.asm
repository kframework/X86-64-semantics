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
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
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
	js	L21
	cmpl	$0, -8(%rbp)
	je	L22
	call	abort
L21:
	cmpl	$0, -8(%rbp)
	jne	L22
	call	abort
L22:
	cmpb	$0, -4(%rbp)
	jns	L23
	cmpl	$0, -8(%rbp)
	jne	L24
	call	abort
L23:
	cmpl	$0, -8(%rbp)
	je	L24
	call	abort
L24:
	cmpb	$0, -4(%rbp)
	jns	L25
	cmpl	$0, -8(%rbp)
	jne	L26
	call	abort
L25:
	cmpl	$0, -8(%rbp)
	je	L26
	call	abort
L26:
	cmpb	$0, -4(%rbp)
	js	L27
	cmpl	$0, -8(%rbp)
	je	L20
	call	abort
L27:
	cmpl	$0, -8(%rbp)
	jne	L20
	call	abort
L20:
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
	js	L30
	cmpl	$0, -8(%rbp)
	je	L31
	call	abort
L30:
	cmpl	$0, -8(%rbp)
	jne	L31
	call	abort
L31:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	jns	L32
	cmpl	$0, -8(%rbp)
	jne	L33
	call	abort
L32:
	cmpl	$0, -8(%rbp)
	je	L33
	call	abort
L33:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	jns	L34
	cmpl	$0, -8(%rbp)
	jne	L35
	call	abort
L34:
	cmpl	$0, -8(%rbp)
	je	L35
	call	abort
L35:
	movzbl	-4(%rbp), %eax
	testb	%al, %al
	js	L36
	cmpl	$0, -8(%rbp)
	je	L29
	call	abort
L36:
	cmpl	$0, -8(%rbp)
	jne	L29
	call	abort
L29:
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
	js	L39
	cmpl	$0, -8(%rbp)
	je	L40
	call	abort
L39:
	cmpl	$0, -8(%rbp)
	jne	L40
	call	abort
L40:
	cmpw	$0, -4(%rbp)
	jns	L41
	cmpl	$0, -8(%rbp)
	jne	L42
	call	abort
L41:
	cmpl	$0, -8(%rbp)
	je	L42
	call	abort
L42:
	cmpw	$0, -4(%rbp)
	jns	L43
	cmpl	$0, -8(%rbp)
	jne	L44
	call	abort
L43:
	cmpl	$0, -8(%rbp)
	je	L44
	call	abort
L44:
	cmpw	$0, -4(%rbp)
	js	L45
	cmpl	$0, -8(%rbp)
	je	L38
	call	abort
L45:
	cmpl	$0, -8(%rbp)
	jne	L38
	call	abort
L38:
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
	js	L48
	cmpl	$0, -8(%rbp)
	je	L49
	call	abort
L48:
	cmpl	$0, -8(%rbp)
	jne	L49
	call	abort
L49:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L50
	cmpl	$0, -8(%rbp)
	jne	L51
	call	abort
L50:
	cmpl	$0, -8(%rbp)
	je	L51
	call	abort
L51:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	jns	L52
	cmpl	$0, -8(%rbp)
	jne	L53
	call	abort
L52:
	cmpl	$0, -8(%rbp)
	je	L53
	call	abort
L53:
	movzwl	-4(%rbp), %eax
	testw	%ax, %ax
	js	L54
	cmpl	$0, -8(%rbp)
	je	L47
	call	abort
L54:
	cmpl	$0, -8(%rbp)
	jne	L47
	call	abort
L47:
	leave
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	L57
	cmpl	$0, -8(%rbp)
	je	L58
	call	abort
L57:
	cmpl	$0, -8(%rbp)
	jne	L58
	call	abort
L58:
	cmpl	$0, -4(%rbp)
	jns	L59
	cmpl	$0, -8(%rbp)
	jne	L60
	call	abort
L59:
	cmpl	$0, -8(%rbp)
	je	L60
	call	abort
L60:
	cmpl	$0, -4(%rbp)
	jns	L61
	cmpl	$0, -8(%rbp)
	jne	L62
	call	abort
L61:
	cmpl	$0, -8(%rbp)
	je	L62
	call	abort
L62:
	cmpl	$0, -4(%rbp)
	js	L63
	cmpl	$0, -8(%rbp)
	je	L56
	call	abort
L63:
	cmpl	$0, -8(%rbp)
	jne	L56
	call	abort
L56:
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
	js	L66
	cmpl	$0, -8(%rbp)
	je	L67
	call	abort
L66:
	cmpl	$0, -8(%rbp)
	jne	L67
	call	abort
L67:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	L68
	cmpl	$0, -8(%rbp)
	jne	L69
	call	abort
L68:
	cmpl	$0, -8(%rbp)
	je	L69
	call	abort
L69:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	L70
	cmpl	$0, -8(%rbp)
	jne	L71
	call	abort
L70:
	cmpl	$0, -8(%rbp)
	je	L71
	call	abort
L71:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	js	L72
	cmpl	$0, -8(%rbp)
	je	L65
	call	abort
L72:
	cmpl	$0, -8(%rbp)
	jne	L65
	call	abort
L65:
	leave
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	js	L75
	cmpl	$0, -12(%rbp)
	je	L76
	call	abort
L75:
	cmpl	$0, -12(%rbp)
	jne	L76
	call	abort
L76:
	cmpq	$0, -8(%rbp)
	jns	L77
	cmpl	$0, -12(%rbp)
	jne	L78
	call	abort
L77:
	cmpl	$0, -12(%rbp)
	je	L78
	call	abort
L78:
	cmpq	$0, -8(%rbp)
	jns	L79
	cmpl	$0, -12(%rbp)
	jne	L80
	call	abort
L79:
	cmpl	$0, -12(%rbp)
	je	L80
	call	abort
L80:
	cmpq	$0, -8(%rbp)
	js	L81
	cmpl	$0, -12(%rbp)
	je	L74
	call	abort
L81:
	cmpl	$0, -12(%rbp)
	jne	L74
	call	abort
L74:
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
	js	L84
	cmpl	$0, -12(%rbp)
	je	L85
	call	abort
L84:
	cmpl	$0, -12(%rbp)
	jne	L85
	call	abort
L85:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jns	L86
	cmpl	$0, -12(%rbp)
	jne	L87
	call	abort
L86:
	cmpl	$0, -12(%rbp)
	je	L87
	call	abort
L87:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jns	L88
	cmpl	$0, -12(%rbp)
	jne	L89
	call	abort
L88:
	cmpl	$0, -12(%rbp)
	je	L89
	call	abort
L89:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L90
	cmpl	$0, -12(%rbp)
	je	L83
	call	abort
L90:
	cmpl	$0, -12(%rbp)
	jne	L83
	call	abort
L83:
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
