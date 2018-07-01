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
foo.2257:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -40(%rbp)
	movq	%r10, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	(%rax), %edx
	movslq	%edx, %rsi
	subq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movslq	%edx, %rsi
	movq	%rsi, %rcx
	movl	$0, %ebx
	movl	(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, (%rax)
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %edi
	call	foo.2257
	cmpl	$2, %eax
	je	L12
	call	abort
L12:
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %edi
	call	foo.2257
	cmpl	$7, %eax
	je	L13
	call	abort
L13:
	movl	-16(%rbp), %eax
	cmpl	$11, %eax
	je	L11
	call	abort
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bar
	movl	$0, %edi
	call	exit
