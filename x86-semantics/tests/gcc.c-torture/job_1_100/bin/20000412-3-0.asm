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
z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$48, -16(%rbp)
	movzbl	-16(%rbp), %eax
	movb	%al, -47(%rbp)
	movb	$15, -48(%rbp)
	subq	$40, %rsp
	movq	%rsp, %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movzbl	-16(%rbp), %edx
	movb	%dl, 32(%rax)
	subq	$40, %rsp
	movq	%rsp, %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movzbl	-16(%rbp), %edx
	movb	%dl, 32(%rax)
	movl	$0, %eax
	call	f
	addq	$80, %rsp
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	z
	movl	%eax, -4(%rbp)
	cmpl	$96, -4(%rbp)
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	16(%rbp), %edx
	movzbl	56(%rbp), %eax
	cmpb	%al, %dl
	je	L14
	movl	$70, %eax
	jmp	L15
L14:
	movzbl	17(%rbp), %eax
	movsbl	%al, %edx
	movzbl	57(%rbp), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
L15:
	popq	%rbp
	ret
