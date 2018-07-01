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
c:
	.long	1
	.comm	d,4,4
	.comm	e,4,4
	.comm	g,4,4
	.comm	b,4,4
	.comm	f,1,1
	.comm	h,8,8
	.comm	i,2,2
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, e(%rip)
	jmp	L10
L11:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L10:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	g(%rip), %eax
	testl	%eax, %eax
	je	L13
	movl	b(%rip), %eax
L13:
	call	foo
	movl	$0, d(%rip)
	jmp	L14
L17:
	movzbl	f(%rip), %eax
	cbtw
	movw	%ax, -2(%rbp)
	movl	$0, -8(%rbp)
	cmpw	$0, -2(%rbp)
	jne	L15
	movswl	-2(%rbp), %edx
	movl	-8(%rbp), %eax
	shlx	%eax, %edx, %eax
	jmp	L16
L15:
	movzwl	-2(%rbp), %eax
L16:
	movw	%ax, i(%rip)
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
L14:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jns	L17
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L18
	movzwl	i(%rip), %eax
	movswq	%ax, %rax
	jmp	L19
L18:
	movl	$0, %eax
L19:
	movq	%rax, h(%rip)
	movq	h(%rip), %rax
	movl	%eax, a(%rip)
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L20
	call	abort
L20:
	movl	$0, %eax
	leave
	ret
