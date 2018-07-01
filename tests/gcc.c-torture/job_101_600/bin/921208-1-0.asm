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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
Int:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm0
	call	*%rdx
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4611686018427387904, %rax
	vmovq	%rax, %xmm0
	movl	$f, %edi
	call	Int
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	jp	L16
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	je	L17
L16:
	call	abort
L17:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	1074790400
