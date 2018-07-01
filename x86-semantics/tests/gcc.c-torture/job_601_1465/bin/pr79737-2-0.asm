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
	.comm	i,9,1
	.comm	j,9,1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	i+5(%rip), %eax
	andl	$7, %eax
	movb	%al, i+5(%rip)
	movzbl	i+6(%rip), %eax
	andl	$0, %eax
	movb	%al, i+6(%rip)
	movzbl	i+7(%rip), %eax
	andl	$-4, %eax
	movb	%al, i+7(%rip)
	movzbl	i(%rip), %eax
	andl	$0, %eax
	orl	$5, %eax
	movb	%al, i(%rip)
	movzbl	i+1(%rip), %eax
	andl	$0, %eax
	movb	%al, i+1(%rip)
	movzbl	i+2(%rip), %eax
	andl	$-4, %eax
	movb	%al, i+2(%rip)
	movzbl	i+2(%rip), %eax
	andl	$-5, %eax
	movb	%al, i+2(%rip)
	movzbl	i+2(%rip), %eax
	andl	$7, %eax
	orl	$-40, %eax
	movb	%al, i+2(%rip)
	movzbl	i+3(%rip), %eax
	orl	$-1, %eax
	movb	%al, i+3(%rip)
	movzbl	i+4(%rip), %eax
	orl	$-1, %eax
	movb	%al, i+4(%rip)
	movzbl	i+5(%rip), %eax
	orl	$7, %eax
	movb	%al, i+5(%rip)
	movzbl	i+7(%rip), %eax
	andl	$3, %eax
	orl	$20, %eax
	movb	%al, i+7(%rip)
	movzbl	i+8(%rip), %eax
	andl	$0, %eax
	movb	%al, i+8(%rip)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	j(%rip), %eax
	andl	$0, %eax
	orl	$5, %eax
	movb	%al, j(%rip)
	movzbl	j+1(%rip), %eax
	andl	$0, %eax
	movb	%al, j+1(%rip)
	movzbl	j+2(%rip), %eax
	andl	$-4, %eax
	movb	%al, j+2(%rip)
	movzbl	j+2(%rip), %eax
	andl	$-5, %eax
	movb	%al, j+2(%rip)
	movzbl	j+2(%rip), %eax
	andl	$7, %eax
	orl	$-40, %eax
	movb	%al, j+2(%rip)
	movzbl	j+3(%rip), %eax
	orl	$-1, %eax
	movb	%al, j+3(%rip)
	movzbl	j+4(%rip), %eax
	orl	$-1, %eax
	movb	%al, j+4(%rip)
	movzbl	j+5(%rip), %eax
	orl	$7, %eax
	movb	%al, j+5(%rip)
	movzbl	j+5(%rip), %eax
	andl	$7, %eax
	movb	%al, j+5(%rip)
	movzbl	j+6(%rip), %eax
	andl	$0, %eax
	movb	%al, j+6(%rip)
	movzbl	j+7(%rip), %eax
	andl	$-4, %eax
	movb	%al, j+7(%rip)
	movzbl	j+7(%rip), %eax
	andl	$3, %eax
	orl	$20, %eax
	movb	%al, j+7(%rip)
	movzbl	j+8(%rip), %eax
	andl	$0, %eax
	movb	%al, j+8(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movl	$0, %eax
	call	bar
	movzbl	i(%rip), %eax
	movzbl	i+1(%rip), %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	i+2(%rip), %eax
	andl	$3, %eax
	salq	$16, %rax
	orq	%rdx, %rax
	salq	$46, %rax
	sarq	$46, %rax
	movl	%eax, %edx
	movzbl	j(%rip), %eax
	movzbl	j+1(%rip), %ecx
	salq	$8, %rcx
	orq	%rax, %rcx
	movzbl	j+2(%rip), %eax
	andl	$3, %eax
	salq	$16, %rax
	orq	%rcx, %rax
	salq	$46, %rax
	sarq	$46, %rax
	cmpl	%eax, %edx
	jne	L12
	movzbl	i+2(%rip), %eax
	sall	$5, %eax
	movl	%eax, %edx
	sarb	$7, %dl
	movzbl	j+2(%rip), %eax
	sall	$5, %eax
	sarb	$7, %al
	cmpb	%al, %dl
	jne	L12
	movzbl	i+2(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	i+3(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	i+4(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	i+5(%rip), %eax
	andl	$7, %eax
	salq	$21, %rax
	orq	%rdx, %rax
	salq	$40, %rax
	sarq	$40, %rax
	movl	%eax, %edx
	movzbl	j+2(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	j+3(%rip), %ecx
	salq	$5, %rcx
	orq	%rax, %rcx
	movzbl	j+4(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rcx
	movzbl	j+5(%rip), %eax
	andl	$7, %eax
	salq	$21, %rax
	orq	%rcx, %rax
	salq	$40, %rax
	sarq	$40, %rax
	cmpl	%eax, %edx
	jne	L12
	movzbl	i+5(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	i+6(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	i+7(%rip), %eax
	andl	$3, %eax
	salq	$13, %rax
	orq	%rdx, %rax
	salq	$49, %rax
	sarq	$49, %rax
	movl	%eax, %edx
	movzbl	j+5(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	j+6(%rip), %ecx
	salq	$5, %rcx
	orq	%rax, %rcx
	movzbl	j+7(%rip), %eax
	andl	$3, %eax
	salq	$13, %rax
	orq	%rcx, %rax
	salq	$49, %rax
	sarq	$49, %rax
	cmpw	%ax, %dx
	jne	L12
	movzbl	i+7(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movzbl	i+8(%rip), %edx
	salq	$6, %rdx
	orq	%rdx, %rax
	salq	$50, %rax
	sarq	$50, %rax
	movl	%eax, %edx
	movzbl	j+7(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movzbl	j+8(%rip), %ecx
	salq	$6, %rcx
	orq	%rcx, %rax
	salq	$50, %rax
	sarq	$50, %rax
	cmpw	%ax, %dx
	je	L13
L12:
	call	abort
L13:
	popq	%rbp
	ret
