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
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
	.comm	f,4,4
	.comm	i,4,4
	.comm	e,1,1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L13:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L12
	movl	$2, f(%rip)
L12:
	movl	f(%rip), %eax
	movl	%eax, f(%rip)
	movl	f(%rip), %eax
	movzbl	e(%rip), %edx
	andl	%edx, %eax
	movb	%al, e(%rip)
L11:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
L10:
	movl	i(%rip), %eax
	testl	%eax, %eax
	jle	L13
	movzbl	e(%rip), %eax
	sarb	%al
	movsbl	%al, %eax
	andl	$1, %eax
	cltq
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
