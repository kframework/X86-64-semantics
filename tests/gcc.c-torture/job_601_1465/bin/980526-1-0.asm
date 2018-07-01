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
expect_do1:
	.long	1
expect_do2:
	.long	2
doit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	jtab_init.2260(%rip), %eax
	testl	%eax, %eax
	jne	L10
	movq	$L11, jtab.2261(%rip)
	movq	$L12, jtab.2261+8(%rip)
	movl	$1, jtab_init.2260(%rip)
L10:
	movl	-4(%rbp), %eax
	cltq
	movq	jtab.2261(,%rax,8), %rax
	nop
	jmp	*%rax
L11:
	movl	$1, %eax
	jmp	L14
L12:
	movl	$2, %eax
L14:
	popq	%rbp
	ret
do1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	doit
	movl	expect_do1(%rip), %edx
	cmpl	%edx, %eax
	je	L15
	call	abort
L15:
	popq	%rbp
	ret
do2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	doit
	movl	expect_do2(%rip), %edx
	cmpl	%edx, %eax
	je	L17
	call	abort
L17:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	exit
	.local	jtab_init.2260
	.comm	jtab_init.2260,4,4
	.local	jtab.2261
	.comm	jtab.2261,16,16
