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
	.comm	val,4,4
ptr:
	.quad	val
ptr2:
	.quad	val
typepun:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr2(%rip), %rdx
	movl	LC0(%rip), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ptr(%rip), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	call	typepun
	movq	ptr(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L11
	call	abort
L11:
	popq	%rbp
	ret
LC0:
	.long	0
