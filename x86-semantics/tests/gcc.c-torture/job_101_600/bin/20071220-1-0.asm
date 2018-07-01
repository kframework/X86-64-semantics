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
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$b.2261, %edi
	call	baz
	movq	%rax, -8(%rbp)
	nop
L13:
	movl	$17, %eax
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	f1
	cmpl	$17, %eax
	jne	L20
	call	f1
	cmpl	$17, %eax
	jne	L20
	call	f2
	cmpl	$17, %eax
	jne	L20
	call	f2
	cmpl	$17, %eax
	je	L21
L20:
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
b.2261:
	.quad	L13
