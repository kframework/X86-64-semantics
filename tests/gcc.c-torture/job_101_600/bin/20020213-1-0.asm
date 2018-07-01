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
	.comm	a,8,4
	.comm	b,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a(%rip), %eax
	vmovd	%eax, %xmm0
	call	bar
	movl	%eax, a+4(%rip)
	movl	b(%rip), %eax
	leal	-1(%rax), %edx
	movl	a+4(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, a+4(%rip)
	movl	a+4(%rip), %eax
	movl	b(%rip), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	L9
	call	abort
L9:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	$2241, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	LC0(%rip), %eax
	movl	%eax, a(%rip)
	movl	$3384, b(%rip)
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	1065353216
