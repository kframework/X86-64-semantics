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
	.comm	x,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	x(%rip), %rax
	testq	%rax, %rax
	jne	L9
	call	abort
L9:
	popq	%rbp
	ret
LC0:
	.string	"Everything OK"
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	L12
	leaq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L13
L12:
	movq	$x+8, -8(%rbp)
	subq	$8, -8(%rbp)
L13:
	movq	-8(%rbp), %rax
	movq	$LC0, (%rax)
	call	foo
	movq	-8(%rbp), %rax
	movq	$LC0, (%rax)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, x(%rip)
	movl	$0, %edi
	call	baz
	movq	x(%rip), %rax
	testq	%rax, %rax
	jne	L15
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
