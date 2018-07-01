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
	.bss
yf:
	.zero	4
pl:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	je	L10
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	jmp	L11
L10:
	movl	-4(%rbp), %eax
L11:
	movl	%eax, -8(%rbp)
	cmpl	$1, -24(%rbp)
	setle	%al
	movzbl	%al, %eax
	imull	-8(%rbp), %eax
	testl	%eax, %eax
	je	L12
	movl	-24(%rbp), %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, yf(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	yf(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	pl
	movl	yf(%rip), %eax
	cmpl	$1, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
