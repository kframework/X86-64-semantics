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
	.comm	j,4,4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, i(%rip)
	movzbl	-1(%rbp), %eax
	andl	$7, %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	"ab"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$LC0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	f
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
