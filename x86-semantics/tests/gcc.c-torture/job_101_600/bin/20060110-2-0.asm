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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	salq	$32, %rax
	sarq	$32, %rax
	popq	%rbp
	ret
a:
	.quad	1311768466852950544
b:
	.quad	2541551395937657089
c:
	.quad	-610839791
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	b(%rip), %rdx
	movq	a(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	f
	movq	c(%rip), %rdx
	cmpq	%rdx, %rax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
