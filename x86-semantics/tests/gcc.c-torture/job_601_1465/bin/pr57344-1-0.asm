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
	.comm	s,16,16
	.comm	i,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$-3161, -4(%rbp)
	je	L10
	call	abort
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$2047, %eax
	orl	$-6473728, %eax
	movl	%eax, -16(%rbp)
	movzbl	-12(%rbp), %eax
	orl	$1, %eax
	movb	%al, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, s+8(%rip)
	jmp	L12
L13:
	movq	s+8(%rip), %rax
	salq	$31, %rax
	sarq	$42, %rax
	movl	%eax, %edi
	call	foo
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
L12:
	movl	i(%rip), %eax
	testl	%eax, %eax
	jle	L13
	movl	$0, %eax
	leave
	ret
