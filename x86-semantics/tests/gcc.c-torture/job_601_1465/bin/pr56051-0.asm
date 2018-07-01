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
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movb	$0, -61(%rbp)
	movl	$8, -4(%rbp)
	movzbl	-61(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	cmpb	%al, %dl
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	movb	%al, -9(%rbp)
	movzbl	-61(%rbp), %eax
	cmpb	-9(%rbp), %al
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	L33
	call	abort
L33:
	movabsq	$8589934592, %rax
	movq	%rax, -80(%rbp)
	movl	$31, -20(%rbp)
	movq	-80(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	shlx	%eax, %ecx, %eax
	cltq
	cmpq	%rax, %rdx
	setae	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setae	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	L34
	call	abort
L34:
	movabsq	$8589934592, %rax
	movq	%rax, -96(%rbp)
	movl	$31, -40(%rbp)
	movq	-96(%rbp), %rdx
	movl	-40(%rbp), %eax
	shrx	%rax, %rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	movl	%eax, %eax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-56(%rbp), %rax
	setae	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	L35
	call	abort
L35:
	movl	$0, %eax
	leave
	ret
