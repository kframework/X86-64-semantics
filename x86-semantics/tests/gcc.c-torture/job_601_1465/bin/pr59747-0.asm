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
	.comm	a,24,16
c:
	.long	1
	.comm	d,4,4
	.comm	e,2,2
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, a(%rip)
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L12
	movzwl	e(%rip), %eax
	subl	$1, %eax
	movw	%ax, e(%rip)
L12:
	movzwl	e(%rip), %eax
	cwtl
	movl	%eax, d(%rip)
	movzwl	e(%rip), %eax
	movswq	%ax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$56, %rax
	andl	$1, %eax
	movl	%eax, %edi
	call	fn1
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
