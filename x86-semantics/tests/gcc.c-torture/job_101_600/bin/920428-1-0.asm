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
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movsbl	%al, %eax
	cltq
	movzbl	-9(%rbp,%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movslq	%ecx, %rax
	movb	%dl, -9(%rbp,%rax)
	movq	-8(%rbp), %rax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
LC0:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$LC0, %edi
	call	x
	cmpl	$1, %eax
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
