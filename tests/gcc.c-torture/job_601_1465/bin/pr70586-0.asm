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
	.comm	e,4,4
	.comm	f,4,4
	.comm	b,2,2
	.comm	c,2,2
	.comm	d,2,2
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	L10
	cmpl	$0, -4(%rbp)
	je	L11
	cmpl	$1, -8(%rbp)
	je	L10
L11:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	jmp	L12
L10:
	movl	-4(%rbp), %eax
L12:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$16, %rsp
	movl	f(%rip), %edx
	movzwl	c(%rip), %eax
	cwtl
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	%eax, -12(%rbp)
	movzwl	d(%rip), %eax
	cwtl
	movl	$2, %esi
	movl	%eax, %edi
	call	foo
	movl	%eax, f(%rip)
	movzwl	c(%rip), %eax
	movswl	%ax, %edx
	movzwl	b(%rip), %eax
	cwtl
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	%eax, -16(%rbp)
	movzwl	c(%rip), %eax
	movswl	%ax, %edx
	cmpl	$0, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	movl	%eax, -20(%rbp)
	cmpl	$3, -20(%rbp)
	jg	L15
	movl	$6, %ebx
	jmp	L16
L15:
	movl	$7, %ebx
L16:
	movzwl	c(%rip), %eax
	movswl	%ax, %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	cmpl	%eax, %ebx
	setle	%al
	movzbl	%al, %eax
	movw	%ax, c(%rip)
	movl	e(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	foo
	testl	%eax, %eax
	je	L17
	movl	a(%rip), %eax
	jmp	L18
L17:
	movl	$0, %eax
L18:
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	movl	$0, %eax
	popq	%rbp
	ret
