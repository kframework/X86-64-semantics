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
	.comm	e,1,1
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$84, -4(%rbp)
	je	L9
	cmpb	$-121, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	L12
	cmpl	$127, -8(%rbp)
	jg	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	testl	%eax, %eax
	jne	L14
	movzbl	-1(%rbp), %eax
	movb	%al, e(%rip)
L14:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	L16
	cmpl	$127, -8(%rbp)
	jg	L16
	movl	$1, %eax
	jmp	L17
L16:
	movl	$0, %eax
L17:
	testl	%eax, %eax
	jne	L15
	movzbl	-1(%rbp), %eax
	movb	%al, e(%rip)
L15:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$84, -16(%rbp)
	movb	$-121, -15(%rbp)
	movb	$33, e(%rip)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movzbl	e(%rip), %eax
	cmpb	$33, %al
	je	L20
	call	abort
L20:
	leaq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	foo
	movzbl	e(%rip), %eax
	cmpb	$-121, %al
	je	L21
	call	abort
L21:
	movb	$33, e(%rip)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz
	movzbl	e(%rip), %eax
	cmpb	$33, %al
	je	L22
	call	abort
L22:
	leaq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	baz
	movzbl	e(%rip), %eax
	cmpb	$-121, %al
	je	L23
	call	abort
L23:
	movl	$0, %eax
	leave
	ret
