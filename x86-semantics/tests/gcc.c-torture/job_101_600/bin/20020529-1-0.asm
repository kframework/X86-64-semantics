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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	f1
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	movl	$0, %eax
	jmp	L20
L10:
	cmpl	$0, -28(%rbp)
	je	L12
	jmp	L13
L12:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L14
	call	f2
L14:
	cmpl	$0, -32(%rbp)
	je	L15
	call	f2
L15:
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	cwtl
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	je	L17
	jmp	L21
L17:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	L18
	call	f2
L18:
	cmpl	$0, -32(%rbp)
	je	L16
	call	f2
	jmp	L21
L16:
L21:
	nop
L13:
	jmp	L19
L20:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movw	$23, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	foo
	testl	%eax, %eax
	jne	L23
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	L23
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L23
	movzwl	-16(%rbp), %eax
	testw	%ax, %ax
	je	L24
L23:
	call	abort
L24:
	movl	$0, %edi
	call	exit
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	beenhere.2280(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, beenhere.2280(%rip)
	cmpl	$1, %eax
	jle	L26
	call	abort
L26:
	movl	beenhere.2280(%rip), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.local	beenhere.2280
	.comm	beenhere.2280,4,4
