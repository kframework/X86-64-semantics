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
	.comm	foo,4,4
	.comm	oldfoo,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	foo+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movl	%eax, oldfoo(%rip)
	movl	-4(%rbp), %eax
	andl	$15, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	foo+1(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movb	%al, foo+1(%rip)
	cmpl	$0, -4(%rbp)
	je	L10
	movl	$1, %eax
	jmp	L11
L10:
	movl	$2, %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bar
	cmpl	$1, %eax
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
