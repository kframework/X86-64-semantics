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
	.local	v
	.comm	v,260,64
p:
	.quad	v
q:
	.quad	v+4
rp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	p(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
qp:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$256, %rsp
	movq	q(%rip), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	rp
	movq	%rbx, %rax
	leaq	-272(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	addq	$256, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movq	p(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
L13:
	cmpl	$255, -4(%rbp)
	jle	L14
	call	qp
	movl	$0, -4(%rbp)
	jmp	L15
L17:
	movq	q(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	je	L16
	call	abort
L16:
	addl	$1, -4(%rbp)
L15:
	cmpl	$255, -4(%rbp)
	jle	L17
	movl	$0, %eax
	leave
	ret
