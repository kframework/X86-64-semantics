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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	wwrite
	cmpl	$123, %eax
	je	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
wwrite:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	cmpq	$44, %rax
	ja	L12
	movq	L14(,%rax,8), %rax
	jmp	*%rax
L14:
	.quad	L13
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L13
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L13
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L13
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L12
	.quad	L13
L13:
	movl	$0, %eax
	jmp	L15
L12:
	movl	$123, %eax
L15:
	popq	%rbp
	ret
