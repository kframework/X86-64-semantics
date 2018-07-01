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
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__builtin_add_overflow
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__builtin_add_overflow
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	leaq	-20(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	__builtin_add_overflow
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	leaq	-20(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	__builtin_add_overflow
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %eax
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-18, %rsi
	movl	$16, %edi
	call	f1
	cmpq	$-2, %rax
	jne	L18
	movq	$-17, %rsi
	movl	$16, %edi
	call	f1
	cmpq	$-1, %rax
	jne	L18
	movq	$-16, %rsi
	movl	$16, %edi
	call	f1
	cmpq	$1, %rax
	jne	L18
	movq	$-15, %rsi
	movl	$16, %edi
	call	f1
	cmpq	$2, %rax
	jne	L18
	movq	$-26, %rsi
	movl	$24, %edi
	call	f2
	cmpq	$-2, %rax
	jne	L18
	movq	$-25, %rsi
	movl	$24, %edi
	call	f2
	cmpq	$-1, %rax
	jne	L18
	movq	$-24, %rsi
	movl	$24, %edi
	call	f2
	cmpq	$-1, %rax
	jne	L18
	movq	$-23, %rsi
	movl	$24, %edi
	call	f2
	testq	%rax, %rax
	jne	L18
	movl	$-34, %esi
	movl	$32, %edi
	call	f3
	movl	$4294967294, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$-33, %esi
	movl	$32, %edi
	call	f3
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$-32, %esi
	movl	$32, %edi
	call	f3
	cmpq	$1, %rax
	jne	L18
	movl	$-31, %esi
	movl	$32, %edi
	call	f3
	cmpq	$2, %rax
	jne	L18
	movl	$-37, %esi
	movl	$35, %edi
	call	f4
	movl	$4294967294, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$-36, %esi
	movl	$35, %edi
	call	f4
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$-35, %esi
	movl	$35, %edi
	call	f4
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$-34, %esi
	movl	$35, %edi
	call	f4
	testq	%rax, %rax
	je	L19
L18:
	call	abort
L19:
	movl	$0, %eax
	popq	%rbp
	ret
