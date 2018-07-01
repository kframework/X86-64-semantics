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
x:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	j.2256(,%rax,8), %rax
	nop
	jmp	*%rax
L11:
	movl	$2, %eax
	jmp	L12
L13:
	movl	$3, %eax
	jmp	L12
L14:
	movl	$5, %eax
L12:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	x
	cmpl	$2, %eax
	jne	L16
	movl	$1, %edi
	call	x
	cmpl	$3, %eax
	jne	L16
	movl	$2, %edi
	call	x
	cmpl	$5, %eax
	je	L17
L16:
	call	abort
L17:
	movl	$0, %edi
	call	exit
j.2256:
	.quad	L11
	.quad	L13
	.quad	L14
