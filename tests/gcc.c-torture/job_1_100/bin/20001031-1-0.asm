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
t1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$4100, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
t2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4096, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %edi
	call	t1
	movl	-4(%rbp), %eax
	leave
	ret
t3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2147487743, %eax
	cmpq	%rax, -8(%rbp)
	je	L13
	call	abort
L13:
	leave
	ret
t4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$4096, -8(%rbp)
	movl	$2147487743, %edi
	call	t3
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	t2
	cmpl	$4096, %eax
	je	L18
	call	abort
L18:
	call	t4
	cmpq	$4096, %rax
	je	L19
	call	abort
L19:
	movl	$0, %edi
	call	exit
