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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovsd	LC0(%rip), %xmm0
	btrq	$63, %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	-8(%rbp), %xmm1
	jbe	L9
	call	link_error
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	LC2(%rip), %xmm0
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
LC0:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
LC2:
	.long	0
	.long	1072693248
