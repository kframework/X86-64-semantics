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
y.2257:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%r10, %rax
	movq	$L10, -8(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	L11
	jmp	L10
L11:
	cmpl	$0, -20(%rbp)
	jne	L10
	movl	$L14, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rsp
	jmp	*%rdx
L10:
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movq	%rax, %r10
	movl	%edx, %edi
	movl	$0, %eax
	call	y.2257
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
	subq	$56, %rsp
	movl	%edi, -84(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rsp, -72(%rbp)
	movl	-84(%rbp), %eax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %r10
	movl	%eax, %edi
	movl	$0, %eax
	call	y.2257
	jmp	L16
L14:
	leaq	48(%rbp), %rbp
L16:
	movl	-84(%rbp), %eax
	addq	$56, %rsp
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
	movl	$1000, %edi
	movl	$0, %eax
	call	x
	cmpl	$1000, %eax
	je	L19
	call	abort
L19:
	movl	$0, %edi
	call	exit
