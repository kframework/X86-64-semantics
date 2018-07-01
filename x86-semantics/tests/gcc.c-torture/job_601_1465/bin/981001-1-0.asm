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
flg:
	.zero	8
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	cmpl	$1, -36(%rbp)
	jle	L10
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L11
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edi
	call	sub
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movl	%eax, %edi
	call	sub
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	jmp	L12
L11:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	movl	%eax, %edi
	call	sub
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edi
	call	sub
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	%edx, %eax
	cltq
	jmp	L12
L10:
	movl	-36(%rbp), %eax
	cltq
L12:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$30, %edi
	call	sub
	cmpq	$832040, %rax
	je	L14
	movq	flg(%rip), %rax
	orb	$1, %ah
	movq	%rax, flg(%rip)
L14:
	movq	flg(%rip), %rax
	testq	%rax, %rax
	je	L15
	call	abort
L15:
	movl	$0, %edi
	call	exit
