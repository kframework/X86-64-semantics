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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$-2147478988, %eax
	popq	%rbp
	ret
test1u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$-2147478988, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$-2147478988, %eax
	popq	%rbp
	ret
test2u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$-2147478988, %eax
	popq	%rbp
	ret
test3u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$-2147483648, %eax
	xorl	$4660, %eax
	popq	%rbp
	ret
test4u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$4660, %eax
	addl	$-2147483648, %eax
	popq	%rbp
	ret
test5u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$-2147483648, %eax
	xorl	$4660, %eax
	popq	%rbp
	ret
test6u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$4660, %eax
	addl	$-2147483648, %eax
	popq	%rbp
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$-2147483648, -4(%rbp)
	movl	$4660, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test7u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$-2147483648, -4(%rbp)
	movl	$4660, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$4660, -4(%rbp)
	movl	$-2147483648, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test8u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$4660, -4(%rbp)
	movl	$-2147483648, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test9u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$-2147483648, -4(%rbp)
	movl	$4660, -8(%rbp)
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test10u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$4660, -4(%rbp)
	movl	$-2147483648, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
test11u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$-2147483648, -4(%rbp)
	movl	$4660, -8(%rbp)
	movl	-20(%rbp), %eax
	subl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	popq	%rbp
	ret
test12u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$4660, -4(%rbp)
	movl	$-2147483648, -8(%rbp)
	movl	-20(%rbp), %eax
	xorl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test1
	cmpl	-8(%rbp), %eax
	je	L72
	call	abort
L72:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test2
	cmpl	-8(%rbp), %eax
	je	L73
	call	abort
L73:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test7
	cmpl	-8(%rbp), %eax
	je	L74
	call	abort
L74:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test8
	cmpl	-8(%rbp), %eax
	je	L71
	call	abort
L71:
	leave
	ret
testu:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test1u
	cmpl	-8(%rbp), %eax
	je	L77
	call	abort
L77:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test2u
	cmpl	-8(%rbp), %eax
	je	L78
	call	abort
L78:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test3u
	cmpl	-8(%rbp), %eax
	je	L79
	call	abort
L79:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test4u
	cmpl	-8(%rbp), %eax
	je	L80
	call	abort
L80:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test5u
	cmpl	-8(%rbp), %eax
	je	L81
	call	abort
L81:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test6u
	cmpl	-8(%rbp), %eax
	je	L82
	call	abort
L82:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test7u
	cmpl	-8(%rbp), %eax
	je	L83
	call	abort
L83:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test8u
	cmpl	-8(%rbp), %eax
	je	L84
	call	abort
L84:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test9u
	cmpl	-8(%rbp), %eax
	je	L85
	call	abort
L85:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test10u
	cmpl	-8(%rbp), %eax
	je	L86
	call	abort
L86:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test11u
	cmpl	-8(%rbp), %eax
	je	L87
	call	abort
L87:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test12u
	cmpl	-8(%rbp), %eax
	je	L76
	call	abort
L76:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147478988, %esi
	movl	$0, %edi
	call	test
	movl	$-2147483648, %esi
	movl	$4660, %edi
	call	test
	movl	$4660, %esi
	movl	$-2147483648, %edi
	call	test
	movl	$0, %esi
	movl	$-2147478988, %edi
	call	test
	movl	$-4661, %esi
	movl	$2147483647, %edi
	call	test
	movl	$2147478987, %esi
	movl	$-1, %edi
	call	test
	movl	$-2147478988, %esi
	movl	$0, %edi
	call	testu
	movl	$-2147483648, %esi
	movl	$4660, %edi
	call	testu
	movl	$4660, %esi
	movl	$-2147483648, %edi
	call	testu
	movl	$0, %esi
	movl	$-2147478988, %edi
	call	testu
	movl	$-4661, %esi
	movl	$2147483647, %edi
	call	testu
	movl	$2147478987, %esi
	movl	$-1, %edi
	call	testu
	movl	$0, %eax
	popq	%rbp
	ret
