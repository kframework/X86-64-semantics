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
	subq	$144, %rsp
	movl	$11, -80(%rbp)
	movl	$12, -76(%rbp)
	movl	$46, -72(%rbp)
	movl	$3, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$2, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$1, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$46, -144(%rbp)
	movl	$12, -140(%rbp)
	movl	$11, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$3, -128(%rbp)
	movl	$3, -124(%rbp)
	movl	$2, -120(%rbp)
	movl	$2, -116(%rbp)
	movl	$2, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$1, -100(%rbp)
	movl	$1, -96(%rbp)
	movl	$13, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L14:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	L11
L13:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	L12
	movl	-8(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-16(%rbp), %edx
	movl	%edx, -80(%rbp,%rax,4)
L12:
	subl	$1, -8(%rbp)
L11:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	L13
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L14
	movl	$0, -4(%rbp)
	jmp	L15
L17:
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	L16
	call	abort
L16:
	addl	$1, -4(%rbp)
L15:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L17
	movl	$0, %edi
	call	exit
