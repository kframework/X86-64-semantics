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
nested.2260:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movl	$254, %edx
	movl	%edx, (%rax)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	nested.2260
	movl	-16(%rbp), %eax
	movl	-16(%rbp), %eax
	movl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	leave
	ret
nested.2267:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movl	(%rax), %edx
	movl	(%rax), %edx
	movl	(%rax), %edx
	addl	$4, %edx
	movl	%edx, (%rax)
	movl	(%rax), %edx
	movl	%edx, (%rax)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	nested.2267
	movl	-16(%rbp), %eax
	leave
	ret
nested2.2277:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movq	(%rax), %rdx
	movl	(%rdx), %edx
	movq	(%rax), %rdx
	movq	(%rax), %rdx
	movl	(%rdx), %edx
	movq	(%rax), %rdx
	movl	(%rdx), %edx
	leal	4(%rdx), %ecx
	movq	(%rax), %rdx
	movl	%ecx, (%rdx)
	movq	(%rax), %rdx
	movl	(%rdx), %edx
	movq	(%rax), %rcx
	movl	%edx, (%rcx)
	movq	(%rax), %rdx
	movq	(%rax), %rax
	popq	%rbp
	ret
nested.2274:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%r10, %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	nested2.2277
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	nested2.2277
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	nested.2274
	movl	-16(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	cmpl	$254, %eax
	jne	L20
	call	bar
	cmpl	$4, %eax
	jne	L20
	call	baz
	cmpl	$8, %eax
	je	L21
L20:
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
