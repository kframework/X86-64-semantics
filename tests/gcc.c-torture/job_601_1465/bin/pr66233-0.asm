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
	.comm	v,32,32
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm1
	vcvttss2siq	%xmm1, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, v(,%rax,4)
	addl	$1, -4(%rbp)
L10:
	cmpl	$7, -4(%rbp)
	jle	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	foo
	movl	$0, -4(%rbp)
	jmp	L13
L15:
	movl	-4(%rbp), %eax
	movl	v(,%rax,4), %eax
	cmpl	-4(%rbp), %eax
	je	L14
	call	abort
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$7, -4(%rbp)
	jbe	L15
	movl	$0, %eax
	leave
	ret
