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
	.local	max
	.comm	max,4,4
storemax:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	max(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jle	L9
	movl	-4(%rbp), %eax
	movl	%eax, max(%rip)
L9:
	popq	%rbp
	ret
CallFunctionRec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %edi
	call	*%rax
	testl	%eax, %eax
	jne	L12
	movl	$0, %eax
	jmp	L13
L12:
	cmpl	$9, -12(%rbp)
	jg	L14
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CallFunctionRec
L14:
	movl	$1, %eax
L13:
	leave
	ret
CallFunction:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CallFunctionRec
	testl	%eax, %eax
	je	L16
	movq	-8(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testl	%eax, %eax
	jne	L16
	movl	$1, %eax
	jmp	L17
L16:
	movl	$0, %eax
L17:
	leave
	ret
callback:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	storemax
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$callback, %edi
	call	CallFunction
	movl	max(%rip), %eax
	cmpl	$10, %eax
	je	L22
	call	abort
L22:
	movl	$0, %eax
	popq	%rbp
	ret
