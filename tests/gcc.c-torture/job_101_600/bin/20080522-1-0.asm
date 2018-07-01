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
	.local	i
	.comm	i,4,4
p:
	.quad	i
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	p(%rip), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	p(%rip), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	p(%rip), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$i, %edi
	call	foo
	cmpl	$2, %eax
	je	L14
	call	abort
L14:
	movl	$i, %edi
	call	bar
	cmpl	$1, %eax
	je	L15
	call	abort
L15:
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	L17
	call	abort
L17:
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	cmpl	$2, %eax
	je	L18
	call	abort
L18:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	L19
	call	abort
L19:
	movl	$0, %eax
	leave
	ret
