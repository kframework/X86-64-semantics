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
	.comm	optab,10,2
	.comm	buf,10,1
execute:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	movl	$L10, %ebx
	movq	$buf, -16(%rbp)
	testq	%rax, %rax
	jne	L10
	movl	$0, -20(%rbp)
	jmp	L12
L13:
	movl	-20(%rbp), %eax
	cltq
	movq	tab.2261(,%rax,8), %rax
	movq	%rax, %rdx
	movq	%rbx, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	movw	%dx, optab(%rax,%rax)
	addl	$1, -20(%rbp)
L12:
	cmpl	$2, -20(%rbp)
	jle	L13
	jmp	L14
L10:
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movb	$120, (%rdx)
	movq	%rax, %rdx
	leaq	2(%rdx), %rax
	movzwl	(%rdx), %edx
	movswq	%dx, %rdx
	addq	%rbx, %rdx
	nop
L16:
	jmp	*%rdx
L15:
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movb	$121, (%rdx)
	movq	%rax, %rdx
	leaq	2(%rdx), %rax
	movzwl	(%rdx), %edx
	movswq	%dx, %rdx
	addq	%rbx, %rdx
	jmp	L16
L17:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$122, (%rax)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	nop
L14:
	popq	%rbx
	popq	%rbp
	ret
	.comm	p,10,2
LC0:
	.string	"xyxyz"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	execute
	movzwl	optab+2(%rip), %eax
	movw	%ax, p(%rip)
	movzwl	optab(%rip), %eax
	movw	%ax, p+2(%rip)
	movzwl	optab+2(%rip), %eax
	movw	%ax, p+4(%rip)
	movzwl	optab+4(%rip), %eax
	movw	%ax, p+6(%rip)
	movl	$p, %edi
	movl	$0, %eax
	call	execute
	movl	$LC0, %esi
	movl	$buf, %edi
	call	strcmp
	testl	%eax, %eax
	je	L19
	call	abort
L19:
	movl	$0, %edi
	call	exit
tab.2261:
	.quad	L10
	.quad	L15
	.quad	L17
