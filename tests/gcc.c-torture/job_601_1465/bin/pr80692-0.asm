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
	movabsq	$-5638506733467860992, %rax
	movq	%rax, -8(%rbp)
	vmovq	LC0(%rip), %xmm1
	vmovq	-8(%rbp), %xmm0
	call	__bid_nedd2
	testq	%rax, %rax
	je	L17
	call	abort
L17:
	vmovq	LC1(%rip), %xmm1
	vmovq	-8(%rbp), %xmm0
	call	__bid_nedd2
	testq	%rax, %rax
	je	L18
	call	abort
L18:
	movl	$0, %eax
	leave
	ret
LC0:
	.quad	3584865303386914816
LC1:
	.quad	-5638506733467860992
