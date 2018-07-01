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
e:
	.long	1
u:
	.long	5
	.comm	t2,4,4
	.comm	t5,4,4
	.comm	i,4,4
	.comm	k,4,4
	.comm	a,4,4
	.comm	b,4,4
	.comm	m,4,4
	.comm	n,1,1
	.comm	t,1,1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
L17:
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cmpl	$4, %eax
	jbe	L10
	jmp	L11
L14:
	movl	u(%rip), %eax
	testl	%eax, %eax
	jne	L12
	movzbl	n(%rip), %eax
	testb	%al, %al
	je	L11
L12:
L11:
	movl	t5(%rip), %eax
	testl	%eax, %eax
	jne	L14
L10:
	movl	-20(%rbp), %eax
	andl	$4, %eax
	movl	%eax, t2(%rip)
	movl	b(%rip), %eax
	cmpl	$-1, %eax
	je	L15
	movl	$0, %eax
	jmp	L18
L15:
	movl	-16(%rbp), %eax
	movl	%eax, u(%rip)
	jmp	L17
L18:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L20
L22:
	movl	m(%rip), %eax
	testl	%eax, %eax
	jne	L21
	movzbl	t(%rip), %eax
	movb	%al, -1(%rbp)
L21:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	fn1
	movl	e(%rip), %eax
	subl	$1, %eax
	movl	%eax, e(%rip)
L20:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jns	L22
	movl	t2(%rip), %eax
	cltq
	movl	a(,%rax,4), %eax
	testl	%eax, %eax
	je	L23
	call	abort
L23:
	movl	$0, %eax
	leave
	ret
