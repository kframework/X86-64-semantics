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
	.comm	a,4,4
	.comm	tmp,8,8
c:
	.quad	tmp
	.comm	d,4,4
e:
	.quad	tmp
	.comm	f,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	L10
L17:
	movl	$1, -4(%rbp)
	jmp	L11
L16:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jne	L12
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L14
L12:
	nop
L14:
	movq	c(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	tmp(%rip), %rax
	cmpq	$a, %rax
	je	L15
	call	abort
L15:
	movq	e(%rip), %rax
	movq	$0, (%rax)
	subl	$1, -4(%rbp)
L11:
	cmpl	$0, -4(%rbp)
	jns	L16
	movl	f(%rip), %eax
	addl	$1, %eax
	movl	%eax, f(%rip)
L10:
	movl	f(%rip), %eax
	testl	%eax, %eax
	je	L17
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$a, %edi
	call	fn1
	movl	$0, %eax
	popq	%rbp
	ret
