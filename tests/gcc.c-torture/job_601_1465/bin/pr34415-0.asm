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
	movq	%rdi, -24(%rbp)
	movl	$1, -12(%rbp)
L17:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$96, -16(%rbp)
	jle	L10
	cmpl	$122, -16(%rbp)
	jg	L10
	movl	-16(%rbp), %eax
	subl	$32, %eax
	jmp	L11
L10:
	movl	-16(%rbp), %eax
L11:
	movl	%eax, -16(%rbp)
	cmpl	$66, -16(%rbp)
	jne	L12
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L13
L12:
	cmpl	$65, -16(%rbp)
	jne	L14
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
L15:
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	L15
	jmp	L13
L14:
	nop
	cmpl	$2, -12(%rbp)
	jle	L18
	jmp	L20
L13:
	addq	$1, -24(%rbp)
	addl	$1, -12(%rbp)
	jmp	L17
L20:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	L18
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
L18:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	"Bbb:"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$LC0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	ret
