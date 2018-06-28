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
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, %eax
	cmpl	$0, -8(%rbp)
	cmovnsl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L10
L12:
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	imull	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jns	L11
	call	abort
L11:
	addl	$1, -4(%rbp)
L10:
	cmpl	$2, -4(%rbp)
	jle	L12
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L13
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$2, -4(%rbp)
	jle	L14
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$2, -8(%rbp)
	movl	$8, -12(%rbp)
	movl	$1, -4(%rbp)
	jmp	L16
L17:
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%esi, %r8d
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	addl	$1, -4(%rbp)
L16:
	cmpl	$3, -4(%rbp)
	jle	L17
	movl	$0, %edi
	call	exit
