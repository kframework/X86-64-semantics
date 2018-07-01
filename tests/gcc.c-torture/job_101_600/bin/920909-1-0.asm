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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$1026, %eax
	cmpl	$5, %eax
	ja	L10
	movl	%eax, %eax
	movq	L12(,%rax,8), %rax
	jmp	*%rax
L12:
	.quad	L11
	.quad	L13
	.quad	L14
	.quad	L15
	.quad	L16
	.quad	L17
L11:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	jmp	L18
L13:
	movl	-4(%rbp), %eax
	addl	$2, %eax
	jmp	L18
L14:
	movl	-4(%rbp), %eax
	addl	$3, %eax
	jmp	L18
L15:
	movl	-4(%rbp), %eax
	addl	$4, %eax
	jmp	L18
L16:
	movl	$1, %eax
	jmp	L18
L17:
	movl	$4, %eax
	jmp	L18
L10:
	movl	$0, %eax
L18:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	movl	$0, %eax
	call	f
	testl	%eax, %eax
	je	L20
	call	abort
L20:
	movl	$0, %edi
	call	exit
