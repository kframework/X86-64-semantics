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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	jne	L10
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	L11
L10:
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-4028, -16(%rbp)
	movl	$4096, -12(%rbp)
	leaq	-16(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	foo
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
