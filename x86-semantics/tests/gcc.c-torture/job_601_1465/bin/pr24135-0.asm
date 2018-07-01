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
y.2262:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movq	%r10, %rax
	movl	-4(%rbp), %edx
	cmpl	$1, %edx
	je	L11
	cmpl	$2, %edx
	je	L12
	jmp	L14
L11:
	movl	$L13, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
L12:
	movl	$L13, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
L14:
	leave
	ret
x:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -76(%rbp)
	movl	%esi, -80(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%rsp, -64(%rbp)
	addl	$2, -76(%rbp)
	movl	-80(%rbp), %eax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	call	y.2262
	jmp	L16
L13:
	leaq	40(%rbp), %rbp
L16:
	movl	-76(%rbp), %eax
	addq	$40, %rsp
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
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	jmp	L19
L23:
	movl	$1, -4(%rbp)
	jmp	L20
L22:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	x
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	je	L21
	call	abort
L21:
	addl	$1, -4(%rbp)
L20:
	cmpl	$2, -4(%rbp)
	jle	L22
	addl	$1, -8(%rbp)
L19:
	cmpl	$2, -8(%rbp)
	jle	L23
	movl	$0, %eax
	leave
	ret
