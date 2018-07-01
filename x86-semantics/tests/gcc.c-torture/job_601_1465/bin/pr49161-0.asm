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
	.comm	c,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	c(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, c(%rip)
	cmpl	-4(%rbp), %eax
	je	L9
	call	abort
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	je	L23
	cmpl	$6, %eax
	je	L24
	cmpl	$3, %eax
	je	L25
	jmp	L11
L25:
	nop
L16:
	jmp	L20
L23:
	nop
L17:
	jmp	L20
L24:
	nop
L18:
	movl	$-1, %edi
	call	bar
L20:
	movl	$0, %edi
	call	bar
	cmpl	$4, -4(%rbp)
	je	L21
	movl	$1, %edi
	call	bar
L21:
	cmpl	$3, -4(%rbp)
	je	L22
	movl	$-1, %edi
	call	bar
L22:
	movl	$2, %edi
	call	bar
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %edi
	call	foo
	movl	c(%rip), %eax
	cmpl	$3, %eax
	je	L27
	call	abort
L27:
	movl	$0, %eax
	popq	%rbp
	ret
