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
	subq	$1040, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L21:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	L11
L20:
	movl	$0, -12(%rbp)
	jmp	L12
L19:
	movl	$0, -16(%rbp)
	jmp	L13
L18:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L14
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	L14
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movl	LC0(%rip), %eax
	movl	%eax, -1040(%rbp,%rdx,4)
	jmp	L15
L14:
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movl	LC0(%rip), %eax
	movl	%eax, -1040(%rbp,%rdx,4)
L15:
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	-1040(%rbp,%rax,4), %edx
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	L23
	call	abort
L23:
	addl	$1, -16(%rbp)
L13:
	cmpl	$1, -16(%rbp)
	jle	L18
	addl	$1, -12(%rbp)
L12:
	cmpl	$1, -12(%rbp)
	jle	L19
	addl	$1, -8(%rbp)
L11:
	cmpl	$7, -8(%rbp)
	jle	L20
	addl	$1, -4(%rbp)
L10:
	cmpl	$7, -4(%rbp)
	jle	L21
	movl	$0, %edi
	call	exit
LC0:
	.long	1061997773
LC1:
	.long	0
