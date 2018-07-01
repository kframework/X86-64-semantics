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
	.comm	w,16,16
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L14:
	movl	$0, -8(%rbp)
	jmp	L11
L13:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L12
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	$1, w(,%rax,4)
L12:
	addl	$1, -8(%rbp)
L11:
	cmpl	$1, -8(%rbp)
	jle	L13
	addl	$1, -4(%rbp)
L10:
	cmpl	$1, -4(%rbp)
	jle	L14
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f
	movl	w(%rip), %eax
	cmpl	$1, %eax
	jne	L16
	movl	w+12(%rip), %eax
	cmpl	$1, %eax
	jne	L16
	movl	w+8(%rip), %eax
	testl	%eax, %eax
	jne	L16
	movl	w+4(%rip), %eax
	testl	%eax, %eax
	je	L17
L16:
	call	abort
L17:
	movl	$0, %edi
	call	exit
