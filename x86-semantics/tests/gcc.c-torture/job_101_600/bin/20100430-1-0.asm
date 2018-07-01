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
	.local	g
	.comm	g,2,2
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	movw	%ax, g(%rip)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L11
L14:
	movl	$0, -8(%rbp)
	jmp	L12
L13:
	movq	-24(%rbp), %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	leaq	(%rax,%rax), %rdi
	movq	%rcx, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	subq	%rcx, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	dummy
	addl	$1, -8(%rbp)
L12:
	movq	-24(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$5, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	%rcx, %rax
	addq	%rsi, %rax
	movzbl	7(%rax), %eax
	movzbl	%al, %eax
	cmpl	-8(%rbp), %eax
	jg	L13
	addl	$1, -4(%rbp)
L11:
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jg	L14
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$912, %rsp
	movb	$2, -908(%rbp)
	movb	$8, -682(%rbp)
	movzbl	-682(%rbp), %eax
	movb	%al, -905(%rbp)
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	leave
	ret
