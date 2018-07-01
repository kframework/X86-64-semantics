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
do_goto.2265:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movl	$L10, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
recursive:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rsp, -88(%rbp)
	leaq	-96(%rbp), %rax
	addq	$24, %rax
	leaq	-96(%rbp), %rdx
	movl	$do_goto.2265, %ecx
	movw	$-17599, (%rax)
	movl	%ecx, 2(%rax)
	movw	$-17847, 6(%rax)
	movq	%rdx, 8(%rax)
	movl	$-1864106167, 16(%rax)
	cmpl	$3, -100(%rbp)
	jne	L12
	movl	-100(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-96(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	recursive
	jmp	L13
L12:
	cmpl	$0, -100(%rbp)
	jle	L14
	movl	-100(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	recursive
	jmp	L13
L14:
	movq	-112(%rbp), %rax
	call	*%rax
	jmp	L11
L13:
	jmp	L11
L10:
	leaq	48(%rbp), %rbp
L16:
	cmpl	$3, -100(%rbp)
	jne	L17
	movl	$0, %edi
	call	exit
L17:
	call	abort
L11:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$abort, %esi
	movl	$10, %edi
	call	recursive
	call	abort
