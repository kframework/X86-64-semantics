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
	.comm	f,20,16
	.local	g
	.comm	g,20,16
	.local	h
	.comm	h,20,16
i:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	i(%rip), %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	foo
	testb	%al, %al
	je	L12
	movq	-8(%rbp), %rax
	movq	f(%rip), %rdx
	movq	%rdx, (%rax)
	movq	f+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	f+16(%rip), %edx
	movl	%edx, 16(%rax)
	jmp	L11
L12:
	movq	-8(%rbp), %rax
	movq	g(%rip), %rdx
	movq	%rdx, (%rax)
	movq	g+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	g+16(%rip), %edx
	movl	%edx, 16(%rax)
L11:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$40, %rsp
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movq	-48(%rbp), %rax
	movq	%rax, h(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, h+8(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, h+16(%rip)
	movl	$1, f+4(%rip)
	movl	h+4(%rip), %eax
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
