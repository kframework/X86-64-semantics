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
	.comm	v,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	v(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jne	L10
	cmpl	$0, -8(%rbp)
	jne	L10
	cmpl	$9, -12(%rbp)
	je	L9
L10:
	call	abort
L9:
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, %rcx
	movl	%edx, %eax
	movq	%rcx, -24(%rbp)
	movl	%eax, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	baz
	movl	-4(%rbp), %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, v(%rip)
	movl	v(%rip), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	v(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	v(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	$9, %edi
	call	bar
	movl	$17, v(%rip)
	movl	v(%rip), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	v(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	v(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	$9, %edi
	call	bar
	movl	$0, %eax
	leave
	ret
