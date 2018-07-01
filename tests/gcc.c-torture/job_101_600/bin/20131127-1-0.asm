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
a:
	.value	1
b:
	.long	1
	.zero	10
	.comm	c,14,1
	.comm	d,14,1
	.comm	e,14,1
fn1:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	movq	c(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	c+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movzwl	c+12(%rip), %eax
	movw	%ax, -20(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$281474976710655, %rax
	andq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, b(%rip)
	movzbl	%al, %edx
	movzbl	b+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, b+8(%rip)
	movq	%rax, %rdx
	shrq	$8, %rdx
	movzbl	%dl, %edx
	movzbl	b+9(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, b+9(%rip)
	movq	%rax, %rdx
	shrq	$16, %rdx
	movzbl	%dl, %edx
	movzbl	b+10(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, b+10(%rip)
	movq	%rax, %rdx
	shrq	$24, %rdx
	movzbl	%dl, %edx
	movzbl	b+11(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, b+11(%rip)
	movq	%rax, %rdx
	shrq	$32, %rdx
	movzbl	%dl, %edx
	movzbl	b+12(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, b+12(%rip)
	shrq	$40, %rax
	movzbl	%al, %eax
	movzbl	b+13(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, b+13(%rip)
	movw	$0, a(%rip)
	movq	e(%rip), %rax
	movq	%rax, d(%rip)
	movl	e+8(%rip), %eax
	movl	%eax, d+8(%rip)
	movzwl	e+12(%rip), %eax
	movw	%ax, d+12(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	fn2
	movzwl	a(%rip), %eax
	testw	%ax, %ax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	popq	%rbp
	ret
