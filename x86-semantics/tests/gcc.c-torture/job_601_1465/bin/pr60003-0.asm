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
	.comm	jmp_buf,40,32
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$jmp_buf, %eax
	movq	8(%rax), %rdx
	movq	(%rax), %rbp
	movq	16(%rax), %rsp
	jmp	*%rdx
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	call	baz
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, -60(%rbp)
	movl	$0, -44(%rbp)
	movl	$jmp_buf, %eax
	leaq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L12, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L13
L12:
	leaq	40(%rbp), %rbp
	movl	$1, %eax
L13:
	testl	%eax, %eax
	jne	L14
L15:
	movl	$1, -44(%rbp)
	call	bar
	jmp	L15
L14:
	cmpl	$0, -44(%rbp)
	jne	L16
	movl	$0, %eax
	jmp	L17
L16:
	movl	-60(%rbp), %eax
L17:
	addq	$24, %rsp
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
	movl	$1, %edi
	call	foo
	testl	%eax, %eax
	jne	L19
	call	abort
L19:
	movl	$0, %eax
	popq	%rbp
	ret
