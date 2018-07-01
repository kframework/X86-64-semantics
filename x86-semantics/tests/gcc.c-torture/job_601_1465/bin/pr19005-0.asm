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
	.comm	v,4,4
	.comm	s,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	v(%rip), %eax
	movb	%al, -1(%rbp)
	movl	s(%rip), %eax
	testl	%eax, %eax
	jne	L10
	movzbl	-1(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	L11
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movzbl	%al, %eax
	cmpl	-24(%rbp), %eax
	je	L12
L11:
	call	abort
L10:
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jne	L13
	movzbl	-1(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	L12
L13:
	call	abort
L12:
	movl	s(%rip), %eax
	xorl	$1, %eax
	movl	%eax, s(%rip)
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %edx
	movzbl	-1(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	movzbl	-2(%rbp), %eax
	xorb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	xorb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	xorb	%al, -1(%rbp)
	movzbl	-2(%rbp), %edx
	movzbl	-1(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-10, v(%rip)
	jmp	L17
L18:
	movl	v(%rip), %eax
	movl	%eax, %edi
	call	foo
	movl	v(%rip), %eax
	addl	$1, %eax
	movl	%eax, v(%rip)
L17:
	movl	v(%rip), %eax
	cmpl	$265, %eax
	jle	L18
	movl	$0, %eax
	popq	%rbp
	ret
