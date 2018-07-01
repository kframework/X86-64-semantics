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
	.local	test
	.comm	test,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	test(%rip), %eax
	cmpl	$2, %eax
	je	L11
	cmpl	$2, %eax
	ja	L12
	cmpl	$1, %eax
	je	L13
	jmp	L10
L12:
	cmpl	$3, %eax
	je	L14
	cmpl	$4, %eax
	je	L15
	jmp	L10
L13:
	movl	$1, %edi
	call	y
	jmp	L10
L11:
	movl	$2, %edi
	call	y
	jmp	L10
L14:
	movl	$3, %edi
	call	y
	jmp	L10
L15:
	movl	$4, %edi
	call	y
	nop
L10:
	movl	$0, %eax
	popq	%rbp
	ret
y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	call	abort
