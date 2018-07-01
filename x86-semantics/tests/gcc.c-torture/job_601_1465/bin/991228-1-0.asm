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
u:
	.long	0
	.long	-1076887552
endianness_test:
	.quad	1
signbit:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$endianness_test, %eax
	movl	(%rax), %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$endianness_test, %eax
	movl	(%rax), %eax
	cltq
	movl	u(,%rax,4), %eax
	testl	%eax, %eax
	js	L12
	movl	$0, %edi
	call	exit
L12:
	movl	$0, %edi
	call	exit
