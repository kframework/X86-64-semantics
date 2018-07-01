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
	movl	$0, %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	call	test1
	testl	%eax, %eax
	je	L20
	call	abort
L20:
	movq	LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test2
	cmpl	$2, %eax
	je	L21
	call	abort
L21:
	call	test3
	vmovq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	L22
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
	movl	$262148, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	test4
	vmovq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$262148, %rax
	je	L24
	call	abort
L24:
	movq	LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	call	test5
	vmovq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$6, %eax
	jne	L25
	movl	-28(%rbp), %eax
	cmpl	$6, %eax
	je	L26
L25:
	call	abort
L26:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	2
	.long	2
LC1:
	.long	6
	.long	6
