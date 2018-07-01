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
	.comm	a,4,4
	.comm	c,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	orl	$1, -4(%rbp)
	andl	$65534, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, %rax
	salq	$15, %rax
	movq	%rax, %rsi
	salq	$16, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	shrl	$15, %ecx
	movl	%ecx, %eax
	sall	$16, %eax
	subl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, c(%rip)
	movl	a(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$6, %edi
	call	foo
	movl	%eax, -4(%rbp)
	cmpl	$6, -4(%rbp)
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
