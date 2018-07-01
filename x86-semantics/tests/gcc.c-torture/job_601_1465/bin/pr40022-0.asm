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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	L12
L13:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	L14
L15:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
L14:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	leave
	ret
	.comm	d,8,8
	.comm	e,8,8
	.comm	f,8,8
	.comm	g,8,8
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$g, f(%rip)
	movl	$0, %ecx
	movl	$f, %edx
	movl	$e, %esi
	movl	$d, %edi
	call	bar
	movq	d(%rip), %rax
	testq	%rax, %rax
	je	L17
	movq	d(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L17
	movq	d(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L17
	movq	d(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L18
L17:
	call	abort
L18:
	movl	$0, %eax
	popq	%rbp
	ret
