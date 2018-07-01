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
a:
	.long	1
e:
	.long	-1
	.comm	b,2,2
	.comm	f,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	e(%rip), %eax
	movw	%ax, f(%rip)
	movzwl	b(%rip), %eax
	testw	%ax, %ax
	js	L10
	movzwl	f(%rip), %eax
	movswl	%ax, %edx
	movzwl	b(%rip), %eax
	cwtl
	addl	%edx, %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$-4, %eax
	testl	%eax, %eax
	jns	L12
	movl	$0, a(%rip)
L12:
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
