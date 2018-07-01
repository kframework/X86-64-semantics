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
	.comm	arr,8,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movzbl	arr(,%rax,4), %eax
	sarb	%al
	addl	$1, %eax
	addl	%eax, %eax
	sarb	%al
	movl	-4(%rbp), %edx
	leal	(%rax,%rax), %ecx
	movzbl	arr(,%rdx,4), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, arr(,%rdx,4)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	arr(%rip), %eax
	orl	$1, %eax
	movb	%al, arr(%rip)
	movzbl	arr(%rip), %eax
	andl	$1, %eax
	orl	$126, %eax
	movb	%al, arr(%rip)
	movzbl	arr+4(%rip), %eax
	andl	$-2, %eax
	movb	%al, arr+4(%rip)
	movzbl	arr+4(%rip), %eax
	orl	$-2, %eax
	movb	%al, arr+4(%rip)
	movl	$0, %edi
	call	foo
	movl	$1, %edi
	call	foo
	movzbl	arr(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L11
	movzbl	arr(%rip), %eax
	andl	$-2, %eax
	cmpb	$-128, %al
	jne	L11
	movzbl	arr+4(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L11
	movzbl	arr+4(%rip), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	L12
L11:
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
