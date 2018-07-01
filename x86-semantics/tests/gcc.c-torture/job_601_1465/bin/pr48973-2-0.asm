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
	.comm	s,4,4
v:
	.long	-1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	v(%rip), %eax
	shrl	$31, %eax
	sall	$7, %eax
	sarb	$7, %al
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	s(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, s(%rip)
	movzbl	s(%rip), %eax
	sall	$7, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	cmpl	$-1, %eax
	je	L10
	call	abort
L10:
	movl	$0, %eax
	popq	%rbp
	ret
