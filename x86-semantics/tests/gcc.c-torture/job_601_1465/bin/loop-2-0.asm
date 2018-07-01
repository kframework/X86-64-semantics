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
	.comm	a,8,4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, a(,%rax,4)
	addl	$1, -4(%rbp)
L10:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, a+4(%rip)
	movl	a+4(%rip), %eax
	movl	%eax, a(%rip)
	movl	$2, %edi
	movl	$0, %eax
	call	f
	movl	a(%rip), %eax
	cmpl	$-2, %eax
	jne	L13
	movl	a+4(%rip), %eax
	cmpl	$-1, %eax
	je	L14
L13:
	call	abort
L14:
	movl	$0, %edi
	call	exit
