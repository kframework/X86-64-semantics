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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$31, -8(%rbp)
	jbe	L10
	movl	-4(%rbp), %eax
	jmp	L11
L10:
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	shrx	%eax, %edx, %eax
L11:
	popq	%rbp
	ret
a:
	.long	1
b:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movb	%al, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jne	L13
	jmp	L12
L13:
	movzbl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %ecx
	movl	$28672, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movl	a(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	a(%rip), %edx
	movl	a(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	movl	%eax, -8(%rbp)
	movl	a(%rip), %eax
	cmpl	-8(%rbp), %eax
	je	L15
	movl	a(%rip), %eax
	cmpl	$1, %eax
	je	L15
	movl	$1, %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movl	b(%rip), %eax
	andl	%edx, %eax
	movl	%eax, b(%rip)
L12:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	movl	$1, %edi
	call	foo
	movl	$1, %esi
	movl	$255, %edi
	call	foo
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L18
	call	abort
L18:
	movl	$0, %eax
	popq	%rbp
	ret
