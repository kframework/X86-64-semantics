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
	je	L53
	call	abort
L53:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test2
	cmpl	-8(%rbp), %eax
	je	L54
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test7
	cmpl	-8(%rbp), %eax
	je	L55
	call	abort
L55:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test8
	cmpl	-8(%rbp), %eax
	je	L52
	call	abort
L52:
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
	je	L58
	call	abort
L58:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test2u
	cmpl	-8(%rbp), %eax
	je	L59
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test3u
	cmpl	-8(%rbp), %eax
	je	L60
	call	abort
L60:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test4u
	cmpl	-8(%rbp), %eax
	je	L61
	call	abort
L61:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test5u
	cmpl	-8(%rbp), %eax
	je	L62
	call	abort
L62:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test6u
	cmpl	-8(%rbp), %eax
	je	L63
	call	abort
L63:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test7u
	cmpl	-8(%rbp), %eax
	je	L64
	call	abort
L64:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test8u
	cmpl	-8(%rbp), %eax
	je	L65
	call	abort
L65:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test9u
	cmpl	-8(%rbp), %eax
	je	L66
	call	abort
L66:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test10u
	cmpl	-8(%rbp), %eax
	je	L67
	call	abort
L67:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test11u
	cmpl	-8(%rbp), %eax
	je	L68
	call	abort
L68:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test12u
	cmpl	-8(%rbp), %eax
	je	L57
	call	abort
L57:
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
