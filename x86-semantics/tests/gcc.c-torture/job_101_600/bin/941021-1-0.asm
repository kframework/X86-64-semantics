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
	.comm	glob_dbl,8,8
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L10
	movq	$glob_dbl, -8(%rbp)
L10:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4632951452917877965, %rax
	vmovq	%rax, %xmm0
	movl	$0, %edi
	movl	$1, %eax
	call	f
	movq	glob_dbl(%rip), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jp	L14
	vmovq	%rax, %xmm2
	vucomisd	LC0(%rip), %xmm2
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC0:
	.long	3435973837
	.long	1078693068
