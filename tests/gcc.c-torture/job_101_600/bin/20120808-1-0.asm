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
	.comm	i,4,4
	.comm	cp,8,8
	.bss
d:
	.zero	32
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	i(%rip), %eax
	cltq
	addq	$d, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L10
L16:
	movl	$255, -16(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	je	L12
	cmpl	$25, %eax
	je	L13
	cmpl	$1, %eax
	je	L14
	jmp	L15
L14:
	xorl	$2, -16(%rbp)
	jmp	L15
L12:
	xorl	$4, -16(%rbp)
	jmp	L15
L13:
	xorl	$1, -16(%rbp)
	nop
L15:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	movb	%dl, -64(%rbp,%rax)
	movq	-8(%rbp), %rax
	movq	%rax, cp(%rip)
	addl	$1, -12(%rbp)
L10:
	cmpl	$29, -12(%rbp)
	jle	L16
	movzbl	-64(%rbp), %eax
	cmpb	$-1, %al
	jne	L17
	movzbl	-63(%rbp), %eax
	cmpb	$-3, %al
	jne	L17
	movzbl	-62(%rbp), %eax
	cmpb	$-5, %al
	jne	L17
	movzbl	-61(%rbp), %eax
	cmpb	$-1, %al
	jne	L17
	movzbl	-60(%rbp), %eax
	cmpb	$-1, %al
	jne	L17
	movzbl	-39(%rbp), %eax
	cmpb	$-2, %al
	jne	L17
	movq	cp(%rip), %rax
	cmpq	$d+30, %rax
	je	L18
L17:
	call	abort
L18:
	movl	$0, %edi
	call	exit
