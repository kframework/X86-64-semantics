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
	.comm	a,2040,64
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$256, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
L10:
	sarl	-8(%rbp)
	movl	-4(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %eax
	leaq	a(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	movq	%rdx, a(,%rax,8)
	addl	$4, -4(%rbp)
	cmpl	$1073741839, -4(%rbp)
	jle	L10
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, a+128(%rip)
	movq	$0, a+64(%rip)
	movl	$1610612736, %edi
	movl	$0, %eax
	call	f
	movq	a+128(%rip), %rax
	testq	%rax, %rax
	jne	L12
	movq	a+64(%rip), %rax
	testq	%rax, %rax
	je	L13
L12:
	call	abort
L13:
	movq	$0, a+128(%rip)
	movq	$0, a+64(%rip)
	movl	$1073741824, %edi
	movl	$0, %eax
	call	f
	movq	a+128(%rip), %rax
	testq	%rax, %rax
	je	L14
	movq	a+64(%rip), %rax
	testq	%rax, %rax
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
