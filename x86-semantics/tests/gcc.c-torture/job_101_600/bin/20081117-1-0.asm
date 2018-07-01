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
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	movl	-14(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
s:
	.value	1
	.byte	33
	.byte	67
	.byte	101
	.byte	135
	.value	2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2023406815, %esi
	movq	s(%rip), %rdi
	call	f
	testl	%eax, %eax
	jne	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
