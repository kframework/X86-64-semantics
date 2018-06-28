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
brother:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
sister:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%esi, %eax
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	brother
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$7, -16(%rbp)
	movl	$8, -12(%rbp)
	movl	$9, -8(%rbp)
	movq	-16(%rbp), %rsi
	movl	-8(%rbp), %eax
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	sister
	movl	$0, %edi
	call	exit
