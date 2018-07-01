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
f.2258:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movq	%r10, %rax
	cmpl	$2, -4(%rbp)
	jne	L10
	movl	$L11, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
L10:
	movl	$0, %eax
	leave
	ret
s:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -76(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%rsp, -64(%rbp)
	cmpl	$0, -76(%rbp)
	jle	L14
	movl	-76(%rbp), %eax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	call	f.2258
	jmp	L15
L11:
	leaq	40(%rbp), %rbp
L14:
	movl	$1, %eax
L15:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
x:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	s
	cmpl	$1, %eax
	jne	L17
	movl	$1, %edi
	movl	$0, %eax
	call	s
	testl	%eax, %eax
	jne	L17
	movl	$2, %edi
	movl	$0, %eax
	call	s
	cmpl	$1, %eax
	jne	L17
	movl	$1, %eax
	jmp	L18
L17:
	movl	$0, %eax
L18:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	x
	cmpl	$1, %eax
	je	L21
	call	abort
L21:
	movl	$0, %edi
	call	exit
