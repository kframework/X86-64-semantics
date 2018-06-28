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
find:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	sarq	$2, %rax
	movl	%eax, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ok
	subl	$1, -4(%rbp)
L10:
	cmpl	$0, -4(%rbp)
	jg	L11
	call	abort
ok:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find
	leave
	ret
