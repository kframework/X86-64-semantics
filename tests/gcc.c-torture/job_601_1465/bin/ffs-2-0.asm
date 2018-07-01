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
ffstesttab:
	.long	-2147483648
	.long	32
	.long	-1515870811
	.long	1
	.long	1515870810
	.long	2
	.long	-889323520
	.long	18
	.long	32768
	.long	16
	.long	42405
	.long	1
	.long	23130
	.long	2
	.long	3232
	.long	6
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L12:
	movl	-4(%rbp), %eax
	cltq
	movl	ffstesttab(,%rax,8), %eax
	movl	$-1, %edx
	tzcntl	%eax, %eax
	cmovc	%edx, %eax
	addl	$1, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	ffstesttab+4(,%rdx,8), %edx
	cmpl	%edx, %eax
	je	L11
	call	abort
L11:
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L12
	movl	$0, %edi
	call	exit
