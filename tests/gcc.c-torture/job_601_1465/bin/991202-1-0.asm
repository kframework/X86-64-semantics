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
	.comm	x,4,4
	.comm	y,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, x(%rip)
	movl	x(%rip), %eax
	movl	%eax, y(%rip)
L10:
	movl	y(%rip), %eax
	movl	%eax, x(%rip)
	movl	y(%rip), %eax
	addl	%eax, %eax
	movl	%eax, y(%rip)
	movl	y(%rip), %edx
	movl	x(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$19, %eax
	jle	L10
	movl	$0, %edi
	call	exit
