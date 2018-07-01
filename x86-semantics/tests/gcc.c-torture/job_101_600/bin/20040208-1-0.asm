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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$-9223372036854775808, %rax
	movl	$15883, %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
	fldt	-16(%rbp)
	fldt	LC1(%rip)
	fmulp	%st, %st(1)
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L12
	fldt	-16(%rbp)
	fldt	LC2(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L13
L12:
	call	abort
L13:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	2147483648
	.long	15861
	.long	0
LC2:
	.long	0
	.long	2147483648
	.long	15361
	.long	0
