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
logadd:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movw	$1, -32(%rbp)
	movw	$2, -30(%rbp)
	movw	$3, -28(%rbp)
	movw	$4, -26(%rbp)
	movw	$5, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movw	$50, -48(%rbp)
	movw	$40, -46(%rbp)
	movw	$30, -44(%rbp)
	movw	$20, -42(%rbp)
	movw	$10, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movw	$1, -64(%rbp)
	movw	$2, -62(%rbp)
	movw	$3, -60(%rbp)
	movw	$4, -58(%rbp)
	movw	$5, -56(%rbp)
	movw	$0, -10(%rbp)
	movw	$4, -12(%rbp)
	movswl	-10(%rbp), %eax
	movl	%eax, -8(%rbp)
	movswl	-10(%rbp), %eax
	cltq
	movzwl	-32(%rbp,%rax,2), %eax
	cwtl
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movzwl	-48(%rbp,%rax,2), %edx
	movl	-16(%rbp), %eax
	cltq
	movw	%dx, -64(%rbp,%rax,2)
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L23
L24:
	leaq	-48(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	logadd
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, -64(%rbp,%rdx,2)
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
L23:
	movswl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	L24
	movzwl	-62(%rbp), %eax
	cmpw	$140, %ax
	je	L25
	call	abort
L25:
	movl	$0, %eax
	leave
	ret
