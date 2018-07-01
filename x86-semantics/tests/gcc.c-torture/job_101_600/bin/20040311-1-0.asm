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
	shrl	$31, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$31, %eax
	negl	%eax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$31, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	sarx	%eax, %edx, %eax
	negl	%eax
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$31, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	negl	%eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	test1
	testl	%eax, %eax
	je	L29
	call	abort
L29:
	movl	$1, %edi
	call	test1
	testl	%eax, %eax
	je	L30
	call	abort
L30:
	movl	$-1, %edi
	call	test1
	cmpl	$1, %eax
	je	L31
	call	abort
L31:
	movl	$0, %edi
	call	test2
	testl	%eax, %eax
	je	L32
	call	abort
L32:
	movl	$1, %edi
	call	test2
	testl	%eax, %eax
	je	L33
	call	abort
L33:
	movl	$-1, %edi
	call	test2
	cmpl	$-1, %eax
	je	L34
	call	abort
L34:
	movl	$0, %edi
	call	test3
	testl	%eax, %eax
	je	L35
	call	abort
L35:
	movl	$1, %edi
	call	test3
	testl	%eax, %eax
	je	L36
	call	abort
L36:
	movl	$-1, %edi
	call	test3
	cmpl	$1, %eax
	je	L37
	call	abort
L37:
	movl	$0, %edi
	call	test4
	testl	%eax, %eax
	je	L38
	call	abort
L38:
	movl	$1, %edi
	call	test4
	testl	%eax, %eax
	je	L39
	call	abort
L39:
	movl	$-1, %edi
	call	test4
	cmpl	$-1, %eax
	je	L40
	call	abort
L40:
	movl	$0, %eax
	popq	%rbp
	ret
