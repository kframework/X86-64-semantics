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
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$128, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$128, %eax
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$128, %eax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	testb	%al, %al
	jns	L37
	movl	$896, %eax
	jmp	L38
L37:
	movl	$0, %eax
L38:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$-128, %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2147483648, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$2147483648, %eax
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	L47
	movabsq	$15032385536, %rax
	jmp	L48
L47:
	movl	$0, %eax
L48:
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$-2147483648, %eax
	cltq
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	f1
	cmpl	$128, %eax
	je	L53
	call	abort
L53:
	call	f2
	cmpl	$128, %eax
	je	L54
	call	abort
L54:
	call	f3
	cmpl	$896, %eax
	je	L55
	call	abort
L55:
	call	f4
	cmpl	$-128, %eax
	je	L56
	call	abort
L56:
	call	f5
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	L57
	call	abort
L57:
	call	f6
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	L58
	call	abort
L58:
	call	f7
	movabsq	$15032385536, %rdx
	cmpq	%rdx, %rax
	je	L59
	call	abort
L59:
	call	f8
	cmpq	$-2147483648, %rax
	je	L60
	call	abort
L60:
	movl	$0, %eax
	popq	%rbp
	ret
