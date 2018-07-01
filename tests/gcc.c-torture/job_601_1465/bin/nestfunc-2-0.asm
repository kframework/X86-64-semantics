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
	.comm	z,4,4
nested.2277:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movl	16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, z(%rip)
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jge	L10
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	jmp	L11
L10:
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L13
L20:
	movl	$0, -12(%rbp)
	jmp	L14
L19:
	movl	$0, -16(%rbp)
	jmp	L15
L18:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	L16
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	jmp	L17
L16:
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
L17:
	movl	-8(%rbp), %ecx
	movl	$nested.2277, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	foo
	addl	%eax, -4(%rbp)
	addl	$1, -16(%rbp)
L15:
	cmpl	$9, -16(%rbp)
	jle	L18
	addl	$1, -12(%rbp)
L14:
	cmpl	$9, -12(%rbp)
	jle	L19
	addl	$1, -8(%rbp)
L13:
	cmpl	$9, -8(%rbp)
	jle	L20
	cmpl	$2300, -4(%rbp)
	je	L21
	call	abort
L21:
	movl	z(%rip), %eax
	cmpl	$27, %eax
	je	L22
	call	abort
L22:
	movl	$0, %edi
	call	exit
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	subq	$8, %rsp
	movl	-8(%rbp), %r9d
	movl	-4(%rbp), %r8d
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edi
	movl	-4(%rbp), %eax
	pushq	%rax
	movq	-16(%rbp), %rax
	call	*%rax
	addq	$16, %rsp
	leave
	ret
