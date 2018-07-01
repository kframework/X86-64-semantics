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
	.comm	bid_Kx192,768,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	cmpl	$1, -4(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$bid_Kx192+8, %rax
	movq	%rcx, (%rax)
	addl	$1, -4(%rbp)
L10:
	cmpl	$31, -4(%rbp)
	jle	L11
	movl	$0, -4(%rbp)
	jmp	L12
L13:
	movq	bid_Kx192+32(%rip), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
L12:
	cmpl	$31, -4(%rbp)
	jle	L13
	cmpq	$32, -16(%rbp)
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
