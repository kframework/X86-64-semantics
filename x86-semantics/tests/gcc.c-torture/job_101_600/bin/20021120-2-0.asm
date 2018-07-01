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
	.comm	g1,4,4
	.comm	g2,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	L10
	movl	$793, -4(%rbp)
	jmp	L11
L10:
	movl	$793, -4(%rbp)
L11:
	movl	$7930, %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, g1(%rip)
	movl	$7930, %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, g2(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$793, %edi
	call	foo
	movl	g1(%rip), %eax
	cmpl	$10, %eax
	jne	L13
	movl	g2(%rip), %eax
	cmpl	$10, %eax
	je	L14
L13:
	call	abort
L14:
	movl	$0, %edi
	call	exit
