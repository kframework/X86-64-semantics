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
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test1
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$-3, %eax
	jne	L14
	movl	-12(%rbp), %eax
	cmpl	$-3, %eax
	je	L15
L14:
	call	abort
L15:
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test2
	movq	%rax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$-3, %eax
	jne	L16
	movl	-12(%rbp), %eax
	cmpl	$-3, %eax
	je	L17
L16:
	call	abort
L17:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	-3
	.long	-3
