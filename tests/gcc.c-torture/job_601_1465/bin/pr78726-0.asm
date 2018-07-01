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
b:
	.byte	36
c:
	.byte	-83
	.comm	d,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	movzbl	%al, %eax
	notl	%eax
	movl	%eax, -4(%rbp)
	movzbl	c(%rip), %eax
	movzbl	%al, %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movzbl	c(%rip), %eax
	movzbl	%al, %eax
	imull	%eax, %edx
	movl	-4(%rbp), %eax
	imull	$1023094746, %eax, %eax
	addl	%edx, %eax
	movl	%eax, d(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movl	d(%rip), %eax
	cmpl	$799092689, %eax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	popq	%rbp
	ret
