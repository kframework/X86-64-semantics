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
	.comm	s,768,64
	.comm	g,1,1
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	movb	%al, g(%rip)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L11
L13:
	cmpl	$127, -4(%rbp)
	jle	L12
	cmpl	$255, -4(%rbp)
	jg	L12
	movl	-4(%rbp), %eax
	addl	$-128, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	$s, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	dummy
	addl	$1, -8(%rbp)
L12:
	addl	$1, -4(%rbp)
L11:
	cmpl	$255, -4(%rbp)
	jle	L13
	movl	-8(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	cmpl	$128, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
