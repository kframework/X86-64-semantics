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
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$-2147483648, %eax
	xorl	$4660, %eax
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$4660, %eax
	addl	$-2147483648, %eax
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$-2147483648, %eax
	xorl	$4660, %eax
	popq	%rbp
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$4660, %eax
	addl	$-2147483648, %eax
	popq	%rbp
	ret
test9:
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
test10:
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
test11:
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
test12:
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
	call	test3
	cmpl	-8(%rbp), %eax
	je	L37
	call	abort
L37:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test4
	cmpl	-8(%rbp), %eax
	je	L38
	call	abort
L38:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test5
	cmpl	-8(%rbp), %eax
	je	L39
	call	abort
L39:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test6
	cmpl	-8(%rbp), %eax
	je	L40
	call	abort
L40:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test9
	cmpl	-8(%rbp), %eax
	je	L41
	call	abort
L41:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test10
	cmpl	-8(%rbp), %eax
	je	L42
	call	abort
L42:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test11
	cmpl	-8(%rbp), %eax
	je	L43
	call	abort
L43:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	test12
	cmpl	-8(%rbp), %eax
	je	L36
	call	abort
L36:
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
	movl	$0, %eax
	popq	%rbp
	ret
