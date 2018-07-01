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
result:
	.byte	255
	.byte	15
	.zero	2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	result(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	movzbl	%al, %eax
	andl	$-8, %eax
	testl	%eax, %eax
	jne	L10
	movzbl	result(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	andl	$-8, %eax
	testl	%eax, %eax
	je	L11
L10:
	call	abort
L11:
	movl	$0, %edi
	call	exit
