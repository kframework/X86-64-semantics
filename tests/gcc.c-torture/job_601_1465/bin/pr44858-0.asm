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
a:
	.long	3
b:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	cltq
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	movl	b(%rip), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	foo
	movl	b(%rip), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	setg	%al
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
	movl	a(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	-4(%rbp), %eax
	movl	%eax, b(%rip)
	movl	-4(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	testl	%eax, %eax
	jne	L14
	movl	b(%rip), %eax
	cmpl	$1, %eax
	je	L15
L14:
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
