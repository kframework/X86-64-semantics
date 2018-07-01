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
A:
	.byte	49
	.byte	50
	.byte	51
	.byte	52
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %rdx
	vmovd	%xmm0, %eax
	movq	%rdx, -16(%rbp)
	movl	%eax, -8(%rbp)
	leaq	-16(%rbp), %rax
	addq	$1, %rax
	movl	$4, %edx
	movl	$A, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	A(%rip), %eax
	movl	%eax, -15(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rdi
	vmovd	%eax, %xmm0
	call	foo
	movl	$0, %eax
	leave
	ret
