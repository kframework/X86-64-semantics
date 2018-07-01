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
x:
	.quad	13
	.quad	14
	.quad	15
	.quad	16
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$x, -8(%rbp)
	nop
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$12, -12(%rbp)
	je	L12
	call	abort
L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	L13
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	cmpq	$11, %rax
	je	L14
L13:
	call	abort
L14:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	cmpq	$2, %rax
	jne	L15
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	cmpq	$12, %rax
	je	L16
L15:
	call	abort
L16:
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	jne	L17
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	cmpq	$13, %rax
	je	L18
L17:
	call	abort
L18:
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	cmpq	$4, %rax
	jne	L19
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	cmpq	$14, %rax
	je	L20
L19:
	call	abort
L20:
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	cmpq	$5, %rax
	jne	L21
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	cmpq	$15, %rax
	je	L22
L21:
	call	abort
L22:
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	cmpq	$6, %rax
	jne	L23
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	cmpq	$16, %rax
	je	L11
L23:
	call	abort
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$336, %rsp
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$1, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$11, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$2, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$12, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$3, -344(%rbp,%rax,8)
	movl	-12(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -12(%rbp)
	call	bar
	movq	(%rax), %rdx
	movslq	%ebx, %rax
	movq	%rdx, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$4, -344(%rbp,%rax,8)
	movl	-12(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -12(%rbp)
	call	bar
	movq	8(%rax), %rdx
	movslq	%ebx, %rax
	movq	%rdx, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$5, -344(%rbp,%rax,8)
	movl	-12(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -12(%rbp)
	call	bar
	movq	16(%rax), %rdx
	movslq	%ebx, %rax
	movq	%rdx, -344(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	movq	$6, -344(%rbp,%rax,8)
	movl	-12(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -12(%rbp)
	call	bar
	movq	24(%rax), %rdx
	movslq	%ebx, %rax
	movq	%rdx, -344(%rbp,%rax,8)
	movl	-12(%rbp), %edx
	leaq	-344(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	foo
	movl	$0, %edi
	call	exit
