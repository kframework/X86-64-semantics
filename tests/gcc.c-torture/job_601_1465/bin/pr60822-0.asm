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
Avg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	800000(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	1700004(%rax), %eax
	addl	%ecx, %eax
	cltq
	imulq	%rdx, %rax
	sarq	$17, %rax
	popq	%rbp
	ret
	.comm	x,1700008,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$131072, x+800000(%rip)
	movl	$262144, x+1700004(%rip)
	movl	$1, %esi
	movl	$x, %edi
	call	Avg
	cmpl	$3, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
