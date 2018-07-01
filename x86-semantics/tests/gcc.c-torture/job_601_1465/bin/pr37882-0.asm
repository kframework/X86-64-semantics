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
	.comm	s,1,1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	s(%rip), %eax
	andl	$-8, %eax
	orl	$4, %eax
	movb	%al, s(%rip)
	movzbl	s(%rip), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jle	L10
	movzbl	s(%rip), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	jg	L10
	call	abort
L10:
	movl	$0, %eax
	popq	%rbp
	ret
