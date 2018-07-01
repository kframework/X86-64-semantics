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
	.comm	i,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-1, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	L12
	call	foo
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	L12
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
L12:
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$-1, -4(%rbp)
	movl	$1, i(%rip)
L13:
	cmpl	$-1, -4(%rbp)
	jne	L14
	movl	i(%rip), %eax
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
