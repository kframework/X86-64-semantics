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
foobar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movl	-40(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	-16(%rbp), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movl	-44(%rbp), %eax
	andl	$7, %eax
	andl	$7, %eax
	leal	0(,%rax,8), %edx
	movzbl	-16(%rbp), %eax
	andl	$-57, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	movl	-40(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	leal	(%rax,%rax), %edx
	movzbl	-32(%rbp), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	movl	-44(%rbp), %eax
	andl	$7, %eax
	andl	$7, %eax
	leal	0(,%rax,8), %edx
	movzbl	-32(%rbp), %eax
	andl	$-57, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	andl	$7, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %ecx
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	%al
	andl	$3, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	andl	$7, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	(%rax), %edx
	andl	$-57, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$56, %eax
	cmpb	$40, %al
	je	L11
L10:
	call	abort
L11:
	movl	$0, %edi
	call	exit
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	foobar
	popq	%rbp
	ret
