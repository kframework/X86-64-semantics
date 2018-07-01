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
	.comm	s1,76,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movb	$100, -7(%rbp)
	leaq	-80(%rbp), %rax
	movq	s1(%rip), %rdx
	movq	%rdx, (%rax)
	movq	s1+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	s1+16(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	s1+24(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	s1+32(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	s1+40(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	s1+48(%rip), %rdx
	movq	%rdx, 48(%rax)
	movq	s1+56(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	s1+64(%rip), %rdx
	movq	%rdx, 64(%rax)
	movzbl	s1+72(%rip), %edx
	movb	%dl, 72(%rax)
	movzbl	-7(%rbp), %eax
	cmpb	$100, %al
	je	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
