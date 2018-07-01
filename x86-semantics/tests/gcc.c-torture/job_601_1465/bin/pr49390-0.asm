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
	.comm	a,8,4
	.comm	b,8,8
	.comm	u,64,64
	.comm	v,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$4, -4(%rbp)
	jne	L10
	cmpq	$u+4, -16(%rbp)
	je	L11
L10:
	call	abort
L11:
	movl	-8(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, v(%rip)
	movl	$16384, v(%rip)
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, v(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, v(%rip)
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, v(%rip)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, v(%rip)
	movl	$0, v(%rip)
	movl	v(%rip), %eax
	addl	$1, %eax
	popq	%rbp
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	a(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L16
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	L17
L16:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$8191, %eax
	cmpl	$15, %eax
	jbe	L18
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$8191, %eax
	movl	%eax, %edx
	movl	$8192, %eax
	subl	%edx, %eax
	cmpl	$31, %eax
	ja	L17
L18:
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	foo
L17:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	baz
	testl	%eax, %eax
	jne	L19
	jmp	L15
L19:
	movq	b(%rip), %rax
	movzwl	2(%rax), %eax
	movzwl	%ax, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	L21
	movl	$32, %eax
	jmp	L22
L21:
	movl	$4, %eax
L22:
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$8191, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L23
	movl	-28(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L24
L23:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	L24
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$2, %edi
	call	foo
	jmp	L15
L24:
	movq	b(%rip), %rax
	movzwl	2(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L25
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L25
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	call	bar
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$3, %edi
	call	foo
	jmp	L15
L25:
	movq	b(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	andl	$8191, %eax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jb	L26
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L27
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jb	L26
L27:
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	foo
L26:
	nop
L15:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$a, %edx
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$8192, u+8(%rip)
	movq	$u, b(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test
	movl	v(%rip), %eax
	cmpl	$16384, %eax
	je	L30
	call	abort
L30:
	movl	$0, %eax
	leave
	ret
