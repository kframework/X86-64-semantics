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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm1
	vucomiss	-4(%rbp), %xmm1
	setnp	%cl
	movl	$0, %edx
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	movl	%edx, %eax
	cmove	%ecx, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	LC1(%rip), %xmm0
	call	test
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	0
LC1:
	.long	1065353216
