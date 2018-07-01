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
	.comm	s,32,32
	.comm	i,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$-3161, -8(%rbp)
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
	movq	$0, -8(%rbp)
	movl	-12(%rbp), %eax
	andl	$2047, %eax
	orl	$-6473728, %eax
	movl	%eax, -12(%rbp)
	movzbl	-8(%rbp), %eax
	orl	$1, %eax
	movb	%al, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, s+16(%rip)
	movq	%rdx, s+24(%rip)
	jmp	L12
L13:
	movl	s+20(%rip), %eax
	shrl	$11, %eax
	movl	%eax, %eax
	movzbl	s+24(%rip), %edx
	andl	$1, %edx
	salq	$21, %rdx
	orq	%rdx, %rax
	salq	$42, %rax
	sarq	$42, %rax
	cltq
	movq	%rax, %rdi
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
