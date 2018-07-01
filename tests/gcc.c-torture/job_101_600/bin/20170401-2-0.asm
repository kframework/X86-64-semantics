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
adjust:
	.value	1
	.value	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$1, -2(%rbp)
	movw	$1, -4(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-2(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	adjust_xy
	movzwl	-2(%rbp), %eax
	cmpw	$2, %ax
	je	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
adjust_xy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzwl	adjust(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	imull	%eax, %edx
	movzwl	adjust+2(%rip), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	popq	%rbp
	ret
