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
a:
	.quad	3221225472
b:
	.quad	3489660928
c:
	.quad	3223042392
d:
	.quad	3223732224
e:
	.quad	3223879680
f:
	.quad	3224191864
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$245, -4(%rbp)
	jne	L10
	cmpl	$36, -8(%rbp)
	jne	L10
	cmpl	$444, -12(%rbp)
	je	L9
L10:
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	a(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	L13
L17:
	movq	c(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jae	L14
	addl	$1, -12(%rbp)
	jmp	L15
L14:
	movq	d(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	L16
	movq	e(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jae	L16
	addl	$1, -20(%rbp)
	jmp	L15
L16:
	movq	f(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jae	L15
	addl	$1, -16(%rbp)
L15:
	addq	$4096, -8(%rbp)
L13:
	movq	b(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	L17
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
