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
log_compare:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
__db_txnlist_lsnadd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L23
L29:
	addl	$1, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	L24
L26:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	log_compare
	testl	%eax, %eax
	jns	L25
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
L25:
	addl	$1, -8(%rbp)
L24:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	subl	$1, %eax
	cmpl	-8(%rbp), %eax
	jg	L26
	addl	$1, -4(%rbp)
L23:
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L27
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	jmp	L28
L27:
	movl	$1, %eax
L28:
	cmpl	-4(%rbp), %eax
	jg	L29
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$352, %rsp
	movl	$31, -56(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	__db_txnlist_lsnadd
	cmpl	$1, %eax
	je	L32
	call	abort
L32:
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	__db_txnlist_lsnadd
	cmpl	$31, %eax
	je	L33
	call	abort
L33:
	movl	$0, %edi
	call	exit
